---
title: "Frequency Dynamic Convolution for Dense Image Prediction"
summary: "FDConv: Adaptable convolution via frequency domain learning, enhancing performance without heavy parameter cost."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Computer Vision", "Image Segmentation", "🏢 Beijing Institute of Technology",]
showSummary: true
date: 2025-03-24
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2503.18783 {{< /keyword >}}
{{< keyword icon="writer" >}} Linwei Chen et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-03-26 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2503.18783" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2503.18783" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2503.18783/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

**Dynamic Convolution (DY-Conv)** enhances adaptive weight selection but suffers from limited adaptability and high parameter costs due to similarity in frequency responses. Existing dynamic convolution lacks the ability to adaptively capture features across different frequency bands. This limitation reduces the flexibility of dynamic convolution.  



This paper introduces **Frequency Dynamic Convolution (FDConv)**, learning in the Fourier domain with a fixed parameter budget. It divides this budget into frequency-based groups with disjoint Fourier indices. **FDConv** constructs multiple weights with diversified frequency responses. It includes Kernel Spatial Modulation (KSM) and Frequency Band Modulation (FBM) to enhance flexibility and improve convolution.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} FDConv uses frequency-based groups in the Fourier domain, enabling frequency-diverse weights. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} Kernel Spatial Modulation (KSM) dynamically adjusts the frequency response of each filter at the spatial level. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Frequency Band Modulation (FBM) modulates weights dynamically based on local content. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper introduces **a novel convolution method using frequency analysis** which could inspire new network designs. The method achieves SOTA results on various vision tasks. It provides **an efficient and versatile solution** that researchers could leverage across diverse applications.

------
#### Visual Insights





{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S0.F1.1.1">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S0.F1.1.1.1">
<td class="ltx_td ltx_align_center" id="S0.F1.1.1.1.1">
<img alt="Refer to caption" class="ltx_graphics ltx_img_square" height="676" id="S0.F1.1.1.1.1.g1" src="x1.png" width="830"/>
</td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 Table 1 presents a comparison of the performance of various object detection models on the COCO validation dataset.  The models compared include several versions of Dynamic Convolution approaches (CondConv, DY-Conv, DCD, ODConv) and the proposed FDConv model.  The table shows the number of parameters (in millions), floating point operations (in billions), and mean Average Precision (AP) scores for both bounding boxes (APbox) and masks (Apmask). For each dynamic convolution method, the table specifies how many times larger its convolutional parameter budget is compared to a standard convolution in the base model (e.g., 4x means four times the parameters).  This allows for a direct comparison of efficiency and performance gains of different dynamic convolution techniques against standard convolutions.
> <details>
> <summary>read the caption</summary>
> Table 1:  Results comparison on the COCO validation set [42]. The numbers in brackets indicate the parameters of the backbone. Additionally, the notation n×n\timesitalic_n × denotes the convolutional parameter budget of each dynamic convolution relative to the standard convolution in the backbone.
> </details>





### In-depth insights


#### Freq. Adaptability
**Frequency adaptability** in neural networks refers to the ability of a network to dynamically adjust its sensitivity to different frequency components of the input data. This is crucial because real-world signals often contain information distributed across a wide spectrum of frequencies, and the importance of each frequency band can vary depending on the task. Networks with high frequency adaptability can selectively emphasize or suppress certain frequencies, allowing them to **focus on the most relevant information** and **filter out noise**. This can lead to improved performance, especially in tasks involving complex or noisy data. Methods for achieving frequency adaptability often involve learning mechanisms that modulate the network's response to different frequency bands, such as adaptive filters or attention mechanisms. Such adaptability enhances the network's robustness and generalization capabilities. It leads to **efficient representation learning**, as the network can allocate resources to capture the most informative frequency components while ignoring irrelevant ones.

#### Fourier Weights
Analyzing "Fourier Weights," it is evident that this concept likely pertains to manipulating image data in the frequency domain. This suggests leveraging the **Fourier transform** to decompose images into their constituent frequencies, enabling targeted modifications such as noise reduction via low-frequency filtering or edge enhancement through high-frequency emphasis. A core challenge lies in designing effective **weighting schemes** that selectively amplify or attenuate specific frequency components without introducing artifacts. The success of "Fourier Weights" hinges on understanding the interplay between spatial and frequency representations, and how manipulating one affects the other. This necessitates careful consideration of windowing functions to mitigate spectral leakage and efficient algorithms for computing the Fourier transform, particularly in the context of large images. Furthermore, adaptive strategies that dynamically adjust weights based on image content could significantly enhance performance.

#### Spatial Modulate
Spatial modulation techniques, particularly Kernel Spatial Modulation (KSM) and Frequency Band Modulation (FBM), represent a shift towards **spatially adaptive convolutional operations**. KSM enhances flexibility by adjusting the frequency response of each filter at the spatial level, combining local and global channel information to create a dense matrix of modulation values. FBM, on the other hand, decomposes weights into distinct frequency bands, enabling spatially variant frequency modulation. This allows each frequency band to be adjusted independently across spatial locations, deviating from traditional dynamic convolutions with fixed frequency responses. The essence of spatial modulation lies in enabling **location-specific adjustments of convolutional filters**, leading to more adaptable and context-aware feature extraction. This helps the model in suppressing feature noise while also capturing boundary details to improve the model's performance.

#### FBM Analysis
While there's no explicit "FBM Analysis" section in the provided paper, we can infer insights based on the Frequency Band Modulation (FBM) discussion. The core idea revolves around **adapting convolutional kernels to spatially varying content by decomposing them into frequency bands.** The paper visualizes modulation maps, showing how **higher frequency bands emphasize object boundaries, while lower frequencies highlight internal object regions.** This selective modulation aids in **suppressing background noise and enhancing foreground features.** Thus, it leads to more precise representations beneficial for dense prediction tasks. **The FBM technique effectively bridges the gap between frequency-adaptive weight decomposition and multi-band feature processing**, offering implementation flexibility. The approach allows for either weight or feature manipulation based on computational constraints, maintaining mathematical equivalence via Fourier duality.

#### ConvNet Enhance
**ConvNet Enhancement** techniques are pivotal for advancing deep learning in computer vision. These methods aim to improve the performance, efficiency, and robustness of Convolutional Neural Networks (CNNs). Key areas of focus include architectural innovations like residual connections and dense connections, which address the vanishing gradient problem and enable the training of deeper networks. Attention mechanisms, such as Squeeze-and-Excitation networks and transformers, allow CNNs to focus on the most relevant features in an image, enhancing representational power. Another enhancement strategy involves exploring different convolution operations, such as dilated convolutions and deformable convolutions, to better capture spatial relationships and handle variations in object scale and shape. Additionally, network pruning and quantization techniques are employed to reduce the computational cost and memory footprint of CNNs, making them more suitable for deployment on resource-constrained devices. Data augmentation and regularization methods are crucial for preventing overfitting and improving the generalization ability of CNNs. Furthermore, transfer learning and fine-tuning pre-trained CNNs on new datasets can significantly accelerate training and improve performance, especially when dealing with limited data. These various enhancement techniques collectively contribute to the ongoing evolution and widespread adoption of ConvNets in a wide range of computer vision applications.


### More visual insights




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S1.F2.1.1">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S1.F2.1.1.1">
<td class="ltx_td ltx_align_center" id="S1.F2.1.1.1.1"><img alt="Refer to caption" class="ltx_graphics ltx_img_landscape" height="294" id="S1.F2.1.1.1.1.g1" src="x2.png" width="814"/></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 Table 2 presents a quantitative comparison of different methods for semantic segmentation on the ADE20K dataset.  The comparison focuses on models using the UPerNet architecture [70] and evaluates their performance on the validation set of ADE20K.  Metrics reported include the mean Intersection over Union (mIoU) for both single-scale (SS) and multi-scale (MS) predictions, along with the number of model parameters (Params) and floating point operations (FLOPs).  This allows for a direct comparison of accuracy and efficiency between different approaches.
> <details>
> <summary>read the caption</summary>
> Table 2:  Quantitative comparisons on semantic segmentation tasks with UPerNet [70] on the ADE20K validation set.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S3.F3.1.1">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S3.F3.1.1.1">
<td class="ltx_td ltx_align_center" id="S3.F3.1.1.1.1">
<img alt="Refer to caption" class="ltx_graphics ltx_img_landscape" height="280" id="S3.F3.1.1.1.1.g1" src="x3.png" width="831"/>
</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a comparison of object detection and instance segmentation performance on the COCO dataset using the Mask R-CNN detector.  The results showcase the performance of several models, including a baseline ConvNeXt-T model and variants incorporating the proposed FDConv module.  The models are trained using a standard 1x schedule for fair comparison, and the table lists the number of parameters, FLOPS (floating-point operations per second), APbox (average precision for bounding boxes), and Apmask (average precision for masks) for each model. The data provides insights into the efficiency and accuracy gains achieved by integrating FDConv into various architectures.
> <details>
> <summary>read the caption</summary>
> Table 3:  Object detection and instance segmentation performance on the COCO dataset [42] with the Mask R-CNN detector [22]. All models are trained with a 1×\times× schedule [21, 68].
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S3.F4.1.1">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S3.F4.1.1.1">
<td class="ltx_td ltx_align_center" id="S3.F4.1.1.1.1">
<img alt="Refer to caption" class="ltx_graphics ltx_img_landscape" height="297" id="S3.F4.1.1.1.1.g1" src="x4.png" width="812"/>
</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a comparison of semantic segmentation performance on the Cityscapes dataset [10] using the Mask2Former model [8].  It shows the mIoU (mean Intersection over Union) scores achieved by the Mask2Former model with a ResNet-50 backbone and the same model enhanced with the proposed FDConv method. The table highlights the improvement in mIoU resulting from the addition of FDConv.
> <details>
> <summary>read the caption</summary>
> Table 4:  Semantic segmentation results on Cityscapes [10] using the recent state-of-the-art Mask2Former [8].
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S4.T1.13.11">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T1.4.2.2">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_tt" id="S4.T1.4.2.2.3">Models</td>
<td class="ltx_td ltx_align_right ltx_border_r ltx_border_tt" id="S4.T1.4.2.2.4">Params</td>
<td class="ltx_td ltx_align_right ltx_border_r ltx_border_tt" id="S4.T1.4.2.2.5">FLOPs</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S4.T1.3.1.1.1"><span class="ltx_text" id="S4.T1.3.1.1.1.1" style="font-size:80%;">AP<sup class="ltx_sup" id="S4.T1.3.1.1.1.1.1"><span class="ltx_text ltx_font_italic" id="S4.T1.3.1.1.1.1.1.1">box</span></sup></span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T1.4.2.2.2"><span class="ltx_text" id="S4.T1.4.2.2.2.1" style="font-size:80%;">AP<sup class="ltx_sup" id="S4.T1.4.2.2.2.1.1"><span class="ltx_text ltx_font_italic" id="S4.T1.4.2.2.2.1.1.1">mask</span></sup></span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.5.3.3">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S4.T1.5.3.3.2"><span class="ltx_text ltx_font_italic" id="S4.T1.5.3.3.2.1">Faster R-CNN</span></td>
<td class="ltx_td ltx_align_right ltx_border_r ltx_border_t" id="S4.T1.5.3.3.1">43.80<sub class="ltx_sub" id="S4.T1.5.3.3.1.1"><span class="ltx_text ltx_font_italic" id="S4.T1.5.3.3.1.1.1">(23.5)</span></sub>M</td>
<td class="ltx_td ltx_align_right ltx_border_r ltx_border_t" id="S4.T1.5.3.3.3">207.1G</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.5.3.3.4">37.2</td>
<td class="ltx_td ltx_border_t" id="S4.T1.5.3.3.5"></td>
</tr>
<tr class="ltx_tr" id="S4.T1.6.4.4">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S4.T1.6.4.4.1">+ CondConv<span class="ltx_text" id="S4.T1.6.4.4.1.1" style="font-size:50%;color:#808080;">[NIPS2019]</span> (8<math alttext="\times" class="ltx_Math" display="inline" id="S4.T1.6.4.4.1.m1.1"><semantics id="S4.T1.6.4.4.1.m1.1a"><mo id="S4.T1.6.4.4.1.m1.1.1" xref="S4.T1.6.4.4.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T1.6.4.4.1.m1.1b"><times id="S4.T1.6.4.4.1.m1.1.1.cmml" xref="S4.T1.6.4.4.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.6.4.4.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T1.6.4.4.1.m1.1d">×</annotation></semantics></math>) <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.18783v2#bib.bib73" title=""><span class="ltx_text" style="font-size:90%;">73</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_right ltx_border_r ltx_border_t" id="S4.T1.6.4.4.2">+90.0M</td>
<td class="ltx_td ltx_align_right ltx_border_r ltx_border_t" id="S4.T1.6.4.4.3">+0.01G</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.6.4.4.4">38.1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.6.4.4.5">-</td>
</tr>
<tr class="ltx_tr" id="S4.T1.7.5.5">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T1.7.5.5.1">+ DY-Conv<span class="ltx_text" id="S4.T1.7.5.5.1.1" style="font-size:50%;color:#808080;">[ICLR2022]</span> (4<math alttext="\times" class="ltx_Math" display="inline" id="S4.T1.7.5.5.1.m1.1"><semantics id="S4.T1.7.5.5.1.m1.1a"><mo id="S4.T1.7.5.5.1.m1.1.1" xref="S4.T1.7.5.5.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T1.7.5.5.1.m1.1b"><times id="S4.T1.7.5.5.1.m1.1.1.cmml" xref="S4.T1.7.5.5.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.7.5.5.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T1.7.5.5.1.m1.1d">×</annotation></semantics></math>) <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.18783v2#bib.bib63" title=""><span class="ltx_text" style="font-size:90%;">63</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_right ltx_border_r" id="S4.T1.7.5.5.2">+75.3M</td>
<td class="ltx_td ltx_align_right ltx_border_r" id="S4.T1.7.5.5.3">+0.16G</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.7.5.5.4">38.3</td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.5.5.5">-</td>
</tr>
<tr class="ltx_tr" id="S4.T1.13.11.12.1">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T1.13.11.12.1.1">+ DCD<span class="ltx_text" id="S4.T1.13.11.12.1.1.1" style="font-size:50%;color:#808080;">[ICLR2021]</span> <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.18783v2#bib.bib37" title=""><span class="ltx_text" style="font-size:90%;">37</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_right ltx_border_r" id="S4.T1.13.11.12.1.2">+4.3M</td>
<td class="ltx_td ltx_align_right ltx_border_r" id="S4.T1.13.11.12.1.3">+0.13G</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.13.11.12.1.4">38.1</td>
<td class="ltx_td" id="S4.T1.13.11.12.1.5"></td>
</tr>
<tr class="ltx_tr" id="S4.T1.8.6.6">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T1.8.6.6.1">+ ODConv<span class="ltx_text" id="S4.T1.8.6.6.1.1" style="font-size:50%;color:#808080;">[ICLR2022]</span> (4<math alttext="\times" class="ltx_Math" display="inline" id="S4.T1.8.6.6.1.m1.1"><semantics id="S4.T1.8.6.6.1.m1.1a"><mo id="S4.T1.8.6.6.1.m1.1.1" xref="S4.T1.8.6.6.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T1.8.6.6.1.m1.1b"><times id="S4.T1.8.6.6.1.m1.1.1.cmml" xref="S4.T1.8.6.6.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.8.6.6.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T1.8.6.6.1.m1.1d">×</annotation></semantics></math>) <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.18783v2#bib.bib32" title=""><span class="ltx_text" style="font-size:90%;">32</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_right ltx_border_r" id="S4.T1.8.6.6.2">+65.1M</td>
<td class="ltx_td ltx_align_right ltx_border_r" id="S4.T1.8.6.6.3">+0.35G</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.8.6.6.4">39.2</td>
<td class="ltx_td ltx_align_center" id="S4.T1.8.6.6.5">-</td>
</tr>
<tr class="ltx_tr" id="S4.T1.13.11.13.2" style="background-color:#E8E8E8;">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S4.T1.13.11.13.2.1"><span class="ltx_text" id="S4.T1.13.11.13.2.1.1" style="background-color:#E8E8E8;">+ FDConv (Ours)</span></td>
<td class="ltx_td ltx_align_right ltx_border_r ltx_border_t" id="S4.T1.13.11.13.2.2"><span class="ltx_text" id="S4.T1.13.11.13.2.2.1" style="background-color:#E8E8E8;">+3.6M</span></td>
<td class="ltx_td ltx_align_right ltx_border_r ltx_border_t" id="S4.T1.13.11.13.2.3"><span class="ltx_text" id="S4.T1.13.11.13.2.3.1" style="background-color:#E8E8E8;">+1.8G</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.13.11.13.2.4"><span class="ltx_text ltx_font_bold" id="S4.T1.13.11.13.2.4.1" style="background-color:#E8E8E8;">39.4</span></td>
<td class="ltx_td ltx_border_t" id="S4.T1.13.11.13.2.5"></td>
</tr>
<tr class="ltx_tr" id="S4.T1.9.7.7">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S4.T1.9.7.7.2"><span class="ltx_text ltx_font_italic" id="S4.T1.9.7.7.2.1">Mask R-CNN</span></td>
<td class="ltx_td ltx_align_right ltx_border_r ltx_border_t" id="S4.T1.9.7.7.1">46.5<sub class="ltx_sub" id="S4.T1.9.7.7.1.1"><span class="ltx_text ltx_font_italic" id="S4.T1.9.7.7.1.1.1">(23.5)</span></sub>M</td>
<td class="ltx_td ltx_align_right ltx_border_r ltx_border_t" id="S4.T1.9.7.7.3">260.1</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.9.7.7.4">39.6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.9.7.7.5">36.4</td>
</tr>
<tr class="ltx_tr" id="S4.T1.10.8.8">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S4.T1.10.8.8.1">+ DY-Conv<span class="ltx_text" id="S4.T1.10.8.8.1.1" style="font-size:50%;color:#808080;">[CVPR2020]</span> (4<math alttext="\times" class="ltx_Math" display="inline" id="S4.T1.10.8.8.1.m1.1"><semantics id="S4.T1.10.8.8.1.m1.1a"><mo id="S4.T1.10.8.8.1.m1.1.1" xref="S4.T1.10.8.8.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T1.10.8.8.1.m1.1b"><times id="S4.T1.10.8.8.1.m1.1.1.cmml" xref="S4.T1.10.8.8.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.10.8.8.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T1.10.8.8.1.m1.1d">×</annotation></semantics></math>) <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.18783v2#bib.bib63" title=""><span class="ltx_text" style="font-size:90%;">63</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_right ltx_border_r ltx_border_t" id="S4.T1.10.8.8.2">+75.3M</td>
<td class="ltx_td ltx_align_right ltx_border_r ltx_border_t" id="S4.T1.10.8.8.3">+0.16G</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.10.8.8.4">39.6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.10.8.8.5">36.6</td>
</tr>
<tr class="ltx_tr" id="S4.T1.11.9.9">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T1.11.9.9.1">+ ODConv<span class="ltx_text" id="S4.T1.11.9.9.1.1" style="font-size:50%;color:#808080;">[ICLR2022]</span> (4<math alttext="\times" class="ltx_Math" display="inline" id="S4.T1.11.9.9.1.m1.1"><semantics id="S4.T1.11.9.9.1.m1.1a"><mo id="S4.T1.11.9.9.1.m1.1.1" xref="S4.T1.11.9.9.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T1.11.9.9.1.m1.1b"><times id="S4.T1.11.9.9.1.m1.1.1.cmml" xref="S4.T1.11.9.9.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.11.9.9.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T1.11.9.9.1.m1.1d">×</annotation></semantics></math>) <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.18783v2#bib.bib32" title=""><span class="ltx_text" style="font-size:90%;">32</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_right ltx_border_r" id="S4.T1.11.9.9.2">+65.1M</td>
<td class="ltx_td ltx_align_right ltx_border_r" id="S4.T1.11.9.9.3">+0.35G</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.11.9.9.4">42.1</td>
<td class="ltx_td ltx_align_center" id="S4.T1.11.9.9.5">38.6</td>
</tr>
<tr class="ltx_tr" id="S4.T1.12.10.10">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T1.12.10.10.1">+ KW<span class="ltx_text" id="S4.T1.12.10.10.1.1" style="font-size:50%;color:#808080;">[ICML2024]</span> (1<math alttext="\times" class="ltx_Math" display="inline" id="S4.T1.12.10.10.1.m1.1"><semantics id="S4.T1.12.10.10.1.m1.1a"><mo id="S4.T1.12.10.10.1.m1.1.1" xref="S4.T1.12.10.10.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T1.12.10.10.1.m1.1b"><times id="S4.T1.12.10.10.1.m1.1.1.cmml" xref="S4.T1.12.10.10.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.12.10.10.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T1.12.10.10.1.m1.1d">×</annotation></semantics></math>) <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.18783v2#bib.bib31" title=""><span class="ltx_text" style="font-size:90%;">31</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_right ltx_border_r" id="S4.T1.12.10.10.2">+2.5M</td>
<td class="ltx_td ltx_align_right ltx_border_r" id="S4.T1.12.10.10.3">-</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.12.10.10.4">41.8</td>
<td class="ltx_td ltx_align_center" id="S4.T1.12.10.10.5">38.4</td>
</tr>
<tr class="ltx_tr" id="S4.T1.13.11.11">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T1.13.11.11.1">+ KW<span class="ltx_text" id="S4.T1.13.11.11.1.1" style="font-size:50%;color:#808080;">[ICML2024]</span> (4<math alttext="\times" class="ltx_Math" display="inline" id="S4.T1.13.11.11.1.m1.1"><semantics id="S4.T1.13.11.11.1.m1.1a"><mo id="S4.T1.13.11.11.1.m1.1.1" xref="S4.T1.13.11.11.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T1.13.11.11.1.m1.1b"><times id="S4.T1.13.11.11.1.m1.1.1.cmml" xref="S4.T1.13.11.11.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.13.11.11.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T1.13.11.11.1.m1.1d">×</annotation></semantics></math>) <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.18783v2#bib.bib31" title=""><span class="ltx_text" style="font-size:90%;">31</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_right ltx_border_r" id="S4.T1.13.11.11.2">+76.5M</td>
<td class="ltx_td ltx_align_right ltx_border_r" id="S4.T1.13.11.11.3">-</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.13.11.11.4">42.4</td>
<td class="ltx_td ltx_align_center" id="S4.T1.13.11.11.5"><span class="ltx_text ltx_font_bold" id="S4.T1.13.11.11.5.1">38.9</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.13.11.14.3" style="background-color:#E8E8E8;">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_r ltx_border_t" id="S4.T1.13.11.14.3.1"><span class="ltx_text" id="S4.T1.13.11.14.3.1.1" style="background-color:#E8E8E8;">+ FDConv (Ours)</span></td>
<td class="ltx_td ltx_align_right ltx_border_bb ltx_border_r ltx_border_t" id="S4.T1.13.11.14.3.2"><span class="ltx_text" id="S4.T1.13.11.14.3.2.1" style="background-color:#E8E8E8;">+3.6M</span></td>
<td class="ltx_td ltx_align_right ltx_border_bb ltx_border_r ltx_border_t" id="S4.T1.13.11.14.3.3"><span class="ltx_text" id="S4.T1.13.11.14.3.3.1" style="background-color:#E8E8E8;">+1.8G</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r ltx_border_t" id="S4.T1.13.11.14.3.4"><span class="ltx_text ltx_font_bold" id="S4.T1.13.11.14.3.4.1" style="background-color:#E8E8E8;">42.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T1.13.11.14.3.5"><span class="ltx_text" id="S4.T1.13.11.14.3.5.1" style="background-color:#E8E8E8;">38.6</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 Table 5 presents the results of semantic segmentation experiments using two state-of-the-art large models, Mask2Former and MaskDINO, on the ADE20K dataset.  The table shows the mean Intersection over Union (mIoU) achieved by each model on the ADE20K validation set.  Results are shown for both models using Swin-B and Swin-L backbones.  The Swin-L backbones were pre-trained on the larger ImageNet-22K dataset, which is indicated by a † symbol.  The table highlights the performance improvement obtained by adding the proposed FDConv module to each model and backbone combination.
> <details>
> <summary>read the caption</summary>
> Table 5:  Semantic segmentation results with recent state-of-the-art large models Mask2Former [8] and MaskDINO [34] on ADE20K. Backbones pre-trained on ImageNet-22K are marked with †.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2503.18783/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.18783/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.18783/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.18783/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.18783/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.18783/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.18783/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.18783/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.18783/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.18783/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.18783/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}