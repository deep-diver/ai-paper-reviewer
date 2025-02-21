---
title: "Show Me the Work: Fact-Checkers' Requirements for Explainable Automated Fact-Checking"
summary: "Fact-checkers need explainable AI: This study reveals how AI tools can better support fact-checkers by providing explanations tailored to their workflows, addressing unmet needs, and improving the eff..."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Natural Language Processing", "Question Answering", "🏢 University of Copenhagen",]
showSummary: true
date: 2025-02-13
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2502.09083 {{< /keyword >}}
{{< keyword icon="writer" >}} Greta Warren et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-02-18 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2502.09083" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2502.09083" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2502.09083/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Automated fact-checking struggles to meet fact-checkers' needs due to a lack of understanding of their workflows and explanation requirements.  Existing AI tools often fail to provide the specific, context-rich explanations that are crucial for fact-checkers to effectively assess evidence, scrutinize outputs, and integrate automated tools into their workflows. This leads to a disconnect between current AI technology and the practical demands of professional fact-checking. 



This research addresses this gap by conducting semi-structured interviews with fact-checking professionals to understand their workflow and explanation needs. The findings reveal significant unmet explanation needs and highlight crucial criteria for effective explanations that include tracing the model's reasoning, referencing specific evidence, and highlighting uncertainty. The study provides actionable recommendations for developing more user-friendly automated fact-checking tools that meet the practical demands of fact-checkers, bridging the gap between AI capabilities and real-world fact-checking practices.  The study emphasizes the importance of human-centered design in the development of automated fact-checking systems.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Fact-checkers require explanations that trace reasoning, reference evidence, and highlight uncertainty. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} Automated tools need improvements in evidence retrieval and explanation generation to meet fact-checkers' needs. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Explainable AI systems should align with fact-checkers' decision-making processes to be effective. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper is crucial for **AI researchers and HCI professionals** working on explainable AI and fact-checking. It bridges the gap between theoretical explainability and the practical needs of fact-checkers, offering valuable insights and recommendations for developing more effective automated tools.  The findings highlight the **importance of integrating user needs** into the design process and **identifying the specific types of explanations** required for different stages of the fact-checking workflow. This research directly addresses current limitations in automated fact-checking and opens new avenues for improving the design and usability of explainable AI systems.

------
#### Visual Insights





{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_figure_panel ltx_guessed_headers ltx_align_middle" id="S2.T1.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S2.T1.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_t" id="S2.T1.1.1.1.1"><span class="ltx_text ltx_font_bold" id="S2.T1.1.1.1.1.1">Participant ID</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_t" id="S2.T1.1.1.1.2"><span class="ltx_text ltx_font_bold" id="S2.T1.1.1.1.2.1">Country</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_t" id="S2.T1.1.1.1.3"><span class="ltx_text ltx_font_bold" id="S2.T1.1.1.1.3.1">Occupation</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_t" id="S2.T1.1.1.1.4">
<table class="ltx_tabular ltx_align_middle" id="S2.T1.1.1.1.4.1">
<tr class="ltx_tr" id="S2.T1.1.1.1.4.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="S2.T1.1.1.1.4.1.1.1"><span class="ltx_text ltx_font_bold" id="S2.T1.1.1.1.4.1.1.1.1">Organisational</span></td>
</tr>
<tr class="ltx_tr" id="S2.T1.1.1.1.4.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="S2.T1.1.1.1.4.1.2.1"><span class="ltx_text ltx_font_bold" id="S2.T1.1.1.1.4.1.2.1.1">Context</span></td>
</tr>
</table>
</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_t" id="S2.T1.1.1.1.5">
<table class="ltx_tabular ltx_align_middle" id="S2.T1.1.1.1.5.1">
<tr class="ltx_tr" id="S2.T1.1.1.1.5.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="S2.T1.1.1.1.5.1.1.1"><span class="ltx_text ltx_font_bold" id="S2.T1.1.1.1.5.1.1.1.1">Fact-Checking</span></td>
</tr>
<tr class="ltx_tr" id="S2.T1.1.1.1.5.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="S2.T1.1.1.1.5.1.2.1"><span class="ltx_text ltx_font_bold" id="S2.T1.1.1.1.5.1.2.1.1">Experience</span></td>
</tr>
</table>
</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_t" id="S2.T1.1.1.1.6"><span class="ltx_text ltx_font_bold" id="S2.T1.1.1.1.6.1">Gender</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S2.T1.1.2.1">
<td class="ltx_td ltx_align_left ltx_border_t" id="S2.T1.1.2.1.1">P1</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S2.T1.1.2.1.2">Ukraine</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S2.T1.1.2.1.3">Investigative Journalist</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S2.T1.1.2.1.4">Freelance</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S2.T1.1.2.1.5">8 years</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S2.T1.1.2.1.6">Female</td>
</tr>
<tr class="ltx_tr" id="S2.T1.1.3.2">
<td class="ltx_td ltx_align_left" id="S2.T1.1.3.2.1">P2</td>
<td class="ltx_td ltx_align_left" id="S2.T1.1.3.2.2">Argentina</td>
<td class="ltx_td ltx_align_left" id="S2.T1.1.3.2.3">Fact-Checker</td>
<td class="ltx_td ltx_align_left" id="S2.T1.1.3.2.4">Independent</td>
<td class="ltx_td ltx_align_left" id="S2.T1.1.3.2.5">4 years</td>
<td class="ltx_td ltx_align_left" id="S2.T1.1.3.2.6">Female</td>
</tr>
<tr class="ltx_tr" id="S2.T1.1.4.3">
<td class="ltx_td ltx_align_left" id="S2.T1.1.4.3.1">P3</td>
<td class="ltx_td ltx_align_left" id="S2.T1.1.4.3.2">Poland</td>
<td class="ltx_td ltx_align_left" id="S2.T1.1.4.3.3">Fact-Checker</td>
<td class="ltx_td ltx_align_left" id="S2.T1.1.4.3.4">Independent</td>
<td class="ltx_td ltx_align_left" id="S2.T1.1.4.3.5">4 years</td>
<td class="ltx_td ltx_align_left" id="S2.T1.1.4.3.6">Male</td>
</tr>
<tr class="ltx_tr" id="S2.T1.1.5.4">
<td class="ltx_td ltx_align_left" id="S2.T1.1.5.4.1">P4</td>
<td class="ltx_td ltx_align_left" id="S2.T1.1.5.4.2">USA</td>
<td class="ltx_td ltx_align_left" id="S2.T1.1.5.4.3">Investigative Journalist &amp; Trainer</td>
<td class="ltx_td ltx_align_left" id="S2.T1.1.5.4.4">Freelance</td>
<td class="ltx_td ltx_align_left" id="S2.T1.1.5.4.5">12 years</td>
<td class="ltx_td ltx_align_left" id="S2.T1.1.5.4.6">Female</td>
</tr>
<tr class="ltx_tr" id="S2.T1.1.6.5">
<td class="ltx_td ltx_align_left" id="S2.T1.1.6.5.1">P5</td>
<td class="ltx_td ltx_align_left" id="S2.T1.1.6.5.2">Poland</td>
<td class="ltx_td ltx_align_left" id="S2.T1.1.6.5.3">Fact-Checker</td>
<td class="ltx_td ltx_align_left" id="S2.T1.1.6.5.4">Independent</td>
<td class="ltx_td ltx_align_left" id="S2.T1.1.6.5.5">5 years</td>
<td class="ltx_td ltx_align_left" id="S2.T1.1.6.5.6">Female</td>
</tr>
<tr class="ltx_tr" id="S2.T1.1.7.6">
<td class="ltx_td ltx_align_left" id="S2.T1.1.7.6.1">P6</td>
<td class="ltx_td ltx_align_left" id="S2.T1.1.7.6.2">Ireland &amp; USA</td>
<td class="ltx_td ltx_align_left" id="S2.T1.1.7.6.3">Fact-Checker &amp; Project Manager</td>
<td class="ltx_td ltx_align_left" id="S2.T1.1.7.6.4">Independent</td>
<td class="ltx_td ltx_align_left" id="S2.T1.1.7.6.5">4 years</td>
<td class="ltx_td ltx_align_left" id="S2.T1.1.7.6.6">Male</td>
</tr>
<tr class="ltx_tr" id="S2.T1.1.8.7">
<td class="ltx_td ltx_align_left" id="S2.T1.1.8.7.1">P7</td>
<td class="ltx_td ltx_align_left" id="S2.T1.1.8.7.2">Poland</td>
<td class="ltx_td ltx_align_left" id="S2.T1.1.8.7.3">Director &amp; Journalist</td>
<td class="ltx_td ltx_align_left" id="S2.T1.1.8.7.4">Independent</td>
<td class="ltx_td ltx_align_left" id="S2.T1.1.8.7.5">4 years</td>
<td class="ltx_td ltx_align_left" id="S2.T1.1.8.7.6">Male</td>
</tr>
<tr class="ltx_tr" id="S2.T1.1.9.8">
<td class="ltx_td ltx_align_left" id="S2.T1.1.9.8.1">P8</td>
<td class="ltx_td ltx_align_left" id="S2.T1.1.9.8.2">Zimbabwe</td>
<td class="ltx_td ltx_align_left" id="S2.T1.1.9.8.3">Fact-Checker</td>
<td class="ltx_td ltx_align_left" id="S2.T1.1.9.8.4">Independent</td>
<td class="ltx_td ltx_align_left" id="S2.T1.1.9.8.5">2 years</td>
<td class="ltx_td ltx_align_left" id="S2.T1.1.9.8.6">Female</td>
</tr>
<tr class="ltx_tr" id="S2.T1.1.10.9">
<td class="ltx_td ltx_align_left" id="S2.T1.1.10.9.1">P9</td>
<td class="ltx_td ltx_align_left" id="S2.T1.1.10.9.2">Nigeria</td>
<td class="ltx_td ltx_align_left" id="S2.T1.1.10.9.3">Investigative Journalist</td>
<td class="ltx_td ltx_align_left" id="S2.T1.1.10.9.4">Independent</td>
<td class="ltx_td ltx_align_left" id="S2.T1.1.10.9.5">4 years</td>
<td class="ltx_td ltx_align_left" id="S2.T1.1.10.9.6">Male</td>
</tr>
<tr class="ltx_tr" id="S2.T1.1.11.10">
<td class="ltx_td ltx_align_left ltx_border_b" id="S2.T1.1.11.10.1">P10</td>
<td class="ltx_td ltx_align_left ltx_border_b" id="S2.T1.1.11.10.2">India</td>
<td class="ltx_td ltx_align_left ltx_border_b" id="S2.T1.1.11.10.3">Fact-Checker</td>
<td class="ltx_td ltx_align_left ltx_border_b" id="S2.T1.1.11.10.4">Independent</td>
<td class="ltx_td ltx_align_left ltx_border_b" id="S2.T1.1.11.10.5">6 years</td>
<td class="ltx_td ltx_align_left ltx_border_b" id="S2.T1.1.11.10.6">Male</td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 This table presents the demographic information of the ten fact-checking professionals who participated in the study.  For each participant, identified by a code (P1-P10), the table lists their country of origin, occupation (e.g., Fact-Checker, Investigative Journalist), whether they work independently or for an organization, and their experience in fact-checking (in years).  The gender of each participant is also included.
> <details>
> <summary>read the caption</summary>
> Table 1. Demographics of the interview participants
> </details>





### In-depth insights


#### Fact-Checker Needs
Fact-checkers require tools offering explainability and transparency, not merely binary true/false verdicts.  **They need systems that trace the model's reasoning, referencing specific evidence and highlighting uncertainties or information gaps.**  This aligns with their need to build replicable, verifiable fact-checks, communicating complexity clearly to diverse audiences.  Automated tools should support, not replace, the human element, integrating seamlessly into existing workflows.  **Explainability must be tailored to specific fact-checking tasks, providing different information at each stage (claim detection, evidence retrieval, verdict decision, communication).**  The systems should address biases inherent in both data and algorithms, ensuring fair and impartial outputs that build, not erode, public trust.   Furthermore, ethical considerations are paramount, particularly concerning data sources and potential biases embedded within automated systems.

#### AI Tool Evaluation
In evaluating AI tools for fact-checking, a multifaceted approach is crucial.  **Accuracy** is paramount, but equally important is evaluating the **explainability** of the tool's decisions.  Fact-checkers need transparency to understand how the AI arrived at its conclusions, allowing for verification and validation.  **Reliability** should also be assessed, considering the tool's consistency across different claims and datasets. The **efficiency** of the tool, in terms of speed and resource usage, is a practical concern for fact-checkers.  Finally, the **user-friendliness** of the tool's interface is vital for successful integration into their workflows.  A comprehensive evaluation, therefore, necessitates testing across these key dimensions with a focus on how the tool supports, rather than replaces, human judgment in the fact-checking process.

#### Explainable AI Gaps
The concept of "Explainable AI Gaps" in the context of automated fact-checking highlights the critical disconnect between the capabilities of current explainable AI (XAI) systems and the actual needs of human fact-checkers.  **Existing XAI methods often fall short in providing explanations that are sufficiently detailed, actionable, and trustworthy for professional fact-checkers.**  These gaps manifest in several key areas:  **a lack of focus on primary sources**, reliance on secondary sources which can be biased, insufficient explanation of the reasoning pathways employed by AI models, and a failure to address uncertainty and information gaps in a human-understandable way.  The need to bridge these gaps is paramount to fostering trust and effective integration of XAI tools into fact-checking workflows.  **Future research should prioritize human-centered approaches to XAI development, closely collaborating with fact-checkers to understand their precise information needs and develop more intuitive and robust explanation methods.**  Addressing these "Explainable AI Gaps" is essential for building AI systems that truly augment rather than replace the critical role of human fact-checkers in maintaining the integrity of public information.

#### Methodology: Interviews
A robust methodology section detailing the interview process would be crucial for evaluating the research's validity.  It should specify the **participant recruitment strategy**, clearly outlining how researchers identified and selected fact-checkers from diverse backgrounds and geographical locations to ensure a representative sample.  The **interview protocol** should be meticulously described, including the type of questions asked (open-ended, structured, or a mix), the duration of each interview, and any methods used to ensure inter-rater reliability if multiple interviewers were involved.  The analysis process is also key; a detailed description of the **data analysis techniques** employed (e.g., thematic analysis, grounded theory) and the steps taken to ensure rigor and transparency in identifying and interpreting themes and patterns from the interview data is essential.  Finally, the section must address potential **limitations** of the interview approach, acknowledging factors that might influence the validity of the findings (e.g., sampling bias, interviewer bias, social desirability bias), and proposing strategies to mitigate these limitations.  A strong methodology statement will strengthen the overall credibility of the research.

#### Future Research
Future research should prioritize a **human-centered approach**, focusing on integrating automated fact-checking tools seamlessly into fact-checkers' workflows. This involves developing **explainable AI methods** that align with fact-checkers' reasoning processes, providing detailed explanations that trace the model's steps, justify its decisions, and highlight potential biases.  Further investigation is needed into handling **multilingual and multimodal data**, given that misinformation often targets diverse audiences and formats.  Research should explore ways to address **ethical concerns**, including bias mitigation and transparency about data sources and model training, which are crucial for building trust and ensuring responsible AI development.  Finally, evaluating automated systems' impact on fact-checkers' efficiency and user experience through **rigorous empirical studies** is essential for determining the actual value these tools bring to the fight against misinformation.


### More visual insights




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S2.T1.1.1.1.4.1">
<tr class="ltx_tr" id="S2.T1.1.1.1.4.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="S2.T1.1.1.1.4.1.1.1"><span class="ltx_text ltx_font_bold" id="S2.T1.1.1.1.4.1.1.1.1">Organisational</span></td>
</tr>
<tr class="ltx_tr" id="S2.T1.1.1.1.4.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="S2.T1.1.1.1.4.1.2.1"><span class="ltx_text ltx_font_bold" id="S2.T1.1.1.1.4.1.2.1.1">Context</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the key themes that emerged from the interviews regarding the three research questions.  Each theme is categorized by its relevance to a specific research question (RQ1, RQ2, or RQ3).  The number in parentheses after each theme indicates how many of the ten participants mentioned that specific theme during the interviews.
> <details>
> <summary>read the caption</summary>
> Table 2. Key themes relevant to each research question, with the number of participants who mentioned each theme in parentheses.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S2.T1.1.1.1.5.1">
<tr class="ltx_tr" id="S2.T1.1.1.1.5.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="S2.T1.1.1.1.5.1.1.1"><span class="ltx_text ltx_font_bold" id="S2.T1.1.1.1.5.1.1.1.1">Fact-Checking</span></td>
</tr>
<tr class="ltx_tr" id="S2.T1.1.1.1.5.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="S2.T1.1.1.1.5.1.2.1"><span class="ltx_text ltx_font_bold" id="S2.T1.1.1.1.5.1.2.1.1">Experience</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents key themes, subthemes, and example codes identified through the analysis of interview transcripts.  It organizes findings related to three research questions (RQ1-RQ3) focusing on fact-checkers' decision-making processes, tool usage, and explanation requirements for automated fact-checking systems.  Each theme represents a major finding, broken down into subthemes that provide more detail.  The example codes showcase specific instances from the interview data that support these themes and subthemes, offering concrete examples of fact-checkers' perspectives.
> <details>
> <summary>read the caption</summary>
> Table 3. Example themes, subthemes and codes developed from analysis of interview transcripts
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2502.09083/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.09083/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.09083/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.09083/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.09083/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.09083/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.09083/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.09083/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.09083/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.09083/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.09083/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.09083/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.09083/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.09083/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.09083/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.09083/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.09083/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.09083/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.09083/19.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.09083/20.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}