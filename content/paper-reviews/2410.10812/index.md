---
title: "HART: Efficient Visual Generation with Hybrid Autoregressive Transformer"
summary: "HART: A hybrid autoregressive transformer achieves state-of-the-art image generation quality at significantly higher speeds than diffusion models, thanks to its innovative hybrid tokenizer and residua..."
categories: ["AI Generated"]
tags: ["🔖 24-10-14", "🤗 24-10-21"]
showSummary: true
date: 2024-10-14
draft: false
---

### TL;DR


{{< lead >}}

The research introduces HART, a new autoregressive model for generating high-quality images.  Unlike previous models, HART uses a 'hybrid tokenizer' that combines discrete and continuous representations of image data. This allows it to capture both the overall structure and fine details of images more effectively.  Furthermore, HART incorporates 'residual diffusion,' a lightweight technique that enhances the quality of the generated images.  The results show that HART matches or exceeds the image quality of the best diffusion models but is considerably faster, achieving up to 7.7 times higher throughput and 5.9 times lower latency. This makes HART a promising alternative for applications where speed and efficiency are crucial.

{{< /lead >}}


{{< button href="https://arxiv.org/abs/2410.10812" target="_self" >}}
{{< icon "link" >}} &nbsp; read the paper on arXiv
{{< /button >}}
<br><br>
{{< button href="https://huggingface.co/papers/2410.10812" target="_self" >}}
{{< icon "hf-logo" >}} &nbsp; on Hugging Face
{{< /button >}}

#### Why does it matter?
This paper is highly important for researchers in visual generation due to its introduction of HART, a novel autoregressive model that rivals diffusion models in image quality while significantly improving efficiency.  This efficiency gain is critical, enabling applications previously infeasible due to computational constraints.  The hybrid tokenizer and residual diffusion approach offer new avenues for exploring the balance between accuracy and speed in visual AI, influencing future autoregressive model designs.
#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} HART outperforms existing autoregressive models and rivals top diffusion models in image generation quality. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} HART achieves significantly higher throughput and lower latency compared to leading diffusion models. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} The hybrid tokenizer and residual diffusion mechanism are key innovations that improve the efficiency of autoregressive models. {{< /typeit >}}
{{< /alert >}}

------
#### Visual Insights



![](figures/figures_1_0.png)

> 🔼 Figure 1 is a comparison chart that shows HART's improved efficiency and image quality compared to other state-of-the-art models in image generation.
> <details>
> <summary>read the caption</summary>
> Figure 1: HART is an early autoregressive model that can directly generate 1024×1024 images with quality comparable to diffusion models, while offering significantly improved efficiency. It achieves 4.5-7.7× higher throughput, 3.1-5.9× lower latency (measured on A100), and 6.9-13.4× lower MACs compared to state-of-the-art diffusion models. Check out our online demo and video.
> </details>





![](charts/charts_10_0.png)

> 🔼 The chart compares the performance of HART and MAR in terms of ImageNet Inception Score and FID, showing HART's superior efficiency and convergence with alternating training.
> <details>
> <summary>read the caption</summary>
> Figure 7: Left: residual tokens in HART are much easier to learn than full tokens in MAR. Middle/Right: Despite achieving similar reconstruction FID, single decoder with alternating training enables faster and better generation convergence.
> </details>





{{< table-caption >}}
<table id='2' style='font-size:20px'><tr><td>Haotian Tang1 *</td><td>Yecheng Wu1,3* Shang Yang1</td><td>Enze Xie2</td><td>Junsong Chen2</td></tr><tr><td>Junyu Chen1,3</td><td>Zhuoyang Zhang1 Han Cai2</td><td>Yao Lu2</td><td>Song Han 1,2</td></tr><tr><td>MIT1 NVIDIA2</td><td>Tsinghua University3</td><td></td><td></td></tr></table>{{< /table-caption >}}

> 🔼 Table 2 compares the performance of HART against other state-of-the-art diffusion and autoregressive models on three benchmark datasets, showing that HART achieves comparable performance to state-of-the-art diffusion models with fewer parameters.
> <details>
> <summary>read the caption</summary>
> Table 2: The performance of HART on MJHQ-30K, GenEval and DPG-Bench benchmarks. We compare HART with open-source diffusion models and autoregressive models. Results demonstrate that HART can achieve comparable performance to state-of-the-art diffusion models with <1B parameters, surpassing prior autoregressive models by a large margin.
> </details>



### More visual insights

<details>
<summary>More on figures
</summary>


![](figures/figures_2_0.png)

> 🔼 Figure 2 shows a comparison of image generation results between HART and other state-of-the-art models for several image prompts, highlighting HART's competitive quality and superior speed.
> <details>
> <summary>read the caption</summary>
> Figure 2: HART generates 1024px images with quality comparable to state-of-the-art diffusion models such as Playground v2.5 (Li et al., 2024a), PixArt-Σ (Chen et al., 2024a), and SDXL (Podell et al., 2023) while being 4.6-5.6× faster.
> </details>



![](figures/figures_4_0.png)

> 🔼 The figure shows how HART combines discrete tokens representing the overall image structure with continuous residual tokens representing fine details, using a hybrid tokenizer and residual diffusion.
> <details>
> <summary>read the caption</summary>
> Figure 3: HART synergizes discrete and continuous tokens. The discrete tokens capture the overall image structure, while the fine details (e.g. eyes, eyebrows and hair) are reflected in the residual tokens, which is modeled by residual diffusion (introduced in Section 3.2).
> </details>



![](figures/figures_4_1.png)

> 🔼 The figure shows how HART uses both discrete tokens for the overall image structure and continuous residual tokens for fine details, which are modeled by a residual diffusion module.
> <details>
> <summary>read the caption</summary>
> Figure 3: HART synergizes discrete and continuous tokens. The discrete tokens capture the overall image structure, while the fine details (e.g., eyes, eyebrows and hair) are reflected in the residual tokens, which is modeled by residual diffusion (introduced in Section 3.2).
> </details>



![](figures/figures_5_0.png)

> 🔼 The figure compares the reconstruction quality of the VAR and HART tokenizers, showing that HART's hybrid tokenizer improves reconstruction quality by preserving details lost by VAR's discrete tokenizer.
> <details>
> <summary>read the caption</summary>
> Figure 4: Reconstruction quality comparison between VAR and HART tokenizers. The discrete tokenizer employed by VAR will lose some details or have some distortion during the reconstruction, which is solved by hybrid tokenization in HART. Please zoom in for details in 1k images.
> </details>



![](figures/figures_5_1.png)

> 🔼 The figure shows a comparison of reconstruction quality between VAR and HART tokenizers on images of varying resolutions, highlighting the superior performance of HART.
> <details>
> <summary>read the caption</summary>
> Figure 4: Reconstruction quality comparison between VAR and HART tokenizers. The discrete tokenizer employed by VAR will lose some details or have some distortion during the reconstruction, which is solved by hybrid tokenization in HART. Please zoom in for details in 1k images.
> </details>



![](figures/figures_5_2.png)

> 🔼 The figure illustrates the hybrid tokenizer of HART which decomposes continuous latents into discrete and continuous tokens, using both during training and only continuous tokens during inference.
> <details>
> <summary>read the caption</summary>
> Figure 5: Unlike conventional image tokenizers that decode either continuous or discrete latents, the hybrid tokenizer in HART is trained to decode both continuous and discrete tokens. At inference time, we only decode continuous tokens, which are the sum of discrete tokens and residual tokens. The residual tokens will be modeled by residual diffusion (introduced in Figure 6).
> </details>



![](figures/figures_6_0.png)

> 🔼 The figure illustrates HART's framework, which decomposes continuous image tokens into discrete tokens (modeled by a scalable autoregressive transformer) and residual tokens (modeled by residual diffusion), then sums them for image generation.
> <details>
> <summary>read the caption</summary>
> Figure 6: HART is an efficient hybrid autoregressive image generation framework. It decomposes continuous image tokens into two components: 1) a series of discrete tokens modeled by a scalable-resolution (up to 1024px) autoregressive transformer, and 2) residual tokens modeled by a lightweight residual diffusion (37M parameters and 8 steps) module. The final image representation is the sum of these two components.
> </details>



![](figures/figures_10_0.png)

> 🔼 The figure shows a comparison of image generation results using different resolution settings and demonstrates the effectiveness of the scalable-resolution transformer in HART.
> <details>
> <summary>read the caption</summary>
> Figure 8: Scalable-resolution transformer accelerates convergence when finetuning HART at higher resolution thanks to relative position embeddings that supports resolution interpolation.
> </details>



![](figures/figures_10_1.png)

> 🔼 The figure shows the comparison of image generation results between the official VAR and HART models at different resolutions, highlighting the improved scalability and efficiency of HART.
> <details>
> <summary>read the caption</summary>
> Figure 8: Scalable-resolution transformer accelerates convergence when finetuning HART at higher resolution thanks to relative position embeddings that supports resolution interpolation.
> </details>



![](figures/figures_16_0.png)

> 🔼 The figure shows a comparison of image generation results at 1024x1024 resolution versus 512x512 resolution, highlighting the increased detail achieved at higher resolution.
> <details>
> <summary>read the caption</summary>
> Figure 10: Direct high-resolution (1024x1024) image generation yields significantly more detailed results compared to low-resolution (512x512) generation.
> </details>



![](figures/figures_17_0.png)

> 🔼 Figure 2 shows a comparison of images generated by HART and other state-of-the-art diffusion models for various prompts, highlighting the comparable quality and increased speed of HART.
> <details>
> <summary>read the caption</summary>
> Figure 2: HART generates 1024px images with quality comparable to state-of-the-art diffusion models such as Playground v2.5 (Li et al., 2024a), PixArt-Σ (Chen et al., 2024a), and SDXL (Podell et al., 2023) while being 4.6-5.6× faster.
> </details>



![](figures/figures_17_1.png)

> 🔼 Figure 1 shows a comparison of HART's image generation quality and efficiency against state-of-the-art diffusion models, highlighting HART's superior throughput, lower latency, and reduced MACs while maintaining comparable image quality.
> <details>
> <summary>read the caption</summary>
> Figure 1: HART is an early autoregressive model that can directly generate 1024×1024 images with quality comparable to diffusion models, while offering significantly improved efficiency. It achieves 4.5-7.7× higher throughput, 3.1-5.9× lower latency (measured on A100), and 6.9-13.4× lower MACs compared to state-of-the-art diffusion models. Check out our online demo and video.
> </details>



![](figures/figures_17_2.png)

> 🔼 Figure 1 shows a comparison of HART's performance against state-of-the-art diffusion models in terms of image quality, throughput, latency, and MACs.
> <details>
> <summary>read the caption</summary>
> Figure 1: HART is an early autoregressive model that can directly generate 1024×1024 images with quality comparable to diffusion models, while offering significantly improved efficiency. It achieves 4.5-7.7× higher throughput, 3.1-5.9× lower latency (measured on A100), and 6.9-13.4× lower MACs compared to state-of-the-art diffusion models. Check out our online demo and video.
> </details>



![](figures/figures_17_3.png)

> 🔼 Figure 11 shows additional examples of 1024x1024 images generated by HART, demonstrating its ability to produce high-quality images comparable to state-of-the-art diffusion models, with detailed descriptions of the prompts used.
> <details>
> <summary>read the caption</summary>
> Figure 11: Additional 1024×1024 text-to-image generation results with HART. Full prompt for example 2: Full body shot, a French woman, Photography, French Streets background, backlighting, rim light, Fujifilm. Full prompt for example 3: Drone view of waves crashing against the rugged cliffs along Big Sur's Garay Point beach. The crashing blue waters create white-tipped waves, while the golden light of the setting sun illuminates the rocky shore.
> </details>



![](figures/figures_17_4.png)

> 🔼 Figure 2 shows a comparison of images generated by HART and other state-of-the-art diffusion models for various prompts, highlighting HART's comparable quality and superior speed.
> <details>
> <summary>read the caption</summary>
> Figure 2: HART generates 1024px images with quality comparable to state-of-the-art diffusion models such as Playground v2.5 (Li et al., 2024a), PixArt-Σ (Chen et al., 2024a), and SDXL (Podell et al., 2023) while being 4.6-5.6× faster.
> </details>



![](figures/figures_17_5.png)

> 🔼 The figure shows a comparison of image generation results between HART and other state-of-the-art diffusion models for various prompts, highlighting HART's comparable quality and superior speed.
> <details>
> <summary>read the caption</summary>
> Figure 2: HART generates 1024px images with quality comparable to state-of-the-art diffusion models such as Playground v2.5 (Li et al., 2024a), PixArt-Σ (Chen et al., 2024a), and SDXL (Podell et al., 2023) while being 4.6-5.6× faster.
> </details>



![](figures/figures_17_6.png)

> 🔼 Figure 11 shows additional examples of 1024x1024 images generated by HART, showcasing its ability to generate high-quality images from detailed text prompts, comparing favorably to other state-of-the-art models.
> <details>
> <summary>read the caption</summary>
> Figure 11: Additional 1024×1024 text-to-image generation results with HART. Full prompt for example 2: Full body shot, a French woman, Photography, French Streets background, backlighting, rim light, Fujifilm. Full prompt for example 3: Drone view of waves crashing against the rugged cliffs along Big Sur's Garay Point beach. The crashing blue waters create white-tipped waves, while the golden light of the setting sun illuminates the rocky shore.
> </details>



![](figures/figures_17_7.png)

> 🔼 Figure 1 is a comparison of HART's performance against several state-of-the-art diffusion models, highlighting HART's superior efficiency and comparable image quality.
> <details>
> <summary>read the caption</summary>
> Figure 1: HART is an early autoregressive model that can directly generate 1024×1024 images with quality comparable to diffusion models, while offering significantly improved efficiency. It achieves 4.5-7.7× higher throughput, 3.1-5.9× lower latency (measured on A100), and 6.9-13.4× lower MACs compared to state-of-the-art diffusion models. Check out our online demo and video.
> </details>



![](figures/figures_17_8.png)

> 🔼 The figure shows a comparison of reconstruction quality between VAR and HART tokenizers, highlighting HART's improved ability to reconstruct image details.
> <details>
> <summary>read the caption</summary>
> Figure 4: Reconstruction quality comparison between VAR and HART tokenizers. The discrete tokenizer employed by VAR will lose some details or have some distortion during the reconstruction, which is solved by hybrid tokenization in HART. Please zoom in for details in 1k images.
> </details>



![](figures/figures_18_0.png)

> 🔼 Figure 12 shows additional examples of images generated by HART, compared to other state-of-the-art methods, demonstrating its ability to generate high-quality images from a variety of prompts.
> <details>
> <summary>read the caption</summary>
> Figure 12: Additional 1024×1024 text-to-image generation results with HART. Full prompt for example 2: 8k uhd A man looks up at the starry sky, lonely and ethereal, Minimalism, Chaotic composition Op Art. Full prompt for example 3: A close-up photo of a person. The subject is a woman. She wore a blue coat with a gray dress underneath. She has blue eyes and blond hair, and wears a pair of earrings. Behind are blurred city buildings and streets. Full prompt for example 5: beautiful lady, freckles, big smile, blue eyes, short ginger hair, dark makeup, wearing a floral blue vest top, soft light, dark grey background.
> </details>



![](figures/figures_19_0.png)

> 🔼 Figure 13 shows a grid of 30 images generated by HART, demonstrating its class-conditional image generation capabilities on the ImageNet dataset.
> <details>
> <summary>read the caption</summary>
> Figure 13: 256×256 class-conditional generation results from HART on ImageNet (Deng et al., 2009).
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table id='1' style='font-size:16px'><tr><td rowspan="2">Type</td><td rowspan="2">Model</td><td rowspan="2">#Params</td><td rowspan="2">Resolution</td><td colspan="2">MJHQ-30K</td><td>GenEval</td><td>DPG-Bench</td></tr><tr><td>FID↓</td><td>CLIP-Score↑</td><td>Overall↑</td><td>Average↑</td></tr><tr><td>Diff.</td><td>SD v2.1</td><td>860M</td><td>768x768</td><td>26.96</td><td>25.90</td><td>0.50</td><td>68.09</td></tr><tr><td>Diff.</td><td>SD-XL</td><td>2.6B</td><td>1024x 1024</td><td>8.76</td><td>28.60</td><td>0.55</td><td>74.65</td></tr><tr><td>Diff.</td><td>PixArt-�</td><td>630M</td><td>512x512</td><td>6.14</td><td>27.55</td><td>0.48</td><td>71.11</td></tr><tr><td>Diff.</td><td>PixArt-�</td><td>630M</td><td>1024x 1024</td><td>6.34</td><td>27.62</td><td>0.52</td><td>79.46</td></tr><tr><td>Diff.</td><td>Playground v2.5</td><td>2B</td><td>1024x 1024</td><td>6.84</td><td>29.39</td><td>0.56</td><td>76.75</td></tr><tr><td>Diff.</td><td>SD3-medium</td><td>2B</td><td>1024x 1024</td><td>11.92</td><td>27.83</td><td>0.62</td><td>85.80</td></tr><tr><td>AR</td><td>LlamaGen</td><td>775M</td><td>512x512</td><td>25.59</td><td>23.03</td><td>0.32</td><td>65.16</td></tr><tr><td>AR</td><td>Show-o</td><td>1.3B</td><td>256x256</td><td>14.99</td><td>27.02</td><td>0.53</td><td>67.48</td></tr><tr><td rowspan="2">AR</td><td rowspan="2">HART</td><td rowspan="2">732M</td><td>512x512</td><td>5.22</td><td>29.01</td><td>0.56</td><td>80.72</td></tr><tr><td>1024x 1024</td><td>5.38</td><td>29.09</td><td>0.56</td><td>80.89</td></tr></table>{{< /table-caption >}}
> 🔼 {{ table.description }}
> <details>
> <summary>read the caption</summary>
> {{ table.caption }}
> </details>


> Table 2 compares the performance of HART with other state-of-the-art diffusion and autoregressive models on various image generation benchmarks, showing HART achieves comparable performance to top models with fewer parameters.


{{< table-caption >}}
<table id='3' style='font-size:14px'><tr><td rowspan="2">Model</td><td rowspan="2">#Params</td><td rowspan="2">#Steps</td><td colspan="3">512x512</td><td colspan="3">1024x 1024</td></tr><tr><td>Latency (s)</td><td>Throughput (image/s)</td><td>MACs (T)</td><td>Latency (s)</td><td>Throughput (image/s)</td><td>MACs (T)</td></tr><tr><td rowspan="2">SDXL</td><td rowspan="2">2.6B</td><td>20</td><td>1.4</td><td>2.1</td><td>30.7</td><td>2.3</td><td>0.49</td><td>120</td></tr><tr><td>40</td><td>2.5</td><td>1.4</td><td>61.4</td><td>4.3</td><td>0.25</td><td>239</td></tr><tr><td>PixArt-�</td><td>630M</td><td>20</td><td>1.2</td><td>1.7</td><td>21.7</td><td>2.7</td><td>0.4</td><td>86.2</td></tr><tr><td rowspan="2">Playground v2.5</td><td rowspan="2">2B</td><td>20</td><td>-</td><td>-</td><td>-</td><td>2.3</td><td>0.49</td><td>120</td></tr><tr><td>50</td><td>-</td><td>-</td><td>-</td><td>5.3</td><td>0.21</td><td>239</td></tr><tr><td>SD3-medium</td><td>2B</td><td>28</td><td>1.4</td><td>1.1</td><td>51.4</td><td>4.4</td><td>0.29</td><td>168</td></tr><tr><td>LlamaGen</td><td>775M</td><td>1024</td><td>37.7</td><td>0.4</td><td>1.5</td><td>-</td><td>-</td><td>-</td></tr><tr><td rowspan="2">HART</td><td rowspan="2">732M</td><td>10</td><td>0.3</td><td>10.6</td><td>3.2</td><td>-</td><td>-</td><td>-</td></tr><tr><td>14</td><td>一</td><td>一</td><td>一</td><td>0.75</td><td>2.23</td><td>12.5</td></tr></table>{{< /table-caption >}}
> 🔼 {{ table.description }}
> <details>
> <summary>read the caption</summary>
> {{ table.caption }}
> </details>


> This table compares the efficiency of HART against state-of-the-art diffusion models in terms of latency, throughput, and MACs at 512x512 and 1024x1024 resolutions.


{{< table-caption >}}
<br><table id='8' style='font-size:16px'><tr><td rowspan="2">Method</td><td colspan="3">MJHQ-30K rFID↓</td><td colspan="2">ImageNet rFID↓</td></tr><tr><td>256px</td><td>512px</td><td>1024px</td><td>256px</td><td>512px</td></tr><tr><td>VAR</td><td>1.42</td><td>1.19</td><td>2.11</td><td>0.92</td><td>0.58</td></tr><tr><td>SDXL</td><td>1.08</td><td>0.54</td><td>0.27</td><td>0.69</td><td>0.28</td></tr><tr><td>Ours (dis.)</td><td>1.70</td><td>1.64</td><td>1.09</td><td>1.04</td><td>0.89</td></tr><tr><td>Ours</td><td>0.78</td><td>0.67</td><td>0.30</td><td>0.41</td><td>0.33</td></tr></table>{{< /table-caption >}}
> 🔼 {{ table.description }}
> <details>
> <summary>read the caption</summary>
> {{ table.caption }}
> </details>


> Table 1 shows a comparison of the reconstruction fidelity (rFID) achieved by different tokenizers on the MJHQ-30K and ImageNet datasets, demonstrating that HART's hybrid tokenizer significantly outperforms the discrete VAR tokenizer and matches the performance of the continuous SDXL tokenizer.


{{< table-caption >}}
<table id='1' style='font-size:14px'><tr><td>Type</td><td>Model</td><td>FID↓</td><td>IS↑</td><td>#Params</td><td>#Step</td><td>MACs</td><td>Inference Time (s)</td></tr><tr><td>Diff.</td><td>DiT-XL/2</td><td>2.27</td><td>278.2</td><td>675M</td><td>250</td><td>57.2T</td><td>113</td></tr><tr><td>AR</td><td>VAR-d20</td><td>2.57</td><td>302.6</td><td>600M</td><td>10</td><td>412G</td><td>1.3</td></tr><tr><td>AR</td><td>VAR-d24</td><td>2.09</td><td>312.9</td><td>1.0B</td><td>10</td><td>709G</td><td>1.7</td></tr><tr><td>AR</td><td>VAR-d30</td><td>1.92</td><td>323.1</td><td>2.0B</td><td>10</td><td>1.4T</td><td>2.6</td></tr><tr><td>AR</td><td>MAR-B</td><td>2.31</td><td>281.7</td><td>208M</td><td>64</td><td>7.0T</td><td>26.1</td></tr><tr><td>AR</td><td>MAR-L</td><td>1.78</td><td>296.0</td><td>479M</td><td>64</td><td>16.0T</td><td>34.9</td></tr><tr><td>AR</td><td>HART-d20</td><td>2.39</td><td>316.4</td><td>649M</td><td>10</td><td>579G</td><td>1.5</td></tr><tr><td>AR</td><td>HART-d24</td><td>2.00</td><td>331.5</td><td>1.0B</td><td>10</td><td>858G</td><td>1.9</td></tr><tr><td>AR</td><td>HART-d30</td><td>1.77</td><td>330.3</td><td>2.0B</td><td>10</td><td>1.5T</td><td>2.7</td></tr></table>{{< /table-caption >}}
> 🔼 {{ table.description }}
> <details>
> <summary>read the caption</summary>
> {{ table.caption }}
> </details>


> Table 4 presents a comparison of class-conditioned image generation results between HART and other autoregressive models, highlighting HART's superior performance in terms of FID, IS, MACs, and inference time.


{{< table-caption >}}
<table id='6' style='font-size:14px'><tr><td>Depth</td><td>Res. tokens</td><td>FID↓</td><td>IS↑</td><td>Time (s)</td></tr><tr><td>20</td><td>X</td><td>2.67</td><td>297.3</td><td>1.3</td></tr><tr><td>20</td><td>V</td><td>2.39</td><td>316.4</td><td>1.5</td></tr><tr><td>24</td><td>X</td><td>2.23</td><td>312.7</td><td>1.7</td></tr><tr><td>24</td><td>V</td><td>2.00</td><td>331.5</td><td>1.9</td></tr><tr><td>30</td><td>X</td><td>2.00</td><td>311.8</td><td>2.5</td></tr><tr><td>30</td><td>V</td><td>1.77</td><td>330.3</td><td>2.7</td></tr></table>{{< /table-caption >}}
> 🔼 {{ table.description }}
> <details>
> <summary>read the caption</summary>
> {{ table.caption }}
> </details>


> Table 4 compares the performance of HART against MAR and VAR models on class-conditioned image generation, showing that HART achieves better FID and IS scores with significantly fewer computations and faster inference time.


{{< table-caption >}}
<br><table id='7' style='font-size:16px'><tr><td>Resolution</td><td>Res. tokens</td><td>FID↓</td><td>CLIP↑</td><td>Time (s)</td></tr><tr><td>256px</td><td>X</td><td>6.11</td><td>27.96</td><td>2.23</td></tr><tr><td>256px</td><td></td><td>5.52</td><td>28.03</td><td>2.42</td></tr><tr><td>512px</td><td>X</td><td>6.29</td><td>28.91</td><td>5.62</td></tr><tr><td>512px</td><td></td><td>5.22</td><td>29.01</td><td>6.04</td></tr><tr><td>1024px</td><td>X</td><td>5.73</td><td>29.08</td><td>25.9</td></tr><tr><td>1024px*</td><td>X</td><td>7.85</td><td>28.85</td><td>25.9</td></tr><tr><td>1024px</td><td>V</td><td>5.38</td><td>29.09</td><td>28.7</td></tr></table>{{< /table-caption >}}
> 🔼 {{ table.description }}
> <details>
> <summary>read the caption</summary>
> {{ table.caption }}
> </details>


> Table 5 shows the ablation study results on the impact of residual tokens, alternating training, and scalable resolution transformer on FID, IS, and inference time.


</details>


### Full paper

{{< gallery >}}
<img src="paper_images/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/19.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/20.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}