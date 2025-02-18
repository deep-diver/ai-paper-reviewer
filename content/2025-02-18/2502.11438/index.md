---
title: "SAFE-SQL: Self-Augmented In-Context Learning with Fine-grained Example Selection for Text-to-SQL"
summary: "SAFE-SQL boosts Text-to-SQL accuracy by intelligently generating and filtering self-augmented examples for in-context learning, surpassing existing methods in challenging scenarios."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Natural Language Processing", "Question Answering", "🏢 Department of Artificial Intelligence, Chung-Ang University",]
showSummary: true
date: 2025-02-17
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2502.11438 {{< /keyword >}}
{{< keyword icon="writer" >}} Jimin Lee et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-02-18 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2502.11438" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2502.11438" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2502.11438/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Traditional Text-to-SQL methods struggle when relevant training examples are unavailable.  Many approaches rely on retrieving similar examples, which fails in real-world situations. This creates a need for methods that can handle the lack of suitable training data, improving the robustness of Text-to-SQL systems.



To address these issues, the authors introduce SAFE-SQL. This framework generates its own examples using LLMs and then applies a structured filtering mechanism to remove noisy ones. By carefully selecting high-quality synthetic examples, SAFE-SQL enhances in-context learning, leading to significant improvements in accuracy, especially when dealing with complex and previously unseen queries. The unsupervised nature of SAFE-SQL makes it a valuable contribution, avoiding the limitations and costs associated with supervised fine-tuning.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} SAFE-SQL improves Text-to-SQL accuracy by using self-generated and filtered examples. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} The method achieves higher accuracy than previous methods, particularly in complex scenarios. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} SAFE-SQL is a fully unsupervised approach, eliminating the need for additional model training. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper is important because it presents **SAFE-SQL**, a novel approach to improve Text-to-SQL systems.  It addresses the limitations of existing methods by generating and filtering self-augmented examples, improving accuracy and robustness, especially in complex scenarios. This work is relevant to current research trends in in-context learning and synthetic data generation for NLP tasks and opens new avenues for exploring unsupervised learning techniques in the Text-to-SQL domain.

------
#### Visual Insights





{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S4.T1.1.1">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T1.1.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_tt" id="S4.T1.1.1.1.1.1" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.1.1.1.1">Method</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_tt" id="S4.T1.1.1.1.1.2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.1.1.2.1">Model</span></th>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T1.1.1.1.1.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.1.1.3.1">Easy</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T1.1.1.1.1.4" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.1.1.4.1">Medium</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T1.1.1.1.1.5" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.1.1.5.1">Hard</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T1.1.1.1.1.6" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.1.1.6.1">Extra</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T1.1.1.1.1.7" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.1.1.7.1">All</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.1.2.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" colspan="7" id="S4.T1.1.1.2.2.1" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.2.2.1.1">Supervised Fine-Tuning (SFT)</span></th>
</tr>
<tr class="ltx_tr" id="S4.T1.1.1.3.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T1.1.1.3.3.1" style="padding-left:3.0pt;padding-right:3.0pt;">SYN-SQL</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T1.1.1.3.3.2" style="padding-left:3.0pt;padding-right:3.0pt;">Sense 13B</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.3.3.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.3.3.3.1">95.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.3.3.4" style="padding-left:3.0pt;padding-right:3.0pt;">88.6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.3.3.5" style="padding-left:3.0pt;padding-right:3.0pt;">75.9</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.3.3.6" style="padding-left:3.0pt;padding-right:3.0pt;">60.3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.3.3.7" style="padding-left:3.0pt;padding-right:3.0pt;">83.5</td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.1.4.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T1.1.1.4.4.1" style="padding-left:3.0pt;padding-right:3.0pt;">SQL-Palm</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T1.1.1.4.4.2" style="padding-left:3.0pt;padding-right:3.0pt;">PaLM2</th>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.4.4.3" style="padding-left:3.0pt;padding-right:3.0pt;">93.5</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.4.4.4" style="padding-left:3.0pt;padding-right:3.0pt;">84.8</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.4.4.5" style="padding-left:3.0pt;padding-right:3.0pt;">62.6</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.4.4.6" style="padding-left:3.0pt;padding-right:3.0pt;">48.2</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.4.4.7" style="padding-left:3.0pt;padding-right:3.0pt;">77.3</td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.1.5.5">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" colspan="7" id="S4.T1.1.1.5.5.1" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.5.5.1.1">Zero-shot Methods</span></th>
</tr>
<tr class="ltx_tr" id="S4.T1.1.1.6.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T1.1.1.6.6.1" style="padding-left:3.0pt;padding-right:3.0pt;">Baseline</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T1.1.1.6.6.2" style="padding-left:3.0pt;padding-right:3.0pt;">GPT-4</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.6.6.3" style="padding-left:3.0pt;padding-right:3.0pt;">84.3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.6.6.4" style="padding-left:3.0pt;padding-right:3.0pt;">73.1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.6.6.5" style="padding-left:3.0pt;padding-right:3.0pt;">65.8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.6.6.6" style="padding-left:3.0pt;padding-right:3.0pt;">40.3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.6.6.7" style="padding-left:3.0pt;padding-right:3.0pt;">69.1</td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.1.7.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T1.1.1.7.7.1" style="padding-left:3.0pt;padding-right:3.0pt;">Baseline</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T1.1.1.7.7.2" style="padding-left:3.0pt;padding-right:3.0pt;">GPT-4o</th>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.7.7.3" style="padding-left:3.0pt;padding-right:3.0pt;">87.2</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.7.7.4" style="padding-left:3.0pt;padding-right:3.0pt;">77.2</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.7.7.5" style="padding-left:3.0pt;padding-right:3.0pt;">68.4</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.7.7.6" style="padding-left:3.0pt;padding-right:3.0pt;">48.7</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.7.7.7" style="padding-left:3.0pt;padding-right:3.0pt;">73.4</td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.1.8.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T1.1.1.8.8.1" style="padding-left:3.0pt;padding-right:3.0pt;">Baseline</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T1.1.1.8.8.2" style="padding-left:3.0pt;padding-right:3.0pt;">GPT-4o-mini</th>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.8.8.3" style="padding-left:3.0pt;padding-right:3.0pt;">84.8</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.8.8.4" style="padding-left:3.0pt;padding-right:3.0pt;">75.6</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.8.8.5" style="padding-left:3.0pt;padding-right:3.0pt;">67.0</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.8.8.6" style="padding-left:3.0pt;padding-right:3.0pt;">46.1</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.8.8.7" style="padding-left:3.0pt;padding-right:3.0pt;">71.5</td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.1.9.9">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T1.1.1.9.9.1" style="padding-left:3.0pt;padding-right:3.0pt;">C3q-SQL</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T1.1.1.9.9.2" style="padding-left:3.0pt;padding-right:3.0pt;">GPT-4</th>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.9.9.3" style="padding-left:3.0pt;padding-right:3.0pt;">90.2</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.9.9.4" style="padding-left:3.0pt;padding-right:3.0pt;">82.8</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.9.9.5" style="padding-left:3.0pt;padding-right:3.0pt;">77.3</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.9.9.6" style="padding-left:3.0pt;padding-right:3.0pt;">64.3</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.9.9.7" style="padding-left:3.0pt;padding-right:3.0pt;">80.6</td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.1.10.10">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" colspan="7" id="S4.T1.1.1.10.10.1" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.10.10.1.1">Few-shot Methods</span></th>
</tr>
<tr class="ltx_tr" id="S4.T1.1.1.11.11">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T1.1.1.11.11.1" style="padding-left:3.0pt;padding-right:3.0pt;">DIN-SQL</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T1.1.1.11.11.2" style="padding-left:3.0pt;padding-right:3.0pt;">GPT-4</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.11.11.3" style="padding-left:3.0pt;padding-right:3.0pt;">91.1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.11.11.4" style="padding-left:3.0pt;padding-right:3.0pt;">79.8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.11.11.5" style="padding-left:3.0pt;padding-right:3.0pt;">64.9</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.11.11.6" style="padding-left:3.0pt;padding-right:3.0pt;">43.4</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.11.11.7" style="padding-left:3.0pt;padding-right:3.0pt;">74.2</td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.1.12.12">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T1.1.1.12.12.1" style="padding-left:3.0pt;padding-right:3.0pt;">DAIL-SQL</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T1.1.1.12.12.2" style="padding-left:3.0pt;padding-right:3.0pt;">GPT-4</th>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.12.12.3" style="padding-left:3.0pt;padding-right:3.0pt;">90.7</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.12.12.4" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.12.12.4.1">89.7</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.12.12.5" style="padding-left:3.0pt;padding-right:3.0pt;">75.3</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.12.12.6" style="padding-left:3.0pt;padding-right:3.0pt;">62.0</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.12.12.7" style="padding-left:3.0pt;padding-right:3.0pt;">83.1</td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.1.13.13">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T1.1.1.13.13.1" style="padding-left:3.0pt;padding-right:3.0pt;">ACT-SQL</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T1.1.1.13.13.2" style="padding-left:3.0pt;padding-right:3.0pt;">GPT-4</th>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.13.13.3" style="padding-left:3.0pt;padding-right:3.0pt;">91.1</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.13.13.4" style="padding-left:3.0pt;padding-right:3.0pt;">79.4</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.13.13.5" style="padding-left:3.0pt;padding-right:3.0pt;">67.2</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.13.13.6" style="padding-left:3.0pt;padding-right:3.0pt;">44.0</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.13.13.7" style="padding-left:3.0pt;padding-right:3.0pt;">74.5</td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.1.14.14">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T1.1.1.14.14.1" style="padding-left:3.0pt;padding-right:3.0pt;">PTD-SQL</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T1.1.1.14.14.2" style="padding-left:3.0pt;padding-right:3.0pt;">GPT-4</th>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.14.14.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T1.1.1.14.14.3.1">94.8</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.14.14.4" style="padding-left:3.0pt;padding-right:3.0pt;">88.8</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.14.14.5" style="padding-left:3.0pt;padding-right:3.0pt;">85.1</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.14.14.6" style="padding-left:3.0pt;padding-right:3.0pt;">64.5</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.14.14.7" style="padding-left:3.0pt;padding-right:3.0pt;">85.7</td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.1.15.15">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T1.1.1.15.15.1" style="padding-left:3.0pt;padding-right:3.0pt;">DEA-SQL</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T1.1.1.15.15.2" style="padding-left:3.0pt;padding-right:3.0pt;">GPT-4</th>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.15.15.3" style="padding-left:3.0pt;padding-right:3.0pt;">88.7</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.15.15.4" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T1.1.1.15.15.4.1">89.5</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.15.15.5" style="padding-left:3.0pt;padding-right:3.0pt;">85.6</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.15.15.6" style="padding-left:3.0pt;padding-right:3.0pt;">70.5</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.15.15.7" style="padding-left:3.0pt;padding-right:3.0pt;">85.6</td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.1.16.16">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" colspan="7" id="S4.T1.1.1.16.16.1" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.16.16.1.1">Self-augmented In-Context Learning</span></th>
</tr>
<tr class="ltx_tr" id="S4.T1.1.1.17.17">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T1.1.1.17.17.1" style="padding-left:3.0pt;padding-right:3.0pt;">SAFE-SQL</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T1.1.1.17.17.2" style="padding-left:3.0pt;padding-right:3.0pt;">GPT-4</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.17.17.3" style="padding-left:3.0pt;padding-right:3.0pt;">93.2</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.17.17.4" style="padding-left:3.0pt;padding-right:3.0pt;">88.9</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.17.17.5" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T1.1.1.17.17.5.1">85.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.17.17.6" style="padding-left:3.0pt;padding-right:3.0pt;">74.7</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.17.17.7" style="padding-left:3.0pt;padding-right:3.0pt;">86.8</td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.1.18.18">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T1.1.1.18.18.1" style="padding-left:3.0pt;padding-right:3.0pt;">SAFE-SQL</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T1.1.1.18.18.2" style="padding-left:3.0pt;padding-right:3.0pt;">GPT-4o</th>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.18.18.3" style="padding-left:3.0pt;padding-right:3.0pt;">93.4</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.18.18.4" style="padding-left:3.0pt;padding-right:3.0pt;">89.3</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.18.18.5" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.18.18.5.1">88.4</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.18.18.6" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.18.18.6.1">75.8</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.18.18.7" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.18.18.7.1">87.9</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.1.19.19">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S4.T1.1.1.19.19.1" style="padding-left:3.0pt;padding-right:3.0pt;">SAFE-SQL</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S4.T1.1.1.19.19.2" style="padding-left:3.0pt;padding-right:3.0pt;">GPT-4o-mini</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.1.1.19.19.3" style="padding-left:3.0pt;padding-right:3.0pt;">93.6</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.1.1.19.19.4" style="padding-left:3.0pt;padding-right:3.0pt;">87.5</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.1.1.19.19.5" style="padding-left:3.0pt;padding-right:3.0pt;">86.1</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.1.1.19.19.6" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T1.1.1.19.19.6.1">75.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.1.1.19.19.7" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T1.1.1.19.19.7.1">87.4</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 This table presents the execution accuracy of different models on the Spider development dataset, categorized by difficulty level (Easy, Medium, Hard, Extra).  The results showcase the performance of various Text-to-SQL methods, including zero-shot, few-shot, and the proposed SAFE-SQL approach.  The highest accuracy for each model is highlighted in bold, with the second-highest underlined, allowing for easy comparison of model performance across different difficulty levels.
> <details>
> <summary>read the caption</summary>
> Table 1: Execution accuracy across difficulty levels on the Spider development set. The highest score per row is in bold, and the second highest is underlined.
> </details>





### In-depth insights


#### Self-Augmented Learning
Self-augmented learning represents a **paradigm shift** in machine learning, moving away from reliance on solely externally provided data.  It emphasizes the **autonomous generation of training data** by the model itself, fostering a more iterative and adaptive learning process.  This approach addresses limitations of traditional methods, particularly when dealing with scarce or expensive labeled datasets. **Key advantages** include improved efficiency by reducing human annotation needs and enhanced generalization capabilities due to the model's own exploration of the data space.  However, challenges remain.  **Careful design of the data augmentation strategies** is critical to avoid introducing noise and biases, which may hinder model performance.  **Effective filtering mechanisms** are needed to select high-quality synthetic data, and careful consideration of the computational cost of generating the data is necessary.  The success of self-augmented learning hinges on finding the right balance between exploration and exploitation, ensuring that the model generates informative and diverse examples without wasting resources on irrelevant ones.  Therefore, future research should focus on developing more sophisticated data generation and filtering techniques, along with a deeper understanding of the theoretical properties of this approach.

#### Fine-grained Selection
Fine-grained selection, in the context of a text-to-SQL system, signifies a crucial mechanism for **enhancing the quality of in-context learning**.  It moves beyond simply retrieving similar examples, instead employing a **multi-faceted assessment** process to rigorously evaluate the relevance and accuracy of potential examples. This often involves evaluating semantic similarity, structural alignment between questions and SQL queries, and the logical soundness of the reasoning path employed to generate the SQL.  The result is a **highly curated subset** of examples fed into the model, leading to more accurate and robust SQL generation. **Threshold-based filtering** further refines this selection, ensuring only high-quality examples contribute to the final model inference.  The power of this approach lies in its ability to **mitigate the impact of noisy or irrelevant examples**, which is particularly important in scenarios where similar training data is scarce or unreliable.  In essence, fine-grained selection is about **precision over recall**, prioritizing quality of examples to ensure reliable and accurate SQL generation, even in challenging real-world scenarios.

#### Synthetic Data
The concept of synthetic data generation is crucial in addressing the limitations of real-world data scarcity in training effective Text-to-SQL models.  **SAFE-SQL leverages the power of LLMs to generate synthetic examples**, addressing the challenge of unavailable similar examples in real-world scenarios where retrieval-based methods often fail.  However,  **unfiltered self-generated data risks degrading model performance**, introducing noise and inaccuracies.  Therefore, SAFE-SQL incorporates a multi-stage filtering process to ensure high quality, relevant examples are used for in-context learning. This filtering, based on semantic similarity, structural alignment, and reasoning path validity, is key to mitigating the risks associated with using synthetic data.  **The effectiveness of this approach is evident in SAFE-SQL's superior performance**, particularly in complex and unseen scenarios, showcasing the potential of carefully curated synthetic data in enhancing Text-to-SQL model robustness.

#### LLM-based Inference
LLM-based inference in the context of Text-to-SQL involves leveraging the capabilities of large language models (LLMs) to translate natural language questions into executable SQL queries.  This approach offers several advantages, including **the ability to handle complex and nuanced queries** that traditional methods struggle with.  The inherent ability of LLMs to understand context and semantics is particularly valuable for interpreting ambiguous natural language.  However, directly applying LLMs to this task presents challenges. **Generating high-quality, relevant examples** is crucial for effective in-context learning.  Relying solely on LLMs can lead to noisy or incorrect SQL queries due to the models' susceptibility to hallucinations or flawed reasoning.  Therefore, **carefully designed filtering mechanisms** are often necessary to curate training data and refine synthetic examples generated by the LLMs before they are used for inference.  Furthermore, the performance of LLM-based inference can be highly dependent on the **size and architecture of the LLM** employed.  Larger models generally exhibit better performance but require significantly more computational resources. The choice of LLM should also consider factors like the specific domain and dialect of SQL being targeted. Overall, while LLM-based inference holds significant promise for Text-to-SQL, effective implementation requires careful consideration of example generation, filtering, and model selection to achieve optimal accuracy and robustness.

#### Future Directions
Future research could explore several promising avenues.  **Improving the efficiency and scalability of the SAFE-SQL framework** is crucial.  The current reliance on large language models (LLMs) like GPT-40 limits applicability to resource-constrained settings.  Investigating techniques for handling **more complex and nuanced SQL queries** involving intricate joins, subqueries, and aggregations is needed.  **Expanding the approach to handle diverse SQL dialects** and databases would enhance its real-world applicability.  Furthermore,  **thorough investigation into the impact of different LLMs** on the framework’s performance is warranted.  A comparative analysis could reveal the optimal model choice for various scenarios.  Finally, a deeper exploration into the **ethical implications of using LLMs for synthetic data generation** is necessary. Addressing potential biases and ensuring fairness should be a primary focus.


### More visual insights




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S4.T2.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T2.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S4.T2.1.1.1.1">Models</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T2.1.1.1.2">EX</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T2.1.1.1.3">EM</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T2.1.2.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T2.1.2.1.1">GPT-4o + SAFE</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.2.1.2">87.9</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.2.1.3">78.3</td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.3.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.1.3.2.1">w/o Reasoning path</th>
<td class="ltx_td ltx_align_center" id="S4.T2.1.3.2.2">84.4 (-3.5)</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.3.2.3">73.6(-4.7)</td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.4.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.1.4.3.1">w/o Relevance filtering</th>
<td class="ltx_td ltx_align_center" id="S4.T2.1.4.3.2">82.1 (-5.8)</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.4.3.3">68.5(-9.7)</td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.5.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.1.5.4.1">w/o Schema linking</th>
<td class="ltx_td ltx_align_center" id="S4.T2.1.5.4.2">80.4 (-7.5)</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.5.4.3">65.1(-13.2)</td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.6.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S4.T2.1.6.5.1">w/o Similar examples</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.1.6.5.2">77.1 (-10.8)</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.1.6.5.3">61.9(-16.4)</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This ablation study analyzes the impact of removing individual components from the SAFE-SQL model on its performance.  By systematically removing components such as the Reasoning Path, Relevance Filtering, Schema Linking, and the use of Similar Examples, the table quantifies the contribution of each element to the overall accuracy.  The results demonstrate that each component plays a crucial role in achieving the high performance of SAFE-SQL. Removing any one significantly reduces execution accuracy.
> <details>
> <summary>read the caption</summary>
> Table 2: Ablation study results for SAFE-SQL, where removing each component leads to a performance drop.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S4.T3.7">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T3.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S4.T3.1.1.2">Score</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T3.1.1.1">cos <math alttext="\theta" class="ltx_Math" display="inline" id="S4.T3.1.1.1.m1.1"><semantics id="S4.T3.1.1.1.m1.1a"><mi id="S4.T3.1.1.1.m1.1.1" xref="S4.T3.1.1.1.m1.1.1.cmml">θ</mi><annotation-xml encoding="MathML-Content" id="S4.T3.1.1.1.m1.1b"><ci id="S4.T3.1.1.1.m1.1.1.cmml" xref="S4.T3.1.1.1.m1.1.1">𝜃</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.1.1.1.m1.1c">\theta</annotation><annotation encoding="application/x-llamapun" id="S4.T3.1.1.1.m1.1d">italic_θ</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T3.1.1.3"># of Generated EX</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T3.1.1.4">% Filtered EX</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T3.2.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T3.2.2.1"><math alttext="\geq 0" class="ltx_Math" display="inline" id="S4.T3.2.2.1.m1.1"><semantics id="S4.T3.2.2.1.m1.1a"><mrow id="S4.T3.2.2.1.m1.1.1" xref="S4.T3.2.2.1.m1.1.1.cmml"><mi id="S4.T3.2.2.1.m1.1.1.2" xref="S4.T3.2.2.1.m1.1.1.2.cmml"></mi><mo id="S4.T3.2.2.1.m1.1.1.1" xref="S4.T3.2.2.1.m1.1.1.1.cmml">≥</mo><mn id="S4.T3.2.2.1.m1.1.1.3" xref="S4.T3.2.2.1.m1.1.1.3.cmml">0</mn></mrow><annotation-xml encoding="MathML-Content" id="S4.T3.2.2.1.m1.1b"><apply id="S4.T3.2.2.1.m1.1.1.cmml" xref="S4.T3.2.2.1.m1.1.1"><geq id="S4.T3.2.2.1.m1.1.1.1.cmml" xref="S4.T3.2.2.1.m1.1.1.1"></geq><csymbol cd="latexml" id="S4.T3.2.2.1.m1.1.1.2.cmml" xref="S4.T3.2.2.1.m1.1.1.2">absent</csymbol><cn id="S4.T3.2.2.1.m1.1.1.3.cmml" type="integer" xref="S4.T3.2.2.1.m1.1.1.3">0</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.2.2.1.m1.1c">\geq 0</annotation><annotation encoding="application/x-llamapun" id="S4.T3.2.2.1.m1.1d">≥ 0</annotation></semantics></math></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.2.2.2">0.581</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.2.2.3">10340</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.2.2.4">0 %</td>
</tr>
<tr class="ltx_tr" id="S4.T3.3.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T3.3.3.1"><math alttext="\geq 2" class="ltx_Math" display="inline" id="S4.T3.3.3.1.m1.1"><semantics id="S4.T3.3.3.1.m1.1a"><mrow id="S4.T3.3.3.1.m1.1.1" xref="S4.T3.3.3.1.m1.1.1.cmml"><mi id="S4.T3.3.3.1.m1.1.1.2" xref="S4.T3.3.3.1.m1.1.1.2.cmml"></mi><mo id="S4.T3.3.3.1.m1.1.1.1" xref="S4.T3.3.3.1.m1.1.1.1.cmml">≥</mo><mn id="S4.T3.3.3.1.m1.1.1.3" xref="S4.T3.3.3.1.m1.1.1.3.cmml">2</mn></mrow><annotation-xml encoding="MathML-Content" id="S4.T3.3.3.1.m1.1b"><apply id="S4.T3.3.3.1.m1.1.1.cmml" xref="S4.T3.3.3.1.m1.1.1"><geq id="S4.T3.3.3.1.m1.1.1.1.cmml" xref="S4.T3.3.3.1.m1.1.1.1"></geq><csymbol cd="latexml" id="S4.T3.3.3.1.m1.1.1.2.cmml" xref="S4.T3.3.3.1.m1.1.1.2">absent</csymbol><cn id="S4.T3.3.3.1.m1.1.1.3.cmml" type="integer" xref="S4.T3.3.3.1.m1.1.1.3">2</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.3.3.1.m1.1c">\geq 2</annotation><annotation encoding="application/x-llamapun" id="S4.T3.3.3.1.m1.1d">≥ 2</annotation></semantics></math></th>
<td class="ltx_td ltx_align_center" id="S4.T3.3.3.2">0.625</td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.3.3">10185</td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.3.4">1.50% (-155)</td>
</tr>
<tr class="ltx_tr" id="S4.T3.4.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T3.4.4.1"><math alttext="\geq 4" class="ltx_Math" display="inline" id="S4.T3.4.4.1.m1.1"><semantics id="S4.T3.4.4.1.m1.1a"><mrow id="S4.T3.4.4.1.m1.1.1" xref="S4.T3.4.4.1.m1.1.1.cmml"><mi id="S4.T3.4.4.1.m1.1.1.2" xref="S4.T3.4.4.1.m1.1.1.2.cmml"></mi><mo id="S4.T3.4.4.1.m1.1.1.1" xref="S4.T3.4.4.1.m1.1.1.1.cmml">≥</mo><mn id="S4.T3.4.4.1.m1.1.1.3" xref="S4.T3.4.4.1.m1.1.1.3.cmml">4</mn></mrow><annotation-xml encoding="MathML-Content" id="S4.T3.4.4.1.m1.1b"><apply id="S4.T3.4.4.1.m1.1.1.cmml" xref="S4.T3.4.4.1.m1.1.1"><geq id="S4.T3.4.4.1.m1.1.1.1.cmml" xref="S4.T3.4.4.1.m1.1.1.1"></geq><csymbol cd="latexml" id="S4.T3.4.4.1.m1.1.1.2.cmml" xref="S4.T3.4.4.1.m1.1.1.2">absent</csymbol><cn id="S4.T3.4.4.1.m1.1.1.3.cmml" type="integer" xref="S4.T3.4.4.1.m1.1.1.3">4</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.4.4.1.m1.1c">\geq 4</annotation><annotation encoding="application/x-llamapun" id="S4.T3.4.4.1.m1.1d">≥ 4</annotation></semantics></math></th>
<td class="ltx_td ltx_align_center" id="S4.T3.4.4.2">0.744</td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.4.3">9883</td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.4.4">4.41% (-457)</td>
</tr>
<tr class="ltx_tr" id="S4.T3.5.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T3.5.5.1"><math alttext="\geq 6" class="ltx_Math" display="inline" id="S4.T3.5.5.1.m1.1"><semantics id="S4.T3.5.5.1.m1.1a"><mrow id="S4.T3.5.5.1.m1.1.1" xref="S4.T3.5.5.1.m1.1.1.cmml"><mi id="S4.T3.5.5.1.m1.1.1.2" xref="S4.T3.5.5.1.m1.1.1.2.cmml"></mi><mo id="S4.T3.5.5.1.m1.1.1.1" xref="S4.T3.5.5.1.m1.1.1.1.cmml">≥</mo><mn id="S4.T3.5.5.1.m1.1.1.3" xref="S4.T3.5.5.1.m1.1.1.3.cmml">6</mn></mrow><annotation-xml encoding="MathML-Content" id="S4.T3.5.5.1.m1.1b"><apply id="S4.T3.5.5.1.m1.1.1.cmml" xref="S4.T3.5.5.1.m1.1.1"><geq id="S4.T3.5.5.1.m1.1.1.1.cmml" xref="S4.T3.5.5.1.m1.1.1.1"></geq><csymbol cd="latexml" id="S4.T3.5.5.1.m1.1.1.2.cmml" xref="S4.T3.5.5.1.m1.1.1.2">absent</csymbol><cn id="S4.T3.5.5.1.m1.1.1.3.cmml" type="integer" xref="S4.T3.5.5.1.m1.1.1.3">6</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.5.5.1.m1.1c">\geq 6</annotation><annotation encoding="application/x-llamapun" id="S4.T3.5.5.1.m1.1d">≥ 6</annotation></semantics></math></th>
<td class="ltx_td ltx_align_center" id="S4.T3.5.5.2">0.762</td>
<td class="ltx_td ltx_align_center" id="S4.T3.5.5.3">9378</td>
<td class="ltx_td ltx_align_center" id="S4.T3.5.5.4">9.30% (-962)</td>
</tr>
<tr class="ltx_tr" id="S4.T3.6.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T3.6.6.1"><math alttext="\geq 8" class="ltx_Math" display="inline" id="S4.T3.6.6.1.m1.1"><semantics id="S4.T3.6.6.1.m1.1a"><mrow id="S4.T3.6.6.1.m1.1.1" xref="S4.T3.6.6.1.m1.1.1.cmml"><mi id="S4.T3.6.6.1.m1.1.1.2" xref="S4.T3.6.6.1.m1.1.1.2.cmml"></mi><mo id="S4.T3.6.6.1.m1.1.1.1" xref="S4.T3.6.6.1.m1.1.1.1.cmml">≥</mo><mn id="S4.T3.6.6.1.m1.1.1.3" xref="S4.T3.6.6.1.m1.1.1.3.cmml">8</mn></mrow><annotation-xml encoding="MathML-Content" id="S4.T3.6.6.1.m1.1b"><apply id="S4.T3.6.6.1.m1.1.1.cmml" xref="S4.T3.6.6.1.m1.1.1"><geq id="S4.T3.6.6.1.m1.1.1.1.cmml" xref="S4.T3.6.6.1.m1.1.1.1"></geq><csymbol cd="latexml" id="S4.T3.6.6.1.m1.1.1.2.cmml" xref="S4.T3.6.6.1.m1.1.1.2">absent</csymbol><cn id="S4.T3.6.6.1.m1.1.1.3.cmml" type="integer" xref="S4.T3.6.6.1.m1.1.1.3">8</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.6.6.1.m1.1c">\geq 8</annotation><annotation encoding="application/x-llamapun" id="S4.T3.6.6.1.m1.1d">≥ 8</annotation></semantics></math></th>
<td class="ltx_td ltx_align_center" id="S4.T3.6.6.2">0.765</td>
<td class="ltx_td ltx_align_center" id="S4.T3.6.6.3">8606</td>
<td class="ltx_td ltx_align_center" id="S4.T3.6.6.4">16.76% (-1734)</td>
</tr>
<tr class="ltx_tr" id="S4.T3.7.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S4.T3.7.7.1"><math alttext="\geq 10" class="ltx_Math" display="inline" id="S4.T3.7.7.1.m1.1"><semantics id="S4.T3.7.7.1.m1.1a"><mrow id="S4.T3.7.7.1.m1.1.1" xref="S4.T3.7.7.1.m1.1.1.cmml"><mi id="S4.T3.7.7.1.m1.1.1.2" xref="S4.T3.7.7.1.m1.1.1.2.cmml"></mi><mo id="S4.T3.7.7.1.m1.1.1.1" xref="S4.T3.7.7.1.m1.1.1.1.cmml">≥</mo><mn id="S4.T3.7.7.1.m1.1.1.3" xref="S4.T3.7.7.1.m1.1.1.3.cmml">10</mn></mrow><annotation-xml encoding="MathML-Content" id="S4.T3.7.7.1.m1.1b"><apply id="S4.T3.7.7.1.m1.1.1.cmml" xref="S4.T3.7.7.1.m1.1.1"><geq id="S4.T3.7.7.1.m1.1.1.1.cmml" xref="S4.T3.7.7.1.m1.1.1.1"></geq><csymbol cd="latexml" id="S4.T3.7.7.1.m1.1.1.2.cmml" xref="S4.T3.7.7.1.m1.1.1.2">absent</csymbol><cn id="S4.T3.7.7.1.m1.1.1.3.cmml" type="integer" xref="S4.T3.7.7.1.m1.1.1.3">10</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.7.7.1.m1.1c">\geq 10</annotation><annotation encoding="application/x-llamapun" id="S4.T3.7.7.1.m1.1d">≥ 10</annotation></semantics></math></th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.7.7.2">0.769</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.7.7.3">6795</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.7.7.4">34.28% (-3545)</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a detailed analysis of the example generation and filtering process in the SAFE-SQL model.  It shows the number of examples generated at different relevance score thresholds (0-10), the percentage of examples filtered out at each threshold, and the average cosine similarity between the embedding vectors of the filtered examples and the test question.  Higher cosine similarity indicates a stronger semantic relationship between the generated examples and the original test question, suggesting that the filtering process effectively selects relevant and high-quality examples.
> <details>
> <summary>read the caption</summary>
> Table 3: Summary of data generation, filtering results, and embedding similarity analysis by score.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S4.SS6.SSS0.Px3.tab1.1.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.SS6.SSS0.Px3.tab1.1.1.1.1">
<th class="ltx_td ltx_align_justify ltx_th ltx_th_column ltx_border_tt" id="S4.SS6.SSS0.Px3.tab1.1.1.1.1.1" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.SS6.SSS0.Px3.tab1.1.1.1.1.1.1">
<span class="ltx_p" id="S4.SS6.SSS0.Px3.tab1.1.1.1.1.1.1.1"><span class="ltx_text ltx_font_bold" id="S4.SS6.SSS0.Px3.tab1.1.1.1.1.1.1.1.1">SQL Question</span></span>
</span>
</th>
<th class="ltx_td ltx_align_justify ltx_th ltx_th_column ltx_border_tt" id="S4.SS6.SSS0.Px3.tab1.1.1.1.1.2" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.SS6.SSS0.Px3.tab1.1.1.1.1.2.1">
<span class="ltx_p" id="S4.SS6.SSS0.Px3.tab1.1.1.1.1.2.1.1"><span class="ltx_text ltx_font_bold" id="S4.SS6.SSS0.Px3.tab1.1.1.1.1.2.1.1.1">GOLD SQL Query</span></span>
</span>
</th>
<th class="ltx_td ltx_align_justify ltx_th ltx_th_column ltx_border_tt" id="S4.SS6.SSS0.Px3.tab1.1.1.1.1.3" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.SS6.SSS0.Px3.tab1.1.1.1.1.3.1">
<span class="ltx_p" id="S4.SS6.SSS0.Px3.tab1.1.1.1.1.3.1.1"><span class="ltx_text ltx_font_bold" id="S4.SS6.SSS0.Px3.tab1.1.1.1.1.3.1.1.1">Augmented SQL Question</span></span>
</span>
</th>
<th class="ltx_td ltx_align_justify ltx_align_top ltx_th ltx_th_column ltx_border_tt" id="S4.SS6.SSS0.Px3.tab1.1.1.1.1.4" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.SS6.SSS0.Px3.tab1.1.1.1.1.4.1">
<span class="ltx_p" id="S4.SS6.SSS0.Px3.tab1.1.1.1.1.4.1.1" style="width:130.1pt;"><span class="ltx_text ltx_font_bold" id="S4.SS6.SSS0.Px3.tab1.1.1.1.1.4.1.1.1">Generated Reasoning Path</span></span>
</span>
</th>
<th class="ltx_td ltx_align_justify ltx_th ltx_th_column ltx_border_tt" id="S4.SS6.SSS0.Px3.tab1.1.1.1.1.5" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.SS6.SSS0.Px3.tab1.1.1.1.1.5.1">
<span class="ltx_p" id="S4.SS6.SSS0.Px3.tab1.1.1.1.1.5.1.1"><span class="ltx_text ltx_font_bold" id="S4.SS6.SSS0.Px3.tab1.1.1.1.1.5.1.1.1">Relevance Score</span></span>
</span>
</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.SS6.SSS0.Px3.tab1.1.1.2.1">
<td class="ltx_td ltx_align_justify ltx_border_t" id="S4.SS6.SSS0.Px3.tab1.1.1.2.1.1" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.SS6.SSS0.Px3.tab1.1.1.2.1.1.1">
<span class="ltx_p" id="S4.SS6.SSS0.Px3.tab1.1.1.2.1.1.1.1"><span class="ltx_text" id="S4.SS6.SSS0.Px3.tab1.1.1.2.1.1.1.1.1" style="background-color:#FFFF00;">Question1:</span> What are the names, countries, and ages for every singer in descending order of age?</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="S4.SS6.SSS0.Px3.tab1.1.1.2.1.2" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.SS6.SSS0.Px3.tab1.1.1.2.1.2.1">
<span class="ltx_p" id="S4.SS6.SSS0.Px3.tab1.1.1.2.1.2.1.1"><span class="ltx_text ltx_font_typewriter" id="S4.SS6.SSS0.Px3.tab1.1.1.2.1.2.1.1.1">SELECT name, country, age FROM singer ORDER BY age DESC</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="S4.SS6.SSS0.Px3.tab1.1.1.2.1.3" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.SS6.SSS0.Px3.tab1.1.1.2.1.3.1">
<span class="ltx_p" id="S4.SS6.SSS0.Px3.tab1.1.1.2.1.3.1.1"><span class="ltx_text" id="S4.SS6.SSS0.Px3.tab1.1.1.2.1.3.1.1.1" style="background-color:#000000;">What are the names, ages, and countries of all singers from a specific country, sorted by age in descending order?</span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top ltx_border_t" id="S4.SS6.SSS0.Px3.tab1.1.1.2.1.4" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.SS6.SSS0.Px3.tab1.1.1.2.1.4.1">
<span class="ltx_p" id="S4.SS6.SSS0.Px3.tab1.1.1.2.1.4.1.1" style="width:130.1pt;"><span class="ltx_text" id="S4.SS6.SSS0.Px3.tab1.1.1.2.1.4.1.1.1" style="background-color:#000000;">1. Identify the desired columns: name, age, and country.</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="S4.SS6.SSS0.Px3.tab1.1.1.2.1.5" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.SS6.SSS0.Px3.tab1.1.1.2.1.5.1">
<span class="ltx_p" id="S4.SS6.SSS0.Px3.tab1.1.1.2.1.5.1.1">Semantic similarity = 10
Structural Similarity = 10
Reasoning path = 10
Relevance score = (10+10+10)/3 = 10</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.SS6.SSS0.Px3.tab1.1.1.3.2">
<td class="ltx_td ltx_align_justify ltx_border_t" id="S4.SS6.SSS0.Px3.tab1.1.1.3.2.1" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.SS6.SSS0.Px3.tab1.1.1.3.2.1.1">
<span class="ltx_p" id="S4.SS6.SSS0.Px3.tab1.1.1.3.2.1.1.1"><span class="ltx_text" id="S4.SS6.SSS0.Px3.tab1.1.1.3.2.1.1.1.1" style="background-color:#FFFF00;">Question2:</span> Return the names and template ids for documents that contain the letter w in their description.</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="S4.SS6.SSS0.Px3.tab1.1.1.3.2.2" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.SS6.SSS0.Px3.tab1.1.1.3.2.2.1">
<span class="ltx_p" id="S4.SS6.SSS0.Px3.tab1.1.1.3.2.2.1.1"><span class="ltx_text ltx_font_typewriter" id="S4.SS6.SSS0.Px3.tab1.1.1.3.2.2.1.1.1">SELECT document_name, template_id FROM Documents WHERE Document_Description LIKE "%w%"</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="S4.SS6.SSS0.Px3.tab1.1.1.3.2.3" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.SS6.SSS0.Px3.tab1.1.1.3.2.3.1">
<span class="ltx_p" id="S4.SS6.SSS0.Px3.tab1.1.1.3.2.3.1.1"><span class="ltx_text" id="S4.SS6.SSS0.Px3.tab1.1.1.3.2.3.1.1.1" style="background-color:#000000;">Retrieve the titles and category IDs of articles whose summaries contain the word "data".</span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top ltx_border_t" id="S4.SS6.SSS0.Px3.tab1.1.1.3.2.4" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.SS6.SSS0.Px3.tab1.1.1.3.2.4.1">
<span class="ltx_p" id="S4.SS6.SSS0.Px3.tab1.1.1.3.2.4.1.1" style="width:130.1pt;"><span class="ltx_text" id="S4.SS6.SSS0.Px3.tab1.1.1.3.2.4.1.1.1" style="background-color:#000000;">1. Identify the necessary columns: extract title and category_id from the Articles table.</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="S4.SS6.SSS0.Px3.tab1.1.1.3.2.5" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.SS6.SSS0.Px3.tab1.1.1.3.2.5.1">
<span class="ltx_p" id="S4.SS6.SSS0.Px3.tab1.1.1.3.2.5.1.1">Semantic similarity = 7
Structural Similarity = 9
Reasoning path = 8
Relevance score = (7+9+8)/3 = 8</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.SS6.SSS0.Px3.tab1.1.1.4.3">
<td class="ltx_td ltx_align_justify ltx_border_bb ltx_border_t" id="S4.SS6.SSS0.Px3.tab1.1.1.4.3.1" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.SS6.SSS0.Px3.tab1.1.1.4.3.1.1">
<span class="ltx_p" id="S4.SS6.SSS0.Px3.tab1.1.1.4.3.1.1.1"><span class="ltx_text" id="S4.SS6.SSS0.Px3.tab1.1.1.4.3.1.1.1.1" style="background-color:#FFFF00;">Question3:</span> What is the number of car models that are produced by each maker and what is the id and full name of each maker?</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_bb ltx_border_t" id="S4.SS6.SSS0.Px3.tab1.1.1.4.3.2" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.SS6.SSS0.Px3.tab1.1.1.4.3.2.1">
<span class="ltx_p" id="S4.SS6.SSS0.Px3.tab1.1.1.4.3.2.1.1"><span class="ltx_text ltx_font_typewriter" id="S4.SS6.SSS0.Px3.tab1.1.1.4.3.2.1.1.1">SELECT Count(*), T2.FullName, T2.id FROM MODEL_LIST AS T1 JOIN CAR_MAKERS AS T2 ON T1.Maker = T2.id GROUP BY T2.id;</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_bb ltx_border_t" id="S4.SS6.SSS0.Px3.tab1.1.1.4.3.3" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.SS6.SSS0.Px3.tab1.1.1.4.3.3.1">
<span class="ltx_p" id="S4.SS6.SSS0.Px3.tab1.1.1.4.3.3.1.1"><span class="ltx_text" id="S4.SS6.SSS0.Px3.tab1.1.1.4.3.3.1.1.1" style="background-color:#000000;">List all employees who work in the IT department along with their employee ID and hire date.</span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top ltx_border_bb ltx_border_t" id="S4.SS6.SSS0.Px3.tab1.1.1.4.3.4" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.SS6.SSS0.Px3.tab1.1.1.4.3.4.1">
<span class="ltx_p" id="S4.SS6.SSS0.Px3.tab1.1.1.4.3.4.1.1" style="width:130.1pt;"><span class="ltx_text" id="S4.SS6.SSS0.Px3.tab1.1.1.4.3.4.1.1.1" style="background-color:#000000;">1. Identify required details: employee ID and hire date.</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_bb ltx_border_t" id="S4.SS6.SSS0.Px3.tab1.1.1.4.3.5" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S4.SS6.SSS0.Px3.tab1.1.1.4.3.5.1">
<span class="ltx_p" id="S4.SS6.SSS0.Px3.tab1.1.1.4.3.5.1.1">Semantic similarity = 6
Structural Similarity = 3
Reasoning path = 2
Relevance score = (6+3+2)/3 = 3.67</span>
</span>
</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table showcases three examples of original SQL queries alongside their corresponding augmented versions, generated using GPT-40.  Each example includes the original SQL query, the augmented (similar) SQL query, the reasoning steps detailing how the augmented query was derived from the original, and the relevance score based on semantic similarity, structural similarity, and reasoning path quality. The relevance scores offer insights into how well the augmented query aligns with the original in terms of both meaning and structure.
> <details>
> <summary>read the caption</summary>
> Table 4: Examples of original and augmented SQL questions with reasoning paths by GPT-4o.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S4.T5.3.3">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T5.3.3.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="S4.T5.1.1.1.1" style="padding-top:1pt;padding-bottom:1pt;"><math alttext="\alpha" class="ltx_Math" display="inline" id="S4.T5.1.1.1.1.m1.1"><semantics id="S4.T5.1.1.1.1.m1.1a"><mi id="S4.T5.1.1.1.1.m1.1.1" xref="S4.T5.1.1.1.1.m1.1.1.cmml">α</mi><annotation-xml encoding="MathML-Content" id="S4.T5.1.1.1.1.m1.1b"><ci id="S4.T5.1.1.1.1.m1.1.1.cmml" xref="S4.T5.1.1.1.1.m1.1.1">𝛼</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T5.1.1.1.1.m1.1c">\alpha</annotation><annotation encoding="application/x-llamapun" id="S4.T5.1.1.1.1.m1.1d">italic_α</annotation></semantics></math></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T5.2.2.2.2" style="padding-top:1pt;padding-bottom:1pt;"><math alttext="\beta" class="ltx_Math" display="inline" id="S4.T5.2.2.2.2.m1.1"><semantics id="S4.T5.2.2.2.2.m1.1a"><mi id="S4.T5.2.2.2.2.m1.1.1" xref="S4.T5.2.2.2.2.m1.1.1.cmml">β</mi><annotation-xml encoding="MathML-Content" id="S4.T5.2.2.2.2.m1.1b"><ci id="S4.T5.2.2.2.2.m1.1.1.cmml" xref="S4.T5.2.2.2.2.m1.1.1">𝛽</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T5.2.2.2.2.m1.1c">\beta</annotation><annotation encoding="application/x-llamapun" id="S4.T5.2.2.2.2.m1.1d">italic_β</annotation></semantics></math></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_rr ltx_border_tt" id="S4.T5.3.3.3.3" style="padding-top:1pt;padding-bottom:1pt;"><math alttext="\gamma" class="ltx_Math" display="inline" id="S4.T5.3.3.3.3.m1.1"><semantics id="S4.T5.3.3.3.3.m1.1a"><mi id="S4.T5.3.3.3.3.m1.1.1" xref="S4.T5.3.3.3.3.m1.1.1.cmml">γ</mi><annotation-xml encoding="MathML-Content" id="S4.T5.3.3.3.3.m1.1b"><ci id="S4.T5.3.3.3.3.m1.1.1.cmml" xref="S4.T5.3.3.3.3.m1.1.1">𝛾</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T5.3.3.3.3.m1.1c">\gamma</annotation><annotation encoding="application/x-llamapun" id="S4.T5.3.3.3.3.m1.1d">italic_γ</annotation></semantics></math></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T5.3.3.3.4" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S4.T5.3.3.3.4.1">Easy</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T5.3.3.3.5" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S4.T5.3.3.3.5.1">Medium</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T5.3.3.3.6" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S4.T5.3.3.3.6.1">Hard</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T5.3.3.3.7" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S4.T5.3.3.3.7.1">Extra</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T5.3.3.3.8" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S4.T5.3.3.3.8.1">EX</span></th>
</tr>
<tr class="ltx_tr" id="S4.T5.3.3.4.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_t" id="S4.T5.3.3.4.1.1" style="padding-top:1pt;padding-bottom:1pt;">0.33</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T5.3.3.4.1.2" style="padding-top:1pt;padding-bottom:1pt;">0.33</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_rr ltx_border_t" id="S4.T5.3.3.4.1.3" style="padding-top:1pt;padding-bottom:1pt;">0.33</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T5.3.3.4.1.4" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S4.T5.3.3.4.1.4.1">93.4</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T5.3.3.4.1.5" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S4.T5.3.3.4.1.5.1">89.3</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T5.3.3.4.1.6" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T5.3.3.4.1.6.1">88.4</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T5.3.3.4.1.7" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S4.T5.3.3.4.1.7.1">75.8</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T5.3.3.4.1.8" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S4.T5.3.3.4.1.8.1">87.9</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T5.3.3.5.1">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T5.3.3.5.1.1" style="padding-top:1pt;padding-bottom:1pt;">1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.3.3.5.1.2" style="padding-top:1pt;padding-bottom:1pt;">0</td>
<td class="ltx_td ltx_align_center ltx_border_rr ltx_border_t" id="S4.T5.3.3.5.1.3" style="padding-top:1pt;padding-bottom:1pt;">0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.3.3.5.1.4" style="padding-top:1pt;padding-bottom:1pt;">90.7</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.3.3.5.1.5" style="padding-top:1pt;padding-bottom:1pt;">84.2</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.3.3.5.1.6" style="padding-top:1pt;padding-bottom:1pt;">82.3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.3.3.5.1.7" style="padding-top:1pt;padding-bottom:1pt;">68.3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.3.3.5.1.8" style="padding-top:1pt;padding-bottom:1pt;">82.8</td>
</tr>
<tr class="ltx_tr" id="S4.T5.3.3.6.2">
<td class="ltx_td ltx_align_left" id="S4.T5.3.3.6.2.1" style="padding-top:1pt;padding-bottom:1pt;">0</td>
<td class="ltx_td ltx_align_center" id="S4.T5.3.3.6.2.2" style="padding-top:1pt;padding-bottom:1pt;">1</td>
<td class="ltx_td ltx_align_center ltx_border_rr" id="S4.T5.3.3.6.2.3" style="padding-top:1pt;padding-bottom:1pt;">0</td>
<td class="ltx_td ltx_align_center" id="S4.T5.3.3.6.2.4" style="padding-top:1pt;padding-bottom:1pt;">89.8</td>
<td class="ltx_td ltx_align_center" id="S4.T5.3.3.6.2.5" style="padding-top:1pt;padding-bottom:1pt;">85.6</td>
<td class="ltx_td ltx_align_center" id="S4.T5.3.3.6.2.6" style="padding-top:1pt;padding-bottom:1pt;">81.2</td>
<td class="ltx_td ltx_align_center" id="S4.T5.3.3.6.2.7" style="padding-top:1pt;padding-bottom:1pt;">69.2</td>
<td class="ltx_td ltx_align_center" id="S4.T5.3.3.6.2.8" style="padding-top:1pt;padding-bottom:1pt;">83.1</td>
</tr>
<tr class="ltx_tr" id="S4.T5.3.3.7.3">
<td class="ltx_td ltx_align_left" id="S4.T5.3.3.7.3.1" style="padding-top:1pt;padding-bottom:1pt;">0</td>
<td class="ltx_td ltx_align_center" id="S4.T5.3.3.7.3.2" style="padding-top:1pt;padding-bottom:1pt;">0</td>
<td class="ltx_td ltx_align_center ltx_border_rr" id="S4.T5.3.3.7.3.3" style="padding-top:1pt;padding-bottom:1pt;">1</td>
<td class="ltx_td ltx_align_center" id="S4.T5.3.3.7.3.4" style="padding-top:1pt;padding-bottom:1pt;">89.2</td>
<td class="ltx_td ltx_align_center" id="S4.T5.3.3.7.3.5" style="padding-top:1pt;padding-bottom:1pt;">85.1</td>
<td class="ltx_td ltx_align_center" id="S4.T5.3.3.7.3.6" style="padding-top:1pt;padding-bottom:1pt;">84.3</td>
<td class="ltx_td ltx_align_center" id="S4.T5.3.3.7.3.7" style="padding-top:1pt;padding-bottom:1pt;">71.7</td>
<td class="ltx_td ltx_align_center" id="S4.T5.3.3.7.3.8" style="padding-top:1pt;padding-bottom:1pt;">83.7</td>
</tr>
<tr class="ltx_tr" id="S4.T5.3.3.8.4">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T5.3.3.8.4.1" style="padding-top:1pt;padding-bottom:1pt;">0.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.3.3.8.4.2" style="padding-top:1pt;padding-bottom:1pt;">0.5</td>
<td class="ltx_td ltx_align_center ltx_border_rr ltx_border_t" id="S4.T5.3.3.8.4.3" style="padding-top:1pt;padding-bottom:1pt;">0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.3.3.8.4.4" style="padding-top:1pt;padding-bottom:1pt;">91.2</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.3.3.8.4.5" style="padding-top:1pt;padding-bottom:1pt;">87.3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.3.3.8.4.6" style="padding-top:1pt;padding-bottom:1pt;">82.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.3.3.8.4.7" style="padding-top:1pt;padding-bottom:1pt;">69.4</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.3.3.8.4.8" style="padding-top:1pt;padding-bottom:1pt;">84.4</td>
</tr>
<tr class="ltx_tr" id="S4.T5.3.3.9.5">
<td class="ltx_td ltx_align_left" id="S4.T5.3.3.9.5.1" style="padding-top:1pt;padding-bottom:1pt;">0.5</td>
<td class="ltx_td ltx_align_center" id="S4.T5.3.3.9.5.2" style="padding-top:1pt;padding-bottom:1pt;">0</td>
<td class="ltx_td ltx_align_center ltx_border_rr" id="S4.T5.3.3.9.5.3" style="padding-top:1pt;padding-bottom:1pt;">0.5</td>
<td class="ltx_td ltx_align_center" id="S4.T5.3.3.9.5.4" style="padding-top:1pt;padding-bottom:1pt;">92.5</td>
<td class="ltx_td ltx_align_center" id="S4.T5.3.3.9.5.5" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T5.3.3.9.5.5.1">87.9</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.3.3.9.5.6" style="padding-top:1pt;padding-bottom:1pt;">83.5</td>
<td class="ltx_td ltx_align_center" id="S4.T5.3.3.9.5.7" style="padding-top:1pt;padding-bottom:1pt;">70.3</td>
<td class="ltx_td ltx_align_center" id="S4.T5.3.3.9.5.8" style="padding-top:1pt;padding-bottom:1pt;">85.3</td>
</tr>
<tr class="ltx_tr" id="S4.T5.3.3.10.6">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S4.T5.3.3.10.6.1" style="padding-top:1pt;padding-bottom:1pt;">0</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T5.3.3.10.6.2" style="padding-top:1pt;padding-bottom:1pt;">0.5</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_rr" id="S4.T5.3.3.10.6.3" style="padding-top:1pt;padding-bottom:1pt;">0.5</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T5.3.3.10.6.4" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T5.3.3.10.6.4.1">92.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T5.3.3.10.6.5" style="padding-top:1pt;padding-bottom:1pt;">86.8</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T5.3.3.10.6.6" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S4.T5.3.3.10.6.6.1">88.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T5.3.3.10.6.7" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T5.3.3.10.6.7.1">72.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T5.3.3.10.6.8" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T5.3.3.10.6.8.1">86.1</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the execution accuracy of the SAFE-SQL model across different difficulty levels of the Spider dataset.  The accuracy is evaluated under varying weights assigned to three key components: semantic similarity (α), structural similarity (β), and reasoning path quality (γ). By adjusting these weights, the impact of each component on overall model performance can be analyzed for different query complexities.
> <details>
> <summary>read the caption</summary>
> Table 5: Execution accuracy across difficulty levels under different weights: semantic similarity (α𝛼\alphaitalic_α), Structural similarity (β𝛽\betaitalic_β), and reasoning path quality (γ𝛾\gammaitalic_γ).
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="A2.T6.1.1">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A2.T6.1.1.1.1">
<td class="ltx_td ltx_align_left ltx_border_b ltx_border_t" id="A2.T6.1.1.1.1.1" style="padding-top:1pt;padding-bottom:1pt;">
<table class="ltx_tabular ltx_align_middle" id="A2.T6.1.1.1.1.1.1">
<tr class="ltx_tr" id="A2.T6.1.1.1.1.1.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A2.T6.1.1.1.1.1.1.1.1" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T6.1.1.1.1.1.1.1.1.1">
<span class="ltx_p" id="A2.T6.1.1.1.1.1.1.1.1.1.1" style="width:433.6pt;">You are a powerful text-to-SQL reasoner. Your task is to generate ten similar questions, ten SQL queries, and ten reasoning paths for how the SQL queries are derived.
To ensure high-quality examples, focus on the following three key aspects:</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T6.1.1.1.1.1.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A2.T6.1.1.1.1.1.1.2.1" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T6.1.1.1.1.1.1.2.1.1">
<span class="ltx_p" id="A2.T6.1.1.1.1.1.1.2.1.1.1" style="width:433.6pt;"><span class="ltx_text ltx_font_bold" id="A2.T6.1.1.1.1.1.1.2.1.1.1.1">Semantic Similarity</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T6.1.1.1.1.1.1.3">
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A2.T6.1.1.1.1.1.1.3.1" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T6.1.1.1.1.1.1.3.1.1">
<span class="ltx_p" id="A2.T6.1.1.1.1.1.1.3.1.1.1" style="width:433.6pt;">Ensure that all generated questions have the same underlying meaning as the test question. Variations in wording, synonyms, and phrasing are allowed as long as they preserve the intended query objective.
Avoid introducing ambiguity or additional constraints that alter the intent.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T6.1.1.1.1.1.1.4">
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A2.T6.1.1.1.1.1.1.4.1" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T6.1.1.1.1.1.1.4.1.1">
<span class="ltx_p" id="A2.T6.1.1.1.1.1.1.4.1.1.1" style="width:433.6pt;"><span class="ltx_text ltx_font_bold" id="A2.T6.1.1.1.1.1.1.4.1.1.1.1">Structural Similarity</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T6.1.1.1.1.1.1.5">
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A2.T6.1.1.1.1.1.1.5.1" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T6.1.1.1.1.1.1.5.1.1">
<span class="ltx_p" id="A2.T6.1.1.1.1.1.1.5.1.1.1" style="width:433.6pt;">While key terms (such as table names, column names, and numerical values) may vary, their functional roles and relationships should remain intact.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T6.1.1.1.1.1.1.6">
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A2.T6.1.1.1.1.1.1.6.1" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T6.1.1.1.1.1.1.6.1.1">
<span class="ltx_p" id="A2.T6.1.1.1.1.1.1.6.1.1.1" style="width:433.6pt;"><span class="ltx_text ltx_font_bold" id="A2.T6.1.1.1.1.1.1.6.1.1.1.1">Reasoning Path Similarity</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T6.1.1.1.1.1.1.7">
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A2.T6.1.1.1.1.1.1.7.1" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T6.1.1.1.1.1.1.7.1.1">
<span class="ltx_p" id="A2.T6.1.1.1.1.1.1.7.1.1.1" style="width:433.6pt;">The logical reasoning required to construct the SQL query should remain consistent across examples.Clearly outline each step, including how key conditions are identified and mapped to SQL operations.Maintain coherence in how joins, aggregations, filters, and sorting operations are applied.</span>
<span class="ltx_p" id="A2.T6.1.1.1.1.1.1.7.1.1.2">Do not explain me about the result and just give me ten examples.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T6.1.1.1.1.1.1.8">
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A2.T6.1.1.1.1.1.1.8.1" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T6.1.1.1.1.1.1.8.1.1">
<span class="ltx_p" id="A2.T6.1.1.1.1.1.1.8.1.1.1" style="width:433.6pt;"><span class="ltx_text ltx_font_bold" id="A2.T6.1.1.1.1.1.1.8.1.1.1.1">## Schema linking:</span> schema_linking[i]</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T6.1.1.1.1.1.1.9">
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A2.T6.1.1.1.1.1.1.9.1" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T6.1.1.1.1.1.1.9.1.1">
<span class="ltx_p" id="A2.T6.1.1.1.1.1.1.9.1.1.1" style="width:433.6pt;"><span class="ltx_text ltx_font_bold" id="A2.T6.1.1.1.1.1.1.9.1.1.1.1">## Tables:</span> test_table[i]</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T6.1.1.1.1.1.1.10">
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A2.T6.1.1.1.1.1.1.10.1" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T6.1.1.1.1.1.1.10.1.1">
<span class="ltx_p" id="A2.T6.1.1.1.1.1.1.10.1.1.1" style="width:433.6pt;"><span class="ltx_text ltx_font_bold" id="A2.T6.1.1.1.1.1.1.10.1.1.1.1">## Foreign keys:</span> test_foreign_keys[i]</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T6.1.1.1.1.1.1.11">
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A2.T6.1.1.1.1.1.1.11.1" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T6.1.1.1.1.1.1.11.1.1">
<span class="ltx_p" id="A2.T6.1.1.1.1.1.1.11.1.1.1" style="width:433.6pt;"><span class="ltx_text ltx_font_bold" id="A2.T6.1.1.1.1.1.1.11.1.1.1.1">## Question:</span> test_question[i]</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T6.1.1.1.1.1.1.12">
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A2.T6.1.1.1.1.1.1.12.1" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T6.1.1.1.1.1.1.12.1.1">
<span class="ltx_p" id="A2.T6.1.1.1.1.1.1.12.1.1.1" style="width:433.6pt;"><span class="ltx_text ltx_font_bold" id="A2.T6.1.1.1.1.1.1.12.1.1.1.1">## Similar Question:</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T6.1.1.1.1.1.1.13">
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A2.T6.1.1.1.1.1.1.13.1" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T6.1.1.1.1.1.1.13.1.1">
<span class="ltx_p" id="A2.T6.1.1.1.1.1.1.13.1.1.1" style="width:433.6pt;"><span class="ltx_text ltx_font_bold" id="A2.T6.1.1.1.1.1.1.13.1.1.1.1">## SQL query:</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T6.1.1.1.1.1.1.14">
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A2.T6.1.1.1.1.1.1.14.1" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T6.1.1.1.1.1.1.14.1.1">
<span class="ltx_p" id="A2.T6.1.1.1.1.1.1.14.1.1.1" style="width:433.6pt;"><span class="ltx_text ltx_font_bold" id="A2.T6.1.1.1.1.1.1.14.1.1.1.1">## Reasoning Path:</span></span>
</span>
</td>
</tr>
</table>
</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the zero-shot prompt used within the SAFE-SQL framework for generating examples.  The prompt instructs a large language model (LLM) to produce ten similar questions, ten corresponding SQL queries, and ten detailed reasoning paths illustrating how each SQL query was derived.  Emphasis is placed on maintaining semantic, structural, and reasoning path similarity between the generated examples and the test question.  The prompt also includes placeholders for schema linking information (schema_linking[i]), table information (test_table[i]), foreign keys (test_foreign_keys[i]), and the original test question (test_question[i]).
> <details>
> <summary>read the caption</summary>
> Table 6: The zero-shot prompt used for example generation
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="A2.T6.1.1.1.1.1.1">
<tr class="ltx_tr" id="A2.T6.1.1.1.1.1.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A2.T6.1.1.1.1.1.1.1.1" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T6.1.1.1.1.1.1.1.1.1">
<span class="ltx_p" id="A2.T6.1.1.1.1.1.1.1.1.1.1" style="width:433.6pt;">You are a powerful text-to-SQL reasoner. Your task is to generate ten similar questions, ten SQL queries, and ten reasoning paths for how the SQL queries are derived.
To ensure high-quality examples, focus on the following three key aspects:</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T6.1.1.1.1.1.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A2.T6.1.1.1.1.1.1.2.1" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T6.1.1.1.1.1.1.2.1.1">
<span class="ltx_p" id="A2.T6.1.1.1.1.1.1.2.1.1.1" style="width:433.6pt;"><span class="ltx_text ltx_font_bold" id="A2.T6.1.1.1.1.1.1.2.1.1.1.1">Semantic Similarity</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T6.1.1.1.1.1.1.3">
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A2.T6.1.1.1.1.1.1.3.1" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T6.1.1.1.1.1.1.3.1.1">
<span class="ltx_p" id="A2.T6.1.1.1.1.1.1.3.1.1.1" style="width:433.6pt;">Ensure that all generated questions have the same underlying meaning as the test question. Variations in wording, synonyms, and phrasing are allowed as long as they preserve the intended query objective.
Avoid introducing ambiguity or additional constraints that alter the intent.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T6.1.1.1.1.1.1.4">
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A2.T6.1.1.1.1.1.1.4.1" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T6.1.1.1.1.1.1.4.1.1">
<span class="ltx_p" id="A2.T6.1.1.1.1.1.1.4.1.1.1" style="width:433.6pt;"><span class="ltx_text ltx_font_bold" id="A2.T6.1.1.1.1.1.1.4.1.1.1.1">Structural Similarity</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T6.1.1.1.1.1.1.5">
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A2.T6.1.1.1.1.1.1.5.1" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T6.1.1.1.1.1.1.5.1.1">
<span class="ltx_p" id="A2.T6.1.1.1.1.1.1.5.1.1.1" style="width:433.6pt;">While key terms (such as table names, column names, and numerical values) may vary, their functional roles and relationships should remain intact.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T6.1.1.1.1.1.1.6">
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A2.T6.1.1.1.1.1.1.6.1" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T6.1.1.1.1.1.1.6.1.1">
<span class="ltx_p" id="A2.T6.1.1.1.1.1.1.6.1.1.1" style="width:433.6pt;"><span class="ltx_text ltx_font_bold" id="A2.T6.1.1.1.1.1.1.6.1.1.1.1">Reasoning Path Similarity</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T6.1.1.1.1.1.1.7">
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A2.T6.1.1.1.1.1.1.7.1" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T6.1.1.1.1.1.1.7.1.1">
<span class="ltx_p" id="A2.T6.1.1.1.1.1.1.7.1.1.1" style="width:433.6pt;">The logical reasoning required to construct the SQL query should remain consistent across examples.Clearly outline each step, including how key conditions are identified and mapped to SQL operations.Maintain coherence in how joins, aggregations, filters, and sorting operations are applied.</span>
<span class="ltx_p" id="A2.T6.1.1.1.1.1.1.7.1.1.2">Do not explain me about the result and just give me ten examples.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T6.1.1.1.1.1.1.8">
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A2.T6.1.1.1.1.1.1.8.1" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T6.1.1.1.1.1.1.8.1.1">
<span class="ltx_p" id="A2.T6.1.1.1.1.1.1.8.1.1.1" style="width:433.6pt;"><span class="ltx_text ltx_font_bold" id="A2.T6.1.1.1.1.1.1.8.1.1.1.1">## Schema linking:</span> schema_linking[i]</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T6.1.1.1.1.1.1.9">
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A2.T6.1.1.1.1.1.1.9.1" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T6.1.1.1.1.1.1.9.1.1">
<span class="ltx_p" id="A2.T6.1.1.1.1.1.1.9.1.1.1" style="width:433.6pt;"><span class="ltx_text ltx_font_bold" id="A2.T6.1.1.1.1.1.1.9.1.1.1.1">## Tables:</span> test_table[i]</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T6.1.1.1.1.1.1.10">
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A2.T6.1.1.1.1.1.1.10.1" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T6.1.1.1.1.1.1.10.1.1">
<span class="ltx_p" id="A2.T6.1.1.1.1.1.1.10.1.1.1" style="width:433.6pt;"><span class="ltx_text ltx_font_bold" id="A2.T6.1.1.1.1.1.1.10.1.1.1.1">## Foreign keys:</span> test_foreign_keys[i]</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T6.1.1.1.1.1.1.11">
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A2.T6.1.1.1.1.1.1.11.1" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T6.1.1.1.1.1.1.11.1.1">
<span class="ltx_p" id="A2.T6.1.1.1.1.1.1.11.1.1.1" style="width:433.6pt;"><span class="ltx_text ltx_font_bold" id="A2.T6.1.1.1.1.1.1.11.1.1.1.1">## Question:</span> test_question[i]</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T6.1.1.1.1.1.1.12">
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A2.T6.1.1.1.1.1.1.12.1" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T6.1.1.1.1.1.1.12.1.1">
<span class="ltx_p" id="A2.T6.1.1.1.1.1.1.12.1.1.1" style="width:433.6pt;"><span class="ltx_text ltx_font_bold" id="A2.T6.1.1.1.1.1.1.12.1.1.1.1">## Similar Question:</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T6.1.1.1.1.1.1.13">
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A2.T6.1.1.1.1.1.1.13.1" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T6.1.1.1.1.1.1.13.1.1">
<span class="ltx_p" id="A2.T6.1.1.1.1.1.1.13.1.1.1" style="width:433.6pt;"><span class="ltx_text ltx_font_bold" id="A2.T6.1.1.1.1.1.1.13.1.1.1.1">## SQL query:</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T6.1.1.1.1.1.1.14">
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A2.T6.1.1.1.1.1.1.14.1" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T6.1.1.1.1.1.1.14.1.1">
<span class="ltx_p" id="A2.T6.1.1.1.1.1.1.14.1.1.1" style="width:433.6pt;"><span class="ltx_text ltx_font_bold" id="A2.T6.1.1.1.1.1.1.14.1.1.1.1">## Reasoning Path:</span></span>
</span>
</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the zero-shot prompt utilized in the SAFE-SQL framework for filtering generated examples.  The prompt instructs the language model to evaluate example questions based on semantic similarity to the test question, structural similarity (alignment of key elements and relationships), and the quality of the reasoning paths provided. It assigns scores (0-10) for each aspect, allowing for a comprehensive assessment of example relevance before including them in the final inference process.
> <details>
> <summary>read the caption</summary>
> Table 7: The zero-shot prompt used for filtering examples.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="A2.T7.1.1">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A2.T7.1.1.1.1">
<td class="ltx_td ltx_align_left ltx_border_b ltx_border_t" id="A2.T7.1.1.1.1.1" style="padding-top:1pt;padding-bottom:1pt;">
<table class="ltx_tabular ltx_align_middle" id="A2.T7.1.1.1.1.1.1">
<tr class="ltx_tr" id="A2.T7.1.1.1.1.1.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A2.T7.1.1.1.1.1.1.1.1" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T7.1.1.1.1.1.1.1.1.1">
<span class="ltx_p" id="A2.T7.1.1.1.1.1.1.1.1.1.1" style="width:433.6pt;">You are a powerful text-to-SQL reasoner. Given a test question and a set of examples, compute the relevance score for each example based on the following criteria. Do not explain me about the answer, just give me scores.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T7.1.1.1.1.1.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A2.T7.1.1.1.1.1.1.2.1" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T7.1.1.1.1.1.1.2.1.1">
<span class="ltx_p" id="A2.T7.1.1.1.1.1.1.2.1.1.1" style="width:433.6pt;">⁢⁢<span class="ltx_text ltx_font_bold" id="A2.T7.1.1.1.1.1.1.2.1.1.1.1">Semantic Similarity of Questions</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T7.1.1.1.1.1.1.3">
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A2.T7.1.1.1.1.1.1.3.1" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T7.1.1.1.1.1.1.3.1.1">
<span class="ltx_p" id="A2.T7.1.1.1.1.1.1.3.1.1.1" style="width:433.6pt;">Compare the overall meaning of the test question and the example question.
Higher scores should be assigned if the two questions have the same intent, even if they are phrased differently.
Consider synonyms, paraphrasing, and minor wording variations that do not alter the fundamental meaning.
Assign lower scores if the test and example questions focus on different database operations (e.g., aggregation vs. filtering) or require fundamentally different types of information.(up to 10 points).</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T7.1.1.1.1.1.1.4">
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A2.T7.1.1.1.1.1.1.4.1" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T7.1.1.1.1.1.1.4.1.1">
<span class="ltx_p" id="A2.T7.1.1.1.1.1.1.4.1.1.1" style="width:433.6pt;">10: Almost identical meaning and intent.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T7.1.1.1.1.1.1.5">
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A2.T7.1.1.1.1.1.1.5.1" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T7.1.1.1.1.1.1.5.1.1">
<span class="ltx_p" id="A2.T7.1.1.1.1.1.1.5.1.1.1" style="width:433.6pt;">7–9: Minor paraphrasing but highly relevant.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T7.1.1.1.1.1.1.6">
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A2.T7.1.1.1.1.1.1.6.1" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T7.1.1.1.1.1.1.6.1.1">
<span class="ltx_p" id="A2.T7.1.1.1.1.1.1.6.1.1.1" style="width:433.6pt;">4–6: Some overlap but different focus.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T7.1.1.1.1.1.1.7">
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A2.T7.1.1.1.1.1.1.7.1" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T7.1.1.1.1.1.1.7.1.1">
<span class="ltx_p" id="A2.T7.1.1.1.1.1.1.7.1.1.1" style="width:433.6pt;">1–3: Mostly unrelated meaning.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T7.1.1.1.1.1.1.8">
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A2.T7.1.1.1.1.1.1.8.1" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T7.1.1.1.1.1.1.8.1.1">
<span class="ltx_p" id="A2.T7.1.1.1.1.1.1.8.1.1.1" style="width:433.6pt;">0: Completely different intent.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T7.1.1.1.1.1.1.9">
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A2.T7.1.1.1.1.1.1.9.1" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T7.1.1.1.1.1.1.9.1.1">
<span class="ltx_p" id="A2.T7.1.1.1.1.1.1.9.1.1.1" style="width:433.6pt;">⁢⁢<span class="ltx_text ltx_font_bold" id="A2.T7.1.1.1.1.1.1.9.1.1.1.1">Keyword &amp; Structural Similarity</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T7.1.1.1.1.1.1.10">
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A2.T7.1.1.1.1.1.1.10.1" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T7.1.1.1.1.1.1.10.1.1">
<span class="ltx_p" id="A2.T7.1.1.1.1.1.1.10.1.1.1" style="width:433.6pt;">Evaluate the structural alignment between the test question and the example question by analyzing how key elements (such as entities, attributes, and numerical values) are connected. Even if individual nouns, verbs, or numbers differ, the overall relational structure should be considered. Focus on whether the dependencies between key components (e.g., how entities relate to each other in the database) remain consistent.(up to 10 points).</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T7.1.1.1.1.1.1.11">
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A2.T7.1.1.1.1.1.1.11.1" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T7.1.1.1.1.1.1.11.1.1">
<span class="ltx_p" id="A2.T7.1.1.1.1.1.1.11.1.1.1" style="width:433.6pt;">10: Nearly identical structural relationships and dependencies.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T7.1.1.1.1.1.1.12">
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A2.T7.1.1.1.1.1.1.12.1" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T7.1.1.1.1.1.1.12.1.1">
<span class="ltx_p" id="A2.T7.1.1.1.1.1.1.12.1.1.1" style="width:433.6pt;">7–9: Mostly similar structure, with minor differences in entity connections.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T7.1.1.1.1.1.1.13">
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A2.T7.1.1.1.1.1.1.13.1" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T7.1.1.1.1.1.1.13.1.1">
<span class="ltx_p" id="A2.T7.1.1.1.1.1.1.13.1.1.1" style="width:433.6pt;">4–6: Some overlap, but noticeable differences in how key components interact.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T7.1.1.1.1.1.1.14">
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A2.T7.1.1.1.1.1.1.14.1" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T7.1.1.1.1.1.1.14.1.1">
<span class="ltx_p" id="A2.T7.1.1.1.1.1.1.14.1.1.1" style="width:433.6pt;">1–3: Few shared structural relationships, making alignment weak.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T7.1.1.1.1.1.1.15">
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A2.T7.1.1.1.1.1.1.15.1" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T7.1.1.1.1.1.1.15.1.1">
<span class="ltx_p" id="A2.T7.1.1.1.1.1.1.15.1.1.1" style="width:433.6pt;">0: No meaningful structural similarities.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T7.1.1.1.1.1.1.16">
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A2.T7.1.1.1.1.1.1.16.1" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T7.1.1.1.1.1.1.16.1.1">
<span class="ltx_p" id="A2.T7.1.1.1.1.1.1.16.1.1.1" style="width:433.6pt;">⁢⁢<span class="ltx_text ltx_font_bold" id="A2.T7.1.1.1.1.1.1.16.1.1.1.1">Reasoning Path Similarity</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T7.1.1.1.1.1.1.17">
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A2.T7.1.1.1.1.1.1.17.1" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T7.1.1.1.1.1.1.17.1.1">
<span class="ltx_p" id="A2.T7.1.1.1.1.1.1.17.1.1.1" style="width:433.6pt;">Evaluate whether the logical steps needed to answer the example question align with those required for the test question. Consider whether the database operations (e.g., filtering, aggregation, joins, subqueries) are similar.A high score should be given if the example follows the same logical sequence to derive the SQL query.Lower scores should be assigned if the reasoning process differs significantly, even if the questions seem similar at a surface level.(up to 10 points).</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T7.1.1.1.1.1.1.18">
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A2.T7.1.1.1.1.1.1.18.1" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T7.1.1.1.1.1.1.18.1.1">
<span class="ltx_p" id="A2.T7.1.1.1.1.1.1.18.1.1.1" style="width:433.6pt;">10: Exact reasoning process to get right SQL query.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T7.1.1.1.1.1.1.19">
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A2.T7.1.1.1.1.1.1.19.1" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T7.1.1.1.1.1.1.19.1.1">
<span class="ltx_p" id="A2.T7.1.1.1.1.1.1.19.1.1.1" style="width:433.6pt;">7–9: Mostly similar but with minor differences.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T7.1.1.1.1.1.1.20">
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A2.T7.1.1.1.1.1.1.20.1" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T7.1.1.1.1.1.1.20.1.1">
<span class="ltx_p" id="A2.T7.1.1.1.1.1.1.20.1.1.1" style="width:433.6pt;">4–6: Some alignment but different key steps.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T7.1.1.1.1.1.1.21">
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A2.T7.1.1.1.1.1.1.21.1" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T7.1.1.1.1.1.1.21.1.1">
<span class="ltx_p" id="A2.T7.1.1.1.1.1.1.21.1.1.1" style="width:433.6pt;">1–3: Largely different reasoning.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T7.1.1.1.1.1.1.22">
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A2.T7.1.1.1.1.1.1.22.1" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T7.1.1.1.1.1.1.22.1.1">
<span class="ltx_p" id="A2.T7.1.1.1.1.1.1.22.1.1.1" style="width:433.6pt;">0: Completely unrelated logic.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T7.1.1.1.1.1.1.23">
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A2.T7.1.1.1.1.1.1.23.1" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T7.1.1.1.1.1.1.23.1.1">
<span class="ltx_p" id="A2.T7.1.1.1.1.1.1.23.1.1.1" style="width:433.6pt;"><span class="ltx_text ltx_font_bold" id="A2.T7.1.1.1.1.1.1.23.1.1.1.1">## Question:</span> test_question[i]</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T7.1.1.1.1.1.1.24">
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A2.T7.1.1.1.1.1.1.24.1" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T7.1.1.1.1.1.1.24.1.1">
<span class="ltx_p" id="A2.T7.1.1.1.1.1.1.24.1.1.1" style="width:433.6pt;"><span class="ltx_text ltx_font_bold" id="A2.T7.1.1.1.1.1.1.24.1.1.1.1">## Similar Question:</span> similar_question[i]</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T7.1.1.1.1.1.1.25">
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A2.T7.1.1.1.1.1.1.25.1" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T7.1.1.1.1.1.1.25.1.1">
<span class="ltx_p" id="A2.T7.1.1.1.1.1.1.25.1.1.1" style="width:433.6pt;"><span class="ltx_text ltx_font_bold" id="A2.T7.1.1.1.1.1.1.25.1.1.1.1">## Reasoning Path:</span> reasoning_path[i]</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T7.1.1.1.1.1.1.26">
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A2.T7.1.1.1.1.1.1.26.1" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T7.1.1.1.1.1.1.26.1.1">
<span class="ltx_p" id="A2.T7.1.1.1.1.1.1.26.1.1.1" style="width:433.6pt;"><span class="ltx_text ltx_font_bold" id="A2.T7.1.1.1.1.1.1.26.1.1.1.1">## Relevance score:</span></span>
</span>
</td>
</tr>
</table>
</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table displays the zero-shot prompt used in the final inference stage of the SAFE-SQL model.  The prompt instructs the language model to generate the final SQL query based on a set of previously selected examples. These examples contain natural language questions, corresponding SQL queries, and detailed reasoning paths to guide the model in accurately constructing the final SQL query. The prompt emphasizes semantic similarity, structural similarity, and reasoning path similarity between the test question and selected examples.
> <details>
> <summary>read the caption</summary>
> Table 8: The zero-shot prompt used for Final SQL query inference.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="A2.T7.1.1.1.1.1.1">
<tr class="ltx_tr" id="A2.T7.1.1.1.1.1.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A2.T7.1.1.1.1.1.1.1.1" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T7.1.1.1.1.1.1.1.1.1">
<span class="ltx_p" id="A2.T7.1.1.1.1.1.1.1.1.1.1" style="width:433.6pt;">You are a powerful text-to-SQL reasoner. Given a test question and a set of examples, compute the relevance score for each example based on the following criteria. Do not explain me about the answer, just give me scores.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T7.1.1.1.1.1.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A2.T7.1.1.1.1.1.1.2.1" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T7.1.1.1.1.1.1.2.1.1">
<span class="ltx_p" id="A2.T7.1.1.1.1.1.1.2.1.1.1" style="width:433.6pt;">⁢⁢<span class="ltx_text ltx_font_bold" id="A2.T7.1.1.1.1.1.1.2.1.1.1.1">Semantic Similarity of Questions</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T7.1.1.1.1.1.1.3">
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A2.T7.1.1.1.1.1.1.3.1" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T7.1.1.1.1.1.1.3.1.1">
<span class="ltx_p" id="A2.T7.1.1.1.1.1.1.3.1.1.1" style="width:433.6pt;">Compare the overall meaning of the test question and the example question.
Higher scores should be assigned if the two questions have the same intent, even if they are phrased differently.
Consider synonyms, paraphrasing, and minor wording variations that do not alter the fundamental meaning.
Assign lower scores if the test and example questions focus on different database operations (e.g., aggregation vs. filtering) or require fundamentally different types of information.(up to 10 points).</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T7.1.1.1.1.1.1.4">
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A2.T7.1.1.1.1.1.1.4.1" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T7.1.1.1.1.1.1.4.1.1">
<span class="ltx_p" id="A2.T7.1.1.1.1.1.1.4.1.1.1" style="width:433.6pt;">10: Almost identical meaning and intent.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T7.1.1.1.1.1.1.5">
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A2.T7.1.1.1.1.1.1.5.1" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T7.1.1.1.1.1.1.5.1.1">
<span class="ltx_p" id="A2.T7.1.1.1.1.1.1.5.1.1.1" style="width:433.6pt;">7–9: Minor paraphrasing but highly relevant.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T7.1.1.1.1.1.1.6">
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A2.T7.1.1.1.1.1.1.6.1" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T7.1.1.1.1.1.1.6.1.1">
<span class="ltx_p" id="A2.T7.1.1.1.1.1.1.6.1.1.1" style="width:433.6pt;">4–6: Some overlap but different focus.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T7.1.1.1.1.1.1.7">
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A2.T7.1.1.1.1.1.1.7.1" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T7.1.1.1.1.1.1.7.1.1">
<span class="ltx_p" id="A2.T7.1.1.1.1.1.1.7.1.1.1" style="width:433.6pt;">1–3: Mostly unrelated meaning.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T7.1.1.1.1.1.1.8">
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A2.T7.1.1.1.1.1.1.8.1" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T7.1.1.1.1.1.1.8.1.1">
<span class="ltx_p" id="A2.T7.1.1.1.1.1.1.8.1.1.1" style="width:433.6pt;">0: Completely different intent.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T7.1.1.1.1.1.1.9">
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A2.T7.1.1.1.1.1.1.9.1" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T7.1.1.1.1.1.1.9.1.1">
<span class="ltx_p" id="A2.T7.1.1.1.1.1.1.9.1.1.1" style="width:433.6pt;">⁢⁢<span class="ltx_text ltx_font_bold" id="A2.T7.1.1.1.1.1.1.9.1.1.1.1">Keyword &amp; Structural Similarity</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T7.1.1.1.1.1.1.10">
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A2.T7.1.1.1.1.1.1.10.1" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T7.1.1.1.1.1.1.10.1.1">
<span class="ltx_p" id="A2.T7.1.1.1.1.1.1.10.1.1.1" style="width:433.6pt;">Evaluate the structural alignment between the test question and the example question by analyzing how key elements (such as entities, attributes, and numerical values) are connected. Even if individual nouns, verbs, or numbers differ, the overall relational structure should be considered. Focus on whether the dependencies between key components (e.g., how entities relate to each other in the database) remain consistent.(up to 10 points).</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T7.1.1.1.1.1.1.11">
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A2.T7.1.1.1.1.1.1.11.1" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T7.1.1.1.1.1.1.11.1.1">
<span class="ltx_p" id="A2.T7.1.1.1.1.1.1.11.1.1.1" style="width:433.6pt;">10: Nearly identical structural relationships and dependencies.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T7.1.1.1.1.1.1.12">
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A2.T7.1.1.1.1.1.1.12.1" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T7.1.1.1.1.1.1.12.1.1">
<span class="ltx_p" id="A2.T7.1.1.1.1.1.1.12.1.1.1" style="width:433.6pt;">7–9: Mostly similar structure, with minor differences in entity connections.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T7.1.1.1.1.1.1.13">
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A2.T7.1.1.1.1.1.1.13.1" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T7.1.1.1.1.1.1.13.1.1">
<span class="ltx_p" id="A2.T7.1.1.1.1.1.1.13.1.1.1" style="width:433.6pt;">4–6: Some overlap, but noticeable differences in how key components interact.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T7.1.1.1.1.1.1.14">
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A2.T7.1.1.1.1.1.1.14.1" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T7.1.1.1.1.1.1.14.1.1">
<span class="ltx_p" id="A2.T7.1.1.1.1.1.1.14.1.1.1" style="width:433.6pt;">1–3: Few shared structural relationships, making alignment weak.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T7.1.1.1.1.1.1.15">
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A2.T7.1.1.1.1.1.1.15.1" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T7.1.1.1.1.1.1.15.1.1">
<span class="ltx_p" id="A2.T7.1.1.1.1.1.1.15.1.1.1" style="width:433.6pt;">0: No meaningful structural similarities.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T7.1.1.1.1.1.1.16">
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A2.T7.1.1.1.1.1.1.16.1" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T7.1.1.1.1.1.1.16.1.1">
<span class="ltx_p" id="A2.T7.1.1.1.1.1.1.16.1.1.1" style="width:433.6pt;">⁢⁢<span class="ltx_text ltx_font_bold" id="A2.T7.1.1.1.1.1.1.16.1.1.1.1">Reasoning Path Similarity</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T7.1.1.1.1.1.1.17">
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A2.T7.1.1.1.1.1.1.17.1" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T7.1.1.1.1.1.1.17.1.1">
<span class="ltx_p" id="A2.T7.1.1.1.1.1.1.17.1.1.1" style="width:433.6pt;">Evaluate whether the logical steps needed to answer the example question align with those required for the test question. Consider whether the database operations (e.g., filtering, aggregation, joins, subqueries) are similar.A high score should be given if the example follows the same logical sequence to derive the SQL query.Lower scores should be assigned if the reasoning process differs significantly, even if the questions seem similar at a surface level.(up to 10 points).</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T7.1.1.1.1.1.1.18">
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A2.T7.1.1.1.1.1.1.18.1" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T7.1.1.1.1.1.1.18.1.1">
<span class="ltx_p" id="A2.T7.1.1.1.1.1.1.18.1.1.1" style="width:433.6pt;">10: Exact reasoning process to get right SQL query.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T7.1.1.1.1.1.1.19">
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A2.T7.1.1.1.1.1.1.19.1" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T7.1.1.1.1.1.1.19.1.1">
<span class="ltx_p" id="A2.T7.1.1.1.1.1.1.19.1.1.1" style="width:433.6pt;">7–9: Mostly similar but with minor differences.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T7.1.1.1.1.1.1.20">
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A2.T7.1.1.1.1.1.1.20.1" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T7.1.1.1.1.1.1.20.1.1">
<span class="ltx_p" id="A2.T7.1.1.1.1.1.1.20.1.1.1" style="width:433.6pt;">4–6: Some alignment but different key steps.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T7.1.1.1.1.1.1.21">
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A2.T7.1.1.1.1.1.1.21.1" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T7.1.1.1.1.1.1.21.1.1">
<span class="ltx_p" id="A2.T7.1.1.1.1.1.1.21.1.1.1" style="width:433.6pt;">1–3: Largely different reasoning.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T7.1.1.1.1.1.1.22">
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A2.T7.1.1.1.1.1.1.22.1" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T7.1.1.1.1.1.1.22.1.1">
<span class="ltx_p" id="A2.T7.1.1.1.1.1.1.22.1.1.1" style="width:433.6pt;">0: Completely unrelated logic.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T7.1.1.1.1.1.1.23">
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A2.T7.1.1.1.1.1.1.23.1" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T7.1.1.1.1.1.1.23.1.1">
<span class="ltx_p" id="A2.T7.1.1.1.1.1.1.23.1.1.1" style="width:433.6pt;"><span class="ltx_text ltx_font_bold" id="A2.T7.1.1.1.1.1.1.23.1.1.1.1">## Question:</span> test_question[i]</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T7.1.1.1.1.1.1.24">
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A2.T7.1.1.1.1.1.1.24.1" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T7.1.1.1.1.1.1.24.1.1">
<span class="ltx_p" id="A2.T7.1.1.1.1.1.1.24.1.1.1" style="width:433.6pt;"><span class="ltx_text ltx_font_bold" id="A2.T7.1.1.1.1.1.1.24.1.1.1.1">## Similar Question:</span> similar_question[i]</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T7.1.1.1.1.1.1.25">
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A2.T7.1.1.1.1.1.1.25.1" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T7.1.1.1.1.1.1.25.1.1">
<span class="ltx_p" id="A2.T7.1.1.1.1.1.1.25.1.1.1" style="width:433.6pt;"><span class="ltx_text ltx_font_bold" id="A2.T7.1.1.1.1.1.1.25.1.1.1.1">## Reasoning Path:</span> reasoning_path[i]</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T7.1.1.1.1.1.1.26">
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A2.T7.1.1.1.1.1.1.26.1" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T7.1.1.1.1.1.1.26.1.1">
<span class="ltx_p" id="A2.T7.1.1.1.1.1.1.26.1.1.1" style="width:433.6pt;"><span class="ltx_text ltx_font_bold" id="A2.T7.1.1.1.1.1.1.26.1.1.1.1">## Relevance score:</span></span>
</span>
</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the execution accuracy achieved by different sized models in the Qwen series across various difficulty levels of the Spider dev set.  It demonstrates how model size impacts the performance of a Text-to-SQL model, showcasing the results for Easy, Medium, Hard, Extra, and overall accuracy.
> <details>
> <summary>read the caption</summary>
> Table 9: Execution accuracy performance of different size of models of Qwen series across difficulty levels of spider dev set.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="A2.T8.1.1">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A2.T8.1.1.1.1">
<td class="ltx_td ltx_align_left ltx_border_b ltx_border_t" id="A2.T8.1.1.1.1.1" style="padding-top:1pt;padding-bottom:1pt;">
<table class="ltx_tabular ltx_align_middle" id="A2.T8.1.1.1.1.1.1">
<tr class="ltx_tr" id="A2.T8.1.1.1.1.1.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A2.T8.1.1.1.1.1.1.1.1" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T8.1.1.1.1.1.1.1.1.1">
<span class="ltx_p" id="A2.T8.1.1.1.1.1.1.1.1.1.1" style="width:433.6pt;">You are a powerful text-to-SQL reasoner. Your task is to generate the final SQL query using a set of selected examples that provide guidance on query construction. Utilizing Selected Examples. Do not explain me about the answer, just give me SQL query.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T8.1.1.1.1.1.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A2.T8.1.1.1.1.1.1.2.1" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T8.1.1.1.1.1.1.2.1.1">
<span class="ltx_p" id="A2.T8.1.1.1.1.1.1.2.1.1.1" style="width:433.6pt;">A set of chosen examples, each containing:
A natural language question similar to the test question
A corresponding SQL query
A detailed reasoning path explaining how the SQL query was derived
These examples are selected based on three key criteria:</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T8.1.1.1.1.1.1.3">
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A2.T8.1.1.1.1.1.1.3.1" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T8.1.1.1.1.1.1.3.1.1">
<span class="ltx_p" id="A2.T8.1.1.1.1.1.1.3.1.1.1" style="width:433.6pt;"><span class="ltx_text ltx_font_bold" id="A2.T8.1.1.1.1.1.1.3.1.1.1.1">Semantic Similarity of Questions</span>
The selected examples closely match the intent of the test question.
Variations in wording do not change the meaning.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T8.1.1.1.1.1.1.4">
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A2.T8.1.1.1.1.1.1.4.1" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T8.1.1.1.1.1.1.4.1.1">
<span class="ltx_p" id="A2.T8.1.1.1.1.1.1.4.1.1.1" style="width:433.6pt;"><span class="ltx_text ltx_font_bold" id="A2.T8.1.1.1.1.1.1.4.1.1.1.1">Structural Similarity</span>
The database schema elements (tables, columns, joins) used in the examples align with the test question.
The SQL syntax and structure are relevant to the expected query.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T8.1.1.1.1.1.1.5">
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A2.T8.1.1.1.1.1.1.5.1" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T8.1.1.1.1.1.1.5.1.1">
<span class="ltx_p" id="A2.T8.1.1.1.1.1.1.5.1.1.1" style="width:433.6pt;"><span class="ltx_text ltx_font_bold" id="A2.T8.1.1.1.1.1.1.5.1.1.1.1">Reasoning Path Similarity</span>
The logical steps used to construct the SQL query align with the reasoning required for the test question.
Key transformations, filtering conditions, and aggregation logic are similar.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T8.1.1.1.1.1.1.6">
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A2.T8.1.1.1.1.1.1.6.1" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T8.1.1.1.1.1.1.6.1.1">
<span class="ltx_p" id="A2.T8.1.1.1.1.1.1.6.1.1.1" style="width:433.6pt;"><span class="ltx_text ltx_font_bold" id="A2.T8.1.1.1.1.1.1.6.1.1.1.1">Final SQL Query Construction</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T8.1.1.1.1.1.1.7">
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A2.T8.1.1.1.1.1.1.7.1" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T8.1.1.1.1.1.1.7.1.1">
<span class="ltx_p" id="A2.T8.1.1.1.1.1.1.7.1.1.1" style="width:433.6pt;">Using the selected examples, generate the final SQL query that correctly retrieves the desired result for the given test question.
Follow the reasoning patterns observed in the examples.
Maintain correct table joins, filters, aggregations, and conditions based on schema constraints. Ensure that the final query accurately represents the intent of the test question while leveraging the insights from the selected examples. Now, generate the final SQL query for the given test question:</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T8.1.1.1.1.1.1.8">
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A2.T8.1.1.1.1.1.1.8.1" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T8.1.1.1.1.1.1.8.1.1">
<span class="ltx_p" id="A2.T8.1.1.1.1.1.1.8.1.1.1" style="width:433.6pt;"><span class="ltx_text ltx_font_bold" id="A2.T8.1.1.1.1.1.1.8.1.1.1.1">##Tables:</span> test_table[i]</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T8.1.1.1.1.1.1.9">
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A2.T8.1.1.1.1.1.1.9.1" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T8.1.1.1.1.1.1.9.1.1">
<span class="ltx_p" id="A2.T8.1.1.1.1.1.1.9.1.1.1" style="width:433.6pt;"><span class="ltx_text ltx_font_bold" id="A2.T8.1.1.1.1.1.1.9.1.1.1.1">##Foreign_keys:</span> test_foreign_keys[i]</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T8.1.1.1.1.1.1.10">
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A2.T8.1.1.1.1.1.1.10.1" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T8.1.1.1.1.1.1.10.1.1">
<span class="ltx_p" id="A2.T8.1.1.1.1.1.1.10.1.1.1" style="width:433.6pt;"><span class="ltx_text ltx_font_bold" id="A2.T8.1.1.1.1.1.1.10.1.1.1.1">##Question:</span> text_question[i]</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T8.1.1.1.1.1.1.11">
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A2.T8.1.1.1.1.1.1.11.1" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T8.1.1.1.1.1.1.11.1.1">
<span class="ltx_p" id="A2.T8.1.1.1.1.1.1.11.1.1.1" style="width:433.6pt;"><span class="ltx_text ltx_font_bold" id="A2.T8.1.1.1.1.1.1.11.1.1.1.1">##Filtered_example:</span> filtered_example[i]</span>
</span>
</td>
</tr>
</table>
</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a comparison of the execution accuracy achieved by different Text-to-SQL methods across various difficulty levels in the Spider development dataset.  The methods include SAFE-SQL (using four different LLMs for example generation and inference),  and several baselines (Zero-shot, Few-shot and Supervised Fine-Tuning). The difficulty levels represent the complexity of the SQL queries required to answer the questions, categorized as Easy, Medium, Hard, and Extra Hard. The 'All' column shows the overall accuracy across all difficulty levels.
> <details>
> <summary>read the caption</summary>
> Table 10: Execution accuracy performance of different methods across difficulty levels of spider dev set.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2502.11438/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.11438/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.11438/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.11438/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.11438/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.11438/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.11438/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.11438/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.11438/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.11438/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.11438/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.11438/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.11438/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}