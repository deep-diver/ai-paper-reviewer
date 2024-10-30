---
title: "MarDini: Masked Autoregressive Diffusion for Video Generation at Scale"
summary: "MarDini: Asymmetric video diffusion model scales video generation by integrating masked autoregression for temporal planning and diffusion models for spatial generation."
categories: ["AI Generated"]
tags: ["🔖 24-10-26", "🤗 24-10-29"]
showSummary: true
date: 2024-10-26
draft: false
---

{{< keyword >}} 2410.20280 {{< /keyword >}}

### TL;DR


{{< lead >}}

Current video generation models struggle with scalability and efficiency. Autoregressive models are difficult to apply to high-dimensional visual data, while diffusion models are computationally expensive.  This paper introduces MarDini, a new video generation model addressing these limitations. 

MarDini uses a clever strategy. It combines masked autoregression (MAR) for temporal planning (deciding what happens when) and diffusion models (DM) for spatial generation (creating the image).  MAR works with low-resolution data, significantly reducing computational cost, while DM handles high-resolution image generation.  **This asymmetric design, combined with a progressive training strategy, allows MarDini to achieve state-of-the-art performance in video interpolation and image-to-video generation, efficiently and at scale.**

{{< /lead >}}


{{< button href="https://arxiv.org/abs/2410.20280" target="_self" >}}
{{< icon "link" >}} &nbsp; read the paper on arXiv
{{< /button >}}
<br><br>
{{< button href="https://huggingface.co/papers/2410.20280" target="_self" >}}
{{< icon "hf-logo" >}} &nbsp; on Hugging Face
{{< /button >}}

#### Why does it matter?
This paper is crucial for researchers in computer vision and video generation due to its introduction of **MarDini**, a novel and efficient video diffusion model.  **MarDini's innovative approach to scaling video generation using masked autoregression and an asymmetric network design** tackles existing challenges related to training instability and computational cost. This work opens new research directions in efficient video generation, especially in long-term video interpolation and image-to-video generation tasks.
#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} MarDini efficiently generates videos at scale by using a novel asymmetric network design that combines masked autoregression and diffusion models. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} MarDini achieves state-of-the-art results in video interpolation and efficient image-to-video generation. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} MarDini's flexible masking strategy enables its application to diverse video tasks, including video interpolation, video expansion, and image-to-video generation. {{< /typeit >}}
{{< /alert >}}

------
#### Visual Insights



![](https://ai-paper-reviewer.com/2410.20280/figures_3_0.png)

> 🔼 The figure illustrates the training pipeline of MarDini, showing how a latent representation is generated and used to condition the planning and generation models in an asymmetric network design.
> <details>
> <summary>read the caption</summary>
> Figure 1 MarDini Training Pipeline Overview. A latent representation is computed for unmasked frames that serve as a conditional signal to a generative process. On the first hand, we have a planning model that autoregressively encodes global conditioning signals from a low-resolution version of the unmasked latent inputs. On the other hand, the planning signals are fed to the diffusion-based generation model through cross-attention layers. A high-resolution version of the input conditions is also ingested by the diffusion model, enabling generation with a coherent temporal structure and a direct mechanism to attend to fine-grained details of the unmasked frames. MarDini is trained end-to-end via masked frame-level diffusion loss.
> </details>





![](https://ai-paper-reviewer.com/2410.20280/charts_9_0.png)

> 🔼 Figure 6 shows MarDini's training and inference performance, illustrating its optimal generation with few inference steps, improved performance with training progress, and the importance of Identity Attention for stable training.
> <details>
> <summary>read the caption</summary>
> Figure 6 MarDini Training and Inference Performance. (a) MarDini achieves optimal generation performance with few inference steps using the DDIM solver; (b) As training progresses, MarDini shows improvement in the tasks of both video interpolation and image-to-video. These results are based on a mask ratio ranging from 0.15 to 0.6 for 9-frame generation; and (c) The design of Identity Attention is crucial for stable training convergence in MarDini during the initial training stage; without it, the model fails to converge.
> </details>





{{< table-caption >}}
<table id='8' style='font-size:14px'><tr><td rowspan="2">Configuration</td><td colspan="5">Planning Model (MAR)</td><td colspan="5">Generation Model (DM)</td><td rowspan="2">Frame</td></tr><tr><td>Depth</td><td>Hidden Size</td><td>MLP Size</td><td>Attn.</td><td>Param.</td><td>Depth</td><td>Hidden Size</td><td>MLP Size</td><td>Attn.</td><td>Param.</td></tr><tr><td>MarDini-S/ST</td><td>8</td><td>4096</td><td>4096</td><td>S.-T. Attn.</td><td>1.3B</td><td>8</td><td>1024</td><td>4096</td><td>S.-T. Attn.</td><td>288M</td><td>9</td></tr><tr><td>MarDini-L/ST</td><td>16</td><td>4096</td><td>8192</td><td>S.-T. Attn.</td><td>3.1B</td><td>8</td><td>1024</td><td>4096</td><td>S.-T. Attn.</td><td>288M</td><td>9</td></tr><tr><td>MarDini-S/T</td><td>8</td><td>4096</td><td>4096</td><td>S.-T. Attn.</td><td>1.3B</td><td>8</td><td>1024</td><td>4096</td><td>T. Attn.</td><td>288M</td><td>17</td></tr><tr><td>MarDini-L/T</td><td>16</td><td>4096</td><td>8192</td><td>S.-T. Attn.</td><td>3.1B</td><td>8</td><td>1024</td><td>4096</td><td>T. Attn.</td><td>288M</td><td>17</td></tr></table>{{< /table-caption >}}

> 🔼 This table details the configurations of four different MarDini models, varying in planning model size, generation model attention type, and the number of frames processed.
> <details>
> <summary>read the caption</summary>
> Table 1 Configuration Details of MarDini Models. We provide four models, differing primarily in the size of the planning module (3.1B vs. 1.3B parameters) and the attention mechanisms used in the generation module: spatio-temporal attention (S.-T. Attn.) vs. temporal attention (T. Attn).
> </details>



### More visual insights

<details>
<summary>More on figures
</summary>


![](https://ai-paper-reviewer.com/2410.20280/figures_4_0.png)

> 🔼 The figure shows the detailed architecture of the MarDini model, illustrating the asymmetric design of the planning and generation networks.
> <details>
> <summary>read the caption</summary>
> Figure 2 MarDini Design Details. MarDini employs a transformer architecture for both the planning and generation models, incorporating a DiT-style block for the generation model and a Llama-style block for the planning model. We set L1 ≫ L2, where L₁ and L2 refer to the number of layers in the planning and generation model respectively.
> </details>



![](https://ai-paper-reviewer.com/2410.20280/figures_5_0.png)

> 🔼 The figure illustrates the design of the Identity Attention mechanism in the DM model, showing how [REF] and [NOISE] tokens attend to each other.
> <details>
> <summary>read the caption</summary>
> Figure 3 Identity Attention Design Details in DM. In this setup, [REF] tokens only attend to themselves, while [NOISE] tokens attend to all other tokens across different frames.
> </details>



![](https://ai-paper-reviewer.com/2410.20280/figures_6_0.png)

> 🔼 This figure shows the multi-stage training pipeline of MarDini, illustrating how the model is trained progressively to increase task difficulty from simple video interpolation to full video generation.
> <details>
> <summary>read the caption</summary>
> Figure 4 MarDini Training Manual. We list the mask ratios, frame rate (FPS), number of frames, and the size of training data for each training stage. This training manual applies to both small (MarDini-S) and large (MarDini-L) models. Note that the total training data refers to the amount of data observed by the model for gradient updates, rather than the vanilla size of the training dataset. Our final model checkpoints are highlighted in gray.
> </details>



![](https://ai-paper-reviewer.com/2410.20280/figures_6_1.png)

> 🔼 This figure shows the multi-stage progressive training pipeline of MarDini, detailing the mask ratios, frame rates, number of frames, and training data for each stage.
> <details>
> <summary>read the caption</summary>
> Figure 4 MarDini Training Manual. We list the mask ratios, frame rate (FPS), number of frames, and the size of training data for each training stage. This training manual applies to both small (MarDini-S) and large (MarDini-L) models. Note that the total training data refers to the amount of data observed by the model for gradient updates, rather than the vanilla size of the training dataset. Our final model checkpoints are highlighted in gray.
> </details>



![](https://ai-paper-reviewer.com/2410.20280/figures_9_0.png)

> 🔼 The figure compares video frames generated with and without the MAR planning model, highlighting improved motion and pixel details when using the MAR model.
> <details>
> <summary>read the caption</summary>
> Figure 5 MarDini's generations with and without the planning model. Here we show video frames generated when conditioning on the middle frame. Without MAR's planning signal, DM generates degraded motion, such as pixel distortions (highlighted in red, left) or incorrect motions (highlighted in blue, right).
> </details>



![](https://ai-paper-reviewer.com/2410.20280/figures_12_0.png)

> 🔼 The figure illustrates the training pipeline of MarDini, showing the asymmetric design with a heavy-weight MAR planning model and a light-weight diffusion generation model.
> <details>
> <summary>read the caption</summary>
> Figure 1 MarDini Training Pipeline Overview. A latent representation is computed for unmasked frames that serve as a conditional signal to a generative process. On the first hand, we have a planning model that autoregressively encodes global conditioning signals from a low-resolution version of the unmasked latent inputs. On the other hand, the planning signals are fed to the diffusion-based generation model through cross-attention layers. A high-resolution version of the input conditions is also ingested by the diffusion model, enabling generation with a coherent temporal structure and a direct mechanism to attend to fine-grained details of the unmasked frames. MarDini is trained end-to-end via masked frame-level diffusion loss.
> </details>



![](https://ai-paper-reviewer.com/2410.20280/figures_12_1.png)

> 🔼 Figure 8 shows the video expansion results where the model is given 16 frames as input to predict the next 12 frames.
> <details>
> <summary>read the caption</summary>
> Figure 8 Visualization of Video Expansion. The model is conditioned on a sequence of 16 consecutive frames to predict the subsequent 12 frames. The video data used for visualization is sourced from publicly available research dataset (Nan et al., 2024).
> </details>



![](https://ai-paper-reviewer.com/2410.20280/figures_20_0.png)

> 🔼 Figure 9 shows that while MarDini generates sharper frames than other methods, its reconstruction scores (SSIM, LPIPS) are sometimes lower due to blurrier images sometimes receiving higher reconstruction error scores.
> <details>
> <summary>read the caption</summary>
> Figure 9 Failure case of reconstruction metrics (SSIM, LPIPS) in video interpolation. We visualize two generated frames together with their corresponding ground-truth frames. While the frames generated by MarDini are sharper than competitors, their corresponding reconstruction scores are worse.
> </details>



![](https://ai-paper-reviewer.com/2410.20280/figures_20_1.png)

> 🔼 Figure 10 compares the video interpolation results of MarDini against FILM, LDMVFI, and VIDIM, highlighting MarDini's superior performance in handling complex motions.
> <details>
> <summary>read the caption</summary>
> Figure 10 Visualization of video interpolation methods conditioned on the first and last frames. We present the generated frames from FILM (Reda et al., 2022), LDMVFI (Danier et al., 2024), VIDIM (Jain et al., 2024), and MarDini. The comparison results for these methods are sourced from Jain et al. (2024). We have included additional samples in the supplementary materials.
> </details>



![](https://ai-paper-reviewer.com/2410.20280/figures_22_0.png)

> 🔼 The figure illustrates the training pipeline of MarDini, which uses an asymmetric network design consisting of a heavy-weight planning model and a lightweight generation model to efficiently generate high-resolution videos.
> <details>
> <summary>read the caption</summary>
> Figure 1 MarDini Training Pipeline Overview. A latent representation is computed for unmasked frames that serve as a conditional signal to a generative process. On the first hand, we have a planning model that autoregressively encodes global conditioning signals from a low-resolution version of the unmasked latent inputs. On the other hand, the planning signals are fed to the diffusion-based generation model through cross-attention layers. A high-resolution version of the input conditions is also ingested by the diffusion model, enabling generation with a coherent temporal structure and a direct mechanism to attend to fine-grained details of the unmasked frames. MarDini is trained end-to-end via masked frame-level diffusion loss.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table id='6' style='font-size:14px'><tr><td rowspan="2">Planning Model</td><td rowspan="2">Generation Model</td><td colspan="2">FVD↓</td></tr><tr><td>DAVIS</td><td>UCF101</td></tr><tr><td>MAR-1B</td><td>-</td><td>427.66</td><td>741.80</td></tr><tr><td>MAR-3B</td><td>-</td><td>373.03</td><td>701.03</td></tr><tr><td>-</td><td>DM-0.3B</td><td>320.89</td><td>383.04</td></tr><tr><td>MAR-1B</td><td>DM-0.3B</td><td>224.07</td><td>258.08</td></tr><tr><td>MAR-3B</td><td>DM-0.3B</td><td>102.87</td><td>197.69</td></tr></table>{{< /table-caption >}}
> 🔼 Table 2 shows the effectiveness of using both masked autoregressive planning (MAR) and diffusion model (DM) for video interpolation, demonstrating that combining both components yields optimal results compared to using only one.
> <details>
> <summary>read the caption</summary>
> Table 2 Effectiveness of MAR and DM design. The reported results are FVD on VIDIM-Bench. All experiments are evaluated at a resolution of [256 × 256] using DDIM scheduler with 25 steps.
> </details>

{{< table-caption >}}
<table id='8' style='font-size:14px'><tr><td rowspan="2">Asymm. Attention</td><td rowspan="2">Asymm. Resolution</td><td rowspan="2"># Inference Frames</td><td colspan="2">[256 X 256]</td><td colspan="2">[512 X 512]</td></tr><tr><td>Latency</td><td>GPU Mem.</td><td>Latency</td><td>GPU Mem.</td></tr><tr><td>X</td><td></td><td>9 (1 to 8)</td><td rowspan="2">2.76s</td><td rowspan="2">25.22 G</td><td>25.09 s</td><td>74.44 G</td></tr><tr><td>X</td><td></td><td>9 (1 to 8)</td><td>17.91 s</td><td>41.03 G</td></tr><tr><td>X</td><td>X</td><td>13 (1 to 12)</td><td rowspan="2">4.41 s</td><td rowspan="2">27.80 G</td><td colspan="2">Out of Memory</td></tr><tr><td>X</td><td></td><td>13 (1 to 12)</td><td>34.58 s</td><td>62.51 G</td></tr><tr><td></td><td>X</td><td>13 (1 to 12)</td><td rowspan="2">2.63s</td><td rowspan="2">27.75G</td><td colspan="2">Out of Memory</td></tr><tr><td></td><td></td><td>13 (1 to 12)</td><td>6.05s</td><td>42.57 G</td></tr></table>{{< /table-caption >}}
> 🔼 Table 3 shows the efficiency of MarDini's video generation with and without the asymmetric design, comparing latency and GPU memory usage across different attention mechanisms and resolutions.
> <details>
> <summary>read the caption</summary>
> Table 3 Efficiency of the MarDini's generations with and without the asymmetric design. Both latency and GPU memory is measured as the average time to generate a video using DDIM with 25 steps using a single A100 GPU, and with bf16 mixed precision.
> </details>

{{< table-caption >}}
<table id='1' style='font-size:14px'><tr><td rowspan="2">Method</td><td colspan="4">DAVIS-7</td><td colspan="4">UCF101-7</td></tr><tr><td>MidF-SSIM</td><td>MidF-LPIPS</td><td>FID</td><td>FVD</td><td>MidF-SSIM</td><td>MidF-LPIPS</td><td>FID</td><td>FVD</td></tr><tr><td>AMT (Li et al., 2023b)</td><td>0.4853</td><td>0.2865</td><td>34.65</td><td>234.50</td><td>0.7903</td><td>0.1691</td><td>31.60</td><td>344.50</td></tr><tr><td>RIFE (Huang et al., 2022)</td><td>0.4546</td><td>0.2954</td><td>23.98</td><td>240.04</td><td>0.7769</td><td>0.1564</td><td>18.72</td><td>323.80</td></tr><tr><td>FILM (Reda et al., 2022)</td><td>0.4718</td><td>0.3048</td><td>30.16</td><td>214.80</td><td>0.7869</td><td>0.1620</td><td>26.06</td><td>328.20</td></tr><tr><td>LDMVFI (Danier et al., 2024)</td><td>0.4175</td><td>0.2765</td><td>22.10</td><td>245.02</td><td>0.7712</td><td>0.1564</td><td>18.09</td><td>316.30</td></tr><tr><td>VIDIM (Jain et al., 2024)</td><td>0.4221</td><td>0.2986</td><td>28.06</td><td>199.32</td><td>0.6880</td><td>0.1768</td><td>34.48</td><td>278.00</td></tr><tr><td>MarDini-S/ST-256</td><td>0.4249</td><td>0.3654</td><td>49.21</td><td>224.07</td><td>0.7654</td><td>0.2480</td><td>45.85</td><td>258.08</td></tr><tr><td>MarDini-L/ST-256</td><td>0.4959</td><td>0.2768</td><td>20.64</td><td>102.87</td><td>0.7734</td><td>0.2213</td><td>28.85</td><td>197.69</td></tr><tr><td>MarDini-S/ST-512</td><td>0.5017</td><td>0.3193</td><td>25.92</td><td>138.86</td><td>0.7960</td><td>0.2315</td><td>30.24</td><td>205.71</td></tr><tr><td>MarDini-L/ST-512</td><td>0.5314</td><td>0.2736</td><td>20.76</td><td>99.05</td><td>0.7814</td><td>0.2347</td><td>30.08</td><td>204.20</td></tr><tr><td>MarDini-L/T-512</td><td>0.5085</td><td>0.3083</td><td>25.30</td><td>117.13</td><td>0.7893</td><td>0.2270</td><td>30.72</td><td>198.94</td></tr></table>{{< /table-caption >}}
> 🔼 Table 4 presents a comparison of MarDini's performance against several state-of-the-art methods on the VIDIM benchmark for zero-shot video interpolation, using multiple metrics such as FID, FVD, SSIM, and LPIPS.
> <details>
> <summary>read the caption</summary>
> Table 4 Performance of zero-shot video interpolation on VIDIM-Bench. The reported results are taken directly from VIDIM (Jain et al., 2024). AMT, RIFE, and FILM are single-inference methods, while LDMVFI, VIDIM, and our approach are based on diffusion models with multiple inference steps. MidF-SSIM and MidF-LPIPS represent the SSIM and LPIPS scores, respectively, for the middle frame. For MarDini-512, we downscale the generated videos to 256 resolution for a fair comparison.
> </details>

{{< table-caption >}}
<table id='1' style='font-size:14px'><tr><td>Method</td><td>Frame Resolution</td><td>Image-based Pre-training</td><td>Latency (s/frame)</td><td>I2V Sub. Con</td><td>I2V Back Con.</td><td>Video Quality (w/ D.D.)</td><td>Video Quality (w/o D.D.)</td><td>Vbench Avg.</td></tr><tr><td colspan="9">Low and Medium Resolution</td></tr><tr><td>ConsistI2V (Ren et al., 2024)</td><td>[256x256]</td><td></td><td>7.63</td><td>95.82</td><td>95.95</td><td>78.87</td><td>85.74</td><td>88.27</td></tr><tr><td>DynamicCrafter (Xing et al., 2024)</td><td>[256x256]</td><td></td><td>-</td><td>97.05</td><td>97.56</td><td>80.18</td><td>85.00</td><td>88.07</td></tr><tr><td>DynamicCrafter (Xing et al., 2024)</td><td>[512x320]</td><td></td><td>4.88</td><td>97.21</td><td>97.40</td><td>81.63</td><td>85.39</td><td>88.37</td></tr><tr><td>SEINE (Chen et al., 2023)</td><td>[512x320]</td><td></td><td>-</td><td>96.57</td><td>96.80</td><td>79.49</td><td>85.71</td><td>88.45</td></tr><tr><td>VideoCrafter (Chen et al., 2024a)</td><td>[512x320]</td><td></td><td>9.43</td><td>91.17</td><td>91.31</td><td>81.34</td><td>87.55</td><td>88.47</td></tr><tr><td>SEINE (Chen et al., 2023)</td><td>[512x512]</td><td></td><td>5.13</td><td>97.15</td><td>96.94</td><td>80.58</td><td>87.13</td><td>89.61</td></tr><tr><td>Animate-Anything (Dai et al., 2023b)</td><td>[512x512]</td><td></td><td>1.58</td><td>98.76</td><td>98.58</td><td>81.21</td><td>88.84</td><td>91.30</td></tr><tr><td>MarDini-L/ST-9</td><td>[512x512]</td><td>X</td><td>2.24</td><td>98.64</td><td>97.12</td><td>80.84</td><td>88.22</td><td>90.64</td></tr><tr><td>MarDini-S/ST-9</td><td>[512x512]</td><td>X</td><td>2.24</td><td>99.04</td><td>97.23</td><td>81.00</td><td>88.59</td><td>90.98</td></tr><tr><td>MarDini-L/T-17</td><td>[512x512]</td><td>X</td><td>0.48</td><td>98.23</td><td>97.01</td><td>80.25</td><td>87.68</td><td>90.16</td></tr><tr><td>MarDini-S/T-17</td><td>[512x512]</td><td>X</td><td>0.46</td><td>98.76</td><td>97.18</td><td>80.56</td><td>88.17</td><td>90.62</td></tr><tr><td colspan="9">High Resolution</td></tr><tr><td>SVD-XT-1.0 (Blattmann et al., 2023a)</td><td>[1024x576]</td><td></td><td>2.19</td><td>97.52</td><td>97.63</td><td>82.79</td><td>86.54</td><td>89.30</td></tr><tr><td>SVD-XT-1.1 (Blattmann et al., 2023a)</td><td>[1024x576]</td><td></td><td>2.19</td><td>97.51</td><td>97.62</td><td>82.23</td><td>86.66</td><td>89.38</td></tr><tr><td>I2VGen-XL (Zhang et al., 2023b)</td><td>[1280x720]</td><td></td><td>6.01</td><td>96.48</td><td>96.83</td><td>81.17</td><td>87.02</td><td>89.43</td></tr><tr><td>DynamiCrafter (Xing et al., 2024)</td><td>[1024x576]</td><td></td><td>7.13</td><td>98.17</td><td>98.60</td><td>82.52</td><td>87.31</td><td>90.08</td></tr><tr><td>MarDini-L/T-17</td><td>[768x768]</td><td>X</td><td>1.01</td><td>98.34</td><td>96.63</td><td>80.88</td><td>88.22</td><td>90.54</td></tr><tr><td>MarDini-S/T-17</td><td>[768x768]</td><td>X</td><td>0.98</td><td>98.77</td><td>96.78</td><td>81.29</td><td>88.68</td><td>90.95</td></tr><tr><td>MARDini-L/T-17</td><td>[1024x1024]</td><td>X</td><td>-</td><td>98.61</td><td>96.34</td><td>81.35</td><td>88.69</td><td>90.89</td></tr><tr><td>MARDini-S/T-17</td><td>[1024x1024]</td><td>X</td><td>-</td><td>98.78</td><td>96.46</td><td>81.74</td><td>88.97</td><td>91.13</td></tr></table>{{< /table-caption >}}
> 🔼 Table 4 presents a comparison of MarDini's performance against other zero-shot video interpolation methods on the VIDIM-Bench benchmark, using various metrics including FVD, FID, SSIM, and LPIPS.
> <details>
> <summary>read the caption</summary>
> Table 4 Performance of zero-shot video interpolation on VIDIM-Bench. The reported results are taken directly from VIDIM (Jain et al., 2024). AMT, RIFE, and FILM are single-inference methods, while LDMVFI, VIDIM, and our approach are based on diffusion models with multiple inference steps. MidF-SSIM and MidF-LPIPS represent the SSIM and LPIPS scores, respectively, for the middle frame. For MarDini-512, we downscale the generated videos to 256 resolution for a fair comparison.
> </details>

</details>


### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2410.20280/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.20280/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.20280/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.20280/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.20280/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.20280/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.20280/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.20280/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.20280/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.20280/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.20280/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.20280/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.20280/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.20280/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.20280/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.20280/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.20280/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.20280/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.20280/19.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.20280/20.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.20280/21.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.20280/22.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}