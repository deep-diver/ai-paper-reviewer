---
title: "Framer: Interactive Frame Interpolation"
summary: "Framer is a novel interactive frame interpolation method that lets users customize transitions between two images by manipulating keypoints. It uses a pre-trained video diffusion model and provides bo....."
categories: ["AI Generated"]
tags: ["2024-10-24"]
showSummary: true
date: 2024-10-24
draft: false
---

### TL;DR


{{< lead >}}

Framer is a novel interactive frame interpolation method that lets users customize transitions between two images by manipulating keypoints. It uses a pre-trained video diffusion model and provides both interactive and automated modes, demonstrating improved results in image morphing, video generation, and other applications.

{{< /lead >}}


{{< button href="https://arxiv.org/abs/2410.18978" target="_self" >}}
{{< icon "link" >}} &nbsp; read the paper on arXiv
{{< /button >}}

#### Why does this paper matter?
This paper introduces Framer, an interactive frame interpolation method that allows users to customize the transition between two images by manipulating keypoints.  It leverages a pre-trained video diffusion model and offers both interactive and automated modes.  The results demonstrate improved quality and control over the interpolation process, showcasing applications in various fields.
#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Framer offers interactive control over frame interpolation by allowing users to adjust keypoint trajectories. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} Framer includes an "autopilot" mode that automatically estimates and refines keypoint trajectories. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Framer demonstrates high-quality results across various applications, outperforming existing methods in subjective user studies. {{< /typeit >}}
{{< /alert >}}

------
#### Visual Insights

![](figures/figures_1_0.png "🔼 Figure 1: Showcases produced by our Framer. It facilitates fine-grained customization of local motions and generates varying interpolation results given the same input start and end frame pair (first 3 rows). Moreover, Framer handles challenging cases and can realize smooth image morphing (last 2 rows). The input trajectories are overlayed on the frames.")

{{< table-caption caption="🔽 Quantitative comparison with existing video interpolation methods on reconstruction and generative metrics, evaluated on all 7 generated frames." >}}
|  | DAVIS-7 | DAVIS-7 | DAVIS-7 | DAVIS-7 | UCF101-7 | UCF101-7 | UCF101-7 | UCF101-7 | UCF101-7 | UCF101-7 |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
|  | PSNR↑ | SSIM↑ | LPIPS↓ | FID↓ | FVD↓ | PSNR↑ | SSIM↑ | LPIPS↓ | FID↓ | FVD↓ |
| AMT (Li et al., 2023) | 21.66 | 0.7229 | 0.2860 | 39.17 | 245.25 | 26.64 | 0.9000 | 0.1878 | 37.80 | 270.98 |
| RIFE (Huang et al., 2020) | 22.00 | 0.7216 | 0.2663 | 39.16 | 319.79 | 27.04 | 0.9020 | 0.1575 | 27.96 | 300.40 |
| FLAVR Kalluri et al. (2023) | 20.94 | 0.6880 | 0.3305 | 52.23 | 296.37 | 26.50 | 0.8982 | 0.1836 | 37.79 | 279.58 |
| FILM (Reda et al., 2022) | 21.67 | 0.7121 | 0.2191 | 17.20 | 162.86 | 26.74 | 0.8983 | 0.1378 | 16.22 | 239.48 |
| LDMVFI (Danier et al., 2024) | 21.11 | 0.6900 | 0.2535 | 21.96 | 269.72 | 26.68 | 0.8955 | 0.1446 | 17.55 | 270.33 |
| DynamicCrafter (Xing et al., 2023) | 15.48 | 0.4668 | 0.4628 | 35.95 | 468.78 | 17.62 | 0.7082 | 0.3361 | 61.71 | 646.91 |
| SVDKFI (Wang et al., 2024a) | 16.71 | 0.5274 | 0.3440 | 26.59 | 382.19 | 21.04 | 0.7991 | 0.2146 | 44.81 | 301.33 |
| Framer (Ours) | 21.23 | 0.7218 | 0.2525 | 27.13 | 115.65 | 25.04 | 0.8806 | 0.1714 | 31.69 | 181.55 |
| Framer with Co-Tracker (Ours) | 22.75 | 0.7931 | 0.2199 | 27.43 | 102.31 | 27.08 | 0.9024 | 0.1714 | 32.37 | 159.87 |
{{< /table-caption >}}

------



<details>
<summary>More on figures
</summary>


![](figures/figures_4_0.png "🔼 Figure 2: Framer supports (a) a user-interactive mode for customized point trajectories and (b) an 'autopilot' mode for video frame interpolation without trajectory inputs. During training, (d) we fine-tune the 3D-UNet of a pre-trained video diffusion model for video frame interpolation. Afterward, (c) we introduce point trajectory control by freezing the 3D-UNet and fine-tuning the controlling branch.")

![](figures/figures_5_0.png "🔼 Figure 3: Point trajectory estimation. The point trajectory is initialized by interpolating the coordinates of matched keypoints. In each de-noising step, we perform point tracking by finding the nearest neighbor of keypoints in the start and end frames, respectively. Lastly, We check the bi-directional tracking consistency before updating the point coordinate.")

![](figures/figures_6_0.png "🔼 Figure 4: Qualitative comparison. 'GT’ strands for ground truth. For each method, we only present the middle frame of 7 interpolated frames. The full results can be seen in Fig. S4 and Fig. S5 in the Appendix.")

![](figures/figures_6_1.png "🔼 Figure 5: Reults on human preference.")

![](figures/figures_7_0.png "🔼 Figure 6: Results on user interaction. The first row is generated without drag input, while the other two are generated with different drag controls. Customized trajectories are overlaid on frames.")

![](figures/figures_7_1.png "🔼 Figure 1: Showcases produced by our Framer. It facilitates fine-grained customization of local motions and generates varying interpolation results given the same input start and end frame pair (first 3 rows). Moreover, Framer handles challenging cases and can realize smooth image morphing (last 2 rows). The input trajectories are overlayed on the frames.")

![](figures/figures_8_0.png "🔼 Figure 1: Showcases produced by our Framer. It facilitates fine-grained customization of local motions and generates varying interpolation results given the same input start and end frame pair (first 3 rows). Moreover, Framer handles challenging cases and can realize smooth image morphing (last 2 rows). The input trajectories are overlayed on the frames.")

![](figures/figures_8_1.png "🔼 Figure 1: Showcases produced by our Framer. It facilitates fine-grained customization of local motions and generates varying interpolation results given the same input start and end frame pair (first 3 rows). Moreover, Framer handles challenging cases and can realize smooth image morphing (last 2 rows). The input trajectories are overlayed on the frames.")

![](figures/figures_9_0.png "🔼 Figure 1: Showcases produced by our Framer. It facilitates fine-grained customization of local motions and generates varying interpolation results given the same input start and end frame pair (first 3 rows). Moreover, Framer handles challenging cases and can realize smooth image morphing (last 2 rows). The input trajectories are overlayed on the frames.")

![](figures/figures_9_1.png "🔼 Figure 12: Ablations on each component. 'w/o trajectory' denotes inference without guidance from point trajectory, 'w/o traj. update' indicates inference without trajectory updates, and 'w/o bi' suggests trajectory updating without bi-directional consistency verification.")

![](figures/figures_17_0.png "🔼 Figure 4: Qualitative comparison. 'GT’ strands for ground truth. For each method, we only present the middle frame of 7 interpolated frames. The full results can be seen in Fig. S4 and Fig. S5 in the Appendix.")

![](figures/figures_18_0.png "🔼 Figure 4: Qualitative comparison. 'GT’ strands for ground truth. For each method, we only present the middle frame of 7 interpolated frames. The full results can be seen in Fig. S4 and Fig. S5 in the Appendix.")

![](figures/figures_19_0.png "🔼 Figure 4: Qualitative comparison. 'GT’ strands for ground truth. For each method, we only present the middle frame of 7 interpolated frames. The full results can be seen in Fig. S4 and Fig. S5 in the Appendix.")

![](figures/figures_20_0.png "🔼 Figure 4: Qualitative comparison. 'GT’ strands for ground truth. For each method, we only present the middle frame of 7 interpolated frames. The full results can be seen in Fig. S4 and Fig. S5 in the Appendix.")

![](figures/figures_21_0.png "🔼 Figure 1: Showcases produced by our Framer. It facilitates fine-grained customization of local motions and generates varying interpolation results given the same input start and end frame pair (first 3 rows). Moreover, Framer handles challenging cases and can realize smooth image morphing (last 2 rows). The input trajectories are overlayed on the frames.")

![](figures/figures_21_1.png "🔼 Figure S10: More results on (a) cartoon and (b) sketch interpolation.")

![](figures/figures_22_0.png "🔼 Figure 1: Showcases produced by our Framer. It facilitates fine-grained customization of local motions and generates varying interpolation results given the same input start and end frame pair (first 3 rows). Moreover, Framer handles challenging cases and can realize smooth image morphing (last 2 rows). The input trajectories are overlayed on the frames.")

![](figures/figures_22_1.png "🔼 Figure 1: Showcases produced by our Framer. It facilitates fine-grained customization of local motions and generates varying interpolation results given the same input start and end frame pair (first 3 rows). Moreover, Framer handles challenging cases and can realize smooth image morphing (last 2 rows). The input trajectories are overlayed on the frames.")

![](figures/figures_22_2.png "🔼 Figure 1: Showcases produced by our Framer. It facilitates fine-grained customization of local motions and generates varying interpolation results given the same input start and end frame pair (first 3 rows). Moreover, Framer handles challenging cases and can realize smooth image morphing (last 2 rows). The input trajectories are overlayed on the frames.")


</details>

------







------

<details>
<summary>More on tables
</summary>


{{< table-caption caption="🔽 Quantitative comparison with existing video interpolation methods on reconstruction and generative metrics, evaluated on all 7 generated frames." >}}
{{< /table-caption >}}

{{< table-caption caption="🔽 Table 1: Quantitative comparison with existing video interpolation methods on reconstruction and generative metrics, evaluated on all 7 generated frames." >}}
{{< /table-caption >}}

{{< table-caption caption="🔽 Table 1: Quantitative comparison with existing video interpolation methods on reconstruction and generative metrics, evaluated on all 7 generated frames." >}}
{{< /table-caption >}}

{{< table-caption caption="🔽 Quantitative comparison with existing video interpolation methods on reconstruction and generative metrics, evaluated on all 7 generated frames." >}}
{{< /table-caption >}}


</details>

------

