---
title: "MDocAgent: A Multi-Modal Multi-Agent Framework for Document Understanding"
summary: "MDocAgent: Multi-agent Doc understanding by integrating text and image for better accuracy."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Multimodal Learning", "Multimodal Understanding", "🏢 UNC-Chapel Hill",]
showSummary: true
date: 2025-03-18
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2503.13964 {{< /keyword >}}
{{< keyword icon="writer" >}} Siwei Han et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-03-26 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2503.13964" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2503.13964" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2503.13964/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Existing methods for Document Question Answering (DocQA) often struggle with integrating both textual and visual cues, limiting their performance on real-world documents. Current approaches using Large Language Models (LLMs) or Retrieval Augmented Generation (RAG) tend to prioritize information from a single modality, failing to effectively combine insights from both text and images.This makes it hard to answer complex questions requiring multimodal reasoning, hindering their accuracy.



The paper introduces a novel framework that utilizes both text and image, called **MDocAgent**. It leverages a multi-agent system with specialized agents, including a general agent, critical agent, text agent, image agent, and summarizing agent. These agents collaborate to achieve a more comprehensive understanding of the document's content. By employing multi-modal context retrieval and combining individual insights, the system synthesizes information from both textual and visual components, leading to improved accuracy in question answering.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} MDocAgent, a multi-agent framework, enhances DocQA by integrating text and image analysis. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} Specialized agents (general, critical, text, image, summarizing) collaborate for comprehensive document understanding. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Experiments show MDocAgent outperforms existing methods on multiple DocQA benchmarks. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper introduces a novel approach to DocQA by leveraging a multi-agent system with specialized roles, which can handle complex documents containing both text and visual information. **The demonstrated improvements over existing methods make it a valuable resource for researchers**. The work opens new avenues for exploring collaborative AI architectures in document understanding.

------
#### Visual Insights





{{< table-caption >}}
<table class="ltx_tabular ltx_figure_panel ltx_guessed_headers ltx_align_middle" id="id1.2">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="id1.2.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="id1.2.1.1.1" style="padding:1pt 5.0pt;">
<span class="ltx_ERROR undefined" id="id1.2.1.1.1.1">\toprule</span><span class="ltx_text ltx_font_bold" id="id1.2.1.1.1.2">Method</span>
</th>
<td class="ltx_td ltx_align_center" id="id1.2.1.1.2" style="padding:1pt 5.0pt;"><span class="ltx_text ltx_font_bold" id="id1.2.1.1.2.1">Layout</span></td>
<td class="ltx_td ltx_align_center" id="id1.2.1.1.3" style="padding:1pt 5.0pt;"><span class="ltx_text ltx_font_bold" id="id1.2.1.1.3.1">Text</span></td>
<td class="ltx_td ltx_align_center" id="id1.2.1.1.4" style="padding:1pt 5.0pt;"><span class="ltx_text ltx_font_bold" id="id1.2.1.1.4.1">Figure</span></td>
<td class="ltx_td ltx_align_center" id="id1.2.1.1.5" style="padding:1pt 5.0pt;"><span class="ltx_text ltx_font_bold" id="id1.2.1.1.5.1">Table</span></td>
<td class="ltx_td ltx_align_center" id="id1.2.1.1.6" style="padding:1pt 5.0pt;"><span class="ltx_text ltx_font_bold" id="id1.2.1.1.6.1">Others</span></td>
<td class="ltx_td ltx_align_center" id="id1.2.1.1.7" style="padding:1pt 5.0pt;"><span class="ltx_text ltx_font_bold" id="id1.2.1.1.7.1">Avg</span></td>
</tr>
<tr class="ltx_tr" id="id1.2.2.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" colspan="7" id="id1.2.2.2.1" style="padding:1pt 5.0pt;">
<span class="ltx_ERROR undefined" id="id1.2.2.2.1.1">\midrule</span>      <span class="ltx_text ltx_font_italic" id="id1.2.2.2.1.2">LVLMs</span>
</th>
</tr>
<tr class="ltx_tr" id="id1.2.3.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="id1.2.3.3.1" style="padding:1pt 5.0pt;">
<span class="ltx_ERROR undefined" id="id1.2.3.3.1.1">\midrule</span>Qwen2-VL-7B-Instruct</th>
<td class="ltx_td ltx_align_center" id="id1.2.3.3.2" style="padding:1pt 5.0pt;">0.264</td>
<td class="ltx_td ltx_align_center" id="id1.2.3.3.3" style="padding:1pt 5.0pt;">0.386</td>
<td class="ltx_td ltx_align_center" id="id1.2.3.3.4" style="padding:1pt 5.0pt;">0.308</td>
<td class="ltx_td ltx_align_center" id="id1.2.3.3.5" style="padding:1pt 5.0pt;">0.207</td>
<td class="ltx_td ltx_align_center" id="id1.2.3.3.6" style="padding:1pt 5.0pt;">0.500</td>
<td class="ltx_td ltx_align_center" id="id1.2.3.3.7" style="padding:1pt 5.0pt;">0.296</td>
</tr>
<tr class="ltx_tr" id="id1.2.4.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="id1.2.4.4.1" style="padding:1pt 5.0pt;">Qwen2.5-VL-7B-Instruct</th>
<td class="ltx_td ltx_align_center" id="id1.2.4.4.2" style="padding:1pt 5.0pt;">0.357</td>
<td class="ltx_td ltx_align_center" id="id1.2.4.4.3" style="padding:1pt 5.0pt;">0.479</td>
<td class="ltx_td ltx_align_center" id="id1.2.4.4.4" style="padding:1pt 5.0pt;">0.442</td>
<td class="ltx_td ltx_align_center" id="id1.2.4.4.5" style="padding:1pt 5.0pt;">0.299</td>
<td class="ltx_td ltx_align_center" id="id1.2.4.4.6" style="padding:1pt 5.0pt;">0.375</td>
<td class="ltx_td ltx_align_center" id="id1.2.4.4.7" style="padding:1pt 5.0pt;">0.389</td>
</tr>
<tr class="ltx_tr" id="id1.2.5.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="id1.2.5.5.1" style="padding:1pt 5.0pt;">llava-v1.6-mistral-7b</th>
<td class="ltx_td ltx_align_center" id="id1.2.5.5.2" style="padding:1pt 5.0pt;">0.067</td>
<td class="ltx_td ltx_align_center" id="id1.2.5.5.3" style="padding:1pt 5.0pt;">0.165</td>
<td class="ltx_td ltx_align_center" id="id1.2.5.5.4" style="padding:1pt 5.0pt;">0.088</td>
<td class="ltx_td ltx_align_center" id="id1.2.5.5.5" style="padding:1pt 5.0pt;">0.051</td>
<td class="ltx_td ltx_align_center" id="id1.2.5.5.6" style="padding:1pt 5.0pt;">0.250</td>
<td class="ltx_td ltx_align_center" id="id1.2.5.5.7" style="padding:1pt 5.0pt;">0.099</td>
</tr>
<tr class="ltx_tr" id="id1.2.6.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="id1.2.6.6.1" style="padding:1pt 5.0pt;">llava-one-vision-7B</th>
<td class="ltx_td ltx_align_center" id="id1.2.6.6.2" style="padding:1pt 5.0pt;">0.098</td>
<td class="ltx_td ltx_align_center" id="id1.2.6.6.3" style="padding:1pt 5.0pt;">0.200</td>
<td class="ltx_td ltx_align_center" id="id1.2.6.6.4" style="padding:1pt 5.0pt;">0.144</td>
<td class="ltx_td ltx_align_center" id="id1.2.6.6.5" style="padding:1pt 5.0pt;">0.057</td>
<td class="ltx_td ltx_align_center" id="id1.2.6.6.6" style="padding:1pt 5.0pt;">0.125</td>
<td class="ltx_td ltx_align_center" id="id1.2.6.6.7" style="padding:1pt 5.0pt;">0.126</td>
</tr>
<tr class="ltx_tr" id="id1.2.7.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="id1.2.7.7.1" style="padding:1pt 5.0pt;">Phi-3.5-vision-instruct</th>
<td class="ltx_td ltx_align_center" id="id1.2.7.7.2" style="padding:1pt 5.0pt;">0.245</td>
<td class="ltx_td ltx_align_center" id="id1.2.7.7.3" style="padding:1pt 5.0pt;">0.375</td>
<td class="ltx_td ltx_align_center" id="id1.2.7.7.4" style="padding:1pt 5.0pt;">0.291</td>
<td class="ltx_td ltx_align_center" id="id1.2.7.7.5" style="padding:1pt 5.0pt;">0.187</td>
<td class="ltx_td ltx_align_center" id="id1.2.7.7.6" style="padding:1pt 5.0pt;">0.375</td>
<td class="ltx_td ltx_align_center" id="id1.2.7.7.7" style="padding:1pt 5.0pt;">0.280</td>
</tr>
<tr class="ltx_tr" id="id1.2.8.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="id1.2.8.8.1" style="padding:1pt 5.0pt;">SmolVLM-Instruct</th>
<td class="ltx_td ltx_align_center" id="id1.2.8.8.2" style="padding:1pt 5.0pt;">0.128</td>
<td class="ltx_td ltx_align_center" id="id1.2.8.8.3" style="padding:1pt 5.0pt;">0.224</td>
<td class="ltx_td ltx_align_center" id="id1.2.8.8.4" style="padding:1pt 5.0pt;">0.164</td>
<td class="ltx_td ltx_align_center" id="id1.2.8.8.5" style="padding:1pt 5.0pt;">0.100</td>
<td class="ltx_td ltx_align_center" id="id1.2.8.8.6" style="padding:1pt 5.0pt;">0.250</td>
<td class="ltx_td ltx_align_center" id="id1.2.8.8.7" style="padding:1pt 5.0pt;">0.163</td>
</tr>
<tr class="ltx_tr" id="id1.2.9.9">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" colspan="7" id="id1.2.9.9.1" style="padding:1pt 5.0pt;">
<span class="ltx_ERROR undefined" id="id1.2.9.9.1.1">\midrule</span>      <span class="ltx_text ltx_font_italic" id="id1.2.9.9.1.2">RAG methods (top 1)</span>
</th>
</tr>
<tr class="ltx_tr" id="id1.2.10.10">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="id1.2.10.10.1" style="padding:1pt 5.0pt;">
<span class="ltx_ERROR undefined" id="id1.2.10.10.1.1">\midrule</span>ColBERTv2+Llama-3.1-8B</th>
<td class="ltx_td ltx_align_center" id="id1.2.10.10.2" style="padding:1pt 5.0pt;">0.257</td>
<td class="ltx_td ltx_align_center" id="id1.2.10.10.3" style="padding:1pt 5.0pt;">0.529</td>
<td class="ltx_td ltx_align_center" id="id1.2.10.10.4" style="padding:1pt 5.0pt;">0.471</td>
<td class="ltx_td ltx_align_center" id="id1.2.10.10.5" style="padding:1pt 5.0pt;">0.428</td>
<td class="ltx_td ltx_align_center" id="id1.2.10.10.6" style="padding:1pt 5.0pt;"><span class="ltx_text ltx_font_bold" id="id1.2.10.10.6.1">0.775</span></td>
<td class="ltx_td ltx_align_center" id="id1.2.10.10.7" style="padding:1pt 5.0pt;">0.429</td>
</tr>
<tr class="ltx_tr" id="id1.2.11.11">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="id1.2.11.11.1" style="padding:1pt 5.0pt;">M3DocRAG (ColPali+Qwen2-VL-7B)</th>
<td class="ltx_td ltx_align_center" id="id1.2.11.11.2" style="padding:1pt 5.0pt;">0.340</td>
<td class="ltx_td ltx_align_center" id="id1.2.11.11.3" style="padding:1pt 5.0pt;">0.605</td>
<td class="ltx_td ltx_align_center" id="id1.2.11.11.4" style="padding:1pt 5.0pt;"><span class="ltx_text ltx_font_bold" id="id1.2.11.11.4.1">0.546</span></td>
<td class="ltx_td ltx_align_center" id="id1.2.11.11.5" style="padding:1pt 5.0pt;">0.520</td>
<td class="ltx_td ltx_align_center" id="id1.2.11.11.6" style="padding:1pt 5.0pt;">0.625</td>
<td class="ltx_td ltx_align_center" id="id1.2.11.11.7" style="padding:1pt 5.0pt;">0.506</td>
</tr>
<tr class="ltx_tr" id="id1.2.12.12">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="id1.2.12.12.1" style="padding:1pt 5.0pt;">
<span class="ltx_ERROR undefined" id="id1.2.12.12.1.1">\ours</span><span class="ltx_text ltx_font_bold" id="id1.2.12.12.1.2"> (Ours)</span>
</th>
<td class="ltx_td ltx_align_center" id="id1.2.12.12.2" style="padding:1pt 5.0pt;"><span class="ltx_text ltx_font_bold" id="id1.2.12.12.2.1">0.341</span></td>
<td class="ltx_td ltx_align_center" id="id1.2.12.12.3" style="padding:1pt 5.0pt;"><span class="ltx_text ltx_font_bold" id="id1.2.12.12.3.1">0.612</span></td>
<td class="ltx_td ltx_align_center" id="id1.2.12.12.4" style="padding:1pt 5.0pt;">0.540</td>
<td class="ltx_td ltx_align_center" id="id1.2.12.12.5" style="padding:1pt 5.0pt;"><span class="ltx_text ltx_font_bold" id="id1.2.12.12.5.1">0.527</span></td>
<td class="ltx_td ltx_align_center" id="id1.2.12.12.6" style="padding:1pt 5.0pt;">0.750</td>
<td class="ltx_td ltx_align_center" id="id1.2.12.12.7" style="padding:1pt 5.0pt;"><span class="ltx_text ltx_font_bold" id="id1.2.12.12.7.1">0.517</span></td>
</tr>
<tr class="ltx_tr" id="id1.2.13.13">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" colspan="7" id="id1.2.13.13.1" style="padding:1pt 5.0pt;">
<span class="ltx_ERROR undefined" id="id1.2.13.13.1.1">\midrule</span>      <span class="ltx_text ltx_font_italic" id="id1.2.13.13.1.2">RAG methods (top 4)</span>
</th>
</tr>
<tr class="ltx_tr" id="id1.2.14.14">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="id1.2.14.14.1" style="padding:1pt 5.0pt;">
<span class="ltx_ERROR undefined" id="id1.2.14.14.1.1">\midrule</span>ColBERTv2+Llama-3.1-8B</th>
<td class="ltx_td ltx_align_center" id="id1.2.14.14.2" style="padding:1pt 5.0pt;">0.349</td>
<td class="ltx_td ltx_align_center" id="id1.2.14.14.3" style="padding:1pt 5.0pt;">0.599</td>
<td class="ltx_td ltx_align_center" id="id1.2.14.14.4" style="padding:1pt 5.0pt;">0.491</td>
<td class="ltx_td ltx_align_center" id="id1.2.14.14.5" style="padding:1pt 5.0pt;">0.485</td>
<td class="ltx_td ltx_align_center" id="id1.2.14.14.6" style="padding:1pt 5.0pt;"><span class="ltx_text ltx_font_bold" id="id1.2.14.14.6.1">0.875</span></td>
<td class="ltx_td ltx_align_center" id="id1.2.14.14.7" style="padding:1pt 5.0pt;">0.491</td>
</tr>
<tr class="ltx_tr" id="id1.2.15.15">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="id1.2.15.15.1" style="padding:1pt 5.0pt;">M3DocRAG (ColPali+Qwen2-VL-7B)</th>
<td class="ltx_td ltx_align_center" id="id1.2.15.15.2" style="padding:1pt 5.0pt;">0.426</td>
<td class="ltx_td ltx_align_center" id="id1.2.15.15.3" style="padding:1pt 5.0pt;">0.660</td>
<td class="ltx_td ltx_align_center" id="id1.2.15.15.4" style="padding:1pt 5.0pt;">0.595</td>
<td class="ltx_td ltx_align_center" id="id1.2.15.15.5" style="padding:1pt 5.0pt;">0.542</td>
<td class="ltx_td ltx_align_center" id="id1.2.15.15.6" style="padding:1pt 5.0pt;">0.625</td>
<td class="ltx_td ltx_align_center" id="id1.2.15.15.7" style="padding:1pt 5.0pt;">0.554</td>
</tr>
<tr class="ltx_tr" id="id1.2.16.16">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="id1.2.16.16.1" style="padding:1pt 5.0pt;">
<span class="ltx_ERROR undefined" id="id1.2.16.16.1.1">\ours</span><span class="ltx_text ltx_font_bold" id="id1.2.16.16.1.2"> (Ours)</span>
</th>
<td class="ltx_td ltx_align_center" id="id1.2.16.16.2" style="padding:1pt 5.0pt;"><span class="ltx_text ltx_font_bold" id="id1.2.16.16.2.1">0.438</span></td>
<td class="ltx_td ltx_align_center" id="id1.2.16.16.3" style="padding:1pt 5.0pt;"><span class="ltx_text ltx_font_bold" id="id1.2.16.16.3.1">0.675</span></td>
<td class="ltx_td ltx_align_center" id="id1.2.16.16.4" style="padding:1pt 5.0pt;"><span class="ltx_text ltx_font_bold" id="id1.2.16.16.4.1">0.592</span></td>
<td class="ltx_td ltx_align_center" id="id1.2.16.16.5" style="padding:1pt 5.0pt;"><span class="ltx_text ltx_font_bold" id="id1.2.16.16.5.1">0.581</span></td>
<td class="ltx_td ltx_align_center" id="id1.2.16.16.6" style="padding:1pt 5.0pt;"><span class="ltx_text ltx_font_bold" id="id1.2.16.16.6.1">0.875</span></td>
<td class="ltx_td ltx_align_center" id="id1.2.16.16.7" style="padding:1pt 5.0pt;"><span class="ltx_text ltx_font_bold" id="id1.2.16.16.7.1">0.578</span></td>
</tr>
<tr class="ltx_tr" id="id1.2.17.17">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="id1.2.17.17.1" style="padding:1pt 5.0pt;"><span class="ltx_ERROR undefined" id="id1.2.17.17.1.1">\bottomrule</span></th>
<td class="ltx_td" id="id1.2.17.17.2" style="padding:1pt 5.0pt;"></td>
<td class="ltx_td" id="id1.2.17.17.3" style="padding:1pt 5.0pt;"></td>
<td class="ltx_td" id="id1.2.17.17.4" style="padding:1pt 5.0pt;"></td>
<td class="ltx_td" id="id1.2.17.17.5" style="padding:1pt 5.0pt;"></td>
<td class="ltx_td" id="id1.2.17.17.6" style="padding:1pt 5.0pt;"></td>
<td class="ltx_td" id="id1.2.17.17.7" style="padding:1pt 5.0pt;"></td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 This table presents a detailed comparison of various models' performance on the LongDocURL benchmark, broken down by different evidence types (Layout, Text, Figure, Table, Others).  It contrasts the accuracy of Large Vision Language Models (LVLMs) and Retrieval Augmented Generation (RAG) methods, both using top-1 and top-4 retrieval strategies.  The goal is to showcase the impact of different evidence sources and retrieval strategies on the models' ability to accurately understand and answer questions based on long documents.
> <details>
> <summary>read the caption</summary>
> Table \thetable: Performance comparison across different evidence source on LongDocURL.
> </details>





### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2503.13964/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.13964/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.13964/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.13964/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.13964/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.13964/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.13964/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.13964/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.13964/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.13964/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.13964/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.13964/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.13964/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.13964/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.13964/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.13964/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}