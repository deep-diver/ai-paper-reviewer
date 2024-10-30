---
title: "Breaking the Memory Barrier: Near Infinite Batch Size Scaling for Contrastive Loss"
summary: "Inf-CL shatters memory limits in contrastive learning, enabling training with massive batch sizes (millions) using a novel tile-based computation strategy for unprecedented accuracy and speed."
categories: ["AI Generated"]
tags: ["🔖 24-10-22", ]
showSummary: true
date: 2024-10-22
draft: false
---

{{< keyword >}} 2410.17243 {{< /keyword >}}

### TL;DR


{{< lead >}}

Contrastive learning excels with large batch sizes, but memory limitations hinder scaling. This paper presents Inf-CL, a novel technique that addresses this constraint. Inf-CL utilizes a tile-based computation approach, breaking down the loss calculation into smaller, manageable blocks, avoiding the need to store the entire similarity matrix. This is combined with a multi-level tiling strategy to improve efficiency across multiple GPUs. Experiments show that Inf-CL achieves remarkable results: it enables training with batch sizes reaching millions while maintaining accuracy comparable to previous methods.  This significantly reduces memory demands, allowing contrastive training of large models previously deemed infeasible. The improved efficiency, scalability, and accuracy offered by Inf-CL are major contributions to the field of contrastive learning and open up possibilities for more advanced model training and applications.

{{< /lead >}}


{{< button href="https://arxiv.org/abs/2410.17243" target="_self" >}}
{{< icon "link" >}} &nbsp; read the paper on arXiv
{{< /button >}}
<br><br>
{{< button href="https://huggingface.co/papers/2410.17243" target="_self" >}}
{{< icon "hf-logo" >}} &nbsp; on Hugging Face
{{< /button >}}

#### Why does it matter?
This paper significantly advances contrastive learning by breaking the memory barrier, enabling near-infinite batch size scaling. This opens exciting new avenues for researchers to train larger models with enhanced performance, impacting various applications like image-text retrieval and self-supervised learning.  The proposed methods offer a substantial improvement over existing memory-efficient techniques, paving the way for more sophisticated and effective contrastive learning models.
#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Inf-CL introduces a tile-based computation method that dramatically reduces memory usage in contrastive loss calculation, enabling significantly larger batch sizes. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} A multi-level tiling strategy combines cross-GPU and in-GPU parallelism, maximizing efficiency and mitigating communication overhead. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Inf-CL achieves near-infinite batch size scaling without accuracy loss, significantly outperforming existing memory-efficient solutions. {{< /typeit >}}
{{< /alert >}}

------
#### Visual Insights



![](https://ai-paper-reviewer.com/2410.17243/figures_2_0.png)

> 🔼 The figure compares the vanilla implementation of contrastive loss with the proposed Inf-CL method, highlighting the differences in memory usage and computation.
> <details>
> <summary>read the caption</summary>
> Figure 2: (a) Vanilla implementation of contrastive loss gathers features to all devices to calculate all similarity simultaneously, where the similarity with squared complexity are repeatedly stored in all devices, causing huge memory costs for loss calculation when batch size increases. (b) Our Inf-CL significant decreases the memory cost by serial and distributed tile-wise computation.
> </details>





![](https://ai-paper-reviewer.com/2410.17243/charts_1_0.png)

> 🔼 The chart compares the GPU memory usage of Inf-CL with CLIP and OpenCLIP across varying batch sizes and numbers of GPUs, demonstrating Inf-CL's superior memory efficiency.
> <details>
> <summary>read the caption</summary>
> Figure 1: GPU memory usage comparison between Inf-CL and previous methods (CLIP, OpenCLIP). The dashed line marks the common GPU memory limit. Memory costs exceeding the bottleneck of 80G A800 are estimated by curve fitting. Left: With 8×A800, CLIP and OpenCLIP's memory consumption increases quadratically, while Inf-CL achieves linear growth, reducing memory costs by 78× at a batch size of 256k. Right: At a batch size of 1024k, even with 128 GPUs, previous methods exceed memory limits, whereas Inf-CL reduces memory demand by 281×.
> </details>





{{< table-caption >}}
<br><table id='10' style='font-size:16px'><tr><td colspan="2">Require: Visual features: I E Rbsxc and textual features: T E Rbsxc, the row-wise and column- wise size of a tile: tr and tc.</td></tr><tr><td>1:</td><td>Divide I into Ir where i = 1,2, . . . , nr.</td></tr><tr><td>2:</td><td>Divide T into Tj where j = 1, 2, · · . , nc.</td></tr><tr><td>3:</td><td>parallel for each Ir do</td></tr><tr><td>4:</td><td>Load Ii from HBM to on-chip SRAM.</td></tr><tr><td>5:</td><td>Initialize in = 0 E Rtr.</td></tr><tr><td>6:</td><td>for j = 1 to nr do</td></tr><tr><td>7:</td><td>Load Tj from HBM to on-chip SRAM.</td></tr><tr><td>8:</td><td>On chip, compute Xi⌀ = Ii · Th E Rtrxtc.</td></tr><tr><td>9:</td><td>On chip, calculate tile LSE li⌀j based on Equation 5:</td></tr><tr><td>10:</td><td>li⌀s = mi⌀j + LSE(Xi,j - mi,j), where mi⌀i rowmax( Xi,j).</td></tr><tr><td>11:</td><td>On chip, update LSE li based on Equation 4:</td></tr><tr><td>12:</td><td>li ← 12 + log(1 + exp(livi - lr)).</td></tr><tr><td>13:</td><td>end for</td></tr><tr><td>14:</td><td>Write li to HBM.</td></tr><tr><td>15:</td><td>end parallel for</td></tr><tr><td>16:</td><td>Return l.</td></tr></table>{{< /table-caption >}}

> 🔼 Table 1 shows the peak memory usage of CLIP, OpenCLIP, and Inf-CL with varying batch sizes and different numbers of GPUs, highlighting Inf-CL's significantly reduced memory consumption.
> <details>
> <summary>read the caption</summary>
> Table 1: Training Memory Cost Across Different Hardware and Batch Sizes. Experiments utilize Data Parallelism with Automatic Mixed Precision for efficient distributed training. The baselines include the Vanilla loss (CLIP) and Local loss (OpenCLIP). To minimize memory consumption, Gradient Cache is adopted, with an accumulation batch size of 128. * indicates the use of the data offload strategy, which reduces memory usage by transferring only a small data batch from CPU to GPU during each accumulation step. X denotes cases where the baseline exceeds the hardware memory limit for a given batch size, making training infeasible. Memory cost is evaluated using the ViT-L/14 architecture and the AdamW optimizer.
> </details>



### More visual insights

<details>
<summary>More on figures
</summary>


![](https://ai-paper-reviewer.com/2410.17243/figures_2_1.png)

> 🔼 The figure compares the vanilla implementation of contrastive loss with the proposed Inf-CL method, highlighting how Inf-CL reduces memory costs through tile-wise computation.
> <details>
> <summary>read the caption</summary>
> Figure 2: (a) Vanilla implementation of contrastive loss gathers features to all devices to calculate all similarity simultaneously, where the similarity with squared complexity are repeatedly stored in all devices, causing huge memory costs for loss calculation when batch size increases. (b) Our Inf-CL significant decreases the memory cost by serial and distributed tile-wise computation.
> </details>



![](https://ai-paper-reviewer.com/2410.17243/figures_4_0.png)

> 🔼 The figure compares the GPU memory usage of Inf-CL with CLIP and OpenCLIP, showing that Inf-CL significantly reduces memory consumption with increasing batch size.
> <details>
> <summary>read the caption</summary>
> Figure 1: GPU memory usage comparison between Inf-CL and previous methods (CLIP, Open-CLIP). The dashed line marks the common GPU memory limit. Memory costs exceeding the bottleneck of 80G A800 are estimated by curve fitting. Left: With 8×A800, CLIP and OpenCLIP's memory consumption increases quadratically, while Inf-CL achieves linear growth, reducing memory costs by 78× at a batch size of 256k. Right: At a batch size of 1024k, even with 128 GPUs, previous methods exceed memory limits, whereas Inf-CL reduces memory demand by 281×.
> </details>



![](https://ai-paper-reviewer.com/2410.17243/figures_5_0.png)

> 🔼 This figure illustrates the multi-level tiling strategy used in Inf-CL to reduce memory consumption during contrastive loss calculations by distributing computations across multiple GPUs and CUDA cores.
> <details>
> <summary>read the caption</summary>
> Figure 3: Multi-level tiling strategy. Top: for cross-GPU tiling, each GPU is assigned with multiple rows. The computation and the column-wise communication are performed asynchronously to reduce the cost. Bottom: for in-GPU tiling, the calculations in each GPU are further divided into tiles and the row-wise calculation is distributed to multiple CUDA cores. The accumulative operations of each row are merged into one kernel for reducing I/O times between SRAM and HBM.
> </details>



</details>



<details>
<summary>More on charts
</summary>


![](https://ai-paper-reviewer.com/2410.17243/charts_8_0.png)

> 🔼 The chart compares the training speed (iteration time and total time) of three different methods (CLIP, OpenCLIP, and Inf-CL) for training a ViT-L/14 CLIP model on 8xA800 GPUs across various batch sizes.
> <details>
> <summary>read the caption</summary>
> Figure 4: Training Speed of ViT-L/14 CLIP on 8×A800 for Varying Batch Sizes. The left figure shows the time per iteration step, while the right displays the time per epoch. Loss calculation contributes minimally to the total iteration time, making Inf-CL's iteration time comparable to previous methods. Furthermore, the iteration time of Inf-CL scales linearly with batch size, leading to a stable training duration of approximately 59 hours per epoch.
> </details>


![](https://ai-paper-reviewer.com/2410.17243/charts_15_0.png)

> 🔼 The chart shows the impact of varying batch sizes on the accuracy of ViT-B/32 model across three different datasets (CC3M, CC12M, and Laion400M).
> <details>
> <summary>read the caption</summary>
> Figure 5: Performance of ViT-B/32 across Varying Batch Sizes. Except batch size, other experiment settings are consistent. In Figure, the most suitable batch size is increasing with data scale.
> </details>


</details>



<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table id='1' style='font-size:18px'><tr><td rowspan="2">Model</td><td colspan="5">Loss (Peak) Memory Cost (GB)</td></tr><tr><td>32k</td><td>64k</td><td>128k</td><td>256k</td><td>1024k</td></tr><tr><td colspan="6">8xA800 (U 8 X 80GB)</td></tr><tr><td>CLIP</td><td>16.67 (46.40)</td><td>66.11 (77.94)</td><td>X</td><td>X</td><td>X</td></tr><tr><td>OpenCLIP</td><td>2.27 (43.97)</td><td>8.63 (46.38)</td><td>33.64 (51.23)</td><td>X</td><td>X</td></tr><tr><td>Inf-CL</td><td>0.18 (44.20)</td><td>0.36 (46.63)</td><td>0.72 (51.46)</td><td>1.45 (61.13)</td><td>X</td></tr><tr><td>Inf-CL*</td><td>0.18 (42.40)</td><td>0.36 (42.49)</td><td>0.72 (42.69)</td><td>1.45 (43.07)</td><td>6.53 (45.40)</td></tr><tr><td colspan="6">32xA800 (U 32x80GB)</td></tr><tr><td>CLIP</td><td>16.66 (42.85)</td><td>66.11 (75.52)</td><td>X</td><td>X</td><td>X</td></tr><tr><td>OpenCLIP</td><td>0.71 (42.46)</td><td>2.45 (43.06)</td><td>8.98 (44.26)</td><td>34.35 (46.71)</td><td>X</td></tr><tr><td>Inf-CL</td><td>0.05 (42.48)</td><td>0.09 (43.08)</td><td>0.18 (44.30)</td><td>0.35 (46.71)</td><td>1.44 (61.20)</td></tr></table>{{< /table-caption >}}
> 🔼 Table 1 shows the peak memory usage during training for CLIP, OpenCLIP, and Inf-CL with varying batch sizes and hardware configurations.
> <details>
> <summary>read the caption</summary>
> Table 1: Training Memory Cost Across Different Hardware and Batch Sizes. Experiments utilize Data Parallelism with Automatic Mixed Precision for efficient distributed training. The baselines include the Vanilla loss (CLIP) and Local loss (OpenCLIP). To minimize memory consumption, Gradient Cache is adopted, with an accumulation batch size of 128. * indicates the use of the data offload strategy, which reduces memory usage by transferring only a small data batch from CPU to GPU during each accumulation step. X denotes cases where the baseline exceeds the hardware memory limit for a given batch size, making training infeasible. Memory cost is evaluated using the ViT-L/14 architecture and the AdamW optimizer.
> </details>

{{< table-caption >}}
<table id='1' style='font-size:22px'><tr><td rowspan="2">Budget</td><td colspan="3">Maximum Batch Size (Loss Memory Cost)</td><td rowspan="2">Improvement (Ours / Sota)</td></tr><tr><td>CLIP</td><td>OpenCLIP</td><td>Inf-CL</td></tr><tr><td colspan="5">ViT-B/16</td></tr><tr><td rowspan="2">8xA800 32x A800</td><td>68k (74.39 GB)</td><td>172k (59.95 GB)</td><td>800k (3.01 GB)</td><td>4.65 (800k/172k)</td></tr><tr><td>68k (74.39 GB)</td><td>360k (66.29 GB)</td><td>3456k (3.27 GB)</td><td>9.60 (3456k/360k)</td></tr><tr><td colspan="5">ViT-L/14</td></tr><tr><td rowspan="2">8xA800 32xA800</td><td>64k (66.11 GB)</td><td>152k (47.23 GB)</td><td>448k (2.52 GB)</td><td>2.94 (448k/152k)</td></tr><tr><td>64k (66.11 GB)</td><td>352k (64.13 GB)</td><td>2048k (2.89 GB)</td><td>5.82 (2048k/256k)</td></tr><tr><td colspan="5">ViT-L/14 w/ data offload</td></tr><tr><td rowspan="2">8xA800 32xA800</td><td>64k (66.11 GB)</td><td>184k (69.10 GB)</td><td>4096k (26.12 GB)</td><td>22.26 (4096k/184k)</td></tr><tr><td>64k (66.11 GB)</td><td>368k (64.13 GB)</td><td>12288k (19.59 GB)</td><td>33.39 (12288k/368k)</td></tr></table>{{< /table-caption >}}
> 🔼 Table 1 shows the peak memory usage of CLIP, OpenCLIP and Inf-CL with different batch sizes and hardware configurations.
> <details>
> <summary>read the caption</summary>
> Table 1: Training Memory Cost Across Different Hardware and Batch Sizes. Experiments utilize Data Parallelism with Automatic Mixed Precision for efficient distributed training. The baselines include the Vanilla loss (CLIP) and Local loss (OpenCLIP). To minimize memory consumption, Gradient Cache is adopted, with an accumulation batch size of 128. * indicates the use of the data offload strategy, which reduces memory usage by transferring only a small data batch from CPU to GPU during each accumulation step. X denotes cases where the baseline exceeds the hardware memory limit for a given batch size, making training infeasible. Memory cost is evaluated using the ViT-L/14 architecture and the AdamW optimizer.
> </details>

{{< table-caption >}}
<table id='1' style='font-size:18px'><tr><td rowspan="2">Method (Batch Size)</td><td colspan="4">ImageNet</td><td colspan="2">MSCOCO R@1</td></tr><tr><td>Validation</td><td>v2</td><td>ObjectNet</td><td>OOD</td><td>I→T</td><td>T→I</td></tr><tr><td>Vanilla (64K)</td><td>74.74</td><td>65.30</td><td>46.31</td><td>66.13</td><td>25.71</td><td>44.31</td></tr><tr><td>OpenCLIP (64K)</td><td>74.86</td><td>65.22</td><td>46.29</td><td>66.75</td><td>25.98</td><td>44.02</td></tr><tr><td>Inf-CL (64K)</td><td>74.93</td><td>65.27</td><td>46.13</td><td>66.77</td><td>26.01</td><td>43.95</td></tr><tr><td>Inf-CL (256K)</td><td>75.12</td><td>65.12</td><td>46.44</td><td>67.15</td><td>25.90</td><td>44.61</td></tr><tr><td>Inf-CL (1024K)</td><td>73.58</td><td>63.87</td><td>44.55</td><td>64.60</td><td>24.53</td><td>41.58</td></tr></table>{{< /table-caption >}}
> 🔼 Table 3 presents a comparison of the performance of different methods on various image classification and image-text retrieval tasks, showing the impact of batch size on the Inf-CL method.
> <details>
> <summary>read the caption</summary>
> Table 3: Performance Verification. The training strategies is consistent with Table 2. We choose ViT-B/16 as the model architecture and adopt LiT strategy like Table 4. We evaluate zero-shot top-1 classification accuracy on several data sets, e.g., ImageNet-Validation Deng et al. (2009), ImageNet-v2 (Recht et al., 2019), ObjectNet (Barbu et al., 2019) and ImageNet-OOD (Hendrycks et al., 2021). We also evaluate zero-shot image-text top-1 retrieval accuracy on MSCOCO (Chen et al., 2015).
> </details>

{{< table-caption >}}
<table id='3' style='font-size:20px'><tr><td rowspan="2">Cross-GPU In-GPU</td><td>Data</td><td colspan="2">Loss</td><td>Backbone</td><td>Peak</td><td rowspan="2">ImageNet</td></tr><tr><td>Memory</td><td>Complexity</td><td>Memory</td><td>Memory</td><td>Memory</td></tr><tr><td>(Vanilla)</td><td>1.96</td><td>O(b2)</td><td>66.21</td><td>8.26</td><td>69.24</td><td>74.82</td></tr><tr><td>(OpenCLIP)</td><td>1.96</td><td>O(b2 /n)</td><td>16.96</td><td>8.26</td><td>20.79</td><td>74.86</td></tr><tr><td>V</td><td>1.96</td><td>⌀(b2 /n2)</td><td>4.81</td><td>8.26</td><td>12.30</td><td>74.78</td></tr><tr><td>V</td><td>1.96</td><td>O(b/n2)</td><td>0.81</td><td>8.26</td><td>12.30</td><td>74.93</td></tr></table>{{< /table-caption >}}
> 🔼 Table 1 shows the peak memory usage during training of CLIP, OpenCLIP, and Inf-CL with varying batch sizes on 8 and 32 A800 GPUs.
> <details>
> <summary>read the caption</summary>
> Table 1: Training Memory Cost Across Different Hardware and Batch Sizes. Experiments utilize Data Parallelism with Automatic Mixed Precision for efficient distributed training. The baselines include the Vanilla loss (CLIP) and Local loss (OpenCLIP). To minimize memory consumption, Gradient Cache is adopted, with an accumulation batch size of 128. * indicates the use of the data offload strategy, which reduces memory usage by transferring only a small data batch from CPU to GPU during each accumulation step. X denotes cases where the baseline exceeds the hardware memory limit for a given batch size, making training infeasible. Memory cost is evaluated using the ViT-L/14 architecture and the AdamW optimizer.
> </details>

{{< table-caption >}}
<br><table id='4' style='font-size:16px'><tr><td colspan="2">Require: Number of GPUs n, saved intermediate variables from the forward</td></tr><tr><td></td><td>pass: in-memory visual features Ir E Rbsxc and textual features T2 E Rbsxc for each GPU, global LSE vectors li E Rbs.</td></tr><tr><td>1:</td><td>Initialize vector: dIi = 0 E Rbsxc. dTcache = 0 E Rbsxc on each GPUi. ,</td></tr><tr><td>2:</td><td>for j = 1 to n do</td></tr><tr><td>3:</td><td>Asynchronously Text Feature Communication:</td></tr><tr><td>4:</td><td>Each GPU sends in-memory textual feature to the next GPU and receive the textual feature from the previous GPU in the ring.</td></tr><tr><td>5:</td><td>Backward Calculation:</td></tr><tr><td>6:</td><td>Index of current text feature tile for each GPU: k = (i+j - 1) mod n</td></tr><tr><td>7:</td><td>Call Algorithm 4 with (Ir, , Tk li) , obtaining gradients dItemp and dTtemp. ,</td></tr><tr><td>8:</td><td>Update gradients dIi += dItemp.</td></tr><tr><td>9:</td><td>Update gradients dTcache += dTk</td></tr><tr><td>10:</td><td>Asynchronously Gradient Communication:</td></tr><tr><td>11:</td><td>Each GPU sends in-memory dTcache to the next GPU in the ring.</td></tr><tr><td>12:</td><td>Each GPU receive the gradient feature from the previous GPU and write to dTcache.</td></tr><tr><td>13:</td><td>end for</td></tr><tr><td>14:</td><td>dTi = dTcache in each GPU.</td></tr><tr><td>15:</td><td>Return the gradients dIi dTi for each GPU. ,</td></tr></table>{{< /table-caption >}}
> 🔼 Table 1 shows the peak memory usage of CLIP, OpenCLIP, and Inf-CL with different batch sizes and hardware configurations.
> <details>
> <summary>read the caption</summary>
> Table 1: Training Memory Cost Across Different Hardware and Batch Sizes. Experiments utilize Data Parallelism with Automatic Mixed Precision for efficient distributed training. The baselines include the Vanilla loss (CLIP) and Local loss (OpenCLIP). To minimize memory consumption, Gradient Cache is adopted, with an accumulation batch size of 128. * indicates the use of the data offload strategy, which reduces memory usage by transferring only a small data batch from CPU to GPU during each accumulation step. X denotes cases where the baseline exceeds the hardware memory limit for a given batch size, making training infeasible. Memory cost is evaluated using the ViT-L/14 architecture and the AdamW optimizer.
> </details>

{{< table-caption >}}
<br><table id='6' style='font-size:14px'><tr><td colspan="2">Require: Saved intermediate variables from the forward pass: visual textual</td></tr><tr><td></td><td>features I E Rbxc, features T E Rbxc. the local LSE vector l E Rb. , The row-wise and column-wise size of a tile: tr and tc,</td></tr><tr><td>1:</td><td>Divide I into Ir i = 1, 2, , Nr.</td></tr><tr><td></td><td>, where . . ·</td></tr><tr><td>2:</td><td>Divide T into Tj , where j = 1 2, . . · , nc.</td></tr><tr><td>3:</td><td>Divide l into lr, where i = 1, 2, . · · , Nr.</td></tr><tr><td>4:</td><td>Initialize gradients vectors: dI E Rtrxc and dT E Rtcxc.</td></tr><tr><td>5:</td><td>for each In do</td></tr><tr><td>6:</td><td>Load Ii and li from HBM to on-chip SRAM.</td></tr><tr><td>7:</td><td>Initialize dIi = 0 E Rtrxc.</td></tr><tr><td>8:</td><td>for j = 1 to [b//tc] do</td></tr><tr><td>9:</td><td>Load To from HBM to on-chip SRAM.</td></tr><tr><td>10: 11:</td><td>On chip, compute Xi,j = Ii · T⌀ E Rtrxtc. On chip, compute dXi⌀j = exp(Xi,j - lr) E Rtrxtc.</td></tr><tr><td>12:</td><td>Update gradients dIi += dXi⌀j · T⌀.</td></tr><tr><td>13:</td><td>Load dT) from HBM to on-chip SRAM.</td></tr><tr><td></td><td>dT⌀ += Ii · dXi,j.</td></tr><tr><td>14: 15:</td><td>Write updated dT⌀ back to HBM.</td></tr><tr><td>16:</td><td>end for</td></tr><tr><td>17:</td><td>Write updated dI⌀ back to HBM.</td></tr><tr><td>18:</td><td>end for</td></tr><tr><td>19:</td><td>return dI(i.e. ai ), dT(i.e. 이정 ).</td></tr></table>{{< /table-caption >}}
> 🔼 This table compares the peak memory usage (in GB) of CLIP, OpenCLIP, and Inf-CL for various batch sizes and hardware configurations during contrastive learning.
> <details>
> <summary>read the caption</summary>
> Table 1: Training Memory Cost Across Different Hardware and Batch Sizes. Experiments utilize Data Parallelism with Automatic Mixed Precision for efficient distributed training. The baselines include the Vanilla loss (CLIP) and Local loss (OpenCLIP). To minimize memory consumption, Gradient Cache is adopted, with an accumulation batch size of 128. * indicates the use of the data offload strategy, which reduces memory usage by transferring only a small data batch from CPU to GPU during each accumulation step. X denotes cases where the baseline exceeds the hardware memory limit for a given batch size, making training infeasible. Memory cost is evaluated using the ViT-L/14 architecture and the AdamW optimizer.
> </details>

</details>


### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2410.17243/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.17243/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.17243/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.17243/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.17243/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.17243/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.17243/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.17243/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.17243/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.17243/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.17243/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.17243/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.17243/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.17243/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.17243/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.17243/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}