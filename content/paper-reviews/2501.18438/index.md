---
title: "o3-mini vs DeepSeek-R1: Which One is Safer?"
summary: "ASTRAL, a novel automated safety testing tool, reveals DeepSeek-R1's significantly higher unsafe response rate compared to OpenAI's o3-mini, highlighting critical safety concerns in advanced LLMs."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["AI Theory", "Safety", "🏢 Mondragon University",]
showSummary: true
date: 2025-01-30
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2501.18438 {{< /keyword >}}
{{< keyword icon="writer" >}} Aitor Arrieta et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-01-31 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2501.18438" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2501.18438" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2501.18438/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

This research addresses the critical need for robust safety evaluations of Large Language Models (LLMs), particularly as these models become increasingly powerful and widely used.  The existing methods for LLM safety testing have limitations in terms of scalability, automation, and the ability to generate up-to-date, comprehensive test cases.  These limitations can hinder our understanding of LLM safety and lead to incomplete assessments.

This paper introduces ASTRAL, a novel automated tool that addresses these limitations.  ASTRAL generates balanced unsafe test inputs, leveraging techniques like few-shot learning and real-time web data integration. It also employs a unique black-box coverage criterion to ensure comprehensive and balanced evaluation. Using ASTRAL, the researchers compare the safety of two advanced LLMs, DeepSeek-R1 and OpenAI's o3-mini. The results show that DeepSeek-R1 exhibits significantly higher levels of unsafe responses, highlighting serious safety concerns and underscoring the importance of robust safety measures in LLM development.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} DeepSeek-R1 exhibits a substantially higher unsafe response rate than OpenAI's o3-mini. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} ASTRAL, an automated LLM safety testing tool, effectively assesses safety across various categories and writing styles. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Specific safety categories and writing styles disproportionately trigger unsafe responses in LLMs, suggesting areas for improvement in LLM design and safety protocols. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper is crucial for researchers in AI safety and Large Language Model (LLM) development.  **It introduces a novel automated safety testing tool (ASTRAL)** and presents a comparative safety analysis of two prominent LLMs, offering valuable insights into current LLM capabilities and limitations, and **guiding future research directions in safe AI development.**

------
#### Visual Insights



![](https://arxiv.org/html/2501.18438/x1.png)

> 🔼 This figure shows a breakdown of the number of times each LLM (03-mini and DeepSeek-R1) generated an unsafe response, categorized by writing style, persuasion technique, and safety category.  Each bar represents the count of manually confirmed unsafe outputs. This allows for a comparison of the LLMs' safety performance across various input characteristics and identifies specific areas where each model struggles.
> <details>
> <summary>read the caption</summary>
> Figure 1: Number of manually confirmed unsafe LLM outputs per writing style, persuasion technique and safety category
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S2.T1.1">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S2.T1.1.1.1">
<td class="ltx_td ltx_align_left ltx_border_tt" id="S2.T1.1.1.1.1" style="padding:2.5pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S2.T1.1.1.1.1.1">Feature</span></td>
<td class="ltx_td ltx_align_left ltx_border_tt" id="S2.T1.1.1.1.2" style="padding:2.5pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S2.T1.1.1.1.2.1">Ab.</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_tt" id="S2.T1.1.1.1.3" style="padding:2.5pt 3.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S2.T1.1.1.1.3.1">
<span class="ltx_p" id="S2.T1.1.1.1.3.1.1" style="width:256.1pt;"><span class="ltx_text ltx_font_bold" id="S2.T1.1.1.1.3.1.1.1">Description</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S2.T1.1.2.2">
<td class="ltx_td ltx_align_left ltx_border_t" id="S2.T1.1.2.2.1" rowspan="6" style="padding:2.5pt 3.0pt;"><span class="ltx_text" id="S2.T1.1.2.2.1.1">Style</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S2.T1.1.2.2.2" style="padding:2.5pt 3.0pt;">S1</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S2.T1.1.2.2.3" style="padding:2.5pt 3.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S2.T1.1.2.2.3.1">
<span class="ltx_p" id="S2.T1.1.2.2.3.1.1" style="width:256.1pt;">Slang: using colloquial informal language and slang</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S2.T1.1.3.3">
<td class="ltx_td ltx_align_left" id="S2.T1.1.3.3.1" style="padding:2.5pt 3.0pt;">S2</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S2.T1.1.3.3.2" style="padding:2.5pt 3.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S2.T1.1.3.3.2.1">
<span class="ltx_p" id="S2.T1.1.3.3.2.1.1" style="width:256.1pt;">Uncommon dialects: employing uncommon dialects or accents</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S2.T1.1.4.4">
<td class="ltx_td ltx_align_left" id="S2.T1.1.4.4.1" style="padding:2.5pt 3.0pt;">S3</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S2.T1.1.4.4.2" style="padding:2.5pt 3.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S2.T1.1.4.4.2.1">
<span class="ltx_p" id="S2.T1.1.4.4.2.1.1" style="width:256.1pt;">Technical terms: introducing technical language and terminology</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S2.T1.1.5.5">
<td class="ltx_td ltx_align_left" id="S2.T1.1.5.5.1" style="padding:2.5pt 3.0pt;">S4</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S2.T1.1.5.5.2" style="padding:2.5pt 3.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S2.T1.1.5.5.2.1">
<span class="ltx_p" id="S2.T1.1.5.5.2.1.1" style="width:256.1pt;">Role-play: encouraging the LLM to act on behalf of a specific role (e.g., teacher, doctor, politician, etc.)</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S2.T1.1.6.6">
<td class="ltx_td ltx_align_left" id="S2.T1.1.6.6.1" style="padding:2.5pt 3.0pt;">S5</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S2.T1.1.6.6.2" style="padding:2.5pt 3.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S2.T1.1.6.6.2.1">
<span class="ltx_p" id="S2.T1.1.6.6.2.1.1" style="width:256.1pt;">Misspellings: introducing language misspellings</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S2.T1.1.7.7">
<td class="ltx_td ltx_align_left" id="S2.T1.1.7.7.1" style="padding:2.5pt 3.0pt;">S6</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S2.T1.1.7.7.2" style="padding:2.5pt 3.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S2.T1.1.7.7.2.1">
<span class="ltx_p" id="S2.T1.1.7.7.2.1.1" style="width:256.1pt;">Question: using interrogative sentences</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S2.T1.1.8.8">
<td class="ltx_td ltx_align_left ltx_border_t" id="S2.T1.1.8.8.1" rowspan="5" style="padding:2.5pt 3.0pt;"><span class="ltx_text" id="S2.T1.1.8.8.1.1">Persuasion</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S2.T1.1.8.8.2" style="padding:2.5pt 3.0pt;">P1</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S2.T1.1.8.8.3" style="padding:2.5pt 3.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S2.T1.1.8.8.3.1">
<span class="ltx_p" id="S2.T1.1.8.8.3.1.1" style="width:256.1pt;">Evidence-based persuasion: using empirical data, statistics, and facts as support</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S2.T1.1.9.9">
<td class="ltx_td ltx_align_left" id="S2.T1.1.9.9.1" style="padding:2.5pt 3.0pt;">P2</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S2.T1.1.9.9.2" style="padding:2.5pt 3.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S2.T1.1.9.9.2.1">
<span class="ltx_p" id="S2.T1.1.9.9.2.1.1" style="width:256.1pt;">Expert endorsement: citing domain experts as support</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S2.T1.1.10.10">
<td class="ltx_td ltx_align_left" id="S2.T1.1.10.10.1" style="padding:2.5pt 3.0pt;">P3</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S2.T1.1.10.10.2" style="padding:2.5pt 3.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S2.T1.1.10.10.2.1">
<span class="ltx_p" id="S2.T1.1.10.10.2.1.1" style="width:256.1pt;">Misrepresentation: presenting a non-genuine or false fact</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S2.T1.1.11.11">
<td class="ltx_td ltx_align_left" id="S2.T1.1.11.11.1" style="padding:2.5pt 3.0pt;">P4</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S2.T1.1.11.11.2" style="padding:2.5pt 3.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S2.T1.1.11.11.2.1">
<span class="ltx_p" id="S2.T1.1.11.11.2.1.1" style="width:256.1pt;">Authority endorsement: citing authoritative sources as support</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S2.T1.1.12.12">
<td class="ltx_td ltx_align_left" id="S2.T1.1.12.12.1" style="padding:2.5pt 3.0pt;">P5</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S2.T1.1.12.12.2" style="padding:2.5pt 3.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S2.T1.1.12.12.2.1">
<span class="ltx_p" id="S2.T1.1.12.12.2.1.1" style="width:256.1pt;">Logical appeal: using logical and reasonable sentences</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S2.T1.1.13.13">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_t" id="S2.T1.1.13.13.1" rowspan="14" style="padding:2.5pt 3.0pt;"><span class="ltx_text" id="S2.T1.1.13.13.1.1">Category</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S2.T1.1.13.13.2" style="padding:2.5pt 3.0pt;">C1</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S2.T1.1.13.13.3" style="padding:2.5pt 3.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S2.T1.1.13.13.3.1">
<span class="ltx_p" id="S2.T1.1.13.13.3.1.1" style="width:256.1pt;">Animal abuse</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S2.T1.1.14.14">
<td class="ltx_td ltx_align_left" id="S2.T1.1.14.14.1" style="padding:2.5pt 3.0pt;">C2</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S2.T1.1.14.14.2" style="padding:2.5pt 3.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S2.T1.1.14.14.2.1">
<span class="ltx_p" id="S2.T1.1.14.14.2.1.1" style="width:256.1pt;">Child abuse</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S2.T1.1.15.15">
<td class="ltx_td ltx_align_left" id="S2.T1.1.15.15.1" style="padding:2.5pt 3.0pt;">C3</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S2.T1.1.15.15.2" style="padding:2.5pt 3.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S2.T1.1.15.15.2.1">
<span class="ltx_p" id="S2.T1.1.15.15.2.1.1" style="width:256.1pt;">Controversial topics, politics</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S2.T1.1.16.16">
<td class="ltx_td ltx_align_left" id="S2.T1.1.16.16.1" style="padding:2.5pt 3.0pt;">C4</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S2.T1.1.16.16.2" style="padding:2.5pt 3.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S2.T1.1.16.16.2.1">
<span class="ltx_p" id="S2.T1.1.16.16.2.1.1" style="width:256.1pt;">Discrimination, stereotype, injustice</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S2.T1.1.17.17">
<td class="ltx_td ltx_align_left" id="S2.T1.1.17.17.1" style="padding:2.5pt 3.0pt;">C5</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S2.T1.1.17.17.2" style="padding:2.5pt 3.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S2.T1.1.17.17.2.1">
<span class="ltx_p" id="S2.T1.1.17.17.2.1.1" style="width:256.1pt;">Drug abuse, weapons, banned substances</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S2.T1.1.18.18">
<td class="ltx_td ltx_align_left" id="S2.T1.1.18.18.1" style="padding:2.5pt 3.0pt;">C6</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S2.T1.1.18.18.2" style="padding:2.5pt 3.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S2.T1.1.18.18.2.1">
<span class="ltx_p" id="S2.T1.1.18.18.2.1.1" style="width:256.1pt;">Financial crime, property crime, theft</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S2.T1.1.19.19">
<td class="ltx_td ltx_align_left" id="S2.T1.1.19.19.1" style="padding:2.5pt 3.0pt;">C7</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S2.T1.1.19.19.2" style="padding:2.5pt 3.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S2.T1.1.19.19.2.1">
<span class="ltx_p" id="S2.T1.1.19.19.2.1.1" style="width:256.1pt;">Hate speech, offensive language</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S2.T1.1.20.20">
<td class="ltx_td ltx_align_left" id="S2.T1.1.20.20.1" style="padding:2.5pt 3.0pt;">C8</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S2.T1.1.20.20.2" style="padding:2.5pt 3.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S2.T1.1.20.20.2.1">
<span class="ltx_p" id="S2.T1.1.20.20.2.1.1" style="width:256.1pt;">Misinformation regarding ethics, laws, and safety</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S2.T1.1.21.21">
<td class="ltx_td ltx_align_left" id="S2.T1.1.21.21.1" style="padding:2.5pt 3.0pt;">C9</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S2.T1.1.21.21.2" style="padding:2.5pt 3.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S2.T1.1.21.21.2.1">
<span class="ltx_p" id="S2.T1.1.21.21.2.1.1" style="width:256.1pt;">Non-violent unethical behavior</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S2.T1.1.22.22">
<td class="ltx_td ltx_align_left" id="S2.T1.1.22.22.1" style="padding:2.5pt 3.0pt;">C10</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S2.T1.1.22.22.2" style="padding:2.5pt 3.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S2.T1.1.22.22.2.1">
<span class="ltx_p" id="S2.T1.1.22.22.2.1.1" style="width:256.1pt;">Privacy violation</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S2.T1.1.23.23">
<td class="ltx_td ltx_align_left" id="S2.T1.1.23.23.1" style="padding:2.5pt 3.0pt;">C11</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S2.T1.1.23.23.2" style="padding:2.5pt 3.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S2.T1.1.23.23.2.1">
<span class="ltx_p" id="S2.T1.1.23.23.2.1.1" style="width:256.1pt;">Self-harm</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S2.T1.1.24.24">
<td class="ltx_td ltx_align_left" id="S2.T1.1.24.24.1" style="padding:2.5pt 3.0pt;">C12</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S2.T1.1.24.24.2" style="padding:2.5pt 3.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S2.T1.1.24.24.2.1">
<span class="ltx_p" id="S2.T1.1.24.24.2.1.1" style="width:256.1pt;">Sexually explicit, adult content</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S2.T1.1.25.25">
<td class="ltx_td ltx_align_left" id="S2.T1.1.25.25.1" style="padding:2.5pt 3.0pt;">C13</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S2.T1.1.25.25.2" style="padding:2.5pt 3.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S2.T1.1.25.25.2.1">
<span class="ltx_p" id="S2.T1.1.25.25.2.1.1" style="width:256.1pt;">Terrorism, organized crime</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S2.T1.1.26.26">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S2.T1.1.26.26.1" style="padding:2.5pt 3.0pt;">C14</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb" id="S2.T1.1.26.26.2" style="padding:2.5pt 3.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S2.T1.1.26.26.2.1">
<span class="ltx_p" id="S2.T1.1.26.26.2.1.1" style="width:256.1pt;">Violence, aiding and abetting, incitement</span>
</span>
</td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 This table details the features used in the ASTRAL tool to ensure comprehensive safety testing of LLMs.  It breaks down the features into three categories: Style (describing the language style of the prompt), Persuasion (techniques used to influence the LLM's response), and Category (the specific safety category being tested). Each feature includes an abbreviation and a description, providing a clear overview of the diverse ways ASTRAL generates unsafe prompts for a balanced evaluation.
> <details>
> <summary>read the caption</summary>
> Table 1: Description of our black-box coverage features
> </details>





### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2501.18438/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.18438/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.18438/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.18438/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.18438/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.18438/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.18438/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.18438/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.18438/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.18438/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.18438/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.18438/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.18438/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.18438/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.18438/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.18438/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}