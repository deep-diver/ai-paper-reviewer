---
title: "IberBench: LLM Evaluation on Iberian Languages"
summary: "IberBench: A new benchmark to evaluate LLMs on Iberian languages, addressing data limitations and diversity gaps."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Natural Language Processing", "Text Classification", "🏢 Symanto Research",]
showSummary: true
date: 2025-04-23
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2504.16921 {{< /keyword >}}
{{< keyword icon="writer" >}} José Ángel González et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-04-25 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2504.16921" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2504.16921" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2504.16921/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Current LLM benchmarks fall short by focusing on English, overlooking language varieties, prioritizing NLP over industry relevance, and lacking updates. A new benchmark, **IberBench**, evaluates LLMs across Iberian languages, including Spanish, Portuguese, Catalan, Basque, and Galician, and Spanish varieties in Ibero-America. IberBench integrates **101 datasets**, from tasks such as sentiment and toxicity analysis, addressing limitations by enabling continual updates and community submissions. 



The team evaluated **23 LLMs** (100M to 14B parameters), highlighting their strengths and limits. The LLMs performed **worse in industry tasks** than in fundamental ones. Results for **Galician and Basque are lower**. Some tasks yielded random outputs, while others performed above random but below shared task standards. IberBench offers open-source tools for normalization, hosting, evaluation, and leaderboard access.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} LLMs perform worse on industry-relevant tasks than fundamental ones. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} Performance is lower for Galician and Basque compared to other Iberian languages. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} The IberBench is a benchmark that enables continuous evaluation, diverse linguistic coverage, and community contributions. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
IberBench offers a **valuable resource** for LLM evaluation in Iberian languages. It helps to **drive further LLM improvement** and adaptation to languages beyond English. The benchmark's framework enables **community contributions** for broader model and dataset coverage.

------
#### Visual Insights



![](https://arxiv.org/html/2504.16921/x2.png)

> 🔼 This figure shows a map of the Iberian Peninsula and parts of Ibero-America highlighting the languages included in the IberBench benchmark.  Panel (a) displays the five languages spoken on the Iberian Peninsula: Spanish, Portuguese, Catalan, Galician, and Basque. Panel (b) shows the different varieties of Spanish spoken across Ibero-America that are included in the evaluation: Mexican, Uruguayan, Peruvian, Costa Rican, and Cuban.
> <details>
> <summary>read the caption</summary>
> (a) Iberian Peninsula languages
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S3.T1.2">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S3.T1.2.1.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_th_row ltx_border_tt" colspan="2" id="S3.T1.2.1.1.1"><span class="ltx_text ltx_font_bold" id="S3.T1.2.1.1.1.1" style="font-size:90%;">Dataset preparation</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S3.T1.2.2.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S3.T1.2.2.1.1"><span class="ltx_text ltx_font_bold" id="S3.T1.2.2.1.1.1" style="font-size:90%;">Text</span></th>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T1.2.2.1.2">
<table class="ltx_tabular ltx_align_middle" id="S3.T1.2.2.1.2.1">
<tr class="ltx_tr" id="S3.T1.2.2.1.2.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="S3.T1.2.2.1.2.1.1.1">
<span class="ltx_inline-block ltx_parbox ltx_align_top" id="S3.T1.2.2.1.2.1.1.1.1" style="width:361.3pt;">
<span class="ltx_p" id="S3.T1.2.2.1.2.1.1.1.1.1"><span class="ltx_text" id="S3.T1.2.2.1.2.1.1.1.1.1.1" style="font-size:90%;">Real Madrid lose against Valencia CF in Madrid</span></span>
</span>
</td>
</tr>
</table>
</td>
</tr>
<tr class="ltx_tr" id="S3.T1.2.3.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S3.T1.2.3.2.1"><span class="ltx_text ltx_font_bold" id="S3.T1.2.3.2.1.1" style="font-size:90%;">Reference labels</span></th>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T1.2.3.2.2">
<table class="ltx_tabular ltx_align_middle" id="S3.T1.2.3.2.2.1">
<tr class="ltx_tr" id="S3.T1.2.3.2.2.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="S3.T1.2.3.2.2.1.1.1">
<span class="ltx_inline-block ltx_parbox ltx_align_top" id="S3.T1.2.3.2.2.1.1.1.1" style="width:361.3pt;">
<span class="ltx_p" id="S3.T1.2.3.2.2.1.1.1.1.1"><span class="ltx_text" id="S3.T1.2.3.2.2.1.1.1.1.1.1" style="font-size:90%;">[</span><span class="ltx_text" id="S3.T1.2.3.2.2.1.1.1.1.1.2" style="font-size:90%;color:#00E000;">B-football_team</span><span class="ltx_text" id="S3.T1.2.3.2.2.1.1.1.1.1.3" style="font-size:90%;">, </span><span class="ltx_text" id="S3.T1.2.3.2.2.1.1.1.1.1.4" style="font-size:90%;color:#00E000;">I-football_team</span><span class="ltx_text" id="S3.T1.2.3.2.2.1.1.1.1.1.5" style="font-size:90%;">, O, O, </span><span class="ltx_text" id="S3.T1.2.3.2.2.1.1.1.1.1.6" style="font-size:90%;color:#00E000;">B-football_team</span><span class="ltx_text" id="S3.T1.2.3.2.2.1.1.1.1.1.7" style="font-size:90%;">, </span><span class="ltx_text" id="S3.T1.2.3.2.2.1.1.1.1.1.8" style="font-size:90%;color:#00E000;">I-football_team</span><span class="ltx_text" id="S3.T1.2.3.2.2.1.1.1.1.1.9" style="font-size:90%;">, O, </span><span class="ltx_text" id="S3.T1.2.3.2.2.1.1.1.1.1.10" style="font-size:90%;color:#FF00DE;">B-location</span><span class="ltx_text" id="S3.T1.2.3.2.2.1.1.1.1.1.11" style="font-size:90%;">]</span></span>
</span>
</td>
</tr>
</table>
</td>
</tr>
<tr class="ltx_tr" id="S3.T1.2.4.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S3.T1.2.4.3.1"><span class="ltx_text ltx_font_bold" id="S3.T1.2.4.3.1.1" style="font-size:90%;">Annotated example</span></th>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T1.2.4.3.2">
<table class="ltx_tabular ltx_align_middle" id="S3.T1.2.4.3.2.1">
<tr class="ltx_tr" id="S3.T1.2.4.3.2.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="S3.T1.2.4.3.2.1.1.1">
<span class="ltx_inline-block ltx_parbox ltx_align_top" id="S3.T1.2.4.3.2.1.1.1.1" style="width:361.3pt;">
<span class="ltx_p" id="S3.T1.2.4.3.2.1.1.1.1.1"><span class="ltx_text" id="S3.T1.2.4.3.2.1.1.1.1.1.1" style="font-size:90%;">&lt;response&gt; &lt;</span><span class="ltx_text" id="S3.T1.2.4.3.2.1.1.1.1.1.2" style="font-size:90%;color:#00E000;">football_team</span><span class="ltx_text" id="S3.T1.2.4.3.2.1.1.1.1.1.3" style="font-size:90%;">&gt; Real Madrid &lt;/</span><span class="ltx_text" id="S3.T1.2.4.3.2.1.1.1.1.1.4" style="font-size:90%;color:#00E000;">football_team</span><span class="ltx_text" id="S3.T1.2.4.3.2.1.1.1.1.1.5" style="font-size:90%;">&gt; lose against &lt;</span><span class="ltx_text" id="S3.T1.2.4.3.2.1.1.1.1.1.6" style="font-size:90%;color:#00E000;">football_team</span><span class="ltx_text" id="S3.T1.2.4.3.2.1.1.1.1.1.7" style="font-size:90%;">&gt; Valencia CF &lt;/</span><span class="ltx_text" id="S3.T1.2.4.3.2.1.1.1.1.1.8" style="font-size:90%;color:#00E000;">football_team</span><span class="ltx_text" id="S3.T1.2.4.3.2.1.1.1.1.1.9" style="font-size:90%;">&gt; in &lt;</span><span class="ltx_text" id="S3.T1.2.4.3.2.1.1.1.1.1.10" style="font-size:90%;color:#FF00DE;">location</span><span class="ltx_text" id="S3.T1.2.4.3.2.1.1.1.1.1.11" style="font-size:90%;">&gt; Madrid &lt;/</span><span class="ltx_text" id="S3.T1.2.4.3.2.1.1.1.1.1.12" style="font-size:90%;color:#FF00DE;">location</span><span class="ltx_text" id="S3.T1.2.4.3.2.1.1.1.1.1.13" style="font-size:90%;">&gt; &lt;/response&gt;</span></span>
</span>
</td>
</tr>
</table>
</td>
</tr>
<tr class="ltx_tr" id="S3.T1.2.5.4">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_th_row ltx_border_t" colspan="2" id="S3.T1.2.5.4.1"><span class="ltx_text ltx_font_bold" id="S3.T1.2.5.4.1.1" style="font-size:90%;">Evaluation</span></th>
</tr>
<tr class="ltx_tr" id="S3.T1.2.6.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S3.T1.2.6.5.1"><span class="ltx_text ltx_font_bold" id="S3.T1.2.6.5.1.1" style="font-size:90%;">Prompt</span></th>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T1.2.6.5.2">
<table class="ltx_tabular ltx_align_middle" id="S3.T1.2.6.5.2.1">
<tr class="ltx_tr" id="S3.T1.2.6.5.2.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="S3.T1.2.6.5.2.1.1.1">
<span class="ltx_inline-block ltx_parbox ltx_align_top" id="S3.T1.2.6.5.2.1.1.1.1" style="width:361.3pt;">
<span class="ltx_p" id="S3.T1.2.6.5.2.1.1.1.1.1"><span class="ltx_text" id="S3.T1.2.6.5.2.1.1.1.1.1.1" style="font-size:90%;">Your task is to perform Named Entity Recognition by wrapping each entity from the input text with label tags. The set of label tags you can use are: </span><span class="ltx_text" id="S3.T1.2.6.5.2.1.1.1.1.1.2" style="font-size:90%;color:#00E000;">football_team</span><span class="ltx_text" id="S3.T1.2.6.5.2.1.1.1.1.1.3" style="font-size:90%;">, and </span><span class="ltx_text" id="S3.T1.2.6.5.2.1.1.1.1.1.4" style="font-size:90%;color:#FF00DE;">location</span><span class="ltx_text" id="S3.T1.2.6.5.2.1.1.1.1.1.5" style="font-size:90%;">. Wrap all your response between &lt;response&gt; … &lt;/response&gt;. Here are some examples:</span></span>
<span class="ltx_p" id="S3.T1.2.6.5.2.1.1.1.1.2"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T1.2.6.5.2.1.1.1.1.2.1" style="font-size:90%;">Text</span><span class="ltx_text" id="S3.T1.2.6.5.2.1.1.1.1.2.2" style="font-size:90%;">: OpenAI is developing GPT-5.</span></span>
<span class="ltx_p" id="S3.T1.2.6.5.2.1.1.1.1.3"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T1.2.6.5.2.1.1.1.1.3.1" style="font-size:90%;">Labels</span><span class="ltx_text" id="S3.T1.2.6.5.2.1.1.1.1.3.2" style="font-size:90%;">: &lt;response&gt; OpenAI is developing GPT-5 &lt;/response&gt;</span></span>
<span class="ltx_p" id="S3.T1.2.6.5.2.1.1.1.1.4"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T1.2.6.5.2.1.1.1.1.4.1" style="font-size:90%;">Text</span><span class="ltx_text" id="S3.T1.2.6.5.2.1.1.1.1.4.2" style="font-size:90%;">: Real Madrid lose against Valencia CF in Madrid.</span></span>
<span class="ltx_p" id="S3.T1.2.6.5.2.1.1.1.1.5"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T1.2.6.5.2.1.1.1.1.5.1" style="font-size:90%;">Labels</span><span class="ltx_text" id="S3.T1.2.6.5.2.1.1.1.1.5.2" style="font-size:90%;">: &lt;response&gt; &lt;</span><span class="ltx_text" id="S3.T1.2.6.5.2.1.1.1.1.5.3" style="font-size:90%;color:#00E000;">football_team</span><span class="ltx_text" id="S3.T1.2.6.5.2.1.1.1.1.5.4" style="font-size:90%;">&gt; Real Madrid &lt;/</span><span class="ltx_text" id="S3.T1.2.6.5.2.1.1.1.1.5.5" style="font-size:90%;color:#00E000;">football_team</span><span class="ltx_text" id="S3.T1.2.6.5.2.1.1.1.1.5.6" style="font-size:90%;">&gt; lose against &lt;</span><span class="ltx_text" id="S3.T1.2.6.5.2.1.1.1.1.5.7" style="font-size:90%;color:#00E000;">football_team</span><span class="ltx_text" id="S3.T1.2.6.5.2.1.1.1.1.5.8" style="font-size:90%;">&gt; Valencia CF &lt;/</span><span class="ltx_text" id="S3.T1.2.6.5.2.1.1.1.1.5.9" style="font-size:90%;color:#00E000;">football_team</span><span class="ltx_text" id="S3.T1.2.6.5.2.1.1.1.1.5.10" style="font-size:90%;">&gt; in &lt;</span><span class="ltx_text" id="S3.T1.2.6.5.2.1.1.1.1.5.11" style="font-size:90%;color:#FF00DE;">location</span><span class="ltx_text" id="S3.T1.2.6.5.2.1.1.1.1.5.12" style="font-size:90%;">&gt; Madrid &lt;/</span><span class="ltx_text" id="S3.T1.2.6.5.2.1.1.1.1.5.13" style="font-size:90%;color:#FF00DE;">location</span><span class="ltx_text" id="S3.T1.2.6.5.2.1.1.1.1.5.14" style="font-size:90%;">&gt; &lt;/response&gt;</span></span>
<span class="ltx_p" id="S3.T1.2.6.5.2.1.1.1.1.6"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T1.2.6.5.2.1.1.1.1.6.1" style="font-size:90%;">Text</span><span class="ltx_text" id="S3.T1.2.6.5.2.1.1.1.1.6.2" style="font-size:90%;">: FC Barcelona is playing in Barcelona</span></span>
</span>
</td>
</tr>
</table>
</td>
</tr>
<tr class="ltx_tr" id="S3.T1.2.7.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S3.T1.2.7.6.1"><span class="ltx_text ltx_font_bold" id="S3.T1.2.7.6.1.1" style="font-size:90%;">LLM output</span></th>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T1.2.7.6.2">
<table class="ltx_tabular ltx_align_middle" id="S3.T1.2.7.6.2.1">
<tr class="ltx_tr" id="S3.T1.2.7.6.2.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="S3.T1.2.7.6.2.1.1.1">
<span class="ltx_inline-block ltx_parbox ltx_align_top" id="S3.T1.2.7.6.2.1.1.1.1" style="width:361.3pt;">
<span class="ltx_p" id="S3.T1.2.7.6.2.1.1.1.1.1"><span class="ltx_text" id="S3.T1.2.7.6.2.1.1.1.1.1.1" style="font-size:90%;">&lt;response&gt; &lt;</span><span class="ltx_text" id="S3.T1.2.7.6.2.1.1.1.1.1.2" style="font-size:90%;color:#00E000;">football_team</span><span class="ltx_text" id="S3.T1.2.7.6.2.1.1.1.1.1.3" style="font-size:90%;">&gt; FC Barcelona &lt;/</span><span class="ltx_text" id="S3.T1.2.7.6.2.1.1.1.1.1.4" style="font-size:90%;color:#00E000;">football_team</span><span class="ltx_text" id="S3.T1.2.7.6.2.1.1.1.1.1.5" style="font-size:90%;">&gt; is playing in &lt;</span><span class="ltx_text" id="S3.T1.2.7.6.2.1.1.1.1.1.6" style="font-size:90%;color:#FF00DE;">location</span><span class="ltx_text" id="S3.T1.2.7.6.2.1.1.1.1.1.7" style="font-size:90%;">&gt; Barcelona &lt;/</span><span class="ltx_text" id="S3.T1.2.7.6.2.1.1.1.1.1.8" style="font-size:90%;color:#FF00DE;">location</span><span class="ltx_text" id="S3.T1.2.7.6.2.1.1.1.1.1.9" style="font-size:90%;">&gt; &lt;response&gt;</span></span>
</span>
</td>
</tr>
</table>
</td>
</tr>
<tr class="ltx_tr" id="S3.T1.2.8.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_t" id="S3.T1.2.8.7.1"><span class="ltx_text ltx_font_bold" id="S3.T1.2.8.7.1.1" style="font-size:90%;">Parsed output</span></th>
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_t" id="S3.T1.2.8.7.2">
<table class="ltx_tabular ltx_align_middle" id="S3.T1.2.8.7.2.1">
<tr class="ltx_tr" id="S3.T1.2.8.7.2.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="S3.T1.2.8.7.2.1.1.1">
<span class="ltx_inline-block ltx_parbox ltx_align_top" id="S3.T1.2.8.7.2.1.1.1.1" style="width:361.3pt;">
<span class="ltx_p" id="S3.T1.2.8.7.2.1.1.1.1.1"><span class="ltx_text" id="S3.T1.2.8.7.2.1.1.1.1.1.1" style="font-size:90%;">[</span><span class="ltx_text" id="S3.T1.2.8.7.2.1.1.1.1.1.2" style="font-size:90%;color:#00E000;">B-football_team</span><span class="ltx_text" id="S3.T1.2.8.7.2.1.1.1.1.1.3" style="font-size:90%;">, </span><span class="ltx_text" id="S3.T1.2.8.7.2.1.1.1.1.1.4" style="font-size:90%;color:#00E000;">I-football_team</span><span class="ltx_text" id="S3.T1.2.8.7.2.1.1.1.1.1.5" style="font-size:90%;">, O, O, O, </span><span class="ltx_text" id="S3.T1.2.8.7.2.1.1.1.1.1.6" style="font-size:90%;color:#FF00DE;">B-location</span><span class="ltx_text" id="S3.T1.2.8.7.2.1.1.1.1.1.7" style="font-size:90%;">]</span></span>
</span>
</td>
</tr>
</table>
</td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 This table demonstrates the dataset preparation and evaluation process for a Named Entity Recognition (NER) task within the IberBench framework.  It shows how input text is annotated with entity labels (e.g., football_team, location) using a specific schema.  The example highlights how prompts are constructed for LLM evaluation, including in-context learning examples to guide the model's output.  Importantly, it clarifies that the underlining and coloring in the table are for illustrative purposes only and not part of the actual input or output data used for model evaluation.
> <details>
> <summary>read the caption</summary>
> Table 1:  Example of dataset preparation and evaluation of a NER task using the proposed annotation schema. The prompt includes two in-context examples and the instance to predict is added below them. The underlines and colorings have been added for easier understanding but are not included as part of the inputs or outputs.
> </details>





### In-depth insights


#### IberBench: Aims
IberBench aims to address the shortcomings of existing LLM benchmarks, **particularly for languages other than English.** Existing benchmarks often fail to capture the linguistic diversity, focusing mainly on fundamental NLP tasks rather than industry-relevant applications. Moreover, **IberBench aims for continual evaluation** by enabling updates, community contributions, expert moderation to address the static nature of existing benchmarks, making it comprehensive. The benchmark focuses on **Iberian languages and their regional varieties**, a historically underrepresented aspect in LLM evaluations, addressing the limitations of evaluations in both coverage and task selection. IberBench also aims to establish a long-term, reliable, and methodologically rigorous benchmark that includes a diverse set of data sources, while promoting collaboration and innovation.

#### LLM Variety Impact
The research indicates that LLM performance varies significantly across different architectures and training methodologies.  **European LLMs, despite being tailored for Iberian languages, often underperform compared to broader multilingual models like Qwen and Llama.** Instruction tuning appears crucial, as base models lag behind. Fine-tuning for a specific language can lead to **catastrophic forgetting**, harming performance in others. Model size matters, but larger models like Phi-4 do not guarantee superior results. The paper also points out a *surprising consistency in model rankings across languages and varieties*, suggesting that if a model excels in one, it tends to do well in others. This points to the importance of a solid foundation and that further research is needed to understand how to best leverage specific knowledge without compromising overall abilities. In summary, LLM variety affects performance and further analysis is needed.

#### Task Category Gap
The Task Category Gap highlights a crucial disparity: **LLMs excel in fundamental NLP tasks** (commonsense reasoning, reading comprehension) but **underperform in industry-relevant applications** (intent classification, sentiment analysis). This divergence suggests that while LLMs grasp core linguistic principles, they struggle with the nuances, context-specificity, and practical challenges of real-world scenarios. The benchmark results reveal that models are better on knowledge tasks than industry driven and more complex tasks like summarization, mental health detection. In industry specific the baseline is often exceeded which highlight the challenge for LLMs in the industry. This gap underscores the need for benchmark development to concentrate on real-world applications to practically assess capability.

#### Basque Challenge
The paper highlights the **unique challenges** that Basque presents, noting that the top models only slightly surpass the random baseline. This is attributed to a combination of factors, including **imbalances in task difficulty**, **distinct linguistic features**, and **limited resources** for LLM training. Unlike other Iberian languages, Basque's isolated nature and lack of related languages impact LLM adaptation. Furthermore, Basque is still an under-represented language when it comes to the available resources for LLM training, and thus the generalizability might be an issue.

#### Future IberBench
IberBench's future likely involves **expanding language coverage**, notably to Brazilian Portuguese and Argentinian Spanish, and **balancing task diversity** by incorporating more text generation and sequence labeling datasets. A key focus will be on **industry-relevant tasks**, especially in areas like mental health detection and fake news detection, potentially involving collaboration with industry partners to acquire more data. Future iterations also should prioritize establishing and refining techniques for detecting complex, low-resource languages such as the Basque language as well as ensuring that future iterations of IberBench will have more attention devoted towards how such languages can be accurately tested within this framework. Community contributions and new evaluation campaigns could introduce fresh datasets and tasks as well in terms of determining exactly what type of languages would be used to test these models for evaluation to allow for LLMs to provide proper assessment. Furthermore, continuous assessment of emerging LLMs to refine zero-shot prompt engineering to create better and more accurate answers could greatly improve evaluations.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2504.16921/x3.png)

> 🔼 This figure shows a map highlighting the different varieties of Spanish spoken in Ibero-America.  It visually represents the geographic distribution of these varieties, providing a geographical context to the linguistic diversity examined in the IberBench study.  These varieties of Spanish are included in the IberBench benchmark to evaluate LLMs' performance across different regional dialects, expanding beyond the standard Castilian Spanish.
> <details>
> <summary>read the caption</summary>
> (b) Spanish varieties in Ibero-America
> </details>



![](https://arxiv.org/html/2504.16921/extracted/6363510/images/iberbench-diagram.png)

> 🔼 This figure showcases the geographic distribution of the Iberian languages included in the IberBench benchmark.  It features two maps: one highlighting the languages spoken on the Iberian Peninsula (Spain and Portugal), and a second map focusing on the Spanish-speaking regions of Ibero-America where variations of Spanish are prevalent. The maps visually represent the linguistic diversity encompassed within the benchmark, emphasizing its comprehensive nature.
> <details>
> <summary>read the caption</summary>
> Figure 1: Maps showing the Iberian languages considered in IberBench.
> </details>



![](https://arxiv.org/html/2504.16921/x4.png)

> 🔼 This figure illustrates the workflow of the IberBench LLM evaluation benchmark.  Users interact with a user interface (UI) to view evaluation results, request the evaluation of new LLMs, and propose new datasets.  The IberBench organization reviews these requests and, upon approval, adds the models and datasets to the benchmark. After preparation and evaluation, the results are hosted and displayed on the UI.
> <details>
> <summary>read the caption</summary>
> Figure 2:  IberBench overview. Users can view rankings, plots, and reports; request LLMs for evaluation through the UI; and propose new datasets to the organization. The organization reviews these proposals for possible inclusion in the leaderboard. Once approved, datasets and models are prepared, evaluated, and hosted to be displayed in the UI.
> </details>



![](https://arxiv.org/html/2504.16921/x5.png)

> 🔼 This figure displays the average performance of various Large Language Models (LLMs) across multiple tasks and languages, categorized by the number of parameters (model size).  The x-axis represents the model size, and the y-axis represents the average performance score across all tasks and languages. Each point represents a specific LLM, and models belonging to the same family (e.g., Llama-3.2 family including Llama-3.2-1B-Instruct and Llama-3.2-3B-Instruct) are marked with the same symbol and color for easy comparison. A horizontal line indicates the performance of a random baseline, providing a reference point for evaluating model performance. The chart allows for analysis of how LLM performance scales with model size, and helps identify models that outperform the random baseline across all tasks and languages.
> <details>
> <summary>read the caption</summary>
> Figure 3:  Performance per model size (number of parameters), averaged across all the languages and tasks. Legend shows model families, e.g., the Llama-3.2 family includes Llama-3.2-1B-Instruct and Llama-3.2-3b-Instruct, which are plotted with the same marker and color. The random baseline is shown as horizontal line.
> </details>



![](https://arxiv.org/html/2504.16921/x6.png)

> 🔼 This box plot displays the average performance of different Large Language Models (LLMs) categorized by their type: base models and chat models.  The y-axis represents the average performance score, and the x-axis shows the model type.  The box plot visualizes the median, quartiles, and range of performance scores for each model type, allowing for a comparison of their relative performance.
> <details>
> <summary>read the caption</summary>
> Figure 4:  Averaged performance per model type.
> </details>



![](https://arxiv.org/html/2504.16921/x7.png)

> 🔼 This figure presents a box plot visualizing the performance of various Large Language Models (LLMs) across different Natural Language Processing (NLP) tasks. Each box represents a task category, showcasing the median performance, interquartile range, and data distribution of the LLMs' performance scores within each category.  The horizontal line indicates the performance of a random baseline model for each task. This visualization allows for a comparison of LLM performance across various tasks and helps identify categories where model performance is significantly better or worse than random chance.
> <details>
> <summary>read the caption</summary>
> Figure 5:  Performance per task category across all models and languages. The random baseline for each category is marked with a black cross.
> </details>



![](https://arxiv.org/html/2504.16921/x8.png)

> 🔼 This boxplot displays the average performance of various LLMs on different tasks categorized by their relevance (fundamental vs. industry-relevant).  The data is aggregated across all languages included in the IberBench benchmark.  It highlights the performance disparity between LLMs on fundamental tasks (generally easier for LLMs) compared to those in industry-relevant settings (which often involve more complex, nuanced challenges).
> <details>
> <summary>read the caption</summary>
> Figure 6:  Performance in fundamental and industry-relevant tasks, averaged across all the languages and models.
> </details>



![](https://arxiv.org/html/2504.16921/x9.png)

> 🔼 This figure displays box plots illustrating the performance of various Large Language Models (LLMs) across different Iberian languages and Spanish varieties.  The performance is averaged across all tasks included in the IberBench benchmark.  The box plots show the median, interquartile range (IQR), and outliers for each language, giving a visual representation of the central tendency and variability of LLM performance. Note that the 'ambiguous' Spanish variety is excluded for clarity.  This allows for a clear comparison of LLM performance across different dialects and languages.
> <details>
> <summary>read the caption</summary>
> Figure 7:  Performance per language and Spanish variety averaged across LLMs and tasks. For clarity, we remove the “ambiguous” Spanish variety.
> </details>



![](https://arxiv.org/html/2504.16921/x10.png)

> 🔼 This figure displays box plots illustrating the performance of various Large Language Models (LLMs) across six Iberian languages (Spanish, Portuguese, Galician, Basque, Catalan, and English) and five Spanish varieties (Spain, Mexico, Cuba, Peru, and Uruguay). The box plots represent the distribution of LLM performance scores averaged across all tasks in IberBench.  The performance is measured relative to a random baseline.  The vertical lines within each box plot indicate the random baseline performance for that particular language. The figure aims to compare LLM performance across different languages and to reveal which languages pose more challenges for the LLMs.
> <details>
> <summary>read the caption</summary>
> Figure 8:  LLM performances in Iberian languages, averaged across tasks. Vertical lines denote the random baseline.
> </details>



![](https://arxiv.org/html/2504.16921/x11.png)

> 🔼 This figure presents a comparison of Large Language Model (LLM) performance across different varieties of Spanish.  Each box plot represents the performance distribution of various LLMs on a specific Spanish variety (e.g., Mexican Spanish, Cuban Spanish, etc.).  The models are evaluated across multiple tasks in the IberBench benchmark.  Vertical lines indicate the performance of a random baseline for each variety; models above this line surpass random prediction.
> <details>
> <summary>read the caption</summary>
> Figure 9:  Model performance in Spanish varieties. Vertical lines denote the random baseline.
> </details>



![](https://arxiv.org/html/2504.16921/x12.png)

> 🔼 This figure presents a heatmap visualizing the ranking of different Large Language Models (LLMs) across various Natural Language Processing (NLP) tasks.  Each cell in the heatmap represents an LLM's performance on a specific task, with the color intensity indicating the rank (darker colors representing higher ranks). This allows for a comprehensive comparison of the relative strengths and weaknesses of each LLM across a range of tasks.
> <details>
> <summary>read the caption</summary>
> Figure 10:  Ranking of models per task category.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S3.T1.2.2.1.2.1">
<tr class="ltx_tr" id="S3.T1.2.2.1.2.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="S3.T1.2.2.1.2.1.1.1">
<span class="ltx_inline-block ltx_parbox ltx_align_top" id="S3.T1.2.2.1.2.1.1.1.1" style="width:361.3pt;">
<span class="ltx_p" id="S3.T1.2.2.1.2.1.1.1.1.1"><span class="ltx_text" id="S3.T1.2.2.1.2.1.1.1.1.1.1" style="font-size:90%;">Real Madrid lose against Valencia CF in Madrid</span></span>
</span>
</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table lists the industry-relevant tasks and datasets included in the IberBench benchmark.  For each dataset, it provides information on the source (e.g., the workshop or benchmark it came from), the specific task it addresses (e.g., sentiment analysis, toxicity detection), the year it was created, the languages it covers (including specific regional varieties where applicable), and the number of labels or answer choices involved.  The table highlights the diversity of tasks and languages represented in IberBench, showing its focus on both fundamental NLP capabilities and industry-relevant applications.
> <details>
> <summary>read the caption</summary>
> Table 2:  Industry-relevant tasks and datasets in IberBench. |ℒ|ℒ|\mathcal{L}|| caligraphic_L | refers to the number of labels or candidate answers if applicable. We indicate language varieties in brackets. If no variety is specified, it means the source does not provide information about which varieties are included in the dataset.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S3.T1.2.3.2.2.1">
<tr class="ltx_tr" id="S3.T1.2.3.2.2.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="S3.T1.2.3.2.2.1.1.1">
<span class="ltx_inline-block ltx_parbox ltx_align_top" id="S3.T1.2.3.2.2.1.1.1.1" style="width:361.3pt;">
<span class="ltx_p" id="S3.T1.2.3.2.2.1.1.1.1.1"><span class="ltx_text" id="S3.T1.2.3.2.2.1.1.1.1.1.1" style="font-size:90%;">[</span><span class="ltx_text" id="S3.T1.2.3.2.2.1.1.1.1.1.2" style="font-size:90%;color:#00E000;">B-football_team</span><span class="ltx_text" id="S3.T1.2.3.2.2.1.1.1.1.1.3" style="font-size:90%;">, </span><span class="ltx_text" id="S3.T1.2.3.2.2.1.1.1.1.1.4" style="font-size:90%;color:#00E000;">I-football_team</span><span class="ltx_text" id="S3.T1.2.3.2.2.1.1.1.1.1.5" style="font-size:90%;">, O, O, </span><span class="ltx_text" id="S3.T1.2.3.2.2.1.1.1.1.1.6" style="font-size:90%;color:#00E000;">B-football_team</span><span class="ltx_text" id="S3.T1.2.3.2.2.1.1.1.1.1.7" style="font-size:90%;">, </span><span class="ltx_text" id="S3.T1.2.3.2.2.1.1.1.1.1.8" style="font-size:90%;color:#00E000;">I-football_team</span><span class="ltx_text" id="S3.T1.2.3.2.2.1.1.1.1.1.9" style="font-size:90%;">, O, </span><span class="ltx_text" id="S3.T1.2.3.2.2.1.1.1.1.1.10" style="font-size:90%;color:#FF00DE;">B-location</span><span class="ltx_text" id="S3.T1.2.3.2.2.1.1.1.1.1.11" style="font-size:90%;">]</span></span>
</span>
</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 Table 3 presents the fundamental natural language processing (NLP) tasks included in the IberBench benchmark.  It details the source of each dataset (whether from a general-purpose benchmark or a specific workshop), the task's sub-category, the year it was created, the languages covered (with regional variants indicated in brackets if available), and the number of labels or answer candidates (|ℒ|). The table is crucial for understanding the breadth and depth of the benchmark, highlighting the inclusion of both widely used and more specialized tasks in various Iberian languages.
> <details>
> <summary>read the caption</summary>
> Table 3:   Fundamental tasks and datasets in IberBench. |ℒ|ℒ|\mathcal{L}|| caligraphic_L | refers to the number of labels or candidate answers if applicable. We indicate language varieties in brackets. If no variety is specified, it means the source does not provide information about which varieties are included in the dataset.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S3.T1.2.4.3.2.1">
<tr class="ltx_tr" id="S3.T1.2.4.3.2.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="S3.T1.2.4.3.2.1.1.1">
<span class="ltx_inline-block ltx_parbox ltx_align_top" id="S3.T1.2.4.3.2.1.1.1.1" style="width:361.3pt;">
<span class="ltx_p" id="S3.T1.2.4.3.2.1.1.1.1.1"><span class="ltx_text" id="S3.T1.2.4.3.2.1.1.1.1.1.1" style="font-size:90%;">&lt;response&gt; &lt;</span><span class="ltx_text" id="S3.T1.2.4.3.2.1.1.1.1.1.2" style="font-size:90%;color:#00E000;">football_team</span><span class="ltx_text" id="S3.T1.2.4.3.2.1.1.1.1.1.3" style="font-size:90%;">&gt; Real Madrid &lt;/</span><span class="ltx_text" id="S3.T1.2.4.3.2.1.1.1.1.1.4" style="font-size:90%;color:#00E000;">football_team</span><span class="ltx_text" id="S3.T1.2.4.3.2.1.1.1.1.1.5" style="font-size:90%;">&gt; lose against &lt;</span><span class="ltx_text" id="S3.T1.2.4.3.2.1.1.1.1.1.6" style="font-size:90%;color:#00E000;">football_team</span><span class="ltx_text" id="S3.T1.2.4.3.2.1.1.1.1.1.7" style="font-size:90%;">&gt; Valencia CF &lt;/</span><span class="ltx_text" id="S3.T1.2.4.3.2.1.1.1.1.1.8" style="font-size:90%;color:#00E000;">football_team</span><span class="ltx_text" id="S3.T1.2.4.3.2.1.1.1.1.1.9" style="font-size:90%;">&gt; in &lt;</span><span class="ltx_text" id="S3.T1.2.4.3.2.1.1.1.1.1.10" style="font-size:90%;color:#FF00DE;">location</span><span class="ltx_text" id="S3.T1.2.4.3.2.1.1.1.1.1.11" style="font-size:90%;">&gt; Madrid &lt;/</span><span class="ltx_text" id="S3.T1.2.4.3.2.1.1.1.1.1.12" style="font-size:90%;color:#FF00DE;">location</span><span class="ltx_text" id="S3.T1.2.4.3.2.1.1.1.1.1.13" style="font-size:90%;">&gt; &lt;/response&gt;</span></span>
</span>
</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 Table 4 provides a statistical summary of the IberBench benchmark.  It shows the total number of datasets (|D|) and the total number of samples (|S|). The table then breaks down the number of samples (in thousands) for each of the 12 languages included in the benchmark: Basque (eu), Catalan (ca), English (en), Galician (gl), Portuguese (pt), Spanish (es-ES), along with five varieties of Spanish spoken in Ibero-America (es-CR, es-CU, es-MX, es-PE, es-UY).  A final column, labeled 'AMB', represents samples where the specific language variety could not be definitively determined by the dataset creators.
> <details>
> <summary>read the caption</summary>
> Table 4: Statistics of IberBench. |𝒟|𝒟|\mathcal{D}|| caligraphic_D | and |𝒮|𝒮|\mathcal{S}|| caligraphic_S | refer to number of datasets and samples respectively. The remaining columns show the number of samples per language in thousands. “AMB” stands for “ambiguous” and refers to potential mixes of language variations that are not explicitly identified by dataset creators.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S3.T1.2.6.5.2.1">
<tr class="ltx_tr" id="S3.T1.2.6.5.2.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="S3.T1.2.6.5.2.1.1.1">
<span class="ltx_inline-block ltx_parbox ltx_align_top" id="S3.T1.2.6.5.2.1.1.1.1" style="width:361.3pt;">
<span class="ltx_p" id="S3.T1.2.6.5.2.1.1.1.1.1"><span class="ltx_text" id="S3.T1.2.6.5.2.1.1.1.1.1.1" style="font-size:90%;">Your task is to perform Named Entity Recognition by wrapping each entity from the input text with label tags. The set of label tags you can use are: </span><span class="ltx_text" id="S3.T1.2.6.5.2.1.1.1.1.1.2" style="font-size:90%;color:#00E000;">football_team</span><span class="ltx_text" id="S3.T1.2.6.5.2.1.1.1.1.1.3" style="font-size:90%;">, and </span><span class="ltx_text" id="S3.T1.2.6.5.2.1.1.1.1.1.4" style="font-size:90%;color:#FF00DE;">location</span><span class="ltx_text" id="S3.T1.2.6.5.2.1.1.1.1.1.5" style="font-size:90%;">. Wrap all your response between &lt;response&gt; … &lt;/response&gt;. Here are some examples:</span></span>
<span class="ltx_p" id="S3.T1.2.6.5.2.1.1.1.1.2"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T1.2.6.5.2.1.1.1.1.2.1" style="font-size:90%;">Text</span><span class="ltx_text" id="S3.T1.2.6.5.2.1.1.1.1.2.2" style="font-size:90%;">: OpenAI is developing GPT-5.</span></span>
<span class="ltx_p" id="S3.T1.2.6.5.2.1.1.1.1.3"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T1.2.6.5.2.1.1.1.1.3.1" style="font-size:90%;">Labels</span><span class="ltx_text" id="S3.T1.2.6.5.2.1.1.1.1.3.2" style="font-size:90%;">: &lt;response&gt; OpenAI is developing GPT-5 &lt;/response&gt;</span></span>
<span class="ltx_p" id="S3.T1.2.6.5.2.1.1.1.1.4"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T1.2.6.5.2.1.1.1.1.4.1" style="font-size:90%;">Text</span><span class="ltx_text" id="S3.T1.2.6.5.2.1.1.1.1.4.2" style="font-size:90%;">: Real Madrid lose against Valencia CF in Madrid.</span></span>
<span class="ltx_p" id="S3.T1.2.6.5.2.1.1.1.1.5"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T1.2.6.5.2.1.1.1.1.5.1" style="font-size:90%;">Labels</span><span class="ltx_text" id="S3.T1.2.6.5.2.1.1.1.1.5.2" style="font-size:90%;">: &lt;response&gt; &lt;</span><span class="ltx_text" id="S3.T1.2.6.5.2.1.1.1.1.5.3" style="font-size:90%;color:#00E000;">football_team</span><span class="ltx_text" id="S3.T1.2.6.5.2.1.1.1.1.5.4" style="font-size:90%;">&gt; Real Madrid &lt;/</span><span class="ltx_text" id="S3.T1.2.6.5.2.1.1.1.1.5.5" style="font-size:90%;color:#00E000;">football_team</span><span class="ltx_text" id="S3.T1.2.6.5.2.1.1.1.1.5.6" style="font-size:90%;">&gt; lose against &lt;</span><span class="ltx_text" id="S3.T1.2.6.5.2.1.1.1.1.5.7" style="font-size:90%;color:#00E000;">football_team</span><span class="ltx_text" id="S3.T1.2.6.5.2.1.1.1.1.5.8" style="font-size:90%;">&gt; Valencia CF &lt;/</span><span class="ltx_text" id="S3.T1.2.6.5.2.1.1.1.1.5.9" style="font-size:90%;color:#00E000;">football_team</span><span class="ltx_text" id="S3.T1.2.6.5.2.1.1.1.1.5.10" style="font-size:90%;">&gt; in &lt;</span><span class="ltx_text" id="S3.T1.2.6.5.2.1.1.1.1.5.11" style="font-size:90%;color:#FF00DE;">location</span><span class="ltx_text" id="S3.T1.2.6.5.2.1.1.1.1.5.12" style="font-size:90%;">&gt; Madrid &lt;/</span><span class="ltx_text" id="S3.T1.2.6.5.2.1.1.1.1.5.13" style="font-size:90%;color:#FF00DE;">location</span><span class="ltx_text" id="S3.T1.2.6.5.2.1.1.1.1.5.14" style="font-size:90%;">&gt; &lt;/response&gt;</span></span>
<span class="ltx_p" id="S3.T1.2.6.5.2.1.1.1.1.6"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T1.2.6.5.2.1.1.1.1.6.1" style="font-size:90%;">Text</span><span class="ltx_text" id="S3.T1.2.6.5.2.1.1.1.1.6.2" style="font-size:90%;">: FC Barcelona is playing in Barcelona</span></span>
</span>
</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table lists the 23 Large Language Models (LLMs) evaluated in the IberBench benchmark.  For each model, it provides the model name, type (base model or instruction-tuned model), number of parameters (in billions), the Iberian languages included in the pre-training data, and the languages used for fine-tuning (if any).  Base models are those trained solely for causal language modeling, while instruction-tuned models are further fine-tuned for instruction-following or chat tasks.  A question mark (?) indicates cases where the training details are not fully specified in the original source.  The table also notes that base models do not undergo fine-tuning, so their fine-tuning languages are listed as '-'. Finally, it indicates that all LLMs are accessible on the HuggingFace Hub.
> <details>
> <summary>read the caption</summary>
> Table 5: LLMs evaluated in IberBench. Includes the model name, type, number of parameters in billions, and Iberian languages included in the pre-training and fine-tuning mixtures.  indicates base models solely pre-trained via causal language modeling;  marks models further fine-tuned for instruction-following or chat tasks;  denotes cases where training details are unspecified in the source. Fine-tuning languages for base models are marked as “-”, since no fine-tuning has been performed on these models. All LLMs can be accessed in the HuggingFace Hub searching by model name.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S3.T1.2.7.6.2.1">
<tr class="ltx_tr" id="S3.T1.2.7.6.2.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="S3.T1.2.7.6.2.1.1.1">
<span class="ltx_inline-block ltx_parbox ltx_align_top" id="S3.T1.2.7.6.2.1.1.1.1" style="width:361.3pt;">
<span class="ltx_p" id="S3.T1.2.7.6.2.1.1.1.1.1"><span class="ltx_text" id="S3.T1.2.7.6.2.1.1.1.1.1.1" style="font-size:90%;">&lt;response&gt; &lt;</span><span class="ltx_text" id="S3.T1.2.7.6.2.1.1.1.1.1.2" style="font-size:90%;color:#00E000;">football_team</span><span class="ltx_text" id="S3.T1.2.7.6.2.1.1.1.1.1.3" style="font-size:90%;">&gt; FC Barcelona &lt;/</span><span class="ltx_text" id="S3.T1.2.7.6.2.1.1.1.1.1.4" style="font-size:90%;color:#00E000;">football_team</span><span class="ltx_text" id="S3.T1.2.7.6.2.1.1.1.1.1.5" style="font-size:90%;">&gt; is playing in &lt;</span><span class="ltx_text" id="S3.T1.2.7.6.2.1.1.1.1.1.6" style="font-size:90%;color:#FF00DE;">location</span><span class="ltx_text" id="S3.T1.2.7.6.2.1.1.1.1.1.7" style="font-size:90%;">&gt; Barcelona &lt;/</span><span class="ltx_text" id="S3.T1.2.7.6.2.1.1.1.1.1.8" style="font-size:90%;color:#FF00DE;">location</span><span class="ltx_text" id="S3.T1.2.7.6.2.1.1.1.1.1.9" style="font-size:90%;">&gt; &lt;response&gt;</span></span>
</span>
</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table lists industry-relevant tasks included in the IberBench benchmark.  For each task, it provides the subtask name, year the dataset was created, the language(s) it covers, and a URL to access the dataset.  The table helps readers locate the datasets used in the benchmark for further exploration and verification.
> <details>
> <summary>read the caption</summary>
> Table 6: Industry-relevant tasks with URLs.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S3.T1.2.8.7.2.1">
<tr class="ltx_tr" id="S3.T1.2.8.7.2.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="S3.T1.2.8.7.2.1.1.1">
<span class="ltx_inline-block ltx_parbox ltx_align_top" id="S3.T1.2.8.7.2.1.1.1.1" style="width:361.3pt;">
<span class="ltx_p" id="S3.T1.2.8.7.2.1.1.1.1.1"><span class="ltx_text" id="S3.T1.2.8.7.2.1.1.1.1.1.1" style="font-size:90%;">[</span><span class="ltx_text" id="S3.T1.2.8.7.2.1.1.1.1.1.2" style="font-size:90%;color:#00E000;">B-football_team</span><span class="ltx_text" id="S3.T1.2.8.7.2.1.1.1.1.1.3" style="font-size:90%;">, </span><span class="ltx_text" id="S3.T1.2.8.7.2.1.1.1.1.1.4" style="font-size:90%;color:#00E000;">I-football_team</span><span class="ltx_text" id="S3.T1.2.8.7.2.1.1.1.1.1.5" style="font-size:90%;">, O, O, O, </span><span class="ltx_text" id="S3.T1.2.8.7.2.1.1.1.1.1.6" style="font-size:90%;color:#FF00DE;">B-location</span><span class="ltx_text" id="S3.T1.2.8.7.2.1.1.1.1.1.7" style="font-size:90%;">]</span></span>
</span>
</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table lists the URLs for datasets used in the IberBench benchmark that represent fundamental NLP tasks.  These tasks assess core language understanding and generation capabilities of LLMs and are sourced from various general-purpose benchmarks or publicly available datasets, unlike the industry-relevant tasks which come from shared tasks and workshops.  The information provided includes the task name, subtask (if applicable), year of dataset creation, languages covered, and the direct URL to access the dataset.
> <details>
> <summary>read the caption</summary>
> Table 7: Fundamental tasks with URLs.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2504.16921/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.16921/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.16921/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.16921/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.16921/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.16921/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.16921/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.16921/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.16921/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.16921/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.16921/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.16921/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.16921/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.16921/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.16921/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.16921/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.16921/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.16921/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.16921/19.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.16921/20.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}