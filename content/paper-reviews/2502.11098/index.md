---
title: "Talk Structurally, Act Hierarchically: A Collaborative Framework for LLM Multi-Agent Systems"
summary: "TalkHier, a novel framework for LLM multi-agent systems, uses structured communication and hierarchical refinement to achieve state-of-the-art performance on various tasks, improving collaboration and..."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Natural Language Processing", "Large Language Models", "🏢 Sony Group Corporation",]
showSummary: true
date: 2025-02-16
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2502.11098 {{< /keyword >}}
{{< keyword icon="writer" >}} Zhao Wang et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-02-18 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2502.11098" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2502.11098" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2502.11098/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Existing LLM multi-agent systems struggle with managing communication and refining collaborative efforts, leading to issues such as incorrect outputs and biases.  These problems are exacerbated in complex tasks that require multiple agents to coordinate.  Many existing systems employ simplistic methods such as majority voting, which are not effective for handling diverse or conflicting information.

TalkHier offers a solution by introducing a well-structured communication protocol that facilitates clear and organized exchanges between agents.  It also uses a hierarchical refinement system to process and integrate the feedback from multiple evaluators, ensuring that diverse opinions are carefully considered and integrated.  This approach leads to significant improvements in accuracy and adaptability across various benchmarks, setting a new standard for LLM-MA system design. **TalkHier's superior performance stems from its well-defined structure and effective refinement strategies.**

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} TalkHier introduces a structured communication protocol and hierarchical refinement system for improved LLM-MA collaboration. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} TalkHier outperforms existing SoTA LLM-MA models and single-agent baselines across diverse tasks. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} The framework addresses challenges related to disorganized communication, biased refinement, and scaling limitations in LLM-MA systems. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper is crucial for researchers working with large language models (LLMs) and multi-agent systems.  It directly addresses the significant challenges of communication and refinement in LLM-based collaborations, offering a novel framework and demonstrating state-of-the-art results.  The proposed methods improve efficiency and accuracy, opening new avenues for building more effective and adaptable multi-agent systems.

------
#### Visual Insights



![](https://arxiv.org/html/2502.11098/x1.png)

> 🔼 This figure illustrates the limitations of existing Large Language Model Multi-Agent (LLM-MA) systems and how the proposed TalkHier framework addresses these issues. The left side shows traditional LLM-MA approaches which suffer from disorganized, lengthy text-based communication and simple, sequential refinement methods that struggle to manage multiple perspectives.  This often leads to inconsistent or suboptimal outcomes. In contrast, the right side presents TalkHier, highlighting its key improvements: a well-structured communication protocol and a hierarchical refinement strategy. The structured protocol promotes clearer, more efficient information exchange, and hierarchical refinement enables a more controlled and effective synthesis of diverse opinions leading to superior decision-making.
> <details>
> <summary>read the caption</summary>
> Figure 1: Existing LLM-MA methods (left) face two major challenges: 1) disorganized, lengthy text-based communication protocols, and 2) sequential or overly similar flat multi-agent refinements. In contrast, TalkHier (right) introduces a well-structured communication protocol and a hierarchical refinement approach.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S4.T1.7">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T1.7.1.1" style="background-color:#FFF2E6;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_tt" id="S4.T1.7.1.1.1" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.7.1.1.1.1" style="background-color:#FFF2E6;">Models</span></th>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T1.7.1.1.2" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.7.1.1.2.1" style="background-color:#FFF2E6;">Moral</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T1.7.1.1.3" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.7.1.1.3.1" style="background-color:#FFF2E6;">Phys.</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T1.7.1.1.4" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.7.1.1.4.1" style="background-color:#FFF2E6;">ML</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T1.7.1.1.5" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.7.1.1.5.1" style="background-color:#FFF2E6;">FL</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T1.7.1.1.6" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.7.1.1.6.1" style="background-color:#FFF2E6;">UFP</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T1.7.1.1.7" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.7.1.1.7.1" style="background-color:#FFF2E6;">Avg.</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.7.2.2" style="background-color:#FFFFFF;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T1.7.2.2.1" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text" id="S4.T1.7.2.2.1.1" style="background-color:#FFFFFF;">GPT4o</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.7.2.2.2" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text" id="S4.T1.7.2.2.2.1" style="background-color:#FFFFFF;">64.25</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.7.2.2.3" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text" id="S4.T1.7.2.2.3.1" style="background-color:#FFFFFF;">62.75</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.7.2.2.4" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text" id="S4.T1.7.2.2.4.1" style="background-color:#FFFFFF;">67.86</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.7.2.2.5" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text" id="S4.T1.7.2.2.5.1" style="background-color:#FFFFFF;">63.49</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.7.2.2.6" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text" id="S4.T1.7.2.2.6.1" style="background-color:#FFFFFF;">92.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.7.2.2.7" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text" id="S4.T1.7.2.2.7.1" style="background-color:#FFFFFF;">70.07</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.7.3.3" style="background-color:#ECECEC;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T1.7.3.3.1" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text" id="S4.T1.7.3.3.1.1" style="background-color:#ECECEC;">GPT4o-3@</span></th>
<td class="ltx_td ltx_align_center" id="S4.T1.7.3.3.2" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text" id="S4.T1.7.3.3.2.1" style="background-color:#ECECEC;">65.70</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.3.3.3" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text" id="S4.T1.7.3.3.3.1" style="background-color:#ECECEC;">62.75</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.3.3.4" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text" id="S4.T1.7.3.3.4.1" style="background-color:#ECECEC;">66.07</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.3.3.5" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text" id="S4.T1.7.3.3.5.1" style="background-color:#ECECEC;">66.67</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.3.3.6" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text" id="S4.T1.7.3.3.6.1" style="background-color:#ECECEC;">91.00</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.3.3.7" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text" id="S4.T1.7.3.3.7.1" style="background-color:#ECECEC;">70.44</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.7.4.4" style="background-color:#FFFFFF;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T1.7.4.4.1" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text" id="S4.T1.7.4.4.1.1" style="background-color:#FFFFFF;">GPT4o-5@</span></th>
<td class="ltx_td ltx_align_center" id="S4.T1.7.4.4.2" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text" id="S4.T1.7.4.4.2.1" style="background-color:#FFFFFF;">66.15</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.4.4.3" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text" id="S4.T1.7.4.4.3.1" style="background-color:#FFFFFF;">61.76</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.4.4.4" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text" id="S4.T1.7.4.4.4.1" style="background-color:#FFFFFF;">66.96</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.4.4.5" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text" id="S4.T1.7.4.4.5.1" style="background-color:#FFFFFF;">66.67</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.4.4.6" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text" id="S4.T1.7.4.4.6.1" style="background-color:#FFFFFF;">92.00</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.4.4.7" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text" id="S4.T1.7.4.4.7.1" style="background-color:#FFFFFF;">70.71</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.7.5.5" style="background-color:#ECECEC;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T1.7.5.5.1" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text" id="S4.T1.7.5.5.1.1" style="background-color:#ECECEC;">GPT4o-7@</span></th>
<td class="ltx_td ltx_align_center" id="S4.T1.7.5.5.2" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text" id="S4.T1.7.5.5.2.1" style="background-color:#ECECEC;">65.81</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.5.5.3" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text" id="S4.T1.7.5.5.3.1" style="background-color:#ECECEC;">63.73</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.5.5.4" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text" id="S4.T1.7.5.5.4.1" style="background-color:#ECECEC;">66.96</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.5.5.5" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text" id="S4.T1.7.5.5.5.1" style="background-color:#ECECEC;">68.25</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.5.5.6" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text" id="S4.T1.7.5.5.6.1" style="background-color:#ECECEC;">91.00</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.5.5.7" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text" id="S4.T1.7.5.5.7.1" style="background-color:#ECECEC;">71.15</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.7.6.6" style="background-color:#FFFFFF;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T1.7.6.6.1" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text" id="S4.T1.7.6.6.1.1" style="background-color:#FFFFFF;">ReAct</span></th>
<td class="ltx_td ltx_align_center" id="S4.T1.7.6.6.2" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text" id="S4.T1.7.6.6.2.1" style="background-color:#FFFFFF;">69.61</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.6.6.3" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text" id="S4.T1.7.6.6.3.1" style="background-color:#FFFFFF;">72.55</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.6.6.4" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text" id="S4.T1.7.6.6.4.1" style="background-color:#FFFFFF;">59.82</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.6.6.5" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text" id="S4.T1.7.6.6.5.1" style="background-color:#FFFFFF;">32.54</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.6.6.6" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text" id="S4.T1.7.6.6.6.1" style="background-color:#FFFFFF;">58.00</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.6.6.7" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text" id="S4.T1.7.6.6.7.1" style="background-color:#FFFFFF;">58.50</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.7.7.7" style="background-color:#ECECEC;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T1.7.7.7.1" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text" id="S4.T1.7.7.7.1.1" style="background-color:#ECECEC;">ReAct-3@</span></th>
<td class="ltx_td ltx_align_center" id="S4.T1.7.7.7.2" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text" id="S4.T1.7.7.7.2.1" style="background-color:#ECECEC;">74.75</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.7.7.3" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text" id="S4.T1.7.7.7.3.1" style="background-color:#ECECEC;">83.33</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.7.7.4" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text" id="S4.T1.7.7.7.4.1" style="background-color:#ECECEC;">66.07</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.7.7.5" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text" id="S4.T1.7.7.7.5.1" style="background-color:#ECECEC;">52.38</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.7.7.6" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text" id="S4.T1.7.7.7.6.1" style="background-color:#ECECEC;">53.00</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.7.7.7" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text" id="S4.T1.7.7.7.7.1" style="background-color:#ECECEC;">65.91</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.7.8.8" style="background-color:#FFFFFF;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T1.7.8.8.1" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text" id="S4.T1.7.8.8.1.1" style="background-color:#FFFFFF;">ReAct-5@</span></th>
<td class="ltx_td ltx_align_center" id="S4.T1.7.8.8.2" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text" id="S4.T1.7.8.8.2.1" style="background-color:#FFFFFF;">74.97</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.8.8.3" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text" id="S4.T1.7.8.8.3.1" style="background-color:#FFFFFF;">82.35</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.8.8.4" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text" id="S4.T1.7.8.8.4.1" style="background-color:#FFFFFF;">66.96</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.8.8.5" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text" id="S4.T1.7.8.8.5.1" style="background-color:#FFFFFF;">46.83</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.8.8.6" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text" id="S4.T1.7.8.8.6.1" style="background-color:#FFFFFF;">63.00</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.8.8.7" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text" id="S4.T1.7.8.8.7.1" style="background-color:#FFFFFF;">66.82</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.7.9.9" style="background-color:#ECECEC;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T1.7.9.9.1" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text" id="S4.T1.7.9.9.1.1" style="background-color:#ECECEC;">ReAct-7@</span></th>
<td class="ltx_td ltx_align_center" id="S4.T1.7.9.9.2" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text" id="S4.T1.7.9.9.2.1" style="background-color:#ECECEC;">75.53</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.9.9.3" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text" id="S4.T1.7.9.9.3.1" style="background-color:#ECECEC;">84.78</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.9.9.4" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text" id="S4.T1.7.9.9.4.1" style="background-color:#ECECEC;">67.86</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.9.9.5" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text" id="S4.T1.7.9.9.5.1" style="background-color:#ECECEC;">50.79</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.9.9.6" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text" id="S4.T1.7.9.9.6.1" style="background-color:#ECECEC;">57.00</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.9.9.7" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text" id="S4.T1.7.9.9.7.1" style="background-color:#ECECEC;">67.19</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.7.10.10" style="background-color:#FFFFFF;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T1.7.10.10.1" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text" id="S4.T1.7.10.10.1.1" style="background-color:#FFFFFF;">AutoGPT</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.7.10.10.2" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text" id="S4.T1.7.10.10.2.1" style="background-color:#FFFFFF;">66.37</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.7.10.10.3" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text" id="S4.T1.7.10.10.3.1" style="background-color:#FFFFFF;">78.43</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.7.10.10.4" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text" id="S4.T1.7.10.10.4.1" style="background-color:#FFFFFF;">64.29</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.7.10.10.5" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text" id="S4.T1.7.10.10.5.1" style="background-color:#FFFFFF;">60.83</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.7.10.10.6" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text" id="S4.T1.7.10.10.6.1" style="background-color:#FFFFFF;">90.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.7.10.10.7" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text" id="S4.T1.7.10.10.7.1" style="background-color:#FFFFFF;">71.98</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.7.11.11" style="background-color:#ECECEC;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T1.7.11.11.1" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text" id="S4.T1.7.11.11.1.1" style="background-color:#ECECEC;">AgentVerse</span></th>
<td class="ltx_td ltx_align_center" id="S4.T1.7.11.11.2" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text" id="S4.T1.7.11.11.2.1" style="background-color:#ECECEC;">79.11</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.11.11.3" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.7.11.11.3.1" style="background-color:#ECECEC;">93.14</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.11.11.4" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text" id="S4.T1.7.11.11.4.1" style="background-color:#ECECEC;">79.46</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.11.11.5" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text" id="S4.T1.7.11.11.5.1" style="background-color:#ECECEC;">78.57</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.11.11.6" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text" id="S4.T1.7.11.11.6.1" style="background-color:#ECECEC;">88.00</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.11.11.7" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text" id="S4.T1.7.11.11.7.1" style="background-color:#ECECEC;">83.66</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.7.12.12" style="background-color:#FFFFFF;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T1.7.12.12.1" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text" id="S4.T1.7.12.12.1.1" style="background-color:#FFFFFF;">GPTSwarm</span></th>
<td class="ltx_td ltx_align_center" id="S4.T1.7.12.12.2" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text" id="S4.T1.7.12.12.2.1" style="background-color:#FFFFFF;">60.48</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.12.12.3" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text" id="S4.T1.7.12.12.3.1" style="background-color:#FFFFFF;">67.70</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.12.12.4" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text" id="S4.T1.7.12.12.4.1" style="background-color:#FFFFFF;">72.32</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.12.12.5" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text" id="S4.T1.7.12.12.5.1" style="background-color:#FFFFFF;">68.33</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.12.12.6" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text" id="S4.T1.7.12.12.6.1" style="background-color:#FFFFFF;">57.00</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.12.12.7" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text" id="S4.T1.7.12.12.7.1" style="background-color:#FFFFFF;">65.17</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.7.13.13" style="background-color:#ECECEC;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T1.7.13.13.1" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text" id="S4.T1.7.13.13.1.1" style="background-color:#ECECEC;">AgentPrune</span></th>
<td class="ltx_td ltx_align_center" id="S4.T1.7.13.13.2" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text" id="S4.T1.7.13.13.2.1" style="background-color:#ECECEC;">70.84</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.13.13.3" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text" id="S4.T1.7.13.13.3.1" style="background-color:#ECECEC;">91.18</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.13.13.4" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text" id="S4.T1.7.13.13.4.1" style="background-color:#ECECEC;">81.25</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.13.13.5" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text" id="S4.T1.7.13.13.5.1" style="background-color:#ECECEC;">81.75</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.13.13.6" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text" id="S4.T1.7.13.13.6.1" style="background-color:#ECECEC;">93.00</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.13.13.7" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text" id="S4.T1.7.13.13.7.1" style="background-color:#ECECEC;">83.60</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.7.14.14" style="background-color:#FFFFFF;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T1.7.14.14.1" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text" id="S4.T1.7.14.14.1.1" style="background-color:#FFFFFF;">o1-preview</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.7.14.14.2" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text" id="S4.T1.7.14.14.2.1" style="background-color:#FFFFFF;">82.57</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.7.14.14.3" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text" id="S4.T1.7.14.14.3.1" style="background-color:#FFFFFF;">91.17</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.7.14.14.4" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.7.14.14.4.1" style="background-color:#FFFFFF;">85.71</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.7.14.14.5" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text" id="S4.T1.7.14.14.5.1" style="background-color:#FFFFFF;">83.33</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.7.14.14.6" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.7.14.14.6.1" style="background-color:#FFFFFF;">95.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.7.14.14.7" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text" id="S4.T1.7.14.14.7.1" style="background-color:#FFFFFF;">87.56</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.7.15.15" style="background-color:#ECECEC;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_t" id="S4.T1.7.15.15.1" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text ltx_font_italic" id="S4.T1.7.15.15.1.1" style="background-color:#ECECEC;">TalkHier (Ours)</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T1.7.15.15.2" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.7.15.15.2.1" style="background-color:#ECECEC;">83.80</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T1.7.15.15.3" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.7.15.15.3.1" style="background-color:#ECECEC;">93.14</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T1.7.15.15.4" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text" id="S4.T1.7.15.15.4.1" style="background-color:#ECECEC;">84.68</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T1.7.15.15.5" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.7.15.15.5.1" style="background-color:#ECECEC;">87.30</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T1.7.15.15.6" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text" id="S4.T1.7.15.15.6.1" style="background-color:#ECECEC;">93.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T1.7.15.15.7" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.7.15.15.7.1" style="background-color:#ECECEC;">88.38</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 This table presents the performance of various language models on the Massive Multitask Language Understanding (MMLU) benchmark.  It shows the accuracy (in percentage) achieved by different models across five specific domains within MMLU: Moral Scenarios, College Physics, Machine Learning, Formal Logic, and US Foreign Policy.  The models tested include GPT-40 (with single runs and ensemble results using 3, 5, and 7 independent runs, denoted as 3@, 5@, and 7@ respectively), ReAct, AutoGPT, AgentVerse, and GPTSwarm.  The table allows for a comparison of the performance of different models (single-agent, multi-agent, and open-source) and approaches (single-run versus ensemble) across a range of diverse knowledge areas.
> <details>
> <summary>read the caption</summary>
> Table 1: General Performance on MMLU Dataset. The table reports accuracy (%) for various baselines across Moral Scenario (Moral), College Physics (Phys.), Machine Learning (ML), Formal Logic (FL) and US Foreign Policy (UFP) domains. The notations 3@, 5@, and 7@ represent majority voting results using 3, 5, and 7 independent runs, respectively.
> </details>





### In-depth insights


#### LLM-MA Collab
LLM-MA collaboration represents a significant advancement in AI, aiming to leverage the strengths of multiple Large Language Models (LLMs) for complex tasks.  **Effective communication protocols** are crucial, moving beyond simple text exchanges to structured formats that include context, intermediate results, and clearly defined roles.  A **hierarchical refinement process**, where agents specialize and their outputs are evaluated and iteratively improved by others, offers improved accuracy and reduces bias compared to flat, sequential approaches.  **Agent-specific memory** is essential for maintaining coherent context and avoiding redundancy across interactions.  This approach promises **enhanced efficiency and scalability**, tackling problems beyond the reach of single LLMs. However, challenges remain in optimizing communication topologies, managing the computational cost of multiple LLM agents, and ensuring fairness and balance across diverse agent contributions.  Future work should focus on developing robust evaluation metrics and addressing scalability issues to realize the full potential of LLM-MA collaboration.

#### TalkHier Framework
The TalkHier framework presents a novel approach to LLM-based multi-agent systems, addressing critical challenges in communication and refinement.  **Structured communication** is key, enabling efficient context-rich exchanges between agents. A **hierarchical refinement system** manages the flow of opinions and feedback from multiple evaluators, improving accuracy and reducing bias.  The framework's **hierarchical structure**, with a supervisor agent coordinating tasks and managing agent roles, is crucial for handling complex problems.  **Agent-specific memory** allows individual agents to retain relevant information, improving efficiency and preventing information loss. The combination of these elements results in a more effective and robust multi-agent system, exceeding state-of-the-art baselines on various benchmark tasks. **TalkHier's success highlights the importance of well-structured communication and a sophisticated refinement process** in unlocking the full potential of LLM-based multi-agent collaboration.

#### Hierarchical Refinement
Hierarchical refinement, in the context of multi-agent systems using Large Language Models (LLMs), represents a significant advancement in collaborative problem-solving.  Instead of a flat, sequential evaluation process, it introduces a **layered structure** where agents specialize in specific tasks.  **Supervisory agents** aggregate and summarize the evaluations of lower-level agents, ensuring a more robust and less biased final assessment. This approach mitigates the challenges associated with managing diverse opinions and feedback from numerous agents. By organizing evaluations hierarchically, it addresses issues such as order bias and the difficulty of summarizing multifaceted opinions from a large group.  **Improved accuracy** and reduced redundancy are key benefits of this structured system, paving the way for more sophisticated collaborative LLMs capable of handling increasingly complex tasks.  The **hierarchical refinement** also promotes efficiency by avoiding redundant computations and allowing for better prioritization of feedback. This makes it scalable for applications with many agents involved.

#### Ablation Study
An ablation study systematically removes components of a model to assess their individual contributions.  In the context of a multi-agent LLM system, this involves isolating specific agents or communication protocols to determine their impact on overall performance. **By progressively removing elements such as hierarchical refinement, specific communication protocols (e.g., eliminating background information or intermediate outputs), or even entire agent types (evaluators or supervisors), researchers can pinpoint critical components.** This process is crucial for understanding the system's architecture and identifying areas for improvement. The results typically highlight the relative importance of each component, revealing which are most essential to achieving high accuracy.  **A well-designed ablation study should demonstrate that the removal of key features significantly degrades performance, validating the design choices of the system.** This technique is essential in discerning essential functionality from superfluous features, optimizing efficiency and offering valuable insights for future system development.

#### Future Work
Future research directions stemming from this LLM-MA framework could explore **more cost-effective methods** for generating and evaluating responses, addressing the high API costs associated with the current approach.  Investigating alternative architectures or training strategies that reduce reliance on expensive APIs is crucial for broader accessibility.  Additionally, **improving the framework's adaptability** to diverse domains and tasks beyond the benchmarks used would significantly broaden its impact.  This could involve incorporating more diverse data sets and testing on a wider range of tasks,  including more complex real-world scenarios. Another important area is to further enhance the framework's ability to handle increasingly complex multi-agent interactions, perhaps by exploring novel communication protocols or refinement strategies, including more sophisticated approaches to handling biases and uncertainty. Furthermore, **in-depth analysis of the hierarchical refinement process** is needed to better understand its strengths and limitations, potentially leading to improved algorithms and more efficient feedback mechanisms.  Finally, research into human-in-the-loop systems that leverage human expertise to guide and refine the multi-agent system's decisions would enhance both accuracy and reliability.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2502.11098/x2.png)

> 🔼 Figure 2 presents a bar chart comparing the performance of different multi-agent systems on five subtasks of the Massive Multitask Language Understanding (MMLU) benchmark.  The chart shows that the TalkHier model, built upon GPT-40, outperforms several state-of-the-art (SoTA) models. These SoTA models include inference scaling models (like OpenAI-01), open-source multi-agent systems (such as AgentVerse), and models that utilize majority voting strategies (like ReAct and GPT-40 with multiple runs). The chart highlights TalkHier's superior accuracy across diverse tasks, demonstrating its effectiveness as a collaborative multi-agent framework.
> <details>
> <summary>read the caption</summary>
> Figure 2: Our TalkHier built on GPT4o surpasses inference scaling models (OpenAI-o1), open-source multi-agent models (AgentVerse and etc.), and models with majority voting strategies (ReAct, GPT4o) on five subtasks of MMLU.
> </details>



![](https://arxiv.org/html/2502.11098/x3.png)

> 🔼 Figure 3 illustrates the core differences between traditional LLM-MA systems and the proposed TalkHier framework. The left side depicts existing methods characterized by disorganized textual communication and flat, sequential evaluation processes.  This often leads to inconsistencies and biases. In contrast, TalkHier (right side) introduces a structured communication protocol (top) incorporating messages, intermediate outputs, and background information for context-rich exchanges. This is followed by a hierarchical refinement process (bottom) where evaluation teams provide summarized and coordinated feedback, addressing limitations of previous approaches. This hierarchical structure balances opinions, reduces bias, and improves overall accuracy.
> <details>
> <summary>read the caption</summary>
> Figure 3: Comparisons between existing approaches (left) and ours (right). Our TalkHier proposes a new communication protocol (first row) featuring context-rich and well-structured communication information, along with a collaborative hierarchical refinement (second row) where evaluations provide summarized and coordinated feedback within an LLM-MA framework.
> </details>



![](https://arxiv.org/html/2502.11098/extracted/6207754/figure/hierchy.png)

> 🔼 Figure 4 shows the prompt templates used in the TalkHier framework to facilitate context-rich and structured communication between agents.  The `Supervisor Prompt Template` guides the supervisor agent in assigning tasks to other agents, providing necessary background information, intermediate outputs, and instructions for the next agent's action.  It ensures a well-structured flow of information. The `Member Prompt Template` guides the member agents in understanding their assigned subtasks, using the provided background and conversation history to generate accurate and relevant responses. Both prompts emphasize structured communication to maintain clarity and efficiency throughout the collaborative process.
> <details>
> <summary>read the caption</summary>
> Figure 4: Prompts for acquiring the contents of the context-rich, structured communication protocol in TalkHier.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S4.T2.1">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T2.1.1.1" style="background-color:#FFF2E6;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_tt" id="S4.T2.1.1.1.1" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.1.1.1" style="background-color:#FFF2E6;">Models</span></th>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.1.1.1.2" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.1.2.1" style="background-color:#FFF2E6;">Rouge-1</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.1.1.1.3" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.1.3.1" style="background-color:#FFF2E6;">BERTScore</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.2.2" style="background-color:#FFFFFF;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T2.1.2.2.1" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text" id="S4.T2.1.2.2.1.1" style="background-color:#FFFFFF;">GPT4o</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.2.2.2" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text" id="S4.T2.1.2.2.2.1" style="background-color:#FFFFFF;">0.2777</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.2.2.3" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text" id="S4.T2.1.2.2.3.1" style="background-color:#FFFFFF;">0.5856</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.3.3" style="background-color:#ECECEC;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.1.3.3.1" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text" id="S4.T2.1.3.3.1.1" style="background-color:#ECECEC;">ReAct</span></th>
<td class="ltx_td ltx_align_center" id="S4.T2.1.3.3.2" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text" id="S4.T2.1.3.3.2.1" style="background-color:#ECECEC;">0.2409</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.3.3.3" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text" id="S4.T2.1.3.3.3.1" style="background-color:#ECECEC;">0.5415</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.4.4" style="background-color:#FFFFFF;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T2.1.4.4.1" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text" id="S4.T2.1.4.4.1.1" style="background-color:#FFFFFF;">AutoGPT</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.4.4.2" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text" id="S4.T2.1.4.4.2.1" style="background-color:#FFFFFF;">0.3286</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.4.4.3" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text" id="S4.T2.1.4.4.3.1" style="background-color:#FFFFFF;">0.5885</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.5.5" style="background-color:#ECECEC;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.1.5.5.1" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text" id="S4.T2.1.5.5.1.1" style="background-color:#ECECEC;">AgentVerse</span></th>
<td class="ltx_td ltx_align_center" id="S4.T2.1.5.5.2" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text" id="S4.T2.1.5.5.2.1" style="background-color:#ECECEC;">0.2799</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.5.5.3" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text" id="S4.T2.1.5.5.3.1" style="background-color:#ECECEC;">0.5716</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.6.6" style="background-color:#FFFFFF;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.1.6.6.1" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text" id="S4.T2.1.6.6.1.1" style="background-color:#FFFFFF;">AgentPrune</span></th>
<td class="ltx_td ltx_align_center" id="S4.T2.1.6.6.2" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text" id="S4.T2.1.6.6.2.1" style="background-color:#FFFFFF;">0.3027</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.6.6.3" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text" id="S4.T2.1.6.6.3.1" style="background-color:#FFFFFF;">0.5788</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.7.7" style="background-color:#ECECEC;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.1.7.7.1" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text" id="S4.T2.1.7.7.1.1" style="background-color:#ECECEC;">GPTSwarm</span></th>
<td class="ltx_td ltx_align_center" id="S4.T2.1.7.7.2" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text" id="S4.T2.1.7.7.2.1" style="background-color:#ECECEC;">0.2302</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.7.7.3" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text" id="S4.T2.1.7.7.3.1" style="background-color:#ECECEC;">0.5067</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.8.8" style="background-color:#FFFFFF;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T2.1.8.8.1" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text" id="S4.T2.1.8.8.1.1" style="background-color:#FFFFFF;">o1-preview</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.8.8.2" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text" id="S4.T2.1.8.8.2.1" style="background-color:#FFFFFF;">0.2631</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.8.8.3" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text" id="S4.T2.1.8.8.3.1" style="background-color:#FFFFFF;">0.5701</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.9.9" style="background-color:#ECECEC;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_t" id="S4.T2.1.9.9.1" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text ltx_font_italic" id="S4.T2.1.9.9.1.1" style="background-color:#ECECEC;">TalkHier (Ours)</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T2.1.9.9.2" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.1.9.9.2.1" style="background-color:#ECECEC;">0.3461</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T2.1.9.9.3" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.1.9.9.3.1" style="background-color:#ECECEC;">0.6079</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the performance of different models on the WikiQA dataset, a benchmark for open-domain question answering.  It shows the Rouge-1 and BERTScore for each model. Rouge-1 measures the overlap of unigrams between the generated and reference answers, while BERTScore evaluates semantic similarity.  Higher scores indicate better performance in generating accurate and relevant answers to complex questions.
> <details>
> <summary>read the caption</summary>
> Table 2: Evaluation Results on WikiQA. The table reports Rouge-1 and BERTScore for various models.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S4.T3.9">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T3.9.1.1" style="background-color:#FFF2E6;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S4.T3.9.1.1.1" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.9.1.1.1.1" style="background-color:#FFF2E6;">Models</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T3.9.1.1.2" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.9.1.1.2.1" style="background-color:#FFF2E6;">Moral</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T3.9.1.1.3" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.9.1.1.3.1" style="background-color:#FFF2E6;">Phys.</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T3.9.1.1.4" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.9.1.1.4.1" style="background-color:#FFF2E6;">ML</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T3.9.1.1.5" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.9.1.1.5.1" style="background-color:#FFF2E6;">Avg.</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T3.9.2.1" style="background-color:#FFFFFF;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T3.9.2.1.1" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text" id="S4.T3.9.2.1.1.1" style="background-color:#FFFFFF;">w/o Eval. Sup.</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.9.2.1.2" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text" id="S4.T3.9.2.1.2.1" style="background-color:#FFFFFF;">83.57</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.9.2.1.3" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text" id="S4.T3.9.2.1.3.1" style="background-color:#FFFFFF;">87.25</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.9.2.1.4" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text" id="S4.T3.9.2.1.4.1" style="background-color:#FFFFFF;">74.77</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.9.2.1.5" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text" id="S4.T3.9.2.1.5.1" style="background-color:#FFFFFF;">81.86</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.9.3.2" style="background-color:#ECECEC;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T3.9.3.2.1" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text" id="S4.T3.9.3.2.1.1" style="background-color:#ECECEC;">w/o Eval. Team</span></th>
<td class="ltx_td ltx_align_center" id="S4.T3.9.3.2.2" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text" id="S4.T3.9.3.2.2.1" style="background-color:#ECECEC;">73.54</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.9.3.2.3" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text" id="S4.T3.9.3.2.3.1" style="background-color:#ECECEC;">80.34</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.9.3.2.4" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text" id="S4.T3.9.3.2.4.1" style="background-color:#ECECEC;">74.56</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.9.3.2.5" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text" id="S4.T3.9.3.2.5.1" style="background-color:#ECECEC;">76.15</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.9.4.3" style="background-color:#FFFFFF;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T3.9.4.3.1" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text" id="S4.T3.9.4.3.1.1" style="background-color:#FFFFFF;">w. Norm. Comm</span></th>
<td class="ltx_td ltx_align_center" id="S4.T3.9.4.3.2" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text" id="S4.T3.9.4.3.2.1" style="background-color:#FFFFFF;">82.91</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.9.4.3.3" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text" id="S4.T3.9.4.3.3.1" style="background-color:#FFFFFF;">88.24</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.9.4.3.4" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text" id="S4.T3.9.4.3.4.1" style="background-color:#FFFFFF;">82.14</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.9.4.3.5" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text" id="S4.T3.9.4.3.5.1" style="background-color:#FFFFFF;">84.43</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.9.5.4" style="background-color:#ECECEC;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T3.9.5.4.1" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text" id="S4.T3.9.5.4.1.1" style="background-color:#ECECEC;">React (Single Agent)</span></th>
<td class="ltx_td ltx_align_center" id="S4.T3.9.5.4.2" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text" id="S4.T3.9.5.4.2.1" style="background-color:#ECECEC;">69.61</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.9.5.4.3" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text" id="S4.T3.9.5.4.3.1" style="background-color:#ECECEC;">72.55</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.9.5.4.4" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text" id="S4.T3.9.5.4.4.1" style="background-color:#ECECEC;">59.82</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.9.5.4.5" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text" id="S4.T3.9.5.4.5.1" style="background-color:#ECECEC;">67.33</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.9.6.5" style="background-color:#FFFFFF;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_t" id="S4.T3.9.6.5.1" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text ltx_font_italic" id="S4.T3.9.6.5.1.1" style="background-color:#FFFFFF;">TalkHier (Ours)</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T3.9.6.5.2" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.9.6.5.2.1" style="background-color:#FFFFFF;">83.80</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T3.9.6.5.3" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.9.6.5.3.1" style="background-color:#FFFFFF;">93.14</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T3.9.6.5.4" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.9.6.5.4.1" style="background-color:#FFFFFF;">84.68</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T3.9.6.5.5" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.9.6.5.5.1" style="background-color:#FFFFFF;">87.21</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the ablation study results for the TalkHier model, evaluating the impact of removing key components on its performance across three domains: Physics, Machine Learning, and Moral.  Specifically, it shows the accuracy achieved by TalkHier with the removal of the evaluation supervisor (TalkHier w/o Eval. Sup.), the removal of the evaluation team (TalkHier w/o Eval. Team), and the use of a normalized communication protocol instead of the model's structured protocol (TalkHier w. Norm. Comm).  The results help determine the relative importance of each component to the overall model's accuracy.
> <details>
> <summary>read the caption</summary>
> Table 3: Ablative Results on Main Components of TalkHier: Accuracy (%) across Physics, ML, and Moral domains. TalkHier w/o Eval. Sup. removes the evaluation supervisor. TalkHier w/o Eval. Team excludes the evaluation team component. TalkHier w. Norm. Comm uses a normalized communication protocol.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S4.T4.9">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T4.9.4.1" style="background-color:#FFF2E6;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S4.T4.9.4.1.1" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.9.4.1.1.1" style="background-color:#FFF2E6;">Models</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T4.9.4.1.2" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.9.4.1.2.1" style="background-color:#FFF2E6;">Moral</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T4.9.4.1.3" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.9.4.1.3.1" style="background-color:#FFF2E6;">Phys.</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T4.9.4.1.4" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.9.4.1.4.1" style="background-color:#FFF2E6;">ML</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T4.9.4.1.5" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.9.4.1.5.1" style="background-color:#FFF2E6;">Avg.</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T4.7.1" style="background-color:#FFFFFF;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T4.7.1.1" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text" id="S4.T4.7.1.1.1" style="background-color:#FFFFFF;">w/o <math alttext="\mathbf{I}_{ij}" class="ltx_Math" display="inline" id="S4.T4.7.1.1.1.m1.1"><semantics id="S4.T4.7.1.1.1.m1.1a"><msub id="S4.T4.7.1.1.1.m1.1.1" xref="S4.T4.7.1.1.1.m1.1.1.cmml"><mi id="S4.T4.7.1.1.1.m1.1.1.2" mathbackground="#FFFFFF" xref="S4.T4.7.1.1.1.m1.1.1.2.cmml">𝐈</mi><mrow id="S4.T4.7.1.1.1.m1.1.1.3" xref="S4.T4.7.1.1.1.m1.1.1.3.cmml"><mi id="S4.T4.7.1.1.1.m1.1.1.3.2" mathbackground="#FFFFFF" xref="S4.T4.7.1.1.1.m1.1.1.3.2.cmml">i</mi><mo id="S4.T4.7.1.1.1.m1.1.1.3.1" xref="S4.T4.7.1.1.1.m1.1.1.3.1.cmml">⁢</mo><mi id="S4.T4.7.1.1.1.m1.1.1.3.3" mathbackground="#FFFFFF" xref="S4.T4.7.1.1.1.m1.1.1.3.3.cmml">j</mi></mrow></msub><annotation-xml encoding="MathML-Content" id="S4.T4.7.1.1.1.m1.1b"><apply id="S4.T4.7.1.1.1.m1.1.1.cmml" xref="S4.T4.7.1.1.1.m1.1.1"><csymbol cd="ambiguous" id="S4.T4.7.1.1.1.m1.1.1.1.cmml" xref="S4.T4.7.1.1.1.m1.1.1">subscript</csymbol><ci id="S4.T4.7.1.1.1.m1.1.1.2.cmml" xref="S4.T4.7.1.1.1.m1.1.1.2">𝐈</ci><apply id="S4.T4.7.1.1.1.m1.1.1.3.cmml" xref="S4.T4.7.1.1.1.m1.1.1.3"><times id="S4.T4.7.1.1.1.m1.1.1.3.1.cmml" xref="S4.T4.7.1.1.1.m1.1.1.3.1"></times><ci id="S4.T4.7.1.1.1.m1.1.1.3.2.cmml" xref="S4.T4.7.1.1.1.m1.1.1.3.2">𝑖</ci><ci id="S4.T4.7.1.1.1.m1.1.1.3.3.cmml" xref="S4.T4.7.1.1.1.m1.1.1.3.3">𝑗</ci></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.7.1.1.1.m1.1c">\mathbf{I}_{ij}</annotation><annotation encoding="application/x-llamapun" id="S4.T4.7.1.1.1.m1.1d">bold_I start_POSTSUBSCRIPT italic_i italic_j end_POSTSUBSCRIPT</annotation></semantics></math></span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.7.1.2" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text" id="S4.T4.7.1.2.1" style="background-color:#FFFFFF;">81.56</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.7.1.3" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text" id="S4.T4.7.1.3.1" style="background-color:#FFFFFF;">90.20</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.7.1.4" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text" id="S4.T4.7.1.4.1" style="background-color:#FFFFFF;">75.89</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.7.1.5" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text" id="S4.T4.7.1.5.1" style="background-color:#FFFFFF;">82.55</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.8.2" style="background-color:#ECECEC;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T4.8.2.1" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text" id="S4.T4.8.2.1.1" style="background-color:#ECECEC;">w/o <math alttext="\mathbf{B}_{ij}" class="ltx_Math" display="inline" id="S4.T4.8.2.1.1.m1.1" style="background-color:#ECECEC;"><semantics id="S4.T4.8.2.1.1.m1.1a"><msub id="S4.T4.8.2.1.1.m1.1.1" xref="S4.T4.8.2.1.1.m1.1.1.cmml"><mi id="S4.T4.8.2.1.1.m1.1.1.2" mathbackground="#ECECEC" xref="S4.T4.8.2.1.1.m1.1.1.2.cmml">𝐁</mi><mrow id="S4.T4.8.2.1.1.m1.1.1.3" xref="S4.T4.8.2.1.1.m1.1.1.3.cmml"><mi id="S4.T4.8.2.1.1.m1.1.1.3.2" mathbackground="#ECECEC" xref="S4.T4.8.2.1.1.m1.1.1.3.2.cmml">i</mi><mo id="S4.T4.8.2.1.1.m1.1.1.3.1" xref="S4.T4.8.2.1.1.m1.1.1.3.1.cmml">⁢</mo><mi id="S4.T4.8.2.1.1.m1.1.1.3.3" mathbackground="#ECECEC" xref="S4.T4.8.2.1.1.m1.1.1.3.3.cmml">j</mi></mrow></msub><annotation-xml encoding="MathML-Content" id="S4.T4.8.2.1.1.m1.1b"><apply id="S4.T4.8.2.1.1.m1.1.1.cmml" xref="S4.T4.8.2.1.1.m1.1.1"><csymbol cd="ambiguous" id="S4.T4.8.2.1.1.m1.1.1.1.cmml" xref="S4.T4.8.2.1.1.m1.1.1">subscript</csymbol><ci id="S4.T4.8.2.1.1.m1.1.1.2.cmml" xref="S4.T4.8.2.1.1.m1.1.1.2">𝐁</ci><apply id="S4.T4.8.2.1.1.m1.1.1.3.cmml" xref="S4.T4.8.2.1.1.m1.1.1.3"><times id="S4.T4.8.2.1.1.m1.1.1.3.1.cmml" xref="S4.T4.8.2.1.1.m1.1.1.3.1"></times><ci id="S4.T4.8.2.1.1.m1.1.1.3.2.cmml" xref="S4.T4.8.2.1.1.m1.1.1.3.2">𝑖</ci><ci id="S4.T4.8.2.1.1.m1.1.1.3.3.cmml" xref="S4.T4.8.2.1.1.m1.1.1.3.3">𝑗</ci></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.8.2.1.1.m1.1c">\mathbf{B}_{ij}</annotation><annotation encoding="application/x-llamapun" id="S4.T4.8.2.1.1.m1.1d">bold_B start_POSTSUBSCRIPT italic_i italic_j end_POSTSUBSCRIPT</annotation></semantics></math></span></th>
<td class="ltx_td ltx_align_center" id="S4.T4.8.2.2" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text" id="S4.T4.8.2.2.1" style="background-color:#ECECEC;">76.87</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.8.2.3" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text" id="S4.T4.8.2.3.1" style="background-color:#ECECEC;">87.50</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.8.2.4" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text" id="S4.T4.8.2.4.1" style="background-color:#ECECEC;">70.54</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.8.2.5" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text" id="S4.T4.8.2.5.1" style="background-color:#ECECEC;">78.30</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.9.3" style="background-color:#FFFFFF;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T4.9.3.1" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text" id="S4.T4.9.3.1.1" style="background-color:#FFFFFF;">w/o <math alttext="\mathbf{B}_{ij},\mathbf{I}_{ij}" class="ltx_Math" display="inline" id="S4.T4.9.3.1.1.m1.2"><semantics id="S4.T4.9.3.1.1.m1.2a"><mrow id="S4.T4.9.3.1.1.m1.2.2.2" xref="S4.T4.9.3.1.1.m1.2.2.3.cmml"><msub id="S4.T4.9.3.1.1.m1.1.1.1.1" xref="S4.T4.9.3.1.1.m1.1.1.1.1.cmml"><mi id="S4.T4.9.3.1.1.m1.1.1.1.1.2" mathbackground="#FFFFFF" xref="S4.T4.9.3.1.1.m1.1.1.1.1.2.cmml">𝐁</mi><mrow id="S4.T4.9.3.1.1.m1.1.1.1.1.3" xref="S4.T4.9.3.1.1.m1.1.1.1.1.3.cmml"><mi id="S4.T4.9.3.1.1.m1.1.1.1.1.3.2" mathbackground="#FFFFFF" xref="S4.T4.9.3.1.1.m1.1.1.1.1.3.2.cmml">i</mi><mo id="S4.T4.9.3.1.1.m1.1.1.1.1.3.1" xref="S4.T4.9.3.1.1.m1.1.1.1.1.3.1.cmml">⁢</mo><mi id="S4.T4.9.3.1.1.m1.1.1.1.1.3.3" mathbackground="#FFFFFF" xref="S4.T4.9.3.1.1.m1.1.1.1.1.3.3.cmml">j</mi></mrow></msub><mo id="S4.T4.9.3.1.1.m1.2.2.2.3" mathbackground="#FFFFFF" xref="S4.T4.9.3.1.1.m1.2.2.3.cmml">,</mo><msub id="S4.T4.9.3.1.1.m1.2.2.2.2" xref="S4.T4.9.3.1.1.m1.2.2.2.2.cmml"><mi id="S4.T4.9.3.1.1.m1.2.2.2.2.2" mathbackground="#FFFFFF" xref="S4.T4.9.3.1.1.m1.2.2.2.2.2.cmml">𝐈</mi><mrow id="S4.T4.9.3.1.1.m1.2.2.2.2.3" xref="S4.T4.9.3.1.1.m1.2.2.2.2.3.cmml"><mi id="S4.T4.9.3.1.1.m1.2.2.2.2.3.2" mathbackground="#FFFFFF" xref="S4.T4.9.3.1.1.m1.2.2.2.2.3.2.cmml">i</mi><mo id="S4.T4.9.3.1.1.m1.2.2.2.2.3.1" xref="S4.T4.9.3.1.1.m1.2.2.2.2.3.1.cmml">⁢</mo><mi id="S4.T4.9.3.1.1.m1.2.2.2.2.3.3" mathbackground="#FFFFFF" xref="S4.T4.9.3.1.1.m1.2.2.2.2.3.3.cmml">j</mi></mrow></msub></mrow><annotation-xml encoding="MathML-Content" id="S4.T4.9.3.1.1.m1.2b"><list id="S4.T4.9.3.1.1.m1.2.2.3.cmml" xref="S4.T4.9.3.1.1.m1.2.2.2"><apply id="S4.T4.9.3.1.1.m1.1.1.1.1.cmml" xref="S4.T4.9.3.1.1.m1.1.1.1.1"><csymbol cd="ambiguous" id="S4.T4.9.3.1.1.m1.1.1.1.1.1.cmml" xref="S4.T4.9.3.1.1.m1.1.1.1.1">subscript</csymbol><ci id="S4.T4.9.3.1.1.m1.1.1.1.1.2.cmml" xref="S4.T4.9.3.1.1.m1.1.1.1.1.2">𝐁</ci><apply id="S4.T4.9.3.1.1.m1.1.1.1.1.3.cmml" xref="S4.T4.9.3.1.1.m1.1.1.1.1.3"><times id="S4.T4.9.3.1.1.m1.1.1.1.1.3.1.cmml" xref="S4.T4.9.3.1.1.m1.1.1.1.1.3.1"></times><ci id="S4.T4.9.3.1.1.m1.1.1.1.1.3.2.cmml" xref="S4.T4.9.3.1.1.m1.1.1.1.1.3.2">𝑖</ci><ci id="S4.T4.9.3.1.1.m1.1.1.1.1.3.3.cmml" xref="S4.T4.9.3.1.1.m1.1.1.1.1.3.3">𝑗</ci></apply></apply><apply id="S4.T4.9.3.1.1.m1.2.2.2.2.cmml" xref="S4.T4.9.3.1.1.m1.2.2.2.2"><csymbol cd="ambiguous" id="S4.T4.9.3.1.1.m1.2.2.2.2.1.cmml" xref="S4.T4.9.3.1.1.m1.2.2.2.2">subscript</csymbol><ci id="S4.T4.9.3.1.1.m1.2.2.2.2.2.cmml" xref="S4.T4.9.3.1.1.m1.2.2.2.2.2">𝐈</ci><apply id="S4.T4.9.3.1.1.m1.2.2.2.2.3.cmml" xref="S4.T4.9.3.1.1.m1.2.2.2.2.3"><times id="S4.T4.9.3.1.1.m1.2.2.2.2.3.1.cmml" xref="S4.T4.9.3.1.1.m1.2.2.2.2.3.1"></times><ci id="S4.T4.9.3.1.1.m1.2.2.2.2.3.2.cmml" xref="S4.T4.9.3.1.1.m1.2.2.2.2.3.2">𝑖</ci><ci id="S4.T4.9.3.1.1.m1.2.2.2.2.3.3.cmml" xref="S4.T4.9.3.1.1.m1.2.2.2.2.3.3">𝑗</ci></apply></apply></list></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.9.3.1.1.m1.2c">\mathbf{B}_{ij},\mathbf{I}_{ij}</annotation><annotation encoding="application/x-llamapun" id="S4.T4.9.3.1.1.m1.2d">bold_B start_POSTSUBSCRIPT italic_i italic_j end_POSTSUBSCRIPT , bold_I start_POSTSUBSCRIPT italic_i italic_j end_POSTSUBSCRIPT</annotation></semantics></math></span></th>
<td class="ltx_td ltx_align_center" id="S4.T4.9.3.2" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text" id="S4.T4.9.3.2.1" style="background-color:#FFFFFF;">77.99</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.9.3.3" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text" id="S4.T4.9.3.3.1" style="background-color:#FFFFFF;">90.20</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.9.3.4" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text" id="S4.T4.9.3.4.1" style="background-color:#FFFFFF;">78.57</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.9.3.5" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text" id="S4.T4.9.3.5.1" style="background-color:#FFFFFF;">82.25</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.9.5.1" style="background-color:#ECECEC;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_t" id="S4.T4.9.5.1.1" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text ltx_font_italic" id="S4.T4.9.5.1.1.1" style="background-color:#ECECEC;">TalkHier (Ours)</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T4.9.5.1.2" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.9.5.1.2.1" style="background-color:#ECECEC;">83.80</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T4.9.5.1.3" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.9.5.1.3.1" style="background-color:#ECECEC;">93.14</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T4.9.5.1.4" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.9.5.1.4.1" style="background-color:#ECECEC;">84.68</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T4.9.5.1.5" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.9.5.1.5.1" style="background-color:#ECECEC;">87.21</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the ablation study results for the TalkHier model, focusing on the impact of removing components from the structured communication protocol on accuracy across three MMLU domains: Physics, Machine Learning, and Moral. The study systematically removes elements from the protocol, namely messages, background information, and intermediate outputs, to assess their individual contributions to the overall performance. By comparing the performance of TalkHier with and without each component, the study reveals the importance of each element for achieving high accuracy. The results demonstrate the effectiveness of the structured communication protocol and its impact on the performance of TalkHier.
> <details>
> <summary>read the caption</summary>
> Table 4: Ablative Results: Accuracy (%) across Physics, ML, and Moral domains. The study examines the impact of removing components from the structured communication protocol: message (𝐌i⁢jsubscript𝐌𝑖𝑗\mathbf{M}_{ij}bold_M start_POSTSUBSCRIPT italic_i italic_j end_POSTSUBSCRIPT), background (𝐁i⁢jsubscript𝐁𝑖𝑗\mathbf{B}_{ij}bold_B start_POSTSUBSCRIPT italic_i italic_j end_POSTSUBSCRIPT), and intermediate output (𝐈i⁢jsubscript𝐈𝑖𝑗\mathbf{I}_{ij}bold_I start_POSTSUBSCRIPT italic_i italic_j end_POSTSUBSCRIPT).
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S4.T5.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T5.1.1.1" style="background-color:#FFF2E6;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S4.T5.1.1.1.1" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text ltx_font_bold" id="S4.T5.1.1.1.1.1" style="background-color:#FFF2E6;">Models</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T5.1.1.1.2" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text ltx_font_bold" id="S4.T5.1.1.1.2.1" style="background-color:#FFF2E6;">B4<span class="ltx_text ltx_font_medium" id="S4.T5.1.1.1.2.1.1"> (↑)</span></span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T5.1.1.1.3" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text ltx_font_bold" id="S4.T5.1.1.1.3.1" style="background-color:#FFF2E6;">R1<span class="ltx_text ltx_font_medium" id="S4.T5.1.1.1.3.1.1"> (↑)</span></span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T5.1.1.1.4" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text ltx_font_bold" id="S4.T5.1.1.1.4.1" style="background-color:#FFF2E6;">BERT<span class="ltx_text ltx_font_medium" id="S4.T5.1.1.1.4.1.1"> (↑)</span></span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T5.1.1.1.5" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text ltx_font_bold" id="S4.T5.1.1.1.5.1" style="background-color:#FFF2E6;">Faithfulness<span class="ltx_text ltx_font_medium" id="S4.T5.1.1.1.5.1.1"> (↑)</span></span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T5.1.1.1.6" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text ltx_font_bold" id="S4.T5.1.1.1.6.1" style="background-color:#FFF2E6;">Fluency<span class="ltx_text ltx_font_medium" id="S4.T5.1.1.1.6.1.1"> (↑)</span></span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T5.1.1.1.7" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text ltx_font_bold" id="S4.T5.1.1.1.7.1" style="background-color:#FFF2E6;">Attractiveness<span class="ltx_text ltx_font_medium" id="S4.T5.1.1.1.7.1.1"> (↑)</span></span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T5.1.1.1.8" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text ltx_font_bold" id="S4.T5.1.1.1.8.1" style="background-color:#FFF2E6;">CCV<span class="ltx_text ltx_font_medium" id="S4.T5.1.1.1.8.1.1"> (↓)</span></span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T5.1.2.1" style="background-color:#FFFFFF;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T5.1.2.1.1" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text" id="S4.T5.1.2.1.1.1" style="background-color:#FFFFFF;">GPT-4o</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.1.2.1.2" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text" id="S4.T5.1.2.1.2.1" style="background-color:#FFFFFF;">0.01</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.1.2.1.3" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text" id="S4.T5.1.2.1.3.1" style="background-color:#FFFFFF;">0.02</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.1.2.1.4" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text" id="S4.T5.1.2.1.4.1" style="background-color:#FFFFFF;">0.65</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.1.2.1.5" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text" id="S4.T5.1.2.1.5.1" style="background-color:#FFFFFF;">4.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.1.2.1.6" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text" id="S4.T5.1.2.1.6.1" style="background-color:#FFFFFF;">5.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.1.2.1.7" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text" id="S4.T5.1.2.1.7.1" style="background-color:#FFFFFF;">6.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.1.2.1.8" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text" id="S4.T5.1.2.1.8.1" style="background-color:#FFFFFF;">16%</span></td>
</tr>
<tr class="ltx_tr" id="S4.T5.1.3.2" style="background-color:#ECECEC;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T5.1.3.2.1" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text" id="S4.T5.1.3.2.1.1" style="background-color:#ECECEC;">ReAct</span></th>
<td class="ltx_td ltx_align_center" id="S4.T5.1.3.2.2" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text" id="S4.T5.1.3.2.2.1" style="background-color:#ECECEC;">0.01</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.1.3.2.3" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text" id="S4.T5.1.3.2.3.1" style="background-color:#ECECEC;">0.01</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.1.3.2.4" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text" id="S4.T5.1.3.2.4.1" style="background-color:#ECECEC;">0.70</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.1.3.2.5" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text" id="S4.T5.1.3.2.5.1" style="background-color:#ECECEC;">4.9</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.1.3.2.6" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text" id="S4.T5.1.3.2.6.1" style="background-color:#ECECEC;">6.4</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.1.3.2.7" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text ltx_font_bold" id="S4.T5.1.3.2.7.1" style="background-color:#ECECEC;">7.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.1.3.2.8" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text" id="S4.T5.1.3.2.8.1" style="background-color:#ECECEC;">17%</span></td>
</tr>
<tr class="ltx_tr" id="S4.T5.1.4.3" style="background-color:#FFFFFF;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T5.1.4.3.1" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text" id="S4.T5.1.4.3.1.1" style="background-color:#FFFFFF;">OKG</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.1.4.3.2" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text" id="S4.T5.1.4.3.2.1" style="background-color:#FFFFFF;">0.03</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.1.4.3.3" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text" id="S4.T5.1.4.3.3.1" style="background-color:#FFFFFF;">0.16</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.1.4.3.4" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text" id="S4.T5.1.4.3.4.1" style="background-color:#FFFFFF;">0.73</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.1.4.3.5" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text" id="S4.T5.1.4.3.5.1" style="background-color:#FFFFFF;">6.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.1.4.3.6" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text" id="S4.T5.1.4.3.6.1" style="background-color:#FFFFFF;">8.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.1.4.3.7" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text" id="S4.T5.1.4.3.7.1" style="background-color:#FFFFFF;">6.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.1.4.3.8" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text ltx_font_bold" id="S4.T5.1.4.3.8.1" style="background-color:#FFFFFF;">4%</span></td>
</tr>
<tr class="ltx_tr" id="S4.T5.1.5.4" style="background-color:#ECECEC;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_t" id="S4.T5.1.5.4.1" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text ltx_font_italic" id="S4.T5.1.5.4.1.1" style="background-color:#ECECEC;">TalkHier (Ours)</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T5.1.5.4.2" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text ltx_font_bold" id="S4.T5.1.5.4.2.1" style="background-color:#ECECEC;">0.04</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T5.1.5.4.3" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text ltx_font_bold" id="S4.T5.1.5.4.3.1" style="background-color:#ECECEC;">0.20</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T5.1.5.4.4" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text ltx_font_bold" id="S4.T5.1.5.4.4.1" style="background-color:#ECECEC;">0.91</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T5.1.5.4.5" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text ltx_font_bold" id="S4.T5.1.5.4.5.1" style="background-color:#ECECEC;">8.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T5.1.5.4.6" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text ltx_font_bold" id="S4.T5.1.5.4.6.1" style="background-color:#ECECEC;">8.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T5.1.5.4.7" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text" id="S4.T5.1.5.4.7.1" style="background-color:#ECECEC;">6.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T5.1.5.4.8" style="padding-top:1.25pt;padding-bottom:1.25pt;"><span class="ltx_text ltx_font_bold" id="S4.T5.1.5.4.8.1" style="background-color:#ECECEC;">4%</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the quantitative evaluation results of different models on the Camera dataset, a benchmark for Japanese ad text generation.  The performance of each model is assessed using several metrics, which can be categorized into two groups: general-purpose metrics for evaluating text quality and domain-specific metrics for evaluating advertisement effectiveness. The general-purpose metrics include BLEU-4, ROUGE-1, and BERTScore, which measure aspects like fluency and semantic similarity. The domain-specific metrics are Faithfulness (how well the ad reflects the product), Fluency (how well-written the ad is), Attractiveness (how engaging the ad is), and Character Count Violation (how well the ad adheres to character limits).  Higher scores generally indicate better performance.
> <details>
> <summary>read the caption</summary>
> Table 5: Evaluation Results on Camera Dataset. We report BLEU-4 (B4), ROUGE-1 (R1), BERTScore (BERT), and domain-specific metrics (Faithfulness, Fluency, Attractiveness, Character Count Violation(CCV)) following Mita et al. (2024).
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="A2.T6.1">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A2.T6.1.1.1">
<td class="ltx_td ltx_align_left ltx_border_tt" id="A2.T6.1.1.1.1">Task</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A2.T6.1.1.1.2">Metric</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_tt" id="A2.T6.1.1.1.3">
<span class="ltx_inline-block ltx_align_top" id="A2.T6.1.1.1.3.1">
<span class="ltx_p" id="A2.T6.1.1.1.3.1.1" style="width:227.6pt;">Description</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T6.1.2.2">
<td class="ltx_td ltx_align_left ltx_border_t" id="A2.T6.1.2.2.1" rowspan="4"><span class="ltx_text" id="A2.T6.1.2.2.1.1">Moral Scenarios</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T6.1.2.2.2">Intent</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A2.T6.1.2.2.3">
<span class="ltx_inline-block ltx_align_top" id="A2.T6.1.2.2.3.1">
<span class="ltx_p" id="A2.T6.1.2.2.3.1.1" style="width:227.6pt;">Evaluates the intentions behind actions.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T6.1.3.3">
<td class="ltx_td ltx_align_center" id="A2.T6.1.3.3.1">Normality</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A2.T6.1.3.3.2">
<span class="ltx_inline-block ltx_align_top" id="A2.T6.1.3.3.2.1">
<span class="ltx_p" id="A2.T6.1.3.3.2.1.1" style="width:227.6pt;">Evaluates how normal the action is.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T6.1.4.4">
<td class="ltx_td ltx_align_center" id="A2.T6.1.4.4.1">Responsibility</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A2.T6.1.4.4.2">
<span class="ltx_inline-block ltx_align_top" id="A2.T6.1.4.4.2.1">
<span class="ltx_p" id="A2.T6.1.4.4.2.1.1" style="width:227.6pt;">Evaluates the degree of responsibility behind the action.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T6.1.5.5">
<td class="ltx_td ltx_align_center" id="A2.T6.1.5.5.1">Well-being</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A2.T6.1.5.5.2">
<span class="ltx_inline-block ltx_align_top" id="A2.T6.1.5.5.2.1">
<span class="ltx_p" id="A2.T6.1.5.5.2.1.1" style="width:227.6pt;">Evaluates whether the action promotes well-being.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T6.1.6.6">
<td class="ltx_td ltx_align_left ltx_border_t" id="A2.T6.1.6.6.1" rowspan="2"><span class="ltx_text" id="A2.T6.1.6.6.1.1">College Physics</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T6.1.6.6.2">Mathematics</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A2.T6.1.6.6.3">
<span class="ltx_inline-block ltx_align_top" id="A2.T6.1.6.6.3.1">
<span class="ltx_p" id="A2.T6.1.6.6.3.1.1" style="width:227.6pt;">Evaluates mathematical correctness and calculations.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T6.1.7.7">
<td class="ltx_td ltx_align_center" id="A2.T6.1.7.7.1">Physics</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A2.T6.1.7.7.2">
<span class="ltx_inline-block ltx_align_top" id="A2.T6.1.7.7.2.1">
<span class="ltx_p" id="A2.T6.1.7.7.2.1.1" style="width:227.6pt;">Evaluates the accuracy of physical principles applied.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T6.1.8.8">
<td class="ltx_td ltx_align_left ltx_border_t" id="A2.T6.1.8.8.1" rowspan="3"><span class="ltx_text" id="A2.T6.1.8.8.1.1">Machine Learning</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T6.1.8.8.2">Answer Consistency</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A2.T6.1.8.8.3">
<span class="ltx_inline-block ltx_align_top" id="A2.T6.1.8.8.3.1">
<span class="ltx_p" id="A2.T6.1.8.8.3.1.1" style="width:227.6pt;">Checks underlying assumptions in models and methodologies.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T6.1.9.9">
<td class="ltx_td ltx_align_center" id="A2.T6.1.9.9.1">Machine Learning</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A2.T6.1.9.9.2">
<span class="ltx_inline-block ltx_align_top" id="A2.T6.1.9.9.2.1">
<span class="ltx_p" id="A2.T6.1.9.9.2.1.1" style="width:227.6pt;">Evaluates machine learning concepts and implementation.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T6.1.10.10">
<td class="ltx_td ltx_align_center" id="A2.T6.1.10.10.1">Stastical Soundenss</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A2.T6.1.10.10.2">
<span class="ltx_inline-block ltx_align_top" id="A2.T6.1.10.10.2.1">
<span class="ltx_p" id="A2.T6.1.10.10.2.1.1" style="width:227.6pt;">Evaluates whether the solution is sound in stastical terms.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T6.1.11.11">
<td class="ltx_td ltx_align_left ltx_border_t" id="A2.T6.1.11.11.1" rowspan="5"><span class="ltx_text" id="A2.T6.1.11.11.1.1">Formal Logic</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T6.1.11.11.2">Logical Argument</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A2.T6.1.11.11.3">
<span class="ltx_inline-block ltx_align_top" id="A2.T6.1.11.11.3.1">
<span class="ltx_p" id="A2.T6.1.11.11.3.1.1" style="width:227.6pt;">Evaluates whether the arguments used are logically correct.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T6.1.12.12">
<td class="ltx_td ltx_align_center" id="A2.T6.1.12.12.1">Truth Table</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A2.T6.1.12.12.2">
<span class="ltx_inline-block ltx_align_top" id="A2.T6.1.12.12.2.1">
<span class="ltx_p" id="A2.T6.1.12.12.2.1.1" style="width:227.6pt;">Evaluates correctness of generated truth tables and implied results.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T6.1.13.13">
<td class="ltx_td ltx_align_center" id="A2.T6.1.13.13.1">Counterexample</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A2.T6.1.13.13.2">
<span class="ltx_inline-block ltx_align_top" id="A2.T6.1.13.13.2.1">
<span class="ltx_p" id="A2.T6.1.13.13.2.1.1" style="width:227.6pt;">Evaluates whether the counterexamples are utilized correctly.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T6.1.14.14">
<td class="ltx_td ltx_align_center" id="A2.T6.1.14.14.1">Predicate Logic</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A2.T6.1.14.14.2">
<span class="ltx_inline-block ltx_align_top" id="A2.T6.1.14.14.2.1">
<span class="ltx_p" id="A2.T6.1.14.14.2.1.1" style="width:227.6pt;">Evaluates correctness of the use of predicate logic formulas.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T6.1.15.15">
<td class="ltx_td ltx_align_center" id="A2.T6.1.15.15.1">Formal Logic</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A2.T6.1.15.15.2">
<span class="ltx_inline-block ltx_align_top" id="A2.T6.1.15.15.2.1">
<span class="ltx_p" id="A2.T6.1.15.15.2.1.1" style="width:227.6pt;">Evaluates correctness in terms of formal logic.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T6.1.16.16">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_t" id="A2.T6.1.16.16.1" rowspan="6"><span class="ltx_text" id="A2.T6.1.16.16.1.1">US Foreign Policy</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T6.1.16.16.2">Factual Accuracy</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A2.T6.1.16.16.3">
<span class="ltx_inline-block ltx_align_top" id="A2.T6.1.16.16.3.1">
<span class="ltx_p" id="A2.T6.1.16.16.3.1.1" style="width:227.6pt;">Evaluates whether the facts implied by the answer are correct.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T6.1.17.17">
<td class="ltx_td ltx_align_center" id="A2.T6.1.17.17.1">Policy Alignment</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A2.T6.1.17.17.2">
<span class="ltx_inline-block ltx_align_top" id="A2.T6.1.17.17.2.1">
<span class="ltx_p" id="A2.T6.1.17.17.2.1.1" style="width:227.6pt;">Evaluates whether the answer aligns with established policies and agreements.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T6.1.18.18">
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T6.1.18.18.1">Conceptual Clarity</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb" id="A2.T6.1.18.18.2">
<span class="ltx_inline-block ltx_align_top" id="A2.T6.1.18.18.2.1">
<span class="ltx_p" id="A2.T6.1.18.18.2.1.1" style="width:227.6pt;">Evaluates whether the answer accurately represents the core definition.</span>
</span>
</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table details the evaluation metrics used for each task in the MMLU benchmark.  For each task (Moral Scenarios, College Physics, Machine Learning, Formal Logic, and US Foreign Policy), the table lists the specific metrics used to assess the quality of generated answers.  These metrics include aspects such as the logical soundness of arguments, the accuracy of mathematical calculations, the ethical considerations of responses, and the alignment with established policies (where applicable). The descriptions provide a clear understanding of what each metric evaluates in the context of its corresponding task.
> <details>
> <summary>read the caption</summary>
> Table 6: List of evaluators allocated for each task
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="A4.T7.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A4.T7.1.1.1">
<th class="ltx_td ltx_align_justify ltx_align_top ltx_th ltx_th_column ltx_border_tt" id="A4.T7.1.1.1.1">
<span class="ltx_inline-block ltx_align_top" id="A4.T7.1.1.1.1.1">
<span class="ltx_p" id="A4.T7.1.1.1.1.1.1" style="width:184.9pt;"><span class="ltx_text ltx_font_bold" id="A4.T7.1.1.1.1.1.1.1">Before Revision</span></span>
</span>
</th>
<th class="ltx_td ltx_align_justify ltx_align_top ltx_th ltx_th_column ltx_border_tt" id="A4.T7.1.1.1.2">
<span class="ltx_inline-block ltx_align_top" id="A4.T7.1.1.1.2.1">
<span class="ltx_p" id="A4.T7.1.1.1.2.1.1" style="width:184.9pt;"><span class="ltx_text ltx_font_bold" id="A4.T7.1.1.1.2.1.1.1">After Revision</span></span>
</span>
</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A4.T7.1.2.1">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A4.T7.1.2.1.1">
<span class="ltx_inline-block ltx_align_top" id="A4.T7.1.2.1.1.1">
<span class="ltx_p" id="A4.T7.1.2.1.1.1.1" style="width:184.9pt;">Challenge prestigious school entrance exams</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A4.T7.1.2.1.2">
<span class="ltx_inline-block ltx_align_top" id="A4.T7.1.2.1.2.1">
<span class="ltx_p" id="A4.T7.1.2.1.2.1.1" style="width:184.9pt;"><span class="ltx_text" id="A4.T7.1.2.1.2.1.1.1" style="color:#228B22;">Support your challenge</span> to enter prestigious schools</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A4.T7.1.3.2">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A4.T7.1.3.2.1">
<span class="ltx_inline-block ltx_align_top" id="A4.T7.1.3.2.1.1">
<span class="ltx_p" id="A4.T7.1.3.2.1.1.1" style="width:184.9pt;">Guidance from professional home tutors</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A4.T7.1.3.2.2">
<span class="ltx_inline-block ltx_align_top" id="A4.T7.1.3.2.2.1">
<span class="ltx_p" id="A4.T7.1.3.2.2.1.1" style="width:184.9pt;">High-quality guidance from <span class="ltx_text" id="A4.T7.1.3.2.2.1.1.1" style="color:#228B22;">professional home tutors</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A4.T7.1.4.3">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A4.T7.1.4.3.1">
<span class="ltx_inline-block ltx_align_top" id="A4.T7.1.4.3.1.1">
<span class="ltx_p" id="A4.T7.1.4.3.1.1.1" style="width:184.9pt;">We provide sure-win exam preparation</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A4.T7.1.4.3.2">
<span class="ltx_inline-block ltx_align_top" id="A4.T7.1.4.3.2.1">
<span class="ltx_p" id="A4.T7.1.4.3.2.1.1" style="width:184.9pt;">We provide <span class="ltx_text" id="A4.T7.1.4.3.2.1.1.1" style="color:#228B22;">reliable exam preparation</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A4.T7.1.5.4">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A4.T7.1.5.4.1">
<span class="ltx_inline-block ltx_align_top" id="A4.T7.1.5.4.1.1">
<span class="ltx_p" id="A4.T7.1.5.4.1.1.1" style="width:184.9pt;">Improve grades with a customized curriculum</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A4.T7.1.5.4.2">
<span class="ltx_inline-block ltx_align_top" id="A4.T7.1.5.4.2.1">
<span class="ltx_p" id="A4.T7.1.5.4.2.1.1" style="width:184.9pt;"><span class="ltx_text" id="A4.T7.1.5.4.2.1.1.1" style="color:#228B22;">Boost grades</span> with a customized curriculum</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A4.T7.1.6.5">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb" id="A4.T7.1.6.5.1">
<span class="ltx_inline-block ltx_align_top" id="A4.T7.1.6.5.1.1">
<span class="ltx_p" id="A4.T7.1.6.5.1.1.1" style="width:184.9pt;">Prepare for exams online</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb" id="A4.T7.1.6.5.2">
<span class="ltx_inline-block ltx_align_top" id="A4.T7.1.6.5.2.1">
<span class="ltx_p" id="A4.T7.1.6.5.2.1.1" style="width:184.9pt;"><span class="ltx_text" id="A4.T7.1.6.5.2.1.1.1" style="color:#228B22;">Effective exam preparation online</span></span>
</span>
</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table showcases examples of how ad headlines for educational services were improved through revisions.  The original headlines, written in Japanese, were translated into English for clarity.  The table highlights specific changes made to the headlines (shown in green text) to enhance readability, appeal, and persuasiveness without altering the original intent. It demonstrates how refinements focused on strengthening key selling points, enhancing emotional impact, and ensuring clear communication with potential customers.
> <details>
> <summary>read the caption</summary>
> Table 7: Revisions of Educational Ad Headlines with Highlights (Original: Japanese, Translated: English). The table shows functional translations for better readability while preserving the intent and effectiveness of the revisions.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="A4.T8.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A4.T8.1.1.1">
<th class="ltx_td ltx_align_justify ltx_align_top ltx_th ltx_th_column ltx_border_tt" id="A4.T8.1.1.1.1">
<span class="ltx_inline-block ltx_align_top" id="A4.T8.1.1.1.1.1">
<span class="ltx_p" id="A4.T8.1.1.1.1.1.1" style="width:184.9pt;"><span class="ltx_text ltx_font_bold" id="A4.T8.1.1.1.1.1.1.1">Before Revision</span></span>
</span>
</th>
<th class="ltx_td ltx_align_justify ltx_align_top ltx_th ltx_th_column ltx_border_tt" id="A4.T8.1.1.1.2">
<span class="ltx_inline-block ltx_align_top" id="A4.T8.1.1.1.2.1">
<span class="ltx_p" id="A4.T8.1.1.1.2.1.1" style="width:184.9pt;"><span class="ltx_text ltx_font_bold" id="A4.T8.1.1.1.2.1.1.1">After Revision</span></span>
</span>
</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A4.T8.1.2.1">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A4.T8.1.2.1.1">
<span class="ltx_inline-block ltx_align_top" id="A4.T8.1.2.1.1.1">
<span class="ltx_p" id="A4.T8.1.2.1.1.1.1" style="width:184.9pt;">Get a job with Baitoru NEXT</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A4.T8.1.2.1.2">
<span class="ltx_inline-block ltx_align_top" id="A4.T8.1.2.1.2.1">
<span class="ltx_p" id="A4.T8.1.2.1.2.1.1" style="width:184.9pt;">Find your <span class="ltx_text" id="A4.T8.1.2.1.2.1.1.1" style="color:#228B22;">ideal job</span> with Baitoru NEXT</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A4.T8.1.3.2">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A4.T8.1.3.2.1">
<span class="ltx_inline-block ltx_align_top" id="A4.T8.1.3.2.1.1">
<span class="ltx_p" id="A4.T8.1.3.2.1.1.1" style="width:184.9pt;">Job change and employment with Baitoru NEXT</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A4.T8.1.3.2.2">
<span class="ltx_inline-block ltx_align_top" id="A4.T8.1.3.2.2.1">
<span class="ltx_p" id="A4.T8.1.3.2.2.1.1" style="width:184.9pt;">For <span class="ltx_text" id="A4.T8.1.3.2.2.1.1.1" style="color:#228B22;">career change and employment</span>, use Baitoru NEXT</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A4.T8.1.4.3">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A4.T8.1.4.3.1">
<span class="ltx_inline-block ltx_align_top" id="A4.T8.1.4.3.1.1">
<span class="ltx_p" id="A4.T8.1.4.3.1.1.1" style="width:184.9pt;">Aim to debut with Baitoru NEXT</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A4.T8.1.4.3.2">
<span class="ltx_inline-block ltx_align_top" id="A4.T8.1.4.3.2.1">
<span class="ltx_p" id="A4.T8.1.4.3.2.1.1" style="width:184.9pt;"><span class="ltx_text" id="A4.T8.1.4.3.2.1.1.1" style="color:#228B22;">Start your career</span> with Baitoru NEXT</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A4.T8.1.5.4">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A4.T8.1.5.4.1">
<span class="ltx_inline-block ltx_align_top" id="A4.T8.1.5.4.1.1">
<span class="ltx_p" id="A4.T8.1.5.4.1.1.1" style="width:184.9pt;">Start your job search</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A4.T8.1.5.4.2">
<span class="ltx_inline-block ltx_align_top" id="A4.T8.1.5.4.2.1">
<span class="ltx_p" id="A4.T8.1.5.4.2.1.1" style="width:184.9pt;">Take the <span class="ltx_text" id="A4.T8.1.5.4.2.1.1.1" style="color:#228B22;">first step in your career</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A4.T8.1.6.5">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A4.T8.1.6.5.1">
<span class="ltx_inline-block ltx_align_top" id="A4.T8.1.6.5.1.1">
<span class="ltx_p" id="A4.T8.1.6.5.1.1.1" style="width:184.9pt;">Find a new workplace</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A4.T8.1.6.5.2">
<span class="ltx_inline-block ltx_align_top" id="A4.T8.1.6.5.2.1">
<span class="ltx_p" id="A4.T8.1.6.5.2.1.1" style="width:184.9pt;">Discover <span class="ltx_text" id="A4.T8.1.6.5.2.1.1.1" style="color:#228B22;">new job opportunities</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A4.T8.1.7.6">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb" id="A4.T8.1.7.6.1">
<span class="ltx_inline-block ltx_align_top" id="A4.T8.1.7.6.1.1">
<span class="ltx_p" id="A4.T8.1.7.6.1.1.1" style="width:184.9pt;">Opportunity to aim for a debut</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb" id="A4.T8.1.7.6.2">
<span class="ltx_inline-block ltx_align_top" id="A4.T8.1.7.6.2.1">
<span class="ltx_p" id="A4.T8.1.7.6.2.1.1" style="width:184.9pt;"><span class="ltx_text" id="A4.T8.1.7.6.2.1.1.1" style="color:#228B22;">Opportunities for a successful debut</span></span>
</span>
</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents before-and-after revisions of employment ad headlines originally written in Japanese and then translated into English.  The 'Before Revision' column shows the original Japanese headline's English translation, while the 'After Revision' column displays the revised version. The revisions aim to improve readability and effectiveness, preserving the original intent. Highlighted text indicates specific changes made to improve the headline's clarity, appeal, or impact. This allows readers to directly observe the types of modifications done to enhance the ads.
> <details>
> <summary>read the caption</summary>
> Table 8: Revisions of Employment Ad Headlines with Highlights (Original: Japanese, Translated: English). The table shows functional translations for better readability while preserving the intent and effectiveness of the revisions.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="A5.T9.7">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A5.T9.7.1.1">
<td class="ltx_td ltx_align_left ltx_border_tt" id="A5.T9.7.1.1.1"><span class="ltx_text ltx_font_bold" id="A5.T9.7.1.1.1.1">Headline</span></td>
<td class="ltx_td ltx_align_left ltx_border_tt" id="A5.T9.7.1.1.2"><span class="ltx_text ltx_font_bold" id="A5.T9.7.1.1.2.1">Method</span></td>
<td class="ltx_td ltx_align_left ltx_border_tt" id="A5.T9.7.1.1.3"><span class="ltx_text ltx_font_bold" id="A5.T9.7.1.1.3.1">Generated Headline (English)</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A5.T9.7.1.1.4"><span class="ltx_text ltx_font_bold" id="A5.T9.7.1.1.4.1">Human1</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A5.T9.7.1.1.5"><span class="ltx_text ltx_font_bold" id="A5.T9.7.1.1.5.1">Human2</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A5.T9.7.1.1.6"><span class="ltx_text ltx_font_bold" id="A5.T9.7.1.1.6.1">Human…</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A5.T9.7.1.1.7"><span class="ltx_text ltx_font_bold ltx_font_italic" id="A5.T9.7.1.1.7.1">TalkHier</span></td>
</tr>
<tr class="ltx_tr" id="A5.T9.7.2.2">
<td class="ltx_td ltx_align_left ltx_border_t" id="A5.T9.7.2.2.1">H1_card</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A5.T9.7.2.2.2"><span class="ltx_text ltx_font_italic" id="A5.T9.7.2.2.2.1">TalkHier</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A5.T9.7.2.2.3">LifeCard with No Annual Fee</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T9.7.2.2.4">4.33</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T9.7.2.2.5">4.33</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T9.7.2.2.6">…</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T9.7.2.2.7">5</td>
</tr>
<tr class="ltx_tr" id="A5.T9.7.3.3">
<td class="ltx_td ltx_align_left" id="A5.T9.7.3.3.1">H2_card</td>
<td class="ltx_td ltx_align_left" id="A5.T9.7.3.3.2"><span class="ltx_text ltx_font_italic" id="A5.T9.7.3.3.2.1">TalkHier</span></td>
<td class="ltx_td ltx_align_left" id="A5.T9.7.3.3.3">Receive Your Card in Two Business Days</td>
<td class="ltx_td ltx_align_center" id="A5.T9.7.3.3.4">5</td>
<td class="ltx_td ltx_align_center" id="A5.T9.7.3.3.5">4.66</td>
<td class="ltx_td ltx_align_center" id="A5.T9.7.3.3.6">…</td>
<td class="ltx_td ltx_align_center" id="A5.T9.7.3.3.7">4</td>
</tr>
<tr class="ltx_tr" id="A5.T9.7.4.4">
<td class="ltx_td ltx_align_left" id="A5.T9.7.4.4.1">H3_card</td>
<td class="ltx_td ltx_align_left" id="A5.T9.7.4.4.2"><span class="ltx_text ltx_font_italic" id="A5.T9.7.4.4.2.1">TalkHier</span></td>
<td class="ltx_td ltx_align_left" id="A5.T9.7.4.4.3">Earn Points for Every ¥100 You Spend</td>
<td class="ltx_td ltx_align_center" id="A5.T9.7.4.4.4">4.33</td>
<td class="ltx_td ltx_align_center" id="A5.T9.7.4.4.5">5</td>
<td class="ltx_td ltx_align_center" id="A5.T9.7.4.4.6">…</td>
<td class="ltx_td ltx_align_center" id="A5.T9.7.4.4.7">4.33</td>
</tr>
<tr class="ltx_tr" id="A5.T9.7.5.5">
<td class="ltx_td ltx_align_left" id="A5.T9.7.5.5.1">H4_card</td>
<td class="ltx_td ltx_align_left" id="A5.T9.7.5.5.2"><span class="ltx_text ltx_font_italic" id="A5.T9.7.5.5.2.1">TalkHier</span></td>
<td class="ltx_td ltx_align_left" id="A5.T9.7.5.5.3">Triple Points on Your Birthday Month</td>
<td class="ltx_td ltx_align_center" id="A5.T9.7.5.5.4">4.33</td>
<td class="ltx_td ltx_align_center" id="A5.T9.7.5.5.5">4.33</td>
<td class="ltx_td ltx_align_center" id="A5.T9.7.5.5.6">…</td>
<td class="ltx_td ltx_align_center" id="A5.T9.7.5.5.7">5</td>
</tr>
<tr class="ltx_tr" id="A5.T9.7.6.6">
<td class="ltx_td ltx_align_left" id="A5.T9.7.6.6.1">H5_card</td>
<td class="ltx_td ltx_align_left" id="A5.T9.7.6.6.2"><span class="ltx_text ltx_font_italic" id="A5.T9.7.6.6.2.1">TalkHier</span></td>
<td class="ltx_td ltx_align_left" id="A5.T9.7.6.6.3">A Card That Fits Your Lifestyle</td>
<td class="ltx_td ltx_align_center" id="A5.T9.7.6.6.4">2.33</td>
<td class="ltx_td ltx_align_center" id="A5.T9.7.6.6.5">4</td>
<td class="ltx_td ltx_align_center" id="A5.T9.7.6.6.6">…</td>
<td class="ltx_td ltx_align_center" id="A5.T9.7.6.6.7">4</td>
</tr>
<tr class="ltx_tr" id="A5.T9.7.7.7">
<td class="ltx_td ltx_align_left ltx_border_t" id="A5.T9.7.7.7.1">H6_card</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A5.T9.7.7.7.2">ReAct</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A5.T9.7.7.7.3">Full of Benefits, LifeCard is Here</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T9.7.7.7.4">3.66</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T9.7.7.7.5">3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T9.7.7.7.6">…</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T9.7.7.7.7">3</td>
</tr>
<tr class="ltx_tr" id="A5.T9.7.8.8">
<td class="ltx_td ltx_align_left" id="A5.T9.7.8.8.1">H7_card</td>
<td class="ltx_td ltx_align_left" id="A5.T9.7.8.8.2">ReAct</td>
<td class="ltx_td ltx_align_left" id="A5.T9.7.8.8.3">Start a New Life with LifeCard</td>
<td class="ltx_td ltx_align_center" id="A5.T9.7.8.8.4">2.33</td>
<td class="ltx_td ltx_align_center" id="A5.T9.7.8.8.5">3.66</td>
<td class="ltx_td ltx_align_center" id="A5.T9.7.8.8.6">…</td>
<td class="ltx_td ltx_align_center" id="A5.T9.7.8.8.7">2.33</td>
</tr>
<tr class="ltx_tr" id="A5.T9.7.9.9">
<td class="ltx_td ltx_align_left" id="A5.T9.7.9.9.1">H8_card</td>
<td class="ltx_td ltx_align_left" id="A5.T9.7.9.9.2">ReAct</td>
<td class="ltx_td ltx_align_left" id="A5.T9.7.9.9.3">Save Smartly with LifeCard</td>
<td class="ltx_td ltx_align_center" id="A5.T9.7.9.9.4">3.66</td>
<td class="ltx_td ltx_align_center" id="A5.T9.7.9.9.5">4.33</td>
<td class="ltx_td ltx_align_center" id="A5.T9.7.9.9.6">…</td>
<td class="ltx_td ltx_align_center" id="A5.T9.7.9.9.7">3</td>
</tr>
<tr class="ltx_tr" id="A5.T9.7.10.10">
<td class="ltx_td ltx_align_left" id="A5.T9.7.10.10.1">H9_card</td>
<td class="ltx_td ltx_align_left" id="A5.T9.7.10.10.2">ReAct</td>
<td class="ltx_td ltx_align_left" id="A5.T9.7.10.10.3">Shop with LifeCard</td>
<td class="ltx_td ltx_align_center" id="A5.T9.7.10.10.4">3.66</td>
<td class="ltx_td ltx_align_center" id="A5.T9.7.10.10.5">3.66</td>
<td class="ltx_td ltx_align_center" id="A5.T9.7.10.10.6">…</td>
<td class="ltx_td ltx_align_center" id="A5.T9.7.10.10.7">3</td>
</tr>
<tr class="ltx_tr" id="A5.T9.7.11.11">
<td class="ltx_td ltx_align_left" id="A5.T9.7.11.11.1">H10_card</td>
<td class="ltx_td ltx_align_left" id="A5.T9.7.11.11.2">ReAct</td>
<td class="ltx_td ltx_align_left" id="A5.T9.7.11.11.3">Trusted and Reliable Life Card</td>
<td class="ltx_td ltx_align_center" id="A5.T9.7.11.11.4">3.66</td>
<td class="ltx_td ltx_align_center" id="A5.T9.7.11.11.5">4</td>
<td class="ltx_td ltx_align_center" id="A5.T9.7.11.11.6">…</td>
<td class="ltx_td ltx_align_center" id="A5.T9.7.11.11.7">3.66</td>
</tr>
<tr class="ltx_tr" id="A5.T9.7.12.12">
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" colspan="7" id="A5.T9.7.12.12.1">…<span class="ltx_text ltx_font_italic" id="A5.T9.7.12.12.1.1">(remaining headlines not shown)</span>
</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 Table 9 presents a subset of the data used in a subjective human evaluation experiment comparing headline quality generated by the TalkHier model and a baseline (ReAct) model.  The table shows 10 headlines for a 'credit card' product. For each headline, the table indicates whether it was generated by TalkHier or ReAct, and shows the ratings provided by three of four human evaluators, along with a rating from the TalkHier evaluation team. This allows a comparison of the relative performance of TalkHier versus ReAct, highlighting the tendency for TalkHier to receive higher scores.
> <details>
> <summary>read the caption</summary>
> Table 9: A sample of 10 headlines for the “credit card” product (LifeCard). Five are generated by TalkHier, and five by the baseline ReAct. We show partial ratings (three of the four human raters plus the TalkHier evaluation team) to illustrate how TalkHier generally receives higher scores than the Baseline.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="A5.T10.3">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A5.T10.3.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="A5.T10.3.1.1.1"><span class="ltx_text ltx_font_bold" id="A5.T10.3.1.1.1.1">Metric</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A5.T10.3.1.1.2"><span class="ltx_text ltx_font_bold" id="A5.T10.3.1.1.2.1">Value</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A5.T10.3.1.1.3"><span class="ltx_text ltx_font_bold" id="A5.T10.3.1.1.3.1">p-value</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A5.T10.3.2.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A5.T10.3.2.1.1">Pearson Correlation</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T10.3.2.1.2">0.67</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T10.3.2.1.3">0.036</td>
</tr>
<tr class="ltx_tr" id="A5.T10.3.3.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A5.T10.3.3.2.1">Spearman Correlation</th>
<td class="ltx_td ltx_align_center" id="A5.T10.3.3.2.2">0.68</td>
<td class="ltx_td ltx_align_center" id="A5.T10.3.3.2.3">0.030</td>
</tr>
<tr class="ltx_tr" id="A5.T10.3.4.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A5.T10.3.4.3.1">ICC (2,1)</th>
<td class="ltx_td ltx_align_center" id="A5.T10.3.4.3.2">0.23</td>
<td class="ltx_td ltx_align_center" id="A5.T10.3.4.3.3">–</td>
</tr>
<tr class="ltx_tr" id="A5.T10.3.5.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="A5.T10.3.5.4.1">ICC (2,4)</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A5.T10.3.5.4.2">0.33</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A5.T10.3.5.4.3">–</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of an evaluation comparing TalkHier's headline ratings to human ratings.  It shows how well TalkHier's automated scoring aligns with human judgment on the quality of generated ad headlines.  Specifically, it reports the Pearson and Spearman correlations between TalkHier's ratings and the average human ratings, as well as the Intraclass Correlation Coefficient (ICC). The ICC is presented in two forms: ICC(2,1), assessing agreement with individual human raters, and ICC(2,4), assessing agreement with the overall human consensus.  Because of the small number of headlines evaluated (10), confidence intervals are not reported.
> <details>
> <summary>read the caption</summary>
> Table 10: Summary of evaluation metrics demonstrating how closely TalkHier’s scores align with human ratings for the 10 generated headlines. Confidence intervals (CIs) are not reported due to the small sample size.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2502.11098/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.11098/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.11098/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.11098/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.11098/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.11098/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.11098/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.11098/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.11098/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.11098/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.11098/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.11098/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.11098/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.11098/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.11098/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.11098/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.11098/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.11098/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.11098/19.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.11098/20.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}