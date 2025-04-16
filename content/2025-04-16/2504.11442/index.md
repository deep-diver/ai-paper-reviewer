---
title: "TextArena"
summary: "TextArena: A competitive text-based game platform to evaluate and train LLMs on crucial social and reasoning skills."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["AI Applications", "Gaming", "🏢 Centre for Frontier AI Research (CFAR), A*STAR",]
showSummary: true
date: 2025-04-15
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2504.11442 {{< /keyword >}}
{{< keyword icon="writer" >}} Leon Guertler et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-04-16 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2504.11442" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2504.11442" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2504.11442/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Traditional benchmarks struggle to evaluate dynamic social skills in LLMs, leading to a gap in understanding capabilities like negotiation & deception. Current evaluations are also limited by human costs & biases, particularly as models approach or exceed the skill level of domain experts. This creates a need for new evaluation paradigms that are sustainable & less reliant on absolute measures of performance. 



TextArena is introduced as a comprehensive framework for evaluating LLMs through competitive gameplay in diverse text-based games. The platform facilitates both offline model development/training and online competition, with performance tracked via a real-time leaderboard. It is designed for community contribution and extensibility, aiming to create a living benchmark that evolves alongside advancing model capabilities. This approach offers a relative measure of model performance, allowing for comparison and improvement across a wide range of social and reasoning skills.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} TextArena introduces a novel environment for evaluating the 'soft skills' of language models via gameplay. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} The platform supports a diverse range of games and allows for both model-vs-model and model-vs-human competition. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} The framework facilitates reinforcement learning and provides a dynamic leaderboard for tracking model performance. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
TextArena offers a dynamic, competitive platform for evaluating LLMs in text-based games. Its broad coverage of skills and game types, combined with a leaderboard and online play, makes it invaluable for researchers seeking **nuanced model evaluations** and new RL training paradigms, fostering **collaboration** and **accelerating AI development**.

------
#### Visual Insights



![](https://arxiv.org/html/2504.11442/extracted/6360905/skill_dist.png)

> 🔼 This figure displays a radar chart comparing the performance of several frontier language models (LLMs) against human performance across ten key soft skills.  Each axis represents a skill (Logical Reasoning, Memory Recall, Bluffing, Theory of Mind, Pattern Recognition, Spatial Thinking, Strategic Planning, Adaptability, Persuasion, and Uncertainty Estimation).  The length of each spoke indicates the relative proficiency of each model or humans in that particular skill.  The chart normalizes each skill separately making the relative comparisons easier. The full data with numerical scores is available on the leaderboard link provided in the paper.
> <details>
> <summary>read the caption</summary>
> Figure 1: TextArena Soft-skill comparison. Frontier models and Humanity are compared across ten key skills. Each skill is normalised separately for presentation; see the leaderboard for full data.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S5.T1.1.1">
<tr class="ltx_tr" id="S5.T1.1.1.1">
<td class="ltx_td ltx_align_left ltx_border_tt" id="S5.T1.1.1.1.1" rowspan="2"><span class="ltx_text ltx_font_bold" id="S5.T1.1.1.1.1.1">Benchmark/Study</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" colspan="3" id="S5.T1.1.1.1.2"><span class="ltx_text ltx_font_bold" id="S5.T1.1.1.1.2.1">Number of Environments</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T1.1.1.1.3" rowspan="2"><span class="ltx_text ltx_font_bold" id="S5.T1.1.1.1.3.1">Gym-Compatible API</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T1.1.1.1.4" rowspan="2"><span class="ltx_text ltx_font_bold" id="S5.T1.1.1.1.4.1">Online Evaluation</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T1.1.1.1.5" rowspan="2"><span class="ltx_text ltx_font_bold" id="S5.T1.1.1.1.5.1">Model vs Model</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T1.1.1.1.6" rowspan="2"><span class="ltx_text ltx_font_bold" id="S5.T1.1.1.1.6.1">Model vs Human</span></td>
</tr>
<tr class="ltx_tr" id="S5.T1.1.1.2">
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.1.1.2.1"><span class="ltx_text ltx_font_bold" id="S5.T1.1.1.2.1.1">Single-Player</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.1.1.2.2"><span class="ltx_text ltx_font_bold" id="S5.T1.1.1.2.2.1">Two-Player</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T1.1.1.2.3"><span class="ltx_text ltx_font_bold" id="S5.T1.1.1.2.3.1">Multi-Player</span></td>
</tr>
<tr class="ltx_tr" id="S5.T1.1.1.3">
<td class="ltx_td ltx_align_left ltx_border_t" id="S5.T1.1.1.3.1">
<span class="ltx_text ltx_font_bold" id="S5.T1.1.1.3.1.1">Clembench</span> <cite class="ltx_cite ltx_citemacro_citep">(Chalamalasetti et al., <a class="ltx_ref" href="https://arxiv.org/html/2504.11442v1#bib.bib4" title="">2023</a>)</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.1.1.3.2">0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.1.1.3.3">5</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T1.1.1.3.4">0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.1.1.3.5"><span class="ltx_text" id="S5.T1.1.1.3.5.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.1.1.3.6"><span class="ltx_text" id="S5.T1.1.1.3.6.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.1.1.3.7"><span class="ltx_text" id="S5.T1.1.1.3.7.1" style="color:#00FF00;">✓</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.1.1.3.8"><span class="ltx_text" id="S5.T1.1.1.3.8.1" style="color:#FF0000;">✗</span></td>
</tr>
<tr class="ltx_tr" id="S5.T1.1.1.4">
<td class="ltx_td ltx_align_left" id="S5.T1.1.1.4.1">
<span class="ltx_text ltx_font_bold" id="S5.T1.1.1.4.1.1">LMRL-Gym</span> <cite class="ltx_cite ltx_citemacro_citep">(Abdulhai et al., <a class="ltx_ref" href="https://arxiv.org/html/2504.11442v1#bib.bib1" title="">2023</a>)</cite>
</td>
<td class="ltx_td ltx_align_center" id="S5.T1.1.1.4.2">5</td>
<td class="ltx_td ltx_align_center" id="S5.T1.1.1.4.3">3</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T1.1.1.4.4">0</td>
<td class="ltx_td ltx_align_center" id="S5.T1.1.1.4.5"><span class="ltx_text" id="S5.T1.1.1.4.5.1" style="color:#00FF00;">✓</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.1.1.4.6"><span class="ltx_text" id="S5.T1.1.1.4.6.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.1.1.4.7"><span class="ltx_text" id="S5.T1.1.1.4.7.1" style="color:#00FF00;">✓</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.1.1.4.8"><span class="ltx_text" id="S5.T1.1.1.4.8.1" style="color:#FF0000;">✗</span></td>
</tr>
<tr class="ltx_tr" id="S5.T1.1.1.5">
<td class="ltx_td ltx_align_left" id="S5.T1.1.1.5.1">
<span class="ltx_text ltx_font_bold" id="S5.T1.1.1.5.1.1">GameBench</span> <cite class="ltx_cite ltx_citemacro_citep">(Costarelli et al., <a class="ltx_ref" href="https://arxiv.org/html/2504.11442v1#bib.bib8" title="">2024</a>)</cite>
</td>
<td class="ltx_td ltx_align_center" id="S5.T1.1.1.5.2">0</td>
<td class="ltx_td ltx_align_center" id="S5.T1.1.1.5.3">3</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T1.1.1.5.4">6</td>
<td class="ltx_td ltx_align_center" id="S5.T1.1.1.5.5"><span class="ltx_text" id="S5.T1.1.1.5.5.1" style="color:#00FF00;">✓</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.1.1.5.6"><span class="ltx_text" id="S5.T1.1.1.5.6.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.1.1.5.7"><span class="ltx_text" id="S5.T1.1.1.5.7.1" style="color:#00FF00;">✓</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.1.1.5.8"><span class="ltx_text" id="S5.T1.1.1.5.8.1" style="color:#00FF00;">✓</span></td>
</tr>
<tr class="ltx_tr" id="S5.T1.1.1.6">
<td class="ltx_td ltx_align_left" id="S5.T1.1.1.6.1">
<span class="ltx_text ltx_font_bold" id="S5.T1.1.1.6.1.1">Game-theoretic LLM</span> <cite class="ltx_cite ltx_citemacro_citep">(Hua et al., <a class="ltx_ref" href="https://arxiv.org/html/2504.11442v1#bib.bib16" title="">2024</a>)</cite>
</td>
<td class="ltx_td ltx_align_center" id="S5.T1.1.1.6.2">0</td>
<td class="ltx_td ltx_align_center" id="S5.T1.1.1.6.3">11</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T1.1.1.6.4">0</td>
<td class="ltx_td ltx_align_center" id="S5.T1.1.1.6.5"><span class="ltx_text" id="S5.T1.1.1.6.5.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.1.1.6.6"><span class="ltx_text" id="S5.T1.1.1.6.6.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.1.1.6.7"><span class="ltx_text" id="S5.T1.1.1.6.7.1" style="color:#00FF00;">✓</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.1.1.6.8"><span class="ltx_text" id="S5.T1.1.1.6.8.1" style="color:#FF0000;">✗</span></td>
</tr>
<tr class="ltx_tr" id="S5.T1.1.1.7">
<td class="ltx_td ltx_align_left" id="S5.T1.1.1.7.1">
<span class="ltx_text ltx_font_bold" id="S5.T1.1.1.7.1.1">LAMEN</span> <cite class="ltx_cite ltx_citemacro_citep">(Davidson et al., <a class="ltx_ref" href="https://arxiv.org/html/2504.11442v1#bib.bib9" title="">2024</a>)</cite>
</td>
<td class="ltx_td ltx_align_center" id="S5.T1.1.1.7.2">0</td>
<td class="ltx_td ltx_align_center" id="S5.T1.1.1.7.3">6</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T1.1.1.7.4">0</td>
<td class="ltx_td ltx_align_center" id="S5.T1.1.1.7.5"><span class="ltx_text" id="S5.T1.1.1.7.5.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.1.1.7.6"><span class="ltx_text" id="S5.T1.1.1.7.6.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.1.1.7.7"><span class="ltx_text" id="S5.T1.1.1.7.7.1" style="color:#00FF00;">✓</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.1.1.7.8"><span class="ltx_text" id="S5.T1.1.1.7.8.1" style="color:#FF0000;">✗</span></td>
</tr>
<tr class="ltx_tr" id="S5.T1.1.1.8">
<td class="ltx_td ltx_align_left" id="S5.T1.1.1.8.1">
<span class="ltx_text ltx_font_bold" id="S5.T1.1.1.8.1.1">GTBench</span> <cite class="ltx_cite ltx_citemacro_citep">(Duan et al., <a class="ltx_ref" href="https://arxiv.org/html/2504.11442v1#bib.bib11" title="">2024</a>)</cite>
</td>
<td class="ltx_td ltx_align_center" id="S5.T1.1.1.8.2">0</td>
<td class="ltx_td ltx_align_center" id="S5.T1.1.1.8.3">10</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T1.1.1.8.4">0</td>
<td class="ltx_td ltx_align_center" id="S5.T1.1.1.8.5"><span class="ltx_text" id="S5.T1.1.1.8.5.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.1.1.8.6"><span class="ltx_text" id="S5.T1.1.1.8.6.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.1.1.8.7"><span class="ltx_text" id="S5.T1.1.1.8.7.1" style="color:#00FF00;">✓</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.1.1.8.8"><span class="ltx_text" id="S5.T1.1.1.8.8.1" style="color:#FF0000;">✗</span></td>
</tr>
<tr class="ltx_tr" id="S5.T1.1.1.9">
<td class="ltx_td ltx_align_left" id="S5.T1.1.1.9.1">
<span class="ltx_text ltx_font_bold" id="S5.T1.1.1.9.1.1">GameArena</span> <cite class="ltx_cite ltx_citemacro_citep">(Hu et al., <a class="ltx_ref" href="https://arxiv.org/html/2504.11442v1#bib.bib15" title="">2024</a>)</cite>
</td>
<td class="ltx_td ltx_align_center" id="S5.T1.1.1.9.2">0</td>
<td class="ltx_td ltx_align_center" id="S5.T1.1.1.9.3">3</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T1.1.1.9.4">0</td>
<td class="ltx_td ltx_align_center" id="S5.T1.1.1.9.5"><span class="ltx_text" id="S5.T1.1.1.9.5.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.1.1.9.6"><span class="ltx_text" id="S5.T1.1.1.9.6.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.1.1.9.7"><span class="ltx_text" id="S5.T1.1.1.9.7.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.1.1.9.8"><span class="ltx_text" id="S5.T1.1.1.9.8.1" style="color:#00FF00;">✓</span></td>
</tr>
<tr class="ltx_tr" id="S5.T1.1.1.10">
<td class="ltx_td ltx_align_left" id="S5.T1.1.1.10.1">
<span class="ltx_text ltx_font_bold" id="S5.T1.1.1.10.1.1">SPIN-Bench</span> <cite class="ltx_cite ltx_citemacro_citep">(Yao et al., <a class="ltx_ref" href="https://arxiv.org/html/2504.11442v1#bib.bib22" title="">2025</a>)</cite>
</td>
<td class="ltx_td ltx_align_center" id="S5.T1.1.1.10.2">1</td>
<td class="ltx_td ltx_align_center" id="S5.T1.1.1.10.3">3</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T1.1.1.10.4">2</td>
<td class="ltx_td ltx_align_center" id="S5.T1.1.1.10.5"><span class="ltx_text" id="S5.T1.1.1.10.5.1" style="color:#00FF00;">✓</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.1.1.10.6"><span class="ltx_text" id="S5.T1.1.1.10.6.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.1.1.10.7"><span class="ltx_text" id="S5.T1.1.1.10.7.1" style="color:#00FF00;">✓</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.1.1.10.8"><span class="ltx_text" id="S5.T1.1.1.10.8.1" style="color:#FF0000;">✗</span></td>
</tr>
<tr class="ltx_tr" id="S5.T1.1.1.11">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_t" id="S5.T1.1.1.11.1"><span class="ltx_text ltx_font_bold" id="S5.T1.1.1.11.1.1">TextArena (Ours)</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S5.T1.1.1.11.2">16</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S5.T1.1.1.11.3">47</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r ltx_border_t" id="S5.T1.1.1.11.4">11</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S5.T1.1.1.11.5"><span class="ltx_text" id="S5.T1.1.1.11.5.1" style="color:#00FF00;">✓</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S5.T1.1.1.11.6"><span class="ltx_text" id="S5.T1.1.1.11.6.1" style="color:#00FF00;">✓</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S5.T1.1.1.11.7"><span class="ltx_text" id="S5.T1.1.1.11.7.1" style="color:#00FF00;">✓</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S5.T1.1.1.11.8"><span class="ltx_text" id="S5.T1.1.1.11.8.1" style="color:#00FF00;">✓</span></td>
</tr>
</table>{{< /table-caption >}}

> 🔼 This table compares several recent benchmarks for evaluating large language models (LLMs) in game-based scenarios.  It details the number of single-player, two-player, and multi-player game environments each benchmark supports.  Furthermore, it indicates whether each benchmark offers a Gym-compatible API for easier integration with reinforcement learning frameworks, provides online evaluation capabilities (allowing for model comparison in real-time), and supports both model-versus-model and model-versus-human testing.
> <details>
> <summary>read the caption</summary>
> Table 1: Comparison of recent benchmarks for evaluating large language models (LLMs) in game-based interaction scenarios. The table summarizes the number of supported environments (Single-Player, Two-Player, Multi-Player), Gym-compatible API availability, online evaluation support, and capabilities for model-vs-model and model-vs-human interaction.
> </details>





### In-depth insights


#### Dynamic LLM Eval
**Dynamic LLM evaluation** represents a crucial advancement beyond static benchmarks. It emphasizes evaluating LLMs in **interactive environments**, where the LLM's actions influence subsequent states and outcomes. This approach is vital for assessing capabilities like **long-term planning, adaptability, and strategic reasoning**, which are difficult to measure in static settings. Furthermore, dynamic evaluations facilitate the assessment of LLMs' **social intelligence**, encompassing skills such as negotiation, deception detection, and theory of mind. These social skills are crucial for real-world applications where LLMs interact with humans or other agents. The use of game-playing environments offers a structured yet flexible framework for dynamic evaluation, providing clear metrics and allowing for diverse scenarios. By engaging in repeated interactions, LLMs can **learn and refine their strategies**, offering insights into their learning capabilities. Moreover, it supports **real-time performance tracking** and **comparative analysis**, fostering a competitive environment that drives innovation and improvements in LLM performance.

#### Text-Game Bench
**Text-Game Bench** as a concept is interesting because it likely refers to a benchmark designed to evaluate AI agents within text-based game environments. This contrasts with traditional benchmarks that focus on static datasets. It suggests a dynamic evaluation where agents interact with a system, requiring reasoning, planning, and natural language processing. The value of a text-game bench lies in its ability to assess an agent's adaptability, strategic thinking, and comprehension of complex instructions. Designing such a benchmark requires careful consideration of game selection, difficulty scaling, and evaluation metrics to ensure it's comprehensive and fair. The benchmark may incorporate various game genres, testing different skills like logic, spatial reasoning, and theory of mind. A good Text-Game Bench should also be extensible, allowing new games to be added and new capabilities to be tested, ensuring its relevance.

#### Skill Profiling
Skill profiling, as envisioned in the context of AI agent evaluation, represents a paradigm shift from aggregate performance metrics to granular competency assessments. Instead of merely assigning a single score, this approach seeks to dissect an agent's capabilities across a spectrum of cognitive and strategic skills. **This profiling helps pinpoint strengths and weaknesses, offering actionable insights for model refinement.** The emphasis on skills such as theory of mind, logical reasoning, and spatial thinking highlights a move beyond traditional benchmarks that often prioritize rote memorization or pattern recognition. By dissecting performance across such skills, stakeholders can obtain a nuanced understanding of a model's capabilities, paving the way for targeted improvements and development of specialized AI agents. Moreover, the dynamic tracking of these profiles enables observation of how model strengths shift during training or through interaction with diverse environments. This also promotes transparency, making it possible to understand the factors influencing success or failure in different settings. 

#### RL Data Source
**TextArena presents a novel approach by suggesting RL training of language models using game environments as a 'data source'.** This is a significant shift from traditional static datasets. The dynamic and interactive nature of games allows for training models that can reason, strategize, and adapt in real-time. **This approach could lead to more robust and versatile AI agents.** RL training in TextArena leverages self-play to create a dynamic curriculum, enhancing soft skills like planning and negotiation, which are often lacking in models trained on static data.  The near-infinite training data from self-play addresses challenges in acquiring suitable data for RL. The diverse game environments ensures generalizability, preventing overfitting to specific scenarios. **This methodology allows for nuanced training, potentially leading to breakthroughs in AI reasoning and decision-making.**

#### Community Focus
A **community focus** in AI research, particularly in areas like game-playing environments, is crucial for several reasons. Firstly, it promotes **collaboration and knowledge sharing** among researchers. By creating a shared platform or benchmark, like TextArena, the community can collectively advance the field. Secondly, it ensures **broader participation** and diverse perspectives, leading to more robust and generalizable solutions. A community-driven approach also fosters **transparency and reproducibility**, which are essential for building trust and accelerating scientific progress. Lastly, it facilitates **continuous improvement** through feedback and contributions from a wider audience. Therefore, a community focus in AI research is vital for innovation, inclusivity, and the responsible development of AI technologies, for example, by **inviting researchers and enthusiasts to contribute** by collaborating on research, adding games, testing models and playing against LLMs.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2504.11442/extracted/6360905/prelim_results.png)

> 🔼 This figure displays the preliminary rankings of several large language models (LLMs) across a selection of TextArena games.  The ranking is determined by the models' performance in gameplay, but this performance is influenced by two factors: the model's inherent ability to play the specific game and its understanding of the game's rules. The figure highlights how even models strong in reasoning may sometimes inadvertently reveal information about their strategy (like showing their hand in a card game), impacting their final score.
> <details>
> <summary>read the caption</summary>
> Figure 2: Preliminary model rankings for a subset of models and games. Game-play results are influenced by both the models’ ability to play the games and their ability to understand the rules and format. For example, some reasoning models can sometimes reveal their cards or roles during game-play.
> </details>



![](https://arxiv.org/html/2504.11442/extracted/6360905/TextArenaRender.jpg)

> 🔼 Figure 3 showcases example screenshots of various game environments available within TextArena.  These environments are designed to test a wide range of cognitive and social skills in large language models, encompassing diverse gameplay mechanics and visual styles. The images represent a small subset of the total environments in TextArena, highlighting the variety of game types and interfaces.
> <details>
> <summary>read the caption</summary>
> Figure 3: Images of some (rendered) TextArena environments.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="A1.T2.24.24">
<tr class="ltx_tr" id="A1.T2.24.24.25">
<td class="ltx_td ltx_align_left ltx_border_tt" id="A1.T2.24.24.25.1"><span class="ltx_text ltx_font_bold" id="A1.T2.24.24.25.1.1">Game Name</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A1.T2.24.24.25.2"><span class="ltx_text ltx_font_bold" id="A1.T2.24.24.25.2.1">Players</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A1.T2.24.24.25.3">
<div class="ltx_inline-block ltx_transformed_outer" id="A1.T2.24.24.25.3.1" style="width:22.5pt;height:22.5pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:25.0pt;transform:translate(-1.25pt,-7.85pt) rotate(-45deg) ;">
<p class="ltx_p" id="A1.T2.24.24.25.3.1.1">Strat.</p>
</span></div>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A1.T2.24.24.25.4">
<div class="ltx_inline-block ltx_transformed_outer" id="A1.T2.24.24.25.4.1" style="width:27.9pt;height:27.9pt;vertical-align:-1.4pt;"><span class="ltx_transformed_inner" style="width:30.6pt;transform:translate(-1.33pt,-7.15pt) rotate(-45deg) ;">
<p class="ltx_p" id="A1.T2.24.24.25.4.1.1">Spatial</p>
</span></div>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A1.T2.24.24.25.5">
<div class="ltx_inline-block ltx_transformed_outer" id="A1.T2.24.24.25.5.1" style="width:28.3pt;height:28.3pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:33.2pt;transform:translate(-2.45pt,-10.75pt) rotate(-45deg) ;">
<p class="ltx_p" id="A1.T2.24.24.25.5.1.1">Pattern</p>
</span></div>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A1.T2.24.24.25.6">
<div class="ltx_inline-block ltx_transformed_outer" id="A1.T2.24.24.25.6.1" style="width:19.4pt;height:19.4pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:20.6pt;transform:translate(-0.59pt,-6.27pt) rotate(-45deg) ;">
<p class="ltx_p" id="A1.T2.24.24.25.6.1.1">ToM</p>
</span></div>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A1.T2.24.24.25.7">
<div class="ltx_inline-block ltx_transformed_outer" id="A1.T2.24.24.25.7.1" style="width:22.8pt;height:22.8pt;vertical-align:-1.4pt;"><span class="ltx_transformed_inner" style="width:23.5pt;transform:translate(-0.33pt,-4.67pt) rotate(-45deg) ;">
<p class="ltx_p" id="A1.T2.24.24.25.7.1.1">Logic</p>
</span></div>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A1.T2.24.24.25.8">
<div class="ltx_inline-block ltx_transformed_outer" id="A1.T2.24.24.25.8.1" style="width:22.3pt;height:22.3pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:24.7pt;transform:translate(-1.2pt,-7.74pt) rotate(-45deg) ;">
<p class="ltx_p" id="A1.T2.24.24.25.8.1.1">Mem.</p>
</span></div>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A1.T2.24.24.25.9">
<div class="ltx_inline-block ltx_transformed_outer" id="A1.T2.24.24.25.9.1" style="width:20.1pt;height:20.1pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:21.5pt;transform:translate(-0.7pt,-6.59pt) rotate(-45deg) ;">
<p class="ltx_p" id="A1.T2.24.24.25.9.1.1">Bluff</p>
</span></div>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A1.T2.24.24.25.10">
<div class="ltx_inline-block ltx_transformed_outer" id="A1.T2.24.24.25.10.1" style="width:20.1pt;height:20.1pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:21.6pt;transform:translate(-0.75pt,-6.64pt) rotate(-45deg) ;">
<p class="ltx_p" id="A1.T2.24.24.25.10.1.1">Pers.</p>
</span></div>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A1.T2.24.24.25.11">
<div class="ltx_inline-block ltx_transformed_outer" id="A1.T2.24.24.25.11.1" style="width:27.8pt;height:27.8pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:32.5pt;transform:translate(-2.35pt,-10.5pt) rotate(-45deg) ;">
<p class="ltx_p" id="A1.T2.24.24.25.11.1.1">Uncert.</p>
</span></div>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A1.T2.24.24.25.12">
<div class="ltx_inline-block ltx_transformed_outer" id="A1.T2.24.24.25.12.1" style="width:27.7pt;height:27.7pt;vertical-align:-1.4pt;"><span class="ltx_transformed_inner" style="width:30.3pt;transform:translate(-1.29pt,-7.06pt) rotate(-45deg) ;">
<p class="ltx_p" id="A1.T2.24.24.25.12.1.1">Adapt.</p>
</span></div>
</td>
</tr>
<tr class="ltx_tr" id="A1.T2.1.1.1">
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T2.1.1.1.1">CarPuzzle<sup class="ltx_sup" id="A1.T2.1.1.1.1.1"><span class="ltx_text ltx_font_italic" id="A1.T2.1.1.1.1.1.1">∗</span></sup>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T2.1.1.1.2">1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T2.1.1.1.3">❍</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T2.1.1.1.4">⚫</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T2.1.1.1.5">⚫</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T2.1.1.1.6">❍</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T2.1.1.1.7">⚫</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T2.1.1.1.8">❍</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T2.1.1.1.9">❍</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T2.1.1.1.10">❍</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T2.1.1.1.11">❍</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T2.1.1.1.12">❍</td>
</tr>
<tr class="ltx_tr" id="A1.T2.24.24.26">
<td class="ltx_td ltx_align_left" id="A1.T2.24.24.26.1">Crosswords</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.26.2">1</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.26.3">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.26.4">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.26.5">⚫</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.26.6">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.26.7">⚫</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.26.8">⚫</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.26.9">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.26.10">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.26.11">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.26.12">❍</td>
</tr>
<tr class="ltx_tr" id="A1.T2.24.24.27">
<td class="ltx_td ltx_align_left" id="A1.T2.24.24.27.1">FifteenPuzzle</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.27.2">1</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.27.3">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.27.4">⚫</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.27.5">⚫</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.27.6">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.27.7">⚫</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.27.8">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.27.9">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.27.10">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.27.11">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.27.12">❍</td>
</tr>
<tr class="ltx_tr" id="A1.T2.24.24.28">
<td class="ltx_td ltx_align_left" id="A1.T2.24.24.28.1">GuessTheNumber</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.28.2">1</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.28.3">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.28.4">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.28.5">⚫</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.28.6">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.28.7">⚫</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.28.8">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.28.9">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.28.10">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.28.11">⚫</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.28.12">❍</td>
</tr>
<tr class="ltx_tr" id="A1.T2.24.24.29">
<td class="ltx_td ltx_align_left" id="A1.T2.24.24.29.1">GuessWho</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.29.2">1</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.29.3">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.29.4">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.29.5">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.29.6">⚫</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.29.7">⚫</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.29.8">⚫</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.29.9">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.29.10">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.29.11">⚫</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.29.12">⚫</td>
</tr>
<tr class="ltx_tr" id="A1.T2.24.24.30">
<td class="ltx_td ltx_align_left" id="A1.T2.24.24.30.1">Hangman</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.30.2">1</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.30.3">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.30.4">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.30.5">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.30.6">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.30.7">⚫</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.30.8">⚫</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.30.9">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.30.10">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.30.11">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.30.12">⚫</td>
</tr>
<tr class="ltx_tr" id="A1.T2.24.24.31">
<td class="ltx_td ltx_align_left" id="A1.T2.24.24.31.1">LogicPuzzle</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.31.2">1</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.31.3">⚫</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.31.4">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.31.5">⚫</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.31.6">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.31.7">⚫</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.31.8">⚫</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.31.9">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.31.10">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.31.11">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.31.12">⚫</td>
</tr>
<tr class="ltx_tr" id="A1.T2.24.24.32">
<td class="ltx_td ltx_align_left" id="A1.T2.24.24.32.1">Mastermind</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.32.2">1</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.32.3">⚫</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.32.4">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.32.5">⚫</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.32.6">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.32.7">⚫</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.32.8">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.32.9">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.32.10">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.32.11">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.32.12">❍</td>
</tr>
<tr class="ltx_tr" id="A1.T2.2.2.2">
<td class="ltx_td ltx_align_left" id="A1.T2.2.2.2.1">MathProof<sup class="ltx_sup" id="A1.T2.2.2.2.1.1"><span class="ltx_text ltx_font_italic" id="A1.T2.2.2.2.1.1.1">∗</span></sup>
</td>
<td class="ltx_td ltx_align_center" id="A1.T2.2.2.2.2">1</td>
<td class="ltx_td ltx_align_center" id="A1.T2.2.2.2.3">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T2.2.2.2.4">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T2.2.2.2.5">⚫</td>
<td class="ltx_td ltx_align_center" id="A1.T2.2.2.2.6">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T2.2.2.2.7">⚫</td>
<td class="ltx_td ltx_align_center" id="A1.T2.2.2.2.8">⚫</td>
<td class="ltx_td ltx_align_center" id="A1.T2.2.2.2.9">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T2.2.2.2.10">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T2.2.2.2.11">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T2.2.2.2.12">❍</td>
</tr>
<tr class="ltx_tr" id="A1.T2.24.24.33">
<td class="ltx_td ltx_align_left" id="A1.T2.24.24.33.1">Minesweeper</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.33.2">1</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.33.3">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.33.4">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.33.5">⚫</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.33.6">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.33.7">⚫</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.33.8">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.33.9">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.33.10">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.33.11">⚫</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.33.12">❍</td>
</tr>
<tr class="ltx_tr" id="A1.T2.24.24.34">
<td class="ltx_td ltx_align_left" id="A1.T2.24.24.34.1">Sudoku</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.34.2">1</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.34.3">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.34.4">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.34.5">⚫</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.34.6">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.34.7">⚫</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.34.8">⚫</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.34.9">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.34.10">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.34.11">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.34.12">❍</td>
</tr>
<tr class="ltx_tr" id="A1.T2.24.24.35">
<td class="ltx_td ltx_align_left" id="A1.T2.24.24.35.1">TowerOfHanoi</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.35.2">1</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.35.3">⚫</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.35.4">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.35.5">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.35.6">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.35.7">⚫</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.35.8">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.35.9">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.35.10">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.35.11">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.35.12">❍</td>
</tr>
<tr class="ltx_tr" id="A1.T2.24.24.36">
<td class="ltx_td ltx_align_left" id="A1.T2.24.24.36.1">TwentyQuestions</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.36.2">1</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.36.3">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.36.4">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.36.5">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.36.6">⚫</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.36.7">⚫</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.36.8">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.36.9">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.36.10">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.36.11">⚫</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.36.12">❍</td>
</tr>
<tr class="ltx_tr" id="A1.T2.24.24.37">
<td class="ltx_td ltx_align_left" id="A1.T2.24.24.37.1">WordLadder</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.37.2">1</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.37.3">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.37.4">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.37.5">⚫</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.37.6">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.37.7">⚫</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.37.8">⚫</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.37.9">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.37.10">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.37.11">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.37.12">❍</td>
</tr>
<tr class="ltx_tr" id="A1.T2.24.24.38">
<td class="ltx_td ltx_align_left" id="A1.T2.24.24.38.1">WordSearch</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.38.2">1</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.38.3">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.38.4">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.38.5">⚫</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.38.6">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.38.7">⚫</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.38.8">⚫</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.38.9">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.38.10">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.38.11">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.38.12">❍</td>
</tr>
<tr class="ltx_tr" id="A1.T2.24.24.39">
<td class="ltx_td ltx_align_left" id="A1.T2.24.24.39.1">Wordle</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.39.2">1</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.39.3">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.39.4">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.39.5">⚫</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.39.6">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.39.7">⚫</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.39.8">⚫</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.39.9">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.39.10">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.39.11">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.39.12">❍</td>
</tr>
<tr class="ltx_tr" id="A1.T2.3.3.3">
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T2.3.3.3.1">AirLandAndSea<math alttext="{}^{\text{\textdagger,*}}" class="ltx_Math" display="inline" id="A1.T2.3.3.3.1.m1.1"><semantics id="A1.T2.3.3.3.1.m1.1a"><msup id="A1.T2.3.3.3.1.m1.1.1" xref="A1.T2.3.3.3.1.m1.1.1.cmml"><mi id="A1.T2.3.3.3.1.m1.1.1a" xref="A1.T2.3.3.3.1.m1.1.1.cmml"></mi><mtext id="A1.T2.3.3.3.1.m1.1.1.1" xref="A1.T2.3.3.3.1.m1.1.1.1a.cmml">†,*</mtext></msup><annotation-xml encoding="MathML-Content" id="A1.T2.3.3.3.1.m1.1b"><apply id="A1.T2.3.3.3.1.m1.1.1.cmml" xref="A1.T2.3.3.3.1.m1.1.1"><ci id="A1.T2.3.3.3.1.m1.1.1.1a.cmml" xref="A1.T2.3.3.3.1.m1.1.1.1"><mtext id="A1.T2.3.3.3.1.m1.1.1.1.cmml" mathsize="70%" xref="A1.T2.3.3.3.1.m1.1.1.1">†,*</mtext></ci></apply></annotation-xml><annotation encoding="application/x-tex" id="A1.T2.3.3.3.1.m1.1c">{}^{\text{\textdagger,*}}</annotation><annotation encoding="application/x-llamapun" id="A1.T2.3.3.3.1.m1.1d">start_FLOATSUPERSCRIPT †,* end_FLOATSUPERSCRIPT</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T2.3.3.3.2">2</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T2.3.3.3.3">⚫</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T2.3.3.3.4">❍</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T2.3.3.3.5">❍</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T2.3.3.3.6">⚫</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T2.3.3.3.7">⚫</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T2.3.3.3.8">❍</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T2.3.3.3.9">❍</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T2.3.3.3.10">❍</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T2.3.3.3.11">⚫</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T2.3.3.3.12">⚫</td>
</tr>
<tr class="ltx_tr" id="A1.T2.4.4.4">
<td class="ltx_td ltx_align_left" id="A1.T2.4.4.4.1">BattleOfSexes<math alttext="{}^{\text{\textdagger,*}}" class="ltx_Math" display="inline" id="A1.T2.4.4.4.1.m1.1"><semantics id="A1.T2.4.4.4.1.m1.1a"><msup id="A1.T2.4.4.4.1.m1.1.1" xref="A1.T2.4.4.4.1.m1.1.1.cmml"><mi id="A1.T2.4.4.4.1.m1.1.1a" xref="A1.T2.4.4.4.1.m1.1.1.cmml"></mi><mtext id="A1.T2.4.4.4.1.m1.1.1.1" xref="A1.T2.4.4.4.1.m1.1.1.1a.cmml">†,*</mtext></msup><annotation-xml encoding="MathML-Content" id="A1.T2.4.4.4.1.m1.1b"><apply id="A1.T2.4.4.4.1.m1.1.1.cmml" xref="A1.T2.4.4.4.1.m1.1.1"><ci id="A1.T2.4.4.4.1.m1.1.1.1a.cmml" xref="A1.T2.4.4.4.1.m1.1.1.1"><mtext id="A1.T2.4.4.4.1.m1.1.1.1.cmml" mathsize="70%" xref="A1.T2.4.4.4.1.m1.1.1.1">†,*</mtext></ci></apply></annotation-xml><annotation encoding="application/x-tex" id="A1.T2.4.4.4.1.m1.1c">{}^{\text{\textdagger,*}}</annotation><annotation encoding="application/x-llamapun" id="A1.T2.4.4.4.1.m1.1d">start_FLOATSUPERSCRIPT †,* end_FLOATSUPERSCRIPT</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center" id="A1.T2.4.4.4.2">2</td>
<td class="ltx_td ltx_align_center" id="A1.T2.4.4.4.3">⚫</td>
<td class="ltx_td ltx_align_center" id="A1.T2.4.4.4.4">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T2.4.4.4.5">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T2.4.4.4.6">⚫</td>
<td class="ltx_td ltx_align_center" id="A1.T2.4.4.4.7">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T2.4.4.4.8">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T2.4.4.4.9">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T2.4.4.4.10">⚫</td>
<td class="ltx_td ltx_align_center" id="A1.T2.4.4.4.11">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T2.4.4.4.12">❍</td>
</tr>
<tr class="ltx_tr" id="A1.T2.24.24.40">
<td class="ltx_td ltx_align_left" id="A1.T2.24.24.40.1">Battleship</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.40.2">2</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.40.3">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.40.4">⚫</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.40.5">⚫</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.40.6">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.40.7">⚫</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.40.8">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.40.9">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.40.10">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.40.11">⚫</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.40.12">❍</td>
</tr>
<tr class="ltx_tr" id="A1.T2.5.5.5">
<td class="ltx_td ltx_align_left" id="A1.T2.5.5.5.1">Brass<sup class="ltx_sup" id="A1.T2.5.5.5.1.1"><span class="ltx_text ltx_font_italic" id="A1.T2.5.5.5.1.1.1">∗</span></sup>
</td>
<td class="ltx_td ltx_align_center" id="A1.T2.5.5.5.2">2</td>
<td class="ltx_td ltx_align_center" id="A1.T2.5.5.5.3">⚫</td>
<td class="ltx_td ltx_align_center" id="A1.T2.5.5.5.4">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T2.5.5.5.5">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T2.5.5.5.6">⚫</td>
<td class="ltx_td ltx_align_center" id="A1.T2.5.5.5.7">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T2.5.5.5.8">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T2.5.5.5.9">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T2.5.5.5.10">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T2.5.5.5.11">⚫</td>
<td class="ltx_td ltx_align_center" id="A1.T2.5.5.5.12">❍</td>
</tr>
<tr class="ltx_tr" id="A1.T2.6.6.6">
<td class="ltx_td ltx_align_left" id="A1.T2.6.6.6.1">Breakthrough<math alttext="{}^{\text{¶}}" class="ltx_Math" display="inline" id="A1.T2.6.6.6.1.m1.1"><semantics id="A1.T2.6.6.6.1.m1.1a"><msup id="A1.T2.6.6.6.1.m1.1.1" xref="A1.T2.6.6.6.1.m1.1.1.cmml"><mi id="A1.T2.6.6.6.1.m1.1.1a" xref="A1.T2.6.6.6.1.m1.1.1.cmml"></mi><mtext id="A1.T2.6.6.6.1.m1.1.1.1" xref="A1.T2.6.6.6.1.m1.1.1.1a.cmml">¶</mtext></msup><annotation-xml encoding="MathML-Content" id="A1.T2.6.6.6.1.m1.1b"><apply id="A1.T2.6.6.6.1.m1.1.1.cmml" xref="A1.T2.6.6.6.1.m1.1.1"><ci id="A1.T2.6.6.6.1.m1.1.1.1a.cmml" xref="A1.T2.6.6.6.1.m1.1.1.1"><mtext id="A1.T2.6.6.6.1.m1.1.1.1.cmml" mathsize="70%" xref="A1.T2.6.6.6.1.m1.1.1.1">¶</mtext></ci></apply></annotation-xml><annotation encoding="application/x-tex" id="A1.T2.6.6.6.1.m1.1c">{}^{\text{¶}}</annotation><annotation encoding="application/x-llamapun" id="A1.T2.6.6.6.1.m1.1d">start_FLOATSUPERSCRIPT ¶ end_FLOATSUPERSCRIPT</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center" id="A1.T2.6.6.6.2">2</td>
<td class="ltx_td ltx_align_center" id="A1.T2.6.6.6.3">⚫</td>
<td class="ltx_td ltx_align_center" id="A1.T2.6.6.6.4">⚫</td>
<td class="ltx_td ltx_align_center" id="A1.T2.6.6.6.5">⚫</td>
<td class="ltx_td ltx_align_center" id="A1.T2.6.6.6.6">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T2.6.6.6.7">⚫</td>
<td class="ltx_td ltx_align_center" id="A1.T2.6.6.6.8">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T2.6.6.6.9">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T2.6.6.6.10">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T2.6.6.6.11">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T2.6.6.6.12">❍</td>
</tr>
<tr class="ltx_tr" id="A1.T2.24.24.41">
<td class="ltx_td ltx_align_left" id="A1.T2.24.24.41.1">Checkers</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.41.2">2</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.41.3">⚫</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.41.4">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.41.5">⚫</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.41.6">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.41.7">⚫</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.41.8">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.41.9">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.41.10">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.41.11">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.41.12">❍</td>
</tr>
<tr class="ltx_tr" id="A1.T2.24.24.42">
<td class="ltx_td ltx_align_left" id="A1.T2.24.24.42.1">Chess</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.42.2">2</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.42.3">⚫</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.42.4">⚫</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.42.5">⚫</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.42.6">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.42.7">⚫</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.42.8">⚫</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.42.9">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.42.10">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.42.11">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.42.12">❍</td>
</tr>
<tr class="ltx_tr" id="A1.T2.24.24.43">
<td class="ltx_td ltx_align_left" id="A1.T2.24.24.43.1">ConnectFour</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.43.2">2</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.43.3">⚫</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.43.4">⚫</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.43.5">⚫</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.43.6">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.43.7">⚫</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.43.8">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.43.9">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.43.10">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.43.11">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.43.12">❍</td>
</tr>
<tr class="ltx_tr" id="A1.T2.24.24.44">
<td class="ltx_td ltx_align_left" id="A1.T2.24.24.44.1">Debate</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.44.2">2</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.44.3">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.44.4">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.44.5">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.44.6">⚫</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.44.7">⚫</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.44.8">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.44.9">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.44.10">⚫</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.44.11">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.44.12">⚫</td>
</tr>
<tr class="ltx_tr" id="A1.T2.24.24.45">
<td class="ltx_td ltx_align_left" id="A1.T2.24.24.45.1">DontSayIt</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.45.2">2</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.45.3">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.45.4">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.45.5">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.45.6">⚫</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.45.7">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.45.8">⚫</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.45.9">⚫</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.45.10">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.45.11">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.45.12">⚫</td>
</tr>
<tr class="ltx_tr" id="A1.T2.7.7.7">
<td class="ltx_td ltx_align_left" id="A1.T2.7.7.7.1">DracoGame<math alttext="{}^{\text{\textdagger,*}}" class="ltx_Math" display="inline" id="A1.T2.7.7.7.1.m1.1"><semantics id="A1.T2.7.7.7.1.m1.1a"><msup id="A1.T2.7.7.7.1.m1.1.1" xref="A1.T2.7.7.7.1.m1.1.1.cmml"><mi id="A1.T2.7.7.7.1.m1.1.1a" xref="A1.T2.7.7.7.1.m1.1.1.cmml"></mi><mtext id="A1.T2.7.7.7.1.m1.1.1.1" xref="A1.T2.7.7.7.1.m1.1.1.1a.cmml">†,*</mtext></msup><annotation-xml encoding="MathML-Content" id="A1.T2.7.7.7.1.m1.1b"><apply id="A1.T2.7.7.7.1.m1.1.1.cmml" xref="A1.T2.7.7.7.1.m1.1.1"><ci id="A1.T2.7.7.7.1.m1.1.1.1a.cmml" xref="A1.T2.7.7.7.1.m1.1.1.1"><mtext id="A1.T2.7.7.7.1.m1.1.1.1.cmml" mathsize="70%" xref="A1.T2.7.7.7.1.m1.1.1.1">†,*</mtext></ci></apply></annotation-xml><annotation encoding="application/x-tex" id="A1.T2.7.7.7.1.m1.1c">{}^{\text{\textdagger,*}}</annotation><annotation encoding="application/x-llamapun" id="A1.T2.7.7.7.1.m1.1d">start_FLOATSUPERSCRIPT †,* end_FLOATSUPERSCRIPT</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center" id="A1.T2.7.7.7.2">2</td>
<td class="ltx_td ltx_align_center" id="A1.T2.7.7.7.3">⚫</td>
<td class="ltx_td ltx_align_center" id="A1.T2.7.7.7.4">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T2.7.7.7.5">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T2.7.7.7.6">⚫</td>
<td class="ltx_td ltx_align_center" id="A1.T2.7.7.7.7">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T2.7.7.7.8">⚫</td>
<td class="ltx_td ltx_align_center" id="A1.T2.7.7.7.9">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T2.7.7.7.10">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T2.7.7.7.11">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T2.7.7.7.12">❍</td>
</tr>
<tr class="ltx_tr" id="A1.T2.8.8.8">
<td class="ltx_td ltx_align_left" id="A1.T2.8.8.8.1">DuopolisticCompetition<math alttext="{}^{\text{\textdagger,*}}" class="ltx_Math" display="inline" id="A1.T2.8.8.8.1.m1.1"><semantics id="A1.T2.8.8.8.1.m1.1a"><msup id="A1.T2.8.8.8.1.m1.1.1" xref="A1.T2.8.8.8.1.m1.1.1.cmml"><mi id="A1.T2.8.8.8.1.m1.1.1a" xref="A1.T2.8.8.8.1.m1.1.1.cmml"></mi><mtext id="A1.T2.8.8.8.1.m1.1.1.1" xref="A1.T2.8.8.8.1.m1.1.1.1a.cmml">†,*</mtext></msup><annotation-xml encoding="MathML-Content" id="A1.T2.8.8.8.1.m1.1b"><apply id="A1.T2.8.8.8.1.m1.1.1.cmml" xref="A1.T2.8.8.8.1.m1.1.1"><ci id="A1.T2.8.8.8.1.m1.1.1.1a.cmml" xref="A1.T2.8.8.8.1.m1.1.1.1"><mtext id="A1.T2.8.8.8.1.m1.1.1.1.cmml" mathsize="70%" xref="A1.T2.8.8.8.1.m1.1.1.1">†,*</mtext></ci></apply></annotation-xml><annotation encoding="application/x-tex" id="A1.T2.8.8.8.1.m1.1c">{}^{\text{\textdagger,*}}</annotation><annotation encoding="application/x-llamapun" id="A1.T2.8.8.8.1.m1.1d">start_FLOATSUPERSCRIPT †,* end_FLOATSUPERSCRIPT</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center" id="A1.T2.8.8.8.2">2</td>
<td class="ltx_td ltx_align_center" id="A1.T2.8.8.8.3">⚫</td>
<td class="ltx_td ltx_align_center" id="A1.T2.8.8.8.4">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T2.8.8.8.5">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T2.8.8.8.6">⚫</td>
<td class="ltx_td ltx_align_center" id="A1.T2.8.8.8.7">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T2.8.8.8.8">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T2.8.8.8.9">⚫</td>
<td class="ltx_td ltx_align_center" id="A1.T2.8.8.8.10">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T2.8.8.8.11">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T2.8.8.8.12">❍</td>
</tr>
<tr class="ltx_tr" id="A1.T2.9.9.9">
<td class="ltx_td ltx_align_left" id="A1.T2.9.9.9.1">EscalationGame<math alttext="{}^{\text{\textdagger,*}}" class="ltx_Math" display="inline" id="A1.T2.9.9.9.1.m1.1"><semantics id="A1.T2.9.9.9.1.m1.1a"><msup id="A1.T2.9.9.9.1.m1.1.1" xref="A1.T2.9.9.9.1.m1.1.1.cmml"><mi id="A1.T2.9.9.9.1.m1.1.1a" xref="A1.T2.9.9.9.1.m1.1.1.cmml"></mi><mtext id="A1.T2.9.9.9.1.m1.1.1.1" xref="A1.T2.9.9.9.1.m1.1.1.1a.cmml">†,*</mtext></msup><annotation-xml encoding="MathML-Content" id="A1.T2.9.9.9.1.m1.1b"><apply id="A1.T2.9.9.9.1.m1.1.1.cmml" xref="A1.T2.9.9.9.1.m1.1.1"><ci id="A1.T2.9.9.9.1.m1.1.1.1a.cmml" xref="A1.T2.9.9.9.1.m1.1.1.1"><mtext id="A1.T2.9.9.9.1.m1.1.1.1.cmml" mathsize="70%" xref="A1.T2.9.9.9.1.m1.1.1.1">†,*</mtext></ci></apply></annotation-xml><annotation encoding="application/x-tex" id="A1.T2.9.9.9.1.m1.1c">{}^{\text{\textdagger,*}}</annotation><annotation encoding="application/x-llamapun" id="A1.T2.9.9.9.1.m1.1d">start_FLOATSUPERSCRIPT †,* end_FLOATSUPERSCRIPT</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center" id="A1.T2.9.9.9.2">2</td>
<td class="ltx_td ltx_align_center" id="A1.T2.9.9.9.3">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T2.9.9.9.4">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T2.9.9.9.5">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T2.9.9.9.6">⚫</td>
<td class="ltx_td ltx_align_center" id="A1.T2.9.9.9.7">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T2.9.9.9.8">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T2.9.9.9.9">⚫</td>
<td class="ltx_td ltx_align_center" id="A1.T2.9.9.9.10">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T2.9.9.9.11">⚫</td>
<td class="ltx_td ltx_align_center" id="A1.T2.9.9.9.12">❍</td>
</tr>
<tr class="ltx_tr" id="A1.T2.10.10.10">
<td class="ltx_td ltx_align_left" id="A1.T2.10.10.10.1">Hive<math alttext="{}^{\text{\textdagger,*}}" class="ltx_Math" display="inline" id="A1.T2.10.10.10.1.m1.1"><semantics id="A1.T2.10.10.10.1.m1.1a"><msup id="A1.T2.10.10.10.1.m1.1.1" xref="A1.T2.10.10.10.1.m1.1.1.cmml"><mi id="A1.T2.10.10.10.1.m1.1.1a" xref="A1.T2.10.10.10.1.m1.1.1.cmml"></mi><mtext id="A1.T2.10.10.10.1.m1.1.1.1" xref="A1.T2.10.10.10.1.m1.1.1.1a.cmml">†,*</mtext></msup><annotation-xml encoding="MathML-Content" id="A1.T2.10.10.10.1.m1.1b"><apply id="A1.T2.10.10.10.1.m1.1.1.cmml" xref="A1.T2.10.10.10.1.m1.1.1"><ci id="A1.T2.10.10.10.1.m1.1.1.1a.cmml" xref="A1.T2.10.10.10.1.m1.1.1.1"><mtext id="A1.T2.10.10.10.1.m1.1.1.1.cmml" mathsize="70%" xref="A1.T2.10.10.10.1.m1.1.1.1">†,*</mtext></ci></apply></annotation-xml><annotation encoding="application/x-tex" id="A1.T2.10.10.10.1.m1.1c">{}^{\text{\textdagger,*}}</annotation><annotation encoding="application/x-llamapun" id="A1.T2.10.10.10.1.m1.1d">start_FLOATSUPERSCRIPT †,* end_FLOATSUPERSCRIPT</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center" id="A1.T2.10.10.10.2">2</td>
<td class="ltx_td ltx_align_center" id="A1.T2.10.10.10.3">⚫</td>
<td class="ltx_td ltx_align_center" id="A1.T2.10.10.10.4">⚫</td>
<td class="ltx_td ltx_align_center" id="A1.T2.10.10.10.5">⚫</td>
<td class="ltx_td ltx_align_center" id="A1.T2.10.10.10.6">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T2.10.10.10.7">⚫</td>
<td class="ltx_td ltx_align_center" id="A1.T2.10.10.10.8">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T2.10.10.10.9">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T2.10.10.10.10">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T2.10.10.10.11">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T2.10.10.10.12">❍</td>
</tr>
<tr class="ltx_tr" id="A1.T2.11.11.11">
<td class="ltx_td ltx_align_left" id="A1.T2.11.11.11.1">HotColdGame<math alttext="{}^{\text{\textdagger,*}}" class="ltx_Math" display="inline" id="A1.T2.11.11.11.1.m1.1"><semantics id="A1.T2.11.11.11.1.m1.1a"><msup id="A1.T2.11.11.11.1.m1.1.1" xref="A1.T2.11.11.11.1.m1.1.1.cmml"><mi id="A1.T2.11.11.11.1.m1.1.1a" xref="A1.T2.11.11.11.1.m1.1.1.cmml"></mi><mtext id="A1.T2.11.11.11.1.m1.1.1.1" xref="A1.T2.11.11.11.1.m1.1.1.1a.cmml">†,*</mtext></msup><annotation-xml encoding="MathML-Content" id="A1.T2.11.11.11.1.m1.1b"><apply id="A1.T2.11.11.11.1.m1.1.1.cmml" xref="A1.T2.11.11.11.1.m1.1.1"><ci id="A1.T2.11.11.11.1.m1.1.1.1a.cmml" xref="A1.T2.11.11.11.1.m1.1.1.1"><mtext id="A1.T2.11.11.11.1.m1.1.1.1.cmml" mathsize="70%" xref="A1.T2.11.11.11.1.m1.1.1.1">†,*</mtext></ci></apply></annotation-xml><annotation encoding="application/x-tex" id="A1.T2.11.11.11.1.m1.1c">{}^{\text{\textdagger,*}}</annotation><annotation encoding="application/x-llamapun" id="A1.T2.11.11.11.1.m1.1d">start_FLOATSUPERSCRIPT †,* end_FLOATSUPERSCRIPT</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center" id="A1.T2.11.11.11.2">2</td>
<td class="ltx_td ltx_align_center" id="A1.T2.11.11.11.3">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T2.11.11.11.4">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T2.11.11.11.5">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T2.11.11.11.6">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T2.11.11.11.7">⚫</td>
<td class="ltx_td ltx_align_center" id="A1.T2.11.11.11.8">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T2.11.11.11.9">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T2.11.11.11.10">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T2.11.11.11.11">⚫</td>
<td class="ltx_td ltx_align_center" id="A1.T2.11.11.11.12">⚫</td>
</tr>
<tr class="ltx_tr" id="A1.T2.12.12.12">
<td class="ltx_td ltx_align_left" id="A1.T2.12.12.12.1">IntegrativeDistributiveNegotiation<math alttext="{}^{\text{§,*}}" class="ltx_Math" display="inline" id="A1.T2.12.12.12.1.m1.1"><semantics id="A1.T2.12.12.12.1.m1.1a"><msup id="A1.T2.12.12.12.1.m1.1.1" xref="A1.T2.12.12.12.1.m1.1.1.cmml"><mi id="A1.T2.12.12.12.1.m1.1.1a" xref="A1.T2.12.12.12.1.m1.1.1.cmml"></mi><mtext id="A1.T2.12.12.12.1.m1.1.1.1" xref="A1.T2.12.12.12.1.m1.1.1.1a.cmml">§,*</mtext></msup><annotation-xml encoding="MathML-Content" id="A1.T2.12.12.12.1.m1.1b"><apply id="A1.T2.12.12.12.1.m1.1.1.cmml" xref="A1.T2.12.12.12.1.m1.1.1"><ci id="A1.T2.12.12.12.1.m1.1.1.1a.cmml" xref="A1.T2.12.12.12.1.m1.1.1.1"><mtext id="A1.T2.12.12.12.1.m1.1.1.1.cmml" mathsize="70%" xref="A1.T2.12.12.12.1.m1.1.1.1">§,*</mtext></ci></apply></annotation-xml><annotation encoding="application/x-tex" id="A1.T2.12.12.12.1.m1.1c">{}^{\text{§,*}}</annotation><annotation encoding="application/x-llamapun" id="A1.T2.12.12.12.1.m1.1d">start_FLOATSUPERSCRIPT §,* end_FLOATSUPERSCRIPT</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center" id="A1.T2.12.12.12.2">2</td>
<td class="ltx_td ltx_align_center" id="A1.T2.12.12.12.3">⚫</td>
<td class="ltx_td ltx_align_center" id="A1.T2.12.12.12.4">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T2.12.12.12.5">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T2.12.12.12.6">⚫</td>
<td class="ltx_td ltx_align_center" id="A1.T2.12.12.12.7">⚫</td>
<td class="ltx_td ltx_align_center" id="A1.T2.12.12.12.8">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T2.12.12.12.9">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T2.12.12.12.10">⚫</td>
<td class="ltx_td ltx_align_center" id="A1.T2.12.12.12.11">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T2.12.12.12.12">⚫</td>
</tr>
<tr class="ltx_tr" id="A1.T2.24.24.46">
<td class="ltx_td ltx_align_left" id="A1.T2.24.24.46.1">IteratedPrisonersDilemma</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.46.2">2</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.46.3">⚫</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.46.4">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.46.5">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.46.6">⚫</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.46.7">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.46.8">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.46.9">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.46.10">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.46.11">⚫</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.46.12">⚫</td>
</tr>
<tr class="ltx_tr" id="A1.T2.13.13.13">
<td class="ltx_td ltx_align_left" id="A1.T2.13.13.13.1">Jaipur<sup class="ltx_sup" id="A1.T2.13.13.13.1.1"><span class="ltx_text ltx_font_italic" id="A1.T2.13.13.13.1.1.1">∗</span></sup>
</td>
<td class="ltx_td ltx_align_center" id="A1.T2.13.13.13.2">2</td>
<td class="ltx_td ltx_align_center" id="A1.T2.13.13.13.3">⚫</td>
<td class="ltx_td ltx_align_center" id="A1.T2.13.13.13.4">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T2.13.13.13.5">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T2.13.13.13.6">⚫</td>
<td class="ltx_td ltx_align_center" id="A1.T2.13.13.13.7">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T2.13.13.13.8">⚫</td>
<td class="ltx_td ltx_align_center" id="A1.T2.13.13.13.9">⚫</td>
<td class="ltx_td ltx_align_center" id="A1.T2.13.13.13.10">⚫</td>
<td class="ltx_td ltx_align_center" id="A1.T2.13.13.13.11">⚫</td>
<td class="ltx_td ltx_align_center" id="A1.T2.13.13.13.12">❍</td>
</tr>
<tr class="ltx_tr" id="A1.T2.14.14.14">
<td class="ltx_td ltx_align_left" id="A1.T2.14.14.14.1">KuhnPoker<math alttext="{}^{\text{¶}}" class="ltx_Math" display="inline" id="A1.T2.14.14.14.1.m1.1"><semantics id="A1.T2.14.14.14.1.m1.1a"><msup id="A1.T2.14.14.14.1.m1.1.1" xref="A1.T2.14.14.14.1.m1.1.1.cmml"><mi id="A1.T2.14.14.14.1.m1.1.1a" xref="A1.T2.14.14.14.1.m1.1.1.cmml"></mi><mtext id="A1.T2.14.14.14.1.m1.1.1.1" xref="A1.T2.14.14.14.1.m1.1.1.1a.cmml">¶</mtext></msup><annotation-xml encoding="MathML-Content" id="A1.T2.14.14.14.1.m1.1b"><apply id="A1.T2.14.14.14.1.m1.1.1.cmml" xref="A1.T2.14.14.14.1.m1.1.1"><ci id="A1.T2.14.14.14.1.m1.1.1.1a.cmml" xref="A1.T2.14.14.14.1.m1.1.1.1"><mtext id="A1.T2.14.14.14.1.m1.1.1.1.cmml" mathsize="70%" xref="A1.T2.14.14.14.1.m1.1.1.1">¶</mtext></ci></apply></annotation-xml><annotation encoding="application/x-tex" id="A1.T2.14.14.14.1.m1.1c">{}^{\text{¶}}</annotation><annotation encoding="application/x-llamapun" id="A1.T2.14.14.14.1.m1.1d">start_FLOATSUPERSCRIPT ¶ end_FLOATSUPERSCRIPT</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center" id="A1.T2.14.14.14.2">2</td>
<td class="ltx_td ltx_align_center" id="A1.T2.14.14.14.3">⚫</td>
<td class="ltx_td ltx_align_center" id="A1.T2.14.14.14.4">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T2.14.14.14.5">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T2.14.14.14.6">⚫</td>
<td class="ltx_td ltx_align_center" id="A1.T2.14.14.14.7">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T2.14.14.14.8">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T2.14.14.14.9">⚫</td>
<td class="ltx_td ltx_align_center" id="A1.T2.14.14.14.10">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T2.14.14.14.11">⚫</td>
<td class="ltx_td ltx_align_center" id="A1.T2.14.14.14.12">❍</td>
</tr>
<tr class="ltx_tr" id="A1.T2.24.24.47">
<td class="ltx_td ltx_align_left" id="A1.T2.24.24.47.1">LetterAuction</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.47.2">2</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.47.3">⚫</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.47.4">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.47.5">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.47.6">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.47.7">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.47.8">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.47.9">⚫</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.47.10">⚫</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.47.11">⚫</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.47.12">❍</td>
</tr>
<tr class="ltx_tr" id="A1.T2.24.24.48">
<td class="ltx_td ltx_align_left" id="A1.T2.24.24.48.1">MemoryGame</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.48.2">2</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.48.3">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.48.4">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.48.5">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.48.6">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.48.7">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.48.8">⚫</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.48.9">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.48.10">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.48.11">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.48.12">❍</td>
</tr>
<tr class="ltx_tr" id="A1.T2.15.15.15">
<td class="ltx_td ltx_align_left" id="A1.T2.15.15.15.1">MonopolyGame<math alttext="{}^{\text{\textdagger,*}}" class="ltx_Math" display="inline" id="A1.T2.15.15.15.1.m1.1"><semantics id="A1.T2.15.15.15.1.m1.1a"><msup id="A1.T2.15.15.15.1.m1.1.1" xref="A1.T2.15.15.15.1.m1.1.1.cmml"><mi id="A1.T2.15.15.15.1.m1.1.1a" xref="A1.T2.15.15.15.1.m1.1.1.cmml"></mi><mtext id="A1.T2.15.15.15.1.m1.1.1.1" xref="A1.T2.15.15.15.1.m1.1.1.1a.cmml">†,*</mtext></msup><annotation-xml encoding="MathML-Content" id="A1.T2.15.15.15.1.m1.1b"><apply id="A1.T2.15.15.15.1.m1.1.1.cmml" xref="A1.T2.15.15.15.1.m1.1.1"><ci id="A1.T2.15.15.15.1.m1.1.1.1a.cmml" xref="A1.T2.15.15.15.1.m1.1.1.1"><mtext id="A1.T2.15.15.15.1.m1.1.1.1.cmml" mathsize="70%" xref="A1.T2.15.15.15.1.m1.1.1.1">†,*</mtext></ci></apply></annotation-xml><annotation encoding="application/x-tex" id="A1.T2.15.15.15.1.m1.1c">{}^{\text{\textdagger,*}}</annotation><annotation encoding="application/x-llamapun" id="A1.T2.15.15.15.1.m1.1d">start_FLOATSUPERSCRIPT †,* end_FLOATSUPERSCRIPT</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center" id="A1.T2.15.15.15.2">2</td>
<td class="ltx_td ltx_align_center" id="A1.T2.15.15.15.3">⚫</td>
<td class="ltx_td ltx_align_center" id="A1.T2.15.15.15.4">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T2.15.15.15.5">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T2.15.15.15.6">⚫</td>
<td class="ltx_td ltx_align_center" id="A1.T2.15.15.15.7">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T2.15.15.15.8">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T2.15.15.15.9">⚫</td>
<td class="ltx_td ltx_align_center" id="A1.T2.15.15.15.10">⚫</td>
<td class="ltx_td ltx_align_center" id="A1.T2.15.15.15.11">⚫</td>
<td class="ltx_td ltx_align_center" id="A1.T2.15.15.15.12">⚫</td>
</tr>
<tr class="ltx_tr" id="A1.T2.16.16.16">
<td class="ltx_td ltx_align_left" id="A1.T2.16.16.16.1">Nim<math alttext="{}^{\text{¶}}" class="ltx_Math" display="inline" id="A1.T2.16.16.16.1.m1.1"><semantics id="A1.T2.16.16.16.1.m1.1a"><msup id="A1.T2.16.16.16.1.m1.1.1" xref="A1.T2.16.16.16.1.m1.1.1.cmml"><mi id="A1.T2.16.16.16.1.m1.1.1a" xref="A1.T2.16.16.16.1.m1.1.1.cmml"></mi><mtext id="A1.T2.16.16.16.1.m1.1.1.1" xref="A1.T2.16.16.16.1.m1.1.1.1a.cmml">¶</mtext></msup><annotation-xml encoding="MathML-Content" id="A1.T2.16.16.16.1.m1.1b"><apply id="A1.T2.16.16.16.1.m1.1.1.cmml" xref="A1.T2.16.16.16.1.m1.1.1"><ci id="A1.T2.16.16.16.1.m1.1.1.1a.cmml" xref="A1.T2.16.16.16.1.m1.1.1.1"><mtext id="A1.T2.16.16.16.1.m1.1.1.1.cmml" mathsize="70%" xref="A1.T2.16.16.16.1.m1.1.1.1">¶</mtext></ci></apply></annotation-xml><annotation encoding="application/x-tex" id="A1.T2.16.16.16.1.m1.1c">{}^{\text{¶}}</annotation><annotation encoding="application/x-llamapun" id="A1.T2.16.16.16.1.m1.1d">start_FLOATSUPERSCRIPT ¶ end_FLOATSUPERSCRIPT</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center" id="A1.T2.16.16.16.2">2</td>
<td class="ltx_td ltx_align_center" id="A1.T2.16.16.16.3">⚫</td>
<td class="ltx_td ltx_align_center" id="A1.T2.16.16.16.4">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T2.16.16.16.5">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T2.16.16.16.6">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T2.16.16.16.7">⚫</td>
<td class="ltx_td ltx_align_center" id="A1.T2.16.16.16.8">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T2.16.16.16.9">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T2.16.16.16.10">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T2.16.16.16.11">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T2.16.16.16.12">❍</td>
</tr>
<tr class="ltx_tr" id="A1.T2.24.24.49">
<td class="ltx_td ltx_align_left" id="A1.T2.24.24.49.1">Othello (Reversi)</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.49.2">2</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.49.3">⚫</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.49.4">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.49.5">⚫</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.49.6">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.49.7">⚫</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.49.8">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.49.9">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.49.10">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.49.11">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.49.12">❍</td>
</tr>
<tr class="ltx_tr" id="A1.T2.17.17.17">
<td class="ltx_td ltx_align_left" id="A1.T2.17.17.17.1">PigDice<math alttext="{}^{\text{¶}}" class="ltx_Math" display="inline" id="A1.T2.17.17.17.1.m1.1"><semantics id="A1.T2.17.17.17.1.m1.1a"><msup id="A1.T2.17.17.17.1.m1.1.1" xref="A1.T2.17.17.17.1.m1.1.1.cmml"><mi id="A1.T2.17.17.17.1.m1.1.1a" xref="A1.T2.17.17.17.1.m1.1.1.cmml"></mi><mtext id="A1.T2.17.17.17.1.m1.1.1.1" xref="A1.T2.17.17.17.1.m1.1.1.1a.cmml">¶</mtext></msup><annotation-xml encoding="MathML-Content" id="A1.T2.17.17.17.1.m1.1b"><apply id="A1.T2.17.17.17.1.m1.1.1.cmml" xref="A1.T2.17.17.17.1.m1.1.1"><ci id="A1.T2.17.17.17.1.m1.1.1.1a.cmml" xref="A1.T2.17.17.17.1.m1.1.1.1"><mtext id="A1.T2.17.17.17.1.m1.1.1.1.cmml" mathsize="70%" xref="A1.T2.17.17.17.1.m1.1.1.1">¶</mtext></ci></apply></annotation-xml><annotation encoding="application/x-tex" id="A1.T2.17.17.17.1.m1.1c">{}^{\text{¶}}</annotation><annotation encoding="application/x-llamapun" id="A1.T2.17.17.17.1.m1.1d">start_FLOATSUPERSCRIPT ¶ end_FLOATSUPERSCRIPT</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center" id="A1.T2.17.17.17.2">2</td>
<td class="ltx_td ltx_align_center" id="A1.T2.17.17.17.3">⚫</td>
<td class="ltx_td ltx_align_center" id="A1.T2.17.17.17.4">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T2.17.17.17.5">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T2.17.17.17.6">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T2.17.17.17.7">⚫</td>
<td class="ltx_td ltx_align_center" id="A1.T2.17.17.17.8">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T2.17.17.17.9">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T2.17.17.17.10">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T2.17.17.17.11">⚫</td>
<td class="ltx_td ltx_align_center" id="A1.T2.17.17.17.12">❍</td>
</tr>
<tr class="ltx_tr" id="A1.T2.18.18.18">
<td class="ltx_td ltx_align_left" id="A1.T2.18.18.18.1">PrisonersDilemma<math alttext="{}^{\text{\textdagger}}" class="ltx_Math" display="inline" id="A1.T2.18.18.18.1.m1.1"><semantics id="A1.T2.18.18.18.1.m1.1a"><msup id="A1.T2.18.18.18.1.m1.1.1" xref="A1.T2.18.18.18.1.m1.1.1.cmml"><mi id="A1.T2.18.18.18.1.m1.1.1a" xref="A1.T2.18.18.18.1.m1.1.1.cmml"></mi><mtext id="A1.T2.18.18.18.1.m1.1.1.1" xref="A1.T2.18.18.18.1.m1.1.1.1a.cmml">†</mtext></msup><annotation-xml encoding="MathML-Content" id="A1.T2.18.18.18.1.m1.1b"><apply id="A1.T2.18.18.18.1.m1.1.1.cmml" xref="A1.T2.18.18.18.1.m1.1.1"><ci id="A1.T2.18.18.18.1.m1.1.1.1a.cmml" xref="A1.T2.18.18.18.1.m1.1.1.1"><mtext id="A1.T2.18.18.18.1.m1.1.1.1.cmml" mathsize="70%" xref="A1.T2.18.18.18.1.m1.1.1.1">†</mtext></ci></apply></annotation-xml><annotation encoding="application/x-tex" id="A1.T2.18.18.18.1.m1.1c">{}^{\text{\textdagger}}</annotation><annotation encoding="application/x-llamapun" id="A1.T2.18.18.18.1.m1.1d">start_FLOATSUPERSCRIPT † end_FLOATSUPERSCRIPT</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center" id="A1.T2.18.18.18.2">2</td>
<td class="ltx_td ltx_align_center" id="A1.T2.18.18.18.3">⚫</td>
<td class="ltx_td ltx_align_center" id="A1.T2.18.18.18.4">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T2.18.18.18.5">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T2.18.18.18.6">⚫</td>
<td class="ltx_td ltx_align_center" id="A1.T2.18.18.18.7">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T2.18.18.18.8">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T2.18.18.18.9">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T2.18.18.18.10">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T2.18.18.18.11">⚫</td>
<td class="ltx_td ltx_align_center" id="A1.T2.18.18.18.12">⚫</td>
</tr>
<tr class="ltx_tr" id="A1.T2.19.19.19">
<td class="ltx_td ltx_align_left" id="A1.T2.19.19.19.1">Santorini<math alttext="{}^{\text{\textdagger,*}}" class="ltx_Math" display="inline" id="A1.T2.19.19.19.1.m1.1"><semantics id="A1.T2.19.19.19.1.m1.1a"><msup id="A1.T2.19.19.19.1.m1.1.1" xref="A1.T2.19.19.19.1.m1.1.1.cmml"><mi id="A1.T2.19.19.19.1.m1.1.1a" xref="A1.T2.19.19.19.1.m1.1.1.cmml"></mi><mtext id="A1.T2.19.19.19.1.m1.1.1.1" xref="A1.T2.19.19.19.1.m1.1.1.1a.cmml">†,*</mtext></msup><annotation-xml encoding="MathML-Content" id="A1.T2.19.19.19.1.m1.1b"><apply id="A1.T2.19.19.19.1.m1.1.1.cmml" xref="A1.T2.19.19.19.1.m1.1.1"><ci id="A1.T2.19.19.19.1.m1.1.1.1a.cmml" xref="A1.T2.19.19.19.1.m1.1.1.1"><mtext id="A1.T2.19.19.19.1.m1.1.1.1.cmml" mathsize="70%" xref="A1.T2.19.19.19.1.m1.1.1.1">†,*</mtext></ci></apply></annotation-xml><annotation encoding="application/x-tex" id="A1.T2.19.19.19.1.m1.1c">{}^{\text{\textdagger,*}}</annotation><annotation encoding="application/x-llamapun" id="A1.T2.19.19.19.1.m1.1d">start_FLOATSUPERSCRIPT †,* end_FLOATSUPERSCRIPT</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center" id="A1.T2.19.19.19.2">2</td>
<td class="ltx_td ltx_align_center" id="A1.T2.19.19.19.3">⚫</td>
<td class="ltx_td ltx_align_center" id="A1.T2.19.19.19.4">⚫</td>
<td class="ltx_td ltx_align_center" id="A1.T2.19.19.19.5">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T2.19.19.19.6">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T2.19.19.19.7">⚫</td>
<td class="ltx_td ltx_align_center" id="A1.T2.19.19.19.8">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T2.19.19.19.9">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T2.19.19.19.10">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T2.19.19.19.11">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T2.19.19.19.12">❍</td>
</tr>
<tr class="ltx_tr" id="A1.T2.24.24.50">
<td class="ltx_td ltx_align_left" id="A1.T2.24.24.50.1">ScenarioPlanning</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.50.2">2</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.50.3">⚫</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.50.4">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.50.5">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.50.6">⚫</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.50.7">⚫</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.50.8">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.50.9">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.50.10">⚫</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.50.11">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.50.12">❍</td>
</tr>
<tr class="ltx_tr" id="A1.T2.20.20.20">
<td class="ltx_td ltx_align_left" id="A1.T2.20.20.20.1">SeaBattle<math alttext="{}^{\text{\textdagger,*}}" class="ltx_Math" display="inline" id="A1.T2.20.20.20.1.m1.1"><semantics id="A1.T2.20.20.20.1.m1.1a"><msup id="A1.T2.20.20.20.1.m1.1.1" xref="A1.T2.20.20.20.1.m1.1.1.cmml"><mi id="A1.T2.20.20.20.1.m1.1.1a" xref="A1.T2.20.20.20.1.m1.1.1.cmml"></mi><mtext id="A1.T2.20.20.20.1.m1.1.1.1" xref="A1.T2.20.20.20.1.m1.1.1.1a.cmml">†,*</mtext></msup><annotation-xml encoding="MathML-Content" id="A1.T2.20.20.20.1.m1.1b"><apply id="A1.T2.20.20.20.1.m1.1.1.cmml" xref="A1.T2.20.20.20.1.m1.1.1"><ci id="A1.T2.20.20.20.1.m1.1.1.1a.cmml" xref="A1.T2.20.20.20.1.m1.1.1.1"><mtext id="A1.T2.20.20.20.1.m1.1.1.1.cmml" mathsize="70%" xref="A1.T2.20.20.20.1.m1.1.1.1">†,*</mtext></ci></apply></annotation-xml><annotation encoding="application/x-tex" id="A1.T2.20.20.20.1.m1.1c">{}^{\text{\textdagger,*}}</annotation><annotation encoding="application/x-llamapun" id="A1.T2.20.20.20.1.m1.1d">start_FLOATSUPERSCRIPT †,* end_FLOATSUPERSCRIPT</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center" id="A1.T2.20.20.20.2">2</td>
<td class="ltx_td ltx_align_center" id="A1.T2.20.20.20.3">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T2.20.20.20.4">⚫</td>
<td class="ltx_td ltx_align_center" id="A1.T2.20.20.20.5">⚫</td>
<td class="ltx_td ltx_align_center" id="A1.T2.20.20.20.6">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T2.20.20.20.7">⚫</td>
<td class="ltx_td ltx_align_center" id="A1.T2.20.20.20.8">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T2.20.20.20.9">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T2.20.20.20.10">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T2.20.20.20.11">⚫</td>
<td class="ltx_td ltx_align_center" id="A1.T2.20.20.20.12">❍</td>
</tr>
<tr class="ltx_tr" id="A1.T2.21.21.21">
<td class="ltx_td ltx_align_left" id="A1.T2.21.21.21.1">SimpleBlindAuction<math alttext="{}^{\text{¶}}" class="ltx_Math" display="inline" id="A1.T2.21.21.21.1.m1.1"><semantics id="A1.T2.21.21.21.1.m1.1a"><msup id="A1.T2.21.21.21.1.m1.1.1" xref="A1.T2.21.21.21.1.m1.1.1.cmml"><mi id="A1.T2.21.21.21.1.m1.1.1a" xref="A1.T2.21.21.21.1.m1.1.1.cmml"></mi><mtext id="A1.T2.21.21.21.1.m1.1.1.1" xref="A1.T2.21.21.21.1.m1.1.1.1a.cmml">¶</mtext></msup><annotation-xml encoding="MathML-Content" id="A1.T2.21.21.21.1.m1.1b"><apply id="A1.T2.21.21.21.1.m1.1.1.cmml" xref="A1.T2.21.21.21.1.m1.1.1"><ci id="A1.T2.21.21.21.1.m1.1.1.1a.cmml" xref="A1.T2.21.21.21.1.m1.1.1.1"><mtext id="A1.T2.21.21.21.1.m1.1.1.1.cmml" mathsize="70%" xref="A1.T2.21.21.21.1.m1.1.1.1">¶</mtext></ci></apply></annotation-xml><annotation encoding="application/x-tex" id="A1.T2.21.21.21.1.m1.1c">{}^{\text{¶}}</annotation><annotation encoding="application/x-llamapun" id="A1.T2.21.21.21.1.m1.1d">start_FLOATSUPERSCRIPT ¶ end_FLOATSUPERSCRIPT</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center" id="A1.T2.21.21.21.2">2</td>
<td class="ltx_td ltx_align_center" id="A1.T2.21.21.21.3">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T2.21.21.21.4">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T2.21.21.21.5">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T2.21.21.21.6">⚫</td>
<td class="ltx_td ltx_align_center" id="A1.T2.21.21.21.7">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T2.21.21.21.8">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T2.21.21.21.9">⚫</td>
<td class="ltx_td ltx_align_center" id="A1.T2.21.21.21.10">⚫</td>
<td class="ltx_td ltx_align_center" id="A1.T2.21.21.21.11">⚫</td>
<td class="ltx_td ltx_align_center" id="A1.T2.21.21.21.12">❍</td>
</tr>
<tr class="ltx_tr" id="A1.T2.24.24.51">
<td class="ltx_td ltx_align_left" id="A1.T2.24.24.51.1">SimpleNegotiation</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.51.2">2</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.51.3">⚫</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.51.4">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.51.5">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.51.6">⚫</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.51.7">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.51.8">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.51.9">⚫</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.51.10">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.51.11">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.51.12">⚫</td>
</tr>
<tr class="ltx_tr" id="A1.T2.24.24.52">
<td class="ltx_td ltx_align_left" id="A1.T2.24.24.52.1">SpellingBee</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.52.2">2</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.52.3">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.52.4">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.52.5">⚫</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.52.6">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.52.7">⚫</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.52.8">⚫</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.52.9">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.52.10">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.52.11">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.52.12">⚫</td>
</tr>
<tr class="ltx_tr" id="A1.T2.24.24.53">
<td class="ltx_td ltx_align_left" id="A1.T2.24.24.53.1">SpiteAndMalice</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.53.2">2</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.53.3">⚫</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.53.4">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.53.5">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.53.6">⚫</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.53.7">⚫</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.53.8">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.53.9">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.53.10">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.53.11">⚫</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.53.12">⚫</td>
</tr>
<tr class="ltx_tr" id="A1.T2.22.22.22">
<td class="ltx_td ltx_align_left" id="A1.T2.22.22.22.1">StagHunt<math alttext="{}^{\text{\textdagger,*}}" class="ltx_Math" display="inline" id="A1.T2.22.22.22.1.m1.1"><semantics id="A1.T2.22.22.22.1.m1.1a"><msup id="A1.T2.22.22.22.1.m1.1.1" xref="A1.T2.22.22.22.1.m1.1.1.cmml"><mi id="A1.T2.22.22.22.1.m1.1.1a" xref="A1.T2.22.22.22.1.m1.1.1.cmml"></mi><mtext id="A1.T2.22.22.22.1.m1.1.1.1" xref="A1.T2.22.22.22.1.m1.1.1.1a.cmml">†,*</mtext></msup><annotation-xml encoding="MathML-Content" id="A1.T2.22.22.22.1.m1.1b"><apply id="A1.T2.22.22.22.1.m1.1.1.cmml" xref="A1.T2.22.22.22.1.m1.1.1"><ci id="A1.T2.22.22.22.1.m1.1.1.1a.cmml" xref="A1.T2.22.22.22.1.m1.1.1.1"><mtext id="A1.T2.22.22.22.1.m1.1.1.1.cmml" mathsize="70%" xref="A1.T2.22.22.22.1.m1.1.1.1">†,*</mtext></ci></apply></annotation-xml><annotation encoding="application/x-tex" id="A1.T2.22.22.22.1.m1.1c">{}^{\text{\textdagger,*}}</annotation><annotation encoding="application/x-llamapun" id="A1.T2.22.22.22.1.m1.1d">start_FLOATSUPERSCRIPT †,* end_FLOATSUPERSCRIPT</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center" id="A1.T2.22.22.22.2">2</td>
<td class="ltx_td ltx_align_center" id="A1.T2.22.22.22.3">⚫</td>
<td class="ltx_td ltx_align_center" id="A1.T2.22.22.22.4">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T2.22.22.22.5">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T2.22.22.22.6">⚫</td>
<td class="ltx_td ltx_align_center" id="A1.T2.22.22.22.7">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T2.22.22.22.8">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T2.22.22.22.9">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T2.22.22.22.10">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T2.22.22.22.11">⚫</td>
<td class="ltx_td ltx_align_center" id="A1.T2.22.22.22.12">❍</td>
</tr>
<tr class="ltx_tr" id="A1.T2.24.24.54">
<td class="ltx_td ltx_align_left" id="A1.T2.24.24.54.1">Stratego</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.54.2">2</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.54.3">⚫</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.54.4">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.54.5">⚫</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.54.6">⚫</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.54.7">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.54.8">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.54.9">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.54.10">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.54.11">⚫</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.54.12">⚫</td>
</tr>
<tr class="ltx_tr" id="A1.T2.24.24.55">
<td class="ltx_td ltx_align_left" id="A1.T2.24.24.55.1">Taboo</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.55.2">2</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.55.3">⚫</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.55.4">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.55.5">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.55.6">⚫</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.55.7">⚫</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.55.8">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.55.9">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.55.10">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.55.11">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.55.12">⚫</td>
</tr>
<tr class="ltx_tr" id="A1.T2.24.24.56">
<td class="ltx_td ltx_align_left" id="A1.T2.24.24.56.1">Tak</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.56.2">2</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.56.3">⚫</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.56.4">⚫</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.56.5">⚫</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.56.6">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.56.7">⚫</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.56.8">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.56.9">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.56.10">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.56.11">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.56.12">❍</td>
</tr>
<tr class="ltx_tr" id="A1.T2.24.24.57">
<td class="ltx_td ltx_align_left" id="A1.T2.24.24.57.1">TicTacToe</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.57.2">2</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.57.3">⚫</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.57.4">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.57.5">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.57.6">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.57.7">⚫</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.57.8">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.57.9">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.57.10">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.57.11">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.57.12">❍</td>
</tr>
<tr class="ltx_tr" id="A1.T2.23.23.23">
<td class="ltx_td ltx_align_left" id="A1.T2.23.23.23.1">TriGame<math alttext="{}^{\text{\textdagger,*}}" class="ltx_Math" display="inline" id="A1.T2.23.23.23.1.m1.1"><semantics id="A1.T2.23.23.23.1.m1.1a"><msup id="A1.T2.23.23.23.1.m1.1.1" xref="A1.T2.23.23.23.1.m1.1.1.cmml"><mi id="A1.T2.23.23.23.1.m1.1.1a" xref="A1.T2.23.23.23.1.m1.1.1.cmml"></mi><mtext id="A1.T2.23.23.23.1.m1.1.1.1" xref="A1.T2.23.23.23.1.m1.1.1.1a.cmml">†,*</mtext></msup><annotation-xml encoding="MathML-Content" id="A1.T2.23.23.23.1.m1.1b"><apply id="A1.T2.23.23.23.1.m1.1.1.cmml" xref="A1.T2.23.23.23.1.m1.1.1"><ci id="A1.T2.23.23.23.1.m1.1.1.1a.cmml" xref="A1.T2.23.23.23.1.m1.1.1.1"><mtext id="A1.T2.23.23.23.1.m1.1.1.1.cmml" mathsize="70%" xref="A1.T2.23.23.23.1.m1.1.1.1">†,*</mtext></ci></apply></annotation-xml><annotation encoding="application/x-tex" id="A1.T2.23.23.23.1.m1.1c">{}^{\text{\textdagger,*}}</annotation><annotation encoding="application/x-llamapun" id="A1.T2.23.23.23.1.m1.1d">start_FLOATSUPERSCRIPT †,* end_FLOATSUPERSCRIPT</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center" id="A1.T2.23.23.23.2">2</td>
<td class="ltx_td ltx_align_center" id="A1.T2.23.23.23.3">⚫</td>
<td class="ltx_td ltx_align_center" id="A1.T2.23.23.23.4">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T2.23.23.23.5">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T2.23.23.23.6">⚫</td>
<td class="ltx_td ltx_align_center" id="A1.T2.23.23.23.7">⚫</td>
<td class="ltx_td ltx_align_center" id="A1.T2.23.23.23.8">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T2.23.23.23.9">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T2.23.23.23.10">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T2.23.23.23.11">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T2.23.23.23.12">❍</td>
</tr>
<tr class="ltx_tr" id="A1.T2.24.24.58">
<td class="ltx_td ltx_align_left" id="A1.T2.24.24.58.1">TruthAndDeception</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.58.2">2</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.58.3">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.58.4">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.58.5">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.58.6">⚫</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.58.7">⚫</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.58.8">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.58.9">⚫</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.58.10">⚫</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.58.11">⚫</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.58.12">❍</td>
</tr>
<tr class="ltx_tr" id="A1.T2.24.24.59">
<td class="ltx_td ltx_align_left" id="A1.T2.24.24.59.1">UltimateTicTacToe</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.59.2">2</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.59.3">⚫</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.59.4">⚫</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.59.5">⚫</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.59.6">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.59.7">⚫</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.59.8">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.59.9">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.59.10">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.59.11">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.59.12">❍</td>
</tr>
<tr class="ltx_tr" id="A1.T2.24.24.24">
<td class="ltx_td ltx_align_left" id="A1.T2.24.24.24.1">WaitGoGame<math alttext="{}^{\text{\textdagger,*}}" class="ltx_Math" display="inline" id="A1.T2.24.24.24.1.m1.1"><semantics id="A1.T2.24.24.24.1.m1.1a"><msup id="A1.T2.24.24.24.1.m1.1.1" xref="A1.T2.24.24.24.1.m1.1.1.cmml"><mi id="A1.T2.24.24.24.1.m1.1.1a" xref="A1.T2.24.24.24.1.m1.1.1.cmml"></mi><mtext id="A1.T2.24.24.24.1.m1.1.1.1" xref="A1.T2.24.24.24.1.m1.1.1.1a.cmml">†,*</mtext></msup><annotation-xml encoding="MathML-Content" id="A1.T2.24.24.24.1.m1.1b"><apply id="A1.T2.24.24.24.1.m1.1.1.cmml" xref="A1.T2.24.24.24.1.m1.1.1"><ci id="A1.T2.24.24.24.1.m1.1.1.1a.cmml" xref="A1.T2.24.24.24.1.m1.1.1.1"><mtext id="A1.T2.24.24.24.1.m1.1.1.1.cmml" mathsize="70%" xref="A1.T2.24.24.24.1.m1.1.1.1">†,*</mtext></ci></apply></annotation-xml><annotation encoding="application/x-tex" id="A1.T2.24.24.24.1.m1.1c">{}^{\text{\textdagger,*}}</annotation><annotation encoding="application/x-llamapun" id="A1.T2.24.24.24.1.m1.1d">start_FLOATSUPERSCRIPT †,* end_FLOATSUPERSCRIPT</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.24.2">2</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.24.3">⚫</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.24.4">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.24.5">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.24.6">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.24.7">⚫</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.24.8">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.24.9">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.24.10">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.24.11">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T2.24.24.24.12">⚫</td>
</tr>
<tr class="ltx_tr" id="A1.T2.24.24.60">
<td class="ltx_td ltx_align_left ltx_border_bb" id="A1.T2.24.24.60.1">WordChains</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T2.24.24.60.2">2</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T2.24.24.60.3">❍</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T2.24.24.60.4">❍</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T2.24.24.60.5">⚫</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T2.24.24.60.6">❍</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T2.24.24.60.7">⚫</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T2.24.24.60.8">⚫</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T2.24.24.60.9">❍</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T2.24.24.60.10">❍</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T2.24.24.60.11">❍</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T2.24.24.60.12">⚫</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 Table 2 categorizes TextArena's single and two-player games based on the number of players and the main cognitive/strategic skills involved. Filled circles (⚫) show relevant skills, empty circles (❍) indicate non-emphasized skills.  Games marked with special symbols reference external studies: † (Costarelli et al., 2024), ‡ (Hua et al., 2024), § (Davidson et al., 2024), and ¶ (Duan et al., 2024). Abbreviations are: Strat. (Strategic Planning), Spatial (Spatial Thinking), Pattern (Pattern Recognition), ToM (Theory of Mind), Logic (Logical Reasoning), Mem. (Memory Recall), Bluff (Bluffing), Pers. (Persuasion), Uncert. (Uncertainty Estimation), Adapt. (Adaptability).  Games marked with * are not fully implemented.
> <details>
> <summary>read the caption</summary>
> Table 2:  This table categorizes single-player and two-player games by the number of players and the primary cognitive or strategic skills emphasized in each game. Filled circles (⚫) are skills that are relevant to each game, while empty circles (❍) indicate skills not emphasized. Games marked with † are drawn from Costarelli et al. (2024), ‡ from Hua et al. (2024), § from Davidson et al. (2024), and ¶ from Duan et al. (2024). Strat. = Strategic Planning, Spatial = Spatial Thinking, Pattern = Pattern Recognition, ToM = Theory of Mind, Logic = Logical Reasoning, Mem. = Memory Recall, Bluff = Bluffing, Pers. = Persuasion, Uncert. = Uncertainty Estimation, Adapt. = Adaptability. Games marked with ∗{*}∗ have not been fully implemented yet.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="A1.T3.3.3">
<tr class="ltx_tr" id="A1.T3.3.3.4">
<td class="ltx_td ltx_align_left ltx_border_tt" id="A1.T3.3.3.4.1"><span class="ltx_text ltx_font_bold" id="A1.T3.3.3.4.1.1">Game Name</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A1.T3.3.3.4.2"><span class="ltx_text ltx_font_bold" id="A1.T3.3.3.4.2.1">Players</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A1.T3.3.3.4.3">
<div class="ltx_inline-block ltx_transformed_outer" id="A1.T3.3.3.4.3.1" style="width:22.5pt;height:22.5pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:25.0pt;transform:translate(-1.25pt,-7.85pt) rotate(-45deg) ;">
<p class="ltx_p" id="A1.T3.3.3.4.3.1.1"><span class="ltx_text ltx_font_italic" id="A1.T3.3.3.4.3.1.1.1">Strat.</span></p>
</span></div>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A1.T3.3.3.4.4">
<div class="ltx_inline-block ltx_transformed_outer" id="A1.T3.3.3.4.4.1" style="width:27.9pt;height:27.9pt;vertical-align:-1.4pt;"><span class="ltx_transformed_inner" style="width:30.6pt;transform:translate(-1.33pt,-7.15pt) rotate(-45deg) ;">
<p class="ltx_p" id="A1.T3.3.3.4.4.1.1"><span class="ltx_text ltx_font_italic" id="A1.T3.3.3.4.4.1.1.1">Spatial</span></p>
</span></div>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A1.T3.3.3.4.5">
<div class="ltx_inline-block ltx_transformed_outer" id="A1.T3.3.3.4.5.1" style="width:28.3pt;height:28.3pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:33.2pt;transform:translate(-2.45pt,-10.75pt) rotate(-45deg) ;">
<p class="ltx_p" id="A1.T3.3.3.4.5.1.1"><span class="ltx_text ltx_font_italic" id="A1.T3.3.3.4.5.1.1.1">Pattern</span></p>
</span></div>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A1.T3.3.3.4.6">
<div class="ltx_inline-block ltx_transformed_outer" id="A1.T3.3.3.4.6.1" style="width:19.4pt;height:19.4pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:20.6pt;transform:translate(-0.59pt,-6.27pt) rotate(-45deg) ;">
<p class="ltx_p" id="A1.T3.3.3.4.6.1.1"><span class="ltx_text ltx_font_italic" id="A1.T3.3.3.4.6.1.1.1">ToM</span></p>
</span></div>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A1.T3.3.3.4.7">
<div class="ltx_inline-block ltx_transformed_outer" id="A1.T3.3.3.4.7.1" style="width:22.8pt;height:22.8pt;vertical-align:-1.4pt;"><span class="ltx_transformed_inner" style="width:23.5pt;transform:translate(-0.33pt,-4.67pt) rotate(-45deg) ;">
<p class="ltx_p" id="A1.T3.3.3.4.7.1.1"><span class="ltx_text ltx_font_italic" id="A1.T3.3.3.4.7.1.1.1">Logic</span></p>
</span></div>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A1.T3.3.3.4.8">
<div class="ltx_inline-block ltx_transformed_outer" id="A1.T3.3.3.4.8.1" style="width:22.3pt;height:22.3pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:24.7pt;transform:translate(-1.2pt,-7.74pt) rotate(-45deg) ;">
<p class="ltx_p" id="A1.T3.3.3.4.8.1.1"><span class="ltx_text ltx_font_italic" id="A1.T3.3.3.4.8.1.1.1">Mem.</span></p>
</span></div>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A1.T3.3.3.4.9">
<div class="ltx_inline-block ltx_transformed_outer" id="A1.T3.3.3.4.9.1" style="width:20.1pt;height:20.1pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:21.5pt;transform:translate(-0.7pt,-6.59pt) rotate(-45deg) ;">
<p class="ltx_p" id="A1.T3.3.3.4.9.1.1"><span class="ltx_text ltx_font_italic" id="A1.T3.3.3.4.9.1.1.1">Bluff</span></p>
</span></div>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A1.T3.3.3.4.10">
<div class="ltx_inline-block ltx_transformed_outer" id="A1.T3.3.3.4.10.1" style="width:20.1pt;height:20.1pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:21.6pt;transform:translate(-0.75pt,-6.64pt) rotate(-45deg) ;">
<p class="ltx_p" id="A1.T3.3.3.4.10.1.1"><span class="ltx_text ltx_font_italic" id="A1.T3.3.3.4.10.1.1.1">Pers.</span></p>
</span></div>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A1.T3.3.3.4.11">
<div class="ltx_inline-block ltx_transformed_outer" id="A1.T3.3.3.4.11.1" style="width:27.8pt;height:27.8pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:32.5pt;transform:translate(-2.35pt,-10.5pt) rotate(-45deg) ;">
<p class="ltx_p" id="A1.T3.3.3.4.11.1.1"><span class="ltx_text ltx_font_italic" id="A1.T3.3.3.4.11.1.1.1">Uncert.</span></p>
</span></div>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A1.T3.3.3.4.12">
<div class="ltx_inline-block ltx_transformed_outer" id="A1.T3.3.3.4.12.1" style="width:27.7pt;height:27.7pt;vertical-align:-1.4pt;"><span class="ltx_transformed_inner" style="width:30.3pt;transform:translate(-1.29pt,-7.06pt) rotate(-45deg) ;">
<p class="ltx_p" id="A1.T3.3.3.4.12.1.1"><span class="ltx_text ltx_font_italic" id="A1.T3.3.3.4.12.1.1.1">Adapt.</span></p>
</span></div>
</td>
</tr>
<tr class="ltx_tr" id="A1.T3.3.3.5">
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T3.3.3.5.1">Blind Auction</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T3.3.3.5.2">3–15</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T3.3.3.5.3">❍</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T3.3.3.5.4">❍</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T3.3.3.5.5">❍</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T3.3.3.5.6">⚫</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T3.3.3.5.7">❍</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T3.3.3.5.8">❍</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T3.3.3.5.9">❍</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T3.3.3.5.10">⚫</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T3.3.3.5.11">⚫</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T3.3.3.5.12">❍</td>
</tr>
<tr class="ltx_tr" id="A1.T3.3.3.6">
<td class="ltx_td ltx_align_left" id="A1.T3.3.3.6.1">Character Conclave</td>
<td class="ltx_td ltx_align_center" id="A1.T3.3.3.6.2">3–15</td>
<td class="ltx_td ltx_align_center" id="A1.T3.3.3.6.3">⚫</td>
<td class="ltx_td ltx_align_center" id="A1.T3.3.3.6.4">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T3.3.3.6.5">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T3.3.3.6.6">⚫</td>
<td class="ltx_td ltx_align_center" id="A1.T3.3.3.6.7">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T3.3.3.6.8">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T3.3.3.6.9">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T3.3.3.6.10">⚫</td>
<td class="ltx_td ltx_align_center" id="A1.T3.3.3.6.11">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T3.3.3.6.12">⚫</td>
</tr>
<tr class="ltx_tr" id="A1.T3.1.1.1">
<td class="ltx_td ltx_align_left" id="A1.T3.1.1.1.1">Codenames<math alttext="{}^{\text{\textdagger}}" class="ltx_Math" display="inline" id="A1.T3.1.1.1.1.m1.1"><semantics id="A1.T3.1.1.1.1.m1.1a"><msup id="A1.T3.1.1.1.1.m1.1.1" xref="A1.T3.1.1.1.1.m1.1.1.cmml"><mi id="A1.T3.1.1.1.1.m1.1.1a" xref="A1.T3.1.1.1.1.m1.1.1.cmml"></mi><mtext id="A1.T3.1.1.1.1.m1.1.1.1" xref="A1.T3.1.1.1.1.m1.1.1.1a.cmml">†</mtext></msup><annotation-xml encoding="MathML-Content" id="A1.T3.1.1.1.1.m1.1b"><apply id="A1.T3.1.1.1.1.m1.1.1.cmml" xref="A1.T3.1.1.1.1.m1.1.1"><ci id="A1.T3.1.1.1.1.m1.1.1.1a.cmml" xref="A1.T3.1.1.1.1.m1.1.1.1"><mtext id="A1.T3.1.1.1.1.m1.1.1.1.cmml" mathsize="70%" xref="A1.T3.1.1.1.1.m1.1.1.1">†</mtext></ci></apply></annotation-xml><annotation encoding="application/x-tex" id="A1.T3.1.1.1.1.m1.1c">{}^{\text{\textdagger}}</annotation><annotation encoding="application/x-llamapun" id="A1.T3.1.1.1.1.m1.1d">start_FLOATSUPERSCRIPT † end_FLOATSUPERSCRIPT</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.1.2">4</td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.1.3">⚫</td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.1.4">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.1.5">⚫</td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.1.6">⚫</td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.1.7">⚫</td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.1.8">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.1.9">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.1.10">⚫</td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.1.11">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.1.12">❍</td>
</tr>
<tr class="ltx_tr" id="A1.T3.3.3.7">
<td class="ltx_td ltx_align_left" id="A1.T3.3.3.7.1">Liar’s Dice</td>
<td class="ltx_td ltx_align_center" id="A1.T3.3.3.7.2">2–15</td>
<td class="ltx_td ltx_align_center" id="A1.T3.3.3.7.3">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T3.3.3.7.4">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T3.3.3.7.5">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T3.3.3.7.6">⚫</td>
<td class="ltx_td ltx_align_center" id="A1.T3.3.3.7.7">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T3.3.3.7.8">⚫</td>
<td class="ltx_td ltx_align_center" id="A1.T3.3.3.7.9">⚫</td>
<td class="ltx_td ltx_align_center" id="A1.T3.3.3.7.10">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T3.3.3.7.11">⚫</td>
<td class="ltx_td ltx_align_center" id="A1.T3.3.3.7.12">❍</td>
</tr>
<tr class="ltx_tr" id="A1.T3.3.3.8">
<td class="ltx_td ltx_align_left" id="A1.T3.3.3.8.1">Negotiation</td>
<td class="ltx_td ltx_align_center" id="A1.T3.3.3.8.2">3–15</td>
<td class="ltx_td ltx_align_center" id="A1.T3.3.3.8.3">⚫</td>
<td class="ltx_td ltx_align_center" id="A1.T3.3.3.8.4">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T3.3.3.8.5">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T3.3.3.8.6">⚫</td>
<td class="ltx_td ltx_align_center" id="A1.T3.3.3.8.7">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T3.3.3.8.8">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T3.3.3.8.9">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T3.3.3.8.10">⚫</td>
<td class="ltx_td ltx_align_center" id="A1.T3.3.3.8.11">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T3.3.3.8.12">❍</td>
</tr>
<tr class="ltx_tr" id="A1.T3.2.2.2">
<td class="ltx_td ltx_align_left" id="A1.T3.2.2.2.1">Pit<math alttext="{}^{\text{\textdagger,*}}" class="ltx_Math" display="inline" id="A1.T3.2.2.2.1.m1.1"><semantics id="A1.T3.2.2.2.1.m1.1a"><msup id="A1.T3.2.2.2.1.m1.1.1" xref="A1.T3.2.2.2.1.m1.1.1.cmml"><mi id="A1.T3.2.2.2.1.m1.1.1a" xref="A1.T3.2.2.2.1.m1.1.1.cmml"></mi><mtext id="A1.T3.2.2.2.1.m1.1.1.1" xref="A1.T3.2.2.2.1.m1.1.1.1a.cmml">†,*</mtext></msup><annotation-xml encoding="MathML-Content" id="A1.T3.2.2.2.1.m1.1b"><apply id="A1.T3.2.2.2.1.m1.1.1.cmml" xref="A1.T3.2.2.2.1.m1.1.1"><ci id="A1.T3.2.2.2.1.m1.1.1.1a.cmml" xref="A1.T3.2.2.2.1.m1.1.1.1"><mtext id="A1.T3.2.2.2.1.m1.1.1.1.cmml" mathsize="70%" xref="A1.T3.2.2.2.1.m1.1.1.1">†,*</mtext></ci></apply></annotation-xml><annotation encoding="application/x-tex" id="A1.T3.2.2.2.1.m1.1c">{}^{\text{\textdagger,*}}</annotation><annotation encoding="application/x-llamapun" id="A1.T3.2.2.2.1.m1.1d">start_FLOATSUPERSCRIPT †,* end_FLOATSUPERSCRIPT</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center" id="A1.T3.2.2.2.2">3+</td>
<td class="ltx_td ltx_align_center" id="A1.T3.2.2.2.3">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T3.2.2.2.4">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T3.2.2.2.5">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T3.2.2.2.6">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T3.2.2.2.7">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T3.2.2.2.8">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T3.2.2.2.9">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T3.2.2.2.10">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T3.2.2.2.11">⚫</td>
<td class="ltx_td ltx_align_center" id="A1.T3.2.2.2.12">❍</td>
</tr>
<tr class="ltx_tr" id="A1.T3.3.3.9">
<td class="ltx_td ltx_align_left" id="A1.T3.3.3.9.1">Poker</td>
<td class="ltx_td ltx_align_center" id="A1.T3.3.3.9.2">2–15</td>
<td class="ltx_td ltx_align_center" id="A1.T3.3.3.9.3">⚫</td>
<td class="ltx_td ltx_align_center" id="A1.T3.3.3.9.4">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T3.3.3.9.5">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T3.3.3.9.6">⚫</td>
<td class="ltx_td ltx_align_center" id="A1.T3.3.3.9.7">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T3.3.3.9.8">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T3.3.3.9.9">⚫</td>
<td class="ltx_td ltx_align_center" id="A1.T3.3.3.9.10">⚫</td>
<td class="ltx_td ltx_align_center" id="A1.T3.3.3.9.11">⚫</td>
<td class="ltx_td ltx_align_center" id="A1.T3.3.3.9.12">❍</td>
</tr>
<tr class="ltx_tr" id="A1.T3.3.3.10">
<td class="ltx_td ltx_align_left" id="A1.T3.3.3.10.1">Snake</td>
<td class="ltx_td ltx_align_center" id="A1.T3.3.3.10.2">2–15</td>
<td class="ltx_td ltx_align_center" id="A1.T3.3.3.10.3">⚫</td>
<td class="ltx_td ltx_align_center" id="A1.T3.3.3.10.4">⚫</td>
<td class="ltx_td ltx_align_center" id="A1.T3.3.3.10.5">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T3.3.3.10.6">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T3.3.3.10.7">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T3.3.3.10.8">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T3.3.3.10.9">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T3.3.3.10.10">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T3.3.3.10.11">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T3.3.3.10.12">❍</td>
</tr>
<tr class="ltx_tr" id="A1.T3.3.3.11">
<td class="ltx_td ltx_align_left" id="A1.T3.3.3.11.1">Surround</td>
<td class="ltx_td ltx_align_center" id="A1.T3.3.3.11.2">2–15</td>
<td class="ltx_td ltx_align_center" id="A1.T3.3.3.11.3">⚫</td>
<td class="ltx_td ltx_align_center" id="A1.T3.3.3.11.4">⚫</td>
<td class="ltx_td ltx_align_center" id="A1.T3.3.3.11.5">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T3.3.3.11.6">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T3.3.3.11.7">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T3.3.3.11.8">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T3.3.3.11.9">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T3.3.3.11.10">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T3.3.3.11.11">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T3.3.3.11.12">❍</td>
</tr>
<tr class="ltx_tr" id="A1.T3.3.3.3">
<td class="ltx_td ltx_align_left" id="A1.T3.3.3.3.1">Two Rooms and a Boom<math alttext="{}^{\text{\textdagger}}" class="ltx_Math" display="inline" id="A1.T3.3.3.3.1.m1.1"><semantics id="A1.T3.3.3.3.1.m1.1a"><msup id="A1.T3.3.3.3.1.m1.1.1" xref="A1.T3.3.3.3.1.m1.1.1.cmml"><mi id="A1.T3.3.3.3.1.m1.1.1a" xref="A1.T3.3.3.3.1.m1.1.1.cmml"></mi><mtext id="A1.T3.3.3.3.1.m1.1.1.1" xref="A1.T3.3.3.3.1.m1.1.1.1a.cmml">†</mtext></msup><annotation-xml encoding="MathML-Content" id="A1.T3.3.3.3.1.m1.1b"><apply id="A1.T3.3.3.3.1.m1.1.1.cmml" xref="A1.T3.3.3.3.1.m1.1.1"><ci id="A1.T3.3.3.3.1.m1.1.1.1a.cmml" xref="A1.T3.3.3.3.1.m1.1.1.1"><mtext id="A1.T3.3.3.3.1.m1.1.1.1.cmml" mathsize="70%" xref="A1.T3.3.3.3.1.m1.1.1.1">†</mtext></ci></apply></annotation-xml><annotation encoding="application/x-tex" id="A1.T3.3.3.3.1.m1.1c">{}^{\text{\textdagger}}</annotation><annotation encoding="application/x-llamapun" id="A1.T3.3.3.3.1.m1.1d">start_FLOATSUPERSCRIPT † end_FLOATSUPERSCRIPT</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center" id="A1.T3.3.3.3.2">6+</td>
<td class="ltx_td ltx_align_center" id="A1.T3.3.3.3.3">⚫</td>
<td class="ltx_td ltx_align_center" id="A1.T3.3.3.3.4">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T3.3.3.3.5">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T3.3.3.3.6">⚫</td>
<td class="ltx_td ltx_align_center" id="A1.T3.3.3.3.7">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T3.3.3.3.8">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T3.3.3.3.9">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T3.3.3.3.10">⚫</td>
<td class="ltx_td ltx_align_center" id="A1.T3.3.3.3.11">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T3.3.3.3.12">❍</td>
</tr>
<tr class="ltx_tr" id="A1.T3.3.3.12">
<td class="ltx_td ltx_align_left" id="A1.T3.3.3.12.1">Diplomacy</td>
<td class="ltx_td ltx_align_center" id="A1.T3.3.3.12.2">3–7</td>
<td class="ltx_td ltx_align_center" id="A1.T3.3.3.12.3">⚫</td>
<td class="ltx_td ltx_align_center" id="A1.T3.3.3.12.4">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T3.3.3.12.5">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T3.3.3.12.6">⚫</td>
<td class="ltx_td ltx_align_center" id="A1.T3.3.3.12.7">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T3.3.3.12.8">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T3.3.3.12.9">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T3.3.3.12.10">⚫</td>
<td class="ltx_td ltx_align_center" id="A1.T3.3.3.12.11">❍</td>
<td class="ltx_td ltx_align_center" id="A1.T3.3.3.12.12">⚫</td>
</tr>
<tr class="ltx_tr" id="A1.T3.3.3.13">
<td class="ltx_td ltx_align_left ltx_border_bb" id="A1.T3.3.3.13.1">SecretMafia</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T3.3.3.13.2">5-15</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T3.3.3.13.3">❍</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T3.3.3.13.4">❍</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T3.3.3.13.5">❍</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T3.3.3.13.6">⚫</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T3.3.3.13.7">❍</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T3.3.3.13.8">⚫</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T3.3.3.13.9">⚫</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T3.3.3.13.10">⚫</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T3.3.3.13.11">❍</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T3.3.3.13.12">⚫</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table classifies multiplayer games based on the number of players and the main cognitive or strategic skills involved.  A filled circle (⚫) shows a skill's relevance, while an empty circle (❍) indicates irrelevance.  Games marked with special symbols reference specific studies: † (Costarelli et al., 2024), ‡ (Hua et al., 2024), § (Davidson et al., 2024), and ¶ (Duan et al., 2024). Abbreviations: Strat. = Strategic Planning, Spatial = Spatial Thinking, Pattern = Pattern Recognition, ToM = Theory of Mind, Logic = Logical Reasoning, Mem. = Memory Recall, Bluff = Bluffing, Pers. = Persuasion, Uncert. = Uncertainty Estimation, Adapt. = Adaptability. Games with an asterisk (*) are not yet fully implemented.
> <details>
> <summary>read the caption</summary>
> Table 3: This table categorizes multi-player games by the number of players and the primary cognitive or strategic skills emphasized in each game. Filled circles (⚫) indicate which skills are relevant to each game, while empty circles (❍) indicate skills not emphasized. Games marked with special symbols are referenced from notable studies: games marked with † are drawn from Costarelli et al. (2024), ‡ from Hua et al. (2024), § from Davidson et al. (2024), and ¶ from Duan et al. (2024). Strat. = Strategic Planning, Spatial = Spatial Thinking, Pattern = Pattern Recognition, ToM = Theory of Mind, Logic = Logical Reasoning, Mem. = Memory Recall, Bluff = Bluffing, Pers. = Persuasion, Uncert. = Uncertainty Estimation, Adapt. = Adaptability. Games marked with ∗{*}∗ have not been fully implemented yet.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2504.11442/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.11442/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.11442/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.11442/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.11442/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.11442/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.11442/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.11442/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.11442/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.11442/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.11442/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.11442/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.11442/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}