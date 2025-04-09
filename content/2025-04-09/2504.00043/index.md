---
title: "CrossWordBench: Evaluating the Reasoning Capabilities of LLMs and LVLMs with Controllable Puzzle Generation"
summary: "CrossWordBench: Reasoning of LLMs/LVLMs via Puzzles"
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Multimodal Learning", "Multimodal Reasoning", "🏢 Carnegie Mellon University",]
showSummary: true
date: 2025-03-30
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2504.00043 {{< /keyword >}}
{{< keyword icon="writer" >}} Jixuan Leng et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-04-09 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2504.00043" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2504.00043" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2504.00043/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Current reasoning evaluation frameworks often fail to capture the dynamic interplay between textual and visual constraints, which are crucial for real-world problem-solving. To address this, the paper introduces **CrossWordBench**, a new benchmark designed to evaluate the reasoning capabilities of both Large Language Models (LLMs) and Large Vision-Language Models (LVLMs) through the medium of crossword puzzles, which require adherence to semantic constraints from text-based clues and intersectional constraints from visual grid structures. 



The **CrossWordBench** offers a controllable puzzle generation framework that produces puzzles in multiple formats and evaluation strategies.  The paper's extensive evaluation of over 20 models reveals that reasoning LLMs outperform non-reasoning models substantially by effectively leveraging crossing-letter constraints. It further demonstrates that LVLMs struggle with the task, showing a strong correlation between their puzzle-solving performance and grid-parsing accuracy.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Reasoning LLMs outperform non-reasoning models by effectively leveraging crossing-letter constraints. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} LVLMs struggle with crossword puzzles, with performance strongly correlated to grid-parsing accuracy. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Even puzzles from saturated benchmarks remain challenging, highlighting the importance of structural constraints in reasoning evaluation. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper is important for researchers because it **introduces a new benchmark for evaluating LLMs and LVLMs**. It provides a more realistic, multimodal evaluation approach that can **better assess models' reasoning capabilities** for complex tasks. It also **opens avenues for future research** in multimodal RL training. 

------
#### Visual Insights





{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S3.T1.2">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S3.T1.2.3.1">
<th class="ltx_td ltx_align_justify ltx_th ltx_th_row ltx_border_tt" id="S3.T1.2.3.1.1" rowspan="2">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.2.3.1.1.1">
<span class="ltx_p" id="S3.T1.2.3.1.1.1.1"><span class="ltx_text ltx_font_bold" id="S3.T1.2.3.1.1.1.1.1">Stats.</span></span>
</span>
</th>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="S3.T1.2.3.1.2"><span class="ltx_text ltx_font_bold" id="S3.T1.2.3.1.2.1">English</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T1.2.3.1.3"><span class="ltx_text ltx_font_bold" id="S3.T1.2.3.1.3.1">Chinese</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T1.2.3.1.4"><span class="ltx_text ltx_font_bold" id="S3.T1.2.3.1.4.1">English Simple</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T1.2.3.1.5"><span class="ltx_text ltx_font_bold" id="S3.T1.2.3.1.5.1">CommonsenseQA</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.2.4.2">
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.2.4.2.1">7×7</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.2.4.2.2">14×14</td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.4.2.3">7×7</td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.4.2.4">7×7</td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.4.2.5">7×7</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.1">
<th class="ltx_td ltx_align_justify ltx_th ltx_th_row ltx_border_t" id="S3.T1.1.1.1">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.1.1">
<span class="ltx_p" id="S3.T1.1.1.1.1.1">Total <math alttext="\#" class="ltx_Math" display="inline" id="S3.T1.1.1.1.1.1.m1.1"><semantics id="S3.T1.1.1.1.1.1.m1.1a"><mi id="S3.T1.1.1.1.1.1.m1.1.1" mathvariant="normal" xref="S3.T1.1.1.1.1.1.m1.1.1.cmml">#</mi><annotation-xml encoding="MathML-Content" id="S3.T1.1.1.1.1.1.m1.1b"><ci id="S3.T1.1.1.1.1.1.m1.1.1.cmml" xref="S3.T1.1.1.1.1.1.m1.1.1">#</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.1.1.1.1.1.m1.1c">\#</annotation><annotation encoding="application/x-llamapun" id="S3.T1.1.1.1.1.1.m1.1d">#</annotation></semantics></math> of puzzles</span>
</span>
</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.2">100</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.3">100</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.4">100</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.5">100</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.6">50</td>
</tr>
<tr class="ltx_tr" id="S3.T1.2.2">
<th class="ltx_td ltx_align_justify ltx_th ltx_th_row" id="S3.T1.2.2.1">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.2.2.1.1">
<span class="ltx_p" id="S3.T1.2.2.1.1.1">Total <math alttext="\#" class="ltx_Math" display="inline" id="S3.T1.2.2.1.1.1.m1.1"><semantics id="S3.T1.2.2.1.1.1.m1.1a"><mi id="S3.T1.2.2.1.1.1.m1.1.1" mathvariant="normal" xref="S3.T1.2.2.1.1.1.m1.1.1.cmml">#</mi><annotation-xml encoding="MathML-Content" id="S3.T1.2.2.1.1.1.m1.1b"><ci id="S3.T1.2.2.1.1.1.m1.1.1.cmml" xref="S3.T1.2.2.1.1.1.m1.1.1">#</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.2.2.1.1.1.m1.1c">\#</annotation><annotation encoding="application/x-llamapun" id="S3.T1.2.2.1.1.1.m1.1d">#</annotation></semantics></math> of words</span>
</span>
</th>
<td class="ltx_td ltx_align_center" id="S3.T1.2.2.2">1,193</td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.2.3">3,472</td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.2.4">1,327</td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.2.5">1,139</td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.2.6">543</td>
</tr>
<tr class="ltx_tr" id="S3.T1.2.5.3">
<th class="ltx_td ltx_align_justify ltx_th ltx_th_row" id="S3.T1.2.5.3.1">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.2.5.3.1.1">
<span class="ltx_p" id="S3.T1.2.5.3.1.1.1">Unique words (% total)</span>
</span>
</th>
<td class="ltx_td ltx_align_center" id="S3.T1.2.5.3.2">83.82%</td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.5.3.3">80.76%</td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.5.3.4">92.92%</td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.5.3.5">36.70%</td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.5.3.6">59.85%</td>
</tr>
<tr class="ltx_tr" id="S3.T1.2.6.4">
<th class="ltx_td ltx_align_justify ltx_th ltx_th_row" id="S3.T1.2.6.4.1">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.2.6.4.1.1">
<span class="ltx_p" id="S3.T1.2.6.4.1.1.1">Unique clues (% total)</span>
</span>
</th>
<td class="ltx_td ltx_align_center" id="S3.T1.2.6.4.2">100%</td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.6.4.3">100%</td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.6.4.4">100%</td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.6.4.5">100%</td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.6.4.6">100%</td>
</tr>
<tr class="ltx_tr" id="S3.T1.2.7.5">
<th class="ltx_td ltx_align_justify ltx_th ltx_th_row ltx_border_t" colspan="6" id="S3.T1.2.7.5.1"><span class="ltx_text ltx_font_bold" id="S3.T1.2.7.5.1.1">Aggregated (English 7x7 &amp; 14x14): 200 puzzles, 74.02% unique words, 100% unique clues</span></th>
</tr>
<tr class="ltx_tr" id="S3.T1.2.8.6">
<th class="ltx_td ltx_align_justify ltx_th ltx_th_row ltx_border_t" colspan="6" id="S3.T1.2.8.6.1"><span class="ltx_text ltx_font_italic" id="S3.T1.2.8.6.1.1">Words per Puzzle</span></th>
</tr>
<tr class="ltx_tr" id="S3.T1.2.9.7">
<th class="ltx_td ltx_align_justify ltx_th ltx_th_row" id="S3.T1.2.9.7.1">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.2.9.7.1.1">
<span class="ltx_p" id="S3.T1.2.9.7.1.1.1">Minimum</span>
</span>
</th>
<td class="ltx_td ltx_align_center" id="S3.T1.2.9.7.2">11</td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.9.7.3">22</td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.9.7.4">11</td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.9.7.5">11</td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.9.7.6">9</td>
</tr>
<tr class="ltx_tr" id="S3.T1.2.10.8">
<th class="ltx_td ltx_align_justify ltx_th ltx_th_row" id="S3.T1.2.10.8.1">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.2.10.8.1.1">
<span class="ltx_p" id="S3.T1.2.10.8.1.1.1">Maximum</span>
</span>
</th>
<td class="ltx_td ltx_align_center" id="S3.T1.2.10.8.2">16</td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.10.8.3">44</td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.10.8.4">18</td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.10.8.5">13</td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.10.8.6">13</td>
</tr>
<tr class="ltx_tr" id="S3.T1.2.11.9">
<th class="ltx_td ltx_align_justify ltx_th ltx_th_row" id="S3.T1.2.11.9.1">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.2.11.9.1.1">
<span class="ltx_p" id="S3.T1.2.11.9.1.1.1">Mean</span>
</span>
</th>
<td class="ltx_td ltx_align_center" id="S3.T1.2.11.9.2">11.93</td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.11.9.3">34.72</td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.11.9.4">13.27</td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.11.9.5">11.39</td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.11.9.6">10.86</td>
</tr>
<tr class="ltx_tr" id="S3.T1.2.12.10">
<th class="ltx_td ltx_align_justify ltx_th ltx_th_row ltx_border_t" colspan="6" id="S3.T1.2.12.10.1"><span class="ltx_text ltx_font_italic" id="S3.T1.2.12.10.1.1">Word Length (Letters)</span></th>
</tr>
<tr class="ltx_tr" id="S3.T1.2.13.11">
<th class="ltx_td ltx_align_justify ltx_th ltx_th_row" id="S3.T1.2.13.11.1">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.2.13.11.1.1">
<span class="ltx_p" id="S3.T1.2.13.11.1.1.1">Minimum</span>
</span>
</th>
<td class="ltx_td ltx_align_center" id="S3.T1.2.13.11.2">2</td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.13.11.3">3</td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.13.11.4">2</td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.13.11.5">3</td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.13.11.6">3</td>
</tr>
<tr class="ltx_tr" id="S3.T1.2.14.12">
<th class="ltx_td ltx_align_justify ltx_th ltx_th_row" id="S3.T1.2.14.12.1">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.2.14.12.1.1">
<span class="ltx_p" id="S3.T1.2.14.12.1.1.1">Maximum</span>
</span>
</th>
<td class="ltx_td ltx_align_center" id="S3.T1.2.14.12.2">5</td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.14.12.3">12</td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.14.12.4">5</td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.14.12.5">5</td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.14.12.6">5</td>
</tr>
<tr class="ltx_tr" id="S3.T1.2.15.13">
<th class="ltx_td ltx_align_justify ltx_th ltx_th_row" id="S3.T1.2.15.13.1">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.2.15.13.1.1">
<span class="ltx_p" id="S3.T1.2.15.13.1.1.1">Mean</span>
</span>
</th>
<td class="ltx_td ltx_align_center" id="S3.T1.2.15.13.2">3.59</td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.15.13.3">4.31</td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.15.13.4">3.02</td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.15.13.5">3.63</td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.15.13.6">3.77</td>
</tr>
<tr class="ltx_tr" id="S3.T1.2.16.14">
<th class="ltx_td ltx_align_justify ltx_th ltx_th_row ltx_border_bb ltx_border_t" id="S3.T1.2.16.14.1">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.2.16.14.1.1">
<span class="ltx_p" id="S3.T1.2.16.14.1.1.1">Avg blocked cells (%)</span>
</span>
</th>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S3.T1.2.16.14.2">39.51%</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S3.T1.2.16.14.3">45.22%</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S3.T1.2.16.14.4">43.37%</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S3.T1.2.16.14.5">39.12%</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S3.T1.2.16.14.6">38.37%</td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 Table 1 presents a statistical overview of the crossword puzzles used in the CrossWordBench benchmark. It breaks down the statistics for different categories: English 7x7, English 14x14, Chinese 7x7, Chinese 14x14, and CommonsenseQA 7x7. Each category shows the total number of puzzles, total number of words, percentage of unique words, percentage of unique clues, minimum and maximum number of words per puzzle, minimum and maximum word length (in letters), and the average percentage of blocked cells. The table also provides aggregated statistics for the entire English puzzle set (both 7x7 and 14x14 sizes), highlighting the overall characteristics of the dataset.
> <details>
> <summary>read the caption</summary>
> Table 1: Crossword puzzle statistics for different subjects and grid sizes. Statistics are presented separately for each category, as distinct word and clue pairs are used for their construction. Additionally, aggregated statistics for all English puzzles set are included.
> </details>





### In-depth insights


#### LLM Crossword
**LLMs** bring new potential to crossword tasks. Traditional solvers relied on constraint satisfaction and knowledge bases. Now, LLMs can fine-tune, use prompting, or integrate search. Datasets were often static, text-focused, and from limited sources. New frameworks enable dynamic puzzle generation and evaluation of both text and visual reasoning.  The use of LLMs allows evaluating reasoning capabilities in puzzle tasks that requires semantic constraints from text and intersectional constraints from visual grid structures.

#### Grid Constraint
The paper introduces CrossWordBench, emphasizing the **interplay between text and visual constraints** in reasoning tasks, especially within crossword puzzles. The significance of grid constraints is that they necessitate models to **integrate both semantic understanding from clues and spatial reasoning from the grid's structure**. Accurately adhering to these constraints demands precise letter alignment at intersections and visual parsing of the grid, providing a holistic test of reasoning capabilities. **Models that effectively leverage grid constraints tend to demonstrate higher intersection consistency rates (ICR)**, indicating superior puzzle-solving performance. The importance of structural complexity in reasoning evaluation is underlined, revealing a model's proficiency in navigating multimodal adherence.

#### LVLM OCR Bottleneck
**LVLMs face a key OCR bottleneck** when processing visually-presented puzzles. The inability to accurately parse text within images, particularly vertical words, significantly hinders performance. **This OCR limitation directly impacts their ability to extract and reason**, leading to inconsistencies in grid understanding and overall puzzle-solving accuracy. **The strong correlation between grid-parsing accuracy and puzzle-solving performance underscores the fundamental importance of robust OCR capabilities** for LVLMs to effectively tackle tasks requiring integration of textual and visual information. This highlights that simply scaling the language model component is insufficient without improving visual perception.

#### Multimodal RL
While the paper doesn't explicitly delve into "Multimodal RL," the intersection of its findings strongly suggests its importance. The study highlights the limitations of current Large Vision-Language Models (LVLMs) in tasks requiring both textual and visual reasoning, particularly in crossword puzzle solving. **Multimodal RL could offer a pathway to improve LVLMs' ability to integrate diverse data streams**. By framing crossword solving as a reinforcement learning problem, agents could learn to strategically utilize both the textual clues and the visual grid structure, iteratively refining their understanding through trial and error. The paper reveals that the best reasoning LLMs can substantially outperform non-reasoning models by effectively leveraging crossing-letter constraints. This suggests that **a well-designed reward function in a multimodal RL setting could encourage agents to prioritize consistency and coherence between visual and textual information**. The exploration with visual-of-thoughts, the authors suggests a new evaluation setting for LVLMs. This emphasis on interaction is relevant for reinforcement learning. Overall, the paper sets the stage for further research into multimodal RL, positioning crossword puzzles as a valuable environment for developing and evaluating agents capable of integrating and reasoning across modalities.

#### Scaling Limits
**Scaling limits** in the context of reasoning tasks, particularly those involving LLMs and LVLMs, present significant challenges.  Current model architectures and training methodologies face limitations when scaling to increasingly complex, structurally rich environments.  For LLMs, this may manifest as difficulties in maintaining logical consistency or accurately adhering to constraints as the size of the problem increases.  LVLMs encounter further obstacles relating to efficiently processing and integrating visual information, with scaling performance often constrained by the accuracy of OCR and the ability to relate textual clues to visual elements.  The effective exploitation of multimodal data becomes increasingly difficult, and the computational expense of handling larger puzzles rapidly escalates the resource requirements. Even techniques like test-time scaling, that can show initial benefits, encounter diminishing returns, demonstrating that simply increasing computational effort is insufficient to overcome inherent limitations in reasoning capability or architectural design. Further research is needed to create effective, scalable methods.


### More visual insights




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S4.T2.176.176">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T2.176.176.177.1">
<th class="ltx_td ltx_align_justify ltx_th ltx_th_row ltx_border_tt" id="S4.T2.176.176.177.1.1" rowspan="2" style="padding:1.5pt 2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.176.176.177.1.1.1">
<span class="ltx_p" id="S4.T2.176.176.177.1.1.1.1"><span class="ltx_text ltx_font_bold" id="S4.T2.176.176.177.1.1.1.1.1">Models</span></span>
</span>
</th>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="3" id="S4.T2.176.176.177.1.2" style="padding:1.5pt 2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.176.176.177.1.2.1">7x7</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="3" id="S4.T2.176.176.177.1.3" style="padding:1.5pt 2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.176.176.177.1.3.1">14x14</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.176.176.178.2">
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.176.176.178.2.1" style="padding:1.5pt 2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.176.176.178.2.1.1">WCR</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.176.176.178.2.2" style="padding:1.5pt 2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.176.176.178.2.2.1">LCR</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.176.176.178.2.3" style="padding:1.5pt 2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.176.176.178.2.3.1">ICR</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.176.176.178.2.4" style="padding:1.5pt 2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.176.176.178.2.4.1">WCR</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.176.176.178.2.5" style="padding:1.5pt 2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.176.176.178.2.5.1">LCR</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.176.176.178.2.6" style="padding:1.5pt 2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.176.176.178.2.6.1">ICR</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.176.176.179.3">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" colspan="7" id="S4.T2.176.176.179.3.1" style="background-color:#71B7ED;padding:1.5pt 2.0pt;"><span class="ltx_text ltx_font_bold ltx_font_italic" id="S4.T2.176.176.179.3.1.1" style="background-color:#71B7ED;">Proprietary LVLMs</span></th>
</tr>
<tr class="ltx_tr" id="S4.T2.6.6.6">
<th class="ltx_td ltx_align_justify ltx_th ltx_th_row ltx_border_t" id="S4.T2.6.6.6.7" style="padding:1.5pt 2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.6.6.6.7.1">
<span class="ltx_p" id="S4.T2.6.6.6.7.1.1"><span class="ltx_text ltx_font_bold" id="S4.T2.6.6.6.7.1.1.1">Claude-3-7-Sonnet</span></span>
</span>
</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.1.1" style="padding:1.5pt 2.0pt;">0.479<sub class="ltx_sub" id="S4.T2.1.1.1.1.1"><span class="ltx_text ltx_font_italic" id="S4.T2.1.1.1.1.1.1">±0.014</span></sub>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.2.2.2.2" style="padding:1.5pt 2.0pt;">0.528<sub class="ltx_sub" id="S4.T2.2.2.2.2.1"><span class="ltx_text ltx_font_italic" id="S4.T2.2.2.2.2.1.1">±0.013</span></sub>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.3.3.3.3" style="padding:1.5pt 2.0pt;">0.366<sub class="ltx_sub" id="S4.T2.3.3.3.3.1"><span class="ltx_text ltx_font_italic" id="S4.T2.3.3.3.3.1.1">±0.016</span></sub>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.4.4.4.4" style="padding:1.5pt 2.0pt;">0.416<sub class="ltx_sub" id="S4.T2.4.4.4.4.1"><span class="ltx_text ltx_font_italic" id="S4.T2.4.4.4.4.1.1">±0.009</span></sub>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.5.5.5.5" style="padding:1.5pt 2.0pt;">0.449<sub class="ltx_sub" id="S4.T2.5.5.5.5.1"><span class="ltx_text ltx_font_italic" id="S4.T2.5.5.5.5.1.1">±0.009</span></sub>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.6.6.6.6" style="padding:1.5pt 2.0pt;">0.272<sub class="ltx_sub" id="S4.T2.6.6.6.6.1"><span class="ltx_text ltx_font_italic" id="S4.T2.6.6.6.6.1.1">±0.010</span></sub>
</td>
</tr>
<tr class="ltx_tr" id="S4.T2.12.12.12">
<th class="ltx_td ltx_align_justify ltx_th ltx_th_row" id="S4.T2.12.12.12.7" style="padding:1.5pt 2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.12.12.12.7.1">
<span class="ltx_p" id="S4.T2.12.12.12.7.1.1"><span class="ltx_text ltx_font_bold" id="S4.T2.12.12.12.7.1.1.1">Claude-3-7-Sonnet <span class="ltx_ERROR undefined" id="S4.T2.12.12.12.7.1.1.1.1">\faLightbulb</span>[regular]</span></span>
</span>
</th>
<td class="ltx_td ltx_align_center" id="S4.T2.7.7.7.1" style="padding:1.5pt 2.0pt;">0.365<sub class="ltx_sub" id="S4.T2.7.7.7.1.1"><span class="ltx_text ltx_font_italic" id="S4.T2.7.7.7.1.1.1">±0.017</span></sub>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.8.8.8.2" style="padding:1.5pt 2.0pt;">0.448<sub class="ltx_sub" id="S4.T2.8.8.8.2.1"><span class="ltx_text ltx_font_italic" id="S4.T2.8.8.8.2.1.1">±0.014</span></sub>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.9.9.9.3" style="padding:1.5pt 2.0pt;">0.330<sub class="ltx_sub" id="S4.T2.9.9.9.3.1"><span class="ltx_text ltx_font_italic" id="S4.T2.9.9.9.3.1.1">±0.015</span></sub>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.10.10.10.4" style="padding:1.5pt 2.0pt;">0.382<sub class="ltx_sub" id="S4.T2.10.10.10.4.1"><span class="ltx_text ltx_font_italic" id="S4.T2.10.10.10.4.1.1">±0.009</span></sub>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.11.11.11.5" style="padding:1.5pt 2.0pt;">0.428<sub class="ltx_sub" id="S4.T2.11.11.11.5.1"><span class="ltx_text ltx_font_italic" id="S4.T2.11.11.11.5.1.1">±0.007</span></sub>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.12.12.6" style="padding:1.5pt 2.0pt;">0.228<sub class="ltx_sub" id="S4.T2.12.12.12.6.1"><span class="ltx_text ltx_font_italic" id="S4.T2.12.12.12.6.1.1">±0.008</span></sub>
</td>
</tr>
<tr class="ltx_tr" id="S4.T2.18.18.18">
<th class="ltx_td ltx_align_justify ltx_th ltx_th_row" id="S4.T2.18.18.18.7" style="padding:1.5pt 2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.18.18.18.7.1">
<span class="ltx_p" id="S4.T2.18.18.18.7.1.1"><span class="ltx_text ltx_font_bold" id="S4.T2.18.18.18.7.1.1.1">GPT-4o-2024-11-20</span></span>
</span>
</th>
<td class="ltx_td ltx_align_center" id="S4.T2.13.13.13.1" style="padding:1.5pt 2.0pt;">0.348<sub class="ltx_sub" id="S4.T2.13.13.13.1.1"><span class="ltx_text ltx_font_italic" id="S4.T2.13.13.13.1.1.1">±0.015</span></sub>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.14.14.14.2" style="padding:1.5pt 2.0pt;">0.403<sub class="ltx_sub" id="S4.T2.14.14.14.2.1"><span class="ltx_text ltx_font_italic" id="S4.T2.14.14.14.2.1.1">±0.015</span></sub>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.15.15.15.3" style="padding:1.5pt 2.0pt;">0.234<sub class="ltx_sub" id="S4.T2.15.15.15.3.1"><span class="ltx_text ltx_font_italic" id="S4.T2.15.15.15.3.1.1">±0.017</span></sub>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.16.16.16.4" style="padding:1.5pt 2.0pt;">0.350<sub class="ltx_sub" id="S4.T2.16.16.16.4.1"><span class="ltx_text ltx_font_italic" id="S4.T2.16.16.16.4.1.1">±0.009</span></sub>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.17.17.17.5" style="padding:1.5pt 2.0pt;">0.393<sub class="ltx_sub" id="S4.T2.17.17.17.5.1"><span class="ltx_text ltx_font_italic" id="S4.T2.17.17.17.5.1.1">±0.008</span></sub>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.18.18.18.6" style="padding:1.5pt 2.0pt;">0.190<sub class="ltx_sub" id="S4.T2.18.18.18.6.1"><span class="ltx_text ltx_font_italic" id="S4.T2.18.18.18.6.1.1">±0.008</span></sub>
</td>
</tr>
<tr class="ltx_tr" id="S4.T2.24.24.24">
<th class="ltx_td ltx_align_justify ltx_th ltx_th_row" id="S4.T2.24.24.24.7" style="padding:1.5pt 2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.24.24.24.7.1">
<span class="ltx_p" id="S4.T2.24.24.24.7.1.1"><span class="ltx_text ltx_font_bold" id="S4.T2.24.24.24.7.1.1.1">Gemini 2.0 Pro Exp</span></span>
</span>
</th>
<td class="ltx_td ltx_align_center" id="S4.T2.19.19.19.1" style="padding:1.5pt 2.0pt;">0.351<sub class="ltx_sub" id="S4.T2.19.19.19.1.1"><span class="ltx_text ltx_font_italic" id="S4.T2.19.19.19.1.1.1">±0.014</span></sub>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.20.20.20.2" style="padding:1.5pt 2.0pt;">0.368<sub class="ltx_sub" id="S4.T2.20.20.20.2.1"><span class="ltx_text ltx_font_italic" id="S4.T2.20.20.20.2.1.1">±0.014</span></sub>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.21.21.21.3" style="padding:1.5pt 2.0pt;">0.339<sub class="ltx_sub" id="S4.T2.21.21.21.3.1"><span class="ltx_text ltx_font_italic" id="S4.T2.21.21.21.3.1.1">±0.015</span></sub>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.22.22.22.4" style="padding:1.5pt 2.0pt;">0.273<sub class="ltx_sub" id="S4.T2.22.22.22.4.1"><span class="ltx_text ltx_font_italic" id="S4.T2.22.22.22.4.1.1">±0.008</span></sub>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.23.23.23.5" style="padding:1.5pt 2.0pt;">0.303<sub class="ltx_sub" id="S4.T2.23.23.23.5.1"><span class="ltx_text ltx_font_italic" id="S4.T2.23.23.23.5.1.1">±0.007</span></sub>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.24.24.24.6" style="padding:1.5pt 2.0pt;">0.221<sub class="ltx_sub" id="S4.T2.24.24.24.6.1"><span class="ltx_text ltx_font_italic" id="S4.T2.24.24.24.6.1.1">±0.007</span></sub>
</td>
</tr>
<tr class="ltx_tr" id="S4.T2.30.30.30">
<th class="ltx_td ltx_align_justify ltx_th ltx_th_row" id="S4.T2.30.30.30.7" style="padding:1.5pt 2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.30.30.30.7.1">
<span class="ltx_p" id="S4.T2.30.30.30.7.1.1"><span class="ltx_text ltx_font_bold" id="S4.T2.30.30.30.7.1.1.1">Gemini 2.0 Flash</span></span>
</span>
</th>
<td class="ltx_td ltx_align_center" id="S4.T2.25.25.25.1" style="padding:1.5pt 2.0pt;">0.277<sub class="ltx_sub" id="S4.T2.25.25.25.1.1"><span class="ltx_text ltx_font_italic" id="S4.T2.25.25.25.1.1.1">±0.015</span></sub>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.26.26.26.2" style="padding:1.5pt 2.0pt;">0.300<sub class="ltx_sub" id="S4.T2.26.26.26.2.1"><span class="ltx_text ltx_font_italic" id="S4.T2.26.26.26.2.1.1">±0.013</span></sub>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.27.27.27.3" style="padding:1.5pt 2.0pt;">0.225<sub class="ltx_sub" id="S4.T2.27.27.27.3.1"><span class="ltx_text ltx_font_italic" id="S4.T2.27.27.27.3.1.1">±0.013</span></sub>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.28.28.28.4" style="padding:1.5pt 2.0pt;">0.260<sub class="ltx_sub" id="S4.T2.28.28.28.4.1"><span class="ltx_text ltx_font_italic" id="S4.T2.28.28.28.4.1.1">±0.008</span></sub>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.29.29.29.5" style="padding:1.5pt 2.0pt;">0.284<sub class="ltx_sub" id="S4.T2.29.29.29.5.1"><span class="ltx_text ltx_font_italic" id="S4.T2.29.29.29.5.1.1">±0.008</span></sub>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.30.30.30.6" style="padding:1.5pt 2.0pt;">0.190<sub class="ltx_sub" id="S4.T2.30.30.30.6.1"><span class="ltx_text ltx_font_italic" id="S4.T2.30.30.30.6.1.1">±0.007</span></sub>
</td>
</tr>
<tr class="ltx_tr" id="S4.T2.176.176.180.4">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" colspan="7" id="S4.T2.176.176.180.4.1" style="background-color:#71B7ED;padding:1.5pt 2.0pt;"><span class="ltx_text ltx_font_bold ltx_font_italic" id="S4.T2.176.176.180.4.1.1" style="background-color:#71B7ED;">Open-Weight LVLMs</span></th>
</tr>
<tr class="ltx_tr" id="S4.T2.36.36.36">
<th class="ltx_td ltx_align_justify ltx_th ltx_th_row ltx_border_t" id="S4.T2.36.36.36.7" style="padding:1.5pt 2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.36.36.36.7.1">
<span class="ltx_p" id="S4.T2.36.36.36.7.1.1"><span class="ltx_text ltx_font_bold" id="S4.T2.36.36.36.7.1.1.1">Pixtral-Large-Instruct-2411</span></span>
</span>
</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.31.31.31.1" style="padding:1.5pt 2.0pt;">0.297<sub class="ltx_sub" id="S4.T2.31.31.31.1.1"><span class="ltx_text ltx_font_italic" id="S4.T2.31.31.31.1.1.1">±0.015</span></sub>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.32.32.32.2" style="padding:1.5pt 2.0pt;">0.338<sub class="ltx_sub" id="S4.T2.32.32.32.2.1"><span class="ltx_text ltx_font_italic" id="S4.T2.32.32.32.2.1.1">±0.014</span></sub>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.33.33.33.3" style="padding:1.5pt 2.0pt;">0.198<sub class="ltx_sub" id="S4.T2.33.33.33.3.1"><span class="ltx_text ltx_font_italic" id="S4.T2.33.33.33.3.1.1">±0.014</span></sub>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.34.34.34.4" style="padding:1.5pt 2.0pt;">0.251<sub class="ltx_sub" id="S4.T2.34.34.34.4.1"><span class="ltx_text ltx_font_italic" id="S4.T2.34.34.34.4.1.1">±0.009</span></sub>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.35.35.35.5" style="padding:1.5pt 2.0pt;">0.284<sub class="ltx_sub" id="S4.T2.35.35.35.5.1"><span class="ltx_text ltx_font_italic" id="S4.T2.35.35.35.5.1.1">±0.007</span></sub>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.36.36.36.6" style="padding:1.5pt 2.0pt;">0.134<sub class="ltx_sub" id="S4.T2.36.36.36.6.1"><span class="ltx_text ltx_font_italic" id="S4.T2.36.36.36.6.1.1">±0.007</span></sub>
</td>
</tr>
<tr class="ltx_tr" id="S4.T2.42.42.42">
<th class="ltx_td ltx_align_justify ltx_th ltx_th_row" id="S4.T2.42.42.42.7" style="padding:1.5pt 2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.42.42.42.7.1">
<span class="ltx_p" id="S4.T2.42.42.42.7.1.1"><span class="ltx_text ltx_font_bold" id="S4.T2.42.42.42.7.1.1.1">InternVL2_5-78B-MPO</span></span>
</span>
</th>
<td class="ltx_td ltx_align_center" id="S4.T2.37.37.37.1" style="padding:1.5pt 2.0pt;">0.121<sub class="ltx_sub" id="S4.T2.37.37.37.1.1"><span class="ltx_text ltx_font_italic" id="S4.T2.37.37.37.1.1.1">±0.011</span></sub>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.38.38.38.2" style="padding:1.5pt 2.0pt;">0.164<sub class="ltx_sub" id="S4.T2.38.38.38.2.1"><span class="ltx_text ltx_font_italic" id="S4.T2.38.38.38.2.1.1">±0.009</span></sub>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.39.39.39.3" style="padding:1.5pt 2.0pt;">0.099<sub class="ltx_sub" id="S4.T2.39.39.39.3.1"><span class="ltx_text ltx_font_italic" id="S4.T2.39.39.39.3.1.1">±0.011</span></sub>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.40.40.40.4" style="padding:1.5pt 2.0pt;">0.119<sub class="ltx_sub" id="S4.T2.40.40.40.4.1"><span class="ltx_text ltx_font_italic" id="S4.T2.40.40.40.4.1.1">±0.007</span></sub>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.41.41.41.5" style="padding:1.5pt 2.0pt;">0.159<sub class="ltx_sub" id="S4.T2.41.41.41.5.1"><span class="ltx_text ltx_font_italic" id="S4.T2.41.41.41.5.1.1">±0.006</span></sub>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.42.42.42.6" style="padding:1.5pt 2.0pt;">0.073<sub class="ltx_sub" id="S4.T2.42.42.42.6.1"><span class="ltx_text ltx_font_italic" id="S4.T2.42.42.42.6.1.1">±0.005</span></sub>
</td>
</tr>
<tr class="ltx_tr" id="S4.T2.48.48.48">
<th class="ltx_td ltx_align_justify ltx_th ltx_th_row" id="S4.T2.48.48.48.7" style="padding:1.5pt 2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.48.48.48.7.1">
<span class="ltx_p" id="S4.T2.48.48.48.7.1.1"><span class="ltx_text ltx_font_bold" id="S4.T2.48.48.48.7.1.1.1">NVLM-D-72B</span></span>
</span>
</th>
<td class="ltx_td ltx_align_center" id="S4.T2.43.43.43.1" style="padding:1.5pt 2.0pt;">0.134<sub class="ltx_sub" id="S4.T2.43.43.43.1.1"><span class="ltx_text ltx_font_italic" id="S4.T2.43.43.43.1.1.1">±0.010</span></sub>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.44.44.44.2" style="padding:1.5pt 2.0pt;">0.179<sub class="ltx_sub" id="S4.T2.44.44.44.2.1"><span class="ltx_text ltx_font_italic" id="S4.T2.44.44.44.2.1.1">±0.009</span></sub>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.45.45.45.3" style="padding:1.5pt 2.0pt;">0.076<sub class="ltx_sub" id="S4.T2.45.45.45.3.1"><span class="ltx_text ltx_font_italic" id="S4.T2.45.45.45.3.1.1">±0.008</span></sub>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.46.46.46.4" style="padding:1.5pt 2.0pt;">0.085<sub class="ltx_sub" id="S4.T2.46.46.46.4.1"><span class="ltx_text ltx_font_italic" id="S4.T2.46.46.46.4.1.1">±0.006</span></sub>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.47.47.47.5" style="padding:1.5pt 2.0pt;">0.120<sub class="ltx_sub" id="S4.T2.47.47.47.5.1"><span class="ltx_text ltx_font_italic" id="S4.T2.47.47.47.5.1.1">±0.007</span></sub>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.48.48.48.6" style="padding:1.5pt 2.0pt;">0.053<sub class="ltx_sub" id="S4.T2.48.48.48.6.1"><span class="ltx_text ltx_font_italic" id="S4.T2.48.48.48.6.1.1">±0.004</span></sub>
</td>
</tr>
<tr class="ltx_tr" id="S4.T2.54.54.54">
<th class="ltx_td ltx_align_justify ltx_th ltx_th_row" id="S4.T2.54.54.54.7" style="padding:1.5pt 2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.54.54.54.7.1">
<span class="ltx_p" id="S4.T2.54.54.54.7.1.1"><span class="ltx_text ltx_font_bold" id="S4.T2.54.54.54.7.1.1.1">Qwen2.5-VL-72B-Instruct</span></span>
</span>
</th>
<td class="ltx_td ltx_align_center" id="S4.T2.49.49.49.1" style="padding:1.5pt 2.0pt;">0.207<sub class="ltx_sub" id="S4.T2.49.49.49.1.1"><span class="ltx_text ltx_font_italic" id="S4.T2.49.49.49.1.1.1">±0.013</span></sub>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.50.50.50.2" style="padding:1.5pt 2.0pt;">0.245<sub class="ltx_sub" id="S4.T2.50.50.50.2.1"><span class="ltx_text ltx_font_italic" id="S4.T2.50.50.50.2.1.1">±0.011</span></sub>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.51.51.51.3" style="padding:1.5pt 2.0pt;">0.133<sub class="ltx_sub" id="S4.T2.51.51.51.3.1"><span class="ltx_text ltx_font_italic" id="S4.T2.51.51.51.3.1.1">±0.011</span></sub>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.52.52.52.4" style="padding:1.5pt 2.0pt;">0.194<sub class="ltx_sub" id="S4.T2.52.52.52.4.1"><span class="ltx_text ltx_font_italic" id="S4.T2.52.52.52.4.1.1">±0.007</span></sub>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.53.53.53.5" style="padding:1.5pt 2.0pt;">0.227<sub class="ltx_sub" id="S4.T2.53.53.53.5.1"><span class="ltx_text ltx_font_italic" id="S4.T2.53.53.53.5.1.1">±0.006</span></sub>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.54.54.54.6" style="padding:1.5pt 2.0pt;">0.110<sub class="ltx_sub" id="S4.T2.54.54.54.6.1"><span class="ltx_text ltx_font_italic" id="S4.T2.54.54.54.6.1.1">±0.006</span></sub>
</td>
</tr>
<tr class="ltx_tr" id="S4.T2.60.60.60">
<th class="ltx_td ltx_align_justify ltx_th ltx_th_row" id="S4.T2.60.60.60.7" style="padding:1.5pt 2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.60.60.60.7.1">
<span class="ltx_p" id="S4.T2.60.60.60.7.1.1"><span class="ltx_text ltx_font_bold" id="S4.T2.60.60.60.7.1.1.1">QVQ-72B-Preview</span></span>
</span>
</th>
<td class="ltx_td ltx_align_center" id="S4.T2.55.55.55.1" style="padding:1.5pt 2.0pt;">0.197<sub class="ltx_sub" id="S4.T2.55.55.55.1.1"><span class="ltx_text ltx_font_italic" id="S4.T2.55.55.55.1.1.1">±0.012</span></sub>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.56.56.56.2" style="padding:1.5pt 2.0pt;">0.218<sub class="ltx_sub" id="S4.T2.56.56.56.2.1"><span class="ltx_text ltx_font_italic" id="S4.T2.56.56.56.2.1.1">±0.010</span></sub>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.57.57.57.3" style="padding:1.5pt 2.0pt;">0.091<sub class="ltx_sub" id="S4.T2.57.57.57.3.1"><span class="ltx_text ltx_font_italic" id="S4.T2.57.57.57.3.1.1">±0.008</span></sub>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.58.58.58.4" style="padding:1.5pt 2.0pt;">0.195<sub class="ltx_sub" id="S4.T2.58.58.58.4.1"><span class="ltx_text ltx_font_italic" id="S4.T2.58.58.58.4.1.1">±0.007</span></sub>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.59.59.59.5" style="padding:1.5pt 2.0pt;">0.215<sub class="ltx_sub" id="S4.T2.59.59.59.5.1"><span class="ltx_text ltx_font_italic" id="S4.T2.59.59.59.5.1.1">±0.007</span></sub>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.60.60.60.6" style="padding:1.5pt 2.0pt;">0.108<sub class="ltx_sub" id="S4.T2.60.60.60.6.1"><span class="ltx_text ltx_font_italic" id="S4.T2.60.60.60.6.1.1">±0.006</span></sub>
</td>
</tr>
<tr class="ltx_tr" id="S4.T2.66.66.66">
<th class="ltx_td ltx_align_justify ltx_th ltx_th_row" id="S4.T2.66.66.66.7" style="padding:1.5pt 2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.66.66.66.7.1">
<span class="ltx_p" id="S4.T2.66.66.66.7.1.1"><span class="ltx_text ltx_font_bold" id="S4.T2.66.66.66.7.1.1.1">llava-onevision-72b-ov-chat</span></span>
</span>
</th>
<td class="ltx_td ltx_align_center" id="S4.T2.61.61.61.1" style="padding:1.5pt 2.0pt;">0.141<sub class="ltx_sub" id="S4.T2.61.61.61.1.1"><span class="ltx_text ltx_font_italic" id="S4.T2.61.61.61.1.1.1">±0.012</span></sub>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.62.62.62.2" style="padding:1.5pt 2.0pt;">0.165<sub class="ltx_sub" id="S4.T2.62.62.62.2.1"><span class="ltx_text ltx_font_italic" id="S4.T2.62.62.62.2.1.1">±0.010</span></sub>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.63.63.63.3" style="padding:1.5pt 2.0pt;">0.097<sub class="ltx_sub" id="S4.T2.63.63.63.3.1"><span class="ltx_text ltx_font_italic" id="S4.T2.63.63.63.3.1.1">±0.009</span></sub>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.64.64.64.4" style="padding:1.5pt 2.0pt;">0.112<sub class="ltx_sub" id="S4.T2.64.64.64.4.1"><span class="ltx_text ltx_font_italic" id="S4.T2.64.64.64.4.1.1">±0.008</span></sub>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.65.65.65.5" style="padding:1.5pt 2.0pt;">0.141<sub class="ltx_sub" id="S4.T2.65.65.65.5.1"><span class="ltx_text ltx_font_italic" id="S4.T2.65.65.65.5.1.1">±0.007</span></sub>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.66.66.66.6" style="padding:1.5pt 2.0pt;">0.075<sub class="ltx_sub" id="S4.T2.66.66.66.6.1"><span class="ltx_text ltx_font_italic" id="S4.T2.66.66.66.6.1.1">±0.005</span></sub>
</td>
</tr>
<tr class="ltx_tr" id="S4.T2.72.72.72">
<th class="ltx_td ltx_align_justify ltx_th ltx_th_row" id="S4.T2.72.72.72.7" style="padding:1.5pt 2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.72.72.72.7.1">
<span class="ltx_p" id="S4.T2.72.72.72.7.1.1"><span class="ltx_text ltx_font_bold" id="S4.T2.72.72.72.7.1.1.1">gemma-3-27b-it</span></span>
</span>
</th>
<td class="ltx_td ltx_align_center" id="S4.T2.67.67.67.1" style="padding:1.5pt 2.0pt;">0.158<sub class="ltx_sub" id="S4.T2.67.67.67.1.1"><span class="ltx_text ltx_font_italic" id="S4.T2.67.67.67.1.1.1">±0.011</span></sub>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.68.68.68.2" style="padding:1.5pt 2.0pt;">0.218<sub class="ltx_sub" id="S4.T2.68.68.68.2.1"><span class="ltx_text ltx_font_italic" id="S4.T2.68.68.68.2.1.1">±0.011</span></sub>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.69.69.69.3" style="padding:1.5pt 2.0pt;">0.124<sub class="ltx_sub" id="S4.T2.69.69.69.3.1"><span class="ltx_text ltx_font_italic" id="S4.T2.69.69.69.3.1.1">±0.010</span></sub>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.70.70.70.4" style="padding:1.5pt 2.0pt;">0.106<sub class="ltx_sub" id="S4.T2.70.70.70.4.1"><span class="ltx_text ltx_font_italic" id="S4.T2.70.70.70.4.1.1">±0.009</span></sub>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.71.71.71.5" style="padding:1.5pt 2.0pt;">0.160<sub class="ltx_sub" id="S4.T2.71.71.71.5.1"><span class="ltx_text ltx_font_italic" id="S4.T2.71.71.71.5.1.1">±0.009</span></sub>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.72.72.72.6" style="padding:1.5pt 2.0pt;">0.075<sub class="ltx_sub" id="S4.T2.72.72.72.6.1"><span class="ltx_text ltx_font_italic" id="S4.T2.72.72.72.6.1.1">±0.005</span></sub>
</td>
</tr>
<tr class="ltx_tr" id="S4.T2.78.78.78">
<th class="ltx_td ltx_align_justify ltx_th ltx_th_row" id="S4.T2.78.78.78.7" style="padding:1.5pt 2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.78.78.78.7.1">
<span class="ltx_p" id="S4.T2.78.78.78.7.1.1"><span class="ltx_text ltx_font_bold" id="S4.T2.78.78.78.7.1.1.1">Aria</span></span>
</span>
</th>
<td class="ltx_td ltx_align_center" id="S4.T2.73.73.73.1" style="padding:1.5pt 2.0pt;">0.061<sub class="ltx_sub" id="S4.T2.73.73.73.1.1"><span class="ltx_text ltx_font_italic" id="S4.T2.73.73.73.1.1.1">±0.009</span></sub>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.74.74.74.2" style="padding:1.5pt 2.0pt;">0.101<sub class="ltx_sub" id="S4.T2.74.74.74.2.1"><span class="ltx_text ltx_font_italic" id="S4.T2.74.74.74.2.1.1">±0.007</span></sub>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.75.75.75.3" style="padding:1.5pt 2.0pt;">0.051<sub class="ltx_sub" id="S4.T2.75.75.75.3.1"><span class="ltx_text ltx_font_italic" id="S4.T2.75.75.75.3.1.1">±0.006</span></sub>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.76.76.76.4" style="padding:1.5pt 2.0pt;">0.035<sub class="ltx_sub" id="S4.T2.76.76.76.4.1"><span class="ltx_text ltx_font_italic" id="S4.T2.76.76.76.4.1.1">±0.006</span></sub>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.77.77.77.5" style="padding:1.5pt 2.0pt;">0.070<sub class="ltx_sub" id="S4.T2.77.77.77.5.1"><span class="ltx_text ltx_font_italic" id="S4.T2.77.77.77.5.1.1">±0.006</span></sub>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.78.78.78.6" style="padding:1.5pt 2.0pt;">0.046<sub class="ltx_sub" id="S4.T2.78.78.78.6.1"><span class="ltx_text ltx_font_italic" id="S4.T2.78.78.78.6.1.1">±0.004</span></sub>
</td>
</tr>
<tr class="ltx_tr" id="S4.T2.84.84.84">
<th class="ltx_td ltx_align_justify ltx_th ltx_th_row" id="S4.T2.84.84.84.7" style="padding:1.5pt 2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.84.84.84.7.1">
<span class="ltx_p" id="S4.T2.84.84.84.7.1.1"><span class="ltx_text ltx_font_bold" id="S4.T2.84.84.84.7.1.1.1">MiniCPM-V-2_6</span></span>
</span>
</th>
<td class="ltx_td ltx_align_center" id="S4.T2.79.79.79.1" style="padding:1.5pt 2.0pt;">0.043<sub class="ltx_sub" id="S4.T2.79.79.79.1.1"><span class="ltx_text ltx_font_italic" id="S4.T2.79.79.79.1.1.1">±0.007</span></sub>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.80.80.80.2" style="padding:1.5pt 2.0pt;">0.085<sub class="ltx_sub" id="S4.T2.80.80.80.2.1"><span class="ltx_text ltx_font_italic" id="S4.T2.80.80.80.2.1.1">±0.006</span></sub>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.81.81.81.3" style="padding:1.5pt 2.0pt;">0.064<sub class="ltx_sub" id="S4.T2.81.81.81.3.1"><span class="ltx_text ltx_font_italic" id="S4.T2.81.81.81.3.1.1">±0.008</span></sub>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.82.82.82.4" style="padding:1.5pt 2.0pt;">0.023<sub class="ltx_sub" id="S4.T2.82.82.82.4.1"><span class="ltx_text ltx_font_italic" id="S4.T2.82.82.82.4.1.1">±0.004</span></sub>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.83.83.83.5" style="padding:1.5pt 2.0pt;">0.057<sub class="ltx_sub" id="S4.T2.83.83.83.5.1"><span class="ltx_text ltx_font_italic" id="S4.T2.83.83.83.5.1.1">±0.004</span></sub>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.84.84.84.6" style="padding:1.5pt 2.0pt;">0.040<sub class="ltx_sub" id="S4.T2.84.84.84.6.1"><span class="ltx_text ltx_font_italic" id="S4.T2.84.84.84.6.1.1">±0.003</span></sub>
</td>
</tr>
<tr class="ltx_tr" id="S4.T2.90.90.90">
<th class="ltx_td ltx_align_justify ltx_th ltx_th_row" id="S4.T2.90.90.90.7" style="padding:1.5pt 2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.90.90.90.7.1">
<span class="ltx_p" id="S4.T2.90.90.90.7.1.1"><span class="ltx_text ltx_font_bold" id="S4.T2.90.90.90.7.1.1.1">Qwen2.5-VL-3B-Instruct</span></span>
</span>
</th>
<td class="ltx_td ltx_align_center" id="S4.T2.85.85.85.1" style="padding:1.5pt 2.0pt;">0.013<sub class="ltx_sub" id="S4.T2.85.85.85.1.1"><span class="ltx_text ltx_font_italic" id="S4.T2.85.85.85.1.1.1">±0.003</span></sub>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.86.86.86.2" style="padding:1.5pt 2.0pt;">0.040<sub class="ltx_sub" id="S4.T2.86.86.86.2.1"><span class="ltx_text ltx_font_italic" id="S4.T2.86.86.86.2.1.1">±0.004</span></sub>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.87.87.87.3" style="padding:1.5pt 2.0pt;">0.038<sub class="ltx_sub" id="S4.T2.87.87.87.3.1"><span class="ltx_text ltx_font_italic" id="S4.T2.87.87.87.3.1.1">±0.006</span></sub>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.88.88.88.4" style="padding:1.5pt 2.0pt;">0.014<sub class="ltx_sub" id="S4.T2.88.88.88.4.1"><span class="ltx_text ltx_font_italic" id="S4.T2.88.88.88.4.1.1">±0.002</span></sub>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.89.89.89.5" style="padding:1.5pt 2.0pt;">0.034<sub class="ltx_sub" id="S4.T2.89.89.89.5.1"><span class="ltx_text ltx_font_italic" id="S4.T2.89.89.89.5.1.1">±0.003</span></sub>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.90.90.90.6" style="padding:1.5pt 2.0pt;">0.023<sub class="ltx_sub" id="S4.T2.90.90.90.6.1"><span class="ltx_text ltx_font_italic" id="S4.T2.90.90.90.6.1.1">±0.003</span></sub>
</td>
</tr>
<tr class="ltx_tr" id="S4.T2.176.176.181.5">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" colspan="7" id="S4.T2.176.176.181.5.1" style="background-color:#71EDB7;padding:1.5pt 2.0pt;"><span class="ltx_text ltx_font_bold ltx_font_italic" id="S4.T2.176.176.181.5.1.1" style="background-color:#71EDB7;">Proprietary LLMs</span></th>
</tr>
<tr class="ltx_tr" id="S4.T2.96.96.96">
<th class="ltx_td ltx_align_justify ltx_th ltx_th_row ltx_border_t" id="S4.T2.96.96.96.7" style="padding:1.5pt 2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.96.96.96.7.1">
<span class="ltx_p" id="S4.T2.96.96.96.7.1.1"><span class="ltx_text ltx_font_bold" id="S4.T2.96.96.96.7.1.1.1">o3-mini-high <span class="ltx_ERROR undefined" id="S4.T2.96.96.96.7.1.1.1.1">\faLightbulb</span>[regular]</span></span>
</span>
</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.91.91.91.1" style="padding:1.5pt 2.0pt;">0.587<sub class="ltx_sub" id="S4.T2.91.91.91.1.1"><span class="ltx_text ltx_font_italic" id="S4.T2.91.91.91.1.1.1">±0.023</span></sub>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.92.92.92.2" style="padding:1.5pt 2.0pt;">0.684<sub class="ltx_sub" id="S4.T2.92.92.92.2.1"><span class="ltx_text ltx_font_italic" id="S4.T2.92.92.92.2.1.1">±0.021</span></sub>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.93.93.93.3" style="padding:1.5pt 2.0pt;">0.891<sub class="ltx_sub" id="S4.T2.93.93.93.3.1"><span class="ltx_text ltx_font_italic" id="S4.T2.93.93.93.3.1.1">±0.018</span></sub>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.94.94.94.4" style="padding:1.5pt 2.0pt;">0.445<sub class="ltx_sub" id="S4.T2.94.94.94.4.1"><span class="ltx_text ltx_font_italic" id="S4.T2.94.94.94.4.1.1">±0.011</span></sub>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.95.95.95.5" style="padding:1.5pt 2.0pt;">0.520<sub class="ltx_sub" id="S4.T2.95.95.95.5.1"><span class="ltx_text ltx_font_italic" id="S4.T2.95.95.95.5.1.1">±0.011</span></sub>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.96.96.96.6" style="padding:1.5pt 2.0pt;">0.512<sub class="ltx_sub" id="S4.T2.96.96.96.6.1"><span class="ltx_text ltx_font_italic" id="S4.T2.96.96.96.6.1.1">±0.007</span></sub>
</td>
</tr>
<tr class="ltx_tr" id="S4.T2.102.102.102">
<th class="ltx_td ltx_align_justify ltx_th ltx_th_row" id="S4.T2.102.102.102.7" style="padding:1.5pt 2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.102.102.102.7.1">
<span class="ltx_p" id="S4.T2.102.102.102.7.1.1"><span class="ltx_text ltx_font_bold" id="S4.T2.102.102.102.7.1.1.1">Claude-3-7-Sonnet <span class="ltx_ERROR undefined" id="S4.T2.102.102.102.7.1.1.1.1">\faLightbulb</span>[regular]</span></span>
</span>
</th>
<td class="ltx_td ltx_align_center" id="S4.T2.97.97.97.1" style="padding:1.5pt 2.0pt;">0.617<sub class="ltx_sub" id="S4.T2.97.97.97.1.1"><span class="ltx_text ltx_font_italic" id="S4.T2.97.97.97.1.1.1">±0.019</span></sub>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.98.98.98.2" style="padding:1.5pt 2.0pt;">0.712<sub class="ltx_sub" id="S4.T2.98.98.98.2.1"><span class="ltx_text ltx_font_italic" id="S4.T2.98.98.98.2.1.1">±0.017</span></sub>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.99.99.99.3" style="padding:1.5pt 2.0pt;">0.754<sub class="ltx_sub" id="S4.T2.99.99.99.3.1"><span class="ltx_text ltx_font_italic" id="S4.T2.99.99.99.3.1.1">±0.021</span></sub>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.100.100.100.4" style="padding:1.5pt 2.0pt;">0.492<sub class="ltx_sub" id="S4.T2.100.100.100.4.1"><span class="ltx_text ltx_font_italic" id="S4.T2.100.100.100.4.1.1">±0.013</span></sub>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.101.101.101.5" style="padding:1.5pt 2.0pt;">0.542<sub class="ltx_sub" id="S4.T2.101.101.101.5.1"><span class="ltx_text ltx_font_italic" id="S4.T2.101.101.101.5.1.1">±0.012</span></sub>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.102.102.102.6" style="padding:1.5pt 2.0pt;">0.431<sub class="ltx_sub" id="S4.T2.102.102.102.6.1"><span class="ltx_text ltx_font_italic" id="S4.T2.102.102.102.6.1.1">±0.014</span></sub>
</td>
</tr>
<tr class="ltx_tr" id="S4.T2.108.108.108">
<th class="ltx_td ltx_align_justify ltx_th ltx_th_row" id="S4.T2.108.108.108.7" style="padding:1.5pt 2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.108.108.108.7.1">
<span class="ltx_p" id="S4.T2.108.108.108.7.1.1"><span class="ltx_text ltx_font_bold" id="S4.T2.108.108.108.7.1.1.1">Claude-3-7-Sonnet</span></span>
</span>
</th>
<td class="ltx_td ltx_align_center" id="S4.T2.103.103.103.1" style="padding:1.5pt 2.0pt;">0.482<sub class="ltx_sub" id="S4.T2.103.103.103.1.1"><span class="ltx_text ltx_font_italic" id="S4.T2.103.103.103.1.1.1">±0.015</span></sub>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.104.104.104.2" style="padding:1.5pt 2.0pt;">0.574<sub class="ltx_sub" id="S4.T2.104.104.104.2.1"><span class="ltx_text ltx_font_italic" id="S4.T2.104.104.104.2.1.1">±0.014</span></sub>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.105.105.105.3" style="padding:1.5pt 2.0pt;">0.472<sub class="ltx_sub" id="S4.T2.105.105.105.3.1"><span class="ltx_text ltx_font_italic" id="S4.T2.105.105.105.3.1.1">±0.019</span></sub>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.106.106.106.4" style="padding:1.5pt 2.0pt;">0.446<sub class="ltx_sub" id="S4.T2.106.106.106.4.1"><span class="ltx_text ltx_font_italic" id="S4.T2.106.106.106.4.1.1">±0.011</span></sub>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.107.107.107.5" style="padding:1.5pt 2.0pt;">0.485<sub class="ltx_sub" id="S4.T2.107.107.107.5.1"><span class="ltx_text ltx_font_italic" id="S4.T2.107.107.107.5.1.1">±0.011</span></sub>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.108.108.108.6" style="padding:1.5pt 2.0pt;">0.321<sub class="ltx_sub" id="S4.T2.108.108.108.6.1"><span class="ltx_text ltx_font_italic" id="S4.T2.108.108.108.6.1.1">±0.011</span></sub>
</td>
</tr>
<tr class="ltx_tr" id="S4.T2.114.114.114">
<th class="ltx_td ltx_align_justify ltx_th ltx_th_row" id="S4.T2.114.114.114.7" style="padding:1.5pt 2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.114.114.114.7.1">
<span class="ltx_p" id="S4.T2.114.114.114.7.1.1"><span class="ltx_text ltx_font_bold" id="S4.T2.114.114.114.7.1.1.1">GPT-4o-2024-11-20</span></span>
</span>
</th>
<td class="ltx_td ltx_align_center" id="S4.T2.109.109.109.1" style="padding:1.5pt 2.0pt;">0.410<sub class="ltx_sub" id="S4.T2.109.109.109.1.1"><span class="ltx_text ltx_font_italic" id="S4.T2.109.109.109.1.1.1">±0.018</span></sub>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.110.110.110.2" style="padding:1.5pt 2.0pt;">0.472<sub class="ltx_sub" id="S4.T2.110.110.110.2.1"><span class="ltx_text ltx_font_italic" id="S4.T2.110.110.110.2.1.1">±0.018</span></sub>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.111.111.111.3" style="padding:1.5pt 2.0pt;">0.288<sub class="ltx_sub" id="S4.T2.111.111.111.3.1"><span class="ltx_text ltx_font_italic" id="S4.T2.111.111.111.3.1.1">±0.019</span></sub>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.112.112.112.4" style="padding:1.5pt 2.0pt;">0.338<sub class="ltx_sub" id="S4.T2.112.112.112.4.1"><span class="ltx_text ltx_font_italic" id="S4.T2.112.112.112.4.1.1">±0.011</span></sub>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.113.113.113.5" style="padding:1.5pt 2.0pt;">0.369<sub class="ltx_sub" id="S4.T2.113.113.113.5.1"><span class="ltx_text ltx_font_italic" id="S4.T2.113.113.113.5.1.1">±0.012</span></sub>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.114.114.114.6" style="padding:1.5pt 2.0pt;">0.196<sub class="ltx_sub" id="S4.T2.114.114.114.6.1"><span class="ltx_text ltx_font_italic" id="S4.T2.114.114.114.6.1.1">±0.010</span></sub>
</td>
</tr>
<tr class="ltx_tr" id="S4.T2.120.120.120">
<th class="ltx_td ltx_align_justify ltx_th ltx_th_row" id="S4.T2.120.120.120.7" style="padding:1.5pt 2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.120.120.120.7.1">
<span class="ltx_p" id="S4.T2.120.120.120.7.1.1"><span class="ltx_text ltx_font_bold" id="S4.T2.120.120.120.7.1.1.1">Gemini 2.0 Pro Exp</span></span>
</span>
</th>
<td class="ltx_td ltx_align_center" id="S4.T2.115.115.115.1" style="padding:1.5pt 2.0pt;">0.460<sub class="ltx_sub" id="S4.T2.115.115.115.1.1"><span class="ltx_text ltx_font_italic" id="S4.T2.115.115.115.1.1.1">±0.014</span></sub>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.116.116.116.2" style="padding:1.5pt 2.0pt;">0.525<sub class="ltx_sub" id="S4.T2.116.116.116.2.1"><span class="ltx_text ltx_font_italic" id="S4.T2.116.116.116.2.1.1">±0.012</span></sub>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.117.117.117.3" style="padding:1.5pt 2.0pt;">0.388<sub class="ltx_sub" id="S4.T2.117.117.117.3.1"><span class="ltx_text ltx_font_italic" id="S4.T2.117.117.117.3.1.1">±0.016</span></sub>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.118.118.118.4" style="padding:1.5pt 2.0pt;">0.425<sub class="ltx_sub" id="S4.T2.118.118.118.4.1"><span class="ltx_text ltx_font_italic" id="S4.T2.118.118.118.4.1.1">±0.009</span></sub>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.119.119.119.5" style="padding:1.5pt 2.0pt;">0.457<sub class="ltx_sub" id="S4.T2.119.119.119.5.1"><span class="ltx_text ltx_font_italic" id="S4.T2.119.119.119.5.1.1">±0.008</span></sub>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.120.120.120.6" style="padding:1.5pt 2.0pt;">0.289<sub class="ltx_sub" id="S4.T2.120.120.120.6.1"><span class="ltx_text ltx_font_italic" id="S4.T2.120.120.120.6.1.1">±0.010</span></sub>
</td>
</tr>
<tr class="ltx_tr" id="S4.T2.126.126.126">
<th class="ltx_td ltx_align_justify ltx_th ltx_th_row" id="S4.T2.126.126.126.7" style="padding:1.5pt 2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.126.126.126.7.1">
<span class="ltx_p" id="S4.T2.126.126.126.7.1.1"><span class="ltx_text ltx_font_bold" id="S4.T2.126.126.126.7.1.1.1">Gemini 2.0 Flash</span></span>
</span>
</th>
<td class="ltx_td ltx_align_center" id="S4.T2.121.121.121.1" style="padding:1.5pt 2.0pt;">0.301<sub class="ltx_sub" id="S4.T2.121.121.121.1.1"><span class="ltx_text ltx_font_italic" id="S4.T2.121.121.121.1.1.1">±0.014</span></sub>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.122.122.122.2" style="padding:1.5pt 2.0pt;">0.318<sub class="ltx_sub" id="S4.T2.122.122.122.2.1"><span class="ltx_text ltx_font_italic" id="S4.T2.122.122.122.2.1.1">±0.012</span></sub>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.123.123.123.3" style="padding:1.5pt 2.0pt;">0.255<sub class="ltx_sub" id="S4.T2.123.123.123.3.1"><span class="ltx_text ltx_font_italic" id="S4.T2.123.123.123.3.1.1">±0.014</span></sub>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.124.124.124.4" style="padding:1.5pt 2.0pt;">0.280<sub class="ltx_sub" id="S4.T2.124.124.124.4.1"><span class="ltx_text ltx_font_italic" id="S4.T2.124.124.124.4.1.1">±0.007</span></sub>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.125.125.125.5" style="padding:1.5pt 2.0pt;">0.298<sub class="ltx_sub" id="S4.T2.125.125.125.5.1"><span class="ltx_text ltx_font_italic" id="S4.T2.125.125.125.5.1.1">±0.006</span></sub>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.126.126.126.6" style="padding:1.5pt 2.0pt;">0.198<sub class="ltx_sub" id="S4.T2.126.126.126.6.1"><span class="ltx_text ltx_font_italic" id="S4.T2.126.126.126.6.1.1">±0.006</span></sub>
</td>
</tr>
<tr class="ltx_tr" id="S4.T2.176.176.182.6">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" colspan="7" id="S4.T2.176.176.182.6.1" style="background-color:#71EDB7;padding:1.5pt 2.0pt;"><span class="ltx_text ltx_font_bold ltx_font_italic" id="S4.T2.176.176.182.6.1.1" style="background-color:#71EDB7;">Open-Weight LLMs</span></th>
</tr>
<tr class="ltx_tr" id="S4.T2.133.133.133">
<th class="ltx_td ltx_align_justify ltx_th ltx_th_row ltx_border_t" id="S4.T2.127.127.127.1" style="padding:1.5pt 2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.127.127.127.1.1">
<span class="ltx_p" id="S4.T2.127.127.127.1.1.1"><span class="ltx_text ltx_font_bold" id="S4.T2.127.127.127.1.1.1.1">Llama-3.1-405B-Instruct</span><sup class="ltx_sup" id="S4.T2.127.127.127.1.1.1.2"><span class="ltx_text ltx_font_italic" id="S4.T2.127.127.127.1.1.1.2.1">†</span></sup></span>
</span>
</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.128.128.128.2" style="padding:1.5pt 2.0pt;">0.161<sub class="ltx_sub" id="S4.T2.128.128.128.2.1"><span class="ltx_text ltx_font_italic" id="S4.T2.128.128.128.2.1.1">±0.013</span></sub>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.129.129.129.3" style="padding:1.5pt 2.0pt;">0.359<sub class="ltx_sub" id="S4.T2.129.129.129.3.1"><span class="ltx_text ltx_font_italic" id="S4.T2.129.129.129.3.1.1">±0.012</span></sub>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.130.130.130.4" style="padding:1.5pt 2.0pt;">0.243<sub class="ltx_sub" id="S4.T2.130.130.130.4.1"><span class="ltx_text ltx_font_italic" id="S4.T2.130.130.130.4.1.1">±0.017</span></sub>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.131.131.131.5" style="padding:1.5pt 2.0pt;">0.355<sub class="ltx_sub" id="S4.T2.131.131.131.5.1"><span class="ltx_text ltx_font_italic" id="S4.T2.131.131.131.5.1.1">±0.013</span></sub>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.132.132.132.6" style="padding:1.5pt 2.0pt;">0.390<sub class="ltx_sub" id="S4.T2.132.132.132.6.1"><span class="ltx_text ltx_font_italic" id="S4.T2.132.132.132.6.1.1">±0.009</span></sub>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.133.133.133.7" style="padding:1.5pt 2.0pt;">0.222<sub class="ltx_sub" id="S4.T2.133.133.133.7.1"><span class="ltx_text ltx_font_italic" id="S4.T2.133.133.133.7.1.1">±0.008</span></sub>
</td>
</tr>
<tr class="ltx_tr" id="S4.T2.139.139.139">
<th class="ltx_td ltx_align_justify ltx_th ltx_th_row" id="S4.T2.139.139.139.7" style="padding:1.5pt 2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.139.139.139.7.1">
<span class="ltx_p" id="S4.T2.139.139.139.7.1.1"><span class="ltx_text ltx_font_bold" id="S4.T2.139.139.139.7.1.1.1">DeepSeek-R1 <span class="ltx_ERROR undefined" id="S4.T2.139.139.139.7.1.1.1.1">\faLightbulb</span>[regular]</span></span>
</span>
</th>
<td class="ltx_td ltx_align_center" id="S4.T2.134.134.134.1" style="padding:1.5pt 2.0pt;">0.646<sub class="ltx_sub" id="S4.T2.134.134.134.1.1"><span class="ltx_text ltx_font_italic" id="S4.T2.134.134.134.1.1.1">±0.019</span></sub>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.135.135.135.2" style="padding:1.5pt 2.0pt;">0.707<sub class="ltx_sub" id="S4.T2.135.135.135.2.1"><span class="ltx_text ltx_font_italic" id="S4.T2.135.135.135.2.1.1">±0.017</span></sub>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.136.136.136.3" style="padding:1.5pt 2.0pt;">0.678<sub class="ltx_sub" id="S4.T2.136.136.136.3.1"><span class="ltx_text ltx_font_italic" id="S4.T2.136.136.136.3.1.1">±0.023</span></sub>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.137.137.137.4" style="padding:1.5pt 2.0pt;">0.472<sub class="ltx_sub" id="S4.T2.137.137.137.4.1"><span class="ltx_text ltx_font_italic" id="S4.T2.137.137.137.4.1.1">±0.011</span></sub>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.138.138.138.5" style="padding:1.5pt 2.0pt;">0.507<sub class="ltx_sub" id="S4.T2.138.138.138.5.1"><span class="ltx_text ltx_font_italic" id="S4.T2.138.138.138.5.1.1">±0.011</span></sub>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.139.139.139.6" style="padding:1.5pt 2.0pt;">0.356<sub class="ltx_sub" id="S4.T2.139.139.139.6.1"><span class="ltx_text ltx_font_italic" id="S4.T2.139.139.139.6.1.1">±0.011</span></sub>
</td>
</tr>
<tr class="ltx_tr" id="S4.T2.146.146.146">
<th class="ltx_td ltx_align_justify ltx_th ltx_th_row" id="S4.T2.140.140.140.1" style="padding:1.5pt 2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.140.140.140.1.1">
<span class="ltx_p" id="S4.T2.140.140.140.1.1.1"><span class="ltx_text ltx_font_bold" id="S4.T2.140.140.140.1.1.1.1">DeepSeek-V3</span><sup class="ltx_sup" id="S4.T2.140.140.140.1.1.1.2"><span class="ltx_text ltx_font_italic" id="S4.T2.140.140.140.1.1.1.2.1">†</span></sup></span>
</span>
</th>
<td class="ltx_td ltx_align_center" id="S4.T2.141.141.141.2" style="padding:1.5pt 2.0pt;">0.303<sub class="ltx_sub" id="S4.T2.141.141.141.2.1"><span class="ltx_text ltx_font_italic" id="S4.T2.141.141.141.2.1.1">±0.014</span></sub>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.142.142.142.3" style="padding:1.5pt 2.0pt;">0.369<sub class="ltx_sub" id="S4.T2.142.142.142.3.1"><span class="ltx_text ltx_font_italic" id="S4.T2.142.142.142.3.1.1">±0.014</span></sub>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.143.143.143.4" style="padding:1.5pt 2.0pt;">0.186<sub class="ltx_sub" id="S4.T2.143.143.143.4.1"><span class="ltx_text ltx_font_italic" id="S4.T2.143.143.143.4.1.1">±0.013</span></sub>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.144.144.144.5" style="padding:1.5pt 2.0pt;">0.290<sub class="ltx_sub" id="S4.T2.144.144.144.5.1"><span class="ltx_text ltx_font_italic" id="S4.T2.144.144.144.5.1.1">±0.009</span></sub>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.145.145.145.6" style="padding:1.5pt 2.0pt;">0.335<sub class="ltx_sub" id="S4.T2.145.145.145.6.1"><span class="ltx_text ltx_font_italic" id="S4.T2.145.145.145.6.1.1">±0.008</span></sub>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.146.146.146.7" style="padding:1.5pt 2.0pt;">0.145<sub class="ltx_sub" id="S4.T2.146.146.146.7.1"><span class="ltx_text ltx_font_italic" id="S4.T2.146.146.146.7.1.1">±0.007</span></sub>
</td>
</tr>
<tr class="ltx_tr" id="S4.T2.152.152.152">
<th class="ltx_td ltx_align_justify ltx_th ltx_th_row" id="S4.T2.152.152.152.7" style="padding:1.5pt 2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.152.152.152.7.1">
<span class="ltx_p" id="S4.T2.152.152.152.7.1.1"><span class="ltx_text ltx_font_bold" id="S4.T2.152.152.152.7.1.1.1">R1-Distill-Llama-70B <span class="ltx_ERROR undefined" id="S4.T2.152.152.152.7.1.1.1.1">\faLightbulb</span>[regular]</span></span>
</span>
</th>
<td class="ltx_td ltx_align_center" id="S4.T2.147.147.147.1" style="padding:1.5pt 2.0pt;">0.387<sub class="ltx_sub" id="S4.T2.147.147.147.1.1"><span class="ltx_text ltx_font_italic" id="S4.T2.147.147.147.1.1.1">±0.015</span></sub>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.148.148.148.2" style="padding:1.5pt 2.0pt;">0.448<sub class="ltx_sub" id="S4.T2.148.148.148.2.1"><span class="ltx_text ltx_font_italic" id="S4.T2.148.148.148.2.1.1">±0.015</span></sub>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.149.149.149.3" style="padding:1.5pt 2.0pt;">0.347<sub class="ltx_sub" id="S4.T2.149.149.149.3.1"><span class="ltx_text ltx_font_italic" id="S4.T2.149.149.149.3.1.1">±0.017</span></sub>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.150.150.150.4" style="padding:1.5pt 2.0pt;">0.285<sub class="ltx_sub" id="S4.T2.150.150.150.4.1"><span class="ltx_text ltx_font_italic" id="S4.T2.150.150.150.4.1.1">±0.009</span></sub>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.151.151.151.5" style="padding:1.5pt 2.0pt;">0.319<sub class="ltx_sub" id="S4.T2.151.151.151.5.1"><span class="ltx_text ltx_font_italic" id="S4.T2.151.151.151.5.1.1">±0.009</span></sub>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.152.152.152.6" style="padding:1.5pt 2.0pt;">0.161<sub class="ltx_sub" id="S4.T2.152.152.152.6.1"><span class="ltx_text ltx_font_italic" id="S4.T2.152.152.152.6.1.1">±0.008</span></sub>
</td>
</tr>
<tr class="ltx_tr" id="S4.T2.158.158.158">
<th class="ltx_td ltx_align_justify ltx_th ltx_th_row" id="S4.T2.158.158.158.7" style="padding:1.5pt 2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.158.158.158.7.1">
<span class="ltx_p" id="S4.T2.158.158.158.7.1.1"><span class="ltx_text ltx_font_bold" id="S4.T2.158.158.158.7.1.1.1">Llama-3.3-70B-Instruct</span></span>
</span>
</th>
<td class="ltx_td ltx_align_center" id="S4.T2.153.153.153.1" style="padding:1.5pt 2.0pt;">0.303<sub class="ltx_sub" id="S4.T2.153.153.153.1.1"><span class="ltx_text ltx_font_italic" id="S4.T2.153.153.153.1.1.1">±0.013</span></sub>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.154.154.154.2" style="padding:1.5pt 2.0pt;">0.371<sub class="ltx_sub" id="S4.T2.154.154.154.2.1"><span class="ltx_text ltx_font_italic" id="S4.T2.154.154.154.2.1.1">±0.012</span></sub>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.155.155.155.3" style="padding:1.5pt 2.0pt;">0.206<sub class="ltx_sub" id="S4.T2.155.155.155.3.1"><span class="ltx_text ltx_font_italic" id="S4.T2.155.155.155.3.1.1">±0.014</span></sub>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.156.156.156.4" style="padding:1.5pt 2.0pt;">0.280<sub class="ltx_sub" id="S4.T2.156.156.156.4.1"><span class="ltx_text ltx_font_italic" id="S4.T2.156.156.156.4.1.1">±0.011</span></sub>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.157.157.157.5" style="padding:1.5pt 2.0pt;">0.340<sub class="ltx_sub" id="S4.T2.157.157.157.5.1"><span class="ltx_text ltx_font_italic" id="S4.T2.157.157.157.5.1.1">±0.009</span></sub>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.158.158.158.6" style="padding:1.5pt 2.0pt;">0.173<sub class="ltx_sub" id="S4.T2.158.158.158.6.1"><span class="ltx_text ltx_font_italic" id="S4.T2.158.158.158.6.1.1">±0.008</span></sub>
</td>
</tr>
<tr class="ltx_tr" id="S4.T2.164.164.164">
<th class="ltx_td ltx_align_justify ltx_th ltx_th_row" id="S4.T2.164.164.164.7" style="padding:1.5pt 2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.164.164.164.7.1">
<span class="ltx_p" id="S4.T2.164.164.164.7.1.1"><span class="ltx_text ltx_font_bold" id="S4.T2.164.164.164.7.1.1.1">QwQ-32B <span class="ltx_ERROR undefined" id="S4.T2.164.164.164.7.1.1.1.1">\faLightbulb</span>[regular]</span></span>
</span>
</th>
<td class="ltx_td ltx_align_center" id="S4.T2.159.159.159.1" style="padding:1.5pt 2.0pt;">0.347<sub class="ltx_sub" id="S4.T2.159.159.159.1.1"><span class="ltx_text ltx_font_italic" id="S4.T2.159.159.159.1.1.1">±0.017</span></sub>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.160.160.160.2" style="padding:1.5pt 2.0pt;">0.445<sub class="ltx_sub" id="S4.T2.160.160.160.2.1"><span class="ltx_text ltx_font_italic" id="S4.T2.160.160.160.2.1.1">±0.018</span></sub>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.161.161.161.3" style="padding:1.5pt 2.0pt;">0.518<sub class="ltx_sub" id="S4.T2.161.161.161.3.1"><span class="ltx_text ltx_font_italic" id="S4.T2.161.161.161.3.1.1">±0.020</span></sub>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.162.162.162.4" style="padding:1.5pt 2.0pt;">0.254<sub class="ltx_sub" id="S4.T2.162.162.162.4.1"><span class="ltx_text ltx_font_italic" id="S4.T2.162.162.162.4.1.1">±0.009</span></sub>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.163.163.163.5" style="padding:1.5pt 2.0pt;">0.307<sub class="ltx_sub" id="S4.T2.163.163.163.5.1"><span class="ltx_text ltx_font_italic" id="S4.T2.163.163.163.5.1.1">±0.009</span></sub>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.164.164.164.6" style="padding:1.5pt 2.0pt;">0.189<sub class="ltx_sub" id="S4.T2.164.164.164.6.1"><span class="ltx_text ltx_font_italic" id="S4.T2.164.164.164.6.1.1">±0.009</span></sub>
</td>
</tr>
<tr class="ltx_tr" id="S4.T2.170.170.170">
<th class="ltx_td ltx_align_justify ltx_th ltx_th_row" id="S4.T2.170.170.170.7" style="padding:1.5pt 2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.170.170.170.7.1">
<span class="ltx_p" id="S4.T2.170.170.170.7.1.1"><span class="ltx_text ltx_font_bold" id="S4.T2.170.170.170.7.1.1.1">Open-Reasoner-Zero-32B <span class="ltx_ERROR undefined" id="S4.T2.170.170.170.7.1.1.1.1">\faLightbulb</span>[regular]</span></span>
</span>
</th>
<td class="ltx_td ltx_align_center" id="S4.T2.165.165.165.1" style="padding:1.5pt 2.0pt;">0.139<sub class="ltx_sub" id="S4.T2.165.165.165.1.1"><span class="ltx_text ltx_font_italic" id="S4.T2.165.165.165.1.1.1">±0.010</span></sub>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.166.166.166.2" style="padding:1.5pt 2.0pt;">0.204<sub class="ltx_sub" id="S4.T2.166.166.166.2.1"><span class="ltx_text ltx_font_italic" id="S4.T2.166.166.166.2.1.1">±0.010</span></sub>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.167.167.167.3" style="padding:1.5pt 2.0pt;">0.184<sub class="ltx_sub" id="S4.T2.167.167.167.3.1"><span class="ltx_text ltx_font_italic" id="S4.T2.167.167.167.3.1.1">±0.012</span></sub>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.168.168.168.4" style="padding:1.5pt 2.0pt;">0.146<sub class="ltx_sub" id="S4.T2.168.168.168.4.1"><span class="ltx_text ltx_font_italic" id="S4.T2.168.168.168.4.1.1">±0.007</span></sub>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.169.169.169.5" style="padding:1.5pt 2.0pt;">0.199<sub class="ltx_sub" id="S4.T2.169.169.169.5.1"><span class="ltx_text ltx_font_italic" id="S4.T2.169.169.169.5.1.1">±0.007</span></sub>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.170.170.170.6" style="padding:1.5pt 2.0pt;">0.095<sub class="ltx_sub" id="S4.T2.170.170.170.6.1"><span class="ltx_text ltx_font_italic" id="S4.T2.170.170.170.6.1.1">±0.005</span></sub>
</td>
</tr>
<tr class="ltx_tr" id="S4.T2.176.176.176">
<th class="ltx_td ltx_align_justify ltx_th ltx_th_row ltx_border_bb" id="S4.T2.176.176.176.7" style="padding:1.5pt 2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.176.176.176.7.1">
<span class="ltx_p" id="S4.T2.176.176.176.7.1.1"><span class="ltx_text ltx_font_bold" id="S4.T2.176.176.176.7.1.1.1">Phi-4</span></span>
</span>
</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.171.171.171.1" style="padding:1.5pt 2.0pt;">0.122<sub class="ltx_sub" id="S4.T2.171.171.171.1.1"><span class="ltx_text ltx_font_italic" id="S4.T2.171.171.171.1.1.1">±0.010</span></sub>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.172.172.172.2" style="padding:1.5pt 2.0pt;">0.194<sub class="ltx_sub" id="S4.T2.172.172.172.2.1"><span class="ltx_text ltx_font_italic" id="S4.T2.172.172.172.2.1.1">±0.010</span></sub>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S4.T2.173.173.173.3" style="padding:1.5pt 2.0pt;">0.113<sub class="ltx_sub" id="S4.T2.173.173.173.3.1"><span class="ltx_text ltx_font_italic" id="S4.T2.173.173.173.3.1.1">±0.011</span></sub>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.174.174.174.4" style="padding:1.5pt 2.0pt;">0.140<sub class="ltx_sub" id="S4.T2.174.174.174.4.1"><span class="ltx_text ltx_font_italic" id="S4.T2.174.174.174.4.1.1">±0.007</span></sub>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.175.175.175.5" style="padding:1.5pt 2.0pt;">0.200<sub class="ltx_sub" id="S4.T2.175.175.175.5.1"><span class="ltx_text ltx_font_italic" id="S4.T2.175.175.175.5.1.1">±0.006</span></sub>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.176.176.176.6" style="padding:1.5pt 2.0pt;">0.085<sub class="ltx_sub" id="S4.T2.176.176.176.6.1"><span class="ltx_text ltx_font_italic" id="S4.T2.176.176.176.6.1.1">±0.005</span></sub>
</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 Table 2 presents a comprehensive comparison of Large Language Models (LLMs) and Large Vision-Language Models (LVLMs) on the CrossWordBench English dataset.  The models' performance is evaluated across two grid sizes (7x7 and 14x14) using the zero-shot Chain-of-Thought (CoT) prompting method. The table shows the mean and standard error for three key metrics: Word Coverage Rate (WCR), Letter Coverage Rate (LCR), and Intersection Consistency Rate (ICR).  WCR measures the accuracy of correctly solved words. LCR represents the accuracy of correct letter placements. ICR indicates how well models adhere to the crossword's structural constraints by correctly aligning intersecting letters.  A lightbulb icon highlights models specifically trained for reasoning capabilities.  Finally, a dagger symbol indicates which models used the Fireworks API versus the official API for evaluation.
> <details>
> <summary>read the caption</summary>
> Table 2: Comparison of various LLMs and LVLMs on CrossWordBench English set across two difficulty levels using zero-shot CoT. We report the mean and standard error over 100 samples for both 7x7 and 14x14 grids. \faLightbulb[regular] indicates that the model is a reasoning model. †: We use the Fireworks API for DeepSeek V3 and Llama-3.1-405B, while offical API for R1.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S4.T3.10">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T3.10.11.1">
<th class="ltx_td ltx_align_justify ltx_th ltx_th_row ltx_border_tt" id="S4.T3.10.11.1.1">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.10.11.1.1.1">
<span class="ltx_p" id="S4.T3.10.11.1.1.1.1"><span class="ltx_text ltx_font_bold" id="S4.T3.10.11.1.1.1.1.1">Models</span></span>
</span>
</th>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S4.T3.10.11.1.2"><span class="ltx_text ltx_font_bold" id="S4.T3.10.11.1.2.1">Across</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T3.10.11.1.3"><span class="ltx_text ltx_font_bold" id="S4.T3.10.11.1.3.1">Down</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.10.12.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" colspan="3" id="S4.T3.10.12.2.1" style="background-color:#71B7ED;"><span class="ltx_text ltx_font_bold ltx_font_italic" id="S4.T3.10.12.2.1.1" style="background-color:#71B7ED;">Proprietary VLMs</span></th>
</tr>
<tr class="ltx_tr" id="S4.T3.2.2">
<th class="ltx_td ltx_align_justify ltx_th ltx_th_row ltx_border_t" id="S4.T3.2.2.3">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.2.2.3.1">
<span class="ltx_p" id="S4.T3.2.2.3.1.1"><span class="ltx_text ltx_font_bold" id="S4.T3.2.2.3.1.1.1">Claude-3-7-Sonnet</span></span>
</span>
</th>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T3.1.1.1">0.954<sub class="ltx_sub" id="S4.T3.1.1.1.1"><span class="ltx_text ltx_font_italic" id="S4.T3.1.1.1.1.1">±0.009</span></sub>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.2.2.2">0.760<sub class="ltx_sub" id="S4.T3.2.2.2.1"><span class="ltx_text ltx_font_italic" id="S4.T3.2.2.2.1.1">±0.018</span></sub>
</td>
</tr>
<tr class="ltx_tr" id="S4.T3.4.4">
<th class="ltx_td ltx_align_justify ltx_th ltx_th_row" id="S4.T3.4.4.3">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.4.4.3.1">
<span class="ltx_p" id="S4.T3.4.4.3.1.1"><span class="ltx_text ltx_font_bold" id="S4.T3.4.4.3.1.1.1">Claude-3-7-Sonnet <span class="ltx_ERROR undefined" id="S4.T3.4.4.3.1.1.1.1">\faLightbulb</span>[regular]</span></span>
</span>
</th>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.3.3.1">0.949<sub class="ltx_sub" id="S4.T3.3.3.1.1"><span class="ltx_text ltx_font_italic" id="S4.T3.3.3.1.1.1">±0.010</span></sub>
</td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.4.2">0.654<sub class="ltx_sub" id="S4.T3.4.4.2.1"><span class="ltx_text ltx_font_italic" id="S4.T3.4.4.2.1.1">±0.022</span></sub>
</td>
</tr>
<tr class="ltx_tr" id="S4.T3.6.6">
<th class="ltx_td ltx_align_justify ltx_th ltx_th_row" id="S4.T3.6.6.3">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.6.6.3.1">
<span class="ltx_p" id="S4.T3.6.6.3.1.1"><span class="ltx_text ltx_font_bold" id="S4.T3.6.6.3.1.1.1">GPT-4o-2024-11-20</span></span>
</span>
</th>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.5.5.1">0.886<sub class="ltx_sub" id="S4.T3.5.5.1.1"><span class="ltx_text ltx_font_italic" id="S4.T3.5.5.1.1.1">±0.014</span></sub>
</td>
<td class="ltx_td ltx_align_center" id="S4.T3.6.6.2">0.448<sub class="ltx_sub" id="S4.T3.6.6.2.1"><span class="ltx_text ltx_font_italic" id="S4.T3.6.6.2.1.1">±0.024</span></sub>
</td>
</tr>
<tr class="ltx_tr" id="S4.T3.10.13.3">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" colspan="3" id="S4.T3.10.13.3.1" style="background-color:#71B7ED;"><span class="ltx_text ltx_font_bold ltx_font_italic" id="S4.T3.10.13.3.1.1" style="background-color:#71B7ED;">Open-Weight VLMs</span></th>
</tr>
<tr class="ltx_tr" id="S4.T3.8.8">
<th class="ltx_td ltx_align_justify ltx_th ltx_th_row ltx_border_t" id="S4.T3.8.8.3">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.8.8.3.1">
<span class="ltx_p" id="S4.T3.8.8.3.1.1"><span class="ltx_text ltx_font_bold" id="S4.T3.8.8.3.1.1.1">Pixtral-Large-Instruct</span></span>
</span>
</th>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T3.7.7.1">0.753<sub class="ltx_sub" id="S4.T3.7.7.1.1"><span class="ltx_text ltx_font_italic" id="S4.T3.7.7.1.1.1">±0.022</span></sub>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.8.8.2">0.361<sub class="ltx_sub" id="S4.T3.8.8.2.1"><span class="ltx_text ltx_font_italic" id="S4.T3.8.8.2.1.1">±0.022</span></sub>
</td>
</tr>
<tr class="ltx_tr" id="S4.T3.10.10">
<th class="ltx_td ltx_align_justify ltx_th ltx_th_row ltx_border_bb" id="S4.T3.10.10.3">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.10.10.3.1">
<span class="ltx_p" id="S4.T3.10.10.3.1.1"><span class="ltx_text ltx_font_bold" id="S4.T3.10.10.3.1.1.1">QVQ-72B-Preview</span></span>
</span>
</th>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S4.T3.9.9.1">0.717<sub class="ltx_sub" id="S4.T3.9.9.1.1"><span class="ltx_text ltx_font_italic" id="S4.T3.9.9.1.1.1">±0.022</span></sub>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.10.10.2">0.139<sub class="ltx_sub" id="S4.T3.10.10.2.1"><span class="ltx_text ltx_font_italic" id="S4.T3.10.10.2.1.1">±0.019</span></sub>
</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the Word Coverage Rate (WCR) achieved by various Large Vision-Language Models (LVLMs) on a grid parsing task.  The task involves extracting words from a crossword puzzle grid, considering both horizontal ('Across') and vertical ('Down') orientations. The WCR represents the accuracy of the model in correctly identifying and extracting these words. The table helps demonstrate a strong correlation between grid parsing accuracy and the overall performance of LVLMs on crossword puzzle solving, highlighted in the paper.
> <details>
> <summary>read the caption</summary>
> Table 3: WCR on Grid Parsing.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S4.T4.48.48">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T4.48.48.49.1">
<td class="ltx_td ltx_align_justify ltx_border_tt" id="S4.T4.48.48.49.1.1" rowspan="2" style="padding:1.5pt 2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T4.48.48.49.1.1.1">
<span class="ltx_p" id="S4.T4.48.48.49.1.1.1.1"><span class="ltx_text ltx_font_bold" id="S4.T4.48.48.49.1.1.1.1.1">Models</span></span>
</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="S4.T4.48.48.49.1.2" style="padding:1.5pt 2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.48.48.49.1.2.1">Chinese</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="S4.T4.48.48.49.1.3" style="padding:1.5pt 2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.48.48.49.1.3.1">English Simple</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="S4.T4.48.48.49.1.4" style="padding:1.5pt 2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.48.48.49.1.4.1">CommonSenseQA</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.48.48.50.2">
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.48.48.50.2.1" style="padding:1.5pt 2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.48.48.50.2.1.1">WCR</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T4.48.48.50.2.2" style="padding:1.5pt 2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.48.48.50.2.2.1">ICR</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.48.48.50.2.3" style="padding:1.5pt 2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.48.48.50.2.3.1">WCR</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T4.48.48.50.2.4" style="padding:1.5pt 2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.48.48.50.2.4.1">ICR</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.48.48.50.2.5" style="padding:1.5pt 2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.48.48.50.2.5.1">WCR</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.48.48.50.2.6" style="padding:1.5pt 2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.48.48.50.2.6.1">ICR</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.48.48.51.3">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="7" id="S4.T4.48.48.51.3.1" style="background-color:#71B7ED;padding:1.5pt 2.0pt;"><span class="ltx_text ltx_font_bold ltx_font_italic" id="S4.T4.48.48.51.3.1.1" style="background-color:#71B7ED;">Proprietary LVLMs</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.6.6.6">
<td class="ltx_td ltx_align_justify ltx_border_t" id="S4.T4.6.6.6.7" style="padding:1.5pt 2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T4.6.6.6.7.1">
<span class="ltx_p" id="S4.T4.6.6.6.7.1.1"><span class="ltx_text ltx_font_bold" id="S4.T4.6.6.6.7.1.1.1">GPT-4o-2024-11-20</span></span>
</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.1.1.1.1" style="padding:1.5pt 2.0pt;">0.366<sub class="ltx_sub" id="S4.T4.1.1.1.1.1"><span class="ltx_text ltx_font_italic" id="S4.T4.1.1.1.1.1.1">±0.018</span></sub>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T4.2.2.2.2" style="padding:1.5pt 2.0pt;">0.170<sub class="ltx_sub" id="S4.T4.2.2.2.2.1"><span class="ltx_text ltx_font_italic" id="S4.T4.2.2.2.2.1.1">±0.017</span></sub>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.3.3.3.3" style="padding:1.5pt 2.0pt;">0.335<sub class="ltx_sub" id="S4.T4.3.3.3.3.1"><span class="ltx_text ltx_font_italic" id="S4.T4.3.3.3.3.1.1">±0.015</span></sub>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T4.4.4.4.4" style="padding:1.5pt 2.0pt;">0.227<sub class="ltx_sub" id="S4.T4.4.4.4.4.1"><span class="ltx_text ltx_font_italic" id="S4.T4.4.4.4.4.1.1">±0.017</span></sub>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.5.5.5.5" style="padding:1.5pt 2.0pt;">0.392<sub class="ltx_sub" id="S4.T4.5.5.5.5.1"><span class="ltx_text ltx_font_italic" id="S4.T4.5.5.5.5.1.1">±0.026</span></sub>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.6.6.6.6" style="padding:1.5pt 2.0pt;">0.247<sub class="ltx_sub" id="S4.T4.6.6.6.6.1"><span class="ltx_text ltx_font_italic" id="S4.T4.6.6.6.6.1.1">±0.026</span></sub>
</td>
</tr>
<tr class="ltx_tr" id="S4.T4.12.12.12">
<td class="ltx_td ltx_align_justify" id="S4.T4.12.12.12.7" style="padding:1.5pt 2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T4.12.12.12.7.1">
<span class="ltx_p" id="S4.T4.12.12.12.7.1.1"><span class="ltx_text ltx_font_bold" id="S4.T4.12.12.12.7.1.1.1">Gemini 2.0 Flash</span></span>
</span>
</td>
<td class="ltx_td ltx_align_center" id="S4.T4.7.7.7.1" style="padding:1.5pt 2.0pt;">0.208<sub class="ltx_sub" id="S4.T4.7.7.7.1.1"><span class="ltx_text ltx_font_italic" id="S4.T4.7.7.7.1.1.1">±0.031</span></sub>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T4.8.8.8.2" style="padding:1.5pt 2.0pt;">0.233<sub class="ltx_sub" id="S4.T4.8.8.8.2.1"><span class="ltx_text ltx_font_italic" id="S4.T4.8.8.8.2.1.1">±0.018</span></sub>
</td>
<td class="ltx_td ltx_align_center" id="S4.T4.9.9.9.3" style="padding:1.5pt 2.0pt;">0.229<sub class="ltx_sub" id="S4.T4.9.9.9.3.1"><span class="ltx_text ltx_font_italic" id="S4.T4.9.9.9.3.1.1">±0.014</span></sub>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T4.10.10.10.4" style="padding:1.5pt 2.0pt;">0.216<sub class="ltx_sub" id="S4.T4.10.10.10.4.1"><span class="ltx_text ltx_font_italic" id="S4.T4.10.10.10.4.1.1">±0.013</span></sub>
</td>
<td class="ltx_td ltx_align_center" id="S4.T4.11.11.11.5" style="padding:1.5pt 2.0pt;">0.327<sub class="ltx_sub" id="S4.T4.11.11.11.5.1"><span class="ltx_text ltx_font_italic" id="S4.T4.11.11.11.5.1.1">±0.021</span></sub>
</td>
<td class="ltx_td ltx_align_center" id="S4.T4.12.12.12.6" style="padding:1.5pt 2.0pt;">0.216<sub class="ltx_sub" id="S4.T4.12.12.12.6.1"><span class="ltx_text ltx_font_italic" id="S4.T4.12.12.12.6.1.1">±0.018</span></sub>
</td>
</tr>
<tr class="ltx_tr" id="S4.T4.48.48.52.4">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="7" id="S4.T4.48.48.52.4.1" style="background-color:#71B7ED;padding:1.5pt 2.0pt;"><span class="ltx_text ltx_font_bold ltx_font_italic" id="S4.T4.48.48.52.4.1.1" style="background-color:#71B7ED;">Open-Weight LVLMs</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.18.18.18">
<td class="ltx_td ltx_align_justify ltx_border_t" id="S4.T4.18.18.18.7" style="padding:1.5pt 2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T4.18.18.18.7.1">
<span class="ltx_p" id="S4.T4.18.18.18.7.1.1"><span class="ltx_text ltx_font_bold" id="S4.T4.18.18.18.7.1.1.1">Pixtral-Large-Instruct-2411</span></span>
</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.13.13.13.1" style="padding:1.5pt 2.0pt;">0.252<sub class="ltx_sub" id="S4.T4.13.13.13.1.1"><span class="ltx_text ltx_font_italic" id="S4.T4.13.13.13.1.1.1">±0.015</span></sub>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T4.14.14.14.2" style="padding:1.5pt 2.0pt;">0.101<sub class="ltx_sub" id="S4.T4.14.14.14.2.1"><span class="ltx_text ltx_font_italic" id="S4.T4.14.14.14.2.1.1">±0.011</span></sub>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.15.15.15.3" style="padding:1.5pt 2.0pt;">0.216<sub class="ltx_sub" id="S4.T4.15.15.15.3.1"><span class="ltx_text ltx_font_italic" id="S4.T4.15.15.15.3.1.1">±0.016</span></sub>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T4.16.16.16.4" style="padding:1.5pt 2.0pt;">0.187<sub class="ltx_sub" id="S4.T4.16.16.16.4.1"><span class="ltx_text ltx_font_italic" id="S4.T4.16.16.16.4.1.1">±0.015</span></sub>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.17.17.17.5" style="padding:1.5pt 2.0pt;">0.439<sub class="ltx_sub" id="S4.T4.17.17.17.5.1"><span class="ltx_text ltx_font_italic" id="S4.T4.17.17.17.5.1.1">±0.023</span></sub>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.18.18.18.6" style="padding:1.5pt 2.0pt;">0.270<sub class="ltx_sub" id="S4.T4.18.18.18.6.1"><span class="ltx_text ltx_font_italic" id="S4.T4.18.18.18.6.1.1">±0.023</span></sub>
</td>
</tr>
<tr class="ltx_tr" id="S4.T4.24.24.24">
<td class="ltx_td ltx_align_justify" id="S4.T4.24.24.24.7" style="padding:1.5pt 2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T4.24.24.24.7.1">
<span class="ltx_p" id="S4.T4.24.24.24.7.1.1"><span class="ltx_text ltx_font_bold" id="S4.T4.24.24.24.7.1.1.1">Qwen2.5-VL-72B-Instruct</span></span>
</span>
</td>
<td class="ltx_td ltx_align_center" id="S4.T4.19.19.19.1" style="padding:1.5pt 2.0pt;">0.391<sub class="ltx_sub" id="S4.T4.19.19.19.1.1"><span class="ltx_text ltx_font_italic" id="S4.T4.19.19.19.1.1.1">±0.025</span></sub>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T4.20.20.20.2" style="padding:1.5pt 2.0pt;">0.282<sub class="ltx_sub" id="S4.T4.20.20.20.2.1"><span class="ltx_text ltx_font_italic" id="S4.T4.20.20.20.2.1.1">±0.018</span></sub>
</td>
<td class="ltx_td ltx_align_center" id="S4.T4.21.21.21.3" style="padding:1.5pt 2.0pt;">0.239<sub class="ltx_sub" id="S4.T4.21.21.21.3.1"><span class="ltx_text ltx_font_italic" id="S4.T4.21.21.21.3.1.1">±0.016</span></sub>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T4.22.22.22.4" style="padding:1.5pt 2.0pt;">0.183<sub class="ltx_sub" id="S4.T4.22.22.22.4.1"><span class="ltx_text ltx_font_italic" id="S4.T4.22.22.22.4.1.1">±0.015</span></sub>
</td>
<td class="ltx_td ltx_align_center" id="S4.T4.23.23.23.5" style="padding:1.5pt 2.0pt;">0.418<sub class="ltx_sub" id="S4.T4.23.23.23.5.1"><span class="ltx_text ltx_font_italic" id="S4.T4.23.23.23.5.1.1">±0.022</span></sub>
</td>
<td class="ltx_td ltx_align_center" id="S4.T4.24.24.24.6" style="padding:1.5pt 2.0pt;">0.252<sub class="ltx_sub" id="S4.T4.24.24.24.6.1"><span class="ltx_text ltx_font_italic" id="S4.T4.24.24.24.6.1.1">±0.023</span></sub>
</td>
</tr>
<tr class="ltx_tr" id="S4.T4.48.48.53.5">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="7" id="S4.T4.48.48.53.5.1" style="background-color:#71EDB7;padding:1.5pt 2.0pt;"><span class="ltx_text ltx_font_bold ltx_font_italic" id="S4.T4.48.48.53.5.1.1" style="background-color:#71EDB7;">Proprietary LLMs</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.30.30.30">
<td class="ltx_td ltx_align_justify ltx_border_t" id="S4.T4.30.30.30.7" style="padding:1.5pt 2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T4.30.30.30.7.1">
<span class="ltx_p" id="S4.T4.30.30.30.7.1.1"><span class="ltx_text ltx_font_bold" id="S4.T4.30.30.30.7.1.1.1">GPT-4o-2024-11-20</span></span>
</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.25.25.25.1" style="padding:1.5pt 2.0pt;">0.593<sub class="ltx_sub" id="S4.T4.25.25.25.1.1"><span class="ltx_text ltx_font_italic" id="S4.T4.25.25.25.1.1.1">±0.019</span></sub>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T4.26.26.26.2" style="padding:1.5pt 2.0pt;">0.448<sub class="ltx_sub" id="S4.T4.26.26.26.2.1"><span class="ltx_text ltx_font_italic" id="S4.T4.26.26.26.2.1.1">±0.021</span></sub>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.27.27.27.3" style="padding:1.5pt 2.0pt;">0.438<sub class="ltx_sub" id="S4.T4.27.27.27.3.1"><span class="ltx_text ltx_font_italic" id="S4.T4.27.27.27.3.1.1">±0.020</span></sub>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T4.28.28.28.4" style="padding:1.5pt 2.0pt;">0.306<sub class="ltx_sub" id="S4.T4.28.28.28.4.1"><span class="ltx_text ltx_font_italic" id="S4.T4.28.28.28.4.1.1">±0.022</span></sub>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.29.29.29.5" style="padding:1.5pt 2.0pt;">0.524<sub class="ltx_sub" id="S4.T4.29.29.29.5.1"><span class="ltx_text ltx_font_italic" id="S4.T4.29.29.29.5.1.1">±0.024</span></sub>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.30.30.30.6" style="padding:1.5pt 2.0pt;">0.326<sub class="ltx_sub" id="S4.T4.30.30.30.6.1"><span class="ltx_text ltx_font_italic" id="S4.T4.30.30.30.6.1.1">±0.029</span></sub>
</td>
</tr>
<tr class="ltx_tr" id="S4.T4.36.36.36">
<td class="ltx_td ltx_align_justify" id="S4.T4.36.36.36.7" style="padding:1.5pt 2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T4.36.36.36.7.1">
<span class="ltx_p" id="S4.T4.36.36.36.7.1.1"><span class="ltx_text ltx_font_bold" id="S4.T4.36.36.36.7.1.1.1">o3-mini-high <span class="ltx_ERROR undefined" id="S4.T4.36.36.36.7.1.1.1.1">\faLightbulb</span>[regular]</span></span>
</span>
</td>
<td class="ltx_td ltx_align_center" id="S4.T4.31.31.31.1" style="padding:1.5pt 2.0pt;">0.774<sub class="ltx_sub" id="S4.T4.31.31.31.1.1"><span class="ltx_text ltx_font_italic" id="S4.T4.31.31.31.1.1.1">±0.016</span></sub>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T4.32.32.32.2" style="padding:1.5pt 2.0pt;">0.953<sub class="ltx_sub" id="S4.T4.32.32.32.2.1"><span class="ltx_text ltx_font_italic" id="S4.T4.32.32.32.2.1.1">±0.014</span></sub>
</td>
<td class="ltx_td ltx_align_center" id="S4.T4.33.33.33.3" style="padding:1.5pt 2.0pt;">0.782<sub class="ltx_sub" id="S4.T4.33.33.33.3.1"><span class="ltx_text ltx_font_italic" id="S4.T4.33.33.33.3.1.1">±0.021</span></sub>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T4.34.34.34.4" style="padding:1.5pt 2.0pt;">0.946<sub class="ltx_sub" id="S4.T4.34.34.34.4.1"><span class="ltx_text ltx_font_italic" id="S4.T4.34.34.34.4.1.1">±0.012</span></sub>
</td>
<td class="ltx_td ltx_align_center" id="S4.T4.35.35.35.5" style="padding:1.5pt 2.0pt;">0.812<sub class="ltx_sub" id="S4.T4.35.35.35.5.1"><span class="ltx_text ltx_font_italic" id="S4.T4.35.35.35.5.1.1">±0.027</span></sub>
</td>
<td class="ltx_td ltx_align_center" id="S4.T4.36.36.36.6" style="padding:1.5pt 2.0pt;">0.971<sub class="ltx_sub" id="S4.T4.36.36.36.6.1"><span class="ltx_text ltx_font_italic" id="S4.T4.36.36.36.6.1.1">±0.011</span></sub>
</td>
</tr>
<tr class="ltx_tr" id="S4.T4.48.48.54.6">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="7" id="S4.T4.48.48.54.6.1" style="background-color:#71EDB7;padding:1.5pt 2.0pt;"><span class="ltx_text ltx_font_bold ltx_font_italic" id="S4.T4.48.48.54.6.1.1" style="background-color:#71EDB7;">Open-Weight LLMs</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.42.42.42">
<td class="ltx_td ltx_align_justify ltx_border_t" id="S4.T4.42.42.42.7" style="padding:1.5pt 2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T4.42.42.42.7.1">
<span class="ltx_p" id="S4.T4.42.42.42.7.1.1"><span class="ltx_text ltx_font_bold" id="S4.T4.42.42.42.7.1.1.1">DeepSeek-R1 <span class="ltx_ERROR undefined" id="S4.T4.42.42.42.7.1.1.1.1">\faLightbulb</span>[regular]</span></span>
</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.37.37.37.1" style="padding:1.5pt 2.0pt;">0.907<sub class="ltx_sub" id="S4.T4.37.37.37.1.1"><span class="ltx_text ltx_font_italic" id="S4.T4.37.37.37.1.1.1">±0.016</span></sub>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T4.38.38.38.2" style="padding:1.5pt 2.0pt;">0.898<sub class="ltx_sub" id="S4.T4.38.38.38.2.1"><span class="ltx_text ltx_font_italic" id="S4.T4.38.38.38.2.1.1">±0.018</span></sub>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.39.39.39.3" style="padding:1.5pt 2.0pt;">0.759<sub class="ltx_sub" id="S4.T4.39.39.39.3.1"><span class="ltx_text ltx_font_italic" id="S4.T4.39.39.39.3.1.1">±0.017</span></sub>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T4.40.40.40.4" style="padding:1.5pt 2.0pt;">0.787<sub class="ltx_sub" id="S4.T4.40.40.40.4.1"><span class="ltx_text ltx_font_italic" id="S4.T4.40.40.40.4.1.1">±0.020</span></sub>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.41.41.41.5" style="padding:1.5pt 2.0pt;">0.752<sub class="ltx_sub" id="S4.T4.41.41.41.5.1"><span class="ltx_text ltx_font_italic" id="S4.T4.41.41.41.5.1.1">±0.031</span></sub>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.42.42.42.6" style="padding:1.5pt 2.0pt;">0.829<sub class="ltx_sub" id="S4.T4.42.42.42.6.1"><span class="ltx_text ltx_font_italic" id="S4.T4.42.42.42.6.1.1">±0.026</span></sub>
</td>
</tr>
<tr class="ltx_tr" id="S4.T4.48.48.48">
<td class="ltx_td ltx_align_justify ltx_border_bb" id="S4.T4.48.48.48.7" style="padding:1.5pt 2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.T4.48.48.48.7.1">
<span class="ltx_p" id="S4.T4.48.48.48.7.1.1"><span class="ltx_text ltx_font_bold" id="S4.T4.48.48.48.7.1.1.1">QwQ-32B <span class="ltx_ERROR undefined" id="S4.T4.48.48.48.7.1.1.1.1">\faLightbulb</span>[regular]</span></span>
</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.43.43.43.1" style="padding:1.5pt 2.0pt;">0.701<sub class="ltx_sub" id="S4.T4.43.43.43.1.1"><span class="ltx_text ltx_font_italic" id="S4.T4.43.43.43.1.1.1">±0.020</span></sub>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S4.T4.44.44.44.2" style="padding:1.5pt 2.0pt;">0.654<sub class="ltx_sub" id="S4.T4.44.44.44.2.1"><span class="ltx_text ltx_font_italic" id="S4.T4.44.44.44.2.1.1">±0.022</span></sub>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.45.45.45.3" style="padding:1.5pt 2.0pt;">0.647<sub class="ltx_sub" id="S4.T4.45.45.45.3.1"><span class="ltx_text ltx_font_italic" id="S4.T4.45.45.45.3.1.1">±0.021</span></sub>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S4.T4.46.46.46.4" style="padding:1.5pt 2.0pt;">0.734<sub class="ltx_sub" id="S4.T4.46.46.46.4.1"><span class="ltx_text ltx_font_italic" id="S4.T4.46.46.46.4.1.1">±0.020</span></sub>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.47.47.47.5" style="padding:1.5pt 2.0pt;">0.699<sub class="ltx_sub" id="S4.T4.47.47.47.5.1"><span class="ltx_text ltx_font_italic" id="S4.T4.47.47.47.5.1.1">±0.026</span></sub>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.48.48.48.6" style="padding:1.5pt 2.0pt;">0.766<sub class="ltx_sub" id="S4.T4.48.48.48.6.1"><span class="ltx_text ltx_font_italic" id="S4.T4.48.48.48.6.1.1">±0.027</span></sub>
</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the Word Coverage Rate (WCR) and Intersection Consistency Rate (ICR) for three different crossword puzzle sets: Chinese, English Simple, and CommonSenseQA.  The Chinese set uses Chinese word-clue pairs, the English Simple set uses standard English words and their dictionary definitions as clues, and the CommonSenseQA set adapts question-answer pairs from the CommonsenseQA benchmark.  The results show the performance of both proprietary and open-weight language models on these three puzzle types, allowing comparison of performance across languages and clue types.
> <details>
> <summary>read the caption</summary>
> Table 4: WCR and ICR for Chinese, English Simple, and CommonSenseQA puzzle sets.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="A1.T5.2.2">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A1.T5.2.2.3.1">
<td class="ltx_td ltx_align_justify ltx_border_tt" id="A1.T5.2.2.3.1.1" rowspan="2" style="padding:1.5pt 2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T5.2.2.3.1.1.1">
<span class="ltx_p" id="A1.T5.2.2.3.1.1.1.1"><span class="ltx_text ltx_font_bold" id="A1.T5.2.2.3.1.1.1.1.1">Models</span></span>
</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="3" id="A1.T5.2.2.3.1.2" style="padding:1.5pt 2.0pt;"><span class="ltx_text ltx_font_bold" id="A1.T5.2.2.3.1.2.1">Global Length Error</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="3" id="A1.T5.2.2.3.1.3" style="padding:1.5pt 2.0pt;"><span class="ltx_text ltx_font_bold" id="A1.T5.2.2.3.1.3.1">Local Length Error</span></td>
</tr>
<tr class="ltx_tr" id="A1.T5.2.2.4.2">
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T5.2.2.4.2.1" style="padding:1.5pt 2.0pt;"><span class="ltx_text ltx_font_bold" id="A1.T5.2.2.4.2.1.1">Tot.</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T5.2.2.4.2.2" style="padding:1.5pt 2.0pt;"><span class="ltx_text ltx_font_bold" id="A1.T5.2.2.4.2.2.1">Long</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A1.T5.2.2.4.2.3" style="padding:1.5pt 2.0pt;"><span class="ltx_text ltx_font_bold" id="A1.T5.2.2.4.2.3.1">Short</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T5.2.2.4.2.4" style="padding:1.5pt 2.0pt;"><span class="ltx_text ltx_font_bold" id="A1.T5.2.2.4.2.4.1">Tot.</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T5.2.2.4.2.5" style="padding:1.5pt 2.0pt;"><span class="ltx_text ltx_font_bold" id="A1.T5.2.2.4.2.5.1">Long</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T5.2.2.4.2.6" style="padding:1.5pt 2.0pt;"><span class="ltx_text ltx_font_bold" id="A1.T5.2.2.4.2.6.1">Short</span></td>
</tr>
<tr class="ltx_tr" id="A1.T5.2.2.5.3">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="7" id="A1.T5.2.2.5.3.1" style="background-color:#71B7ED;padding:1.5pt 2.0pt;"><span class="ltx_text ltx_font_bold ltx_font_italic" id="A1.T5.2.2.5.3.1.1" style="background-color:#71B7ED;">Proprietary LVLMs</span></td>
</tr>
<tr class="ltx_tr" id="A1.T5.2.2.6.4">
<td class="ltx_td ltx_align_justify ltx_border_t" id="A1.T5.2.2.6.4.1" style="padding:1.5pt 2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T5.2.2.6.4.1.1">
<span class="ltx_p" id="A1.T5.2.2.6.4.1.1.1"><span class="ltx_text ltx_font_bold" id="A1.T5.2.2.6.4.1.1.1.1">Claude-3-7-Sonnet</span></span>
</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T5.2.2.6.4.2" style="padding:1.5pt 2.0pt;">0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T5.2.2.6.4.3" style="padding:1.5pt 2.0pt;">0</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A1.T5.2.2.6.4.4" style="padding:1.5pt 2.0pt;">0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T5.2.2.6.4.5" style="padding:1.5pt 2.0pt;">363</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T5.2.2.6.4.6" style="padding:1.5pt 2.0pt;">205</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T5.2.2.6.4.7" style="padding:1.5pt 2.0pt;">158</td>
</tr>
<tr class="ltx_tr" id="A1.T5.2.2.7.5">
<td class="ltx_td ltx_align_justify" id="A1.T5.2.2.7.5.1" style="padding:1.5pt 2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T5.2.2.7.5.1.1">
<span class="ltx_p" id="A1.T5.2.2.7.5.1.1.1"><span class="ltx_text ltx_font_bold" id="A1.T5.2.2.7.5.1.1.1.1">Claude-3-7-Sonnet <span class="ltx_ERROR undefined" id="A1.T5.2.2.7.5.1.1.1.1.1">\faLightbulb</span>[regular]</span></span>
</span>
</td>
<td class="ltx_td ltx_align_center" id="A1.T5.2.2.7.5.2" style="padding:1.5pt 2.0pt;">0</td>
<td class="ltx_td ltx_align_center" id="A1.T5.2.2.7.5.3" style="padding:1.5pt 2.0pt;">0</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T5.2.2.7.5.4" style="padding:1.5pt 2.0pt;">0</td>
<td class="ltx_td ltx_align_center" id="A1.T5.2.2.7.5.5" style="padding:1.5pt 2.0pt;">454</td>
<td class="ltx_td ltx_align_center" id="A1.T5.2.2.7.5.6" style="padding:1.5pt 2.0pt;">237</td>
<td class="ltx_td ltx_align_center" id="A1.T5.2.2.7.5.7" style="padding:1.5pt 2.0pt;">217</td>
</tr>
<tr class="ltx_tr" id="A1.T5.2.2.8.6">
<td class="ltx_td ltx_align_justify" id="A1.T5.2.2.8.6.1" style="padding:1.5pt 2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T5.2.2.8.6.1.1">
<span class="ltx_p" id="A1.T5.2.2.8.6.1.1.1"><span class="ltx_text ltx_font_bold" id="A1.T5.2.2.8.6.1.1.1.1">GPT-4o-2024-11-20</span></span>
</span>
</td>
<td class="ltx_td ltx_align_center" id="A1.T5.2.2.8.6.2" style="padding:1.5pt 2.0pt;">10</td>
<td class="ltx_td ltx_align_center" id="A1.T5.2.2.8.6.3" style="padding:1.5pt 2.0pt;">0</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T5.2.2.8.6.4" style="padding:1.5pt 2.0pt;">10</td>
<td class="ltx_td ltx_align_center" id="A1.T5.2.2.8.6.5" style="padding:1.5pt 2.0pt;">581</td>
<td class="ltx_td ltx_align_center" id="A1.T5.2.2.8.6.6" style="padding:1.5pt 2.0pt;">326</td>
<td class="ltx_td ltx_align_center" id="A1.T5.2.2.8.6.7" style="padding:1.5pt 2.0pt;">255</td>
</tr>
<tr class="ltx_tr" id="A1.T5.2.2.9.7">
<td class="ltx_td ltx_align_justify" id="A1.T5.2.2.9.7.1" style="padding:1.5pt 2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T5.2.2.9.7.1.1">
<span class="ltx_p" id="A1.T5.2.2.9.7.1.1.1"><span class="ltx_text ltx_font_bold" id="A1.T5.2.2.9.7.1.1.1.1">Gemini 2.0 Pro Exp</span></span>
</span>
</td>
<td class="ltx_td ltx_align_center" id="A1.T5.2.2.9.7.2" style="padding:1.5pt 2.0pt;">1</td>
<td class="ltx_td ltx_align_center" id="A1.T5.2.2.9.7.3" style="padding:1.5pt 2.0pt;">0</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T5.2.2.9.7.4" style="padding:1.5pt 2.0pt;">1</td>
<td class="ltx_td ltx_align_center" id="A1.T5.2.2.9.7.5" style="padding:1.5pt 2.0pt;">565</td>
<td class="ltx_td ltx_align_center" id="A1.T5.2.2.9.7.6" style="padding:1.5pt 2.0pt;">467</td>
<td class="ltx_td ltx_align_center" id="A1.T5.2.2.9.7.7" style="padding:1.5pt 2.0pt;">98</td>
</tr>
<tr class="ltx_tr" id="A1.T5.2.2.10.8">
<td class="ltx_td ltx_align_justify" id="A1.T5.2.2.10.8.1" style="padding:1.5pt 2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T5.2.2.10.8.1.1">
<span class="ltx_p" id="A1.T5.2.2.10.8.1.1.1"><span class="ltx_text ltx_font_bold" id="A1.T5.2.2.10.8.1.1.1.1">Gemini 2.0 Flash</span></span>
</span>
</td>
<td class="ltx_td ltx_align_center" id="A1.T5.2.2.10.8.2" style="padding:1.5pt 2.0pt;">0</td>
<td class="ltx_td ltx_align_center" id="A1.T5.2.2.10.8.3" style="padding:1.5pt 2.0pt;">0</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T5.2.2.10.8.4" style="padding:1.5pt 2.0pt;">0</td>
<td class="ltx_td ltx_align_center" id="A1.T5.2.2.10.8.5" style="padding:1.5pt 2.0pt;">665</td>
<td class="ltx_td ltx_align_center" id="A1.T5.2.2.10.8.6" style="padding:1.5pt 2.0pt;">568</td>
<td class="ltx_td ltx_align_center" id="A1.T5.2.2.10.8.7" style="padding:1.5pt 2.0pt;">97</td>
</tr>
<tr class="ltx_tr" id="A1.T5.2.2.11.9">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="7" id="A1.T5.2.2.11.9.1" style="background-color:#71B7ED;padding:1.5pt 2.0pt;"><span class="ltx_text ltx_font_bold ltx_font_italic" id="A1.T5.2.2.11.9.1.1" style="background-color:#71B7ED;">Open-Weight LVLMs</span></td>
</tr>
<tr class="ltx_tr" id="A1.T5.2.2.12.10">
<td class="ltx_td ltx_align_justify ltx_border_t" id="A1.T5.2.2.12.10.1" style="padding:1.5pt 2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T5.2.2.12.10.1.1">
<span class="ltx_p" id="A1.T5.2.2.12.10.1.1.1"><span class="ltx_text ltx_font_bold" id="A1.T5.2.2.12.10.1.1.1.1">Pixtral-Large-Instruct-2411</span></span>
</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T5.2.2.12.10.2" style="padding:1.5pt 2.0pt;">3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T5.2.2.12.10.3" style="padding:1.5pt 2.0pt;">0</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A1.T5.2.2.12.10.4" style="padding:1.5pt 2.0pt;">3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T5.2.2.12.10.5" style="padding:1.5pt 2.0pt;">623</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T5.2.2.12.10.6" style="padding:1.5pt 2.0pt;">481</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T5.2.2.12.10.7" style="padding:1.5pt 2.0pt;">142</td>
</tr>
<tr class="ltx_tr" id="A1.T5.2.2.13.11">
<td class="ltx_td ltx_align_justify" id="A1.T5.2.2.13.11.1" style="padding:1.5pt 2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T5.2.2.13.11.1.1">
<span class="ltx_p" id="A1.T5.2.2.13.11.1.1.1"><span class="ltx_text ltx_font_bold" id="A1.T5.2.2.13.11.1.1.1.1">InternVL2_5-78B-MPO</span></span>
</span>
</td>
<td class="ltx_td ltx_align_center" id="A1.T5.2.2.13.11.2" style="padding:1.5pt 2.0pt;">0</td>
<td class="ltx_td ltx_align_center" id="A1.T5.2.2.13.11.3" style="padding:1.5pt 2.0pt;">0</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T5.2.2.13.11.4" style="padding:1.5pt 2.0pt;">0</td>
<td class="ltx_td ltx_align_center" id="A1.T5.2.2.13.11.5" style="padding:1.5pt 2.0pt;">834</td>
<td class="ltx_td ltx_align_center" id="A1.T5.2.2.13.11.6" style="padding:1.5pt 2.0pt;">682</td>
<td class="ltx_td ltx_align_center" id="A1.T5.2.2.13.11.7" style="padding:1.5pt 2.0pt;">152</td>
</tr>
<tr class="ltx_tr" id="A1.T5.2.2.14.12">
<td class="ltx_td ltx_align_justify" id="A1.T5.2.2.14.12.1" style="padding:1.5pt 2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T5.2.2.14.12.1.1">
<span class="ltx_p" id="A1.T5.2.2.14.12.1.1.1"><span class="ltx_text ltx_font_bold" id="A1.T5.2.2.14.12.1.1.1.1">NVLM-D-72B</span></span>
</span>
</td>
<td class="ltx_td ltx_align_center" id="A1.T5.2.2.14.12.2" style="padding:1.5pt 2.0pt;">8</td>
<td class="ltx_td ltx_align_center" id="A1.T5.2.2.14.12.3" style="padding:1.5pt 2.0pt;">0</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T5.2.2.14.12.4" style="padding:1.5pt 2.0pt;">8</td>
<td class="ltx_td ltx_align_center" id="A1.T5.2.2.14.12.5" style="padding:1.5pt 2.0pt;">791</td>
<td class="ltx_td ltx_align_center" id="A1.T5.2.2.14.12.6" style="padding:1.5pt 2.0pt;">620</td>
<td class="ltx_td ltx_align_center" id="A1.T5.2.2.14.12.7" style="padding:1.5pt 2.0pt;">171</td>
</tr>
<tr class="ltx_tr" id="A1.T5.2.2.15.13">
<td class="ltx_td ltx_align_justify" id="A1.T5.2.2.15.13.1" style="padding:1.5pt 2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T5.2.2.15.13.1.1">
<span class="ltx_p" id="A1.T5.2.2.15.13.1.1.1"><span class="ltx_text ltx_font_bold" id="A1.T5.2.2.15.13.1.1.1.1">Qwen2.5-VL-72B-Instruct</span></span>
</span>
</td>
<td class="ltx_td ltx_align_center" id="A1.T5.2.2.15.13.2" style="padding:1.5pt 2.0pt;">2</td>
<td class="ltx_td ltx_align_center" id="A1.T5.2.2.15.13.3" style="padding:1.5pt 2.0pt;">0</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T5.2.2.15.13.4" style="padding:1.5pt 2.0pt;">2</td>
<td class="ltx_td ltx_align_center" id="A1.T5.2.2.15.13.5" style="padding:1.5pt 2.0pt;">744</td>
<td class="ltx_td ltx_align_center" id="A1.T5.2.2.15.13.6" style="padding:1.5pt 2.0pt;">600</td>
<td class="ltx_td ltx_align_center" id="A1.T5.2.2.15.13.7" style="padding:1.5pt 2.0pt;">144</td>
</tr>
<tr class="ltx_tr" id="A1.T5.2.2.16.14">
<td class="ltx_td ltx_align_justify" id="A1.T5.2.2.16.14.1" style="padding:1.5pt 2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T5.2.2.16.14.1.1">
<span class="ltx_p" id="A1.T5.2.2.16.14.1.1.1"><span class="ltx_text ltx_font_bold" id="A1.T5.2.2.16.14.1.1.1.1">QVQ-72B-Preview</span></span>
</span>
</td>
<td class="ltx_td ltx_align_center" id="A1.T5.2.2.16.14.2" style="padding:1.5pt 2.0pt;">20</td>
<td class="ltx_td ltx_align_center" id="A1.T5.2.2.16.14.3" style="padding:1.5pt 2.0pt;">0</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T5.2.2.16.14.4" style="padding:1.5pt 2.0pt;">20</td>
<td class="ltx_td ltx_align_center" id="A1.T5.2.2.16.14.5" style="padding:1.5pt 2.0pt;">765</td>
<td class="ltx_td ltx_align_center" id="A1.T5.2.2.16.14.6" style="padding:1.5pt 2.0pt;">525</td>
<td class="ltx_td ltx_align_center" id="A1.T5.2.2.16.14.7" style="padding:1.5pt 2.0pt;">240</td>
</tr>
<tr class="ltx_tr" id="A1.T5.2.2.17.15">
<td class="ltx_td ltx_align_justify" id="A1.T5.2.2.17.15.1" style="padding:1.5pt 2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T5.2.2.17.15.1.1">
<span class="ltx_p" id="A1.T5.2.2.17.15.1.1.1"><span class="ltx_text ltx_font_bold" id="A1.T5.2.2.17.15.1.1.1.1">llava-onevision-72b-ov-chat</span></span>
</span>
</td>
<td class="ltx_td ltx_align_center" id="A1.T5.2.2.17.15.2" style="padding:1.5pt 2.0pt;">3</td>
<td class="ltx_td ltx_align_center" id="A1.T5.2.2.17.15.3" style="padding:1.5pt 2.0pt;">0</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T5.2.2.17.15.4" style="padding:1.5pt 2.0pt;">3</td>
<td class="ltx_td ltx_align_center" id="A1.T5.2.2.17.15.5" style="padding:1.5pt 2.0pt;">829</td>
<td class="ltx_td ltx_align_center" id="A1.T5.2.2.17.15.6" style="padding:1.5pt 2.0pt;">715</td>
<td class="ltx_td ltx_align_center" id="A1.T5.2.2.17.15.7" style="padding:1.5pt 2.0pt;">114</td>
</tr>
<tr class="ltx_tr" id="A1.T5.2.2.18.16">
<td class="ltx_td ltx_align_justify" id="A1.T5.2.2.18.16.1" style="padding:1.5pt 2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T5.2.2.18.16.1.1">
<span class="ltx_p" id="A1.T5.2.2.18.16.1.1.1"><span class="ltx_text ltx_font_bold" id="A1.T5.2.2.18.16.1.1.1.1">gemma-3-27b-it</span></span>
</span>
</td>
<td class="ltx_td ltx_align_center" id="A1.T5.2.2.18.16.2" style="padding:1.5pt 2.0pt;">18</td>
<td class="ltx_td ltx_align_center" id="A1.T5.2.2.18.16.3" style="padding:1.5pt 2.0pt;">0</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T5.2.2.18.16.4" style="padding:1.5pt 2.0pt;">18</td>
<td class="ltx_td ltx_align_center" id="A1.T5.2.2.18.16.5" style="padding:1.5pt 2.0pt;">781</td>
<td class="ltx_td ltx_align_center" id="A1.T5.2.2.18.16.6" style="padding:1.5pt 2.0pt;">645</td>
<td class="ltx_td ltx_align_center" id="A1.T5.2.2.18.16.7" style="padding:1.5pt 2.0pt;">136</td>
</tr>
<tr class="ltx_tr" id="A1.T5.2.2.19.17">
<td class="ltx_td ltx_align_justify" id="A1.T5.2.2.19.17.1" style="padding:1.5pt 2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T5.2.2.19.17.1.1">
<span class="ltx_p" id="A1.T5.2.2.19.17.1.1.1"><span class="ltx_text ltx_font_bold" id="A1.T5.2.2.19.17.1.1.1.1">Aria</span></span>
</span>
</td>
<td class="ltx_td ltx_align_center" id="A1.T5.2.2.19.17.2" style="padding:1.5pt 2.0pt;">16</td>
<td class="ltx_td ltx_align_center" id="A1.T5.2.2.19.17.3" style="padding:1.5pt 2.0pt;">0</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T5.2.2.19.17.4" style="padding:1.5pt 2.0pt;">16</td>
<td class="ltx_td ltx_align_center" id="A1.T5.2.2.19.17.5" style="padding:1.5pt 2.0pt;">894</td>
<td class="ltx_td ltx_align_center" id="A1.T5.2.2.19.17.6" style="padding:1.5pt 2.0pt;">720</td>
<td class="ltx_td ltx_align_center" id="A1.T5.2.2.19.17.7" style="padding:1.5pt 2.0pt;">174</td>
</tr>
<tr class="ltx_tr" id="A1.T5.2.2.20.18">
<td class="ltx_td ltx_align_justify" id="A1.T5.2.2.20.18.1" style="padding:1.5pt 2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T5.2.2.20.18.1.1">
<span class="ltx_p" id="A1.T5.2.2.20.18.1.1.1"><span class="ltx_text ltx_font_bold" id="A1.T5.2.2.20.18.1.1.1.1">MiniCPM-V-2_6</span></span>
</span>
</td>
<td class="ltx_td ltx_align_center" id="A1.T5.2.2.20.18.2" style="padding:1.5pt 2.0pt;">16</td>
<td class="ltx_td ltx_align_center" id="A1.T5.2.2.20.18.3" style="padding:1.5pt 2.0pt;">0</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T5.2.2.20.18.4" style="padding:1.5pt 2.0pt;">16</td>
<td class="ltx_td ltx_align_center" id="A1.T5.2.2.20.18.5" style="padding:1.5pt 2.0pt;">918</td>
<td class="ltx_td ltx_align_center" id="A1.T5.2.2.20.18.6" style="padding:1.5pt 2.0pt;">688</td>
<td class="ltx_td ltx_align_center" id="A1.T5.2.2.20.18.7" style="padding:1.5pt 2.0pt;">230</td>
</tr>
<tr class="ltx_tr" id="A1.T5.2.2.21.19">
<td class="ltx_td ltx_align_justify" id="A1.T5.2.2.21.19.1" style="padding:1.5pt 2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T5.2.2.21.19.1.1">
<span class="ltx_p" id="A1.T5.2.2.21.19.1.1.1"><span class="ltx_text ltx_font_bold" id="A1.T5.2.2.21.19.1.1.1.1">Qwen2.5-VL-3B-Instruct</span></span>
</span>
</td>
<td class="ltx_td ltx_align_center" id="A1.T5.2.2.21.19.2" style="padding:1.5pt 2.0pt;">31</td>
<td class="ltx_td ltx_align_center" id="A1.T5.2.2.21.19.3" style="padding:1.5pt 2.0pt;">0</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T5.2.2.21.19.4" style="padding:1.5pt 2.0pt;">31</td>
<td class="ltx_td ltx_align_center" id="A1.T5.2.2.21.19.5" style="padding:1.5pt 2.0pt;">1034</td>
<td class="ltx_td ltx_align_center" id="A1.T5.2.2.21.19.6" style="padding:1.5pt 2.0pt;">613</td>
<td class="ltx_td ltx_align_center" id="A1.T5.2.2.21.19.7" style="padding:1.5pt 2.0pt;">421</td>
</tr>
<tr class="ltx_tr" id="A1.T5.2.2.22.20">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="7" id="A1.T5.2.2.22.20.1" style="background-color:#71EDB7;padding:1.5pt 2.0pt;"><span class="ltx_text ltx_font_bold ltx_font_italic" id="A1.T5.2.2.22.20.1.1" style="background-color:#71EDB7;">Proprietary LLMs</span></td>
</tr>
<tr class="ltx_tr" id="A1.T5.2.2.23.21">
<td class="ltx_td ltx_align_justify ltx_border_t" id="A1.T5.2.2.23.21.1" style="padding:1.5pt 2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T5.2.2.23.21.1.1">
<span class="ltx_p" id="A1.T5.2.2.23.21.1.1.1"><span class="ltx_text ltx_font_bold" id="A1.T5.2.2.23.21.1.1.1.1">o3-mini</span><span class="ltx_text ltx_font_bold" id="A1.T5.2.2.23.21.1.1.1.2"> <span class="ltx_ERROR undefined" id="A1.T5.2.2.23.21.1.1.1.2.1">\faLightbulb</span>[regular]</span></span>
</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T5.2.2.23.21.2" style="padding:1.5pt 2.0pt;">0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T5.2.2.23.21.3" style="padding:1.5pt 2.0pt;">0</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A1.T5.2.2.23.21.4" style="padding:1.5pt 2.0pt;">0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T5.2.2.23.21.5" style="padding:1.5pt 2.0pt;">6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T5.2.2.23.21.6" style="padding:1.5pt 2.0pt;">4</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T5.2.2.23.21.7" style="padding:1.5pt 2.0pt;">2</td>
</tr>
<tr class="ltx_tr" id="A1.T5.2.2.24.22">
<td class="ltx_td ltx_align_justify" id="A1.T5.2.2.24.22.1" style="padding:1.5pt 2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T5.2.2.24.22.1.1">
<span class="ltx_p" id="A1.T5.2.2.24.22.1.1.1"><span class="ltx_text ltx_font_bold" id="A1.T5.2.2.24.22.1.1.1.1">Claude-3-7-Sonnet <span class="ltx_ERROR undefined" id="A1.T5.2.2.24.22.1.1.1.1.1">\faLightbulb</span>[regular]</span></span>
</span>
</td>
<td class="ltx_td ltx_align_center" id="A1.T5.2.2.24.22.2" style="padding:1.5pt 2.0pt;">2</td>
<td class="ltx_td ltx_align_center" id="A1.T5.2.2.24.22.3" style="padding:1.5pt 2.0pt;">0</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T5.2.2.24.22.4" style="padding:1.5pt 2.0pt;">2</td>
<td class="ltx_td ltx_align_center" id="A1.T5.2.2.24.22.5" style="padding:1.5pt 2.0pt;">124</td>
<td class="ltx_td ltx_align_center" id="A1.T5.2.2.24.22.6" style="padding:1.5pt 2.0pt;">44</td>
<td class="ltx_td ltx_align_center" id="A1.T5.2.2.24.22.7" style="padding:1.5pt 2.0pt;">80</td>
</tr>
<tr class="ltx_tr" id="A1.T5.2.2.25.23">
<td class="ltx_td ltx_align_justify" id="A1.T5.2.2.25.23.1" style="padding:1.5pt 2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T5.2.2.25.23.1.1">
<span class="ltx_p" id="A1.T5.2.2.25.23.1.1.1"><span class="ltx_text ltx_font_bold" id="A1.T5.2.2.25.23.1.1.1.1">Claude-3-7-Sonnet</span></span>
</span>
</td>
<td class="ltx_td ltx_align_center" id="A1.T5.2.2.25.23.2" style="padding:1.5pt 2.0pt;">1</td>
<td class="ltx_td ltx_align_center" id="A1.T5.2.2.25.23.3" style="padding:1.5pt 2.0pt;">0</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T5.2.2.25.23.4" style="padding:1.5pt 2.0pt;">1</td>
<td class="ltx_td ltx_align_center" id="A1.T5.2.2.25.23.5" style="padding:1.5pt 2.0pt;">274</td>
<td class="ltx_td ltx_align_center" id="A1.T5.2.2.25.23.6" style="padding:1.5pt 2.0pt;">74</td>
<td class="ltx_td ltx_align_center" id="A1.T5.2.2.25.23.7" style="padding:1.5pt 2.0pt;">200</td>
</tr>
<tr class="ltx_tr" id="A1.T5.2.2.26.24">
<td class="ltx_td ltx_align_justify" id="A1.T5.2.2.26.24.1" style="padding:1.5pt 2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T5.2.2.26.24.1.1">
<span class="ltx_p" id="A1.T5.2.2.26.24.1.1.1"><span class="ltx_text ltx_font_bold" id="A1.T5.2.2.26.24.1.1.1.1">GPT-4o-2024-11-20</span></span>
</span>
</td>
<td class="ltx_td ltx_align_center" id="A1.T5.2.2.26.24.2" style="padding:1.5pt 2.0pt;">17</td>
<td class="ltx_td ltx_align_center" id="A1.T5.2.2.26.24.3" style="padding:1.5pt 2.0pt;">0</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T5.2.2.26.24.4" style="padding:1.5pt 2.0pt;">17</td>
<td class="ltx_td ltx_align_center" id="A1.T5.2.2.26.24.5" style="padding:1.5pt 2.0pt;">399</td>
<td class="ltx_td ltx_align_center" id="A1.T5.2.2.26.24.6" style="padding:1.5pt 2.0pt;">183</td>
<td class="ltx_td ltx_align_center" id="A1.T5.2.2.26.24.7" style="padding:1.5pt 2.0pt;">216</td>
</tr>
<tr class="ltx_tr" id="A1.T5.2.2.27.25">
<td class="ltx_td ltx_align_justify" id="A1.T5.2.2.27.25.1" style="padding:1.5pt 2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T5.2.2.27.25.1.1">
<span class="ltx_p" id="A1.T5.2.2.27.25.1.1.1"><span class="ltx_text ltx_font_bold" id="A1.T5.2.2.27.25.1.1.1.1">Gemini 2.0 Pro Exp</span></span>
</span>
</td>
<td class="ltx_td ltx_align_center" id="A1.T5.2.2.27.25.2" style="padding:1.5pt 2.0pt;">0</td>
<td class="ltx_td ltx_align_center" id="A1.T5.2.2.27.25.3" style="padding:1.5pt 2.0pt;">0</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T5.2.2.27.25.4" style="padding:1.5pt 2.0pt;">0</td>
<td class="ltx_td ltx_align_center" id="A1.T5.2.2.27.25.5" style="padding:1.5pt 2.0pt;">378</td>
<td class="ltx_td ltx_align_center" id="A1.T5.2.2.27.25.6" style="padding:1.5pt 2.0pt;">254</td>
<td class="ltx_td ltx_align_center" id="A1.T5.2.2.27.25.7" style="padding:1.5pt 2.0pt;">124</td>
</tr>
<tr class="ltx_tr" id="A1.T5.2.2.28.26">
<td class="ltx_td ltx_align_justify" id="A1.T5.2.2.28.26.1" style="padding:1.5pt 2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T5.2.2.28.26.1.1">
<span class="ltx_p" id="A1.T5.2.2.28.26.1.1.1"><span class="ltx_text ltx_font_bold" id="A1.T5.2.2.28.26.1.1.1.1">Gemini 2.0 Flash</span></span>
</span>
</td>
<td class="ltx_td ltx_align_center" id="A1.T5.2.2.28.26.2" style="padding:1.5pt 2.0pt;">0</td>
<td class="ltx_td ltx_align_center" id="A1.T5.2.2.28.26.3" style="padding:1.5pt 2.0pt;">0</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T5.2.2.28.26.4" style="padding:1.5pt 2.0pt;">0</td>
<td class="ltx_td ltx_align_center" id="A1.T5.2.2.28.26.5" style="padding:1.5pt 2.0pt;">633</td>
<td class="ltx_td ltx_align_center" id="A1.T5.2.2.28.26.6" style="padding:1.5pt 2.0pt;">545</td>
<td class="ltx_td ltx_align_center" id="A1.T5.2.2.28.26.7" style="padding:1.5pt 2.0pt;">88</td>
</tr>
<tr class="ltx_tr" id="A1.T5.2.2.29.27">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="7" id="A1.T5.2.2.29.27.1" style="background-color:#71EDB7;padding:1.5pt 2.0pt;"><span class="ltx_text ltx_font_bold ltx_font_italic" id="A1.T5.2.2.29.27.1.1" style="background-color:#71EDB7;">Open-Weight LLMs</span></td>
</tr>
<tr class="ltx_tr" id="A1.T5.1.1.1">
<td class="ltx_td ltx_align_justify" id="A1.T5.1.1.1.1" style="padding:1.5pt 2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T5.1.1.1.1.1">
<span class="ltx_p" id="A1.T5.1.1.1.1.1.1"><span class="ltx_text ltx_font_bold" id="A1.T5.1.1.1.1.1.1.1">Llama-3.1-405B-Instruct</span><sup class="ltx_sup" id="A1.T5.1.1.1.1.1.1.2"><span class="ltx_text ltx_font_italic" id="A1.T5.1.1.1.1.1.1.2.1">†</span></sup></span>
</span>
</td>
<td class="ltx_td ltx_align_center" id="A1.T5.1.1.1.2" style="padding:1.5pt 2.0pt;">8</td>
<td class="ltx_td ltx_align_center" id="A1.T5.1.1.1.3" style="padding:1.5pt 2.0pt;">0</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T5.1.1.1.4" style="padding:1.5pt 2.0pt;">8</td>
<td class="ltx_td ltx_align_center" id="A1.T5.1.1.1.5" style="padding:1.5pt 2.0pt;">835</td>
<td class="ltx_td ltx_align_center" id="A1.T5.1.1.1.6" style="padding:1.5pt 2.0pt;">741</td>
<td class="ltx_td ltx_align_center" id="A1.T5.1.1.1.7" style="padding:1.5pt 2.0pt;">94</td>
</tr>
<tr class="ltx_tr" id="A1.T5.2.2.30.28">
<td class="ltx_td ltx_align_justify" id="A1.T5.2.2.30.28.1" style="padding:1.5pt 2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T5.2.2.30.28.1.1">
<span class="ltx_p" id="A1.T5.2.2.30.28.1.1.1"><span class="ltx_text ltx_font_bold" id="A1.T5.2.2.30.28.1.1.1.1">DeepSeek-R1 <span class="ltx_ERROR undefined" id="A1.T5.2.2.30.28.1.1.1.1.1">\faLightbulb</span>[regular]</span></span>
</span>
</td>
<td class="ltx_td ltx_align_center" id="A1.T5.2.2.30.28.2" style="padding:1.5pt 2.0pt;">2</td>
<td class="ltx_td ltx_align_center" id="A1.T5.2.2.30.28.3" style="padding:1.5pt 2.0pt;">0</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T5.2.2.30.28.4" style="padding:1.5pt 2.0pt;">2</td>
<td class="ltx_td ltx_align_center" id="A1.T5.2.2.30.28.5" style="padding:1.5pt 2.0pt;">25</td>
<td class="ltx_td ltx_align_center" id="A1.T5.2.2.30.28.6" style="padding:1.5pt 2.0pt;">14</td>
<td class="ltx_td ltx_align_center" id="A1.T5.2.2.30.28.7" style="padding:1.5pt 2.0pt;">11</td>
</tr>
<tr class="ltx_tr" id="A1.T5.2.2.2">
<td class="ltx_td ltx_align_justify" id="A1.T5.2.2.2.1" style="padding:1.5pt 2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T5.2.2.2.1.1">
<span class="ltx_p" id="A1.T5.2.2.2.1.1.1"><span class="ltx_text ltx_font_bold" id="A1.T5.2.2.2.1.1.1.1">DeepSeek-V3</span><sup class="ltx_sup" id="A1.T5.2.2.2.1.1.1.2"><span class="ltx_text ltx_font_italic" id="A1.T5.2.2.2.1.1.1.2.1">†</span></sup></span>
</span>
</td>
<td class="ltx_td ltx_align_center" id="A1.T5.2.2.2.2" style="padding:1.5pt 2.0pt;">11</td>
<td class="ltx_td ltx_align_center" id="A1.T5.2.2.2.3" style="padding:1.5pt 2.0pt;">0</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T5.2.2.2.4" style="padding:1.5pt 2.0pt;">11</td>
<td class="ltx_td ltx_align_center" id="A1.T5.2.2.2.5" style="padding:1.5pt 2.0pt;">513</td>
<td class="ltx_td ltx_align_center" id="A1.T5.2.2.2.6" style="padding:1.5pt 2.0pt;">206</td>
<td class="ltx_td ltx_align_center" id="A1.T5.2.2.2.7" style="padding:1.5pt 2.0pt;">307</td>
</tr>
<tr class="ltx_tr" id="A1.T5.2.2.31.29">
<td class="ltx_td ltx_align_justify" id="A1.T5.2.2.31.29.1" style="padding:1.5pt 2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T5.2.2.31.29.1.1">
<span class="ltx_p" id="A1.T5.2.2.31.29.1.1.1"><span class="ltx_text ltx_font_bold" id="A1.T5.2.2.31.29.1.1.1.1">R1-Distill-Llama-70B <span class="ltx_ERROR undefined" id="A1.T5.2.2.31.29.1.1.1.1.1">\faLightbulb</span>[regular]</span></span>
</span>
</td>
<td class="ltx_td ltx_align_center" id="A1.T5.2.2.31.29.2" style="padding:1.5pt 2.0pt;">9</td>
<td class="ltx_td ltx_align_center" id="A1.T5.2.2.31.29.3" style="padding:1.5pt 2.0pt;">0</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T5.2.2.31.29.4" style="padding:1.5pt 2.0pt;">9</td>
<td class="ltx_td ltx_align_center" id="A1.T5.2.2.31.29.5" style="padding:1.5pt 2.0pt;">203</td>
<td class="ltx_td ltx_align_center" id="A1.T5.2.2.31.29.6" style="padding:1.5pt 2.0pt;">110</td>
<td class="ltx_td ltx_align_center" id="A1.T5.2.2.31.29.7" style="padding:1.5pt 2.0pt;">93</td>
</tr>
<tr class="ltx_tr" id="A1.T5.2.2.32.30">
<td class="ltx_td ltx_align_justify" id="A1.T5.2.2.32.30.1" style="padding:1.5pt 2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T5.2.2.32.30.1.1">
<span class="ltx_p" id="A1.T5.2.2.32.30.1.1.1"><span class="ltx_text ltx_font_bold" id="A1.T5.2.2.32.30.1.1.1.1">Llama-3.3-70B-Instruct</span></span>
</span>
</td>
<td class="ltx_td ltx_align_center" id="A1.T5.2.2.32.30.2" style="padding:1.5pt 2.0pt;">22</td>
<td class="ltx_td ltx_align_center" id="A1.T5.2.2.32.30.3" style="padding:1.5pt 2.0pt;">0</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T5.2.2.32.30.4" style="padding:1.5pt 2.0pt;">22</td>
<td class="ltx_td ltx_align_center" id="A1.T5.2.2.32.30.5" style="padding:1.5pt 2.0pt;">598</td>
<td class="ltx_td ltx_align_center" id="A1.T5.2.2.32.30.6" style="padding:1.5pt 2.0pt;">326</td>
<td class="ltx_td ltx_align_center" id="A1.T5.2.2.32.30.7" style="padding:1.5pt 2.0pt;">272</td>
</tr>
<tr class="ltx_tr" id="A1.T5.2.2.33.31">
<td class="ltx_td ltx_align_justify" id="A1.T5.2.2.33.31.1" style="padding:1.5pt 2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T5.2.2.33.31.1.1">
<span class="ltx_p" id="A1.T5.2.2.33.31.1.1.1"><span class="ltx_text ltx_font_bold" id="A1.T5.2.2.33.31.1.1.1.1">QwQ-32B <span class="ltx_ERROR undefined" id="A1.T5.2.2.33.31.1.1.1.1.1">\faLightbulb</span>[regular]</span></span>
</span>
</td>
<td class="ltx_td ltx_align_center" id="A1.T5.2.2.33.31.2" style="padding:1.5pt 2.0pt;">9</td>
<td class="ltx_td ltx_align_center" id="A1.T5.2.2.33.31.3" style="padding:1.5pt 2.0pt;">0</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T5.2.2.33.31.4" style="padding:1.5pt 2.0pt;">9</td>
<td class="ltx_td ltx_align_center" id="A1.T5.2.2.33.31.5" style="padding:1.5pt 2.0pt;">65</td>
<td class="ltx_td ltx_align_center" id="A1.T5.2.2.33.31.6" style="padding:1.5pt 2.0pt;">34</td>
<td class="ltx_td ltx_align_center" id="A1.T5.2.2.33.31.7" style="padding:1.5pt 2.0pt;">31</td>
</tr>
<tr class="ltx_tr" id="A1.T5.2.2.34.32">
<td class="ltx_td ltx_align_justify" id="A1.T5.2.2.34.32.1" style="padding:1.5pt 2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T5.2.2.34.32.1.1">
<span class="ltx_p" id="A1.T5.2.2.34.32.1.1.1"><span class="ltx_text ltx_font_bold" id="A1.T5.2.2.34.32.1.1.1.1">Open-Reasoner-Zero-32B <span class="ltx_ERROR undefined" id="A1.T5.2.2.34.32.1.1.1.1.1">\faLightbulb</span>[regular]</span></span>
</span>
</td>
<td class="ltx_td ltx_align_center" id="A1.T5.2.2.34.32.2" style="padding:1.5pt 2.0pt;">10</td>
<td class="ltx_td ltx_align_center" id="A1.T5.2.2.34.32.3" style="padding:1.5pt 2.0pt;">0</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T5.2.2.34.32.4" style="padding:1.5pt 2.0pt;">10</td>
<td class="ltx_td ltx_align_center" id="A1.T5.2.2.34.32.5" style="padding:1.5pt 2.0pt;">697</td>
<td class="ltx_td ltx_align_center" id="A1.T5.2.2.34.32.6" style="padding:1.5pt 2.0pt;">473</td>
<td class="ltx_td ltx_align_center" id="A1.T5.2.2.34.32.7" style="padding:1.5pt 2.0pt;">224</td>
</tr>
<tr class="ltx_tr" id="A1.T5.2.2.35.33">
<td class="ltx_td ltx_align_justify ltx_border_bb" id="A1.T5.2.2.35.33.1" style="padding:1.5pt 2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T5.2.2.35.33.1.1">
<span class="ltx_p" id="A1.T5.2.2.35.33.1.1.1"><span class="ltx_text ltx_font_bold" id="A1.T5.2.2.35.33.1.1.1.1">Phi-4</span></span>
</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T5.2.2.35.33.2" style="padding:1.5pt 2.0pt;">2</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T5.2.2.35.33.3" style="padding:1.5pt 2.0pt;">0</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="A1.T5.2.2.35.33.4" style="padding:1.5pt 2.0pt;">2</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T5.2.2.35.33.5" style="padding:1.5pt 2.0pt;">709</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T5.2.2.35.33.6" style="padding:1.5pt 2.0pt;">447</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T5.2.2.35.33.7" style="padding:1.5pt 2.0pt;">262</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a detailed breakdown of errors made by various Large Language Models (LLMs) and Large Vision-Language Models (LVLMs) when solving 7x7 English crossword puzzles.  It categorizes errors into two types: global length errors (where the model's response either omits or adds answers compared to the reference solution) and local length errors (where the model's answers are of different lengths than the corresponding reference words).  For each model, the table shows the total number of errors, as well as a further breakdown of how many errors resulted in longer or shorter answers than expected. This provides insight into the specific types of errors models make and might suggest areas for future improvement.
> <details>
> <summary>read the caption</summary>
> Table 5: Global and Local Length Errors across models on 7x7 English puzzles. “Long” and “Short” indicate words that are longer or shorter than the corresponding reference answer.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="A1.T6.45">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A1.T6.45.46.1">
<th class="ltx_td ltx_align_justify ltx_th ltx_th_row ltx_border_tt" id="A1.T6.45.46.1.1">
<span class="ltx_inline-block ltx_align_top" id="A1.T6.45.46.1.1.1">
<span class="ltx_p" id="A1.T6.45.46.1.1.1.1"><span class="ltx_text ltx_font_bold" id="A1.T6.45.46.1.1.1.1.1">Models</span></span>
</span>
</th>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A1.T6.45.46.1.2"><span class="ltx_text ltx_font_bold" id="A1.T6.45.46.1.2.1">Size</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="A1.T6.45.46.1.3"><span class="ltx_text ltx_font_bold" id="A1.T6.45.46.1.3.1">Across</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="A1.T6.45.46.1.4"><span class="ltx_text ltx_font_bold" id="A1.T6.45.46.1.4.1">Down</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A1.T6.45.46.1.5"><span class="ltx_text ltx_font_bold" id="A1.T6.45.46.1.5.1">All</span></td>
</tr>
<tr class="ltx_tr" id="A1.T6.45.47.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" colspan="5" id="A1.T6.45.47.2.1" style="background-color:#71B7ED;"><span class="ltx_text ltx_font_bold ltx_font_italic" id="A1.T6.45.47.2.1.1" style="background-color:#71B7ED;">Proprietary LVLMs</span></th>
</tr>
<tr class="ltx_tr" id="A1.T6.3.3">
<th class="ltx_td ltx_align_justify ltx_th ltx_th_row ltx_border_t" id="A1.T6.3.3.4">
<span class="ltx_inline-block ltx_align_top" id="A1.T6.3.3.4.1">
<span class="ltx_p" id="A1.T6.3.3.4.1.1"><span class="ltx_text ltx_font_bold" id="A1.T6.3.3.4.1.1.1">Claude-3-7-Sonnet</span></span>
</span>
</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T6.3.3.5">-</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A1.T6.1.1.1">0.954<sub class="ltx_sub" id="A1.T6.1.1.1.1"><span class="ltx_text ltx_font_italic" id="A1.T6.1.1.1.1.1">±0.009</span></sub>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A1.T6.2.2.2">0.760<sub class="ltx_sub" id="A1.T6.2.2.2.1"><span class="ltx_text ltx_font_italic" id="A1.T6.2.2.2.1.1">±0.018</span></sub>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T6.3.3.3">0.855<sub class="ltx_sub" id="A1.T6.3.3.3.1"><span class="ltx_text ltx_font_italic" id="A1.T6.3.3.3.1.1">±0.010</span></sub>
</td>
</tr>
<tr class="ltx_tr" id="A1.T6.6.6">
<th class="ltx_td ltx_align_justify ltx_th ltx_th_row" id="A1.T6.6.6.4">
<span class="ltx_inline-block ltx_align_top" id="A1.T6.6.6.4.1">
<span class="ltx_p" id="A1.T6.6.6.4.1.1"><span class="ltx_text ltx_font_bold" id="A1.T6.6.6.4.1.1.1">Claude-3-7-Sonnet</span><span class="ltx_text ltx_font_bold" id="A1.T6.6.6.4.1.1.2"> <span class="ltx_ERROR undefined" id="A1.T6.6.6.4.1.1.2.1">\faLightbulb</span>[regular]</span></span>
</span>
</th>
<td class="ltx_td ltx_align_center" id="A1.T6.6.6.5">-</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T6.4.4.1">0.949<sub class="ltx_sub" id="A1.T6.4.4.1.1"><span class="ltx_text ltx_font_italic" id="A1.T6.4.4.1.1.1">±0.010</span></sub>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T6.5.5.2">0.654<sub class="ltx_sub" id="A1.T6.5.5.2.1"><span class="ltx_text ltx_font_italic" id="A1.T6.5.5.2.1.1">±0.022</span></sub>
</td>
<td class="ltx_td ltx_align_center" id="A1.T6.6.6.3">0.800<sub class="ltx_sub" id="A1.T6.6.6.3.1"><span class="ltx_text ltx_font_italic" id="A1.T6.6.6.3.1.1">±0.012</span></sub>
</td>
</tr>
<tr class="ltx_tr" id="A1.T6.9.9">
<th class="ltx_td ltx_align_justify ltx_th ltx_th_row" id="A1.T6.9.9.4">
<span class="ltx_inline-block ltx_align_top" id="A1.T6.9.9.4.1">
<span class="ltx_p" id="A1.T6.9.9.4.1.1"><span class="ltx_text ltx_font_bold" id="A1.T6.9.9.4.1.1.1">GPT-4o-2024-11-20</span></span>
</span>
</th>
<td class="ltx_td ltx_align_center" id="A1.T6.9.9.5">-</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T6.7.7.1">0.886<sub class="ltx_sub" id="A1.T6.7.7.1.1"><span class="ltx_text ltx_font_italic" id="A1.T6.7.7.1.1.1">±0.014</span></sub>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T6.8.8.2">0.448<sub class="ltx_sub" id="A1.T6.8.8.2.1"><span class="ltx_text ltx_font_italic" id="A1.T6.8.8.2.1.1">±0.024</span></sub>
</td>
<td class="ltx_td ltx_align_center" id="A1.T6.9.9.3">0.668<sub class="ltx_sub" id="A1.T6.9.9.3.1"><span class="ltx_text ltx_font_italic" id="A1.T6.9.9.3.1.1">±0.015</span></sub>
</td>
</tr>
<tr class="ltx_tr" id="A1.T6.12.12">
<th class="ltx_td ltx_align_justify ltx_th ltx_th_row" id="A1.T6.12.12.4">
<span class="ltx_inline-block ltx_align_top" id="A1.T6.12.12.4.1">
<span class="ltx_p" id="A1.T6.12.12.4.1.1"><span class="ltx_text ltx_font_bold" id="A1.T6.12.12.4.1.1.1">Gemini 2.0 Pro Exp</span></span>
</span>
</th>
<td class="ltx_td ltx_align_center" id="A1.T6.12.12.5">-</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T6.10.10.1">0.962<sub class="ltx_sub" id="A1.T6.10.10.1.1"><span class="ltx_text ltx_font_italic" id="A1.T6.10.10.1.1.1">±0.008</span></sub>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T6.11.11.2">0.693<sub class="ltx_sub" id="A1.T6.11.11.2.1"><span class="ltx_text ltx_font_italic" id="A1.T6.11.11.2.1.1">±0.018</span></sub>
</td>
<td class="ltx_td ltx_align_center" id="A1.T6.12.12.3">0.826<sub class="ltx_sub" id="A1.T6.12.12.3.1"><span class="ltx_text ltx_font_italic" id="A1.T6.12.12.3.1.1">±0.011</span></sub>
</td>
</tr>
<tr class="ltx_tr" id="A1.T6.15.15">
<th class="ltx_td ltx_align_justify ltx_th ltx_th_row" id="A1.T6.15.15.4">
<span class="ltx_inline-block ltx_align_top" id="A1.T6.15.15.4.1">
<span class="ltx_p" id="A1.T6.15.15.4.1.1"><span class="ltx_text ltx_font_bold" id="A1.T6.15.15.4.1.1.1">Gemini 2.0 Flash</span></span>
</span>
</th>
<td class="ltx_td ltx_align_center" id="A1.T6.15.15.5">-</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T6.13.13.1">0.954<sub class="ltx_sub" id="A1.T6.13.13.1.1"><span class="ltx_text ltx_font_italic" id="A1.T6.13.13.1.1.1">±0.009</span></sub>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T6.14.14.2">0.381<sub class="ltx_sub" id="A1.T6.14.14.2.1"><span class="ltx_text ltx_font_italic" id="A1.T6.14.14.2.1.1">±0.024</span></sub>
</td>
<td class="ltx_td ltx_align_center" id="A1.T6.15.15.3">0.667<sub class="ltx_sub" id="A1.T6.15.15.3.1"><span class="ltx_text ltx_font_italic" id="A1.T6.15.15.3.1.1">±0.013</span></sub>
</td>
</tr>
<tr class="ltx_tr" id="A1.T6.45.48.3">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" colspan="5" id="A1.T6.45.48.3.1" style="background-color:#71B7ED;"><span class="ltx_text ltx_font_bold ltx_font_italic" id="A1.T6.45.48.3.1.1" style="background-color:#71B7ED;">Open-Weight LVLMs</span></th>
</tr>
<tr class="ltx_tr" id="A1.T6.18.18">
<th class="ltx_td ltx_align_justify ltx_th ltx_th_row ltx_border_t" id="A1.T6.18.18.4">
<span class="ltx_inline-block ltx_align_top" id="A1.T6.18.18.4.1">
<span class="ltx_p" id="A1.T6.18.18.4.1.1"><span class="ltx_text ltx_font_bold" id="A1.T6.18.18.4.1.1.1">Pixtral-Large-Instruct-2411</span></span>
</span>
</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T6.18.18.5">124B</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A1.T6.16.16.1">0.753<sub class="ltx_sub" id="A1.T6.16.16.1.1"><span class="ltx_text ltx_font_italic" id="A1.T6.16.16.1.1.1">±0.022</span></sub>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A1.T6.17.17.2">0.361<sub class="ltx_sub" id="A1.T6.17.17.2.1"><span class="ltx_text ltx_font_italic" id="A1.T6.17.17.2.1.1">±0.022</span></sub>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T6.18.18.3">0.556<sub class="ltx_sub" id="A1.T6.18.18.3.1"><span class="ltx_text ltx_font_italic" id="A1.T6.18.18.3.1.1">±0.016</span></sub>
</td>
</tr>
<tr class="ltx_tr" id="A1.T6.21.21">
<th class="ltx_td ltx_align_justify ltx_th ltx_th_row" id="A1.T6.21.21.4">
<span class="ltx_inline-block ltx_align_top" id="A1.T6.21.21.4.1">
<span class="ltx_p" id="A1.T6.21.21.4.1.1"><span class="ltx_text ltx_font_bold" id="A1.T6.21.21.4.1.1.1">NVLM-D-72B</span></span>
</span>
</th>
<td class="ltx_td ltx_align_center" id="A1.T6.21.21.5">78.4B</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T6.19.19.1">0.429<sub class="ltx_sub" id="A1.T6.19.19.1.1"><span class="ltx_text ltx_font_italic" id="A1.T6.19.19.1.1.1">±0.024</span></sub>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T6.20.20.2">0.099<sub class="ltx_sub" id="A1.T6.20.20.2.1"><span class="ltx_text ltx_font_italic" id="A1.T6.20.20.2.1.1">±0.015</span></sub>
</td>
<td class="ltx_td ltx_align_center" id="A1.T6.21.21.3">0.261<sub class="ltx_sub" id="A1.T6.21.21.3.1"><span class="ltx_text ltx_font_italic" id="A1.T6.21.21.3.1.1">±0.013</span></sub>
</td>
</tr>
<tr class="ltx_tr" id="A1.T6.24.24">
<th class="ltx_td ltx_align_justify ltx_th ltx_th_row" id="A1.T6.24.24.4">
<span class="ltx_inline-block ltx_align_top" id="A1.T6.24.24.4.1">
<span class="ltx_p" id="A1.T6.24.24.4.1.1"><span class="ltx_text ltx_font_bold" id="A1.T6.24.24.4.1.1.1">InternVL2_5-78B-MPO</span></span>
</span>
</th>
<td class="ltx_td ltx_align_center" id="A1.T6.24.24.5">78.4B</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T6.22.22.1">0.744<sub class="ltx_sub" id="A1.T6.22.22.1.1"><span class="ltx_text ltx_font_italic" id="A1.T6.22.22.1.1.1">±0.019</span></sub>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T6.23.23.2">0.258<sub class="ltx_sub" id="A1.T6.23.23.2.1"><span class="ltx_text ltx_font_italic" id="A1.T6.23.23.2.1.1">±0.021</span></sub>
</td>
<td class="ltx_td ltx_align_center" id="A1.T6.24.24.3">0.501<sub class="ltx_sub" id="A1.T6.24.24.3.1"><span class="ltx_text ltx_font_italic" id="A1.T6.24.24.3.1.1">±0.014</span></sub>
</td>
</tr>
<tr class="ltx_tr" id="A1.T6.27.27">
<th class="ltx_td ltx_align_justify ltx_th ltx_th_row" id="A1.T6.27.27.4">
<span class="ltx_inline-block ltx_align_top" id="A1.T6.27.27.4.1">
<span class="ltx_p" id="A1.T6.27.27.4.1.1"><span class="ltx_text ltx_font_bold" id="A1.T6.27.27.4.1.1.1">Qwen2.5-VL-72B-Instruct</span></span>
</span>
</th>
<td class="ltx_td ltx_align_center" id="A1.T6.27.27.5">73.4B</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T6.25.25.1">0.730<sub class="ltx_sub" id="A1.T6.25.25.1.1"><span class="ltx_text ltx_font_italic" id="A1.T6.25.25.1.1.1">±0.017</span></sub>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T6.26.26.2">0.378<sub class="ltx_sub" id="A1.T6.26.26.2.1"><span class="ltx_text ltx_font_italic" id="A1.T6.26.26.2.1.1">±0.023</span></sub>
</td>
<td class="ltx_td ltx_align_center" id="A1.T6.27.27.3">0.554<sub class="ltx_sub" id="A1.T6.27.27.3.1"><span class="ltx_text ltx_font_italic" id="A1.T6.27.27.3.1.1">±0.015</span></sub>
</td>
</tr>
<tr class="ltx_tr" id="A1.T6.30.30">
<th class="ltx_td ltx_align_justify ltx_th ltx_th_row" id="A1.T6.30.30.4">
<span class="ltx_inline-block ltx_align_top" id="A1.T6.30.30.4.1">
<span class="ltx_p" id="A1.T6.30.30.4.1.1"><span class="ltx_text ltx_font_bold" id="A1.T6.30.30.4.1.1.1">QVQ-72B-Preview</span></span>
</span>
</th>
<td class="ltx_td ltx_align_center" id="A1.T6.30.30.5">73.4B</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T6.28.28.1">0.717<sub class="ltx_sub" id="A1.T6.28.28.1.1"><span class="ltx_text ltx_font_italic" id="A1.T6.28.28.1.1.1">±0.022</span></sub>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T6.29.29.2">0.139<sub class="ltx_sub" id="A1.T6.29.29.2.1"><span class="ltx_text ltx_font_italic" id="A1.T6.29.29.2.1.1">±0.019</span></sub>
</td>
<td class="ltx_td ltx_align_center" id="A1.T6.30.30.3">0.428<sub class="ltx_sub" id="A1.T6.30.30.3.1"><span class="ltx_text ltx_font_italic" id="A1.T6.30.30.3.1.1">±0.017</span></sub>
</td>
</tr>
<tr class="ltx_tr" id="A1.T6.33.33">
<th class="ltx_td ltx_align_justify ltx_th ltx_th_row" id="A1.T6.33.33.4">
<span class="ltx_inline-block ltx_align_top" id="A1.T6.33.33.4.1">
<span class="ltx_p" id="A1.T6.33.33.4.1.1"><span class="ltx_text ltx_font_bold" id="A1.T6.33.33.4.1.1.1">llava-onevision-qwen2-72b-ov-chat</span></span>
</span>
</th>
<td class="ltx_td ltx_align_center" id="A1.T6.33.33.5">73.2B</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T6.31.31.1">0.382<sub class="ltx_sub" id="A1.T6.31.31.1.1"><span class="ltx_text ltx_font_italic" id="A1.T6.31.31.1.1.1">±0.021</span></sub>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T6.32.32.2">0.185<sub class="ltx_sub" id="A1.T6.32.32.2.1"><span class="ltx_text ltx_font_italic" id="A1.T6.32.32.2.1.1">±0.020</span></sub>
</td>
<td class="ltx_td ltx_align_center" id="A1.T6.33.33.3">0.281<sub class="ltx_sub" id="A1.T6.33.33.3.1"><span class="ltx_text ltx_font_italic" id="A1.T6.33.33.3.1.1">±0.014</span></sub>
</td>
</tr>
<tr class="ltx_tr" id="A1.T6.36.36">
<th class="ltx_td ltx_align_justify ltx_th ltx_th_row" id="A1.T6.36.36.4">
<span class="ltx_inline-block ltx_align_top" id="A1.T6.36.36.4.1">
<span class="ltx_p" id="A1.T6.36.36.4.1.1"><span class="ltx_text ltx_font_bold" id="A1.T6.36.36.4.1.1.1">gemma-3-27b-it</span></span>
</span>
</th>
<td class="ltx_td ltx_align_center" id="A1.T6.36.36.5">27.4B</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T6.34.34.1">0.746<sub class="ltx_sub" id="A1.T6.34.34.1.1"><span class="ltx_text ltx_font_italic" id="A1.T6.34.34.1.1.1">±0.021</span></sub>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T6.35.35.2">0.250<sub class="ltx_sub" id="A1.T6.35.35.2.1"><span class="ltx_text ltx_font_italic" id="A1.T6.35.35.2.1.1">±0.021</span></sub>
</td>
<td class="ltx_td ltx_align_center" id="A1.T6.36.36.3">0.499<sub class="ltx_sub" id="A1.T6.36.36.3.1"><span class="ltx_text ltx_font_italic" id="A1.T6.36.36.3.1.1">±0.015</span></sub>
</td>
</tr>
<tr class="ltx_tr" id="A1.T6.39.39">
<th class="ltx_td ltx_align_justify ltx_th ltx_th_row" id="A1.T6.39.39.4">
<span class="ltx_inline-block ltx_align_top" id="A1.T6.39.39.4.1">
<span class="ltx_p" id="A1.T6.39.39.4.1.1"><span class="ltx_text ltx_font_bold" id="A1.T6.39.39.4.1.1.1">Aria</span></span>
</span>
</th>
<td class="ltx_td ltx_align_center" id="A1.T6.39.39.5">25.3B</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T6.37.37.1">0.258<sub class="ltx_sub" id="A1.T6.37.37.1.1"><span class="ltx_text ltx_font_italic" id="A1.T6.37.37.1.1.1">±0.022</span></sub>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T6.38.38.2">0.074<sub class="ltx_sub" id="A1.T6.38.38.2.1"><span class="ltx_text ltx_font_italic" id="A1.T6.38.38.2.1.1">±0.014</span></sub>
</td>
<td class="ltx_td ltx_align_center" id="A1.T6.39.39.3">0.165<sub class="ltx_sub" id="A1.T6.39.39.3.1"><span class="ltx_text ltx_font_italic" id="A1.T6.39.39.3.1.1">±0.013</span></sub>
</td>
</tr>
<tr class="ltx_tr" id="A1.T6.42.42">
<th class="ltx_td ltx_align_justify ltx_th ltx_th_row" id="A1.T6.42.42.4">
<span class="ltx_inline-block ltx_align_top" id="A1.T6.42.42.4.1">
<span class="ltx_p" id="A1.T6.42.42.4.1.1"><span class="ltx_text ltx_font_bold" id="A1.T6.42.42.4.1.1.1">MiniCPM-V-2_6</span></span>
</span>
</th>
<td class="ltx_td ltx_align_center" id="A1.T6.42.42.5">8.1B</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T6.40.40.1">0.091<sub class="ltx_sub" id="A1.T6.40.40.1.1"><span class="ltx_text ltx_font_italic" id="A1.T6.40.40.1.1.1">±0.015</span></sub>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T6.41.41.2">0.018<sub class="ltx_sub" id="A1.T6.41.41.2.1"><span class="ltx_text ltx_font_italic" id="A1.T6.41.41.2.1.1">±0.006</span></sub>
</td>
<td class="ltx_td ltx_align_center" id="A1.T6.42.42.3">0.054<sub class="ltx_sub" id="A1.T6.42.42.3.1"><span class="ltx_text ltx_font_italic" id="A1.T6.42.42.3.1.1">±0.009</span></sub>
</td>
</tr>
<tr class="ltx_tr" id="A1.T6.45.45">
<th class="ltx_td ltx_align_justify ltx_th ltx_th_row ltx_border_bb" id="A1.T6.45.45.4">
<span class="ltx_inline-block ltx_align_top" id="A1.T6.45.45.4.1">
<span class="ltx_p" id="A1.T6.45.45.4.1.1"><span class="ltx_text ltx_font_bold" id="A1.T6.45.45.4.1.1.1">Qwen2.5-VL-3B-Instruct</span></span>
</span>
</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T6.45.45.5">3.75B</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="A1.T6.43.43.1">0.023<sub class="ltx_sub" id="A1.T6.43.43.1.1"><span class="ltx_text ltx_font_italic" id="A1.T6.43.43.1.1.1">±0.007</span></sub>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="A1.T6.44.44.2">0.003<sub class="ltx_sub" id="A1.T6.44.44.2.1"><span class="ltx_text ltx_font_italic" id="A1.T6.44.44.2.1.1">±0.002</span></sub>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T6.45.45.3">0.013<sub class="ltx_sub" id="A1.T6.45.45.3.1"><span class="ltx_text ltx_font_italic" id="A1.T6.45.45.3.1.1">±0.004</span></sub>
</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the Word Coverage Rate (WCR) achieved by various Large Vision-Language Models (LVLMs) and Large Language Models (LLMs) on the grid parsing task within the CrossWordBench benchmark.  Grid parsing assesses the models' ability to accurately extract words from a crossword puzzle grid based on both visual and textual cues. Separate WCRs are provided for 'Across' words (horizontal), 'Down' words (vertical), and the overall WCR across both orientations. The results provide insights into how well different models can interpret the visual layout of the crossword grid and their accuracy in extracting words from the puzzle.
> <details>
> <summary>read the caption</summary>
> Table 6: WCR of Grid Parsing for all models.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="A1.T7.60.60">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A1.T7.60.60.61.1">
<td class="ltx_td ltx_align_justify ltx_border_tt" id="A1.T7.60.60.61.1.1" rowspan="2" style="padding:1.5pt 2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T7.60.60.61.1.1.1">
<span class="ltx_p" id="A1.T7.60.60.61.1.1.1.1"><span class="ltx_text ltx_font_bold" id="A1.T7.60.60.61.1.1.1.1.1">Models</span></span>
</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="A1.T7.60.60.61.1.2" style="padding:1.5pt 2.0pt;"><span class="ltx_text ltx_font_bold" id="A1.T7.60.60.61.1.2.1">Chinese</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="A1.T7.60.60.61.1.3" style="padding:1.5pt 2.0pt;"><span class="ltx_text ltx_font_bold" id="A1.T7.60.60.61.1.3.1">English Simple</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="A1.T7.60.60.61.1.4" style="padding:1.5pt 2.0pt;"><span class="ltx_text ltx_font_bold" id="A1.T7.60.60.61.1.4.1">CommonSenseQA</span></td>
</tr>
<tr class="ltx_tr" id="A1.T7.60.60.62.2">
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T7.60.60.62.2.1" style="padding:1.5pt 2.0pt;"><span class="ltx_text ltx_font_bold" id="A1.T7.60.60.62.2.1.1">WCR</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A1.T7.60.60.62.2.2" style="padding:1.5pt 2.0pt;"><span class="ltx_text ltx_font_bold" id="A1.T7.60.60.62.2.2.1">ICR</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T7.60.60.62.2.3" style="padding:1.5pt 2.0pt;"><span class="ltx_text ltx_font_bold" id="A1.T7.60.60.62.2.3.1">WCR</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A1.T7.60.60.62.2.4" style="padding:1.5pt 2.0pt;"><span class="ltx_text ltx_font_bold" id="A1.T7.60.60.62.2.4.1">ICR</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T7.60.60.62.2.5" style="padding:1.5pt 2.0pt;"><span class="ltx_text ltx_font_bold" id="A1.T7.60.60.62.2.5.1">WCR</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T7.60.60.62.2.6" style="padding:1.5pt 2.0pt;"><span class="ltx_text ltx_font_bold" id="A1.T7.60.60.62.2.6.1">ICR</span></td>
</tr>
<tr class="ltx_tr" id="A1.T7.60.60.63.3">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="7" id="A1.T7.60.60.63.3.1" style="background-color:#71B7ED;padding:1.5pt 2.0pt;"><span class="ltx_text ltx_font_bold ltx_font_italic" id="A1.T7.60.60.63.3.1.1" style="background-color:#71B7ED;">Proprietary LVLMs</span></td>
</tr>
<tr class="ltx_tr" id="A1.T7.6.6.6">
<td class="ltx_td ltx_align_justify ltx_border_t" id="A1.T7.6.6.6.7" style="padding:1.5pt 2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T7.6.6.6.7.1">
<span class="ltx_p" id="A1.T7.6.6.6.7.1.1"><span class="ltx_text ltx_font_bold" id="A1.T7.6.6.6.7.1.1.1">GPT-4o-2024-11-20</span></span>
</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T7.1.1.1.1" style="padding:1.5pt 2.0pt;">0.366<sub class="ltx_sub" id="A1.T7.1.1.1.1.1"><span class="ltx_text ltx_font_italic" id="A1.T7.1.1.1.1.1.1">±0.018</span></sub>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A1.T7.2.2.2.2" style="padding:1.5pt 2.0pt;">0.170<sub class="ltx_sub" id="A1.T7.2.2.2.2.1"><span class="ltx_text ltx_font_italic" id="A1.T7.2.2.2.2.1.1">±0.017</span></sub>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T7.3.3.3.3" style="padding:1.5pt 2.0pt;">0.335<sub class="ltx_sub" id="A1.T7.3.3.3.3.1"><span class="ltx_text ltx_font_italic" id="A1.T7.3.3.3.3.1.1">±0.015</span></sub>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A1.T7.4.4.4.4" style="padding:1.5pt 2.0pt;">0.227<sub class="ltx_sub" id="A1.T7.4.4.4.4.1"><span class="ltx_text ltx_font_italic" id="A1.T7.4.4.4.4.1.1">±0.017</span></sub>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T7.5.5.5.5" style="padding:1.5pt 2.0pt;">0.392<sub class="ltx_sub" id="A1.T7.5.5.5.5.1"><span class="ltx_text ltx_font_italic" id="A1.T7.5.5.5.5.1.1">±0.026</span></sub>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T7.6.6.6.6" style="padding:1.5pt 2.0pt;">0.247<sub class="ltx_sub" id="A1.T7.6.6.6.6.1"><span class="ltx_text ltx_font_italic" id="A1.T7.6.6.6.6.1.1">±0.026</span></sub>
</td>
</tr>
<tr class="ltx_tr" id="A1.T7.12.12.12">
<td class="ltx_td ltx_align_justify" id="A1.T7.12.12.12.7" style="padding:1.5pt 2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T7.12.12.12.7.1">
<span class="ltx_p" id="A1.T7.12.12.12.7.1.1"><span class="ltx_text ltx_font_bold" id="A1.T7.12.12.12.7.1.1.1">Claude-3-7-sonnet</span></span>
</span>
</td>
<td class="ltx_td ltx_align_center" id="A1.T7.7.7.7.1" style="padding:1.5pt 2.0pt;">0.339<sub class="ltx_sub" id="A1.T7.7.7.7.1.1"><span class="ltx_text ltx_font_italic" id="A1.T7.7.7.7.1.1.1">±0.023</span></sub>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T7.8.8.8.2" style="padding:1.5pt 2.0pt;">0.267<sub class="ltx_sub" id="A1.T7.8.8.8.2.1"><span class="ltx_text ltx_font_italic" id="A1.T7.8.8.8.2.1.1">±0.018</span></sub>
</td>
<td class="ltx_td ltx_align_center" id="A1.T7.9.9.9.3" style="padding:1.5pt 2.0pt;">0.408<sub class="ltx_sub" id="A1.T7.9.9.9.3.1"><span class="ltx_text ltx_font_italic" id="A1.T7.9.9.9.3.1.1">±0.018</span></sub>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T7.10.10.10.4" style="padding:1.5pt 2.0pt;">0.288<sub class="ltx_sub" id="A1.T7.10.10.10.4.1"><span class="ltx_text ltx_font_italic" id="A1.T7.10.10.10.4.1.1">±0.018</span></sub>
</td>
<td class="ltx_td ltx_align_center" id="A1.T7.11.11.11.5" style="padding:1.5pt 2.0pt;">0.540<sub class="ltx_sub" id="A1.T7.11.11.11.5.1"><span class="ltx_text ltx_font_italic" id="A1.T7.11.11.11.5.1.1">±0.022</span></sub>
</td>
<td class="ltx_td ltx_align_center" id="A1.T7.12.12.12.6" style="padding:1.5pt 2.0pt;">0.386<sub class="ltx_sub" id="A1.T7.12.12.12.6.1"><span class="ltx_text ltx_font_italic" id="A1.T7.12.12.12.6.1.1">±0.028</span></sub>
</td>
</tr>
<tr class="ltx_tr" id="A1.T7.18.18.18">
<td class="ltx_td ltx_align_justify" id="A1.T7.18.18.18.7" style="padding:1.5pt 2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T7.18.18.18.7.1">
<span class="ltx_p" id="A1.T7.18.18.18.7.1.1"><span class="ltx_text ltx_font_bold" id="A1.T7.18.18.18.7.1.1.1">Gemini 2.0 Flash</span></span>
</span>
</td>
<td class="ltx_td ltx_align_center" id="A1.T7.13.13.13.1" style="padding:1.5pt 2.0pt;">0.208<sub class="ltx_sub" id="A1.T7.13.13.13.1.1"><span class="ltx_text ltx_font_italic" id="A1.T7.13.13.13.1.1.1">±0.031</span></sub>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T7.14.14.14.2" style="padding:1.5pt 2.0pt;">0.233<sub class="ltx_sub" id="A1.T7.14.14.14.2.1"><span class="ltx_text ltx_font_italic" id="A1.T7.14.14.14.2.1.1">±0.018</span></sub>
</td>
<td class="ltx_td ltx_align_center" id="A1.T7.15.15.15.3" style="padding:1.5pt 2.0pt;">0.229<sub class="ltx_sub" id="A1.T7.15.15.15.3.1"><span class="ltx_text ltx_font_italic" id="A1.T7.15.15.15.3.1.1">±0.014</span></sub>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T7.16.16.16.4" style="padding:1.5pt 2.0pt;">0.216<sub class="ltx_sub" id="A1.T7.16.16.16.4.1"><span class="ltx_text ltx_font_italic" id="A1.T7.16.16.16.4.1.1">±0.013</span></sub>
</td>
<td class="ltx_td ltx_align_center" id="A1.T7.17.17.17.5" style="padding:1.5pt 2.0pt;">0.327<sub class="ltx_sub" id="A1.T7.17.17.17.5.1"><span class="ltx_text ltx_font_italic" id="A1.T7.17.17.17.5.1.1">±0.021</span></sub>
</td>
<td class="ltx_td ltx_align_center" id="A1.T7.18.18.18.6" style="padding:1.5pt 2.0pt;">0.216<sub class="ltx_sub" id="A1.T7.18.18.18.6.1"><span class="ltx_text ltx_font_italic" id="A1.T7.18.18.18.6.1.1">±0.018</span></sub>
</td>
</tr>
<tr class="ltx_tr" id="A1.T7.60.60.64.4">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="7" id="A1.T7.60.60.64.4.1" style="background-color:#71B7ED;padding:1.5pt 2.0pt;"><span class="ltx_text ltx_font_bold ltx_font_italic" id="A1.T7.60.60.64.4.1.1" style="background-color:#71B7ED;">Open-Weight LVLMs</span></td>
</tr>
<tr class="ltx_tr" id="A1.T7.24.24.24">
<td class="ltx_td ltx_align_justify ltx_border_t" id="A1.T7.24.24.24.7" style="padding:1.5pt 2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T7.24.24.24.7.1">
<span class="ltx_p" id="A1.T7.24.24.24.7.1.1"><span class="ltx_text ltx_font_bold" id="A1.T7.24.24.24.7.1.1.1">Pixtral-Large-Instruct-2411</span></span>
</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T7.19.19.19.1" style="padding:1.5pt 2.0pt;">0.252<sub class="ltx_sub" id="A1.T7.19.19.19.1.1"><span class="ltx_text ltx_font_italic" id="A1.T7.19.19.19.1.1.1">±0.015</span></sub>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A1.T7.20.20.20.2" style="padding:1.5pt 2.0pt;">0.101<sub class="ltx_sub" id="A1.T7.20.20.20.2.1"><span class="ltx_text ltx_font_italic" id="A1.T7.20.20.20.2.1.1">±0.011</span></sub>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T7.21.21.21.3" style="padding:1.5pt 2.0pt;">0.216<sub class="ltx_sub" id="A1.T7.21.21.21.3.1"><span class="ltx_text ltx_font_italic" id="A1.T7.21.21.21.3.1.1">±0.016</span></sub>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A1.T7.22.22.22.4" style="padding:1.5pt 2.0pt;">0.187<sub class="ltx_sub" id="A1.T7.22.22.22.4.1"><span class="ltx_text ltx_font_italic" id="A1.T7.22.22.22.4.1.1">±0.015</span></sub>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T7.23.23.23.5" style="padding:1.5pt 2.0pt;">0.439<sub class="ltx_sub" id="A1.T7.23.23.23.5.1"><span class="ltx_text ltx_font_italic" id="A1.T7.23.23.23.5.1.1">±0.023</span></sub>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T7.24.24.24.6" style="padding:1.5pt 2.0pt;">0.270<sub class="ltx_sub" id="A1.T7.24.24.24.6.1"><span class="ltx_text ltx_font_italic" id="A1.T7.24.24.24.6.1.1">±0.023</span></sub>
</td>
</tr>
<tr class="ltx_tr" id="A1.T7.30.30.30">
<td class="ltx_td ltx_align_justify" id="A1.T7.30.30.30.7" style="padding:1.5pt 2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T7.30.30.30.7.1">
<span class="ltx_p" id="A1.T7.30.30.30.7.1.1"><span class="ltx_text ltx_font_bold" id="A1.T7.30.30.30.7.1.1.1">Qwen2.5-VL-72B-Instruct</span></span>
</span>
</td>
<td class="ltx_td ltx_align_center" id="A1.T7.25.25.25.1" style="padding:1.5pt 2.0pt;">0.391<sub class="ltx_sub" id="A1.T7.25.25.25.1.1"><span class="ltx_text ltx_font_italic" id="A1.T7.25.25.25.1.1.1">±0.025</span></sub>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T7.26.26.26.2" style="padding:1.5pt 2.0pt;">0.282<sub class="ltx_sub" id="A1.T7.26.26.26.2.1"><span class="ltx_text ltx_font_italic" id="A1.T7.26.26.26.2.1.1">±0.018</span></sub>
</td>
<td class="ltx_td ltx_align_center" id="A1.T7.27.27.27.3" style="padding:1.5pt 2.0pt;">0.239<sub class="ltx_sub" id="A1.T7.27.27.27.3.1"><span class="ltx_text ltx_font_italic" id="A1.T7.27.27.27.3.1.1">±0.016</span></sub>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T7.28.28.28.4" style="padding:1.5pt 2.0pt;">0.183<sub class="ltx_sub" id="A1.T7.28.28.28.4.1"><span class="ltx_text ltx_font_italic" id="A1.T7.28.28.28.4.1.1">±0.015</span></sub>
</td>
<td class="ltx_td ltx_align_center" id="A1.T7.29.29.29.5" style="padding:1.5pt 2.0pt;">0.418<sub class="ltx_sub" id="A1.T7.29.29.29.5.1"><span class="ltx_text ltx_font_italic" id="A1.T7.29.29.29.5.1.1">±0.022</span></sub>
</td>
<td class="ltx_td ltx_align_center" id="A1.T7.30.30.30.6" style="padding:1.5pt 2.0pt;">0.252<sub class="ltx_sub" id="A1.T7.30.30.30.6.1"><span class="ltx_text ltx_font_italic" id="A1.T7.30.30.30.6.1.1">±0.023</span></sub>
</td>
</tr>
<tr class="ltx_tr" id="A1.T7.60.60.65.5">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="7" id="A1.T7.60.60.65.5.1" style="background-color:#71EDB7;padding:1.5pt 2.0pt;"><span class="ltx_text ltx_font_bold ltx_font_italic" id="A1.T7.60.60.65.5.1.1" style="background-color:#71EDB7;">Proprietary LLMs</span></td>
</tr>
<tr class="ltx_tr" id="A1.T7.36.36.36">
<td class="ltx_td ltx_align_justify ltx_border_t" id="A1.T7.36.36.36.7" style="padding:1.5pt 2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T7.36.36.36.7.1">
<span class="ltx_p" id="A1.T7.36.36.36.7.1.1"><span class="ltx_text ltx_font_bold" id="A1.T7.36.36.36.7.1.1.1">GPT-4o-2024-11-20</span></span>
</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T7.31.31.31.1" style="padding:1.5pt 2.0pt;">0.593<sub class="ltx_sub" id="A1.T7.31.31.31.1.1"><span class="ltx_text ltx_font_italic" id="A1.T7.31.31.31.1.1.1">±0.019</span></sub>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A1.T7.32.32.32.2" style="padding:1.5pt 2.0pt;">0.448<sub class="ltx_sub" id="A1.T7.32.32.32.2.1"><span class="ltx_text ltx_font_italic" id="A1.T7.32.32.32.2.1.1">±0.021</span></sub>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T7.33.33.33.3" style="padding:1.5pt 2.0pt;">0.438<sub class="ltx_sub" id="A1.T7.33.33.33.3.1"><span class="ltx_text ltx_font_italic" id="A1.T7.33.33.33.3.1.1">±0.020</span></sub>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A1.T7.34.34.34.4" style="padding:1.5pt 2.0pt;">0.306<sub class="ltx_sub" id="A1.T7.34.34.34.4.1"><span class="ltx_text ltx_font_italic" id="A1.T7.34.34.34.4.1.1">±0.022</span></sub>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T7.35.35.35.5" style="padding:1.5pt 2.0pt;">0.524<sub class="ltx_sub" id="A1.T7.35.35.35.5.1"><span class="ltx_text ltx_font_italic" id="A1.T7.35.35.35.5.1.1">±0.024</span></sub>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T7.36.36.36.6" style="padding:1.5pt 2.0pt;">0.326<sub class="ltx_sub" id="A1.T7.36.36.36.6.1"><span class="ltx_text ltx_font_italic" id="A1.T7.36.36.36.6.1.1">±0.029</span></sub>
</td>
</tr>
<tr class="ltx_tr" id="A1.T7.42.42.42">
<td class="ltx_td ltx_align_justify" id="A1.T7.42.42.42.7" style="padding:1.5pt 2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T7.42.42.42.7.1">
<span class="ltx_p" id="A1.T7.42.42.42.7.1.1"><span class="ltx_text ltx_font_bold" id="A1.T7.42.42.42.7.1.1.1">Claude-3-7-sonnet</span></span>
</span>
</td>
<td class="ltx_td ltx_align_center" id="A1.T7.37.37.37.1" style="padding:1.5pt 2.0pt;">0.478<sub class="ltx_sub" id="A1.T7.37.37.37.1.1"><span class="ltx_text ltx_font_italic" id="A1.T7.37.37.37.1.1.1">±0.019</span></sub>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T7.38.38.38.2" style="padding:1.5pt 2.0pt;">0.470<sub class="ltx_sub" id="A1.T7.38.38.38.2.1"><span class="ltx_text ltx_font_italic" id="A1.T7.38.38.38.2.1.1">±0.019</span></sub>
</td>
<td class="ltx_td ltx_align_center" id="A1.T7.39.39.39.3" style="padding:1.5pt 2.0pt;">0.539<sub class="ltx_sub" id="A1.T7.39.39.39.3.1"><span class="ltx_text ltx_font_italic" id="A1.T7.39.39.39.3.1.1">±0.021</span></sub>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T7.40.40.40.4" style="padding:1.5pt 2.0pt;">0.487<sub class="ltx_sub" id="A1.T7.40.40.40.4.1"><span class="ltx_text ltx_font_italic" id="A1.T7.40.40.40.4.1.1">±0.021</span></sub>
</td>
<td class="ltx_td ltx_align_center" id="A1.T7.41.41.41.5" style="padding:1.5pt 2.0pt;">0.583<sub class="ltx_sub" id="A1.T7.41.41.41.5.1"><span class="ltx_text ltx_font_italic" id="A1.T7.41.41.41.5.1.1">±0.024</span></sub>
</td>
<td class="ltx_td ltx_align_center" id="A1.T7.42.42.42.6" style="padding:1.5pt 2.0pt;">0.518<sub class="ltx_sub" id="A1.T7.42.42.42.6.1"><span class="ltx_text ltx_font_italic" id="A1.T7.42.42.42.6.1.1">±0.025</span></sub>
</td>
</tr>
<tr class="ltx_tr" id="A1.T7.48.48.48">
<td class="ltx_td ltx_align_justify" id="A1.T7.48.48.48.7" style="padding:1.5pt 2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T7.48.48.48.7.1">
<span class="ltx_p" id="A1.T7.48.48.48.7.1.1"><span class="ltx_text ltx_font_bold" id="A1.T7.48.48.48.7.1.1.1">o3-mini-high <span class="ltx_ERROR undefined" id="A1.T7.48.48.48.7.1.1.1.1">\faLightbulb</span>[regular]</span></span>
</span>
</td>
<td class="ltx_td ltx_align_center" id="A1.T7.43.43.43.1" style="padding:1.5pt 2.0pt;">0.774<sub class="ltx_sub" id="A1.T7.43.43.43.1.1"><span class="ltx_text ltx_font_italic" id="A1.T7.43.43.43.1.1.1">±0.016</span></sub>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T7.44.44.44.2" style="padding:1.5pt 2.0pt;">0.953<sub class="ltx_sub" id="A1.T7.44.44.44.2.1"><span class="ltx_text ltx_font_italic" id="A1.T7.44.44.44.2.1.1">±0.014</span></sub>
</td>
<td class="ltx_td ltx_align_center" id="A1.T7.45.45.45.3" style="padding:1.5pt 2.0pt;">0.782<sub class="ltx_sub" id="A1.T7.45.45.45.3.1"><span class="ltx_text ltx_font_italic" id="A1.T7.45.45.45.3.1.1">±0.021</span></sub>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T7.46.46.46.4" style="padding:1.5pt 2.0pt;">0.946<sub class="ltx_sub" id="A1.T7.46.46.46.4.1"><span class="ltx_text ltx_font_italic" id="A1.T7.46.46.46.4.1.1">±0.012</span></sub>
</td>
<td class="ltx_td ltx_align_center" id="A1.T7.47.47.47.5" style="padding:1.5pt 2.0pt;">0.812<sub class="ltx_sub" id="A1.T7.47.47.47.5.1"><span class="ltx_text ltx_font_italic" id="A1.T7.47.47.47.5.1.1">±0.027</span></sub>
</td>
<td class="ltx_td ltx_align_center" id="A1.T7.48.48.48.6" style="padding:1.5pt 2.0pt;">0.971<sub class="ltx_sub" id="A1.T7.48.48.48.6.1"><span class="ltx_text ltx_font_italic" id="A1.T7.48.48.48.6.1.1">±0.011</span></sub>
</td>
</tr>
<tr class="ltx_tr" id="A1.T7.60.60.66.6">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="7" id="A1.T7.60.60.66.6.1" style="background-color:#71EDB7;padding:1.5pt 2.0pt;"><span class="ltx_text ltx_font_bold ltx_font_italic" id="A1.T7.60.60.66.6.1.1" style="background-color:#71EDB7;">Open-Weight LLMs</span></td>
</tr>
<tr class="ltx_tr" id="A1.T7.54.54.54">
<td class="ltx_td ltx_align_justify ltx_border_t" id="A1.T7.54.54.54.7" style="padding:1.5pt 2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T7.54.54.54.7.1">
<span class="ltx_p" id="A1.T7.54.54.54.7.1.1"><span class="ltx_text ltx_font_bold" id="A1.T7.54.54.54.7.1.1.1">DeepSeek-R1 <span class="ltx_ERROR undefined" id="A1.T7.54.54.54.7.1.1.1.1">\faLightbulb</span>[regular]</span></span>
</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T7.49.49.49.1" style="padding:1.5pt 2.0pt;">0.907<sub class="ltx_sub" id="A1.T7.49.49.49.1.1"><span class="ltx_text ltx_font_italic" id="A1.T7.49.49.49.1.1.1">±0.016</span></sub>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A1.T7.50.50.50.2" style="padding:1.5pt 2.0pt;">0.898<sub class="ltx_sub" id="A1.T7.50.50.50.2.1"><span class="ltx_text ltx_font_italic" id="A1.T7.50.50.50.2.1.1">±0.018</span></sub>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T7.51.51.51.3" style="padding:1.5pt 2.0pt;">0.759<sub class="ltx_sub" id="A1.T7.51.51.51.3.1"><span class="ltx_text ltx_font_italic" id="A1.T7.51.51.51.3.1.1">±0.017</span></sub>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A1.T7.52.52.52.4" style="padding:1.5pt 2.0pt;">0.787<sub class="ltx_sub" id="A1.T7.52.52.52.4.1"><span class="ltx_text ltx_font_italic" id="A1.T7.52.52.52.4.1.1">±0.020</span></sub>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T7.53.53.53.5" style="padding:1.5pt 2.0pt;">0.752<sub class="ltx_sub" id="A1.T7.53.53.53.5.1"><span class="ltx_text ltx_font_italic" id="A1.T7.53.53.53.5.1.1">±0.031</span></sub>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T7.54.54.54.6" style="padding:1.5pt 2.0pt;">0.829<sub class="ltx_sub" id="A1.T7.54.54.54.6.1"><span class="ltx_text ltx_font_italic" id="A1.T7.54.54.54.6.1.1">±0.026</span></sub>
</td>
</tr>
<tr class="ltx_tr" id="A1.T7.60.60.60">
<td class="ltx_td ltx_align_justify ltx_border_bb" id="A1.T7.60.60.60.7" style="padding:1.5pt 2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T7.60.60.60.7.1">
<span class="ltx_p" id="A1.T7.60.60.60.7.1.1"><span class="ltx_text ltx_font_bold" id="A1.T7.60.60.60.7.1.1.1">QwQ-32B <span class="ltx_ERROR undefined" id="A1.T7.60.60.60.7.1.1.1.1">\faLightbulb</span>[regular]</span></span>
</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T7.55.55.55.1" style="padding:1.5pt 2.0pt;">0.701<sub class="ltx_sub" id="A1.T7.55.55.55.1.1"><span class="ltx_text ltx_font_italic" id="A1.T7.55.55.55.1.1.1">±0.020</span></sub>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="A1.T7.56.56.56.2" style="padding:1.5pt 2.0pt;">0.654<sub class="ltx_sub" id="A1.T7.56.56.56.2.1"><span class="ltx_text ltx_font_italic" id="A1.T7.56.56.56.2.1.1">±0.022</span></sub>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T7.57.57.57.3" style="padding:1.5pt 2.0pt;">0.647<sub class="ltx_sub" id="A1.T7.57.57.57.3.1"><span class="ltx_text ltx_font_italic" id="A1.T7.57.57.57.3.1.1">±0.021</span></sub>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="A1.T7.58.58.58.4" style="padding:1.5pt 2.0pt;">0.734<sub class="ltx_sub" id="A1.T7.58.58.58.4.1"><span class="ltx_text ltx_font_italic" id="A1.T7.58.58.58.4.1.1">±0.020</span></sub>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T7.59.59.59.5" style="padding:1.5pt 2.0pt;">0.699<sub class="ltx_sub" id="A1.T7.59.59.59.5.1"><span class="ltx_text ltx_font_italic" id="A1.T7.59.59.59.5.1.1">±0.026</span></sub>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T7.60.60.60.6" style="padding:1.5pt 2.0pt;">0.766<sub class="ltx_sub" id="A1.T7.60.60.60.6.1"><span class="ltx_text ltx_font_italic" id="A1.T7.60.60.60.6.1.1">±0.027</span></sub>
</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the Word Coverage Rate (WCR) and Intersection Consistency Rate (ICR) for three different crossword puzzle datasets: Chinese, English Simple, and CommonSenseQA.  The WCR measures the accuracy of the model's word-level predictions, while ICR evaluates how well the model adheres to the grid constraints by accurately predicting intersecting letters. The table allows for a comparison of model performance across different datasets and linguistic structures. Note that the English Simple and CommonSenseQA puzzles differ in their origin and characteristics: the former comes from dictionaries, while the latter is adapted from a question-answering benchmark.
> <details>
> <summary>read the caption</summary>
> Table 7: WCR and ICR for Chinese, English Simple, and CommonSenseQA puzzle sets.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="A1.T8.9">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A1.T8.9.10.1">
<th class="ltx_td ltx_align_justify ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="A1.T8.9.10.1.1">
<span class="ltx_inline-block ltx_align_top" id="A1.T8.9.10.1.1.1">
<span class="ltx_p" id="A1.T8.9.10.1.1.1.1"><span class="ltx_text ltx_font_bold" id="A1.T8.9.10.1.1.1.1.1">Reasoning Effort</span></span>
</span>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="A1.T8.9.10.1.2"><span class="ltx_text ltx_font_bold" id="A1.T8.9.10.1.2.1">WCR</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="A1.T8.9.10.1.3"><span class="ltx_text ltx_font_bold" id="A1.T8.9.10.1.3.1">LCR</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="A1.T8.9.10.1.4"><span class="ltx_text ltx_font_bold" id="A1.T8.9.10.1.4.1">ICR</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A1.T8.9.10.1.5"><span class="ltx_text ltx_font_bold" id="A1.T8.9.10.1.5.1">Avg. Tokens</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A1.T8.3.3">
<th class="ltx_td ltx_align_justify ltx_th ltx_th_row ltx_border_t" id="A1.T8.3.3.4">
<span class="ltx_inline-block ltx_align_top" id="A1.T8.3.3.4.1">
<span class="ltx_p" id="A1.T8.3.3.4.1.1"><span class="ltx_text ltx_font_bold" id="A1.T8.3.3.4.1.1.1">High</span></span>
</span>
</th>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A1.T8.1.1.1">0.587<sub class="ltx_sub" id="A1.T8.1.1.1.1"><span class="ltx_text ltx_font_italic" id="A1.T8.1.1.1.1.1">±0.023</span></sub>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A1.T8.2.2.2">0.684<sub class="ltx_sub" id="A1.T8.2.2.2.1"><span class="ltx_text ltx_font_italic" id="A1.T8.2.2.2.1.1">±0.021</span></sub>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A1.T8.3.3.3">0.891<sub class="ltx_sub" id="A1.T8.3.3.3.1"><span class="ltx_text ltx_font_italic" id="A1.T8.3.3.3.1.1">±0.018</span></sub>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T8.3.3.5">49865</td>
</tr>
<tr class="ltx_tr" id="A1.T8.6.6">
<th class="ltx_td ltx_align_justify ltx_th ltx_th_row" id="A1.T8.6.6.4">
<span class="ltx_inline-block ltx_align_top" id="A1.T8.6.6.4.1">
<span class="ltx_p" id="A1.T8.6.6.4.1.1"><span class="ltx_text ltx_font_bold" id="A1.T8.6.6.4.1.1.1">Medium</span></span>
</span>
</th>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T8.4.4.1">0.534<sub class="ltx_sub" id="A1.T8.4.4.1.1"><span class="ltx_text ltx_font_italic" id="A1.T8.4.4.1.1.1">±0.022</span></sub>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T8.5.5.2">0.634<sub class="ltx_sub" id="A1.T8.5.5.2.1"><span class="ltx_text ltx_font_italic" id="A1.T8.5.5.2.1.1">±0.022</span></sub>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T8.6.6.3">0.777<sub class="ltx_sub" id="A1.T8.6.6.3.1"><span class="ltx_text ltx_font_italic" id="A1.T8.6.6.3.1.1">±0.025</span></sub>
</td>
<td class="ltx_td ltx_align_center" id="A1.T8.6.6.5">23723</td>
</tr>
<tr class="ltx_tr" id="A1.T8.9.9">
<th class="ltx_td ltx_align_justify ltx_th ltx_th_row ltx_border_bb" id="A1.T8.9.9.4">
<span class="ltx_inline-block ltx_align_top" id="A1.T8.9.9.4.1">
<span class="ltx_p" id="A1.T8.9.9.4.1.1"><span class="ltx_text ltx_font_bold" id="A1.T8.9.9.4.1.1.1">Low</span></span>
</span>
</th>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="A1.T8.7.7.1">0.295<sub class="ltx_sub" id="A1.T8.7.7.1.1"><span class="ltx_text ltx_font_italic" id="A1.T8.7.7.1.1.1">±0.018</span></sub>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="A1.T8.8.8.2">0.392<sub class="ltx_sub" id="A1.T8.8.8.2.1"><span class="ltx_text ltx_font_italic" id="A1.T8.8.8.2.1.1">±0.019</span></sub>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="A1.T8.9.9.3">0.363<sub class="ltx_sub" id="A1.T8.9.9.3.1"><span class="ltx_text ltx_font_italic" id="A1.T8.9.9.3.1.1">±0.026</span></sub>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T8.9.9.5">4770</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the performance of the o3-mini model on 7x7 English crossword puzzles under three different reasoning effort levels: low, medium, and high.  Each effort level corresponds to a different number of reasoning tokens used during inference, showing the impact of increased computational resources on solving accuracy. The metrics reported include Word Coverage Rate (WCR), Letter Coverage Rate (LCR), Intersection Consistency Rate (ICR), and the average number of tokens used for each effort level.
> <details>
> <summary>read the caption</summary>
> Table 8: o3-mini performance on 7x7 English puzzles across three distinct reasoning efforts.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="A2.T9.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A2.T9.1.1.1">
<th class="ltx_td ltx_align_justify ltx_th ltx_th_column ltx_border_tt" id="A2.T9.1.1.1.1" style="padding:1pt 2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T9.1.1.1.1.1">
<span class="ltx_p" id="A2.T9.1.1.1.1.1.1"><span class="ltx_text ltx_font_bold" id="A2.T9.1.1.1.1.1.1.1">Model Name</span></span>
</span>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A2.T9.1.1.1.2" style="padding:1pt 2.0pt;"><span class="ltx_text ltx_font_bold" id="A2.T9.1.1.1.2.1">Max Tokens (7×7)</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A2.T9.1.1.1.3" style="padding:1pt 2.0pt;"><span class="ltx_text ltx_font_bold" id="A2.T9.1.1.1.3.1">Max Tokens (14×14)</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A2.T9.1.1.1.4" style="padding:1pt 2.0pt;"><span class="ltx_text ltx_font_bold" id="A2.T9.1.1.1.4.1">Temperature</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A2.T9.1.2.1">
<td class="ltx_td ltx_align_justify ltx_border_t" id="A2.T9.1.2.1.1" style="padding:1pt 2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T9.1.2.1.1.1">
<span class="ltx_p" id="A2.T9.1.2.1.1.1.1">Claude-3-7-Sonnet <cite class="ltx_cite ltx_citemacro_citep">(Anthropic, <a class="ltx_ref" href="https://arxiv.org/html/2504.00043v1#bib.bib4" title="">2024</a>)</cite></span>
</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T9.1.2.1.2" style="padding:1pt 2.0pt;">8192</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T9.1.2.1.3" style="padding:1pt 2.0pt;">8192</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T9.1.2.1.4" style="padding:1pt 2.0pt;">0.0</td>
</tr>
<tr class="ltx_tr" id="A2.T9.1.3.2">
<td class="ltx_td ltx_align_justify" id="A2.T9.1.3.2.1" style="padding:1pt 2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T9.1.3.2.1.1">
<span class="ltx_p" id="A2.T9.1.3.2.1.1.1">Claude-3-7-Sonnet (Thinking) <cite class="ltx_cite ltx_citemacro_citep">(Anthropic, <a class="ltx_ref" href="https://arxiv.org/html/2504.00043v1#bib.bib4" title="">2024</a>)</cite></span>
</span>
</td>
<td class="ltx_td ltx_align_center" id="A2.T9.1.3.2.2" style="padding:1pt 2.0pt;">64000</td>
<td class="ltx_td ltx_align_center" id="A2.T9.1.3.2.3" style="padding:1pt 2.0pt;">64000</td>
<td class="ltx_td ltx_align_center" id="A2.T9.1.3.2.4" style="padding:1pt 2.0pt;">1.0</td>
</tr>
<tr class="ltx_tr" id="A2.T9.1.4.3">
<td class="ltx_td ltx_align_justify" id="A2.T9.1.4.3.1" style="padding:1pt 2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T9.1.4.3.1.1">
<span class="ltx_p" id="A2.T9.1.4.3.1.1.1">GPT-4o-2024-11-20 <cite class="ltx_cite ltx_citemacro_citep">(Hurst et al., <a class="ltx_ref" href="https://arxiv.org/html/2504.00043v1#bib.bib24" title="">2024</a>)</cite></span>
</span>
</td>
<td class="ltx_td ltx_align_center" id="A2.T9.1.4.3.2" style="padding:1pt 2.0pt;">16384</td>
<td class="ltx_td ltx_align_center" id="A2.T9.1.4.3.3" style="padding:1pt 2.0pt;">16384</td>
<td class="ltx_td ltx_align_center" id="A2.T9.1.4.3.4" style="padding:1pt 2.0pt;">0.0</td>
</tr>
<tr class="ltx_tr" id="A2.T9.1.5.4">
<td class="ltx_td ltx_align_justify" id="A2.T9.1.5.4.1" style="padding:1pt 2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T9.1.5.4.1.1">
<span class="ltx_p" id="A2.T9.1.5.4.1.1.1">Gemini 2.0 Pro Exp <cite class="ltx_cite ltx_citemacro_citep">(DeepMind, <a class="ltx_ref" href="https://arxiv.org/html/2504.00043v1#bib.bib13" title="">2024</a>)</cite></span>
</span>
</td>
<td class="ltx_td ltx_align_center" id="A2.T9.1.5.4.2" style="padding:1pt 2.0pt;">20480</td>
<td class="ltx_td ltx_align_center" id="A2.T9.1.5.4.3" style="padding:1pt 2.0pt;">20480</td>
<td class="ltx_td ltx_align_center" id="A2.T9.1.5.4.4" style="padding:1pt 2.0pt;">0.0</td>
</tr>
<tr class="ltx_tr" id="A2.T9.1.6.5">
<td class="ltx_td ltx_align_justify" id="A2.T9.1.6.5.1" style="padding:1pt 2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T9.1.6.5.1.1">
<span class="ltx_p" id="A2.T9.1.6.5.1.1.1">Gemini 2.0 Flash <cite class="ltx_cite ltx_citemacro_citep">(DeepMind, <a class="ltx_ref" href="https://arxiv.org/html/2504.00043v1#bib.bib13" title="">2024</a>)</cite></span>
</span>
</td>
<td class="ltx_td ltx_align_center" id="A2.T9.1.6.5.2" style="padding:1pt 2.0pt;">20480</td>
<td class="ltx_td ltx_align_center" id="A2.T9.1.6.5.3" style="padding:1pt 2.0pt;">20480</td>
<td class="ltx_td ltx_align_center" id="A2.T9.1.6.5.4" style="padding:1pt 2.0pt;">0.0</td>
</tr>
<tr class="ltx_tr" id="A2.T9.1.7.6">
<td class="ltx_td ltx_align_justify" id="A2.T9.1.7.6.1" style="padding:1pt 2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T9.1.7.6.1.1">
<span class="ltx_p" id="A2.T9.1.7.6.1.1.1">o3-mini-high <cite class="ltx_cite ltx_citemacro_citep">(OpenAI, <a class="ltx_ref" href="https://arxiv.org/html/2504.00043v1#bib.bib36" title="">2025</a>)</cite></span>
</span>
</td>
<td class="ltx_td ltx_align_center" id="A2.T9.1.7.6.2" style="padding:1pt 2.0pt;">100000</td>
<td class="ltx_td ltx_align_center" id="A2.T9.1.7.6.3" style="padding:1pt 2.0pt;">100000</td>
<td class="ltx_td ltx_align_center" id="A2.T9.1.7.6.4" style="padding:1pt 2.0pt;">0.6</td>
</tr>
<tr class="ltx_tr" id="A2.T9.1.8.7">
<td class="ltx_td ltx_align_justify" id="A2.T9.1.8.7.1" style="padding:1pt 2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T9.1.8.7.1.1">
<span class="ltx_p" id="A2.T9.1.8.7.1.1.1">Pixtral-Large-Instruct-2411 <cite class="ltx_cite ltx_citemacro_citep">(Agrawal et al., <a class="ltx_ref" href="https://arxiv.org/html/2504.00043v1#bib.bib2" title="">2024</a>)</cite></span>
</span>
</td>
<td class="ltx_td ltx_align_center" id="A2.T9.1.8.7.2" style="padding:1pt 2.0pt;">20480</td>
<td class="ltx_td ltx_align_center" id="A2.T9.1.8.7.3" style="padding:1pt 2.0pt;">20480</td>
<td class="ltx_td ltx_align_center" id="A2.T9.1.8.7.4" style="padding:1pt 2.0pt;">0.0</td>
</tr>
<tr class="ltx_tr" id="A2.T9.1.9.8">
<td class="ltx_td ltx_align_justify" id="A2.T9.1.9.8.1" style="padding:1pt 2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T9.1.9.8.1.1">
<span class="ltx_p" id="A2.T9.1.9.8.1.1.1">NVLM-D-72B <cite class="ltx_cite ltx_citemacro_citep">(Dai et al., <a class="ltx_ref" href="https://arxiv.org/html/2504.00043v1#bib.bib12" title="">2024</a>)</cite></span>
</span>
</td>
<td class="ltx_td ltx_align_center" id="A2.T9.1.9.8.2" style="padding:1pt 2.0pt;">20480</td>
<td class="ltx_td ltx_align_center" id="A2.T9.1.9.8.3" style="padding:1pt 2.0pt;">20480</td>
<td class="ltx_td ltx_align_center" id="A2.T9.1.9.8.4" style="padding:1pt 2.0pt;">0.0</td>
</tr>
<tr class="ltx_tr" id="A2.T9.1.10.9">
<td class="ltx_td ltx_align_justify" id="A2.T9.1.10.9.1" style="padding:1pt 2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T9.1.10.9.1.1">
<span class="ltx_p" id="A2.T9.1.10.9.1.1.1">InternVL2 5-78B-MPO <cite class="ltx_cite ltx_citemacro_citep">(Chen et al., <a class="ltx_ref" href="https://arxiv.org/html/2504.00043v1#bib.bib10" title="">2024</a>)</cite></span>
</span>
</td>
<td class="ltx_td ltx_align_center" id="A2.T9.1.10.9.2" style="padding:1pt 2.0pt;">20480</td>
<td class="ltx_td ltx_align_center" id="A2.T9.1.10.9.3" style="padding:1pt 2.0pt;">20480</td>
<td class="ltx_td ltx_align_center" id="A2.T9.1.10.9.4" style="padding:1pt 2.0pt;">0.0</td>
</tr>
<tr class="ltx_tr" id="A2.T9.1.11.10">
<td class="ltx_td ltx_align_justify" id="A2.T9.1.11.10.1" style="padding:1pt 2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T9.1.11.10.1.1">
<span class="ltx_p" id="A2.T9.1.11.10.1.1.1">Qwen2.5-VL-72B-Instruct <cite class="ltx_cite ltx_citemacro_citep">(Bai et al., <a class="ltx_ref" href="https://arxiv.org/html/2504.00043v1#bib.bib6" title="">2025</a>)</cite></span>
</span>
</td>
<td class="ltx_td ltx_align_center" id="A2.T9.1.11.10.2" style="padding:1pt 2.0pt;">20480</td>
<td class="ltx_td ltx_align_center" id="A2.T9.1.11.10.3" style="padding:1pt 2.0pt;">20480</td>
<td class="ltx_td ltx_align_center" id="A2.T9.1.11.10.4" style="padding:1pt 2.0pt;">0.0</td>
</tr>
<tr class="ltx_tr" id="A2.T9.1.12.11">
<td class="ltx_td ltx_align_justify" id="A2.T9.1.12.11.1" style="padding:1pt 2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T9.1.12.11.1.1">
<span class="ltx_p" id="A2.T9.1.12.11.1.1.1">QVQ-72B-Preview <cite class="ltx_cite ltx_citemacro_citep">(Team, <a class="ltx_ref" href="https://arxiv.org/html/2504.00043v1#bib.bib44" title="">2024</a>)</cite></span>
</span>
</td>
<td class="ltx_td ltx_align_center" id="A2.T9.1.12.11.2" style="padding:1pt 2.0pt;">100000</td>
<td class="ltx_td ltx_align_center" id="A2.T9.1.12.11.3" style="padding:1pt 2.0pt;">100000</td>
<td class="ltx_td ltx_align_center" id="A2.T9.1.12.11.4" style="padding:1pt 2.0pt;">0.0</td>
</tr>
<tr class="ltx_tr" id="A2.T9.1.13.12">
<td class="ltx_td ltx_align_justify" id="A2.T9.1.13.12.1" style="padding:1pt 2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T9.1.13.12.1.1">
<span class="ltx_p" id="A2.T9.1.13.12.1.1.1">llava-onevision-72b-ov-chat <cite class="ltx_cite ltx_citemacro_citep">(Li et al., <a class="ltx_ref" href="https://arxiv.org/html/2504.00043v1#bib.bib28" title="">2024a</a>)</cite></span>
</span>
</td>
<td class="ltx_td ltx_align_center" id="A2.T9.1.13.12.2" style="padding:1pt 2.0pt;">20480</td>
<td class="ltx_td ltx_align_center" id="A2.T9.1.13.12.3" style="padding:1pt 2.0pt;">20480</td>
<td class="ltx_td ltx_align_center" id="A2.T9.1.13.12.4" style="padding:1pt 2.0pt;">0.0</td>
</tr>
<tr class="ltx_tr" id="A2.T9.1.14.13">
<td class="ltx_td ltx_align_justify" id="A2.T9.1.14.13.1" style="padding:1pt 2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T9.1.14.13.1.1">
<span class="ltx_p" id="A2.T9.1.14.13.1.1.1">gemma-3-27b-it <cite class="ltx_cite ltx_citemacro_citep">(Team et al., <a class="ltx_ref" href="https://arxiv.org/html/2504.00043v1#bib.bib43" title="">2025</a>)</cite></span>
</span>
</td>
<td class="ltx_td ltx_align_center" id="A2.T9.1.14.13.2" style="padding:1pt 2.0pt;">8192</td>
<td class="ltx_td ltx_align_center" id="A2.T9.1.14.13.3" style="padding:1pt 2.0pt;">8192</td>
<td class="ltx_td ltx_align_center" id="A2.T9.1.14.13.4" style="padding:1pt 2.0pt;">0.0</td>
</tr>
<tr class="ltx_tr" id="A2.T9.1.15.14">
<td class="ltx_td ltx_align_justify" id="A2.T9.1.15.14.1" style="padding:1pt 2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T9.1.15.14.1.1">
<span class="ltx_p" id="A2.T9.1.15.14.1.1.1">Aria <cite class="ltx_cite ltx_citemacro_citep">(Li et al., <a class="ltx_ref" href="https://arxiv.org/html/2504.00043v1#bib.bib30" title="">2024b</a>)</cite></span>
</span>
</td>
<td class="ltx_td ltx_align_center" id="A2.T9.1.15.14.2" style="padding:1pt 2.0pt;">20480</td>
<td class="ltx_td ltx_align_center" id="A2.T9.1.15.14.3" style="padding:1pt 2.0pt;">20480</td>
<td class="ltx_td ltx_align_center" id="A2.T9.1.15.14.4" style="padding:1pt 2.0pt;">0.0</td>
</tr>
<tr class="ltx_tr" id="A2.T9.1.16.15">
<td class="ltx_td ltx_align_justify" id="A2.T9.1.16.15.1" style="padding:1pt 2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T9.1.16.15.1.1">
<span class="ltx_p" id="A2.T9.1.16.15.1.1.1">MiniCPM-V-2_6 <cite class="ltx_cite ltx_citemacro_citep">(Yao et al., <a class="ltx_ref" href="https://arxiv.org/html/2504.00043v1#bib.bib56" title="">2024</a>)</cite></span>
</span>
</td>
<td class="ltx_td ltx_align_center" id="A2.T9.1.16.15.2" style="padding:1pt 2.0pt;">20480</td>
<td class="ltx_td ltx_align_center" id="A2.T9.1.16.15.3" style="padding:1pt 2.0pt;">20480</td>
<td class="ltx_td ltx_align_center" id="A2.T9.1.16.15.4" style="padding:1pt 2.0pt;">0.0</td>
</tr>
<tr class="ltx_tr" id="A2.T9.1.17.16">
<td class="ltx_td ltx_align_justify" id="A2.T9.1.17.16.1" style="padding:1pt 2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T9.1.17.16.1.1">
<span class="ltx_p" id="A2.T9.1.17.16.1.1.1">Qwen2.5-VL-3B-Instruct <cite class="ltx_cite ltx_citemacro_citep">(Bai et al., <a class="ltx_ref" href="https://arxiv.org/html/2504.00043v1#bib.bib6" title="">2025</a>)</cite></span>
</span>
</td>
<td class="ltx_td ltx_align_center" id="A2.T9.1.17.16.2" style="padding:1pt 2.0pt;">20480</td>
<td class="ltx_td ltx_align_center" id="A2.T9.1.17.16.3" style="padding:1pt 2.0pt;">20480</td>
<td class="ltx_td ltx_align_center" id="A2.T9.1.17.16.4" style="padding:1pt 2.0pt;">0.0</td>
</tr>
<tr class="ltx_tr" id="A2.T9.1.18.17">
<td class="ltx_td ltx_align_justify" id="A2.T9.1.18.17.1" style="padding:1pt 2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T9.1.18.17.1.1">
<span class="ltx_p" id="A2.T9.1.18.17.1.1.1">Llama-3.1-405B-Instruct <cite class="ltx_cite ltx_citemacro_citep">(Dubey et al., <a class="ltx_ref" href="https://arxiv.org/html/2504.00043v1#bib.bib15" title="">2024</a>)</cite></span>
</span>
</td>
<td class="ltx_td ltx_align_center" id="A2.T9.1.18.17.2" style="padding:1pt 2.0pt;">100000</td>
<td class="ltx_td ltx_align_center" id="A2.T9.1.18.17.3" style="padding:1pt 2.0pt;">100000</td>
<td class="ltx_td ltx_align_center" id="A2.T9.1.18.17.4" style="padding:1pt 2.0pt;">0.0</td>
</tr>
<tr class="ltx_tr" id="A2.T9.1.19.18">
<td class="ltx_td ltx_align_justify" id="A2.T9.1.19.18.1" style="padding:1pt 2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T9.1.19.18.1.1">
<span class="ltx_p" id="A2.T9.1.19.18.1.1.1">DeepSeek-R1 <cite class="ltx_cite ltx_citemacro_citep">(Guo et al., <a class="ltx_ref" href="https://arxiv.org/html/2504.00043v1#bib.bib19" title="">2025</a>)</cite></span>
</span>
</td>
<td class="ltx_td ltx_align_center" id="A2.T9.1.19.18.2" style="padding:1pt 2.0pt;">100000</td>
<td class="ltx_td ltx_align_center" id="A2.T9.1.19.18.3" style="padding:1pt 2.0pt;">100000</td>
<td class="ltx_td ltx_align_center" id="A2.T9.1.19.18.4" style="padding:1pt 2.0pt;">0.6</td>
</tr>
<tr class="ltx_tr" id="A2.T9.1.20.19">
<td class="ltx_td ltx_align_justify" id="A2.T9.1.20.19.1" style="padding:1pt 2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T9.1.20.19.1.1">
<span class="ltx_p" id="A2.T9.1.20.19.1.1.1">DeepSeek-V3 <cite class="ltx_cite ltx_citemacro_citep">(Liu et al., <a class="ltx_ref" href="https://arxiv.org/html/2504.00043v1#bib.bib32" title="">2024</a>)</cite></span>
</span>
</td>
<td class="ltx_td ltx_align_center" id="A2.T9.1.20.19.2" style="padding:1pt 2.0pt;">100000</td>
<td class="ltx_td ltx_align_center" id="A2.T9.1.20.19.3" style="padding:1pt 2.0pt;">100000</td>
<td class="ltx_td ltx_align_center" id="A2.T9.1.20.19.4" style="padding:1pt 2.0pt;">0.0</td>
</tr>
<tr class="ltx_tr" id="A2.T9.1.21.20">
<td class="ltx_td ltx_align_justify" id="A2.T9.1.21.20.1" style="padding:1pt 2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T9.1.21.20.1.1">
<span class="ltx_p" id="A2.T9.1.21.20.1.1.1">R1-Distill-Llama-70B <cite class="ltx_cite ltx_citemacro_citep">(Guo et al., <a class="ltx_ref" href="https://arxiv.org/html/2504.00043v1#bib.bib19" title="">2025</a>)</cite></span>
</span>
</td>
<td class="ltx_td ltx_align_center" id="A2.T9.1.21.20.2" style="padding:1pt 2.0pt;">100000</td>
<td class="ltx_td ltx_align_center" id="A2.T9.1.21.20.3" style="padding:1pt 2.0pt;">100000</td>
<td class="ltx_td ltx_align_center" id="A2.T9.1.21.20.4" style="padding:1pt 2.0pt;">0.6</td>
</tr>
<tr class="ltx_tr" id="A2.T9.1.22.21">
<td class="ltx_td ltx_align_justify" id="A2.T9.1.22.21.1" style="padding:1pt 2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T9.1.22.21.1.1">
<span class="ltx_p" id="A2.T9.1.22.21.1.1.1">Llama-3.3-70B-Instruct <cite class="ltx_cite ltx_citemacro_citep">(Dubey et al., <a class="ltx_ref" href="https://arxiv.org/html/2504.00043v1#bib.bib15" title="">2024</a>)</cite></span>
</span>
</td>
<td class="ltx_td ltx_align_center" id="A2.T9.1.22.21.2" style="padding:1pt 2.0pt;">20480</td>
<td class="ltx_td ltx_align_center" id="A2.T9.1.22.21.3" style="padding:1pt 2.0pt;">20480</td>
<td class="ltx_td ltx_align_center" id="A2.T9.1.22.21.4" style="padding:1pt 2.0pt;">0.0</td>
</tr>
<tr class="ltx_tr" id="A2.T9.1.23.22">
<td class="ltx_td ltx_align_justify" id="A2.T9.1.23.22.1" style="padding:1pt 2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T9.1.23.22.1.1">
<span class="ltx_p" id="A2.T9.1.23.22.1.1.1">QwQ-32B <cite class="ltx_cite ltx_citemacro_citep">(Team, <a class="ltx_ref" href="https://arxiv.org/html/2504.00043v1#bib.bib45" title="">2025</a>)</cite></span>
</span>
</td>
<td class="ltx_td ltx_align_center" id="A2.T9.1.23.22.2" style="padding:1pt 2.0pt;">100000</td>
<td class="ltx_td ltx_align_center" id="A2.T9.1.23.22.3" style="padding:1pt 2.0pt;">100000</td>
<td class="ltx_td ltx_align_center" id="A2.T9.1.23.22.4" style="padding:1pt 2.0pt;">0.6</td>
</tr>
<tr class="ltx_tr" id="A2.T9.1.24.23">
<td class="ltx_td ltx_align_justify ltx_border_bb" id="A2.T9.1.24.23.1" style="padding:1pt 2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T9.1.24.23.1.1">
<span class="ltx_p" id="A2.T9.1.24.23.1.1.1">Phi-4 <cite class="ltx_cite ltx_citemacro_citep">(Abdin et al., <a class="ltx_ref" href="https://arxiv.org/html/2504.00043v1#bib.bib1" title="">2024</a>)</cite></span>
</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T9.1.24.23.2" style="padding:1pt 2.0pt;">10000</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T9.1.24.23.3" style="padding:1pt 2.0pt;">10000</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T9.1.24.23.4" style="padding:1pt 2.0pt;">0.0</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table details the specific settings used for generating crossword puzzles within the CrossWordBench benchmark.  It lists each model evaluated, its name, and crucial generation parameters: the maximum number of tokens allowed for puzzles of 7x7 and 14x14 grid sizes, and the temperature used during generation. The temperature parameter controls the randomness of the model's output, with higher values leading to more diverse, potentially less accurate, responses.
> <details>
> <summary>read the caption</summary>
> Table 9: Generation Configurations for CrossWordBench.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2504.00043/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.00043/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.00043/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.00043/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.00043/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.00043/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.00043/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.00043/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.00043/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.00043/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.00043/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.00043/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.00043/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.00043/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.00043/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.00043/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.00043/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.00043/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.00043/19.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.00043/20.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}