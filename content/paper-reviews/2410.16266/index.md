---
title: "3DGS-Enhancer: Enhancing Unbounded 3D Gaussian Splatting with View-consistent 2D Diffusion Priors"
summary: "3DGS-Enhancer boosts 3D scene rendering from sparse views by cleverly using video diffusion priors to improve view consistency, resulting in superior quality and performance."
categories: ["AI Generated"]
tags: ["🔖 24-10-21", "🤗 24-10-23"]
showSummary: true
date: 2024-10-21
draft: false
---

### TL;DR


{{< lead >}}

The paper introduces 3DGS-Enhancer, a novel method to improve the quality of 3D Gaussian splatting (3DGS), a technique for generating realistic 3D images.  The core issue addressed is the poor quality of images created from limited input views.  3DGS-Enhancer tackles this by using video diffusion models.  Essentially, it transforms the problem of achieving 3D consistency (ensuring consistency across multiple views) into the easier problem of temporal consistency (consistency across video frames). This is done using a video diffusion model to improve the generated views. These improved views are then used to further refine the initial 3DGS model. Experiments showed significant performance gains compared to existing methods, generating higher-quality and more visually appealing results, especially in scenarios with limited input data.

{{< /lead >}}


{{< button href="https://arxiv.org/abs/2410.16266" target="_self" >}}
{{< icon "link" >}} &nbsp; read the paper on arXiv
{{< /button >}}
<br><br>
{{< button href="https://huggingface.co/papers/2410.16266" target="_self" >}}
{{< icon "hf-logo" >}} &nbsp; on Hugging Face
{{< /button >}}

#### Why does it matter?
This paper is important because it addresses the limitations of existing 3D Gaussian splatting techniques for novel view synthesis, particularly in scenarios with sparse input views.  The proposed 3DGS-Enhancer offers a significant improvement in rendering quality, opening avenues for enhancing various applications such as virtual reality and augmented reality experiences. The introduction of video diffusion priors and temporal consistency approaches is a novel contribution to the field, paving the way for more robust and high-fidelity 3D content generation.
#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} 3DGS-Enhancer significantly improves the quality of 3D Gaussian splatting representations, especially when dealing with limited input views. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} The method leverages 2D video diffusion priors and a novel spatio-temporal decoder to address the 3D view consistency problem. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Extensive experiments demonstrate that 3DGS-Enhancer outperforms state-of-the-art methods in terms of reconstruction performance and visual fidelity. {{< /typeit >}}
{{< /alert >}}

------
#### Visual Insights



![](figures/figures_1_0.png)

> 🔼 The figure shows a comparison of 3D Gaussian splatting (3DGS) results with and without using the proposed 3DGS-Enhancer method on unbounded scenes with sparse input views, demonstrating the improvement in visual quality.
> <details>
> <summary>read the caption</summary>
> Figure 1: The 3DGS-Enhancer improves 3D Gaussian splatting representations on unbounded scenes with sparse input views.
> </details>







{{< table-caption >}}
<br><table id='1' style='font-size:14px'><tr><td></td><td colspan="3">3 views</td><td colspan="3">6 views</td><td colspan="3">9 views</td></tr><tr><td>Method</td><td>PSNR↑</td><td>SSIM↑</td><td>LPIPS↓</td><td>PSNR↑</td><td>SSIM↑</td><td>LPIPS↓</td><td>PSNR↑</td><td>SSIM↑</td><td>LPIPS↓</td></tr><tr><td colspan="10">DL3DV (130 training scenes, 20 test scenes)</td></tr><tr><td>Mip-NeRF [1]</td><td>10.92</td><td>0.191</td><td>0.618</td><td>11.56</td><td>0.199</td><td>0.608</td><td>12.42</td><td>0.218</td><td>0.600</td></tr><tr><td>RegNeRF [27]</td><td>11.46</td><td>0.214</td><td>0.600</td><td>12.69</td><td>0.236</td><td>0.579</td><td>12.33</td><td>0.219</td><td>0.598</td></tr><tr><td>FreeNeRF [43]</td><td>10.91</td><td>0.211</td><td>0.595</td><td>12.13</td><td>0.230</td><td>0.576</td><td>12.85</td><td>0.241</td><td>0.573</td></tr><tr><td>3DGS [18]</td><td>10.97</td><td>0.248</td><td>0.567</td><td>13.34</td><td>0.332</td><td>0.498</td><td>14.99</td><td>0.403</td><td>0.446</td></tr><tr><td>DNGaussian [19]</td><td>11.10</td><td>0.273</td><td>0.579</td><td>12.67</td><td>0.329</td><td>0.547</td><td>13.44</td><td>0.365</td><td>0.539</td></tr><tr><td>3DGS-Enhancer (ours)</td><td>14.33</td><td>0.424</td><td>0.464</td><td>16.94</td><td>0.565</td><td>0.356</td><td>18.50</td><td>0.630</td><td>0.305</td></tr></table>{{< /table-caption >}}

> 🔼 Table 1 quantitatively compares the performance of different few-shot 3D reconstruction methods across various view counts (3, 6, and 9 views) on three datasets (DL3DV, LLFF, and Mip-NeRF 360), using PSNR, SSIM, and LPIPS metrics.
> <details>
> <summary>read the caption</summary>
> Table 1: A quantitative comparison of few-shot 3D reconstruction. Experiments on DL3DV and LLFF follow the setting of [43]. Experiments on Mip-NeRF 360 follow the setting of [40].
> </details>



### More visual insights

<details>
<summary>More on figures
</summary>


![](figures/figures_4_0.png)

> 🔼 The figure illustrates the 3DGS-Enhancer framework, which uses 2D video diffusion priors to enhance novel views generated by a 3DGS model and then fine-tunes the model using these enhanced views.
> <details>
> <summary>read the caption</summary>
> Figure 2: An overview of the proposed 3DGS-Enhancer framework for 3DGS representation enhancement. We learn 2D video diffusion priors on a large-scale novel view synthesis dataset to enhance the novel views rendered from the 3DGS model on a novel scene. Then, the enhanced views and input views jointly fine-tune the 3DGS model.
> </details>



![](figures/figures_6_0.png)

> 🔼 Figure 4 shows a visual comparison of rendered images by different methods on scenes from the DL3DV test set with three input views.
> <details>
> <summary>read the caption</summary>
> Figure 4: A visual comparison of rendered images on scenes from DL3DV [20] test set with the 3-view setting.
> </details>



![](figures/figures_9_0.png)

> 🔼 The figure shows a comparison of rendered images, a confidence map, and a ground truth image, highlighting areas of high and low confidence in the generated images.
> <details>
> <summary>read the caption</summary>
> Figure 3: The red circle indicates the area with high confidence, meaning the generated videos can contribute more information. Conversely, the green quadrilateral highlights the area with low confidence, suggesting that the generated video should not tend to optimize this area.
> </details>



![](figures/figures_9_1.png)

> 🔼 The figure shows a visual comparison of 3D Gaussian splatting results with and without the proposed 3DGS-Enhancer, demonstrating improved quality on unbounded scenes with sparse input views.
> <details>
> <summary>read the caption</summary>
> Figure 1: The 3DGS-Enhancer improves 3D Gaussian splatting representations on unbounded scenes with sparse input views.
> </details>



![](figures/figures_9_2.png)

> 🔼 The figure shows a comparison of rendered images, confidence maps, and ground truth images, highlighting areas of high and low confidence in the generated video frames.
> <details>
> <summary>read the caption</summary>
> Figure 3: The red circle indicates the area with high confidence, meaning the generated videos can contribute more information. Conversely, the green quadrilateral highlights the area with low confidence, suggesting that the generated video should not tend to optimize this area.
> </details>



![](figures/figures_9_3.png)

> 🔼 The figure shows a visualization of confidence maps highlighting areas where generated video data is reliable (high confidence) and unreliable (low confidence) for improving 3D Gaussian splatting.
> <details>
> <summary>read the caption</summary>
> Figure 3: The red circle indicates the area with high confidence, meaning the generated videos can contribute more information. Conversely, the green quadrilateral highlights the area with low confidence, suggesting that the generated video should not tend to optimize this area.
> </details>



![](figures/figures_9_4.png)

> 🔼 The figure shows a visual comparison of rendered images with their corresponding confidence maps, highlighting areas where generated video information is more or less reliable.
> <details>
> <summary>read the caption</summary>
> Figure 3: The red circle indicates the area with high confidence, meaning the generated videos can contribute more information. Conversely, the green quadrilateral highlights the area with low confidence, suggesting that the generated video should not tend to optimize this area.
> </details>



![](figures/figures_9_5.png)

> 🔼 The figure shows a visual comparison of novel view synthesis results generated by different methods on scenes from the DL3DV test set using three input views.
> <details>
> <summary>read the caption</summary>
> Figure 4: A visual comparison of rendered images on scenes from DL3DV [20] test set with the 3-view setting.
> </details>



![](figures/figures_10_0.png)

> 🔼 Figure 6 shows the ablation study of the video diffusion model components (diffusion and STD) in the 3DGS-Enhancer framework, comparing the input, diffusion, STD, and ground-truth images of a gazebo scene.
> <details>
> <summary>read the caption</summary>
> Figure 6: An ablation study of the video diffusion model components in our 3DGS-Enhancer framework.
> </details>



![](figures/figures_15_0.png)

> 🔼 This figure shows the camera trajectories fitted for different numbers of input views to generate smooth and reasonable camera poses for novel view synthesis.
> <details>
> <summary>read the caption</summary>
> Figure 7: The fitting trajectories under different number of input views.
> </details>



![](figures/figures_16_0.png)

> 🔼 Figure 4 shows a visual comparison of rendered images from different methods on scenes from the DL3DV test set using only three input views.
> <details>
> <summary>read the caption</summary>
> Figure 4: A visual comparison of rendered images on scenes from DL3DV [20] test set with the 3-view setting.
> </details>



![](figures/figures_16_1.png)

> 🔼 The figure shows a visual comparison of 3D Gaussian splatting results with and without using the proposed 3DGS-Enhancer on unbounded scenes with sparse input views, demonstrating improved visual quality.
> <details>
> <summary>read the caption</summary>
> Figure 1: The 3DGS-Enhancer improves 3D Gaussian splatting representations on unbounded scenes with sparse input views.
> </details>



![](figures/figures_16_2.png)

> 🔼 The figure shows a comparison of rendered images, a confidence map, and ground truth, highlighting areas of high and low confidence in the generated video.
> <details>
> <summary>read the caption</summary>
> Figure 3: The red circle indicates the area with high confidence, meaning the generated videos can contribute more information. Conversely, the green quadrilateral highlights the area with low confidence, suggesting that the generated video should not tend to optimize this area.
> </details>



![](figures/figures_16_3.png)

> 🔼 The figure shows a visual comparison of rendered images, their corresponding confidence maps, and ground truth images, highlighting areas of high and low confidence.
> <details>
> <summary>read the caption</summary>
> Figure 3: The red circle indicates the area with high confidence, meaning the generated videos can contribute more information. Conversely, the green quadrilateral highlights the area with low confidence, suggesting that the generated video should not tend to optimize this area.
> </details>



![](figures/figures_16_4.png)

> 🔼 This figure shows example pairs of low-quality and high-quality images from the 3DGS Enhancement dataset, illustrating the types of artifacts addressed by the proposed method.
> <details>
> <summary>read the caption</summary>
> Figure 8: The low and high quality image pairs created in our 3DGS Enhancement dataset.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<br><table id='15' style='font-size:14px'><tr><td rowspan="2">Method</td><td colspan="3">6 views</td><td colspan="3">9 views</td></tr><tr><td>PSNR ↑</td><td>SSIM ↑</td><td>LPIPS ↓</td><td>PSNR ↑</td><td>SSIM ↑</td><td>LPIPS ↓</td></tr><tr><td colspan="7">Mip-NeRF360 (all test scenes)</td></tr><tr><td>Mip-NeRF</td><td>13.08</td><td>0.159</td><td>0.637</td><td>13.73</td><td>0.189</td><td>0.628</td></tr><tr><td>RegNeRF</td><td>12.69</td><td>0.175</td><td>0.660</td><td>13.73</td><td>0.193</td><td>0.629</td></tr><tr><td>FreeNeRF</td><td>12.56</td><td>0.182</td><td>0.646</td><td>13.20</td><td>0.198</td><td>0.635</td></tr><tr><td>3DGS</td><td>11.53</td><td>0.144</td><td>0.651</td><td>12.65</td><td>0.187</td><td>0.607</td></tr><tr><td>DNGaussian</td><td>11.81</td><td>0.208</td><td>0.689</td><td>12.51</td><td>0.228</td><td>0.683</td></tr><tr><td>3DGS-Enhancer (ours)</td><td>13.96</td><td>0.260</td><td>0.570</td><td>16.22</td><td>0.399</td><td>0.454</td></tr></table>{{< /table-caption >}}
> 🔼 {{ table.description }}
> <details>
> <summary>read the caption</summary>
> {{ table.caption }}
> </details>


> Table 2 quantitatively compares different methods' performance on the unseen Mip-NeRF360 dataset using PSNR, SSIM, and LPIPS metrics.


{{< table-caption >}}
<br><table id='1' style='font-size:14px'><tr><td>Video diffusion</td><td>Real image</td><td>Image confidence</td><td>Pixel confidence</td><td>PSNR↑</td><td>SSIM↑</td><td>LPIPS↓</td></tr><tr><td></td><td></td><td>-</td><td>-</td><td>14.33</td><td>0.476</td><td>0.422</td></tr><tr><td></td><td></td><td>-</td><td>-</td><td>17.01</td><td>0.553</td><td>0.361</td></tr><tr><td></td><td></td><td></td><td></td><td>17.29</td><td>0.570</td><td>0.354</td></tr><tr><td></td><td></td><td></td><td></td><td>17.16 17.34</td><td>0.564 0.574</td><td>0.351 0.351</td></tr></table>{{< /table-caption >}}
> 🔼 {{ table.description }}
> <details>
> <summary>read the caption</summary>
> {{ table.caption }}
> </details>


> Table 1 quantitatively compares the performance of different few-shot 3D reconstruction methods on three datasets with varying numbers of input views, using PSNR, SSIM, and LPIPS metrics.


{{< table-caption >}}
<br><table id='3' style='font-size:14px'><tr><td>Video diffusion</td><td>STD (temporal layers)</td><td>color correction</td><td>PSNR ↑</td><td>SSIM ↑</td><td>LPIPS ↓</td></tr><tr><td></td><td></td><td>-</td><td>18.11</td><td>0.591</td><td>0.312</td></tr><tr><td></td><td></td><td>-</td><td>18.44</td><td>0.625</td><td>0.306</td></tr><tr><td></td><td></td><td></td><td>18.50</td><td>0.630</td><td>0.305</td></tr></table>{{< /table-caption >}}
> 🔼 {{ table.description }}
> <details>
> <summary>read the caption</summary>
> {{ table.caption }}
> </details>


> Table 1 quantitatively compares the performance of various few-shot 3D reconstruction methods on the DL3DV and Mip-NeRF 360 datasets, evaluating metrics such as PSNR, SSIM, and LPIPS.


{{< table-caption >}}
<br><table id='11' style='font-size:20px'><tr><td>Method</td><td>Per-scene training time ↓</td><td>Rendering FPS ↑</td></tr><tr><td>Mip-NeRF</td><td>10.7h</td><td>0.09</td></tr><tr><td>RegNeRF</td><td>2.5h</td><td>0.09</td></tr><tr><td>FreeNeRF</td><td>3.8h</td><td>0.09</td></tr><tr><td>3DGS</td><td>10.5min</td><td>100</td></tr><tr><td>DNGaussian</td><td>3.3min</td><td>100</td></tr><tr><td>3DGS-Enhancer (ours)</td><td>24.5min</td><td>100</td></tr></table>{{< /table-caption >}}
> 🔼 {{ table.description }}
> <details>
> <summary>read the caption</summary>
> {{ table.caption }}
> </details>


> Table 1 quantitatively compares the performance of several few-shot 3D reconstruction methods across different view counts (3, 6, and 9) using PSNR, SSIM, and LPIPS metrics on three datasets (DL3DV, LLFF, and Mip-NeRF 360).


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
{{< /gallery >}}