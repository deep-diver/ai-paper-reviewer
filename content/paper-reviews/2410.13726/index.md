---
title: "DAWN: Dynamic Frame Avatar with Non-autoregressive Diffusion Framework for Talking Head Video Generation"
summary: "DAWN: a new framework for generating realistic talking head videos from a single image and audio, using a fast non-autoregressive diffusion model to overcome limitations of previous approaches."
categories: ["AI Generated"]
tags: ["🔖 24-10-17", ]
showSummary: true
date: 2024-10-17
draft: false
---

{{< keyword >}} 2410.13726 {{< /keyword >}}

### TL;DR


{{< lead >}}

This research introduces DAWN, a novel framework for generating talking head videos.  Unlike many existing methods that rely on slow, autoregressive techniques, DAWN employs a non-autoregressive diffusion model.  This allows for much faster video generation and better handling of long sequences. To improve realism and consistency, the model cleverly separates the generation of lip movements from head poses and blinks.  Extensive testing shows that DAWN produces high-quality, vivid videos at a considerably faster speed than previous approaches, highlighting its potential for various applications like virtual meetings and entertainment. The research also opens up new directions for non-autoregressive diffusion models in video generation.

{{< /lead >}}


{{< button href="https://arxiv.org/abs/2410.13726" target="_self" >}}
{{< icon "link" >}} &nbsp; read the paper on arXiv
{{< /button >}}
<br><br>
{{< button href="https://huggingface.co/papers/2410.13726" target="_self" >}}
{{< icon "hf-logo" >}} &nbsp; on Hugging Face
{{< /button >}}

#### Why does it matter?
This paper is significant because it introduces a novel, non-autoregressive approach to talking head video generation, addressing limitations of existing methods.  It offers faster generation speeds, improved video quality, and better handling of long video sequences.  The techniques used (like decoupling motion components) and the strong empirical results open up new avenues for research in diffusion models and video generation.
#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} DAWN uses a non-autoregressive diffusion model to generate talking head videos significantly faster than previous autoregressive methods. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} By decoupling lip motion generation from head pose and blink generation, DAWN produces more natural and consistent results. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} DAWN demonstrates strong extrapolation capabilities for generating high-quality, long videos. {{< /typeit >}}
{{< /alert >}}

------
#### Visual Insights



![](https://ai-paper-reviewer.com/2410.13726/figures_4_0.png)

> 🔼 Figure 1 illustrates the pipeline of the DAWN framework, showing how it uses a latent flow generator, a pose and blink generation network, and an audio-to-video flow diffusion model to generate talking head videos.
> <details>
> <summary>read the caption</summary>
> Figure 1: The pipeline of DAWN. First, we train the Latent Flow Generator (LFG) in (a) to extract the motion representation from the video. Then the Pose and Blink generation Network (PBNet) in (b) is utilized to generate the head pose and blink sequences of the avatar. Subsequently, the Audio-to-Video Flow Diffusion Model (A2V-FDM) in (c) generates the talking head video from the source image conditioned by the audio and pose/blink sequences provided by the PBNet.
> </details>





![](https://ai-paper-reviewer.com/2410.13726/charts_16_0.png)

> 🔼 The chart compares the generation time cost of different talking head generation methods, highlighting that the proposed DAWN method is significantly faster than previous diffusion-based approaches.
> <details>
> <summary>read the caption</summary>
> Figure 5: The comparison experiment on generation time cost. The “*” refers to diffusion-based methods.
> </details>





{{< table-caption >}}
<table id='2' style='font-size:18px'><tr><td></td><td>Method</td><td>FID↓</td><td>FVD16↓</td><td>FVD32↓</td><td>LSEc↑</td><td>LSED↓</td><td>CSIM↑</td><td>BAS</td><td>Blink/s</td></tr><tr><td rowspan="7">CREMA</td><td>GT</td><td>-</td><td>-</td><td>-</td><td>5.88</td><td>7.87</td><td>1</td><td>0.192</td><td>0.24</td></tr><tr><td>Audio2Head</td><td>29.58</td><td>188.54</td><td>208.44</td><td>5.13</td><td>7.92</td><td>0.660</td><td>0.274</td><td>0.01</td></tr><tr><td>MakeItalk</td><td>19.87</td><td>159.38</td><td>320.77</td><td>3.78</td><td>9.15</td><td>0.788</td><td>0.261</td><td>0.05</td></tr><tr><td>SadTalker</td><td>16.05</td><td>101.43</td><td>158.85</td><td>5.57</td><td>7.36</td><td>0.808</td><td>0.244</td><td>0.33</td></tr><tr><td>Diffused Heads</td><td>13.01</td><td>64.27</td><td>116.18</td><td>4.56</td><td>9.26</td><td>0.673</td><td>0.185</td><td>0.26</td></tr><tr><td>Wav2Lip*</td><td>10.23</td><td>130.23</td><td>242.19</td><td>6.08</td><td>7.74</td><td>0.801</td><td>-</td><td>-</td></tr><tr><td>DAWN (ours)</td><td>5.77</td><td>56.33</td><td>75.82</td><td>5.77</td><td>8.14</td><td>0.845</td><td>0.231</td><td>0.29</td></tr><tr><td rowspan="6">HDTF</td><td>GT</td><td>-</td><td>-</td><td>-</td><td>7.95</td><td>7.33</td><td>1</td><td>0.267</td><td>0.75</td></tr><tr><td>Audio2Head</td><td>30.10</td><td>122.26</td><td>205.42</td><td>6.88</td><td>7.58</td><td>0.705</td><td>0.290</td><td>0.09</td></tr><tr><td>MakeItalk</td><td>23.65</td><td>120.42</td><td>221.14</td><td>4.41</td><td>9.69</td><td>0.744</td><td>0.295</td><td>0.09</td></tr><tr><td>SadTalker</td><td>26.11</td><td>97.43</td><td>187.43</td><td>6.27</td><td>8.03</td><td>0.767</td><td>0.297</td><td>0.47</td></tr><tr><td>Wav2Lip*</td><td>23.85</td><td>166.15</td><td>281.73</td><td>7.42</td><td>7.44</td><td>0.701</td><td>-</td><td>-</td></tr><tr><td>DAWN (ours)</td><td>9.60</td><td>60.34</td><td>95.64</td><td>6.71</td><td>7.94</td><td>0.790</td><td>0.281</td><td>0.86</td></tr></table>{{< /table-caption >}}

> 🔼 Table 1 quantitatively compares the performance of DAWN against other state-of-the-art methods on two datasets using various metrics, including FID, FVD, LSE, CSIM, BAS, and Blink/s.
> <details>
> <summary>read the caption</summary>
> Table 1: Quantitative comparison with several state-of-the-art methods methods on HDTF (Zhang et al., 2021) and CREMA (Cao et al., 2014) datasets. * Wav2Lip generated videos that only contain lip motions, while the rest remain still images. “↑” indicates better performance with higher values, while “↓” indicates better performance with lower values. For both BAS and Blink/s, we consider performance to be better when they are closer to the ground truth.
> </details>



### More visual insights

<details>
<summary>More on figures
</summary>


![](https://ai-paper-reviewer.com/2410.13726/figures_4_1.png)

> 🔼 The figure illustrates the overall architecture of DAWN, showing the three main components: Latent Flow Generator (LFG), Pose and Blink generation Network (PBNet), and Audio-to-Video Flow Diffusion Model (A2V-FDM), and their interactions.
> <details>
> <summary>read the caption</summary>
> Figure 1: The pipeline of DAWN. First, we train the Latent Flow Generator (LFG) in (a) to extract the motion representation from the video. Then the Pose and Blink generation Network (PBNet) in (b) is utilized to generate the head pose and blink sequences of the avatar. Subsequently, the Audio-to-Video Flow Diffusion Model (A2V-FDM) in (c) generates the talking head video from the source image conditioned by the audio and pose/blink sequences provided by the PBNet.
> </details>



![](https://ai-paper-reviewer.com/2410.13726/figures_8_0.png)

> 🔼 Figure 2 shows a qualitative comparison of DAWN with other state-of-the-art talking head generation methods on two datasets, highlighting DAWN's superior video quality, lip synchronization, identity preservation, and head motion.
> <details>
> <summary>read the caption</summary>
> Figure 2: Qualitative comparison with several state-of-the-art methods on HDTF (Zhang et al., 2021) and CREMA (Cao et al., 2014) datasets. Our method produces higher-quality results in video quality, lip-sync consistency, identity preservation, and head motions.
> </details>



![](https://ai-paper-reviewer.com/2410.13726/figures_10_0.png)

> 🔼 Figure 3 shows the results of cross-identity reenactment, where audio, head pose, and blink signals from one video are used to generate a talking head video from a different source image.
> <details>
> <summary>read the caption</summary>
> Figure 3: Visualization of cross-identity reenactment. We extract the audio, head pose, and blink signals from the video in the first row, and use them to drive the source image, generating the talking head video in the second row.
> </details>



![](https://ai-paper-reviewer.com/2410.13726/figures_15_0.png)

> 🔼 Figure 4 presents qualitative results demonstrating the model's ability to generate high-resolution talking head videos across various portrait styles, including photos, paintings, anime, and sketches.
> <details>
> <summary>read the caption</summary>
> Figure 4: The qualitative study on higher resolution (256 × 256) and different portrait styles.
> </details>



![](https://ai-paper-reviewer.com/2410.13726/figures_17_0.png)

> 🔼 The figure visualizes the results of cross-identity reenactment, showing how the model can generate talking head videos using audio, pose, and blink signals from one video and apply them to a different source image.
> <details>
> <summary>read the caption</summary>
> Figure 3: Visualization of cross-identity reenactment. We extract the audio, head pose, and blink signals from the video in the first row, and use them to drive the source image, generating the talking head video in the second row.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<br><table id='2' style='font-size:20px'><tr><td>Method</td><td>Time(s)↓</td><td>FID↓</td><td>FVD16↓</td><td>FVD32↓</td><td>LSEc↑</td><td>LSED↓</td></tr><tr><td>SAR</td><td>11.42</td><td>13.00</td><td>120.33</td><td>210.52</td><td>4.34</td><td>8.29</td></tr><tr><td>TTR</td><td>19.25</td><td>9.77</td><td>95.42</td><td>137.14</td><td>4.87</td><td>8.68</td></tr><tr><td>Ours</td><td>7.32</td><td>9.60</td><td>60.34</td><td>95.64</td><td>6.71</td><td>7.94</td></tr></table>{{< /table-caption >}}
> 🔼 Table 2 compares the proposed non-autoregressive method with SAR and TTR methods in terms of generation time, FID, FVD16, FVD32, LSEC, and LSED scores on the CREMA dataset.
> <details>
> <summary>read the caption</summary>
> Table 2: Comparison with other generation strategies. The semi-autoregressive (SAR) generation strategy is similar to He et al. (2023). The two temporal resolution (TTR) generation method is mentioned in Harvey et al. (2022).
> </details>

{{< table-caption >}}
<br><table id='4' style='font-size:20px'><tr><td>Inference length</td><td>FID↓</td><td>FVD16↓</td><td>FVD32↓</td><td>LSEc↑</td><td>LSED↓</td></tr><tr><td>40</td><td>9.35</td><td>59.58</td><td>94.09</td><td>5.76</td><td>7.89</td></tr><tr><td>100</td><td>9.83</td><td>61.72</td><td>98.80</td><td>6.41</td><td>7.96</td></tr><tr><td>200</td><td>9.60</td><td>60.34</td><td>95.64</td><td>6.71</td><td>7.94</td></tr><tr><td>400</td><td>10.36</td><td>61.57</td><td>97.84</td><td>6.63</td><td>8.12</td></tr><tr><td>600</td><td>10.30</td><td>60.44</td><td>96.62</td><td>6.76</td><td>8.02</td></tr></table>{{< /table-caption >}}
> 🔼 Table 3 shows the quantitative results of the extrapolation experiment by changing the inference length, demonstrating the stable performance of the model across different lengths.
> <details>
> <summary>read the caption</summary>
> Table 3: The experiment of extrapolation evaluation. “Inference length” refers to the number of frames generated in a single inference process.
> </details>

{{< table-caption >}}
<br><table id='2' style='font-size:18px'><tr><td>Method</td><td>GT PB</td><td>FID↓</td><td>FVD16↓</td><td>FVD32↓</td><td>LSEc↑</td><td>LSED↓</td></tr><tr><td>only stage 1</td><td></td><td>7.95</td><td>81.84</td><td>126.52</td><td>4.38</td><td>10.04</td></tr><tr><td>only stage 2</td><td></td><td>13.71</td><td>125.75</td><td>166.83</td><td>6.14</td><td>8.43</td></tr><tr><td>DAWN</td><td></td><td>9.68</td><td>52.05</td><td>87.11</td><td>6.71</td><td>7.99</td></tr><tr><td>w/o PBNet</td><td>x</td><td>15.20</td><td>100.94</td><td>162.35</td><td>5.79</td><td>8.36</td></tr><tr><td>DAWN</td><td>x</td><td>9.60</td><td>60.34</td><td>95.64</td><td>6.71</td><td>7.94</td></tr></table>{{< /table-caption >}}
> 🔼 Table 4 presents the ablation study results of the two-stage curriculum learning (TCL) and Pose and Blink generation Network (PBNet), comparing different model configurations on various metrics such as FID, FVD16, FVD32, LSEC, and LSED.
> <details>
> <summary>read the caption</summary>
> Table 4: Ablation study on TCL and PBNet. The “GT PB” refers to whether to use ground truth pose/blink signal.
> </details>

{{< table-caption >}}
<br><table id='4' style='font-size:20px'><tr><td>Window</td><td>FID↓</td><td>FVD16↓</td><td>FVD32↓</td><td>LSEc↑</td><td>LSED↓</td></tr><tr><td>20</td><td>14.47</td><td>159.19</td><td>217.54</td><td>5.69</td><td>8.97</td></tr><tr><td>40</td><td>10.93</td><td>72.93</td><td>114.52</td><td>6.35</td><td>8.33</td></tr><tr><td>80</td><td>9.68</td><td>52.05</td><td>87.11</td><td>6.71</td><td>7.99</td></tr><tr><td>200</td><td>9.44</td><td>53.48</td><td>88.84</td><td>6.60</td><td>7.94</td></tr><tr><td>None</td><td>9.70</td><td>63.95</td><td>103.83</td><td>6.37</td><td>8.15</td></tr></table>{{< /table-caption >}}
> 🔼 Table 5 shows the ablation study on the local attention mechanism with different window sizes, showing that a window size of 80 yields the best performance.
> <details>
> <summary>read the caption</summary>
> Table 5: Ablation study on the local attention mechanism. The 'window' means the window size in the local attention operation. The “None” means we use the original attention mechanism instead.
> </details>

</details>


### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2410.13726/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.13726/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.13726/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.13726/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.13726/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.13726/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.13726/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.13726/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.13726/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.13726/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.13726/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.13726/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.13726/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.13726/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.13726/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.13726/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.13726/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}