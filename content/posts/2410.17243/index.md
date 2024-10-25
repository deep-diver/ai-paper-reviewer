---
title: "Breaking the Memory Barrier: Near Infinite Batch Size Scaling for Contrastive Loss"
summary: "This paper presents Inf-CL, a novel method that dramatically reduces memory usage in contrastive learning, enabling training with significantly larger batch sizes (millions of samples) than previously....."
categories: ["AI Generated"]
tags: ["2024-10-22"]
showSummary: true
date: 2024-10-22
draft: false
---

### TL;DR


{{< lead >}}

This paper presents Inf-CL, a novel method that dramatically reduces memory usage in contrastive learning, enabling training with significantly larger batch sizes (millions of samples) than previously possible.  This is achieved through a tile-based approach to loss calculation combined with a multi-level tiling strategy for distributed GPU training.  Inf-CL achieves this significant memory reduction with minimal impact on training speed, opening up new possibilities for training larger and more accurate models.

{{< /lead >}}


{{< button href="https://arxiv.org/abs/2410.17243" target="_self" >}}
{{< icon "link" >}} &nbsp; read the paper on arXiv
{{< /button >}}

#### Why does this paper matter?
This paper introduces Inf-CL, a novel method to overcome the GPU memory limitations in contrastive learning, allowing for near-infinite batch size scaling.  This is achieved by a tile-based computation strategy that avoids the full materialization of the similarity matrix and employs multi-level tiling for distributed training systems. Inf-CL demonstrates significant memory reduction and maintains comparable speed to previous methods, enabling contrastive training of large models with unprecedented batch sizes.
#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Inf-CL enables near-infinite batch size scaling for contrastive loss by using a tile-based computation strategy. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} Inf-CL employs a multi-level tiling strategy to optimize communication and computation across distributed training systems. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Inf-CL achieves significant memory reduction and maintains comparable speed to state-of-the-art methods, enabling contrastive training of large models with unprecedented batch sizes. {{< /typeit >}}
{{< /alert >}}

------
#### Visual Insights

![](figures/figures_2_0.png "🔼 Figure 2: (a) Vanilla implementation of contrastive loss gathers features to all devices to calculate all similarity simultaneously, where the similarity with squared complexity are repeatedly stored in all devices, causing huge memory costs for loss calculation when batch size increases. (b) Our Inf-CL significant decreases the memory cost by serial and distributed tile-wise computation.")

{{< table-caption caption="🔽 Training Memory Cost Across Different Hardware and Batch Sizes. Experiments utilize Data Parallelism with Automatic Mixed Precision for efficient distributed training. The baselines include the Vanilla loss (CLIP) and Local loss (OpenCLIP). To minimize memory consumption, Gradient Cache is adopted, with an accumulation batch size of 128. * indicates the use of the data offload strategy, which reduces memory usage by transferring only a small data batch from CPU to GPU during each accumulation step. X denotes cases where the baseline exceeds the hardware memory limit for a given batch size, making training infeasible. Memory cost is evaluated using the ViT-L/14 architecture and the AdamW optimizer." >}}
| Require: Number of GPUs n, in-memory visual features Ir E Rbsxc and textual features Ti E Rbsxc for each GPU. | Require: Number of GPUs n, in-memory visual features Ir E Rbsxc and textual features Ti E Rbsxc for each GPU. |
| --- | --- |
| 1: | for counter = 1 to n do |
| 2: | Update LSE: |
| 3: | Each GPU computes the local LSE vector via Algorithm 2 with in-memory features. |
| 4: | Each GPU updates the LSE vector via Equation 4. |
| 5: | Asynchronously Communication: |
| 6: | Each GPU sends the in-memory textual feature to the next GPU in the ring. |
| 7: | Each GPU receives the textual feature from the previous GPU in the ring. |
| 8: | end for |
| 9: | Return the final LSE vector li for each GPU . |
{{< /table-caption >}}

------



<details>
<summary>More on figures
</summary>


![](figures/figures_2_1.png "🔼 Figure 2: (a) Vanilla implementation of contrastive loss gathers features to all devices to calculate all similarity simultaneously, where the similarity with squared complexity are repeatedly stored in all devices, causing huge memory costs for loss calculation when batch size increases. (b) Our Inf-CL significant decreases the memory cost by serial and distributed tile-wise computation.")

![](figures/figures_4_0.png "🔼 Figure 1: GPU memory usage comparison between Inf-CL and previous methods (CLIP, Open-CLIP). The dashed line marks the common GPU memory limit. Memory costs exceeding the bottleneck of 80G A800 are estimated by curve fitting. Left: With 8×A800, CLIP and OpenCLIP's memory consumption increases quadratically, while Inf-CL achieves linear growth, reducing memory costs by 78× at a batch size of 256k. Right: At a batch size of 1024k, even with 128 GPUs, previous methods exceed memory limits, whereas Inf-CL reduces memory demand by 281×.")

![](figures/figures_5_0.png "🔼 Figure 3: Multi-level tiling strategy. Top: for cross-GPU tiling, each GPU is assigned with multiple rows. The computation and the column-wise communication are performed asynchronously to reduce the cost. Bottom: for in-GPU tiling, the calculations in each GPU are further divided into tiles and the row-wise calculation is distributed to multiple CUDA cores. The accumulative operations of each row are merged into one kernel for reducing I/O times between SRAM and HBM.")


</details>

------







------

<details>
<summary>More on tables
</summary>


{{< table-caption caption="🔽 Training Memory Cost Across Different Hardware and Batch Sizes. Experiments utilize Data Parallelism with Automatic Mixed Precision for efficient distributed training. The baselines include the Vanilla loss (CLIP) and Local loss (OpenCLIP). To minimize memory consumption, Gradient Cache is adopted, with an accumulation batch size of 128. * indicates the use of the data offload strategy, which reduces memory usage by transferring only a small data batch from CPU to GPU during each accumulation step. X denotes cases where the baseline exceeds the hardware memory limit for a given batch size, making training infeasible. Memory cost is evaluated using the ViT-L/14 architecture and the AdamW optimizer." >}}
| Require: Visual features: I E Rbsxc and textual features: T E Rbsxc, the row-wise and column- wise size of a tile: tr and tc. | Require: Visual features: I E Rbsxc and textual features: T E Rbsxc, the row-wise and column- wise size of a tile: tr and tc. |
| --- | --- |
| 1: | Divide I into Ir where i = 1,2, . . . , nr. |
| 2: | Divide T into Tj where j = 1, 2, · · . , nc. |
| 3: | parallel for each Ir do |
| 4: | Load Ii from HBM to on-chip SRAM. |
| 5: | Initialize in = 0 E Rtr. |
| 6: | for j = 1 to nr do |
| 7: | Load Tj from HBM to on-chip SRAM. |
| 8: | On chip, compute Xi⌀ = Ii · Th E Rtrxtc. |
| 9: | On chip, calculate tile LSE li⌀j based on Equation 5: |
| 10: | li⌀s = mi⌀j + LSE(Xi,j - mi,j), where mi⌀i rowmax( Xi,j). |
| 11: | On chip, update LSE li based on Equation 4: |
| 12: | li ← 12 + log(1 + exp(livi - lr)). |
| 13: | end for |
| 14: | Write li to HBM. |
| 15: | end parallel for |
| 16: | Return l. |
{{< /table-caption >}}

{{< table-caption caption="🔽 Training Memory Cost Across Different Hardware and Batch Sizes" >}}
| Model | Loss (Peak) Memory Cost (GB) | Loss (Peak) Memory Cost (GB) | Loss (Peak) Memory Cost (GB) | Loss (Peak) Memory Cost (GB) | Loss (Peak) Memory Cost (GB) |
| --- | --- | --- | --- | --- | --- |
| Model | 32k | 64k | 128k | 256k | 1024k |
| 8xA800 (U 8 X 80GB) | 8xA800 (U 8 X 80GB) | 8xA800 (U 8 X 80GB) | 8xA800 (U 8 X 80GB) | 8xA800 (U 8 X 80GB) | 8xA800 (U 8 X 80GB) |
| CLIP | 16.67 (46.40) | 66.11 (77.94) | X | X | X |
| OpenCLIP | 2.27 (43.97) | 8.63 (46.38) | 33.64 (51.23) | X | X |
| Inf-CL | 0.18 (44.20) | 0.36 (46.63) | 0.72 (51.46) | 1.45 (61.13) | X |
| Inf-CL* | 0.18 (42.40) | 0.36 (42.49) | 0.72 (42.69) | 1.45 (43.07) | 6.53 (45.40) |
| 32xA800 (U 32x80GB) | 32xA800 (U 32x80GB) | 32xA800 (U 32x80GB) | 32xA800 (U 32x80GB) | 32xA800 (U 32x80GB) | 32xA800 (U 32x80GB) |
| CLIP | 16.66 (42.85) | 66.11 (75.52) | X | X | X |
| OpenCLIP | 0.71 (42.46) | 2.45 (43.06) | 8.98 (44.26) | 34.35 (46.71) | X |
| Inf-CL | 0.05 (42.48) | 0.09 (43.08) | 0.18 (44.30) | 0.35 (46.71) | 1.44 (61.20) |
{{< /table-caption >}}

{{< table-caption caption="🔽 Training Memory Cost Across Different Hardware and Batch Sizes." >}}
| Budget | Maximum Batch Size (Loss Memory Cost) | Maximum Batch Size (Loss Memory Cost) | Maximum Batch Size (Loss Memory Cost) | Improvement (Ours / Sota) |
| --- | --- | --- | --- | --- |
| Budget | CLIP | OpenCLIP | Inf-CL | Improvement (Ours / Sota) |
| ViT-B/16 | ViT-B/16 | ViT-B/16 | ViT-B/16 | ViT-B/16 |
| 8xA800 32x A800 | 68k (74.39 GB) | 172k (59.95 GB) | 800k (3.01 GB) | 4.65 (800k/172k) |
| 8xA800 32x A800 | 68k (74.39 GB) | 360k (66.29 GB) | 3456k (3.27 GB) | 9.60 (3456k/360k) |
| ViT-L/14 | ViT-L/14 | ViT-L/14 | ViT-L/14 | ViT-L/14 |
| 8xA800 32xA800 | 64k (66.11 GB) | 152k (47.23 GB) | 448k (2.52 GB) | 2.94 (448k/152k) |
| 8xA800 32xA800 | 64k (66.11 GB) | 352k (64.13 GB) | 2048k (2.89 GB) | 5.82 (2048k/256k) |
| ViT-L/14 w/ data offload | ViT-L/14 w/ data offload | ViT-L/14 w/ data offload | ViT-L/14 w/ data offload | ViT-L/14 w/ data offload |
| 8xA800 32xA800 | 64k (66.11 GB) | 184k (69.10 GB) | 4096k (26.12 GB) | 22.26 (4096k/184k) |
| 8xA800 32xA800 | 64k (66.11 GB) | 368k (64.13 GB) | 12288k (19.59 GB) | 33.39 (12288k/368k) |
{{< /table-caption >}}

{{< table-caption caption="🔽 Table 3: Performance Verification. The training strategies is consistent with Table 2. We choose ViT-B/16 as the model architecture and adopt LiT strategy like Table 4. We evaluate zero-shot top-1 classification accuracy on several data sets, e.g., ImageNet-Validation Deng et al. (2009), ImageNet-v2 (Recht et al., 2019), ObjectNet (Barbu et al., 2019) and ImageNet-OOD (Hendrycks et al., 2021). We also evaluate zero-shot image-text top-1 retrieval accuracy on MSCOCO (Chen et al., 2015)." >}}
| Method (Batch Size) | ImageNet | ImageNet | ImageNet | ImageNet | MSCOCO R@1 | MSCOCO R@1 |
| --- | --- | --- | --- | --- | --- | --- |
| Method (Batch Size) | Validation | v2 | ObjectNet | OOD | I→T | T→I |
| Vanilla (64K) | 74.74 | 65.30 | 46.31 | 66.13 | 25.71 | 44.31 |
| OpenCLIP (64K) | 74.86 | 65.22 | 46.29 | 66.75 | 25.98 | 44.02 |
| Inf-CL (64K) | 74.93 | 65.27 | 46.13 | 66.77 | 26.01 | 43.95 |
| Inf-CL (256K) | 75.12 | 65.12 | 46.44 | 67.15 | 25.90 | 44.61 |
| Inf-CL (1024K) | 73.58 | 63.87 | 44.55 | 64.60 | 24.53 | 41.58 |
{{< /table-caption >}}

{{< table-caption caption="🔽 Table 1: Training Memory Cost Across Different Hardware and Batch Sizes. Experiments utilize Data Parallelism with Automatic Mixed Precision for efficient distributed training. The baselines include the Vanilla loss (CLIP) and Local loss (OpenCLIP). To minimize memory consumption, Gradient Cache is adopted, with an accumulation batch size of 128. * indicates the use of the data offload strategy, which reduces memory usage by transferring only a small data batch from CPU to GPU during each accumulation step. X denotes cases where the baseline exceeds the hardware memory limit for a given batch size, making training infeasible. Memory cost is evaluated using the ViT-L/14 architecture and the AdamW optimizer." >}}
| Cross-GPU In-GPU | Data | Loss | Loss | Backbone | Peak | ImageNet |
| --- | --- | --- | --- | --- | --- | --- |
| Cross-GPU In-GPU | Memory | Complexity | Memory | Memory | Memory | ImageNet |
| (Vanilla) | 1.96 | O(b2) | 66.21 | 8.26 | 69.24 | 74.82 |
| (OpenCLIP) | 1.96 | O(b2 /n) | 16.96 | 8.26 | 20.79 | 74.86 |
| V | 1.96 | ⌀(b2 /n2) | 4.81 | 8.26 | 12.30 | 74.78 |
| V | 1.96 | O(b/n2) | 0.81 | 8.26 | 12.30 | 74.93 |
{{< /table-caption >}}

{{< table-caption caption="🔽 Table 1: Training Memory Cost Across Different Hardware and Batch Sizes. Experiments utilize Data Parallelism with Automatic Mixed Precision for efficient distributed training. The baselines include the Vanilla loss (CLIP) and Local loss (OpenCLIP). To minimize memory consumption, Gradient Cache is adopted, with an accumulation batch size of 128. * indicates the use of the data offload strategy, which reduces memory usage by transferring only a small data batch from CPU to GPU during each accumulation step. X denotes cases where the baseline exceeds the hardware memory limit for a given batch size, making training infeasible. Memory cost is evaluated using the ViT-L/14 architecture and the AdamW optimizer." >}}
| Require: Number of GPUs n, saved intermediate variables from the forward | Require: Number of GPUs n, saved intermediate variables from the forward |
| --- | --- |
|  | pass: in-memory visual features Ir E Rbsxc and textual features T2 E Rbsxc for each GPU, global LSE vectors li E Rbs. |
| 1: | Initialize vector: dIi = 0 E Rbsxc. dTcache = 0 E Rbsxc on each GPUi. , |
| 2: | for j = 1 to n do |
| 3: | Asynchronously Text Feature Communication: |
| 4: | Each GPU sends in-memory textual feature to the next GPU and receive the textual feature from the previous GPU in the ring. |
| 5: | Backward Calculation: |
| 6: | Index of current text feature tile for each GPU: k = (i+j - 1) mod n |
| 7: | Call Algorithm 4 with (Ir, , Tk li) , obtaining gradients dItemp and dTtemp. , |
| 8: | Update gradients dIi += dItemp. |
| 9: | Update gradients dTcache += dTk |
| 10: | Asynchronously Gradient Communication: |
| 11: | Each GPU sends in-memory dTcache to the next GPU in the ring. |
| 12: | Each GPU receive the gradient feature from the previous GPU and write to dTcache. |
| 13: | end for |
| 14: | dTi = dTcache in each GPU. |
| 15: | Return the gradients dIi dTi for each GPU. , |
{{< /table-caption >}}

{{< table-caption caption="🔽 Training Memory Cost Across Different Hardware and Batch Sizes. Experiments utilize Data Parallelism with Automatic Mixed Precision for efficient distributed training. The baselines include the Vanilla loss (CLIP) and Local loss (OpenCLIP). To minimize memory consumption, Gradient Cache is adopted, with an accumulation batch size of 128.  * indicates the use of the data offload strategy, which reduces memory usage by transferring only a small data batch from CPU to GPU during each accumulation step. X denotes cases where the baseline exceeds the hardware memory limit for a given batch size, making training infeasible. Memory cost is evaluated using the ViT-L/14 architecture and the AdamW optimizer." >}}
| Require: Saved intermediate variables from the forward pass: visual textual | Require: Saved intermediate variables from the forward pass: visual textual |
| --- | --- |
|  | features I E Rbxc, features T E Rbxc. the local LSE vector l E Rb. , The row-wise and column-wise size of a tile: tr and tc, |
| 1: | Divide I into Ir i = 1, 2, , Nr. |
|  | , where . . · |
| 2: | Divide T into Tj , where j = 1 2, . . · , nc. |
| 3: | Divide l into lr, where i = 1, 2, . · · , Nr. |
| 4: | Initialize gradients vectors: dI E Rtrxc and dT E Rtcxc. |
| 5: | for each In do |
| 6: | Load Ii and li from HBM to on-chip SRAM. |
| 7: | Initialize dIi = 0 E Rtrxc. |
| 8: | for j = 1 to [b//tc] do |
| 9: | Load To from HBM to on-chip SRAM. |
| 10: 11: | On chip, compute Xi,j = Ii · T⌀ E Rtrxtc. On chip, compute dXi⌀j = exp(Xi,j - lr) E Rtrxtc. |
| 12: | Update gradients dIi += dXi⌀j · T⌀. |
| 13: | Load dT) from HBM to on-chip SRAM. |
|  | dT⌀ += Ii · dXi,j. |
| 14: 15: | Write updated dT⌀ back to HBM. |
| 16: | end for |
| 17: | Write updated dI⌀ back to HBM. |
| 18: | end for |
| 19: | return dI(i.e. ai ), dT(i.e. 이정 ). |
{{< /table-caption >}}


</details>

------

