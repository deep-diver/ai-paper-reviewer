---
title: "Training Language Models for Social Deduction with Multi-Agent Reinforcement Learning"
summary: "Language models learn effective social deduction strategies in a virtual game by using their goal to predict useful information as a dense reward signal, doubling win rates compared to standard RL."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Natural Language Processing", "Large Language Models", "🏢 Stanford University",]
showSummary: true
date: 2025-02-09
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2502.06060 {{< /keyword >}}
{{< keyword icon="writer" >}} Bidipta Sarkar et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-02-11 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2502.06060" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2502.06060" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2502.06060/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Many existing methods for training AI agents to communicate naturally in multi-agent settings are limited because they rely on large amounts of human-demonstration data or fail to generate natural and useful communication strategies. This research paper addresses these limitations by training language models to engage in productive discussions within an embodied social deduction game.  The core issue is that traditional methods struggle with sparse reward signals, making it difficult for agents to learn effective communication skills.

The researchers introduce a novel method that decomposes the communication problem into 'listening' and 'speaking'. They utilize the agents' goals to predict useful world information, generating a dense reward signal to guide communication.  This improves 'listening' by training models to predict environmental information from discussions.  Simultaneously, multi-agent reinforcement learning improves 'speaking' by rewarding messages based on their influence on other agents.  The results demonstrate significant improvement in discussion quality and a substantial increase in the win rate for the agents, highlighting the effectiveness of this novel training approach.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} A novel method for training language models in social deduction games leverages the agent's goal to create dense reward signals for communication. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} The proposed method significantly improves communication and collaboration in complex social scenarios, doubling win rates compared to standard reinforcement learning. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Emergent behaviors, such as accusing suspects and providing evidence, demonstrate the effectiveness of the training approach and lead to strong discussions within the game. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper is important because it presents **a novel approach to training language models for effective communication in complex social settings**.  It addresses the challenge of sparse reward signals in multi-agent reinforcement learning by introducing auxiliary reward signals. The work also demonstrates the effectiveness of using large language models as agents, opening up **new avenues for research in emergent communication and human-AI interaction**.  The findings have implications for building more natural and effective AI agents that can collaborate with humans.

------
#### Visual Insights





{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="A2.T1.10.10">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A2.T1.10.10.11.1">
<th class="ltx_td ltx_th ltx_th_column ltx_th_row" id="A2.T1.10.10.11.1.1"></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" colspan="3" id="A2.T1.10.10.11.1.2"><span class="ltx_text ltx_font_bold" id="A2.T1.10.10.11.1.2.1">Our Base Model</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" colspan="3" id="A2.T1.10.10.11.1.3"><span class="ltx_text ltx_font_bold" id="A2.T1.10.10.11.1.3.1">Original RWKV</span></th>
</tr>
<tr class="ltx_tr" id="A2.T1.10.10.10">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row" id="A2.T1.10.10.10.11"><span class="ltx_text ltx_font_bold" id="A2.T1.10.10.10.11.1">Model Size</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column" id="A2.T1.1.1.1.1"><span class="ltx_text ltx_font_bold" id="A2.T1.1.1.1.1.1">Accuracy <math alttext="\uparrow" class="ltx_Math" display="inline" id="A2.T1.1.1.1.1.1.m1.1"><semantics id="A2.T1.1.1.1.1.1.m1.1a"><mo id="A2.T1.1.1.1.1.1.m1.1.1" stretchy="false" xref="A2.T1.1.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="A2.T1.1.1.1.1.1.m1.1b"><ci id="A2.T1.1.1.1.1.1.m1.1.1.cmml" xref="A2.T1.1.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="A2.T1.1.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="A2.T1.1.1.1.1.1.m1.1d">↑</annotation></semantics></math></span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column" id="A2.T1.3.3.3.3"><span class="ltx_text ltx_font_bold" id="A2.T1.3.3.3.3.2">PPL<math alttext="{}_{\text{World}}" class="ltx_Math" display="inline" id="A2.T1.2.2.2.2.1.m1.1"><semantics id="A2.T1.2.2.2.2.1.m1.1a"><msub id="A2.T1.2.2.2.2.1.m1.1.1" xref="A2.T1.2.2.2.2.1.m1.1.1.cmml"><mi id="A2.T1.2.2.2.2.1.m1.1.1a" xref="A2.T1.2.2.2.2.1.m1.1.1.cmml"></mi><mtext class="ltx_mathvariant_bold" id="A2.T1.2.2.2.2.1.m1.1.1.1" xref="A2.T1.2.2.2.2.1.m1.1.1.1a.cmml">World</mtext></msub><annotation-xml encoding="MathML-Content" id="A2.T1.2.2.2.2.1.m1.1b"><apply id="A2.T1.2.2.2.2.1.m1.1.1.cmml" xref="A2.T1.2.2.2.2.1.m1.1.1"><ci id="A2.T1.2.2.2.2.1.m1.1.1.1a.cmml" xref="A2.T1.2.2.2.2.1.m1.1.1.1"><mtext class="ltx_mathvariant_bold" id="A2.T1.2.2.2.2.1.m1.1.1.1.cmml" mathsize="70%" xref="A2.T1.2.2.2.2.1.m1.1.1.1">World</mtext></ci></apply></annotation-xml><annotation encoding="application/x-tex" id="A2.T1.2.2.2.2.1.m1.1c">{}_{\text{World}}</annotation><annotation encoding="application/x-llamapun" id="A2.T1.2.2.2.2.1.m1.1d">start_FLOATSUBSCRIPT World end_FLOATSUBSCRIPT</annotation></semantics></math> <math alttext="\downarrow" class="ltx_Math" display="inline" id="A2.T1.3.3.3.3.2.m2.1"><semantics id="A2.T1.3.3.3.3.2.m2.1a"><mo id="A2.T1.3.3.3.3.2.m2.1.1" stretchy="false" xref="A2.T1.3.3.3.3.2.m2.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="A2.T1.3.3.3.3.2.m2.1b"><ci id="A2.T1.3.3.3.3.2.m2.1.1.cmml" xref="A2.T1.3.3.3.3.2.m2.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="A2.T1.3.3.3.3.2.m2.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="A2.T1.3.3.3.3.2.m2.1d">↓</annotation></semantics></math></span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column" id="A2.T1.5.5.5.5"><span class="ltx_text ltx_font_bold" id="A2.T1.5.5.5.5.2">PPL<math alttext="{}_{\text{Lam}}" class="ltx_Math" display="inline" id="A2.T1.4.4.4.4.1.m1.1"><semantics id="A2.T1.4.4.4.4.1.m1.1a"><msub id="A2.T1.4.4.4.4.1.m1.1.1" xref="A2.T1.4.4.4.4.1.m1.1.1.cmml"><mi id="A2.T1.4.4.4.4.1.m1.1.1a" xref="A2.T1.4.4.4.4.1.m1.1.1.cmml"></mi><mtext class="ltx_mathvariant_bold" id="A2.T1.4.4.4.4.1.m1.1.1.1" xref="A2.T1.4.4.4.4.1.m1.1.1.1a.cmml">Lam</mtext></msub><annotation-xml encoding="MathML-Content" id="A2.T1.4.4.4.4.1.m1.1b"><apply id="A2.T1.4.4.4.4.1.m1.1.1.cmml" xref="A2.T1.4.4.4.4.1.m1.1.1"><ci id="A2.T1.4.4.4.4.1.m1.1.1.1a.cmml" xref="A2.T1.4.4.4.4.1.m1.1.1.1"><mtext class="ltx_mathvariant_bold" id="A2.T1.4.4.4.4.1.m1.1.1.1.cmml" mathsize="70%" xref="A2.T1.4.4.4.4.1.m1.1.1.1">Lam</mtext></ci></apply></annotation-xml><annotation encoding="application/x-tex" id="A2.T1.4.4.4.4.1.m1.1c">{}_{\text{Lam}}</annotation><annotation encoding="application/x-llamapun" id="A2.T1.4.4.4.4.1.m1.1d">start_FLOATSUBSCRIPT Lam end_FLOATSUBSCRIPT</annotation></semantics></math> <math alttext="\downarrow" class="ltx_Math" display="inline" id="A2.T1.5.5.5.5.2.m2.1"><semantics id="A2.T1.5.5.5.5.2.m2.1a"><mo id="A2.T1.5.5.5.5.2.m2.1.1" stretchy="false" xref="A2.T1.5.5.5.5.2.m2.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="A2.T1.5.5.5.5.2.m2.1b"><ci id="A2.T1.5.5.5.5.2.m2.1.1.cmml" xref="A2.T1.5.5.5.5.2.m2.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="A2.T1.5.5.5.5.2.m2.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="A2.T1.5.5.5.5.2.m2.1d">↓</annotation></semantics></math></span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column" id="A2.T1.6.6.6.6"><span class="ltx_text ltx_font_bold" id="A2.T1.6.6.6.6.1">Accuracy <math alttext="\uparrow" class="ltx_Math" display="inline" id="A2.T1.6.6.6.6.1.m1.1"><semantics id="A2.T1.6.6.6.6.1.m1.1a"><mo id="A2.T1.6.6.6.6.1.m1.1.1" stretchy="false" xref="A2.T1.6.6.6.6.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="A2.T1.6.6.6.6.1.m1.1b"><ci id="A2.T1.6.6.6.6.1.m1.1.1.cmml" xref="A2.T1.6.6.6.6.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="A2.T1.6.6.6.6.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="A2.T1.6.6.6.6.1.m1.1d">↑</annotation></semantics></math></span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column" id="A2.T1.8.8.8.8"><span class="ltx_text ltx_font_bold" id="A2.T1.8.8.8.8.2">PPL<sub class="ltx_sub" id="A2.T1.8.8.8.8.2.1"><span class="ltx_text ltx_font_medium ltx_font_italic" id="A2.T1.8.8.8.8.2.1.1">World</span></sub> <math alttext="\downarrow" class="ltx_Math" display="inline" id="A2.T1.8.8.8.8.2.m2.1"><semantics id="A2.T1.8.8.8.8.2.m2.1a"><mo id="A2.T1.8.8.8.8.2.m2.1.1" stretchy="false" xref="A2.T1.8.8.8.8.2.m2.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="A2.T1.8.8.8.8.2.m2.1b"><ci id="A2.T1.8.8.8.8.2.m2.1.1.cmml" xref="A2.T1.8.8.8.8.2.m2.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="A2.T1.8.8.8.8.2.m2.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="A2.T1.8.8.8.8.2.m2.1d">↓</annotation></semantics></math></span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column" id="A2.T1.10.10.10.10"><span class="ltx_text ltx_font_bold" id="A2.T1.10.10.10.10.2">PPL<sub class="ltx_sub" id="A2.T1.10.10.10.10.2.1"><span class="ltx_text ltx_font_medium ltx_font_italic" id="A2.T1.10.10.10.10.2.1.1">Lam</span></sub> <math alttext="\downarrow" class="ltx_Math" display="inline" id="A2.T1.10.10.10.10.2.m2.1"><semantics id="A2.T1.10.10.10.10.2.m2.1a"><mo id="A2.T1.10.10.10.10.2.m2.1.1" stretchy="false" xref="A2.T1.10.10.10.10.2.m2.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="A2.T1.10.10.10.10.2.m2.1b"><ci id="A2.T1.10.10.10.10.2.m2.1.1.cmml" xref="A2.T1.10.10.10.10.2.m2.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="A2.T1.10.10.10.10.2.m2.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="A2.T1.10.10.10.10.2.m2.1d">↓</annotation></semantics></math></span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A2.T1.10.10.12.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="A2.T1.10.10.12.1.1">169 M</th>
<td class="ltx_td ltx_align_left ltx_border_t" id="A2.T1.10.10.12.1.2">0.60</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A2.T1.10.10.12.1.3">0.34</td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A2.T1.10.10.12.1.4">45.1</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A2.T1.10.10.12.1.5">0.15</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A2.T1.10.10.12.1.6">4.4</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A2.T1.10.10.12.1.7">27.5</td>
</tr>
<tr class="ltx_tr" id="A2.T1.10.10.13.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A2.T1.10.10.13.2.1">430 M</th>
<td class="ltx_td ltx_align_left" id="A2.T1.10.10.13.2.2">0.61</td>
<td class="ltx_td ltx_align_left" id="A2.T1.10.10.13.2.3">0.30</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="A2.T1.10.10.13.2.4">19.6</td>
<td class="ltx_td ltx_align_left" id="A2.T1.10.10.13.2.5">0.18</td>
<td class="ltx_td ltx_align_left" id="A2.T1.10.10.13.2.6">2.9</td>
<td class="ltx_td ltx_align_left" id="A2.T1.10.10.13.2.7">11.2</td>
</tr>
<tr class="ltx_tr" id="A2.T1.10.10.14.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A2.T1.10.10.14.3.1">1.5 B</th>
<td class="ltx_td ltx_align_left" id="A2.T1.10.10.14.3.2">0.62</td>
<td class="ltx_td ltx_align_left" id="A2.T1.10.10.14.3.3">0.28</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="A2.T1.10.10.14.3.4">7.3</td>
<td class="ltx_td ltx_align_left" id="A2.T1.10.10.14.3.5">0.20</td>
<td class="ltx_td ltx_align_left" id="A2.T1.10.10.14.3.6">2.4</td>
<td class="ltx_td ltx_align_left" id="A2.T1.10.10.14.3.7">6.2</td>
</tr>
<tr class="ltx_tr" id="A2.T1.10.10.15.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A2.T1.10.10.15.4.1">3 B</th>
<td class="ltx_td ltx_align_left" id="A2.T1.10.10.15.4.2">0.64</td>
<td class="ltx_td ltx_align_left" id="A2.T1.10.10.15.4.3">0.23</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="A2.T1.10.10.15.4.4">6.2</td>
<td class="ltx_td ltx_align_left" id="A2.T1.10.10.15.4.5">0.14</td>
<td class="ltx_td ltx_align_left" id="A2.T1.10.10.15.4.6">2.0</td>
<td class="ltx_td ltx_align_left" id="A2.T1.10.10.15.4.7">4.8</td>
</tr>
<tr class="ltx_tr" id="A2.T1.10.10.16.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A2.T1.10.10.16.5.1">7 B</th>
<td class="ltx_td ltx_align_left" id="A2.T1.10.10.16.5.2">0.65</td>
<td class="ltx_td ltx_align_left" id="A2.T1.10.10.16.5.3">0.22</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="A2.T1.10.10.16.5.4">5.2</td>
<td class="ltx_td ltx_align_left" id="A2.T1.10.10.16.5.5">0.22</td>
<td class="ltx_td ltx_align_left" id="A2.T1.10.10.16.5.6">2.0</td>
<td class="ltx_td ltx_align_left" id="A2.T1.10.10.16.5.7">4.1</td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 This table presents the results of scaling experiments conducted on RWKV language models of varying sizes (169M, 430M, 1.5B, 3B, and 7B parameters).  The goal was to assess how model size affects performance in a custom Among Us environment.  The table shows the accuracy of each model in the environment, along with its perplexity scores for predicting environmental observations (PPLWorld) and for the standard LAMBADA language modeling benchmark (PPLLAM).  Lower perplexity values indicate better performance.  The results highlight the diminishing returns in performance gains as model size increases beyond a certain point, providing insights into the optimal model size for this specific task.
> <details>
> <summary>read the caption</summary>
> Table 1. Scaling performance for the RWKV base model. PPLWorldWorld{}_{\text{World}}start_FLOATSUBSCRIPT World end_FLOATSUBSCRIPT refers to the perplexity of predicting observation tokens in the environment, which correlates with a model’s ability to understand its environment. PPLLAMLAM{}_{\text{LAM}}start_FLOATSUBSCRIPT LAM end_FLOATSUBSCRIPT refers to the lambada evaluation perplexity.
> </details>





### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2502.06060/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.06060/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.06060/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.06060/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.06060/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.06060/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.06060/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.06060/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.06060/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.06060/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.06060/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.06060/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.06060/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.06060/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}