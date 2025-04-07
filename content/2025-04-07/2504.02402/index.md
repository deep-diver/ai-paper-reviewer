---
title: "EvMic: Event-based Non-contact sound recovery from effective spatial-temporal modeling"
summary: "EvMic recovers sound from visual vibrations using spatial-temporal modeling on event-based camera data."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Speech and Audio", "Audio Enhancement", "🏢 Shanghai AI Laboratory",]
showSummary: true
date: 2025-04-03
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2504.02402 {{< /keyword >}}
{{< keyword icon="writer" >}} Hao Yin et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-04-07 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2504.02402" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2504.02402" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2504.02402/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Traditional sound recovery methods face trade-offs in sampling rate, bandwidth, and field of view. **Event cameras** offer high temporal resolution and are great for capturing high-frequency signals, but current event-based methods don't fully use the spatial-temporal information. So, there is a need to improve sound recovery utilizing the advantages of event cameras. 



To improve event-based sound recovery, this paper introduces **EvMic**, a novel pipeline for non-contact sound recovery. They created a large training set with a new simulation. A new designed network captures spatial data and uses Mamba to model long-term temporal information.  A spatial aggregation block enhances signal quality. Experiments show this method is effective in synthetic and real-world scenarios.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Event cameras, combined with laser matrix, are effective for capturing subtle, high-frequency vibrations. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} Spatial-temporal modeling enhances sound recovery from sparse event data. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} A new simulation pipeline and dataset (EvMic) are introduced for event-based sound recovery research. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper pioneers event-based cameras for sound recovery, offering a novel method to overcome limitations of traditional systems. By integrating spatial-temporal modeling and laser enhancement, it unlocks new possibilities for **high-frequency acoustic analysis** and non-contact sensing, potentially impacting fields from surveillance to material science.

------
#### Visual Insights



![](https://arxiv.org/html/2504.02402/x2.png)

> 🔼 This figure illustrates the process of event-based non-contact sound recovery. The top half shows the traditional method using a high-speed camera to capture vibrations caused by sound waves, which are then processed to recover the sound. The bottom half presents the proposed method, which utilizes a laser matrix to amplify the vibration gradient before capturing it with an event camera. The event camera captures temporally dense data, providing more information about the vibration. Finally, a learning-based spatial-temporal model is used to reconstruct the sound signal from this richer data, leading to better recovery.  The figure highlights the benefits of using event cameras and a laser matrix for improved sound recovery compared to the traditional high-speed camera approach.
> <details>
> <summary>read the caption</summary>
> Figure 1: Illustration of our event-based non-contact sound recovery. We try to recover sound from the visual vibration of the object caused by the sound wave. Compared with the traditional high-speed camera solution (top), we proposed to use an event camera to capture a temporally dense signal (bottom). We first utilize a laser matrix (left) to amplify the gradient and an event camera to capture the vibrations. Then, our learning-based approach to spatial-temporal modeling enables us to recover better signals.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S5.T1.4">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S5.T1.4.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S5.T1.4.1.1.1" rowspan="2"><span class="ltx_text" id="S5.T1.4.1.1.1.1">Methods</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="2" id="S5.T1.4.1.1.2">Female-SA1</th>
<th class="ltx_td ltx_th ltx_th_column ltx_border_tt" id="S5.T1.4.1.1.3"></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="2" id="S5.T1.4.1.1.4">Male-SA1</th>
<th class="ltx_td ltx_th ltx_th_column ltx_border_tt" id="S5.T1.4.1.1.5"></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="2" id="S5.T1.4.1.1.6">Female-SA2</th>
<th class="ltx_td ltx_th ltx_th_column ltx_border_tt" id="S5.T1.4.1.1.7"></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="2" id="S5.T1.4.1.1.8">Male-SA2</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="2" id="S5.T1.4.1.1.9">Average</th>
</tr>
<tr class="ltx_tr" id="S5.T1.4.2.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S5.T1.4.2.2.1">SNR↑</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S5.T1.4.2.2.2">STOI↑</th>
<th class="ltx_td ltx_th ltx_th_column ltx_border_t" id="S5.T1.4.2.2.3"></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S5.T1.4.2.2.4">SNR↑</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S5.T1.4.2.2.5">STOI↑</th>
<th class="ltx_td ltx_th ltx_th_column ltx_border_t" id="S5.T1.4.2.2.6"></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S5.T1.4.2.2.7">SNR↑</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S5.T1.4.2.2.8">STOI↑</th>
<th class="ltx_td ltx_th ltx_th_column ltx_border_t" id="S5.T1.4.2.2.9"></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S5.T1.4.2.2.10">SNR↑</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S5.T1.4.2.2.11">STOI↑</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S5.T1.4.2.2.12">SNR↑</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S5.T1.4.2.2.13">STOI↑</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S5.T1.4.3.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S5.T1.4.3.1.1">RGBPhase</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.4.3.1.2">-2.992</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.4.3.1.3">0.389</td>
<td class="ltx_td ltx_border_t" id="S5.T1.4.3.1.4"></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.4.3.1.5">-2.976</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.4.3.1.6">0.419</td>
<td class="ltx_td ltx_border_t" id="S5.T1.4.3.1.7"></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.4.3.1.8">-2.578</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.4.3.1.9">0.246</td>
<td class="ltx_td ltx_border_t" id="S5.T1.4.3.1.10"></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.4.3.1.11">-2.801</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.4.3.1.12">0.237</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.4.3.1.13">-2.837</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.4.3.1.14">0.322</td>
</tr>
<tr class="ltx_tr" id="S5.T1.4.4.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T1.4.4.2.1">EvPhase</th>
<td class="ltx_td ltx_align_center" id="S5.T1.4.4.2.2">-1.883</td>
<td class="ltx_td ltx_align_center" id="S5.T1.4.4.2.3">0.286</td>
<td class="ltx_td" id="S5.T1.4.4.2.4"></td>
<td class="ltx_td ltx_align_center" id="S5.T1.4.4.2.5">0.183</td>
<td class="ltx_td ltx_align_center" id="S5.T1.4.4.2.6">0.485</td>
<td class="ltx_td" id="S5.T1.4.4.2.7"></td>
<td class="ltx_td ltx_align_center" id="S5.T1.4.4.2.8">1.465</td>
<td class="ltx_td ltx_align_center" id="S5.T1.4.4.2.9"><span class="ltx_text ltx_font_bold" id="S5.T1.4.4.2.9.1">0.482</span></td>
<td class="ltx_td" id="S5.T1.4.4.2.10"></td>
<td class="ltx_td ltx_align_center" id="S5.T1.4.4.2.11">-0.080</td>
<td class="ltx_td ltx_align_center" id="S5.T1.4.4.2.12">0.251</td>
<td class="ltx_td ltx_align_center" id="S5.T1.4.4.2.13">-0.079</td>
<td class="ltx_td ltx_align_center" id="S5.T1.4.4.2.14">0.376</td>
</tr>
<tr class="ltx_tr" id="S5.T1.4.5.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_t" id="S5.T1.4.5.3.1">Ours(8kHz)</th>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S5.T1.4.5.3.2"><span class="ltx_text ltx_font_bold" id="S5.T1.4.5.3.2.1">1.159</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S5.T1.4.5.3.3"><span class="ltx_text ltx_font_bold" id="S5.T1.4.5.3.3.1">0.451</span></td>
<td class="ltx_td ltx_border_bb ltx_border_t" id="S5.T1.4.5.3.4"></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S5.T1.4.5.3.5"><span class="ltx_text ltx_font_bold" id="S5.T1.4.5.3.5.1">0.809</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S5.T1.4.5.3.6"><span class="ltx_text ltx_font_bold" id="S5.T1.4.5.3.6.1">0.542</span></td>
<td class="ltx_td ltx_border_bb ltx_border_t" id="S5.T1.4.5.3.7"></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S5.T1.4.5.3.8"><span class="ltx_text ltx_font_bold" id="S5.T1.4.5.3.8.1">1.929</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S5.T1.4.5.3.9">0.479</td>
<td class="ltx_td ltx_border_bb ltx_border_t" id="S5.T1.4.5.3.10"></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S5.T1.4.5.3.11"><span class="ltx_text ltx_font_bold" id="S5.T1.4.5.3.11.1">0.959</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S5.T1.4.5.3.12"><span class="ltx_text ltx_font_bold" id="S5.T1.4.5.3.12.1">0.452</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S5.T1.4.5.3.13"><span class="ltx_text ltx_font_bold" id="S5.T1.4.5.3.13.1">1.214</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S5.T1.4.5.3.14"><span class="ltx_text ltx_font_bold" id="S5.T1.4.5.3.14.1">0.481</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 This table presents a quantitative comparison of the proposed model's performance against other methods using synthetic data.  The metrics used for comparison are the Signal-to-Noise Ratio (SNR) and the Short-Time Objective Intelligibility (STOI). The results are broken down by gender and dataset variation (SA1 and SA2), providing a comprehensive evaluation of the model's ability to recover sound from visual vibrations in various conditions.
> <details>
> <summary>read the caption</summary>
> Table 1: Quantity comparison results of our model with other methods on the synthetic data.
> </details>





### In-depth insights


#### Event-based EvMic
The 'Event-based EvMic' concept centers on utilizing event cameras, bio-inspired sensors reacting to brightness changes asynchronously, for non-contact sound recovery. **Traditional methods face trade-offs in sampling rate, bandwidth, and field of view; event cameras offer a balance with high temporal resolution and sparse data capture**. The system leverages sound-induced object vibrations, captured as high-frequency event signals. A novel deep learning pipeline models spatial-temporal event information, enhanced by a laser matrix to amplify object surface gradients. **The EvMic system demonstrates potential in capturing subtle visual changes from sound waves**, overcoming limitations of existing vibration recovery methods. This deep learning framework models temporal dependencies to recover sound.

#### Spatial-temporal
**Spatial-temporal modeling** is crucial for understanding how phenomena evolve across space and time. It involves capturing dependencies and patterns present in both spatial and temporal dimensions. Effective models can reveal insights hidden in sequential data tied to specific locations. **Applications span from climate change analysis** to traffic prediction, highlighting the wide-ranging significance. Handling data sparsity and capturing long-range dependencies are typical challenges. Incorporating spatial context can improve prediction accuracy, especially in dynamic environments. Methods must consider both spatial relationships and temporal dynamics to provide a comprehensive view. **Advancements in computational power and data availability** have enabled more sophisticated spatial-temporal models. **Addressing these challenges is key** to more accurate and insightful analysis of dynamic phenomena.

#### Sparse Modeling
**Sparse modeling** is critical for efficient non-contact sound recovery, particularly using event cameras. The inherent sparsity of event data, where only brightness changes are recorded, significantly reduces computational burden compared to dense frame-based approaches. By leveraging this sparsity, algorithms can focus on the most informative regions, such as those around laser speckles, to extract relevant spatial-temporal features. Effective sparse modeling techniques, like sparse convolutions, minimize redundant computations, enabling real-time processing and improved signal-to-noise ratio. This targeted approach enhances the model's ability to capture subtle vibrations and accurately reconstruct audio signals from sparse event data.

#### Laser Amplification
While the term 'Laser Amplification' isn't explicitly mentioned, it's central to the paper's innovation. The research cleverly employs a **laser matrix** not as a direct audio sensor, but as a **gradient amplifier**. This leverages the laser's inherent ability to create high-intensity, coherent light patterns.  These patterns, projected onto the vibrating object, enhance subtle surface variations. This pre-processing allows the event camera to capture more **pronounced brightness changes**, leading to a richer and more informative event stream.  Effectively, the laser amplifies the signal-to-noise ratio before the event detection stage, crucial given the minute vibrations caused by sound. This is a powerful, non-contact method for sound recovery as they enhanced the capture using laser.

#### Sound Recovery
Sound recovery from visual cues presents a fascinating challenge, bridging acoustics and computer vision. The core idea revolves around **extracting subtle vibrations** from objects caused by sound waves. Challenges include the **high-frequency and low-amplitude** nature of these vibrations. Early methods using Laser Doppler Vibrometers offered precision but lacked spatial coverage, while subsequent approaches traded off sampling rate, field of view, and optical complexity. Recent event cameras offer potential by capturing high temporal resolution, enabling improved sound recovery. Successfully addressing these aspects, through novel data-driven techniques, could revolutionize fields that require non-invasive audio acquisition, such as surveillance and material analysis.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2504.02402/x3.png)

> 🔼 Figure 2 illustrates the data simulation process for the proposed event-based sound recovery system.  Panel (a) details the simulation of object vibrations driven by audio signals.  Audio input controls object coordinates, producing vibrations in random directions. An event simulator then generates corresponding events from these vibrations, creating a training dataset for the model. Panel (b) shows a secondary simulation used to create synthetic vibrating speckles. This data is used for fine-tuning and testing the model, helping improve its performance and generalization capabilities.
> <details>
> <summary>read the caption</summary>
> Figure 2: (a) Our data simulation starts with controlling the objects’ vibration. We utilize audio to manipulate the coordinates of objects resulting in their vibrations across random directions. Then we use an event simulator to generate the corresponding events. The generated events are used for training. (b) The synthetic vibrating speckles are used for fine-tuning and testing.
> </details>



![](https://arxiv.org/html/2504.02402/x4.png)

> 🔼 Figure 3 illustrates the proposed network architecture for event-based non-contact sound recovery.  The process begins by converting the event stream into spatio-temporal voxel grids.  Patches, centered on detected speckles, are extracted from these grids and fed into a sparse convolution-based feature extraction module. A spatial aggregation block then combines information from multiple patches, considering the varying vibration directions.  Finally, a Mamba module models long-term temporal dependencies within the feature sequence, leading to the reconstruction of the audio signal. Sub-figures (b) and (c) provide detailed views of the Spatial Aggregation Block (SAB) and the Structured State Space Model (SSM), respectively.  Sub-figure (c) defines the input feature (g<sub>t</sub>), output (o<sub>t</sub>), hidden state (h<sub>t</sub>), and parameters (A, B, C) of the SSM, showing how the Mamba module uses these components and the Δ operator to discretize continuous parameters and model long-term temporal information.
> <details>
> <summary>read the caption</summary>
> Figure 3: (a) Overview of our proposed network architecture. The event stream is processed into voxel grids, from which patches centered around the speckles are selected. First, the patches are input into a sparse convolution-based lightweight backbone to extract visual features. Next, a spatial attention block aggregates the information in the different patches. Finally, Mamba is employed to model long-term temporal information and reconstruct the audio that caused the object’s vibration. (b) and (c) illustrate the detailed structure of SAB and SSM. (c) At time t gtsubscript𝑔𝑡g_{t}italic_g start_POSTSUBSCRIPT italic_t end_POSTSUBSCRIPT is the input feature, otsubscript𝑜𝑡o_{t}italic_o start_POSTSUBSCRIPT italic_t end_POSTSUBSCRIPT is the output and htsubscriptℎ𝑡h_{t}italic_h start_POSTSUBSCRIPT italic_t end_POSTSUBSCRIPT denotes the hidden state. A, B, and C are the gating weights optimized by Mamba. ΔΔ\Deltaroman_Δ is used to discretize the continuous parameters A𝐴Aitalic_A and B𝐵Bitalic_B.
> </details>



![](https://arxiv.org/html/2504.02402/x5.png)

> 🔼 Figure 4 presents a qualitative comparison of sound recovery results from a real-world experiment involving a chip bag.  The experiment involved generating sound using a speaker, and the resulting chip bag vibrations were captured using several methods: a traditional RGB-based camera system (RGBPhase), an event-based system from prior work (EvPhase), the proposed EvMic system (Ours), and a reference microphone recording. The figure shows the experimental setup, the visualized events from the event camera, and spectrograms of the recovered audio from each method alongside the spectrogram from the microphone. This allows for a visual comparison of the accuracy and detail captured by each sound recovery method.
> <details>
> <summary>read the caption</summary>
> Figure 4: Qualitative comparison results on the real-world data of a chipbag. Audio is provided in the supplementary.
> </details>



![](https://arxiv.org/html/2504.02402/x6.png)

> 🔼 Figure 5 presents a qualitative comparison of sound recovery results from a real-world experiment involving a speaker. The experiment setup includes an event camera, a speaker, and a laser matrix to enhance the visual representation of sound vibrations. The figure displays visualizations of the event stream, the results obtained using the EvPhase method (a baseline method), the results from the proposed EvMic method, and a reference spectrogram from a microphone recording. This allows for a visual comparison of the methods' ability to capture and reconstruct the audio signal, demonstrating the superior performance of the proposed method in terms of accuracy and high-frequency detail.
> <details>
> <summary>read the caption</summary>
> Figure 5: Qualitative comparison results on the real-world data of a speaker. Audio is provided in the supplementary.
> </details>



![](https://arxiv.org/html/2504.02402/x7.png)

> 🔼 Figure 6 demonstrates the system's wide field of view by capturing audio sources from a distance.  The top half shows glitter papers reacting to a chirp audio signal. The bottom half shows three speakers playing different audio channels (left, right, and a mixed mono channel from the center speaker). This setup showcases the system's ability to recover stereo audio from spatially separated sources.
> <details>
> <summary>read the caption</summary>
> Figure 6: Capture objects from a distance to obtain a large field of view. Top: Capture glitter papers while playing chirp audio. Bottom: Capture multiple speakers to recover stereo audio. The left and right speakers play left and right channels respectively, while the medium speaker plays a mixed mono channel. Audio is provided in the supplementary.
> </details>



![](https://arxiv.org/html/2504.02402/x8.png)

> 🔼 This figure demonstrates an ablation study on the impact of varying vibration directions on sound recovery accuracy.  The object's orientation is modified to induce vibrations along different axes.  The resulting spectrograms for each orientation are displayed and compared to ground truth audio (microphone recording). This helps to illustrate the robustness and sensitivity of the proposed method to different vibration patterns, a key factor in real-world non-contact sound recovery scenarios.
> <details>
> <summary>read the caption</summary>
> Figure 7: Ablation analysis for different vibration direction. The object is placed in different orientations to produce various vibration directions. Audio is provided in the supplementary.
> </details>



![](https://arxiv.org/html/2504.02402/x9.png)

> 🔼 This figure displays a qualitative comparison of audio generated by models trained with and without synthetic speckle data.  The spectrograms visually represent the audio output, allowing for a direct comparison of the quality and detail in the audio reconstruction achieved by the two models. The use of speckle data during training demonstrably improves the model's ability to generate cleaner, higher-fidelity audio, as indicated by the differences between the spectrograms.
> <details>
> <summary>read the caption</summary>
> Figure A1: Qualitative comparison for models trained w or w/o speckle data.
> </details>



![](https://arxiv.org/html/2504.02402/x10.png)

> 🔼 Figure A2 presents a qualitative comparison of audio signals reconstructed using different model variations.  Each subfigure shows a spectrogram of reconstructed audio.  The models compared include one using only sparse convolutions, one with a temporal modeling module (LSTM), one with the spatial aggregation block (SAB), and the complete model with SAB and Mamba.  The ground truth spectrogram is also included. The figure visually demonstrates the impact of each component of the proposed network on the final audio reconstruction quality.
> <details>
> <summary>read the caption</summary>
> Figure A2: Qualitative results for ablation analysis.
> </details>



![](https://arxiv.org/html/2504.02402/x11.png)

> 🔼 This figure presents a qualitative comparison of the proposed model's performance against other methods using synthetic data.  It visually compares the spectrograms generated by the different methods. The spectrograms show frequency and amplitude information over time for each method, including the ground truth. This allows for a direct visual comparison of the accuracy and detail preserved by each method in reconstructing audio signals from visual vibration data.  Different color schemes and visual patterns in the spectrograms represent how the methods capture different aspects of the audio signal.
> <details>
> <summary>read the caption</summary>
> Figure A3: Qualitative comparison results of our model with other methods on the synthetic data.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S5.T2.4">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S5.T2.4.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S5.T2.4.1.1.1">Model</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T2.4.1.1.2">VRAM (G)</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T2.4.1.1.3">Flops (G)</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S5.T2.4.2.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S5.T2.4.2.1.1">w/o Sparse Convolution</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.4.2.1.2">22.715</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.4.2.1.3">1171.226</td>
</tr>
<tr class="ltx_tr" id="S5.T2.4.3.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S5.T2.4.3.2.1">w Sparse Convolution</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T2.4.3.2.2"><span class="ltx_text ltx_font_bold" id="S5.T2.4.3.2.2.1">7.461</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T2.4.3.2.3"><span class="ltx_text ltx_font_bold" id="S5.T2.4.3.2.3.1">51.229</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a comparison of computational resource usage between a ResNet18 model using sparse convolutions and a standard ResNet18 model.  Both models were evaluated on the EvMic dataset, and the results show the memory (VRAM in GB) and computational load (FLOPs in G) for each model. The table demonstrates the significant reduction in resource usage achieved by employing sparse convolutions, highlighting their efficiency in processing the event-based data.
> <details>
> <summary>read the caption</summary>
> Table 2: Compare the computational load and memory usage of sparse convolution-based ResNet18 and traditional ResNet18 on EvMic.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S5.T3.4">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S5.T3.4.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S5.T3.4.1.1.1">Model</th>
<th class="ltx_td ltx_nopad_l ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T3.4.1.1.2">SNR↑</th>
<th class="ltx_td ltx_nopad_l ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T3.4.1.1.3">STOI↑</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S5.T3.4.2.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S5.T3.4.2.1.1">SPconv + Transformer</th>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_t" id="S5.T3.4.2.1.2">-0.195</td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_t" id="S5.T3.4.2.1.3">0.437</td>
</tr>
<tr class="ltx_tr" id="S5.T3.4.3.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T3.4.3.2.1">SPconv + LSTM</th>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S5.T3.4.3.2.2">0.015</td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S5.T3.4.3.2.3">0.453</td>
</tr>
<tr class="ltx_tr" id="S5.T3.4.4.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T3.4.4.3.1">SPconv + Mamba</th>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S5.T3.4.4.3.2">0.309</td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S5.T3.4.4.3.3">0.474</td>
</tr>
<tr class="ltx_tr" id="S5.T3.4.5.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_t" id="S5.T3.4.5.4.1">SPconv + SAB + Mamba</th>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_bb ltx_border_t" id="S5.T3.4.5.4.2">
<span class="ltx_text ltx_font_bold" id="S5.T3.4.5.4.2.1">1.214</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_bb ltx_border_t" id="S5.T3.4.5.4.3"><span class="ltx_text ltx_font_bold" id="S5.T3.4.5.4.3.1">0.481</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of an ablation study conducted on synthetic data to evaluate the contribution of different modules within the proposed sound recovery model.  The study assesses the impact of using sparse convolutions, a spatial aggregation block (SAB), and the Mamba temporal modeling module on the overall performance.  Performance is measured using SNR (Signal-to-Noise Ratio) and STOI (Short-Time Objective Intelligibility) metrics, providing a quantitative comparison of the model's efficacy with and without each of these components.
> <details>
> <summary>read the caption</summary>
> Table 3: Ablation analysis for our modules on the synthetic data.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="A5.T1.6">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A5.T1.6.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="A5.T1.6.1.1.1" rowspan="2"><span class="ltx_text" id="A5.T1.6.1.1.1.1" style="font-size:144%;">Methods</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="2" id="A5.T1.6.1.1.2"><span class="ltx_text" id="A5.T1.6.1.1.2.1" style="font-size:144%;">Chipbag-Speech</span></th>
<th class="ltx_td ltx_th ltx_th_column ltx_border_tt" id="A5.T1.6.1.1.3"></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="2" id="A5.T1.6.1.1.4"><span class="ltx_text" id="A5.T1.6.1.1.4.1" style="font-size:144%;">Chipbag-MIDI</span></th>
<th class="ltx_td ltx_th ltx_th_column ltx_border_tt" id="A5.T1.6.1.1.5"></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="2" id="A5.T1.6.1.1.6"><span class="ltx_text" id="A5.T1.6.1.1.6.1" style="font-size:144%;">Speaker-Speech</span></th>
<th class="ltx_td ltx_th ltx_th_column ltx_border_tt" id="A5.T1.6.1.1.7"></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="2" id="A5.T1.6.1.1.8"><span class="ltx_text" id="A5.T1.6.1.1.8.1" style="font-size:144%;">Speaker-MIDI</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="2" id="A5.T1.6.1.1.9"><span class="ltx_text" id="A5.T1.6.1.1.9.1" style="font-size:144%;">Average</span></th>
</tr>
<tr class="ltx_tr" id="A5.T1.6.2.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A5.T1.6.2.2.1"><span class="ltx_text" id="A5.T1.6.2.2.1.1" style="font-size:144%;">SNR↑</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A5.T1.6.2.2.2"><span class="ltx_text" id="A5.T1.6.2.2.2.1" style="font-size:144%;">STOI↑</span></th>
<th class="ltx_td ltx_th ltx_th_column ltx_border_t" id="A5.T1.6.2.2.3"></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A5.T1.6.2.2.4"><span class="ltx_text" id="A5.T1.6.2.2.4.1" style="font-size:144%;">SNR↑</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A5.T1.6.2.2.5"><span class="ltx_text" id="A5.T1.6.2.2.5.1" style="font-size:144%;">STOI↑</span></th>
<th class="ltx_td ltx_th ltx_th_column ltx_border_t" id="A5.T1.6.2.2.6"></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A5.T1.6.2.2.7"><span class="ltx_text" id="A5.T1.6.2.2.7.1" style="font-size:144%;">SNR↑</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A5.T1.6.2.2.8"><span class="ltx_text" id="A5.T1.6.2.2.8.1" style="font-size:144%;">STOI↑</span></th>
<th class="ltx_td ltx_th ltx_th_column ltx_border_t" id="A5.T1.6.2.2.9"></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A5.T1.6.2.2.10"><span class="ltx_text" id="A5.T1.6.2.2.10.1" style="font-size:144%;">SNR↑</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A5.T1.6.2.2.11"><span class="ltx_text" id="A5.T1.6.2.2.11.1" style="font-size:144%;">STOI↑</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A5.T1.6.2.2.12"><span class="ltx_text" id="A5.T1.6.2.2.12.1" style="font-size:144%;">SNR↑</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A5.T1.6.2.2.13"><span class="ltx_text" id="A5.T1.6.2.2.13.1" style="font-size:144%;">STOI↑</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A5.T1.6.3.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A5.T1.6.3.1.1"><span class="ltx_text" id="A5.T1.6.3.1.1.1" style="font-size:144%;">EvPhase</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T1.6.3.1.2"><span class="ltx_text" id="A5.T1.6.3.1.2.1" style="font-size:144%;">-1.540</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T1.6.3.1.3"><span class="ltx_text" id="A5.T1.6.3.1.3.1" style="font-size:144%;">0.290</span></td>
<td class="ltx_td ltx_border_t" id="A5.T1.6.3.1.4"></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T1.6.3.1.5"><span class="ltx_text" id="A5.T1.6.3.1.5.1" style="font-size:144%;">1.122</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T1.6.3.1.6"><span class="ltx_text" id="A5.T1.6.3.1.6.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_border_t" id="A5.T1.6.3.1.7"></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T1.6.3.1.8"><span class="ltx_text" id="A5.T1.6.3.1.8.1" style="font-size:144%;">-2.963</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T1.6.3.1.9"><span class="ltx_text" id="A5.T1.6.3.1.9.1" style="font-size:144%;">0.501</span></td>
<td class="ltx_td ltx_border_t" id="A5.T1.6.3.1.10"></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T1.6.3.1.11"><span class="ltx_text" id="A5.T1.6.3.1.11.1" style="font-size:144%;">0.681</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T1.6.3.1.12"><span class="ltx_text" id="A5.T1.6.3.1.12.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T1.6.3.1.13"><span class="ltx_text" id="A5.T1.6.3.1.13.1" style="font-size:144%;">-1.350</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T1.6.3.1.14"><span class="ltx_text" id="A5.T1.6.3.1.14.1" style="font-size:144%;">0.396</span></td>
</tr>
<tr class="ltx_tr" id="A5.T1.6.4.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="A5.T1.6.4.2.1"><span class="ltx_text" id="A5.T1.6.4.2.1.1" style="font-size:144%;">Ours(8kHz)</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A5.T1.6.4.2.2"><span class="ltx_text ltx_font_bold" id="A5.T1.6.4.2.2.1" style="font-size:144%;">-0.511</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A5.T1.6.4.2.3"><span class="ltx_text ltx_font_bold" id="A5.T1.6.4.2.3.1" style="font-size:144%;">0.383</span></td>
<td class="ltx_td ltx_border_bb" id="A5.T1.6.4.2.4"></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A5.T1.6.4.2.5"><span class="ltx_text ltx_font_bold" id="A5.T1.6.4.2.5.1" style="font-size:144%;">3.867</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A5.T1.6.4.2.6"><span class="ltx_text" id="A5.T1.6.4.2.6.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_border_bb" id="A5.T1.6.4.2.7"></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A5.T1.6.4.2.8"><span class="ltx_text ltx_font_bold" id="A5.T1.6.4.2.8.1" style="font-size:144%;">-2.866</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A5.T1.6.4.2.9"><span class="ltx_text ltx_font_bold" id="A5.T1.6.4.2.9.1" style="font-size:144%;">0.506</span></td>
<td class="ltx_td ltx_border_bb" id="A5.T1.6.4.2.10"></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A5.T1.6.4.2.11"><span class="ltx_text ltx_font_bold" id="A5.T1.6.4.2.11.1" style="font-size:144%;">3.338</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A5.T1.6.4.2.12"><span class="ltx_text" id="A5.T1.6.4.2.12.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A5.T1.6.4.2.13"><span class="ltx_text ltx_font_bold" id="A5.T1.6.4.2.13.1" style="font-size:144%;">0.957</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A5.T1.6.4.2.14"><span class="ltx_text ltx_font_bold" id="A5.T1.6.4.2.14.1" style="font-size:144%;">0.445</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a quantitative comparison of the proposed method's performance against existing methods on real-world sound recovery scenarios.  It shows the Signal-to-Noise Ratio (SNR) and Speech Intelligibility (STOI) scores for both speech and MIDI audio data across different experiments (Chipbag-Speech, Chipbag-MIDI, Speaker-Speech, Speaker-MIDI).  The results highlight the relative strengths and weaknesses of each method in real-world, less controlled conditions.
> <details>
> <summary>read the caption</summary>
> Table A1: Quantity results on the real-world data.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="A6.T2.6">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A6.T2.6.1.1">
<td class="ltx_td ltx_align_left ltx_border_tt" id="A6.T2.6.1.1.1"><span class="ltx_text" id="A6.T2.6.1.1.1.1" style="font-size:144%;">Methods</span></td>
<td class="ltx_td ltx_align_left ltx_border_tt" id="A6.T2.6.1.1.2"><span class="ltx_text" id="A6.T2.6.1.1.2.1" style="font-size:144%;">RGBPhase</span></td>
<td class="ltx_td ltx_align_left ltx_border_tt" id="A6.T2.6.1.1.3"><span class="ltx_text" id="A6.T2.6.1.1.3.1" style="font-size:144%;">EvPhase</span></td>
<td class="ltx_td ltx_align_left ltx_border_tt" id="A6.T2.6.1.1.4"><span class="ltx_text" id="A6.T2.6.1.1.4.1" style="font-size:144%;">Ours-1</span></td>
<td class="ltx_td ltx_align_left ltx_border_tt" id="A6.T2.6.1.1.5"><span class="ltx_text" id="A6.T2.6.1.1.5.1" style="font-size:144%;">Ours-8</span></td>
</tr>
<tr class="ltx_tr" id="A6.T2.6.2.2">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_t" id="A6.T2.6.2.2.1"><span class="ltx_text" id="A6.T2.6.2.2.1.1" style="font-size:144%;">time(s)</span></td>
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_t" id="A6.T2.6.2.2.2"><span class="ltx_text" id="A6.T2.6.2.2.2.1" style="font-size:144%;">744.24</span></td>
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_t" id="A6.T2.6.2.2.3"><span class="ltx_text" id="A6.T2.6.2.2.3.1" style="font-size:144%;">29.54</span></td>
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_t" id="A6.T2.6.2.2.4"><span class="ltx_text" id="A6.T2.6.2.2.4.1" style="font-size:144%;">30.13</span></td>
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_t" id="A6.T2.6.2.2.5"><span class="ltx_text" id="A6.T2.6.2.2.5.1" style="font-size:144%;">132.36</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a comparison of the inference times for different sound recovery methods: RGBPhase, EvPhase, and the proposed EvMic model (with both one and eight speckles used).  Inference time is a crucial aspect for real-time applications, and this table highlights the computational efficiency of each approach, demonstrating the trade-off between speed and accuracy.
> <details>
> <summary>read the caption</summary>
> Table A2: Inference time for all methods.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2504.02402/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.02402/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.02402/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.02402/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.02402/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.02402/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.02402/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.02402/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.02402/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.02402/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.02402/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.02402/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.02402/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}