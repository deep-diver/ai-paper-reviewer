---
title: "Strong Baseline: Multi-UAV Tracking via YOLOv12 with BoT-SORT-ReID"
summary: "Presents a strong baseline for multi-UAV tracking in thermal infrared video using YOLOv12 and BoT-SORT, achieving competitive results without complex enhancements."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Computer Vision", "Object Detection", "🏢 University of Melbourne",]
showSummary: true
date: 2025-03-21
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2503.17237 {{< /keyword >}}
{{< keyword icon="writer" >}} Yu-Hsi Chen et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-03-26 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2503.17237" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2503.17237" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2503.17237/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Multi-UAV tracking in thermal infrared video is challenging due to low contrast and noise. Existing methods often involve complex enhancements. This paper addresses the challenge by introducing a straightforward approach, leveraging recent advances in object detection and tracking algorithms. Instead of YOLOv5 and DeepSORT, it uses YOLOv12 with BoT-SORT.



The paper establishes a baseline using **YOLOv12 and BoT-SORT for multi-UAV tracking**, with tailored training strategies. The approach achieves competitive performance without relying on contrast enhancement or temporal information fusion. The study analyzes the impact of input image size and tracker buffer tuning to enhance multi-UAV tracking performance.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} YOLOv12 and BoT-SORT offer a strong baseline for multi-UAV tracking in thermal infrared video. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} Careful data splitting and resolution scaling are crucial for optimal performance. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} The study provides valuable insights into the impact of different components and configurations on tracking accuracy. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper offers a **strong, easily implementable baseline** for thermal multi-UAV tracking. It highlights the impact of individual components and offers insights for future improvements, potentially informing future research on UAV tracking, especially in challenging conditions.

------
#### Visual Insights



![](https://arxiv.org/html/2503.17237/x1.png)

> 🔼 Figure 1 demonstrates examples from the Multi-UAV tracking dataset, specifically focusing on Track 3.  Part (a) showcases the diversity in UAV swarm sizes and background complexity present within the training data. Part (b) highlights common issues encountered in the dataset, such as annotation errors (incorrect, redundant, or missing labels) and poor image quality, illustrating the challenges involved in multi-UAV tracking.
> <details>
> <summary>read the caption</summary>
> Figure 1: Demonstration using training and testing data from Track 3. (a) Shows UAV swarms with varying sizes and backgrounds in the training data. (b) Highlights annotation errors and frame defects: MultiUAV-230 (train) has incorrect annotations, MultiUAV-256 (train) contains redundant annotations, MultiUAV-294 (train) has missed annotations, and MultiUAV-068 (test) includes a poor-quality frame.
> </details>







### In-depth insights


#### Thermal UAV MOT
Thermal UAV MOT (Multi-Object Tracking) presents unique challenges due to factors like **low contrast, environmental noise, and small UAV sizes** in thermal infrared imagery. Existing MOT methods often struggle with these conditions, requiring specialized algorithms. Effective thermal UAV MOT is crucial for security and surveillance applications where RGB-based methods may fail. Research focuses on developing robust tracking algorithms resilient to noise, occlusions, and varying UAV sizes. Enhancements often involve spatial information enrichment, temporal modeling, and real-time optimization for efficient tracking. A good Thermal UAV MOT needs algorithms for handling detection failures, ID switches, and maintaining track continuity. Future progress relies on high-quality datasets, improved feature extraction, and robust association techniques.

#### YOLOv12+BoT-SORT
The integration of YOLOv12 with BoT-SORT represents a significant advancement in multi-object tracking, particularly for UAV applications. **YOLOv12's enhanced detection capabilities**, stemming from its novel architecture like R-ELAN and attention mechanisms, enable robust identification of UAVs, even in challenging conditions. **BoT-SORT's tracking prowess**, combining Kalman Filtering and camera motion compensation, ensures smooth trajectory estimation. **The ReID module**, crucial for identity preservation across frames, further boosts tracking accuracy. The synergy between YOLOv12's accurate detections and BoT-SORT's sophisticated tracking algorithms forms a powerful pipeline for real-time UAV tracking.

#### SOT Data Tuning
While the provided text doesn't explicitly have a section titled "SOT Data Tuning," we can infer strategies related to single-object tracking (SOT) data preparation and its impact. A key aspect involves **data splitting for training, validation, and testing**, ensuring no overlap between test sets of different tracks, as mentioned in the paper. This is crucial to prevent overfitting. The paper emphasizes **removing redundant or defective annotations** and addresses challenges like varying UAV sizes by noting width, height, and area distributions, which aids in model hyperparameter tuning. The data preparation affects detector and tracker performances.

#### Image Enhancing
Although 'Image Enhancing' isn't explicitly a heading, I can infer potential techniques relevant to thermal UAV tracking from the paper's context. Given the challenges of **low contrast and environmental noise** in thermal imagery, edge sharpening (e.g., Sobel) could enhance UAV visibility.  CLAHE (Contrast Limited Adaptive Histogram Equalization) might improve contrast in cluttered scenes. Also, there could be ReynoldFlow-based temporal enhancements that exploit inter-frame motion to better detect UAVs, especially small or occluded ones. Applying these methods can address the limitations of YOLOv12 and BoT-SORT, potentially leading to improved detection and tracking accuracy compared to the current strong baseline, and overall robustness under challenging conditions.

#### Overfitting Risks
**Overfitting** is a significant concern, especially with limited datasets. Techniques like **data augmentation** can mitigate this by artificially increasing the training set's size and variability. The paper highlights a risk of **overfitting due to the data-splitting strategy**, and directly splitting the dataset into training, validation, and testing sets, occasionally allowing frames from the same video to appear across splits. To avoid this, videos could be categorized by attributes such as fixed-camera setups or background types. Using **cross-validation** techniques could also help in assessing the model's ability to generalize to unseen data. **Regularization methods**, such as L1 or L2 regularization, can penalize complex models and prevent them from memorizing the training data. Additionally, **early stopping** could be used by monitoring the model's performance on a validation set and stopping the training process when the validation loss starts to increase, preventing further overfitting. Moreover, **ensemble methods** can be considered such as training multiple models with slight variations, can also reduce overfitting.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2503.17237/x2.png)

> 🔼 Figure 2 shows example image crops from the training dataset bounding boxes.  Each set of crops shows the same UAV (identified by the same ID) across 12 consecutive frames from four different training videos: MultiUAV-002, MultiUAV-013, MultiUAV-087, and MultiUAV-223.  The figure highlights the variability in UAV size within the dataset, ranging from approximately 28x24 pixels to as small as 6x6 pixels.  This illustrates the challenge of detecting and tracking small UAVs in the thermal infrared videos.
> <details>
> <summary>read the caption</summary>
> Figure 2: Illustration of cropped image patches from training data annotations. Each patch corresponds to a bounding box from MultiUAV-002, MultiUAV-013, MultiUAV-087, and MultiUAV-223, with sizes approximately 28×24282428\times 2428 × 24, 10×10101010\times 1010 × 10, 6×6666\times 66 × 6, and 11×10111011\times 1011 × 10, respectively. The top number denotes the frame sequence (1st to 12th frames), and each row represents the same object (same ID across frames).
> </details>



![](https://arxiv.org/html/2503.17237/x3.png)

> 🔼 This figure illustrates the workflow of the multi-UAV tracking system using YOLOv12, BoT-SORT, and SBS-S50.  It shows how the system processes each frame, from detection using YOLOv12n to tracking and managing tracks using BoT-SORT. The diagram highlights a key modification: the incorporation of 'lost tracks' to handle frames where objects might be missed due to occlusion or poor image quality. This improves tracking continuity, especially for Tracks 1 and 2, by using information about lost targets to infer potential object locations. Track 3, however, uses the standard BoT-SORT output.
> <details>
> <summary>read the caption</summary>
> Figure 3: YOLOv12n with BoT-SORT-SBS-S50 workflow diagram. The workflow follows the original BoT-SORT framework [1], with a slight revision: incorporating lost tracks to compensate for uninformative frames and improve object continuity. Specifically, for Track 1 and Track 2, lost target information is used to annotate potential object locations, while Track 3 retains the BoT-SORT original output.
> </details>



![](https://arxiv.org/html/2503.17237/x4.png)

> 🔼 Figure 4 showcases the performance of the YOLOv12n object detection model combined with the BoT-SORT-SBS-S50 tracking algorithm on Track 3 of the anti-UAV dataset.  Part (a) displays the predicted bounding boxes with their assigned IDs. Part (b) highlights several challenging scenarios encountered during testing, including instances of overlapping UAVs, occlusion, misclassification (a flying creature mistaken for a UAV), complex background interference leading to ID misassignments, and near-invisible UAVs resulting in missed detections and tracking failures. Heatmaps in the bottom row further illustrate the model's struggles with UAV perception, particularly in difficult conditions.
> <details>
> <summary>read the caption</summary>
> Figure 4: Demonstration of YOLOv12n with BoT-SORT-SBS-S50 predictions on Track 3 test data. (a) Predicted bounding boxes with object IDs. (b) Challenging scenarios: MultiUAV-0003 contains multiple overlapping UAVs; MultiUAV-135 includes an occluded UAV (red box, ID: 29) and a flying creature misclassified as a UAV (pink box, ID: 28); MultiUAV-173 features a complex background, where IDs 16, 17, and 18 are misjudgments; and MultiUAV-261 presents nearly invisible UAVs, leading to missed detections and tracking failures. The last row presents heatmaps highlighting the model’s difficulty in UAV perception, especially in MultiUAV-261.
> </details>



![](https://arxiv.org/html/2503.17237/x5.png)

> 🔼 Figure 5 demonstrates various image enhancement techniques applied to a thermal infrared video frame (MultiUAV-262) to improve multi-UAV tracking.  The original frame is shown alongside three enhanced versions: one using Sobel edge-based sharpening to highlight edges, another employing Contrast Limited Adaptive Histogram Equalization (CLAHE) to enhance contrast, and a final version using ReynoldsFlow+ to visualize motion patterns for better UAV detection.  These enhancements aim to address challenges in thermal infrared video such as low contrast and small object sizes.
> <details>
> <summary>read the caption</summary>
> Figure 5: Potential frame enhancement techniques for multi-UAV tracking on a MultiUAV-262 video frame. From left to right: (1) original thermal infrared frame, (2) Sobel edge-based sharpening [10], (3) contrast enhancement via Contrast Limited Adaptive Histogram Equalization (CLAHE) [28], and (4) ReynoldsFlow+ visualization highlighting motion patterns to assist UAV detection [4].
> </details>



</details>






### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2503.17237/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.17237/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.17237/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.17237/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.17237/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.17237/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.17237/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.17237/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.17237/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.17237/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}