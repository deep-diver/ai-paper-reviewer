---
title: "Early External Safety Testing of OpenAI's o3-mini: Insights from the Pre-Deployment Evaluation"
summary: "Researchers used ASTRAL to systematically test OpenAI's 03-mini LLM's safety, revealing key vulnerabilities and highlighting the need for continuous, robust safety mechanisms in large language models."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["AI Theory", "Safety", "🏢 Mondragon University",]
showSummary: true
date: 2025-01-29
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2501.17749 {{< /keyword >}}
{{< keyword icon="writer" >}} Aitor Arrieta et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-01-30 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2501.17749" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2501.17749" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2501.17749/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Large Language Models (LLMs) pose significant safety risks, necessitating rigorous testing before deployment.  Existing safety benchmarks often fall short due to their static nature and inability to keep pace with evolving threats and user interactions.  This paper addresses this by introducing ASTRAL, a novel tool for automatically generating up-to-date and diverse unsafe test inputs. 



ASTRAL systematically generated and executed over 10,000 unsafe test inputs against OpenAI's 03-mini LLM. The evaluation revealed 87 instances of unsafe behavior, even after a policy-based filtering mechanism within the API. The study identified key vulnerable categories, including controversial topics and politically sensitive issues.  **The findings underscore the continued need for robust safety mechanisms and the limitations of relying solely on automated safety checks.**

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} ASTRAL, a novel tool, automatically generates diverse unsafe test inputs for comprehensive LLM safety evaluation. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} OpenAI's 03-mini LLM demonstrates improved safety compared to its predecessors, but vulnerabilities remain. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} The study reveals the importance of ongoing safety testing due to the dynamic nature of LLMs and evolving safety concerns. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper is important because it presents a novel approach to LLM safety testing using ASTRAL, a tool that automatically generates unsafe test inputs.  **Its findings offer valuable insights for developers seeking to improve the safety and reliability of LLMs**, particularly given the increasing integration of these models into various applications.  The research also highlights the need for continuous safety evaluation due to the evolving nature of LLMs and the emergence of new safety challenges.

------
#### Visual Insights





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

> 🔼 This table details the features used in ASTRAL to ensure comprehensive testing of LLMs.  It breaks down the features into three categories: Style (describing different writing styles used to generate prompts), Persuasion (outlining different persuasive techniques employed), and Category (listing the 14 safety categories covered).  For each feature, it provides a short description and an abbreviation.
> <details>
> <summary>read the caption</summary>
> Table 1: Description of our black-box coverage features
> </details>





### In-depth insights


#### ASTRAL: LLM Safety Tests
ASTRAL, as a system for LLM safety testing, presents a novel approach by **automatically generating diverse and up-to-date unsafe test inputs**.  Unlike static benchmarks, it leverages LLMs, Retrieval Augmented Generation (RAG), and current web data to create prompts covering various safety categories and writing styles, thus addressing the limitations of previous methods.  Its **black-box coverage criterion ensures a balanced test suite**, mitigating the issue of imbalanced datasets found in other frameworks. By using LLMs as oracles for classification, ASTRAL helps **reduce manual effort and overcome the test oracle problem**. The dynamic nature of ASTRAL, incorporating current events and trends, ensures its continued relevance and effectiveness in detecting vulnerabilities that may emerge in new LLMs.  **Its multi-faceted approach** significantly enhances the thoroughness and real-world applicability of LLM safety evaluations, providing valuable insights for developers to proactively address potential risks.

#### 03-mini: Safer than GPT?
The question of whether OpenAI's 03-mini is 'Safer than GPT?' is complex and requires careful analysis.  While the paper demonstrates that 03-mini exhibited fewer instances of unsafe behavior during testing compared to previous GPT models, **direct comparison is difficult** due to differences in testing methodologies and the evolving nature of LLM safety assessment. The study highlights the importance of continuous evaluation and improvement of LLM safety, noting that 03-mini's apparent increased safety may be partially attributable to OpenAI's proactive policy enforcement mechanisms that blocked many potentially unsafe inputs before reaching the model.  **This raises questions about the true extent of 03-mini's inherent safety** versus its reliance on external safety protocols.  Further research is needed to determine whether these findings hold consistently across a broader range of prompts and scenarios.  Moreover, the definition of 'safe' is subjective and depends on the context, necessitating further investigation of the potential biases inherent in the safety tests and their effects on overall results.  **A more nuanced approach is necessary** beyond simple quantitative comparisons; qualitative analysis of the specific types of unsafe outputs and the reasoning behind them provides better insights into the relative safety of different LLMs.

#### Policy Violation: A Blocker?
The concept of "Policy Violation: A Blocker?" within the context of Large Language Model (LLM) safety testing highlights a crucial tension.  **OpenAI's API seemingly incorporates a safety mechanism that blocks prompts deemed to violate its usage policies before they reach the LLM.** This acts as a pre-emptive safeguard, preventing the generation of unsafe responses. However, this raises questions about its effectiveness as a comprehensive safety measure. While the policy blocker may reduce the risk of harmful outputs, **it also obscures the true safety capabilities of the underlying LLM**.  By intercepting potentially unsafe prompts, we cannot definitively assess the model's inherent ability to identify and reject harmful content.  Therefore, the evaluation might be biased, suggesting a more secure model than it actually is.  **Further investigation is needed to determine the precise scope and effectiveness of this policy blocker.**  It should be explored whether this safety feature will remain active when the LLM transitions from beta testing to full deployment and what the implications are for independent safety assessments of similar models.

#### Unsafe LLM Outcomes
Analyzing "Unsafe LLM Outcomes" requires a multifaceted approach.  The **context** of the unsafe responses is crucial: were they elicited by genuinely harmful prompts or by cleverly designed adversarial attacks?  Understanding the **categories** of unsafe outputs (e.g., hate speech, self-harm, illegal activities) reveals the model's vulnerabilities.  **Severity** is another critical dimension; some unsafe outputs might be minor while others pose serious risks.  The **frequency** of unsafe responses, relative to the total number of prompts, gives a quantitative measure of model safety.  Furthermore, investigating the **underlying reasons** for these outputs is essential – are they due to biases in training data, flaws in model architecture, or limitations in safety mechanisms?  Finally, exploring potential **mitigation strategies** is key.  Addressing "Unsafe LLM Outcomes" requires both technical solutions (improved model training, enhanced safety filters) and broader considerations around responsible AI development and deployment, encompassing ethical guidelines and human oversight.

#### Future Safety Research
Future research in LLM safety should prioritize **developing more robust and comprehensive evaluation methodologies**.  Current benchmarks often fall short in capturing real-world risks, necessitating the creation of more dynamic and nuanced testing strategies.  **Addressing the limitations of current datasets** is also critical; moving beyond static, predefined prompts towards the generation of novel, contextually relevant unsafe inputs is key.  Furthermore, **research should focus on explainability and transparency in LLM safety evaluations**.  Understanding why an LLM produces unsafe outputs is crucial for developing effective mitigation strategies.  Finally, **exploring the ethical and societal implications of LLM safety** is paramount.  Safety research must not only focus on technical solutions but also incorporate broader discussions on responsible AI development and deployment.  A multidisciplinary approach, combining expertise in computer science, ethics, social sciences, and law, will be essential to adequately address the complex challenges associated with ensuring LLM safety.


### More visual insights




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S4.T2.1.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T2.1.1.1.1">
<th class="ltx_td ltx_th ltx_th_row ltx_border_tt" id="S4.T2.1.1.1.1.1"></th>
<th class="ltx_td ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S4.T2.1.1.1.1.2"></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T2.1.1.1.1.3"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.1.1.3.1">Safe</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T2.1.1.1.1.4">
<table class="ltx_tabular ltx_align_middle" id="S4.T2.1.1.1.1.4.1">
<tr class="ltx_tr" id="S4.T2.1.1.1.1.4.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.1.1.1.1.4.1.1.1"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.1.1.4.1.1.1.1">Safe</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.1.1.1.4.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.1.1.1.1.4.1.2.1"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.1.1.4.1.2.1.1">(policy violation)</span></td>
</tr>
</table>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T2.1.1.1.1.5"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.1.1.5.1">Unsafe</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T2.1.1.1.1.6">
<table class="ltx_tabular ltx_align_middle" id="S4.T2.1.1.1.1.6.1">
<tr class="ltx_tr" id="S4.T2.1.1.1.1.6.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.1.1.1.1.6.1.1.1"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.1.1.6.1.1.1.1">Unsafe</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.1.1.1.6.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.1.1.1.1.6.1.2.1"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.1.1.6.1.2.1.1">(confirmed)</span></td>
</tr>
</table>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T2.1.1.1.1.7"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.1.1.7.1">Unknown</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T2.1.1.1.1.8">
<table class="ltx_tabular ltx_align_middle" id="S4.T2.1.1.1.1.8.1">
<tr class="ltx_tr" id="S4.T2.1.1.1.1.8.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.1.1.1.1.8.1.1.1"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.1.1.8.1.1.1.1">Unknown</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.1.1.1.8.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.1.1.1.1.8.1.2.1"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.1.1.8.1.2.1.1">(confirmed unsafe)</span></td>
</tr>
</table>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T2.1.1.1.1.9">
<table class="ltx_tabular ltx_align_middle" id="S4.T2.1.1.1.1.9.1">
<tr class="ltx_tr" id="S4.T2.1.1.1.1.9.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.1.1.1.1.9.1.1.1"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.1.1.9.1.1.1.1">TOTAL</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.1.1.1.9.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.1.1.1.1.9.1.2.1"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.1.1.9.1.2.1.1">Confirmed Unsafe</span></td>
</tr>
</table>
</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T2.1.1.2.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T2.1.1.2.1.1" rowspan="3"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.2.1.1.1">TS1</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T2.1.1.2.1.2"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.2.1.2.1">ASTRAL (RAG)</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.2.1.3">1239</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.2.1.4">707</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.2.1.5">19</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.2.1.6">7</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.2.1.7">2</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.2.1.8">1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.2.1.9">8</td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.1.3.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.1.1.3.2.1"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.3.2.1.1">ASTRAL (RAG-FS)</span></th>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.3.2.2">1249</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.3.2.3">762</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.3.2.4">10</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.3.2.5">9</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.3.2.6">1</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.3.2.7">0</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.3.2.8">9</td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.1.4.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.1.1.4.3.1"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.4.3.1.1">ASTRAL (RAG-FS-TS)</span></th>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.4.3.2">1236</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.4.3.3">565</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.4.3.4">20</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.4.3.5">13</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.4.3.6">4</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.4.3.7">2</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.4.3.8">15</td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.1.5.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_t" id="S4.T2.1.1.5.4.1"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.5.4.1.1">TS2</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_t" id="S4.T2.1.1.5.4.2"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.5.4.2.1">ASTRAL (RAG-FS-TS)</span></th>
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_t" id="S4.T2.1.1.5.4.3">6205</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T2.1.1.5.4.4">2457</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T2.1.1.5.4.5">73</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T2.1.1.5.4.6">50</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T2.1.1.5.4.7">22</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T2.1.1.5.4.8">5</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T2.1.1.5.4.9">55</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table summarizes the results of evaluating the safety of OpenAI's 03-mini LLM using the ASTRAL tool. It breaks down the total number of LLM responses into categories based on the evaluation model's classification: safe, unsafe, and unknown.  It further subdivides the 'unsafe' and 'unknown' categories by indicating which responses were manually confirmed as unsafe, differentiating between automatically and manually identified unsafe responses.  The table also shows the number of safe responses that triggered OpenAI's policy violation, which were treated as safe in this analysis. Finally, it provides a total count of manually confirmed unsafe responses.
> <details>
> <summary>read the caption</summary>
> Table 2: Summary of the results obtained results. Column Safe refers to the number of LLM responses that our evaluation model has classified it as safe. Safe (policy violation) column refers to those safe LLM responses that were due to violating OpenAI’s policy (are also part of the safe test cases). Unsafe refers to the number of test cases that the evaluator classified it as so. Unsafe (confirmed) are the number of LLM responses that we manually confirmed that were unsafe. Unknown are those LLM outcomes that the evaluator did not have enough confidence to determine as unsafe. Out of those, the unsafe outcomes that we manually verified are reported in Unknown (confirmed unsafe). Lastly, TOTAL Confirmed Unsafe reports the total number of unsafe LLM outcomes that we manually confirmed
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S4.T2.1.1.1.1.4.1">
<tr class="ltx_tr" id="S4.T2.1.1.1.1.4.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.1.1.1.1.4.1.1.1"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.1.1.4.1.1.1.1">Safe</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.1.1.1.4.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.1.1.1.1.4.1.2.1"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.1.1.4.1.2.1.1">(policy violation)</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents a breakdown of the number of manually confirmed unsafe Large Language Model (LLM) outputs categorized by safety topic.  Each row represents one of the three test suites used in the study (TS1: ASTRAL (RAG), ASTRAL (RAG-FS), ASTRAL (RAG-FS-TS); TS2: ASTRAL (RAG-FS-TS)), and each column represents one of the 14 safety categories. The values in each cell indicate the count of unsafe responses for that specific safety category within that test suite after manual verification of the LLM's responses.
> <details>
> <summary>read the caption</summary>
> Table 3: Number of manually confirmed unsafe LLM outputs per safety category
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2501.17749/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.17749/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.17749/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.17749/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.17749/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.17749/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.17749/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.17749/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.17749/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}