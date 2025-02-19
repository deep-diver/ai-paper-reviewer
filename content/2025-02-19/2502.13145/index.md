---
title: "Multimodal Mamba: Decoder-only Multimodal State Space Model via Quadratic to Linear Distillation"
summary: "mmMamba: a novel framework creates linear-complexity multimodal models via distillation, drastically improving efficiency without sacrificing performance."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Multimodal Learning", "Vision-Language Models", "🏢 Hong Kong University of Science and Technology",]
showSummary: true
date: 2025-02-18
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2502.13145 {{< /keyword >}}
{{< keyword icon="writer" >}} Bencheng Liao et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-02-19 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2502.13145" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2502.13145" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2502.13145/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Current multimodal large language models (MLLMs) suffer from high computational costs due to their quadratic complexity and the need for separate vision encoders. This limits their deployment and scalability.  **The high cost is due to the quadratic complexity of the Transformer architecture used in most current models.**



This paper introduces mmMamba, a framework that directly converts trained decoder-only MLLMs into linear-complexity models through a three-stage distillation process.  **This method leverages the similarity between the Transformer attention mechanism and the Mamba-2 state space model**, significantly reducing the computational demands.  **mmMamba achieves competitive performance against existing models**, offering both a purely linear and a hybrid architecture that balances efficiency and performance. The results demonstrate significant speedup and memory savings, paving the way for more efficient and scalable multimodal AI systems.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} mmMamba achieves competitive performance with existing linear and quadratic-complexity VLMs while using fewer parameters. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} mmMamba-linear shows a 20.6x speedup and 75.8% GPU memory reduction compared to HoVLE at 103K tokens. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} The framework supports both purely linear and hybrid architectures, offering flexibility in balancing efficiency and performance. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper is important because it addresses the crucial limitations of current multimodal large language models (MLLMs): quadratic complexity and reliance on separate vision encoders. By introducing mmMamba, a novel framework for developing linear-complexity multimodal state space models, it significantly improves computational efficiency without sacrificing performance. This opens new avenues for deploying MLLMs on resource-constrained devices and for developing more scalable and efficient multimodal AI systems.  **The proposed distillation-based approach is also highly significant**, as it circumvents the need for pre-trained linear-complexity LLMs, making the development of such models more accessible.

------
#### Visual Insights



![](https://arxiv.org/html/2502.13145/x2.png)

> 🔼 Figure 1 provides a comprehensive comparison of the proposed multimodal Mamba model. Subfigure (a) illustrates the architecture of mmMamba, highlighting its linear-complexity and hybrid decoder-only VLM design achieved through knowledge distillation from Transformer to Mamba-2. Subfigure (b) presents a performance comparison showing that mmMamba-linear achieves competitive results against existing models, while mmMamba-hybrid outperforms them across various benchmarks. Subfigures (c) and (d) compare the speed and memory usage of mmMamba with the teacher model HoVLE on an NVIDIA 4090 GPU. mmMamba-linear exhibits significantly lower latency and memory consumption than HoVLE, while mmMamba-hybrid scales more efficiently with increasing sequence length.  Specifically, at 103K tokens, mmMamba-linear achieves a 20.6x speedup and 75.8% memory saving, whereas mmMamba-hybrid shows a 13.5x speedup and 60.2% memory saving compared to HoVLE.
> <details>
> <summary>read the caption</summary>
> Figure 1:  Comprehensive comparison of mmMamba. (a) Our mmMamba can build linear-complexity and hybrid decoder-only VLM by distilling the knowledge in Transformer to Mamba-2. (b) By distilling from the quadratic-complexity decoder-only VLM HoVLE, our mmMamba-linear achieves competitive performance against existing linear and quadratic-complexity VLMs with fewer parameters (e.g., 2×\times× fewer than EVE-7B), while mmMamba-hybrid surpasses them across all benchmarks and approaches the teacher model HoVLE’s performance. (c)-(d) We compare the speed and memory of mmMamba-linear and mmMamba-hybrid with the teacher model HoVLE on the same single NVIDIA 4090 GPU. mmMamba-linear maintains consistently low latency and memory usage, while mmMamba-hybrid’s resource consumption scales significantly better than HoVLE. At 103K tokens, mmMamba-linear demonstrates 20.6×\times× speedup compared to HoVLE and saves 75.8% GPU memory, while mmMamba-hybrid achieves 13.5×\times× speedup and saves 60.2% GPU memory.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S4.T1.3.1">
<tr class="ltx_tr" id="S4.T1.3.1.1">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_tt" id="S4.T1.3.1.1.1" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T1.3.1.1.1.1" style="font-size:90%;">Method</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt" id="S4.T1.3.1.1.2" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T1.3.1.1.2.1" style="font-size:90%;">Recipe</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt" id="S4.T1.3.1.1.3" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T1.3.1.1.3.1" style="font-size:90%;">Complexity</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt" id="S4.T1.3.1.1.4" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T1.3.1.1.4.1" style="font-size:90%;"># P.</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_right ltx_border_r ltx_border_tt" id="S4.T1.3.1.1.5" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T1.3.1.1.5.1" style="font-size:90%;"># T.P.</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt" id="S4.T1.3.1.1.6" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T1.3.1.1.6.1" style="font-size:90%;">MME</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt" id="S4.T1.3.1.1.7" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T1.3.1.1.7.1" style="font-size:90%;">MMB</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt" id="S4.T1.3.1.1.8" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T1.3.1.1.8.1" style="font-size:90%;">POPE</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_tt" id="S4.T1.3.1.1.9" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T1.3.1.1.9.1" style="font-size:90%;">SEED</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt" id="S4.T1.3.1.1.10" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T1.3.1.1.10.1" style="font-size:90%;">MMMU</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r ltx_border_tt" id="S4.T1.3.1.1.11" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T1.3.1.1.11.1" style="font-size:90%;">MM-Vet</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt" id="S4.T1.3.1.1.12" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T1.3.1.1.12.1" style="font-size:90%;">TQA</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt" id="S4.T1.3.1.1.13" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T1.3.1.1.13.1" style="font-size:90%;">SQA-I</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_tt" id="S4.T1.3.1.1.14" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T1.3.1.1.14.1" style="font-size:90%;">GQA</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.3.1.2" style="background-color:#EDEDED;">
<td class="ltx_td ltx_nopad_l ltx_align_left ltx_border_t" colspan="14" id="S4.T1.3.1.2.1" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text ltx_font_bold ltx_font_italic" id="S4.T1.3.1.2.1.1" style="font-size:90%;background-color:#EDEDED;">Encoder-based VLMs</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.3.1.3">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.3.1.3.1" style="padding-left:1.0pt;padding-right:1.0pt;">
<span class="ltx_text" id="S4.T1.3.1.3.1.1" style="font-size:90%;">OpenFlamingo </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="S4.T1.3.1.3.1.2.1" style="font-size:90%;">(</span>Awadalla et al.<span class="ltx_text" id="S4.T1.3.1.3.1.3.2.1.1" style="font-size:90%;">, </span><a class="ltx_ref" href="https://arxiv.org/html/2502.13145v1#bib.bib2" title="">2023</a><span class="ltx_text" id="S4.T1.3.1.3.1.4.3" style="font-size:90%;">)</span></cite>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.1.3.2" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T1.3.1.3.2.1" style="font-size:90%;">PT, SFT</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.1.3.3" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T1.3.1.3.3.1" style="font-size:90%;">Quadratic</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.1.3.4" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T1.3.1.3.4.1" style="font-size:90%;">9B</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_right ltx_border_r" id="S4.T1.3.1.3.5" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T1.3.1.3.5.1" style="font-size:90%;">96.6%</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.1.3.6" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T1.3.1.3.6.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.1.3.7" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T1.3.1.3.7.1" style="font-size:90%;">4.6</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.1.3.8" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T1.3.1.3.8.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.1.3.9" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T1.3.1.3.9.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.1.3.10" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T1.3.1.3.10.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S4.T1.3.1.3.11" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T1.3.1.3.11.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.1.3.12" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T1.3.1.3.12.1" style="font-size:90%;">33.6</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.1.3.13" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T1.3.1.3.13.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.1.3.14" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T1.3.1.3.14.1" style="font-size:90%;">-</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.3.1.4">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.3.1.4.1" style="padding-left:1.0pt;padding-right:1.0pt;">
<span class="ltx_text" id="S4.T1.3.1.4.1.1" style="font-size:90%;">MiniGPT-4 </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="S4.T1.3.1.4.1.2.1" style="font-size:90%;">(</span>Zhu et al.<span class="ltx_text" id="S4.T1.3.1.4.1.3.2.1.1" style="font-size:90%;">, </span><a class="ltx_ref" href="https://arxiv.org/html/2502.13145v1#bib.bib64" title="">2023</a><span class="ltx_text" id="S4.T1.3.1.4.1.4.3" style="font-size:90%;">)</span></cite>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.1.4.2" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T1.3.1.4.2.1" style="font-size:90%;">PT, SFT</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.1.4.3" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T1.3.1.4.3.1" style="font-size:90%;">Quadratic</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.1.4.4" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T1.3.1.4.4.1" style="font-size:90%;">13B</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_right ltx_border_r" id="S4.T1.3.1.4.5" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T1.3.1.4.5.1" style="font-size:90%;">94.8%</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.1.4.6" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T1.3.1.4.6.1" style="font-size:90%;">581.7</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.1.4.7" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T1.3.1.4.7.1" style="font-size:90%;">23.0</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.1.4.8" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T1.3.1.4.8.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.1.4.9" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T1.3.1.4.9.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.1.4.10" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T1.3.1.4.10.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S4.T1.3.1.4.11" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T1.3.1.4.11.1" style="font-size:90%;">22.1</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.1.4.12" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T1.3.1.4.12.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.1.4.13" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T1.3.1.4.13.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.1.4.14" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T1.3.1.4.14.1" style="font-size:90%;">32.2</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.3.1.5">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.3.1.5.1" style="padding-left:1.0pt;padding-right:1.0pt;">
<span class="ltx_text" id="S4.T1.3.1.5.1.1" style="font-size:90%;">Qwen-VL </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="S4.T1.3.1.5.1.2.1" style="font-size:90%;">(</span>Bai et al.<span class="ltx_text" id="S4.T1.3.1.5.1.3.2.1.1" style="font-size:90%;">, </span><a class="ltx_ref" href="https://arxiv.org/html/2502.13145v1#bib.bib4" title="">2023b</a><span class="ltx_text" id="S4.T1.3.1.5.1.4.3" style="font-size:90%;">)</span></cite>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.1.5.2" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T1.3.1.5.2.1" style="font-size:90%;">PT, SFT</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.1.5.3" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T1.3.1.5.3.1" style="font-size:90%;">Quadratic</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.1.5.4" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T1.3.1.5.4.1" style="font-size:90%;">7B</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_right ltx_border_r" id="S4.T1.3.1.5.5" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T1.3.1.5.5.1" style="font-size:90%;">100.0%</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.1.5.6" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T1.3.1.5.6.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.1.5.7" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T1.3.1.5.7.1" style="font-size:90%;">38.2</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.1.5.8" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T1.3.1.5.8.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.1.5.9" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T1.3.1.5.9.1" style="font-size:90%;">56.3</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.1.5.10" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T1.3.1.5.10.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S4.T1.3.1.5.11" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T1.3.1.5.11.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.1.5.12" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T1.3.1.5.12.1" style="font-size:90%;">63.8</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.1.5.13" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T1.3.1.5.13.1" style="font-size:90%;">67.1</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.1.5.14" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T1.3.1.5.14.1" style="font-size:90%;">59.3</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.3.1.6">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.3.1.6.1" style="padding-left:1.0pt;padding-right:1.0pt;">
<span class="ltx_text" id="S4.T1.3.1.6.1.1" style="font-size:90%;">LLaVA-Phi </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="S4.T1.3.1.6.1.2.1" style="font-size:90%;">(</span>Zhu et al.<span class="ltx_text" id="S4.T1.3.1.6.1.3.2.1.1" style="font-size:90%;">, </span><a class="ltx_ref" href="https://arxiv.org/html/2502.13145v1#bib.bib65" title="">2024</a><span class="ltx_text" id="S4.T1.3.1.6.1.4.3" style="font-size:90%;">)</span></cite>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.1.6.2" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T1.3.1.6.2.1" style="font-size:90%;">PT, SFT</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.1.6.3" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T1.3.1.6.3.1" style="font-size:90%;">Quadratic</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.1.6.4" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T1.3.1.6.4.1" style="font-size:90%;">3B</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_right ltx_border_r" id="S4.T1.3.1.6.5" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T1.3.1.6.5.1" style="font-size:90%;">90.0%</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.1.6.6" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T1.3.1.6.6.1" style="font-size:90%;">1335.1</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.1.6.7" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T1.3.1.6.7.1" style="font-size:90%;">59.8</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.1.6.8" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T1.3.1.6.8.1" style="font-size:90%;">85.0</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.1.6.9" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T1.3.1.6.9.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.1.6.10" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T1.3.1.6.10.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S4.T1.3.1.6.11" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T1.3.1.6.11.1" style="font-size:90%;">28.9</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.1.6.12" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T1.3.1.6.12.1" style="font-size:90%;">48.6</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.1.6.13" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T1.3.1.6.13.1" style="font-size:90%;">68.4</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.1.6.14" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T1.3.1.6.14.1" style="font-size:90%;">-</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.3.1.7">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.3.1.7.1" style="padding-left:1.0pt;padding-right:1.0pt;">
<span class="ltx_text" id="S4.T1.3.1.7.1.1" style="font-size:90%;">MobileVLM-3B </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="S4.T1.3.1.7.1.2.1" style="font-size:90%;">(</span>Chu et al.<span class="ltx_text" id="S4.T1.3.1.7.1.3.2.1.1" style="font-size:90%;">, </span><a class="ltx_ref" href="https://arxiv.org/html/2502.13145v1#bib.bib12" title="">2023</a><span class="ltx_text" id="S4.T1.3.1.7.1.4.3" style="font-size:90%;">)</span></cite>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.1.7.2" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T1.3.1.7.2.1" style="font-size:90%;">PT, SFT</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.1.7.3" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T1.3.1.7.3.1" style="font-size:90%;">Quadratic</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.1.7.4" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T1.3.1.7.4.1" style="font-size:90%;">3B</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_right ltx_border_r" id="S4.T1.3.1.7.5" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T1.3.1.7.5.1" style="font-size:90%;">90.0%</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.1.7.6" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T1.3.1.7.6.1" style="font-size:90%;">1288.9</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.1.7.7" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T1.3.1.7.7.1" style="font-size:90%;">59.6</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.1.7.8" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T1.3.1.7.8.1" style="font-size:90%;">84.9</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.1.7.9" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T1.3.1.7.9.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.1.7.10" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T1.3.1.7.10.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S4.T1.3.1.7.11" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T1.3.1.7.11.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.1.7.12" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T1.3.1.7.12.1" style="font-size:90%;">47.5</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.1.7.13" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T1.3.1.7.13.1" style="font-size:90%;">61.0</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.1.7.14" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T1.3.1.7.14.1" style="font-size:90%;">59.0</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.3.1.8">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.3.1.8.1" style="padding-left:1.0pt;padding-right:1.0pt;">
<span class="ltx_text" id="S4.T1.3.1.8.1.1" style="font-size:90%;">VisualRWKV </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="S4.T1.3.1.8.1.2.1" style="font-size:90%;">(</span>Hou et al.<span class="ltx_text" id="S4.T1.3.1.8.1.3.2.1.1" style="font-size:90%;">, </span><a class="ltx_ref" href="https://arxiv.org/html/2502.13145v1#bib.bib20" title="">2024</a><span class="ltx_text" id="S4.T1.3.1.8.1.4.3" style="font-size:90%;">)</span></cite>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.1.8.2" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T1.3.1.8.2.1" style="font-size:90%;">PT, SFT</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.1.8.3" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.3.1.8.3.1" style="font-size:90%;">Linear</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.1.8.4" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T1.3.1.8.4.1" style="font-size:90%;">3B</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_right ltx_border_r" id="S4.T1.3.1.8.5" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T1.3.1.8.5.1" style="font-size:90%;">90.0%</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.1.8.6" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T1.3.1.8.6.1" style="font-size:90%;">1369.2</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.1.8.7" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T1.3.1.8.7.1" style="font-size:90%;">59.5</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.1.8.8" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T1.3.1.8.8.1" style="font-size:90%;">83.1</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.1.8.9" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T1.3.1.8.9.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.1.8.10" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T1.3.1.8.10.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S4.T1.3.1.8.11" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T1.3.1.8.11.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.1.8.12" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T1.3.1.8.12.1" style="font-size:90%;">48.7</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.1.8.13" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T1.3.1.8.13.1" style="font-size:90%;">65.3</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.1.8.14" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T1.3.1.8.14.1" style="font-size:90%;">59.6</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.3.1.9">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.3.1.9.1" style="padding-left:1.0pt;padding-right:1.0pt;">
<span class="ltx_text" id="S4.T1.3.1.9.1.1" style="font-size:90%;">VL-Mamba </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="S4.T1.3.1.9.1.2.1" style="font-size:90%;">(</span>Qiao et al.<span class="ltx_text" id="S4.T1.3.1.9.1.3.2.1.1" style="font-size:90%;">, </span><a class="ltx_ref" href="https://arxiv.org/html/2502.13145v1#bib.bib41" title="">2024</a><span class="ltx_text" id="S4.T1.3.1.9.1.4.3" style="font-size:90%;">)</span></cite>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.1.9.2" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T1.3.1.9.2.1" style="font-size:90%;">PT, SFT</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.1.9.3" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.3.1.9.3.1" style="font-size:90%;">Linear</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.1.9.4" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T1.3.1.9.4.1" style="font-size:90%;">3B</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_right ltx_border_r" id="S4.T1.3.1.9.5" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T1.3.1.9.5.1" style="font-size:90%;">90.0%</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.1.9.6" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T1.3.1.9.6.1" style="font-size:90%;">1369.6</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.1.9.7" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T1.3.1.9.7.1" style="font-size:90%;">57.0</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.1.9.8" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T1.3.1.9.8.1" style="font-size:90%;">84.4</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.1.9.9" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T1.3.1.9.9.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.1.9.10" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T1.3.1.9.10.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S4.T1.3.1.9.11" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T1.3.1.9.11.1" style="font-size:90%;">32.6</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.1.9.12" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T1.3.1.9.12.1" style="font-size:90%;">48.9</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.1.9.13" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T1.3.1.9.13.1" style="font-size:90%;">65.4</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.1.9.14" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T1.3.1.9.14.1" style="font-size:90%;">56.2</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.3.1.10">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.3.1.10.1" style="padding-left:1.0pt;padding-right:1.0pt;">
<span class="ltx_text" id="S4.T1.3.1.10.1.1" style="font-size:90%;">Cobra </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="S4.T1.3.1.10.1.2.1" style="font-size:90%;">(</span>Zhao et al.<span class="ltx_text" id="S4.T1.3.1.10.1.3.2.1.1" style="font-size:90%;">, </span><a class="ltx_ref" href="https://arxiv.org/html/2502.13145v1#bib.bib63" title="">2024</a><span class="ltx_text" id="S4.T1.3.1.10.1.4.3" style="font-size:90%;">)</span></cite>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.1.10.2" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T1.3.1.10.2.1" style="font-size:90%;">PT, SFT</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.1.10.3" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.3.1.10.3.1" style="font-size:90%;">Linear</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.1.10.4" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T1.3.1.10.4.1" style="font-size:90%;">3.5B</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_right ltx_border_r" id="S4.T1.3.1.10.5" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T1.3.1.10.5.1" style="font-size:90%;">82.6%</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.1.10.6" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T1.3.1.10.6.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.1.10.7" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T1.3.1.10.7.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.1.10.8" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.3.1.10.8.1" style="font-size:90%;">88.4</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.1.10.9" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T1.3.1.10.9.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.1.10.10" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T1.3.1.10.10.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S4.T1.3.1.10.11" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T1.3.1.10.11.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.1.10.12" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T1.3.1.10.12.1" style="font-size:90%;">58.2</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.1.10.13" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T1.3.1.10.13.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.1.10.14" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.3.1.10.14.1" style="font-size:90%;">62.3</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.3.1.11" style="background-color:#EDEDED;">
<td class="ltx_td ltx_nopad_l ltx_align_left ltx_border_t" colspan="14" id="S4.T1.3.1.11.1" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text ltx_font_bold ltx_font_italic" id="S4.T1.3.1.11.1.1" style="font-size:90%;background-color:#EDEDED;">Decoder-only VLMs</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.3.1.12">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.3.1.12.1" style="padding-left:1.0pt;padding-right:1.0pt;">
<span class="ltx_text" id="S4.T1.3.1.12.1.1" style="font-size:90%;">Fuyu-8B (HD) </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="S4.T1.3.1.12.1.2.1" style="font-size:90%;">(</span>Bavishi et al.<span class="ltx_text" id="S4.T1.3.1.12.1.3.2.1.1" style="font-size:90%;">, </span><a class="ltx_ref" href="https://arxiv.org/html/2502.13145v1#bib.bib5" title="">2023</a><span class="ltx_text" id="S4.T1.3.1.12.1.4.3" style="font-size:90%;">)</span></cite>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.1.12.2" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T1.3.1.12.2.1" style="font-size:90%;">PT, SFT</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.1.12.3" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T1.3.1.12.3.1" style="font-size:90%;">Quadratic</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.1.12.4" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T1.3.1.12.4.1" style="font-size:90%;">8B</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_right ltx_border_r" id="S4.T1.3.1.12.5" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T1.3.1.12.5.1" style="font-size:90%;">100.0%</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.1.12.6" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T1.3.1.12.6.1" style="font-size:90%;">728.6</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.1.12.7" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T1.3.1.12.7.1" style="font-size:90%;">10.7</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.1.12.8" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T1.3.1.12.8.1" style="font-size:90%;">74.1</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.1.12.9" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T1.3.1.12.9.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.1.12.10" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T1.3.1.12.10.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S4.T1.3.1.12.11" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T1.3.1.12.11.1" style="font-size:90%;">21.4</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.1.12.12" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T1.3.1.12.12.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.1.12.13" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T1.3.1.12.13.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.1.12.14" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T1.3.1.12.14.1" style="font-size:90%;">-</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.3.1.13">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.3.1.13.1" style="padding-left:1.0pt;padding-right:1.0pt;">
<span class="ltx_text" id="S4.T1.3.1.13.1.1" style="font-size:90%;">SOLO </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="S4.T1.3.1.13.1.2.1" style="font-size:90%;">(</span>Chen et al.<span class="ltx_text" id="S4.T1.3.1.13.1.3.2.1.1" style="font-size:90%;">, </span><a class="ltx_ref" href="https://arxiv.org/html/2502.13145v1#bib.bib10" title="">2024a</a><span class="ltx_text" id="S4.T1.3.1.13.1.4.3" style="font-size:90%;">)</span></cite>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.1.13.2" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T1.3.1.13.2.1" style="font-size:90%;">PT, SFT</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.1.13.3" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T1.3.1.13.3.1" style="font-size:90%;">Quadratic</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.1.13.4" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T1.3.1.13.4.1" style="font-size:90%;">7B</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_right ltx_border_r" id="S4.T1.3.1.13.5" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T1.3.1.13.5.1" style="font-size:90%;">100.0%</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.1.13.6" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T1.3.1.13.6.1" style="font-size:90%;">1001.3</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.1.13.7" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T1.3.1.13.7.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.1.13.8" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T1.3.1.13.8.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.1.13.9" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T1.3.1.13.9.1" style="font-size:90%;">64.4</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.1.13.10" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T1.3.1.13.10.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S4.T1.3.1.13.11" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T1.3.1.13.11.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.1.13.12" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T1.3.1.13.12.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.1.13.13" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T1.3.1.13.13.1" style="font-size:90%;">73.3</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.1.13.14" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T1.3.1.13.14.1" style="font-size:90%;">-</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.3.1.14">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.3.1.14.1" style="padding-left:1.0pt;padding-right:1.0pt;">
<span class="ltx_text" id="S4.T1.3.1.14.1.1" style="font-size:90%;">Chameleon-7B </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="S4.T1.3.1.14.1.2.1" style="font-size:90%;">(</span>Team<span class="ltx_text" id="S4.T1.3.1.14.1.3.2.1.1" style="font-size:90%;">, </span><a class="ltx_ref" href="https://arxiv.org/html/2502.13145v1#bib.bib48" title="">2024</a><span class="ltx_text" id="S4.T1.3.1.14.1.4.3" style="font-size:90%;">)</span></cite>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.1.14.2" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T1.3.1.14.2.1" style="font-size:90%;">PT, SFT</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.1.14.3" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T1.3.1.14.3.1" style="font-size:90%;">Quadratic</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.1.14.4" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T1.3.1.14.4.1" style="font-size:90%;">7B</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_right ltx_border_r" id="S4.T1.3.1.14.5" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T1.3.1.14.5.1" style="font-size:90%;">100.0%</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.1.14.6" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T1.3.1.14.6.1" style="font-size:90%;">170</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.1.14.7" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T1.3.1.14.7.1" style="font-size:90%;">31.1</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.1.14.8" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T1.3.1.14.8.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.1.14.9" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T1.3.1.14.9.1" style="font-size:90%;">30.6</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.1.14.10" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T1.3.1.14.10.1" style="font-size:90%;">25.4</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S4.T1.3.1.14.11" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T1.3.1.14.11.1" style="font-size:90%;">8.3</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.1.14.12" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T1.3.1.14.12.1" style="font-size:90%;">4.8</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.1.14.13" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T1.3.1.14.13.1" style="font-size:90%;">47.2</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.1.14.14" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T1.3.1.14.14.1" style="font-size:90%;">-</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.3.1.15">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.3.1.15.1" style="padding-left:1.0pt;padding-right:1.0pt;">
<span class="ltx_text" id="S4.T1.3.1.15.1.1" style="font-size:90%;">EVE-7B </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="S4.T1.3.1.15.1.2.1" style="font-size:90%;">(</span>Diao et al.<span class="ltx_text" id="S4.T1.3.1.15.1.3.2.1.1" style="font-size:90%;">, </span><a class="ltx_ref" href="https://arxiv.org/html/2502.13145v1#bib.bib15" title="">2024</a><span class="ltx_text" id="S4.T1.3.1.15.1.4.3" style="font-size:90%;">)</span></cite>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.1.15.2" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T1.3.1.15.2.1" style="font-size:90%;">PT, SFT</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.1.15.3" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T1.3.1.15.3.1" style="font-size:90%;">Quadratic</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.1.15.4" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T1.3.1.15.4.1" style="font-size:90%;">7B</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_right ltx_border_r" id="S4.T1.3.1.15.5" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T1.3.1.15.5.1" style="font-size:90%;">100.0%</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.1.15.6" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T1.3.1.15.6.1" style="font-size:90%;">1217.3</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.1.15.7" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T1.3.1.15.7.1" style="font-size:90%;">49.5</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.1.15.8" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T1.3.1.15.8.1" style="font-size:90%;">83.6</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.1.15.9" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T1.3.1.15.9.1" style="font-size:90%;">61.3</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.1.15.10" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T1.3.1.15.10.1" style="font-size:90%;">32.3</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S4.T1.3.1.15.11" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T1.3.1.15.11.1" style="font-size:90%;">25.6</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.1.15.12" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T1.3.1.15.12.1" style="font-size:90%;">51.9</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.1.15.13" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T1.3.1.15.13.1" style="font-size:90%;">63.0</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.1.15.14" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T1.3.1.15.14.1" style="font-size:90%;">60.8</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.3.1.16">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.3.1.16.1" style="padding-left:1.0pt;padding-right:1.0pt;">
<span class="ltx_text" id="S4.T1.3.1.16.1.1" style="font-size:90%;">Emu3 </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="S4.T1.3.1.16.1.2.1" style="font-size:90%;">(</span>Wang et al.<span class="ltx_text" id="S4.T1.3.1.16.1.3.2.1.1" style="font-size:90%;">, </span><a class="ltx_ref" href="https://arxiv.org/html/2502.13145v1#bib.bib55" title="">2024b</a><span class="ltx_text" id="S4.T1.3.1.16.1.4.3" style="font-size:90%;">)</span></cite>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.1.16.2" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T1.3.1.16.2.1" style="font-size:90%;">PT, SFT</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.1.16.3" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T1.3.1.16.3.1" style="font-size:90%;">Quadratic</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.1.16.4" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T1.3.1.16.4.1" style="font-size:90%;">8B</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_right ltx_border_r" id="S4.T1.3.1.16.5" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T1.3.1.16.5.1" style="font-size:90%;">100.0%</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.1.16.6" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T1.3.1.16.6.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.1.16.7" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T1.3.1.16.7.1" style="font-size:90%;">58.5</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.1.16.8" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T1.3.1.16.8.1" style="font-size:90%;">85.2</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.1.16.9" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T1.3.1.16.9.1" style="font-size:90%;">68.2</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.1.16.10" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T1.3.1.16.10.1" style="font-size:90%;">31.6</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S4.T1.3.1.16.11" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T1.3.1.16.11.1" style="font-size:90%;">37.2</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.1.16.12" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T1.3.1.16.12.1" style="font-size:90%;">64.7</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.1.16.13" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T1.3.1.16.13.1" style="font-size:90%;">89.2</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.1.16.14" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T1.3.1.16.14.1" style="font-size:90%;">60.3</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.3.1.17">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.3.1.17.1" style="padding-left:1.0pt;padding-right:1.0pt;">
<span class="ltx_text" id="S4.T1.3.1.17.1.1" style="font-size:90%;">HoVLE </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="S4.T1.3.1.17.1.2.1" style="font-size:90%;">(</span>Tao et al.<span class="ltx_text" id="S4.T1.3.1.17.1.3.2.1.1" style="font-size:90%;">, </span><a class="ltx_ref" href="https://arxiv.org/html/2502.13145v1#bib.bib47" title="">2024</a><span class="ltx_text" id="S4.T1.3.1.17.1.4.3" style="font-size:90%;">)</span></cite>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.1.17.2" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T1.3.1.17.2.1" style="font-size:90%;">DT, PT, SFT</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.1.17.3" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T1.3.1.17.3.1" style="font-size:90%;">Quadratic</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.1.17.4" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.3.1.17.4.1" style="font-size:90%;">2.6B</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_right ltx_border_r" id="S4.T1.3.1.17.5" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T1.3.1.17.5.1" style="font-size:90%;">100.0%</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.1.17.6" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.3.1.17.6.1" style="font-size:90%;">1433.5</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.1.17.7" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.3.1.17.7.1" style="font-size:90%;">71.9</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.1.17.8" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T1.3.1.17.8.1" style="font-size:90%;">87.6</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.1.17.9" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.3.1.17.9.1" style="font-size:90%;">70.7</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.1.17.10" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.3.1.17.10.1" style="font-size:90%;">33.7</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S4.T1.3.1.17.11" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.3.1.17.11.1" style="font-size:90%;">44.3</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.1.17.12" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.3.1.17.12.1" style="font-size:90%;">66.0</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.1.17.13" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.3.1.17.13.1" style="font-size:90%;">94.8</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.1.17.14" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T1.3.1.17.14.1" style="font-size:90%;">60.9</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.3.1.18" style="background-color:#D9FFD9;">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S4.T1.3.1.18.1" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T1.3.1.18.1.1" style="font-size:90%;background-color:#D9FFD9;">mmMamba</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.1.18.2" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.3.1.18.2.1" style="font-size:90%;background-color:#D9FFD9;">DT</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.1.18.3" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.3.1.18.3.1" style="font-size:90%;background-color:#D9FFD9;">Linear</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.1.18.4" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T1.3.1.18.4.1" style="font-size:90%;background-color:#D9FFD9;">2.7B</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_right ltx_border_r" id="S4.T1.3.1.18.5" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T1.3.1.18.5.1" style="font-size:90%;background-color:#D9FFD9;">14.7%</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.1.18.6" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T1.3.1.18.6.1" style="font-size:90%;background-color:#D9FFD9;">1303.5</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.1.18.7" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T1.3.1.18.7.1" style="font-size:90%;background-color:#D9FFD9;">57.2</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.1.18.8" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T1.3.1.18.8.1" style="font-size:90%;background-color:#D9FFD9;">85.2</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.1.18.9" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T1.3.1.18.9.1" style="font-size:90%;background-color:#D9FFD9;">62.9</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.1.18.10" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T1.3.1.18.10.1" style="font-size:90%;background-color:#D9FFD9;">30.7</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S4.T1.3.1.18.11" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T1.3.1.18.11.1" style="font-size:90%;background-color:#D9FFD9;">31.1</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.1.18.12" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T1.3.1.18.12.1" style="font-size:90%;background-color:#D9FFD9;">47.7</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.1.18.13" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T1.3.1.18.13.1" style="font-size:90%;background-color:#D9FFD9;">79.2</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T1.3.1.18.14" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T1.3.1.18.14.1" style="font-size:90%;background-color:#D9FFD9;">57.4</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.3.1.19" style="background-color:#FFFFD9;">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_bb" id="S4.T1.3.1.19.1" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T1.3.1.19.1.1" style="font-size:90%;background-color:#FFFFD9;">mmMamba</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S4.T1.3.1.19.2" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.3.1.19.2.1" style="font-size:90%;background-color:#FFFFD9;">DT</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S4.T1.3.1.19.3" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T1.3.1.19.3.1" style="font-size:90%;background-color:#FFFFD9;">Hybrid</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S4.T1.3.1.19.4" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T1.3.1.19.4.1" style="font-size:90%;background-color:#FFFFD9;">2.7B</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_right ltx_border_bb ltx_border_r" id="S4.T1.3.1.19.5" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.3.1.19.5.1" style="font-size:90%;background-color:#FFFFD9;">11.2%</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S4.T1.3.1.19.6" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T1.3.1.19.6.1" style="font-size:90%;background-color:#FFFFD9;">1371.1</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S4.T1.3.1.19.7" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T1.3.1.19.7.1" style="font-size:90%;background-color:#FFFFD9;">63.7</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S4.T1.3.1.19.8" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T1.3.1.19.8.1" style="font-size:90%;background-color:#FFFFD9;">86.7</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S4.T1.3.1.19.9" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T1.3.1.19.9.1" style="font-size:90%;background-color:#FFFFD9;">66.3</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S4.T1.3.1.19.10" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T1.3.1.19.10.1" style="font-size:90%;background-color:#FFFFD9;">32.3</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb ltx_border_r" id="S4.T1.3.1.19.11" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T1.3.1.19.11.1" style="font-size:90%;background-color:#FFFFD9;">36.9</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S4.T1.3.1.19.12" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T1.3.1.19.12.1" style="font-size:90%;background-color:#FFFFD9;">55.1</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S4.T1.3.1.19.13" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T1.3.1.19.13.1" style="font-size:90%;background-color:#FFFFD9;">86.9</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S4.T1.3.1.19.14" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T1.3.1.19.14.1" style="font-size:90%;background-color:#FFFFD9;">59.3</span></td>
</tr>
</table>{{< /table-caption >}}

> 🔼 This table compares various Vision-Language Models (VLMs) on their performance across several benchmark datasets.  It contrasts different model architectures (encoder-based vs. decoder-only) and training methods (pre-training, supervised fine-tuning, and distillation). Key metrics include the overall performance on each benchmark, model size (# of parameters), the proportion of trainable parameters, and the computational complexity (quadratic or linear) in relation to the input sequence length. The best performing model for each benchmark is highlighted in bold, while the second-best is underlined. This allows for a direct comparison of the trade-offs between performance, model size, and computational efficiency among different VLMs.
> <details>
> <summary>read the caption</summary>
> Table 1: Comparison with existing VLMs on general VLM benchmarks. “Recipe” denotes the adopted training recipe. “PT”, “SFT”, and “DT” denote the pre-training, supervised fine-tuning, and distillation training, respectively. “Complexity” denotes the model computation complexity with respect to the number of tokens. “# P.” denotes the number of total parameters. “# T.P.” denotes the percentage of trainable parameters (trainable paramterstotal parameterstrainable paramterstotal parameters\frac{\text{trainable paramters}}{\text{total parameters}}divide start_ARG trainable paramters end_ARG start_ARG total parameters end_ARG). The best performance is highlighted in bold and the second-best result is underlined.
> </details>





### In-depth insights


#### Quadratic to Linear
The core concept of "Quadratic to Linear" in the context of the research paper likely revolves around **optimizing the computational complexity** of large multimodal language models (MLLMs).  Traditional transformer-based models exhibit quadratic complexity, making them computationally expensive, especially for long sequences.  This section likely details the techniques used to **distill knowledge** from these quadratic models into more efficient linear models. This involves transferring the core capabilities and understanding from a computationally expensive architecture to a more resource-friendly one, significantly reducing the computational burden without sacrificing performance too drastically.  The process probably involves **architectural modifications**, potentially introducing linear-complexity mechanisms like the Mamba-2 state space model, and sophisticated **distillation strategies** to effectively transfer knowledge between the two architectures.  The result is a MLLM that maintains performance while boasting a significant advantage in terms of speed and memory efficiency, making it more practical for real-world applications.

#### Decoder-only VLMs
Decoder-only Vision Language Models (VLMs) represent a significant shift in multimodal architecture design.  **Unlike encoder-decoder models, which process visual and textual information separately before combining them, decoder-only VLMs process both modalities within a unified decoder network.** This approach simplifies the architecture, potentially reducing computational complexity and improving efficiency.  However, **decoder-only VLMs often present challenges in effectively integrating heterogeneous data types**.  Successfully training and deploying effective decoder-only VLMs requires careful consideration of pre-training strategies, the ability to handle long sequences of visual and textual information, and the inherent trade-offs between model size and performance.  While some approaches address these challenges through innovative training techniques or architectural modifications, there remains a need for improved methods to enhance their performance, efficiency, and generalizability to various vision-language tasks.  **The advantages of a unified approach, especially concerning inference speed and reduced resource requirements, make decoder-only VLMs an active area of research with promising potential for real-world applications.**

#### Progressive Distillation
Progressive distillation, as described in the context of the research paper, is a **multi-stage training strategy** designed to effectively transfer knowledge from a complex, quadratic-complexity model (like a Transformer-based VLM) to a simpler, linear-complexity model (like a Mamba-2 based VLM).  This approach is crucial because it tackles the challenge of directly converting a pre-trained, high-performing model into a more efficient architecture without significant performance degradation. The methodology appears to involve three main stages: **initializing the simpler model with parameters from the complex model**, followed by **layer-wise training and alignment**, and finally, **end-to-end fine-tuning to optimize overall performance**. This stepwise refinement process mitigates the difficulties associated with a direct transfer, allowing for a gradual adaptation and stabilization of the linear model.  The **use of different loss functions** at each stage, such as MSE and KL-divergence, also suggests a tailored approach to address varying aspects of model behavior. This progressive method is key to obtaining a linear-complexity model that maintains the multimodal capabilities of its teacher model. By incrementally transferring knowledge, the method overcomes the challenges of simply initializing the target model with the source's parameters. The **three-stage approach**, therefore, ensures the success of the distillation while addressing the complexities of adapting between different model architectures.

#### Efficiency Analysis
The efficiency analysis section of the paper focuses on evaluating the computational performance gains achieved by the proposed mmMamba model.  **The key aspect is the comparison of inference speed and memory usage between mmMamba and existing models, particularly HoVLE**, a quadratic-complexity model. Experiments demonstrate that **mmMamba significantly outperforms HoVLE in terms of speed and memory efficiency**, especially when processing longer sequences, highlighting its suitability for real-world applications demanding high throughput and low latency. The analysis also explores architectural variations of mmMamba, comparing a purely linear version (mmMamba-linear) with a hybrid version (mmMamba-hybrid).  **The results show a trade-off between performance and resource consumption**, where the hybrid model offers a balance between speed and accuracy.  **The substantial speedup and memory savings achieved by mmMamba underscore its potential for deploying large-scale multimodal language models efficiently on resource-constrained devices.** This is a significant contribution, as it tackles the major bottleneck of high computational costs typically associated with large, transformer-based models.

#### Hybrid Architecture
The research explores a hybrid architecture combining the strengths of Transformer and Mamba-2 layers.  **This approach offers a flexible trade-off between computational efficiency and model capability.** By strategically interleaving Transformer layers (which excel in complex feature representation) with Mamba-2 layers (known for linear computational complexity), the model adapts to diverse deployment needs.  **The number of interleaved Transformer layers can be adjusted to fine-tune this balance, making it highly adaptable to resource constraints.**  Experiments demonstrate that a hybrid model incorporating both architecture types significantly improves performance over a purely linear model while maintaining computational benefits compared to full Transformer models, showing the hybrid model's effectiveness in balancing performance and efficiency.


### More visual insights




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S4.T2.1.1">
<tr class="ltx_tr" id="S4.T2.1.1.1">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r ltx_border_tt" id="S4.T2.1.1.1.1" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T2.1.1.1.1.1" style="font-size:90%;">Model</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt" id="S4.T2.1.1.1.2" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T2.1.1.1.2.1" style="font-size:90%;">LLM Backbone</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt" id="S4.T2.1.1.1.3" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T2.1.1.1.3.1" style="font-size:90%;">Vision Encoder</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r ltx_border_tt" id="S4.T2.1.1.1.4" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T2.1.1.1.4.1" style="font-size:90%;">Total Params</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt" id="S4.T2.1.1.1.5" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T2.1.1.1.5.1" style="font-size:90%;">Visual Tokens</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r ltx_border_tt" id="S4.T2.1.1.1.6" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T2.1.1.1.6.1" style="font-size:90%;">Output Tokens</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt" id="S4.T2.1.1.1.7" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T2.1.1.1.7.1" style="font-size:90%;">Speed (tokens/s)</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt" id="S4.T2.1.1.1.8" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T2.1.1.1.8.1" style="font-size:90%;">Total (s)</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.1.2">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.1.1.2.1" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T2.1.1.2.1.1" style="font-size:90%;">LLaVA-Phi</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T2.1.1.2.2" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T2.1.1.2.2.1" style="font-size:90%;">Phi2-2.7B</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T2.1.1.2.3" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T2.1.1.2.3.1" style="font-size:90%;">CLIP ViT-L/14</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.1.1.2.4" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T2.1.1.2.4.1" style="font-size:90%;">3.1B</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T2.1.1.2.5" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T2.1.1.2.5.1" style="font-size:90%;">576</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.1.1.2.6" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T2.1.1.2.6.1" style="font-size:90%;">256</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T2.1.1.2.7" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T2.1.1.2.7.1" style="font-size:90%;">26.92</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T2.1.1.2.8" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T2.1.1.2.8.1" style="font-size:90%;">9.51</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.1.3">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S4.T2.1.1.3.1" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T2.1.1.3.1.1" style="font-size:90%;">MobileVLM-3B</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.1.3.2" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T2.1.1.3.2.1" style="font-size:90%;">LLaMA-2.7B</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.1.3.3" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T2.1.1.3.3.1" style="font-size:90%;">CLIP ViT-L/14</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S4.T2.1.1.3.4" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T2.1.1.3.4.1" style="font-size:90%;">3.1B</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.1.3.5" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T2.1.1.3.5.1" style="font-size:90%;">144</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S4.T2.1.1.3.6" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T2.1.1.3.6.1" style="font-size:90%;">256</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.1.3.7" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T2.1.1.3.7.1" style="font-size:90%;">35.26</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.1.3.8" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T2.1.1.3.8.1" style="font-size:90%;">7.26</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.1.4">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S4.T2.1.1.4.1" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T2.1.1.4.1.1" style="font-size:90%;">HoVLE</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" colspan="2" id="S4.T2.1.1.4.2" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T2.1.1.4.2.1" style="font-size:90%;">32-layer Transformer</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S4.T2.1.1.4.3" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.4.3.1" style="font-size:90%;">2.6B</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.1.4.4" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T2.1.1.4.4.1" style="font-size:90%;">768</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S4.T2.1.1.4.5" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T2.1.1.4.5.1" style="font-size:90%;">256</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.1.4.6" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T2.1.1.4.6.1" style="font-size:90%;">33.03</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.1.4.7" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T2.1.1.4.7.1" style="font-size:90%;">7.75</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.1.5">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.1.1.5.1" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T2.1.1.5.1.1" style="font-size:90%;">Cobra-3.5B</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T2.1.1.5.2" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T2.1.1.5.2.1" style="font-size:90%;">Mamba-2.8B</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T2.1.1.5.3" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T2.1.1.5.3.1" style="font-size:90%;">DINOv2 + SigLIP ViT-SO</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.1.1.5.4" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T2.1.1.5.4.1" style="font-size:90%;">3.5B</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T2.1.1.5.5" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T2.1.1.5.5.1" style="font-size:90%;">729</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.1.1.5.6" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T2.1.1.5.6.1" style="font-size:90%;">256</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T2.1.1.5.7" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T2.1.1.5.7.1" style="font-size:90%;">99.22</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T2.1.1.5.8" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T2.1.1.5.8.1" style="font-size:90%;">2.58</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.1.6">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S4.T2.1.1.6.1" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T2.1.1.6.1.1" style="font-size:90%;">VisualRWKV-3B</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.1.6.2" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T2.1.1.6.2.1" style="font-size:90%;">RWKV6-3B</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.1.6.3" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T2.1.1.6.3.1" style="font-size:90%;">CLIP ViT-L/14</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S4.T2.1.1.6.4" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T2.1.1.6.4.1" style="font-size:90%;">3.4B</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.1.6.5" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T2.1.1.6.5.1" style="font-size:90%;">577</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S4.T2.1.1.6.6" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T2.1.1.6.6.1" style="font-size:90%;">256</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.1.6.7" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T2.1.1.6.7.1" style="font-size:90%;">41.34</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.1.6.8" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T2.1.1.6.8.1" style="font-size:90%;">6.19</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.1.7" style="background-color:#D9FFD9;">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S4.T2.1.1.7.1" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T2.1.1.7.1.1" style="font-size:90%;background-color:#D9FFD9;">mmMamba-linear</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" colspan="2" id="S4.T2.1.1.7.2" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T2.1.1.7.2.1" style="font-size:90%;background-color:#D9FFD9;">32-layer Mamba2</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S4.T2.1.1.7.3" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.1.1.7.3.1" style="font-size:90%;background-color:#D9FFD9;">2.7B</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.1.7.4" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T2.1.1.7.4.1" style="font-size:90%;background-color:#D9FFD9;">768</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S4.T2.1.1.7.5" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T2.1.1.7.5.1" style="font-size:90%;background-color:#D9FFD9;">256</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.1.7.6" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.1.1.7.6.1" style="font-size:90%;background-color:#D9FFD9;">132.43</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T2.1.1.7.7" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.1.1.7.7.1" style="font-size:90%;background-color:#D9FFD9;">1.93</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.1.8" style="background-color:#FFFFD9;">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb ltx_border_r" id="S4.T2.1.1.8.1" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T2.1.1.8.1.1" style="font-size:90%;background-color:#FFFFD9;">mmMamba-hybrid</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" colspan="2" id="S4.T2.1.1.8.2" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T2.1.1.8.2.1" style="font-size:90%;background-color:#FFFFD9;">24-layer Mamba2 + 8-layer Transformer</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb ltx_border_r" id="S4.T2.1.1.8.3" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.1.1.8.3.1" style="font-size:90%;background-color:#FFFFD9;">2.7B</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S4.T2.1.1.8.4" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T2.1.1.8.4.1" style="font-size:90%;background-color:#FFFFD9;">768</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb ltx_border_r" id="S4.T2.1.1.8.5" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T2.1.1.8.5.1" style="font-size:90%;background-color:#FFFFD9;">256</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S4.T2.1.1.8.6" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.8.6.1" style="font-size:90%;background-color:#FFFFD9;">134.77</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S4.T2.1.1.8.7" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.8.7.1" style="font-size:90%;background-color:#FFFFD9;">1.90</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 Table 2 presents a comparison of the inference efficiency of various Vision-Language Models (VLMs), focusing on speed and resource utilization.  Models with similar parameter scales (around 3 billion parameters) are compared across different architectural categories: encoder-based, decoder-only, quadratic complexity, and linear complexity. The experiment uses the same multimodal prompt and fixed decode length for a fair comparison.  The results demonstrate the significant speed advantage of the mmMamba-linear and mmMamba-hybrid models, especially when considering the total time (prefilling + decoding). The metrics reported are speed in tokens per second and total inference time, highlighting the efficiency gains achieved by the proposed mmMamba models on a single NVIDIA RTX 4090 GPU.
> <details>
> <summary>read the caption</summary>
> Table 2: Inference efficiency comparison under same multimodal prompt and fixed decode length. We compare with VLMs of the similar parameter scale (3B) across encoder-based, decoder-only, quadratic-complexity, and linear-complexity. The results highlight the speed advantage of mmMamba-linear/hybrid. The benchmark recipe directly follows Cobra, and we report the results on the same single NVIDIA RTX 4090 GPU. Note that “Total Time” includes the time of both prefilling and decoding, and “Speed” = “Output Tokens” / “Total Time”.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S5.T3.1">
<tr class="ltx_tr" id="S5.T3.1.1">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_tt" id="S5.T3.1.1.1" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T3.1.1.1.1" style="font-size:90%;">ID</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T3.1.1.2" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T3.1.1.2.1" style="font-size:90%;">Stage1</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T3.1.1.3" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T3.1.1.3.1" style="font-size:90%;">Stage2</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S5.T3.1.1.4" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T3.1.1.4.1" style="font-size:90%;">Stage3</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T3.1.1.5" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T3.1.1.5.1" style="font-size:90%;">MME</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T3.1.1.6" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T3.1.1.6.1" style="font-size:90%;">POPE</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T3.1.1.7" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T3.1.1.7.1" style="font-size:90%;">TextVQA</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T3.1.1.8" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T3.1.1.8.1" style="font-size:90%;">SQA-I</span></td>
</tr>
<tr class="ltx_tr" id="S5.T3.1.2">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S5.T3.1.2.1" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T3.1.2.1.1" style="font-size:90%;">1</span></td>
<td class="ltx_td ltx_border_t" id="S5.T3.1.2.2" style="padding-left:2.0pt;padding-right:2.0pt;"></td>
<td class="ltx_td ltx_border_t" id="S5.T3.1.2.3" style="padding-left:2.0pt;padding-right:2.0pt;"></td>
<td class="ltx_td ltx_border_r ltx_border_t" id="S5.T3.1.2.4" style="padding-left:2.0pt;padding-right:2.0pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.1.2.5" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T3.1.2.5.1" style="font-size:90%;">NAN</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.1.2.6" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T3.1.2.6.1" style="font-size:90%;">NAN</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.1.2.7" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T3.1.2.7.1" style="font-size:90%;">NAN</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.1.2.8" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T3.1.2.8.1" style="font-size:90%;">NAN</span></td>
</tr>
<tr class="ltx_tr" id="S5.T3.1.3">
<td class="ltx_td ltx_align_left ltx_border_r" id="S5.T3.1.3.1" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T3.1.3.1.1" style="font-size:90%;">2</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.1.3.2" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T3.1.3.2.1" style="font-size:90%;">✓</span></td>
<td class="ltx_td" id="S5.T3.1.3.3" style="padding-left:2.0pt;padding-right:2.0pt;"></td>
<td class="ltx_td ltx_border_r" id="S5.T3.1.3.4" style="padding-left:2.0pt;padding-right:2.0pt;"></td>
<td class="ltx_td ltx_align_center" id="S5.T3.1.3.5" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T3.1.3.5.1" style="font-size:90%;">969.8</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.1.3.6" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T3.1.3.6.1" style="font-size:90%;">70.6</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.1.3.7" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T3.1.3.7.1" style="font-size:90%;">13.47</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.1.3.8" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T3.1.3.8.1" style="font-size:90%;">40.8</span></td>
</tr>
<tr class="ltx_tr" id="S5.T3.1.4">
<td class="ltx_td ltx_align_left ltx_border_r" id="S5.T3.1.4.1" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T3.1.4.1.1" style="font-size:90%;">3</span></td>
<td class="ltx_td" id="S5.T3.1.4.2" style="padding-left:2.0pt;padding-right:2.0pt;"></td>
<td class="ltx_td ltx_align_center" id="S5.T3.1.4.3" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T3.1.4.3.1" style="font-size:90%;">✓</span></td>
<td class="ltx_td ltx_border_r" id="S5.T3.1.4.4" style="padding-left:2.0pt;padding-right:2.0pt;"></td>
<td class="ltx_td ltx_align_center" id="S5.T3.1.4.5" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T3.1.4.5.1" style="font-size:90%;">1007.1</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.1.4.6" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T3.1.4.6.1" style="font-size:90%;">72.9</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.1.4.7" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T3.1.4.7.1" style="font-size:90%;">25.5</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.1.4.8" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T3.1.4.8.1" style="font-size:90%;">52.1</span></td>
</tr>
<tr class="ltx_tr" id="S5.T3.1.5">
<td class="ltx_td ltx_align_left ltx_border_r" id="S5.T3.1.5.1" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T3.1.5.1.1" style="font-size:90%;">4</span></td>
<td class="ltx_td" id="S5.T3.1.5.2" style="padding-left:2.0pt;padding-right:2.0pt;"></td>
<td class="ltx_td" id="S5.T3.1.5.3" style="padding-left:2.0pt;padding-right:2.0pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T3.1.5.4" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T3.1.5.4.1" style="font-size:90%;">✓</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.1.5.5" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T3.1.5.5.1" style="font-size:90%;">1188.4</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.1.5.6" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T3.1.5.6.1" style="font-size:90%;">83.0</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.1.5.7" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T3.1.5.7.1" style="font-size:90%;">40.0</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.1.5.8" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T3.1.5.8.1" style="font-size:90%;">63.4</span></td>
</tr>
<tr class="ltx_tr" id="S5.T3.1.6">
<td class="ltx_td ltx_align_left ltx_border_r" id="S5.T3.1.6.1" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T3.1.6.1.1" style="font-size:90%;">5</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.1.6.2" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T3.1.6.2.1" style="font-size:90%;">✓</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.1.6.3" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T3.1.6.3.1" style="font-size:90%;">✓</span></td>
<td class="ltx_td ltx_border_r" id="S5.T3.1.6.4" style="padding-left:2.0pt;padding-right:2.0pt;"></td>
<td class="ltx_td ltx_align_center" id="S5.T3.1.6.5" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T3.1.6.5.1" style="font-size:90%;">1108.9</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.1.6.6" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T3.1.6.6.1" style="font-size:90%;">75.3</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.1.6.7" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T3.1.6.7.1" style="font-size:90%;">28.0</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.1.6.8" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T3.1.6.8.1" style="font-size:90%;">59.3</span></td>
</tr>
<tr class="ltx_tr" id="S5.T3.1.7">
<td class="ltx_td ltx_align_left ltx_border_r" id="S5.T3.1.7.1" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T3.1.7.1.1" style="font-size:90%;">6</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.1.7.2" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T3.1.7.2.1" style="font-size:90%;">✓</span></td>
<td class="ltx_td" id="S5.T3.1.7.3" style="padding-left:2.0pt;padding-right:2.0pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T3.1.7.4" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T3.1.7.4.1" style="font-size:90%;">✓</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.1.7.5" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T3.1.7.5.1" style="font-size:90%;">1263.1</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.1.7.6" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T3.1.7.6.1" style="font-size:90%;">84.0</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.1.7.7" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T3.1.7.7.1" style="font-size:90%;">42.5</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.1.7.8" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T3.1.7.8.1" style="font-size:90%;">77.1</span></td>
</tr>
<tr class="ltx_tr" id="S5.T3.1.8">
<td class="ltx_td ltx_align_left ltx_border_r" id="S5.T3.1.8.1" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T3.1.8.1.1" style="font-size:90%;">7</span></td>
<td class="ltx_td" id="S5.T3.1.8.2" style="padding-left:2.0pt;padding-right:2.0pt;"></td>
<td class="ltx_td ltx_align_center" id="S5.T3.1.8.3" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T3.1.8.3.1" style="font-size:90%;">✓</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T3.1.8.4" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T3.1.8.4.1" style="font-size:90%;">✓</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.1.8.5" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T3.1.8.5.1" style="font-size:90%;">1255.5</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.1.8.6" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T3.1.8.6.1" style="font-size:90%;">83.5</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.1.8.7" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T3.1.8.7.1" style="font-size:90%;">41.1</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.1.8.8" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T3.1.8.8.1" style="font-size:90%;">72.1</span></td>
</tr>
<tr class="ltx_tr" id="S5.T3.1.9" style="background-color:#D9FFD9;">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_r" id="S5.T3.1.9.1" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T3.1.9.1.1" style="font-size:90%;background-color:#D9FFD9;">8</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T3.1.9.2" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T3.1.9.2.1" style="font-size:90%;background-color:#D9FFD9;">✓</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T3.1.9.3" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T3.1.9.3.1" style="font-size:90%;background-color:#D9FFD9;">✓</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S5.T3.1.9.4" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T3.1.9.4.1" style="font-size:90%;background-color:#D9FFD9;">✓</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T3.1.9.5" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T3.1.9.5.1" style="font-size:90%;background-color:#D9FFD9;">1303.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T3.1.9.6" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T3.1.9.6.1" style="font-size:90%;background-color:#D9FFD9;">85.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T3.1.9.7" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T3.1.9.7.1" style="font-size:90%;background-color:#D9FFD9;">47.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T3.1.9.8" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T3.1.9.8.1" style="font-size:90%;background-color:#D9FFD9;">79.2</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the ablation study on the effect of different training stages in the mmMamba model.  It shows the performance on four metrics (MME, POPE, TextVQA, SQA-I) when only the first stage, the first two stages, and all three stages of the distillation process are used. The results demonstrate the progressive improvement in performance as more stages are included.
> <details>
> <summary>read the caption</summary>
> Table 3: Ablation for training stages.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S5.T4.2">
<tr class="ltx_tr" id="S5.T4.2.3">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S5.T4.2.3.1" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S5.T4.2.3.1.1" style="font-size:90%;">Init Strategy</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T4.2.3.2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S5.T4.2.3.2.1" style="font-size:90%;">MME</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T4.2.3.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S5.T4.2.3.3.1" style="font-size:90%;">POPE</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T4.2.3.4" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S5.T4.2.3.4.1" style="font-size:90%;">TextVQA</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T4.2.3.5" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S5.T4.2.3.5.1" style="font-size:90%;">SQA-I</span></td>
</tr>
<tr class="ltx_tr" id="S5.T4.2.4">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T4.2.4.1" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S5.T4.2.4.1.1" style="font-size:90%;">from scratch</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.2.4.2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S5.T4.2.4.2.1" style="font-size:90%;">1214.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.2.4.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S5.T4.2.4.3.1" style="font-size:90%;">83.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.2.4.4" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S5.T4.2.4.4.1" style="font-size:90%;">40.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.2.4.5" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S5.T4.2.4.5.1" style="font-size:90%;">67.4</span></td>
</tr>
<tr class="ltx_tr" id="S5.T4.1.1">
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T4.1.1.1" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_text" id="S5.T4.1.1.1.1" style="font-size:90%;">inherit </span><math alttext="\boldsymbol{W}_{Q,K,V}" class="ltx_Math" display="inline" id="S5.T4.1.1.1.m1.3"><semantics id="S5.T4.1.1.1.m1.3a"><msub id="S5.T4.1.1.1.m1.3.4" xref="S5.T4.1.1.1.m1.3.4.cmml"><mi id="S5.T4.1.1.1.m1.3.4.2" mathsize="90%" xref="S5.T4.1.1.1.m1.3.4.2.cmml">𝑾</mi><mrow id="S5.T4.1.1.1.m1.3.3.3.5" xref="S5.T4.1.1.1.m1.3.3.3.4.cmml"><mi id="S5.T4.1.1.1.m1.1.1.1.1" mathsize="90%" xref="S5.T4.1.1.1.m1.1.1.1.1.cmml">Q</mi><mo id="S5.T4.1.1.1.m1.3.3.3.5.1" mathsize="90%" xref="S5.T4.1.1.1.m1.3.3.3.4.cmml">,</mo><mi id="S5.T4.1.1.1.m1.2.2.2.2" mathsize="90%" xref="S5.T4.1.1.1.m1.2.2.2.2.cmml">K</mi><mo id="S5.T4.1.1.1.m1.3.3.3.5.2" mathsize="90%" xref="S5.T4.1.1.1.m1.3.3.3.4.cmml">,</mo><mi id="S5.T4.1.1.1.m1.3.3.3.3" mathsize="90%" xref="S5.T4.1.1.1.m1.3.3.3.3.cmml">V</mi></mrow></msub><annotation-xml encoding="MathML-Content" id="S5.T4.1.1.1.m1.3b"><apply id="S5.T4.1.1.1.m1.3.4.cmml" xref="S5.T4.1.1.1.m1.3.4"><csymbol cd="ambiguous" id="S5.T4.1.1.1.m1.3.4.1.cmml" xref="S5.T4.1.1.1.m1.3.4">subscript</csymbol><ci id="S5.T4.1.1.1.m1.3.4.2.cmml" xref="S5.T4.1.1.1.m1.3.4.2">𝑾</ci><list id="S5.T4.1.1.1.m1.3.3.3.4.cmml" xref="S5.T4.1.1.1.m1.3.3.3.5"><ci id="S5.T4.1.1.1.m1.1.1.1.1.cmml" xref="S5.T4.1.1.1.m1.1.1.1.1">𝑄</ci><ci id="S5.T4.1.1.1.m1.2.2.2.2.cmml" xref="S5.T4.1.1.1.m1.2.2.2.2">𝐾</ci><ci id="S5.T4.1.1.1.m1.3.3.3.3.cmml" xref="S5.T4.1.1.1.m1.3.3.3.3">𝑉</ci></list></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T4.1.1.1.m1.3c">\boldsymbol{W}_{Q,K,V}</annotation><annotation encoding="application/x-llamapun" id="S5.T4.1.1.1.m1.3d">bold_italic_W start_POSTSUBSCRIPT italic_Q , italic_K , italic_V end_POSTSUBSCRIPT</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center" id="S5.T4.1.1.2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S5.T4.1.1.2.1" style="font-size:90%;">1222.6</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.1.1.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S5.T4.1.1.3.1" style="font-size:90%;">84.0</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.1.1.4" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S5.T4.1.1.4.1" style="font-size:90%;">41.9</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.1.1.5" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S5.T4.1.1.5.1" style="font-size:90%;">73.3</span></td>
</tr>
<tr class="ltx_tr" id="S5.T4.2.2" style="background-color:#D9FFD9;">
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S5.T4.2.2.1" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S5.T4.2.2.1.1" style="font-size:90%;background-color:#D9FFD9;">inherit <math alttext="\boldsymbol{W}_{Q,K,V}" class="ltx_Math" display="inline" id="S5.T4.2.2.1.1.m1.3" style="background-color:#D9FFD9;"><semantics id="S5.T4.2.2.1.1.m1.3a"><msub id="S5.T4.2.2.1.1.m1.3.4" xref="S5.T4.2.2.1.1.m1.3.4.cmml"><mi id="S5.T4.2.2.1.1.m1.3.4.2" mathbackground="#D9FFD9" xref="S5.T4.2.2.1.1.m1.3.4.2.cmml">𝑾</mi><mrow id="S5.T4.2.2.1.1.m1.3.3.3.5" xref="S5.T4.2.2.1.1.m1.3.3.3.4.cmml"><mi id="S5.T4.2.2.1.1.m1.1.1.1.1" mathbackground="#D9FFD9" xref="S5.T4.2.2.1.1.m1.1.1.1.1.cmml">Q</mi><mo id="S5.T4.2.2.1.1.m1.3.3.3.5.1" mathbackground="#D9FFD9" xref="S5.T4.2.2.1.1.m1.3.3.3.4.cmml">,</mo><mi id="S5.T4.2.2.1.1.m1.2.2.2.2" mathbackground="#D9FFD9" xref="S5.T4.2.2.1.1.m1.2.2.2.2.cmml">K</mi><mo id="S5.T4.2.2.1.1.m1.3.3.3.5.2" mathbackground="#D9FFD9" xref="S5.T4.2.2.1.1.m1.3.3.3.4.cmml">,</mo><mi id="S5.T4.2.2.1.1.m1.3.3.3.3" mathbackground="#D9FFD9" xref="S5.T4.2.2.1.1.m1.3.3.3.3.cmml">V</mi></mrow></msub><annotation-xml encoding="MathML-Content" id="S5.T4.2.2.1.1.m1.3b"><apply id="S5.T4.2.2.1.1.m1.3.4.cmml" xref="S5.T4.2.2.1.1.m1.3.4"><csymbol cd="ambiguous" id="S5.T4.2.2.1.1.m1.3.4.1.cmml" xref="S5.T4.2.2.1.1.m1.3.4">subscript</csymbol><ci id="S5.T4.2.2.1.1.m1.3.4.2.cmml" xref="S5.T4.2.2.1.1.m1.3.4.2">𝑾</ci><list id="S5.T4.2.2.1.1.m1.3.3.3.4.cmml" xref="S5.T4.2.2.1.1.m1.3.3.3.5"><ci id="S5.T4.2.2.1.1.m1.1.1.1.1.cmml" xref="S5.T4.2.2.1.1.m1.1.1.1.1">𝑄</ci><ci id="S5.T4.2.2.1.1.m1.2.2.2.2.cmml" xref="S5.T4.2.2.1.1.m1.2.2.2.2">𝐾</ci><ci id="S5.T4.2.2.1.1.m1.3.3.3.3.cmml" xref="S5.T4.2.2.1.1.m1.3.3.3.3">𝑉</ci></list></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T4.2.2.1.1.m1.3c">\boldsymbol{W}_{Q,K,V}</annotation><annotation encoding="application/x-llamapun" id="S5.T4.2.2.1.1.m1.3d">bold_italic_W start_POSTSUBSCRIPT italic_Q , italic_K , italic_V end_POSTSUBSCRIPT</annotation></semantics></math> + mimic</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T4.2.2.2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S5.T4.2.2.2.1" style="font-size:90%;background-color:#D9FFD9;">1303.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T4.2.2.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S5.T4.2.2.3.1" style="font-size:90%;background-color:#D9FFD9;">85.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T4.2.2.4" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S5.T4.2.2.4.1" style="font-size:90%;background-color:#D9FFD9;">47.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T4.2.2.5" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S5.T4.2.2.5.1" style="font-size:90%;background-color:#D9FFD9;">79.2</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents an ablation study on different parameter initialization strategies for the mmMamba model.  It compares the performance of three approaches: initializing parameters randomly from scratch, inheriting only the weight matrices WQ, WK, and WV from the Transformer, and a combined approach inheriting those weights while also mimicking the original Transformer's behavior. The results show the impact of each initialization method on the model's performance across multiple vision-language benchmarks (MME, POPE, TextVQA, and SQA-I).
> <details>
> <summary>read the caption</summary>
> Table 4: Ablation for parameter initialization.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S5.T5.1">
<tr class="ltx_tr" id="S5.T5.1.1">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S5.T5.1.1.1"><span class="ltx_text" id="S5.T5.1.1.1.1" style="font-size:90%;">Attention Layers</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T5.1.1.2"><span class="ltx_text" id="S5.T5.1.1.2.1" style="font-size:90%;">MME</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T5.1.1.3"><span class="ltx_text" id="S5.T5.1.1.3.1" style="font-size:90%;">POPE</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T5.1.1.4"><span class="ltx_text" id="S5.T5.1.1.4.1" style="font-size:90%;">TextVQA</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T5.1.1.5"><span class="ltx_text" id="S5.T5.1.1.5.1" style="font-size:90%;">SQA-I</span></td>
</tr>
<tr class="ltx_tr" id="S5.T5.1.2" style="background-color:#D9FFD9;">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T5.1.2.1"><span class="ltx_text" id="S5.T5.1.2.1.1" style="font-size:90%;background-color:#D9FFD9;">0</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.1.2.2"><span class="ltx_text" id="S5.T5.1.2.2.1" style="font-size:90%;background-color:#D9FFD9;">1303.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.1.2.3"><span class="ltx_text" id="S5.T5.1.2.3.1" style="font-size:90%;background-color:#D9FFD9;">85.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.1.2.4"><span class="ltx_text" id="S5.T5.1.2.4.1" style="font-size:90%;background-color:#D9FFD9;">47.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.1.2.5"><span class="ltx_text" id="S5.T5.1.2.5.1" style="font-size:90%;background-color:#D9FFD9;">79.2</span></td>
</tr>
<tr class="ltx_tr" id="S5.T5.1.3">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T5.1.3.1"><span class="ltx_text" id="S5.T5.1.3.1.1" style="font-size:90%;">1</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.1.3.2"><span class="ltx_text" id="S5.T5.1.3.2.1" style="font-size:90%;">1304.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.1.3.3"><span class="ltx_text" id="S5.T5.1.3.3.1" style="font-size:90%;">85.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.1.3.4"><span class="ltx_text" id="S5.T5.1.3.4.1" style="font-size:90%;">48.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.1.3.5"><span class="ltx_text" id="S5.T5.1.3.5.1" style="font-size:90%;">79.3</span></td>
</tr>
<tr class="ltx_tr" id="S5.T5.1.4">
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T5.1.4.1"><span class="ltx_text" id="S5.T5.1.4.1.1" style="font-size:90%;">2</span></td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.4.2"><span class="ltx_text" id="S5.T5.1.4.2.1" style="font-size:90%;">1318.4</span></td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.4.3"><span class="ltx_text" id="S5.T5.1.4.3.1" style="font-size:90%;">86.3</span></td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.4.4"><span class="ltx_text" id="S5.T5.1.4.4.1" style="font-size:90%;">48.4</span></td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.4.5"><span class="ltx_text" id="S5.T5.1.4.5.1" style="font-size:90%;">79.9</span></td>
</tr>
<tr class="ltx_tr" id="S5.T5.1.5">
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T5.1.5.1"><span class="ltx_text" id="S5.T5.1.5.1.1" style="font-size:90%;">4</span></td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.5.2"><span class="ltx_text" id="S5.T5.1.5.2.1" style="font-size:90%;">1329.1</span></td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.5.3"><span class="ltx_text" id="S5.T5.1.5.3.1" style="font-size:90%;">86.8</span></td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.5.4"><span class="ltx_text" id="S5.T5.1.5.4.1" style="font-size:90%;">51.5</span></td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.5.5"><span class="ltx_text" id="S5.T5.1.5.5.1" style="font-size:90%;">82.8</span></td>
</tr>
<tr class="ltx_tr" id="S5.T5.1.6" style="background-color:#FFFFD9;">
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T5.1.6.1"><span class="ltx_text" id="S5.T5.1.6.1.1" style="font-size:90%;background-color:#FFFFD9;">8</span></td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.6.2"><span class="ltx_text" id="S5.T5.1.6.2.1" style="font-size:90%;background-color:#FFFFD9;">1371.1</span></td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.6.3"><span class="ltx_text" id="S5.T5.1.6.3.1" style="font-size:90%;background-color:#FFFFD9;">86.7</span></td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.6.4"><span class="ltx_text" id="S5.T5.1.6.4.1" style="font-size:90%;background-color:#FFFFD9;">55.1</span></td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.6.5"><span class="ltx_text" id="S5.T5.1.6.5.1" style="font-size:90%;background-color:#FFFFD9;">86.9</span></td>
</tr>
<tr class="ltx_tr" id="S5.T5.1.7">
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r ltx_border_t" id="S5.T5.1.7.1"><span class="ltx_text" id="S5.T5.1.7.1.1" style="font-size:90%;">32</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S5.T5.1.7.2"><span class="ltx_text" id="S5.T5.1.7.2.1" style="font-size:90%;">1433.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S5.T5.1.7.3"><span class="ltx_text" id="S5.T5.1.7.3.1" style="font-size:90%;">87.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S5.T5.1.7.4"><span class="ltx_text" id="S5.T5.1.7.4.1" style="font-size:90%;">66.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S5.T5.1.7.5"><span class="ltx_text" id="S5.T5.1.7.5.1" style="font-size:90%;">94.8</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents an ablation study on the number of interleaved Transformer layers in the mmMamba model.  It shows how performance varies across different vision-language tasks (MME, POPE, TextVQA, SQA-I) when using only Mamba-2 layers (mmMamba-pure, denoted by '0'), a hybrid architecture with 8 interleaved Transformer layers (mmMamba-hybrid, denoted by '8'), and the full Transformer-based HoVLE model (denoted by '32') as a baseline for comparison. The results illustrate the trade-off between efficiency and performance achieved by varying the proportion of Mamba-2 and Transformer layers.
> <details>
> <summary>read the caption</summary>
> Table 5: Ablation for the number of interleaved attention layers. “0” denotes mmMamba-pure, “8” denotes mmMamba-hybrid, “32” denotes the full Transformer model HoVLE.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S5.T6.1">
<tr class="ltx_tr" id="S5.T6.1.1">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S5.T6.1.1.1"><span class="ltx_text" id="S5.T6.1.1.1.1" style="font-size:90%;">Hybrid strategy</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T6.1.1.2"><span class="ltx_text" id="S5.T6.1.1.2.1" style="font-size:90%;">MME</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T6.1.1.3"><span class="ltx_text" id="S5.T6.1.1.3.1" style="font-size:90%;">POPE</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T6.1.1.4"><span class="ltx_text" id="S5.T6.1.1.4.1" style="font-size:90%;">TextVQA</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T6.1.1.5"><span class="ltx_text" id="S5.T6.1.1.5.1" style="font-size:90%;">SQA-I</span></td>
</tr>
<tr class="ltx_tr" id="S5.T6.1.2">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T6.1.2.1"><span class="ltx_text" id="S5.T6.1.2.1.1" style="font-size:90%;">Tail-stacked</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T6.1.2.2"><span class="ltx_text" id="S5.T6.1.2.2.1" style="font-size:90%;">1305.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T6.1.2.3"><span class="ltx_text" id="S5.T6.1.2.3.1" style="font-size:90%;">85.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T6.1.2.4"><span class="ltx_text" id="S5.T6.1.2.4.1" style="font-size:90%;">53.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T6.1.2.5"><span class="ltx_text" id="S5.T6.1.2.5.1" style="font-size:90%;">79.4</span></td>
</tr>
<tr class="ltx_tr" id="S5.T6.1.3">
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T6.1.3.1"><span class="ltx_text" id="S5.T6.1.3.1.1" style="font-size:90%;">Head-stacked</span></td>
<td class="ltx_td ltx_align_center" id="S5.T6.1.3.2"><span class="ltx_text" id="S5.T6.1.3.2.1" style="font-size:90%;">1329.4</span></td>
<td class="ltx_td ltx_align_center" id="S5.T6.1.3.3"><span class="ltx_text" id="S5.T6.1.3.3.1" style="font-size:90%;">85.9</span></td>
<td class="ltx_td ltx_align_center" id="S5.T6.1.3.4"><span class="ltx_text" id="S5.T6.1.3.4.1" style="font-size:90%;">55.0</span></td>
<td class="ltx_td ltx_align_center" id="S5.T6.1.3.5"><span class="ltx_text" id="S5.T6.1.3.5.1" style="font-size:90%;">80.8</span></td>
</tr>
<tr class="ltx_tr" id="S5.T6.1.4">
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T6.1.4.1"><span class="ltx_text" id="S5.T6.1.4.1.1" style="font-size:90%;">Tail-interleaved</span></td>
<td class="ltx_td ltx_align_center" id="S5.T6.1.4.2"><span class="ltx_text" id="S5.T6.1.4.2.1" style="font-size:90%;">1308.3</span></td>
<td class="ltx_td ltx_align_center" id="S5.T6.1.4.3"><span class="ltx_text" id="S5.T6.1.4.3.1" style="font-size:90%;">86.1</span></td>
<td class="ltx_td ltx_align_center" id="S5.T6.1.4.4"><span class="ltx_text" id="S5.T6.1.4.4.1" style="font-size:90%;">55.0</span></td>
<td class="ltx_td ltx_align_center" id="S5.T6.1.4.5"><span class="ltx_text" id="S5.T6.1.4.5.1" style="font-size:90%;">86.5</span></td>
</tr>
<tr class="ltx_tr" id="S5.T6.1.5" style="background-color:#FFFFD9;">
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S5.T6.1.5.1"><span class="ltx_text" id="S5.T6.1.5.1.1" style="font-size:90%;background-color:#FFFFD9;">Head-interleaved</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T6.1.5.2"><span class="ltx_text" id="S5.T6.1.5.2.1" style="font-size:90%;background-color:#FFFFD9;">1371.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T6.1.5.3"><span class="ltx_text" id="S5.T6.1.5.3.1" style="font-size:90%;background-color:#FFFFD9;">86.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T6.1.5.4"><span class="ltx_text" id="S5.T6.1.5.4.1" style="font-size:90%;background-color:#FFFFD9;">55.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T6.1.5.5"><span class="ltx_text" id="S5.T6.1.5.5.1" style="font-size:90%;background-color:#FFFFD9;">86.9</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents an ablation study on the hybrid strategy used in the mmMamba model. It investigates the impact of different ways of interleaving Transformer and Mamba-2 layers on the model's performance across various metrics (MME, POPE, TextVQA, SQA-I). The hybrid strategy aims to balance computational efficiency and performance by selectively replacing Transformer layers with Mamba-2 layers, thus exploring the optimal configuration for a given task.
> <details>
> <summary>read the caption</summary>
> Table 6: Ablation for hybrid strategy.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2502.13145/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.13145/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.13145/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.13145/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.13145/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.13145/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.13145/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.13145/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.13145/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.13145/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.13145/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.13145/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}