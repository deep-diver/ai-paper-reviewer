---
title: "Quantization for OpenAI's Whisper Models: A Comparative Analysis"
summary: "Quantization optimizes OpenAI's Whisper models, balancing model size, speed, and accuracy for diverse applications."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Speech and Audio", "Speech Recognition", "🏢 Independent Researcher",]
showSummary: true
date: 2025-03-12
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2503.09905 {{< /keyword >}}
{{< keyword icon="writer" >}} Allison Andreyev et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-03-14 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2503.09905" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2503.09905" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2503.09905/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Automated Speech Recognition (ASR) models like OpenAI's Whisper have become essential for many applications, including translation and live transcription. However, issues arise due to inaccuracies in transcription along with increased latency and high computational demands. The researchers analyzed Whisper and two of its variants, focusing on their capabilities. Prior research explored methods to enhance Whisper's performance, but the impact of quantization on model size and latency needed further exploring.



This study addresses the gap by **evaluating the capabilities of Whisper and its variants** along with defining quantization techniques for Whisper models. In addition, they examined performance of model in terms of word error rate, processing speed, and latency. The research summarizes qualitative and quantitative findings from two experimental evaluations, showing how **quantization reduces latency by 19% and model size by 45%**, while also preserving transcription accuracy.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Quantization reduces Whisper model size by up to 45% without sacrificing accuracy. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} Quantization can decrease Whisper model latency by 19%, improving processing speed. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} The study offers insights into selecting the optimal Whisper model and quantization method. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper is important for researchers because it provides **a comprehensive analysis of Whisper models, quantizatization methods, and experimental evaluations**. By understanding the practical applications, researchers can better optimize model size, latency, and accuracy of ASR systems, and **find deployment opportunities. This information is crucial for developing real-time applications**, and improving accessibility.

------
#### Visual Insights





{{< table-caption >}}
<table class="ltx_tabular ltx_align_left ltx_centering ltx_guessed_headers ltx_align_middle" id="S6.T1.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S6.T1.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_l ltx_border_r ltx_border_t" id="S6.T1.1.1.1.1"><span class="ltx_text ltx_font_bold" id="S6.T1.1.1.1.1.1">Model Size</span></th>
<th class="ltx_td ltx_align_justify ltx_align_top ltx_th ltx_th_column ltx_border_r ltx_border_t" id="S6.T1.1.1.1.2">
<span class="ltx_inline-block ltx_align_top" id="S6.T1.1.1.1.2.1">
<span class="ltx_p" id="S6.T1.1.1.1.2.1.1" style="width:85.4pt;"><span class="ltx_text ltx_font_bold" id="S6.T1.1.1.1.2.1.1.1">Clean Speech</span></span>
</span>
</th>
<th class="ltx_td ltx_align_justify ltx_align_top ltx_th ltx_th_column ltx_border_r ltx_border_t" id="S6.T1.1.1.1.3">
<span class="ltx_inline-block ltx_align_top" id="S6.T1.1.1.1.3.1">
<span class="ltx_p" id="S6.T1.1.1.1.3.1.1" style="width:85.4pt;"><span class="ltx_text ltx_font_bold" id="S6.T1.1.1.1.3.1.1.1">Challenging Speech</span></span>
</span>
</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S6.T1.1.2.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_l ltx_border_r ltx_border_t" id="S6.T1.1.2.1.1"><span class="ltx_text ltx_font_bold" id="S6.T1.1.2.1.1.1">Tiny</span></th>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="S6.T1.1.2.1.2">
<span class="ltx_inline-block ltx_align_top" id="S6.T1.1.2.1.2.1">
<span class="ltx_p" id="S6.T1.1.2.1.2.1.1" style="width:85.4pt;">Quick output (¡ 10s), low GPU/CPU usage, inaccuracies with larger text or names, capitalization issues</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="S6.T1.1.2.1.3">
<span class="ltx_inline-block ltx_align_top" id="S6.T1.1.2.1.3.1">
<span class="ltx_p" id="S6.T1.1.2.1.3.1.1" style="width:85.4pt;">Misses small background noises, e.g., “They worshiped” only “worship” heard</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S6.T1.1.3.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_l ltx_border_r ltx_border_t" id="S6.T1.1.3.2.1"><span class="ltx_text ltx_font_bold" id="S6.T1.1.3.2.1.1">Small</span></th>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="S6.T1.1.3.2.2">
<span class="ltx_inline-block ltx_align_top" id="S6.T1.1.3.2.2.1">
<span class="ltx_p" id="S6.T1.1.3.2.2.1.1" style="width:85.4pt;">10-20s output, best capitalization, good timestamp details</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="S6.T1.1.3.2.3">
<span class="ltx_inline-block ltx_align_top" id="S6.T1.1.3.2.3.1">
<span class="ltx_p" id="S6.T1.1.3.2.3.1.1" style="width:85.4pt;">Similar to Medium, but 2x faster</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S6.T1.1.4.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_l ltx_border_r ltx_border_t" id="S6.T1.1.4.3.1"><span class="ltx_text ltx_font_bold" id="S6.T1.1.4.3.1.1">Medium</span></th>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="S6.T1.1.4.3.2">
<span class="ltx_inline-block ltx_align_top" id="S6.T1.1.4.3.2.1">
<span class="ltx_p" id="S6.T1.1.4.3.2.1.1" style="width:85.4pt;">20-40s output, similar accuracy to large model</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="S6.T1.1.4.3.3">
<span class="ltx_inline-block ltx_align_top" id="S6.T1.1.4.3.3.1">
<span class="ltx_p" id="S6.T1.1.4.3.3.1.1" style="width:85.4pt;">N/A</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S6.T1.1.5.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_b ltx_border_l ltx_border_r ltx_border_t" id="S6.T1.1.5.4.1"><span class="ltx_text ltx_font_bold" id="S6.T1.1.5.4.1.1">Large</span></th>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_b ltx_border_r ltx_border_t" id="S6.T1.1.5.4.2">
<span class="ltx_inline-block ltx_align_top" id="S6.T1.1.5.4.2.1">
<span class="ltx_p" id="S6.T1.1.5.4.2.1.1" style="width:85.4pt;">Long download (2GB), slow processing (up to a couple of minutes), punctuation and capitalization issues</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_b ltx_border_r ltx_border_t" id="S6.T1.1.5.4.3">
<span class="ltx_inline-block ltx_align_top" id="S6.T1.1.5.4.3.1">
<span class="ltx_p" id="S6.T1.1.5.4.3.1.1" style="width:85.4pt;">Modifies structure to be grammatically correct while matching audio more closely</span>
</span>
</td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 This table presents a qualitative analysis of the Whisper speech recognition model's performance across various sizes (tiny, small, medium, large) and speech difficulty levels (clean, challenging).  For each model size, it describes observations regarding output speed (time taken for transcription), accuracy of capitalization and punctuation, the presence of any errors in transcription, and overall timestamp accuracy for different speech types.
> <details>
> <summary>read the caption</summary>
> TABLE I: Qualitative Whisper Usage Experience on LibriSpeech Datasets Based on Model Size and Speech Difficulty
> </details>





### In-depth insights


#### Quantization Impact
Quantization's impact on speech recognition models like Whisper is multifaceted, primarily concerning the trade-offs between **model size, computational speed (latency), and transcription accuracy**. Quantizing a model, typically by reducing the numerical precision of its weights (e.g., from 32-bit floating-point to 8-bit integer), can significantly shrink the model's file size. This reduction enables easier deployment on resource-constrained devices like smartphones or embedded systems. Furthermore, smaller models generally exhibit faster inference times, leading to reduced latency in real-time applications like live captioning or speech translation. However, the crucial aspect is ensuring that quantization doesn't significantly degrade the model's accuracy. Excessive quantization can lead to information loss, causing a drop in transcription accuracy, measured by metrics like the Word Error Rate (WER). Therefore, the optimal quantization strategy involves finding a balance that maximizes model compression and speed while minimizing accuracy degradation. Certain hardware accelerators, like those found in modern CPUs and GPUs, are designed to efficiently perform computations with quantized models, further enhancing their performance. The viability of different quantization techniques is also dependent on the specific architecture of the ASR, in determining it's quantization boundaries.

#### Whisper Variants
When discussing Whisper variants, it's crucial to acknowledge that **OpenAI offers different versions to cater to diverse needs**. These variants might include models optimized for speed (**real-time transcription**), accuracy (**high-fidelity results**), or specific hardware constraints (**edge deployment**). Evaluating trade-offs is important because **larger models offer better accuracy but demand more resources**. Another crucial factor is the **ability to add timestamping**. Variants with such features offer granularity but impact model size and processing time. Lastly, the **capability to integrate with APIs** is also an important consideration, offering opportunities for customization and seamless integration into applications, therefore, **developers should consider these factors when choosing a model**.

#### Accuracy Tradeoffs
Accuracy tradeoffs in speech recognition models, particularly after quantization, are complex. **Reducing model size and latency through quantization** can impact transcription accuracy, potentially introducing errors or hallucinations. The choice of quantization method (e.g., INT4, INT5, INT8) presents a tradeoff. **Lower precision formats (INT4) lead to smaller models and faster inference but may sacrifice accuracy** compared to higher precision formats (INT8). The type of speech (clear vs. noisy) also influences accuracy, with challenging speech samples being more prone to errors after quantization. A balance between model size, speed, and accuracy must be considered based on the application's requirements. For real-time transcription, lower latency may be prioritized over absolute accuracy, whereas for archival purposes, accuracy might be paramount. **Fine-tuning strategies and hardware acceleration** can help mitigate accuracy loss during quantization and optimize performance for specific use cases.

#### Hardware Support
The section on "Hardware Support for Quantization" highlights the crucial role of hardware accelerators in optimizing the efficiency of quantized models, particularly for deployment on resource-limited devices. **AMD and ARM CPUs** support mixed-precision operations and 8-bit integer quantization, exemplified by AMD Zen 4 and ARM Neoverse architectures. **Apple Silicon and NVIDIA GPUs** enhance support for 8-bit integer quantization and tensor core optimization. **Intel CPUs and Qualcomm GPUs** optimize integer quantization and mixed-precision tasks. These hardware capabilities are essential for realizing the benefits of quantization, enabling faster and more efficient execution of AI models on a variety of platforms.

#### Future ASR Scaling
Future ASR scaling presents a fascinating landscape, driven by the need for **enhanced accuracy, efficiency, and real-time performance**. As models like Whisper evolve, optimizing the trade-off between these factors becomes critical. Scaling necessitates exploring advanced quantization techniques beyond INT8, potentially leveraging mixed-precision strategies and hardware accelerators. Furthermore, **distributed training and inference** could enable handling larger datasets and more complex models. Future research should also focus on **robustness to diverse acoustic environments and accents**, along with addressing the challenge of hallucinations. Exploring novel architectures, such as attention mechanisms or transformers, may unlock further performance gains. Ultimately, the success of future ASR scaling hinges on a holistic approach that considers both algorithmic advancements and hardware optimization to make ASR accessible.


### More visual insights




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S8.T2.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S8.T2.1.1.1">
<th class="ltx_td ltx_align_justify ltx_align_top ltx_th ltx_th_column ltx_th_row ltx_border_l ltx_border_r ltx_border_t" id="S8.T2.1.1.1.1">
<span class="ltx_inline-block ltx_align_top" id="S8.T2.1.1.1.1.1">
<span class="ltx_p" id="S8.T2.1.1.1.1.1.1" style="width:34.1pt;"><span class="ltx_text ltx_font_bold" id="S8.T2.1.1.1.1.1.1.1">Time</span></span>
</span>
</th>
<th class="ltx_td ltx_align_center ltx_align_top ltx_th ltx_th_column ltx_border_r ltx_border_t" colspan="2" id="S8.T2.1.1.1.2"><span class="ltx_text ltx_font_bold" id="S8.T2.1.1.1.2.1">whispercpp (GPU)</span></th>
<th class="ltx_td ltx_align_center ltx_align_top ltx_th ltx_th_column ltx_border_r ltx_border_t" colspan="2" id="S8.T2.1.1.1.3"><span class="ltx_text ltx_font_bold" id="S8.T2.1.1.1.3.1">whispercpp (CPU)</span></th>
</tr>
<tr class="ltx_tr" id="S8.T2.1.2.2">
<th class="ltx_td ltx_align_justify ltx_align_top ltx_th ltx_th_column ltx_th_row ltx_border_l ltx_border_r" id="S8.T2.1.2.2.1">
<span class="ltx_inline-block ltx_align_top" id="S8.T2.1.2.2.1.1">
<span class="ltx_p" id="S8.T2.1.2.2.1.1.1" style="width:34.1pt;"></span>
</span>
</th>
<th class="ltx_td ltx_align_justify ltx_align_top ltx_th ltx_th_column ltx_border_r ltx_border_t" id="S8.T2.1.2.2.2">
<span class="ltx_inline-block ltx_align_top" id="S8.T2.1.2.2.2.1">
<span class="ltx_p" id="S8.T2.1.2.2.2.1.1" style="width:38.4pt;"><span class="ltx_text ltx_font_bold" id="S8.T2.1.2.2.2.1.1.1">Standard</span></span>
</span>
</th>
<th class="ltx_td ltx_align_justify ltx_align_top ltx_th ltx_th_column ltx_border_r ltx_border_t" id="S8.T2.1.2.2.3">
<span class="ltx_inline-block ltx_align_top" id="S8.T2.1.2.2.3.1">
<span class="ltx_p" id="S8.T2.1.2.2.3.1.1" style="width:38.4pt;"><span class="ltx_text ltx_font_bold" id="S8.T2.1.2.2.3.1.1.1">Quantized</span></span>
</span>
</th>
<th class="ltx_td ltx_align_justify ltx_align_top ltx_th ltx_th_column ltx_border_r ltx_border_t" id="S8.T2.1.2.2.4">
<span class="ltx_inline-block ltx_align_top" id="S8.T2.1.2.2.4.1">
<span class="ltx_p" id="S8.T2.1.2.2.4.1.1" style="width:38.4pt;"><span class="ltx_text ltx_font_bold" id="S8.T2.1.2.2.4.1.1.1">Standard</span></span>
</span>
</th>
<th class="ltx_td ltx_align_justify ltx_align_top ltx_th ltx_th_column ltx_border_r ltx_border_t" id="S8.T2.1.2.2.5">
<span class="ltx_inline-block ltx_align_top" id="S8.T2.1.2.2.5.1">
<span class="ltx_p" id="S8.T2.1.2.2.5.1.1" style="width:38.4pt;"><span class="ltx_text ltx_font_bold" id="S8.T2.1.2.2.5.1.1.1">Quantized</span></span>
</span>
</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S8.T2.1.3.1">
<th class="ltx_td ltx_align_justify ltx_align_top ltx_th ltx_th_row ltx_border_l ltx_border_r ltx_border_t" id="S8.T2.1.3.1.1">
<span class="ltx_inline-block ltx_align_top" id="S8.T2.1.3.1.1.1">
<span class="ltx_p" id="S8.T2.1.3.1.1.1.1" style="width:34.1pt;">Load</span>
</span>
</th>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="S8.T2.1.3.1.2">
<span class="ltx_inline-block ltx_align_top" id="S8.T2.1.3.1.2.1">
<span class="ltx_p" id="S8.T2.1.3.1.2.1.1" style="width:38.4pt;">123.58 ms</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="S8.T2.1.3.1.3">
<span class="ltx_inline-block ltx_align_top" id="S8.T2.1.3.1.3.1">
<span class="ltx_p" id="S8.T2.1.3.1.3.1.1" style="width:38.4pt;">66.54 ms</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="S8.T2.1.3.1.4">
<span class="ltx_inline-block ltx_align_top" id="S8.T2.1.3.1.4.1">
<span class="ltx_p" id="S8.T2.1.3.1.4.1.1" style="width:38.4pt;">162.27 ms</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="S8.T2.1.3.1.5">
<span class="ltx_inline-block ltx_align_top" id="S8.T2.1.3.1.5.1">
<span class="ltx_p" id="S8.T2.1.3.1.5.1.1" style="width:38.4pt;">94.51 ms</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S8.T2.1.4.2">
<th class="ltx_td ltx_align_justify ltx_align_top ltx_th ltx_th_row ltx_border_l ltx_border_r" id="S8.T2.1.4.2.1">
<span class="ltx_inline-block ltx_align_top" id="S8.T2.1.4.2.1.1">
<span class="ltx_p" id="S8.T2.1.4.2.1.1.1" style="width:34.1pt;">Mel</span>
</span>
</th>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="S8.T2.1.4.2.2">
<span class="ltx_inline-block ltx_align_top" id="S8.T2.1.4.2.2.1">
<span class="ltx_p" id="S8.T2.1.4.2.2.1.1" style="width:38.4pt;">43.29 ms</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="S8.T2.1.4.2.3">
<span class="ltx_inline-block ltx_align_top" id="S8.T2.1.4.2.3.1">
<span class="ltx_p" id="S8.T2.1.4.2.3.1.1" style="width:38.4pt;">51.26 ms</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="S8.T2.1.4.2.4">
<span class="ltx_inline-block ltx_align_top" id="S8.T2.1.4.2.4.1">
<span class="ltx_p" id="S8.T2.1.4.2.4.1.1" style="width:38.4pt;">80.58 ms</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="S8.T2.1.4.2.5">
<span class="ltx_inline-block ltx_align_top" id="S8.T2.1.4.2.5.1">
<span class="ltx_p" id="S8.T2.1.4.2.5.1.1" style="width:38.4pt;">80.88 ms</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S8.T2.1.5.3">
<th class="ltx_td ltx_align_justify ltx_align_top ltx_th ltx_th_row ltx_border_l ltx_border_r" id="S8.T2.1.5.3.1">
<span class="ltx_inline-block ltx_align_top" id="S8.T2.1.5.3.1.1">
<span class="ltx_p" id="S8.T2.1.5.3.1.1.1" style="width:34.1pt;">Sample</span>
</span>
</th>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="S8.T2.1.5.3.2">
<span class="ltx_inline-block ltx_align_top" id="S8.T2.1.5.3.2.1">
<span class="ltx_p" id="S8.T2.1.5.3.2.1.1" style="width:38.4pt;">2.03 ms/run</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="S8.T2.1.5.3.3">
<span class="ltx_inline-block ltx_align_top" id="S8.T2.1.5.3.3.1">
<span class="ltx_p" id="S8.T2.1.5.3.3.1.1" style="width:38.4pt;">1.47 ms/run</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="S8.T2.1.5.3.4">
<span class="ltx_inline-block ltx_align_top" id="S8.T2.1.5.3.4.1">
<span class="ltx_p" id="S8.T2.1.5.3.4.1.1" style="width:38.4pt;">1.84 ms/run</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="S8.T2.1.5.3.5">
<span class="ltx_inline-block ltx_align_top" id="S8.T2.1.5.3.5.1">
<span class="ltx_p" id="S8.T2.1.5.3.5.1.1" style="width:38.4pt;">1.87 ms/run</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S8.T2.1.6.4">
<th class="ltx_td ltx_align_justify ltx_align_top ltx_th ltx_th_row ltx_border_l ltx_border_r" id="S8.T2.1.6.4.1">
<span class="ltx_inline-block ltx_align_top" id="S8.T2.1.6.4.1.1">
<span class="ltx_p" id="S8.T2.1.6.4.1.1.1" style="width:34.1pt;">Encode</span>
</span>
</th>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="S8.T2.1.6.4.2">
<span class="ltx_inline-block ltx_align_top" id="S8.T2.1.6.4.2.1">
<span class="ltx_p" id="S8.T2.1.6.4.2.1.1" style="width:38.4pt;">4604.79 ms/run</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="S8.T2.1.6.4.3">
<span class="ltx_inline-block ltx_align_top" id="S8.T2.1.6.4.3.1">
<span class="ltx_p" id="S8.T2.1.6.4.3.1.1" style="width:38.4pt;">5934.99 ms/run</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="S8.T2.1.6.4.4">
<span class="ltx_inline-block ltx_align_top" id="S8.T2.1.6.4.4.1">
<span class="ltx_p" id="S8.T2.1.6.4.4.1.1" style="width:38.4pt;">6468.15 ms/run</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="S8.T2.1.6.4.5">
<span class="ltx_inline-block ltx_align_top" id="S8.T2.1.6.4.5.1">
<span class="ltx_p" id="S8.T2.1.6.4.5.1.1" style="width:38.4pt;">8612.49 ms/run</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S8.T2.1.7.5">
<th class="ltx_td ltx_align_justify ltx_align_top ltx_th ltx_th_row ltx_border_l ltx_border_r" id="S8.T2.1.7.5.1">
<span class="ltx_inline-block ltx_align_top" id="S8.T2.1.7.5.1.1">
<span class="ltx_p" id="S8.T2.1.7.5.1.1.1" style="width:34.1pt;">Decode</span>
</span>
</th>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="S8.T2.1.7.5.2">
<span class="ltx_inline-block ltx_align_top" id="S8.T2.1.7.5.2.1">
<span class="ltx_p" id="S8.T2.1.7.5.2.1.1" style="width:38.4pt;">226.40 ms/run</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="S8.T2.1.7.5.3">
<span class="ltx_inline-block ltx_align_top" id="S8.T2.1.7.5.3.1">
<span class="ltx_p" id="S8.T2.1.7.5.3.1.1" style="width:38.4pt;">9.75 ms/run</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="S8.T2.1.7.5.4">
<span class="ltx_inline-block ltx_align_top" id="S8.T2.1.7.5.4.1">
<span class="ltx_p" id="S8.T2.1.7.5.4.1.1" style="width:38.4pt;">12.56 ms/run</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="S8.T2.1.7.5.5">
<span class="ltx_inline-block ltx_align_top" id="S8.T2.1.7.5.5.1">
<span class="ltx_p" id="S8.T2.1.7.5.5.1.1" style="width:38.4pt;">11.16 ms/run</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S8.T2.1.8.6">
<th class="ltx_td ltx_align_justify ltx_align_top ltx_th ltx_th_row ltx_border_l ltx_border_r" id="S8.T2.1.8.6.1">
<span class="ltx_inline-block ltx_align_top" id="S8.T2.1.8.6.1.1">
<span class="ltx_p" id="S8.T2.1.8.6.1.1.1" style="width:34.1pt;">Batchd</span>
</span>
</th>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="S8.T2.1.8.6.2">
<span class="ltx_inline-block ltx_align_top" id="S8.T2.1.8.6.2.1">
<span class="ltx_p" id="S8.T2.1.8.6.2.1.1" style="width:38.4pt;">9.94 ms/run</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="S8.T2.1.8.6.3">
<span class="ltx_inline-block ltx_align_top" id="S8.T2.1.8.6.3.1">
<span class="ltx_p" id="S8.T2.1.8.6.3.1.1" style="width:38.4pt;">7.76 ms/run</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="S8.T2.1.8.6.4">
<span class="ltx_inline-block ltx_align_top" id="S8.T2.1.8.6.4.1">
<span class="ltx_p" id="S8.T2.1.8.6.4.1.1" style="width:38.4pt;">7.94 ms/run</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="S8.T2.1.8.6.5">
<span class="ltx_inline-block ltx_align_top" id="S8.T2.1.8.6.5.1">
<span class="ltx_p" id="S8.T2.1.8.6.5.1.1" style="width:38.4pt;">9.10 ms/run</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S8.T2.1.9.7">
<th class="ltx_td ltx_align_justify ltx_align_top ltx_th ltx_th_row ltx_border_l ltx_border_r" id="S8.T2.1.9.7.1">
<span class="ltx_inline-block ltx_align_top" id="S8.T2.1.9.7.1.1">
<span class="ltx_p" id="S8.T2.1.9.7.1.1.1" style="width:34.1pt;">Prompt</span>
</span>
</th>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="S8.T2.1.9.7.2">
<span class="ltx_inline-block ltx_align_top" id="S8.T2.1.9.7.2.1">
<span class="ltx_p" id="S8.T2.1.9.7.2.1.1" style="width:38.4pt;">0.00 ms/run</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="S8.T2.1.9.7.3">
<span class="ltx_inline-block ltx_align_top" id="S8.T2.1.9.7.3.1">
<span class="ltx_p" id="S8.T2.1.9.7.3.1.1" style="width:38.4pt;">0.00 ms/run</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="S8.T2.1.9.7.4">
<span class="ltx_inline-block ltx_align_top" id="S8.T2.1.9.7.4.1">
<span class="ltx_p" id="S8.T2.1.9.7.4.1.1" style="width:38.4pt;">0.00 ms/run</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="S8.T2.1.9.7.5">
<span class="ltx_inline-block ltx_align_top" id="S8.T2.1.9.7.5.1">
<span class="ltx_p" id="S8.T2.1.9.7.5.1.1" style="width:38.4pt;">0.00 ms/run</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S8.T2.1.10.8">
<th class="ltx_td ltx_align_justify ltx_align_top ltx_th ltx_th_row ltx_border_b ltx_border_l ltx_border_r" id="S8.T2.1.10.8.1">
<span class="ltx_inline-block ltx_align_top" id="S8.T2.1.10.8.1.1">
<span class="ltx_p" id="S8.T2.1.10.8.1.1.1" style="width:34.1pt;">Total</span>
</span>
</th>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_b ltx_border_r" id="S8.T2.1.10.8.2">
<span class="ltx_inline-block ltx_align_top" id="S8.T2.1.10.8.2.1">
<span class="ltx_p" id="S8.T2.1.10.8.2.1.1" style="width:38.4pt;">6786.58 ms</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_b ltx_border_r" id="S8.T2.1.10.8.3">
<span class="ltx_inline-block ltx_align_top" id="S8.T2.1.10.8.3.1">
<span class="ltx_p" id="S8.T2.1.10.8.3.1.1" style="width:38.4pt;">7414.24 ms</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_b ltx_border_r" id="S8.T2.1.10.8.4">
<span class="ltx_inline-block ltx_align_top" id="S8.T2.1.10.8.4.1">
<span class="ltx_p" id="S8.T2.1.10.8.4.1.1" style="width:38.4pt;">8033.38 ms</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_b ltx_border_r" id="S8.T2.1.10.8.5">
<span class="ltx_inline-block ltx_align_top" id="S8.T2.1.10.8.5.1">
<span class="ltx_p" id="S8.T2.1.10.8.5.1.1" style="width:38.4pt;">10380.28 ms</span>
</span>
</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a comparison of computation times for the baseline Whisper model and its quantized versions, broken down by hardware (CPU vs. GPU) and processing stage (load, Mel, sample, encode, decode, batch, prompt).  It shows the impact of quantization on different parts of the Whisper processing pipeline.
> <details>
> <summary>read the caption</summary>
> TABLE II: Whisper Baseline vs. Quantized Compute Times based on Hardware
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S9.T3.1.1">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S9.T3.1.1.1.1">
<td class="ltx_td ltx_align_left ltx_border_l ltx_border_r ltx_border_t" id="S9.T3.1.1.1.1.1"><span class="ltx_text ltx_font_bold" id="S9.T3.1.1.1.1.1.1">Metric</span></td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S9.T3.1.1.1.1.2"><span class="ltx_text ltx_font_bold" id="S9.T3.1.1.1.1.2.1">Whisper CPP Base Model</span></td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S9.T3.1.1.1.1.3"><span class="ltx_text ltx_font_bold" id="S9.T3.1.1.1.1.3.1">INT5</span></td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S9.T3.1.1.1.1.4"><span class="ltx_text ltx_font_bold" id="S9.T3.1.1.1.1.4.1">INT4</span></td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S9.T3.1.1.1.1.5"><span class="ltx_text ltx_font_bold" id="S9.T3.1.1.1.1.5.1">INT8</span></td>
</tr>
<tr class="ltx_tr" id="S9.T3.1.1.2.2">
<td class="ltx_td ltx_align_left ltx_border_l ltx_border_r ltx_border_t" id="S9.T3.1.1.2.2.1">Word Error Rate</td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S9.T3.1.1.2.2.2">0.0199</td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S9.T3.1.1.2.2.3">0.0199</td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S9.T3.1.1.2.2.4">0.0159</td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S9.T3.1.1.2.2.5">0.0199</td>
</tr>
<tr class="ltx_tr" id="S9.T3.1.1.3.3">
<td class="ltx_td ltx_align_left ltx_border_l ltx_border_r ltx_border_t" id="S9.T3.1.1.3.3.1">Accuracy</td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S9.T3.1.1.3.3.2">98.0%</td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S9.T3.1.1.3.3.3">98.0%</td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S9.T3.1.1.3.3.4">98.4%</td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S9.T3.1.1.3.3.5">98.0%</td>
</tr>
<tr class="ltx_tr" id="S9.T3.1.1.4.4">
<td class="ltx_td ltx_align_left ltx_border_l ltx_border_r ltx_border_t" id="S9.T3.1.1.4.4.1">Model Size</td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S9.T3.1.1.4.4.2">141.11MB</td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S9.T3.1.1.4.4.3">52.75MB</td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S9.T3.1.1.4.4.4">44.33MB</td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S9.T3.1.1.4.4.5">77.99MB</td>
</tr>
<tr class="ltx_tr" id="S9.T3.1.1.5.5">
<td class="ltx_td ltx_align_left ltx_border_b ltx_border_l ltx_border_r ltx_border_t" id="S9.T3.1.1.5.5.1">Avg Latency</td>
<td class="ltx_td ltx_align_left ltx_border_b ltx_border_r ltx_border_t" id="S9.T3.1.1.5.5.2">10.64s</td>
<td class="ltx_td ltx_align_left ltx_border_b ltx_border_r ltx_border_t" id="S9.T3.1.1.5.5.3">11.11s</td>
<td class="ltx_td ltx_align_left ltx_border_b ltx_border_r ltx_border_t" id="S9.T3.1.1.5.5.4">10.55s</td>
<td class="ltx_td ltx_align_left ltx_border_b ltx_border_r ltx_border_t" id="S9.T3.1.1.5.5.5">9.02s</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a comparison of Word Error Rate (WER), model size, and average latency for different quantization methods applied to the Whisper speech recognition model.  It shows how using INT4, INT5, and INT8 quantization affects the model's performance and resource requirements.  The baseline, unquantized model's results are also included for comparison.
> <details>
> <summary>read the caption</summary>
> TABLE III: WER, Model Size, and Latency based on Quantization Method
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2503.09905/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.09905/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.09905/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.09905/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.09905/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.09905/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}