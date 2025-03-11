---
title: "SurveyForge: On the Outline Heuristics, Memory-Driven Generation, and Multi-dimensional Evaluation for Automated Survey Writing"
summary: "SURVEYFORGE automates survey generation, improving quality and evaluation."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Multimodal Learning", "Multimodal Generation", "🏢 Shanghai Artificial Intelligence Laboratory",]
showSummary: true
date: 2025-03-06
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2503.04629 {{< /keyword >}}
{{< keyword icon="writer" >}} Xiangchao Yan et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-03-11 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2503.04629" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2503.04629" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2503.04629/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Survey papers are vital for researchers, but creating them is tough due to the flood of publications. Automated tools using LLMs exist, yet they often lack quality, especially in outlines and citations. **This work introduces SURVEYFORGE to solve these issues.** It improves outline generation by studying human-written outlines and using domain-related articles. The system then retrieves and refines content using high-quality papers found via a scholar navigation agent. Also a new benchmark, SurveyBench, offers a comprehensive evaluation across reference, outline, and content quality.



**SURVEYFORGE uses a two-stage process:** first, it creates outlines by learning from existing human-written outlines and relevant literature. Then, it uses a scholar navigation agent to fetch high-quality papers for each subsection, generating and refining content accordingly. The paper also introduces SurveyBench, a new evaluation tool. Experiments show that this approach outperforms previous methods like AutoSurvey. The authors highlight the tool’s ability to generate well-structured outlines and retrieve high-quality references.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} SURVEYFORGE enhances outline structure and coherence. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} The framework employs a memory-driven scholar navigation agent for high-quality reference retrieval. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} SurveyBench offers a multi-dimensional evaluation benchmark for AI-generated surveys. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
**SURVEYFORGE** enhances automated survey writing by improving outline quality, reference accuracy, and offering a new evaluation benchmark, boosting research efficiency and opening new research avenues.

------
#### Visual Insights



![](https://arxiv.org/html/2503.04629/x5.png)

> 🔼 AI-generated survey papers often have two main issues: poor outlines (lacking logical flow and structure) and inadequate references (missing key, influential works).
> <details>
> <summary>read the caption</summary>
> Figure 1: Compared to human-written surveys, AI-generated surveys face two primary challenges. First, regarding the outline, these papers may often lack coherent logic and well-structured organization. Second, with respect to references, they frequently fail to include truly relevant and influential literature.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S4.T1.1.1">
<tr class="ltx_tr" id="S4.T1.1.1.1">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S4.T1.1.1.1.1" rowspan="2"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.1.1.1">Methods</span></td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S4.T1.1.1.1.2" rowspan="2"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.1.2.1">Model</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" colspan="2" id="S4.T1.1.1.1.3"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.1.3.1">Reference Quality</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.1.1.1.4" rowspan="2"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.1.4.1">Outline Quality</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" colspan="4" id="S4.T1.1.1.1.5"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.1.5.1">Content Quality</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.1.2">
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.2.1">Input Cov.</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.1.1.2.2">Reference Cov.</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.2.3"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.2.3.1">Structure</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.2.4"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.2.4.1">Relevance</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.2.5"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.2.5.1">Coverage</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.2.6"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.2.6.1">Avg</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.1.3">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S4.T1.1.1.3.1">Human-Written</td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S4.T1.1.1.3.2">-</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.3.3">-</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.1.1.3.4">0.6294</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.1.1.3.5">87.62</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.3.6">-</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.3.7">-</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.3.8">-</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.3.9">-</td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.1.4">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T1.1.1.4.1">AutoSurvey</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T1.1.1.4.2">Claude-3-Haiku</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.4.3">0.1153</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.1.1.4.4">0.2341</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.1.1.4.5">82.18</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.4.6">72.83</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.4.7">76.44</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.4.8">72.35</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.4.9">73.87</td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.1.5">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T1.1.1.5.1"><span class="ltx_text ltx_font_smallcaps" id="S4.T1.1.1.5.1.1">SurveyForge</span></td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T1.1.1.5.2">Claude-3-Haiku</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.5.3">0.2231</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.1.1.5.4">0.3960</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.1.1.5.5">86.85</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.5.6">73.82</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.5.7">79.62</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.5.8">75.59</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.5.9">76.34</td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.1.6">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T1.1.1.6.1">AutoSurvey</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T1.1.1.6.2">GPT-4o mini</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.6.3">0.0665</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.1.1.6.4">0.2035</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.1.1.6.5">83.10</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.6.6">74.66</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.6.7">74.16</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.6.8">76.33</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.6.9">75.05</td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.1.7">
<td class="ltx_td ltx_align_left ltx_border_b ltx_border_r" id="S4.T1.1.1.7.1"><span class="ltx_text ltx_font_smallcaps" id="S4.T1.1.1.7.1.1">SurveyForge</span></td>
<td class="ltx_td ltx_align_left ltx_border_b ltx_border_r" id="S4.T1.1.1.7.2">GPT-4o mini</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T1.1.1.7.3">0.2018</td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r" id="S4.T1.1.1.7.4">0.4236</td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r" id="S4.T1.1.1.7.5">86.62</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T1.1.1.7.6">77.10</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T1.1.1.7.7">76.94</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T1.1.1.7.8">77.15</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T1.1.1.7.9">77.06</td>
</tr>
</table>{{< /table-caption >}}

> 🔼 Table 1 presents a comparative analysis of the performance of SurveyForge and AutoSurvey (Wang et al., 2024c) in automated survey generation.  The comparison uses three key metrics from the Survey Assessment Metrics (SAM) framework: Reference Quality (SAM-R), Outline Quality (SAM-O), and Content Quality (SAM-C).  Reference Quality is further broken down into Input Coverage (the overlap between retrieved papers and benchmark references) and Reference Coverage (the alignment between cited references in the generated survey and the benchmark). The table highlights the relative strengths and weaknesses of each approach across these dimensions.
> <details>
> <summary>read the caption</summary>
> Table 1: Comparison of SurveyForge and AutoSurvey (Wang et al., 2024c) using Survey Assessment Metrics (SAM) from three aspects: Reference (SAM-R), Outline (SAM-O) and Content quality (SAM-C). 'Input Cov.' means the coverage of input papers, measuring the overlap between retrieved papers and benchmark references, while 'Reference Cov.' means the coverage of reference, evaluating the alignment between cited references of the survey and benchmark references.
> </details>





### In-depth insights


#### Outline Heuristics
**Outline heuristics** are crucial for survey papers. They involve using expert knowledge to structure content logically. Effective heuristics address the limited understanding of LLMs, ensuring relevant sections. Domain-specific heuristics refine structure and enhance the framework. By guiding content organization, these **heuristics ensure coherence** in the writing process, supporting the credibility and usability.

#### Memory Navigator
I imagine a 'Memory Navigator' as a system component designed to efficiently retrieve and utilize information from a vast store of knowledge. It would likely involve **sophisticated indexing and search algorithms**, allowing the system to quickly locate relevant data based on specific queries. A crucial aspect would be the ability to **handle diverse data types and formats**, ensuring compatibility across different information sources. Furthermore, the Memory Navigator would need to **prioritize relevance and accuracy**, filtering out irrelevant or outdated information to provide the most useful results. The design would consider efficient storage and retrieval, perhaps employing techniques like **data compression and caching** to optimize performance. The system may also employ a **semantic understanding of the data**, enabling it to connect related concepts and provide a more complete picture to the user. This component would enable a more organized approach to efficiently retrieving information for a specific task. 

#### SurveyBench
**SurveyBench** is a crucial element for objectively evaluating AI-generated surveys. It's a comprehensive benchmark, addressing the lack of standardized evaluation in this field. SurveyBench features quantifiable metrics to assess **outline quality, reference relevance, and content quality**. It helps researchers rigorously compare different methods. SurveyBench consists of human-written survey papers across diverse topics. The benchmark has objective metrics, expert knowledge, and multi-dimensional criteria through core components like SAM-R, SAM-O, and SAM-C.

#### Heuristic Learn
Heuristic learning, in the context of automated survey generation, likely involves leveraging **rules of thumb** or **experiential knowledge** to guide the outline creation process. Instead of relying solely on complex algorithms or deep learning models, a heuristic approach would prioritize **simpler, more intuitive strategies** that have proven effective in human-written surveys. For instance, the system might learn that certain topics are typically structured in a specific way, with particular sections and subsections appearing in a predictable order. The advantages of heuristic learning may include increased **interpretability**, **reduced computational cost**, and **improved robustness** to noisy or incomplete data. However, it is important to be aware of the potential for bias or limitations in the learned heuristics, and to combine the approach with other techniques to ensure comprehensive and high-quality survey generation. This can offer an **initial framework** before refining with more complex models.

#### Auto-Survey Gap
**AutoSurvey's limitations** highlight the ongoing challenges in automated survey generation.  While showing promise, it faces hurdles in **mimicking human writing nuances**. There is **scope for improvement** in logical structure and citation accuracy. **Automated methods** may struggle with comprehensive knowledge and original insights.  Also, **the accuracy** of content is an area needing attention.  Thus, there's a demand for methods enhancing the quality, relevance, and structure, alongside bridging AI-generated and human surveys **for reliable research automation**.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2503.04629/x6.png)

> 🔼 SurveyForge's architecture is a two-stage process.  The first, Outline Generation, uses heuristic learning and relevant literature to create a well-structured outline. The second, Content Writing, uses a Scholar Navigation Agent (SANA) to find high-quality literature for each section.  An LLM then generates the content for each section, which is subsequently combined and refined into a complete survey.
> <details>
> <summary>read the caption</summary>
> Figure 2: The overview of SurveyForge. The framework consists of two main stages: Outline Generation and Content Writing. In the Outline Generation stage, SurveyForge utilizes heuristic learning to generate well-structured outlines by leveraging topic-relevant literature and structural patterns from existing surveys. In the Content Writing stage, a memory-driven Scholar Navigation Agent (SANA) retrieves high-quality literature for each subsection and LLM generates the content of each subsection. Finally, the content is synthesized and refined into a coherent and comprehensive survey.
> </details>



![](https://arxiv.org/html/2503.04629/x7.png)

> 🔼 This figure illustrates the regular process of writing an academic survey paper. It involves searching for relevant references, drafting the outline, and engaging in academic writing. The figure also highlights the challenges AI-generated survey papers face, particularly in terms of outline quality and reference relevance. AI-generated outlines may lack coherent logic and well-structured organization, while AI-generated references may include irrelevant literature or omit important contributions.
> <details>
> <summary>read the caption</summary>
> (a)
> </details>



![](https://arxiv.org/html/2503.04629/x8.png)

> 🔼 The figure shows the challenges of AI-generated survey papers compared to human-written surveys.  Specifically, it highlights problems with the outline and references.  AI-generated outlines may lack coherent logic and well-structured organization (too broad, too narrow, too deep, too shallow, irrelevant content, insufficient coverage, excessive detail, inadequate analysis). AI-generated references may contain irrelevant ones or miss core, influential literature.
> <details>
> <summary>read the caption</summary>
> (b)
> </details>



![](https://arxiv.org/html/2503.04629/x9.png)

> 🔼 This figure compares the outline quality of AI-generated surveys versus human-written surveys.  It shows that AI-generated surveys often lack coherent logic and well-structured organization (too broad, too narrow, insufficient coverage, excessive detail, etc.), while also struggling to include truly relevant and influential literature in their references.
> <details>
> <summary>read the caption</summary>
> (c)
> </details>



![](https://arxiv.org/html/2503.04629/x10.png)

> 🔼 This figure shows the evaluation results on the SurveyBench dataset, specifically focusing on Content Quality.  It's a radar chart comparing the performance of SURVEYFORGE and AutoSurvey, as well as a human-written survey, across three dimensions of content quality: Structure, Relevance, and Coverage. The chart visually represents the relative strengths and weaknesses of each approach in achieving high-quality content generation for survey papers.  Higher scores indicate better performance in each dimension.
> <details>
> <summary>read the caption</summary>
> (d)
> </details>



![](https://arxiv.org/html/2503.04629/x13.png)

> 🔼 Figure 3 presents a comprehensive evaluation of the SURVEYFORGE model's performance on the SurveyBench dataset.  The figure consists of four sub-figures, each illustrating a key aspect of survey generation quality: (a) Input Coverage shows the proportion of relevant papers retrieved during the initial literature search; (b) Reference Coverage displays the percentage of relevant and influential papers included in the generated survey's bibliography; (c) Outline Quality evaluates the structure and organization of the generated survey's outline; and (d) Content Quality assesses the overall coherence and comprehensiveness of the generated survey's content. Each sub-figure visually compares the performance of SURVEYFORGE against the baseline AutoSurvey and human-generated surveys, providing a detailed analysis of the model's strengths and limitations in each dimension.
> <details>
> <summary>read the caption</summary>
> Figure 3: Evaluation results on SurveyBench. Evaluation results of (a) Input Coverage, (b) Reference Coverage, (c) Outline Quality, and (d) Content Quality.
> </details>



![](https://arxiv.org/html/2503.04629/x14.png)

> 🔼 This figure compares the survey outlines generated using two different methods: a baseline method and the proposed SURVEYFORGE framework. The left side shows the outline generated by the baseline method, which is characterized by a fragmented structure with a lack of clear organization and logical flow between sections. In contrast, the right side shows the outline produced by SURVEYFORGE, which demonstrates a more comprehensive and systematically organized structure with clear connections between sections.
> <details>
> <summary>read the caption</summary>
> Figure 4: Comparisons of survey outlines generated by the baseline method (left) and our proposed framework (right). The baseline displays a fragmented structure, whereas our method yields a more comprehensive, systematically organized outline.
> </details>



![](https://arxiv.org/html/2503.04629/x15.png)

> 🔼 Figure 5 showcases an example of a survey paper automatically generated by the SURVEYFORGE framework.  The figure displays a portion of the generated survey, highlighting its well-structured outline, comprehensive content, and detailed referencing.  To view the complete survey paper, including the detailed contents of all sections, the caption directs readers to a URL, https://anonymous.4open.science/r/survey_example-7C37/. This URL provides access to additional auto-generated results, illustrating the system's capabilities in generating full-length academic survey papers.
> <details>
> <summary>read the caption</summary>
> Figure 5: Example of the survey generated by SurveyForge. Please refer to https://anonymous.4open.science/r/survey_example-7C37/ for more auto-generated results.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S4.T2.1.1">
<tr class="ltx_tr" id="S4.T2.1.1.1">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S4.T2.1.1.1.1" rowspan="2"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.1.1.1">Methods</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" colspan="3" id="S4.T2.1.1.1.2"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.1.2.1">Outline Comparison</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" colspan="2" id="S4.T2.1.1.1.3"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.1.3.1">Content Comparison</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.1.2">
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.2.1">Score Win Rate</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.2.2">Comparative Win Rate</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.1.1.2.3">Human Eval</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.2.4">Score Win Rate</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.2.5">Human Eval</td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.1.3">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S4.T2.1.1.3.1">AutoSurvey <cite class="ltx_cite ltx_citemacro_citep">(Wang et al., <a class="ltx_ref" href="https://arxiv.org/html/2503.04629v1#bib.bib31" title="">2024c</a>)</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.3.2">27.00%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.3.3">25.00%</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.1.1.3.4">26.00%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.3.5">31.00%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.3.6">30.00%</td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.1.4">
<td class="ltx_td ltx_align_left ltx_border_b ltx_border_r" id="S4.T2.1.1.4.1"><span class="ltx_text ltx_font_smallcaps" id="S4.T2.1.1.4.1.1">SurveyForge</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T2.1.1.4.2">73.00%</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T2.1.1.4.3">75.00%</td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r" id="S4.T2.1.1.4.4">74.00%</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T2.1.1.4.5">69.00%</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T2.1.1.4.6">70.00%</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table compares the performance of automatically generated and human-written survey papers in terms of outline and content quality.  Three win rate metrics are presented: 1)  'Score Win Rate' shows the percentage of times the automated system's LLM-assigned score was higher; 2) 'Comparative Win Rate' presents the win rate when the LLM directly compared pairs of papers; 3) 'Human Eval' shows the human expert evaluation win rate.  This allows for a multifaceted comparison of the automated system's quality, considering both direct scoring and head-to-head comparisons.
> <details>
> <summary>read the caption</summary>
> Table 2: Win-rate comparison of automatic and human evaluations on outline and content quality. 'Score Win Rate' reflects the win rate based on individual LLM-scores, where the LLM assigns separate score to each survey paper before determining the higher-scoring one. 'Comparative Win Rate' is derived from LLM pairwise comparisons, where the LLM directly compares two articles side-by-side and decides which one is superior. 'Human Eval' represents the win rate derived from expert human evaluations.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S4.T3.1.1">
<tr class="ltx_tr" id="S4.T3.1.1.2">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S4.T3.1.1.2.1"><span class="ltx_text ltx_font_bold" id="S4.T3.1.1.2.1.1">Method</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T3.1.1.2.2"><span class="ltx_text ltx_font_bold" id="S4.T3.1.1.2.2.1">Heuristic Learning</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T3.1.1.2.3"><span class="ltx_text ltx_font_bold" id="S4.T3.1.1.2.3.1">Demonstration Outline</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.1.2.4"><span class="ltx_text ltx_font_bold" id="S4.T3.1.1.2.4.1">Outline Quality</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.1.1">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S4.T3.1.1.1.2">AutoSurvey</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T3.1.1.1.1"><math alttext="\times" class="ltx_Math" display="inline" id="S4.T3.1.1.1.1.m1.1"><semantics id="S4.T3.1.1.1.1.m1.1a"><mo id="S4.T3.1.1.1.1.m1.1.1" xref="S4.T3.1.1.1.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T3.1.1.1.1.m1.1b"><times id="S4.T3.1.1.1.1.m1.1.1.cmml" xref="S4.T3.1.1.1.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.1.1.1.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T3.1.1.1.1.m1.1d">×</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T3.1.1.1.3">-</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.1.1.4">81.78</td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.1.3">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T3.1.1.3.1"><span class="ltx_text ltx_font_smallcaps" id="S4.T3.1.1.3.1.1">SurveyForge</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.1.1.3.2">✓</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.1.1.3.3">From random surveys</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.3.4">84.58</td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.1.4">
<td class="ltx_td ltx_align_left ltx_border_b ltx_border_r" id="S4.T3.1.1.4.1"><span class="ltx_text ltx_font_smallcaps" id="S4.T3.1.1.4.1.1">SurveyForge</span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r" id="S4.T3.1.1.4.2">✓</td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r" id="S4.T3.1.1.4.3">From related surveys</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T3.1.1.4.4">86.67</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This ablation study investigates the impact of different outline sources used for heuristic learning within the outline generation stage of the SURVEYFORGE framework.  It shows how using outlines from related surveys, rather than random ones, leads to better-structured AI-generated survey outlines. The improvement is further enhanced by employing outlines directly related to the target survey topic.
> <details>
> <summary>read the caption</summary>
> Table 3: Ablation study for outline generation. 'Demonstration Outline' means the source of outlines used for heuristic learning.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S4.T4.1.1">
<tr class="ltx_tr" id="S4.T4.1.1.1">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" colspan="3" id="S4.T4.1.1.1.1"><span class="ltx_text ltx_font_bold" id="S4.T4.1.1.1.1.1">Components</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" colspan="2" id="S4.T4.1.1.1.2"><span class="ltx_text ltx_font_bold" id="S4.T4.1.1.1.2.1">Reference Quality</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.1.1.2">
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.2.1">MR</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.2.2">MS</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T4.1.1.2.3">TRE</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.2.4">Input Cov.</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.2.5">Reference Cov.</td>
</tr>
<tr class="ltx_tr" id="S4.T4.1.1.3">
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.1.1.3.1">-</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.1.1.3.2">-</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T4.1.1.3.3">-</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.1.1.3.4">0.1119</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.1.1.3.5">0.2340</td>
</tr>
<tr class="ltx_tr" id="S4.T4.1.1.4">
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.4.1">✓</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.4.2">-</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T4.1.1.4.3">-</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.4.4">0.1694</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.4.5">0.2730</td>
</tr>
<tr class="ltx_tr" id="S4.T4.1.1.5">
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.5.1">✓</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.5.2">✓</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T4.1.1.5.3">-</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.5.4">0.1781</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.5.5">0.2984</td>
</tr>
<tr class="ltx_tr" id="S4.T4.1.1.6">
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.6.1">✓</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.6.2">-</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T4.1.1.6.3">✓</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.6.4">0.1997</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.6.5">0.3542</td>
</tr>
<tr class="ltx_tr" id="S4.T4.1.1.7">
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T4.1.1.7.1">✓</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T4.1.1.7.2">✓</td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r" id="S4.T4.1.1.7.3">✓</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T4.1.1.7.4">0.2224</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T4.1.1.7.5">0.3971</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This ablation study investigates the impact of each component within the Scholar Navigation Agent (SANA) module on the content generation process.  The SANA module consists of three main parts: Memory for Retrieval (MR), Memory for Sub-query (MS), and Temporal-aware Reranking Engine (TRE). The table shows how the removal of each component affects the Input Coverage and Reference Coverage metrics, which measure the quality of references retrieved by the system. This helps determine the relative importance and contribution of each component to the overall system performance.
> <details>
> <summary>read the caption</summary>
> Table 4: Ablation study for content generation. We perform ablation on three components of SANA module: MR represents Memory for Retrieval, MS represents Memory for Sub-query, and TRE represents Temporal-aware Reranking Engine.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="A1.T5.1.1">
<tr class="ltx_tr" id="A1.T5.1.1.1">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T5.1.1.1.1" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text ltx_font_bold" id="A1.T5.1.1.1.1.1">Topic</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T5.1.1.1.2" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text ltx_font_bold" id="A1.T5.1.1.1.2.1">Ref Num</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T5.1.1.1.3" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text ltx_font_bold" id="A1.T5.1.1.1.3.1">Selected Survey Title</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T5.1.1.1.4" style="padding-top:2.25pt;padding-bottom:2.25pt;"><span class="ltx_text ltx_font_bold" id="A1.T5.1.1.1.4.1">Citation</span></td>
</tr>
<tr class="ltx_tr" id="A1.T5.1.1.2">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T5.1.1.2.1" style="padding-top:2.25pt;padding-bottom:2.25pt;">Multimodal Large Language Models</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T5.1.1.2.2" style="padding-top:2.25pt;padding-bottom:2.25pt;">912</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T5.1.1.2.3" style="padding-top:2.25pt;padding-bottom:2.25pt;">A Survey on Multimodal Large Language Models</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T5.1.1.2.4" style="padding-top:2.25pt;padding-bottom:2.25pt;">979</td>
</tr>
<tr class="ltx_tr" id="A1.T5.1.1.3">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T5.1.1.3.1" style="padding-top:2.25pt;padding-bottom:2.25pt;">Evaluation of Large Language Models</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T5.1.1.3.2" style="padding-top:2.25pt;padding-bottom:2.25pt;">714</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T5.1.1.3.3" style="padding-top:2.25pt;padding-bottom:2.25pt;">A Survey on Evaluation of Large Language Models</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T5.1.1.3.4" style="padding-top:2.25pt;padding-bottom:2.25pt;">1690</td>
</tr>
<tr class="ltx_tr" id="A1.T5.1.1.4">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T5.1.1.4.1" style="padding-top:2.25pt;padding-bottom:2.25pt;">3D Object Detection in Autonomous Driving</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T5.1.1.4.2" style="padding-top:2.25pt;padding-bottom:2.25pt;">441</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T5.1.1.4.3" style="padding-top:2.25pt;padding-bottom:2.25pt;">3D Object Detection for Autonomous Driving: A Comprehensive Survey</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T5.1.1.4.4" style="padding-top:2.25pt;padding-bottom:2.25pt;">172</td>
</tr>
<tr class="ltx_tr" id="A1.T5.1.1.5">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T5.1.1.5.1" style="padding-top:2.25pt;padding-bottom:2.25pt;">Vision Transformers</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T5.1.1.5.2" style="padding-top:2.25pt;padding-bottom:2.25pt;">563</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T5.1.1.5.3" style="padding-top:2.25pt;padding-bottom:2.25pt;">A Survey of Visual Transformers</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T5.1.1.5.4" style="padding-top:2.25pt;padding-bottom:2.25pt;">405</td>
</tr>
<tr class="ltx_tr" id="A1.T5.1.1.6">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T5.1.1.6.1" style="padding-top:2.25pt;padding-bottom:2.25pt;">Hallucination in Large Language Models</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T5.1.1.6.2" style="padding-top:2.25pt;padding-bottom:2.25pt;">500</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T5.1.1.6.3" style="padding-top:2.25pt;padding-bottom:2.25pt;">Siren’s Song in the AI Ocean: A Survey on Hallucination in Large Language Models</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T5.1.1.6.4" style="padding-top:2.25pt;padding-bottom:2.25pt;">808</td>
</tr>
<tr class="ltx_tr" id="A1.T5.1.1.7">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T5.1.1.7.1" style="padding-top:2.25pt;padding-bottom:2.25pt;">Generative Diffusion Models</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T5.1.1.7.2" style="padding-top:2.25pt;padding-bottom:2.25pt;">994</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T5.1.1.7.3" style="padding-top:2.25pt;padding-bottom:2.25pt;">A Survey on Generative Diffusion Models</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T5.1.1.7.4" style="padding-top:2.25pt;padding-bottom:2.25pt;">367</td>
</tr>
<tr class="ltx_tr" id="A1.T5.1.1.8">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T5.1.1.8.1" style="padding-top:2.25pt;padding-bottom:2.25pt;">3D Gaussian Splatting</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T5.1.1.8.2" style="padding-top:2.25pt;padding-bottom:2.25pt;">330</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T5.1.1.8.3" style="padding-top:2.25pt;padding-bottom:2.25pt;">A Survey on 3D Gaussian Splatting</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T5.1.1.8.4" style="padding-top:2.25pt;padding-bottom:2.25pt;">128</td>
</tr>
<tr class="ltx_tr" id="A1.T5.1.1.9">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T5.1.1.9.1" style="padding-top:2.25pt;padding-bottom:2.25pt;">LLM-based Multi-Agent</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T5.1.1.9.2" style="padding-top:2.25pt;padding-bottom:2.25pt;">823</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T5.1.1.9.3" style="padding-top:2.25pt;padding-bottom:2.25pt;">A Survey on Large Language Model Based Autonomous Agents</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T5.1.1.9.4" style="padding-top:2.25pt;padding-bottom:2.25pt;">765</td>
</tr>
<tr class="ltx_tr" id="A1.T5.1.1.10">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T5.1.1.10.1" style="padding-top:2.25pt;padding-bottom:2.25pt;">Graph Neural Networks</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T5.1.1.10.2" style="padding-top:2.25pt;padding-bottom:2.25pt;">670</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T5.1.1.10.3" style="padding-top:2.25pt;padding-bottom:2.25pt;">Graph Neural Networks: Taxonomy, Advances, and Trends</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T5.1.1.10.4" style="padding-top:2.25pt;padding-bottom:2.25pt;">129</td>
</tr>
<tr class="ltx_tr" id="A1.T5.1.1.11">
<td class="ltx_td ltx_align_left ltx_border_b ltx_border_r ltx_border_t" id="A1.T5.1.1.11.1" style="padding-top:2.25pt;padding-bottom:2.25pt;">Retrieval-Augmented Generation for Large Language Models</td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_t" id="A1.T5.1.1.11.2" style="padding-top:2.25pt;padding-bottom:2.25pt;">608</td>
<td class="ltx_td ltx_align_left ltx_border_b ltx_border_t" id="A1.T5.1.1.11.3" style="padding-top:2.25pt;padding-bottom:2.25pt;">Retrieval-Augmented Generation for Large Language Models: A Survey</td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_t" id="A1.T5.1.1.11.4" style="padding-top:2.25pt;padding-bottom:2.25pt;">953</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the 10 topics selected for the SurveyBench benchmark, along with the number of unique references associated with each topic and the citation counts for high-quality survey papers used as evaluation references.  The data provides context on the scope and relevance of the chosen topics within the field of computer science.
> <details>
> <summary>read the caption</summary>
> Table 5: Overview of selected topics and the representative surveys in our evaluation benchmark. For each topic, we show the total number of unique references (Ref Num) collected from SurveyBench, and the citation count of selected high-quality surveys that serve as our evaluation references.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="A1.T6.1.1">
<tr class="ltx_tr" id="A1.T6.1.1.1">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T6.1.1.1.2" style="padding-left:18.0pt;padding-right:18.0pt;">      <span class="ltx_text ltx_font_bold" id="A1.T6.1.1.1.2.1">Evaluation Pair</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A1.T6.1.1.1.3" style="padding-left:18.0pt;padding-right:18.0pt;">      <span class="ltx_text ltx_font_bold" id="A1.T6.1.1.1.3.1">Aspect</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T6.1.1.1.1" style="padding-left:18.0pt;padding-right:18.0pt;">      <math alttext="\kappa" class="ltx_Math" display="inline" id="A1.T6.1.1.1.1.m1.1"><semantics id="A1.T6.1.1.1.1.m1.1a"><mi id="A1.T6.1.1.1.1.m1.1.1" xref="A1.T6.1.1.1.1.m1.1.1.cmml">κ</mi><annotation-xml encoding="MathML-Content" id="A1.T6.1.1.1.1.m1.1b"><ci id="A1.T6.1.1.1.1.m1.1.1.cmml" xref="A1.T6.1.1.1.1.m1.1.1">𝜅</ci></annotation-xml><annotation encoding="application/x-tex" id="A1.T6.1.1.1.1.m1.1c">\kappa</annotation><annotation encoding="application/x-llamapun" id="A1.T6.1.1.1.1.m1.1d">italic_κ</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="A1.T6.1.1.2">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T6.1.1.2.1" style="padding-left:18.0pt;padding-right:18.0pt;">      LLM vs. Human</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A1.T6.1.1.2.2" style="padding-left:18.0pt;padding-right:18.0pt;">      Outline</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T6.1.1.2.3" style="padding-left:18.0pt;padding-right:18.0pt;">      0.7177</td>
</tr>
<tr class="ltx_tr" id="A1.T6.1.1.3">
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T6.1.1.3.1" style="padding-left:18.0pt;padding-right:18.0pt;">      LLM vs. Human</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T6.1.1.3.2" style="padding-left:18.0pt;padding-right:18.0pt;">      Content</td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.1.3.3" style="padding-left:18.0pt;padding-right:18.0pt;">      0.6462</td>
</tr>
<tr class="ltx_tr" id="A1.T6.1.1.4">
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T6.1.1.4.1" style="padding-left:18.0pt;padding-right:18.0pt;">      Human Cross-Validation</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T6.1.1.4.2" style="padding-left:18.0pt;padding-right:18.0pt;">      Outline</td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.1.4.3" style="padding-left:18.0pt;padding-right:18.0pt;">      0.7921</td>
</tr>
<tr class="ltx_tr" id="A1.T6.1.1.5">
<td class="ltx_td ltx_align_left ltx_border_b ltx_border_r" id="A1.T6.1.1.5.1" style="padding-left:18.0pt;padding-right:18.0pt;">      Human Cross-Validation</td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r" id="A1.T6.1.1.5.2" style="padding-left:18.0pt;padding-right:18.0pt;">      Content</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T6.1.1.5.3" style="padding-left:18.0pt;padding-right:18.0pt;">      0.7098</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of a reliability analysis comparing the agreement between evaluations performed by Large Language Models (LLMs) and human experts.  The Cohen's kappa coefficient (κ) is used to quantify the level of agreement between the two evaluation methods. A higher kappa value indicates stronger agreement, suggesting that the LLM evaluations are consistent with human expert assessments. The table likely breaks down the Kappa score by specific evaluation tasks or dimensions, allowing for a more nuanced analysis of the LLM's performance.
> <details>
> <summary>read the caption</summary>
> Table 6: Inter-rater agreement between LLM and human evaluations. κ𝜅\kappaitalic_κ means the Cohen’s kappa coefficient.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="A1.T7.1.1">
<tr class="ltx_tr" id="A1.T7.1.1.1">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T7.1.1.1.1" rowspan="2"><span class="ltx_text ltx_font_bold" id="A1.T7.1.1.1.1.1">Methods</span></td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T7.1.1.1.2" rowspan="2"><span class="ltx_text ltx_font_bold" id="A1.T7.1.1.1.2.1">Model</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" colspan="2" id="A1.T7.1.1.1.3"><span class="ltx_text ltx_font_bold" id="A1.T7.1.1.1.3.1">Reference Quality</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A1.T7.1.1.1.4" rowspan="2"><span class="ltx_text ltx_font_bold" id="A1.T7.1.1.1.4.1">Outline Quality</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" colspan="4" id="A1.T7.1.1.1.5"><span class="ltx_text ltx_font_bold" id="A1.T7.1.1.1.5.1">Content Quality</span></td>
</tr>
<tr class="ltx_tr" id="A1.T7.1.1.2">
<td class="ltx_td ltx_align_center" id="A1.T7.1.1.2.1">Input Cov.</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T7.1.1.2.2">Reference Cov.</td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.1.2.3"><span class="ltx_text ltx_font_bold" id="A1.T7.1.1.2.3.1">Structure</span></td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.1.2.4"><span class="ltx_text ltx_font_bold" id="A1.T7.1.1.2.4.1">Relevance</span></td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.1.2.5"><span class="ltx_text ltx_font_bold" id="A1.T7.1.1.2.5.1">Coverage</span></td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.1.2.6"><span class="ltx_text ltx_font_bold" id="A1.T7.1.1.2.6.1">Avg</span></td>
</tr>
<tr class="ltx_tr" id="A1.T7.1.1.3">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T7.1.1.3.1">Human-Written</td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T7.1.1.3.2">-</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T7.1.1.3.3">-</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A1.T7.1.1.3.4">0.6294</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A1.T7.1.1.3.5">87.62</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T7.1.1.3.6">-</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T7.1.1.3.7">-</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T7.1.1.3.8">-</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T7.1.1.3.9">-</td>
</tr>
<tr class="ltx_tr" id="A1.T7.1.1.4">
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T7.1.1.4.1"><span class="ltx_text ltx_font_smallcaps" id="A1.T7.1.1.4.1.1">SurveyForge</span></td>
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T7.1.1.4.2">Claude-3-Haiku</td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.1.4.3">0.2231</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T7.1.1.4.4">0.3960</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T7.1.1.4.5">86.85</td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.1.4.6">73.82</td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.1.4.7">79.62</td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.1.4.8">75.59</td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.1.4.9">76.34</td>
</tr>
<tr class="ltx_tr" id="A1.T7.1.1.5">
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T7.1.1.5.1"><span class="ltx_text ltx_font_smallcaps" id="A1.T7.1.1.5.1.1">SurveyForge</span></td>
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T7.1.1.5.2">GPT-4o mini</td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.1.5.3">0.2018</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T7.1.1.5.4">0.4236</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T7.1.1.5.5">86.62</td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.1.5.6">77.10</td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.1.5.7">76.94</td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.1.5.8">77.15</td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.1.5.9">77.06</td>
</tr>
<tr class="ltx_tr" id="A1.T7.1.1.6">
<td class="ltx_td ltx_align_left ltx_border_b ltx_border_r" id="A1.T7.1.1.6.1"><span class="ltx_text ltx_font_smallcaps" id="A1.T7.1.1.6.1.1">SurveyForge</span></td>
<td class="ltx_td ltx_align_left ltx_border_b ltx_border_r" id="A1.T7.1.1.6.2">Deepseek-v3</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T7.1.1.6.3">0.2554</td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r" id="A1.T7.1.1.6.4">0.4553</td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r" id="A1.T7.1.1.6.5">87.42</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T7.1.1.6.6">79.20</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T7.1.1.6.7">80.17</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T7.1.1.6.8">81.07</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T7.1.1.6.9">80.15</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table compares the performance of SURVEYFORGE using three different language models: Claude-3-Haiku, GPT-4 mini, and DeepSeek-v3.  It evaluates the models across multiple dimensions of survey quality, including reference quality (input coverage and reference coverage), outline quality (structure), and content quality (relevance and coverage). The results illustrate the relative strengths and weaknesses of open-source versus closed-source models in automated survey generation.
> <details>
> <summary>read the caption</summary>
> Table 7: Comparison of open source and closed source models on SurveyBench.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2503.04629/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.04629/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.04629/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.04629/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.04629/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.04629/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.04629/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.04629/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.04629/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.04629/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.04629/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.04629/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.04629/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.04629/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.04629/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.04629/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.04629/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.04629/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.04629/19.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.04629/20.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}