---
title: "MIVE: New Design and Benchmark for Multi-Instance Video Editing"
summary: "Edit many objects at once in videos!  MIVE does it accurately without affecting other areas, a big step for AI video editing."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Computer Vision", "Video Understanding", "🏢 KAIST",]
showSummary: true
date: 2024-12-17
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2412.12877 {{< /keyword >}}
{{< keyword icon="writer" >}} Samuel Teodoro et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2024-12-18 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2412.12877" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2412.12877" target="_self" >}}
↗ Hugging Face
{{< /button >}}
{{< button href="https://paperswithcode.com/paper/mive-new-design-and-benchmark-for-multi" target="_self" >}}
↗ Papers with Code
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2412.12877/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Zero-shot video editing simplifies changes through text, but most techniques focus on editing one object or the whole scene.  This limits localized edits for multiple objects, leading to unwanted changes elsewhere. Existing methods struggle with overlapping edits and lack good evaluation datasets. Editing multiple specific parts of a video without altering the rest remains a challenge.

**MIVE**, a **mask-based zero-shot Multi-Instance Video Editing** framework tackles these problems. **MIVE uses two novel modules**: 1) **Disentangled Multi-instance Sampling (DMS)**, reducing how edits unintentionally affect other areas. 2) **Instance-centric Probability Redistribution (IPR)**, ensuring accurate placement of edits within masks. It's tested on the **new MIVE Dataset (200 videos) using standard and a novel Cross-Instance Accuracy (CIA) score** to measure how edits affect other instances. This makes it better for more complex video edits.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} MIVE introduces a novel zero-shot, multi-instance video editing framework based on masks, not limited to specific object types. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} MIVE introduces two new modules: Disentangled Multi-instance Sampling (DMS) for reduced leakage and Instance-centric Probability Redistribution (IPR) for accuracy. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} MIVE proposes a new benchmark: MIVE Dataset with 200 diverse videos and the Cross-Instance Accuracy (CIA) score to measure leakage, advancing multi-instance video editing evaluation. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
**MIVE offers a significant advancement in video editing**, particularly within the burgeoning field of generative AI. Its focus on **multi-instance editing addresses a crucial gap** in current zero-shot video editing research, which predominantly handles global or single-object edits. By enabling localized edits to multiple objects, **MIVE opens new possibilities for creative video manipulation and content creation**, paving the way for more sophisticated and nuanced video editing tools. The introduction of **a new benchmark dataset and the Cross-Instance Accuracy (CIA) score offers valuable resources for researchers**, facilitating further advancements and more robust evaluation in this rapidly evolving domain.

------
#### Visual Insights



![](https://arxiv.org/html/2412.12877/x2.png)

> 🔼 MIVE edits videos at single- and multi-instance levels, using masks and captions to modify specific objects faithfully while avoiding unintended changes elsewhere. Unlike methods relying on global captions, MIVE uses individual instance captions for precise control. It even applies to partial instance editing without extra training.
> <details>
> <summary>read the caption</summary>
> Figure 1:  Given a video, instance masks, and target instance captions, our MIVE framework enables faithful and disentangled edits in (a) single- and (b)-(c) multi-instance levels, as well as an applicability to more fine-grained (d) partial instance level without the need for additional training. Unlike previous methods, our MIVE does not rely on global edit captions, but leverages individual instance captions. Each object mask is color-coded to match its corresponding edit caption. Zoom-in for better visualization.
> </details>





{{< table-caption >}}
| Dataset Name | Number of Clips | Number of Frames per Clip | Number of Objects per Clip | Number of Object Classes | Number of Instances per Object Class | Instance Captions | Instance Masks | Range of Average Instance Mask Size Per Video (%) |
|---|---|---|---|---|---|---|---|---|
| TGVE [59] & TGVE+ [47] | 76 | 32-128 | 1-2 | No Info | 1-2 | ✓ | × | No Masks |
| EVA [63] | 26 | 16-32 | 1-2 | No Info | 1-2 | ✓ | ✓ | No Info |
| MIVE Dataset (Ours) | 200 | 12-46 | 3-12 | 110 | 1-20 | ✓ | ✓ | 0.01~98.68 |{{< /table-caption >}}

> 🔼 This table presents a comparison of several video editing datasets, including TGVE, TGVE+, EVA, and the proposed MIVE dataset. The comparison focuses on characteristics relevant to multi-instance video editing, such as the number of clips, frames per clip, objects per clip, object classes, instances per object class, presence of instance captions and masks, and the range of average instance mask sizes. This highlights the advantages of the MIVE dataset, particularly its larger size and richer annotations, making it suitable for evaluating multi-instance video editing.
> <details>
> <summary>read the caption</summary>
> Table 1:  Comparison between our multi-instance video editing dataset with other text-guided video editing datasets.
> </details>





### In-depth insights


#### Multi-Instance VE
**Multi-instance video editing (MIVE)** tackles the complex task of editing multiple objects within a video **independently**, using text prompts and object masks.  This approach contrasts with global editing, which affects the entire video, and single-object editing, prone to impacting unintended areas. Key challenges include **preventing edits from bleeding** into other objects (attention leakage), **ensuring edits accurately reflect** text prompts, and the **lack of diverse datasets** for training and evaluation.  Current methods often struggle with overlapping bounding boxes or rely on computationally expensive fine-tuning for each new model.  Specialized metrics are needed to evaluate editing quality at the instance level, rather than simply assessing overall frame consistency or faithfulness to the global prompt.

#### MIVE Framework
The **MIVE framework** introduces a novel approach to **multi-instance video editing**, addressing limitations of prior methods that struggle with complex scenes. It leverages instance masks and captions for precise localized edits, preventing unintended changes in other video areas.  Two **key modules** power MIVE: **Disentangled Multi-instance Sampling (DMS)** minimizes "attention leakage" between edited objects, and **Instance-centric Probability Redistribution (IPR)** refines edits within instance masks. This design enables disentangled, faithful editing of multiple objects, surpassing state-of-the-art techniques in accuracy and preventing unwanted edits spreading across the video. This enhances editing precision, particularly in complex scenes with numerous or overlapping objects.

#### MIVE Dataset
The **MIVE Dataset addresses limitations** of existing multi-instance video editing datasets by providing **200 diverse videos**, instance masks, and captions.  Sourced from VIPSeg, it offers greater **diversity in instance size, number, and viewpoint**, unlike TGVE, TGVE+, or DAVIS subsets used in prior works like GAV and EVA. Notably, MIVE Dataset emphasizes **instance-level annotations** with manually refined captions using LLaVA and Llama 3. This enhances the dataset's effectiveness in evaluating **editing leakage and faithfulness**, crucial for localized video editing tasks.

#### Cross-Instance Accuracy
The **Cross-Instance Accuracy (CIA) Score** is a novel metric designed to address **attention leakage** in multi-instance video editing.  Existing metrics like **Global Textual Faithfulness (GTF)** and **Frame Accuracy (FA)** assess overall frame quality but miss **local editing nuances**.  **Instance Accuracy (IA)** and **Local Textual Faithfulness (LTF)** evaluate individual instances but **ignore cross-instance influence**.  CIA calculates cosine similarity between each instance's image and all captions, creating a similarity matrix. By isolating the highest scores for each instance, it effectively quantifies **intended vs. unintended edits** and helps reveal the extent of leakage.

#### Reflection Limitations
The paper acknowledges **limitations** regarding **reflection consistency**.  When editing objects near **reflective surfaces**, inconsistencies arise between the edited object and its reflection because the provided masks cover only the object itself, not its reflection. This discrepancy is noticeable in scenes with prominent reflective elements, like mirrors or polished floors.  Future work could address this by incorporating methods that ensure consistency between real and reflected elements during the editing process. This might involve extending the mask to include the reflection or employing specific techniques to harmonize edits with mirrored counterparts.  Addressing this issue is crucial for achieving realistic and seamless edits in videos with reflective surfaces.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2412.12877/x3.png)

> 🔼 This figure compares ControlVideo and Ground-A-Video (GAV) with the proposed method for multi-object video editing. ControlVideo uses global captions, making it susceptible to attention leakage (indicated by blue arrows) and unfaithful edits (indicated by red arrows) because it cannot distinguish between different objects.  GAV relies on bounding boxes, leading to overlapping edits and similar issues as ControlVideo when object bounding boxes overlap.
> <details>
> <summary>read the caption</summary>
> Figure 2:  Limitations of previous SOTA methods. (a) ControlVideo [70] relies on single global captions, and (b) GAV [25] depends on bounding box conditions that can sometimes overlap. Both are susceptible to unfaithful editing (red arrow) and attention leakage (blue arrow).
> </details>



![](https://arxiv.org/html/2412.12877/x4.png)

> 🔼 MIVE framework disentangles multi-instance video edits to improve accuracy and prevent leakage.  The framework uses a mask-based approach to independently edit each instance (Disentangled Multi-instance Sampling - DMS), represented by the blue, yellow, red, and green boxes.  It harmonizes these edits using re-inversion and latent fusion (red and yellow boxes).  Additionally, the framework uses Instance-centric Probability Redistribution (IPR) to improve edit placement accuracy and faithfulness.
> <details>
> <summary>read the caption</summary>
> Figure 3:  The overall framework of Multi-Instance Video Editing (MIVE). Our Disentangled Multi-instance Sampling (DMS, Sec. 3.2) consists of latent parallel sampling (LPS, blue box), latent fusion (yellow box) to fuse different instance latents, re-inversion (red box) to harmonize the latents after fusion, and noise parallel sampling (NPS, green box). In addition, our Instance-centric Probability Redistribution (IPR, Sec. 3.3) provides better spatial control.
> </details>



![](https://arxiv.org/html/2412.12877/x5.png)

> 🔼 This figure compares our Instance-centric Probability Redistribution (IPR) with other attention manipulation methods, specifically Vanilla Cross-Attention [44] and Dense Diffusion [28]. The top row visually compares how these methods affect attention within and outside an instance mask. The bottom row details the steps of our IPR method, showing how attention probabilities for 'Start of Sequence', 'Text', 'End of Sequence', and 'Padding' tokens are modified inside and outside the instance mask.
> <details>
> <summary>read the caption</summary>
> Figure 4:  A comparative illustration of our IPR versus others (top) and details of our IPR (bottom).
> </details>



![](https://arxiv.org/html/2412.12877/x6.png)

> 🔼 This figure shows qualitative results for MIVE, comparing it to other state-of-the-art methods. It includes three videos of increasing complexity (more instances to edit) to demonstrate the robustness of the proposed method. Each video shows masked inputs, results from multiple baselines, and MIVE results. It highlights issues in other state-of-the-art methods, such as unfaithful edits (marked with red arrows) and attention leakage (marked with green arrows). MIVE produces the highest-quality edits, being both faithful to the captions and containing the least amount of leakage.
> <details>
> <summary>read the caption</summary>
> Figure 5:  Qualitative comparison for three videos (with increasing difficulty from left to right) in our MIVE dataset. (a) shows the color-coded masks overlaid on the input frames to match the corresponding instance captions. (b)-(f) use global target captions for editing. (g) uses global and instance target captions along with bounding boxes (omitted in (a) for better visualization). Our MIVE in (h) uses instance captions and masks. Unfaithful editing examples are shown in red arrow and attention leakage are shown in green arrow.
> </details>



![](https://arxiv.org/html/2412.12877/x7.png)

> 🔼 This figure shows the ablation study performed on the Disentangled Multi-Instance Sampling (DMS) module within the MIVE framework. The ablation explores two primary sampling methods within DMS: Latent Parallel Sampling (LPS) and Noise Parallel Sampling (NPS). Results using only NPS show suboptimal and unfaithful edits, while those employing only LPS display noisy and blurry textures lacking fine detail. Combining LPS and NPS without re-inversion produces similar artifacts, but the edges are slightly sharper. Finally, incorporating re-inversion yields significantly improved editing quality, characterized by faithful edits, less noise, sharper boundaries, and enhanced details.
> <details>
> <summary>read the caption</summary>
> Figure 6:  Ablation study on DMS (Sec. 3.2).
> </details>



![](https://arxiv.org/html/2412.12877/x8.png)

> 🔼 This figure presents an ablation study on Instance-centric Probability Redistribution (IPR), a key module in MIVE.  It shows qualitative comparisons of edited frames with different IPR settings against the input frames. Specifically, it compares the results using (b) no attention modulation (vanilla cross-attention), (c) dense diffusion's attention modulation, and (d) the proposed IPR. The prompts used are 'alien', 'oven', and 'yellow washing machine'. Red boxes highlight artifacts and/or undesired edits resulting from different modulation strategies.
> <details>
> <summary>read the caption</summary>
> Figure 7:  Ablation study on IPR (Sec. 3.3).
> </details>



![](https://arxiv.org/html/2412.12877/x9.png)

> 🔼 Figure 8 illustrates the four-step process of generating captions for the MIVE Dataset. The first step (yellow box) uses LLaVA to generate captions for each video frame, selecting the caption with the most instances. In the second step (red box), Llama 3 summarizes this initial caption. The third step (blue box) involves manually refining captions to include missing instances and adding tags to connect instance captions to their masks. The final step (purple box) uses Llama 3 to generate target captions through retexturing or swapping instances, using a method similar to [71].
> <details>
> <summary>read the caption</summary>
> Figure 8:  MIVE Dataset caption generation pipeline for each video. Yellow box: The process starts by prompting LLaVA [31] to generate caption for each video that includes all instances in the video. Since LLaVa can only accept images, we perform the prompting for each frame and select one representative caption that includes the most instances. Red box: We utilize Llama 3 [14] to summarize the initial caption generated by LLaVa. Blue box: We manually include all of the instances of interest that are not included in the caption and manually add tags to map the instance captions to corresponding segmentation masks. Purple box: We utilize Llama 3 to generate target captions by retexturing or swapping instances similar to [71] for each instance.
> </details>



![](https://arxiv.org/html/2412.12877/x10.png)

> 🔼 Figure 9 showcases sample frames and accompanying captions from the MIVE Dataset (Part 1). Each video in the figure includes instance masks, overlaid on the frames, that are color-coded to match the corresponding instance captions within the global target caption. The colored texts represent the instance target captions that detail the desired alterations for each specific object within the video.
> <details>
> <summary>read the caption</summary>
> Figure 9:  Sample frames and captions from our MIVE Dataset (Part 1). The colored texts are the instance target captions. For each video, the instance masks are color-coded to correspond with the instance target captions in the global target caption.
> </details>



![](https://arxiv.org/html/2412.12877/x11.png)

> 🔼 Figure 10 presents various scenes from the MIVE dataset, including a printer transforming into an industrial shredder, a person in sportswear changing into a firefighter, a DeLorean becoming a Ford Mustang driven by a zombie, a classic surgical room transitioning into a futuristic operating room, and outdoor scenes featuring a person with tortoises and a woman by a sculpture. Each scene includes input frames, masked input frames, a global source caption, and a global target caption.  Instance masks within each frame are color-coded to match the corresponding instance target captions mentioned in the global target caption, enabling multi-instance video editing.
> <details>
> <summary>read the caption</summary>
> Figure 10:  Sample frames and captions from our MIVE Dataset (Part 2). The colored texts are the instance target captions. For each video, the instance masks are color-coded to correspond with the instance target captions in the global target caption.
> </details>



![](https://arxiv.org/html/2412.12877/x12.png)

> 🔼 Figure 11 visualizes how Cross-Instance Accuracy (CIA) score is computed.  It begins by calculating the Local Textual Faithfulness (LTF) between each cropped instance and all instance captions provided. For each instance, the highest LTF value is marked as 1 (shown in red), while the remaining LTF values for that instance are set to 0. The CIA score is then determined by averaging the values present along the diagonal (highlighted in green) of the LTF matrix.
> <details>
> <summary>read the caption</summary>
> Figure 11:  Visualization of the Cross-Instance Accuracy (CIA) Score computation. We calculate the Local Textual Faithfulness (LTF) between each cropped instance and all the instance captions. For each row, we assign 1 to the maximum LTF (shown in red) and 0 to the rest. The CIA Score is calculated as the mean of the diagonal elements (shown in green).
> </details>



![](https://arxiv.org/html/2412.12877/x13.png)

> 🔼 Qualitative comparison of multi-instance video editing across different state-of-the-art methods including ControlVideo, FLATTEN, RAVE, TokenFlow, FreSCo, GAV, and MIVE (proposed).  Input frames (a) are overlaid with color-coded masks matching the instance captions. Methods (b-f) use global target captions for edits.  Method (g) uses instance and global captions with bounding boxes.  MIVE (h) uses instance captions and masks. Unfaithful edits are indicated by red arrows, and attention leakage with green arrows. The figure shows MIVE's superior performance in generating faithful and localized edits, minimizing unwanted changes to other parts of the video.
> <details>
> <summary>read the caption</summary>
> Figure 12:  Qualitative comparison with SOTA video editing methods (Part 1). (a) shows the color-coded masks overlaid on the input frames to match the corresponding instance captions. (b)-(f) use global target captions for editing. (g) uses global and instance target captions along with bounding boxes (omitted in (a) for better visualization). Our MIVE in (h) uses instance captions and masks. Unfaithful editing examples are shown in red arrow and attention leakage are shown in green arrow.
> </details>



![](https://arxiv.org/html/2412.12877/x14.png)

> 🔼 Figure 13, found in the 'Experiments' section (specifically Section 5.1), presents a qualitative comparison of various state-of-the-art video editing methods, including ControlVideo, FLATTEN, RAVE, TokenFlow, FreSCo, GAV, and the proposed MIVE method.  The figure showcases the results of editing three different video sequences, each with an increasing number of instances to be edited (4, 4, and 6, respectively).    Subfigure (a) displays the original input frames with color-coded instance masks corresponding to the objects targeted for editing.  Methods in subfigures (b) through (f) utilize global target captions to guide the editing process. Subfigure (g), representing the GAV method, uses both global and instance-specific target captions alongside bounding boxes for finer control. Subfigure (h) showcases the results of MIVE, which employs both instance captions and masks. The captions below the video explicitly highlight the editing prompt for each video.  Red arrows indicate instances of *unfaithful editing*, where the generated output does not accurately reflect the target caption. Green arrows mark examples of *attention leakage*, where edits intended for one instance erroneously affect other parts of the video.
> <details>
> <summary>read the caption</summary>
> Figure 13:  Qualitative comparison with SOTA video editing methods (Part 2). (a) shows the color-coded masks overlaid on the input frames to match the corresponding instance captions. (b)-(f) use global target captions for editing. (g) uses global and instance target captions along with bounding boxes (omitted in (a) for better visualization). Our MIVE in (h) uses instance captions and masks. Unfaithful editing examples are shown in red arrow and attention leakage are shown in green arrow.
> </details>



![](https://arxiv.org/html/2412.12877/x15.png)

> 🔼 Figure 14 shows qualitative multi-instance video editing results, comparing the proposed MIVE method with state-of-the-art approaches on three diverse videos with 6-9 instances. (a) displays color-coded instance masks on the input frames. (b-f) represent global editing methods that use only target text captions. (g) represents a local editing method that uses both target text and bounding box information. Finally, (h) showcases the proposed MIVE's results, which leverages individual instance captions and masks for precise edits. Red arrows indicate unfaithful edits and green arrows point to instances of attention leakage, where one instance edit bleeds into another.
> <details>
> <summary>read the caption</summary>
> Figure 14:  Qualitative comparison with SOTA video editing methods (Part 3). (a) shows the color-coded masks overlaid on the input frames to match the corresponding instance captions. (b)-(f) use global target captions for editing. (g) uses global and instance target captions along with bounding boxes (omitted in (a) for better visualization). Our MIVE in (h) uses instance captions and masks. Unfaithful editing examples are shown in red arrow and attention leakage are shown in green arrow.
> </details>



![](https://arxiv.org/html/2412.12877/x16.png)

> 🔼 This figure shows the interface used for the user study.  Participants were shown an input video and its source caption, an annotated version of the input video with the target caption, and seven edited videos generated by different methods. They were then asked to choose the edited video that best exemplified temporal consistency, textual faithfulness, and minimal editing leakage.
> <details>
> <summary>read the caption</summary>
> Figure 15:  Our user study interface and questionnaire form. Participants are presented with an input video with a source caption, an annotated video with a target caption, and 7 randomly ordered videos edited using our MIVE and six other SOTA video editing methods. Each instance mask in the annotated video is color-coded to correspond with its instance target caption. Participants are tasked to select the video with the Best Temporal Consistency, Best Textual Faithfulness, and Least Editing Leakage.
> </details>



![](https://arxiv.org/html/2412.12877/x17.png)

> 🔼 Figure 16 displays recursive multi-instance editing results using Video-P2P. When Video-P2P is repeatedly applied for multi-instance edits, artifacts accumulate (red arrows).  MIVE, by contrast, avoids this by not editing frames recursively.
> <details>
> <summary>read the caption</summary>
> Figure 16:  Video-P2P results on recursive multi-instance editing. The artifacts that accumulate when Video-P2P is used repeatedly for multi-instance editing is shown in red arrow. Our MIVE prevents this error accumulation since we do not edit the frames recursively.
> </details>



![](https://arxiv.org/html/2412.12877/x18.png)

> 🔼 This figure presents an ablation study on Disentangled Multi-instance Sampling (DMS) focusing on the balance between Latent Parallel Sampling (LPS) and Noise Parallel Sampling (NPS) during the sampling steps. The study explores different configurations of alternating LPS and NPS steps, where each instance is modified independently using LPS based on its target caption and mask. The results show that increasing LPS steps improves details, while excessive NPS steps lead to artifacts. Setting LPS steps to 9 provides a good trade-off.
> <details>
> <summary>read the caption</summary>
> Figure 17:  Ablation study on DMS: (a) Ablation on alternating LPS and NPS on all sampling steps (T=50𝑇50T=50italic_T = 50). Increasing the number of LPS steps while setting the number of NPS steps to 1 produces more details as shown in (1) - (4). Increasing the number of NPS steps while setting the number of LPS steps to 1 produces cloudy artifacts and less details as shown in (5). Setting the number of LPS steps to 9 is a good tradeoff between qualitative and quantitative performance. See Tab. 8-(a) for quantitative results.
> </details>



![](https://arxiv.org/html/2412.12877/x19.png)

> 🔼 This figure presents an ablation study on Disentangled Multi-instance Sampling (DMS) within the MIVE framework. It specifically focuses on the impact of varying the number of Noise Parallel Sampling (NPS) steps performed after the initial alternating Latent Parallel Sampling (LPS) and NPS steps. The study demonstrates that while increasing the final NPS steps can improve quantitative results, setting this number too high (above 10) leads to a degradation in the quality of object edges within the generated videos. Thus, 10 final NPS steps is recommended.
> <details>
> <summary>read the caption</summary>
> Figure 18:  Ablation study on DMS: (b) Ablation on last NPS after alternating sampling. Reducing the number of alternating LPS-NPS steps during the initial sampling stage while increasing the number of NPS steps in the final stage enhances the quantitative performance of MIVE. Quantitative results are provided in Tab. 8-(b). However, we set the number of final NPS steps to only 10 to avoid degradation in object edges as shown in in (3) and (4).
> </details>



![](https://arxiv.org/html/2412.12877/x20.png)

> 🔼 This figure presents an ablation study on the Disentangled Multi-instance Sampling (DMS) technique within the MIVE framework. Specifically, it focuses on the impact of varying the number of re-inversion steps (L) during the alternating Latent Parallel Sampling (LPS) and Noise Parallel Sampling (NPS) stages.  The results show that increasing L leads to improved quantitative performance and better detail preservation in the edited frames, as evidenced by sharper details like object shadows.  The study ultimately sets L=3 as the optimal value for this stage.
> <details>
> <summary>read the caption</summary>
> Figure 19:  Ablation study on DMS: (c) Ablation on re-inversion step on alternating sampling. Increasing the number of re-inversion steps L𝐿Litalic_L in the alternating LPS-NPS steps improves quantitative performance as shown in Tab. 8-(c). We also observe better details with higher values of L𝐿Litalic_L. Ultimately, we set L=3𝐿3L=3italic_L = 3 for the re-inversion in the alternating LPS-NPS stage.
> </details>



![](https://arxiv.org/html/2412.12877/x21.png)

> 🔼 This figure presents an ablation study within the Disentangled Multi-instance Sampling (DMS) module, focusing on the impact of re-inversion steps in the final Noise Parallel Sampling (NPS) stage. It showcases qualitative results of video editing with different numbers of re-inversion steps (L). While higher L values improve quantitative metrics, they also lead to an undesirable animation-like appearance in edited objects, especially when L exceeds 2.  The figure visually demonstrates the trade-off between enhancing quantitative performance and maintaining natural-looking edits in videos.
> <details>
> <summary>read the caption</summary>
> Figure 20:  Ablation study on DMS: (d) Ablation on re-inversion step on last NPS=10 with alternating LPS=9 & NPS=1 & re-inversion L=3. Increasing the number of re-inversion steps L𝐿Litalic_L in the last NPS steps of the sampling improves quantitative performance (see Tab. 8-(d)). Higher number of NPS steps, however, give the edited objects an animation-like appearance. Thus, we limit the number of re-inversion steps in the final NPS stage to L=2𝐿2L=2italic_L = 2.
> </details>



![](https://arxiv.org/html/2412.12877/x22.png)

> 🔼 This figure presents a qualitative comparison of using a 2D and 3D model during the re-inversion step within the Disentangled Multi-instance Sampling (DMS) technique.  The results show that using the 3D model leads to improved quantitative performance and sharper edges in the edited video, as compared to the 2D model.
> <details>
> <summary>read the caption</summary>
> Figure 21:  Ablation study on DMS: (e) Ablation on Re-inversion step using 2D vs 3D Model. Using the 3D model for re-inversion improves the quantitative performance of our framework (see Tab. 8-(e)). Further, using the 3D model renders sharper edges as shown above. We, thus, use the 3D model during the re-inversion steps.
> </details>



![](https://arxiv.org/html/2412.12877/x23.png)

> 🔼 Comparison of editing results with different configurations of Latent Parallel Sampling (LPS) steps in Disentangled Multi-instance Sampling (DMS). Reducing LPS steps to 4 slightly improves Frame Accuracy (FA) and Instance Accuracy (IA) but loses subtle details compared to using 9 LPS steps, which offers a better balance between quality and performance.
> <details>
> <summary>read the caption</summary>
> Figure 22:  Ablation study on DMS: (f) ablation on another alternative configuration. Reducing the number of LPS steps during the alternating LPS-NPS stage to 4 improves FA and IA performance (see Tab. 8-(f)). However, setting the number of LPS steps to 9 better preserves subtle details, as shown in (2).
> </details>



![](https://arxiv.org/html/2412.12877/x24.png)

> 🔼 This figure illustrates the impact of manipulating the attention probabilities assigned to padding tokens within the cross-attention mechanism of the U-Net. It presents a comparison between two approaches: one where the padding tokens are zeroed out and the other where they remain unchanged. The results show that zeroing out the padding tokens can introduce noticeable artifacts, like blurring in the oven and noise on the alien's face and oven. In contrast, leaving the padding tokens unaltered produces sharper and cleaner edits, demonstrating their importance in achieving higher-quality image generation.
> <details>
> <summary>read the caption</summary>
> Figure 23:  IPR analysis: Effect of altering the attention probability values of padding token Ai,j∈Psubscript𝐴𝑖𝑗PA_{i,j\in\textbf{P}}italic_A start_POSTSUBSCRIPT italic_i , italic_j ∈ P end_POSTSUBSCRIPT.
> </details>



![](https://arxiv.org/html/2412.12877/x25.png)

> 🔼 This figure analyzes the impact of various attention redistribution strategies within the Instance-centric Probability Redistribution (IPR) module. It demonstrates that shifting attention from the start-of-sequence (S), or text (T) / end-of-sequence (E) tokens to padding tokens negatively impacts editing fidelity, resulting in reduced accuracy.  Conversely, redistributing attention probability from the S token to the T and E tokens, controlled by a factor \(\lambda_s\), leads to more faithful edits. The proposed dynamic approach for adjusting  \(\lambda_s\) yields the most accurate results.
> <details>
> <summary>read the caption</summary>
> Figure 24:  IPR analysis: Various scenarios of redistributing the attention probability values of tokens S𝑆Sitalic_S, T, and E𝐸Eitalic_E. Row 2-4: Redistributing the probability values from either T or E𝐸Eitalic_E tokens to S𝑆Sitalic_S decreases the editing faithfulness. Row 5-6: Redistributing the probability values from S𝑆Sitalic_S token by a constant factor λSsubscript𝜆𝑆\lambda_{S}italic_λ start_POSTSUBSCRIPT italic_S end_POSTSUBSCRIPT to the T and E𝐸Eitalic_E tokens improves the editing faithfulness. Ours: Redistributing the probability value of the S𝑆Sitalic_S token using our proposed dynamic approach achieves the best editing faithfulness.
> </details>



![](https://arxiv.org/html/2412.12877/x26.png)

> 🔼 This figure presents an ablation study on Instance-centric Probability Redistribution (IPR) by modifying the hyperparameter λ.  It shows qualitative results on a video editing task, demonstrating that increasing λ enhances details and textures in the edited output. However, an excessively large value (0.6) leads to unwanted artifacts. A balanced trade-off between detail enhancement and artifact reduction is achieved at λ = 0.4. Example: Enhancing details on objects like beaker, robot head, and hands while maintaining quality of wood carvings and avoiding artifacts on a glass table. The visualization includes input frames, outputs for different lambda values (0.2, 0.4, 0.6), and the object prompts/queries used during the experiment.
> <details>
> <summary>read the caption</summary>
> Figure 25:  Ablation study on IPR: (a) λ𝜆\lambdaitalic_λ. Increasing λ𝜆\lambdaitalic_λ enhances details and textures, but increasing it too much to λ=0.6𝜆0.6\lambda=0.6italic_λ = 0.6 may cause artifacts, e.g., the wood carvings get blurry. The best trade-off between details and emergence of artifacts is λ=0.4𝜆0.4\lambda=0.4italic_λ = 0.4.
> </details>



![](https://arxiv.org/html/2412.12877/x27.png)

> 🔼 This figure presents an ablation study on Instance-centric Probability Redistribution (IPR), focusing on the impact of varying \(\lambda_r\).  It shows that decreasing \(\lambda_r\) tends to improve overall editing faithfulness but at the cost of introducing more noise and artifacts (e.g., the shirt becomes noisier).  The study concludes that \(\lambda_r = 0.6\) offers the best balance between editing faithfulness and minimizing noise.
> <details>
> <summary>read the caption</summary>
> Figure 26:  Ablation study on IPR: (b) λrsubscript𝜆𝑟\lambda_{r}italic_λ start_POSTSUBSCRIPT italic_r end_POSTSUBSCRIPT. Decreasing λrsubscript𝜆𝑟\lambda_{r}italic_λ start_POSTSUBSCRIPT italic_r end_POSTSUBSCRIPT tends to improve overall editing faithfulness but introduces more noise due to the enhanced details, e.g., the shirt becomes more noisy when λrsubscript𝜆𝑟\lambda_{r}italic_λ start_POSTSUBSCRIPT italic_r end_POSTSUBSCRIPT is reduced. The best trade-off between editing faithfulness and noise is λr=0.6subscript𝜆𝑟0.6\lambda_{r}=0.6italic_λ start_POSTSUBSCRIPT italic_r end_POSTSUBSCRIPT = 0.6.
> </details>



![](https://arxiv.org/html/2412.12877/x28.png)

> 🔼 This figure presents an ablation study on Instance-centric Probability Redistribution (IPR), analyzing the impact of varying the percentage of sampling steps during which IPR is applied (IPR steps percentage).  It shows how different percentages (60%, 80%, and 100%) affect the editing results, particularly in terms of faithfulness and artifacts. Increasing IPR steps can enhance faithfulness (e.g., better wood carvings, rust effects, facial details) but too many steps (100%) can lead to artifacts like noise (e.g., on the glass table). The figure shows 80% as the optimal trade-off.
> <details>
> <summary>read the caption</summary>
> Figure 27:  Ablation study on IPR: (c) percentage of sampling step where we apply our IPR. Increasing the IPR steps percentage generally enhances editing faithfulness, but excessively increasing the percentage (100%percent100100\%100 %) may introduce artifacts, e.g., the appearance of noise on the glass table. The best trade-off between editing faithfulness and emergence of artifacts for percentage sampling step is 80%percent8080\%80 %.
> </details>



![](https://arxiv.org/html/2412.12877/x29.png)

> 🔼 This figure analyzes the running time of the proposed MIVE method. The first subfigure (a) demonstrates a linear relationship between the running time and the number of video frames, indicating that the processing time increases proportionally with the video length. The second subfigure (b) displays a similar linear relationship between running time and the number of instances edited, showing that editing more instances leads to a proportionally longer processing duration.
> <details>
> <summary>read the caption</summary>
> Figure 28:  Running time of our method. (a) Running time of our method vs number of video frames. (b) Running time of our method vs number of instances
> </details>



![](https://arxiv.org/html/2412.12877/x30.png)

> 🔼 MIVE and other state-of-the-art methods struggle with editing videos containing numerous instances (18 in this example), exhibiting decreased faithfulness in some edits.
> <details>
> <summary>read the caption</summary>
> Figure 29:  Failure case. Our method is less faithful when there is a large number of instances to edit. Note that other SOTA methods also fail to handle this large number of instances to edit.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
| Method | Venue | Editing | GTC ↑ | GTF ↑ | FA ↑ | LTC ↑ | LTF ↑ | IA ↑ | CIA (**Ours**) ↑ | BP ↓ | TC ↑ | TF ↑ | Leakage ↑ | User Study | User Study | User Study |
|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---| 
| ControlVideo [70] | ICLR’24 | Global | **0.9743** | **0.2738** | **0.8856** | **0.9548** | **0.1960** | **0.4941** | 0.4967 | 72.8690 | 6.97 | **14.00** | 6.26 | - | - | - |
| FLATTEN [11] | ICLR’24 | Global | 0.9679 | 0.2388 | 0.2637 | 0.9507 | 0.1881 | 0.2469 | 0.5111 | 62.8136 | **32.32** | 2.45 | **9.74** | - | - | - |
| RAVE [26] | CVPR’24 | Global | 0.9675 | 0.2727 | 0.5777 | **0.9551** | 0.1869 | 0.3512 | 0.4945 | 64.8703 | 10.45 | 3.61 | 4.52 | - | - | - |
| TokenFlow [16] | ICLR’24 | Global | **0.9686** | 0.2569 | 0.5622 | 0.9478 | 0.1868 | 0.3501 | 0.5307 | 68.6688 | 7.61 | 3.16 | 4.26 | - | - | - |
| FreSCo [62] | CVPR’24 | Global | 0.9541 | 0.2527 | 0.4202 | 0.9324 | 0.1860 | 0.2962 | 0.5172 | 85.1843 | 3.55 | 1.81 | 3.42 | - | - | - |
| GAV [25] | ICLR’24 | Local, Multiple | 0.9660 | 0.2566 | 0.5504 | 0.9514 | 0.1893 | 0.3703 | **0.5492** | **60.0773** | 8.90 | 7.74 | **9.74** | - | - | - |
| **MIVE (Ours)** | - | Local, Multiple | 0.9604 | **0.2750** | **0.8557** | 0.9478 | **0.2138** | **0.6419** | **0.7100** | **54.3452** | **30.20** | **67.23** | **62.06** | - | - | - |{{< /table-caption >}}
> 🔼 This table presents quantitative results comparing the proposed MIVE framework with other state-of-the-art zero-shot video editing methods. It uses several metrics, including Global Temporal Consistency (GTC), Global Textual Faithfulness (GTF), Frame Accuracy (FA), Local Temporal Consistency (LTC), Local Textual Faithfulness (LTF), Instance Accuracy (IA), Cross-Instance Accuracy (CIA), and Background Preservation (BP) to evaluate the performance of each method on multi-instance video editing tasks. The best and second-best scores for each metric are highlighted in red and blue, respectively. The table demonstrates that MIVE outperforms other methods on key multi-instance video editing metrics (LTF, IA, CIA, and BP) while maintaining competitive performance on temporal consistency metrics.
> <details>
> <summary>read the caption</summary>
> Table 2:  Quantitative comparison for multi-instance video editing. The best and second best scores are shown in red and blue, respectively.
> </details>

{{< table-caption >}}
| Methods |     | LTC ↑ | LTF ↑ | IA ↑ | CIA ↑ | BP ↓ |
| :------ | :-- | :---- | :---- | :--- | :---- | :--- |
| DMS | Only NPS | 0.9460 | 0.2072 | 0.5587 | 0.6663 | 54.6597 |
|       | Only LPS | **0.9483** | 0.2068 | 0.5716 | 0.6688 | **50.8549** |
|       | LPS + NPS w/o Re-Inversion | **0.9485** | **0.2080** | **0.5776** | **0.6783** | **52.3240** |
|       | **Ours, Full** | 0.9478 | **0.2138** | **0.6419** | **0.7100** | 54.3452 |
| IPR | No Modulation [44] | **0.9535** | 0.2060 | 0.5225 | 0.6553 | **50.1319** |
|       | Dense Diffusion [28] | **0.9482** | **0.2136** | **0.6215** | 0.6891 | 59.2100 |
|       | **Ours, Full** | 0.9478 | **0.2138** | **0.6419** | **0.7100** | **54.3452** |{{< /table-caption >}}
> 🔼 This table presents the ablation study results on Disentangled Multi-instance Sampling (DMS) and Instance-centric Probability Redistribution (IPR), which are two key components of the MIVE framework.  It evaluates the performance of different DMS and IPR configurations using metrics such as Local Temporal Consistency (LTC), Local Textual Faithfulness (LTF), Instance Accuracy (IA), Cross-Instance Accuracy (CIA), and Background Preservation (BP).  The results show that using Latent Parallel Sampling (LPS) and Noise Parallel Sampling (NPS) in conjunction with a re-inversion step leads to the best overall performance in terms of faithfulness and leakage reduction for MIVE. The comparison between the baseline cross-attention mechanism without modulation and two other attention modulation methods demonstrates that the proposed Instance-centric Probability Redistribution (IPR) is more effective in achieving faithful editing with fewer artifacts.  The table uses red and blue colors to highlight the best and second-best performing configurations, respectively.
> <details>
> <summary>read the caption</summary>
> Table 3:  Ablation study results on DMS (Sec. 3.2) and IPR (Sec. 3.3). LPS and NPS denotes Latent Parallel Sampling and Noise Parallel Sampling, respectively. The best and second best scores are shown in red and blue, respectively.
> </details>

{{< table-caption >}}
| Use Case | Number of Clips | Number of Frames per Clip | Number of Objects per Clip | Number of Object Classes | Number of Instances per Object Class | Range of Average Instance Mask Size Per Video (%) |
|---|---|---|---|---|---|---| 
| MIVE Dataset ( *full set*) | 200 | 12-46 | 3-12 | 110 | 1-20 | 0.01~98.68 |
| For Editing (Things without Stuff) | 200 | 12-46 | 1-9 | 54 | 1-17 | 0.02~77.35 |
| For User Study | 50 | 13-46 | 2-9 | 38 | 1-16 | 0.05~75.62 |
| For Demo | 40 | 13-46 | 2-9 | 35 | 1-16 | 0.05~69.74 |{{< /table-caption >}}
> 🔼 This table presents statistics of the MIVE dataset, a new dataset for multi-instance video editing, across different use cases including the full dataset, a subset for editing 'thing' categories only, a subset for user studies covering diverse scenarios, and a subset for demo purposes. The statistics presented include the number of clips, frames per clip, objects per clip, object classes, instances per object class, and the range of average instance mask size per video.  The different use cases demonstrate the versatility and diversity of the MIVE dataset for evaluating multi-instance video editing tasks.
> <details>
> <summary>read the caption</summary>
> Table 4:  Statistics of our multi-instance video editing dataset in various use cases. (i) MIVE Dataset is the full set of our dataset including both “stuff” and “thing” categories. (ii) For Editing, we only edit objects in the “thing” categories, thus, decreasing some statistics. (iii) For User Study, we only select 50 videos that cover diverse scenarios. (iv) For the Demo, we only select 40 videos that cover diverse scenarios.
> </details>

{{< table-caption >}}
| Method | Venue | Editing | Scope | LTC ↑ | LTF ↑ | IA ↑ | CIA ↑ | LTC ↑ | LTF ↑ | IA ↑ | CIA ↑ | LTC ↑ | LTF ↑ | IA ↑ | CIA ↑ |
|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|
| ControlVideo [70] | ICLR’24 | Global | | **0.9546** | 0.1684 | 0.3479 | 0.3875 | **0.9516** | 0.1852 | 0.3248 | 0.5220 | **0.9580** | **0.2048** | **0.5845** | 0.5003 |
| FLATTEN [11] | ICLR’24 | Global | | 0.9519 | 0.1789 | **0.4230** | 0.4215 | 0.9457 | 0.1902 | 0.2338 | 0.5766 | 0.9547 | 0.1876 | 0.2371 | 0.4949 |
| RAVE [26] | CVPR’24 | Global | |0.9547 | 0.1752 | 0.3953 | 0.4310 | 0.9527 | 0.1830 | 0.2932 | 0.5444 | 0.9581 | 0.1910 | 0.3684 | 0.4815 |
| TokenFlow [16] | ICLR’24 | Global | | 0.9486 | 0.1783 | **0.4517** | 0.4434 | 0.9406 | 0.1876 | 0.3297 | **0.6085** | 0.9522 | 0.1880 | 0.3536 | 0.5090 |
| FreSCo [62] | CVPR’24 | Global | | 0.9288 | 0.1790 | 0.4044 | 0.4283 | 0.9226 | 0.1892 | 0.2937 | 0.5945 | 0.9383 | 0.1852 | 0.2709 | 0.4958 |
| GAV [25] | ICLR’24 | Local, Multiple | | 0.9529 | **0.1803** | 0.4224 | **0.4680** | 0.9498 | **0.1932** | **0.3298** | 0.5913 | 0.9550 | 0.1889 | 0.3740 | **0.5420** |
| **MIVE (Ours)** | - | Local, Multiple | | 0.9537 | 0.1794 | 0.4051 | **0.6059** | 0.9441 | 0.1997 | 0.4647 | **0.6883** | 0.9509 | **0.2243** | **0.7414** | **0.7331** |{{< /table-caption >}}
> 🔼 This table presents a quantitative comparison of various video editing methods based on instance size, categorized as small (<32x32 pixels), medium (between 32x32 and 96x96 pixels), and large (>96x96 pixels), following the COCO dataset categorization.  Only Local Temporal Consistency (LTC), Local Textual Faithfulness (LTF), Instance Accuracy (IA), and Cross-Instance Accuracy (CIA) are shown, as global metrics are unsuitable for evaluating multi-instance edits. The table analyzes the performance of each method across these size categories, highlighting the best and second-best scores in red and blue, respectively. It aims to demonstrate how instance size affects the performance of different video editing methods in terms of temporal consistency, textual faithfulness, and cross-instance accuracy, especially in handling attention leakage, which is the key focus of the presented MIVE method.
> <details>
> <summary>read the caption</summary>
> Table 5:  Quantitative comparison based on instance size. We only show Local Scores since these are the only scores that can be computed depending on the instance size. We follow the categorization of instance size from COCO dataset [30], where: (i) small instance has area <322absentsuperscript322<32^{2}< 32 start_POSTSUPERSCRIPT 2 end_POSTSUPERSCRIPT, (ii) medium instance has area between 322⁢ and ⁢962superscript322 and superscript96232^{2}\text{ and }96^{2}32 start_POSTSUPERSCRIPT 2 end_POSTSUPERSCRIPT and 96 start_POSTSUPERSCRIPT 2 end_POSTSUPERSCRIPT, and (iii) large instance has area >962absentsuperscript962>96^{2}> 96 start_POSTSUPERSCRIPT 2 end_POSTSUPERSCRIPT. The best and second best scores are shown in red and blue, respectively.
> </details>

{{< table-caption >}}
| Method | Venue | Editing | Global Scores |  |  | Local Scores |  |  | Leakage Scores |  |
|---|---|---|---|---|---|---|---|---|---|---| 
| | | Scope | GTC ↑ | GTF ↑ | FA ↑ | LTC ↑ | LTF ↑ | FA ↑ | CIA (**Ours**) ↑ | BP ↓ |
|---|---|---|---|---|---|---|---|---|---|---|---| 
| | | | | | | | | | | | |
| **Editing on 1-3 Instances (Easy Video) - 116 Videos** | | | | | | | | | | | |
| ControlVideo [70] | ICLR’24 | Global | **0.9729** | 0.2724 | **0.8839** | 0.9513 | 0.2020 | 0.5374 | 0.6192 | 79.3548 |
| FLATTEN [11] | ICLR’24 | Global | 0.9661 | 0.2415 | 0.2924 | 0.9484 | 0.1893 | 0.2568 | 0.6060 | 67.1713 |
| RAVE [26] | CVPR’24 | Global | 0.9661 | 0.2698 | 0.5452 | **0.9533** | 0.1886 | 0.3620 | 0.5964 | 71.2598 |
| TokenFlow [16] | ICLR’24 | Global | 0.9686 | 0.2578 | 0.5710 | 0.9465 | 0.1880 | 0.3480 | 0.6248 | 74.2420 |
| FreSCo [62] | CVPR’24 | Global | 0.9534 | 0.2491 | 0.4138 | 0.9327 | 0.1877 | 0.2841 | 0.6085 | 92.0291 |
| GAV [25] | ICLR’24 | Local, Multiple | 0.9643 | 0.2518 | 0.5583 | 0.9477 | 0.1915 | 0.3851 | **0.6466** | **63.3588** |
| **MIVE (Ours)** | - | Local, Multiple | 0.9583 | **0.2738** | **0.8589** | 0.9441 | **0.2203** | **0.6932** | **0.7983** | **58.4894** |
| **Editing on 4-7 Instances (Medium Video) - 66 Videos** | | | | | | | | | | | |
| ControlVideo [70] | ICLR’24 | Global | **0.9757** | **0.2775** | **0.8834** | **0.9579** | **0.1875** | **0.4543** | 0.3704 | 65.3667 |
| FLATTEN [11] | ICLR’24 | Global | 0.9700 | 0.2373 | 0.2305 | 0.9526 | 0.1853 | 0.2288 | 0.4199 | **56.7246** |
| RAVE [26] | CVPR’24 | Global | 0.9689 | **0.2777** | 0.5819 | 0.9570 | 0.1842 | 0.3396 | 0.3951 | 57.2210 |
| TokenFlow [16] | ICLR’24 | Global | 0.9686 | 0.2559 | 0.5425 | 0.9486 | 0.1845 | 0.3631 | 0.4498 | 62.3709 |
| FreSCo [62] | CVPR’24 | Global | 0.9555 | 0.2589 | 0.4276 | 0.9318 | 0.1835 | 0.3177 | 0.4389 | 76.8818 |
| GAV [25] | ICLR’24 | Local, Multiple | 0.9674 | 0.2648 | 0.5549 | 0.9549 | 0.1859 | 0.3660 | **0.4676** | 57.8612 |
| **MIVE (Ours)** | - | Local, Multiple | 0.9614 | 0.2763 | **0.8397** | 0.9501 | **0.2060** | **0.5872** | **0.6483** | **48.2502** |
| **Editing on >7 Instances (Hard Video) - 18 Videos** | | | | | | | | | | | |
| ControlVideo [70] | ICLR’24 | Global | **0.9781** | 0.2692 | **0.9051** | **0.9651** | 0.1885 | **0.3602** | 0.1698 | 58.5803 |
| FLATTEN [11] | ICLR’24 | Global | 0.9717 | 0.2274 | 0.2007 | 0.9584 | **0.1898** | 0.2499 | **0.2339** | 57.0569 |
| RAVE [26] | CVPR’24 | Global | 0.9711 | **0.2735** | 0.7714 | 0.9602 | 0.1857 | 0.3242 | 0.2026 | 51.7408 |
| TokenFlow [16] | ICLR’24 | Global | 0.9682 | 0.2552 | 0.5778 | 0.9529 | 0.1878 | 0.3162 | 0.2212 | 55.8445 |
| FreSCo [62] | CVPR’24 | Global | 0.9538 | 0.2536 | 0.4339 | 0.9322 | 0.1844 | 0.2954 | 0.2156 | 71.5167 |
| GAV [25] | ICLR’24 | Local, Multiple | 0.9715 | 0.2580 | 0.4825 | 0.9628 | 0.1870 | 0.2911 | 0.2210 | **47.0554** |
| **MIVE (Ours)** | - | Local, Multiple | 0.9697 | **0.2784** | **0.8937** | 0.9626 | **0.2002** | **0.5118** | **0.3669** | **49.9864** |{{< /table-caption >}}
> 🔼 This table presents quantitative results of different video editing methods on the MIVE dataset, categorized by the number of instances edited per video: Easy (1-3 instances), Medium (4-7 instances), and Hard (7+ instances).  It compares performance across various metrics, including global and local temporal consistency, global and local textual faithfulness, frame and instance accuracy, cross-instance accuracy, and background preservation.
> <details>
> <summary>read the caption</summary>
> Table 6:  Quantitative comparison for multi-instance video editing on various number of instances. We categorize 200 videos of MIVE Dataset depending on the number of edited instances: (i) Easy Video (EV): video that contains 1-3 edited instances, (ii) Medium Video (MV): video that contains 4-7 edited instances, and (iii) Hard Video (HV): video that contains >>> 7 edited instances. The best and second best scores are shown in red and blue, respectively.
> </details>

{{< table-caption >}}
| Methods |             | GTC | GTF | FA  | LTC ↑ | LTF ↑ | IA ↑ | CIA ↑ | BP ↓ |
|---------|-------------|-----|-----|-----|-------|-------|------|-------|------|
| DMS     | Only NPS    | 0.9591 | 0.2667 | 0.7907 | 0.9460 | 0.2072 | 0.5587 | 0.6663 | 54.6597 |
|         | Only LPS    | 0.9602 | 0.2645 | 0.7690 | 0.9483 | 0.2068 | 0.5716 | 0.6688 | 50.8549 |
|         | LPS + NPS w/o Re-Inversion | 0.9615 | 0.2674 | 0.7810 | 0.9485 | 0.2080 | 0.5776 | 0.6783 | 52.3240 |
|         | **Ours, Full** | 0.9604 | 0.2750 | 0.8557 | 0.9478 | 0.2138 | 0.6419 | 0.7100 | 54.3452 |
| IPR     | No Modulation [44] | 0.9642 | 0.2642 | 0.7468 | 0.9535 | 0.2060 | 0.5225 | 0.6553 | 50.1319 |
|         | Dense Diffusion [28] | 0.9611 | 0.2760 | 0.9029 | 0.9482 | 0.2136 | 0.6215 | 0.6891 | 59.2100 |
|         | **Ours, Full** | 0.9604 | 0.2750 | 0.8557 | 0.9478 | 0.2138 | 0.6419 | 0.7100 | 54.3452 |{{< /table-caption >}}
> 🔼 This table presents the complete results, including both Global and Local Scores, from an ablation study on Disentangled Multi-instance Sampling (DMS) and Instance-centric Probability Redistribution (IPR).  The abbreviations LPS and NPS stand for Latent Parallel Sampling and Noise Parallel Sampling, respectively.  The highest scores in each metric are highlighted in red, while the second-highest scores are highlighted in blue.
> <details>
> <summary>read the caption</summary>
> Table 7:  The full results (Global Scores and Local Scores) of our ablation study on Disentangled Multi-instance Sampling (DMS) and Instance-centric Probability Redistribution (IPR). LPS and NPS denotes Latent Parallel Sampling and Noise Parallel Sampling, respectively. The best and second best scores are shown in red and blue, respectively.
> </details>

{{< table-caption >}}
| Method | GTC ↑ | GTF ↑ | FA ↑ | LTC ↑ | LTF ↑ | IA ↑ | CIA (**Ours**) ↑ | BP ↓ |
|---|---|---|---|---|---|---|---|---| 
| (a) Ablation on Alternating LPS and NPS on All Sampling Steps (50) | | | | | | | | |
| (1) Alternate (50): LPS = 1 + NPS = 1 | **0.9608** | **0.2691** | **0.8098** | 0.9472 | **0.2090** | **0.5883** | **0.6851** | 55.1253 |
| (2) Alternate (50): LPS = 4 + NPS = 1 | **0.9610** | 0.2667 | 0.7908 | **0.9481** | 0.2080 | **0.5914** | **0.6809** | 52.4647 |
| (3) Alternate (50): LPS = 9 + NPS = 1 | 0.9605 | 0.2654 | 0.7779 | **0.9483** | 0.2075 | 0.5748 | 0.6713 | **51.4300** |
| (4) Alternate (50): LPS = 14 + NPS = 1 | 0.9604 | 0.2649 | 0.7706 | **0.9483** | 0.2073 | 0.5743 | 0.6697 | **51.1941** |
| (5) Alternate (50): NPS = 4 + LPS = 1 | 0.9598 | **0.2690** | **0.8181** | 0.9465 | **0.2081** | 0.5804 | 0.6727 | 54.8790 |
| (b) Ablation on Last NPS after Alternating Sampling | | | | | | | | |
| (1) Alternate (50): LPS = 9 + NPS = 1; NPS = 0 | 0.9605 | 0.2654 | 0.7779 | **0.9483** | 0.2075 | 0.5748 | 0.6713 | **51.4300** |
| (2) Alternate (40): LPS = 9 + NPS = 1; NPS = 10 | **0.9613** | 0.2673 | 0.7824 | **0.9485** | 0.2081 | **0.5786** | **0.6792** | **52.3441** |
| (3) Alternate (30): LPS = 9 + NPS = 1; NPS = 20 | **0.9614** | **0.2688** | **0.7890** | **0.9483** | **0.2083** | **0.5752** | **0.6739** | 52.9035 |
| (4) Alternate (20): LPS = 9 + NPS = 1; NPS = 30 | **0.9614** | **0.2680** | **0.7990** | **0.9485** | **0.2084** | 0.5743 | 0.6734 | 53.4412 |
| (c) Ablation on Re-Inversion Step only on Alternating Sampling | | | | | | | | |
| (1) Alternate (40): LPS = 9 + Re-Inv L = 1 + NPS = 1; NPS = 10 | **0.9607** | 0.2697 | 0.8012 | **0.9479** | 0.2094 | 0.5930 | 0.6867 | **52.8582** |
| (2) Alternate (40): LPS = 9 + Re-Inv L = 2 + NPS = 1; NPS = 10 | **0.9603** | **0.2712** | **0.8162** | **0.9475** | **0.2107** | **0.6180** | **0.6970** | **53.2689** |
| (3) Alternate (40): LPS = 9 + Re-Inv L = 3 + NPS = 1; NPS = 10 | 0.9599 | **0.2724** | **0.8305** | 0.9471 | **0.2114** | **0.6233** | **0.6989** | 53.7494 |
| (d) Ablation on Re-Inversion Step of Last NPS=10 with Alternating LPS=9 & NPS=1 & Re-Inversion L=3 | | | | | | | | |
| (1) Alternate (40): LPS = 9 + Re-Inv L = 3 + NPS = 1; NPS = 10 + Re-Inv L = 1 | 0.9603 | 0.2740 | 0.8413 | **0.9477** | 0.2129 | 0.6315 | 0.7068 | **53.9953** |
| (2) Alternate (40): LPS = 9 + Re-Inv L = 3 + NPS = 1; NPS = 10 + Re-Inv L = 2 (**Ours**, Full) | **0.9604** | **0.2750** | **0.8557** | **0.9478** | **0.2138** | **0.6419** | **0.7100** | **54.3452** |
| (3) Alternate (40): LPS = 9 + Re-Inv L = 3 + NPS = 1; NPS = 10 + Re-Inv L = 3 | **0.9606** | **0.2751** | **0.8591** | 0.9476 | **0.2143** | **0.6401** | **0.7090** | 54.7422 |
| (e) Ablation on Re-Inversion Step using 2D vs 3D Model | | | | | | | | |
| (1) Alternate (40): LPS = 9 + Re-Inv L = 3 + NPS = 1; NPS = 10 + Re-Inv (2D) L = 2 | **0.9638** | **0.2749** | **0.8497** | **0.9505** | **0.2138** | **0.6385** | **0.7078** | **54.9499** |
| (2) Alternate (40): LPS = 9 + Re-Inv L = 3 + NPS = 1; NPS = 10 + Re-Inv (3D) L = 2 (**Ours**, Full) | **0.9604** | **0.2750** | **0.8557** | **0.9478** | **0.2138** | **0.6419** | **0.7100** | **54.3452** |
| (f) Ablation on Another Alternative Configuration | | | | | | | | |
| (1) Alternate (40): LPS = 4 + Re-Inv L = 3 + NPS = 1; NPS = 10 + Re-Inv (3D) L = 2 | **0.9597** | **0.2775** | **0.8774** | **0.9467** | **0.2151** | **0.6626** | **0.7159** | **55.6459** |
| (2) Alternate (40): LPS = 9 + Re-Inv L = 3 + NPS = 1; NPS = 10 + Re-Inv (3D) L = 2 (**Ours**, Full) | **0.9604** | **0.2750** | **0.8557** | **0.9478** | **0.2138** | **0.6419** | **0.7100** | **54.3452** |{{< /table-caption >}}
> 🔼 This table presents the ablation study results for Disentangled Multi-instance Sampling (DMS), a key component of the MIVE framework.  It explores variations in alternating Latent Parallel Sampling (LPS) and Noise Parallel Sampling (NPS) steps, the use of re-inversion, and the choice of 2D vs. 3D models during re-inversion. The impact of these configurations is measured using metrics like GTC, GTF, FA, LTC, LTF, IA, CIA, and BP.  The table highlights the trade-offs between different sampling strategies and the importance of re-inversion for achieving high editing faithfulness while maintaining temporal consistency and minimizing artifacts. The goal is to identify the optimal DMS configuration for the MIVE framework.
> <details>
> <summary>read the caption</summary>
> Table 8:  Ablation study on various hyperparameter configurations for our Disentangled Multi-instance Sampling (DMS). The best and second best scores are shown in red and blue, respectively.
> </details>

{{< table-caption >}}
| Method | GTC ↑ | GTF ↑ | FA ↑ | LTC ↑ | LTF ↑ | IA ↑ | CIA (**Ours**) ↑ | BP ↓ |
|---|---|---|---|---|---|---|---|---| 
| (a) Ablation on _λ_ | | | | | | | | |
| _λ_=0.2 | **0.9605** | 0.2745 | 0.8469 | <ins>0.9477</ins> | 0.2130 | 0.6299 | 0.7072 | **53.8473** |
| _λ_=0.4 (Ours) | <ins>0.9604</ins> | <ins>0.2750</ins> | **0.8557** | **0.9478** | <ins>0.2138</ins> | <ins>0.6419</ins> | <ins>0.7100</ins> | <ins>54.3452</ins> |
| _λ_=0.6 | **0.9605** | **0.2753** | <ins>0.8525</ins> | 0.9476 | **0.2139** | **0.6459** | **0.7111** | 54.5119 |
| (b) Ablation on _λ__r_ | | | | | | | | |
| _λ__r_=0.0 | 0.9599 | <ins>0.2757</ins> | **0.8770** | 0.9478 | 0.2137 | **0.6439** | 0.7041 | 54.8389 |
| _λ__r_=0.2 | 0.9599 | 0.2752 | <ins>0.8663</ins> | 0.9475 | 0.2137 | 0.6396 | 0.7023 | 54.6357 |
| _λ__r_=0.4 | **0.9610** | **0.2759** | 0.8589 | 0.9477 | **0.2140** | 0.6386 | **0.7101** | 54.5377 |
| _λ__r_=0.6 (Ours) | 0.9604 | 0.2750 | 0.8557 | 0.9478 | <ins>0.2138</ins> | 0.6419 | <ins>0.7100</ins> | 54.3452 |
| _λ__r_=0.8 | 0.9600 | 0.2746 | 0.8457 | <ins>0.9479</ins> | 0.2130 | <ins>0.6438</ins> | 0.7004 | <ins>54.2150</ins> |
| _λ__r_=1.0 | <ins>0.9605</ins> | 0.2728 | 0.8302 | **0.9484** | 0.2121 | 0.6277 | 0.6999 | **53.9180** |
| (c) Ablation on Percentage of Sampling Step that Utilizes IPR | | | | | | | | |
| Applying IPR on The First 60% Sampling Steps | **0.9608** | **0.2750** | **0.8579** | **0.9485** | <ins>0.2134</ins> | <ins>0.6350</ins> | <ins>0.7096</ins> | <ins>54.3023</ins> |
| Applying IPR on The First 80% Sampling Steps (Ours) | <ins>0.9604</ins> | **0.2750** | <ins>0.8557</ins> | <ins>0.9478</ins> | **0.2138** | **0.6419** | **0.7100** | 54.3452 |
| Applying IPR on The First 100% Sampling Steps | 0.9577 | <ins>0.2740</ins> | 0.8447 | 0.9452 | 0.2128 | 0.6363 | 0.7082 | **54.0010** |{{< /table-caption >}}
> 🔼 This table presents the ablation study results on Instance-centric Probability Redistribution (IPR), a key module of MIVE to achieve faithful editing with less artifacts. The table shows how varying different hyperparameters, such as λ, λr, and the percentage of sampling steps that utilizes IPR affects various metrics, including GTC, GTF, FA, LTC, LTF, IA, CIA, and BP. The table highlights the best and second-best scores in red and blue.
> <details>
> <summary>read the caption</summary>
> Table 9:  Ablation study on various hyperparameter configurations for our Instance-centric Probability Redistribution (IPR). The best and second best scores are shown in red and blue, respectively.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2412.12877/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.12877/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.12877/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.12877/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.12877/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.12877/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.12877/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.12877/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.12877/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.12877/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.12877/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.12877/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.12877/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.12877/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.12877/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.12877/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.12877/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.12877/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.12877/19.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.12877/20.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}