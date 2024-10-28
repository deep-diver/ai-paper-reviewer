---
title: "ARKit LabelMaker: A New Scale for Indoor 3D Scene Understanding"
summary: "ARKit LabelMaker creates the largest real-world 3D dataset with dense semantic annotations, boosting performance of 3D semantic segmentation models and accelerating progress in indoor scene understand..."
categories: ["AI Generated"]
tags: ["🔖 24-10-17", "🤗 24-10-24"]
showSummary: true
date: 2024-10-17
draft: false
---

### TL;DR


{{< lead >}}

This research introduces ARKit LabelMaker, a groundbreaking dataset for 3D scene understanding.  It's the largest real-world dataset of its kind, featuring detailed, dense semantic annotations for indoor scenes captured using readily available mobile devices. The key innovation is the automated pipeline that efficiently generates these annotations at scale, solving a major bottleneck in the field where large-scale, accurately labeled datasets are scarce.  The researchers demonstrate substantial performance improvements in 3D semantic segmentation models trained using their dataset, outperforming even those trained with vast amounts of synthetic data.  This work not only provides a valuable resource for researchers but also establishes a novel, scalable methodology for creating future 3D datasets.  It addresses the critical need for high-quality training data in the field, paving the way for advancements in indoor scene understanding.

{{< /lead >}}


{{< button href="https://arxiv.org/abs/2410.13924" target="_self" >}}
{{< icon "link" >}} &nbsp; read the paper on arXiv
{{< /button >}}
<br><br>
{{< button href="https://huggingface.co/papers/2410.13924" target="_self" >}}
{{< icon "hf-logo" >}} &nbsp; on Hugging Face
{{< /button >}}

#### Why does it matter?
This paper is crucial for researchers in 3D computer vision because it introduces ARKit LabelMaker, the largest real-world dataset for indoor 3D scene understanding with dense semantic annotations.  This addresses the critical lack of large-scale, real-world training data hindering progress in 3D scene understanding, enabling advancements in model performance and opening avenues for novel research.  The automated labeling technique is also significant, offering a scalable solution for future dataset creation.
#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} ARKit LabelMaker is the largest real-world 3D dataset with dense semantic annotations for indoor scenes. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} The dataset significantly improves the performance of state-of-the-art 3D semantic segmentation models. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} The automated labeling pipeline offers a scalable solution for generating large-scale 3D datasets. {{< /typeit >}}
{{< /alert >}}

------
#### Visual Insights



![](figures/figures_3_0.png)

> 🔼 The figure shows the dependency graph of the LabelMakerv2 pipeline, illustrating the workflow from data preprocessing to final 3D point cloud label generation.
> <details>
> <summary>read the caption</summary>
> Figure 1. Dependency graph of the LabelMakerv2 pipeline.
> </details>







{{< table-caption >}}
<table id='7' style='font-size:20px'><tr><td>Marc Pollefeys</td><td>Hermann Blum</td></tr><tr><td>ETH Zurich</td><td>Uni Bonn / ETH Zurich</td></tr><tr><td>Switzerland</td><td>Germany / Switzerland</td></tr><tr><td>marc . pollefeys@inf . ethz. ch</td><td>blumh@uni -bonn. de</td></tr></table>{{< /table-caption >}}

> 🔼 Table 1 presents the sizes of various datasets used for training and evaluation in the paper, highlighting the significantly larger scale of the ARKit LabelMaker dataset compared to existing datasets.
> <details>
> <summary>read the caption</summary>
> Table 1. The size of dataset that is used for training and evaluation in this work. We provide by far the largest real-world labeled training dataset compared to existing real-world datasets. We provide automatically generated dense semantic annotations for 4471 training trajectories and 548 validation trajectories.
> </details>



### More visual insights




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table id='3' style='font-size:14px'><tr><td>Dataset</td><td>#train</td><td>#val</td><td>#test</td><td>real</td><td>#label</td></tr><tr><td>S3DIS</td><td>406</td><td>-</td><td>-</td><td>V</td><td>13</td></tr><tr><td>ScanNet/ScanNet200</td><td>1201</td><td>312</td><td>100</td><td>V</td><td>20 / 200</td></tr><tr><td>ScanNet++</td><td>230</td><td>50</td><td>50</td><td>V</td><td>100</td></tr><tr><td>ARKit LabelMaker</td><td>4471</td><td>548</td><td>-</td><td>V</td><td>186</td></tr><tr><td>Structured3D</td><td>6519</td><td>-</td><td>1697</td><td>X</td><td>25</td></tr></table>{{< /table-caption >}}
> 🔼 {{ table.description }}
> <details>
> <summary>read the caption</summary>
> {{ table.caption }}
> </details>


> Table 1 shows the number of training, validation, and test data samples in several datasets used for 3D semantic segmentation, including the newly generated ARKit LabelMaker dataset.


{{< table-caption >}}
<table id='0' style='font-size:16px'><tr><td>Method</td><td>Training Data</td><td>val</td><td>test</td></tr><tr><td colspan="4">MinkUNet [7]</td></tr><tr><td>vanilla</td><td>ScanNet</td><td>72.4</td><td>73.6</td></tr><tr><td>PonderV2 [42]</td><td>ScanNet (self-supervised) → ScanNet</td><td>73.5</td><td>-</td></tr><tr><td>Mix3D [20]</td><td>ScanNet</td><td>73.6</td><td>78.1</td></tr><tr><td>fine-tune (Ours)</td><td>ALS200 → ScanNet</td><td>77.0</td><td>-</td></tr><tr><td colspan="4">PTv3 [36]</td></tr><tr><td>vanilla</td><td>ScanNet</td><td>77.5</td><td>77.9</td></tr><tr><td>fine-tune (Ours)</td><td>ALS200 → ScanNet</td><td>81.2</td><td>-</td></tr><tr><td>fine-tune (Ours)</td><td>ALC → ScanNet</td><td>80.6</td><td>79.0</td></tr><tr><td>PPT [36]</td><td>ScanNet + S3DIS + Structure3D</td><td>78.6</td><td>79.4</td></tr><tr><td>PPT (Ours)</td><td>ScanNet+ ScanNet200 + ScanNet++ + Structure3D + ALC</td><td>81.1</td><td>79.8</td></tr></table>{{< /table-caption >}}
> 🔼 {{ table.description }}
> <details>
> <summary>read the caption</summary>
> {{ table.caption }}
> </details>


> This table compares the performance of different training strategies for PointTransformerV3 and MinkowskiNet models on the ScanNet20 dataset, highlighting the benefits of large-scale pre-training with automatically generated labels.


{{< table-caption >}}
<table id='2' style='font-size:14px'><tr><td>Method</td><td>Training Data</td><td>val</td><td>test</td></tr><tr><td colspan="4">MinkUNet [7]</td></tr><tr><td>vanilla</td><td>ScanNet200</td><td>29.3</td><td>25.3</td></tr><tr><td>fine-tune (Ours)</td><td>ALS200 → ScanNet200</td><td>30.1</td><td>27.4</td></tr><tr><td>co-training (Ours)</td><td>ALS200 + ScanNet200</td><td>30.6</td><td>-</td></tr><tr><td colspan="4">PTv3 [36]</td></tr><tr><td>vanilla</td><td>ScanNet200</td><td>35.2</td><td>37.8</td></tr><tr><td>fine-tune (Ours)</td><td>ALS200 → ScanNet200</td><td>38.4</td><td>-</td></tr><tr><td>fine-tune (Ours)</td><td>ALC200 → ScanNet200</td><td>38.7</td><td>38.4</td></tr><tr><td>PPT [36]</td><td>ScanNet200 + S3DIS + Structure3D → ScanNet200</td><td>36.0</td><td>39.3</td></tr><tr><td>PPT(Ours)</td><td>ScanNet+ ScanNet200 + ScanNet++ + Structure3D + ALC</td><td>40.3</td><td>41.4</td></tr></table>{{< /table-caption >}}
> 🔼 {{ table.description }}
> <details>
> <summary>read the caption</summary>
> {{ table.caption }}
> </details>


> Table 3 compares different training strategies for two top-performing models (PointTransformerv3 [36] and MinkowskiNet [7]) on the ScanNet200 dataset, showing the performance improvement by adding ALS200 through pre-training and co-training.


{{< table-caption >}}
<br><table id='8' style='font-size:14px'><tr><td>PTv3 Variant</td><td>Training Data</td><td>#Data</td><td>val mloU</td><td>test top-1/3 ml⌀U</td></tr><tr><td>vanilla</td><td>ScanNet++</td><td>713</td><td>41.8</td><td>45.8/69.7</td></tr><tr><td>fine-tune (Ours)</td><td>ALC200 → ScanNet++</td><td>4471 → 713</td><td>42.5</td><td>43.7/65.5</td></tr><tr><td>PPT [36]</td><td>ScanNet200 + ScanNet++ + Structure3D</td><td>45868</td><td>45.31</td><td>46.5/71.1</td></tr><tr><td>PPT (Ours)</td><td>ScanNet200 + ScanNet++ + ALC</td><td>11168</td><td>44.5</td><td>46.1/70.8</td></tr><tr><td>PPT (Ours)</td><td>ScanNet+ ScanNet200 + ScanNet++ + Structure3D + ALC</td><td>30386</td><td>44.6</td><td>46.1 / 68.5</td></tr></table>{{< /table-caption >}}
> 🔼 {{ table.description }}
> <details>
> <summary>read the caption</summary>
> {{ table.caption }}
> </details>


> Table 4 presents the semantic segmentation scores on the ScanNet++ benchmark, comparing different training strategies (pre-training and joint training) and datasets.


{{< table-caption >}}
<table id='6' style='font-size:14px'><tr><td>Method</td><td>Training Data</td><td>head</td><td>Validation common</td><td>tail</td><td>head</td><td>Test common</td><td>tail</td></tr><tr><td colspan="8">MinkUNet [7]</td></tr><tr><td>vanilla</td><td>ScanNet200</td><td>52.3</td><td>22.5</td><td>13.2</td><td>46.3</td><td>15.4</td><td>10.2</td></tr><tr><td>fine-tune (Ours)</td><td>ALS200 → ScanNet200</td><td>53.9</td><td>24.2</td><td>12.5</td><td>49.0</td><td>19.4</td><td>9.4</td></tr><tr><td>co-training (Ours)</td><td>ALS200 + ScanNet200</td><td>55.1</td><td>24.7</td><td>12.4</td><td>■</td><td>-</td><td>■</td></tr><tr><td colspan="8">PTv3 [36]</td></tr><tr><td>vanilla</td><td>ScanNet200</td><td>56.5</td><td>30.1</td><td>19.3</td><td>·</td><td>·</td><td></td></tr><tr><td>fine-tune (Ours)</td><td>ALS200 → ScanNet200</td><td>58.6</td><td>33.0</td><td>23.8</td><td>·</td><td>·</td><td>·</td></tr><tr><td>fine-tune (Ours)</td><td>ALC200 → ScanNet200</td><td>58.2</td><td>33.1</td><td>25.0</td><td>58.2</td><td>30.9</td><td>22.2</td></tr><tr><td>PPT [36]</td><td>ScanNet200 + S3DIS + Structure3D → ScanNet200</td><td>■</td><td>■</td><td>-</td><td>59.2</td><td>33.0</td><td>21.6</td></tr><tr><td>PPT(Ours)</td><td>ScanNet+ ScanNet200 + ScanNet++ + Structure3D + ALC</td><td>60.9</td><td>35.48</td><td>24.6</td><td>61.0</td><td>32.2</td><td>27.1</td></tr></table>{{< /table-caption >}}
> 🔼 {{ table.description }}
> <details>
> <summary>read the caption</summary>
> {{ table.caption }}
> </details>


> Table B1 shows the performance of different models on ScanNet200 dataset, categorized by head, common, and tail classes, demonstrating the effectiveness of ARKit LabelMaker pre-training.


{{< table-caption >}}
<table id='0' style='font-size:14px'><tr><td>Task</td><td>#CPU</td><td>RAM</td><td>Time</td><td>GPU</td></tr><tr><td>Download & Prepossessing</td><td>2</td><td>24G</td><td>4h</td><td>-</td></tr><tr><td>Video Rendering</td><td>8</td><td>32G</td><td>30min</td><td>-</td></tr><tr><td>Grounded-SAM</td><td>2</td><td>12G</td><td>6h</td><td>3090 x1</td></tr><tr><td>OVSeg</td><td>2</td><td>8G</td><td>8h</td><td>3090 x1</td></tr><tr><td>InternImage</td><td>2</td><td>10G</td><td>8h</td><td>3090 x1</td></tr><tr><td>Mask3D</td><td>8</td><td>16G</td><td>1h 30min</td><td>3090 x1</td></tr><tr><td>OmniData</td><td>8</td><td>8G</td><td>2h</td><td>3090 x1</td></tr><tr><td>HHA</td><td>18</td><td>9G</td><td>2h</td><td>-</td></tr><tr><td>CMX</td><td>2</td><td>8G</td><td>3h</td><td>3090 x1</td></tr><tr><td>Consensus</td><td>16</td><td>16G</td><td>2h</td><td>-</td></tr><tr><td>Point Lifting</td><td>2</td><td>72G</td><td>4h</td><td></td></tr></table>{{< /table-caption >}}
> 🔼 {{ table.description }}
> <details>
> <summary>read the caption</summary>
> {{ table.caption }}
> </details>


> Table 1 shows the size of different datasets used for training and evaluation in the paper, highlighting the significantly larger size of the ARKit LabelMaker dataset compared to existing ones.


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
{{< /gallery >}}