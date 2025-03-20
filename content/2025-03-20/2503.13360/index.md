---
title: "Mitigating Visual Forgetting via Take-along Visual Conditioning for Multi-modal Long CoT Reasoning"
summary: "TVC mitigates visual forgetting in multimodal LLMs, enhancing reasoning by strategically re-introducing and compressing visual information."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Multimodal Learning", "Multimodal Reasoning", "🏢 Nanjing University",]
showSummary: true
date: 2025-03-17
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2503.13360 {{< /keyword >}}
{{< keyword icon="writer" >}} Hai-Long Sun et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-03-20 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2503.13360" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2503.13360" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2503.13360/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Large Language Models combined with visual inputs(MLLMs) struggle to maintain focus on visual information as reasoning progresses, leading to text-over-reliance. This "visual forgetting" degrades performance, especially in tasks requiring continuous visual grounding like geometry problems. Analysis shows MLLMs diminish attention to images with increased context length, causing hallucinations and limiting full reasoning potential. 



To tackle this, the paper introduces Take-along Visual Conditioning (TVC). It shifts image input to critical reasoning stages and compresses redundant visual tokens. TVC uses Dynamic Visual Reaffirmation (DVR) for training and Periodic Visual Calibration (PVC) at inference. TVC maintains visual attention throughout reasoning, improving performance on mathematical benchmarks by 3.4%.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Multimodal LLMs (MLLMs) tend to 'forget' visual information during long reasoning chains, relying more on text. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} Take-along Visual Conditioning (TVC) method combats this by strategically re-introducing visual inputs during reasoning. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} TVC achieves state-of-the-art results on mathematical reasoning benchmarks, demonstrating its effectiveness. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper addresses the critical issue of visual forgetting in MLLMs, offering a promising solution with TVC. By enhancing visual grounding, it opens avenues for **more robust and reliable multimodal reasoning**, impacting diverse applications from robotics to medical imaging.

------
#### Visual Insights



![](https://arxiv.org/html/2503.13360/x1.png)

> 🔼 This figure illustrates the concept of 'visual forgetting' in multimodal LLMs. The experiment involves interrupting the reasoning process at various stages (indicated by the x-axis, 'Cutoff Position of Reasoning Tokens'), removing the image input, and then letting the model continue the reasoning using only the text generated so far. The y-axis shows the accuracy of the model's completion of the reasoning process.  The blue line ('Normal Reasoning') represents the accuracy when the image is available throughout; the orange line ('Cutoff Image Reasoning') represents accuracy when the image is removed at various points. The small difference in accuracy between the two lines, especially as the cutoff position approaches the midpoint, demonstrates that the model increasingly relies on the generated text rather than the original image as reasoning progresses. This shift in reliance, where visual information is neglected, is termed 'visual forgetting'.
> <details>
> <summary>read the caption</summary>
> Figure 1: The visual forgetting phenomenon by removing the image at different reasoning stages. It shows that by the midpoint of the reasoning process, the model becomes less dependent on the image, causing text-over-relied outputs.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S4.T1.6.1">
<tr class="ltx_tr" id="S4.T1.6.1.1">
<td class="ltx_td ltx_align_left ltx_border_tt" id="S4.T1.6.1.1.1">Model</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T1.6.1.1.2">Size</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T1.6.1.1.3">MathVista</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T1.6.1.1.4">MathVision</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T1.6.1.1.5">MathVerse</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T1.6.1.1.6">Dynamath</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T1.6.1.1.7">OlympiadBench</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T1.6.1.1.8">Average</td>
</tr>
<tr class="ltx_tr" id="S4.T1.6.1.2">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T1.6.1.2.1">MiniCPM-V-2.6 <cite class="ltx_cite ltx_citemacro_citep">(Yadav et al., <a class="ltx_ref" href="https://arxiv.org/html/2503.13360v1#bib.bib38" title="">2025</a>)</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.6.1.2.2">8B</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.6.1.2.3">60.8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.6.1.2.4">18.4</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.6.1.2.5">17.6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.6.1.2.6">9.8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.6.1.2.7">-</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.6.1.2.8">-</td>
</tr>
<tr class="ltx_tr" id="S4.T1.6.1.3">
<td class="ltx_td ltx_align_left" id="S4.T1.6.1.3.1">VITA-1.5 <cite class="ltx_cite ltx_citemacro_citep">(Fu et al., <a class="ltx_ref" href="https://arxiv.org/html/2503.13360v1#bib.bib9" title="">2025</a>)</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.1.3.2">8B</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.1.3.3">66.2</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.1.3.4">19.5</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.1.3.5">23.4</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.1.3.6">9.6</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.1.3.7">-</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.1.3.8">-</td>
</tr>
<tr class="ltx_tr" id="S4.T1.6.1.4">
<td class="ltx_td ltx_align_left" id="S4.T1.6.1.4.1">LLaVA-COT <cite class="ltx_cite ltx_citemacro_citep">(Xu et al., <a class="ltx_ref" href="https://arxiv.org/html/2503.13360v1#bib.bib37" title="">2024</a>)</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.1.4.2">11B</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.1.4.3">52.5</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.1.4.4">19.9</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.1.4.5">22.6</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.1.4.6">7.8</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.1.4.7">-</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.1.4.8">-</td>
</tr>
<tr class="ltx_tr" id="S4.T1.6.1.5">
<td class="ltx_td ltx_align_left" id="S4.T1.6.1.5.1">Qwen2-VL <cite class="ltx_cite ltx_citemacro_citep">(Wang et al., <a class="ltx_ref" href="https://arxiv.org/html/2503.13360v1#bib.bib35" title="">2024b</a>)</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.1.5.2">7B</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.1.5.3">60.9</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.1.5.4">16.3</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.1.5.5">24.6</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.1.5.6">11.0</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.1.5.7">3.2</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.1.5.8">23.2</td>
</tr>
<tr class="ltx_tr" id="S4.T1.6.1.6">
<td class="ltx_td ltx_align_left" id="S4.T1.6.1.6.1">InternVL2.5 <cite class="ltx_cite ltx_citemacro_citep">(Chen et al., <a class="ltx_ref" href="https://arxiv.org/html/2503.13360v1#bib.bib6" title="">2024b</a>)</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.1.6.2">8B</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.1.6.3">64.5</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.1.6.4">17.0</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.1.6.5">22.8</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.1.6.6">9.4</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.1.6.7">0.1</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.1.6.8">22.8</td>
</tr>
<tr class="ltx_tr" id="S4.T1.6.1.7">
<td class="ltx_td ltx_align_left" id="S4.T1.6.1.7.1">POINTS1.5 <cite class="ltx_cite ltx_citemacro_citep">(Liu et al., <a class="ltx_ref" href="https://arxiv.org/html/2503.13360v1#bib.bib19" title="">2024b</a>)</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.1.7.2">8B</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.1.7.3">66.4</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.1.7.4">22.0</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.1.7.5">26.6</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.1.7.6">14.2</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.1.7.7">-</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.1.7.8">-</td>
</tr>
<tr class="ltx_tr" id="S4.T1.6.1.8">
<td class="ltx_td ltx_align_left" id="S4.T1.6.1.8.1">Ovis1.6-Gemma2 <cite class="ltx_cite ltx_citemacro_citep">(Lu et al., <a class="ltx_ref" href="https://arxiv.org/html/2503.13360v1#bib.bib22" title="">2024b</a>)</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.1.8.2">27B</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.1.8.3">70.2</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.1.8.4">20.6</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.1.8.5">37.8</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.1.8.6">17.0</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.1.8.7">-</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.1.8.8">-</td>
</tr>
<tr class="ltx_tr" id="S4.T1.6.1.9">
<td class="ltx_td ltx_align_left" id="S4.T1.6.1.9.1">InternVL2.5-COT <cite class="ltx_cite ltx_citemacro_citep">(Chen et al., <a class="ltx_ref" href="https://arxiv.org/html/2503.13360v1#bib.bib6" title="">2024b</a>)</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.1.9.2">78B</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.1.9.3">71.4</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.1.9.4">32.5</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.1.9.5">40.1</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.1.9.6">28.5</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.1.9.7">-</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.1.9.8">-</td>
</tr>
<tr class="ltx_tr" id="S4.T1.6.1.10">
<td class="ltx_td ltx_align_left" id="S4.T1.6.1.10.1">LLaVA-OneVision <cite class="ltx_cite ltx_citemacro_citep">(Li et al., <a class="ltx_ref" href="https://arxiv.org/html/2503.13360v1#bib.bib16" title="">2024</a>)</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.1.10.2">72B</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.1.10.3">67.1</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.1.10.4">25.3</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.1.10.5">27.2</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.1.10.6">15.6</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.1.10.7">-</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.1.10.8">-</td>
</tr>
<tr class="ltx_tr" id="S4.T1.6.1.11">
<td class="ltx_td ltx_align_left" id="S4.T1.6.1.11.1">Qwen2-VL <cite class="ltx_cite ltx_citemacro_citep">(Wang et al., <a class="ltx_ref" href="https://arxiv.org/html/2503.13360v1#bib.bib35" title="">2024b</a>)</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.1.11.2">72B</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.1.11.3">69.7</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.1.11.4">26.6</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.1.11.5">36.2</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.1.11.6">20.0</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.1.11.7">10.3</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.1.11.8">32.6</td>
</tr>
<tr class="ltx_tr" id="S4.T1.6.1.12">
<td class="ltx_td ltx_align_left" id="S4.T1.6.1.12.1">QVQ-72B-preview <cite class="ltx_cite ltx_citemacro_citep">(QwenTeam, <a class="ltx_ref" href="https://arxiv.org/html/2503.13360v1#bib.bib27" title="">2024</a>)</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.1.12.2">72B</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.1.12.3">71.4</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.1.12.4">35.9</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.1.12.5">41.5</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.1.12.6"><span class="ltx_text ltx_font_bold" id="S4.T1.6.1.12.6.1">30.7</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.1.12.7">20.4</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.1.12.8">40.0</td>
</tr>
<tr class="ltx_tr" id="S4.T1.6.1.13" style="background-color:#E6E6E6;">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T1.6.1.13.1"><span class="ltx_text ltx_font_smallcaps" id="S4.T1.6.1.13.1.1" style="background-color:#E6E6E6;">TVC</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.6.1.13.2"><span class="ltx_text" id="S4.T1.6.1.13.2.1" style="background-color:#E6E6E6;">7B</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.6.1.13.3"><span class="ltx_text" id="S4.T1.6.1.13.3.1" style="background-color:#E6E6E6;">68.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.6.1.13.4"><span class="ltx_text" id="S4.T1.6.1.13.4.1" style="background-color:#E6E6E6;">22.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.6.1.13.5"><span class="ltx_text" id="S4.T1.6.1.13.5.1" style="background-color:#E6E6E6;">38.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.6.1.13.6"><span class="ltx_text" id="S4.T1.6.1.13.6.1" style="background-color:#E6E6E6;">15.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.6.1.13.7"><span class="ltx_text" id="S4.T1.6.1.13.7.1" style="background-color:#E6E6E6;">9.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.6.1.13.8"><span class="ltx_text" id="S4.T1.6.1.13.8.1" style="background-color:#E6E6E6;">30.9</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.6.1.14" style="background-color:#E6E6E6;">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S4.T1.6.1.14.1"><span class="ltx_text ltx_font_smallcaps" id="S4.T1.6.1.14.1.1" style="background-color:#E6E6E6;">TVC</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.6.1.14.2"><span class="ltx_text" id="S4.T1.6.1.14.2.1" style="background-color:#E6E6E6;">72B</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.6.1.14.3"><span class="ltx_text ltx_font_bold" id="S4.T1.6.1.14.3.1" style="background-color:#E6E6E6;">72.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.6.1.14.4"><span class="ltx_text ltx_font_bold" id="S4.T1.6.1.14.4.1" style="background-color:#E6E6E6;">41.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.6.1.14.5"><span class="ltx_text ltx_font_bold" id="S4.T1.6.1.14.5.1" style="background-color:#E6E6E6;">48.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.6.1.14.6"><span class="ltx_text" id="S4.T1.6.1.14.6.1" style="background-color:#E6E6E6;">30.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.6.1.14.7"><span class="ltx_text ltx_font_bold" id="S4.T1.6.1.14.7.1" style="background-color:#E6E6E6;">24.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.6.1.14.8"><span class="ltx_text ltx_font_bold" id="S4.T1.6.1.14.8.1" style="background-color:#E6E6E6;">43.4</span></td>
</tr>
</table>{{< /table-caption >}}

> 🔼 Table 1 presents the performance comparison of various Multimodal Large Language Models (MLLMs) on six visual reasoning benchmarks.  These benchmarks assess both general reasoning abilities and task-specific skills. The models are evaluated on their accuracy in solving problems that require understanding and reasoning with visual information alongside textual instructions.  The table shows that the Take-along Visual Conditioning (TVC) method, when applied to the Qwen2-VL model, significantly improves performance compared to other state-of-the-art MLLMs across all six benchmarks.
> <details>
> <summary>read the caption</summary>
> Table 1: Results on Visual Reasoning Tasks. We conduct evaluation experiments across 6 benchmarks, covering both general reasoning and task-specific reasoning assessments. TVC exhibits notable effectiveness and generalizability when applied to Qwen2-VL, surpassing other state-of-the-art MLLMs by a large margin.
> </details>





### In-depth insights


#### Visual Attention Decay
The concept of visual attention decay in multimodal models is intriguing. As models process information, **the initial focus on visual elements diminishes, leading to a reliance on textual data**. This decay impacts performance, especially in tasks needing sustained visual grounding. The challenge lies in **maintaining consistent visual relevance** throughout the processing steps. Effective solutions would re-emphasize visual inputs or develop methods to **encode visual features more persistently** within the model's representation. Techniques like dynamic attention mechanisms or visual grounding techniques may help combat this. Further investigation is needed to understand how model architectures contribute to visual attention decay and how to mitigate its effects.

#### TVC: Reaffirming Vision
**Take-along Visual Conditioning (TVC)** represents a method that **re-injects visual inputs at strategic intervals**, addressing visual attention decay. This strategy ensures visual evidence is revisited during decision-making, improving long-chain reasoning capacity. **TVC mitigates visual forgetting** by periodically reaffirming visual information. By actively reinforcing visual inputs throughout the reasoning process, **TVC helps the model to maintain focus** on relevant visual cues**, preventing over-reliance on textual context** and improving performance on tasks requiring continuous validation of spatial relationships.

#### Data-Centric MLLM
Data-Centric Multimodal LLMs focus on enhancing performance through optimized data strategies. This involves curating high-quality datasets, employing data augmentation techniques, and strategically injecting visual information. Techniques like Dynamic Visual Reaffirmation are employed to iteratively reinforce visual evidence. The goal is to ensure models effectively integrate and utilize visual cues during reasoning, thus mitigating issues like visual forgetting. The success of these models heavily relies on the quality and diversity of training data which directly impacts the model's reasoning and generation capabilities.

#### Visual Token Scaling
Visual token scaling is a crucial aspect of multimodal learning, especially when dealing with large language models. **Reducing the number of visual tokens** while retaining essential information is paramount for computational efficiency and preventing the model from being overwhelmed by visual data. Strategies for visual token scaling include **adaptive pooling**, where image features are compressed using techniques like average pooling, reducing the spatial resolution while preserving semantic content. Another approach involves **prioritizing salient visual features**, selectively attending to the most informative regions of an image. Effective visual token scaling is a trade-off between compression and information retention. Too much compression can lead to a loss of crucial details, while insufficient scaling can hinder performance and increase computational costs. The goal is to **optimize the visual representation** so that the model can efficiently process and integrate visual information with textual data, ultimately improving the accuracy and efficiency of multimodal reasoning.

#### Beyond Visuals
**Beyond Visuals** often refers to exploring avenues to enhance AI models that go beyond mere image or video processing. This could involve integrating other sensory inputs like audio, or tactile feedback, creating a richer, more nuanced understanding of the world. It also suggests improving models' ability to infer abstract concepts or reason about the underlying physical properties that give rise to visual data. Further, the summary also includes improving multimodal understanding and reasoning using complex datasets for versatile real-world applications, which is crucial for creating truly intelligent AI systems capable of solving sophisticated problems. Lastly, it could refer to the ethical considerations around using AI-generated imagery, addressing concerns about bias, misinformation, and artistic integrity.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2503.13360/x2.png)

> 🔼 Figure 2 visualizes the model's attention mechanism over the course of a multi-step reasoning process. Panel (a) displays the layer-level attention weights given to image tokens at various stages of the response generation. It demonstrates a clear trend: as the response progresses, the model's focus on visual information diminishes. Panel (b) provides a detailed view of the token-level attention weights at a specific middle layer, further illustrating the gradual decrease in attention toward image tokens as the reasoning process unfolds. This figure directly supports the paper's claim that models experience 'visual forgetting' during extended reasoning tasks, losing track of visual details in favor of the generated textual context.
> <details>
> <summary>read the caption</summary>
> Figure 2: Illustration of layer-level and token-level attention weights. (a) The layer-level attention weights of image tokens across different response token positions. (b) The token-level attention weights at the middle layer. It shows that the model’s attention to the image gradually decreases during the reasoning process.
> </details>



![](https://arxiv.org/html/2503.13360/x3.png)

> 🔼 The figure illustrates the Take-along Visual Conditioning (TVC) system's design, detailing its two-stage process.  The training stage involves a Dynamic Visual Reaffirmation (DVR) method that strategically reinjects visual information at intervals during the reasoning process to maintain visual attention. The inference stage utilizes a Periodic Visual Calibration (PVC) mechanism that periodically re-introduces visual inputs, incorporating image compression to prevent information overload.  The overall system design allows the model to retain and re-engage with visual information throughout the reasoning chain, thereby mitigating the effect of 'visual forgetting'.
> <details>
> <summary>read the caption</summary>
> Figure 3: Overview of TVC System Design. We enable the model to have take-along visual conditioning capabilities through two stages: training and inference.
> </details>



![](https://arxiv.org/html/2503.13360/x4.png)

> 🔼 This figure illustrates the process of creating a high-quality dataset for training the Take-along Visual Conditioning (TVC) model.  It begins with an iterative distillation method where a teacher model generates long-chain reasoning data. This data then undergoes a multi-stage filtering process.  The filtering process includes several steps to eliminate low-quality responses, ensure data consistency and improve the efficiency of the reasoning process. The steps are: (1) Deterministic Initial Sampling using a temperature of 0 to get highly confident results; (2) Answer-Centric Reject Sampling where an LLM is used to validate answers and filter out incorrect ones; (3) Best-of-N Error Correction to recover potential errors in data; and finally (4) filtering for length and removal of reflection words to ensure reasoning quality and remove redundancy.  The end result is a refined dataset that greatly enhances the TVC model's performance.
> <details>
> <summary>read the caption</summary>
> Figure 4: Data Generation Pipeline of TVC. We use iterative distillation to collect long-chain reasoning data, followed by a comprehensive response filtering process to ensure high-quality reasoning.
> </details>



![](https://arxiv.org/html/2503.13360/x5.png)

> 🔼 This figure shows the impact of varying amounts of training data on the performance of the Take-along Visual Conditioning (TVC) model.  The x-axis represents the amount of training data used (in thousands), and the y-axis represents the relative performance of the model compared to a baseline. As the amount of training data increases, the relative performance of the TVC model consistently improves, demonstrating its ability to benefit from and leverage larger datasets for improved reasoning capabilities.
> <details>
> <summary>read the caption</summary>
> Figure 5: Ablations on the amount of training data. TVC benefits from data scaling, continually improving the reasoning capabilities.
> </details>



![](https://arxiv.org/html/2503.13360/x6.png)

> 🔼 This figure shows a case study comparing the reasoning process of a base model (without Take-along Visual Conditioning or TVC) and the TVC model. The task is a visual question answering problem involving identifying which cube in a set does not match a given unfolded net. The base model incorrectly identifies the answer due to neglecting certain object attributes when reasoning from the image.  In contrast, the TVC model uses dynamic visual reaffirmation.  This means that during the reasoning process, the model pauses and revisits the image, allowing it to re-focus on essential details and correct the initial error, leading to the correct answer. The attention weights at the token level are also displayed to illustrate this refocusing behavior.
> <details>
> <summary>read the caption</summary>
> Figure 6: Case Study of TVC. TVC effectively re-examines the image during the reflection process to correct mistakes, guiding the model to the correct answer.
> </details>



![](https://arxiv.org/html/2503.13360/x7.png)

> 🔼 This figure shows two histograms visualizing the distribution of token counts and reflection word counts within a dataset used for long-chain reasoning.  The left histogram displays the distribution of token counts, revealing that most reasoning chains have a moderate number of tokens, while a smaller number of chains have significantly more tokens.  This indicates the dataset contains both concise and more elaborate reasoning chains. The right histogram displays the distribution of reflection word counts, a metric relating to the frequency with which a model's reasoning process involves revisiting prior steps or considering alternative paths.  A concentration in the lower counts suggests that most reasoning chains involve a limited amount of self-reflection. This implies that most reasoning chains proceeded in a relatively linear fashion, with only some involving repeated or iterative considerations.
> <details>
> <summary>read the caption</summary>
> Figure 7: The token and reflection word distribution of the long-chain reasoning dataset.
> </details>



![](https://arxiv.org/html/2503.13360/x8.png)

> 🔼 Figure 8 shows a qualitative example illustrating how Take-along Visual Conditioning (TVC) improves the reasoning process.  The task involves identifying which cube doesn't match a given unfolded net.  The base CoT reasoning method makes an incorrect conclusion due to a lack of attention to details. The TVC method, however, demonstrates a step-by-step reasoning process that correctly identifies the mismatched cube by explicitly revisiting and analyzing the visual information, highlighting the benefits of TVC in maintaining visual attention during complex reasoning tasks.
> <details>
> <summary>read the caption</summary>
> Figure 8: Qualitative Results of TVC.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S4.T2.6.1">
<tr class="ltx_tr" id="S4.T2.6.1.1">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_tt" id="S4.T2.6.1.1.1">Method</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.6.1.1.2">MathVista</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.6.1.1.3">MathVision</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.6.1.1.4">MathVerse</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.6.1.1.5">Avg</td>
</tr>
<tr class="ltx_tr" id="S4.T2.6.1.2">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S4.T2.6.1.2.1">Baseline</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.6.1.2.2">60.9</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.6.1.2.3">16.3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.6.1.2.4">24.6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.6.1.2.5">33.9</td>
</tr>
<tr class="ltx_tr" id="S4.T2.6.1.3">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T2.6.1.3.1">Vanilla - Direct SFT</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.1.3.2">63.5</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.1.3.3">19.8</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.1.3.4">31.6</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.1.3.5">38.3</td>
</tr>
<tr class="ltx_tr" id="S4.T2.6.1.4">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T2.6.1.4.1">TVC w/o PVC</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.1.4.2">66.7</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.1.4.3">21.8</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.1.4.4">35.6</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.1.4.5">41.4</td>
</tr>
<tr class="ltx_tr" id="S4.T2.6.1.5">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T2.6.1.5.1">TVC w/o DVR</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.1.5.2">66.2</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.1.5.3">22.3</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.1.5.4">34.7</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.1.5.5">41.0</td>
</tr>
<tr class="ltx_tr" id="S4.T2.6.1.6" style="background-color:#E6E6E6;">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_r" id="S4.T2.6.1.6.1"><span class="ltx_text" id="S4.T2.6.1.6.1.1" style="background-color:#E6E6E6;">TVC Full</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.6.1.6.2"><span class="ltx_text" id="S4.T2.6.1.6.2.1" style="background-color:#E6E6E6;">68.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.6.1.6.3"><span class="ltx_text" id="S4.T2.6.1.6.3.1" style="background-color:#E6E6E6;">22.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.6.1.6.4"><span class="ltx_text" id="S4.T2.6.1.6.4.1" style="background-color:#E6E6E6;">38.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.6.1.6.5"><span class="ltx_text" id="S4.T2.6.1.6.5.1" style="background-color:#E6E6E6;">43.2</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 Table 2 presents an ablation study evaluating the impact of different components of the Take-along Visual Conditioning (TVC) system on reasoning performance.  It compares the performance of a baseline model (no TVC) against models using only periodic visual calibration (PVC), only dynamic visual reaffirmation (DVR), and the full TVC system across multiple reasoning benchmarks (MathVista, MathVision, MathVerse). The results demonstrate that the TVC system, combining both PVC and DVR, significantly enhances reasoning capabilities on both general and task-specific benchmarks.
> <details>
> <summary>read the caption</summary>
> Table 2: Ablations on the TVC System. TVC enhances reasoning capabilities, showing significant improvements on both general and task-specific reasoning benchmarks.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S4.T3.5.1">
<tr class="ltx_tr" id="S4.T3.5.1.1">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_tt" id="S4.T3.5.1.1.1">Method</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T3.5.1.1.2">MathVista</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T3.5.1.1.3">MathVision</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T3.5.1.1.4">MathVerse</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T3.5.1.1.5">Avg</td>
</tr>
<tr class="ltx_tr" id="S4.T3.5.1.2">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S4.T3.5.1.2.1">TVC Baseline</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.5.1.2.2">68.3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.5.1.2.3">21.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.5.1.2.4">39.6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.5.1.2.5">43.1</td>
</tr>
<tr class="ltx_tr" id="S4.T3.5.1.3">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T3.5.1.3.1">+ 2x2 Avg Pooling</td>
<td class="ltx_td ltx_align_center" id="S4.T3.5.1.3.2">67.8</td>
<td class="ltx_td ltx_align_center" id="S4.T3.5.1.3.3">22.9</td>
<td class="ltx_td ltx_align_center" id="S4.T3.5.1.3.4">38.3</td>
<td class="ltx_td ltx_align_center" id="S4.T3.5.1.3.5">43.0</td>
</tr>
<tr class="ltx_tr" id="S4.T3.5.1.4">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_r" id="S4.T3.5.1.4.1">+ 4x4 Avg Pooling</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.5.1.4.2">68.1</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.5.1.4.3">22.7</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.5.1.4.4">38.9</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.5.1.4.5">43.2</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of ablation studies conducted to evaluate the impact of different token compression techniques on the model's performance.  It compares the performance (measured across MathVista, MathVision, and MathVerse benchmarks) of the baseline TVC model with variations using 2x2 and 4x4 average pooling for visual token compression.  The average performance across all three benchmarks is also provided for comparison, illustrating the effect of different compression strategies on the overall model's ability to reason effectively.
> <details>
> <summary>read the caption</summary>
> Table 3: Ablations on Token Compression.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="A3.T4.4">
<tr class="ltx_tr" id="A3.T4.4.1">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_tt" id="A3.T4.4.1.1"><span class="ltx_text" id="A3.T4.4.1.1.1" style="font-size:90%;">Config</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A3.T4.4.1.2"><span class="ltx_text" id="A3.T4.4.1.2.1" style="font-size:90%;">SFT</span></td>
</tr>
<tr class="ltx_tr" id="A3.T4.4.2">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A3.T4.4.2.1"><span class="ltx_text" id="A3.T4.4.2.1.1" style="font-size:90%;">Deepspeed</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T4.4.2.2"><span class="ltx_text" id="A3.T4.4.2.2.1" style="font-size:90%;">Zero3</span></td>
</tr>
<tr class="ltx_tr" id="A3.T4.4.3">
<td class="ltx_td ltx_align_left ltx_border_r" id="A3.T4.4.3.1"><span class="ltx_text" id="A3.T4.4.3.1.1" style="font-size:90%;">Epoch</span></td>
<td class="ltx_td ltx_align_center" id="A3.T4.4.3.2"><span class="ltx_text" id="A3.T4.4.3.2.1" style="font-size:90%;">5</span></td>
</tr>
<tr class="ltx_tr" id="A3.T4.4.4">
<td class="ltx_td ltx_align_left ltx_border_r" id="A3.T4.4.4.1"><span class="ltx_text" id="A3.T4.4.4.1.1" style="font-size:90%;">Warmup Ratio</span></td>
<td class="ltx_td ltx_align_center" id="A3.T4.4.4.2"><span class="ltx_text" id="A3.T4.4.4.2.1" style="font-size:90%;">0.1</span></td>
</tr>
<tr class="ltx_tr" id="A3.T4.4.5">
<td class="ltx_td ltx_align_left ltx_border_r" id="A3.T4.4.5.1"><span class="ltx_text" id="A3.T4.4.5.1.1" style="font-size:90%;">Max Grad Norm</span></td>
<td class="ltx_td ltx_align_center" id="A3.T4.4.5.2"><span class="ltx_text" id="A3.T4.4.5.2.1" style="font-size:90%;">1.0</span></td>
</tr>
<tr class="ltx_tr" id="A3.T4.4.6">
<td class="ltx_td ltx_align_left ltx_border_r" id="A3.T4.4.6.1"><span class="ltx_text" id="A3.T4.4.6.1.1" style="font-size:90%;">Optimizer</span></td>
<td class="ltx_td ltx_align_center" id="A3.T4.4.6.2"><span class="ltx_text" id="A3.T4.4.6.2.1" style="font-size:90%;">AdamW</span></td>
</tr>
<tr class="ltx_tr" id="A3.T4.4.7">
<td class="ltx_td ltx_align_left ltx_border_r" id="A3.T4.4.7.1"><span class="ltx_text" id="A3.T4.4.7.1.1" style="font-size:90%;">Learning rate</span></td>
<td class="ltx_td ltx_align_center" id="A3.T4.4.7.2"><span class="ltx_text" id="A3.T4.4.7.2.1" style="font-size:90%;">2e-5</span></td>
</tr>
<tr class="ltx_tr" id="A3.T4.4.8">
<td class="ltx_td ltx_align_left ltx_border_r" id="A3.T4.4.8.1"><span class="ltx_text" id="A3.T4.4.8.1.1" style="font-size:90%;">Learning rate scheduler</span></td>
<td class="ltx_td ltx_align_center" id="A3.T4.4.8.2"><span class="ltx_text" id="A3.T4.4.8.2.1" style="font-size:90%;">Cosine</span></td>
</tr>
<tr class="ltx_tr" id="A3.T4.4.9">
<td class="ltx_td ltx_align_left ltx_border_r" id="A3.T4.4.9.1"><span class="ltx_text" id="A3.T4.4.9.1.1" style="font-size:90%;">Text max length</span></td>
<td class="ltx_td ltx_align_center" id="A3.T4.4.9.2"><span class="ltx_text" id="A3.T4.4.9.2.1" style="font-size:90%;">8192</span></td>
</tr>
<tr class="ltx_tr" id="A3.T4.4.10">
<td class="ltx_td ltx_align_left ltx_border_r" id="A3.T4.4.10.1"><span class="ltx_text" id="A3.T4.4.10.1.1" style="font-size:90%;">Batch size per GPU</span></td>
<td class="ltx_td ltx_align_center" id="A3.T4.4.10.2"><span class="ltx_text" id="A3.T4.4.10.2.1" style="font-size:90%;">1</span></td>
</tr>
<tr class="ltx_tr" id="A3.T4.4.11">
<td class="ltx_td ltx_align_left ltx_border_r" id="A3.T4.4.11.1"><span class="ltx_text" id="A3.T4.4.11.1.1" style="font-size:90%;">Gradient Accumulation Steps</span></td>
<td class="ltx_td ltx_align_center" id="A3.T4.4.11.2"><span class="ltx_text" id="A3.T4.4.11.2.1" style="font-size:90%;">4</span></td>
</tr>
<tr class="ltx_tr" id="A3.T4.4.12">
<td class="ltx_td ltx_align_left ltx_border_r" id="A3.T4.4.12.1"><span class="ltx_text" id="A3.T4.4.12.1.1" style="font-size:90%;">GPU</span></td>
<td class="ltx_td ltx_align_center" id="A3.T4.4.12.2"><span class="ltx_text" id="A3.T4.4.12.2.1" style="font-size:90%;">64×H20-96G</span></td>
</tr>
<tr class="ltx_tr" id="A3.T4.4.13">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_r" id="A3.T4.4.13.1"><span class="ltx_text" id="A3.T4.4.13.1.1" style="font-size:90%;">Precision</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T4.4.13.2"><span class="ltx_text" id="A3.T4.4.13.2.1" style="font-size:90%;">Bf16</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 Table 4 provides a comprehensive overview of the hyperparameters used during the training phase of the Take-along Visual Conditioning (TVC) system.  It details the specific configurations and settings employed to optimize the model's performance. This includes information about the deepspeed configuration, number of training epochs, learning rate and scheduler, maximum gradient norm, optimizer used, text maximum length, batch size per GPU, and gradient accumulation steps.  The precision of the training process is also specified, providing a clear picture of the technical specifications behind the training methodology.
> <details>
> <summary>read the caption</summary>
> Table 4: The detailed training hyperparameters.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="A3.T5.5.1">
<tr class="ltx_tr" id="A3.T5.5.1.1">
<td class="ltx_td ltx_align_center ltx_border_tt" id="A3.T5.5.1.1.1">Datasets</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A3.T5.5.1.1.2">Samples</td>
</tr>
<tr class="ltx_tr" id="A3.T5.5.1.2">
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T5.5.1.2.1">MathV360K <cite class="ltx_cite ltx_citemacro_citep">(Shi et al., <a class="ltx_ref" href="https://arxiv.org/html/2503.13360v1#bib.bib30" title="">2024</a>)</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T5.5.1.2.2">221K</td>
</tr>
<tr class="ltx_tr" id="A3.T5.5.1.3">
<td class="ltx_td ltx_align_center" id="A3.T5.5.1.3.1">Geo170K <cite class="ltx_cite ltx_citemacro_citep">(Gao et al., <a class="ltx_ref" href="https://arxiv.org/html/2503.13360v1#bib.bib10" title="">2023</a>)</cite>
</td>
<td class="ltx_td ltx_align_center" id="A3.T5.5.1.3.2">22K</td>
</tr>
<tr class="ltx_tr" id="A3.T5.5.1.4">
<td class="ltx_td ltx_align_center" id="A3.T5.5.1.4.1">LLaVA-OneVision <cite class="ltx_cite ltx_citemacro_citep">(Li et al., <a class="ltx_ref" href="https://arxiv.org/html/2503.13360v1#bib.bib16" title="">2024</a>)</cite>
</td>
<td class="ltx_td ltx_align_center" id="A3.T5.5.1.4.2">97K</td>
</tr>
<tr class="ltx_tr" id="A3.T5.5.1.5">
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T5.5.1.5.1">Cambrian-1 <cite class="ltx_cite ltx_citemacro_citep">(Tong et al., <a class="ltx_ref" href="https://arxiv.org/html/2503.13360v1#bib.bib33" title="">2024</a>)</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T5.5.1.5.2">1K</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table details the composition of the training data used for the Take-along Visual Conditioning (TVC) model.  It lists the publicly available datasets that were combined to create the TVC training set and specifies the number of samples contributed by each dataset.
> <details>
> <summary>read the caption</summary>
> Table 5: Details on the TVC’s training data, which is derived from publicly available datasets.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2503.13360/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.13360/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.13360/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.13360/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.13360/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.13360/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.13360/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.13360/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.13360/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.13360/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.13360/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.13360/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.13360/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}