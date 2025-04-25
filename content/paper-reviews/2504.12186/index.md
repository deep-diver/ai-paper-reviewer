---
title: "CoMotion: Concurrent Multi-person 3D Motion"
summary: "CoMotion: Online multi-person 3D motion capture from monocular video, robust to occlusion."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Computer Vision", "3D Vision", "🏢 Apple",]
showSummary: true
date: 2025-04-16
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2504.12186 {{< /keyword >}}
{{< keyword icon="writer" >}} Alejandro Newell et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-04-22 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2504.12186" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2504.12186" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2504.12186/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Existing approaches to multi-person 3D pose tracking often struggle with occlusions and are not suitable for online applications. These methods typically follow a detect-and-associate paradigm, linking poses across frames based on proximity and appearance. This can lead to issues when detections are missed or inaccurate, hindering the ability to maintain coherent tracks, especially in crowded scenes. 



To solve the above problems, this paper introduces CoMotion, a novel video-based approach for online multi-person 3D pose tracking from monocular video. CoMotion performs frame-to-frame pose updates using a recurrent model that maintains a set of tracked 3D poses and updates them when a new frame arrives. Instead of linking independent per-frame detections, CoMotion directly ingests the pixels of the new frame to update the poses of all people in the scene simultaneously. **This allows the model to reason about occlusions and maintain temporally coherent predictions.**

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} CoMotion achieves state-of-the-art 3D pose estimation and tracking accuracy while being significantly faster than existing methods. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} The system uses a novel approach of updating poses directly from image features, enabling online tracking through occlusions. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Training on a heterogeneous mixture of datasets, including pseudo-labeled data, is crucial for achieving robust performance in real-world scenarios. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper is vital for researchers interested in **3D human pose estimation and tracking**. It pushes the boundaries of online multi-person pose tracking in complex scenes.  The code release will foster advancements in areas such as human-computer interaction, robotics, and AR/VR.

------
#### Visual Insights



![](https://arxiv.org/html/2504.12186/extracted/6367151/img/Overview.jpg)

> 🔼 Figure 1 presents a visual comparison of CoMotion's performance against a baseline method (4DHumans) on tracking 3D human poses from a monocular video stream.  The top row showcases a scenario with individuals overlapping in the camera frame, while the bottom row demonstrates a situation involving occlusion. CoMotion successfully maintains consistent tracking despite these challenges because it directly updates pose estimates from incoming image features, rather than relying on independent per-frame detections and data association. This contrasts with the baseline, which struggles to maintain individual identity when occlusion or overlap occurs. The arrows in the figure highlight specific areas where the advantages of CoMotion are readily apparent.
> <details>
> <summary>read the caption</summary>
> Figure 1: CoMotion tracks 3D poses online from monocular RGB video. Rather than detect new poses in each frame and associate them to existing tracks, CoMotion updates tracks directly from incoming image features. As a result, CoMotion keeps track of distinct individuals as they overlap in the camera frame (top) and occlude each other (bottom). Arrows highlight some points of interest.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S1.F1.18">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S1.F1.3.3">
<th class="ltx_td ltx_nopad_r ltx_align_center ltx_th ltx_th_row" id="S1.F1.3.3.4" style="padding-top:-2.5pt;padding-bottom:-2.5pt;"><span class="ltx_text" id="S1.F1.3.3.4.1" style="position:relative; bottom:28.5pt;">
<span class="ltx_inline-block ltx_transformed_outer" id="S1.F1.3.3.4.1.1" style="width:8.8pt;height:24.1pt;vertical-align:-9.6pt;"><span class="ltx_transformed_inner" style="width:24.2pt;transform:translate(-7.69pt,2.92pt) rotate(-90deg) ;">
<span class="ltx_p" id="S1.F1.3.3.4.1.1.1">Input</span>
</span></span></span></th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S1.F1.1.1.1" style="padding-top:-2.5pt;padding-bottom:-2.5pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_landscape" height="90" id="S1.F1.1.1.1.g1" src="extracted/6367151/img/splash_jpg/sample_041/input/000009_blurred.jpg" width="160"/></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S1.F1.2.2.2" style="padding-top:-2.5pt;padding-bottom:-2.5pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_landscape" height="90" id="S1.F1.2.2.2.g1" src="extracted/6367151/img/splash_jpg/sample_041/input/000036_blurred.jpg" width="160"/></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S1.F1.3.3.3" style="padding-top:-2.5pt;padding-bottom:-2.5pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_landscape" height="90" id="S1.F1.3.3.3.g1" src="extracted/6367151/img/splash_jpg/sample_041/input/000108_blurred.jpg" width="160"/></td>
</tr>
<tr class="ltx_tr" id="S1.F1.6.6">
<th class="ltx_td ltx_nopad_r ltx_align_center ltx_th ltx_th_row" id="S1.F1.6.6.4" style="padding-top:-2.5pt;padding-bottom:-2.5pt;"><span class="ltx_text" id="S1.F1.6.6.4.1" style="position:relative; bottom:28.5pt;">
<span class="ltx_inline-block ltx_transformed_outer" id="S1.F1.6.6.4.1.1" style="width:6.8pt;height:43.6pt;vertical-align:-18.4pt;"><span class="ltx_transformed_inner" style="width:43.6pt;transform:translate(-18.39pt,0pt) rotate(-90deg) ;">
<span class="ltx_p" id="S1.F1.6.6.4.1.1.1">CoMotion</span>
</span></span></span></th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S1.F1.4.4.1" style="padding-top:-2.5pt;padding-bottom:-2.5pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_landscape" height="90" id="S1.F1.4.4.1.g1" src="extracted/6367151/img/splash_jpg/results/sample_041_comotion_frame_0004.jpg" width="180"/></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S1.F1.5.5.2" style="padding-top:-2.5pt;padding-bottom:-2.5pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_landscape" height="90" id="S1.F1.5.5.2.g1" src="extracted/6367151/img/splash_jpg/results/sample_041_comotion_frame_0013.jpg" width="180"/></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S1.F1.6.6.3" style="padding-top:-2.5pt;padding-bottom:-2.5pt;"><svg class="ltx_picture" height="94.84" id="S1.F1.6.6.3.pic1" overflow="visible" version="1.1" width="181.49"><g transform="translate(0,94.84) matrix(1 0 0 -1 0 0) translate(1.22,0) translate(0,4.57)"><g fill="#000000" stroke="#000000" stroke-width="0.4pt" transform="matrix(1.0 0.0 0.0 1.0 0.28 0.28)"><foreignobject height="90" overflow="visible" transform="matrix(1 0 0 -1 0 16.6)" width="180"><img alt="Refer to caption" class="ltx_graphics ltx_img_landscape" height="90" id="S1.F1.6.6.3.pic1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.g1" src="extracted/6367151/img/splash_jpg/results/sample_041_comotion_frame_0037.jpg" width="180"/></foreignobject></g><g color="#FFFFFF" fill="#FFFFFF" stroke="#FFFFFF" stroke-width="2.0pt"><path d="M 88.52 69.64 L 109.11 64.48" style="fill:none"></path><g transform="matrix(0.96996 -0.24326 0.24326 0.96996 109.11 64.48)"><path d="M 10.96 0 C 7.71 0.61 2.44 2.44 -1.22 4.57 L -1.22 -4.57 C 2.44 -2.44 7.71 -0.61 10.96 0" style="stroke:none"></path></g></g></g></svg>
</td>
</tr>
<tr class="ltx_tr" id="S1.F1.9.9">
<th class="ltx_td ltx_nopad_r ltx_align_center ltx_th ltx_th_row" id="S1.F1.9.9.4" style="padding-bottom:5.0pt;padding-top:-2.5pt;padding-bottom:-2.5pt;"><span class="ltx_text" id="S1.F1.9.9.4.1" style="position:relative; bottom:28.5pt;">
<span class="ltx_inline-block ltx_transformed_outer" id="S1.F1.9.9.4.1.1" style="width:6.8pt;height:48.5pt;vertical-align:-20.8pt;"><span class="ltx_transformed_inner" style="width:48.5pt;transform:translate(-20.85pt,0pt) rotate(-90deg) ;">
<span class="ltx_p" id="S1.F1.9.9.4.1.1.1">4DHumans</span>
</span></span></span></th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S1.F1.7.7.1" style="padding-bottom:5.0pt;padding-top:-2.5pt;padding-bottom:-2.5pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_landscape" height="90" id="S1.F1.7.7.1.g1" src="extracted/6367151/img/splash_jpg/results/sample_041_4dhumans_frame_0004.jpg" width="180"/></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S1.F1.8.8.2" style="padding-bottom:5.0pt;padding-top:-2.5pt;padding-bottom:-2.5pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_landscape" height="90" id="S1.F1.8.8.2.g1" src="extracted/6367151/img/splash_jpg/results/sample_041_4dhumans_frame_0013.jpg" width="180"/></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S1.F1.9.9.3" style="padding-bottom:5.0pt;padding-top:-2.5pt;padding-bottom:-2.5pt;"><svg class="ltx_picture" height="90" id="S1.F1.9.9.3.pic1" overflow="visible" version="1.1" width="180"><g transform="translate(0,90) matrix(1 0 0 -1 0 0) translate(-0.28,0) translate(0,-0.28)"><g fill="#000000" stroke="#000000" stroke-width="0.4pt" transform="matrix(1.0 0.0 0.0 1.0 0.28 0.28)"><foreignobject height="90" overflow="visible" transform="matrix(1 0 0 -1 0 16.6)" width="180"><img alt="Refer to caption" class="ltx_graphics ltx_img_landscape" height="90" id="S1.F1.9.9.3.pic1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.g1" src="extracted/6367151/img/splash_jpg/results/sample_041_4dhumans_frame_0037.jpg" width="180"/></foreignobject></g><g color="#FFFFFF" fill="#FFFFFF" stroke="#FFFFFF" stroke-width="2.0pt"><path d="M 88.52 69.64 L 109.11 64.48" style="fill:none"></path><g transform="matrix(0.96996 -0.24326 0.24326 0.96996 109.11 64.48)"><path d="M 10.96 0 C 7.71 0.61 2.44 2.44 -1.22 4.57 L -1.22 -4.57 C 2.44 -2.44 7.71 -0.61 10.96 0" style="stroke:none"></path></g></g></g></svg>
</td>
</tr>
<tr class="ltx_tr" id="S1.F1.12.12">
<th class="ltx_td ltx_nopad_r ltx_align_center ltx_th ltx_th_row" id="S1.F1.12.12.4" style="padding-top:-2.5pt;padding-bottom:-2.5pt;"><span class="ltx_text" id="S1.F1.12.12.4.1" style="position:relative; bottom:28.5pt;">
<span class="ltx_inline-block ltx_transformed_outer" id="S1.F1.12.12.4.1.1" style="width:8.8pt;height:24.1pt;vertical-align:-9.6pt;"><span class="ltx_transformed_inner" style="width:24.2pt;transform:translate(-7.69pt,2.92pt) rotate(-90deg) ;">
<span class="ltx_p" id="S1.F1.12.12.4.1.1.1">Input</span>
</span></span></span></th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S1.F1.10.10.1" style="padding-top:-2.5pt;padding-bottom:-2.5pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_landscape" height="90" id="S1.F1.10.10.1.g1" src="extracted/6367151/img/splash_jpg/sample_015/input/000003_blurred.jpg" width="160"/></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S1.F1.11.11.2" style="padding-top:-2.5pt;padding-bottom:-2.5pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_landscape" height="90" id="S1.F1.11.11.2.g1" src="extracted/6367151/img/splash_jpg/sample_015/input/000012_blurred.jpg" width="160"/></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S1.F1.12.12.3" style="padding-top:-2.5pt;padding-bottom:-2.5pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_landscape" height="90" id="S1.F1.12.12.3.g1" src="extracted/6367151/img/splash_jpg/sample_015/input/000027_blurred.jpg" width="160"/></td>
</tr>
<tr class="ltx_tr" id="S1.F1.15.15">
<th class="ltx_td ltx_nopad_r ltx_align_center ltx_th ltx_th_row" id="S1.F1.15.15.4" style="padding-top:-2.5pt;padding-bottom:-2.5pt;"><span class="ltx_text" id="S1.F1.15.15.4.1" style="position:relative; bottom:28.5pt;">
<span class="ltx_inline-block ltx_transformed_outer" id="S1.F1.15.15.4.1.1" style="width:6.8pt;height:43.6pt;vertical-align:-18.4pt;"><span class="ltx_transformed_inner" style="width:43.6pt;transform:translate(-18.39pt,0pt) rotate(-90deg) ;">
<span class="ltx_p" id="S1.F1.15.15.4.1.1.1">CoMotion</span>
</span></span></span></th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S1.F1.13.13.1" style="padding-top:-2.5pt;padding-bottom:-2.5pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_landscape" height="90" id="S1.F1.13.13.1.g1" src="extracted/6367151/img/splash_jpg/results/sample_015_comotion_frame_0002.jpg" width="180"/></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S1.F1.14.14.2" style="padding-top:-2.5pt;padding-bottom:-2.5pt;"><svg class="ltx_picture" height="90" id="S1.F1.14.14.2.pic1" overflow="visible" version="1.1" width="180"><g transform="translate(0,90) matrix(1 0 0 -1 0 0) translate(-0.28,0) translate(0,-0.28)"><g fill="#000000" stroke="#000000" stroke-width="0.4pt" transform="matrix(1.0 0.0 0.0 1.0 0.28 0.28)"><foreignobject height="90" overflow="visible" transform="matrix(1 0 0 -1 0 16.6)" width="180"><img alt="Refer to caption" class="ltx_graphics ltx_img_landscape" height="90" id="S1.F1.14.14.2.pic1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.g1" src="extracted/6367151/img/splash_jpg/results/sample_015_comotion_frame_0005.jpg" width="180"/></foreignobject></g><g color="#FFFFFF" fill="#FFFFFF" stroke="#FFFFFF" stroke-width="2.0pt"><path d="M 83.59 73.85 L 90.91 64.67" style="fill:none"></path><g transform="matrix(0.62357 -0.78177 0.78177 0.62357 90.91 64.67)"><path d="M 10.96 0 C 7.71 0.61 2.44 2.44 -1.22 4.57 L -1.22 -4.57 C 2.44 -2.44 7.71 -0.61 10.96 0" style="stroke:none"></path></g></g></g></svg>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S1.F1.15.15.3" style="padding-top:-2.5pt;padding-bottom:-2.5pt;"><svg class="ltx_picture" height="90" id="S1.F1.15.15.3.pic1" overflow="visible" version="1.1" width="180"><g transform="translate(0,90) matrix(1 0 0 -1 0 0) translate(-0.28,0) translate(0,-0.28)"><g fill="#000000" stroke="#000000" stroke-width="0.4pt" transform="matrix(1.0 0.0 0.0 1.0 0.28 0.28)"><foreignobject height="90" overflow="visible" transform="matrix(1 0 0 -1 0 16.6)" width="180"><img alt="Refer to caption" class="ltx_graphics ltx_img_landscape" height="90" id="S1.F1.15.15.3.pic1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.g1" src="extracted/6367151/img/splash_jpg/results/sample_015_comotion_frame_0010.jpg" width="180"/></foreignobject></g><g color="#FFFFFF" fill="#FFFFFF" stroke="#FFFFFF" stroke-width="2.0pt"><path d="M 111.23 73.85 L 103.9 64.67" style="fill:none"></path><g transform="matrix(-0.62357 -0.78177 0.78177 -0.62357 103.9 64.67)"><path d="M 10.96 0 C 7.71 0.61 2.44 2.44 -1.22 4.57 L -1.22 -4.57 C 2.44 -2.44 7.71 -0.61 10.96 0" style="stroke:none"></path></g></g></g></svg>
</td>
</tr>
<tr class="ltx_tr" id="S1.F1.18.18">
<th class="ltx_td ltx_nopad_r ltx_align_center ltx_th ltx_th_row" id="S1.F1.18.18.4" style="padding-bottom:5.0pt;padding-top:-2.5pt;padding-bottom:-2.5pt;"><span class="ltx_text" id="S1.F1.18.18.4.1" style="position:relative; bottom:28.5pt;">
<span class="ltx_inline-block ltx_transformed_outer" id="S1.F1.18.18.4.1.1" style="width:6.8pt;height:48.5pt;vertical-align:-20.8pt;"><span class="ltx_transformed_inner" style="width:48.5pt;transform:translate(-20.85pt,0pt) rotate(-90deg) ;">
<span class="ltx_p" id="S1.F1.18.18.4.1.1.1">4DHumans</span>
</span></span></span></th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S1.F1.16.16.1" style="padding-bottom:5.0pt;padding-top:-2.5pt;padding-bottom:-2.5pt;"><img alt="Refer to caption" class="ltx_graphics ltx_img_landscape" height="90" id="S1.F1.16.16.1.g1" src="extracted/6367151/img/splash_jpg/results/sample_015_4dhumans_frame_0002.jpg" width="180"/></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S1.F1.17.17.2" style="padding-bottom:5.0pt;padding-top:-2.5pt;padding-bottom:-2.5pt;"><svg class="ltx_picture" height="90" id="S1.F1.17.17.2.pic1" overflow="visible" version="1.1" width="180"><g transform="translate(0,90) matrix(1 0 0 -1 0 0) translate(-0.28,0) translate(0,-0.28)"><g fill="#000000" stroke="#000000" stroke-width="0.4pt" transform="matrix(1.0 0.0 0.0 1.0 0.28 0.28)"><foreignobject height="90" overflow="visible" transform="matrix(1 0 0 -1 0 16.6)" width="180"><img alt="Refer to caption" class="ltx_graphics ltx_img_landscape" height="90" id="S1.F1.17.17.2.pic1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.g1" src="extracted/6367151/img/splash_jpg/results/sample_015_4dhumans_frame_0005.jpg" width="180"/></foreignobject></g><g color="#FFFFFF" fill="#FFFFFF" stroke="#FFFFFF" stroke-width="2.0pt"><path d="M 83.59 73.85 L 90.91 64.67" style="fill:none"></path><g transform="matrix(0.62357 -0.78177 0.78177 0.62357 90.91 64.67)"><path d="M 10.96 0 C 7.71 0.61 2.44 2.44 -1.22 4.57 L -1.22 -4.57 C 2.44 -2.44 7.71 -0.61 10.96 0" style="stroke:none"></path></g></g></g></svg>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S1.F1.18.18.3" style="padding-bottom:5.0pt;padding-top:-2.5pt;padding-bottom:-2.5pt;"><svg class="ltx_picture" height="90" id="S1.F1.18.18.3.pic1" overflow="visible" version="1.1" width="180"><g transform="translate(0,90) matrix(1 0 0 -1 0 0) translate(-0.28,0) translate(0,-0.28)"><g fill="#000000" stroke="#000000" stroke-width="0.4pt" transform="matrix(1.0 0.0 0.0 1.0 0.28 0.28)"><foreignobject height="90" overflow="visible" transform="matrix(1 0 0 -1 0 16.6)" width="180"><img alt="Refer to caption" class="ltx_graphics ltx_img_landscape" height="90" id="S1.F1.18.18.3.pic1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.g1" src="extracted/6367151/img/splash_jpg/results/sample_015_4dhumans_frame_0010.jpg" width="180"/></foreignobject></g><g color="#FFFFFF" fill="#FFFFFF" stroke="#FFFFFF" stroke-width="2.0pt"><path d="M 111.23 73.85 L 103.9 64.67" style="fill:none"></path><g transform="matrix(-0.62357 -0.78177 0.78177 -0.62357 103.9 64.67)"><path d="M 10.96 0 C 7.71 0.61 2.44 2.44 -1.22 4.57 L -1.22 -4.57 C 2.44 -2.44 7.71 -0.61 10.96 0" style="stroke:none"></path></g></g></g></svg>
</td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 Table 1 presents a comparison of the performance of different multi-object tracking methods on the PoseTrack21 benchmark.  The table shows metrics such as MOTA (Multiple Object Tracking Accuracy), IDF1 (Identity F1-score), IDP (Identity Precision), and IDR (Identity Recall) for several baselines and the proposed CoMotion model.  The top half of the table shows results using the original PoseTrack21 evaluation code, while the bottom half shows results after a bug fix related to the handling of ‘ignore’ regions in the annotations was implemented. This bug fix significantly affected the performance metrics, demonstrating the importance of accurate evaluation methodology.
> <details>
> <summary>read the caption</summary>
> Table 1: Tracking evaluation. Performance of CoMotion and several baselines on PoseTrack21. We report results using the official evaluation code (top) as well as results after fixing a bug in the evaluation code that caused the ‘ignore’ regions to be handled incorrectly (bottom, marked with a ††\dagger†).
> </details>





### In-depth insights


#### Online 3D Motion
**Online 3D motion** is a challenging area, requiring real-time processing without future context. Accurately estimating and tracking 3D human poses in a stream necessitates clever forecasting during occlusions, which needs temporal coherence. Current methods often fall short due to reliance on frame-by-frame detection, later linked together, which is prone to error accumulation. This approach is not fit for online tasks, as it lags behind performance and temporal stability.

#### Attention Tracking
While the provided text doesn't explicitly have a section titled "Attention Tracking," the underlying principle of attention mechanisms in deep learning is highly relevant. The paper discusses how attention mechanisms are used to **detect new objects and update existing tracks** jointly by performing cross-attention between an image and a set of learned per-track and new-object query tokens. This aligns with the core concept of attention tracking, where the model learns to **focus on the most relevant parts of the input** (image features) to update the pose estimates of people in the scene. The use of cross-attention enables the model to **implicitly track individuals by attending to their features** over time, rather than relying on explicit association steps. The architecture utilizes cross-attention to query image features, attending to the entire image for information about how each pose has changed from the previous timestep. The performance can be boosted by taking advantage of the updated hidden state and 3D pose estimation in challenging scenes. Ultimately, the paper demonstrates how attention mechanisms facilitate **robust and temporally coherent tracking**, even in the presence of occlusions and complex scenes.

#### Pseudo-labeling
The research leverages pseudo-labeling to enhance 3D pose estimation, particularly in challenging, in-the-wild scenarios. **Initial pseudo-labels from 4D Humans proved sparse**, prompting a shift to Neural Localizer Fields (NLF) for denser, more accurate annotations. This transition improved head/feet alignment and overall pose quality. **Pseudo-labeling aided in training the detection module, enabling it to recognize more people in crowded scenes.** However, trade-offs emerged, like a slight regression on close-up images due to NLF's limitations. To mitigate this, a key is adding high-quality and accurate 3D data through methods that are reliable and robust. **Pseudo-labeling with real video data** also helps the model adapt to the kinds of poses and lighting conditions only found in the real world. 

#### PoseTrack Fixed
While "PoseTrack Fixed" isn't a direct heading, the analysis of PoseTrack21's evaluation code reveals crucial insights about **dataset bias and evaluation integrity**. The original code incorrectly handled 'ignore' regions, leading to penalized detections despite potential correctness. Addressing this bug significantly improved CoMotion's MOTA score, underscoring the **sensitivity of tracking metrics to evaluation details**. The corrected evaluation offers a more reliable assessment of tracking performance, highlighting the importance of validating evaluation code. The issues with PoseTrack18's incomplete annotations are contrasted with PoseTrack21's improvements, though challenges with people close proximity persist. The comparison showcases the constant need to refine annotation to avoid potential skewed results when it comes to research. Additionally, careful selection of the most appropriate dataset that suits the scope of the research is important.

#### Camera Intrinsics
The paper discusses camera intrinsics within the context of 3D human pose estimation and tracking from monocular video. It acknowledges the importance of camera parameters, and while the system doesn't explicitly model changes in camera pose or intrinsics like motion or zooming, it accepts an intrinsics matrix K as input during inference. The system is designed to project 3D estimates back into the image frame based on this provided matrix using a pinhole camera model. A key aspect is the inclusion of data augmentation techniques during training to improve robustness against incorrect intrinsics. This involves training with either a generic default setting for K or using the correct intrinsics when available. The result shows that the network's 2D keypoint accuracy remains consistent within a realm of values which correspond to what one would typically find with most camera hardware apart from extremely wide-angle options such as a fish-eye lens. Thus, **robustness to camera calibration is a deliberate design consideration**. The paper touches upon the handling of scale ambiguity inherent in monocular 3D estimation. It suggests that decoupling camera motion from people's motion can increase robustness. 


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2504.12186/extracted/6367151/img/comparison_4D.png)

> 🔼 CoMotion processes each frame of a video to estimate 3D poses of all people present.  The system uses an image encoder to extract features from the current frame (Ft). These features are fed into two parallel modules: a detection module (to identify potential new people) and a pose update module (to refine existing poses from the previous frame). Both modules process Ft independently and their outputs are compared to determine whether to start tracking new individuals, update existing tracks, or remove stale tracks. Any newly detected individuals are passed to the pose update module before being integrated into the final output.  The figure inset highlights the internal workings of the pose update module.
> <details>
> <summary>read the caption</summary>
> Figure 2:  Overview. CoMotion estimates 3D poses for all people in a frame. An image encoder produces image features Ftsuperscript𝐹𝑡F^{t}italic_F start_POSTSUPERSCRIPT italic_t end_POSTSUPERSCRIPT, which are passed through the detection module to identify potential new tracks. In parallel, the pose update module attends to Ftsuperscript𝐹𝑡F^{t}italic_F start_POSTSUPERSCRIPT italic_t end_POSTSUPERSCRIPT to update the existing tracks from the previous timestep. Both outputs are compared to each other to decide whether to instantiate or remove any tracks. If a detection is flagged as a new track, it is passed through the update module before being added to the final output tracks for the current frame. The inset details the pose update module.
> </details>



![](https://arxiv.org/html/2504.12186/extracted/6367151/img/posetrack18_annot.png)

> 🔼 Figure 3 presents a comparison of 3D human pose tracking results from CoMotion and 4D Humans on a video sequence from the PoseTrack dataset.  The figure visually demonstrates the temporal coherence of CoMotion's pose estimations compared to 4D Humans.  Specifically, the green track in the figure highlights a situation where the 4D Humans model exhibits abrupt and inconsistent pose predictions across frames, while CoMotion's pose estimations show smoother and more consistent tracking. This difference arises because CoMotion updates poses based on the entire image context and a recurrent model that maintains temporal consistency, whereas 4D Humans makes independent predictions for each frame.
> <details>
> <summary>read the caption</summary>
> Figure 3: We compare predictions made by CoMotion and 4D Humans unrolled through time on a sample from PoseTrack. Due to making independent predictions per frame, we observe that 4D Humans occasionally makes abrupt changes to the estimated pose (see green track on the right).
> </details>



![](https://arxiv.org/html/2504.12186/extracted/6367151/img/posetrack21_annot.png)

> 🔼 This figure demonstrates how incomplete annotations in the PoseTrack18 dataset lead to inaccurate evaluation results.  Specifically, it showcases instances where the evaluation algorithm incorrectly labels correctly predicted object tracks as 'false positives' because ground truth annotations are missing for those tracks in certain frames.  The figure visually highlights this issue by displaying sample images with correct annotations shown in green, and those incorrectly identified as false positives in red. This illustrates the challenges of evaluating pose estimation and tracking algorithms when dealing with incomplete or noisy datasets.
> <details>
> <summary>read the caption</summary>
> Figure 4: Incorrect handling of missing annotations in PoseTrack18. Due to incomplete annotations in PoseTrack18, predicted tracks may be incorrectly regarded as “false positives”. We show representative samples where annotations are green and “false positives” are red.
> </details>



![](https://arxiv.org/html/2504.12186/x1.png)

> 🔼 PoseTrack21 attempts to improve upon PoseTrack18 by incorporating 'ignore' regions to account for missing annotations in the dataset.  However, a bug in the evaluation code causes predicted tracks that fall within these 'ignore' regions to be incorrectly penalized as false positives.  Figure 5 illustrates this issue: the leftmost image shows the original frame; the center image highlights a ground truth annotation (green) and the corresponding 'ignore' region (blue); and the rightmost image shows the incorrectly flagged predicted tracks (red). The authors of this paper corrected this bug in their evaluation.
> <details>
> <summary>read the caption</summary>
> Figure 5: Incorrect handling of missing annotations in PoseTrack 21. PoseTrack21 addresses the incompleteness of PoseTrack18 annotations by providing ‘ignore’ regions to accompany the annotated tracks. For the frame on the left, the center image illustrates the annotation of the person in the center (shown in green) and a polygon defining the ‘ignore’ region in blue. The right image shows predicted tracks in red, which are still penalized as false positives by the PoseTrack21 evaluation code despite being contained in the ‘ignore region‘. This is a bug that we fix.
> </details>



![](https://arxiv.org/html/2504.12186/x2.png)

> 🔼 This figure demonstrates the robustness of the CoMotion model to variations in the assumed focal length of the camera.  The experiment involved running the model on PoseTrack videos (where ground truth camera calibration wasn't available).  The x-axis represents the assumed focal length (fx), normalized by the image width. The y-axis shows the resulting 2D Percentage of Correct Keypoints (PCK) accuracy. The plot shows that the model maintains high accuracy across a wide range of focal lengths, indicating its resilience to errors or uncertainty in this parameter.  The only exception is extremely wide-angle lenses like fish-eye lenses.
> <details>
> <summary>read the caption</summary>
> Figure 6: Impact of the assumed focal length. To investigate how the focal length of the intrinsics matrix affects performance we run our model on PoseTrack videos (for which we do not have ground truth camera calibration) and report 2D PCK accuracy. We adjust the assumed focal length and observe that the network’s 2D keypoint accuracy is consistent as long as we remain within a realm of values which correspond to what one would typically find with most camera hardware apart from extremely wide-angle options such as a fish-eye lens. In the above figure, fx (the x-axis) is normalized by the image width.
> </details>



![](https://arxiv.org/html/2504.12186/x3.png)

> 🔼 This figure compares the processing speed (runtime) of CoMotion with three other state-of-the-art multi-person 3D pose tracking methods on the PoseTrack21 validation set. All methods were run on the same hardware (a V100 GPU) using the code provided by the respective authors. The box plot shows that CoMotion is significantly faster than the other methods. Quantitatively, CoMotion is about 1.4 times faster than PARE (176 milliseconds per frame versus 258 milliseconds per frame) and 12 times faster than 4D Humans (176ms/frame versus 2163ms/frame).
> <details>
> <summary>read the caption</summary>
> Figure 7: Comparing the per-frame runtime of CoMotion with prior work on the PoseTrack21 validation set. All measurements were made on a V100 GPU using the code released by the respective authors. CoMotion is significantly faster than prior work. Specifically, CoMotion is approximately 1.4x faster than PARE (176ms vs 258ms) and 12x faster than 4D Humans (176ms vs 2163ms) on average.
> </details>



![](https://arxiv.org/html/2504.12186/extracted/6367151/img/pseudo_compare_02.png)

> 🔼 This image shows the pseudocode for the image encoder of the CoMotion model. The image encoder takes an image as input and produces image features. The encoder uses the ConvNeXtV2 architecture. It consists of four stages which progressively lower the resolution of the image. At each stage, it produces a feature map. These features are then linearly projected to the same resolution to combine early and late features. The features are then normalized and returned as the final image features.
> <details>
> <summary>read the caption</summary>
> Figure 8: Pseudocode for the image encoder.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S5.T1.8.6">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S5.T1.8.6.7.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_tt" id="S5.T1.8.6.7.1.1" rowspan="2"><span class="ltx_text" id="S5.T1.8.6.7.1.1.1">Method</span></th>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="4" id="S5.T1.8.6.7.1.2">PoseTrack21</td>
</tr>
<tr class="ltx_tr" id="S5.T1.6.4.4">
<td class="ltx_td ltx_align_center" id="S5.T1.3.1.1.1">MOTA<math alttext="\uparrow" class="ltx_Math" display="inline" id="S5.T1.3.1.1.1.m1.1"><semantics id="S5.T1.3.1.1.1.m1.1a"><mo id="S5.T1.3.1.1.1.m1.1.1" stretchy="false" xref="S5.T1.3.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S5.T1.3.1.1.1.m1.1b"><ci id="S5.T1.3.1.1.1.m1.1.1.cmml" xref="S5.T1.3.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T1.3.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S5.T1.3.1.1.1.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center" id="S5.T1.4.2.2.2">IDF1<math alttext="\uparrow" class="ltx_Math" display="inline" id="S5.T1.4.2.2.2.m1.1"><semantics id="S5.T1.4.2.2.2.m1.1a"><mo id="S5.T1.4.2.2.2.m1.1.1" stretchy="false" xref="S5.T1.4.2.2.2.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S5.T1.4.2.2.2.m1.1b"><ci id="S5.T1.4.2.2.2.m1.1.1.cmml" xref="S5.T1.4.2.2.2.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T1.4.2.2.2.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S5.T1.4.2.2.2.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center" id="S5.T1.5.3.3.3">IDP<math alttext="\uparrow" class="ltx_Math" display="inline" id="S5.T1.5.3.3.3.m1.1"><semantics id="S5.T1.5.3.3.3.m1.1a"><mo id="S5.T1.5.3.3.3.m1.1.1" stretchy="false" xref="S5.T1.5.3.3.3.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S5.T1.5.3.3.3.m1.1b"><ci id="S5.T1.5.3.3.3.m1.1.1.cmml" xref="S5.T1.5.3.3.3.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T1.5.3.3.3.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S5.T1.5.3.3.3.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center" id="S5.T1.6.4.4.4">IDR<math alttext="\uparrow" class="ltx_Math" display="inline" id="S5.T1.6.4.4.4.m1.1"><semantics id="S5.T1.6.4.4.4.m1.1a"><mo id="S5.T1.6.4.4.4.m1.1.1" stretchy="false" xref="S5.T1.6.4.4.4.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S5.T1.6.4.4.4.m1.1b"><ci id="S5.T1.6.4.4.4.m1.1.1.cmml" xref="S5.T1.6.4.4.4.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T1.6.4.4.4.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S5.T1.6.4.4.4.m1.1d">↑</annotation></semantics></math>
</td>
</tr>
<tr class="ltx_tr" id="S5.T1.8.6.8.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S5.T1.8.6.8.2.1">TRMOT <cite class="ltx_cite ltx_citemacro_citep">(Wang et al., <a class="ltx_ref" href="https://arxiv.org/html/2504.12186v1#bib.bib43" title="">2020</a>)</cite>
</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.8.6.8.2.2">47.2</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.8.6.8.2.3">57.3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.8.6.8.2.4">70.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.8.6.8.2.5">46.6</td>
</tr>
<tr class="ltx_tr" id="S5.T1.8.6.9.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T1.8.6.9.3.1">FairMOT <cite class="ltx_cite ltx_citemacro_citep">(Zhang et al., <a class="ltx_ref" href="https://arxiv.org/html/2504.12186v1#bib.bib56" title="">2021b</a>)</cite>
</th>
<td class="ltx_td ltx_align_center" id="S5.T1.8.6.9.3.2" style="background-color:#FFFDD0;"><span class="ltx_text" id="S5.T1.8.6.9.3.2.1" style="background-color:#FFFDD0;">56.3</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.8.6.9.3.3">63.2</td>
<td class="ltx_td ltx_align_center" id="S5.T1.8.6.9.3.4" style="background-color:#DFFF00;"><span class="ltx_text" id="S5.T1.8.6.9.3.4.1" style="background-color:#DFFF00;">81.0</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.8.6.9.3.5">51.8</td>
</tr>
<tr class="ltx_tr" id="S5.T1.8.6.10.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T1.8.6.10.4.1">CorrTrack + ReID <cite class="ltx_cite ltx_citemacro_citep">(Doering et al., <a class="ltx_ref" href="https://arxiv.org/html/2504.12186v1#bib.bib8" title="">2022</a>)</cite>
</th>
<td class="ltx_td ltx_align_center" id="S5.T1.8.6.10.4.2">52.0</td>
<td class="ltx_td ltx_align_center" id="S5.T1.8.6.10.4.3" style="background-color:#FFFDD0;"><span class="ltx_text" id="S5.T1.8.6.10.4.3.1" style="background-color:#FFFDD0;">66.5</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.8.6.10.4.4">72.4</td>
<td class="ltx_td ltx_align_center" id="S5.T1.8.6.10.4.5" style="background-color:#FFFDD0;"><span class="ltx_text" id="S5.T1.8.6.10.4.5.1" style="background-color:#FFFDD0;">61.4</span></td>
</tr>
<tr class="ltx_tr" id="S5.T1.8.6.11.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T1.8.6.11.5.1">Tracktor++ <cite class="ltx_cite ltx_citemacro_citep">(Bergmann et al., <a class="ltx_ref" href="https://arxiv.org/html/2504.12186v1#bib.bib4" title="">2019</a>)</cite>
</th>
<td class="ltx_td ltx_align_center" id="S5.T1.8.6.11.5.2" style="background-color:#DFFF00;"><span class="ltx_text" id="S5.T1.8.6.11.5.2.1" style="background-color:#DFFF00;">59.5</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.8.6.11.5.3" style="background-color:#DFFF00;"><span class="ltx_text" id="S5.T1.8.6.11.5.3.1" style="background-color:#DFFF00;">69.3</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.8.6.11.5.4" style="background-color:#FFFDD0;"><span class="ltx_text" id="S5.T1.8.6.11.5.4.1" style="background-color:#FFFDD0;">76.4</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.8.6.11.5.5" style="background-color:#DFFF00;"><span class="ltx_text" id="S5.T1.8.6.11.5.5.1" style="background-color:#DFFF00;">63.5</span></td>
</tr>
<tr class="ltx_tr" id="S5.T1.8.6.12.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T1.8.6.12.6.1">CoMotion (ours)</th>
<td class="ltx_td ltx_align_center" id="S5.T1.8.6.12.6.2" style="background-color:#77DD77;"><span class="ltx_text ltx_font_bold" id="S5.T1.8.6.12.6.2.1" style="background-color:#77DD77;">67.6</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.8.6.12.6.3" style="background-color:#77DD77;"><span class="ltx_text ltx_font_bold" id="S5.T1.8.6.12.6.3.1" style="background-color:#77DD77;">77.9</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.8.6.12.6.4" style="background-color:#77DD77;"><span class="ltx_text ltx_font_bold" id="S5.T1.8.6.12.6.4.1" style="background-color:#77DD77;">83.4</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.8.6.12.6.5" style="background-color:#77DD77;"><span class="ltx_text ltx_font_bold" id="S5.T1.8.6.12.6.5.1" style="background-color:#77DD77;">73.0</span></td>
</tr>
<tr class="ltx_tr" id="S5.T1.7.5.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S5.T1.7.5.5.1">4DHumans <cite class="ltx_cite ltx_citemacro_citep">(Goel et al., <a class="ltx_ref" href="https://arxiv.org/html/2504.12186v1#bib.bib12" title="">2023</a>)</cite> <math alttext="\dagger" class="ltx_Math" display="inline" id="S5.T1.7.5.5.1.m1.1"><semantics id="S5.T1.7.5.5.1.m1.1a"><mo id="S5.T1.7.5.5.1.m1.1.1" xref="S5.T1.7.5.5.1.m1.1.1.cmml">†</mo><annotation-xml encoding="MathML-Content" id="S5.T1.7.5.5.1.m1.1b"><ci id="S5.T1.7.5.5.1.m1.1.1.cmml" xref="S5.T1.7.5.5.1.m1.1.1">†</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T1.7.5.5.1.m1.1c">\dagger</annotation><annotation encoding="application/x-llamapun" id="S5.T1.7.5.5.1.m1.1d">†</annotation></semantics></math>
</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.7.5.5.2" style="background-color:#DFFF00;"><span class="ltx_text" id="S5.T1.7.5.5.2.1" style="background-color:#DFFF00;">56.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.7.5.5.3" style="background-color:#DFFF00;"><span class="ltx_text" id="S5.T1.7.5.5.3.1" style="background-color:#DFFF00;">70.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.7.5.5.4" style="background-color:#77DD77;"><span class="ltx_text ltx_font_bold" id="S5.T1.7.5.5.4.1" style="background-color:#77DD77;">87.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.7.5.5.5" style="background-color:#DFFF00;"><span class="ltx_text" id="S5.T1.7.5.5.5.1" style="background-color:#DFFF00;">59.7</span></td>
</tr>
<tr class="ltx_tr" id="S5.T1.8.6.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S5.T1.8.6.6.1">CoMotion (ours) <math alttext="\dagger" class="ltx_Math" display="inline" id="S5.T1.8.6.6.1.m1.1"><semantics id="S5.T1.8.6.6.1.m1.1a"><mo id="S5.T1.8.6.6.1.m1.1.1" xref="S5.T1.8.6.6.1.m1.1.1.cmml">†</mo><annotation-xml encoding="MathML-Content" id="S5.T1.8.6.6.1.m1.1b"><ci id="S5.T1.8.6.6.1.m1.1.1.cmml" xref="S5.T1.8.6.6.1.m1.1.1">†</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T1.8.6.6.1.m1.1c">\dagger</annotation><annotation encoding="application/x-llamapun" id="S5.T1.8.6.6.1.m1.1d">†</annotation></semantics></math>
</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T1.8.6.6.2" style="background-color:#77DD77;"><span class="ltx_text ltx_font_bold" id="S5.T1.8.6.6.2.1" style="background-color:#77DD77;">71.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T1.8.6.6.3" style="background-color:#77DD77;"><span class="ltx_text ltx_font_bold" id="S5.T1.8.6.6.3.1" style="background-color:#77DD77;">79.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T1.8.6.6.4" style="background-color:#77DD77;"><span class="ltx_text ltx_font_bold" id="S5.T1.8.6.6.4.1" style="background-color:#77DD77;">87.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T1.8.6.6.5" style="background-color:#77DD77;"><span class="ltx_text ltx_font_bold" id="S5.T1.8.6.6.5.1" style="background-color:#77DD77;">73.0</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 Table 2 compares the performance of human pose estimation and tracking models on two datasets: PoseTrack18 and its successor, PoseTrack21.  PoseTrack18's annotations are significantly incomplete, unfairly penalizing models that accurately identify and track all people in a scene.  This shortcoming led to the development of PoseTrack21, which offers much more complete annotations while using the same images. The table shows that while some models perform well on the incomplete PoseTrack18, their performance decreases significantly when evaluated against the improved PoseTrack21 annotations. The authors include results for both datasets for comparison with previous research, but strongly advocate for future work to use the more reliable PoseTrack21.
> <details>
> <summary>read the caption</summary>
> Table 2: PoseTrack18 vs. PoseTrack21. The annotations in PoseTrack18 are drastically incomplete, penalizing methods that correctly detect and track people in the scene. Indeed, this inspired the creation of PoseTrack21 (Doering et al., 2022), which provides more complete annotations and was released as a direct replacement of PoseTrack18 (same images, more complete annotations). We provide results on PoseTrack18 for backward compatibility with Goel et al. (2023), but strongly recommend that all future work adopt PoseTrack21 instead. (* We rerun the authors’ code in order to report performance on PoseTrack21.)
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S5.T2.10.10">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S5.T2.10.10.11.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="S5.T2.10.10.11.1.1" rowspan="2" style="padding-top:0.25pt;padding-bottom:0.25pt;"><span class="ltx_text" id="S5.T2.10.10.11.1.1.1">Method</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="3" id="S5.T2.10.10.11.1.2" style="padding-top:0.25pt;padding-bottom:0.25pt;">PoseTrack18</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="7" id="S5.T2.10.10.11.1.3" style="padding-top:0.25pt;padding-bottom:0.25pt;">PoseTrack21</th>
</tr>
<tr class="ltx_tr" id="S5.T2.10.10.10">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S5.T2.1.1.1.1" style="padding-top:0.25pt;padding-bottom:0.25pt;">HOTA<math alttext="\uparrow" class="ltx_Math" display="inline" id="S5.T2.1.1.1.1.m1.1"><semantics id="S5.T2.1.1.1.1.m1.1a"><mo id="S5.T2.1.1.1.1.m1.1.1" stretchy="false" xref="S5.T2.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S5.T2.1.1.1.1.m1.1b"><ci id="S5.T2.1.1.1.1.m1.1.1.cmml" xref="S5.T2.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T2.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S5.T2.1.1.1.1.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S5.T2.2.2.2.2" style="padding-top:0.25pt;padding-bottom:0.25pt;">IDs<math alttext="\downarrow" class="ltx_Math" display="inline" id="S5.T2.2.2.2.2.m1.1"><semantics id="S5.T2.2.2.2.2.m1.1a"><mo id="S5.T2.2.2.2.2.m1.1.1" stretchy="false" xref="S5.T2.2.2.2.2.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S5.T2.2.2.2.2.m1.1b"><ci id="S5.T2.2.2.2.2.m1.1.1.cmml" xref="S5.T2.2.2.2.2.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T2.2.2.2.2.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S5.T2.2.2.2.2.m1.1d">↓</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S5.T2.3.3.3.3" style="padding-top:0.25pt;padding-bottom:0.25pt;">MOTA<math alttext="\uparrow" class="ltx_Math" display="inline" id="S5.T2.3.3.3.3.m1.1"><semantics id="S5.T2.3.3.3.3.m1.1a"><mo id="S5.T2.3.3.3.3.m1.1.1" stretchy="false" xref="S5.T2.3.3.3.3.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S5.T2.3.3.3.3.m1.1b"><ci id="S5.T2.3.3.3.3.m1.1.1.cmml" xref="S5.T2.3.3.3.3.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T2.3.3.3.3.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S5.T2.3.3.3.3.m1.1d">↑</annotation></semantics></math></th>
<th class="ltx_td ltx_nopad_l ltx_align_center ltx_th ltx_th_column" id="S5.T2.4.4.4.4" style="padding-top:0.25pt;padding-bottom:0.25pt;">MOTA<math alttext="\uparrow" class="ltx_Math" display="inline" id="S5.T2.4.4.4.4.m1.1"><semantics id="S5.T2.4.4.4.4.m1.1a"><mo id="S5.T2.4.4.4.4.m1.1.1" stretchy="false" xref="S5.T2.4.4.4.4.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S5.T2.4.4.4.4.m1.1b"><ci id="S5.T2.4.4.4.4.m1.1.1.cmml" xref="S5.T2.4.4.4.4.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T2.4.4.4.4.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S5.T2.4.4.4.4.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S5.T2.5.5.5.5" style="padding-top:0.25pt;padding-bottom:0.25pt;">IDF1<math alttext="\uparrow" class="ltx_Math" display="inline" id="S5.T2.5.5.5.5.m1.1"><semantics id="S5.T2.5.5.5.5.m1.1a"><mo id="S5.T2.5.5.5.5.m1.1.1" stretchy="false" xref="S5.T2.5.5.5.5.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S5.T2.5.5.5.5.m1.1b"><ci id="S5.T2.5.5.5.5.m1.1.1.cmml" xref="S5.T2.5.5.5.5.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T2.5.5.5.5.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S5.T2.5.5.5.5.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S5.T2.6.6.6.6" style="padding-top:0.25pt;padding-bottom:0.25pt;">IDP<math alttext="\uparrow" class="ltx_Math" display="inline" id="S5.T2.6.6.6.6.m1.1"><semantics id="S5.T2.6.6.6.6.m1.1a"><mo id="S5.T2.6.6.6.6.m1.1.1" stretchy="false" xref="S5.T2.6.6.6.6.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S5.T2.6.6.6.6.m1.1b"><ci id="S5.T2.6.6.6.6.m1.1.1.cmml" xref="S5.T2.6.6.6.6.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T2.6.6.6.6.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S5.T2.6.6.6.6.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S5.T2.7.7.7.7" style="padding-top:0.25pt;padding-bottom:0.25pt;">IDR<math alttext="\uparrow" class="ltx_Math" display="inline" id="S5.T2.7.7.7.7.m1.1"><semantics id="S5.T2.7.7.7.7.m1.1a"><mo id="S5.T2.7.7.7.7.m1.1.1" stretchy="false" xref="S5.T2.7.7.7.7.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S5.T2.7.7.7.7.m1.1b"><ci id="S5.T2.7.7.7.7.m1.1.1.cmml" xref="S5.T2.7.7.7.7.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T2.7.7.7.7.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S5.T2.7.7.7.7.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S5.T2.8.8.8.8" style="padding-top:0.25pt;padding-bottom:0.25pt;">FP<math alttext="\downarrow" class="ltx_Math" display="inline" id="S5.T2.8.8.8.8.m1.1"><semantics id="S5.T2.8.8.8.8.m1.1a"><mo id="S5.T2.8.8.8.8.m1.1.1" stretchy="false" xref="S5.T2.8.8.8.8.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S5.T2.8.8.8.8.m1.1b"><ci id="S5.T2.8.8.8.8.m1.1.1.cmml" xref="S5.T2.8.8.8.8.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T2.8.8.8.8.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S5.T2.8.8.8.8.m1.1d">↓</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S5.T2.9.9.9.9" style="padding-top:0.25pt;padding-bottom:0.25pt;">FN<math alttext="\downarrow" class="ltx_Math" display="inline" id="S5.T2.9.9.9.9.m1.1"><semantics id="S5.T2.9.9.9.9.m1.1a"><mo id="S5.T2.9.9.9.9.m1.1.1" stretchy="false" xref="S5.T2.9.9.9.9.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S5.T2.9.9.9.9.m1.1b"><ci id="S5.T2.9.9.9.9.m1.1.1.cmml" xref="S5.T2.9.9.9.9.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T2.9.9.9.9.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S5.T2.9.9.9.9.m1.1d">↓</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S5.T2.10.10.10.10" style="padding-top:0.25pt;padding-bottom:0.25pt;">FPS<math alttext="\uparrow" class="ltx_Math" display="inline" id="S5.T2.10.10.10.10.m1.1"><semantics id="S5.T2.10.10.10.10.m1.1a"><mo id="S5.T2.10.10.10.10.m1.1.1" stretchy="false" xref="S5.T2.10.10.10.10.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S5.T2.10.10.10.10.m1.1b"><ci id="S5.T2.10.10.10.10.m1.1.1.cmml" xref="S5.T2.10.10.10.10.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T2.10.10.10.10.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S5.T2.10.10.10.10.m1.1d">↑</annotation></semantics></math>
</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S5.T2.10.10.12.1">
<td class="ltx_td ltx_align_left ltx_border_t" id="S5.T2.10.10.12.1.1" style="padding-top:0.25pt;padding-bottom:0.25pt;">4DHumans  <cite class="ltx_cite ltx_citemacro_citep">(Goel et al., <a class="ltx_ref" href="https://arxiv.org/html/2504.12186v1#bib.bib12" title="">2023</a>)</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.10.10.12.1.2" style="background-color:#FFFDD0;padding-top:0.25pt;padding-bottom:0.25pt;"><span class="ltx_text" id="S5.T2.10.10.12.1.2.1" style="background-color:#FFFDD0;">57.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.10.10.12.1.3" style="padding-top:0.25pt;padding-bottom:0.25pt;">382</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.10.10.12.1.4" style="background-color:#DFFF00;padding-top:0.25pt;padding-bottom:0.25pt;"><span class="ltx_text" id="S5.T2.10.10.12.1.4.1" style="background-color:#DFFF00;">61.4</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_t" id="S5.T2.10.10.12.1.5" style="padding-top:0.25pt;padding-bottom:0.25pt;">–</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.10.10.12.1.6" style="padding-top:0.25pt;padding-bottom:0.25pt;">–</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.10.10.12.1.7" style="padding-top:0.25pt;padding-bottom:0.25pt;">–</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.10.10.12.1.8" style="padding-top:0.25pt;padding-bottom:0.25pt;">–</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.10.10.12.1.9" style="padding-top:0.25pt;padding-bottom:0.25pt;">–</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.10.10.12.1.10" style="padding-top:0.25pt;padding-bottom:0.25pt;">–</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.10.10.12.1.11" style="padding-top:0.25pt;padding-bottom:0.25pt;">-</td>
</tr>
<tr class="ltx_tr" id="S5.T2.10.10.13.2">
<td class="ltx_td ltx_align_left" id="S5.T2.10.10.13.2.1" style="padding-top:0.25pt;padding-bottom:0.25pt;">4DHumans (reproduced)*</td>
<td class="ltx_td ltx_align_center" id="S5.T2.10.10.13.2.2" style="background-color:#DFFF00;padding-top:0.25pt;padding-bottom:0.25pt;"><span class="ltx_text" id="S5.T2.10.10.13.2.2.1" style="background-color:#DFFF00;">58.0</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.10.10.13.2.3" style="background-color:#FFFDD0;padding-top:0.25pt;padding-bottom:0.25pt;"><span class="ltx_text" id="S5.T2.10.10.13.2.3.1" style="background-color:#FFFDD0;">349</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.10.10.13.2.4" style="background-color:#77DD77;padding-top:0.25pt;padding-bottom:0.25pt;"><span class="ltx_text ltx_font_bold" id="S5.T2.10.10.13.2.4.1" style="background-color:#77DD77;">61.8<span class="ltx_text ltx_font_medium" id="S5.T2.10.10.13.2.4.1.1"></span></span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S5.T2.10.10.13.2.5" style="background-color:#FFFDD0;padding-top:0.25pt;padding-bottom:0.25pt;"><span class="ltx_text" id="S5.T2.10.10.13.2.5.1" style="background-color:#FFFDD0;">56.7</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.10.10.13.2.6" style="background-color:#FFFDD0;padding-top:0.25pt;padding-bottom:0.25pt;"><span class="ltx_text" id="S5.T2.10.10.13.2.6.1" style="background-color:#FFFDD0;">70.9</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.10.10.13.2.7" style="background-color:#DFFF00;padding-top:0.25pt;padding-bottom:0.25pt;"><span class="ltx_text" id="S5.T2.10.10.13.2.7.1" style="background-color:#DFFF00;">87.1</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.10.10.13.2.8" style="background-color:#FFFDD0;padding-top:0.25pt;padding-bottom:0.25pt;"><span class="ltx_text" id="S5.T2.10.10.13.2.8.1" style="background-color:#FFFDD0;">59.7</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.10.10.13.2.9" style="background-color:#DFFF00;padding-top:0.25pt;padding-bottom:0.25pt;"><span class="ltx_text" id="S5.T2.10.10.13.2.9.1" style="background-color:#DFFF00;">7817</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.10.10.13.2.10" style="background-color:#FFFDD0;padding-top:0.25pt;padding-bottom:0.25pt;"><span class="ltx_text" id="S5.T2.10.10.13.2.10.1" style="background-color:#FFFDD0;">50652</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.10.10.13.2.11" style="background-color:#DFFF00;padding-top:0.25pt;padding-bottom:0.25pt;"><span class="ltx_text" id="S5.T2.10.10.13.2.11.1" style="background-color:#DFFF00;">0.51</span></td>
</tr>
<tr class="ltx_tr" id="S5.T2.10.10.14.3">
<td class="ltx_td ltx_align_left" id="S5.T2.10.10.14.3.1" style="padding-top:0.25pt;padding-bottom:0.25pt;">CoMotion <em class="ltx_emph ltx_font_italic" id="S5.T2.10.10.14.3.1.1">strict</em>
</td>
<td class="ltx_td ltx_align_center" id="S5.T2.10.10.14.3.2" style="background-color:#77DD77;padding-top:0.25pt;padding-bottom:0.25pt;"><span class="ltx_text ltx_font_bold" id="S5.T2.10.10.14.3.2.1" style="background-color:#77DD77;">58.2</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.10.10.14.3.3" style="background-color:#77DD77;padding-top:0.25pt;padding-bottom:0.25pt;"><span class="ltx_text ltx_font_bold" id="S5.T2.10.10.14.3.3.1" style="background-color:#77DD77;">232</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.10.10.14.3.4" style="background-color:#FFFDD0;padding-top:0.25pt;padding-bottom:0.25pt;"><span class="ltx_text" id="S5.T2.10.10.14.3.4.1" style="background-color:#FFFDD0;">59.9</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S5.T2.10.10.14.3.5" style="background-color:#DFFF00;padding-top:0.25pt;padding-bottom:0.25pt;"><span class="ltx_text" id="S5.T2.10.10.14.3.5.1" style="background-color:#DFFF00;">61.8</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.10.10.14.3.6" style="background-color:#DFFF00;padding-top:0.25pt;padding-bottom:0.25pt;"><span class="ltx_text" id="S5.T2.10.10.14.3.6.1" style="background-color:#DFFF00;">74.0</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.10.10.14.3.7" style="background-color:#77DD77;padding-top:0.25pt;padding-bottom:0.25pt;"><span class="ltx_text ltx_font_bold" id="S5.T2.10.10.14.3.7.1" style="background-color:#77DD77;">89.1</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.10.10.14.3.8" style="background-color:#DFFF00;padding-top:0.25pt;padding-bottom:0.25pt;"><span class="ltx_text" id="S5.T2.10.10.14.3.8.1" style="background-color:#DFFF00;">63.3</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.10.10.14.3.9" style="background-color:#77DD77;padding-top:0.25pt;padding-bottom:0.25pt;"><span class="ltx_text ltx_font_bold" id="S5.T2.10.10.14.3.9.1" style="background-color:#77DD77;">6086</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.10.10.14.3.10" style="background-color:#DFFF00;padding-top:0.25pt;padding-bottom:0.25pt;"><span class="ltx_text" id="S5.T2.10.10.14.3.10.1" style="background-color:#DFFF00;">45664</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.10.10.14.3.11" style="padding-top:0.25pt;padding-bottom:0.25pt;">-</td>
</tr>
<tr class="ltx_tr" id="S5.T2.10.10.15.4">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S5.T2.10.10.15.4.1" style="padding-top:0.25pt;padding-bottom:0.25pt;">CoMotion</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T2.10.10.15.4.2" style="padding-top:0.25pt;padding-bottom:0.25pt;">54.9</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T2.10.10.15.4.3" style="background-color:#DFFF00;padding-top:0.25pt;padding-bottom:0.25pt;"><span class="ltx_text" id="S5.T2.10.10.15.4.3.1" style="background-color:#DFFF00;">344</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T2.10.10.15.4.4" style="padding-top:0.25pt;padding-bottom:0.25pt;">51.3</td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_bb" id="S5.T2.10.10.15.4.5" style="background-color:#77DD77;padding-top:0.25pt;padding-bottom:0.25pt;"><span class="ltx_text ltx_font_bold" id="S5.T2.10.10.15.4.5.1" style="background-color:#77DD77;">71.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T2.10.10.15.4.6" style="background-color:#77DD77;padding-top:0.25pt;padding-bottom:0.25pt;"><span class="ltx_text ltx_font_bold" id="S5.T2.10.10.15.4.6.1" style="background-color:#77DD77;">79.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T2.10.10.15.4.7" style="background-color:#DFFF00;padding-top:0.25pt;padding-bottom:0.25pt;"><span class="ltx_text" id="S5.T2.10.10.15.4.7.1" style="background-color:#DFFF00;">87.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T2.10.10.15.4.8" style="background-color:#77DD77;padding-top:0.25pt;padding-bottom:0.25pt;"><span class="ltx_text ltx_font_bold" id="S5.T2.10.10.15.4.8.1" style="background-color:#77DD77;">73.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T2.10.10.15.4.9" style="background-color:#FFFDD0;padding-top:0.25pt;padding-bottom:0.25pt;"><span class="ltx_text" id="S5.T2.10.10.15.4.9.1" style="background-color:#FFFDD0;">8115</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T2.10.10.15.4.10" style="background-color:#77DD77;padding-top:0.25pt;padding-bottom:0.25pt;"><span class="ltx_text ltx_font_bold" id="S5.T2.10.10.15.4.10.1" style="background-color:#77DD77;">30394</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T2.10.10.15.4.11" style="background-color:#77DD77;padding-top:0.25pt;padding-bottom:0.25pt;"><span class="ltx_text ltx_font_bold" id="S5.T2.10.10.15.4.11.1" style="background-color:#77DD77;">5.68</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 Table 3 presents a comparison of the model's pose estimation performance against several state-of-the-art methods.  It shows the normalized Percentage of Correct Keypoints (PCK) at different thresholds (0.05 and 0.1) for 2D keypoints on the COCO and PoseTrack datasets.  Additionally, it provides the Mean Per-Joint Position Error (MPJPE) for 3D keypoints on the 3DPW dataset. A key aspect highlighted is the model's consistent performance whether it receives the full image as input or just a cropped region around the target person, demonstrating robustness and efficiency.
> <details>
> <summary>read the caption</summary>
> Table 3: Pose estimation. Normalized PCK accuracy on projected 2D keypoints at varying thresholds on the COCO and PoseTrack datasets, alongside MPJPE of 3D keypoints on the 3DPW dataset. We highlight that our model performs similarly when provided the full image as input rather than an oracle-resized crop around a target person. See text for analysis.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S5.T3.6.6">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S5.T3.6.6.7.1">
<th class="ltx_td ltx_th ltx_th_row ltx_border_tt" id="S5.T3.6.6.7.1.1" style="padding-top:0.25pt;padding-bottom:0.25pt;"></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_tt" id="S5.T3.6.6.7.1.2" rowspan="2" style="padding-top:0.25pt;padding-bottom:0.25pt;"><span class="ltx_text" id="S5.T3.6.6.7.1.2.1">Method</span></th>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="S5.T3.6.6.7.1.3" style="padding-top:0.25pt;padding-bottom:0.25pt;">COCO</td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="S5.T3.6.6.7.1.4" style="padding-top:0.25pt;padding-bottom:0.25pt;">PoseTrack</td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="S5.T3.6.6.7.1.5" style="padding-top:0.25pt;padding-bottom:0.25pt;">3DPW</td>
</tr>
<tr class="ltx_tr" id="S5.T3.6.6.6">
<th class="ltx_td ltx_th ltx_th_row" id="S5.T3.6.6.6.7" style="padding-top:0.25pt;padding-bottom:0.25pt;"></th>
<td class="ltx_td ltx_align_center" id="S5.T3.1.1.1.1" style="padding-top:0.25pt;padding-bottom:0.25pt;">PCKn@0.05<math alttext="\uparrow" class="ltx_Math" display="inline" id="S5.T3.1.1.1.1.m1.1"><semantics id="S5.T3.1.1.1.1.m1.1a"><mo id="S5.T3.1.1.1.1.m1.1.1" stretchy="false" xref="S5.T3.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S5.T3.1.1.1.1.m1.1b"><ci id="S5.T3.1.1.1.1.m1.1.1.cmml" xref="S5.T3.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T3.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S5.T3.1.1.1.1.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center" id="S5.T3.2.2.2.2" style="padding-top:0.25pt;padding-bottom:0.25pt;">PCKn@0.1<math alttext="\uparrow" class="ltx_Math" display="inline" id="S5.T3.2.2.2.2.m1.1"><semantics id="S5.T3.2.2.2.2.m1.1a"><mo id="S5.T3.2.2.2.2.m1.1.1" stretchy="false" xref="S5.T3.2.2.2.2.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S5.T3.2.2.2.2.m1.1b"><ci id="S5.T3.2.2.2.2.m1.1.1.cmml" xref="S5.T3.2.2.2.2.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T3.2.2.2.2.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S5.T3.2.2.2.2.m1.1d">↑</annotation></semantics></math></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S5.T3.3.3.3.3" style="padding-top:0.25pt;padding-bottom:0.25pt;">PCKn@0.05<math alttext="\uparrow" class="ltx_Math" display="inline" id="S5.T3.3.3.3.3.m1.1"><semantics id="S5.T3.3.3.3.3.m1.1a"><mo id="S5.T3.3.3.3.3.m1.1.1" stretchy="false" xref="S5.T3.3.3.3.3.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S5.T3.3.3.3.3.m1.1b"><ci id="S5.T3.3.3.3.3.m1.1.1.cmml" xref="S5.T3.3.3.3.3.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T3.3.3.3.3.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S5.T3.3.3.3.3.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center" id="S5.T3.4.4.4.4" style="padding-top:0.25pt;padding-bottom:0.25pt;">PCKn@0.1<math alttext="\uparrow" class="ltx_Math" display="inline" id="S5.T3.4.4.4.4.m1.1"><semantics id="S5.T3.4.4.4.4.m1.1a"><mo id="S5.T3.4.4.4.4.m1.1.1" stretchy="false" xref="S5.T3.4.4.4.4.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S5.T3.4.4.4.4.m1.1b"><ci id="S5.T3.4.4.4.4.m1.1.1.cmml" xref="S5.T3.4.4.4.4.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T3.4.4.4.4.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S5.T3.4.4.4.4.m1.1d">↑</annotation></semantics></math></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S5.T3.5.5.5.5" style="padding-top:0.25pt;padding-bottom:0.25pt;">MPJPE<math alttext="\downarrow" class="ltx_Math" display="inline" id="S5.T3.5.5.5.5.m1.1"><semantics id="S5.T3.5.5.5.5.m1.1a"><mo id="S5.T3.5.5.5.5.m1.1.1" stretchy="false" xref="S5.T3.5.5.5.5.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S5.T3.5.5.5.5.m1.1b"><ci id="S5.T3.5.5.5.5.m1.1.1.cmml" xref="S5.T3.5.5.5.5.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T3.5.5.5.5.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S5.T3.5.5.5.5.m1.1d">↓</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center" id="S5.T3.6.6.6.6" style="padding-top:0.25pt;padding-bottom:0.25pt;">PA-MPJPE<math alttext="\downarrow" class="ltx_Math" display="inline" id="S5.T3.6.6.6.6.m1.1"><semantics id="S5.T3.6.6.6.6.m1.1a"><mo id="S5.T3.6.6.6.6.m1.1.1" stretchy="false" xref="S5.T3.6.6.6.6.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S5.T3.6.6.6.6.m1.1b"><ci id="S5.T3.6.6.6.6.m1.1.1.cmml" xref="S5.T3.6.6.6.6.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T3.6.6.6.6.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S5.T3.6.6.6.6.m1.1d">↓</annotation></semantics></math>
</td>
</tr>
<tr class="ltx_tr" id="S5.T3.6.6.8.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S5.T3.6.6.8.2.1" rowspan="7" style="padding-top:0.25pt;padding-bottom:0.25pt;"><span class="ltx_text" id="S5.T3.6.6.8.2.1.1">
<span class="ltx_inline-block ltx_transformed_outer" id="S5.T3.6.6.8.2.1.1.1" style="width:8.9pt;height:47.8pt;vertical-align:-21.4pt;"><span class="ltx_transformed_inner" style="width:47.8pt;transform:translate(-19.47pt,2.92pt) rotate(-90deg) ;">
<span class="ltx_p" id="S5.T3.6.6.8.2.1.1.1.1">oracle crop</span>
</span></span></span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S5.T3.6.6.8.2.2" style="padding-top:0.25pt;padding-bottom:0.25pt;">PyMAF <cite class="ltx_cite ltx_citemacro_citep">(Zhang et al., <a class="ltx_ref" href="https://arxiv.org/html/2504.12186v1#bib.bib50" title="">2021a</a>)</cite>
</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.6.6.8.2.3" style="padding-top:0.25pt;padding-bottom:0.25pt;">0.68</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.6.6.8.2.4" style="padding-top:0.25pt;padding-bottom:0.25pt;">0.86</td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_t" id="S5.T3.6.6.8.2.5" style="padding-top:0.25pt;padding-bottom:0.25pt;">0.77</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.6.6.8.2.6" style="padding-top:0.25pt;padding-bottom:0.25pt;">0.92</td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_t" id="S5.T3.6.6.8.2.7" style="padding-top:0.25pt;padding-bottom:0.25pt;">92.8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.6.6.8.2.8" style="padding-top:0.25pt;padding-bottom:0.25pt;">58.9</td>
</tr>
<tr class="ltx_tr" id="S5.T3.6.6.9.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T3.6.6.9.3.1" style="padding-top:0.25pt;padding-bottom:0.25pt;">CLIFF <cite class="ltx_cite ltx_citemacro_citep">(Li et al., <a class="ltx_ref" href="https://arxiv.org/html/2504.12186v1#bib.bib22" title="">2022</a>)</cite>
</th>
<td class="ltx_td ltx_align_center" id="S5.T3.6.6.9.3.2" style="padding-top:0.25pt;padding-bottom:0.25pt;">0.64</td>
<td class="ltx_td ltx_align_center" id="S5.T3.6.6.9.3.3" style="padding-top:0.25pt;padding-bottom:0.25pt;">0.88</td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S5.T3.6.6.9.3.4" style="padding-top:0.25pt;padding-bottom:0.25pt;">0.75</td>
<td class="ltx_td ltx_align_center" id="S5.T3.6.6.9.3.5" style="padding-top:0.25pt;padding-bottom:0.25pt;">0.92</td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S5.T3.6.6.9.3.6" style="padding-top:0.25pt;padding-bottom:0.25pt;">69.0</td>
<td class="ltx_td ltx_align_center" id="S5.T3.6.6.9.3.7" style="background-color:#FFFDD0;padding-top:0.25pt;padding-bottom:0.25pt;"><span class="ltx_text" id="S5.T3.6.6.9.3.7.1" style="background-color:#FFFDD0;">43.0</span></td>
</tr>
<tr class="ltx_tr" id="S5.T3.6.6.10.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T3.6.6.10.4.1" style="padding-top:0.25pt;padding-bottom:0.25pt;">PARE <cite class="ltx_cite ltx_citemacro_citep">(Kocabas et al., <a class="ltx_ref" href="https://arxiv.org/html/2504.12186v1#bib.bib20" title="">2021</a>)</cite>
</th>
<td class="ltx_td ltx_align_center" id="S5.T3.6.6.10.4.2" style="padding-top:0.25pt;padding-bottom:0.25pt;">0.72</td>
<td class="ltx_td ltx_align_center" id="S5.T3.6.6.10.4.3" style="padding-top:0.25pt;padding-bottom:0.25pt;">0.91</td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S5.T3.6.6.10.4.4" style="padding-top:0.25pt;padding-bottom:0.25pt;">0.79</td>
<td class="ltx_td ltx_align_center" id="S5.T3.6.6.10.4.5" style="padding-top:0.25pt;padding-bottom:0.25pt;">0.93</td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S5.T3.6.6.10.4.6" style="padding-top:0.25pt;padding-bottom:0.25pt;">82.0</td>
<td class="ltx_td ltx_align_center" id="S5.T3.6.6.10.4.7" style="padding-top:0.25pt;padding-bottom:0.25pt;">50.9</td>
</tr>
<tr class="ltx_tr" id="S5.T3.6.6.11.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T3.6.6.11.5.1" style="padding-top:0.25pt;padding-bottom:0.25pt;">PyMAF-X <cite class="ltx_cite ltx_citemacro_citep">(Zhang et al., <a class="ltx_ref" href="https://arxiv.org/html/2504.12186v1#bib.bib51" title="">2023a</a>)</cite>
</th>
<td class="ltx_td ltx_align_center" id="S5.T3.6.6.11.5.2" style="background-color:#DFFF00;padding-top:0.25pt;padding-bottom:0.25pt;"><span class="ltx_text" id="S5.T3.6.6.11.5.2.1" style="background-color:#DFFF00;">0.79</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.6.6.11.5.3" style="background-color:#FFFDD0;padding-top:0.25pt;padding-bottom:0.25pt;"><span class="ltx_text" id="S5.T3.6.6.11.5.3.1" style="background-color:#FFFDD0;">0.93</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S5.T3.6.6.11.5.4" style="padding-top:0.25pt;padding-bottom:0.25pt;">0.85</td>
<td class="ltx_td ltx_align_center" id="S5.T3.6.6.11.5.5" style="padding-top:0.25pt;padding-bottom:0.25pt;">0.95</td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S5.T3.6.6.11.5.6" style="padding-top:0.25pt;padding-bottom:0.25pt;">78.0</td>
<td class="ltx_td ltx_align_center" id="S5.T3.6.6.11.5.7" style="padding-top:0.25pt;padding-bottom:0.25pt;">47.1</td>
</tr>
<tr class="ltx_tr" id="S5.T3.6.6.12.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T3.6.6.12.6.1" style="padding-top:0.25pt;padding-bottom:0.25pt;">HMR 2.0a <cite class="ltx_cite ltx_citemacro_citep">(Goel et al., <a class="ltx_ref" href="https://arxiv.org/html/2504.12186v1#bib.bib12" title="">2023</a>)</cite>
</th>
<td class="ltx_td ltx_align_center" id="S5.T3.6.6.12.6.2" style="background-color:#DFFF00;padding-top:0.25pt;padding-bottom:0.25pt;"><span class="ltx_text" id="S5.T3.6.6.12.6.2.1" style="background-color:#DFFF00;">0.79</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.6.6.12.6.3" style="background-color:#DFFF00;padding-top:0.25pt;padding-bottom:0.25pt;"><span class="ltx_text" id="S5.T3.6.6.12.6.3.1" style="background-color:#DFFF00;">0.95</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S5.T3.6.6.12.6.4" style="background-color:#FFFDD0;padding-top:0.25pt;padding-bottom:0.25pt;"><span class="ltx_text" id="S5.T3.6.6.12.6.4.1" style="background-color:#FFFDD0;">0.86</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.6.6.12.6.5" style="background-color:#DFFF00;padding-top:0.25pt;padding-bottom:0.25pt;"><span class="ltx_text" id="S5.T3.6.6.12.6.5.1" style="background-color:#DFFF00;">0.97</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S5.T3.6.6.12.6.6" style="padding-top:0.25pt;padding-bottom:0.25pt;">70.0</td>
<td class="ltx_td ltx_align_center" id="S5.T3.6.6.12.6.7" style="padding-top:0.25pt;padding-bottom:0.25pt;">44.5</td>
</tr>
<tr class="ltx_tr" id="S5.T3.6.6.13.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T3.6.6.13.7.1" style="padding-top:0.25pt;padding-bottom:0.25pt;">HMR 2.0b  <cite class="ltx_cite ltx_citemacro_citep">(Goel et al., <a class="ltx_ref" href="https://arxiv.org/html/2504.12186v1#bib.bib12" title="">2023</a>)</cite>
</th>
<td class="ltx_td ltx_align_center" id="S5.T3.6.6.13.7.2" style="background-color:#77DD77;padding-top:0.25pt;padding-bottom:0.25pt;"><span class="ltx_text ltx_font_bold" id="S5.T3.6.6.13.7.2.1" style="background-color:#77DD77;">0.86</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.6.6.13.7.3" style="background-color:#77DD77;padding-top:0.25pt;padding-bottom:0.25pt;"><span class="ltx_text ltx_font_bold" id="S5.T3.6.6.13.7.3.1" style="background-color:#77DD77;">0.96<span class="ltx_text ltx_font_medium" id="S5.T3.6.6.13.7.3.1.1"></span></span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S5.T3.6.6.13.7.4" style="background-color:#77DD77;padding-top:0.25pt;padding-bottom:0.25pt;"><span class="ltx_text ltx_font_bold" id="S5.T3.6.6.13.7.4.1" style="background-color:#77DD77;">0.90</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.6.6.13.7.5" style="background-color:#77DD77;padding-top:0.25pt;padding-bottom:0.25pt;"><span class="ltx_text ltx_font_bold" id="S5.T3.6.6.13.7.5.1" style="background-color:#77DD77;">0.98<span class="ltx_text ltx_font_medium" id="S5.T3.6.6.13.7.5.1.1"></span></span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S5.T3.6.6.13.7.6" style="padding-top:0.25pt;padding-bottom:0.25pt;">81.3</td>
<td class="ltx_td ltx_align_center" id="S5.T3.6.6.13.7.7" style="padding-top:0.25pt;padding-bottom:0.25pt;">54.3</td>
</tr>
<tr class="ltx_tr" id="S5.T3.6.6.14.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T3.6.6.14.8.1" style="padding-top:0.25pt;padding-bottom:0.25pt;">CoMotion</th>
<td class="ltx_td ltx_align_center" id="S5.T3.6.6.14.8.2" style="background-color:#DFFF00;padding-top:0.25pt;padding-bottom:0.25pt;"><span class="ltx_text" id="S5.T3.6.6.14.8.2.1" style="background-color:#DFFF00;">0.79</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.6.6.14.8.3" style="background-color:#FFFDD0;padding-top:0.25pt;padding-bottom:0.25pt;"><span class="ltx_text" id="S5.T3.6.6.14.8.3.1" style="background-color:#FFFDD0;">0.93</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S5.T3.6.6.14.8.4" style="background-color:#77DD77;padding-top:0.25pt;padding-bottom:0.25pt;"><span class="ltx_text ltx_font_bold" id="S5.T3.6.6.14.8.4.1" style="background-color:#77DD77;">0.90</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.6.6.14.8.5" style="background-color:#DFFF00;padding-top:0.25pt;padding-bottom:0.25pt;"><span class="ltx_text" id="S5.T3.6.6.14.8.5.1" style="background-color:#DFFF00;">0.97</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S5.T3.6.6.14.8.6" style="background-color:#FFFDD0;padding-top:0.25pt;padding-bottom:0.25pt;"><span class="ltx_text" id="S5.T3.6.6.14.8.6.1" style="background-color:#FFFDD0;">63.6</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.6.6.14.8.7" style="background-color:#77DD77;padding-top:0.25pt;padding-bottom:0.25pt;"><span class="ltx_text ltx_font_bold" id="S5.T3.6.6.14.8.7.1" style="background-color:#77DD77;">36.1</span></td>
</tr>
<tr class="ltx_tr" id="S5.T3.6.6.15.9">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_t" id="S5.T3.6.6.15.9.1" rowspan="2" style="padding-top:0.25pt;padding-bottom:0.25pt;"><span class="ltx_text" id="S5.T3.6.6.15.9.1.1">
<span class="ltx_inline-block ltx_transformed_outer" id="S5.T3.6.6.15.9.1.1.1" style="width:6.9pt;height:14.2pt;vertical-align:-3.6pt;"><span class="ltx_transformed_inner" style="width:14.2pt;transform:translate(-3.61pt,0pt) rotate(-90deg) ;">
<span class="ltx_p" id="S5.T3.6.6.15.9.1.1.1.1">full</span>
</span></span></span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S5.T3.6.6.15.9.2" style="padding-top:0.25pt;padding-bottom:0.25pt;">CoMotion</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.6.6.15.9.3" style="background-color:#DFFF00;padding-top:0.25pt;padding-bottom:0.25pt;"><span class="ltx_text" id="S5.T3.6.6.15.9.3.1" style="background-color:#DFFF00;">0.79</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.6.6.15.9.4" style="padding-top:0.25pt;padding-bottom:0.25pt;">0.92</td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_t" id="S5.T3.6.6.15.9.5" style="background-color:#DFFF00;padding-top:0.25pt;padding-bottom:0.25pt;"><span class="ltx_text" id="S5.T3.6.6.15.9.5.1" style="background-color:#DFFF00;">0.88</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.6.6.15.9.6" style="background-color:#FFFDD0;padding-top:0.25pt;padding-bottom:0.25pt;"><span class="ltx_text" id="S5.T3.6.6.15.9.6.1" style="background-color:#FFFDD0;">0.96</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_t" id="S5.T3.6.6.15.9.7" style="background-color:#77DD77;padding-top:0.25pt;padding-bottom:0.25pt;"><span class="ltx_text ltx_font_bold" id="S5.T3.6.6.15.9.7.1" style="background-color:#77DD77;">60.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.6.6.15.9.8" style="background-color:#DFFF00;padding-top:0.25pt;padding-bottom:0.25pt;"><span class="ltx_text" id="S5.T3.6.6.15.9.8.1" style="background-color:#DFFF00;">37.3</span></td>
</tr>
<tr class="ltx_tr" id="S5.T3.6.6.16.10">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S5.T3.6.6.16.10.1" style="padding-top:0.25pt;padding-bottom:0.25pt;">- detection only</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T3.6.6.16.10.2" style="background-color:#DFFF00;padding-top:0.25pt;padding-bottom:0.25pt;"><span class="ltx_text" id="S5.T3.6.6.16.10.2.1" style="background-color:#DFFF00;">0.79</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T3.6.6.16.10.3" style="padding-top:0.25pt;padding-bottom:0.25pt;">0.91</td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_bb" id="S5.T3.6.6.16.10.4" style="background-color:#DFFF00;padding-top:0.25pt;padding-bottom:0.25pt;"><span class="ltx_text" id="S5.T3.6.6.16.10.4.1" style="background-color:#DFFF00;">0.88</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T3.6.6.16.10.5" style="padding-top:0.25pt;padding-bottom:0.25pt;">0.95</td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_bb" id="S5.T3.6.6.16.10.6" style="background-color:#DFFF00;padding-top:0.25pt;padding-bottom:0.25pt;"><span class="ltx_text" id="S5.T3.6.6.16.10.6.1" style="background-color:#DFFF00;">60.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T3.6.6.16.10.7" style="background-color:#DFFF00;padding-top:0.25pt;padding-bottom:0.25pt;"><span class="ltx_text" id="S5.T3.6.6.16.10.7.1" style="background-color:#DFFF00;">37.3</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents an ablation study on the impact of the recurrent hidden state and GRU within the CoMotion model.  Three variations of the model are compared: the full model with both the GRU and hidden state, a model without the GRU, and a model without the hidden state.  The results demonstrate the contribution of each component to the overall performance, evaluated across three metrics on PoseTrack, EgoHumans, and 3DPW datasets, including 2D and 3D pose accuracy metrics (PCK, MPJPE) and tracking metrics (MOTA, IDF1, IDs).
> <details>
> <summary>read the caption</summary>
> Table 4: Hidden state ablation. From our full system (first row) we remove either the GRU (second row) or the hidden state altogether (third row).
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="A1.T4.8.8">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A1.T4.8.8.9.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A1.T4.8.8.9.1.1" rowspan="2" style="padding-top:0.25pt;padding-bottom:0.25pt;"><span class="ltx_text" id="A1.T4.8.8.9.1.1.1">Hidden</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A1.T4.8.8.9.1.2" rowspan="2" style="padding-top:0.25pt;padding-bottom:0.25pt;"><span class="ltx_text" id="A1.T4.8.8.9.1.2.1">GRU</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="4" id="A1.T4.8.8.9.1.3" style="padding-top:0.25pt;padding-bottom:0.25pt;">PoseTrack</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="2" id="A1.T4.8.8.9.1.4" style="padding-top:0.25pt;padding-bottom:0.25pt;">EgoHumans</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="2" id="A1.T4.8.8.9.1.5" style="padding-top:0.25pt;padding-bottom:0.25pt;">3DPW (val)</th>
</tr>
<tr class="ltx_tr" id="A1.T4.8.8.8">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A1.T4.1.1.1.1" style="padding-top:0.25pt;padding-bottom:0.25pt;">2D@0.05<math alttext="\uparrow" class="ltx_Math" display="inline" id="A1.T4.1.1.1.1.m1.1"><semantics id="A1.T4.1.1.1.1.m1.1a"><mo id="A1.T4.1.1.1.1.m1.1.1" stretchy="false" xref="A1.T4.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="A1.T4.1.1.1.1.m1.1b"><ci id="A1.T4.1.1.1.1.m1.1.1.cmml" xref="A1.T4.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="A1.T4.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="A1.T4.1.1.1.1.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A1.T4.2.2.2.2" style="padding-top:0.25pt;padding-bottom:0.25pt;">MOTA<math alttext="\uparrow" class="ltx_Math" display="inline" id="A1.T4.2.2.2.2.m1.1"><semantics id="A1.T4.2.2.2.2.m1.1a"><mo id="A1.T4.2.2.2.2.m1.1.1" stretchy="false" xref="A1.T4.2.2.2.2.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="A1.T4.2.2.2.2.m1.1b"><ci id="A1.T4.2.2.2.2.m1.1.1.cmml" xref="A1.T4.2.2.2.2.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="A1.T4.2.2.2.2.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="A1.T4.2.2.2.2.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A1.T4.3.3.3.3" style="padding-top:0.25pt;padding-bottom:0.25pt;">IDF1<math alttext="\uparrow" class="ltx_Math" display="inline" id="A1.T4.3.3.3.3.m1.1"><semantics id="A1.T4.3.3.3.3.m1.1a"><mo id="A1.T4.3.3.3.3.m1.1.1" stretchy="false" xref="A1.T4.3.3.3.3.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="A1.T4.3.3.3.3.m1.1b"><ci id="A1.T4.3.3.3.3.m1.1.1.cmml" xref="A1.T4.3.3.3.3.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="A1.T4.3.3.3.3.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="A1.T4.3.3.3.3.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A1.T4.4.4.4.4" style="padding-top:0.25pt;padding-bottom:0.25pt;">IDs<math alttext="\downarrow" class="ltx_Math" display="inline" id="A1.T4.4.4.4.4.m1.1"><semantics id="A1.T4.4.4.4.4.m1.1a"><mo id="A1.T4.4.4.4.4.m1.1.1" stretchy="false" xref="A1.T4.4.4.4.4.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="A1.T4.4.4.4.4.m1.1b"><ci id="A1.T4.4.4.4.4.m1.1.1.cmml" xref="A1.T4.4.4.4.4.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="A1.T4.4.4.4.4.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="A1.T4.4.4.4.4.m1.1d">↓</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A1.T4.5.5.5.5" style="padding-top:0.25pt;padding-bottom:0.25pt;">3D@0.1<math alttext="\uparrow" class="ltx_Math" display="inline" id="A1.T4.5.5.5.5.m1.1"><semantics id="A1.T4.5.5.5.5.m1.1a"><mo id="A1.T4.5.5.5.5.m1.1.1" stretchy="false" xref="A1.T4.5.5.5.5.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="A1.T4.5.5.5.5.m1.1b"><ci id="A1.T4.5.5.5.5.m1.1.1.cmml" xref="A1.T4.5.5.5.5.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="A1.T4.5.5.5.5.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="A1.T4.5.5.5.5.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A1.T4.6.6.6.6" style="padding-top:0.25pt;padding-bottom:0.25pt;">MPJPE<math alttext="\downarrow" class="ltx_Math" display="inline" id="A1.T4.6.6.6.6.m1.1"><semantics id="A1.T4.6.6.6.6.m1.1a"><mo id="A1.T4.6.6.6.6.m1.1.1" stretchy="false" xref="A1.T4.6.6.6.6.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="A1.T4.6.6.6.6.m1.1b"><ci id="A1.T4.6.6.6.6.m1.1.1.cmml" xref="A1.T4.6.6.6.6.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="A1.T4.6.6.6.6.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="A1.T4.6.6.6.6.m1.1d">↓</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A1.T4.7.7.7.7" style="padding-top:0.25pt;padding-bottom:0.25pt;">3D@0.1<math alttext="\uparrow" class="ltx_Math" display="inline" id="A1.T4.7.7.7.7.m1.1"><semantics id="A1.T4.7.7.7.7.m1.1a"><mo id="A1.T4.7.7.7.7.m1.1.1" stretchy="false" xref="A1.T4.7.7.7.7.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="A1.T4.7.7.7.7.m1.1b"><ci id="A1.T4.7.7.7.7.m1.1.1.cmml" xref="A1.T4.7.7.7.7.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="A1.T4.7.7.7.7.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="A1.T4.7.7.7.7.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A1.T4.8.8.8.8" style="padding-top:0.25pt;padding-bottom:0.25pt;">MPJPE<math alttext="\downarrow" class="ltx_Math" display="inline" id="A1.T4.8.8.8.8.m1.1"><semantics id="A1.T4.8.8.8.8.m1.1a"><mo id="A1.T4.8.8.8.8.m1.1.1" stretchy="false" xref="A1.T4.8.8.8.8.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="A1.T4.8.8.8.8.m1.1b"><ci id="A1.T4.8.8.8.8.m1.1.1.cmml" xref="A1.T4.8.8.8.8.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="A1.T4.8.8.8.8.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="A1.T4.8.8.8.8.m1.1d">↓</annotation></semantics></math>
</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A1.T4.8.8.10.1">
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T4.8.8.10.1.1" style="padding-top:0.25pt;padding-bottom:0.25pt;">✓</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T4.8.8.10.1.2" style="padding-top:0.25pt;padding-bottom:0.25pt;">✓</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T4.8.8.10.1.3" style="background-color:#77DD77;padding-top:0.25pt;padding-bottom:0.25pt;"><span class="ltx_text ltx_font_bold" id="A1.T4.8.8.10.1.3.1" style="background-color:#77DD77;">74.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T4.8.8.10.1.4" style="background-color:#77DD77;padding-top:0.25pt;padding-bottom:0.25pt;"><span class="ltx_text ltx_font_bold" id="A1.T4.8.8.10.1.4.1" style="background-color:#77DD77;">70.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T4.8.8.10.1.5" style="background-color:#77DD77;padding-top:0.25pt;padding-bottom:0.25pt;"><span class="ltx_text ltx_font_bold" id="A1.T4.8.8.10.1.5.1" style="background-color:#77DD77;">78.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T4.8.8.10.1.6" style="background-color:#77DD77;padding-top:0.25pt;padding-bottom:0.25pt;"><span class="ltx_text ltx_font_bold" id="A1.T4.8.8.10.1.6.1" style="background-color:#77DD77;">491</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T4.8.8.10.1.7" style="background-color:#77DD77;padding-top:0.25pt;padding-bottom:0.25pt;"><span class="ltx_text ltx_font_bold" id="A1.T4.8.8.10.1.7.1" style="background-color:#77DD77;">77.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T4.8.8.10.1.8" style="background-color:#77DD77;padding-top:0.25pt;padding-bottom:0.25pt;"><span class="ltx_text ltx_font_bold" id="A1.T4.8.8.10.1.8.1" style="background-color:#77DD77;">83.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T4.8.8.10.1.9" style="background-color:#77DD77;padding-top:0.25pt;padding-bottom:0.25pt;"><span class="ltx_text ltx_font_bold" id="A1.T4.8.8.10.1.9.1" style="background-color:#77DD77;">90.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T4.8.8.10.1.10" style="background-color:#DFFF00;padding-top:0.25pt;padding-bottom:0.25pt;"><span class="ltx_text" id="A1.T4.8.8.10.1.10.1" style="background-color:#DFFF00;">61.3</span></td>
</tr>
<tr class="ltx_tr" id="A1.T4.8.8.11.2">
<td class="ltx_td ltx_align_center" id="A1.T4.8.8.11.2.1" style="padding-top:0.25pt;padding-bottom:0.25pt;">✓</td>
<td class="ltx_td ltx_align_center" id="A1.T4.8.8.11.2.2" style="padding-top:0.25pt;padding-bottom:0.25pt;">-</td>
<td class="ltx_td ltx_align_center" id="A1.T4.8.8.11.2.3" style="background-color:#DFFF00;padding-top:0.25pt;padding-bottom:0.25pt;"><span class="ltx_text" id="A1.T4.8.8.11.2.3.1" style="background-color:#DFFF00;">73.0</span></td>
<td class="ltx_td ltx_align_center" id="A1.T4.8.8.11.2.4" style="background-color:#FFFDD0;padding-top:0.25pt;padding-bottom:0.25pt;"><span class="ltx_text" id="A1.T4.8.8.11.2.4.1" style="background-color:#FFFDD0;">69.8</span></td>
<td class="ltx_td ltx_align_center" id="A1.T4.8.8.11.2.5" style="background-color:#FFFDD0;padding-top:0.25pt;padding-bottom:0.25pt;"><span class="ltx_text" id="A1.T4.8.8.11.2.5.1" style="background-color:#FFFDD0;">76.9</span></td>
<td class="ltx_td ltx_align_center" id="A1.T4.8.8.11.2.6" style="background-color:#DFFF00;padding-top:0.25pt;padding-bottom:0.25pt;"><span class="ltx_text" id="A1.T4.8.8.11.2.6.1" style="background-color:#DFFF00;">506</span></td>
<td class="ltx_td ltx_align_center" id="A1.T4.8.8.11.2.7" style="background-color:#DFFF00;padding-top:0.25pt;padding-bottom:0.25pt;"><span class="ltx_text" id="A1.T4.8.8.11.2.7.1" style="background-color:#DFFF00;">76.3</span></td>
<td class="ltx_td ltx_align_center" id="A1.T4.8.8.11.2.8" style="background-color:#77DD77;padding-top:0.25pt;padding-bottom:0.25pt;"><span class="ltx_text ltx_font_bold" id="A1.T4.8.8.11.2.8.1" style="background-color:#77DD77;">83.8</span></td>
<td class="ltx_td ltx_align_center" id="A1.T4.8.8.11.2.9" style="background-color:#DFFF00;padding-top:0.25pt;padding-bottom:0.25pt;"><span class="ltx_text" id="A1.T4.8.8.11.2.9.1" style="background-color:#DFFF00;">90.5</span></td>
<td class="ltx_td ltx_align_center" id="A1.T4.8.8.11.2.10" style="background-color:#FFFDD0;padding-top:0.25pt;padding-bottom:0.25pt;"><span class="ltx_text" id="A1.T4.8.8.11.2.10.1" style="background-color:#FFFDD0;">62.0</span></td>
</tr>
<tr class="ltx_tr" id="A1.T4.8.8.12.3">
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T4.8.8.12.3.1" style="padding-top:0.25pt;padding-bottom:0.25pt;">-</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T4.8.8.12.3.2" style="padding-top:0.25pt;padding-bottom:0.25pt;">-</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T4.8.8.12.3.3" style="background-color:#FFFDD0;padding-top:0.25pt;padding-bottom:0.25pt;"><span class="ltx_text" id="A1.T4.8.8.12.3.3.1" style="background-color:#FFFDD0;">72.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T4.8.8.12.3.4" style="background-color:#DFFF00;padding-top:0.25pt;padding-bottom:0.25pt;"><span class="ltx_text" id="A1.T4.8.8.12.3.4.1" style="background-color:#DFFF00;">70.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T4.8.8.12.3.5" style="background-color:#DFFF00;padding-top:0.25pt;padding-bottom:0.25pt;"><span class="ltx_text" id="A1.T4.8.8.12.3.5.1" style="background-color:#DFFF00;">77.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T4.8.8.12.3.6" style="background-color:#FFFDD0;padding-top:0.25pt;padding-bottom:0.25pt;"><span class="ltx_text" id="A1.T4.8.8.12.3.6.1" style="background-color:#FFFDD0;">559</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T4.8.8.12.3.7" style="background-color:#FFFDD0;padding-top:0.25pt;padding-bottom:0.25pt;"><span class="ltx_text" id="A1.T4.8.8.12.3.7.1" style="background-color:#FFFDD0;">72.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T4.8.8.12.3.8" style="background-color:#DFFF00;padding-top:0.25pt;padding-bottom:0.25pt;"><span class="ltx_text" id="A1.T4.8.8.12.3.8.1" style="background-color:#DFFF00;">89.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T4.8.8.12.3.9" style="background-color:#77DD77;padding-top:0.25pt;padding-bottom:0.25pt;"><span class="ltx_text ltx_font_bold" id="A1.T4.8.8.12.3.9.1" style="background-color:#77DD77;">90.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T4.8.8.12.3.10" style="background-color:#77DD77;padding-top:0.25pt;padding-bottom:0.25pt;"><span class="ltx_text ltx_font_bold" id="A1.T4.8.8.12.3.10.1" style="background-color:#77DD77;">61.2</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of an ablation study investigating the effects of including the PoseTrack and DanceTrack datasets in the training process of the CoMotion model.  It shows how the model's performance changes on various metrics (2D PCK@0.05, MOTA, IDF1, IDs, 3D@0.1, MPJPE) across three different datasets (PoseTrack, EgoHumans, and 3DPW) when either PoseTrack or DanceTrack, or both, are excluded from training.
> <details>
> <summary>read the caption</summary>
> Table 5: Ablation study on the impact of PoseTrack and DanceTrack.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="A1.T5.8.8">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A1.T5.8.8.9.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A1.T5.8.8.9.1.1" rowspan="2" style="padding-top:0.25pt;padding-bottom:0.25pt;"><span class="ltx_text" id="A1.T5.8.8.9.1.1.1">PoseTrack</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A1.T5.8.8.9.1.2" rowspan="2" style="padding-top:0.25pt;padding-bottom:0.25pt;"><span class="ltx_text" id="A1.T5.8.8.9.1.2.1">DanceTrack</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="4" id="A1.T5.8.8.9.1.3" style="padding-top:0.25pt;padding-bottom:0.25pt;">PoseTrack</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="2" id="A1.T5.8.8.9.1.4" style="padding-top:0.25pt;padding-bottom:0.25pt;">EgoHumans</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="2" id="A1.T5.8.8.9.1.5" style="padding-top:0.25pt;padding-bottom:0.25pt;">3DPW (val)</th>
</tr>
<tr class="ltx_tr" id="A1.T5.8.8.8">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A1.T5.1.1.1.1" style="padding-top:0.25pt;padding-bottom:0.25pt;">2D@0.05<math alttext="\uparrow" class="ltx_Math" display="inline" id="A1.T5.1.1.1.1.m1.1"><semantics id="A1.T5.1.1.1.1.m1.1a"><mo id="A1.T5.1.1.1.1.m1.1.1" stretchy="false" xref="A1.T5.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="A1.T5.1.1.1.1.m1.1b"><ci id="A1.T5.1.1.1.1.m1.1.1.cmml" xref="A1.T5.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="A1.T5.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="A1.T5.1.1.1.1.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A1.T5.2.2.2.2" style="padding-top:0.25pt;padding-bottom:0.25pt;">MOTA<math alttext="\uparrow" class="ltx_Math" display="inline" id="A1.T5.2.2.2.2.m1.1"><semantics id="A1.T5.2.2.2.2.m1.1a"><mo id="A1.T5.2.2.2.2.m1.1.1" stretchy="false" xref="A1.T5.2.2.2.2.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="A1.T5.2.2.2.2.m1.1b"><ci id="A1.T5.2.2.2.2.m1.1.1.cmml" xref="A1.T5.2.2.2.2.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="A1.T5.2.2.2.2.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="A1.T5.2.2.2.2.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A1.T5.3.3.3.3" style="padding-top:0.25pt;padding-bottom:0.25pt;">IDF1<math alttext="\uparrow" class="ltx_Math" display="inline" id="A1.T5.3.3.3.3.m1.1"><semantics id="A1.T5.3.3.3.3.m1.1a"><mo id="A1.T5.3.3.3.3.m1.1.1" stretchy="false" xref="A1.T5.3.3.3.3.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="A1.T5.3.3.3.3.m1.1b"><ci id="A1.T5.3.3.3.3.m1.1.1.cmml" xref="A1.T5.3.3.3.3.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="A1.T5.3.3.3.3.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="A1.T5.3.3.3.3.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A1.T5.4.4.4.4" style="padding-top:0.25pt;padding-bottom:0.25pt;">IDs<math alttext="\downarrow" class="ltx_Math" display="inline" id="A1.T5.4.4.4.4.m1.1"><semantics id="A1.T5.4.4.4.4.m1.1a"><mo id="A1.T5.4.4.4.4.m1.1.1" stretchy="false" xref="A1.T5.4.4.4.4.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="A1.T5.4.4.4.4.m1.1b"><ci id="A1.T5.4.4.4.4.m1.1.1.cmml" xref="A1.T5.4.4.4.4.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="A1.T5.4.4.4.4.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="A1.T5.4.4.4.4.m1.1d">↓</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A1.T5.5.5.5.5" style="padding-top:0.25pt;padding-bottom:0.25pt;">3D@0.1<math alttext="\uparrow" class="ltx_Math" display="inline" id="A1.T5.5.5.5.5.m1.1"><semantics id="A1.T5.5.5.5.5.m1.1a"><mo id="A1.T5.5.5.5.5.m1.1.1" stretchy="false" xref="A1.T5.5.5.5.5.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="A1.T5.5.5.5.5.m1.1b"><ci id="A1.T5.5.5.5.5.m1.1.1.cmml" xref="A1.T5.5.5.5.5.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="A1.T5.5.5.5.5.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="A1.T5.5.5.5.5.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A1.T5.6.6.6.6" style="padding-top:0.25pt;padding-bottom:0.25pt;">MPJPE<math alttext="\downarrow" class="ltx_Math" display="inline" id="A1.T5.6.6.6.6.m1.1"><semantics id="A1.T5.6.6.6.6.m1.1a"><mo id="A1.T5.6.6.6.6.m1.1.1" stretchy="false" xref="A1.T5.6.6.6.6.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="A1.T5.6.6.6.6.m1.1b"><ci id="A1.T5.6.6.6.6.m1.1.1.cmml" xref="A1.T5.6.6.6.6.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="A1.T5.6.6.6.6.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="A1.T5.6.6.6.6.m1.1d">↓</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A1.T5.7.7.7.7" style="padding-top:0.25pt;padding-bottom:0.25pt;">3D@0.1<math alttext="\uparrow" class="ltx_Math" display="inline" id="A1.T5.7.7.7.7.m1.1"><semantics id="A1.T5.7.7.7.7.m1.1a"><mo id="A1.T5.7.7.7.7.m1.1.1" stretchy="false" xref="A1.T5.7.7.7.7.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="A1.T5.7.7.7.7.m1.1b"><ci id="A1.T5.7.7.7.7.m1.1.1.cmml" xref="A1.T5.7.7.7.7.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="A1.T5.7.7.7.7.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="A1.T5.7.7.7.7.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A1.T5.8.8.8.8" style="padding-top:0.25pt;padding-bottom:0.25pt;">MPJPE<math alttext="\downarrow" class="ltx_Math" display="inline" id="A1.T5.8.8.8.8.m1.1"><semantics id="A1.T5.8.8.8.8.m1.1a"><mo id="A1.T5.8.8.8.8.m1.1.1" stretchy="false" xref="A1.T5.8.8.8.8.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="A1.T5.8.8.8.8.m1.1b"><ci id="A1.T5.8.8.8.8.m1.1.1.cmml" xref="A1.T5.8.8.8.8.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="A1.T5.8.8.8.8.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="A1.T5.8.8.8.8.m1.1d">↓</annotation></semantics></math>
</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A1.T5.8.8.10.1">
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T5.8.8.10.1.1" style="padding-top:0.25pt;padding-bottom:0.25pt;">✓</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T5.8.8.10.1.2" style="padding-top:0.25pt;padding-bottom:0.25pt;">-</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T5.8.8.10.1.3" style="background-color:#DFFF00;padding-top:0.25pt;padding-bottom:0.25pt;"><span class="ltx_text" id="A1.T5.8.8.10.1.3.1" style="background-color:#DFFF00;">73.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T5.8.8.10.1.4" style="background-color:#FFFDD0;padding-top:0.25pt;padding-bottom:0.25pt;"><span class="ltx_text" id="A1.T5.8.8.10.1.4.1" style="background-color:#FFFDD0;">68.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T5.8.8.10.1.5" style="background-color:#DFFF00;padding-top:0.25pt;padding-bottom:0.25pt;"><span class="ltx_text" id="A1.T5.8.8.10.1.5.1" style="background-color:#DFFF00;">75.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T5.8.8.10.1.6" style="background-color:#DFFF00;padding-top:0.25pt;padding-bottom:0.25pt;"><span class="ltx_text" id="A1.T5.8.8.10.1.6.1" style="background-color:#DFFF00;">576</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T5.8.8.10.1.7" style="background-color:#FFFDD0;padding-top:0.25pt;padding-bottom:0.25pt;"><span class="ltx_text" id="A1.T5.8.8.10.1.7.1" style="background-color:#FFFDD0;">76.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T5.8.8.10.1.8" style="background-color:#DFFF00;padding-top:0.25pt;padding-bottom:0.25pt;"><span class="ltx_text" id="A1.T5.8.8.10.1.8.1" style="background-color:#DFFF00;">84.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T5.8.8.10.1.9" style="background-color:#FFFDD0;padding-top:0.25pt;padding-bottom:0.25pt;"><span class="ltx_text" id="A1.T5.8.8.10.1.9.1" style="background-color:#FFFDD0;">90.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T5.8.8.10.1.10" style="background-color:#FFFDD0;padding-top:0.25pt;padding-bottom:0.25pt;"><span class="ltx_text" id="A1.T5.8.8.10.1.10.1" style="background-color:#FFFDD0;">62.8</span></td>
</tr>
<tr class="ltx_tr" id="A1.T5.8.8.11.2">
<td class="ltx_td ltx_align_center" id="A1.T5.8.8.11.2.1" style="padding-top:0.25pt;padding-bottom:0.25pt;">-</td>
<td class="ltx_td ltx_align_center" id="A1.T5.8.8.11.2.2" style="padding-top:0.25pt;padding-bottom:0.25pt;">✓</td>
<td class="ltx_td ltx_align_center" id="A1.T5.8.8.11.2.3" style="background-color:#FFFDD0;padding-top:0.25pt;padding-bottom:0.25pt;"><span class="ltx_text" id="A1.T5.8.8.11.2.3.1" style="background-color:#FFFDD0;">72.4</span></td>
<td class="ltx_td ltx_align_center" id="A1.T5.8.8.11.2.4" style="background-color:#DFFF00;padding-top:0.25pt;padding-bottom:0.25pt;"><span class="ltx_text" id="A1.T5.8.8.11.2.4.1" style="background-color:#DFFF00;">69.8</span></td>
<td class="ltx_td ltx_align_center" id="A1.T5.8.8.11.2.5" style="background-color:#DFFF00;padding-top:0.25pt;padding-bottom:0.25pt;"><span class="ltx_text" id="A1.T5.8.8.11.2.5.1" style="background-color:#DFFF00;">75.6</span></td>
<td class="ltx_td ltx_align_center" id="A1.T5.8.8.11.2.6" style="background-color:#FFFDD0;padding-top:0.25pt;padding-bottom:0.25pt;"><span class="ltx_text" id="A1.T5.8.8.11.2.6.1" style="background-color:#FFFDD0;">703</span></td>
<td class="ltx_td ltx_align_center" id="A1.T5.8.8.11.2.7" style="background-color:#77DD77;padding-top:0.25pt;padding-bottom:0.25pt;"><span class="ltx_text ltx_font_bold" id="A1.T5.8.8.11.2.7.1" style="background-color:#77DD77;">77.5</span></td>
<td class="ltx_td ltx_align_center" id="A1.T5.8.8.11.2.8" style="background-color:#FFFDD0;padding-top:0.25pt;padding-bottom:0.25pt;"><span class="ltx_text" id="A1.T5.8.8.11.2.8.1" style="background-color:#FFFDD0;">84.7</span></td>
<td class="ltx_td ltx_align_center" id="A1.T5.8.8.11.2.9" style="background-color:#77DD77;padding-top:0.25pt;padding-bottom:0.25pt;"><span class="ltx_text ltx_font_bold" id="A1.T5.8.8.11.2.9.1" style="background-color:#77DD77;">90.6</span></td>
<td class="ltx_td ltx_align_center" id="A1.T5.8.8.11.2.10" style="background-color:#DFFF00;padding-top:0.25pt;padding-bottom:0.25pt;"><span class="ltx_text" id="A1.T5.8.8.11.2.10.1" style="background-color:#DFFF00;">61.9</span></td>
</tr>
<tr class="ltx_tr" id="A1.T5.8.8.12.3">
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T5.8.8.12.3.1" style="padding-top:0.25pt;padding-bottom:0.25pt;">✓</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T5.8.8.12.3.2" style="padding-top:0.25pt;padding-bottom:0.25pt;">✓</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T5.8.8.12.3.3" style="background-color:#77DD77;padding-top:0.25pt;padding-bottom:0.25pt;"><span class="ltx_text ltx_font_bold" id="A1.T5.8.8.12.3.3.1" style="background-color:#77DD77;">74.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T5.8.8.12.3.4" style="background-color:#77DD77;padding-top:0.25pt;padding-bottom:0.25pt;"><span class="ltx_text ltx_font_bold" id="A1.T5.8.8.12.3.4.1" style="background-color:#77DD77;">70.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T5.8.8.12.3.5" style="background-color:#77DD77;padding-top:0.25pt;padding-bottom:0.25pt;"><span class="ltx_text ltx_font_bold" id="A1.T5.8.8.12.3.5.1" style="background-color:#77DD77;">78.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T5.8.8.12.3.6" style="background-color:#77DD77;padding-top:0.25pt;padding-bottom:0.25pt;"><span class="ltx_text ltx_font_bold" id="A1.T5.8.8.12.3.6.1" style="background-color:#77DD77;">491</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T5.8.8.12.3.7" style="background-color:#DFFF00;padding-top:0.25pt;padding-bottom:0.25pt;"><span class="ltx_text" id="A1.T5.8.8.12.3.7.1" style="background-color:#DFFF00;">77.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T5.8.8.12.3.8" style="background-color:#77DD77;padding-top:0.25pt;padding-bottom:0.25pt;"><span class="ltx_text ltx_font_bold" id="A1.T5.8.8.12.3.8.1" style="background-color:#77DD77;">83.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T5.8.8.12.3.9" style="background-color:#77DD77;padding-top:0.25pt;padding-bottom:0.25pt;"><span class="ltx_text ltx_font_bold" id="A1.T5.8.8.12.3.9.1" style="background-color:#77DD77;">90.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T5.8.8.12.3.10" style="background-color:#DFFF00;padding-top:0.25pt;padding-bottom:0.25pt;"><span class="ltx_text" id="A1.T5.8.8.12.3.10.1" style="background-color:#DFFF00;">61.3</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of an ablation study investigating the impact of adding a third training stage focused on longer video sequences. The table shows the performance metrics (2D PCK@0.05, MOTA, IDF1, IDs, 3D@0.1, MPJPE) for the PoseTrack and EgoHumans datasets, as well as the 3DPW dataset.  These metrics are evaluated after the second training stage and after the addition of the third training stage.
> <details>
> <summary>read the caption</summary>
> Table 6: Impact of additional training stage on longer sequences.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="A1.T6.8.8">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A1.T6.8.8.9.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A1.T6.8.8.9.1.1" rowspan="2" style="padding-top:0.25pt;padding-bottom:0.25pt;"><span class="ltx_text" id="A1.T6.8.8.9.1.1.1">Stage 2</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A1.T6.8.8.9.1.2" rowspan="2" style="padding-top:0.25pt;padding-bottom:0.25pt;"><span class="ltx_text" id="A1.T6.8.8.9.1.2.1">Stage 3</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="4" id="A1.T6.8.8.9.1.3" style="padding-top:0.25pt;padding-bottom:0.25pt;">PoseTrack</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="2" id="A1.T6.8.8.9.1.4" style="padding-top:0.25pt;padding-bottom:0.25pt;">EgoHumans</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="2" id="A1.T6.8.8.9.1.5" style="padding-top:0.25pt;padding-bottom:0.25pt;">3DPW (val)</th>
</tr>
<tr class="ltx_tr" id="A1.T6.8.8.8">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A1.T6.1.1.1.1" style="padding-top:0.25pt;padding-bottom:0.25pt;">2D@0.05<math alttext="\uparrow" class="ltx_Math" display="inline" id="A1.T6.1.1.1.1.m1.1"><semantics id="A1.T6.1.1.1.1.m1.1a"><mo id="A1.T6.1.1.1.1.m1.1.1" stretchy="false" xref="A1.T6.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="A1.T6.1.1.1.1.m1.1b"><ci id="A1.T6.1.1.1.1.m1.1.1.cmml" xref="A1.T6.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="A1.T6.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="A1.T6.1.1.1.1.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A1.T6.2.2.2.2" style="padding-top:0.25pt;padding-bottom:0.25pt;">MOTA<math alttext="\uparrow" class="ltx_Math" display="inline" id="A1.T6.2.2.2.2.m1.1"><semantics id="A1.T6.2.2.2.2.m1.1a"><mo id="A1.T6.2.2.2.2.m1.1.1" stretchy="false" xref="A1.T6.2.2.2.2.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="A1.T6.2.2.2.2.m1.1b"><ci id="A1.T6.2.2.2.2.m1.1.1.cmml" xref="A1.T6.2.2.2.2.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="A1.T6.2.2.2.2.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="A1.T6.2.2.2.2.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A1.T6.3.3.3.3" style="padding-top:0.25pt;padding-bottom:0.25pt;">IDF1<math alttext="\uparrow" class="ltx_Math" display="inline" id="A1.T6.3.3.3.3.m1.1"><semantics id="A1.T6.3.3.3.3.m1.1a"><mo id="A1.T6.3.3.3.3.m1.1.1" stretchy="false" xref="A1.T6.3.3.3.3.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="A1.T6.3.3.3.3.m1.1b"><ci id="A1.T6.3.3.3.3.m1.1.1.cmml" xref="A1.T6.3.3.3.3.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="A1.T6.3.3.3.3.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="A1.T6.3.3.3.3.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A1.T6.4.4.4.4" style="padding-top:0.25pt;padding-bottom:0.25pt;">IDs<math alttext="\downarrow" class="ltx_Math" display="inline" id="A1.T6.4.4.4.4.m1.1"><semantics id="A1.T6.4.4.4.4.m1.1a"><mo id="A1.T6.4.4.4.4.m1.1.1" stretchy="false" xref="A1.T6.4.4.4.4.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="A1.T6.4.4.4.4.m1.1b"><ci id="A1.T6.4.4.4.4.m1.1.1.cmml" xref="A1.T6.4.4.4.4.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="A1.T6.4.4.4.4.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="A1.T6.4.4.4.4.m1.1d">↓</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A1.T6.5.5.5.5" style="padding-top:0.25pt;padding-bottom:0.25pt;">3D@0.1<math alttext="\uparrow" class="ltx_Math" display="inline" id="A1.T6.5.5.5.5.m1.1"><semantics id="A1.T6.5.5.5.5.m1.1a"><mo id="A1.T6.5.5.5.5.m1.1.1" stretchy="false" xref="A1.T6.5.5.5.5.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="A1.T6.5.5.5.5.m1.1b"><ci id="A1.T6.5.5.5.5.m1.1.1.cmml" xref="A1.T6.5.5.5.5.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="A1.T6.5.5.5.5.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="A1.T6.5.5.5.5.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A1.T6.6.6.6.6" style="padding-top:0.25pt;padding-bottom:0.25pt;">MPJPE<math alttext="\downarrow" class="ltx_Math" display="inline" id="A1.T6.6.6.6.6.m1.1"><semantics id="A1.T6.6.6.6.6.m1.1a"><mo id="A1.T6.6.6.6.6.m1.1.1" stretchy="false" xref="A1.T6.6.6.6.6.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="A1.T6.6.6.6.6.m1.1b"><ci id="A1.T6.6.6.6.6.m1.1.1.cmml" xref="A1.T6.6.6.6.6.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="A1.T6.6.6.6.6.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="A1.T6.6.6.6.6.m1.1d">↓</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A1.T6.7.7.7.7" style="padding-top:0.25pt;padding-bottom:0.25pt;">3D@0.1<math alttext="\uparrow" class="ltx_Math" display="inline" id="A1.T6.7.7.7.7.m1.1"><semantics id="A1.T6.7.7.7.7.m1.1a"><mo id="A1.T6.7.7.7.7.m1.1.1" stretchy="false" xref="A1.T6.7.7.7.7.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="A1.T6.7.7.7.7.m1.1b"><ci id="A1.T6.7.7.7.7.m1.1.1.cmml" xref="A1.T6.7.7.7.7.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="A1.T6.7.7.7.7.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="A1.T6.7.7.7.7.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A1.T6.8.8.8.8" style="padding-top:0.25pt;padding-bottom:0.25pt;">MPJPE<math alttext="\downarrow" class="ltx_Math" display="inline" id="A1.T6.8.8.8.8.m1.1"><semantics id="A1.T6.8.8.8.8.m1.1a"><mo id="A1.T6.8.8.8.8.m1.1.1" stretchy="false" xref="A1.T6.8.8.8.8.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="A1.T6.8.8.8.8.m1.1b"><ci id="A1.T6.8.8.8.8.m1.1.1.cmml" xref="A1.T6.8.8.8.8.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="A1.T6.8.8.8.8.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="A1.T6.8.8.8.8.m1.1d">↓</annotation></semantics></math>
</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A1.T6.8.8.10.1">
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T6.8.8.10.1.1" style="padding-top:0.25pt;padding-bottom:0.25pt;">✓</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T6.8.8.10.1.2" style="padding-top:0.25pt;padding-bottom:0.25pt;">-</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T6.8.8.10.1.3" style="background-color:#77DD77;padding-top:0.25pt;padding-bottom:0.25pt;"><span class="ltx_text ltx_font_bold" id="A1.T6.8.8.10.1.3.1" style="background-color:#77DD77;">74.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T6.8.8.10.1.4" style="background-color:#DFFF00;padding-top:0.25pt;padding-bottom:0.25pt;"><span class="ltx_text" id="A1.T6.8.8.10.1.4.1" style="background-color:#DFFF00;">70.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T6.8.8.10.1.5" style="background-color:#DFFF00;padding-top:0.25pt;padding-bottom:0.25pt;"><span class="ltx_text" id="A1.T6.8.8.10.1.5.1" style="background-color:#DFFF00;">78.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T6.8.8.10.1.6" style="background-color:#DFFF00;padding-top:0.25pt;padding-bottom:0.25pt;"><span class="ltx_text" id="A1.T6.8.8.10.1.6.1" style="background-color:#DFFF00;">491</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T6.8.8.10.1.7" style="background-color:#DFFF00;padding-top:0.25pt;padding-bottom:0.25pt;"><span class="ltx_text" id="A1.T6.8.8.10.1.7.1" style="background-color:#DFFF00;">77.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T6.8.8.10.1.8" style="background-color:#DFFF00;padding-top:0.25pt;padding-bottom:0.25pt;"><span class="ltx_text" id="A1.T6.8.8.10.1.8.1" style="background-color:#DFFF00;">83.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T6.8.8.10.1.9" style="background-color:#77DD77;padding-top:0.25pt;padding-bottom:0.25pt;"><span class="ltx_text ltx_font_bold" id="A1.T6.8.8.10.1.9.1" style="background-color:#77DD77;">90.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T6.8.8.10.1.10" style="background-color:#77DD77;padding-top:0.25pt;padding-bottom:0.25pt;"><span class="ltx_text ltx_font_bold" id="A1.T6.8.8.10.1.10.1" style="background-color:#77DD77;">61.3</span></td>
</tr>
<tr class="ltx_tr" id="A1.T6.8.8.11.2">
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T6.8.8.11.2.1" style="padding-top:0.25pt;padding-bottom:0.25pt;">✓</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T6.8.8.11.2.2" style="padding-top:0.25pt;padding-bottom:0.25pt;">✓</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T6.8.8.11.2.3" style="background-color:#DFFF00;padding-top:0.25pt;padding-bottom:0.25pt;"><span class="ltx_text" id="A1.T6.8.8.11.2.3.1" style="background-color:#DFFF00;">74.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T6.8.8.11.2.4" style="background-color:#77DD77;padding-top:0.25pt;padding-bottom:0.25pt;"><span class="ltx_text ltx_font_bold" id="A1.T6.8.8.11.2.4.1" style="background-color:#77DD77;">71.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T6.8.8.11.2.5" style="background-color:#77DD77;padding-top:0.25pt;padding-bottom:0.25pt;"><span class="ltx_text ltx_font_bold" id="A1.T6.8.8.11.2.5.1" style="background-color:#77DD77;">79.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T6.8.8.11.2.6" style="background-color:#77DD77;padding-top:0.25pt;padding-bottom:0.25pt;"><span class="ltx_text ltx_font_bold" id="A1.T6.8.8.11.2.6.1" style="background-color:#77DD77;">382</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T6.8.8.11.2.7" style="background-color:#77DD77;padding-top:0.25pt;padding-bottom:0.25pt;"><span class="ltx_text ltx_font_bold" id="A1.T6.8.8.11.2.7.1" style="background-color:#77DD77;">77.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T6.8.8.11.2.8" style="background-color:#77DD77;padding-top:0.25pt;padding-bottom:0.25pt;"><span class="ltx_text ltx_font_bold" id="A1.T6.8.8.11.2.8.1" style="background-color:#77DD77;">83.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T6.8.8.11.2.9" style="background-color:#DFFF00;padding-top:0.25pt;padding-bottom:0.25pt;"><span class="ltx_text" id="A1.T6.8.8.11.2.9.1" style="background-color:#DFFF00;">90.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T6.8.8.11.2.10" style="background-color:#DFFF00;padding-top:0.25pt;padding-bottom:0.25pt;"><span class="ltx_text" id="A1.T6.8.8.11.2.10.1" style="background-color:#DFFF00;">61.9</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents an ablation study comparing the performance of a 3D human pose estimation model trained on two different sets of pseudo-labeled data.  The first set is the original pseudo-labels from the 4D Humans paper (Goel et al., 2023), while the second set is generated using the NLF model (Sárándi & Pons-Moll, 2024). The comparison focuses on the 3DPW dataset, evaluating the model's performance using two key metrics: 3D Percentage of Correct Keypoints at 0.1 threshold (3D@0.1↑) and Mean Per-Joint Position Error (MPJPE↓).  Higher 3D@0.1 and lower MPJPE values indicate better performance.
> <details>
> <summary>read the caption</summary>
> Table 7: Pseudolabeled data ablation. Comparing 3DPW train performance between a model trained with the original pseudolabels from Goel et al. (2023) and on the new pseudolabels from Sárándi & Pons-Moll (2024).
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2504.12186/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.12186/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.12186/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.12186/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.12186/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.12186/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.12186/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.12186/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.12186/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.12186/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.12186/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.12186/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.12186/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.12186/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.12186/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.12186/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.12186/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.12186/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.12186/19.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.12186/20.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}