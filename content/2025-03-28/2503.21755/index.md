---
title: "VBench-2.0: Advancing Video Generation Benchmark Suite for Intrinsic Faithfulness"
summary: "VBench 2.0: A new benchmark suite advancing video generation evaluation with intrinsic faithfulness metrics."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Computer Vision", "Video Understanding", "🏢 Shanghai Artificial Intelligence Laboratory",]
showSummary: true
date: 2025-03-27
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2503.21755 {{< /keyword >}}
{{< keyword icon="writer" >}} Dian Zheng et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-03-28 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2503.21755" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2503.21755" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2503.21755/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Video generation is advancing, but existing benchmarks mainly assess superficial aspects like aesthetics and prompt adherence. These metrics don't capture **intrinsic faithfulness**: adherence to physical laws, commonsense, and anatomical correctness. Current models struggle with these deeper aspects of realism which limits 

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} VBench 2.0 evaluates video generation models on intrinsic faithfulness: human fidelity, controllability, creativity, physics, and commonsense. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} The benchmark uses a combination of generalist (VLMs, LLMs) and specialist evaluation methods for comprehensive assessment. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Experiments reveal strengths/weaknesses of current models, highlighting challenges in complex plots, dynamic changes, and commonsense reasoning. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This work introduces VBench 2.0, a comprehensive benchmark to evaluate intrinsic video generation faithfulness. It will assist researchers to **develop better video generation models.** The standardized framework enables **objective comparisons**, driving advancements in this exciting field and facilitating the creation of more realistic and useful AI systems.

------
#### Visual Insights



![](https://arxiv.org/html/2503.21755/x2.png)

> 🔼 Figure 1 illustrates the evolution of video generation benchmarks, focusing on VBench-2.0. Panel (a) shows the advancement of video generative models from superficial faithfulness (achieving visual realism without adhering to real-world physics) to intrinsic faithfulness (demonstrating both visual and conceptual realism, encompassing commonsense reasoning and adherence to physical laws). It highlights how VBench-2.0 expands upon its predecessor (VBench) by including more complex criteria. Panel (b) presents the structured evaluation suite of VBench-2.0, which contains 5 high-level categories and 18 fine-grained capability dimensions for a more comprehensive assessment of video generation models.
> <details>
> <summary>read the caption</summary>
> Figure 1:  Overview of VBench-2.0. (a) Scope of VBench-2.0. Video generative models have progressed from achieving superficial faithfulness in fundamental technical aspects such as pixel fidelity and basic prompt adherence, to addressing more complex challenges associated with intrinsic faithfulness, including commonsense reasoning, physics-based realism, human motion, and creative composition. While VBench primarily assessed early-stage technical quality, VBench-2.0 expands the benchmarking framework to evaluate these advanced capabilities, ensuring a more comprehensive assessment of next-generation models. (b) Evaluation Dimension of VBench-2.0. VBench-2.0 introduces a structured evaluation suite comprising five broad categories and 18 fine-grained capability dimensions.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S2.T1.6.1">
<tr class="ltx_tr" id="S2.T1.6.1.1">
<td class="ltx_td ltx_border_r ltx_border_t" id="S2.T1.6.1.1.1"></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" colspan="3" id="S2.T1.6.1.1.2"><span class="ltx_text ltx_font_bold" id="S2.T1.6.1.1.2.1">Superficial Faithfulness</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" colspan="5" id="S2.T1.6.1.1.3"><span class="ltx_text ltx_font_bold" id="S2.T1.6.1.1.3.1">Intrinsic Faithfulness</span></td>
</tr>
<tr class="ltx_tr" id="S2.T1.6.1.2">
<td class="ltx_td ltx_border_r" id="S2.T1.6.1.2.1"></td>
<td class="ltx_td ltx_nopad_r ltx_align_right" id="S2.T1.6.1.2.2">
<span class="ltx_ERROR undefined" id="S2.T1.6.1.2.2.1">\Centerstack</span><span class="ltx_text ltx_font_italic" id="S2.T1.6.1.2.2.2">Frame</span>
</td>
<td class="ltx_td" id="S2.T1.6.1.2.3"></td>
<td class="ltx_td" id="S2.T1.6.1.2.4"></td>
<td class="ltx_td" id="S2.T1.6.1.2.5"></td>
<td class="ltx_td" id="S2.T1.6.1.2.6"></td>
<td class="ltx_td" id="S2.T1.6.1.2.7"></td>
<td class="ltx_td" id="S2.T1.6.1.2.8"></td>
<td class="ltx_td" id="S2.T1.6.1.2.9"></td>
</tr>
<tr class="ltx_tr" id="S2.T1.6.1.3">
<td class="ltx_td" id="S2.T1.6.1.3.1"></td>
<td class="ltx_td ltx_align_right" id="S2.T1.6.1.3.2">
<span class="ltx_ERROR undefined" id="S2.T1.6.1.3.2.1">\Centerstack</span><span class="ltx_text ltx_font_italic" id="S2.T1.6.1.3.2.2">Temp</span>
</td>
<td class="ltx_td" id="S2.T1.6.1.3.3"></td>
<td class="ltx_td" id="S2.T1.6.1.3.4"></td>
<td class="ltx_td" id="S2.T1.6.1.3.5"></td>
<td class="ltx_td" id="S2.T1.6.1.3.6"></td>
<td class="ltx_td" id="S2.T1.6.1.3.7"></td>
<td class="ltx_td" id="S2.T1.6.1.3.8"></td>
<td class="ltx_td" id="S2.T1.6.1.3.9"></td>
</tr>
<tr class="ltx_tr" id="S2.T1.6.1.4">
<td class="ltx_td" id="S2.T1.6.1.4.1"></td>
<td class="ltx_td ltx_align_right" id="S2.T1.6.1.4.2">
<span class="ltx_ERROR undefined" id="S2.T1.6.1.4.2.1">\Centerstack</span><span class="ltx_text ltx_font_italic" id="S2.T1.6.1.4.2.2">Simp</span>
</td>
<td class="ltx_td" id="S2.T1.6.1.4.3"></td>
<td class="ltx_td" id="S2.T1.6.1.4.4"></td>
<td class="ltx_td" id="S2.T1.6.1.4.5"></td>
<td class="ltx_td" id="S2.T1.6.1.4.6"></td>
<td class="ltx_td" id="S2.T1.6.1.4.7"></td>
<td class="ltx_td" id="S2.T1.6.1.4.8"></td>
<td class="ltx_td" id="S2.T1.6.1.4.9"></td>
</tr>
<tr class="ltx_tr" id="S2.T1.6.1.5">
<td class="ltx_td" id="S2.T1.6.1.5.1"></td>
<td class="ltx_td ltx_align_right" id="S2.T1.6.1.5.2">
<span class="ltx_ERROR undefined" id="S2.T1.6.1.5.2.1">\Centerstack</span><span class="ltx_text ltx_font_italic" id="S2.T1.6.1.5.2.2">Comp</span>
</td>
<td class="ltx_td" id="S2.T1.6.1.5.3"></td>
<td class="ltx_td" id="S2.T1.6.1.5.4"></td>
<td class="ltx_td" id="S2.T1.6.1.5.5"></td>
<td class="ltx_td" id="S2.T1.6.1.5.6"></td>
<td class="ltx_td" id="S2.T1.6.1.5.7"></td>
<td class="ltx_td" id="S2.T1.6.1.5.8"></td>
<td class="ltx_td" id="S2.T1.6.1.5.9"></td>
</tr>
<tr class="ltx_tr" id="S2.T1.6.1.6">
<td class="ltx_td" id="S2.T1.6.1.6.1"></td>
<td class="ltx_td ltx_align_right" id="S2.T1.6.1.6.2">
<span class="ltx_ERROR undefined" id="S2.T1.6.1.6.2.1">\Centerstack</span><span class="ltx_text ltx_font_italic" id="S2.T1.6.1.6.2.2">Com</span>
</td>
<td class="ltx_td" id="S2.T1.6.1.6.3"></td>
<td class="ltx_td" id="S2.T1.6.1.6.4"></td>
<td class="ltx_td" id="S2.T1.6.1.6.5"></td>
<td class="ltx_td" id="S2.T1.6.1.6.6"></td>
<td class="ltx_td" id="S2.T1.6.1.6.7"></td>
<td class="ltx_td" id="S2.T1.6.1.6.8"></td>
<td class="ltx_td" id="S2.T1.6.1.6.9"></td>
</tr>
<tr class="ltx_tr" id="S2.T1.6.1.7">
<td class="ltx_td" id="S2.T1.6.1.7.1"></td>
<td class="ltx_td ltx_align_center" id="S2.T1.6.1.7.2">
<span class="ltx_ERROR undefined" id="S2.T1.6.1.7.2.1">\Centerstack</span><span class="ltx_text ltx_font_italic" id="S2.T1.6.1.7.2.2">Phy</span>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_right" id="S2.T1.6.1.7.3">
<span class="ltx_ERROR undefined" id="S2.T1.6.1.7.3.1">\Centerstack</span><span class="ltx_text ltx_font_italic" id="S2.T1.6.1.7.3.2">Human</span>
</td>
<td class="ltx_td" id="S2.T1.6.1.7.4"></td>
<td class="ltx_td" id="S2.T1.6.1.7.5"></td>
<td class="ltx_td" id="S2.T1.6.1.7.6"></td>
<td class="ltx_td" id="S2.T1.6.1.7.7"></td>
<td class="ltx_td" id="S2.T1.6.1.7.8"></td>
<td class="ltx_td" id="S2.T1.6.1.7.9"></td>
</tr>
<tr class="ltx_tr" id="S2.T1.6.1.8">
<td class="ltx_td" id="S2.T1.6.1.8.1"></td>
<td class="ltx_td ltx_nopad_r ltx_align_right" id="S2.T1.6.1.8.2">
<span class="ltx_ERROR undefined" id="S2.T1.6.1.8.2.1">\Centerstack</span><span class="ltx_text ltx_font_italic" id="S2.T1.6.1.8.2.2">Cplx</span>
</td>
<td class="ltx_td ltx_align_right" colspan="-1" id="S2.T1.6.1.8.3">Anat</td>
<td class="ltx_td" id="S2.T1.6.1.8.4"></td>
<td class="ltx_td" id="S2.T1.6.1.8.5"></td>
<td class="ltx_td" id="S2.T1.6.1.8.6"></td>
<td class="ltx_td" id="S2.T1.6.1.8.7"></td>
<td class="ltx_td" id="S2.T1.6.1.8.8"></td>
<td class="ltx_td" id="S2.T1.6.1.8.9"></td>
</tr>
<tr class="ltx_tr" id="S2.T1.6.1.9">
<td class="ltx_td" id="S2.T1.6.1.9.1"></td>
<td class="ltx_td ltx_align_right" id="S2.T1.6.1.9.2">Pmpt</td>
<td class="ltx_td" id="S2.T1.6.1.9.3"></td>
<td class="ltx_td" id="S2.T1.6.1.9.4"></td>
<td class="ltx_td" id="S2.T1.6.1.9.5"></td>
<td class="ltx_td" id="S2.T1.6.1.9.6"></td>
<td class="ltx_td" id="S2.T1.6.1.9.7"></td>
<td class="ltx_td" id="S2.T1.6.1.9.8"></td>
<td class="ltx_td" id="S2.T1.6.1.9.9"></td>
</tr>
<tr class="ltx_tr" id="S2.T1.6.1.10">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S2.T1.6.1.10.1">VBench <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.21755v1#bib.bib32" title=""><span class="ltx_text" style="font-size:90%;">32</span></a>, <a class="ltx_ref" href="https://arxiv.org/html/2503.21755v1#bib.bib33" title=""><span class="ltx_text" style="font-size:90%;">33</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.6.1.10.2">✓</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.6.1.10.3">✓</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S2.T1.6.1.10.4">✓</td>
<td class="ltx_td ltx_border_t" id="S2.T1.6.1.10.5"></td>
<td class="ltx_td ltx_border_t" id="S2.T1.6.1.10.6"></td>
<td class="ltx_td ltx_border_t" id="S2.T1.6.1.10.7"></td>
<td class="ltx_td ltx_border_t" id="S2.T1.6.1.10.8"></td>
<td class="ltx_td ltx_border_t" id="S2.T1.6.1.10.9"></td>
</tr>
<tr class="ltx_tr" id="S2.T1.6.1.11">
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T1.6.1.11.1">T2V-CompBench <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.21755v1#bib.bib66" title=""><span class="ltx_text" style="font-size:90%;">66</span></a>]</cite>
</td>
<td class="ltx_td" id="S2.T1.6.1.11.2"></td>
<td class="ltx_td" id="S2.T1.6.1.11.3"></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T1.6.1.11.4">✓</td>
<td class="ltx_td ltx_align_center" id="S2.T1.6.1.11.5">✓</td>
<td class="ltx_td ltx_align_center" id="S2.T1.6.1.11.6">✓</td>
<td class="ltx_td" id="S2.T1.6.1.11.7"></td>
<td class="ltx_td" id="S2.T1.6.1.11.8"></td>
<td class="ltx_td" id="S2.T1.6.1.11.9"></td>
</tr>
<tr class="ltx_tr" id="S2.T1.6.1.12">
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T1.6.1.12.1">PhyGenBench <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.21755v1#bib.bib49" title=""><span class="ltx_text" style="font-size:90%;">49</span></a>]</cite>
</td>
<td class="ltx_td" id="S2.T1.6.1.12.2"></td>
<td class="ltx_td" id="S2.T1.6.1.12.3"></td>
<td class="ltx_td ltx_border_r" id="S2.T1.6.1.12.4"></td>
<td class="ltx_td" id="S2.T1.6.1.12.5"></td>
<td class="ltx_td" id="S2.T1.6.1.12.6"></td>
<td class="ltx_td ltx_align_center" id="S2.T1.6.1.12.7">✓</td>
<td class="ltx_td" id="S2.T1.6.1.12.8"></td>
<td class="ltx_td" id="S2.T1.6.1.12.9"></td>
</tr>
<tr class="ltx_tr" id="S2.T1.6.1.13">
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T1.6.1.13.1">StoryEval <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.21755v1#bib.bib81" title=""><span class="ltx_text" style="font-size:90%;">81</span></a>]</cite>
</td>
<td class="ltx_td" id="S2.T1.6.1.13.2"></td>
<td class="ltx_td ltx_align_center" id="S2.T1.6.1.13.3">✓</td>
<td class="ltx_td ltx_border_r" id="S2.T1.6.1.13.4"></td>
<td class="ltx_td" id="S2.T1.6.1.13.5"></td>
<td class="ltx_td" id="S2.T1.6.1.13.6"></td>
<td class="ltx_td" id="S2.T1.6.1.13.7"></td>
<td class="ltx_td" id="S2.T1.6.1.13.8"></td>
<td class="ltx_td ltx_align_center" id="S2.T1.6.1.13.9">✓</td>
</tr>
<tr class="ltx_tr" id="S2.T1.6.1.14">
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r" id="S2.T1.6.1.14.1"><span class="ltx_text ltx_font_bold" id="S2.T1.6.1.14.1.1">VBench-2.0 (Ours)</span></td>
<td class="ltx_td ltx_border_b" id="S2.T1.6.1.14.2"></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S2.T1.6.1.14.3">✓</td>
<td class="ltx_td ltx_border_b ltx_border_r" id="S2.T1.6.1.14.4"></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S2.T1.6.1.14.5">✓</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S2.T1.6.1.14.6">✓</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S2.T1.6.1.14.7">✓</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S2.T1.6.1.14.8">✓</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S2.T1.6.1.14.9">✓</td>
</tr>
</table>{{< /table-caption >}}

> 🔼 Table 1 compares several video generation benchmarks based on their evaluation capabilities.  It highlights the key differences in the aspects they evaluate, such as per-frame visual quality, temporal coherence, response to simple and complex prompts, creative composition, adherence to commonsense, physics-based realism, and human anatomy. The table emphasizes that VBench-2.0 is unique in its comprehensive assessment of  intrinsic faithfulness, a deeper level of realism going beyond the superficial faithfulness assessed by earlier benchmarks like VBench. This makes VBench-2.0 a valuable tool for evaluating next-generation video generation models.
> <details>
> <summary>read the caption</summary>
> Table 1: Comparison of Video Generation Benchmarks. We compare existing video generation benchmarks based on their evaluation aspects. VBench-2.0 is the first comprehensive benchmark to assess intrinsic faithfulness in video generation, complementing VBench [32, 33]. Detailed aspects include per-frame quality (Frame Wise), temporal consistency (Temp Cons), adherence to simple prompts (Simp Pmpt), compositional creativity (Comp Crea), commonsense reasoning (Com Sense), physics-based realism (Phy), human anatomy (Human Anat), and adherence to complex prompts (Cplx Pmpt).
> </details>





### In-depth insights


#### Faithfulness Eval
Evaluating faithfulness in video generation is crucial, moving beyond superficial metrics to assess how well generated content aligns with real-world principles. **This requires benchmarks that can automatically assess physical laws, commonsense reasoning, anatomical correctness, and compositional integrity.** Addressing this requires integrating generalist models like VLMs and LLMs with specialized anomaly detection methods. Manual assessment is still indispensable for checking physical state change ability like the mechanical thermal and material transition. It is hard to ensure 3D consistency with the absence of 3D truth data. For human-related dimensions, it is critical to determine the anomalies. Instance preservation is needed for keeping the object in generated video

#### VBench-2.0 Suite
The VBench-2.0 suite marks a significant advancement in video generation evaluation. Shifting from superficial metrics like aesthetics, it delves into **intrinsic faithfulness**. This includes human fidelity, controllability, creativity, physics, and commonsense. The suite's strength lies in its fine-grained assessment, breaking down each dimension into sub-abilities evaluated via diverse methods. **Leveraging both generalist VLMs/LLMs and specialist detectors** ensures robust results. A key aspect is the human preference alignment, validating automated evaluations. VBench-2.0's structured approach addresses the limitations of previous benchmarks, fostering more realistic and reliable video generation progress.

#### Prompt Refinement
**Prompt refinement** emerges as a crucial element in modern video generation, showcasing how rewriting or augmenting text prompts significantly impacts video quality. The trade-off between **controllability** and **creativity** is highlighted, where models like Sora excel in creative tasks but struggle with precise control, and vice versa. The use of prompt refiners reveals that even without inherent understanding, a well-crafted prompt can guide models towards physically plausible outcomes. Prompt refinement is more than a preprocessing tool; it's critical for realistic simulation, and future refiners should balance precision with diversity to create open-ended content.  Furthermore, the prompt refinement seems to have no or little impact on some dimensions, likely due to limitations in model comprehension or data quality. 

#### SOTA Model Weakness
Analyzing SOTA models reveals inherent weaknesses despite superficial advancements. **Controllability in simple dynamics** falters, indicating difficulty in accurate object manipulation and attribute changes. There are also issues in **generating complex plots**, with models struggling to follow detailed text descriptions involving multiple scenes or logical progressions. Also present is **surprising weakness** when it comes to accurate object manipulation. These shortcomings reveal limitations in the current modeling approach, necessitating improved strategies to address these inherent issues and enhance model performance beyond superficial achievements. They also showcase a need for more sophisticated instructions.

#### Future Video AI
The prospect of 'Future Video AI' is exciting. It could **revolutionize content creation**, making it faster and more accessible. Imagine AI generating realistic, engaging videos from simple text prompts, opening doors for personalized education, immersive entertainment, and efficient marketing. However, we need to address challenges like **ensuring factual accuracy**, mitigating potential biases, and preventing misuse for malicious purposes. Ethical considerations and robust safety measures are crucial to harness the benefits of future Video AI responsibly. This includes establishing clear guidelines for transparency, accountability, and user control, paving the way for a future where AI-powered video enhances creativity and enriches our lives while upholding ethical standards.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2503.21755/x3.png)

> 🔼 This figure displays a radar chart visualizing the performance of four state-of-the-art (SOTA) video generation models across 18 distinct dimensions defined by the VBench-2.0 benchmark. Each dimension represents a specific aspect of video generation quality, such as human fidelity, controllability, creativity, physics, and common sense.  The radar chart allows for a quick visual comparison of the models' strengths and weaknesses in each of these areas.  The scores are normalized, ensuring a fair comparison despite variations in absolute values between the different dimensions.  More detailed numerical results are available in Table 2 of the paper.
> <details>
> <summary>read the caption</summary>
> Figure 2:  VBench-2.0 Evaluation Results of SOTA Models. The figure presents the evaluation results of four recent state-of-the-art video generation models across 18 VBench-2.0 dimensions. The results are normalized per dimension for a clearer comparison. For detailed numerical results, refer to Table 2.
> </details>



![](https://arxiv.org/html/2503.21755/extracted/6315755/figures/fig_paper_interface.jpg)

> 🔼 This figure presents a statistical overview of the prompts used in the VBench-2.0 benchmark suite.  The left panel displays a histogram showing the distribution of word counts across all prompts. This reveals the overall length and complexity of the prompts used to evaluate different aspects of video generation. The right panel shows a bar chart illustrating the number of prompts designed for each of the 18 fine-grained evaluation dimensions within the VBench-2.0 framework. This provides insights into the relative emphasis placed on each dimension during the evaluation process.
> <details>
> <summary>read the caption</summary>
> Figure 3: Overview of Prompt Suite Statistics. Left: distribution of words in the prompt suites. Right: number of prompts per evaluation dimension.
> </details>



![](https://arxiv.org/html/2503.21755/x4.png)

> 🔼 This figure shows the user interface for human preference annotation in the VBench-2.0 benchmark. The top section displays the question description, the right section lists the choices available for the annotators, and the bottom-left section shows controls for starting, stopping, and playing back the videos.
> <details>
> <summary>read the caption</summary>
> Figure 4: Interface for Human Preference Annotation. Top: Question descriptions. Right: Choices available to annotators. Bottom left: Controls for stopping and playback.
> </details>



![](https://arxiv.org/html/2503.21755/x5.png)

> 🔼 This figure displays the correlation between human judgment and VBench-2.0 evaluation results across 18 different video generation capabilities. Each plot shows the win ratios from human preference tests (horizontal axis) and VBench-2.0 automated evaluation (vertical axis) for a given video generation model.  A linear fit and Spearman's correlation coefficient (ρ) are calculated for each dimension to quantitatively assess the agreement between human and automated evaluations.  The results demonstrate a high correlation, suggesting that VBench-2.0 aligns well with human judgment across all the tested dimensions.
> <details>
> <summary>read the caption</summary>
> Figure 5: Human Alignment of VBench-2.0 Evaluation. Each plot represents the alignment verification for a specific VBench-2.0 dimension. In each plot, a dot corresponds to the human preference win ratio (horizontal axis) and the VBench-2.0 evaluation win ratio (vertical axis) for a given video generation model. A linear fit is applied to visualize the correlation, and Spearman’s correlation coefficient (ρ𝜌\rhoitalic_ρ) is computed for each dimension. Experiments show that VBench-2.0 evaluations closely align with human judgement in all dimensions.
> </details>



![](https://arxiv.org/html/2503.21755/x6.png)

> 🔼 This figure shows an example of the evaluation for the Mechanics sub-dimension within the Physics dimension of the VBench-2.0 benchmark.  It illustrates how the benchmark assesses whether video generation models adhere to basic mechanical principles.  The question is posed: 'Whether the soda can be squeezed as air is gradually and forcefully removed.' Then it shows two possible video generation results, one where the soda can remains unchanged (score: 0) and one where it is compressed (score: 1), demonstrating the evaluation criteria used to assess the model's understanding of mechanical properties like compression and force.
> <details>
> <summary>read the caption</summary>
> Figure S6: Example for Mechanics.
> </details>



![](https://arxiv.org/html/2503.21755/x7.png)

> 🔼 The figure shows an example of the Material evaluation dimension in VBench-2.0.  It presents a question and two possible answers to assess a video generation model's ability to simulate material properties realistically. The question is about whether a grey color results from mixing equal amounts of white and black paint. Option (a) shows the incorrect outcome (no grey), while option (b) displays the correct outcome (yes, grey). This tests the model's understanding of basic material interactions.
> <details>
> <summary>read the caption</summary>
> Figure S7: Example for Material.
> </details>



![](https://arxiv.org/html/2503.21755/x8.png)

> 🔼 This figure shows an example of the Thermotics evaluation dimension in VBench-2.0.  The prompt asks whether dry ice will remain solid and maintain its original shape at -90°C.  Option (a) shows a video where this is not the case, receiving a score of 0. Option (b) illustrates a video where the dry ice behaves correctly, resulting in a score of 1. This highlights the benchmark's ability to assess a model's understanding of material properties and their changes under varying temperature conditions.
> <details>
> <summary>read the caption</summary>
> Figure S8: Example for Thermotics.
> </details>



![](https://arxiv.org/html/2503.21755/x9.png)

> 🔼 This figure shows an example of the Multi-View Consistency evaluation from VBench-2.0.  It visually demonstrates how the benchmark assesses whether a video maintains geometric consistency, especially when there is fast camera motion. The figure likely contrasts videos where objects maintain their shape and spatial relationships despite camera movement against those where they do not.
> <details>
> <summary>read the caption</summary>
> Figure S9: Example for Multi-View Consistency.
> </details>



![](https://arxiv.org/html/2503.21755/x10.png)

> 🔼 This figure demonstrates the diversity aspect of the VBench-2.0 benchmark.  It shows two example videos generated by different models in response to the same prompt.  The goal is to illustrate how diverse the outputs can be when models try to fulfill a prompt, and that diversity is one way to measure creativity in video generation.  Visual differences in style and content composition highlight the varying results.
> <details>
> <summary>read the caption</summary>
> Figure S10: Example for Diversity.
> </details>



![](https://arxiv.org/html/2503.21755/x11.png)

> 🔼 This figure shows example results for the Composition sub-dimension of the VBench-2.0 benchmark suite.  The benchmark evaluates the ability of video generation models to create novel and varied compositions, going beyond simple arrangements.  The figure shows examples of video generation model outputs alongside binary evaluations (0 or 1) indicating whether the model succeeded in meeting the specific compositional criteria given in the prompt. These examples illustrate different levels of complexity in composition, such as simple scene arrangements, the combination of multiple entities, and more complex interactions between multiple entities. The goal is to test the model's ability to create both plausible and novel visual combinations, not just basic arrangements.
> <details>
> <summary>read the caption</summary>
> Figure S11: Example for Composition.
> </details>



![](https://arxiv.org/html/2503.21755/x12.png)

> 🔼 This figure shows an example of evaluating the Dynamic Spatial Relationship dimension in VBench-2.0.  It illustrates a scenario where a dog's position relative to a sofa changes according to the prompt.  The figure displays a sequence of video frames showing the dog initially to the right of the sofa, and then moving to the left of the sofa as instructed by the prompt.  This demonstrates the model's ability to accurately render spatial relationships and object movements in response to detailed textual instructions.
> <details>
> <summary>read the caption</summary>
> Figure S12: Example for Dynamic Spatial Relationship.
> </details>



![](https://arxiv.org/html/2503.21755/x13.png)

> 🔼 This figure shows an example of evaluating the Dynamic Attribute dimension in VBench-2.0.  The Dynamic Attribute dimension assesses whether a model accurately changes the attributes of objects or creatures in a video as specified in a text prompt. The example shown likely illustrates a change in the color of an object.  A question is posed: 'Does the wall change from yellow to grey?' The image then displays two videos: one where the wall remains yellow (incorrect), and another where the wall changes to grey (correct). This demonstrates the evaluation process; the model's ability to modify attributes successfully is judged based on whether it reflects the changes described in the prompt.
> <details>
> <summary>read the caption</summary>
> Figure S13: Example for Dynamic Attribute.
> </details>



![](https://arxiv.org/html/2503.21755/x14.png)

> 🔼 This figure shows an example of evaluating the 'Motion Order Understanding' dimension in VBench-2.0.  The evaluation involves a video generated by a model in response to a prompt specifying a sequence of actions.  The image displays the prompt question and example video frames, illustrating whether the model correctly generated the actions in the specified order. The caption shows two example prompts and two responses for the assessment.
> <details>
> <summary>read the caption</summary>
> Figure S14: Example for Motion Order Understanding.
> </details>



![](https://arxiv.org/html/2503.21755/x15.png)

> 🔼 This figure shows an example of evaluating the 'Human Interaction' dimension in VBench-2.0.  It demonstrates the assessment of whether video generation models correctly depict interactions between humans. The specific scenario shown involves one person adjusting another person's glasses. This necessitates understanding complex human behavior and the spatial relationships between individuals during the action.
> <details>
> <summary>read the caption</summary>
> Figure S15: Example for Human Interaction.
> </details>



![](https://arxiv.org/html/2503.21755/x16.png)

> 🔼 This figure illustrates the evaluation pipeline and results for the 'Complex Plot' dimension of VBench-2.0.  It shows how a long, multi-part story prompt is broken down into individual plot points.  The video generation model produces a video, and then a Vision-Language Model (VLM) generates a caption describing the video's content.  A Large Language Model (LLM) then compares the VLM's caption to the original prompt's plot points to assess how well the video's narrative matches the intended storyline. The final score reflects the degree of alignment between the generated video and the expected plot progression.  The example uses 'Little Red Riding Hood' as the story prompt.
> <details>
> <summary>read the caption</summary>
> Figure S16: Example for Complex Plot.
> </details>



![](https://arxiv.org/html/2503.21755/x17.png)

> 🔼 This figure showcases an example of dynamic camera motion from video generation models.  Specifically, it demonstrates how well models can produce specified camera movements, such as zooming in or out. This test is part of the Physics dimension within the VBench-2.0 benchmark suite, which evaluates various aspects of video realism beyond visual aesthetics.
> <details>
> <summary>read the caption</summary>
> Figure S17: Example of Dynamic Camera Motion.
> </details>



![](https://arxiv.org/html/2503.21755/x18.png)

> 🔼 This figure shows an example of a complex plot evaluation from the VBench-2.0 benchmark.  The top shows the prompt used for video generation, detailing a multi-step story of Little Red Riding Hood. Below, the evaluation pipeline is illustrated: the prompt is segmented into five key plot points, a video generative model produces a video, and then LLAVA-video and Qwen models are used to assess how well the video matches each plot point. The final score for plot consistency is displayed.
> <details>
> <summary>read the caption</summary>
> Figure S18: Example for Plot Consistency.
> </details>



![](https://arxiv.org/html/2503.21755/x19.png)

> 🔼 This figure shows an example of a complex landscape prompt from the VBench-2.0 evaluation suite.  It illustrates how well a video generation model can create a long, detailed video that accurately reflects a multi-part description of a landscape. The prompt describes a scene shifting from a high-altitude view of an endless ice plain, progressing through changes in time of day and weather, finally ending with the camera pulling back, revealing the aurora borealis in the vastness of the plains.
> <details>
> <summary>read the caption</summary>
> Figure S19: Example for Complex Landscape.
> </details>



![](https://arxiv.org/html/2503.21755/x20.png)

> 🔼 This figure shows examples of human anatomy evaluation in VBench-2.0.  It visually demonstrates instances where video generation models produce anomalies in human figures, such as missing limbs, distorted body parts, and incorrect hand or face structures. These examples highlight the challenges in achieving high-fidelity human representation in generated videos, a key area assessed by VBench-2.0's Human Fidelity dimension.
> <details>
> <summary>read the caption</summary>
> Figure S20: Example for Human Anatomy.
> </details>



![](https://arxiv.org/html/2503.21755/x21.png)

> 🔼 This figure shows an example of evaluating the consistency of human identity in generated videos.  Two video clips are presented, one where the identity of the person remains consistent throughout (high score), and another where the identity changes or is inconsistent (low score). This is assessed using the ArcFace model, measuring the similarity of facial features between frames. Inconsistent identity might be indicated by changes in facial appearance, hair style, or other distinguishing features over the duration of the video.
> <details>
> <summary>read the caption</summary>
> Figure S21: Example for Human Identity.
> </details>



![](https://arxiv.org/html/2503.21755/x22.png)

> 🔼 This figure shows examples of video frames where the human clothes maintain consistency (left) and inconsistency (right) throughout the video.  The evaluation assesses if the generated video shows consistent clothing for the human character across all frames, focusing on color, texture, and overall garment. Inconsistent clothing would involve changes in these attributes or instances where the clothing seemingly disappears or changes arbitrarily.
> <details>
> <summary>read the caption</summary>
> Figure S22: Example for Human Clothes.
> </details>



![](https://arxiv.org/html/2503.21755/x23.png)

> 🔼 This figure shows an example of evaluating the Motion Rationality dimension in VBench-2.0.  The image displays a video still where a person is supposedly opening a window.  The question posed is whether the person in the video truly completes the action of opening the window, which is a crucial element of assessing intrinsic faithfulness.  The 'yes' answer implies that the generated video accurately depicts the entire action, demonstrating an understanding of real-world mechanics, while a 'no' answer indicates a flaw where the motion is incomplete or unrealistic, highlighting a deficiency in the model's commonsense reasoning or physical simulation capabilities.
> <details>
> <summary>read the caption</summary>
> Figure S23: Example for Motion Rationality.
> </details>



![](https://arxiv.org/html/2503.21755/x24.png)

> 🔼 This figure demonstrates the evaluation of instance preservation in video generation models. Instance preservation assesses a model's ability to maintain the correct number of objects throughout a video, even with complex scenarios such as object movement, collisions, and interactions.  The figure likely shows example video frames, highlighting instances where a model successfully preserves object counts (correct) and where it fails (incorrect).  This allows assessment of the model's ability to understand and maintain the consistent number of objects within a video scene, even under dynamic changes.
> <details>
> <summary>read the caption</summary>
> Figure S24: Example for Instance Preservation.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S3.T2.5.1">
<tr class="ltx_tr" id="S3.T2.5.1.1">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T2.5.1.1.1"><span class="ltx_text ltx_font_bold" id="S3.T2.5.1.1.1.1">Models</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_right ltx_border_t" id="S3.T2.5.1.1.2">
<span class="ltx_ERROR undefined" id="S3.T2.5.1.1.2.1">\Centerstack</span><span class="ltx_text ltx_font_bold" id="S3.T2.5.1.1.2.2">Human</span>
</td>
<td class="ltx_td ltx_border_t" id="S3.T2.5.1.1.3"></td>
<td class="ltx_td ltx_border_t" id="S3.T2.5.1.1.4"></td>
<td class="ltx_td ltx_border_t" id="S3.T2.5.1.1.5"></td>
<td class="ltx_td ltx_border_t" id="S3.T2.5.1.1.6"></td>
<td class="ltx_td ltx_border_t" id="S3.T2.5.1.1.7"></td>
<td class="ltx_td ltx_border_t" id="S3.T2.5.1.1.8"></td>
<td class="ltx_td ltx_border_t" id="S3.T2.5.1.1.9"></td>
<td class="ltx_td ltx_border_t" id="S3.T2.5.1.1.10"></td>
</tr>
<tr class="ltx_tr" id="S3.T2.5.1.2">
<td class="ltx_td" id="S3.T2.5.1.2.1"></td>
<td class="ltx_td ltx_align_right" id="S3.T2.5.1.2.2">
<span class="ltx_ERROR undefined" id="S3.T2.5.1.2.2.1">\Centerstack</span><span class="ltx_text ltx_font_bold" id="S3.T2.5.1.2.2.2">Human</span>
</td>
<td class="ltx_td" id="S3.T2.5.1.2.3"></td>
<td class="ltx_td" id="S3.T2.5.1.2.4"></td>
<td class="ltx_td" id="S3.T2.5.1.2.5"></td>
<td class="ltx_td" id="S3.T2.5.1.2.6"></td>
<td class="ltx_td" id="S3.T2.5.1.2.7"></td>
<td class="ltx_td" id="S3.T2.5.1.2.8"></td>
<td class="ltx_td" id="S3.T2.5.1.2.9"></td>
<td class="ltx_td" id="S3.T2.5.1.2.10"></td>
</tr>
<tr class="ltx_tr" id="S3.T2.5.1.3">
<td class="ltx_td" id="S3.T2.5.1.3.1"></td>
<td class="ltx_td ltx_align_right" id="S3.T2.5.1.3.2">
<span class="ltx_ERROR undefined" id="S3.T2.5.1.3.2.1">\Centerstack</span><span class="ltx_text ltx_font_bold" id="S3.T2.5.1.3.2.2">Human</span>
</td>
<td class="ltx_td" id="S3.T2.5.1.3.3"></td>
<td class="ltx_td" id="S3.T2.5.1.3.4"></td>
<td class="ltx_td" id="S3.T2.5.1.3.5"></td>
<td class="ltx_td" id="S3.T2.5.1.3.6"></td>
<td class="ltx_td" id="S3.T2.5.1.3.7"></td>
<td class="ltx_td" id="S3.T2.5.1.3.8"></td>
<td class="ltx_td" id="S3.T2.5.1.3.9"></td>
<td class="ltx_td" id="S3.T2.5.1.3.10"></td>
</tr>
<tr class="ltx_tr" id="S3.T2.5.1.4">
<td class="ltx_td" id="S3.T2.5.1.4.1"></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.5.1.4.2">
<span class="ltx_ERROR undefined" id="S3.T2.5.1.4.2.1">\Centerstack</span><span class="ltx_text ltx_font_bold" id="S3.T2.5.1.4.2.2">Composition</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.5.1.4.3">
<span class="ltx_ERROR undefined" id="S3.T2.5.1.4.3.1">\Centerstack</span><span class="ltx_text ltx_font_bold" id="S3.T2.5.1.4.3.2">Diversity</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.5.1.4.4"><span class="ltx_text ltx_font_bold" id="S3.T2.5.1.4.4.1">Mechanics</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.5.1.4.5"><span class="ltx_text ltx_font_bold" id="S3.T2.5.1.4.5.1">Material</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.5.1.4.6"><span class="ltx_text ltx_font_bold" id="S3.T2.5.1.4.6.1">Thermotics</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_right" id="S3.T2.5.1.4.7">
<span class="ltx_ERROR undefined" id="S3.T2.5.1.4.7.1">\Centerstack</span><span class="ltx_text ltx_font_bold" id="S3.T2.5.1.4.7.2">Multi-view</span>
</td>
<td class="ltx_td" id="S3.T2.5.1.4.8"></td>
<td class="ltx_td" id="S3.T2.5.1.4.9"></td>
<td class="ltx_td" id="S3.T2.5.1.4.10"></td>
</tr>
<tr class="ltx_tr" id="S3.T2.5.1.5">
<td class="ltx_td" id="S3.T2.5.1.5.1"></td>
<td class="ltx_td" id="S3.T2.5.1.5.2"></td>
<td class="ltx_td" id="S3.T2.5.1.5.3"></td>
<td class="ltx_td" id="S3.T2.5.1.5.4"></td>
<td class="ltx_td" id="S3.T2.5.1.5.5"></td>
<td class="ltx_td" id="S3.T2.5.1.5.6"></td>
<td class="ltx_td ltx_nopad_r ltx_align_right" colspan="-5" id="S3.T2.5.1.5.7">Consistency</td>
<td class="ltx_td" id="S3.T2.5.1.5.8"></td>
<td class="ltx_td" id="S3.T2.5.1.5.9"></td>
<td class="ltx_td" id="S3.T2.5.1.5.10"></td>
</tr>
<tr class="ltx_tr" id="S3.T2.5.1.6">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T2.5.1.6.1">HunyuanVideo <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.21755v1#bib.bib72" title=""><span class="ltx_text" style="font-size:90%;">72</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T2.5.1.6.2"><span class="ltx_text ltx_font_bold" id="S3.T2.5.1.6.2.1">88.58%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T2.5.1.6.3">82.97%</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T2.5.1.6.4">75.67%</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T2.5.1.6.5">43.96%</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T2.5.1.6.6">39.73%</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T2.5.1.6.7">76.09%</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T2.5.1.6.8">64.37%</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T2.5.1.6.9">56.52%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.5.1.6.10">43.80%</td>
</tr>
<tr class="ltx_tr" id="S3.T2.5.1.7">
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.5.1.7.1">CogVideoX-1.5 <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.21755v1#bib.bib86" title=""><span class="ltx_text" style="font-size:90%;">86</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.5.1.7.2">59.72%</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.5.1.7.3">87.18%</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.5.1.7.4">69.51%</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.5.1.7.5">44.70%</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.5.1.7.6">42.61%</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.5.1.7.7"><span class="ltx_text ltx_font_bold" id="S3.T2.5.1.7.7.1">80.80%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.5.1.7.8"><span class="ltx_text ltx_font_bold" id="S3.T2.5.1.7.8.1">83.19%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.5.1.7.9"><span class="ltx_text ltx_font_bold" id="S3.T2.5.1.7.9.1">67.13%</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.5.1.7.10">21.79%</td>
</tr>
<tr class="ltx_tr" id="S3.T2.5.1.8">
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.5.1.8.1">Sora <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.21755v1#bib.bib53" title=""><span class="ltx_text" style="font-size:90%;">53</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.5.1.8.2">86.45%</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.5.1.8.3"><span class="ltx_text ltx_font_bold" id="S3.T2.5.1.8.3.1">98.15%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.5.1.8.4"><span class="ltx_text ltx_font_bold" id="S3.T2.5.1.8.4.1">78.57%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.5.1.8.5"><span class="ltx_text ltx_font_bold" id="S3.T2.5.1.8.5.1">53.65%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.5.1.8.6"><span class="ltx_text ltx_font_bold" id="S3.T2.5.1.8.6.1">67.48%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.5.1.8.7">62.22%</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.5.1.8.8">64.94%</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.5.1.8.9">43.36%</td>
<td class="ltx_td ltx_align_center" id="S3.T2.5.1.8.10">58.22%</td>
</tr>
<tr class="ltx_tr" id="S3.T2.5.1.9">
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.5.1.9.1">Kling 1.6 <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.21755v1#bib.bib69" title=""><span class="ltx_text" style="font-size:90%;">69</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.5.1.9.2">86.99%</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.5.1.9.3">91.75%</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.5.1.9.4">71.95%</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.5.1.9.5">43.89%</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.5.1.9.6">53.26%</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.5.1.9.7">65.55%</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.5.1.9.8">68.00%</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.5.1.9.9">59.46%</td>
<td class="ltx_td ltx_align_center" id="S3.T2.5.1.9.10"><span class="ltx_text ltx_font_bold" id="S3.T2.5.1.9.10.1">64.38%</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.5.1.10">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T2.5.1.10.1"><span class="ltx_text ltx_font_bold" id="S3.T2.5.1.10.1.1">Models</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_right ltx_border_t" id="S3.T2.5.1.10.2">
<span class="ltx_ERROR undefined" id="S3.T2.5.1.10.2.1">\Centerstack</span><span class="ltx_text ltx_font_bold" id="S3.T2.5.1.10.2.2">Dynamic Spatial</span>
</td>
<td class="ltx_td ltx_border_t" id="S3.T2.5.1.10.3"></td>
<td class="ltx_td ltx_border_t" id="S3.T2.5.1.10.4"></td>
<td class="ltx_td ltx_border_t" id="S3.T2.5.1.10.5"></td>
<td class="ltx_td ltx_border_t" id="S3.T2.5.1.10.6"></td>
<td class="ltx_td ltx_border_t" id="S3.T2.5.1.10.7"></td>
<td class="ltx_td ltx_border_t" id="S3.T2.5.1.10.8"></td>
<td class="ltx_td ltx_border_t" id="S3.T2.5.1.10.9"></td>
<td class="ltx_td ltx_border_t" id="S3.T2.5.1.10.10"></td>
</tr>
<tr class="ltx_tr" id="S3.T2.5.1.11">
<td class="ltx_td" id="S3.T2.5.1.11.1"></td>
<td class="ltx_td ltx_align_right" id="S3.T2.5.1.11.2">
<span class="ltx_ERROR undefined" id="S3.T2.5.1.11.2.1">\Centerstack</span><span class="ltx_text ltx_font_bold" id="S3.T2.5.1.11.2.2">Dynamic</span>
</td>
<td class="ltx_td" id="S3.T2.5.1.11.3"></td>
<td class="ltx_td" id="S3.T2.5.1.11.4"></td>
<td class="ltx_td" id="S3.T2.5.1.11.5"></td>
<td class="ltx_td" id="S3.T2.5.1.11.6"></td>
<td class="ltx_td" id="S3.T2.5.1.11.7"></td>
<td class="ltx_td" id="S3.T2.5.1.11.8"></td>
<td class="ltx_td" id="S3.T2.5.1.11.9"></td>
<td class="ltx_td" id="S3.T2.5.1.11.10"></td>
</tr>
<tr class="ltx_tr" id="S3.T2.5.1.12">
<td class="ltx_td" id="S3.T2.5.1.12.1"></td>
<td class="ltx_td ltx_align_right" id="S3.T2.5.1.12.2">
<span class="ltx_ERROR undefined" id="S3.T2.5.1.12.2.1">\Centerstack</span><span class="ltx_text ltx_font_bold" id="S3.T2.5.1.12.2.2">Motion Order</span>
</td>
<td class="ltx_td" id="S3.T2.5.1.12.3"></td>
<td class="ltx_td" id="S3.T2.5.1.12.4"></td>
<td class="ltx_td" id="S3.T2.5.1.12.5"></td>
<td class="ltx_td" id="S3.T2.5.1.12.6"></td>
<td class="ltx_td" id="S3.T2.5.1.12.7"></td>
<td class="ltx_td" id="S3.T2.5.1.12.8"></td>
<td class="ltx_td" id="S3.T2.5.1.12.9"></td>
<td class="ltx_td" id="S3.T2.5.1.12.10"></td>
</tr>
<tr class="ltx_tr" id="S3.T2.5.1.13">
<td class="ltx_td" id="S3.T2.5.1.13.1"></td>
<td class="ltx_td ltx_align_right" id="S3.T2.5.1.13.2">
<span class="ltx_ERROR undefined" id="S3.T2.5.1.13.2.1">\Centerstack</span><span class="ltx_text ltx_font_bold" id="S3.T2.5.1.13.2.2">Human</span>
</td>
<td class="ltx_td" id="S3.T2.5.1.13.3"></td>
<td class="ltx_td" id="S3.T2.5.1.13.4"></td>
<td class="ltx_td" id="S3.T2.5.1.13.5"></td>
<td class="ltx_td" id="S3.T2.5.1.13.6"></td>
<td class="ltx_td" id="S3.T2.5.1.13.7"></td>
<td class="ltx_td" id="S3.T2.5.1.13.8"></td>
<td class="ltx_td" id="S3.T2.5.1.13.9"></td>
<td class="ltx_td" id="S3.T2.5.1.13.10"></td>
</tr>
<tr class="ltx_tr" id="S3.T2.5.1.14">
<td class="ltx_td" id="S3.T2.5.1.14.1"></td>
<td class="ltx_td ltx_align_right" id="S3.T2.5.1.14.2">
<span class="ltx_ERROR undefined" id="S3.T2.5.1.14.2.1">\Centerstack</span><span class="ltx_text ltx_font_bold" id="S3.T2.5.1.14.2.2">Complex</span>
</td>
<td class="ltx_td" id="S3.T2.5.1.14.3"></td>
<td class="ltx_td" id="S3.T2.5.1.14.4"></td>
<td class="ltx_td" id="S3.T2.5.1.14.5"></td>
<td class="ltx_td" id="S3.T2.5.1.14.6"></td>
<td class="ltx_td" id="S3.T2.5.1.14.7"></td>
<td class="ltx_td" id="S3.T2.5.1.14.8"></td>
<td class="ltx_td" id="S3.T2.5.1.14.9"></td>
<td class="ltx_td" id="S3.T2.5.1.14.10"></td>
</tr>
<tr class="ltx_tr" id="S3.T2.5.1.15">
<td class="ltx_td" id="S3.T2.5.1.15.1"></td>
<td class="ltx_td ltx_align_right" id="S3.T2.5.1.15.2">
<span class="ltx_ERROR undefined" id="S3.T2.5.1.15.2.1">\Centerstack</span><span class="ltx_text ltx_font_bold" id="S3.T2.5.1.15.2.2">Complex</span>
</td>
<td class="ltx_td" id="S3.T2.5.1.15.3"></td>
<td class="ltx_td" id="S3.T2.5.1.15.4"></td>
<td class="ltx_td" id="S3.T2.5.1.15.5"></td>
<td class="ltx_td" id="S3.T2.5.1.15.6"></td>
<td class="ltx_td" id="S3.T2.5.1.15.7"></td>
<td class="ltx_td" id="S3.T2.5.1.15.8"></td>
<td class="ltx_td" id="S3.T2.5.1.15.9"></td>
<td class="ltx_td" id="S3.T2.5.1.15.10"></td>
</tr>
<tr class="ltx_tr" id="S3.T2.5.1.16">
<td class="ltx_td" id="S3.T2.5.1.16.1"></td>
<td class="ltx_td ltx_align_right" id="S3.T2.5.1.16.2">
<span class="ltx_ERROR undefined" id="S3.T2.5.1.16.2.1">\Centerstack</span><span class="ltx_text ltx_font_bold" id="S3.T2.5.1.16.2.2">Camera</span>
</td>
<td class="ltx_td" id="S3.T2.5.1.16.3"></td>
<td class="ltx_td" id="S3.T2.5.1.16.4"></td>
<td class="ltx_td" id="S3.T2.5.1.16.5"></td>
<td class="ltx_td" id="S3.T2.5.1.16.6"></td>
<td class="ltx_td" id="S3.T2.5.1.16.7"></td>
<td class="ltx_td" id="S3.T2.5.1.16.8"></td>
<td class="ltx_td" id="S3.T2.5.1.16.9"></td>
<td class="ltx_td" id="S3.T2.5.1.16.10"></td>
</tr>
<tr class="ltx_tr" id="S3.T2.5.1.17">
<td class="ltx_td" id="S3.T2.5.1.17.1"></td>
<td class="ltx_td ltx_align_right" id="S3.T2.5.1.17.2">
<span class="ltx_ERROR undefined" id="S3.T2.5.1.17.2.1">\Centerstack</span><span class="ltx_text ltx_font_bold" id="S3.T2.5.1.17.2.2">Motion</span>
</td>
<td class="ltx_td" id="S3.T2.5.1.17.3"></td>
<td class="ltx_td" id="S3.T2.5.1.17.4"></td>
<td class="ltx_td" id="S3.T2.5.1.17.5"></td>
<td class="ltx_td" id="S3.T2.5.1.17.6"></td>
<td class="ltx_td" id="S3.T2.5.1.17.7"></td>
<td class="ltx_td" id="S3.T2.5.1.17.8"></td>
<td class="ltx_td" id="S3.T2.5.1.17.9"></td>
<td class="ltx_td" id="S3.T2.5.1.17.10"></td>
</tr>
<tr class="ltx_tr" id="S3.T2.5.1.18">
<td class="ltx_td" id="S3.T2.5.1.18.1"></td>
<td class="ltx_td ltx_align_right" id="S3.T2.5.1.18.2">
<span class="ltx_ERROR undefined" id="S3.T2.5.1.18.2.1">\Centerstack</span><span class="ltx_text ltx_font_bold" id="S3.T2.5.1.18.2.2">Instance</span>
</td>
<td class="ltx_td" id="S3.T2.5.1.18.3"></td>
<td class="ltx_td" id="S3.T2.5.1.18.4"></td>
<td class="ltx_td" id="S3.T2.5.1.18.5"></td>
<td class="ltx_td" id="S3.T2.5.1.18.6"></td>
<td class="ltx_td" id="S3.T2.5.1.18.7"></td>
<td class="ltx_td" id="S3.T2.5.1.18.8"></td>
<td class="ltx_td" id="S3.T2.5.1.18.9"></td>
<td class="ltx_td" id="S3.T2.5.1.18.10"></td>
</tr>
<tr class="ltx_tr" id="S3.T2.5.1.19">
<td class="ltx_td" id="S3.T2.5.1.19.1"></td>
<td class="ltx_td ltx_align_right" id="S3.T2.5.1.19.2">Preservation</td>
<td class="ltx_td" id="S3.T2.5.1.19.3"></td>
<td class="ltx_td" id="S3.T2.5.1.19.4"></td>
<td class="ltx_td" id="S3.T2.5.1.19.5"></td>
<td class="ltx_td" id="S3.T2.5.1.19.6"></td>
<td class="ltx_td" id="S3.T2.5.1.19.7"></td>
<td class="ltx_td" id="S3.T2.5.1.19.8"></td>
<td class="ltx_td" id="S3.T2.5.1.19.9"></td>
<td class="ltx_td" id="S3.T2.5.1.19.10"></td>
</tr>
<tr class="ltx_tr" id="S3.T2.5.1.20">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T2.5.1.20.1">HunyuanVideo <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.21755v1#bib.bib72" title=""><span class="ltx_text" style="font-size:90%;">72</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T2.5.1.20.2"><span class="ltx_text ltx_font_bold" id="S3.T2.5.1.20.2.1">21.26%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T2.5.1.20.3">22.71%</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T2.5.1.20.4">26.60%</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T2.5.1.20.5">67.67%</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T2.5.1.20.6">19.56%</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T2.5.1.20.7">10.11%</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T2.5.1.20.8">33.95%</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T2.5.1.20.9">34.48%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.5.1.20.10">73.79%</td>
</tr>
<tr class="ltx_tr" id="S3.T2.5.1.21">
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.5.1.21.1">CogVideoX-1.5 <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.21755v1#bib.bib86" title=""><span class="ltx_text" style="font-size:90%;">86</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.5.1.21.2">19.32%</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.5.1.21.3"><span class="ltx_text ltx_font_bold" id="S3.T2.5.1.21.3.1">24.18%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.5.1.21.4">26.94%</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.5.1.21.5"><span class="ltx_text ltx_font_bold" id="S3.T2.5.1.21.5.1">73.00%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.5.1.21.6"><span class="ltx_text ltx_font_bold" id="S3.T2.5.1.21.6.1">23.11%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.5.1.21.7"><span class="ltx_text ltx_font_bold" id="S3.T2.5.1.21.7.1">12.42%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.5.1.21.8">33.33%</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.5.1.21.9">33.91%</td>
<td class="ltx_td ltx_align_center" id="S3.T2.5.1.21.10">71.03%</td>
</tr>
<tr class="ltx_tr" id="S3.T2.5.1.22">
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.5.1.22.1">Sora <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.21755v1#bib.bib53" title=""><span class="ltx_text" style="font-size:90%;">53</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.5.1.22.2">19.81%</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.5.1.22.3">8.06%</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.5.1.22.4">14.81%</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.5.1.22.5">59.00%</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.5.1.22.6">14.67%</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.5.1.22.7">11.67%</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.5.1.22.8">27.16%</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.5.1.22.9">34.48%</td>
<td class="ltx_td ltx_align_center" id="S3.T2.5.1.22.10">74.60%</td>
</tr>
<tr class="ltx_tr" id="S3.T2.5.1.23">
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r" id="S3.T2.5.1.23.1">Kling 1.6 <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.21755v1#bib.bib69" title=""><span class="ltx_text" style="font-size:90%;">69</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r" id="S3.T2.5.1.23.2">20.77%</td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r" id="S3.T2.5.1.23.3">19.41%</td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r" id="S3.T2.5.1.23.4"><span class="ltx_text ltx_font_bold" id="S3.T2.5.1.23.4.1">29.29%</span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r" id="S3.T2.5.1.23.5">72.67%</td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r" id="S3.T2.5.1.23.6">18.44%</td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r" id="S3.T2.5.1.23.7">11.83%</td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r" id="S3.T2.5.1.23.8"><span class="ltx_text ltx_font_bold" id="S3.T2.5.1.23.8.1">61.73%</span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r" id="S3.T2.5.1.23.9"><span class="ltx_text ltx_font_bold" id="S3.T2.5.1.23.9.1">38.51%</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S3.T2.5.1.23.10"><span class="ltx_text ltx_font_bold" id="S3.T2.5.1.23.10.1">76.10%</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 Table 2 presents a comprehensive evaluation of four state-of-the-art video generation models across 18 distinct dimensions defined by the VBench-2.0 benchmark.  Each dimension represents a specific aspect of video generation quality, such as human fidelity, controllability, creativity, physics simulation, and commonsense reasoning.  The table shows the performance of each model on each dimension, allowing for a detailed comparison of their strengths and weaknesses. Higher scores indicate better performance within that specific dimension.
> <details>
> <summary>read the caption</summary>
> Table 2: VBench-2.0 Evaluation Results per Dimension. This table presents evaluation results for four recent state-of-the-art video generation models across all 18 VBench-2.0 dimensions. A higher score indicates better performance in the corresponding dimension.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S5.T3.4.4.4">
<tr class="ltx_tr" id="S5.T3.4.4.4.5">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T3.4.4.4.5.1">
<span class="ltx_ERROR undefined" id="S5.T3.4.4.4.5.1.1">\Centerstack</span><span class="ltx_text ltx_font_bold" id="S5.T3.4.4.4.5.1.2">Model Name</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.4.4.4.5.2">
<span class="ltx_ERROR undefined" id="S5.T3.4.4.4.5.2.1">\Centerstack</span><span class="ltx_text ltx_font_bold" id="S5.T3.4.4.4.5.2.2">Video Length</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.4.4.4.5.3">
<span class="ltx_ERROR undefined" id="S5.T3.4.4.4.5.3.1">\Centerstack</span><span class="ltx_text ltx_font_bold" id="S5.T3.4.4.4.5.3.2">Per-Frame Resolution</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.4.4.4.5.4">
<span class="ltx_ERROR undefined" id="S5.T3.4.4.4.5.4.1">\Centerstack</span><span class="ltx_text ltx_font_bold" id="S5.T3.4.4.4.5.4.2">Frame Rate (FPS)</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.T3.1.1.1.1">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T3.1.1.1.1.2">HunyuanVideo <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.21755v1#bib.bib72" title=""><span class="ltx_text" style="font-size:90%;">72</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.1.1.1.1.3">5.3s</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.1.1.1.1.1">720<math alttext="\times" class="ltx_Math" display="inline" id="S5.T3.1.1.1.1.1.m1.1"><semantics id="S5.T3.1.1.1.1.1.m1.1a"><mo id="S5.T3.1.1.1.1.1.m1.1.1" xref="S5.T3.1.1.1.1.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S5.T3.1.1.1.1.1.m1.1b"><times id="S5.T3.1.1.1.1.1.m1.1.1.cmml" xref="S5.T3.1.1.1.1.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S5.T3.1.1.1.1.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S5.T3.1.1.1.1.1.m1.1d">×</annotation></semantics></math>1280</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.1.1.1.1.4">24</td>
</tr>
<tr class="ltx_tr" id="S5.T3.2.2.2.2">
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T3.2.2.2.2.2">CogVideoX-1.5 <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.21755v1#bib.bib86" title=""><span class="ltx_text" style="font-size:90%;">86</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S5.T3.2.2.2.2.3">10.1s</td>
<td class="ltx_td ltx_align_center" id="S5.T3.2.2.2.2.1">768<math alttext="\times" class="ltx_Math" display="inline" id="S5.T3.2.2.2.2.1.m1.1"><semantics id="S5.T3.2.2.2.2.1.m1.1a"><mo id="S5.T3.2.2.2.2.1.m1.1.1" xref="S5.T3.2.2.2.2.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S5.T3.2.2.2.2.1.m1.1b"><times id="S5.T3.2.2.2.2.1.m1.1.1.cmml" xref="S5.T3.2.2.2.2.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S5.T3.2.2.2.2.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S5.T3.2.2.2.2.1.m1.1d">×</annotation></semantics></math>1360</td>
<td class="ltx_td ltx_align_center" id="S5.T3.2.2.2.2.4">16</td>
</tr>
<tr class="ltx_tr" id="S5.T3.3.3.3.3">
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T3.3.3.3.3.2">Sora-480p <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.21755v1#bib.bib53" title=""><span class="ltx_text" style="font-size:90%;">53</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S5.T3.3.3.3.3.3">5.0s</td>
<td class="ltx_td ltx_align_center" id="S5.T3.3.3.3.3.1">480<math alttext="\times" class="ltx_Math" display="inline" id="S5.T3.3.3.3.3.1.m1.1"><semantics id="S5.T3.3.3.3.3.1.m1.1a"><mo id="S5.T3.3.3.3.3.1.m1.1.1" xref="S5.T3.3.3.3.3.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S5.T3.3.3.3.3.1.m1.1b"><times id="S5.T3.3.3.3.3.1.m1.1.1.cmml" xref="S5.T3.3.3.3.3.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S5.T3.3.3.3.3.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S5.T3.3.3.3.3.1.m1.1d">×</annotation></semantics></math>854</td>
<td class="ltx_td ltx_align_center" id="S5.T3.3.3.3.3.4">30</td>
</tr>
<tr class="ltx_tr" id="S5.T3.4.4.4.4">
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r" id="S5.T3.4.4.4.4.2">Kling 1.6 <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.21755v1#bib.bib69" title=""><span class="ltx_text" style="font-size:90%;">69</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S5.T3.4.4.4.4.3">10.0s</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S5.T3.4.4.4.4.1">720<math alttext="\times" class="ltx_Math" display="inline" id="S5.T3.4.4.4.4.1.m1.1"><semantics id="S5.T3.4.4.4.4.1.m1.1a"><mo id="S5.T3.4.4.4.4.1.m1.1.1" xref="S5.T3.4.4.4.4.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S5.T3.4.4.4.4.1.m1.1b"><times id="S5.T3.4.4.4.4.1.m1.1.1.cmml" xref="S5.T3.4.4.4.4.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S5.T3.4.4.4.4.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S5.T3.4.4.4.4.1.m1.1d">×</annotation></semantics></math>1280</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S5.T3.4.4.4.4.4">24</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table provides detailed information about the four state-of-the-art video generation models used in the VBench-2.0 evaluation.  For each model, it lists the video length, per-frame resolution, and frame rate (FPS). This information is crucial for understanding the computational resources and characteristics of the videos generated by each model and how these factors might influence the evaluation results.
> <details>
> <summary>read the caption</summary>
> Table 3: Information on Evaluated Models.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S8.T4.10.1">
<tr class="ltx_tr" id="S8.T4.10.1.1">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S8.T4.10.1.1.1"><span class="ltx_text ltx_font_bold" id="S8.T4.10.1.1.1.1" style="font-size:144%;">Models</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_right ltx_border_t" id="S8.T4.10.1.1.2">
<span class="ltx_ERROR undefined" id="S8.T4.10.1.1.2.1">\Centerstack</span><span class="ltx_text ltx_font_bold" id="S8.T4.10.1.1.2.2" style="font-size:144%;">Human</span>
</td>
<td class="ltx_td ltx_border_t" id="S8.T4.10.1.1.3"></td>
<td class="ltx_td ltx_border_t" id="S8.T4.10.1.1.4"></td>
<td class="ltx_td ltx_border_t" id="S8.T4.10.1.1.5"></td>
<td class="ltx_td ltx_border_t" id="S8.T4.10.1.1.6"></td>
<td class="ltx_td ltx_border_t" id="S8.T4.10.1.1.7"></td>
<td class="ltx_td ltx_border_t" id="S8.T4.10.1.1.8"></td>
<td class="ltx_td ltx_border_t" id="S8.T4.10.1.1.9"></td>
<td class="ltx_td ltx_border_t" id="S8.T4.10.1.1.10"></td>
</tr>
<tr class="ltx_tr" id="S8.T4.10.1.2">
<td class="ltx_td" id="S8.T4.10.1.2.1"></td>
<td class="ltx_td ltx_align_right" id="S8.T4.10.1.2.2">
<span class="ltx_ERROR undefined" id="S8.T4.10.1.2.2.1">\Centerstack</span><span class="ltx_text ltx_font_bold" id="S8.T4.10.1.2.2.2" style="font-size:144%;">Human</span>
</td>
<td class="ltx_td" id="S8.T4.10.1.2.3"></td>
<td class="ltx_td" id="S8.T4.10.1.2.4"></td>
<td class="ltx_td" id="S8.T4.10.1.2.5"></td>
<td class="ltx_td" id="S8.T4.10.1.2.6"></td>
<td class="ltx_td" id="S8.T4.10.1.2.7"></td>
<td class="ltx_td" id="S8.T4.10.1.2.8"></td>
<td class="ltx_td" id="S8.T4.10.1.2.9"></td>
<td class="ltx_td" id="S8.T4.10.1.2.10"></td>
</tr>
<tr class="ltx_tr" id="S8.T4.10.1.3">
<td class="ltx_td" id="S8.T4.10.1.3.1"></td>
<td class="ltx_td ltx_align_right" id="S8.T4.10.1.3.2">
<span class="ltx_ERROR undefined" id="S8.T4.10.1.3.2.1">\Centerstack</span><span class="ltx_text ltx_font_bold" id="S8.T4.10.1.3.2.2" style="font-size:144%;">Human</span>
</td>
<td class="ltx_td" id="S8.T4.10.1.3.3"></td>
<td class="ltx_td" id="S8.T4.10.1.3.4"></td>
<td class="ltx_td" id="S8.T4.10.1.3.5"></td>
<td class="ltx_td" id="S8.T4.10.1.3.6"></td>
<td class="ltx_td" id="S8.T4.10.1.3.7"></td>
<td class="ltx_td" id="S8.T4.10.1.3.8"></td>
<td class="ltx_td" id="S8.T4.10.1.3.9"></td>
<td class="ltx_td" id="S8.T4.10.1.3.10"></td>
</tr>
<tr class="ltx_tr" id="S8.T4.10.1.4">
<td class="ltx_td" id="S8.T4.10.1.4.1"></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S8.T4.10.1.4.2">
<span class="ltx_ERROR undefined" id="S8.T4.10.1.4.2.1">\Centerstack</span><span class="ltx_text ltx_font_bold" id="S8.T4.10.1.4.2.2" style="font-size:144%;">Composition</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S8.T4.10.1.4.3">
<span class="ltx_ERROR undefined" id="S8.T4.10.1.4.3.1">\Centerstack</span><span class="ltx_text ltx_font_bold" id="S8.T4.10.1.4.3.2" style="font-size:144%;">Diversity</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S8.T4.10.1.4.4"><span class="ltx_text ltx_font_bold" id="S8.T4.10.1.4.4.1" style="font-size:144%;">Mechanics</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S8.T4.10.1.4.5"><span class="ltx_text ltx_font_bold" id="S8.T4.10.1.4.5.1" style="font-size:144%;">Material</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S8.T4.10.1.4.6"><span class="ltx_text ltx_font_bold" id="S8.T4.10.1.4.6.1" style="font-size:144%;">Thermotics</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_right" id="S8.T4.10.1.4.7">
<span class="ltx_ERROR undefined" id="S8.T4.10.1.4.7.1">\Centerstack</span><span class="ltx_text ltx_font_bold" id="S8.T4.10.1.4.7.2" style="font-size:144%;">Multi-View</span>
</td>
<td class="ltx_td" id="S8.T4.10.1.4.8"></td>
<td class="ltx_td" id="S8.T4.10.1.4.9"></td>
<td class="ltx_td" id="S8.T4.10.1.4.10"></td>
</tr>
<tr class="ltx_tr" id="S8.T4.10.1.5">
<td class="ltx_td" id="S8.T4.10.1.5.1"></td>
<td class="ltx_td" id="S8.T4.10.1.5.2"></td>
<td class="ltx_td" id="S8.T4.10.1.5.3"></td>
<td class="ltx_td" id="S8.T4.10.1.5.4"></td>
<td class="ltx_td" id="S8.T4.10.1.5.5"></td>
<td class="ltx_td" id="S8.T4.10.1.5.6"></td>
<td class="ltx_td ltx_nopad_r ltx_align_right" colspan="-5" id="S8.T4.10.1.5.7"><span class="ltx_text" id="S8.T4.10.1.5.7.1" style="font-size:144%;">Consistency</span></td>
<td class="ltx_td" id="S8.T4.10.1.5.8"></td>
<td class="ltx_td" id="S8.T4.10.1.5.9"></td>
<td class="ltx_td" id="S8.T4.10.1.5.10"></td>
</tr>
<tr class="ltx_tr" id="S8.T4.10.1.6">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S8.T4.10.1.6.1">
<span class="ltx_text" id="S8.T4.10.1.6.1.1" style="font-size:144%;">HunyuanVideo </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S8.T4.10.1.6.1.2.1" style="font-size:144%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.21755v1#bib.bib72" title=""><span class="ltx_text" style="font-size:90%;">72</span></a><span class="ltx_text" id="S8.T4.10.1.6.1.3.2" style="font-size:144%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S8.T4.10.1.6.2">
<span class="ltx_text ltx_font_bold" id="S8.T4.10.1.6.2.1" style="font-size:144%;">67.73%</span><span class="ltx_text" id="S8.T4.10.1.6.2.2" style="font-size:144%;"> / 58.73%</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S8.T4.10.1.6.3"><span class="ltx_text" id="S8.T4.10.1.6.3.1" style="font-size:144%;">44.49% / 45.67%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S8.T4.10.1.6.4"><span class="ltx_text" id="S8.T4.10.1.6.4.1" style="font-size:144%;">52.60% / 58.19%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S8.T4.10.1.6.5"><span class="ltx_text" id="S8.T4.10.1.6.5.1" style="font-size:144%;">46.02% / 40.25%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S8.T4.10.1.6.6"><span class="ltx_text" id="S8.T4.10.1.6.6.1" style="font-size:144%;">16.67% / 36.67%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S8.T4.10.1.6.7"><span class="ltx_text" id="S8.T4.10.1.6.7.1" style="font-size:144%;">53.30% / 50.64%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S8.T4.10.1.6.8"><span class="ltx_text" id="S8.T4.10.1.6.8.1" style="font-size:144%;">45.70% / 45.49%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S8.T4.10.1.6.9"><span class="ltx_text" id="S8.T4.10.1.6.9.1" style="font-size:144%;">50.13% / 46.08%</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S8.T4.10.1.6.10"><span class="ltx_text" id="S8.T4.10.1.6.10.1" style="font-size:144%;">52.83% / 50.39%</span></td>
</tr>
<tr class="ltx_tr" id="S8.T4.10.1.7">
<td class="ltx_td ltx_align_center ltx_border_r" id="S8.T4.10.1.7.1">
<span class="ltx_text" id="S8.T4.10.1.7.1.1" style="font-size:144%;">CogVideoX-1.5 </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S8.T4.10.1.7.1.2.1" style="font-size:144%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.21755v1#bib.bib86" title=""><span class="ltx_text" style="font-size:90%;">86</span></a><span class="ltx_text" id="S8.T4.10.1.7.1.3.2" style="font-size:144%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S8.T4.10.1.7.2"><span class="ltx_text" id="S8.T4.10.1.7.2.1" style="font-size:144%;">13.10% / 5.28%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S8.T4.10.1.7.3"><span class="ltx_text" id="S8.T4.10.1.7.3.1" style="font-size:144%;">48.12% / 44.28%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S8.T4.10.1.7.4"><span class="ltx_text" id="S8.T4.10.1.7.4.1" style="font-size:144%;">36.81% / 20.62%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S8.T4.10.1.7.5"><span class="ltx_text" id="S8.T4.10.1.7.5.1" style="font-size:144%;">50.00% / 46.23%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S8.T4.10.1.7.6"><span class="ltx_text" id="S8.T4.10.1.7.6.1" style="font-size:144%;">26.67% / 28.33%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S8.T4.10.1.7.7">
<span class="ltx_text ltx_font_bold" id="S8.T4.10.1.7.7.1" style="font-size:144%;">57.57%</span><span class="ltx_text" id="S8.T4.10.1.7.7.2" style="font-size:144%;"> / </span><span class="ltx_text ltx_font_bold" id="S8.T4.10.1.7.7.3" style="font-size:144%;">51.20%</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S8.T4.10.1.7.8">
<span class="ltx_text ltx_font_bold" id="S8.T4.10.1.7.8.1" style="font-size:144%;">59.43%</span><span class="ltx_text" id="S8.T4.10.1.7.8.2" style="font-size:144%;"> / </span><span class="ltx_text ltx_font_bold" id="S8.T4.10.1.7.8.3" style="font-size:144%;">57.49%</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S8.T4.10.1.7.9">
<span class="ltx_text ltx_font_bold" id="S8.T4.10.1.7.9.1" style="font-size:144%;">56.69%</span><span class="ltx_text" id="S8.T4.10.1.7.9.2" style="font-size:144%;"> / </span><span class="ltx_text ltx_font_bold" id="S8.T4.10.1.7.9.3" style="font-size:144%;">58.51%</span>
</td>
<td class="ltx_td ltx_align_center" id="S8.T4.10.1.7.10"><span class="ltx_text" id="S8.T4.10.1.7.10.1" style="font-size:144%;">8.77% / 18.07%</span></td>
</tr>
<tr class="ltx_tr" id="S8.T4.10.1.8">
<td class="ltx_td ltx_align_center ltx_border_r" id="S8.T4.10.1.8.1">
<span class="ltx_text" id="S8.T4.10.1.8.1.1" style="font-size:144%;">Sora </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S8.T4.10.1.8.1.2.1" style="font-size:144%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.21755v1#bib.bib53" title=""><span class="ltx_text" style="font-size:90%;">53</span></a><span class="ltx_text" id="S8.T4.10.1.8.1.3.2" style="font-size:144%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S8.T4.10.1.8.2">
<span class="ltx_text" id="S8.T4.10.1.8.2.1" style="font-size:144%;">60.05% / </span><span class="ltx_text ltx_font_bold" id="S8.T4.10.1.8.2.2" style="font-size:144%;">69.71%</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S8.T4.10.1.8.3">
<span class="ltx_text ltx_font_bold" id="S8.T4.10.1.8.3.1" style="font-size:144%;">55.61%</span><span class="ltx_text" id="S8.T4.10.1.8.3.2" style="font-size:144%;"> / </span><span class="ltx_text ltx_font_bold" id="S8.T4.10.1.8.3.3" style="font-size:144%;">57.15%</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S8.T4.10.1.8.4"><span class="ltx_text" id="S8.T4.10.1.8.4.1" style="font-size:144%;">53.88% / 56.25%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S8.T4.10.1.8.5">
<span class="ltx_text ltx_font_bold" id="S8.T4.10.1.8.5.1" style="font-size:144%;">56.08%</span><span class="ltx_text" id="S8.T4.10.1.8.5.2" style="font-size:144%;"> / </span><span class="ltx_text ltx_font_bold" id="S8.T4.10.1.8.5.3" style="font-size:144%;">59.96%</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S8.T4.10.1.8.6">
<span class="ltx_text ltx_font_bold" id="S8.T4.10.1.8.6.1" style="font-size:144%;">93.33%</span><span class="ltx_text" id="S8.T4.10.1.8.6.2" style="font-size:144%;"> / </span><span class="ltx_text ltx_font_bold" id="S8.T4.10.1.8.6.3" style="font-size:144%;">83.33%</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S8.T4.10.1.8.7"><span class="ltx_text" id="S8.T4.10.1.8.7.1" style="font-size:144%;">43.47% / 49.39%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S8.T4.10.1.8.8"><span class="ltx_text" id="S8.T4.10.1.8.8.1" style="font-size:144%;">47.38% / 50.79%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S8.T4.10.1.8.9"><span class="ltx_text" id="S8.T4.10.1.8.9.1" style="font-size:144%;">40.37% / 41.19%</span></td>
<td class="ltx_td ltx_align_center" id="S8.T4.10.1.8.10"><span class="ltx_text" id="S8.T4.10.1.8.10.1" style="font-size:144%;">64.10% / 63.94%</span></td>
</tr>
<tr class="ltx_tr" id="S8.T4.10.1.9">
<td class="ltx_td ltx_align_center ltx_border_r" id="S8.T4.10.1.9.1">
<span class="ltx_text" id="S8.T4.10.1.9.1.1" style="font-size:144%;">Kling 1.6 </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S8.T4.10.1.9.1.2.1" style="font-size:144%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.21755v1#bib.bib69" title=""><span class="ltx_text" style="font-size:90%;">69</span></a><span class="ltx_text" id="S8.T4.10.1.9.1.3.2" style="font-size:144%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S8.T4.10.1.9.2"><span class="ltx_text" id="S8.T4.10.1.9.2.1" style="font-size:144%;">59.12% / 66.36%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S8.T4.10.1.9.3"><span class="ltx_text" id="S8.T4.10.1.9.3.1" style="font-size:144%;">51.18% / 52.86%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S8.T4.10.1.9.4">
<span class="ltx_text ltx_font_bold" id="S8.T4.10.1.9.4.1" style="font-size:144%;">56.48%</span><span class="ltx_text" id="S8.T4.10.1.9.4.2" style="font-size:144%;"> / </span><span class="ltx_text ltx_font_bold" id="S8.T4.10.1.9.4.3" style="font-size:144%;">63.05%</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S8.T4.10.1.9.5"><span class="ltx_text" id="S8.T4.10.1.9.5.1" style="font-size:144%;">47.90% / 53.56%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S8.T4.10.1.9.6"><span class="ltx_text" id="S8.T4.10.1.9.6.1" style="font-size:144%;">63.33% / 51.67%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S8.T4.10.1.9.7"><span class="ltx_text" id="S8.T4.10.1.9.7.1" style="font-size:144%;">45.56% / 48.78%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S8.T4.10.1.9.8"><span class="ltx_text" id="S8.T4.10.1.9.8.1" style="font-size:144%;">46.65% / 45.90%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S8.T4.10.1.9.9"><span class="ltx_text" id="S8.T4.10.1.9.9.1" style="font-size:144%;">52.74% / 54.02%</span></td>
<td class="ltx_td ltx_align_center" id="S8.T4.10.1.9.10">
<span class="ltx_text ltx_font_bold" id="S8.T4.10.1.9.10.1" style="font-size:144%;">80.00%</span><span class="ltx_text" id="S8.T4.10.1.9.10.2" style="font-size:144%;"> / </span><span class="ltx_text ltx_font_bold" id="S8.T4.10.1.9.10.3" style="font-size:144%;">65.98%</span>
</td>
</tr>
<tr class="ltx_tr" id="S8.T4.10.1.10">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S8.T4.10.1.10.1"><span class="ltx_text" id="S8.T4.10.1.10.1.1" style="font-size:144%;">Correlation</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S8.T4.10.1.10.2"><span class="ltx_text" id="S8.T4.10.1.10.2.1" style="font-size:144%;">95.46%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S8.T4.10.1.10.3"><span class="ltx_text" id="S8.T4.10.1.10.3.1" style="font-size:144%;">90.89%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S8.T4.10.1.10.4"><span class="ltx_text" id="S8.T4.10.1.10.4.1" style="font-size:144%;">99.46%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S8.T4.10.1.10.5"><span class="ltx_text" id="S8.T4.10.1.10.5.1" style="font-size:144%;">81.70%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S8.T4.10.1.10.6"><span class="ltx_text" id="S8.T4.10.1.10.6.1" style="font-size:144%;">94.53%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S8.T4.10.1.10.7"><span class="ltx_text" id="S8.T4.10.1.10.7.1" style="font-size:144%;">93.56%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S8.T4.10.1.10.8"><span class="ltx_text" id="S8.T4.10.1.10.8.1" style="font-size:144%;">93.71%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S8.T4.10.1.10.9"><span class="ltx_text" id="S8.T4.10.1.10.9.1" style="font-size:144%;">93.86%</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S8.T4.10.1.10.10"><span class="ltx_text" id="S8.T4.10.1.10.10.1" style="font-size:144%;">98.44%</span></td>
</tr>
<tr class="ltx_tr" id="S8.T4.10.1.11">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S8.T4.10.1.11.1"><span class="ltx_text ltx_font_bold" id="S8.T4.10.1.11.1.1" style="font-size:144%;">Models</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_right ltx_border_tt" id="S8.T4.10.1.11.2">
<span class="ltx_ERROR undefined" id="S8.T4.10.1.11.2.1">\Centerstack</span><span class="ltx_text ltx_font_bold" id="S8.T4.10.1.11.2.2" style="font-size:144%;">Dynamic Spatial</span>
</td>
<td class="ltx_td ltx_border_tt" id="S8.T4.10.1.11.3"></td>
<td class="ltx_td ltx_border_tt" id="S8.T4.10.1.11.4"></td>
<td class="ltx_td ltx_border_tt" id="S8.T4.10.1.11.5"></td>
<td class="ltx_td ltx_border_tt" id="S8.T4.10.1.11.6"></td>
<td class="ltx_td ltx_border_tt" id="S8.T4.10.1.11.7"></td>
<td class="ltx_td ltx_border_tt" id="S8.T4.10.1.11.8"></td>
<td class="ltx_td ltx_border_tt" id="S8.T4.10.1.11.9"></td>
<td class="ltx_td ltx_border_tt" id="S8.T4.10.1.11.10"></td>
</tr>
<tr class="ltx_tr" id="S8.T4.10.1.12">
<td class="ltx_td" id="S8.T4.10.1.12.1"></td>
<td class="ltx_td ltx_align_right" id="S8.T4.10.1.12.2">
<span class="ltx_ERROR undefined" id="S8.T4.10.1.12.2.1">\Centerstack</span><span class="ltx_text ltx_font_bold" id="S8.T4.10.1.12.2.2" style="font-size:144%;">Dynamic</span>
</td>
<td class="ltx_td" id="S8.T4.10.1.12.3"></td>
<td class="ltx_td" id="S8.T4.10.1.12.4"></td>
<td class="ltx_td" id="S8.T4.10.1.12.5"></td>
<td class="ltx_td" id="S8.T4.10.1.12.6"></td>
<td class="ltx_td" id="S8.T4.10.1.12.7"></td>
<td class="ltx_td" id="S8.T4.10.1.12.8"></td>
<td class="ltx_td" id="S8.T4.10.1.12.9"></td>
<td class="ltx_td" id="S8.T4.10.1.12.10"></td>
</tr>
<tr class="ltx_tr" id="S8.T4.10.1.13">
<td class="ltx_td" id="S8.T4.10.1.13.1"></td>
<td class="ltx_td ltx_align_right" id="S8.T4.10.1.13.2">
<span class="ltx_ERROR undefined" id="S8.T4.10.1.13.2.1">\Centerstack</span><span class="ltx_text ltx_font_bold" id="S8.T4.10.1.13.2.2" style="font-size:144%;">Motion Order</span>
</td>
<td class="ltx_td" id="S8.T4.10.1.13.3"></td>
<td class="ltx_td" id="S8.T4.10.1.13.4"></td>
<td class="ltx_td" id="S8.T4.10.1.13.5"></td>
<td class="ltx_td" id="S8.T4.10.1.13.6"></td>
<td class="ltx_td" id="S8.T4.10.1.13.7"></td>
<td class="ltx_td" id="S8.T4.10.1.13.8"></td>
<td class="ltx_td" id="S8.T4.10.1.13.9"></td>
<td class="ltx_td" id="S8.T4.10.1.13.10"></td>
</tr>
<tr class="ltx_tr" id="S8.T4.10.1.14">
<td class="ltx_td" id="S8.T4.10.1.14.1"></td>
<td class="ltx_td ltx_align_right" id="S8.T4.10.1.14.2">
<span class="ltx_ERROR undefined" id="S8.T4.10.1.14.2.1">\Centerstack</span><span class="ltx_text ltx_font_bold" id="S8.T4.10.1.14.2.2" style="font-size:144%;">Human</span>
</td>
<td class="ltx_td" id="S8.T4.10.1.14.3"></td>
<td class="ltx_td" id="S8.T4.10.1.14.4"></td>
<td class="ltx_td" id="S8.T4.10.1.14.5"></td>
<td class="ltx_td" id="S8.T4.10.1.14.6"></td>
<td class="ltx_td" id="S8.T4.10.1.14.7"></td>
<td class="ltx_td" id="S8.T4.10.1.14.8"></td>
<td class="ltx_td" id="S8.T4.10.1.14.9"></td>
<td class="ltx_td" id="S8.T4.10.1.14.10"></td>
</tr>
<tr class="ltx_tr" id="S8.T4.10.1.15">
<td class="ltx_td" id="S8.T4.10.1.15.1"></td>
<td class="ltx_td ltx_align_right" id="S8.T4.10.1.15.2">
<span class="ltx_ERROR undefined" id="S8.T4.10.1.15.2.1">\Centerstack</span><span class="ltx_text ltx_font_bold" id="S8.T4.10.1.15.2.2" style="font-size:144%;">Complex</span>
</td>
<td class="ltx_td" id="S8.T4.10.1.15.3"></td>
<td class="ltx_td" id="S8.T4.10.1.15.4"></td>
<td class="ltx_td" id="S8.T4.10.1.15.5"></td>
<td class="ltx_td" id="S8.T4.10.1.15.6"></td>
<td class="ltx_td" id="S8.T4.10.1.15.7"></td>
<td class="ltx_td" id="S8.T4.10.1.15.8"></td>
<td class="ltx_td" id="S8.T4.10.1.15.9"></td>
<td class="ltx_td" id="S8.T4.10.1.15.10"></td>
</tr>
<tr class="ltx_tr" id="S8.T4.10.1.16">
<td class="ltx_td" id="S8.T4.10.1.16.1"></td>
<td class="ltx_td ltx_align_right" id="S8.T4.10.1.16.2">
<span class="ltx_ERROR undefined" id="S8.T4.10.1.16.2.1">\Centerstack</span><span class="ltx_text ltx_font_bold" id="S8.T4.10.1.16.2.2" style="font-size:144%;">Complex</span>
</td>
<td class="ltx_td" id="S8.T4.10.1.16.3"></td>
<td class="ltx_td" id="S8.T4.10.1.16.4"></td>
<td class="ltx_td" id="S8.T4.10.1.16.5"></td>
<td class="ltx_td" id="S8.T4.10.1.16.6"></td>
<td class="ltx_td" id="S8.T4.10.1.16.7"></td>
<td class="ltx_td" id="S8.T4.10.1.16.8"></td>
<td class="ltx_td" id="S8.T4.10.1.16.9"></td>
<td class="ltx_td" id="S8.T4.10.1.16.10"></td>
</tr>
<tr class="ltx_tr" id="S8.T4.10.1.17">
<td class="ltx_td" id="S8.T4.10.1.17.1"></td>
<td class="ltx_td ltx_align_right" id="S8.T4.10.1.17.2">
<span class="ltx_ERROR undefined" id="S8.T4.10.1.17.2.1">\Centerstack</span><span class="ltx_text ltx_font_bold" id="S8.T4.10.1.17.2.2" style="font-size:144%;">Camera</span>
</td>
<td class="ltx_td" id="S8.T4.10.1.17.3"></td>
<td class="ltx_td" id="S8.T4.10.1.17.4"></td>
<td class="ltx_td" id="S8.T4.10.1.17.5"></td>
<td class="ltx_td" id="S8.T4.10.1.17.6"></td>
<td class="ltx_td" id="S8.T4.10.1.17.7"></td>
<td class="ltx_td" id="S8.T4.10.1.17.8"></td>
<td class="ltx_td" id="S8.T4.10.1.17.9"></td>
<td class="ltx_td" id="S8.T4.10.1.17.10"></td>
</tr>
<tr class="ltx_tr" id="S8.T4.10.1.18">
<td class="ltx_td" id="S8.T4.10.1.18.1"></td>
<td class="ltx_td ltx_align_right" id="S8.T4.10.1.18.2">
<span class="ltx_ERROR undefined" id="S8.T4.10.1.18.2.1">\Centerstack</span><span class="ltx_text ltx_font_bold" id="S8.T4.10.1.18.2.2" style="font-size:144%;">Motion</span>
</td>
<td class="ltx_td" id="S8.T4.10.1.18.3"></td>
<td class="ltx_td" id="S8.T4.10.1.18.4"></td>
<td class="ltx_td" id="S8.T4.10.1.18.5"></td>
<td class="ltx_td" id="S8.T4.10.1.18.6"></td>
<td class="ltx_td" id="S8.T4.10.1.18.7"></td>
<td class="ltx_td" id="S8.T4.10.1.18.8"></td>
<td class="ltx_td" id="S8.T4.10.1.18.9"></td>
<td class="ltx_td" id="S8.T4.10.1.18.10"></td>
</tr>
<tr class="ltx_tr" id="S8.T4.10.1.19">
<td class="ltx_td" id="S8.T4.10.1.19.1"></td>
<td class="ltx_td ltx_align_right" id="S8.T4.10.1.19.2">
<span class="ltx_ERROR undefined" id="S8.T4.10.1.19.2.1">\Centerstack</span><span class="ltx_text ltx_font_bold" id="S8.T4.10.1.19.2.2" style="font-size:144%;">Instance</span>
</td>
<td class="ltx_td" id="S8.T4.10.1.19.3"></td>
<td class="ltx_td" id="S8.T4.10.1.19.4"></td>
<td class="ltx_td" id="S8.T4.10.1.19.5"></td>
<td class="ltx_td" id="S8.T4.10.1.19.6"></td>
<td class="ltx_td" id="S8.T4.10.1.19.7"></td>
<td class="ltx_td" id="S8.T4.10.1.19.8"></td>
<td class="ltx_td" id="S8.T4.10.1.19.9"></td>
<td class="ltx_td" id="S8.T4.10.1.19.10"></td>
</tr>
<tr class="ltx_tr" id="S8.T4.10.1.20">
<td class="ltx_td" id="S8.T4.10.1.20.1"></td>
<td class="ltx_td ltx_align_right" id="S8.T4.10.1.20.2"><span class="ltx_text" id="S8.T4.10.1.20.2.1" style="font-size:144%;">Preservation</span></td>
<td class="ltx_td" id="S8.T4.10.1.20.3"></td>
<td class="ltx_td" id="S8.T4.10.1.20.4"></td>
<td class="ltx_td" id="S8.T4.10.1.20.5"></td>
<td class="ltx_td" id="S8.T4.10.1.20.6"></td>
<td class="ltx_td" id="S8.T4.10.1.20.7"></td>
<td class="ltx_td" id="S8.T4.10.1.20.8"></td>
<td class="ltx_td" id="S8.T4.10.1.20.9"></td>
<td class="ltx_td" id="S8.T4.10.1.20.10"></td>
</tr>
<tr class="ltx_tr" id="S8.T4.10.1.21">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S8.T4.10.1.21.1">
<span class="ltx_text" id="S8.T4.10.1.21.1.1" style="font-size:144%;">HunyuanVideo </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S8.T4.10.1.21.1.2.1" style="font-size:144%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.21755v1#bib.bib72" title=""><span class="ltx_text" style="font-size:90%;">72</span></a><span class="ltx_text" id="S8.T4.10.1.21.1.3.2" style="font-size:144%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S8.T4.10.1.21.2">
<span class="ltx_text ltx_font_bold" id="S8.T4.10.1.21.2.1" style="font-size:144%;">50.64%</span><span class="ltx_text" id="S8.T4.10.1.21.2.2" style="font-size:144%;"> / </span><span class="ltx_text ltx_font_bold" id="S8.T4.10.1.21.2.3" style="font-size:144%;">51.37%</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S8.T4.10.1.21.3">
<span class="ltx_text" id="S8.T4.10.1.21.3.1" style="font-size:144%;">52.75% / </span><span class="ltx_text ltx_font_bold" id="S8.T4.10.1.21.3.2" style="font-size:144%;">55.07%</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S8.T4.10.1.21.4"><span class="ltx_text" id="S8.T4.10.1.21.4.1" style="font-size:144%;">51.46% / 56.35%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S8.T4.10.1.21.5"><span class="ltx_text" id="S8.T4.10.1.21.5.1" style="font-size:144%;">49.72% / 52.45%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S8.T4.10.1.21.6">
<span class="ltx_text" id="S8.T4.10.1.21.6.1" style="font-size:144%;">52.78% / </span><span class="ltx_text ltx_font_bold" id="S8.T4.10.1.21.6.2" style="font-size:144%;">60.04%</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S8.T4.10.1.21.7"><span class="ltx_text" id="S8.T4.10.1.21.7.1" style="font-size:144%;">45.74% / 30.46%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S8.T4.10.1.21.8"><span class="ltx_text" id="S8.T4.10.1.21.8.1" style="font-size:144%;">46.60% / 49.28%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S8.T4.10.1.21.9"><span class="ltx_text" id="S8.T4.10.1.21.9.1" style="font-size:144%;">49.43% / 52.68%</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S8.T4.10.1.21.10"><span class="ltx_text" id="S8.T4.10.1.21.10.1" style="font-size:144%;">49.61% / 52.36%</span></td>
</tr>
<tr class="ltx_tr" id="S8.T4.10.1.22">
<td class="ltx_td ltx_align_center ltx_border_r" id="S8.T4.10.1.22.1">
<span class="ltx_text" id="S8.T4.10.1.22.1.1" style="font-size:144%;">CogVideoX-1.5 </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S8.T4.10.1.22.1.2.1" style="font-size:144%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.21755v1#bib.bib86" title=""><span class="ltx_text" style="font-size:90%;">86</span></a><span class="ltx_text" id="S8.T4.10.1.22.1.3.2" style="font-size:144%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S8.T4.10.1.22.2"><span class="ltx_text" id="S8.T4.10.1.22.2.1" style="font-size:144%;">49.36% / 48.07%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S8.T4.10.1.22.3">
<span class="ltx_text ltx_font_bold" id="S8.T4.10.1.22.3.1" style="font-size:144%;">53.72%</span><span class="ltx_text" id="S8.T4.10.1.22.3.2" style="font-size:144%;"> / 54.70%</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S8.T4.10.1.22.4"><span class="ltx_text" id="S8.T4.10.1.22.4.1" style="font-size:144%;">51.68% / 52.13%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S8.T4.10.1.22.5">
<span class="ltx_text ltx_font_bold" id="S8.T4.10.1.22.5.1" style="font-size:144%;">53.28% </span><span class="ltx_text" id="S8.T4.10.1.22.5.2" style="font-size:144%;">/ 51.34%</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S8.T4.10.1.22.6">
<span class="ltx_text ltx_font_bold" id="S8.T4.10.1.22.6.1" style="font-size:144%;">55.74%</span><span class="ltx_text" id="S8.T4.10.1.22.6.2" style="font-size:144%;"> / 54.46%</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S8.T4.10.1.22.7">
<span class="ltx_text ltx_font_bold" id="S8.T4.10.1.22.7.1" style="font-size:144%;">52.50%</span><span class="ltx_text" id="S8.T4.10.1.22.7.2" style="font-size:144%;"> / </span><span class="ltx_text ltx_font_bold" id="S8.T4.10.1.22.7.3" style="font-size:144%;">65.37%</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S8.T4.10.1.22.8"><span class="ltx_text" id="S8.T4.10.1.22.8.1" style="font-size:144%;">46.19% / 44.08%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S8.T4.10.1.22.9"><span class="ltx_text" id="S8.T4.10.1.22.9.1" style="font-size:144%;">49.04% / 42.24%</span></td>
<td class="ltx_td ltx_align_center" id="S8.T4.10.1.22.10"><span class="ltx_text" id="S8.T4.10.1.22.10.1" style="font-size:144%;">41.91% / 41.32%</span></td>
</tr>
<tr class="ltx_tr" id="S8.T4.10.1.23">
<td class="ltx_td ltx_align_center ltx_border_r" id="S8.T4.10.1.23.1">
<span class="ltx_text" id="S8.T4.10.1.23.1.1" style="font-size:144%;">Sora </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S8.T4.10.1.23.1.2.1" style="font-size:144%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.21755v1#bib.bib53" title=""><span class="ltx_text" style="font-size:90%;">53</span></a><span class="ltx_text" id="S8.T4.10.1.23.1.3.2" style="font-size:144%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S8.T4.10.1.23.2"><span class="ltx_text" id="S8.T4.10.1.23.2.1" style="font-size:144%;">49.68% / 49.60%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S8.T4.10.1.23.3"><span class="ltx_text" id="S8.T4.10.1.23.3.1" style="font-size:144%;">42.98% / 43.16%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S8.T4.10.1.23.4"><span class="ltx_text" id="S8.T4.10.1.23.4.1" style="font-size:144%;">43.60% / 30.81%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S8.T4.10.1.23.5"><span class="ltx_text" id="S8.T4.10.1.23.5.1" style="font-size:144%;">43.94% / 43.49%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S8.T4.10.1.23.6"><span class="ltx_text" id="S8.T4.10.1.23.6.1" style="font-size:144%;">40.56% / 35.87%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S8.T4.10.1.23.7"><span class="ltx_text" id="S8.T4.10.1.23.7.1" style="font-size:144%;">50.74% / 49.35%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S8.T4.10.1.23.8"><span class="ltx_text" id="S8.T4.10.1.23.8.1" style="font-size:144%;">42.08% / 42.64%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S8.T4.10.1.23.9"><span class="ltx_text" id="S8.T4.10.1.23.9.1" style="font-size:144%;">49.43% / 44.83%</span></td>
<td class="ltx_td ltx_align_center" id="S8.T4.10.1.23.10">
<span class="ltx_text ltx_font_bold" id="S8.T4.10.1.23.10.1" style="font-size:144%;">55.17%</span><span class="ltx_text" id="S8.T4.10.1.23.10.2" style="font-size:144%;"> / 52.94%</span>
</td>
</tr>
<tr class="ltx_tr" id="S8.T4.10.1.24">
<td class="ltx_td ltx_align_center ltx_border_r" id="S8.T4.10.1.24.1">
<span class="ltx_text" id="S8.T4.10.1.24.1.1" style="font-size:144%;">Kling 1.6 </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S8.T4.10.1.24.1.2.1" style="font-size:144%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.21755v1#bib.bib69" title=""><span class="ltx_text" style="font-size:90%;">69</span></a><span class="ltx_text" id="S8.T4.10.1.24.1.3.2" style="font-size:144%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S8.T4.10.1.24.2"><span class="ltx_text" id="S8.T4.10.1.24.2.1" style="font-size:144%;">50.32% / 50.97%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S8.T4.10.1.24.3"><span class="ltx_text" id="S8.T4.10.1.24.3.1" style="font-size:144%;">50.55% / 47.07%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S8.T4.10.1.24.4">
<span class="ltx_text ltx_font_bold" id="S8.T4.10.1.24.4.1" style="font-size:144%;">53.25%</span><span class="ltx_text" id="S8.T4.10.1.24.4.2" style="font-size:144%;"> / </span><span class="ltx_text ltx_font_bold" id="S8.T4.10.1.24.4.3" style="font-size:144%;">60.73%</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S8.T4.10.1.24.5">
<span class="ltx_text" id="S8.T4.10.1.24.5.1" style="font-size:144%;">53.06% / </span><span class="ltx_text ltx_font_bold" id="S8.T4.10.1.24.5.2" style="font-size:144%;">52.73%</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S8.T4.10.1.24.6"><span class="ltx_text" id="S8.T4.10.1.24.6.1" style="font-size:144%;">50.93% / 49.63%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S8.T4.10.1.24.7"><span class="ltx_text" id="S8.T4.10.1.24.7.1" style="font-size:144%;">51.02% / 54.81%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S8.T4.10.1.24.8">
<span class="ltx_text ltx_font_bold" id="S8.T4.10.1.24.8.1" style="font-size:144%;">65.12%</span><span class="ltx_text" id="S8.T4.10.1.24.8.2" style="font-size:144%;"> / </span><span class="ltx_text ltx_font_bold" id="S8.T4.10.1.24.8.3" style="font-size:144%;">63.99%</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S8.T4.10.1.24.9">
<span class="ltx_text ltx_font_bold" id="S8.T4.10.1.24.9.1" style="font-size:144%;">52.11%</span><span class="ltx_text" id="S8.T4.10.1.24.9.2" style="font-size:144%;"> / </span><span class="ltx_text ltx_font_bold" id="S8.T4.10.1.24.9.3" style="font-size:144%;">60.25%</span>
</td>
<td class="ltx_td ltx_align_center" id="S8.T4.10.1.24.10">
<span class="ltx_text" id="S8.T4.10.1.24.10.1" style="font-size:144%;">53.31% / </span><span class="ltx_text ltx_font_bold" id="S8.T4.10.1.24.10.2" style="font-size:144%;">53.37%</span>
</td>
</tr>
<tr class="ltx_tr" id="S8.T4.10.1.25">
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r ltx_border_t" id="S8.T4.10.1.25.1"><span class="ltx_text" id="S8.T4.10.1.25.1.1" style="font-size:144%;">Correlation</span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r ltx_border_t" id="S8.T4.10.1.25.2"><span class="ltx_text" id="S8.T4.10.1.25.2.1" style="font-size:144%;">97.36%</span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r ltx_border_t" id="S8.T4.10.1.25.3"><span class="ltx_text" id="S8.T4.10.1.25.3.1" style="font-size:144%;">90.95%</span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r ltx_border_t" id="S8.T4.10.1.25.4"><span class="ltx_text" id="S8.T4.10.1.25.4.1" style="font-size:144%;">98.73%</span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r ltx_border_t" id="S8.T4.10.1.25.5"><span class="ltx_text" id="S8.T4.10.1.25.5.1" style="font-size:144%;">89.93%</span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r ltx_border_t" id="S8.T4.10.1.25.6"><span class="ltx_text" id="S8.T4.10.1.25.6.1" style="font-size:144%;">91.17%</span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r ltx_border_t" id="S8.T4.10.1.25.7"><span class="ltx_text" id="S8.T4.10.1.25.7.1" style="font-size:144%;">97.65%</span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r ltx_border_t" id="S8.T4.10.1.25.8"><span class="ltx_text" id="S8.T4.10.1.25.8.1" style="font-size:144%;">97.95%</span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r ltx_border_t" id="S8.T4.10.1.25.9"><span class="ltx_text" id="S8.T4.10.1.25.9.1" style="font-size:144%;">87.97%</span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_t" id="S8.T4.10.1.25.10"><span class="ltx_text" id="S8.T4.10.1.25.10.1" style="font-size:144%;">93.70%</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 Table S4 presents a detailed comparison of win ratios between automated VBench-2.0 evaluations and human judgments for various video generation model performance across 18 different dimensions.  The 'VBench-2.0 Win Ratio' column indicates the percentage of times the VBench-2.0 evaluation correctly predicted the superior model based on human preference.  Conversely, the 'Human Win Ratio' column shows the percentage of times human annotators preferred the model that VBench-2.0 evaluation identified. High similarity between these two ratios for each dimension demonstrates a strong alignment between the automated evaluation and human perception, validating VBench-2.0's effectiveness.
> <details>
> <summary>read the caption</summary>
> Table S4:  Human Alignment of VBench-2.0 Evaluation Methods. For each evaluation dimension and each video generative model, we report “VBench-2.0 Win Ratios (left) / Human Win Ratios (right)”. The results demonstrate that our evaluation metrics closely align with human perception across all dimensions.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2503.21755/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.21755/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.21755/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.21755/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.21755/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.21755/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.21755/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.21755/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.21755/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.21755/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.21755/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.21755/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.21755/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.21755/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.21755/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.21755/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.21755/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.21755/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.21755/19.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.21755/20.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}