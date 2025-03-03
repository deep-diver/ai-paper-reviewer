---
title: "Chain of Draft: Thinking Faster by Writing Less"
summary: "CoD: LLMs think faster by writing less! A novel prompting strategy cuts costs and latency while maintaining reasoning accuracy."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Natural Language Processing", "Large Language Models", "🏢 Zoom Communications",]
showSummary: true
date: 2025-02-25
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2502.18600 {{< /keyword >}}
{{< keyword icon="writer" >}} Silei Xu et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-03-03 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2502.18600" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2502.18600" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2502.18600/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

**LLMs like Chain-of-Thought (CoT) improve reasoning**, but demand more computational resources and verbose outputs. This contrasts with human problem-solving, which captures essential insights with concise drafts. The discrepancy motivates this paper to pursue a more efficient strategy to align with human reasoning.



This paper introduces **Chain of Draft (CoD), a novel strategy** that mimics human thought processes by generating concise intermediate reasoning outputs. Results show CoD matching/surpassing CoT in accuracy, cutting token use to 7.6%, reducing cost/latency across tasks.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Chain of Draft (CoD) is a novel prompting strategy that aligns more closely with human reasoning by prioritizing efficiency and minimalism. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} CoD maintains or improves accuracy compared with Chain of Thought, while significantly reducing token usage and latency. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} CoD can achieve significantly reduced latency and cost without sacrificing accuracy. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper introduces a new prompting strategy that **reduces computational costs and latency without sacrificing accuracy**, thus offering practical benefits for real-world LLM applications. CoD offers a middle ground between CoT and standard prompting, allowing for **more efficient resource utilization and faster response times**. It aligns LLMs with human-like reasoning, paving the way for future research in minimalist reasoning strategies.

------
#### Visual Insights



![](https://arxiv.org/html/2502.18600/extracted/6231000/plot.png)

> 🔼 Figure 1 compares the performance of three different prompting strategies (Standard, Chain of Thought, and Chain of Draft) on Claude 3.5 Sonnet across various reasoning tasks (GSM8K, Date, Sports, Coin Flip).  It shows that Chain of Draft (CoD) achieves comparable accuracy to Chain of Thought (CoT) but uses significantly fewer tokens (7.6%). The bar chart visually represents the accuracy and token usage for each task and strategy, highlighting CoD's efficiency advantage.
> <details>
> <summary>read the caption</summary>
> Figure 1: Comparison of Claude 3.5 Sonnet’s accuracy and token usage across different tasks with three different prompt strategies: direct answer (Standard), Chain of Thought (CoT), and Chain of Draft (CoD). CoD achieves similar accuracy as CoT while using significant fewer tokens.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S4.T1.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T1.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S4.T1.1.1.1.1"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.1.1.1">Model</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S4.T1.1.1.1.2"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.1.2.1">Prompt</span></th>
<th class="ltx_td ltx_align_right ltx_th ltx_th_column ltx_border_tt" id="S4.T1.1.1.1.3"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.1.3.1">Accuracy</span></th>
<th class="ltx_td ltx_align_right ltx_th ltx_th_column ltx_border_tt" id="S4.T1.1.1.1.4"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.1.4.1">Token #</span></th>
<th class="ltx_td ltx_align_right ltx_th ltx_th_column ltx_border_tt" id="S4.T1.1.1.1.5"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.1.5.1">Latency</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T1.1.2.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T1.1.2.1.1" rowspan="3"><span class="ltx_text" id="S4.T1.1.2.1.1.1">GPT-4o</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T1.1.2.1.2">Standard</th>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T1.1.2.1.3">53.3%</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T1.1.2.1.4">1.1</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T1.1.2.1.5">0.6 s</td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.3.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T1.1.3.2.1">CoT</th>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T1.1.3.2.2">95.4%</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T1.1.3.2.3">205.1</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T1.1.3.2.4">4.2 s</td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.4.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T1.1.4.3.1">CoD</th>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T1.1.4.3.2">91.1%</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T1.1.4.3.3">43.9</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T1.1.4.3.4">1.0 s</td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.5.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_t" id="S4.T1.1.5.4.1" rowspan="4"><span class="ltx_text" id="S4.T1.1.5.4.1.1">
<span class="ltx_inline-block ltx_align_left" id="S4.T1.1.5.4.1.1.1">
<span class="ltx_p" id="S4.T1.1.5.4.1.1.1.1">Claude 3.5</span>
<span class="ltx_p" id="S4.T1.1.5.4.1.1.1.2">Sonnet</span>
</span></span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T1.1.5.4.2">Standard</th>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T1.1.5.4.3">64.6%</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T1.1.5.4.4">1.1</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T1.1.5.4.5">0.9 s</td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.6.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T1.1.6.5.1">CoT</th>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T1.1.6.5.2">95.8%</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T1.1.6.5.3">190.0</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T1.1.6.5.4">3.1 s</td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.7.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_t" id="S4.T1.1.7.6.1">CoD</th>
<td class="ltx_td ltx_align_right ltx_border_bb ltx_border_t" id="S4.T1.1.7.6.2">91.4%</td>
<td class="ltx_td ltx_align_right ltx_border_bb ltx_border_t" id="S4.T1.1.7.6.3">39.8</td>
<td class="ltx_td ltx_align_right ltx_border_bb ltx_border_t" id="S4.T1.1.7.6.4">1.6 s</td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 This table presents the results of evaluating the GSM8K benchmark dataset using three different prompting strategies: Standard, Chain-of-Thought (CoT), and Chain-of-Draft (CoD).  For each strategy, it shows the accuracy achieved by the GPT-40 and Claude 3.5 Sonnet language models, along with the average number of tokens used and the latency experienced. This allows for a comparison of the accuracy, efficiency (in terms of tokens and time), and overall performance of the three prompting techniques on a complex arithmetic reasoning task.
> <details>
> <summary>read the caption</summary>
> Table 1: GSM8K evaluation results.
> </details>





### In-depth insights


#### Less is Faster
**Less is Faster** encapsulates the idea that efficiency and conciseness can sometimes lead to better results than verbose and complex methods. This concept suggests that **reducing the amount of information or steps involved in a process can paradoxically improve its speed and accuracy.** This can be seen in various applications such as the Chain of Draft approach, which achieves high accuracy while using significantly fewer tokens. By focusing on essential information and avoiding unnecessary elaboration, systems can operate more efficiently, reducing both computational cost and latency. The principle also highlights the value of minimalism, emphasizing that **simpler, more streamlined solutions can often outperform more intricate ones** because they are easier to understand, implement, and maintain. This is vital for optimizing performance and enhancing usability.

#### CoD vs. CoT
**CoD (Chain of Draft) vs. CoT (Chain of Thought) represents a shift in reasoning strategy for LLMs**. CoT emphasizes detailed, verbose, step-by-step reasoning, mirroring how humans might articulate their thoughts. However, **CoD proposes a more efficient approach**, inspired by how humans often jot down concise, essential insights when problem-solving. **CoD aims to reduce verbosity by encouraging LLMs to generate minimalistic yet informative intermediate reasoning steps**.  This approach promises to decrease computational costs (token usage) and latency, making LLMs more practical for real-world scenarios where efficiency is crucial.  The key difference lies in the level of detail; CoT is exhaustive, while **CoD prioritizes essential information**.  Evaluations using CoD have shown accuracy levels that match or exceed CoT, but with significantly fewer tokens and lower latency. This suggests that LLMs don't always need to spell out every detail to achieve correct reasoning, and **focused, concise drafts can be more effective.**

#### Human Thinking
The paper cleverly draws inspiration from **human cognitive processes**, specifically the way we draft concise notes to capture essential information when solving complex problems. This is in contrast to the more verbose approach often seen in Chain-of-Thought prompting with LLMs. The idea is that humans often prioritize efficiency and minimalism, jotting down only the critical pieces of information needed to progress. The motivation behind **CoD** stems from the observation that LLMs' verbose reasoning contrasts with efficient strategies humans employ. **This offers a novel path forward**.

#### Drafts = Insights
The idea of "Drafts = Insights" highlights a shift in how we approach problem-solving with LLMs. Traditionally, LLMs are prompted to produce verbose, step-by-step reasoning, mirroring human thought processes but often inefficiently. This perspective suggests that **concise, draft-like outputs can be equally, if not more, effective for complex tasks**. By focusing on capturing essential information and key transformations in a minimal format, LLMs can emulate how humans jot down shorthand notes or crucial calculations during problem-solving. This approach potentially **reduces computational cost and latency**, making LLMs more practical for real-world applications. Further, the concept emphasizes that the **value lies not in verbose expression but in the strategic selection of vital information**. These concise drafts serve as insights, guiding the LLM toward the final solution more efficiently, suggesting a move toward more streamlined and insightful interactions with LLMs.

#### Cost Efficiency
While the term "Cost Efficiency" isn't explicitly a heading in this paper, the core concept is heavily woven throughout its arguments. The study introduces Chain of Draft (CoD) which improves **computational efficiency** and minimize usage of tokens in language models. The paper mentions CoD reduces the need for extensive computational power and decreases output token count by 80%, which directly corresponds to lower costs. A major focus of the paper is to find solutions to excessive resource consumption, which relates to Cost Efficiency. By reducing token count CoD enhances practical applicability in settings with budget restrictions.


### More visual insights




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S4.T2.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T2.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S4.T2.1.1.1.1"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.1.1.1">Model</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S4.T2.1.1.1.2"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.1.2.1">Prompt</span></th>
<th class="ltx_td ltx_align_right ltx_th ltx_th_column ltx_border_tt" id="S4.T2.1.1.1.3"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.1.3.1">Accuracy</span></th>
<th class="ltx_td ltx_align_right ltx_th ltx_th_column ltx_border_tt" id="S4.T2.1.1.1.4"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.1.4.1">Token #</span></th>
<th class="ltx_td ltx_align_right ltx_th ltx_th_column ltx_border_tt" id="S4.T2.1.1.1.5"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.1.5.1">Latency</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T2.1.2.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T2.1.2.1.1" rowspan="3"><span class="ltx_text" id="S4.T2.1.2.1.1.1">GPT-4o</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T2.1.2.1.2">Standard</th>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T2.1.2.1.3">72.6%</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T2.1.2.1.4">5.2</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T2.1.2.1.5">0.6 s</td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.3.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T2.1.3.2.1">CoT</th>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T2.1.3.2.2">90.2%</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T2.1.3.2.3">75.7</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T2.1.3.2.4">1.7 s</td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.4.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T2.1.4.3.1">CoD</th>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T2.1.4.3.2">88.1%</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T2.1.4.3.3">30.2</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T2.1.4.3.4">1.3 s</td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.5.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_t" id="S4.T2.1.5.4.1" rowspan="4"><span class="ltx_text" id="S4.T2.1.5.4.1.1">
<span class="ltx_inline-block ltx_align_left" id="S4.T2.1.5.4.1.1.1">
<span class="ltx_p" id="S4.T2.1.5.4.1.1.1.1">Claude 3.5</span>
<span class="ltx_p" id="S4.T2.1.5.4.1.1.1.2">Sonnet</span>
</span></span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T2.1.5.4.2">Standard</th>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T2.1.5.4.3">84.3%</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T2.1.5.4.4">5.2</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T2.1.5.4.5">1.0 s</td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.6.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T2.1.6.5.1">CoT</th>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T2.1.6.5.2">87.0%</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T2.1.6.5.3">172.5</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T2.1.6.5.4">3.2 s</td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.7.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_t" id="S4.T2.1.7.6.1">CoD</th>
<td class="ltx_td ltx_align_right ltx_border_bb ltx_border_t" id="S4.T2.1.7.6.2">89.7%</td>
<td class="ltx_td ltx_align_right ltx_border_bb ltx_border_t" id="S4.T2.1.7.6.3">31.3</td>
<td class="ltx_td ltx_align_right ltx_border_bb ltx_border_t" id="S4.T2.1.7.6.4">1.4 s</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of evaluating three different prompting strategies (Standard, Chain-of-Thought, and Chain-of-Draft) on the date understanding task from the BIG-bench benchmark.  It shows the accuracy, the number of tokens used, and the latency for each prompting method and model (GPT-4 and Claude 3.5 Sonnet).  The data illustrates the impact of the different prompting approaches on both model performance and efficiency.
> <details>
> <summary>read the caption</summary>
> Table 2: Date understanding evaluation results.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S4.T3.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T3.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S4.T3.1.1.1.1"><span class="ltx_text ltx_font_bold" id="S4.T3.1.1.1.1.1">Model</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S4.T3.1.1.1.2"><span class="ltx_text ltx_font_bold" id="S4.T3.1.1.1.2.1">Prompt</span></th>
<th class="ltx_td ltx_align_right ltx_th ltx_th_column ltx_border_tt" id="S4.T3.1.1.1.3"><span class="ltx_text ltx_font_bold" id="S4.T3.1.1.1.3.1">Accuracy</span></th>
<th class="ltx_td ltx_align_right ltx_th ltx_th_column ltx_border_tt" id="S4.T3.1.1.1.4"><span class="ltx_text ltx_font_bold" id="S4.T3.1.1.1.4.1">Token #</span></th>
<th class="ltx_td ltx_align_right ltx_th ltx_th_column ltx_border_tt" id="S4.T3.1.1.1.5"><span class="ltx_text ltx_font_bold" id="S4.T3.1.1.1.5.1">Latency</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T3.1.2.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T3.1.2.1.1" rowspan="3"><span class="ltx_text" id="S4.T3.1.2.1.1.1">GPT-4o</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T3.1.2.1.2">Standard</th>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T3.1.2.1.3">90.0%</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T3.1.2.1.4">1.0</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T3.1.2.1.5">0.4 s</td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.3.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T3.1.3.2.1">CoT</th>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T3.1.3.2.2">95.9%</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T3.1.3.2.3">28.7</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T3.1.3.2.4">0.9 s</td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.4.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T3.1.4.3.1">CoD</th>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T3.1.4.3.2">98.3%</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T3.1.4.3.3">15.0</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T3.1.4.3.4">0.7 s</td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.5.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_t" id="S4.T3.1.5.4.1" rowspan="4"><span class="ltx_text" id="S4.T3.1.5.4.1.1">
<span class="ltx_inline-block ltx_align_left" id="S4.T3.1.5.4.1.1.1">
<span class="ltx_p" id="S4.T3.1.5.4.1.1.1.1">Claude 3.5</span>
<span class="ltx_p" id="S4.T3.1.5.4.1.1.1.2">Sonnet</span>
</span></span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T3.1.5.4.2">Standard</th>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T3.1.5.4.3">90.6%</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T3.1.5.4.4">1.0</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T3.1.5.4.5">0.9 s</td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.6.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T3.1.6.5.1">CoT</th>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T3.1.6.5.2">93.2%</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T3.1.6.5.3">189.4</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T3.1.6.5.4">3.6 s</td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.7.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_t" id="S4.T3.1.7.6.1">CoD</th>
<td class="ltx_td ltx_align_right ltx_border_bb ltx_border_t" id="S4.T3.1.7.6.2">97.3%</td>
<td class="ltx_td ltx_align_right ltx_border_bb ltx_border_t" id="S4.T3.1.7.6.3">14.3</td>
<td class="ltx_td ltx_align_right ltx_border_bb ltx_border_t" id="S4.T3.1.7.6.4">1.0 s</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of evaluating three different prompting strategies (Standard, Chain-of-Thought, and Chain-of-Draft) on a sports understanding task.  It shows the accuracy, token count, and latency for each prompting method using two different Large Language Models (LLMs): GPT-40 and Claude 3.5 Sonnet.  The results highlight the performance gains in terms of speed and efficiency achieved by using Chain-of-Draft compared to Chain-of-Thought while maintaining accuracy.
> <details>
> <summary>read the caption</summary>
> Table 3: Sports understanding evaluation results.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S4.T4.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T4.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S4.T4.1.1.1.1"><span class="ltx_text ltx_font_bold" id="S4.T4.1.1.1.1.1">Model</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S4.T4.1.1.1.2"><span class="ltx_text ltx_font_bold" id="S4.T4.1.1.1.2.1">Prompt</span></th>
<th class="ltx_td ltx_align_right ltx_th ltx_th_column ltx_border_tt" id="S4.T4.1.1.1.3"><span class="ltx_text ltx_font_bold" id="S4.T4.1.1.1.3.1">Accuracy</span></th>
<th class="ltx_td ltx_align_right ltx_th ltx_th_column ltx_border_tt" id="S4.T4.1.1.1.4"><span class="ltx_text ltx_font_bold" id="S4.T4.1.1.1.4.1">Token #</span></th>
<th class="ltx_td ltx_align_right ltx_th ltx_th_column ltx_border_tt" id="S4.T4.1.1.1.5"><span class="ltx_text ltx_font_bold" id="S4.T4.1.1.1.5.1">Latency</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T4.1.2.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T4.1.2.1.1" rowspan="3"><span class="ltx_text" id="S4.T4.1.2.1.1.1">GPT-4o</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T4.1.2.1.2">Standard</th>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T4.1.2.1.3">73.2%</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T4.1.2.1.4">1.0</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T4.1.2.1.5">0.4 s</td>
</tr>
<tr class="ltx_tr" id="S4.T4.1.3.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T4.1.3.2.1">CoT</th>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T4.1.3.2.2">100.0%</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T4.1.3.2.3">52.4</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T4.1.3.2.4">1.4 s</td>
</tr>
<tr class="ltx_tr" id="S4.T4.1.4.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T4.1.4.3.1">CoD</th>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T4.1.4.3.2">100.0%</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T4.1.4.3.3">16.8</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T4.1.4.3.4">0.8 s</td>
</tr>
<tr class="ltx_tr" id="S4.T4.1.5.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_t" id="S4.T4.1.5.4.1" rowspan="4"><span class="ltx_text" id="S4.T4.1.5.4.1.1">
<span class="ltx_inline-block ltx_align_left" id="S4.T4.1.5.4.1.1.1">
<span class="ltx_p" id="S4.T4.1.5.4.1.1.1.1">Claude 3.5</span>
<span class="ltx_p" id="S4.T4.1.5.4.1.1.1.2">Sonnet</span>
</span></span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T4.1.5.4.2">Standard</th>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T4.1.5.4.3">85.2%</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T4.1.5.4.4">1.0</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T4.1.5.4.5">1.2 s</td>
</tr>
<tr class="ltx_tr" id="S4.T4.1.6.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T4.1.6.5.1">CoT</th>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T4.1.6.5.2">100.0%</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T4.1.6.5.3">135.3</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T4.1.6.5.4">3.1 s</td>
</tr>
<tr class="ltx_tr" id="S4.T4.1.7.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_t" id="S4.T4.1.7.6.1">CoD</th>
<td class="ltx_td ltx_align_right ltx_border_bb ltx_border_t" id="S4.T4.1.7.6.2">100.0%</td>
<td class="ltx_td ltx_align_right ltx_border_bb ltx_border_t" id="S4.T4.1.7.6.3">18.9</td>
<td class="ltx_td ltx_align_right ltx_border_bb ltx_border_t" id="S4.T4.1.7.6.4">1.6 s</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of evaluating three prompting strategies (Standard, Chain-of-Thought, and Chain-of-Draft) on a symbolic reasoning task involving coin flips.  It shows the accuracy, number of tokens used, and latency for each method using two different large language models (GPT-40 and Claude 3.5 Sonnet).  The results demonstrate Chain-of-Draft's ability to achieve high accuracy with significantly fewer tokens and lower latency compared to Chain-of-Thought.
> <details>
> <summary>read the caption</summary>
> Table 4: Coin flip evaluation results.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2502.18600/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.18600/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.18600/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.18600/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.18600/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.18600/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}