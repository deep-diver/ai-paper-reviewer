---
title: "ARKit LabelMaker: A New Scale for Indoor 3D Scene Understanding"
summary: "ARKit LabelMaker creates a massive, real-world 3D dataset with dense semantic labels using an automated pipeline, showing that large-scale real-world data significantly improves 3D scene understanding....."
categories: ["AI Generated"]
tags: ["🔖 2024-10-17", "🤗 2024-10-24"]
showSummary: true
date: 2024-10-17
draft: false
---

### TL;DR


{{< lead >}}

ARKit LabelMaker creates a massive, real-world 3D dataset with dense semantic labels using an automated pipeline, showing that large-scale real-world data significantly improves 3D scene understanding models, outperforming those trained solely on synthetic data or with other methods. The dataset and improved pipeline are publicly available.

{{< /lead >}}


{{< button href="https://arxiv.org/abs/2410.13924" target="_self" >}}
{{< icon "link" >}} &nbsp; read the paper on arXiv
{{< /button >}}

#### Why does this paper matter?
This paper introduces ARKit LabelMaker, a large-scale, real-world 3D dataset with dense semantic annotations, automatically generated using an improved automatic annotation pipeline.  It demonstrates the benefits of large-scale, real-world data for 3D semantic segmentation, surpassing the performance of models trained on synthetic data or with other pre-training methods. The dataset and pipeline are made publicly available.
#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} ARKit LabelMaker is the largest real-world 3D dataset with dense semantic annotations. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} Large-scale pre-training with automatically generated labels significantly improves 3D semantic segmentation performance. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} The provided pipeline and dataset facilitate easy generation of training data using readily available mobile devices. {{< /typeit >}}
{{< /alert >}}

------
#### Visual Insights



![](figures/figures_3_0.png "🔼 Dependency graph of the LabelMakerv2 pipeline. Our LabelMakerv2 pipeline has a clear dependency structure that has to be handled in the distributed processing of the data. This has to be especially respected when recovering from job failure. There, our recovery strategy checks for unfinished jobs in the dependency graph before submitting any new jobs to avoid unnecessarily wasting compute resources. The boxes with thick yellow frame donotes visualizable tasks. These are used during inspection and job quality assurance.")





{{< table-caption caption="🔽 Table 1. The size of dataset that is used for training and evaluation in this work. We provide by far the largest real-world labeled training dataset compared to existing real-world datasets. We provide automatically generated dense semantic annotations for 4471 training trajectories and 548 validation trajectories." >}}
| Marc Pollefeys | Hermann Blum |
| --- | --- |
| ETH Zurich | Uni Bonn / ETH Zurich |
| Switzerland | Germany / Switzerland |
| marc . pollefeys@inf . ethz. ch | blumh@uni -bonn. de |
{{< /table-caption >}}









<details>
<summary>More on tables
</summary>


{{< table-caption caption="🔽 Table 1. The size of dataset that is used for training and evaluation in this work. We provide by far the largest real-world labeled training dataset compared to existing real-world datasets. We provide automatically generated dense semantic annotations for 4471 training trajectories and 548 validation trajectories." >}}
| Dataset | #train | #val | #test | real | #label |
| --- | --- | --- | --- | --- | --- |
| S3DIS | 406 | - | - | V | 13 |
| ScanNet/ScanNet200 | 1201 | 312 | 100 | V | 20 / 200 |
| ScanNet++ | 230 | 50 | 50 | V | 100 |
| ARKit LabelMaker | 4471 | 548 | - | V | 186 |
| Structured3D | 6519 | - | 1697 | X | 25 |
{{< /table-caption >}}

{{< table-caption caption="🔽 Table 2. Semantic Segmentation Scores on ScanNet20. We compare different training strategies for two top-performing models (PointTransformerv3 [36] and MinkowskiNet [7]) on the ScanNet20 dataset. We can show for both models adding ALS200 through pre-training and co-training improves the performance for both models. With PonderV2 [42] and Mix3D [20], we compare large-scale pretraining to two other training strategies. We can show that large-scale pre-training is superior to both, extensive data augmentation (Mix3D) and self-supervised pre-training (PonderV2)." >}}
| Method | Training Data | val | test |
| --- | --- | --- | --- |
| MinkUNet [7] | MinkUNet [7] | MinkUNet [7] | MinkUNet [7] |
| vanilla | ScanNet | 72.4 | 73.6 |
| PonderV2 [42] | ScanNet (self-supervised) → ScanNet | 73.5 | - |
| Mix3D [20] | ScanNet | 73.6 | 78.1 |
| fine-tune (Ours) | ALS200 → ScanNet | 77.0 | - |
| PTv3 [36] | PTv3 [36] | PTv3 [36] | PTv3 [36] |
| vanilla | ScanNet | 77.5 | 77.9 |
| fine-tune (Ours) | ALS200 → ScanNet | 81.2 | - |
| fine-tune (Ours) | ALC → ScanNet | 80.6 | 79.0 |
| PPT [36] | ScanNet + S3DIS + Structure3D | 78.6 | 79.4 |
| PPT (Ours) | ScanNet+ ScanNet200 + ScanNet++ + Structure3D + ALC | 81.1 | 79.8 |
{{< /table-caption >}}

{{< table-caption caption="🔽 Table 3. Semantic Segmentation Scores on ScanNet200 [29]." >}}
| Method | Training Data | val | test |
| --- | --- | --- | --- |
| MinkUNet [7] | MinkUNet [7] | MinkUNet [7] | MinkUNet [7] |
| vanilla | ScanNet200 | 29.3 | 25.3 |
| fine-tune (Ours) | ALS200 → ScanNet200 | 30.1 | 27.4 |
| co-training (Ours) | ALS200 + ScanNet200 | 30.6 | - |
| PTv3 [36] | PTv3 [36] | PTv3 [36] | PTv3 [36] |
| vanilla | ScanNet200 | 35.2 | 37.8 |
| fine-tune (Ours) | ALS200 → ScanNet200 | 38.4 | - |
| fine-tune (Ours) | ALC200 → ScanNet200 | 38.7 | 38.4 |
| PPT [36] | ScanNet200 + S3DIS + Structure3D → ScanNet200 | 36.0 | 39.3 |
| PPT(Ours) | ScanNet+ ScanNet200 + ScanNet++ + Structure3D + ALC | 40.3 | 41.4 |
{{< /table-caption >}}

{{< table-caption caption="🔽 Table 4. Semantic Segmentation Scores on ScanNet++ [39]. We evaluated the efficacy of our ALC dataset on the ScanNet++ benchmark using both pre-training and joint training methods. †: this number comes from Wu et al." >}}
| PTv3 Variant | Training Data | #Data | val mloU | test top-1/3 ml⌀U |
| --- | --- | --- | --- | --- |
| vanilla | ScanNet++ | 713 | 41.8 | 45.8/69.7 |
| fine-tune (Ours) | ALC200 → ScanNet++ | 4471 → 713 | 42.5 | 43.7/65.5 |
| PPT [36] | ScanNet200 + ScanNet++ + Structure3D | 45868 | 45.31 | 46.5/71.1 |
| PPT (Ours) | ScanNet200 + ScanNet++ + ALC | 11168 | 44.5 | 46.1/70.8 |
| PPT (Ours) | ScanNet+ ScanNet200 + ScanNet++ + Structure3D + ALC | 30386 | 44.6 | 46.1 / 68.5 |
{{< /table-caption >}}

{{< table-caption caption="🔽 Table B1. ScanNet200 validation and test mIoU for head, common and tail classes. For MinkowskiNet, ARKit LabelMaker pre-trained network shows significant improvement on head and common classes. For PTv3, we see improvements across all three splits." >}}
| Method | Training Data | head | Validation common | tail | head | Test common | tail |
| --- | --- | --- | --- | --- | --- | --- | --- |
| MinkUNet [7] | MinkUNet [7] | MinkUNet [7] | MinkUNet [7] | MinkUNet [7] | MinkUNet [7] | MinkUNet [7] | MinkUNet [7] |
| vanilla | ScanNet200 | 52.3 | 22.5 | 13.2 | 46.3 | 15.4 | 10.2 |
| fine-tune (Ours) | ALS200 → ScanNet200 | 53.9 | 24.2 | 12.5 | 49.0 | 19.4 | 9.4 |
| co-training (Ours) | ALS200 + ScanNet200 | 55.1 | 24.7 | 12.4 | ■ | - | ■ |
| PTv3 [36] | PTv3 [36] | PTv3 [36] | PTv3 [36] | PTv3 [36] | PTv3 [36] | PTv3 [36] | PTv3 [36] |
| vanilla | ScanNet200 | 56.5 | 30.1 | 19.3 | · | · |  |
| fine-tune (Ours) | ALS200 → ScanNet200 | 58.6 | 33.0 | 23.8 | · | · | · |
| fine-tune (Ours) | ALC200 → ScanNet200 | 58.2 | 33.1 | 25.0 | 58.2 | 30.9 | 22.2 |
| PPT [36] | ScanNet200 + S3DIS + Structure3D → ScanNet200 | ■ | ■ | - | 59.2 | 33.0 | 21.6 |
| PPT(Ours) | ScanNet+ ScanNet200 + ScanNet++ + Structure3D + ALC | 60.9 | 35.48 | 24.6 | 61.0 | 32.2 | 27.1 |
{{< /table-caption >}}

{{< table-caption caption="🔽 Table 1. The size of dataset that is used for training and evaluation in this work. We provide by far the largest real-world labeled training dataset compared to existing real-world datasets. We provide automatically generated dense semantic annotations for 4471 training trajectories and 548 validation trajectories." >}}
| Task | #CPU | RAM | Time | GPU |
| --- | --- | --- | --- | --- |
| Download & Prepossessing | 2 | 24G | 4h | - |
| Video Rendering | 8 | 32G | 30min | - |
| Grounded-SAM | 2 | 12G | 6h | 3090 x1 |
| OVSeg | 2 | 8G | 8h | 3090 x1 |
| InternImage | 2 | 10G | 8h | 3090 x1 |
| Mask3D | 8 | 16G | 1h 30min | 3090 x1 |
| OmniData | 8 | 8G | 2h | 3090 x1 |
| HHA | 18 | 9G | 2h | - |
| CMX | 2 | 8G | 3h | 3090 x1 |
| Consensus | 16 | 16G | 2h | - |
| Point Lifting | 2 | 72G | 4h |  |
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

{{< /gallery >}}