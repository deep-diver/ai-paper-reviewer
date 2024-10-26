---
title: "DynamicCity: Large-Scale LiDAR Generation from Dynamic Scenes"
summary: "DynamicCity is a new framework for generating large-scale, high-quality 4D LiDAR scenes from dynamic scenes. It uses a VAE to learn a compact 4D representation (HexPlane) and a DiT-based diffusion mod....."
categories: ["AI Generated"]
tags: ["🔖 2024-10-23", "🤗 2024-10-24"]
showSummary: true
date: 2024-10-23
draft: false
---

### TL;DR


{{< lead >}}

DynamicCity is a new framework for generating large-scale, high-quality 4D LiDAR scenes from dynamic scenes. It uses a VAE to learn a compact 4D representation (HexPlane) and a DiT-based diffusion model to generate the HexPlane, supporting various conditional generation applications.  It outperforms existing methods in generation quality, training speed, and memory usage.

{{< /lead >}}


{{< button href="https://arxiv.org/abs/2410.18084" target="_self" >}}
{{< icon "link" >}} &nbsp; read the paper on arXiv
{{< /button >}}

#### Why does this paper matter?
DynamicCity is a novel 4D LiDAR generation framework that addresses the limitations of existing methods by generating large-scale, high-quality LiDAR scenes capturing dynamic environments. It uses a VAE for efficient 4D representation and a DiT for scene generation, incorporating various conditions for versatile applications.
#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} DynamicCity generates large-scale, high-quality 4D LiDAR scenes capturing dynamic environments. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} It uses a novel VAE model with a Projection Module and Expansion & Squeeze Strategy for efficient 4D representation and a DiT-based diffusion model for HexPlane generation. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} DynamicCity supports various downstream applications, including trajectory- and command-driven generation, inpainting, and layout-conditioned generation. {{< /typeit >}}
{{< /alert >}}

------
#### Visual Insights



![](figures/figures_1_0.png "🔼 Figure 1: Dynamic LiDAR scene generation from DynamicCity. We introduce a new LiDAR generation model that generates diverse 4D scenes of large spatial scales (80 × 80 × 6.4 meter³) and long sequential modeling (up to 128 frames), enabling a diverse set of downstream applications. For more examples, kindly refer to our Project Page: https://dynamic-city.github.io.")





{{< table-caption caption="🔽 Comparisons of 4D Scene Reconstruction. We report the mIoU scores of OccSora (Wang et al., 2024) and our DynamicCity framework on the CarlaSC, Occ3D-Waymo, and Occ3D-nuScenes datasets, respectively, under different resolutions and sequence lengths. Symbol † denotes score reported in the OccSora paper. Other scores are reproduced using the official code." >}}
| Dataset | #Classes | Resolution | #Frames | OccSora (Wang et al., 2024) | Ours (DynamicCity) |
| --- | --- | --- | --- | --- | --- |
| CarlaSC (Wilson et al., 2022) | 10 | 128x 128 x8 | 4 | 41.01% | 79.61% (+38.6%) |
| CarlaSC (Wilson et al., 2022) | 10 | 128x 128 x8 | 8 | 39.91% | 76.18% (+36.3%) |
| CarlaSC (Wilson et al., 2022) | 10 | 128x 128 x8 | 16 | 33.40% | 74.22% (+40.8%) |
| CarlaSC (Wilson et al., 2022) | 10 | 128x 128 x8 | 32 | 28.91% | 59.31% (+30.4%) |
| Occ3D-Waymo (Tian et al., 2023) | 9 | 200x200x16 | 16 | 36.38% | 68.18% (+31.8%) |
| Occ3D-nuScenes (Tian et al., 2023) | 11 | 200x200x 16 | 16 | 13.70% | 56.93% (+43.2%) |
| Occ3D-nuScenes (Tian et al., 2023) | 11 | 200x200 x 16 | 32 | 13.51% | 42.60% (+29.1%) |
| Occ3D-nuScenes (Tian et al., 2023) | 17 | 200x200x 16 | 32 | 13.41% | 40.79% (+27.3%) |
| Occ3D-nuScenes (Tian et al., 2023) | 17 | 200x200x 16 | 32 | 27.40%† | 40.79% (+13.4%) |
{{< /table-caption >}}





<details>
<summary>More on figures
</summary>


![](figures/figures_4_0.png "🔼 Pipeline of dynamic LiDAR scene generation. Our DynamicCity framework consists of two key procedures: (a) Encoding HexPlane with an VAE architecture (cf. Sec. 4.1), and (b) 4D Scene Generation with HexPlane DiT (cf. Sec. 4.2).")

![](figures/figures_5_0.png "🔼 Figure 3: VAE for Encoding 4D LIDAR Scenes. We use HexPlane H as the 4D representation.  fo and go are convolution-based networks with downsampling and upsampling operations, respectively. h(.) denotes the projection network based on transformer modules.")

![](figures/figures_6_0.png "🔼 Figure 2: Pipeline of dynamic LiDAR scene generation. Our DynamicCity framework consists of two key procedures: (a) Encoding HexPlane with an VAE architecture (cf. Sec. 4.1), and (b) 4D Scene Generation with HexPlane DiT (cf. Sec. 4.2).")

![](figures/figures_6_1.png "🔼 Figure 5: Condition Injection for DiT")

![](figures/figures_8_0.png "🔼 Figure 6: Dynamic Scene Generation Results. We provide unconditional generation scenes from the 1st, 8th, and 16th frames on Occ3D-Waymo (Left) and CarlaSC (Right), respectively. Kindly refer to the Appendix for complete sequential scenes and longer temporal modeling examples.")

![](figures/figures_9_0.png "🔼 Figure 7: Dynamic Scene Generation Applications. We demonstrate the capability of our model on a diverse set of downstream tasks. We show the 1st, 8th, and 16th frames for simplicity. Kindly refer to the Appendix for complete sequential scenes and longer temporal modeling examples.")

![](figures/figures_20_0.png "🔼 Figure 8: Unconditional Dynamic Scene Generation Results. We provide qualitative examples of a total of 16 consectutive frames generated by DynamicCity on the Occ3D-Waymo (Tian et al., 2023) dataset. Best viewed in colors and zoomed-in for additional details.")

![](figures/figures_21_0.png "🔼 Figure 8: Unconditional Dynamic Scene Generation Results. We provide qualitative examples of a total of 16 consectutive frames generated by DynamicCity on the Occ3D-Waymo (Tian et al., 2023) dataset. Best viewed in colors and zoomed-in for additional details.")

![](figures/figures_22_0.png "🔼 Figure 10: HexPlane-Guided Generation Results. We provide qualitative examples of a total of 64 consectutive frames generated by DynamicCity on the Occ3D-Waymo (Tian et al., 2023) dataset. Best viewed in colors and zoomed-in for additional details.")

![](figures/figures_23_0.png "🔼 Figure 1: Dynamic LiDAR scene generation from DynamicCity. We introduce a new LiDAR generation model that generates diverse 4D scenes of large spatial scales (80 × 80 × 6.4 meter³) and long sequential modeling (up to 128 frames), enabling a diverse set of downstream applications. For more examples, kindly refer to our Project Page: https://dynamic-city.github.io.")

![](figures/figures_24_0.png "🔼 Figure 12: Command-Guided Scene Generation Results. We provide qualitative examples of a total of 16 consectutive frames generated under the command RIGHT by DynamicCity on the CarlaSC (Wilson et al., 2022) dataset. Best viewed in colors and zoomed-in for additional details.")

![](figures/figures_25_0.png "🔼 Figure 13: Trajectory-Guided Scene Generation Results. We provide qualitative examples of a total of 16 consectutive frames generated by DynamicCity on the CarlaSC (Wilson et al., 2022) dataset. Best viewed in colors and zoomed-in for additional details.")

![](figures/figures_26_0.png "🔼 Figure 14: Dynamic Inpainting Results. We provide qualitative examples of a total of 16 consecutive frames generated by DynamicCity on the CarlaSC (Wilson et al., 2022) dataset. Best viewed in colors and zoomed-in for additional details.")

![](figures/figures_27_0.png "🔼 Figure 15: Comparisons of Dynamic Scene Generation. We provide qualitative examples of a total of 16 consecutive frames generated by OccSora (Wang et al., 2024) and our proposed DynamicCity framework on the CarlaSC (Wilson et al., 2022) dataset. Best viewed in colors and zoomed-in for additional details.")


</details>

------







<details>
<summary>More on tables
</summary>


{{< table-caption caption="🔽 Comparisons of 4D Scene Generation. We report the Inception Score (IS), Fréchet Inception Distance (FID), Kernel Inception Distance (KID), and the Precision (P) and Recall (R) rates of SemCity (Lee et al., 2024), OccSora (Wang et al., 2024), and our DynamicCity framework on the CarlaSC and Occ3D-Waymo datasets, respectively, in both the 2D and 3D spaces." >}}
| Dataset | Method | #Frames | Metric2D | Metric2D | Metric2D | Metric2D | Metric2D | Metric⌀D | Metric⌀D | Metric⌀D | Metric⌀D | Metric⌀D |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| Dataset | Method | #Frames | IS ↑ | FID⌀ ↓ | KID2D ↓ | P↑ | R↑ | IS ↑ | FID- ↓ | KID3D↓ | P↑ | R⌀ ↑ |
| CarlaSC (Wilson et al., 2022) | OccSora Ours | 16 | 2.492 | 25.08 | 0.013 | 0.115 | 0.008 | 2.257 | 1559 | 52.72 | 0.380 | 0.151 |
| CarlaSC (Wilson et al., 2022) | OccSora Ours | 16 | 2.498 | 10.95 | 0.002 | 0.238 | 0.066 | 2.331 | 354.2 | 19.10 | 0.460 | 0.170 |
| Occ3D-Waymo (Tian et al., 2023) | OccSora Ours | 16 | 1.926 | 82.43 | 0.094 | 0.227 | 0.014 | 3.129 | 3140 | 12.20 | 0.384 | 0.001 |
| Occ3D-Waymo (Tian et al., 2023) | OccSora Ours | 16 | 1.945 | 7.138 | 0.003 | 0.617 | 0.096 | 3.206 | 1806 | 77.71 | 0.494 | 0.026 |
{{< /table-caption >}}

{{< table-caption caption="🔽 Table 3: Ablation Study on VAE Network Structures. We report the mIoU scores, training time (second-per-iteration), and training-time memory consumption (VRAM) of different Encoder and Decoder configurations on CarlaSC and Occ3D-Waymo, respectively. Note that 'ESS' denotes 'Expansion & Squeeze'. The best and second-best values are in bold and underlined." >}}
| Encoder | Decoder | CarlaSC | CarlaSC | CarlaSC | Occ3D-Waymo | Occ3D-Waymo | Occ3D-Waymo |
| --- | --- | --- | --- | --- | --- | --- | --- |
| Encoder | Decoder | mIoU↑ | Time (s)↓ | VRAM (G)↓ | mIoU↑ | Time (s)↓ | VRAM (G)↓ |
| Average Pooling Average Pooling | Query | 60.97% | 0.236 | 12.46 | 49.37% | 1.563 | 69.66 |
| Average Pooling Average Pooling | ESS | 68.02% | 0.143 | 4.27 | 55.72% | 0.758 | 20.31 |
| Projection Projection | Query | 68.73% | 0.292 | 13.59 | 61.93% | 2.128 | 73.15 |
| Projection Projection | ESS | 74.22% | 0.205 | 5.92 | 62.57% | 1.316 | 25.92 |
{{< /table-caption >}}

{{< table-caption caption="🔽 Table 3: Ablation Study on VAE Network Structures. We report the mIoU scores, training time (second-per-iteration), and training-time memory consumption (VRAM) of different Encoder and Decoder configurations on CarlaSC and Occ3D-Waymo, respectively. Note that 'ESS' denotes 'Expansion & Squeeze'. The best and second-best values are in bold and underlined." >}}
| D.S. Rates | D.S. Rates | D.S. Rates | D.S. Rates | CarlaSC | CarlaSC | CarlaSC | CarlaSC | Occ3D-Waymo | Occ3D-Waymo | Occ3D-Waymo | Occ3D-Waymo |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| dT | dx | dy | dz | C.R.↑ | mIoU↑ | Time (s)↓ | VRAM (G)↓ | C.R.↑ | mIoU↑ | Time (s)↓ | VRAM (G)↓ |
| 1 | 1 | 1 | 1 | 5.78% | 84.67% | 1.149 | 21.63 | Out-of-Memory | Out-of-Memory | Out-of-Memory | >80 |
| 1 | 2 | 2 | 1 | 17.96% | 76.05% | 0.289 | 8.49 | 38.42% | 63.30% | 1.852 | 32.82 |
| 2 | 2 | 2 | 2 | 23.14% | 74.22% | 0.205 | 5.92 | 48.25% | 62.37% | 0.935 | 24.9 |
| 2 | 4 | 4 | 2 | 71.86% | 65.15% | 0.199 | 4.00 | 153.69% | 58.13% | 0.877 | 22.30 |
{{< /table-caption >}}

{{< table-caption caption="🔽 Table 1: Comparisons of 4D Scene Reconstruction. We report the mIoU scores of OccSora (Wang et al., 2024) and our DynamicCity framework on the CarlaSC, Occ3D-Waymo, and Occ3D-nuScenes datasets, respectively, under different resolutions and sequence lengths. Symbol † denotes score reported in the OccSora paper. Other scores are reproduced using the official code." >}}
| Class | CarlaSC | Occ3D-Waymo | Occ3D-nuScenes |
| --- | --- | --- | --- |
| Building | Building | Building | Manmade |
| Barrier | Barrier, Wall, Guardrail | - | Barrier |
| Other | Other, Sky, Bridge, Rail track, Static, Dynamic, Water | General Object | General Object |
| Pedestrian | Pedestrian | Pedestrian | Pedestrian |
| Pole | Pole, Traffic sign, Traffic light | Sign, Traffic light, Pole, Construction Cone | Traffic cone |
| Road | Road, Roadlines | Road | Drivable surface |
| Ground | Ground, Terrain | - | Other flat, Terrain |
| Sidewalk | Sidewalk | Sidewalk | Sidewalk |
| Vegetation | Vegetation | Vegetation, Tree trunk | Vegetation |
| Vehicle | Vehicle | Vehicle | Bus, Car, Construction vehicle, Trailer, Truck |
| Bicycle | - | Bicyclist, Bicycle, Motorcycle | Bicycle, Motorcycle |
{{< /table-caption >}}


</details>

------



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

  <img src="paper_images/21.png" class="grid-w50 md:grid-w33 xl:grid-w25" />

  <img src="paper_images/22.png" class="grid-w50 md:grid-w33 xl:grid-w25" />

  <img src="paper_images/23.png" class="grid-w50 md:grid-w33 xl:grid-w25" />

  <img src="paper_images/24.png" class="grid-w50 md:grid-w33 xl:grid-w25" />

  <img src="paper_images/25.png" class="grid-w50 md:grid-w33 xl:grid-w25" />

  <img src="paper_images/26.png" class="grid-w50 md:grid-w33 xl:grid-w25" />

  <img src="paper_images/27.png" class="grid-w50 md:grid-w33 xl:grid-w25" />

  <img src="paper_images/28.png" class="grid-w50 md:grid-w33 xl:grid-w25" />

  <img src="paper_images/29.png" class="grid-w50 md:grid-w33 xl:grid-w25" />

{{< /gallery >}}