---
title: "PlotGen: Multi-Agent LLM-based Scientific Data Visualization via Multimodal Feedback"
summary: "PlotGen: A novel multi-agent LLM framework automates accurate scientific data visualization via multimodal feedback, boosting novice productivity and improving visualization accuracy."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Natural Language Processing", "Large Language Models", "🏢 IGDTUW, Delhi",]
showSummary: true
date: 2025-02-03
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2502.00988 {{< /keyword >}}
{{< keyword icon="writer" >}} Kanika Goswami et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-02-07 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2502.00988" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2502.00988" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2502.00988/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Creating clear and informative visualizations from scientific data can be challenging, especially for researchers without strong programming skills.  Existing tools are often complex, requiring significant expertise to use effectively, and even experienced users often struggle with accuracy. Large language models (LLMs) show promise for automating this process, but struggle with accuracy and need iterative debugging. 



PlotGen tackles these issues by using a multi-agent system powered by LLMs.  It breaks down complex user requests into smaller tasks, generates code, and then uses three feedback agents (numerical, lexical, and visual) to iteratively refine the visualization based on multimodal feedback.  This iterative refinement significantly improves accuracy and reduces debugging time, making the process much easier for novice users and ultimately improving their productivity. The results demonstrate that PlotGen outperforms other methods, showing the effectiveness of its approach.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} PlotGen uses a multi-agent system with LLMs to generate and iteratively refine scientific data visualizations. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} Multimodal feedback (visual, lexical, numerical) significantly improves visualization accuracy. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} PlotGen outperforms existing methods, enhancing user trust and novice productivity. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper is important because it presents **PlotGen**, a novel framework that significantly improves the accuracy and efficiency of automated scientific data visualization.  This addresses a critical need in the field, making advanced visualization techniques more accessible to novice users and potentially accelerating research across many scientific disciplines.  **The innovative use of multimodal LLMs and multi-agent design opens new avenues** for research in AI-assisted data analysis and visualization.

------
#### Visual Insights



![](https://arxiv.org/html/2502.00988/extracted/6172064/figures/user_study.jpeg)

> 🔼 PlotGen uses multiple large language models (LLMs) working together to create visualizations from user requests.  A Query Planning Agent breaks down the request into steps. A Code Generation Agent turns those steps into Python code. Three feedback agents (Numeric, Lexical, and Visual) use multimodal LLMs to check the accuracy of the data, text, and appearance of the generated plot, making iterative improvements via self-reflection.
> <details>
> <summary>read the caption</summary>
> Figure 1. PlotGen generates accurate scientific data visualizations based on user specifications by orchestrating multimodal LLMs: (1) Query Planning Agent that breaks down complex user requests into executable steps; (2) Code Generation Agent that converts pseudocode into executable Python code; and three code retrieval feedback agents—(3) Numeric Feedback Agent, (4) Lexical Feedback Agent, and (5) Visual Feedback Agent—that leverage multimodal LLMs to iteratively refine the data accuracy, textual labels, and visual aesthetics of generated plots via self-reflection.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S4.T1.2">
<tr class="ltx_tr" id="S4.T1.2.1">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_tt" id="S4.T1.2.1.1"><span class="ltx_text ltx_font_bold" id="S4.T1.2.1.1.1" style="font-size:70%;">Method</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S4.T1.2.1.2"><span class="ltx_text ltx_font_bold" id="S4.T1.2.1.2.1" style="font-size:70%;">WizardCoder-33B</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S4.T1.2.1.3"><span class="ltx_text ltx_font_bold" id="S4.T1.2.1.3.1" style="font-size:70%;">Magicoder-6.7B</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S4.T1.2.1.4"><span class="ltx_text ltx_font_bold" id="S4.T1.2.1.4.1" style="font-size:70%;">GPT-3.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T1.2.1.5"><span class="ltx_text ltx_font_bold" id="S4.T1.2.1.5.1" style="font-size:70%;">GPT-4</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.2.2">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S4.T1.2.2.1"><span class="ltx_text" id="S4.T1.2.2.1.1" style="font-size:70%;">Dir. Decoding</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.2.2.2"><span class="ltx_text" id="S4.T1.2.2.2.1" style="font-size:70%;">36.94</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.2.2.3"><span class="ltx_text" id="S4.T1.2.2.3.1" style="font-size:70%;">38.49</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.2.2.4"><span class="ltx_text" id="S4.T1.2.2.4.1" style="font-size:70%;">38.03</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.2.2.5"><span class="ltx_text" id="S4.T1.2.2.5.1" style="font-size:70%;">48.86</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.2.3">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T1.2.3.1"><span class="ltx_text" id="S4.T1.2.3.1.1" style="font-size:70%;">0-shot CoT</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.2.3.2"><span class="ltx_text" id="S4.T1.2.3.2.1" style="font-size:70%;">35.81</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.2.3.3"><span class="ltx_text" id="S4.T1.2.3.3.1" style="font-size:70%;">37.95</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.2.3.4"><span class="ltx_text" id="S4.T1.2.3.4.1" style="font-size:70%;">37.14</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.3.5"><span class="ltx_text" id="S4.T1.2.3.5.1" style="font-size:70%;">45.42</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.2.4">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T1.2.4.1"><span class="ltx_text" id="S4.T1.2.4.1.1" style="font-size:70%;">MatplotAgent</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.2.4.2"><span class="ltx_text" id="S4.T1.2.4.2.1" style="font-size:70%;">45.96</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.2.4.3"><span class="ltx_text" id="S4.T1.2.4.3.1" style="font-size:70%;">51.70</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.2.4.4"><span class="ltx_text" id="S4.T1.2.4.4.1" style="font-size:70%;">47.51</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.4.5"><span class="ltx_text" id="S4.T1.2.4.5.1" style="font-size:70%;">61.16</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.2.5" style="background-color:#CCFFCC;">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_r ltx_border_t" id="S4.T1.2.5.1"><span class="ltx_text ltx_font_typewriter" id="S4.T1.2.5.1.1" style="font-size:70%;background-color:#CCFFCC;">PlotGen</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r ltx_border_t" id="S4.T1.2.5.2"><span class="ltx_text ltx_font_bold" id="S4.T1.2.5.2.1" style="font-size:70%;background-color:#CCFFCC;">48.82</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r ltx_border_t" id="S4.T1.2.5.3"><span class="ltx_text ltx_font_bold" id="S4.T1.2.5.3.1" style="font-size:70%;background-color:#CCFFCC;">57.13</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r ltx_border_t" id="S4.T1.2.5.4"><span class="ltx_text ltx_font_bold" id="S4.T1.2.5.4.1" style="font-size:70%;background-color:#CCFFCC;">53.25</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T1.2.5.5"><span class="ltx_text ltx_font_bold" id="S4.T1.2.5.5.1" style="font-size:70%;background-color:#CCFFCC;">65.67</span></td>
</tr>
</table>{{< /table-caption >}}

> 🔼 This table presents a comparison of the performance of the PlotGen model against several baseline models on the MatPlotBench dataset.  The performance is measured using an LLM-based automatic scoring metric (0-100).  The baseline models include Direct Decoding (LLM directly generating code), 0-shot Chain-of-thought prompting (LLM prompted with chain of thought), and MatPlotAgent (a prior model using GPT-4 and GPT-4V).  The table shows the performance scores for each model across four different LLMs: WizardCoder-33B, Magicoder-6.7B, GPT-3.5, and GPT-4, highlighting PlotGen's consistent improvement over the baselines.
> <details>
> <summary>read the caption</summary>
> Table 1.  Performance of PlotGen compared with baselines on MatPlotBench.
> </details>





### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2502.00988/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.00988/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.00988/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.00988/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.00988/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}