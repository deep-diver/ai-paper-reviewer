---
title: "FrugalNeRF: Fast Convergence for Few-shot Novel View Synthesis without Learned Priors"
summary: "FrugalNeRF: achieving high-fidelity 3D scene reconstruction from minimal data with unprecedented speed, eliminating the need for pre-trained models."
categories: ["AI Generated"]
tags: ["🔖 24-10-21", ]
showSummary: true
date: 2024-10-21
draft: false
---

{{< keyword >}} 2410.16271 {{< /keyword >}}

### TL;DR


{{< lead >}}

Neural Radiance Fields (NeRFs) usually require extensive training data and time for high-quality 3D scene reconstruction. This paper introduces FrugalNeRF, a novel method that achieves comparable or better results with significantly less data and training time.  It cleverly uses weight-sharing voxels across multiple scales, capturing various frequency components efficiently.  A key innovation is the cross-scale geometric adaptation scheme, which uses reprojection errors to guide training without needing external priors.  This makes FrugalNeRF both fast and robust, outperforming existing few-shot NeRF approaches on several standard datasets.  The researchers suggest further study in handling scenarios with significant viewpoint changes or extremely limited training views.

{{< /lead >}}


{{< button href="https://arxiv.org/abs/2410.16271" target="_self" >}}
{{< icon "link" >}} &nbsp; read the paper on arXiv
{{< /button >}}
<br><br>
{{< button href="https://huggingface.co/papers/2410.16271" target="_self" >}}
{{< icon "hf-logo" >}} &nbsp; on Hugging Face
{{< /button >}}

#### Why does it matter?
This paper is crucial for researchers in novel view synthesis and neural radiance fields.  It addresses the critical challenge of few-shot learning, offering a faster, more efficient method than existing approaches. The weight-sharing voxel design and geometric adaptation strategy are significant contributions that open new avenues for improving NeRF performance and scalability.  Its impact extends to various applications needing efficient 3D scene reconstruction from limited data.
#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} FrugalNeRF significantly accelerates NeRF training, achieving comparable or better results than existing methods while dramatically reducing training time. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} It introduces a novel weight-sharing multi-scale voxel representation and cross-scale geometric adaptation, enhancing efficiency and generalizability without relying on pre-trained models. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Experiments demonstrate FrugalNeRF's superior performance on multiple datasets, showcasing its effectiveness in few-shot novel view synthesis. {{< /typeit >}}
{{< /alert >}}

------
#### Visual Insights



![](https://ai-paper-reviewer.com/2410.16271/figures_1_0.png)

> 🔼 The figure compares FrugalNeRF's performance against other state-of-the-art methods in terms of PSNR and training time using only two views.
> <details>
> <summary>read the caption</summary>
> Figure 1. Comparisons between FrugalNeRF and state-of-the-art methods with only two views for training. SimpleNeRF [71] suffers from long training times, SparseNeRF [81] produces blurry results, and FSGS [102] quality drops with few input views. Our FrugalNeRF achieves rapid, robust voxel training without learned priors, demonstrating superior efficiency and realistic synthesis. It can also integrate pre-trained priors for enhanced quality. Green: methods without learned priors. Orange: with learned priors
> </details>





![](https://ai-paper-reviewer.com/2410.16271/charts_1_0.png)

> 🔼 The chart compares the performance of FrugalNeRF against other state-of-the-art methods in terms of PSNR and training time using only two views for training.
> <details>
> <summary>read the caption</summary>
> Figure 1. Comparisons between FrugalNeRF and state-of-the-art methods with only two views for training. SimpleNeRF [71] suffers from long training times, SparseNeRF [81] produces blurry results, and FSGS [102] quality drops with few input views. Our FrugalNeRF achieves rapid, robust voxel training without learned priors, demonstrating superior efficiency and realistic synthesis. It can also integrate pre-trained priors for enhanced quality. Green: methods without learned priors. Orange: with learned priors
> </details>





{{< table-caption >}}
<table id='1' style='font-size:14px'><tr><td>Method</td><td>Venue</td><td>Learned priors</td><td>PSNR ↑</td><td>2-view SSIM ↑</td><td>LPIPS ↓</td><td>PSNR ↑</td><td>3-view SSIM ↑</td><td>LPIPS ↓</td><td>PSNR ↑</td><td>4-view SSIM ↑</td><td>LPIPS ↓</td><td>Training time ↓</td></tr><tr><td>DS-NeRF [21]</td><td>CVPR22</td><td>-</td><td>16.93</td><td>0.51</td><td>0.42</td><td>18.97</td><td>0.58</td><td>0.36</td><td>20.07</td><td>0.61</td><td>0.34</td><td>3.5 hrs</td></tr><tr><td>FreeNeRF [91]</td><td>CVPR23</td><td>-</td><td>17.55</td><td>0.54</td><td>0.38</td><td>19.30</td><td>0.60</td><td>0.34</td><td>20.45</td><td>0.63</td><td>0.33</td><td>1.5 hrs</td></tr><tr><td>ViP-NeRF [70]</td><td>SIGGRAPH23</td><td>-</td><td>16.66</td><td>0.52</td><td>0.37</td><td>18.89</td><td>0.59</td><td>0.34</td><td>19.34</td><td>0.62</td><td>0.32</td><td>13.5 hrs</td></tr><tr><td>SimpleNeRF [71]</td><td>SIGGRAPH Asia23</td><td>-</td><td>17.57</td><td>0.55</td><td>0.39</td><td>19.47</td><td>0.62</td><td>0.33</td><td>20.44</td><td>0.65</td><td>0.31</td><td>9.5 hrs</td></tr><tr><td>FrugalNeRF (Ours)</td><td>-</td><td>-</td><td>18.07</td><td>0.54</td><td>0.35</td><td>19.66</td><td>0.61</td><td>0.30</td><td>20.70</td><td>0.65</td><td>0.28</td><td>10 mins</td></tr><tr><td>RegNeRF [53]</td><td>CVPR22</td><td>normalizing flow</td><td>16.88</td><td>0.49</td><td>0.43</td><td>18.65</td><td>0.57</td><td>0.36</td><td>19.89</td><td>0.62</td><td>0.32</td><td>2.35 hrs</td></tr><tr><td>DDP-NeRF [61]</td><td>CVPR22</td><td>depth completion</td><td>17.19</td><td>0.54</td><td>0.39</td><td>17.71</td><td>0.56</td><td>0.39</td><td>19.19</td><td>0.61</td><td>0.35</td><td>3.5 hrs</td></tr><tr><td>GeCoNeRF [39]</td><td>ICML23</td><td>VGG19 feature</td><td>15.83</td><td>0.45</td><td>0.52</td><td>17.44</td><td>0.50</td><td>0.47</td><td>19.14</td><td>0.56</td><td>0.42</td><td>4 hrs</td></tr><tr><td>SparseNeRF [81]</td><td>ICCV23</td><td>monocular depth</td><td>18.02</td><td>0.52</td><td>0.45</td><td>19.52</td><td>0.59</td><td>0.37</td><td>20.89</td><td>0.65</td><td>0.34</td><td>1 hrs</td></tr><tr><td>FSGS [102]</td><td>ECCV24</td><td>monocular depth</td><td>15.26</td><td>0.45</td><td>0.41</td><td>19.21</td><td>0.61</td><td>0.30</td><td>20.07</td><td>0.66</td><td>0.22</td><td>25 mins</td></tr><tr><td>FrugalNeRF (Ours)</td><td>-</td><td>monocular depth</td><td>18.26</td><td>0.55</td><td>0.35</td><td>19.87</td><td>0.61</td><td>0.30</td><td>20.89</td><td>0.66</td><td>0.26</td><td>11 mins</td></tr></table>{{< /table-caption >}}

> 🔼 Table 1 quantitatively compares FrugalNeRF against other state-of-the-art few-shot NeRF methods across various metrics (PSNR, SSIM, LPIPS, and training time) using different numbers of input views (2, 3, and 4).
> <details>
> <summary>read the caption</summary>
> Table 1. Quantitative results on the LLFF [49] dataset. FrugalNeRF performs competitively with baseline methods in extreme few-shot settings, offering shorter training time without relying on externally learned priors. Integrating monocular depth regularization further improves quality while maintaining fast convergence. Results differ from SimpleNeRF's paper but match its supplementary document, as we evaluate full images without visibility masks.
> </details>



### More visual insights

<details>
<summary>More on figures
</summary>


![](https://ai-paper-reviewer.com/2410.16271/figures_2_0.png)

> 🔼 Figure 2 illustrates and compares different few-shot NeRF approaches, highlighting FrugalNeRF's unique weight-sharing multi-scale voxel structure and cross-scale geometric adaptation.
> <details>
> <summary>read the caption</summary>
> Figure 2. Comparisons between few-shot NeRF approaches. (a) Frequency regularization gradually increases the visibility of high-frequency signals of positional encoding, but the training speed is slow. (b) Replacing the MLPs with voxels and incorporating them with gradual voxel upsampling achieves similar frequency regularization but cannot generalize well. (c) Some approaches employ pre-trained models to supervise the rendered color or depth patches. (d) Our FrugalNeRF, leveraging weight-sharing voxels across scales for various frequencies representation, enhanced by a cross-scale geometric adaptation for efficient supervision.
> </details>



![](https://ai-paper-reviewer.com/2410.16271/figures_4_0.png)

> 🔼 Figure 3 illustrates the FrugalNeRF architecture, detailing its multi-scale voxel representation, ray sampling strategies, and cross-scale geometric adaptation for training.
> <details>
> <summary>read the caption</summary>
> Figure 3. Overview of FrugalNeRF architecture. (a) Our FrugalNeRF represents a scene with a pair of density and appearance voxels (VD, VA). For a better graphical illustration, we show only one voxel in the figure. (b) We sample rays from not only training input views rtrain but also randomly sampled novel views rnovel. (c) We then create L + 1 multi-scale voxels by hierarchical subsampling, where lower-resolution voxels ensure global geometry consistency and reduce overfitting but suffer from representing detailed structures, while higher-resolution voxels capture fine details but may get stuck in the local minimum or generate floaters. (d) For the rays from training views rtrain, we enforce an MSE reconstruction loss between the volume rendered RGB color Ĉ and input RGB C at each scale. (e) We introduce a cross-scale geometric adaptation loss for novel view rays rnovel, warping volume-rendered RGB to the nearest training view using predicted depth, calculating projection errors e' at each scale, and using the depth with the minimum reprojection error as pseudo-GT for depth supervision. This adaptation involves rays from both training and novel views, though the figure only depicts novel view rays for clarity.
> </details>



![](https://ai-paper-reviewer.com/2410.16271/figures_7_0.png)

> 🔼 Figure 1 compares FrugalNeRF's performance against other state-of-the-art methods on novel view synthesis using only two training views, highlighting its speed and quality.
> <details>
> <summary>read the caption</summary>
> Figure 1. Comparisons between FrugalNeRF and state-of-the-art methods with only two views for training. SimpleNeRF [71] suffers from long training times, SparseNeRF [81] produces blurry results, and FSGS [102] quality drops with few input views. Our FrugalNeRF achieves rapid, robust voxel training without learned priors, demonstrating superior efficiency and realistic synthesis. It can also integrate pre-trained priors for enhanced quality. Green: methods without learned priors. Orange: with learned priors
> </details>



![](https://ai-paper-reviewer.com/2410.16271/figures_8_0.png)

> 🔼 Figure 4 presents a qualitative comparison of FrugalNeRF against other state-of-the-art methods on the LLFF dataset, showcasing its superior synthesis quality and coherent geometric depth.
> <details>
> <summary>read the caption</summary>
> Figure 4. Qualitative comparisons on the LLFF [49] dataset with two input views. FrugalNeRF achieves better synthesis quality and coherent geometric depth. We also include the GT and overlapped input images for reference.
> </details>



![](https://ai-paper-reviewer.com/2410.16271/figures_9_0.png)

> 🔼 The figure shows that different scenes activate different frequency bands in multi-scale voxels, demonstrating the model's adaptability.
> <details>
> <summary>read the caption</summary>
> Figure 8. Scene dependency analysis of the multi-scale voxels. Cross-scale geometric adaptation can adapt to diverse scenes.
> </details>



![](https://ai-paper-reviewer.com/2410.16271/figures_25_0.png)

> 🔼 Figure 10 shows qualitative comparisons of novel view synthesis results on the LLFF dataset using FrugalNeRF and other state-of-the-art methods with two input views.
> <details>
> <summary>read the caption</summary>
> Figure 10. More qualitative comparisons on the LLFF [48] dataset with two input views. FrugalNeRF achieves better synthesis quality in different scenes.
> </details>



![](https://ai-paper-reviewer.com/2410.16271/figures_26_0.png)

> 🔼 The figure compares FrugalNeRF against other state-of-the-art methods in terms of PSNR and training time using only two views for training, highlighting FrugalNeRF's superior efficiency and quality.
> <details>
> <summary>read the caption</summary>
> Figure 1. Comparisons between FrugalNeRF and state-of-the-art methods with only two views for training. SimpleNeRF [71] suffers from long training times, SparseNeRF [81] produces blurry results, and FSGS [102] quality drops with few input views. Our FrugalNeRF achieves rapid, robust voxel training without learned priors, demonstrating superior efficiency and realistic synthesis. It can also integrate pre-trained priors for enhanced quality. Green: methods without learned priors. Orange: with learned priors
> </details>



![](https://ai-paper-reviewer.com/2410.16271/figures_26_1.png)

> 🔼 Figure 1 shows a comparison of FrugalNeRF against other state-of-the-art methods in terms of PSNR and training time using only two views for training.
> <details>
> <summary>read the caption</summary>
> Figure 1. Comparisons between FrugalNeRF and state-of-the-art methods with only two views for training. SimpleNeRF [71] suffers from long training times, SparseNeRF [81] produces blurry results, and FSGS [102] quality drops with few input views. Our FrugalNeRF achieves rapid, robust voxel training without learned priors, demonstrating superior efficiency and realistic synthesis. It can also integrate pre-trained priors for enhanced quality. Green: methods without learned priors. Orange: with learned priors
> </details>



![](https://ai-paper-reviewer.com/2410.16271/figures_27_0.png)

> 🔼 Figure 1 shows a comparison of FrugalNeRF against other state-of-the-art methods in terms of PSNR and training time using only two views for training.
> <details>
> <summary>read the caption</summary>
> Figure 1. Comparisons between FrugalNeRF and state-of-the-art methods with only two views for training. SimpleNeRF [71] suffers from long training times, SparseNeRF [81] produces blurry results, and FSGS [102] quality drops with few input views. Our FrugalNeRF achieves rapid, robust voxel training without learned priors, demonstrating superior efficiency and realistic synthesis. It can also integrate pre-trained priors for enhanced quality. Green: methods without learned priors. Orange: with learned priors
> </details>



</details>



<details>
<summary>More on charts
</summary>


![](https://ai-paper-reviewer.com/2410.16271/charts_9_0.png)

> 🔼 The chart visualizes how the proportion of each voxel scale serving as pseudo-ground truth changes across training iterations, demonstrating the cross-scale geometric adaptation process.
> <details>
> <summary>read the caption</summary>
> Figure 6. Cross-scale geometric adaptation in training. (Left) In the early training phase, low-resolution voxels primarily act as pseudo-ground truth, guiding the model's geometric learning. As training goes on, medium- and high-resolution voxels increasingly contribute to refining scene geometry. This adaptive approach enables the model to autonomously tune into appropriate frequencies at each stage, enhancing its ability to generalize across various scenes. (Right) Without geometric adaptation, all of the scales result in sub-optimal solutions. Geometric adaptation drives convergence to higher quality across all scales.
> </details>


![](https://ai-paper-reviewer.com/2410.16271/charts_9_1.png)

> 🔼 The chart compares the performance of FrugalNeRF against other state-of-the-art methods in terms of PSNR and training time when using only two views for training.
> <details>
> <summary>read the caption</summary>
> Figure 1. Comparisons between FrugalNeRF and state-of-the-art methods with only two views for training. SimpleNeRF [71] suffers from long training times, SparseNeRF [81] produces blurry results, and FSGS [102] quality drops with few input views. Our FrugalNeRF achieves rapid, robust voxel training without learned priors, demonstrating superior efficiency and realistic synthesis. It can also integrate pre-trained priors for enhanced quality. Green: methods without learned priors. Orange: with learned priors
> </details>


![](https://ai-paper-reviewer.com/2410.16271/charts_9_2.png)

> 🔼 The chart compares the performance of FrugalNeRF against other state-of-the-art methods in terms of PSNR and training time using only two views for training.
> <details>
> <summary>read the caption</summary>
> Figure 1. Comparisons between FrugalNeRF and state-of-the-art methods with only two views for training. SimpleNeRF [71] suffers from long training times, SparseNeRF [81] produces blurry results, and FSGS [102] quality drops with few input views. Our FrugalNeRF achieves rapid, robust voxel training without learned priors, demonstrating superior efficiency and realistic synthesis. It can also integrate pre-trained priors for enhanced quality. Green: methods without learned priors. Orange: with learned priors
> </details>


![](https://ai-paper-reviewer.com/2410.16271/charts_9_3.png)

> 🔼 The chart compares the PSNR of FrugalNeRF against other state-of-the-art methods using only two training views, highlighting FrugalNeRF's faster convergence and higher quality.
> <details>
> <summary>read the caption</summary>
> Figure 1. Comparisons between FrugalNeRF and state-of-the-art methods with only two views for training. SimpleNeRF [71] suffers from long training times, SparseNeRF [81] produces blurry results, and FSGS [102] quality drops with few input views. Our FrugalNeRF achieves rapid, robust voxel training without learned priors, demonstrating superior efficiency and realistic synthesis. It can also integrate pre-trained priors for enhanced quality. Green: methods without learned priors. Orange: with learned priors
> </details>


</details>



<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table id='1' style='font-size:14px'><tr><td rowspan="2">Method</td><td rowspan="2">Venue</td><td rowspan="2">Learned priors</td><td colspan="3">2-view</td><td colspan="3">3-view</td><td colspan="3">4-view</td><td rowspan="2">Training time ↓</td></tr><tr><td>PSNR ↑</td><td>SSIM ↑</td><td>LPIPS ↓</td><td>PSNR ↑</td><td>SSIM ↑</td><td>LPIPS ↓</td><td>PSNR ↑</td><td>SSIM ↑</td><td>LPIPS ↓</td></tr><tr><td>FreeNeRF [91]</td><td>CVPR23</td><td>-</td><td>18.05</td><td>0.73</td><td>0.22</td><td>22.40</td><td>0.82</td><td>0.14</td><td>24.98</td><td>0.86</td><td>0.12</td><td>1 hrs</td></tr><tr><td>ViP-NeRF [70]</td><td>SIGGRAPH23</td><td>-</td><td>14.91</td><td>0.49</td><td>0.24</td><td>16.62</td><td>0.55</td><td>0.22</td><td>17.64</td><td>0.57</td><td>0.21</td><td>2.2 hrs</td></tr><tr><td>SimpleNeRF [71]</td><td>SIGGRAPH Asia23</td><td>-</td><td>14.41</td><td>0.79</td><td>0.25</td><td>14.01</td><td>0.77</td><td>0.25</td><td>13.90</td><td>0.78</td><td>0.26</td><td>1.38 hrs</td></tr><tr><td>ZeroRF [66]</td><td>CVPR24</td><td>-</td><td>14.84</td><td>0.60</td><td>0.30</td><td>14.47</td><td>0.61</td><td>0.31</td><td>15.73</td><td>0.67</td><td>0.28</td><td>25 mins</td></tr><tr><td>FrugalNeRF (Ours)</td><td>-</td><td></td><td>19.72</td><td>0.78</td><td>0.16</td><td>22.43</td><td>0.83</td><td>0.14</td><td>24.51</td><td>0.86</td><td>0.12</td><td>6 mins</td></tr><tr><td>RegNeRF [53]</td><td>CVPR22</td><td>normalizing flow</td><td>-</td><td>-</td><td>-</td><td>-</td><td>-</td><td>-</td><td>-</td><td>-</td><td>-</td><td>OOM</td></tr><tr><td>SparseNeRF [81]</td><td>ICCV23</td><td>monocular depth</td><td>19.83</td><td>0.75</td><td>0.20</td><td>22.47</td><td>0.83</td><td>0.14</td><td>24.03</td><td>0.86</td><td>0.12</td><td>30 mins</td></tr><tr><td>FSGS [102]</td><td>ECCV24</td><td>monocular depth</td><td>16.82</td><td>0.64</td><td>0.27</td><td>18.29</td><td>0.69</td><td>0.21</td><td>20.08</td><td>0.75</td><td>0.16</td><td>20 mins</td></tr><tr><td>FrugalNeRF (Ours)</td><td>-</td><td>monocular depth</td><td>20.77</td><td>0.79</td><td>0.15</td><td>22.84</td><td>0.83</td><td>0.13</td><td>24.81</td><td>0.86</td><td>0.12</td><td>7 mins</td></tr></table>{{< /table-caption >}}
> 🔼 Table 2 presents a quantitative comparison of FrugalNeRF against other state-of-the-art few-shot NeRF methods on the DTU dataset, showcasing its superior performance in terms of PSNR, SSIM, and LPIPS metrics while requiring significantly less training time.
> <details>
> <summary>read the caption</summary>
> Table 2. Quantitative results on the DTU [32] dataset. FrugalNeRF synthesizes better images than most of the other baselines under extreme few-shot settings but with shorter training time and does not rely on any externally learned priors. Additionally, integrating monocular depth model regularization further improves quality while maintaining fast convergence. We follow SparseNeRF [81] to remove the background when computing metrics.
> </details>

{{< table-caption >}}
<table id='5' style='font-size:16px'><tr><td># of scales</td><td>PSNR ↑</td><td>SSIM ↑</td><td>LPIPS ↓</td><td>Time ↓</td></tr><tr><td>1 (L = 0)</td><td>15.22</td><td>0.46</td><td>0.43</td><td>6 mins</td></tr><tr><td>2 (L = 1)</td><td>16.58</td><td>0.53</td><td>0.37</td><td>7 mins</td></tr><tr><td>3 (L = 2)</td><td>18.07</td><td>0.54</td><td>0.35</td><td>10 mins</td></tr><tr><td>4 (L = 3)</td><td>18.08</td><td>0.54</td><td>0.36</td><td>15 mins</td></tr></table>{{< /table-caption >}}
> 🔼 The table shows the ablation study of different numbers of scales used in FrugalNeRF on the LLFF dataset, demonstrating that increasing the number of scales improves the rendering quality but also increases the training time.
> <details>
> <summary>read the caption</summary>
> Table 3. Comparison of a different number of scales on the LLFF dataset.
> </details>

{{< table-caption >}}
<table id='8' style='font-size:16px'><tr><td>Method</td><td>MFLOPs / pixel ↓</td></tr><tr><td>FreeNeRF [91]</td><td>288.57</td></tr><tr><td>ViP-NeRF [70]</td><td>149.26</td></tr><tr><td>SimpleNeRF [71]</td><td>303.82</td></tr><tr><td>SparseNeRF [81]</td><td>287.92</td></tr><tr><td>Ours</td><td>13.77</td></tr></table>{{< /table-caption >}}
> 🔼 The table compares the computational efficiency (MFLOPs/pixel) of FrugalNeRF against other state-of-the-art methods for few-shot novel view synthesis.
> <details>
> <summary>read the caption</summary>
> Table 5. Comparison of the time complexity.
> </details>

{{< table-caption >}}
<table id='1' style='font-size:14px'><tr><td>Scene</td><td>Fern</td><td>Flower</td><td>Fortress</td><td>Horns</td><td>Leaves</td><td>Orchids</td><td>Room</td><td>Trex</td><td>Average</td></tr><tr><td>Method</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td></td><td>0.51</td><td>0.43</td><td>0.37</td><td>0.51</td><td>0.35</td><td>0.45</td><td>0.38</td><td>0.42</td><td>0.43</td></tr><tr><td>RegNeRF [53]</td><td>0.45</td><td>0.51</td><td>0.46</td><td>0.42</td><td>0.37</td><td>0.30</td><td>0.74</td><td>0.54</td><td>0.49</td></tr><tr><td></td><td>15.8</td><td>17.0</td><td>20.6</td><td>15.9</td><td>14.5</td><td>13.9</td><td>18.7</td><td>16.7</td><td>16.9</td></tr><tr><td></td><td>0.50</td><td>0.43</td><td>0.30</td><td>0.49</td><td>0.47</td><td>0.43</td><td>0.35</td><td>0.41</td><td>0.42</td></tr><tr><td>DS-NeRF [21]</td><td>0.46</td><td>0.44</td><td>0.65</td><td>0.49</td><td>0.24</td><td>0.32</td><td>0.76</td><td>0.53</td><td>0.51</td></tr><tr><td></td><td>16.4</td><td>16.1</td><td>23.0</td><td>16.6</td><td>12.4</td><td>13.7</td><td>18.9</td><td>15.7</td><td>16.9</td></tr><tr><td></td><td>0.44</td><td>0.46</td><td>0.17</td><td>0.46</td><td>0.52</td><td>0.41</td><td>0.30</td><td>0.43</td><td>0.39</td></tr><tr><td>DDP-NeRF [61]</td><td>0.49</td><td>0.45</td><td>0.77</td><td>0.52</td><td>0.23</td><td>0.38</td><td>0.76</td><td>0.54</td><td>0.54</td></tr><tr><td></td><td>17.2</td><td>16.2</td><td>22.7</td><td>17.1</td><td>12.6</td><td>15.1</td><td>18.7</td><td>15.7</td><td>17.2</td></tr><tr><td></td><td>0.46</td><td>0.38</td><td>0.33</td><td>0.43</td><td>0.36</td><td>0.42</td><td>0.34</td><td>0.33</td><td>0.38</td></tr><tr><td>FreeNeRF [91]</td><td>0.49</td><td>0.55</td><td>0.53</td><td>0.53</td><td>0.38</td><td>0.35</td><td>0.76</td><td>0.60</td><td>0.54</td></tr><tr><td></td><td>17.1</td><td>17.6</td><td>21.3</td><td>17.1</td><td>14.4</td><td>14.1</td><td>18.3</td><td>18.1</td><td>17.6</td></tr><tr><td></td><td>0.45</td><td>0.42</td><td>0.21</td><td>0.39</td><td>0.46</td><td>0.40</td><td>0.36</td><td>0.38</td><td>0.37</td></tr><tr><td>ViP-NeRF [70]</td><td>0.45</td><td>0.43</td><td>0.71</td><td>0.54</td><td>0.21</td><td>0.36</td><td>0.72</td><td>0.54</td><td>0.52</td></tr><tr><td></td><td>16.2</td><td>14.9</td><td>22.6</td><td>17.1</td><td>11.7</td><td>14.2</td><td>17.7</td><td>15.9</td><td>16.7</td></tr><tr><td></td><td>0.51</td><td>0.43</td><td>0.25</td><td>0.42</td><td>0.44</td><td>0.41</td><td>0.35</td><td>0.39</td><td>0.39</td></tr><tr><td>SimpleNeRF [71]</td><td>0.50</td><td>0.53</td><td>0.67</td><td>0.54</td><td>0.30</td><td>0.37</td><td>0.77</td><td>0.58</td><td>0.55</td></tr><tr><td></td><td>17.0</td><td>16.9</td><td>22.5</td><td>17.1</td><td>13.5</td><td>14.7</td><td>19.5</td><td>16.8</td><td>17.6</td></tr><tr><td></td><td>0.48</td><td>0.44</td><td>0.37</td><td>0.47</td><td>0.36</td><td>0.42</td><td>0.38</td><td>0.40</td><td>0.42</td></tr><tr><td>VGOS [75]</td><td>0.51</td><td>0.55</td><td>0.53</td><td>0.55</td><td>0.38</td><td>0.40</td><td>0.77</td><td>0.59</td><td>0.55</td></tr><tr><td></td><td>16.5</td><td>17.5</td><td>19.4</td><td>15.7</td><td>14.7</td><td>14.4</td><td>18.8</td><td>16.0</td><td>16.7</td></tr><tr><td></td><td>0.56</td><td>0.49</td><td>0.50</td><td>0.61</td><td>0.49</td><td>0.51</td><td>0.54</td><td>0.49</td><td>0.52</td></tr><tr><td>GeCoNeRF [39]</td><td>0.47</td><td>0.49</td><td>0.43</td><td>0.41</td><td>0.28</td><td>0.29</td><td>0.68</td><td>0.52</td><td>0.45</td></tr><tr><td></td><td>16.4</td><td>16.9</td><td>17.9</td><td>15.4</td><td>13.3</td><td>13.4</td><td>17.3</td><td>16.1</td><td>15.8</td></tr><tr><td></td><td>0.48</td><td>0.55</td><td>0.40</td><td>0.52</td><td>0.52</td><td>0.55</td><td>0.29</td><td>0.37</td><td>0.45</td></tr><tr><td>SparseNeRF [81]</td><td>0.52</td><td>0.41</td><td>0.61</td><td>0.51</td><td>0.244</td><td>0.24</td><td>0.82</td><td>0.62</td><td>0.52</td></tr><tr><td></td><td>18.2</td><td>15.4</td><td>21.7</td><td>17.4</td><td>13.4</td><td>13.3</td><td>22.8</td><td>18.6</td><td>18.0</td></tr><tr><td></td><td>0.46</td><td>0.45</td><td>0.35</td><td>0.42</td><td>0.33</td><td>0.41</td><td>0.38</td><td>0.45</td><td>0.41</td></tr><tr><td>FSGS [102]</td><td>0.40</td><td>0.38</td><td>0.47</td><td>0.42</td><td>0.34</td><td>0.24</td><td>0.72</td><td>0.46</td><td>0.45</td></tr><tr><td></td><td>15.0</td><td>14.8</td><td>16.9</td><td>16.2</td><td>14.2</td><td>12.6</td><td>17.6</td><td>13.8</td><td>15.3</td></tr><tr><td>FrugalNeRF (Ours)</td><td>0.41</td><td>0.41</td><td>0.27</td><td>0.36</td><td>0.32</td><td>0.42</td><td>0.34</td><td>0.32</td><td>0.35</td></tr><tr><td></td><td>0.47</td><td>0.50</td><td>0.54</td><td>0.55</td><td>0.41</td><td>0.33</td><td>0.75</td><td>0.61</td><td>0.54</td></tr><tr><td></td><td>17.4</td><td>17.5</td><td>20.3</td><td>18.5</td><td>15.5</td><td>15.0</td><td>19.2</td><td>18.6</td><td>18.1</td></tr><tr><td>FrugalNeRF w/ mono. depth (Ours)</td><td>0.40</td><td>0.40</td><td>0.27</td><td>0.37</td><td>0.33</td><td>0.39</td><td>0.32</td><td>0.35</td><td>0.35</td></tr><tr><td></td><td>0.46</td><td>0.53</td><td>0.54</td><td>0.54</td><td>0.41</td><td>0.37</td><td>0.76</td><td>0.59</td><td>0.54</td></tr><tr><td></td><td>17.7</td><td>17.9</td><td>20.9</td><td>18.5</td><td>15.4</td><td>15.6</td><td>19.6</td><td>18.2</td><td>18.3</td></tr></table>{{< /table-caption >}}
> 🔼 Table 1 presents a quantitative comparison of FrugalNeRF against state-of-the-art methods on the LLFF dataset, showcasing its competitive performance and faster training time across different numbers of input views.
> <details>
> <summary>read the caption</summary>
> Table 1. Quantitative results on the LLFF [49] dataset. FrugalNeRF performs competitively with baseline methods in extreme few-shot settings, offering shorter training time without relying on externally learned priors. Integrating monocular depth regularization further improves quality while maintaining fast convergence. Results differ from SimpleNeRF's paper but match its supplementary document, as we evaluate full images without visibility masks.
> </details>

{{< table-caption >}}
<table id='3' style='font-size:14px'><tr><td rowspan="2">Method</td><td rowspan="2">Venue</td><td rowspan="2">Learned priors</td><td colspan="3">2-view</td><td colspan="3">3-view</td><td colspan="3">4-view</td><td rowspan="2">Training time ↓</td></tr><tr><td>PSNR ↑</td><td>SSIM ↑</td><td>LPIPS ↓</td><td>PSNR ↑</td><td>SSIM ↑</td><td>LPIPS ↓</td><td>PSNR ↑</td><td>SSIM ↑</td><td>LPIPS ↓</td></tr><tr><td>RegNeRF [53]</td><td>CVPR 2022</td><td>normalizing flow</td><td>16.87</td><td>0.59</td><td>0.45</td><td>17.73</td><td>0.61</td><td>0.44</td><td>18.25</td><td>0.62</td><td>0.44</td><td>2.35 hrs</td></tr><tr><td>DS-NeRF [21]</td><td>CVPR 2022</td><td>-</td><td>25.44</td><td>0.79</td><td>0.32</td><td>25.94</td><td>0.79</td><td>0.32</td><td>26.28</td><td>0.79</td><td>0.33</td><td>3.5 hrs</td></tr><tr><td>DDP-NeRF [61]</td><td>CVPR 2022</td><td>depth completion</td><td>26.15</td><td>0.85</td><td>0.15</td><td>25.92</td><td>0.85</td><td>0.16</td><td>26.48</td><td>0.86</td><td>0.16</td><td>3.5 hrs</td></tr><tr><td>FreeNeRF [91]</td><td>CVPR 2023</td><td>-</td><td>14.50</td><td>0.54</td><td>0.55</td><td>15.12</td><td>0.57</td><td>0.54</td><td>16.25</td><td>0.60</td><td>0.54</td><td>1.5 hrs</td></tr><tr><td>ViP-NeRF [70]</td><td>SIGGRAPH 2023</td><td>-</td><td>29.55</td><td>0.87</td><td>0.09</td><td>29.75</td><td>0.88</td><td>0.11</td><td>30.47</td><td>0.88</td><td>0.11</td><td>13.5 hrs</td></tr><tr><td>SimpleNeRF [71]</td><td>SIGGRAPH Asia 2023</td><td>-</td><td>30.30</td><td>0.88</td><td>0.07</td><td>31.40</td><td>0.89</td><td>0.08</td><td>31.73</td><td>0.89</td><td>0.09</td><td>9.5 hrs</td></tr><tr><td>FrugalNeRF (Ours)</td><td>-</td><td>-</td><td>30.12</td><td>0.87</td><td>0.07</td><td>31.04</td><td>0.89</td><td>0.06</td><td>31.78</td><td>0.90</td><td>0.06</td><td>20 mins</td></tr></table>{{< /table-caption >}}
> 🔼 Table 1 quantitatively compares FrugalNeRF against other state-of-the-art methods on the LLFF dataset for various view settings (2, 3, and 4 views), evaluating PSNR, SSIM, LPIPS, and training time.
> <details>
> <summary>read the caption</summary>
> Table 1. Quantitative results on the LLFF [49] dataset. FrugalNeRF performs competitively with baseline methods in extreme few-shot settings, offering shorter training time without relying on externally learned priors. Integrating monocular depth regularization further improves quality while maintaining fast convergence. Results differ from SimpleNeRF's paper but match its supplementary document, as we evaluate full images without visibility masks.
> </details>

{{< table-caption >}}
<table id='1' style='font-size:14px'><tr><td>Scene</td><td rowspan="2">0</td><td rowspan="2">1</td><td rowspan="2">3</td><td rowspan="2">4</td><td rowspan="2">6</td><td rowspan="2">Average</td></tr><tr><td>Method</td></tr><tr><td rowspan="3">RegNeRF [53]</td><td>0.35</td><td>0.32</td><td>0.49</td><td>0.54</td><td>0.54</td><td>0.45</td></tr><tr><td>0.60</td><td>0.83</td><td>0.30</td><td>0.61</td><td>0.59</td><td>0.59</td></tr><tr><td>16.51</td><td>21.04</td><td>13.88</td><td>17.13</td><td>15.79</td><td>16.87</td></tr><tr><td rowspan="3">DS-NeRF [21]</td><td>0.26</td><td>0.27</td><td>0.51</td><td>0.24</td><td>0.31</td><td>0.32</td></tr><tr><td>0.81</td><td>0.91</td><td>0.50</td><td>0.88</td><td>0.83</td><td>0.79</td></tr><tr><td>24.68</td><td>27.93</td><td>19.24</td><td>29.18</td><td>26.18</td><td>25.44</td></tr><tr><td rowspan="3">DDP-NeRF [61]</td><td>0.11</td><td>0.12</td><td>0.34</td><td>0.06</td><td>0.11</td><td>0.15</td></tr><tr><td>0.89</td><td>0.95</td><td>0.56</td><td>0.94</td><td>0.92</td><td>0.85</td></tr><tr><td>25.90</td><td>25.87</td><td>18.97</td><td>32.01</td><td>28.00</td><td>26.15</td></tr><tr><td rowspan="3">FreeNeRF [91]</td><td>0.45</td><td>0.50</td><td>0.64</td><td>0.67</td><td>0.48</td><td>0.55</td></tr><tr><td>0.54</td><td>0.77</td><td>0.28</td><td>0.49</td><td>0.58</td><td>0.53</td></tr><tr><td>15.00</td><td>17.00</td><td>12.15</td><td>12.84</td><td>15.50</td><td>14.50</td></tr><tr><td rowspan="3">ViP-NeRF [70]</td><td>0.05</td><td>0.05</td><td>0.22</td><td>0.04</td><td>0.08</td><td>0.09</td></tr><tr><td>0.94</td><td>0.97</td><td>0.56</td><td>0.95</td><td>0.93</td><td>0.87</td></tr><tr><td>30.41</td><td>32.03</td><td>18.96</td><td>34.74</td><td>31.61</td><td>29.55</td></tr><tr><td rowspan="3">SimpleNeRF [71]</td><td>0.04</td><td>0.04</td><td>0.21</td><td>0.03</td><td>0.05</td><td>0.07</td></tr><tr><td>0.95</td><td>0.97</td><td>0.56</td><td>0.95</td><td>0.96</td><td>0.88</td></tr><tr><td>31.89</td><td>33.8</td><td>18.65</td><td>34.93</td><td>32.24</td><td>30.30</td></tr><tr><td rowspan="3">FrugalNeRF (Ours)</td><td>0.04</td><td>0.04</td><td>0.20</td><td>0.04</td><td>0.05</td><td>0.07</td></tr><tr><td>0.94</td><td>0.97</td><td>0.56</td><td>0.95</td><td>0.95</td><td>0.87</td></tr><tr><td>30.13</td><td>34.69</td><td>18.35</td><td>35.00</td><td>32.45</td><td>30.12</td></tr></table>{{< /table-caption >}}
> 🔼 Table 13 presents a quantitative comparison of FrugalNeRF against other state-of-the-art methods on the RealEstate-10K dataset using two input views, evaluating performance based on LPIPS, SSIM, and PSNR scores.
> <details>
> <summary>read the caption</summary>
> Table 13. Quantitative results on the RealEstate-10K [100] dataset with two input views. The three rows show LPIPS, SSIM, and PSNR scores, respectively.
> </details>

{{< table-caption >}}
<table id='1' style='font-size:14px'><tr><td>Scene</td><td>0</td><td>1</td><td>3</td><td>4</td><td>6</td><td>Average</td></tr><tr><td>Method</td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td rowspan="3">RegNeRF [53]</td><td>0.43</td><td>0.35</td><td>0.59</td><td>0.56</td><td>0.27</td><td>0.44</td></tr><tr><td>0.59</td><td>0.83</td><td>0.29</td><td>0.65</td><td>0.75</td><td>0.62</td></tr><tr><td>16.09</td><td>20.98</td><td>13.91</td><td>18.48</td><td>21.78</td><td>18.25</td></tr><tr><td rowspan="3">DS-NeRF [21]</td><td>0.27</td><td>0.26</td><td>0.56</td><td>0.25</td><td>0.31</td><td>0.33</td></tr><tr><td>0.82</td><td>0.92</td><td>0.50</td><td>0.87</td><td>0.85</td><td>0.79</td></tr><tr><td>25.40</td><td>29.40</td><td>19.64</td><td>29.26</td><td>27.69</td><td>26.28</td></tr><tr><td rowspan="3">DDP-NeRF [61]</td><td>0.12</td><td>0.08</td><td>0.39</td><td>0.06</td><td>0.13</td><td>0.16</td></tr><tr><td>0.89</td><td>0.96</td><td>0.58</td><td>0.93</td><td>0.91</td><td>0.86</td></tr><tr><td>25.14</td><td>28.57</td><td>19.57</td><td>31.73</td><td>27.36</td><td>26.48</td></tr><tr><td rowspan="3">FreeNeRF [91]</td><td>0.56</td><td>0.48</td><td>0.65</td><td>0.58</td><td>0.39</td><td>0.53</td></tr><tr><td>0.53</td><td>0.80</td><td>0.31</td><td>0.66</td><td>0.69</td><td>0.60</td></tr><tr><td>13.84</td><td>17.93</td><td>12.69</td><td>17.29</td><td>19.48</td><td>16.25</td></tr><tr><td rowspan="3">ViP-NeRF [70]</td><td>0.06</td><td>0.08</td><td>0.27</td><td>0.05</td><td>0.09</td><td>0.11</td></tr><tr><td>0.94</td><td>0.96</td><td>0.62</td><td>0.94</td><td>0.95</td><td>0.88</td></tr><tr><td>31.64</td><td>32.24</td><td>20.35</td><td>34.84</td><td>33.28</td><td>30.47</td></tr><tr><td rowspan="3">SimpleNeRF [71]</td><td>0.04</td><td>0.05</td><td>0.24</td><td>0.03</td><td>0.09</td><td>0.09</td></tr><tr><td>0.96</td><td>0.97</td><td>0.64</td><td>0.95</td><td>0.94</td><td>0.89</td></tr><tr><td>32.95</td><td>36.44</td><td>20.52</td><td>35.97</td><td>32.77</td><td>31.73</td></tr><tr><td rowspan="3">FrugalNeRF (Ours)</td><td>0.04</td><td>0.03</td><td>0.17</td><td>0.03</td><td>0.05</td><td>0.06</td></tr><tr><td>0.96</td><td>0.98</td><td>0.64</td><td>0.95</td><td>0.96</td><td>0.90</td></tr><tr><td>32.29</td><td>36.06</td><td>19.81</td><td>36.54</td><td>34.22</td><td>31.78</td></tr></table>{{< /table-caption >}}
> 🔼 Table 15 presents a quantitative comparison of FrugalNeRF and other state-of-the-art methods on the RealEstate-10K dataset using four input views, evaluating performance using LPIPS, SSIM, and PSNR.
> <details>
> <summary>read the caption</summary>
> Table 15. Quantitative results on the RealEstate-10K [100] dataset with four input views. The three rows show LPIPS, SSIM, and PSNR scores, respectively.
> </details>

</details>


### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2410.16271/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.16271/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.16271/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.16271/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.16271/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.16271/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.16271/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.16271/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.16271/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.16271/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.16271/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.16271/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.16271/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.16271/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.16271/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.16271/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.16271/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.16271/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.16271/19.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.16271/20.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.16271/21.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.16271/22.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.16271/23.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.16271/24.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.16271/25.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.16271/26.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.16271/27.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}