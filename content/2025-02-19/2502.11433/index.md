---
title: "FLAG-Trader: Fusion LLM-Agent with Gradient-based Reinforcement Learning for Financial Trading"
summary: "FLAG-TRADER fuses LLMs & RL for enhanced financial trading, achieving superior performance compared to traditional methods by efficiently integrating multimodal data and adapting to market dynamics."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["AI Applications", "Finance", "🏢 Harvard University",]
showSummary: true
date: 2025-02-17
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2502.11433 {{< /keyword >}}
{{< keyword icon="writer" >}} Guojun Xiong et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-02-19 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2502.11433" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2502.11433" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2502.11433/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Traditional reinforcement learning (RL) for algorithmic trading faces challenges in handling diverse market data and adapting to changing market conditions.  Manually crafted features and complex feature engineering often lead to biases and information loss, hindering the robustness of real-time decisions. Large Language Models (LLMs), with their ability to process multimodal data, offer significant potential to overcome these limitations.

This paper introduces FLAG-TRADER, a novel framework that integrates LLMs with gradient-based RL for financial trading.  **FLAG-TRADER uses a partially fine-tuned LLM as the policy network**, leveraging its pre-trained knowledge while adapting to the financial domain through parameter-efficient fine-tuning. This **hybrid approach enhances LLM performance in trading** and improves results on other financial tasks.  Extensive experiments demonstrate that FLAG-TRADER consistently outperforms traditional methods across multiple metrics, highlighting the effectiveness of integrating LLMs with RL for financial decision-making. 

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} FLAG-TRADER combines LLMs and RL for improved financial trading. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} The approach outperforms traditional methods and enables smaller LLMs to achieve comparable or better results than larger models. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} The research opens avenues for further investigation in AI and finance, addressing limitations of traditional methods. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper is important because it **demonstrates a novel approach** to financial trading that **combines the power of large language models (LLMs) with reinforcement learning (RL)**. This is a significant contribution because it addresses the limitations of traditional RL methods in financial markets and shows a novel solution by leveraging the strengths of LLMs in processing multimodal data and their ability to capture complex patterns. The findings have the potential to **improve trading strategies**, reduce reliance on manually crafted features, and **open new avenues for research** in both AI and finance.

------
#### Visual Insights



![](https://arxiv.org/html/2502.11433/x1.png)

> 🔼 This figure illustrates the FLAG-TRADER framework, which combines a large language model (LLM) with reinforcement learning for financial trading.  The environment provides the current market state (s<sub>t</sub>). This state, along with the trading task details and the allowed actions, is presented to the LLM as a prompt.  The LLM then determines an action (a<sub>t</sub>), which is executed in the trading environment. The environment provides feedback in the form of a reward (r(s<sub>t</sub>, a<sub>t</sub>)) and updates the system's state to s<sub>t+1</sub>. The LLM’s action likelihood is used in a policy gradient algorithm (like PPO) to iteratively improve trading decisions.  Experience from trading (states, actions, rewards) is stored in a replay buffer to enhance the training process.
> <details>
> <summary>read the caption</summary>
> Figure 1: A high-level overview of our LLM-based reinforcement learning setup for financial trading. The environment provides the current state stsubscript𝑠𝑡s_{t}italic_s start_POSTSUBSCRIPT italic_t end_POSTSUBSCRIPT. A prompt containing task details, the action space, and the current state is fed into the LLM, which outputs a trading action atsubscript𝑎𝑡a_{t}italic_a start_POSTSUBSCRIPT italic_t end_POSTSUBSCRIPT. The action is executed in the environment, yielding a reward r⁢(st,at)𝑟subscript𝑠𝑡subscript𝑎𝑡r(s_{t},a_{t})italic_r ( italic_s start_POSTSUBSCRIPT italic_t end_POSTSUBSCRIPT , italic_a start_POSTSUBSCRIPT italic_t end_POSTSUBSCRIPT ) and next state st+1subscript𝑠𝑡1s_{t+1}italic_s start_POSTSUBSCRIPT italic_t + 1 end_POSTSUBSCRIPT. The log-likelihood logπθ⁡(at|lang⁢(st))subscriptsubscript𝜋𝜃conditionalsubscript𝑎𝑡langsubscript𝑠𝑡\log_{\pi_{\theta}}(a_{t}|\texttt{lang}(s_{t}))roman_log start_POSTSUBSCRIPT italic_π start_POSTSUBSCRIPT italic_θ end_POSTSUBSCRIPT end_POSTSUBSCRIPT ( italic_a start_POSTSUBSCRIPT italic_t end_POSTSUBSCRIPT | lang ( italic_s start_POSTSUBSCRIPT italic_t end_POSTSUBSCRIPT ) ) is then leveraged by a policy gradient method (e.g., PPO), with experience tuples stored in a replay buffer for iterative updates.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S5.T1.12.12">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S5.T1.12.12.13.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_tt" id="S5.T1.12.12.13.1.1"><span class="ltx_text ltx_font_bold" id="S5.T1.12.12.13.1.1.1">Model</span></th>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="4" id="S5.T1.12.12.13.1.2"><span class="ltx_text ltx_font_bold" id="S5.T1.12.12.13.1.2.1">MSFT</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="4" id="S5.T1.12.12.13.1.3"><span class="ltx_text ltx_font_bold" id="S5.T1.12.12.13.1.3.1">JNJ</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="4" id="S5.T1.12.12.13.1.4"><span class="ltx_text ltx_font_bold" id="S5.T1.12.12.13.1.4.1">UVV</span></td>
</tr>
<tr class="ltx_tr" id="S5.T1.12.12.12">
<th class="ltx_td ltx_th ltx_th_row" id="S5.T1.12.12.12.13"></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.1.1.1.1"><span class="ltx_text ltx_font_bold" id="S5.T1.1.1.1.1.1">CR<math alttext="\uparrow" class="ltx_Math" display="inline" id="S5.T1.1.1.1.1.1.m1.1"><semantics id="S5.T1.1.1.1.1.1.m1.1a"><mo id="S5.T1.1.1.1.1.1.m1.1.1" stretchy="false" xref="S5.T1.1.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S5.T1.1.1.1.1.1.m1.1b"><ci id="S5.T1.1.1.1.1.1.m1.1.1.cmml" xref="S5.T1.1.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T1.1.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S5.T1.1.1.1.1.1.m1.1d">↑</annotation></semantics></math></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.2.2.2.2"><span class="ltx_text ltx_font_bold" id="S5.T1.2.2.2.2.1">SR<math alttext="\uparrow" class="ltx_Math" display="inline" id="S5.T1.2.2.2.2.1.m1.1"><semantics id="S5.T1.2.2.2.2.1.m1.1a"><mo id="S5.T1.2.2.2.2.1.m1.1.1" stretchy="false" xref="S5.T1.2.2.2.2.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S5.T1.2.2.2.2.1.m1.1b"><ci id="S5.T1.2.2.2.2.1.m1.1.1.cmml" xref="S5.T1.2.2.2.2.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T1.2.2.2.2.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S5.T1.2.2.2.2.1.m1.1d">↑</annotation></semantics></math></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.3.3.3.3"><span class="ltx_text ltx_font_bold" id="S5.T1.3.3.3.3.1">AV<math alttext="\downarrow" class="ltx_Math" display="inline" id="S5.T1.3.3.3.3.1.m1.1"><semantics id="S5.T1.3.3.3.3.1.m1.1a"><mo id="S5.T1.3.3.3.3.1.m1.1.1" stretchy="false" xref="S5.T1.3.3.3.3.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S5.T1.3.3.3.3.1.m1.1b"><ci id="S5.T1.3.3.3.3.1.m1.1.1.cmml" xref="S5.T1.3.3.3.3.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T1.3.3.3.3.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S5.T1.3.3.3.3.1.m1.1d">↓</annotation></semantics></math></span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T1.4.4.4.4"><span class="ltx_text ltx_font_bold" id="S5.T1.4.4.4.4.1">MDD<math alttext="\downarrow" class="ltx_Math" display="inline" id="S5.T1.4.4.4.4.1.m1.1"><semantics id="S5.T1.4.4.4.4.1.m1.1a"><mo id="S5.T1.4.4.4.4.1.m1.1.1" stretchy="false" xref="S5.T1.4.4.4.4.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S5.T1.4.4.4.4.1.m1.1b"><ci id="S5.T1.4.4.4.4.1.m1.1.1.cmml" xref="S5.T1.4.4.4.4.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T1.4.4.4.4.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S5.T1.4.4.4.4.1.m1.1d">↓</annotation></semantics></math></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.5.5.5.5"><span class="ltx_text ltx_font_bold" id="S5.T1.5.5.5.5.1">CR<math alttext="\uparrow" class="ltx_Math" display="inline" id="S5.T1.5.5.5.5.1.m1.1"><semantics id="S5.T1.5.5.5.5.1.m1.1a"><mo id="S5.T1.5.5.5.5.1.m1.1.1" stretchy="false" xref="S5.T1.5.5.5.5.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S5.T1.5.5.5.5.1.m1.1b"><ci id="S5.T1.5.5.5.5.1.m1.1.1.cmml" xref="S5.T1.5.5.5.5.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T1.5.5.5.5.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S5.T1.5.5.5.5.1.m1.1d">↑</annotation></semantics></math></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.6.6.6.6"><span class="ltx_text ltx_font_bold" id="S5.T1.6.6.6.6.1">SR<math alttext="\uparrow" class="ltx_Math" display="inline" id="S5.T1.6.6.6.6.1.m1.1"><semantics id="S5.T1.6.6.6.6.1.m1.1a"><mo id="S5.T1.6.6.6.6.1.m1.1.1" stretchy="false" xref="S5.T1.6.6.6.6.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S5.T1.6.6.6.6.1.m1.1b"><ci id="S5.T1.6.6.6.6.1.m1.1.1.cmml" xref="S5.T1.6.6.6.6.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T1.6.6.6.6.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S5.T1.6.6.6.6.1.m1.1d">↑</annotation></semantics></math></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.7.7.7.7"><span class="ltx_text ltx_font_bold" id="S5.T1.7.7.7.7.1">AV<math alttext="\downarrow" class="ltx_Math" display="inline" id="S5.T1.7.7.7.7.1.m1.1"><semantics id="S5.T1.7.7.7.7.1.m1.1a"><mo id="S5.T1.7.7.7.7.1.m1.1.1" stretchy="false" xref="S5.T1.7.7.7.7.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S5.T1.7.7.7.7.1.m1.1b"><ci id="S5.T1.7.7.7.7.1.m1.1.1.cmml" xref="S5.T1.7.7.7.7.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T1.7.7.7.7.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S5.T1.7.7.7.7.1.m1.1d">↓</annotation></semantics></math></span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T1.8.8.8.8"><span class="ltx_text ltx_font_bold" id="S5.T1.8.8.8.8.1">MDD<math alttext="\downarrow" class="ltx_Math" display="inline" id="S5.T1.8.8.8.8.1.m1.1"><semantics id="S5.T1.8.8.8.8.1.m1.1a"><mo id="S5.T1.8.8.8.8.1.m1.1.1" stretchy="false" xref="S5.T1.8.8.8.8.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S5.T1.8.8.8.8.1.m1.1b"><ci id="S5.T1.8.8.8.8.1.m1.1.1.cmml" xref="S5.T1.8.8.8.8.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T1.8.8.8.8.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S5.T1.8.8.8.8.1.m1.1d">↓</annotation></semantics></math></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.9.9.9.9"><span class="ltx_text ltx_font_bold" id="S5.T1.9.9.9.9.1">CR<math alttext="\uparrow" class="ltx_Math" display="inline" id="S5.T1.9.9.9.9.1.m1.1"><semantics id="S5.T1.9.9.9.9.1.m1.1a"><mo id="S5.T1.9.9.9.9.1.m1.1.1" stretchy="false" xref="S5.T1.9.9.9.9.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S5.T1.9.9.9.9.1.m1.1b"><ci id="S5.T1.9.9.9.9.1.m1.1.1.cmml" xref="S5.T1.9.9.9.9.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T1.9.9.9.9.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S5.T1.9.9.9.9.1.m1.1d">↑</annotation></semantics></math></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.10.10.10.10"><span class="ltx_text ltx_font_bold" id="S5.T1.10.10.10.10.1">SR<math alttext="\uparrow" class="ltx_Math" display="inline" id="S5.T1.10.10.10.10.1.m1.1"><semantics id="S5.T1.10.10.10.10.1.m1.1a"><mo id="S5.T1.10.10.10.10.1.m1.1.1" stretchy="false" xref="S5.T1.10.10.10.10.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S5.T1.10.10.10.10.1.m1.1b"><ci id="S5.T1.10.10.10.10.1.m1.1.1.cmml" xref="S5.T1.10.10.10.10.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T1.10.10.10.10.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S5.T1.10.10.10.10.1.m1.1d">↑</annotation></semantics></math></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.11.11.11.11"><span class="ltx_text ltx_font_bold" id="S5.T1.11.11.11.11.1">AV<math alttext="\downarrow" class="ltx_Math" display="inline" id="S5.T1.11.11.11.11.1.m1.1"><semantics id="S5.T1.11.11.11.11.1.m1.1a"><mo id="S5.T1.11.11.11.11.1.m1.1.1" stretchy="false" xref="S5.T1.11.11.11.11.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S5.T1.11.11.11.11.1.m1.1b"><ci id="S5.T1.11.11.11.11.1.m1.1.1.cmml" xref="S5.T1.11.11.11.11.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T1.11.11.11.11.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S5.T1.11.11.11.11.1.m1.1d">↓</annotation></semantics></math></span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_t" id="S5.T1.12.12.12.12"><span class="ltx_text ltx_font_bold" id="S5.T1.12.12.12.12.1">MDD<math alttext="\downarrow" class="ltx_Math" display="inline" id="S5.T1.12.12.12.12.1.m1.1"><semantics id="S5.T1.12.12.12.12.1.m1.1a"><mo id="S5.T1.12.12.12.12.1.m1.1.1" stretchy="false" xref="S5.T1.12.12.12.12.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S5.T1.12.12.12.12.1.m1.1b"><ci id="S5.T1.12.12.12.12.1.m1.1.1.cmml" xref="S5.T1.12.12.12.12.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T1.12.12.12.12.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S5.T1.12.12.12.12.1.m1.1d">↓</annotation></semantics></math></span></td>
</tr>
<tr class="ltx_tr" id="S5.T1.12.12.14.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S5.T1.12.12.14.2.1"><span class="ltx_text ltx_font_bold" id="S5.T1.12.12.14.2.1.1">Buy &amp; Hold</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.12.12.14.2.2">15.340</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.12.12.14.2.3">1.039</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.12.12.14.2.4">24.980</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T1.12.12.14.2.5">9.428</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.12.12.14.2.6">13.895</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.12.12.14.2.7">1.343</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.12.12.14.2.8">17.500</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T1.12.12.14.2.9">9.847</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.12.12.14.2.10">36.583</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.12.12.14.2.11">2.112</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.12.12.14.2.12">29.299</td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_t" id="S5.T1.12.12.14.2.13">15.406</td>
</tr>
<tr class="ltx_tr" id="S5.T1.12.12.15.3">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" colspan="13" id="S5.T1.12.12.15.3.1"><span class="ltx_text ltx_font_bold ltx_font_italic" id="S5.T1.12.12.15.3.1.1">Financial Domain Models</span></th>
</tr>
<tr class="ltx_tr" id="S5.T1.12.12.16.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T1.12.12.16.4.1"><span class="ltx_text ltx_font_bold" id="S5.T1.12.12.16.4.1.1">Palmyra-Fin-70B</span></th>
<td class="ltx_td ltx_align_center" id="S5.T1.12.12.16.4.2">14.697</td>
<td class="ltx_td ltx_align_center" id="S5.T1.12.12.16.4.3">0.897</td>
<td class="ltx_td ltx_align_center" id="S5.T1.12.12.16.4.4">27.518</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T1.12.12.16.4.5">9.428</td>
<td class="ltx_td ltx_align_center" id="S5.T1.12.12.16.4.6">5.748</td>
<td class="ltx_td ltx_align_center" id="S5.T1.12.12.16.4.7">0.450</td>
<td class="ltx_td ltx_align_center" id="S5.T1.12.12.16.4.8">19.317</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T1.12.12.16.4.9">9.367</td>
<td class="ltx_td ltx_align_center" id="S5.T1.12.12.16.4.10">37.875</td>
<td class="ltx_td ltx_align_center" id="S5.T1.12.12.16.4.11">2.039</td>
<td class="ltx_td ltx_align_center" id="S5.T1.12.12.16.4.12">31.200</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T1.12.12.16.4.13">15.967</td>
</tr>
<tr class="ltx_tr" id="S5.T1.12.12.17.5">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" colspan="13" id="S5.T1.12.12.17.5.1"><span class="ltx_text ltx_font_bold ltx_font_italic" id="S5.T1.12.12.17.5.1.1">Proprietary Models</span></th>
</tr>
<tr class="ltx_tr" id="S5.T1.12.12.18.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T1.12.12.18.6.1"><span class="ltx_text ltx_font_bold" id="S5.T1.12.12.18.6.1.1">GPT-o1-preview</span></th>
<td class="ltx_td ltx_align_center" id="S5.T1.12.12.18.6.2">17.184</td>
<td class="ltx_td ltx_align_center" id="S5.T1.12.12.18.6.3">0.962</td>
<td class="ltx_td ltx_align_center" id="S5.T1.12.12.18.6.4">30.000</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T1.12.12.18.6.5">9.428</td>
<td class="ltx_td ltx_align_center" id="S5.T1.12.12.18.6.6">13.561</td>
<td class="ltx_td ltx_align_center" id="S5.T1.12.12.18.6.7">1.086</td>
<td class="ltx_td ltx_align_center" id="S5.T1.12.12.18.6.8">20.864</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T1.12.12.18.6.9">9.847</td>
<td class="ltx_td ltx_align_center" id="S5.T1.12.12.18.6.10">41.508</td>
<td class="ltx_td ltx_align_center" id="S5.T1.12.12.18.6.11">2.147</td>
<td class="ltx_td ltx_align_center" id="S5.T1.12.12.18.6.12">32.479</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T1.12.12.18.6.13">9.633</td>
</tr>
<tr class="ltx_tr" id="S5.T1.12.12.19.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T1.12.12.19.7.1"><span class="ltx_text ltx_font_bold" id="S5.T1.12.12.19.7.1.1">GPT-4</span></th>
<td class="ltx_td ltx_align_center" id="S5.T1.12.12.19.7.2">16.654</td>
<td class="ltx_td ltx_align_center" id="S5.T1.12.12.19.7.3">0.932</td>
<td class="ltx_td ltx_align_center" id="S5.T1.12.12.19.7.4">30.022</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T1.12.12.19.7.5">9.428</td>
<td class="ltx_td ltx_align_center" id="S5.T1.12.12.19.7.6">13.712</td>
<td class="ltx_td ltx_align_center" id="S5.T1.12.12.19.7.7">1.103</td>
<td class="ltx_td ltx_align_center" id="S5.T1.12.12.19.7.8">20.894</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T1.12.12.19.7.9">9.860</td>
<td class="ltx_td ltx_align_center" id="S5.T1.12.12.19.7.10">31.791</td>
<td class="ltx_td ltx_align_center" id="S5.T1.12.12.19.7.11">1.640</td>
<td class="ltx_td ltx_align_center" id="S5.T1.12.12.19.7.12">32.567</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T1.12.12.19.7.13">10.434</td>
</tr>
<tr class="ltx_tr" id="S5.T1.12.12.20.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T1.12.12.20.8.1"><span class="ltx_text ltx_font_bold" id="S5.T1.12.12.20.8.1.1">GPT-4o</span></th>
<td class="ltx_td ltx_align_center" id="S5.T1.12.12.20.8.2">12.461</td>
<td class="ltx_td ltx_align_center" id="S5.T1.12.12.20.8.3">0.924</td>
<td class="ltx_td ltx_align_center" id="S5.T1.12.12.20.8.4">22.653</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T1.12.12.20.8.5">6.647</td>
<td class="ltx_td ltx_align_center" id="S5.T1.12.12.20.8.6">9.099</td>
<td class="ltx_td ltx_align_center" id="S5.T1.12.12.20.8.7">0.875</td>
<td class="ltx_td ltx_align_center" id="S5.T1.12.12.20.8.8">17.471</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T1.12.12.20.8.9">7.169</td>
<td class="ltx_td ltx_align_center" id="S5.T1.12.12.20.8.10">8.043</td>
<td class="ltx_td ltx_align_center" id="S5.T1.12.12.20.8.11">0.496</td>
<td class="ltx_td ltx_align_center" id="S5.T1.12.12.20.8.12">27.241</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T1.12.12.20.8.13">14.889</td>
</tr>
<tr class="ltx_tr" id="S5.T1.12.12.21.9">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" colspan="13" id="S5.T1.12.12.21.9.1"><span class="ltx_text ltx_font_bold ltx_font_italic" id="S5.T1.12.12.21.9.1.1">Open-Source Models</span></th>
</tr>
<tr class="ltx_tr" id="S5.T1.12.12.22.10">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T1.12.12.22.10.1"><span class="ltx_text ltx_font_bold" id="S5.T1.12.12.22.10.1.1">Qwen2.5-72B-Instruct</span></th>
<td class="ltx_td ltx_align_center" id="S5.T1.12.12.22.10.2">7.421</td>
<td class="ltx_td ltx_align_center" id="S5.T1.12.12.22.10.3">0.588</td>
<td class="ltx_td ltx_align_center" id="S5.T1.12.12.22.10.4">21.238</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T1.12.12.22.10.5">6.973</td>
<td class="ltx_td ltx_align_center" id="S5.T1.12.12.22.10.6">14.353</td>
<td class="ltx_td ltx_align_center" id="S5.T1.12.12.22.10.7">1.140</td>
<td class="ltx_td ltx_align_center" id="S5.T1.12.12.22.10.8">20.995</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T1.12.12.22.10.9">9.812</td>
<td class="ltx_td ltx_align_center" id="S5.T1.12.12.22.10.10">37.178</td>
<td class="ltx_td ltx_align_center" id="S5.T1.12.12.22.10.11">1.822</td>
<td class="ltx_td ltx_align_center" id="S5.T1.12.12.22.10.12">34.223</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T1.12.12.22.10.13">13.365</td>
</tr>
<tr class="ltx_tr" id="S5.T1.12.12.23.11">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T1.12.12.23.11.1"><span class="ltx_text ltx_font_bold" id="S5.T1.12.12.23.11.1.1">Llama-3.1-70B-Instruct</span></th>
<td class="ltx_td ltx_align_center" id="S5.T1.12.12.23.11.2">17.396</td>
<td class="ltx_td ltx_align_center" id="S5.T1.12.12.23.11.3">1.335</td>
<td class="ltx_td ltx_align_center" id="S5.T1.12.12.23.11.4">21.892</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T1.12.12.23.11.5">7.045</td>
<td class="ltx_td ltx_align_center" id="S5.T1.12.12.23.11.6">13.868</td>
<td class="ltx_td ltx_align_center" id="S5.T1.12.12.23.11.7">1.121</td>
<td class="ltx_td ltx_align_center" id="S5.T1.12.12.23.11.8">20.779</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T1.12.12.23.11.9">9.825</td>
<td class="ltx_td ltx_align_center" id="S5.T1.12.12.23.11.10">35.981</td>
<td class="ltx_td ltx_align_center" id="S5.T1.12.12.23.11.11">1.728</td>
<td class="ltx_td ltx_align_center" id="S5.T1.12.12.23.11.12">34.986</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T1.12.12.23.11.13">15.406</td>
</tr>
<tr class="ltx_tr" id="S5.T1.12.12.24.12">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T1.12.12.24.12.1"><span class="ltx_text ltx_font_bold" id="S5.T1.12.12.24.12.1.1">DeepSeek-67B-Chat</span></th>
<td class="ltx_td ltx_align_center" id="S5.T1.12.12.24.12.2">13.941</td>
<td class="ltx_td ltx_align_center" id="S5.T1.12.12.24.12.3">0.834</td>
<td class="ltx_td ltx_align_center" id="S5.T1.12.12.24.12.4">28.081</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T1.12.12.24.12.5">7.850</td>
<td class="ltx_td ltx_align_center" id="S5.T1.12.12.24.12.6">14.426</td>
<td class="ltx_td ltx_align_center" id="S5.T1.12.12.24.12.7">1.185</td>
<td class="ltx_td ltx_align_center" id="S5.T1.12.12.24.12.8">20.450</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T1.12.12.24.12.9">9.825</td>
<td class="ltx_td ltx_align_center" id="S5.T1.12.12.24.12.10">29.940</td>
<td class="ltx_td ltx_align_center" id="S5.T1.12.12.24.12.11">1.481</td>
<td class="ltx_td ltx_align_center" id="S5.T1.12.12.24.12.12">33.964</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T1.12.12.24.12.13">15.407</td>
</tr>
<tr class="ltx_tr" id="S5.T1.12.12.25.13">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T1.12.12.25.13.1"><span class="ltx_text ltx_font_bold" id="S5.T1.12.12.25.13.1.1">Yi-1.5-34B-Chat</span></th>
<td class="ltx_td ltx_align_center" id="S5.T1.12.12.25.13.2">22.093</td>
<td class="ltx_td ltx_align_center" id="S5.T1.12.12.25.13.3">1.253</td>
<td class="ltx_td ltx_align_center" id="S5.T1.12.12.25.13.4">29.613</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T1.12.12.25.13.5">9.428</td>
<td class="ltx_td ltx_align_center" id="S5.T1.12.12.25.13.6">14.004</td>
<td class="ltx_td ltx_align_center" id="S5.T1.12.12.25.13.7">1.180</td>
<td class="ltx_td ltx_align_center" id="S5.T1.12.12.25.13.8">19.938</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T1.12.12.25.13.9">9.847</td>
<td class="ltx_td ltx_align_center" id="S5.T1.12.12.25.13.10">20.889</td>
<td class="ltx_td ltx_align_center" id="S5.T1.12.12.25.13.11">1.020</td>
<td class="ltx_td ltx_align_center" id="S5.T1.12.12.25.13.12">34.417</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T1.12.12.25.13.13">14.936</td>
</tr>
<tr class="ltx_tr" id="S5.T1.12.12.26.14">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T1.12.12.26.14.1"><span class="ltx_text ltx_font_bold" id="S5.T1.12.12.26.14.1.1">Qwen2.5-32B-Instruct</span></th>
<td class="ltx_td ltx_align_center" id="S5.T1.12.12.26.14.2">-0.557</td>
<td class="ltx_td ltx_align_center" id="S5.T1.12.12.26.14.3">-0.041</td>
<td class="ltx_td ltx_align_center" id="S5.T1.12.12.26.14.4">22.893</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T1.12.12.26.14.5">8.946</td>
<td class="ltx_td ltx_align_center" id="S5.T1.12.12.26.14.6">2.905</td>
<td class="ltx_td ltx_align_center" id="S5.T1.12.12.26.14.7">0.292</td>
<td class="ltx_td ltx_align_center" id="S5.T1.12.12.26.14.8">16.725</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T1.12.12.26.14.9">7.169</td>
<td class="ltx_td ltx_align_center" id="S5.T1.12.12.26.14.10">-1.623</td>
<td class="ltx_td ltx_align_center" id="S5.T1.12.12.26.14.11">-0.097</td>
<td class="ltx_td ltx_align_center" id="S5.T1.12.12.26.14.12">27.973</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T1.12.12.26.14.13">17.986</td>
</tr>
<tr class="ltx_tr" id="S5.T1.12.12.27.15">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T1.12.12.27.15.1"><span class="ltx_text ltx_font_bold" id="S5.T1.12.12.27.15.1.1">DeepSeek-V2-Lite (15.7B)</span></th>
<td class="ltx_td ltx_align_center" id="S5.T1.12.12.27.15.2">11.904</td>
<td class="ltx_td ltx_align_center" id="S5.T1.12.12.27.15.3">0.694</td>
<td class="ltx_td ltx_align_center" id="S5.T1.12.12.27.15.4">28.796</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T1.12.12.27.15.5">16.094</td>
<td class="ltx_td ltx_align_center" id="S5.T1.12.12.27.15.6">-7.482</td>
<td class="ltx_td ltx_align_center" id="S5.T1.12.12.27.15.7">-0.670</td>
<td class="ltx_td ltx_align_center" id="S5.T1.12.12.27.15.8">18.773</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T1.12.12.27.15.9">17.806</td>
<td class="ltx_td ltx_align_center" id="S5.T1.12.12.27.15.10">33.560</td>
<td class="ltx_td ltx_align_center" id="S5.T1.12.12.27.15.11">1.703</td>
<td class="ltx_td ltx_align_center" id="S5.T1.12.12.27.15.12">33.099</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T1.12.12.27.15.13">12.984</td>
</tr>
<tr class="ltx_tr" id="S5.T1.12.12.28.16">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T1.12.12.28.16.1"><span class="ltx_text ltx_font_bold" id="S5.T1.12.12.28.16.1.1">Yi-1.5-9B-Chat</span></th>
<td class="ltx_td ltx_align_center" id="S5.T1.12.12.28.16.2">19.333</td>
<td class="ltx_td ltx_align_center" id="S5.T1.12.12.28.16.3">1.094</td>
<td class="ltx_td ltx_align_center" id="S5.T1.12.12.28.16.4">29.690</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T1.12.12.28.16.5">9.428</td>
<td class="ltx_td ltx_align_center" id="S5.T1.12.12.28.16.6">18.606</td>
<td class="ltx_td ltx_align_center" id="S5.T1.12.12.28.16.7">1.611</td>
<td class="ltx_td ltx_align_center" id="S5.T1.12.12.28.16.8">19.409</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T1.12.12.28.16.9">10.986</td>
<td class="ltx_td ltx_align_center" id="S5.T1.12.12.28.16.10">49.415</td>
<td class="ltx_td ltx_align_center" id="S5.T1.12.12.28.16.11">2.410</td>
<td class="ltx_td ltx_align_center" id="S5.T1.12.12.28.16.12">34.446</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T1.12.12.28.16.13">11.430</td>
</tr>
<tr class="ltx_tr" id="S5.T1.12.12.29.17">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T1.12.12.29.17.1"><span class="ltx_text ltx_font_bold" id="S5.T1.12.12.29.17.1.1">Llama-3.1-8B-Instruct</span></th>
<td class="ltx_td ltx_align_center" id="S5.T1.12.12.29.17.2">22.703</td>
<td class="ltx_td ltx_align_center" id="S5.T1.12.12.29.17.3">1.322</td>
<td class="ltx_td ltx_align_center" id="S5.T1.12.12.29.17.4">28.855</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T1.12.12.29.17.5">7.385</td>
<td class="ltx_td ltx_align_center" id="S5.T1.12.12.29.17.6">13.988</td>
<td class="ltx_td ltx_align_center" id="S5.T1.12.12.29.17.7">1.486</td>
<td class="ltx_td ltx_align_center" id="S5.T1.12.12.29.17.8">20.460</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T1.12.12.29.17.9">9.969</td>
<td class="ltx_td ltx_align_center" id="S5.T1.12.12.29.17.10">41.108</td>
<td class="ltx_td ltx_align_center" id="S5.T1.12.12.29.17.11">1.981</td>
<td class="ltx_td ltx_align_center" id="S5.T1.12.12.29.17.12">34.866</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T1.12.12.29.17.13">16.429</td>
</tr>
<tr class="ltx_tr" id="S5.T1.12.12.30.18">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T1.12.12.30.18.1"><span class="ltx_text ltx_font_bold" id="S5.T1.12.12.30.18.1.1">Qwen-2.5-Instruct-7B</span></th>
<td class="ltx_td ltx_align_center" id="S5.T1.12.12.30.18.2">-10.305</td>
<td class="ltx_td ltx_align_center" id="S5.T1.12.12.30.18.3">-0.724</td>
<td class="ltx_td ltx_align_center" id="S5.T1.12.12.30.18.4">23.937</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T1.12.12.30.18.5">23.371</td>
<td class="ltx_td ltx_align_center" id="S5.T1.12.12.30.18.6">21.852</td>
<td class="ltx_td ltx_align_center" id="S5.T1.12.12.30.18.7">0.980</td>
<td class="ltx_td ltx_align_center" id="S5.T1.12.12.30.18.8">37.425</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T1.12.12.30.18.9">9.573</td>
<td class="ltx_td ltx_align_center" id="S5.T1.12.12.30.18.10">11.752</td>
<td class="ltx_td ltx_align_center" id="S5.T1.12.12.30.18.11">0.853</td>
<td class="ltx_td ltx_align_center" id="S5.T1.12.12.30.18.12">22.988</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T1.12.12.30.18.13">15.451</td>
</tr>
<tr class="ltx_tr" id="S5.T1.12.12.31.19">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" colspan="13" id="S5.T1.12.12.31.19.1"><span class="ltx_text ltx_font_bold ltx_font_italic" id="S5.T1.12.12.31.19.1.1">FLAG-TRADER</span></th>
</tr>
<tr class="ltx_tr" id="S5.T1.12.12.32.20">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S5.T1.12.12.32.20.1"><span class="ltx_text ltx_font_bold" id="S5.T1.12.12.32.20.1.1">SmolLM2-135M-Instruct</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T1.12.12.32.20.2">20.106</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T1.12.12.32.20.3">1.373</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T1.12.12.32.20.4">24.932</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S5.T1.12.12.32.20.5">9.428</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T1.12.12.32.20.6">33.724</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T1.12.12.32.20.7">3.344</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T1.12.12.32.20.8">17.174</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S5.T1.12.12.32.20.9">9.320</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T1.12.12.32.20.10">46.799</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T1.12.12.32.20.11">1.463</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T1.12.12.32.20.12">67.758</td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_bb" id="S5.T1.12.12.32.20.13">35.039</td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 This table presents the performance comparison of various Large Language Models (LLMs) used as the backbone in a financial stock trading strategy.  Seven different stocks (MSFT, JNJ, UVV, HON, TSLA, BTC, and a Buy & Hold strategy) are evaluated using four key metrics: Cumulative Return (CR), Sharpe Ratio (SR), Annualized Volatility (AV), and Maximum Drawdown (MDD).  The results demonstrate the relative effectiveness of different LLMs in achieving profitable and stable trading performance across these diverse assets.  The models are categorized into financial domain models, proprietary models, and open-source models to illustrate the performance differences between model types.
> <details>
> <summary>read the caption</summary>
> Table 1: Performance of stock trading with different LLMs as backbone model across seven stocks.
> </details>





### In-depth insights


#### LLM-RL Fusion
LLM-RL fusion represents a significant advancement in AI, particularly within the context of complex sequential decision-making tasks like financial trading.  The core idea is to leverage the strengths of both Large Language Models (LLMs) and Reinforcement Learning (RL): LLMs provide powerful multimodal reasoning and feature extraction capabilities from diverse data sources, while RL optimizes agent behavior through reward-driven learning. **This synergy addresses key limitations of traditional RL approaches in finance**, which often struggle with multimodal data integration and non-stationary market dynamics. By using an LLM as a policy network, the model benefits from pre-trained knowledge while fine-tuning to the specific financial domain.  **Parameter-efficient fine-tuning is crucial for efficiency and preventing catastrophic forgetting**.  The RL component, typically implemented using algorithms like PPO, guides the LLM to refine its decision-making process by directly optimizing for trading performance, maximizing cumulative returns, and mitigating risks. However, challenges remain. **Computational costs can be high**, especially with large LLMs, and careful consideration is needed for prompt design and handling non-stationary data.  Future research should focus on improving efficiency, robustness, and incorporating explicit risk management into the optimization process.  **The fusion model shows immense promise**, particularly in areas beyond finance, where complex sequential decisions must be made from diverse, often unstructured, input data.

#### Prompt Engineering
Prompt engineering plays a crucial role in leveraging LLMs for financial trading, as highlighted in the research.  **Effective prompt design is vital for guiding the LLM to generate accurate and actionable trading decisions.** The paper emphasizes the importance of structured prompts that encapsulate essential elements such as task descriptions, action spaces, and current market states.  **A well-crafted prompt ensures that the LLM receives comprehensive input, enabling informed and contextually relevant output.** The research showcases how parameter-efficient fine-tuning, combined with meticulous prompt engineering, enhances LLM performance in financial trading tasks, surpassing even larger proprietary models.  **The emphasis on structured prompts and the careful selection of information to include/exclude within the prompts highlights the need for further investigation into this aspect of using LLMs in finance.** This is crucial because the quality of the prompt directly influences the LLM's reasoning capabilities and significantly impacts the final trading decisions.  Future research might explore advanced prompt techniques, such as chain-of-thought prompting, to further improve the decision-making abilities of LLMs in this complex domain.  **Optimizing prompt design is therefore essential for maximizing the benefits of this technology in the financial sector.**

#### Parameter Efficiency
Parameter efficiency is crucial in large language model (LLM) adaptation for financial trading, as it addresses the computational cost challenges of fine-tuning massive models.  **FLAG-TRADER achieves this by employing a partial fine-tuning strategy**, focusing on updating only a subset of the LLM's parameters instead of the entire model. This approach retains the pre-trained knowledge while enabling domain adaptation to financial tasks.  The **parameter-efficient fine-tuning module jointly encodes temporal market data and textual information**, improving model performance on various financial tasks.  **By carefully balancing domain adaptation and knowledge retention**, FLAG-TRADER manages computational cost without sacrificing accuracy, making it suitable for real-time trading applications where computational efficiency is vital.  The effectiveness of this approach is demonstrated by achieving superior trading results, surpassing even larger proprietary models.

#### Financial Trading RL
Reinforcement learning (RL) has emerged as a powerful technique for algorithmic financial trading, offering the potential to optimize trading strategies in complex and dynamic market environments.  **Traditional RL approaches, however, often struggle with the multifaceted nature of financial data**, encompassing time series, textual sentiment, and various other market signals.  They also suffer from limitations in handling non-stationary data distributions and the need for manual feature engineering, which can introduce subjective bias.  **The integration of large language models (LLMs) presents a significant opportunity to overcome these challenges.** LLMs excel at processing multimodal data and understanding contextual information, while RL provides the mechanism for adaptive decision-making based on rewards.  A key area of focus is developing effective methods for combining the strengths of both, potentially through techniques like parameter-efficient fine-tuning of LLMs for the financial domain, thus balancing knowledge retention and adaptation. **Further research should focus on addressing the computational cost of such hybrid models and improving their robustness to market volatility and non-stationarity**, exploring techniques such as continual learning or risk-sensitive optimization. The integration of LLMs and RL in financial trading represents a promising frontier with the potential for significant advancements in automated trading strategies.

#### Future Directions
Future research should prioritize **reducing the computational cost** of FLAG-TRADER, especially when dealing with large-scale market data.  **Addressing the non-stationarity** of financial markets through continual learning or meta-learning is crucial for long-term generalization.  Prompt engineering techniques need improvement to mitigate biases and enhance robustness.  Finally, incorporating **explicit risk management** into the framework will significantly enhance its practicality and suitability for real-world financial applications.  Exploring alternative state representations beyond structured text prompts could also improve efficiency and accuracy.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2502.11433/x2.png)

> 🔼 FLAG-TRADER uses an LLM as its core, splitting it into frozen base layers (retaining pre-trained knowledge) and trainable top layers (adapted for finance).  Both a policy network (for choosing actions) and a value network (for estimating future value) use these trainable layers, but each has its own separate head which is updated during training using a policy gradient method.  This architecture allows for efficient fine-tuning of the LLM for the financial trading task.
> <details>
> <summary>read the caption</summary>
> Figure 2: The FLAG-Trader pipeline for financial trading, utilizing an LLM-based actor-critic architecture. The LLM consists of frozen base layers θfrozensubscript𝜃frozen\theta_{\texttt{frozen}}italic_θ start_POSTSUBSCRIPT frozen end_POSTSUBSCRIPT that retain pre-trained knowledge and trainable top layers θtrainsubscript𝜃train\theta_{\texttt{train}}italic_θ start_POSTSUBSCRIPT train end_POSTSUBSCRIPT for financial decision-making. Both the Policy_Net and Value_Net share these trainable layers while maintaining separate policy head θPsubscript𝜃𝑃\theta_{P}italic_θ start_POSTSUBSCRIPT italic_P end_POSTSUBSCRIPT and value head θVsubscript𝜃𝑉\theta_{V}italic_θ start_POSTSUBSCRIPT italic_V end_POSTSUBSCRIPT, which are updated by policy gradient method.
> </details>



![](https://arxiv.org/html/2502.11433/x3.png)

> 🔼 This figure shows the structure of the prompt used as input to the LLM in the FLAG-TRADER model.  The prompt is designed to be comprehensive and unambiguous, providing all the necessary information for the model to make informed trading decisions. It includes four key parts: 1) a clear description of the trading task, stating the overall objective; 2) a definition of the permissible actions (buy, sell, or hold); 3) a detailed description of the current market state, including historical prices, account status, cash balance, asset position, and other relevant indicators; and 4) instructions on the expected format of the output (a JSON specifying the action to take). The example provided illustrates the prompt's structure in the context of stock trading.
> <details>
> <summary>read the caption</summary>
> Figure 3: The format of input prompt. It contains the task description, the legible action set, the current state description, and the output action format.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S5.T2.12.12">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S5.T2.12.12.13.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_tt" id="S5.T2.12.12.13.1.1"><span class="ltx_text ltx_font_bold" id="S5.T2.12.12.13.1.1.1">Model</span></th>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="4" id="S5.T2.12.12.13.1.2"><span class="ltx_text ltx_font_bold" id="S5.T2.12.12.13.1.2.1">HON</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="4" id="S5.T2.12.12.13.1.3"><span class="ltx_text ltx_font_bold" id="S5.T2.12.12.13.1.3.1">TSLA</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="4" id="S5.T2.12.12.13.1.4"><span class="ltx_text ltx_font_bold" id="S5.T2.12.12.13.1.4.1">BTC</span></td>
</tr>
<tr class="ltx_tr" id="S5.T2.12.12.12">
<th class="ltx_td ltx_th ltx_th_row" id="S5.T2.12.12.12.13"></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.1.1.1.1"><span class="ltx_text ltx_font_bold" id="S5.T2.1.1.1.1.1">CR<math alttext="\uparrow" class="ltx_Math" display="inline" id="S5.T2.1.1.1.1.1.m1.1"><semantics id="S5.T2.1.1.1.1.1.m1.1a"><mo id="S5.T2.1.1.1.1.1.m1.1.1" stretchy="false" xref="S5.T2.1.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S5.T2.1.1.1.1.1.m1.1b"><ci id="S5.T2.1.1.1.1.1.m1.1.1.cmml" xref="S5.T2.1.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T2.1.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S5.T2.1.1.1.1.1.m1.1d">↑</annotation></semantics></math></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.2.2.2.2"><span class="ltx_text ltx_font_bold" id="S5.T2.2.2.2.2.1">SR<math alttext="\uparrow" class="ltx_Math" display="inline" id="S5.T2.2.2.2.2.1.m1.1"><semantics id="S5.T2.2.2.2.2.1.m1.1a"><mo id="S5.T2.2.2.2.2.1.m1.1.1" stretchy="false" xref="S5.T2.2.2.2.2.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S5.T2.2.2.2.2.1.m1.1b"><ci id="S5.T2.2.2.2.2.1.m1.1.1.cmml" xref="S5.T2.2.2.2.2.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T2.2.2.2.2.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S5.T2.2.2.2.2.1.m1.1d">↑</annotation></semantics></math></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.3.3.3.3"><span class="ltx_text ltx_font_bold" id="S5.T2.3.3.3.3.1">AV<math alttext="\downarrow" class="ltx_Math" display="inline" id="S5.T2.3.3.3.3.1.m1.1"><semantics id="S5.T2.3.3.3.3.1.m1.1a"><mo id="S5.T2.3.3.3.3.1.m1.1.1" stretchy="false" xref="S5.T2.3.3.3.3.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S5.T2.3.3.3.3.1.m1.1b"><ci id="S5.T2.3.3.3.3.1.m1.1.1.cmml" xref="S5.T2.3.3.3.3.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T2.3.3.3.3.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S5.T2.3.3.3.3.1.m1.1d">↓</annotation></semantics></math></span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T2.4.4.4.4"><span class="ltx_text ltx_font_bold" id="S5.T2.4.4.4.4.1">MDD<math alttext="\downarrow" class="ltx_Math" display="inline" id="S5.T2.4.4.4.4.1.m1.1"><semantics id="S5.T2.4.4.4.4.1.m1.1a"><mo id="S5.T2.4.4.4.4.1.m1.1.1" stretchy="false" xref="S5.T2.4.4.4.4.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S5.T2.4.4.4.4.1.m1.1b"><ci id="S5.T2.4.4.4.4.1.m1.1.1.cmml" xref="S5.T2.4.4.4.4.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T2.4.4.4.4.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S5.T2.4.4.4.4.1.m1.1d">↓</annotation></semantics></math></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.5.5.5.5"><span class="ltx_text ltx_font_bold" id="S5.T2.5.5.5.5.1">CR<math alttext="\uparrow" class="ltx_Math" display="inline" id="S5.T2.5.5.5.5.1.m1.1"><semantics id="S5.T2.5.5.5.5.1.m1.1a"><mo id="S5.T2.5.5.5.5.1.m1.1.1" stretchy="false" xref="S5.T2.5.5.5.5.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S5.T2.5.5.5.5.1.m1.1b"><ci id="S5.T2.5.5.5.5.1.m1.1.1.cmml" xref="S5.T2.5.5.5.5.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T2.5.5.5.5.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S5.T2.5.5.5.5.1.m1.1d">↑</annotation></semantics></math></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.6.6.6.6"><span class="ltx_text ltx_font_bold" id="S5.T2.6.6.6.6.1">SR<math alttext="\uparrow" class="ltx_Math" display="inline" id="S5.T2.6.6.6.6.1.m1.1"><semantics id="S5.T2.6.6.6.6.1.m1.1a"><mo id="S5.T2.6.6.6.6.1.m1.1.1" stretchy="false" xref="S5.T2.6.6.6.6.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S5.T2.6.6.6.6.1.m1.1b"><ci id="S5.T2.6.6.6.6.1.m1.1.1.cmml" xref="S5.T2.6.6.6.6.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T2.6.6.6.6.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S5.T2.6.6.6.6.1.m1.1d">↑</annotation></semantics></math></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.7.7.7.7"><span class="ltx_text ltx_font_bold" id="S5.T2.7.7.7.7.1">AV<math alttext="\downarrow" class="ltx_Math" display="inline" id="S5.T2.7.7.7.7.1.m1.1"><semantics id="S5.T2.7.7.7.7.1.m1.1a"><mo id="S5.T2.7.7.7.7.1.m1.1.1" stretchy="false" xref="S5.T2.7.7.7.7.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S5.T2.7.7.7.7.1.m1.1b"><ci id="S5.T2.7.7.7.7.1.m1.1.1.cmml" xref="S5.T2.7.7.7.7.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T2.7.7.7.7.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S5.T2.7.7.7.7.1.m1.1d">↓</annotation></semantics></math></span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T2.8.8.8.8"><span class="ltx_text ltx_font_bold" id="S5.T2.8.8.8.8.1">MDD<math alttext="\downarrow" class="ltx_Math" display="inline" id="S5.T2.8.8.8.8.1.m1.1"><semantics id="S5.T2.8.8.8.8.1.m1.1a"><mo id="S5.T2.8.8.8.8.1.m1.1.1" stretchy="false" xref="S5.T2.8.8.8.8.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S5.T2.8.8.8.8.1.m1.1b"><ci id="S5.T2.8.8.8.8.1.m1.1.1.cmml" xref="S5.T2.8.8.8.8.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T2.8.8.8.8.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S5.T2.8.8.8.8.1.m1.1d">↓</annotation></semantics></math></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.9.9.9.9"><span class="ltx_text ltx_font_bold" id="S5.T2.9.9.9.9.1">CR<math alttext="\uparrow" class="ltx_Math" display="inline" id="S5.T2.9.9.9.9.1.m1.1"><semantics id="S5.T2.9.9.9.9.1.m1.1a"><mo id="S5.T2.9.9.9.9.1.m1.1.1" stretchy="false" xref="S5.T2.9.9.9.9.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S5.T2.9.9.9.9.1.m1.1b"><ci id="S5.T2.9.9.9.9.1.m1.1.1.cmml" xref="S5.T2.9.9.9.9.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T2.9.9.9.9.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S5.T2.9.9.9.9.1.m1.1d">↑</annotation></semantics></math></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.10.10.10.10"><span class="ltx_text ltx_font_bold" id="S5.T2.10.10.10.10.1">SR<math alttext="\uparrow" class="ltx_Math" display="inline" id="S5.T2.10.10.10.10.1.m1.1"><semantics id="S5.T2.10.10.10.10.1.m1.1a"><mo id="S5.T2.10.10.10.10.1.m1.1.1" stretchy="false" xref="S5.T2.10.10.10.10.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S5.T2.10.10.10.10.1.m1.1b"><ci id="S5.T2.10.10.10.10.1.m1.1.1.cmml" xref="S5.T2.10.10.10.10.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T2.10.10.10.10.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S5.T2.10.10.10.10.1.m1.1d">↑</annotation></semantics></math></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.11.11.11.11"><span class="ltx_text ltx_font_bold" id="S5.T2.11.11.11.11.1">AV<math alttext="\downarrow" class="ltx_Math" display="inline" id="S5.T2.11.11.11.11.1.m1.1"><semantics id="S5.T2.11.11.11.11.1.m1.1a"><mo id="S5.T2.11.11.11.11.1.m1.1.1" stretchy="false" xref="S5.T2.11.11.11.11.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S5.T2.11.11.11.11.1.m1.1b"><ci id="S5.T2.11.11.11.11.1.m1.1.1.cmml" xref="S5.T2.11.11.11.11.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T2.11.11.11.11.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S5.T2.11.11.11.11.1.m1.1d">↓</annotation></semantics></math></span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_t" id="S5.T2.12.12.12.12"><span class="ltx_text ltx_font_bold" id="S5.T2.12.12.12.12.1">MDD<math alttext="\downarrow" class="ltx_Math" display="inline" id="S5.T2.12.12.12.12.1.m1.1"><semantics id="S5.T2.12.12.12.12.1.m1.1a"><mo id="S5.T2.12.12.12.12.1.m1.1.1" stretchy="false" xref="S5.T2.12.12.12.12.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S5.T2.12.12.12.12.1.m1.1b"><ci id="S5.T2.12.12.12.12.1.m1.1.1.cmml" xref="S5.T2.12.12.12.12.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T2.12.12.12.12.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S5.T2.12.12.12.12.1.m1.1d">↓</annotation></semantics></math></span></td>
</tr>
<tr class="ltx_tr" id="S5.T2.12.12.14.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S5.T2.12.12.14.2.1"><span class="ltx_text ltx_font_bold" id="S5.T2.12.12.14.2.1.1">Buy &amp; Hold</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.12.12.14.2.2">33.256</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.12.12.14.2.3">2.347</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.12.12.14.2.4">23.967</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T2.12.12.14.2.5">9.195</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.12.12.14.2.6">39.244</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.12.12.14.2.7">0.869</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.12.12.14.2.8">75.854</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T2.12.12.14.2.9">37.975</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.12.12.14.2.10">21.821</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.12.12.14.2.11">0.683</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.12.12.14.2.12">37.426</td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_t" id="S5.T2.12.12.14.2.13">20.796</td>
</tr>
<tr class="ltx_tr" id="S5.T2.12.12.15.3">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" colspan="13" id="S5.T2.12.12.15.3.1"><span class="ltx_text ltx_font_bold ltx_font_italic" id="S5.T2.12.12.15.3.1.1">Financial Domain Models</span></th>
</tr>
<tr class="ltx_tr" id="S5.T2.12.12.16.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T2.12.12.16.4.1"><span class="ltx_text ltx_font_bold" id="S5.T2.12.12.16.4.1.1">Palmyra-Fin-70B</span></th>
<td class="ltx_td ltx_align_center" id="S5.T2.12.12.16.4.2">20.016</td>
<td class="ltx_td ltx_align_center" id="S5.T2.12.12.16.4.3">1.464</td>
<td class="ltx_td ltx_align_center" id="S5.T2.12.12.16.4.4">22.974</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.12.12.16.4.5">6.824</td>
<td class="ltx_td ltx_align_center" id="S5.T2.12.12.16.4.6">-6.661</td>
<td class="ltx_td ltx_align_center" id="S5.T2.12.12.16.4.7">-0.222</td>
<td class="ltx_td ltx_align_center" id="S5.T2.12.12.16.4.8">50.379</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.12.12.16.4.9">25.820</td>
<td class="ltx_td ltx_align_center" id="S5.T2.12.12.16.4.10">-20.812</td>
<td class="ltx_td ltx_align_center" id="S5.T2.12.12.16.4.11">-1.212</td>
<td class="ltx_td ltx_align_center" id="S5.T2.12.12.16.4.12">20.036</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T2.12.12.16.4.13">27.782</td>
</tr>
<tr class="ltx_tr" id="S5.T2.12.12.17.5">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" colspan="13" id="S5.T2.12.12.17.5.1"><span class="ltx_text ltx_font_bold ltx_font_italic" id="S5.T2.12.12.17.5.1.1">Proprietary Models</span></th>
</tr>
<tr class="ltx_tr" id="S5.T2.12.12.18.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T2.12.12.18.6.1"><span class="ltx_text ltx_font_bold" id="S5.T2.12.12.18.6.1.1">GPT-o1-preview</span></th>
<td class="ltx_td ltx_align_center" id="S5.T2.12.12.18.6.2">13.162</td>
<td class="ltx_td ltx_align_center" id="S5.T2.12.12.18.6.3">0.776</td>
<td class="ltx_td ltx_align_center" id="S5.T2.12.12.18.6.4">28.511</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.12.12.18.6.5">11.558</td>
<td class="ltx_td ltx_align_center" id="S5.T2.12.12.18.6.6">34.499</td>
<td class="ltx_td ltx_align_center" id="S5.T2.12.12.18.6.7">0.796</td>
<td class="ltx_td ltx_align_center" id="S5.T2.12.12.18.6.8">72.822</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.12.12.18.6.9">35.490</td>
<td class="ltx_td ltx_align_center" id="S5.T2.12.12.18.6.10">34.060</td>
<td class="ltx_td ltx_align_center" id="S5.T2.12.12.18.6.11">1.114</td>
<td class="ltx_td ltx_align_center" id="S5.T2.12.12.18.6.12">35.846</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T2.12.12.18.6.13">17.075</td>
</tr>
<tr class="ltx_tr" id="S5.T2.12.12.19.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T2.12.12.19.7.1"><span class="ltx_text ltx_font_bold" id="S5.T2.12.12.19.7.1.1">GPT-4</span></th>
<td class="ltx_td ltx_align_center" id="S5.T2.12.12.19.7.2">34.342</td>
<td class="ltx_td ltx_align_center" id="S5.T2.12.12.19.7.3">2.005</td>
<td class="ltx_td ltx_align_center" id="S5.T2.12.12.19.7.4">28.779</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.12.12.19.7.5">9.195</td>
<td class="ltx_td ltx_align_center" id="S5.T2.12.12.19.7.6">45.246</td>
<td class="ltx_td ltx_align_center" id="S5.T2.12.12.19.7.7">1.190</td>
<td class="ltx_td ltx_align_center" id="S5.T2.12.12.19.7.8">63.896</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.12.12.19.7.9">25.031</td>
<td class="ltx_td ltx_align_center" id="S5.T2.12.12.19.7.10">22.396</td>
<td class="ltx_td ltx_align_center" id="S5.T2.12.12.19.7.11">0.828</td>
<td class="ltx_td ltx_align_center" id="S5.T2.12.12.19.7.12">31.699</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T2.12.12.19.7.13">17.206</td>
</tr>
<tr class="ltx_tr" id="S5.T2.12.12.20.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T2.12.12.20.8.1"><span class="ltx_text ltx_font_bold" id="S5.T2.12.12.20.8.1.1">GPT-4o</span></th>
<td class="ltx_td ltx_align_center" id="S5.T2.12.12.20.8.2">38.540</td>
<td class="ltx_td ltx_align_center" id="S5.T2.12.12.20.8.3">2.418</td>
<td class="ltx_td ltx_align_center" id="S5.T2.12.12.20.8.4">26.782</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.12.12.20.8.5">8.979</td>
<td class="ltx_td ltx_align_center" id="S5.T2.12.12.20.8.6">45.946</td>
<td class="ltx_td ltx_align_center" id="S5.T2.12.12.20.8.7">1.348</td>
<td class="ltx_td ltx_align_center" id="S5.T2.12.12.20.8.8">57.281</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.12.12.20.8.9">21.631</td>
<td class="ltx_td ltx_align_center" id="S5.T2.12.12.20.8.10">14.330</td>
<td class="ltx_td ltx_align_center" id="S5.T2.12.12.20.8.11">0.532</td>
<td class="ltx_td ltx_align_center" id="S5.T2.12.12.20.8.12">31.304</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T2.12.12.20.8.13">17.278</td>
</tr>
<tr class="ltx_tr" id="S5.T2.12.12.21.9">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" colspan="13" id="S5.T2.12.12.21.9.1"><span class="ltx_text ltx_font_bold ltx_font_italic" id="S5.T2.12.12.21.9.1.1">Open-Source Models</span></th>
</tr>
<tr class="ltx_tr" id="S5.T2.12.12.22.10">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T2.12.12.22.10.1"><span class="ltx_text ltx_font_bold" id="S5.T2.12.12.22.10.1.1">Qwen2.5-72B-Instruct</span></th>
<td class="ltx_td ltx_align_center" id="S5.T2.12.12.22.10.2">34.309</td>
<td class="ltx_td ltx_align_center" id="S5.T2.12.12.22.10.3">2.000</td>
<td class="ltx_td ltx_align_center" id="S5.T2.12.12.22.10.4">28.779</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.12.12.22.10.5">9.292</td>
<td class="ltx_td ltx_align_center" id="S5.T2.12.12.22.10.6">39.112</td>
<td class="ltx_td ltx_align_center" id="S5.T2.12.12.22.10.7">1.075</td>
<td class="ltx_td ltx_align_center" id="S5.T2.12.12.22.10.8">61.136</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.12.12.22.10.9">26.985</td>
<td class="ltx_td ltx_align_center" id="S5.T2.12.12.22.10.10">0.549</td>
<td class="ltx_td ltx_align_center" id="S5.T2.12.12.22.10.11">0.325</td>
<td class="ltx_td ltx_align_center" id="S5.T2.12.12.22.10.12">1.979</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T2.12.12.22.10.13">0.897</td>
</tr>
<tr class="ltx_tr" id="S5.T2.12.12.23.11">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T2.12.12.23.11.1"><span class="ltx_text ltx_font_bold" id="S5.T2.12.12.23.11.1.1">Llama-3.1-70B-Instruct</span></th>
<td class="ltx_td ltx_align_center" id="S5.T2.12.12.23.11.2">43.944</td>
<td class="ltx_td ltx_align_center" id="S5.T2.12.12.23.11.3">2.646</td>
<td class="ltx_td ltx_align_center" id="S5.T2.12.12.23.11.4">27.903</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.12.12.23.11.5">8.993</td>
<td class="ltx_td ltx_align_center" id="S5.T2.12.12.23.11.6">37.545</td>
<td class="ltx_td ltx_align_center" id="S5.T2.12.12.23.11.7">0.891</td>
<td class="ltx_td ltx_align_center" id="S5.T2.12.12.23.11.8">70.815</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.12.12.23.11.9">29.813</td>
<td class="ltx_td ltx_align_center" id="S5.T2.12.12.23.11.10">20.440</td>
<td class="ltx_td ltx_align_center" id="S5.T2.12.12.23.11.11">0.758</td>
<td class="ltx_td ltx_align_center" id="S5.T2.12.12.23.11.12">31.604</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T2.12.12.23.11.13">17.813</td>
</tr>
<tr class="ltx_tr" id="S5.T2.12.12.24.12">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T2.12.12.24.12.1"><span class="ltx_text ltx_font_bold" id="S5.T2.12.12.24.12.1.1">DeepSeek-67B-Chat</span></th>
<td class="ltx_td ltx_align_center" id="S5.T2.12.12.24.12.2">32.536</td>
<td class="ltx_td ltx_align_center" id="S5.T2.12.12.24.12.3">1.909</td>
<td class="ltx_td ltx_align_center" id="S5.T2.12.12.24.12.4">28.628</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.12.12.24.12.5">10.782</td>
<td class="ltx_td ltx_align_center" id="S5.T2.12.12.24.12.6">35.647</td>
<td class="ltx_td ltx_align_center" id="S5.T2.12.12.24.12.7">0.885</td>
<td class="ltx_td ltx_align_center" id="S5.T2.12.12.24.12.8">67.660</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.12.12.24.12.9">33.359</td>
<td class="ltx_td ltx_align_center" id="S5.T2.12.12.24.12.10">28.307</td>
<td class="ltx_td ltx_align_center" id="S5.T2.12.12.24.12.11">0.891</td>
<td class="ltx_td ltx_align_center" id="S5.T2.12.12.24.12.12">37.219</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T2.12.12.24.12.13">17.944</td>
</tr>
<tr class="ltx_tr" id="S5.T2.12.12.25.13">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T2.12.12.25.13.1"><span class="ltx_text ltx_font_bold" id="S5.T2.12.12.25.13.1.1">Yi-1.5-34B-Chat</span></th>
<td class="ltx_td ltx_align_center" id="S5.T2.12.12.25.13.2">30.743</td>
<td class="ltx_td ltx_align_center" id="S5.T2.12.12.25.13.3">1.823</td>
<td class="ltx_td ltx_align_center" id="S5.T2.12.12.25.13.4">28.335</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.12.12.25.13.5">9.195</td>
<td class="ltx_td ltx_align_center" id="S5.T2.12.12.25.13.6">35.364</td>
<td class="ltx_td ltx_align_center" id="S5.T2.12.12.25.13.7">0.808</td>
<td class="ltx_td ltx_align_center" id="S5.T2.12.12.25.13.8">73.561</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.12.12.25.13.9">35.490</td>
<td class="ltx_td ltx_align_center" id="S5.T2.12.12.25.13.10">13.620</td>
<td class="ltx_td ltx_align_center" id="S5.T2.12.12.25.13.11">0.434</td>
<td class="ltx_td ltx_align_center" id="S5.T2.12.12.25.13.12">36.778</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T2.12.12.25.13.13">22.790</td>
</tr>
<tr class="ltx_tr" id="S5.T2.12.12.26.14">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T2.12.12.26.14.1"><span class="ltx_text ltx_font_bold" id="S5.T2.12.12.26.14.1.1">Qwen2.5-32B-Instruct</span></th>
<td class="ltx_td ltx_align_center" id="S5.T2.12.12.26.14.2">26.332</td>
<td class="ltx_td ltx_align_center" id="S5.T2.12.12.26.14.3">1.980</td>
<td class="ltx_td ltx_align_center" id="S5.T2.12.12.26.14.4">22.348</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.12.12.26.14.5">5.261</td>
<td class="ltx_td ltx_align_center" id="S5.T2.12.12.26.14.6">21.336</td>
<td class="ltx_td ltx_align_center" id="S5.T2.12.12.26.14.7">0.729</td>
<td class="ltx_td ltx_align_center" id="S5.T2.12.12.26.14.8">49.157</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.12.12.26.14.9">20.704</td>
<td class="ltx_td ltx_align_center" id="S5.T2.12.12.26.14.10">11.566</td>
<td class="ltx_td ltx_align_center" id="S5.T2.12.12.26.14.11">0.869</td>
<td class="ltx_td ltx_align_center" id="S5.T2.12.12.26.14.12">15.608</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T2.12.12.26.14.13">7.984</td>
</tr>
<tr class="ltx_tr" id="S5.T2.12.12.27.15">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T2.12.12.27.15.1"><span class="ltx_text ltx_font_bold" id="S5.T2.12.12.27.15.1.1">DeepSeek-V2-Lite (15.7B)</span></th>
<td class="ltx_td ltx_align_center" id="S5.T2.12.12.27.15.2">16.686</td>
<td class="ltx_td ltx_align_center" id="S5.T2.12.12.27.15.3">0.974</td>
<td class="ltx_td ltx_align_center" id="S5.T2.12.12.27.15.4">28.771</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.12.12.27.15.5">16.806</td>
<td class="ltx_td ltx_align_center" id="S5.T2.12.12.27.15.6">31.458</td>
<td class="ltx_td ltx_align_center" id="S5.T2.12.12.27.15.7">0.744</td>
<td class="ltx_td ltx_align_center" id="S5.T2.12.12.27.15.8">68.524</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.12.12.27.15.9">35.404</td>
<td class="ltx_td ltx_align_center" id="S5.T2.12.12.27.15.10">4.804</td>
<td class="ltx_td ltx_align_center" id="S5.T2.12.12.27.15.11">0.153</td>
<td class="ltx_td ltx_align_center" id="S5.T2.12.12.27.15.12">36.846</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T2.12.12.27.15.13">20.562</td>
</tr>
<tr class="ltx_tr" id="S5.T2.12.12.28.16">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T2.12.12.28.16.1"><span class="ltx_text ltx_font_bold" id="S5.T2.12.12.28.16.1.1">Yi-1.5-9B-Chat</span></th>
<td class="ltx_td ltx_align_center" id="S5.T2.12.12.28.16.2">29.028</td>
<td class="ltx_td ltx_align_center" id="S5.T2.12.12.28.16.3">1.700</td>
<td class="ltx_td ltx_align_center" id="S5.T2.12.12.28.16.4">28.682</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.12.12.28.16.5">12.588</td>
<td class="ltx_td ltx_align_center" id="S5.T2.12.12.28.16.6">31.350</td>
<td class="ltx_td ltx_align_center" id="S5.T2.12.12.28.16.7">0.703</td>
<td class="ltx_td ltx_align_center" id="S5.T2.12.12.28.16.8">74.895</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.12.12.28.16.9">37.975</td>
<td class="ltx_td ltx_align_center" id="S5.T2.12.12.28.16.10">7.953</td>
<td class="ltx_td ltx_align_center" id="S5.T2.12.12.28.16.11">0.253</td>
<td class="ltx_td ltx_align_center" id="S5.T2.12.12.28.16.12">36.799</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T2.12.12.28.16.13">26.545</td>
</tr>
<tr class="ltx_tr" id="S5.T2.12.12.29.17">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T2.12.12.29.17.1"><span class="ltx_text ltx_font_bold" id="S5.T2.12.12.29.17.1.1">Llama-3.1-8B-Instruct</span></th>
<td class="ltx_td ltx_align_center" id="S5.T2.12.12.29.17.2">39.079</td>
<td class="ltx_td ltx_align_center" id="S5.T2.12.12.29.17.3">2.320</td>
<td class="ltx_td ltx_align_center" id="S5.T2.12.12.29.17.4">28.299</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.12.12.29.17.5">10.341</td>
<td class="ltx_td ltx_align_center" id="S5.T2.12.12.29.17.6">35.622</td>
<td class="ltx_td ltx_align_center" id="S5.T2.12.12.29.17.7">0.832</td>
<td class="ltx_td ltx_align_center" id="S5.T2.12.12.29.17.8">71.936</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.12.12.29.17.9">36.383</td>
<td class="ltx_td ltx_align_center" id="S5.T2.12.12.29.17.10">20.521</td>
<td class="ltx_td ltx_align_center" id="S5.T2.12.12.29.17.11">0.646</td>
<td class="ltx_td ltx_align_center" id="S5.T2.12.12.29.17.12">37.240</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T2.12.12.29.17.13">21.104</td>
</tr>
<tr class="ltx_tr" id="S5.T2.12.12.30.18">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T2.12.12.30.18.1"><span class="ltx_text ltx_font_bold" id="S5.T2.12.12.30.18.1.1">Qwen-2.5-Instruct-7B</span></th>
<td class="ltx_td ltx_align_center" id="S5.T2.12.12.30.18.2">4.291</td>
<td class="ltx_td ltx_align_center" id="S5.T2.12.12.30.18.3">0.285</td>
<td class="ltx_td ltx_align_center" id="S5.T2.12.12.30.18.4">24.933</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.12.12.30.18.5">14.156</td>
<td class="ltx_td ltx_align_center" id="S5.T2.12.12.30.18.6">41.203</td>
<td class="ltx_td ltx_align_center" id="S5.T2.12.12.30.18.7">0.925</td>
<td class="ltx_td ltx_align_center" id="S5.T2.12.12.30.18.8">74.862</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.12.12.30.18.9">37.975</td>
<td class="ltx_td ltx_align_center" id="S5.T2.12.12.30.18.10">19.477</td>
<td class="ltx_td ltx_align_center" id="S5.T2.12.12.30.18.11">0.612</td>
<td class="ltx_td ltx_align_center" id="S5.T2.12.12.30.18.12">37.289</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T2.12.12.30.18.13">20.796</td>
</tr>
<tr class="ltx_tr" id="S5.T2.12.12.31.19">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" colspan="13" id="S5.T2.12.12.31.19.1"><span class="ltx_text ltx_font_bold ltx_font_italic" id="S5.T2.12.12.31.19.1.1">FLAG-TRADER</span></th>
</tr>
<tr class="ltx_tr" id="S5.T2.12.12.32.20">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S5.T2.12.12.32.20.1"><span class="ltx_text ltx_font_bold" id="S5.T2.12.12.32.20.1.1">SmolLM2-135M-Instruct</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T2.12.12.32.20.2">34.342</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T2.12.12.32.20.3">2.429</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T2.12.12.32.20.4">23.913</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S5.T2.12.12.32.20.5">10.872</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T2.12.12.32.20.6">50.394</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T2.12.12.32.20.7">1.362</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T2.12.12.32.20.8">64.004</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S5.T2.12.12.32.20.9">37.975</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T2.12.12.32.20.10">45.511</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T2.12.12.32.20.11">1.734</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T2.12.12.32.20.12">30.903</td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_bb" id="S5.T2.12.12.32.20.13">24.440</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a comparison of the performance of various Large Language Models (LLMs) when used as the backbone model for stock trading.  Seven different stocks (MSFT, JNJ, UVV, HON, TSLA, BTC) were used to assess the models' performance across four key metrics: Cumulative Return (CR), Sharpe Ratio (SR), Annualized Volatility (AV), and Maximum Drawdown (MDD).  The table allows readers to compare the effectiveness of different LLMs, both large and small, in a real-world financial trading task. The results demonstrate the relative strength of different models, showing how their capabilities vary across assets and risk metrics.
> <details>
> <summary>read the caption</summary>
> Table 2: Performance of stock trading with different LLMs as backbone model across seven stocks.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="A2.T3.2.2">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A2.T3.2.2.3.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="A2.T3.2.2.3.1.1"><span class="ltx_text ltx_font_bold" id="A2.T3.2.2.3.1.1.1">Parameter</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="A2.T3.2.2.3.1.2"><span class="ltx_text ltx_font_bold" id="A2.T3.2.2.3.1.2.1">Default Value</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="A2.T3.2.2.3.1.3"><span class="ltx_text ltx_font_bold" id="A2.T3.2.2.3.1.3.1">Description</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A2.T3.2.2.4.1">
<td class="ltx_td ltx_align_left ltx_border_tt" id="A2.T3.2.2.4.1.1"><span class="ltx_text ltx_font_typewriter" id="A2.T3.2.2.4.1.1.1">total_timesteps</span></td>
<td class="ltx_td ltx_align_left ltx_border_tt" id="A2.T3.2.2.4.1.2">13860</td>
<td class="ltx_td ltx_align_left ltx_border_tt" id="A2.T3.2.2.4.1.3">Total number of timesteps</td>
</tr>
<tr class="ltx_tr" id="A2.T3.1.1.1">
<td class="ltx_td ltx_align_left" id="A2.T3.1.1.1.2"><span class="ltx_text ltx_font_typewriter" id="A2.T3.1.1.1.2.1">learning_rate</span></td>
<td class="ltx_td ltx_align_left" id="A2.T3.1.1.1.1"><math alttext="5\times 10^{-4}" class="ltx_Math" display="inline" id="A2.T3.1.1.1.1.m1.1"><semantics id="A2.T3.1.1.1.1.m1.1a"><mrow id="A2.T3.1.1.1.1.m1.1.1" xref="A2.T3.1.1.1.1.m1.1.1.cmml"><mn id="A2.T3.1.1.1.1.m1.1.1.2" xref="A2.T3.1.1.1.1.m1.1.1.2.cmml">5</mn><mo id="A2.T3.1.1.1.1.m1.1.1.1" lspace="0.222em" rspace="0.222em" xref="A2.T3.1.1.1.1.m1.1.1.1.cmml">×</mo><msup id="A2.T3.1.1.1.1.m1.1.1.3" xref="A2.T3.1.1.1.1.m1.1.1.3.cmml"><mn id="A2.T3.1.1.1.1.m1.1.1.3.2" xref="A2.T3.1.1.1.1.m1.1.1.3.2.cmml">10</mn><mrow id="A2.T3.1.1.1.1.m1.1.1.3.3" xref="A2.T3.1.1.1.1.m1.1.1.3.3.cmml"><mo id="A2.T3.1.1.1.1.m1.1.1.3.3a" xref="A2.T3.1.1.1.1.m1.1.1.3.3.cmml">−</mo><mn id="A2.T3.1.1.1.1.m1.1.1.3.3.2" xref="A2.T3.1.1.1.1.m1.1.1.3.3.2.cmml">4</mn></mrow></msup></mrow><annotation-xml encoding="MathML-Content" id="A2.T3.1.1.1.1.m1.1b"><apply id="A2.T3.1.1.1.1.m1.1.1.cmml" xref="A2.T3.1.1.1.1.m1.1.1"><times id="A2.T3.1.1.1.1.m1.1.1.1.cmml" xref="A2.T3.1.1.1.1.m1.1.1.1"></times><cn id="A2.T3.1.1.1.1.m1.1.1.2.cmml" type="integer" xref="A2.T3.1.1.1.1.m1.1.1.2">5</cn><apply id="A2.T3.1.1.1.1.m1.1.1.3.cmml" xref="A2.T3.1.1.1.1.m1.1.1.3"><csymbol cd="ambiguous" id="A2.T3.1.1.1.1.m1.1.1.3.1.cmml" xref="A2.T3.1.1.1.1.m1.1.1.3">superscript</csymbol><cn id="A2.T3.1.1.1.1.m1.1.1.3.2.cmml" type="integer" xref="A2.T3.1.1.1.1.m1.1.1.3.2">10</cn><apply id="A2.T3.1.1.1.1.m1.1.1.3.3.cmml" xref="A2.T3.1.1.1.1.m1.1.1.3.3"><minus id="A2.T3.1.1.1.1.m1.1.1.3.3.1.cmml" xref="A2.T3.1.1.1.1.m1.1.1.3.3"></minus><cn id="A2.T3.1.1.1.1.m1.1.1.3.3.2.cmml" type="integer" xref="A2.T3.1.1.1.1.m1.1.1.3.3.2">4</cn></apply></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="A2.T3.1.1.1.1.m1.1c">5\times 10^{-4}</annotation><annotation encoding="application/x-llamapun" id="A2.T3.1.1.1.1.m1.1d">5 × 10 start_POSTSUPERSCRIPT - 4 end_POSTSUPERSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_left" id="A2.T3.1.1.1.3">Learning rate of optimizer</td>
</tr>
<tr class="ltx_tr" id="A2.T3.2.2.5.2">
<td class="ltx_td ltx_align_left" id="A2.T3.2.2.5.2.1"><span class="ltx_text ltx_font_typewriter" id="A2.T3.2.2.5.2.1.1">num_envs</span></td>
<td class="ltx_td ltx_align_left" id="A2.T3.2.2.5.2.2">1</td>
<td class="ltx_td ltx_align_left" id="A2.T3.2.2.5.2.3">Number of parallel environments</td>
</tr>
<tr class="ltx_tr" id="A2.T3.2.2.6.3">
<td class="ltx_td ltx_align_left" id="A2.T3.2.2.6.3.1"><span class="ltx_text ltx_font_typewriter" id="A2.T3.2.2.6.3.1.1">num_steps</span></td>
<td class="ltx_td ltx_align_left" id="A2.T3.2.2.6.3.2">40</td>
<td class="ltx_td ltx_align_left" id="A2.T3.2.2.6.3.3">Steps per policy rollout</td>
</tr>
<tr class="ltx_tr" id="A2.T3.2.2.7.4">
<td class="ltx_td ltx_align_left" id="A2.T3.2.2.7.4.1"><span class="ltx_text ltx_font_typewriter" id="A2.T3.2.2.7.4.1.1">anneal_lr</span></td>
<td class="ltx_td ltx_align_left" id="A2.T3.2.2.7.4.2">True</td>
<td class="ltx_td ltx_align_left" id="A2.T3.2.2.7.4.3">Enable learning rate annealing</td>
</tr>
<tr class="ltx_tr" id="A2.T3.2.2.2">
<td class="ltx_td ltx_align_left" id="A2.T3.2.2.2.2"><span class="ltx_text ltx_font_typewriter" id="A2.T3.2.2.2.2.1">gamma</span></td>
<td class="ltx_td ltx_align_left" id="A2.T3.2.2.2.3">0.95</td>
<td class="ltx_td ltx_align_left" id="A2.T3.2.2.2.1">Discount factor <math alttext="\gamma" class="ltx_Math" display="inline" id="A2.T3.2.2.2.1.m1.1"><semantics id="A2.T3.2.2.2.1.m1.1a"><mi id="A2.T3.2.2.2.1.m1.1.1" xref="A2.T3.2.2.2.1.m1.1.1.cmml">γ</mi><annotation-xml encoding="MathML-Content" id="A2.T3.2.2.2.1.m1.1b"><ci id="A2.T3.2.2.2.1.m1.1.1.cmml" xref="A2.T3.2.2.2.1.m1.1.1">𝛾</ci></annotation-xml><annotation encoding="application/x-tex" id="A2.T3.2.2.2.1.m1.1c">\gamma</annotation><annotation encoding="application/x-llamapun" id="A2.T3.2.2.2.1.m1.1d">italic_γ</annotation></semantics></math>
</td>
</tr>
<tr class="ltx_tr" id="A2.T3.2.2.8.5">
<td class="ltx_td ltx_align_left" id="A2.T3.2.2.8.5.1"><span class="ltx_text ltx_font_typewriter" id="A2.T3.2.2.8.5.1.1">gae_lambda</span></td>
<td class="ltx_td ltx_align_left" id="A2.T3.2.2.8.5.2">0.98</td>
<td class="ltx_td ltx_align_left" id="A2.T3.2.2.8.5.3">Lambda for Generalized Advantage Estimation</td>
</tr>
<tr class="ltx_tr" id="A2.T3.2.2.9.6">
<td class="ltx_td ltx_align_left" id="A2.T3.2.2.9.6.1"><span class="ltx_text ltx_font_typewriter" id="A2.T3.2.2.9.6.1.1">update_epochs</span></td>
<td class="ltx_td ltx_align_left" id="A2.T3.2.2.9.6.2">1</td>
<td class="ltx_td ltx_align_left" id="A2.T3.2.2.9.6.3">Number of update epochs per cycle</td>
</tr>
<tr class="ltx_tr" id="A2.T3.2.2.10.7">
<td class="ltx_td ltx_align_left" id="A2.T3.2.2.10.7.1"><span class="ltx_text ltx_font_typewriter" id="A2.T3.2.2.10.7.1.1">norm_adv</span></td>
<td class="ltx_td ltx_align_left" id="A2.T3.2.2.10.7.2">True</td>
<td class="ltx_td ltx_align_left" id="A2.T3.2.2.10.7.3">Advantages whitening</td>
</tr>
<tr class="ltx_tr" id="A2.T3.2.2.11.8">
<td class="ltx_td ltx_align_left" id="A2.T3.2.2.11.8.1"><span class="ltx_text ltx_font_typewriter" id="A2.T3.2.2.11.8.1.1">clip_coef</span></td>
<td class="ltx_td ltx_align_left" id="A2.T3.2.2.11.8.2">0.2</td>
<td class="ltx_td ltx_align_left" id="A2.T3.2.2.11.8.3">Surrogate clipping coefficient</td>
</tr>
<tr class="ltx_tr" id="A2.T3.2.2.12.9">
<td class="ltx_td ltx_align_left" id="A2.T3.2.2.12.9.1"><span class="ltx_text ltx_font_typewriter" id="A2.T3.2.2.12.9.1.1">clip_vloss</span></td>
<td class="ltx_td ltx_align_left" id="A2.T3.2.2.12.9.2">True</td>
<td class="ltx_td ltx_align_left" id="A2.T3.2.2.12.9.3">Clipped loss for value function</td>
</tr>
<tr class="ltx_tr" id="A2.T3.2.2.13.10">
<td class="ltx_td ltx_align_left" id="A2.T3.2.2.13.10.1"><span class="ltx_text ltx_font_typewriter" id="A2.T3.2.2.13.10.1.1">ent_coef</span></td>
<td class="ltx_td ltx_align_left" id="A2.T3.2.2.13.10.2">0.05</td>
<td class="ltx_td ltx_align_left" id="A2.T3.2.2.13.10.3">Coefficient of entropy term</td>
</tr>
<tr class="ltx_tr" id="A2.T3.2.2.14.11">
<td class="ltx_td ltx_align_left" id="A2.T3.2.2.14.11.1"><span class="ltx_text ltx_font_typewriter" id="A2.T3.2.2.14.11.1.1">vf_coef</span></td>
<td class="ltx_td ltx_align_left" id="A2.T3.2.2.14.11.2">0.5</td>
<td class="ltx_td ltx_align_left" id="A2.T3.2.2.14.11.3">Coefficient of value function</td>
</tr>
<tr class="ltx_tr" id="A2.T3.2.2.15.12">
<td class="ltx_td ltx_align_left" id="A2.T3.2.2.15.12.1"><span class="ltx_text ltx_font_typewriter" id="A2.T3.2.2.15.12.1.1">kl_coef</span></td>
<td class="ltx_td ltx_align_left" id="A2.T3.2.2.15.12.2">0.05</td>
<td class="ltx_td ltx_align_left" id="A2.T3.2.2.15.12.3">KL divergence with reference model</td>
</tr>
<tr class="ltx_tr" id="A2.T3.2.2.16.13">
<td class="ltx_td ltx_align_left" id="A2.T3.2.2.16.13.1"><span class="ltx_text ltx_font_typewriter" id="A2.T3.2.2.16.13.1.1">max_grad_norm</span></td>
<td class="ltx_td ltx_align_left" id="A2.T3.2.2.16.13.2">0.5</td>
<td class="ltx_td ltx_align_left" id="A2.T3.2.2.16.13.3">Maximum gradient clipping norm</td>
</tr>
<tr class="ltx_tr" id="A2.T3.2.2.17.14">
<td class="ltx_td ltx_align_left" id="A2.T3.2.2.17.14.1"><span class="ltx_text ltx_font_typewriter" id="A2.T3.2.2.17.14.1.1">target_kl</span></td>
<td class="ltx_td ltx_align_left" id="A2.T3.2.2.17.14.2">None</td>
<td class="ltx_td ltx_align_left" id="A2.T3.2.2.17.14.3">Target KL divergence threshold</td>
</tr>
<tr class="ltx_tr" id="A2.T3.2.2.18.15">
<td class="ltx_td ltx_align_left" id="A2.T3.2.2.18.15.1"><span class="ltx_text ltx_font_typewriter" id="A2.T3.2.2.18.15.1.1">dropout</span></td>
<td class="ltx_td ltx_align_left" id="A2.T3.2.2.18.15.2">0.0</td>
<td class="ltx_td ltx_align_left" id="A2.T3.2.2.18.15.3">Dropout rate</td>
</tr>
<tr class="ltx_tr" id="A2.T3.2.2.19.16">
<td class="ltx_td ltx_align_left" id="A2.T3.2.2.19.16.1"><span class="ltx_text ltx_font_typewriter" id="A2.T3.2.2.19.16.1.1">llm</span></td>
<td class="ltx_td ltx_align_left" id="A2.T3.2.2.19.16.2">"SmolLM2-135M-Instruct"</td>
<td class="ltx_td ltx_align_left" id="A2.T3.2.2.19.16.3">Model to fine-tune</td>
</tr>
<tr class="ltx_tr" id="A2.T3.2.2.20.17">
<td class="ltx_td ltx_align_left" id="A2.T3.2.2.20.17.1"><span class="ltx_text ltx_font_typewriter" id="A2.T3.2.2.20.17.1.1">train_dtype</span></td>
<td class="ltx_td ltx_align_left" id="A2.T3.2.2.20.17.2">"float16"</td>
<td class="ltx_td ltx_align_left" id="A2.T3.2.2.20.17.3">Training data type</td>
</tr>
<tr class="ltx_tr" id="A2.T3.2.2.21.18">
<td class="ltx_td ltx_align_left" id="A2.T3.2.2.21.18.1"><span class="ltx_text ltx_font_typewriter" id="A2.T3.2.2.21.18.1.1">gradient_accumulation_steps</span></td>
<td class="ltx_td ltx_align_left" id="A2.T3.2.2.21.18.2">8</td>
<td class="ltx_td ltx_align_left" id="A2.T3.2.2.21.18.3">Number of gradient accumulation steps</td>
</tr>
<tr class="ltx_tr" id="A2.T3.2.2.22.19">
<td class="ltx_td ltx_align_left" id="A2.T3.2.2.22.19.1"><span class="ltx_text ltx_font_typewriter" id="A2.T3.2.2.22.19.1.1">minibatch_size</span></td>
<td class="ltx_td ltx_align_left" id="A2.T3.2.2.22.19.2">32</td>
<td class="ltx_td ltx_align_left" id="A2.T3.2.2.22.19.3">Mini-batch size for fine-tuning</td>
</tr>
<tr class="ltx_tr" id="A2.T3.2.2.23.20">
<td class="ltx_td ltx_align_left ltx_border_bb" id="A2.T3.2.2.23.20.1"><span class="ltx_text ltx_font_typewriter" id="A2.T3.2.2.23.20.1.1">max_episode_steps</span></td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="A2.T3.2.2.23.20.2">65</td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="A2.T3.2.2.23.20.3">Maximum number of steps per episode</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table lists the hyperparameters and settings used for fine-tuning the FLAG-TRADER model with the Proximal Policy Optimization (PPO) algorithm.  It includes parameters related to the training process, such as the total number of timesteps, learning rate, and steps per policy rollout.  It also details parameters specific to PPO, including the discount factor, GAE lambda, and entropy coefficient.  Additional settings are provided for gradient accumulation, mini-batch size, and data type.
> <details>
> <summary>read the caption</summary>
> Table 3: FLAG-Trader with PPO Finetuning Hyperparameters and Settings.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2502.11433/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.11433/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.11433/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.11433/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.11433/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.11433/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.11433/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.11433/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.11433/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.11433/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.11433/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.11433/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.11433/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.11433/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}