---
title: "V-MAGE: A Game Evaluation Framework for Assessing Visual-Centric Capabilities in Multimodal Large Language Models"
summary: "V-MAGE: A new benchmark for evaluating visual-reasoning skills of multimodal AI in game environments, revealing critical limitations in current models."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Multimodal Learning", "Vision-Language Models", "🏢 Nanjing University",]
showSummary: true
date: 2025-04-08
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2504.06148 {{< /keyword >}}
{{< keyword icon="writer" >}} Xiangxi Zheng et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-04-09 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2504.06148" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2504.06148" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2504.06148/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

**Multimodal Large Language Models (MLLMs) have shown advancements in various multimodal tasks, yet current game-based benchmarks fall short**. They lack visual-centric tasks and fail to evaluate the diverse reasoning skills needed for real-world decision-making. Existing setups rely on text-based or grid-based games, limiting their ability to assess spatial, temporal, and dynamic complexities crucial for problem-solving. This results in a lack of insights into MLLMs' visual reasoning limitations. The need for game-based evaluation environments that better align with how MLLMs process visual information is essential to improving gameplay tasks and strengthening visual interactive capabilities. 



To tackle the challenges, this paper introduces **Visual-centric Multiple Abilities Game Evaluation (V-MAGE)**, a game-based evaluation framework designed to assess MLLMs' visual reasoning capabilities. V-MAGE includes five diverse games with over 30 handcrafted levels, testing visual skills like positioning, trajectory tracking, timing, and memory, alongside higher-level reasoning. Evaluating leading MLLMs with V-MAGE reveals significant challenges in visual perception and reasoning. Findings highlight critical limitations and suggest potential avenues for improvement from an agent-centric perspective.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Current MLLMs struggle with visual perception and reasoning in dynamic game environments, despite excelling in static benchmarks. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} Existing game-based benchmarks often rely on text or grid-based settings, limiting the assessment of spatial, temporal, and dynamic complexities. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} V-MAGE, a new framework features five diverse games with 30+ handcrafted levels, testing models on core visual skills such as positioning, trajectory tracking, timing, and visual memory. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper introduces **V-MAGE, a new game-based benchmark that addresses the limitations of existing methods**. By focusing on visual-centric capabilities and interactive environments, it provides **a more realistic and challenging evaluation** for MLLMs, driving advancements in multimodal intelligence and agent design.

------
#### Visual Insights





{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S3.T1.4.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S3.T1.4.1.1.1">
<th class="ltx_td ltx_th ltx_th_column ltx_th_row ltx_border_r ltx_border_tt" id="S3.T1.4.1.1.1.1"></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T1.4.1.1.1.2"><span class="ltx_text" id="S3.T1.4.1.1.1.2.1" style="font-size:90%;">Game</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T1.4.1.1.1.3"><span class="ltx_text" id="S3.T1.4.1.1.1.3.1" style="font-size:90%;">Input</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T1.4.1.1.1.4"><span class="ltx_text" id="S3.T1.4.1.1.1.4.1" style="font-size:90%;">Reasoning Type</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T1.4.1.1.1.5"><span class="ltx_text" id="S3.T1.4.1.1.1.5.1" style="font-size:90%;">Level Design</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S3.T1.4.1.2.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S3.T1.4.1.2.1.1">
<span class="ltx_text" id="S3.T1.4.1.2.1.1.1" style="font-size:90%;">GameBench</span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="S3.T1.4.1.2.1.1.2.1" style="font-size:90%;">(</span>Costarelli et al.<span class="ltx_text" id="S3.T1.4.1.2.1.1.3.2.1.1" style="font-size:90%;">, </span><a class="ltx_ref" href="https://arxiv.org/html/2504.06148v1#bib.bib13" title="">2024</a><span class="ltx_text" id="S3.T1.4.1.2.1.1.4.3" style="font-size:90%;">)</span></cite>
</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.4.1.2.1.2"><span class="ltx_text" id="S3.T1.4.1.2.1.2.1" style="font-size:90%;">word game</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.4.1.2.1.3"><span class="ltx_text" id="S3.T1.4.1.2.1.3.1" style="font-size:90%;">text-only</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.4.1.2.1.4"><span class="ltx_text" id="S3.T1.4.1.2.1.4.1" style="font-size:90%;">text reasoning</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.4.1.2.1.5"><span class="ltx_text ltx_font_bold" id="S3.T1.4.1.2.1.5.1" style="font-size:90%;">✗</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.4.1.3.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S3.T1.4.1.3.2.1">
<span class="ltx_text" id="S3.T1.4.1.3.2.1.1" style="font-size:90%;">GameArena</span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="S3.T1.4.1.3.2.1.2.1" style="font-size:90%;">(</span>Hu et al.<span class="ltx_text" id="S3.T1.4.1.3.2.1.3.2.1.1" style="font-size:90%;">, </span><a class="ltx_ref" href="https://arxiv.org/html/2504.06148v1#bib.bib19" title="">2024</a><span class="ltx_text" id="S3.T1.4.1.3.2.1.4.3" style="font-size:90%;">)</span></cite>
</th>
<td class="ltx_td ltx_align_center" id="S3.T1.4.1.3.2.2"><span class="ltx_text" id="S3.T1.4.1.3.2.2.1" style="font-size:90%;">word game</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.1.3.2.3"><span class="ltx_text" id="S3.T1.4.1.3.2.3.1" style="font-size:90%;">text-only</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.1.3.2.4"><span class="ltx_text" id="S3.T1.4.1.3.2.4.1" style="font-size:90%;">text reasoning</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.1.3.2.5"><span class="ltx_text ltx_font_bold" id="S3.T1.4.1.3.2.5.1" style="font-size:90%;">✗</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.4.1.4.3">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S3.T1.4.1.4.3.1">
<span class="ltx_text" id="S3.T1.4.1.4.3.1.1" style="font-size:90%;">GTBench</span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="S3.T1.4.1.4.3.1.2.1" style="font-size:90%;">(</span>Duan et al.<span class="ltx_text" id="S3.T1.4.1.4.3.1.3.2.1.1" style="font-size:90%;">, </span><a class="ltx_ref" href="https://arxiv.org/html/2504.06148v1#bib.bib15" title="">2024</a><span class="ltx_text" id="S3.T1.4.1.4.3.1.4.3" style="font-size:90%;">)</span></cite>
</th>
<td class="ltx_td ltx_align_center" id="S3.T1.4.1.4.3.2"><span class="ltx_text" id="S3.T1.4.1.4.3.2.1" style="font-size:90%;">word game</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.1.4.3.3"><span class="ltx_text" id="S3.T1.4.1.4.3.3.1" style="font-size:90%;">text-only</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.1.4.3.4"><span class="ltx_text" id="S3.T1.4.1.4.3.4.1" style="font-size:90%;">text reasoning</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.1.4.3.5"><span class="ltx_text ltx_font_bold" id="S3.T1.4.1.4.3.5.1" style="font-size:90%;">✗</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.4.1.5.4">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S3.T1.4.1.5.4.1">
<span class="ltx_text" id="S3.T1.4.1.5.4.1.1" style="font-size:90%;">ING-VP</span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="S3.T1.4.1.5.4.1.2.1" style="font-size:90%;">(</span>Zhang et al.<span class="ltx_text" id="S3.T1.4.1.5.4.1.3.2.1.1" style="font-size:90%;">, </span><a class="ltx_ref" href="https://arxiv.org/html/2504.06148v1#bib.bib45" title="">2024</a><span class="ltx_text" id="S3.T1.4.1.5.4.1.4.3" style="font-size:90%;">)</span></cite>
</th>
<td class="ltx_td ltx_align_center" id="S3.T1.4.1.5.4.2"><span class="ltx_text" id="S3.T1.4.1.5.4.2.1" style="font-size:90%;">grid based</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.1.5.4.3"><span class="ltx_text" id="S3.T1.4.1.5.4.3.1" style="font-size:90%;">image-text</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.1.5.4.4"><span class="ltx_text" id="S3.T1.4.1.5.4.4.1" style="font-size:90%;">text reasoning + visual aid</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.1.5.4.5"><span class="ltx_text ltx_font_bold" id="S3.T1.4.1.5.4.5.1" style="font-size:90%;">✓</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.4.1.6.5">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S3.T1.4.1.6.5.1">
<span class="ltx_text" id="S3.T1.4.1.6.5.1.1" style="font-size:90%;">LVLM-Playground</span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="S3.T1.4.1.6.5.1.2.1" style="font-size:90%;">(</span>Anonymous<span class="ltx_text" id="S3.T1.4.1.6.5.1.3.2.1.1" style="font-size:90%;">, </span><a class="ltx_ref" href="https://arxiv.org/html/2504.06148v1#bib.bib2" title="">2025</a><span class="ltx_text" id="S3.T1.4.1.6.5.1.4.3" style="font-size:90%;">)</span></cite>
</th>
<td class="ltx_td ltx_align_center" id="S3.T1.4.1.6.5.2"><span class="ltx_text" id="S3.T1.4.1.6.5.2.1" style="font-size:90%;">grid based</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.1.6.5.3"><span class="ltx_text" id="S3.T1.4.1.6.5.3.1" style="font-size:90%;">image-text</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.1.6.5.4"><span class="ltx_text" id="S3.T1.4.1.6.5.4.1" style="font-size:90%;">text reasoning + visual aid</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.1.6.5.5"><span class="ltx_text ltx_font_bold" id="S3.T1.4.1.6.5.5.1" style="font-size:90%;">✓</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.4.1.7.6">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S3.T1.4.1.7.6.1">
<span class="ltx_text" id="S3.T1.4.1.7.6.1.1" style="font-size:90%;">BALROG</span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="S3.T1.4.1.7.6.1.2.1" style="font-size:90%;">(</span>Paglieri et al.<span class="ltx_text" id="S3.T1.4.1.7.6.1.3.2.1.1" style="font-size:90%;">, </span><a class="ltx_ref" href="https://arxiv.org/html/2504.06148v1#bib.bib31" title="">2024</a><span class="ltx_text" id="S3.T1.4.1.7.6.1.4.3" style="font-size:90%;">)</span></cite>
</th>
<td class="ltx_td ltx_align_center" id="S3.T1.4.1.7.6.2"><span class="ltx_text" id="S3.T1.4.1.7.6.2.1" style="font-size:90%;">word game / grid based</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.1.7.6.3"><span class="ltx_text" id="S3.T1.4.1.7.6.3.1" style="font-size:90%;">image-text</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.1.7.6.4"><span class="ltx_text" id="S3.T1.4.1.7.6.4.1" style="font-size:90%;">text reasoning + visual aid</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.1.7.6.5"><span class="ltx_text ltx_font_bold" id="S3.T1.4.1.7.6.5.1" style="font-size:90%;">✗</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.4.1.8.7">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_bb ltx_border_r ltx_border_t" id="S3.T1.4.1.8.7.1"><span class="ltx_text ltx_font_bold" id="S3.T1.4.1.8.7.1.1" style="font-size:90%;">V-MAGE</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S3.T1.4.1.8.7.2"><span class="ltx_text ltx_font_bold" id="S3.T1.4.1.8.7.2.1" style="font-size:90%;">free form</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S3.T1.4.1.8.7.3"><span class="ltx_text ltx_font_bold" id="S3.T1.4.1.8.7.3.1" style="font-size:90%;">image-text*</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S3.T1.4.1.8.7.4"><span class="ltx_text ltx_font_bold" id="S3.T1.4.1.8.7.4.1" style="font-size:90%;">visual-centric reasoning</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S3.T1.4.1.8.7.5"><span class="ltx_text ltx_font_bold" id="S3.T1.4.1.8.7.5.1" style="font-size:90%;">✓</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 This table compares V-MAGE with other game-based evaluation benchmarks for multimodal large language models (MLLMs).  It contrasts the types of games used (word games, grid-based games, or free-form games), the input type (text only, image-text, or image-text with instructions), the type of reasoning required (text reasoning, text reasoning with visual aids, or visual-centric reasoning), and the complexity of level design (simple or complex).  The asterisk (*) indicates that V-MAGE uses text only for instructions, not for primary game interaction, which is visually-driven.
> <details>
> <summary>read the caption</summary>
> Table 1: The comparison of V-MAGE with existing game-based evaluation benchmarks. *Text in V-MAGE only represents the instructions for game rules and output format.
> </details>





### In-depth insights


#### Visual Game AGI
While the term 'Visual Game AGI' wasn't explicitly present, the research strongly alludes to its core tenets. The paper introduces V-MAGE, a benchmark emphasizing **visual reasoning in dynamic game environments**, designed to expose limitations in current MLLMs. This directly relates to achieving AGI within games, requiring systems that go beyond simple pattern recognition to demonstrate adaptable problem-solving. The benchmark focuses on assessing capabilities like **positioning, trajectory tracking, timing, and visual memory**, all crucial for an agent to exhibit general intelligence in a visual game context. The disappointing performance of SOTA models on the V-MAGE benchmark implies a considerable gap between current MLLM capabilities and true Visual Game AGI. This gap highlights challenges in visual abstraction and sequential reasoning in dynamic environments. By focusing on visual perception and reasoning, the research paves the way for further exploration of agents that can operate with human-level intelligence.

#### MLLM's V-MAGE
When considering Multimodal Large Language Models (MLLMs) within the context of V-MAGE, several crucial aspects emerge. First, V-MAGE serves as a **specialized benchmark** to assess the visual reasoning capabilities, a critical area for the advancement of MLLMs. Second, the **performance of the current MLLMs** highlights the challenges that these models still face in dynamic, visually complex tasks, even though they've shown proficiency in static ones. This gap suggests that architectural improvements, training data enrichments, or novel reasoning mechanisms are required. Thirdly, V-MAGE's **flexible gameplay** design ensures that MLLMs can explore a wide array of states, allowing researchers to pinpoint the limitations in spatial-temporal reasoning. Fourthly, V-MAGE offers insights that inform not only about the model's capabilities but the types of **perceptual errors** the model makes.

#### ELO-Based Rank
ELO-based ranking systems, often used in competitive gaming and sports, provide a dynamic and adaptive method for assessing and comparing the performance of different agents. **Instead of relying on static benchmarks, ELO systems iteratively refine model rankings through pairwise comparisons,** where models compete against each other in a series of evaluation rounds. The outcome of each match, whether a win, loss, or draw, is used to update the ELO ratings of the participating models. **This adaptive approach avoids manual score normalization and performance ceilings,** which can limit the effectiveness of traditional evaluation metrics. The ELO-based ranking offers a statistically sound method for establishing reliable model rankings, particularly in complex and dynamic environments where performance can vary significantly.

#### Agent Strategy
**Agent strategy plays a crucial role in multimodal AI, impacting performance significantly.** The paper highlights the need for optimizing agent strategies to better support Multimodal Large Language Model (MLLM) reasoning and memory. In dynamic environments like video games, effective agents must manage inference history and memory strategically, improving contextual input for MLLMs. **Visual memory**, which differs from text-based memory, necessitates research into intuitive visual storage and retrieval mechanisms. Ultimately, refining agent strategies in tandem with MLLM improvements yields substantial performance gains, paving the way for advanced multimodal intelligence. Agent Strategy effectiveness can be noticed by how well it deals with edge cases and unexpected senarios.

#### Perceptual Defect
While not explicitly a section, perceptual defects are a central theme. The paper highlights that **visual perception deficiencies are a primary source of error** in MLLMs within dynamic game environments. Models often **fail to extract key visual cues** or exhibit **erroneous perception of target information**, leading to flawed reasoning and actions. This suggests that, despite advancements, MLLMs still struggle with accurately interpreting visual data in complex, dynamic scenarios. Addressing these limitations is crucial for enhancing MLLMs' ability to perform tasks requiring real-time visual understanding and decision-making, ultimately guiding the development of more robust and capable multimodal intelligence.


### More visual insights




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S3.T2.4.1">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S3.T2.4.1.1.1">
<th class="ltx_td ltx_th ltx_th_row ltx_border_r ltx_border_tt" id="S3.T2.4.1.1.1.1"></th>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" colspan="2" id="S3.T2.4.1.1.1.2"><span class="ltx_text ltx_font_bold" id="S3.T2.4.1.1.1.2.1" style="font-size:90%;">Closed-Source</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" colspan="4" id="S3.T2.4.1.1.1.3"><span class="ltx_text ltx_font_bold" id="S3.T2.4.1.1.1.3.1" style="font-size:90%;">Open-Source</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T2.4.1.1.1.4"><span class="ltx_text ltx_font_bold" id="S3.T2.4.1.1.1.4.1" style="font-size:90%;">Baseline</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.4.1.2.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S3.T2.4.1.2.2.1"><span class="ltx_text" id="S3.T2.4.1.2.2.1.1" style="font-size:90%;">Game</span></th>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T2.4.1.2.2.2" rowspan="2"><span class="ltx_text" id="S3.T2.4.1.2.2.2.1" style="font-size:90%;">GPT-4o</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T2.4.1.2.2.3"><span class="ltx_text" id="S3.T2.4.1.2.2.3.1" style="font-size:90%;">Gemini</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T2.4.1.2.2.4" rowspan="2"><span class="ltx_text" id="S3.T2.4.1.2.2.4.1" style="font-size:90%;">Qwen2VL-7B</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T2.4.1.2.2.5" rowspan="2"><span class="ltx_text" id="S3.T2.4.1.2.2.5.1" style="font-size:90%;">Qwen2VL-72B</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T2.4.1.2.2.6" rowspan="2"><span class="ltx_text" id="S3.T2.4.1.2.2.6.1" style="font-size:90%;">InternVL2.5-8B</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T2.4.1.2.2.7" rowspan="2"><span class="ltx_text" id="S3.T2.4.1.2.2.7.1" style="font-size:90%;">InternVL2.5-78B</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.4.1.2.2.8" rowspan="2"><span class="ltx_text" id="S3.T2.4.1.2.2.8.1" style="font-size:90%;">Random</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.4.1.3.3">
<th class="ltx_td ltx_th ltx_th_row ltx_border_r" id="S3.T2.4.1.3.3.1"></th>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.4.1.3.3.2"><span class="ltx_text" id="S3.T2.4.1.3.3.2.1" style="font-size:90%;">2.0-flash-exp</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.4.1.4.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S3.T2.4.1.4.4.1"><span class="ltx_text" id="S3.T2.4.1.4.4.1.1" style="font-size:90%;">Race</span></th>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T2.4.1.4.4.2"><span class="ltx_text ltx_font_bold" id="S3.T2.4.1.4.4.2.1" style="font-size:90%;">1611</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T2.4.1.4.4.3"><span class="ltx_text" id="S3.T2.4.1.4.4.3.1" style="font-size:90%;">1526</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T2.4.1.4.4.4"><span class="ltx_text" id="S3.T2.4.1.4.4.4.1" style="font-size:90%;">1447</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T2.4.1.4.4.5"><span class="ltx_text" id="S3.T2.4.1.4.4.5.1" style="font-size:90%;">1517</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T2.4.1.4.4.6"><span class="ltx_text" id="S3.T2.4.1.4.4.6.1" style="font-size:90%;">1472</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T2.4.1.4.4.7"><span class="ltx_text" id="S3.T2.4.1.4.4.7.1" style="font-size:90%;">1474</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.4.1.4.4.8"><span class="ltx_text" id="S3.T2.4.1.4.4.8.1" style="font-size:90%;">1453</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.4.1.5.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S3.T2.4.1.5.5.1"><span class="ltx_text" id="S3.T2.4.1.5.5.1.1" style="font-size:90%;">Flappybird</span></th>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.4.1.5.5.2"><span class="ltx_text ltx_font_bold" id="S3.T2.4.1.5.5.2.1" style="font-size:90%;">1589</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.4.1.5.5.3"><span class="ltx_text" id="S3.T2.4.1.5.5.3.1" style="font-size:90%;">1530</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.4.1.5.5.4"><span class="ltx_text" id="S3.T2.4.1.5.5.4.1" style="font-size:90%;">1452</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.4.1.5.5.5"><span class="ltx_text" id="S3.T2.4.1.5.5.5.1" style="font-size:90%;">1464</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.4.1.5.5.6"><span class="ltx_text" id="S3.T2.4.1.5.5.6.1" style="font-size:90%;">1497</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.4.1.5.5.7"><span class="ltx_text" id="S3.T2.4.1.5.5.7.1" style="font-size:90%;">1503</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.1.5.5.8"><span class="ltx_text" id="S3.T2.4.1.5.5.8.1" style="font-size:90%;">1464</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.4.1.6.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S3.T2.4.1.6.6.1"><span class="ltx_text" id="S3.T2.4.1.6.6.1.1" style="font-size:90%;">Pong</span></th>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.4.1.6.6.2"><span class="ltx_text" id="S3.T2.4.1.6.6.2.1" style="font-size:90%;">1500</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.4.1.6.6.3"><span class="ltx_text ltx_font_bold" id="S3.T2.4.1.6.6.3.1" style="font-size:90%;">1515</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.4.1.6.6.4"><span class="ltx_text" id="S3.T2.4.1.6.6.4.1" style="font-size:90%;">1481</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.4.1.6.6.5"><span class="ltx_text" id="S3.T2.4.1.6.6.5.1" style="font-size:90%;">1501</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.4.1.6.6.6"><span class="ltx_text" id="S3.T2.4.1.6.6.6.1" style="font-size:90%;">1504</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.4.1.6.6.7"><span class="ltx_text" id="S3.T2.4.1.6.6.7.1" style="font-size:90%;">1511</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.1.6.6.8"><span class="ltx_text" id="S3.T2.4.1.6.6.8.1" style="font-size:90%;">1488</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.4.1.7.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S3.T2.4.1.7.7.1"><span class="ltx_text" id="S3.T2.4.1.7.7.1.1" style="font-size:90%;">Tempestrun</span></th>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.4.1.7.7.2"><span class="ltx_text" id="S3.T2.4.1.7.7.2.1" style="font-size:90%;">1514</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.4.1.7.7.3"><span class="ltx_text" id="S3.T2.4.1.7.7.3.1" style="font-size:90%;">1513</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.4.1.7.7.4"><span class="ltx_text" id="S3.T2.4.1.7.7.4.1" style="font-size:90%;">1505</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.4.1.7.7.5"><span class="ltx_text ltx_font_bold" id="S3.T2.4.1.7.7.5.1" style="font-size:90%;">1535</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.4.1.7.7.6"><span class="ltx_text" id="S3.T2.4.1.7.7.6.1" style="font-size:90%;">1483</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.4.1.7.7.7"><span class="ltx_text" id="S3.T2.4.1.7.7.7.1" style="font-size:90%;">1513</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.1.7.7.8"><span class="ltx_text" id="S3.T2.4.1.7.7.8.1" style="font-size:90%;">1438</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.4.1.8.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S3.T2.4.1.8.8.1"><span class="ltx_text" id="S3.T2.4.1.8.8.1.1" style="font-size:90%;">SuperMario (Avg)</span></th>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.4.1.8.8.2"><span class="ltx_text" id="S3.T2.4.1.8.8.2.1" style="font-size:90%;">1550</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.4.1.8.8.3"><span class="ltx_text" id="S3.T2.4.1.8.8.3.1" style="font-size:90%;">1551</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.4.1.8.8.4"><span class="ltx_text" id="S3.T2.4.1.8.8.4.1" style="font-size:90%;">1398</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.4.1.8.8.5"><span class="ltx_text" id="S3.T2.4.1.8.8.5.1" style="font-size:90%;">1548</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.4.1.8.8.6"><span class="ltx_text" id="S3.T2.4.1.8.8.6.1" style="font-size:90%;">1411</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.4.1.8.8.7"><span class="ltx_text ltx_font_bold" id="S3.T2.4.1.8.8.7.1" style="font-size:90%;">1587</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.1.8.8.8"><span class="ltx_text" id="S3.T2.4.1.8.8.8.1" style="font-size:90%;">1455</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.4.1.9.9">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_r ltx_border_t" id="S3.T2.4.1.9.9.1"><span class="ltx_text ltx_font_bold" id="S3.T2.4.1.9.9.1.1" style="font-size:90%;">Average</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r ltx_border_t" id="S3.T2.4.1.9.9.2"><span class="ltx_text ltx_font_bold" id="S3.T2.4.1.9.9.2.1" style="font-size:90%;">1553</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r ltx_border_t" id="S3.T2.4.1.9.9.3"><span class="ltx_text" id="S3.T2.4.1.9.9.3.1" style="font-size:90%;">1533</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r ltx_border_t" id="S3.T2.4.1.9.9.4"><span class="ltx_text" id="S3.T2.4.1.9.9.4.1" style="font-size:90%;">1440</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r ltx_border_t" id="S3.T2.4.1.9.9.5"><span class="ltx_text" id="S3.T2.4.1.9.9.5.1" style="font-size:90%;">1523</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r ltx_border_t" id="S3.T2.4.1.9.9.6"><span class="ltx_text" id="S3.T2.4.1.9.9.6.1" style="font-size:90%;">1455</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r ltx_border_t" id="S3.T2.4.1.9.9.7"><span class="ltx_text" id="S3.T2.4.1.9.9.7.1" style="font-size:90%;">1538</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S3.T2.4.1.9.9.8"><span class="ltx_text" id="S3.T2.4.1.9.9.8.1" style="font-size:90%;">1458</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a performance comparison of different large language models (LLMs) across various games, using the Elo rating system.  The Elo rating system provides a dynamic ranking based on head-to-head comparisons, making it suitable for evaluating model performance in competitive scenarios like game-playing.  Higher Elo scores indicate better performance.
> <details>
> <summary>read the caption</summary>
> Table 2: Performance comparison across different games based on the elo ranking system.
> </details>

{{< table-caption >}}
<table class="ltx_tabular" id="A1.T3.4">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A1.T3.4.1.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_t" id="A1.T3.4.1.1.1" style="padding-top:2.5pt;padding-bottom:2.5pt;"><span class="ltx_text ltx_font_bold" id="A1.T3.4.1.1.1.1">Model</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_t" id="A1.T3.4.1.1.2" style="padding-top:2.5pt;padding-bottom:2.5pt;"><span class="ltx_text ltx_font_bold" id="A1.T3.4.1.1.2.1">Organization</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_t" id="A1.T3.4.1.1.3" style="padding-top:2.5pt;padding-bottom:2.5pt;"><span class="ltx_text ltx_font_bold" id="A1.T3.4.1.1.3.1">Website</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A1.T3.4.1.1.4" style="padding-top:2.5pt;padding-bottom:2.5pt;"><span class="ltx_text ltx_font_bold" id="A1.T3.4.1.1.4.1">Open Source</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A1.T3.4.2.1">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A1.T3.4.2.1.1" style="padding-top:2.5pt;padding-bottom:2.5pt;">GPT-4o</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A1.T3.4.2.1.2" style="padding-top:2.5pt;padding-bottom:2.5pt;">OpenAI</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A1.T3.4.2.1.3" style="padding-top:2.5pt;padding-bottom:2.5pt;"><a class="ltx_ref ltx_url ltx_font_typewriter" href="https://openai.com/index/hello-gpt-4o/" style="font-size:70%;" title="">https://openai.com/index/hello-gpt-4o/</a></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T3.4.2.1.4" rowspan="2" style="padding-top:2.5pt;padding-bottom:2.5pt;"><span class="ltx_text" id="A1.T3.4.2.1.4.1">No</span></td>
</tr>
<tr class="ltx_tr" id="A1.T3.4.3.2">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A1.T3.4.3.2.1" style="padding-top:2.5pt;padding-bottom:2.5pt;">Gemini-2.0-flash-exp</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A1.T3.4.3.2.2" style="padding-top:2.5pt;padding-bottom:2.5pt;">Google DeepMind</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A1.T3.4.3.2.3" style="padding-top:2.5pt;padding-bottom:2.5pt;"><a class="ltx_ref ltx_url ltx_font_typewriter" href="https://deepmind.google/technologies/gemini/flash/" style="font-size:70%;" title="">https://deepmind.google/technologies/gemini/flash/</a></td>
</tr>
<tr class="ltx_tr" id="A1.T3.4.4.3">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A1.T3.4.4.3.1" style="padding-top:2.5pt;padding-bottom:2.5pt;">InternVL2.5-78B</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A1.T3.4.4.3.2" rowspan="2" style="padding-top:2.5pt;padding-bottom:2.5pt;"><span class="ltx_text" id="A1.T3.4.4.3.2.1">Shanghai AI Lab</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A1.T3.4.4.3.3" style="padding-top:2.5pt;padding-bottom:2.5pt;"><a class="ltx_ref ltx_url ltx_font_typewriter" href="https://huggingface.co/OpenGVLab/InternVL2_5-78B" style="font-size:70%;" title="">https://huggingface.co/OpenGVLab/InternVL2_5-78B</a></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A1.T3.4.4.3.4" rowspan="4" style="padding-top:2.5pt;padding-bottom:2.5pt;"><span class="ltx_text" id="A1.T3.4.4.3.4.1">Yes</span></td>
</tr>
<tr class="ltx_tr" id="A1.T3.4.5.4">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A1.T3.4.5.4.1" style="padding-top:2.5pt;padding-bottom:2.5pt;">InternVL2.5-8B</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A1.T3.4.5.4.2" style="padding-top:2.5pt;padding-bottom:2.5pt;"><a class="ltx_ref ltx_url ltx_font_typewriter" href="https://huggingface.co/OpenGVLab/InternVL2_5-8B" style="font-size:70%;" title="">https://huggingface.co/OpenGVLab/InternVL2_5-8B</a></td>
</tr>
<tr class="ltx_tr" id="A1.T3.4.6.5">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A1.T3.4.6.5.1" style="padding-top:2.5pt;padding-bottom:2.5pt;">Qwen2VL-72B-Instruct</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r ltx_border_t" id="A1.T3.4.6.5.2" rowspan="2" style="padding-top:2.5pt;padding-bottom:2.5pt;"><span class="ltx_text" id="A1.T3.4.6.5.2.1">Alibaba Cloud</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A1.T3.4.6.5.3" style="padding-top:2.5pt;padding-bottom:2.5pt;"><a class="ltx_ref ltx_url ltx_font_typewriter" href="https://huggingface.co/Qwen/Qwen2-VL-72B-Instruct" style="font-size:70%;" title="">https://huggingface.co/Qwen/Qwen2-VL-72B-Instruct</a></td>
</tr>
<tr class="ltx_tr" id="A1.T3.4.7.6">
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r ltx_border_t" id="A1.T3.4.7.6.1" style="padding-top:2.5pt;padding-bottom:2.5pt;">Qwen2VL-7B-Instruct</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r ltx_border_t" id="A1.T3.4.7.6.2" style="padding-top:2.5pt;padding-bottom:2.5pt;"><a class="ltx_ref ltx_url ltx_font_typewriter" href="https://huggingface.co/Qwen/Qwen2-VL-7B-Instruct" style="font-size:70%;" title="">https://huggingface.co/Qwen/Qwen2-VL-7B-Instruct</a></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table lists the large language models (LLMs) used in the V-MAGE benchmark for evaluating visual-centric capabilities.  For each model, it provides the organization that developed it, a link to its online information, and indicates whether it is open-source.
> <details>
> <summary>read the caption</summary>
> Table 3: Models involved in V-MAGE.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="A1.T4.4">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A1.T4.4.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="A1.T4.4.1.1.1" rowspan="2" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text" id="A1.T4.4.1.1.1.1" style="font-size:90%;">Level</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="A1.T4.4.1.1.2" rowspan="2" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text" id="A1.T4.4.1.1.2.1" style="font-size:90%;">GPT-4o</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="A1.T4.4.1.1.3" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text" id="A1.T4.4.1.1.3.1" style="font-size:90%;">Gemini</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="A1.T4.4.1.1.4" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text" id="A1.T4.4.1.1.4.1" style="font-size:90%;">Qwen2VL</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="A1.T4.4.1.1.5" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text" id="A1.T4.4.1.1.5.1" style="font-size:90%;">Qwen2VL</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="A1.T4.4.1.1.6" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text" id="A1.T4.4.1.1.6.1" style="font-size:90%;">InternVL2.5</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="A1.T4.4.1.1.7" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text" id="A1.T4.4.1.1.7.1" style="font-size:90%;">InternVL2.5</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="A1.T4.4.1.1.8" rowspan="2" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text" id="A1.T4.4.1.1.8.1" style="font-size:90%;">Random</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A1.T4.4.1.1.9" rowspan="2" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text" id="A1.T4.4.1.1.9.1" style="font-size:90%;">Human</span></th>
</tr>
<tr class="ltx_tr" id="A1.T4.4.2.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r" id="A1.T4.4.2.2.1" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text" id="A1.T4.4.2.2.1.1" style="font-size:90%;">2.0-flash-exp</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r" id="A1.T4.4.2.2.2" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text" id="A1.T4.4.2.2.2.1" style="font-size:90%;">7B</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r" id="A1.T4.4.2.2.3" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text" id="A1.T4.4.2.2.3.1" style="font-size:90%;">72B</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r" id="A1.T4.4.2.2.4" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text" id="A1.T4.4.2.2.4.1" style="font-size:90%;">8B</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r" id="A1.T4.4.2.2.5" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text" id="A1.T4.4.2.2.5.1" style="font-size:90%;">78B</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A1.T4.4.3.1">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T4.4.3.1.1" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text" id="A1.T4.4.3.1.1.1" style="font-size:90%;">Level1 No History</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A1.T4.4.3.1.2" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text" id="A1.T4.4.3.1.2.1" style="font-size:90%;">96.93</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A1.T4.4.3.1.3" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text" id="A1.T4.4.3.1.3.1" style="font-size:90%;">97.95</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A1.T4.4.3.1.4" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text" id="A1.T4.4.3.1.4.1" style="font-size:90%;">86.73</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A1.T4.4.3.1.5" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text" id="A1.T4.4.3.1.5.1" style="font-size:90%;">96.93</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A1.T4.4.3.1.6" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text" id="A1.T4.4.3.1.6.1" style="font-size:90%;">88.77</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A1.T4.4.3.1.7" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text ltx_font_bold" id="A1.T4.4.3.1.7.1" style="font-size:90%;">99.99</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A1.T4.4.3.1.8" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text" id="A1.T4.4.3.1.8.1" style="font-size:90%;">2.04</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T4.4.3.1.9" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text" id="A1.T4.4.3.1.9.1" style="font-size:90%;">100</span></td>
</tr>
<tr class="ltx_tr" id="A1.T4.4.4.2">
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T4.4.4.2.1" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text" id="A1.T4.4.4.2.1.1" style="font-size:90%;">Level2 No History</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T4.4.4.2.2" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text ltx_font_bold" id="A1.T4.4.4.2.2.1" style="font-size:90%;">39.79</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T4.4.4.2.3" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text" id="A1.T4.4.4.2.3.1" style="font-size:90%;">23.47</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T4.4.4.2.4" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text" id="A1.T4.4.4.2.4.1" style="font-size:90%;">2.04</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T4.4.4.2.5" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text" id="A1.T4.4.4.2.5.1" style="font-size:90%;">24.49</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T4.4.4.2.6" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text" id="A1.T4.4.4.2.6.1" style="font-size:90%;">6.12</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T4.4.4.2.7" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text" id="A1.T4.4.4.2.7.1" style="font-size:90%;">26.53</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T4.4.4.2.8" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text" id="A1.T4.4.4.2.8.1" style="font-size:90%;">2.04</span></td>
<td class="ltx_td ltx_align_center" id="A1.T4.4.4.2.9" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text" id="A1.T4.4.4.2.9.1" style="font-size:90%;">100</span></td>
</tr>
<tr class="ltx_tr" id="A1.T4.4.5.3">
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T4.4.5.3.1" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text" id="A1.T4.4.5.3.1.1" style="font-size:90%;">Level3 No History</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T4.4.5.3.2" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text" id="A1.T4.4.5.3.2.1" style="font-size:90%;">15.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T4.4.5.3.3" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text" id="A1.T4.4.5.3.3.1" style="font-size:90%;">5.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T4.4.5.3.4" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text" id="A1.T4.4.5.3.4.1" style="font-size:90%;">5.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T4.4.5.3.5" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text" id="A1.T4.4.5.3.5.1" style="font-size:90%;">17.35</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T4.4.5.3.6" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text" id="A1.T4.4.5.3.6.1" style="font-size:90%;">12.24</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T4.4.5.3.7" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text ltx_font_bold" id="A1.T4.4.5.3.7.1" style="font-size:90%;">23.47</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T4.4.5.3.8" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text" id="A1.T4.4.5.3.8.1" style="font-size:90%;">0.0</span></td>
<td class="ltx_td ltx_align_center" id="A1.T4.4.5.3.9" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text" id="A1.T4.4.5.3.9.1" style="font-size:90%;">100</span></td>
</tr>
<tr class="ltx_tr" id="A1.T4.4.6.4">
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T4.4.6.4.1" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text" id="A1.T4.4.6.4.1.1" style="font-size:90%;">Level1</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T4.4.6.4.2" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text ltx_font_bold" id="A1.T4.4.6.4.2.1" style="font-size:90%;">99.99</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T4.4.6.4.3" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text" id="A1.T4.4.6.4.3.1" style="font-size:90%;">35.71</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T4.4.6.4.4" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text" id="A1.T4.4.6.4.4.1" style="font-size:90%;">11.22</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T4.4.6.4.5" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text" id="A1.T4.4.6.4.5.1" style="font-size:90%;">55.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T4.4.6.4.6" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text" id="A1.T4.4.6.4.6.1" style="font-size:90%;">28.57</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T4.4.6.4.7" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text" id="A1.T4.4.6.4.7.1" style="font-size:90%;">64.28</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T4.4.6.4.8" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text" id="A1.T4.4.6.4.8.1" style="font-size:90%;">8.16</span></td>
<td class="ltx_td ltx_align_center" id="A1.T4.4.6.4.9" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text" id="A1.T4.4.6.4.9.1" style="font-size:90%;">100</span></td>
</tr>
<tr class="ltx_tr" id="A1.T4.4.7.5">
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T4.4.7.5.1" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text" id="A1.T4.4.7.5.1.1" style="font-size:90%;">Level2</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T4.4.7.5.2" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text ltx_font_bold" id="A1.T4.4.7.5.2.1" style="font-size:90%;">67.34</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T4.4.7.5.3" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text" id="A1.T4.4.7.5.3.1" style="font-size:90%;">8.16</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T4.4.7.5.4" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text" id="A1.T4.4.7.5.4.1" style="font-size:90%;">0.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T4.4.7.5.5" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text" id="A1.T4.4.7.5.5.1" style="font-size:90%;">2.04</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T4.4.7.5.6" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text" id="A1.T4.4.7.5.6.1" style="font-size:90%;">4.08</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T4.4.7.5.7" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text" id="A1.T4.4.7.5.7.1" style="font-size:90%;">16.32</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T4.4.7.5.8" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text" id="A1.T4.4.7.5.8.1" style="font-size:90%;">2.04</span></td>
<td class="ltx_td ltx_align_center" id="A1.T4.4.7.5.9" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text" id="A1.T4.4.7.5.9.1" style="font-size:90%;">100</span></td>
</tr>
<tr class="ltx_tr" id="A1.T4.4.8.6">
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T4.4.8.6.1" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text" id="A1.T4.4.8.6.1.1" style="font-size:90%;">Level3</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T4.4.8.6.2" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text ltx_font_bold" id="A1.T4.4.8.6.2.1" style="font-size:90%;">48.97</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T4.4.8.6.3" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text" id="A1.T4.4.8.6.3.1" style="font-size:90%;">6.12</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T4.4.8.6.4" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text" id="A1.T4.4.8.6.4.1" style="font-size:90%;">5.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T4.4.8.6.5" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text" id="A1.T4.4.8.6.5.1" style="font-size:90%;">8.16</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T4.4.8.6.6" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text" id="A1.T4.4.8.6.6.1" style="font-size:90%;">7.14</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T4.4.8.6.7" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text" id="A1.T4.4.8.6.7.1" style="font-size:90%;">12.24</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T4.4.8.6.8" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text" id="A1.T4.4.8.6.8.1" style="font-size:90%;">1.02</span></td>
<td class="ltx_td ltx_align_center" id="A1.T4.4.8.6.9" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text" id="A1.T4.4.8.6.9.1" style="font-size:90%;">100</span></td>
</tr>
<tr class="ltx_tr" id="A1.T4.4.9.7">
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T4.4.9.7.1" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text" id="A1.T4.4.9.7.1.1" style="font-size:90%;">Level4</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T4.4.9.7.2" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text ltx_font_bold" id="A1.T4.4.9.7.2.1" style="font-size:90%;">23.47</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T4.4.9.7.3" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text" id="A1.T4.4.9.7.3.1" style="font-size:90%;">7.14</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T4.4.9.7.4" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text" id="A1.T4.4.9.7.4.1" style="font-size:90%;">1.02</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T4.4.9.7.5" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text" id="A1.T4.4.9.7.5.1" style="font-size:90%;">3.06</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T4.4.9.7.6" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text" id="A1.T4.4.9.7.6.1" style="font-size:90%;">0.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T4.4.9.7.7" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text" id="A1.T4.4.9.7.7.1" style="font-size:90%;">3.06</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T4.4.9.7.8" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text" id="A1.T4.4.9.7.8.1" style="font-size:90%;">15.3</span></td>
<td class="ltx_td ltx_align_center" id="A1.T4.4.9.7.9" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text" id="A1.T4.4.9.7.9.1" style="font-size:90%;">100</span></td>
</tr>
<tr class="ltx_tr" id="A1.T4.4.10.8">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_r" id="A1.T4.4.10.8.1" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text" id="A1.T4.4.10.8.1.1" style="font-size:90%;">Level5</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="A1.T4.4.10.8.2" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text" id="A1.T4.4.10.8.2.1" style="font-size:90%;">17.35</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="A1.T4.4.10.8.3" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text" id="A1.T4.4.10.8.3.1" style="font-size:90%;">9.18</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="A1.T4.4.10.8.4" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text" id="A1.T4.4.10.8.4.1" style="font-size:90%;">14.28</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="A1.T4.4.10.8.5" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text" id="A1.T4.4.10.8.5.1" style="font-size:90%;">5.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="A1.T4.4.10.8.6" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text ltx_font_bold" id="A1.T4.4.10.8.6.1" style="font-size:90%;">21.43</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="A1.T4.4.10.8.7" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text" id="A1.T4.4.10.8.7.1" style="font-size:90%;">8.16</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="A1.T4.4.10.8.8" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text" id="A1.T4.4.10.8.8.1" style="font-size:90%;">6.12</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T4.4.10.8.9" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text" id="A1.T4.4.10.8.9.1" style="font-size:90%;">100</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a performance comparison of different large language models (LLMs) on the RaceGame task within the V-MAGE benchmark.  It shows the average scores achieved by each model across various levels of difficulty, categorized by whether historical game information ('No History') was provided or not.  The models include both closed-source models (GPT-40, Gemini) and open-source models (Qwen2VL, InternVL), and a random baseline is included for comparison. The results highlight the performance differences between these models and their ability to handle varying levels of complexity in the RaceGame task. Human performance is also included as a reference point.
> <details>
> <summary>read the caption</summary>
> Table 4: Performance analysis based on average scores in Race
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="A1.T5.4">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A1.T5.4.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="A1.T5.4.1.1.1" rowspan="2" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text" id="A1.T5.4.1.1.1.1" style="font-size:90%;">Level</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="A1.T5.4.1.1.2" rowspan="2" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text" id="A1.T5.4.1.1.2.1" style="font-size:90%;">GPT-4o</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="A1.T5.4.1.1.3" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text" id="A1.T5.4.1.1.3.1" style="font-size:90%;">Gemini</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="A1.T5.4.1.1.4" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text" id="A1.T5.4.1.1.4.1" style="font-size:90%;">Qwen2VL</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="A1.T5.4.1.1.5" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text" id="A1.T5.4.1.1.5.1" style="font-size:90%;">Qwen2VL</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="A1.T5.4.1.1.6" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text" id="A1.T5.4.1.1.6.1" style="font-size:90%;">InternVL2.5</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="A1.T5.4.1.1.7" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text" id="A1.T5.4.1.1.7.1" style="font-size:90%;">InternVL2.5</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="A1.T5.4.1.1.8" rowspan="2" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text" id="A1.T5.4.1.1.8.1" style="font-size:90%;">Random</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A1.T5.4.1.1.9" rowspan="2" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text" id="A1.T5.4.1.1.9.1" style="font-size:90%;">Human</span></th>
</tr>
<tr class="ltx_tr" id="A1.T5.4.2.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r" id="A1.T5.4.2.2.1" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text" id="A1.T5.4.2.2.1.1" style="font-size:90%;">2.0-flash-exp</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r" id="A1.T5.4.2.2.2" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text" id="A1.T5.4.2.2.2.1" style="font-size:90%;">7B</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r" id="A1.T5.4.2.2.3" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text" id="A1.T5.4.2.2.3.1" style="font-size:90%;">72B</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r" id="A1.T5.4.2.2.4" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text" id="A1.T5.4.2.2.4.1" style="font-size:90%;">8B</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r" id="A1.T5.4.2.2.5" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text" id="A1.T5.4.2.2.5.1" style="font-size:90%;">78B</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A1.T5.4.3.1">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T5.4.3.1.1" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text" id="A1.T5.4.3.1.1.1" style="font-size:90%;">Level0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A1.T5.4.3.1.2" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text" id="A1.T5.4.3.1.2.1" style="font-size:90%;">0.53</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A1.T5.4.3.1.3" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text" id="A1.T5.4.3.1.3.1" style="font-size:90%;">0.56</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A1.T5.4.3.1.4" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text" id="A1.T5.4.3.1.4.1" style="font-size:90%;">0.61</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A1.T5.4.3.1.5" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text" id="A1.T5.4.3.1.5.1" style="font-size:90%;">0.57</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A1.T5.4.3.1.6" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text" id="A1.T5.4.3.1.6.1" style="font-size:90%;">0.71</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A1.T5.4.3.1.7" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text ltx_font_bold" id="A1.T5.4.3.1.7.1" style="font-size:90%;">0.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A1.T5.4.3.1.8" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text" id="A1.T5.4.3.1.8.1" style="font-size:90%;">0.67</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T5.4.3.1.9" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text" id="A1.T5.4.3.1.9.1" style="font-size:90%;">10</span></td>
</tr>
<tr class="ltx_tr" id="A1.T5.4.4.2">
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T5.4.4.2.1" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text" id="A1.T5.4.4.2.1.1" style="font-size:90%;">Level1</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T5.4.4.2.2" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text" id="A1.T5.4.4.2.2.1" style="font-size:90%;">0.43</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T5.4.4.2.3" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text ltx_font_bold" id="A1.T5.4.4.2.3.1" style="font-size:90%;">0.45</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T5.4.4.2.4" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text" id="A1.T5.4.4.2.4.1" style="font-size:90%;">0.33</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T5.4.4.2.5" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text" id="A1.T5.4.4.2.5.1" style="font-size:90%;">0.36</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T5.4.4.2.6" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text" id="A1.T5.4.4.2.6.1" style="font-size:90%;">0.34</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T5.4.4.2.7" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text" id="A1.T5.4.4.2.7.1" style="font-size:90%;">0.41</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T5.4.4.2.8" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text" id="A1.T5.4.4.2.8.1" style="font-size:90%;">0.43</span></td>
<td class="ltx_td ltx_align_center" id="A1.T5.4.4.2.9" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text" id="A1.T5.4.4.2.9.1" style="font-size:90%;">10</span></td>
</tr>
<tr class="ltx_tr" id="A1.T5.4.5.3">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_r" id="A1.T5.4.5.3.1" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text" id="A1.T5.4.5.3.1.1" style="font-size:90%;">Level2</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="A1.T5.4.5.3.2" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text" id="A1.T5.4.5.3.2.1" style="font-size:90%;">0.21</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="A1.T5.4.5.3.3" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text ltx_font_bold" id="A1.T5.4.5.3.3.1" style="font-size:90%;">0.35</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="A1.T5.4.5.3.4" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text" id="A1.T5.4.5.3.4.1" style="font-size:90%;">0.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="A1.T5.4.5.3.5" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text" id="A1.T5.4.5.3.5.1" style="font-size:90%;">0.22</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="A1.T5.4.5.3.6" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text" id="A1.T5.4.5.3.6.1" style="font-size:90%;">0.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="A1.T5.4.5.3.7" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text" id="A1.T5.4.5.3.7.1" style="font-size:90%;">0.17</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="A1.T5.4.5.3.8" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text" id="A1.T5.4.5.3.8.1" style="font-size:90%;">0.08</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T5.4.5.3.9" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text" id="A1.T5.4.5.3.9.1" style="font-size:90%;">10</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a performance comparison of various large language models (LLMs) on the Pong game, part of the V-MAGE benchmark.  It shows the average scores achieved by each model across different levels of difficulty in the Pong game.  The scores reflect the models' ability to successfully interact with the game's visual elements and make strategic decisions to score points. The table includes both closed-source and open-source models, and it also provides a comparison to human performance.
> <details>
> <summary>read the caption</summary>
> Table 5: Performance analysis based on average scores in Pong
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="A1.T6.4">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A1.T6.4.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="A1.T6.4.1.1.1" rowspan="2" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text" id="A1.T6.4.1.1.1.1" style="font-size:90%;">Level</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="A1.T6.4.1.1.2" rowspan="2" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text" id="A1.T6.4.1.1.2.1" style="font-size:90%;">GPT-4o</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="A1.T6.4.1.1.3" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text" id="A1.T6.4.1.1.3.1" style="font-size:90%;">Gemini</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="A1.T6.4.1.1.4" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text" id="A1.T6.4.1.1.4.1" style="font-size:90%;">Qwen2VL</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="A1.T6.4.1.1.5" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text" id="A1.T6.4.1.1.5.1" style="font-size:90%;">Qwen2VL</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="A1.T6.4.1.1.6" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text" id="A1.T6.4.1.1.6.1" style="font-size:90%;">InternVL2.5</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="A1.T6.4.1.1.7" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text" id="A1.T6.4.1.1.7.1" style="font-size:90%;">InternVL2.5</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="A1.T6.4.1.1.8" rowspan="2" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text" id="A1.T6.4.1.1.8.1" style="font-size:90%;">Random</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A1.T6.4.1.1.9" rowspan="2" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text" id="A1.T6.4.1.1.9.1" style="font-size:90%;">Human</span></th>
</tr>
<tr class="ltx_tr" id="A1.T6.4.2.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r" id="A1.T6.4.2.2.1" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text" id="A1.T6.4.2.2.1.1" style="font-size:90%;">2.0-flash-exp</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r" id="A1.T6.4.2.2.2" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text" id="A1.T6.4.2.2.2.1" style="font-size:90%;">7B</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r" id="A1.T6.4.2.2.3" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text" id="A1.T6.4.2.2.3.1" style="font-size:90%;">72B</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r" id="A1.T6.4.2.2.4" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text" id="A1.T6.4.2.2.4.1" style="font-size:90%;">8B</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r" id="A1.T6.4.2.2.5" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text" id="A1.T6.4.2.2.5.1" style="font-size:90%;">78B</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A1.T6.4.3.1">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T6.4.3.1.1" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text" id="A1.T6.4.3.1.1.1" style="font-size:90%;">Level1</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A1.T6.4.3.1.2" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text ltx_font_bold" id="A1.T6.4.3.1.2.1" style="font-size:90%;">373.43</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A1.T6.4.3.1.3" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text" id="A1.T6.4.3.1.3.1" style="font-size:90%;">112.23</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A1.T6.4.3.1.4" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text" id="A1.T6.4.3.1.4.1" style="font-size:90%;">37.75</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A1.T6.4.3.1.5" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text" id="A1.T6.4.3.1.5.1" style="font-size:90%;">219.37</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A1.T6.4.3.1.6" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text" id="A1.T6.4.3.1.6.1" style="font-size:90%;">72.44</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A1.T6.4.3.1.7" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text" id="A1.T6.4.3.1.7.1" style="font-size:90%;">205.08</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A1.T6.4.3.1.8" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text" id="A1.T6.4.3.1.8.1" style="font-size:90%;">89.79</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T6.4.3.1.9" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text" id="A1.T6.4.3.1.9.1" style="font-size:90%;">800</span></td>
</tr>
<tr class="ltx_tr" id="A1.T6.4.4.2">
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T6.4.4.2.1" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text" id="A1.T6.4.4.2.1.1" style="font-size:90%;">Level2</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T6.4.4.2.2" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text ltx_font_bold" id="A1.T6.4.4.2.2.1" style="font-size:90%;">425.47</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T6.4.4.2.3" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text" id="A1.T6.4.4.2.3.1" style="font-size:90%;">132.64</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T6.4.4.2.4" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text" id="A1.T6.4.4.2.4.1" style="font-size:90%;">105.09</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T6.4.4.2.5" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text" id="A1.T6.4.4.2.5.1" style="font-size:90%;">338.74</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T6.4.4.2.6" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text" id="A1.T6.4.4.2.6.1" style="font-size:90%;">105.09</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T6.4.4.2.7" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text" id="A1.T6.4.4.2.7.1" style="font-size:90%;">189.78</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T6.4.4.2.8" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text" id="A1.T6.4.4.2.8.1" style="font-size:90%;">97.95</span></td>
<td class="ltx_td ltx_align_center" id="A1.T6.4.4.2.9" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text" id="A1.T6.4.4.2.9.1" style="font-size:90%;">800</span></td>
</tr>
<tr class="ltx_tr" id="A1.T6.4.5.3">
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T6.4.5.3.1" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text" id="A1.T6.4.5.3.1.1" style="font-size:90%;">Level3</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T6.4.5.3.2" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text ltx_font_bold" id="A1.T6.4.5.3.2.1" style="font-size:90%;">800.98</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T6.4.5.3.3" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text" id="A1.T6.4.5.3.3.1" style="font-size:90%;">430.57</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T6.4.5.3.4" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text" id="A1.T6.4.5.3.4.1" style="font-size:90%;">190.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T6.4.5.3.5" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text" id="A1.T6.4.5.3.5.1" style="font-size:90%;">563.21</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T6.4.5.3.6" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text" id="A1.T6.4.5.3.6.1" style="font-size:90%;">288.75</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T6.4.5.3.7" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text" id="A1.T6.4.5.3.7.1" style="font-size:90%;">609.12</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T6.4.5.3.8" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text" id="A1.T6.4.5.3.8.1" style="font-size:90%;">57.14</span></td>
<td class="ltx_td ltx_align_center" id="A1.T6.4.5.3.9" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text" id="A1.T6.4.5.3.9.1" style="font-size:90%;">1000</span></td>
</tr>
<tr class="ltx_tr" id="A1.T6.4.6.4">
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T6.4.6.4.1" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text" id="A1.T6.4.6.4.1.1" style="font-size:90%;">Level4</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T6.4.6.4.2" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text" id="A1.T6.4.6.4.2.1" style="font-size:90%;">372.41</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T6.4.6.4.3" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text" id="A1.T6.4.6.4.3.1" style="font-size:90%;">255.08</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T6.4.6.4.4" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text" id="A1.T6.4.6.4.4.1" style="font-size:90%;">115.29</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T6.4.6.4.5" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text" id="A1.T6.4.6.4.5.1" style="font-size:90%;">348.94</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T6.4.6.4.6" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text" id="A1.T6.4.6.4.6.1" style="font-size:90%;">155.09</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T6.4.6.4.7" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text ltx_font_bold" id="A1.T6.4.6.4.7.1" style="font-size:90%;">448.93</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T6.4.6.4.8" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text" id="A1.T6.4.6.4.8.1" style="font-size:90%;">56.12</span></td>
<td class="ltx_td ltx_align_center" id="A1.T6.4.6.4.9" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text" id="A1.T6.4.6.4.9.1" style="font-size:90%;">1400</span></td>
</tr>
<tr class="ltx_tr" id="A1.T6.4.7.5">
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T6.4.7.5.1" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text" id="A1.T6.4.7.5.1.1" style="font-size:90%;">Level5</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T6.4.7.5.2" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text" id="A1.T6.4.7.5.2.1" style="font-size:90%;">130.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T6.4.7.5.3" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text" id="A1.T6.4.7.5.3.1" style="font-size:90%;">261.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T6.4.7.5.4" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text" id="A1.T6.4.7.5.4.1" style="font-size:90%;">234.67</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T6.4.7.5.5" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text" id="A1.T6.4.7.5.5.1" style="font-size:90%;">196.92</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T6.4.7.5.6" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text" id="A1.T6.4.7.5.6.1" style="font-size:90%;">213.24</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T6.4.7.5.7" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text ltx_font_bold" id="A1.T6.4.7.5.7.1" style="font-size:90%;">432.61</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T6.4.7.5.8" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text" id="A1.T6.4.7.5.8.1" style="font-size:90%;">380.57</span></td>
<td class="ltx_td ltx_align_center" id="A1.T6.4.7.5.9" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text" id="A1.T6.4.7.5.9.1" style="font-size:90%;">800</span></td>
</tr>
<tr class="ltx_tr" id="A1.T6.4.8.6">
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T6.4.8.6.1" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text" id="A1.T6.4.8.6.1.1" style="font-size:90%;">Level6</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T6.4.8.6.2" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text" id="A1.T6.4.8.6.2.1" style="font-size:90%;">235.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T6.4.8.6.3" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text" id="A1.T6.4.8.6.3.1" style="font-size:90%;">325.48</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T6.4.8.6.4" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text" id="A1.T6.4.8.6.4.1" style="font-size:90%;">326.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T6.4.8.6.5" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text" id="A1.T6.4.8.6.5.1" style="font-size:90%;">295.89</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T6.4.8.6.6" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text" id="A1.T6.4.8.6.6.1" style="font-size:90%;">270.38</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T6.4.8.6.7" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text" id="A1.T6.4.8.6.7.1" style="font-size:90%;">345.88</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T6.4.8.6.8" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text ltx_font_bold" id="A1.T6.4.8.6.8.1" style="font-size:90%;">471.38</span></td>
<td class="ltx_td ltx_align_center" id="A1.T6.4.8.6.9" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text" id="A1.T6.4.8.6.9.1" style="font-size:90%;">800</span></td>
</tr>
<tr class="ltx_tr" id="A1.T6.4.9.7">
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T6.4.9.7.1" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text" id="A1.T6.4.9.7.1.1" style="font-size:90%;">Level7</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T6.4.9.7.2" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text" id="A1.T6.4.9.7.2.1" style="font-size:90%;">443.85</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T6.4.9.7.3" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text ltx_font_bold" id="A1.T6.4.9.7.3.1" style="font-size:90%;">525.46</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T6.4.9.7.4" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text" id="A1.T6.4.9.7.4.1" style="font-size:90%;">164.27</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T6.4.9.7.5" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text" id="A1.T6.4.9.7.5.1" style="font-size:90%;">488.73</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T6.4.9.7.6" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text" id="A1.T6.4.9.7.6.1" style="font-size:90%;">224.47</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T6.4.9.7.7" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text" id="A1.T6.4.9.7.7.1" style="font-size:90%;">489.75</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T6.4.9.7.8" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text" id="A1.T6.4.9.7.8.1" style="font-size:90%;">271.4</span></td>
<td class="ltx_td ltx_align_center" id="A1.T6.4.9.7.9" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text" id="A1.T6.4.9.7.9.1" style="font-size:90%;">800</span></td>
</tr>
<tr class="ltx_tr" id="A1.T6.4.10.8">
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T6.4.10.8.1" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text" id="A1.T6.4.10.8.1.1" style="font-size:90%;">Level8</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T6.4.10.8.2" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text" id="A1.T6.4.10.8.2.1" style="font-size:90%;">96.93</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T6.4.10.8.3" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text ltx_font_bold" id="A1.T6.4.10.8.3.1" style="font-size:90%;">212.22</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T6.4.10.8.4" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text" id="A1.T6.4.10.8.4.1" style="font-size:90%;">56.12</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T6.4.10.8.5" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text" id="A1.T6.4.10.8.5.1" style="font-size:90%;">182.63</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T6.4.10.8.6" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text" id="A1.T6.4.10.8.6.1" style="font-size:90%;">79.58</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T6.4.10.8.7" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text" id="A1.T6.4.10.8.7.1" style="font-size:90%;">170.39</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T6.4.10.8.8" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text" id="A1.T6.4.10.8.8.1" style="font-size:90%;">71.42</span></td>
<td class="ltx_td ltx_align_center" id="A1.T6.4.10.8.9" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text" id="A1.T6.4.10.8.9.1" style="font-size:90%;">900</span></td>
</tr>
<tr class="ltx_tr" id="A1.T6.4.11.9">
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T6.4.11.9.1" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text" id="A1.T6.4.11.9.1.1" style="font-size:90%;">Level9</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T6.4.11.9.2" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text" id="A1.T6.4.11.9.2.1" style="font-size:90%;">691.77</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T6.4.11.9.3" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text" id="A1.T6.4.11.9.3.1" style="font-size:90%;">594.84</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T6.4.11.9.4" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text" id="A1.T6.4.11.9.4.1" style="font-size:90%;">170.39</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T6.4.11.9.5" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text" id="A1.T6.4.11.9.5.1" style="font-size:90%;">509.13</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T6.4.11.9.6" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text" id="A1.T6.4.11.9.6.1" style="font-size:90%;">207.12</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T6.4.11.9.7" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text ltx_font_bold" id="A1.T6.4.11.9.7.1" style="font-size:90%;">752.98</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T6.4.11.9.8" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text" id="A1.T6.4.11.9.8.1" style="font-size:90%;">333.64</span></td>
<td class="ltx_td ltx_align_center" id="A1.T6.4.11.9.9" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text" id="A1.T6.4.11.9.9.1" style="font-size:90%;">1300</span></td>
</tr>
<tr class="ltx_tr" id="A1.T6.4.12.10">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_r" id="A1.T6.4.12.10.1" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text" id="A1.T6.4.12.10.1.1" style="font-size:90%;">Level10</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="A1.T6.4.12.10.2" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text" id="A1.T6.4.12.10.2.1" style="font-size:90%;">20.41</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="A1.T6.4.12.10.3" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text ltx_font_bold" id="A1.T6.4.12.10.3.1" style="font-size:90%;">108.15</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="A1.T6.4.12.10.4" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text" id="A1.T6.4.12.10.4.1" style="font-size:90%;">13.26</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="A1.T6.4.12.10.5" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text" id="A1.T6.4.12.10.5.1" style="font-size:90%;">29.59</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="A1.T6.4.12.10.6" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text" id="A1.T6.4.12.10.6.1" style="font-size:90%;">16.32</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="A1.T6.4.12.10.7" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text" id="A1.T6.4.12.10.7.1" style="font-size:90%;">80.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="A1.T6.4.12.10.8" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text" id="A1.T6.4.12.10.8.1" style="font-size:90%;">10.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T6.4.12.10.9" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text" id="A1.T6.4.12.10.9.1" style="font-size:90%;">800</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a detailed performance analysis of various large language models (LLMs) on the Super Mario game within the V-MAGE benchmark.  It shows the average scores achieved by each model across different levels of the game, highlighting how their performance varies with increasing difficulty.  The models evaluated include both closed-source and open-source models, allowing for comparison of their capabilities on this visually-rich task.  Human performance is also included as a baseline for comparison, demonstrating the relative strengths and weaknesses of each LLM. The table provides a granular view of the models' performance, facilitating analysis of their visual reasoning and decision-making abilities in a dynamic game environment.
> <details>
> <summary>read the caption</summary>
> Table 6: Performance analysis based on average scores in Supermario
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="A1.T7.4">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A1.T7.4.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="A1.T7.4.1.1.1" rowspan="2" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text" id="A1.T7.4.1.1.1.1" style="font-size:90%;">Level</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="A1.T7.4.1.1.2" rowspan="2" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text" id="A1.T7.4.1.1.2.1" style="font-size:90%;">GPT-4o</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="A1.T7.4.1.1.3" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text" id="A1.T7.4.1.1.3.1" style="font-size:90%;">Gemini</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="A1.T7.4.1.1.4" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text" id="A1.T7.4.1.1.4.1" style="font-size:90%;">Qwen2VL</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="A1.T7.4.1.1.5" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text" id="A1.T7.4.1.1.5.1" style="font-size:90%;">Qwen2VL</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="A1.T7.4.1.1.6" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text" id="A1.T7.4.1.1.6.1" style="font-size:90%;">InternVL2.5</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="A1.T7.4.1.1.7" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text" id="A1.T7.4.1.1.7.1" style="font-size:90%;">InternVL2.5</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="A1.T7.4.1.1.8" rowspan="2" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text" id="A1.T7.4.1.1.8.1" style="font-size:90%;">Random</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A1.T7.4.1.1.9" rowspan="2" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text" id="A1.T7.4.1.1.9.1" style="font-size:90%;">Human</span></th>
</tr>
<tr class="ltx_tr" id="A1.T7.4.2.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r" id="A1.T7.4.2.2.1" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text" id="A1.T7.4.2.2.1.1" style="font-size:90%;">2.0-flash-exp</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r" id="A1.T7.4.2.2.2" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text" id="A1.T7.4.2.2.2.1" style="font-size:90%;">7B</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r" id="A1.T7.4.2.2.3" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text" id="A1.T7.4.2.2.3.1" style="font-size:90%;">72B</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r" id="A1.T7.4.2.2.4" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text" id="A1.T7.4.2.2.4.1" style="font-size:90%;">8B</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r" id="A1.T7.4.2.2.5" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text" id="A1.T7.4.2.2.5.1" style="font-size:90%;">78B</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A1.T7.4.3.1">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T7.4.3.1.1" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text" id="A1.T7.4.3.1.1.1" style="font-size:90%;">Level1</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A1.T7.4.3.1.2" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text ltx_font_bold" id="A1.T7.4.3.1.2.1" style="font-size:90%;">3.33</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A1.T7.4.3.1.3" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text" id="A1.T7.4.3.1.3.1" style="font-size:90%;">2.43</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A1.T7.4.3.1.4" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text" id="A1.T7.4.3.1.4.1" style="font-size:90%;">0.85</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A1.T7.4.3.1.5" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text" id="A1.T7.4.3.1.5.1" style="font-size:90%;">0.56</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A1.T7.4.3.1.6" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text" id="A1.T7.4.3.1.6.1" style="font-size:90%;">1.28</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A1.T7.4.3.1.7" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text" id="A1.T7.4.3.1.7.1" style="font-size:90%;">1.61</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A1.T7.4.3.1.8" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text" id="A1.T7.4.3.1.8.1" style="font-size:90%;">1.52</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T7.4.3.1.9" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text" id="A1.T7.4.3.1.9.1" style="font-size:90%;">10</span></td>
</tr>
<tr class="ltx_tr" id="A1.T7.4.4.2">
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T7.4.4.2.1" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text" id="A1.T7.4.4.2.1.1" style="font-size:90%;">Level2</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T7.4.4.2.2" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text ltx_font_bold" id="A1.T7.4.4.2.2.1" style="font-size:90%;">0.74</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T7.4.4.2.3" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text" id="A1.T7.4.4.2.3.1" style="font-size:90%;">0.52</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T7.4.4.2.4" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text" id="A1.T7.4.4.2.4.1" style="font-size:90%;">0.23</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T7.4.4.2.5" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text" id="A1.T7.4.4.2.5.1" style="font-size:90%;">0.14</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T7.4.4.2.6" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text" id="A1.T7.4.4.2.6.1" style="font-size:90%;">0.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T7.4.4.2.7" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text" id="A1.T7.4.4.2.7.1" style="font-size:90%;">0.44</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T7.4.4.2.8" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text" id="A1.T7.4.4.2.8.1" style="font-size:90%;">0.37</span></td>
<td class="ltx_td ltx_align_center" id="A1.T7.4.4.2.9" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text" id="A1.T7.4.4.2.9.1" style="font-size:90%;">10</span></td>
</tr>
<tr class="ltx_tr" id="A1.T7.4.5.3">
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T7.4.5.3.1" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text" id="A1.T7.4.5.3.1.1" style="font-size:90%;">Level3</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T7.4.5.3.2" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text ltx_font_bold" id="A1.T7.4.5.3.2.1" style="font-size:90%;">0.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T7.4.5.3.3" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text" id="A1.T7.4.5.3.3.1" style="font-size:90%;">0.45</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T7.4.5.3.4" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text" id="A1.T7.4.5.3.4.1" style="font-size:90%;">0.22</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T7.4.5.3.5" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text" id="A1.T7.4.5.3.5.1" style="font-size:90%;">0.37</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T7.4.5.3.6" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text" id="A1.T7.4.5.3.6.1" style="font-size:90%;">0.37</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T7.4.5.3.7" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text" id="A1.T7.4.5.3.7.1" style="font-size:90%;">0.46</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T7.4.5.3.8" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text" id="A1.T7.4.5.3.8.1" style="font-size:90%;">0.55</span></td>
<td class="ltx_td ltx_align_center" id="A1.T7.4.5.3.9" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text" id="A1.T7.4.5.3.9.1" style="font-size:90%;">10</span></td>
</tr>
<tr class="ltx_tr" id="A1.T7.4.6.4">
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T7.4.6.4.1" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text" id="A1.T7.4.6.4.1.1" style="font-size:90%;">Level4</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T7.4.6.4.2" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text" id="A1.T7.4.6.4.2.1" style="font-size:90%;">1.39</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T7.4.6.4.3" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text" id="A1.T7.4.6.4.3.1" style="font-size:90%;">1.55</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T7.4.6.4.4" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text ltx_font_bold" id="A1.T7.4.6.4.4.1" style="font-size:90%;">1.59</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T7.4.6.4.5" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text" id="A1.T7.4.6.4.5.1" style="font-size:90%;">0.45</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T7.4.6.4.6" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text" id="A1.T7.4.6.4.6.1" style="font-size:90%;">1.51</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T7.4.6.4.7" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text" id="A1.T7.4.6.4.7.1" style="font-size:90%;">0.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T7.4.6.4.8" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text" id="A1.T7.4.6.4.8.1" style="font-size:90%;">0.17</span></td>
<td class="ltx_td ltx_align_center" id="A1.T7.4.6.4.9" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text" id="A1.T7.4.6.4.9.1" style="font-size:90%;">10</span></td>
</tr>
<tr class="ltx_tr" id="A1.T7.4.7.5">
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T7.4.7.5.1" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text" id="A1.T7.4.7.5.1.1" style="font-size:90%;">Level5</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T7.4.7.5.2" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text ltx_font_bold" id="A1.T7.4.7.5.2.1" style="font-size:90%;">1.81</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T7.4.7.5.3" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text" id="A1.T7.4.7.5.3.1" style="font-size:90%;">1.46</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T7.4.7.5.4" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text" id="A1.T7.4.7.5.4.1" style="font-size:90%;">1.52</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T7.4.7.5.5" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text" id="A1.T7.4.7.5.5.1" style="font-size:90%;">0.56</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T7.4.7.5.6" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text" id="A1.T7.4.7.5.6.1" style="font-size:90%;">1.28</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T7.4.7.5.7" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text" id="A1.T7.4.7.5.7.1" style="font-size:90%;">0.52</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T7.4.7.5.8" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text" id="A1.T7.4.7.5.8.1" style="font-size:90%;">0.11</span></td>
<td class="ltx_td ltx_align_center" id="A1.T7.4.7.5.9" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text" id="A1.T7.4.7.5.9.1" style="font-size:90%;">10</span></td>
</tr>
<tr class="ltx_tr" id="A1.T7.4.8.6">
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T7.4.8.6.1" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text" id="A1.T7.4.8.6.1.1" style="font-size:90%;">Level6</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T7.4.8.6.2" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text ltx_font_bold" id="A1.T7.4.8.6.2.1" style="font-size:90%;">1.93</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T7.4.8.6.3" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text" id="A1.T7.4.8.6.3.1" style="font-size:90%;">1.09</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T7.4.8.6.4" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text" id="A1.T7.4.8.6.4.1" style="font-size:90%;">1.69</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T7.4.8.6.5" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text" id="A1.T7.4.8.6.5.1" style="font-size:90%;">0.61</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T7.4.8.6.6" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text" id="A1.T7.4.8.6.6.1" style="font-size:90%;">1.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T7.4.8.6.7" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text" id="A1.T7.4.8.6.7.1" style="font-size:90%;">0.71</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T7.4.8.6.8" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text" id="A1.T7.4.8.6.8.1" style="font-size:90%;">0.18</span></td>
<td class="ltx_td ltx_align_center" id="A1.T7.4.8.6.9" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text" id="A1.T7.4.8.6.9.1" style="font-size:90%;">10</span></td>
</tr>
<tr class="ltx_tr" id="A1.T7.4.9.7">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_r" id="A1.T7.4.9.7.1" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text" id="A1.T7.4.9.7.1.1" style="font-size:90%;">Level7</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="A1.T7.4.9.7.2" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text ltx_font_bold" id="A1.T7.4.9.7.2.1" style="font-size:90%;">0.64</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="A1.T7.4.9.7.3" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text" id="A1.T7.4.9.7.3.1" style="font-size:90%;">0.09</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="A1.T7.4.9.7.4" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text" id="A1.T7.4.9.7.4.1" style="font-size:90%;">0.04</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="A1.T7.4.9.7.5" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text" id="A1.T7.4.9.7.5.1" style="font-size:90%;">0.16</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="A1.T7.4.9.7.6" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text" id="A1.T7.4.9.7.6.1" style="font-size:90%;">0.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="A1.T7.4.9.7.7" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text" id="A1.T7.4.9.7.7.1" style="font-size:90%;">0.15</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="A1.T7.4.9.7.8" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text" id="A1.T7.4.9.7.8.1" style="font-size:90%;">0.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T7.4.9.7.9" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text" id="A1.T7.4.9.7.9.1" style="font-size:90%;">10</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a performance comparison of different large language models (LLMs) on the Flappy Bird game within the V-MAGE benchmark.  It shows the average scores achieved by each model across various levels of difficulty.  The models are evaluated using an Elo rating system, allowing for a dynamic comparison of performance and highlighting the relative strengths and weaknesses of each model in this specific visual-centric task.  The inclusion of a 'Random' baseline provides a point of reference for evaluating performance against chance, while the 'Human' column showcases the average human performance for comparison.
> <details>
> <summary>read the caption</summary>
> Table 7: Performance analysis based on average scores in Flappybird
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="A1.T8.4">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A1.T8.4.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="A1.T8.4.1.1.1" rowspan="2" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text" id="A1.T8.4.1.1.1.1" style="font-size:90%;">Level</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="A1.T8.4.1.1.2" rowspan="2" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text" id="A1.T8.4.1.1.2.1" style="font-size:90%;">GPT-4o</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="A1.T8.4.1.1.3" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text" id="A1.T8.4.1.1.3.1" style="font-size:90%;">Gemini</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="A1.T8.4.1.1.4" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text" id="A1.T8.4.1.1.4.1" style="font-size:90%;">Qwen2VL</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="A1.T8.4.1.1.5" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text" id="A1.T8.4.1.1.5.1" style="font-size:90%;">Qwen2VL</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="A1.T8.4.1.1.6" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text" id="A1.T8.4.1.1.6.1" style="font-size:90%;">InternVL2.5</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="A1.T8.4.1.1.7" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text" id="A1.T8.4.1.1.7.1" style="font-size:90%;">InternVL2.5</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="A1.T8.4.1.1.8" rowspan="2" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text" id="A1.T8.4.1.1.8.1" style="font-size:90%;">Random</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A1.T8.4.1.1.9" rowspan="2" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text" id="A1.T8.4.1.1.9.1" style="font-size:90%;">Human</span></th>
</tr>
<tr class="ltx_tr" id="A1.T8.4.2.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r" id="A1.T8.4.2.2.1" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text" id="A1.T8.4.2.2.1.1" style="font-size:90%;">2.0-flash-exp</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r" id="A1.T8.4.2.2.2" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text" id="A1.T8.4.2.2.2.1" style="font-size:90%;">7B</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r" id="A1.T8.4.2.2.3" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text" id="A1.T8.4.2.2.3.1" style="font-size:90%;">72B</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r" id="A1.T8.4.2.2.4" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text" id="A1.T8.4.2.2.4.1" style="font-size:90%;">8B</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r" id="A1.T8.4.2.2.5" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text" id="A1.T8.4.2.2.5.1" style="font-size:90%;">78B</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A1.T8.4.3.1">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T8.4.3.1.1" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text" id="A1.T8.4.3.1.1.1" style="font-size:90%;">Level1</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A1.T8.4.3.1.2" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text" id="A1.T8.4.3.1.2.1" style="font-size:90%;">469.66</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A1.T8.4.3.1.3" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text" id="A1.T8.4.3.1.3.1" style="font-size:90%;">482.92</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A1.T8.4.3.1.4" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text" id="A1.T8.4.3.1.4.1" style="font-size:90%;">452.62</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A1.T8.4.3.1.5" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text ltx_font_bold" id="A1.T8.4.3.1.5.1" style="font-size:90%;">525.98</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A1.T8.4.3.1.6" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text" id="A1.T8.4.3.1.6.1" style="font-size:90%;">449.75</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A1.T8.4.3.1.7" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text" id="A1.T8.4.3.1.7.1" style="font-size:90%;">479.66</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A1.T8.4.3.1.8" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text" id="A1.T8.4.3.1.8.1" style="font-size:90%;">388.54</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T8.4.3.1.9" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text" id="A1.T8.4.3.1.9.1" style="font-size:90%;">2000</span></td>
</tr>
<tr class="ltx_tr" id="A1.T8.4.4.2">
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T8.4.4.2.1" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text" id="A1.T8.4.4.2.1.1" style="font-size:90%;">Level2</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T8.4.4.2.2" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text" id="A1.T8.4.4.2.2.1" style="font-size:90%;">363.14</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T8.4.4.2.3" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text" id="A1.T8.4.4.2.3.1" style="font-size:90%;">359.36</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T8.4.4.2.4" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text" id="A1.T8.4.4.2.4.1" style="font-size:90%;">357.83</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T8.4.4.2.5" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text ltx_font_bold" id="A1.T8.4.4.2.5.1" style="font-size:90%;">374.46</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T8.4.4.2.6" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text" id="A1.T8.4.4.2.6.1" style="font-size:90%;">329.66</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T8.4.4.2.7" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text" id="A1.T8.4.4.2.7.1" style="font-size:90%;">337.73</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T8.4.4.2.8" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text" id="A1.T8.4.4.2.8.1" style="font-size:90%;">273.34</span></td>
<td class="ltx_td ltx_align_center" id="A1.T8.4.4.2.9" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text" id="A1.T8.4.4.2.9.1" style="font-size:90%;">1500</span></td>
</tr>
<tr class="ltx_tr" id="A1.T8.4.5.3">
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T8.4.5.3.1" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text" id="A1.T8.4.5.3.1.1" style="font-size:90%;">Level3</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T8.4.5.3.2" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text" id="A1.T8.4.5.3.2.1" style="font-size:90%;">214.17</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T8.4.5.3.3" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text" id="A1.T8.4.5.3.3.1" style="font-size:90%;">199.37</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T8.4.5.3.4" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text" id="A1.T8.4.5.3.4.1" style="font-size:90%;">210.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T8.4.5.3.5" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text ltx_font_bold" id="A1.T8.4.5.3.5.1" style="font-size:90%;">222.23</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T8.4.5.3.6" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text" id="A1.T8.4.5.3.6.1" style="font-size:90%;">199.47</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T8.4.5.3.7" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text" id="A1.T8.4.5.3.7.1" style="font-size:90%;">217.23</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T8.4.5.3.8" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text" id="A1.T8.4.5.3.8.1" style="font-size:90%;">191.62</span></td>
<td class="ltx_td ltx_align_center" id="A1.T8.4.5.3.9" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text" id="A1.T8.4.5.3.9.1" style="font-size:90%;">1000</span></td>
</tr>
<tr class="ltx_tr" id="A1.T8.4.6.4">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_r" id="A1.T8.4.6.4.1" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text" id="A1.T8.4.6.4.1.1" style="font-size:90%;">Level4</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="A1.T8.4.6.4.2" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text" id="A1.T8.4.6.4.2.1" style="font-size:90%;">178.76</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="A1.T8.4.6.4.3" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text ltx_font_bold" id="A1.T8.4.6.4.3.1" style="font-size:90%;">203.25</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="A1.T8.4.6.4.4" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text" id="A1.T8.4.6.4.4.1" style="font-size:90%;">184.27</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="A1.T8.4.6.4.5" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text" id="A1.T8.4.6.4.5.1" style="font-size:90%;">196.01</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="A1.T8.4.6.4.6" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text" id="A1.T8.4.6.4.6.1" style="font-size:90%;">175.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="A1.T8.4.6.4.7" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text" id="A1.T8.4.6.4.7.1" style="font-size:90%;">200.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="A1.T8.4.6.4.8" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text" id="A1.T8.4.6.4.8.1" style="font-size:90%;">157.84</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T8.4.6.4.9" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text" id="A1.T8.4.6.4.9.1" style="font-size:90%;">800</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a performance comparison of various large language models (LLMs) on the Tempest Run game within the V-MAGE benchmark.  It shows the average scores achieved by each model across different levels of the game. The scores reflect the models' success in navigating a 3D environment with obstacles, making decisions and performing actions based on visual inputs.  This allows for analysis of the models' performance in dynamic, visually rich scenarios.
> <details>
> <summary>read the caption</summary>
> Table 8: Performance analysis based on average scores in Tempestrun
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2504.06148/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.06148/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.06148/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.06148/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.06148/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.06148/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.06148/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.06148/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.06148/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.06148/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.06148/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.06148/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.06148/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.06148/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.06148/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.06148/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.06148/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.06148/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.06148/19.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.06148/20.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}