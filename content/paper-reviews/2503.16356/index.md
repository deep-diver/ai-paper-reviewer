---
title: "CaKE: Circuit-aware Editing Enables Generalizable Knowledge Learners"
summary: "CaKE: Editing LLMs to Enhance Knowledge Generalization Across Reasoning Tasks."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Natural Language Processing", "Large Language Models", "🏢 University of California, Los Angeles",]
showSummary: true
date: 2025-03-20
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2503.16356 {{< /keyword >}}
{{< keyword icon="writer" >}} Yunzhi Yao et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-03-21 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2503.16356" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2503.16356" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2503.16356/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Knowledge Editing (KE) in Large Language Models (LLMs) is challenged by the need to effectively update and generalize information across multi-hop reasoning tasks. Existing KE methods struggle with integrating updated information into reasoning pathways because they focus on single or few model layers. This leads to inconsistent knowledge propagation and poor performance in downstream reasoning tasks.



This paper introduces **CaKE, a novel method that enhances the integration of updated knowledge in LLMs**. CaKE uses strategically curated data to enforce the model to utilize the modified knowledge, stimulating the development of appropriate reasoning circuits. Experimental results demonstrate that CaKE improves use of updated knowledge across reasoning tasks, improving the accuracy.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Current KE methods struggle with multi-hop reasoning due to ineffective integration of updated knowledge into reasoning pathways. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} CaKE improves the use of updated knowledge across related reasoning tasks, by enforcing models to utilize modified knowledge. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} CaKE outperforms existing methods on multi-hop reasoning, marking a significant advancement in the field. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper introduces **CaKE, a new knowledge editing method, which significantly improves the accuracy of multi-hop reasoning in LLMs**. This advancement is crucial for enhancing the reliability of LLMs. It addresses issues with knowledge integration and reasoning circuits, providing a solid foundation for future research in knowledge editing and reasoning.

------
#### Visual Insights



![](https://arxiv.org/html/2503.16356/x1.png)

> 🔼 This figure illustrates the limitations of existing knowledge editing techniques in handling multi-hop reasoning tasks.  The left side shows a standard knowledge editing approach where an edit is made (e.g., changing the citizenship of a person), but this edit fails to propagate correctly through the neural pathways (reasoning circuits) used by the language model to answer complex, multi-step questions. The result is that the model still produces incorrect answers even when the new information is factually correct. The right side proposes a solution, 'circuit-aware editing,' aimed at integrating the updated knowledge effectively within these reasoning circuits, thereby enabling the model to answer multi-hop questions correctly after the edit.
> <details>
> <summary>read the caption</summary>
> Figure 1: The current edit cannot propagate the new knowledge to the reasoning circuit for multi-hop reasoning. We propose a circuit-aware edit to improve the model’s multi-hop reasoning performance involving the updated knowledge.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S2.T1.1.1">
<tr class="ltx_tr" id="S2.T1.1.1.1">
<td class="ltx_td ltx_align_center ltx_border_tt" id="S2.T1.1.1.1.1">Model</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S2.T1.1.1.1.2">Entity Patch</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S2.T1.1.1.1.3">Relation Patch</td>
</tr>
<tr class="ltx_tr" id="S2.T1.1.1.2">
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.1.1.2.1">LLaMA3-8B-Ins.</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.1.1.2.2">85.35</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.1.1.2.3">56.20</td>
</tr>
<tr class="ltx_tr" id="S2.T1.1.1.3">
<td class="ltx_td ltx_align_center ltx_border_bb" id="S2.T1.1.1.3.1">Qwen2.5-7B-Ins.</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S2.T1.1.1.3.2">97.29</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S2.T1.1.1.3.3">55.40</td>
</tr>
</table>{{< /table-caption >}}

> 🔼 This table presents the success rates of activation patching experiments conducted to validate the hypothesis of a reasoning circuit in LLMs.  Activation patching involves replacing the representation of an entity or relation with an alternative to determine its influence on model output.  Higher success rates indicate stronger reliance on the specific representations for correct reasoning and support the circuit hypothesis.
> <details>
> <summary>read the caption</summary>
> Table 1: Activation Patching Success Rates (%).
> </details>





### In-depth insights


#### Circuit-Aware KE
**Circuit-aware knowledge editing (CaKE)** is a fascinating area that shifts the focus from simply updating facts to **strategically modifying the neural pathways** (circuits) within LLMs. The key idea is that LLMs don't just store information; they actively use it via specialized circuits. Existing KE methods often fail because they treat knowledge as isolated facts, rather than considering how it's integrated into these reasoning circuits. CaKE attempts to address this by using curated training data, tailored to force the model to utilize the updated knowledge within relevant circuits. This involves creating tasks that explicitly require the LLM to reason with the new information, stimulating the development of appropriate reasoning circuits. This approach aims to create more robust and generalizable knowledge, leading to better performance in downstream tasks that rely on the modified information, making CaKE a promising direction for improving the reliability and utility of LLMs.

#### Multi-Hop Limits
The limitations in multi-hop reasoning for language models are multifaceted. Firstly, **knowledge integration across multiple hops presents a challenge**, as information relevant to different stages of the reasoning process may not be effectively combined.  Secondly, **reasoning circuits may suffer from signal degradation**, especially in deeper models, making it difficult to maintain information fidelity across multiple hops.  Thirdly, **the model's attention mechanism may be biased towards certain entities or relationships**, hindering its ability to explore diverse reasoning paths.  Fourthly, **limitations on context window might truncate important pieces of evidence**, impacting ability to connect long-range relationships in the graph of knowledge. Future research should explore methods to enhance knowledge integration, bolster signal strength, improve attention mechanisms, and develop more structured representations for multi-hop reasoning.

#### Reasoning Circuits
Reasoning circuits are the neural pathways LLMs use for knowledge-based inference, suggesting that **knowledge isn't statically stored but dynamically activated.** The organization of these circuits plays a key role in effective knowledge utilization. Current layer-localized KE approaches like MEMIT and WISE, which edit only a few model layers, struggle to incorporate updated information into these pathways, highlighting a misalignment between KE strategies and LLM reasoning architectures. Multi-hop reasoning emerges from coordinated computing circuits, where early layers handle the first hop and bridge entities are routed to the last token position in middle layers for completing the reasoning. Effective knowledge editing requires considering the circuit-level integration, not just isolated parameter changes, to ensure the updated knowledge is consistently and accurately used across related reasoning tasks. **The performance of edited models in downstream reasoning tasks that involve the updated knowledge is crucial.** Critical information either fails to be properly routed to the last token position, or exhibits a weak signal, preventing effective reasoning.

#### KE's Generalization
Knowledge Editing (KE) faces significant hurdles in achieving **generalization**. While KE methods can successfully modify isolated facts, they often struggle to ensure that these updates propagate consistently across related knowledge structures and downstream reasoning tasks. The challenge lies in effectively integrating the edited knowledge into the broader network of information within the model, ensuring it's not just a localized change. Overfitting to the specific edited fact can lead to poor performance on more complex, multi-hop reasoning scenarios. A truly generalizable KE method must consider the underlying reasoning circuits of the model, ensuring that the updated knowledge is accessible and utilized across a variety of tasks and contexts. Moreover, preventing unintended side effects, such as disrupting unrelated knowledge, is crucial for maintaining the model's overall performance and reliability. The key to advancing KE's generalization capabilities lies in developing methods that go beyond simple parameter adjustments and instead focus on creating robust and adaptable knowledge representations.

#### Future CoT Work
Future work in Chain-of-Thought (CoT) reasoning can explore several avenues. One direction is to investigate **more sophisticated methods for generating intermediate reasoning steps**, moving beyond simple, linear chains. This could involve exploring hierarchical CoT, where sub-problems are solved independently before being integrated, or adaptive CoT, where the reasoning path is adjusted based on the input query. Another important area is **improving the robustness of CoT to noisy or ambiguous information.** This could involve incorporating uncertainty estimates into the reasoning process or developing methods for identifying and correcting errors in intermediate steps. Furthermore, **investigating the interplay between CoT and knowledge retrieval** is crucial. Combining CoT with external knowledge sources could lead to more accurate and reliable reasoning, especially in domains requiring factual knowledge. Finally, **evaluating the faithfulness of CoT explanations** is essential to ensure that the generated reasoning steps accurately reflect the model's internal decision-making process.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2503.16356/x2.png)

> 🔼 This figure provides a visual summary of the research presented in the paper. It showcases the limitations of existing knowledge editing (KE) methods in handling multi-hop reasoning tasks. Panel (a) illustrates the multi-hop reasoning process within large language models (LLMs), highlighting the potential failure points in signal propagation and information flow. Panel (b) contrasts two prevalent KE strategies (WISE-style and ROME-style) and illustrates their failure to integrate new knowledge into the reasoning pathways effectively. Panel (c) presents the proposed Circuit-aware Knowledge Editing (CaKE) method, which strategically leverages additional features to guide the model towards utilizing updated knowledge more accurately and consistently.
> <details>
> <summary>read the caption</summary>
> Figure 2: An overview of our work.
> </details>



![](https://arxiv.org/html/2503.16356/x3.png)

> 🔼 This figure displays the outcomes of experiments designed to address failures in multi-hop reasoning within LLAMA3 and Qwen2.5 language models.  The experiments involved interventions to enhance information flow at critical points within the models' reasoning circuits.  The results show success rates of the intervention methods across different failure categories, indicating the effectiveness of the approaches in improving multi-hop reasoning.
> <details>
> <summary>read the caption</summary>
> Figure 3: Results of the intervention on the failure cases in multi-hop reasoning of LLAMA3 and Qwen2.5.
> </details>



![](https://arxiv.org/html/2503.16356/x4.png)

> 🔼 This figure compares the ranking of the correct answer token ('Korean') within the model's vocabulary across different layers of the language model.  It demonstrates the effect of three different knowledge editing methods (MEMIT, WISE, and the original, unedited model) on the propagation of the edited fact: changing the official language of Japan from Japanese to Korean. The rank indicates how likely the model was to predict 'Korean' as the correct answer at each layer, with lower ranks signifying a higher probability. This visualization helps understand how the different editing methods affect the flow of information and the integration of new knowledge within the language model's architecture.
> <details>
> <summary>read the caption</summary>
> Figure 4: The target answer token’s rank in the vocabulary of different editing methods when editing the fact ‘The official language of Japan is Japanese →→\rightarrow→ Korean.’
> </details>



![](https://arxiv.org/html/2503.16356/x5.png)

> 🔼 This figure displays the results of experiments conducted on the LLAMA3-8B-Instruct model using the MQuAKE-CF-3k-v2 dataset. It investigates the impact of the number of hops (the number of reasoning steps involved in a multi-hop question) and the position of the edit (where in the question sequence the knowledge is updated) on the model's accuracy. The x-axis represents the number of hops, and the y-axis shows the accuracy. Different colors represent different edit positions: 'pre' (before the multi-hop question), 'mid' (in the middle), and 'post' (after).  The graph visually demonstrates how the model's performance changes based on these factors, highlighting the influence of both the number of reasoning steps and the placement of the knowledge update within the multi-hop question.
> <details>
> <summary>read the caption</summary>
> Figure 5: Accuracies of different number hops and edit-positions in MQuAKE-CF-3k-v2 on LLAMA3-8B-Instruct.
> </details>



![](https://arxiv.org/html/2503.16356/x6.png)

> 🔼 This figure displays the logit values of the bridge entity (e2) and the second relation (r2) at the final token position (t2) for various knowledge editing methods.  Logits represent the model's confidence in each entity or relation. The goal is to show how different knowledge editing techniques affect the model's ability to incorporate the updated knowledge, which is represented by e2 and r2, into its reasoning process. Higher logit values for e2 and r2 indicate a stronger signal for the model to correctly identify the intended entities and relations during multi-hop reasoning.
> <details>
> <summary>read the caption</summary>
> Figure 6: e2subscript𝑒2e_{2}italic_e start_POSTSUBSCRIPT 2 end_POSTSUBSCRIPT and r2subscript𝑟2r_{2}italic_r start_POSTSUBSCRIPT 2 end_POSTSUBSCRIPT’s logits at t2subscript𝑡2t_{2}italic_t start_POSTSUBSCRIPT 2 end_POSTSUBSCRIPT in models after different knowledge editing methods.
> </details>



![](https://arxiv.org/html/2503.16356/extracted/6213323/Figure/newplot.png)

> 🔼 This figure visualizes a case where multi-hop reasoning fails.  It shows the layer-wise activation probabilities for various entities and relations in a language model processing a multi-hop question.  The model successfully identifies intermediate elements early on but then deviates from the correct reasoning path in later layers, ultimately leading to an incorrect final answer.  The heatmap allows for a visual analysis of where and when the model's reasoning goes astray. The visualization highlights the limitations of layer-localized knowledge editing methods, which often fail to correct faulty multi-hop reasoning patterns.
> <details>
> <summary>read the caption</summary>
> Figure 7: The failure case of the multi-hop reasoning.
> </details>



![](https://arxiv.org/html/2503.16356/x7.png)

> 🔼 Figure 8 uses the PatchScope method to analyze the layers of a language model during multi-hop reasoning tasks.  It visualizes where key pieces of information (the bridge entity 'e2' and relation 'r2') are present in the model's layers for successful and unsuccessful reasoning cases. By showing the distribution of these key elements across layers, the figure helps explain why some multi-hop reasoning attempts succeed while others fail, highlighting the importance of timely and proper propagation of information within the model's architecture for successful multi-hop reasoning. The layer distribution demonstrates the success or failure of the model to properly use information during the multi-hop reasoning process. 
> <details>
> <summary>read the caption</summary>
> Figure 8: The distribution of the layers allows us to detect the information from critical positions in the model via patch_scope.
> </details>



![](https://arxiv.org/html/2503.16356/x8.png)

> 🔼 This figure demonstrates a causal analysis to validate the hypothesis of a structured reasoning circuit in LLMs for multi-hop tasks. By replacing the representation of the bridge entity (e2) or the second relation (r2) at the last token position (t2) with alternatives, the researchers observe how these changes affect the model's output. Successful patching confirms the model's reliance on specific representations for reasoning in multi-hop scenarios, supporting the existence of a structured reasoning circuit.
> <details>
> <summary>read the caption</summary>
> Figure 9: The way we test the function of the second hop. If the model conducts the function at the later layers, changing the representation would change the output of the model.
> </details>



![](https://arxiv.org/html/2503.16356/x9.png)

> 🔼 This figure illustrates the causal analysis conducted to investigate the impact of modifying variables in the multi-hop reasoning circuit of large language models (LLMs).  Specifically, it shows how replacing the representation of the bridge entity (e<sub>2</sub>) or the second relation (r<sub>2</sub>) at the last token position (t<sub>2</sub>) affects the model's output. The 'backpatch-t1' and 'backpatch-t2' interventions involve replacing the representations of e<sub>2</sub> at t<sub>1</sub> (end of the first hop) and t<sub>2</sub> (end of the second hop), respectively, while 't1-to-t2' propagates the representation of e<sub>2</sub> from t<sub>1</sub> to t<sub>2</sub>. This causal analysis helps to understand the model's reliance on specific intermediate representations and to confirm whether it properly activates the updated knowledge in the reasoning circuit.
> <details>
> <summary>read the caption</summary>
> Figure 10: The way we conduct the backpatch and e1subscript𝑒1e_{1}italic_e start_POSTSUBSCRIPT 1 end_POSTSUBSCRIPT to e2subscript𝑒2e_{2}italic_e start_POSTSUBSCRIPT 2 end_POSTSUBSCRIPT. We substitute the hidden representations from the source position to the target position.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S2.T2.16.16">
<tr class="ltx_tr" id="S2.T2.16.16.17">
<td class="ltx_td ltx_align_center ltx_border_tt" id="S2.T2.16.16.17.1" rowspan="2"><span class="ltx_text" id="S2.T2.16.16.17.1.1">Model</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S2.T2.16.16.17.2" rowspan="2"><span class="ltx_text" id="S2.T2.16.16.17.2.1">Metric</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="S2.T2.16.16.17.3">Correct</td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="S2.T2.16.16.17.4">Inconsistent</td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="S2.T2.16.16.17.5">Incorrect</td>
</tr>
<tr class="ltx_tr" id="S2.T2.16.16.18">
<td class="ltx_td ltx_align_center" id="S2.T2.16.16.18.1">Cases</td>
<td class="ltx_td ltx_align_center" id="S2.T2.16.16.18.2">Layer</td>
<td class="ltx_td ltx_align_center" id="S2.T2.16.16.18.3">Cases</td>
<td class="ltx_td ltx_align_center" id="S2.T2.16.16.18.4">Layer</td>
<td class="ltx_td ltx_align_center" id="S2.T2.16.16.18.5">Cases</td>
<td class="ltx_td ltx_align_center" id="S2.T2.16.16.18.6">Layer</td>
</tr>
<tr class="ltx_tr" id="S2.T2.2.2.2">
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T2.2.2.2.3" rowspan="4"><span class="ltx_text" id="S2.T2.2.2.2.3.1">LLAMA3</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T2.2.2.2.2">
<math alttext="e_{2}" class="ltx_Math" display="inline" id="S2.T2.1.1.1.1.m1.1"><semantics id="S2.T2.1.1.1.1.m1.1a"><msub id="S2.T2.1.1.1.1.m1.1.1" xref="S2.T2.1.1.1.1.m1.1.1.cmml"><mi id="S2.T2.1.1.1.1.m1.1.1.2" xref="S2.T2.1.1.1.1.m1.1.1.2.cmml">e</mi><mn id="S2.T2.1.1.1.1.m1.1.1.3" xref="S2.T2.1.1.1.1.m1.1.1.3.cmml">2</mn></msub><annotation-xml encoding="MathML-Content" id="S2.T2.1.1.1.1.m1.1b"><apply id="S2.T2.1.1.1.1.m1.1.1.cmml" xref="S2.T2.1.1.1.1.m1.1.1"><csymbol cd="ambiguous" id="S2.T2.1.1.1.1.m1.1.1.1.cmml" xref="S2.T2.1.1.1.1.m1.1.1">subscript</csymbol><ci id="S2.T2.1.1.1.1.m1.1.1.2.cmml" xref="S2.T2.1.1.1.1.m1.1.1.2">𝑒</ci><cn id="S2.T2.1.1.1.1.m1.1.1.3.cmml" type="integer" xref="S2.T2.1.1.1.1.m1.1.1.3">2</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S2.T2.1.1.1.1.m1.1c">e_{2}</annotation><annotation encoding="application/x-llamapun" id="S2.T2.1.1.1.1.m1.1d">italic_e start_POSTSUBSCRIPT 2 end_POSTSUBSCRIPT</annotation></semantics></math> from <math alttext="t_{1}" class="ltx_Math" display="inline" id="S2.T2.2.2.2.2.m2.1"><semantics id="S2.T2.2.2.2.2.m2.1a"><msub id="S2.T2.2.2.2.2.m2.1.1" xref="S2.T2.2.2.2.2.m2.1.1.cmml"><mi id="S2.T2.2.2.2.2.m2.1.1.2" xref="S2.T2.2.2.2.2.m2.1.1.2.cmml">t</mi><mn id="S2.T2.2.2.2.2.m2.1.1.3" xref="S2.T2.2.2.2.2.m2.1.1.3.cmml">1</mn></msub><annotation-xml encoding="MathML-Content" id="S2.T2.2.2.2.2.m2.1b"><apply id="S2.T2.2.2.2.2.m2.1.1.cmml" xref="S2.T2.2.2.2.2.m2.1.1"><csymbol cd="ambiguous" id="S2.T2.2.2.2.2.m2.1.1.1.cmml" xref="S2.T2.2.2.2.2.m2.1.1">subscript</csymbol><ci id="S2.T2.2.2.2.2.m2.1.1.2.cmml" xref="S2.T2.2.2.2.2.m2.1.1.2">𝑡</ci><cn id="S2.T2.2.2.2.2.m2.1.1.3.cmml" type="integer" xref="S2.T2.2.2.2.2.m2.1.1.3">1</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S2.T2.2.2.2.2.m2.1c">t_{1}</annotation><annotation encoding="application/x-llamapun" id="S2.T2.2.2.2.2.m2.1d">italic_t start_POSTSUBSCRIPT 1 end_POSTSUBSCRIPT</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T2.2.2.2.4">63.1%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T2.2.2.2.5">6.3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T2.2.2.2.6">75.2%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T2.2.2.2.7">6.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T2.2.2.2.8">48.7%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T2.2.2.2.9">8.2</td>
</tr>
<tr class="ltx_tr" id="S2.T2.4.4.4">
<td class="ltx_td ltx_align_center" id="S2.T2.4.4.4.2">
<math alttext="e_{2}" class="ltx_Math" display="inline" id="S2.T2.3.3.3.1.m1.1"><semantics id="S2.T2.3.3.3.1.m1.1a"><msub id="S2.T2.3.3.3.1.m1.1.1" xref="S2.T2.3.3.3.1.m1.1.1.cmml"><mi id="S2.T2.3.3.3.1.m1.1.1.2" xref="S2.T2.3.3.3.1.m1.1.1.2.cmml">e</mi><mn id="S2.T2.3.3.3.1.m1.1.1.3" xref="S2.T2.3.3.3.1.m1.1.1.3.cmml">2</mn></msub><annotation-xml encoding="MathML-Content" id="S2.T2.3.3.3.1.m1.1b"><apply id="S2.T2.3.3.3.1.m1.1.1.cmml" xref="S2.T2.3.3.3.1.m1.1.1"><csymbol cd="ambiguous" id="S2.T2.3.3.3.1.m1.1.1.1.cmml" xref="S2.T2.3.3.3.1.m1.1.1">subscript</csymbol><ci id="S2.T2.3.3.3.1.m1.1.1.2.cmml" xref="S2.T2.3.3.3.1.m1.1.1.2">𝑒</ci><cn id="S2.T2.3.3.3.1.m1.1.1.3.cmml" type="integer" xref="S2.T2.3.3.3.1.m1.1.1.3">2</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S2.T2.3.3.3.1.m1.1c">e_{2}</annotation><annotation encoding="application/x-llamapun" id="S2.T2.3.3.3.1.m1.1d">italic_e start_POSTSUBSCRIPT 2 end_POSTSUBSCRIPT</annotation></semantics></math> from <math alttext="t_{2}" class="ltx_Math" display="inline" id="S2.T2.4.4.4.2.m2.1"><semantics id="S2.T2.4.4.4.2.m2.1a"><msub id="S2.T2.4.4.4.2.m2.1.1" xref="S2.T2.4.4.4.2.m2.1.1.cmml"><mi id="S2.T2.4.4.4.2.m2.1.1.2" xref="S2.T2.4.4.4.2.m2.1.1.2.cmml">t</mi><mn id="S2.T2.4.4.4.2.m2.1.1.3" xref="S2.T2.4.4.4.2.m2.1.1.3.cmml">2</mn></msub><annotation-xml encoding="MathML-Content" id="S2.T2.4.4.4.2.m2.1b"><apply id="S2.T2.4.4.4.2.m2.1.1.cmml" xref="S2.T2.4.4.4.2.m2.1.1"><csymbol cd="ambiguous" id="S2.T2.4.4.4.2.m2.1.1.1.cmml" xref="S2.T2.4.4.4.2.m2.1.1">subscript</csymbol><ci id="S2.T2.4.4.4.2.m2.1.1.2.cmml" xref="S2.T2.4.4.4.2.m2.1.1.2">𝑡</ci><cn id="S2.T2.4.4.4.2.m2.1.1.3.cmml" type="integer" xref="S2.T2.4.4.4.2.m2.1.1.3">2</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S2.T2.4.4.4.2.m2.1c">t_{2}</annotation><annotation encoding="application/x-llamapun" id="S2.T2.4.4.4.2.m2.1d">italic_t start_POSTSUBSCRIPT 2 end_POSTSUBSCRIPT</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center" id="S2.T2.4.4.4.3">67.8%</td>
<td class="ltx_td ltx_align_center" id="S2.T2.4.4.4.4">13.2</td>
<td class="ltx_td ltx_align_center" id="S2.T2.4.4.4.5">59.8%</td>
<td class="ltx_td ltx_align_center" id="S2.T2.4.4.4.6">9.8</td>
<td class="ltx_td ltx_align_center" id="S2.T2.4.4.4.7">17.7%</td>
<td class="ltx_td ltx_align_center" id="S2.T2.4.4.4.8">21.1</td>
</tr>
<tr class="ltx_tr" id="S2.T2.6.6.6">
<td class="ltx_td ltx_align_center" id="S2.T2.6.6.6.2">
<math alttext="r_{2}" class="ltx_Math" display="inline" id="S2.T2.5.5.5.1.m1.1"><semantics id="S2.T2.5.5.5.1.m1.1a"><msub id="S2.T2.5.5.5.1.m1.1.1" xref="S2.T2.5.5.5.1.m1.1.1.cmml"><mi id="S2.T2.5.5.5.1.m1.1.1.2" xref="S2.T2.5.5.5.1.m1.1.1.2.cmml">r</mi><mn id="S2.T2.5.5.5.1.m1.1.1.3" xref="S2.T2.5.5.5.1.m1.1.1.3.cmml">2</mn></msub><annotation-xml encoding="MathML-Content" id="S2.T2.5.5.5.1.m1.1b"><apply id="S2.T2.5.5.5.1.m1.1.1.cmml" xref="S2.T2.5.5.5.1.m1.1.1"><csymbol cd="ambiguous" id="S2.T2.5.5.5.1.m1.1.1.1.cmml" xref="S2.T2.5.5.5.1.m1.1.1">subscript</csymbol><ci id="S2.T2.5.5.5.1.m1.1.1.2.cmml" xref="S2.T2.5.5.5.1.m1.1.1.2">𝑟</ci><cn id="S2.T2.5.5.5.1.m1.1.1.3.cmml" type="integer" xref="S2.T2.5.5.5.1.m1.1.1.3">2</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S2.T2.5.5.5.1.m1.1c">r_{2}</annotation><annotation encoding="application/x-llamapun" id="S2.T2.5.5.5.1.m1.1d">italic_r start_POSTSUBSCRIPT 2 end_POSTSUBSCRIPT</annotation></semantics></math> from <math alttext="t_{2}" class="ltx_Math" display="inline" id="S2.T2.6.6.6.2.m2.1"><semantics id="S2.T2.6.6.6.2.m2.1a"><msub id="S2.T2.6.6.6.2.m2.1.1" xref="S2.T2.6.6.6.2.m2.1.1.cmml"><mi id="S2.T2.6.6.6.2.m2.1.1.2" xref="S2.T2.6.6.6.2.m2.1.1.2.cmml">t</mi><mn id="S2.T2.6.6.6.2.m2.1.1.3" xref="S2.T2.6.6.6.2.m2.1.1.3.cmml">2</mn></msub><annotation-xml encoding="MathML-Content" id="S2.T2.6.6.6.2.m2.1b"><apply id="S2.T2.6.6.6.2.m2.1.1.cmml" xref="S2.T2.6.6.6.2.m2.1.1"><csymbol cd="ambiguous" id="S2.T2.6.6.6.2.m2.1.1.1.cmml" xref="S2.T2.6.6.6.2.m2.1.1">subscript</csymbol><ci id="S2.T2.6.6.6.2.m2.1.1.2.cmml" xref="S2.T2.6.6.6.2.m2.1.1.2">𝑡</ci><cn id="S2.T2.6.6.6.2.m2.1.1.3.cmml" type="integer" xref="S2.T2.6.6.6.2.m2.1.1.3">2</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S2.T2.6.6.6.2.m2.1c">t_{2}</annotation><annotation encoding="application/x-llamapun" id="S2.T2.6.6.6.2.m2.1d">italic_t start_POSTSUBSCRIPT 2 end_POSTSUBSCRIPT</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center" id="S2.T2.6.6.6.3">66.9%</td>
<td class="ltx_td ltx_align_center" id="S2.T2.6.6.6.4">14.0</td>
<td class="ltx_td ltx_align_center" id="S2.T2.6.6.6.5">49.0%</td>
<td class="ltx_td ltx_align_center" id="S2.T2.6.6.6.6">13.8</td>
<td class="ltx_td ltx_align_center" id="S2.T2.6.6.6.7">28.1%</td>
<td class="ltx_td ltx_align_center" id="S2.T2.6.6.6.8">13.7</td>
</tr>
<tr class="ltx_tr" id="S2.T2.8.8.8">
<td class="ltx_td ltx_align_center" id="S2.T2.8.8.8.2">
<math alttext="e_{3}" class="ltx_Math" display="inline" id="S2.T2.7.7.7.1.m1.1"><semantics id="S2.T2.7.7.7.1.m1.1a"><msub id="S2.T2.7.7.7.1.m1.1.1" xref="S2.T2.7.7.7.1.m1.1.1.cmml"><mi id="S2.T2.7.7.7.1.m1.1.1.2" xref="S2.T2.7.7.7.1.m1.1.1.2.cmml">e</mi><mn id="S2.T2.7.7.7.1.m1.1.1.3" xref="S2.T2.7.7.7.1.m1.1.1.3.cmml">3</mn></msub><annotation-xml encoding="MathML-Content" id="S2.T2.7.7.7.1.m1.1b"><apply id="S2.T2.7.7.7.1.m1.1.1.cmml" xref="S2.T2.7.7.7.1.m1.1.1"><csymbol cd="ambiguous" id="S2.T2.7.7.7.1.m1.1.1.1.cmml" xref="S2.T2.7.7.7.1.m1.1.1">subscript</csymbol><ci id="S2.T2.7.7.7.1.m1.1.1.2.cmml" xref="S2.T2.7.7.7.1.m1.1.1.2">𝑒</ci><cn id="S2.T2.7.7.7.1.m1.1.1.3.cmml" type="integer" xref="S2.T2.7.7.7.1.m1.1.1.3">3</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S2.T2.7.7.7.1.m1.1c">e_{3}</annotation><annotation encoding="application/x-llamapun" id="S2.T2.7.7.7.1.m1.1d">italic_e start_POSTSUBSCRIPT 3 end_POSTSUBSCRIPT</annotation></semantics></math> from <math alttext="t_{2}" class="ltx_Math" display="inline" id="S2.T2.8.8.8.2.m2.1"><semantics id="S2.T2.8.8.8.2.m2.1a"><msub id="S2.T2.8.8.8.2.m2.1.1" xref="S2.T2.8.8.8.2.m2.1.1.cmml"><mi id="S2.T2.8.8.8.2.m2.1.1.2" xref="S2.T2.8.8.8.2.m2.1.1.2.cmml">t</mi><mn id="S2.T2.8.8.8.2.m2.1.1.3" xref="S2.T2.8.8.8.2.m2.1.1.3.cmml">2</mn></msub><annotation-xml encoding="MathML-Content" id="S2.T2.8.8.8.2.m2.1b"><apply id="S2.T2.8.8.8.2.m2.1.1.cmml" xref="S2.T2.8.8.8.2.m2.1.1"><csymbol cd="ambiguous" id="S2.T2.8.8.8.2.m2.1.1.1.cmml" xref="S2.T2.8.8.8.2.m2.1.1">subscript</csymbol><ci id="S2.T2.8.8.8.2.m2.1.1.2.cmml" xref="S2.T2.8.8.8.2.m2.1.1.2">𝑡</ci><cn id="S2.T2.8.8.8.2.m2.1.1.3.cmml" type="integer" xref="S2.T2.8.8.8.2.m2.1.1.3">2</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S2.T2.8.8.8.2.m2.1c">t_{2}</annotation><annotation encoding="application/x-llamapun" id="S2.T2.8.8.8.2.m2.1d">italic_t start_POSTSUBSCRIPT 2 end_POSTSUBSCRIPT</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center" id="S2.T2.8.8.8.3">56.5%</td>
<td class="ltx_td ltx_align_center" id="S2.T2.8.8.8.4">18.8</td>
<td class="ltx_td ltx_align_center" id="S2.T2.8.8.8.5">22.7%</td>
<td class="ltx_td ltx_align_center" id="S2.T2.8.8.8.6">20.7</td>
<td class="ltx_td ltx_align_center" id="S2.T2.8.8.8.7">18.3%</td>
<td class="ltx_td ltx_align_center" id="S2.T2.8.8.8.8">18.0</td>
</tr>
<tr class="ltx_tr" id="S2.T2.10.10.10">
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S2.T2.10.10.10.3" rowspan="4"><span class="ltx_text" id="S2.T2.10.10.10.3.1">Qwen2.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T2.10.10.10.2">
<math alttext="e_{2}" class="ltx_Math" display="inline" id="S2.T2.9.9.9.1.m1.1"><semantics id="S2.T2.9.9.9.1.m1.1a"><msub id="S2.T2.9.9.9.1.m1.1.1" xref="S2.T2.9.9.9.1.m1.1.1.cmml"><mi id="S2.T2.9.9.9.1.m1.1.1.2" xref="S2.T2.9.9.9.1.m1.1.1.2.cmml">e</mi><mn id="S2.T2.9.9.9.1.m1.1.1.3" xref="S2.T2.9.9.9.1.m1.1.1.3.cmml">2</mn></msub><annotation-xml encoding="MathML-Content" id="S2.T2.9.9.9.1.m1.1b"><apply id="S2.T2.9.9.9.1.m1.1.1.cmml" xref="S2.T2.9.9.9.1.m1.1.1"><csymbol cd="ambiguous" id="S2.T2.9.9.9.1.m1.1.1.1.cmml" xref="S2.T2.9.9.9.1.m1.1.1">subscript</csymbol><ci id="S2.T2.9.9.9.1.m1.1.1.2.cmml" xref="S2.T2.9.9.9.1.m1.1.1.2">𝑒</ci><cn id="S2.T2.9.9.9.1.m1.1.1.3.cmml" type="integer" xref="S2.T2.9.9.9.1.m1.1.1.3">2</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S2.T2.9.9.9.1.m1.1c">e_{2}</annotation><annotation encoding="application/x-llamapun" id="S2.T2.9.9.9.1.m1.1d">italic_e start_POSTSUBSCRIPT 2 end_POSTSUBSCRIPT</annotation></semantics></math> from <math alttext="t_{1}" class="ltx_Math" display="inline" id="S2.T2.10.10.10.2.m2.1"><semantics id="S2.T2.10.10.10.2.m2.1a"><msub id="S2.T2.10.10.10.2.m2.1.1" xref="S2.T2.10.10.10.2.m2.1.1.cmml"><mi id="S2.T2.10.10.10.2.m2.1.1.2" xref="S2.T2.10.10.10.2.m2.1.1.2.cmml">t</mi><mn id="S2.T2.10.10.10.2.m2.1.1.3" xref="S2.T2.10.10.10.2.m2.1.1.3.cmml">1</mn></msub><annotation-xml encoding="MathML-Content" id="S2.T2.10.10.10.2.m2.1b"><apply id="S2.T2.10.10.10.2.m2.1.1.cmml" xref="S2.T2.10.10.10.2.m2.1.1"><csymbol cd="ambiguous" id="S2.T2.10.10.10.2.m2.1.1.1.cmml" xref="S2.T2.10.10.10.2.m2.1.1">subscript</csymbol><ci id="S2.T2.10.10.10.2.m2.1.1.2.cmml" xref="S2.T2.10.10.10.2.m2.1.1.2">𝑡</ci><cn id="S2.T2.10.10.10.2.m2.1.1.3.cmml" type="integer" xref="S2.T2.10.10.10.2.m2.1.1.3">1</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S2.T2.10.10.10.2.m2.1c">t_{1}</annotation><annotation encoding="application/x-llamapun" id="S2.T2.10.10.10.2.m2.1d">italic_t start_POSTSUBSCRIPT 1 end_POSTSUBSCRIPT</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T2.10.10.10.4">71.2%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T2.10.10.10.5">4.3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T2.10.10.10.6">74.1%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T2.10.10.10.7">4.7</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T2.10.10.10.8">46.7%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T2.10.10.10.9">5.1</td>
</tr>
<tr class="ltx_tr" id="S2.T2.12.12.12">
<td class="ltx_td ltx_align_center" id="S2.T2.12.12.12.2">
<math alttext="e_{2}" class="ltx_Math" display="inline" id="S2.T2.11.11.11.1.m1.1"><semantics id="S2.T2.11.11.11.1.m1.1a"><msub id="S2.T2.11.11.11.1.m1.1.1" xref="S2.T2.11.11.11.1.m1.1.1.cmml"><mi id="S2.T2.11.11.11.1.m1.1.1.2" xref="S2.T2.11.11.11.1.m1.1.1.2.cmml">e</mi><mn id="S2.T2.11.11.11.1.m1.1.1.3" xref="S2.T2.11.11.11.1.m1.1.1.3.cmml">2</mn></msub><annotation-xml encoding="MathML-Content" id="S2.T2.11.11.11.1.m1.1b"><apply id="S2.T2.11.11.11.1.m1.1.1.cmml" xref="S2.T2.11.11.11.1.m1.1.1"><csymbol cd="ambiguous" id="S2.T2.11.11.11.1.m1.1.1.1.cmml" xref="S2.T2.11.11.11.1.m1.1.1">subscript</csymbol><ci id="S2.T2.11.11.11.1.m1.1.1.2.cmml" xref="S2.T2.11.11.11.1.m1.1.1.2">𝑒</ci><cn id="S2.T2.11.11.11.1.m1.1.1.3.cmml" type="integer" xref="S2.T2.11.11.11.1.m1.1.1.3">2</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S2.T2.11.11.11.1.m1.1c">e_{2}</annotation><annotation encoding="application/x-llamapun" id="S2.T2.11.11.11.1.m1.1d">italic_e start_POSTSUBSCRIPT 2 end_POSTSUBSCRIPT</annotation></semantics></math> from <math alttext="t_{2}" class="ltx_Math" display="inline" id="S2.T2.12.12.12.2.m2.1"><semantics id="S2.T2.12.12.12.2.m2.1a"><msub id="S2.T2.12.12.12.2.m2.1.1" xref="S2.T2.12.12.12.2.m2.1.1.cmml"><mi id="S2.T2.12.12.12.2.m2.1.1.2" xref="S2.T2.12.12.12.2.m2.1.1.2.cmml">t</mi><mn id="S2.T2.12.12.12.2.m2.1.1.3" xref="S2.T2.12.12.12.2.m2.1.1.3.cmml">2</mn></msub><annotation-xml encoding="MathML-Content" id="S2.T2.12.12.12.2.m2.1b"><apply id="S2.T2.12.12.12.2.m2.1.1.cmml" xref="S2.T2.12.12.12.2.m2.1.1"><csymbol cd="ambiguous" id="S2.T2.12.12.12.2.m2.1.1.1.cmml" xref="S2.T2.12.12.12.2.m2.1.1">subscript</csymbol><ci id="S2.T2.12.12.12.2.m2.1.1.2.cmml" xref="S2.T2.12.12.12.2.m2.1.1.2">𝑡</ci><cn id="S2.T2.12.12.12.2.m2.1.1.3.cmml" type="integer" xref="S2.T2.12.12.12.2.m2.1.1.3">2</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S2.T2.12.12.12.2.m2.1c">t_{2}</annotation><annotation encoding="application/x-llamapun" id="S2.T2.12.12.12.2.m2.1d">italic_t start_POSTSUBSCRIPT 2 end_POSTSUBSCRIPT</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center" id="S2.T2.12.12.12.3">52.9%</td>
<td class="ltx_td ltx_align_center" id="S2.T2.12.12.12.4">7.9</td>
<td class="ltx_td ltx_align_center" id="S2.T2.12.12.12.5">63.7%</td>
<td class="ltx_td ltx_align_center" id="S2.T2.12.12.12.6">9.5</td>
<td class="ltx_td ltx_align_center" id="S2.T2.12.12.12.7">18.9%</td>
<td class="ltx_td ltx_align_center" id="S2.T2.12.12.12.8">13.5</td>
</tr>
<tr class="ltx_tr" id="S2.T2.14.14.14">
<td class="ltx_td ltx_align_center" id="S2.T2.14.14.14.2">
<math alttext="r_{2}" class="ltx_Math" display="inline" id="S2.T2.13.13.13.1.m1.1"><semantics id="S2.T2.13.13.13.1.m1.1a"><msub id="S2.T2.13.13.13.1.m1.1.1" xref="S2.T2.13.13.13.1.m1.1.1.cmml"><mi id="S2.T2.13.13.13.1.m1.1.1.2" xref="S2.T2.13.13.13.1.m1.1.1.2.cmml">r</mi><mn id="S2.T2.13.13.13.1.m1.1.1.3" xref="S2.T2.13.13.13.1.m1.1.1.3.cmml">2</mn></msub><annotation-xml encoding="MathML-Content" id="S2.T2.13.13.13.1.m1.1b"><apply id="S2.T2.13.13.13.1.m1.1.1.cmml" xref="S2.T2.13.13.13.1.m1.1.1"><csymbol cd="ambiguous" id="S2.T2.13.13.13.1.m1.1.1.1.cmml" xref="S2.T2.13.13.13.1.m1.1.1">subscript</csymbol><ci id="S2.T2.13.13.13.1.m1.1.1.2.cmml" xref="S2.T2.13.13.13.1.m1.1.1.2">𝑟</ci><cn id="S2.T2.13.13.13.1.m1.1.1.3.cmml" type="integer" xref="S2.T2.13.13.13.1.m1.1.1.3">2</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S2.T2.13.13.13.1.m1.1c">r_{2}</annotation><annotation encoding="application/x-llamapun" id="S2.T2.13.13.13.1.m1.1d">italic_r start_POSTSUBSCRIPT 2 end_POSTSUBSCRIPT</annotation></semantics></math> from <math alttext="t_{2}" class="ltx_Math" display="inline" id="S2.T2.14.14.14.2.m2.1"><semantics id="S2.T2.14.14.14.2.m2.1a"><msub id="S2.T2.14.14.14.2.m2.1.1" xref="S2.T2.14.14.14.2.m2.1.1.cmml"><mi id="S2.T2.14.14.14.2.m2.1.1.2" xref="S2.T2.14.14.14.2.m2.1.1.2.cmml">t</mi><mn id="S2.T2.14.14.14.2.m2.1.1.3" xref="S2.T2.14.14.14.2.m2.1.1.3.cmml">2</mn></msub><annotation-xml encoding="MathML-Content" id="S2.T2.14.14.14.2.m2.1b"><apply id="S2.T2.14.14.14.2.m2.1.1.cmml" xref="S2.T2.14.14.14.2.m2.1.1"><csymbol cd="ambiguous" id="S2.T2.14.14.14.2.m2.1.1.1.cmml" xref="S2.T2.14.14.14.2.m2.1.1">subscript</csymbol><ci id="S2.T2.14.14.14.2.m2.1.1.2.cmml" xref="S2.T2.14.14.14.2.m2.1.1.2">𝑡</ci><cn id="S2.T2.14.14.14.2.m2.1.1.3.cmml" type="integer" xref="S2.T2.14.14.14.2.m2.1.1.3">2</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S2.T2.14.14.14.2.m2.1c">t_{2}</annotation><annotation encoding="application/x-llamapun" id="S2.T2.14.14.14.2.m2.1d">italic_t start_POSTSUBSCRIPT 2 end_POSTSUBSCRIPT</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center" id="S2.T2.14.14.14.3">75.8%</td>
<td class="ltx_td ltx_align_center" id="S2.T2.14.14.14.4">8.1</td>
<td class="ltx_td ltx_align_center" id="S2.T2.14.14.14.5">75.2 %</td>
<td class="ltx_td ltx_align_center" id="S2.T2.14.14.14.6">10.4</td>
<td class="ltx_td ltx_align_center" id="S2.T2.14.14.14.7">44.8%</td>
<td class="ltx_td ltx_align_center" id="S2.T2.14.14.14.8">9.7</td>
</tr>
<tr class="ltx_tr" id="S2.T2.16.16.16">
<td class="ltx_td ltx_align_center ltx_border_bb" id="S2.T2.16.16.16.2">
<math alttext="e_{3}" class="ltx_Math" display="inline" id="S2.T2.15.15.15.1.m1.1"><semantics id="S2.T2.15.15.15.1.m1.1a"><msub id="S2.T2.15.15.15.1.m1.1.1" xref="S2.T2.15.15.15.1.m1.1.1.cmml"><mi id="S2.T2.15.15.15.1.m1.1.1.2" xref="S2.T2.15.15.15.1.m1.1.1.2.cmml">e</mi><mn id="S2.T2.15.15.15.1.m1.1.1.3" xref="S2.T2.15.15.15.1.m1.1.1.3.cmml">3</mn></msub><annotation-xml encoding="MathML-Content" id="S2.T2.15.15.15.1.m1.1b"><apply id="S2.T2.15.15.15.1.m1.1.1.cmml" xref="S2.T2.15.15.15.1.m1.1.1"><csymbol cd="ambiguous" id="S2.T2.15.15.15.1.m1.1.1.1.cmml" xref="S2.T2.15.15.15.1.m1.1.1">subscript</csymbol><ci id="S2.T2.15.15.15.1.m1.1.1.2.cmml" xref="S2.T2.15.15.15.1.m1.1.1.2">𝑒</ci><cn id="S2.T2.15.15.15.1.m1.1.1.3.cmml" type="integer" xref="S2.T2.15.15.15.1.m1.1.1.3">3</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S2.T2.15.15.15.1.m1.1c">e_{3}</annotation><annotation encoding="application/x-llamapun" id="S2.T2.15.15.15.1.m1.1d">italic_e start_POSTSUBSCRIPT 3 end_POSTSUBSCRIPT</annotation></semantics></math> from <math alttext="t_{2}" class="ltx_Math" display="inline" id="S2.T2.16.16.16.2.m2.1"><semantics id="S2.T2.16.16.16.2.m2.1a"><msub id="S2.T2.16.16.16.2.m2.1.1" xref="S2.T2.16.16.16.2.m2.1.1.cmml"><mi id="S2.T2.16.16.16.2.m2.1.1.2" xref="S2.T2.16.16.16.2.m2.1.1.2.cmml">t</mi><mn id="S2.T2.16.16.16.2.m2.1.1.3" xref="S2.T2.16.16.16.2.m2.1.1.3.cmml">2</mn></msub><annotation-xml encoding="MathML-Content" id="S2.T2.16.16.16.2.m2.1b"><apply id="S2.T2.16.16.16.2.m2.1.1.cmml" xref="S2.T2.16.16.16.2.m2.1.1"><csymbol cd="ambiguous" id="S2.T2.16.16.16.2.m2.1.1.1.cmml" xref="S2.T2.16.16.16.2.m2.1.1">subscript</csymbol><ci id="S2.T2.16.16.16.2.m2.1.1.2.cmml" xref="S2.T2.16.16.16.2.m2.1.1.2">𝑡</ci><cn id="S2.T2.16.16.16.2.m2.1.1.3.cmml" type="integer" xref="S2.T2.16.16.16.2.m2.1.1.3">2</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S2.T2.16.16.16.2.m2.1c">t_{2}</annotation><annotation encoding="application/x-llamapun" id="S2.T2.16.16.16.2.m2.1d">italic_t start_POSTSUBSCRIPT 2 end_POSTSUBSCRIPT</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S2.T2.16.16.16.3">71.2%</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S2.T2.16.16.16.4">16.4</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S2.T2.16.16.16.5">39.4%</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S2.T2.16.16.16.6">17.4</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S2.T2.16.16.16.7">25.2%</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S2.T2.16.16.16.8">11.4</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of an analysis conducted on two large language models, LLAMA3-8B-Instruct (32 layers) and Qwen2.5-7B-Instruct (28 layers).  The analysis focuses on identifying the presence and layer depth of specific information within the models' reasoning processes during multi-hop question answering.  For each of several information elements (e2 from t1, e2 from t2, r2 from t2, and e3 from t2), the table shows the percentage of cases where the information was successfully detected ('Cases') and the average layer number where the information was first detected ('Layer'). This data provides insights into how effectively the models utilize knowledge during multi-hop reasoning, shedding light on potential bottlenecks or failures in information propagation.
> <details>
> <summary>read the caption</summary>
> Table 2: The results of LLAMA3-8B-Instruct (32 layers) and Qwen2.5-7B-Instruct (28 layers). Cases are the percentage of data we can detect the information, and Layer is the mean of the first layer in which we detect the information.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S3.T3.7.7">
<tr class="ltx_tr" id="S3.T3.7.7.8">
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T3.7.7.8.1" rowspan="2" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S3.T3.7.7.8.1.1">Method</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S3.T3.7.7.8.2" rowspan="2" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S3.T3.7.7.8.2.1">Model</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" colspan="2" id="S3.T3.7.7.8.3" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S3.T3.7.7.8.3.1">MQUAKE-CF</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" colspan="2" id="S3.T3.7.7.8.4" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S3.T3.7.7.8.4.1">MQUAKE-CF-v2</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="S3.T3.7.7.8.5" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S3.T3.7.7.8.5.1">MQUAKE-T</span></td>
</tr>
<tr class="ltx_tr" id="S3.T3.6.6.6">
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.1.1.1.1" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S3.T3.1.1.1.1.1">H-Acc.<math alttext="\uparrow" class="ltx_Math" display="inline" id="S3.T3.1.1.1.1.1.m1.1"><semantics id="S3.T3.1.1.1.1.1.m1.1a"><mo id="S3.T3.1.1.1.1.1.m1.1.1" stretchy="false" xref="S3.T3.1.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S3.T3.1.1.1.1.1.m1.1b"><ci id="S3.T3.1.1.1.1.1.m1.1.1.cmml" xref="S3.T3.1.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T3.1.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S3.T3.1.1.1.1.1.m1.1d">↑</annotation></semantics></math></span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T3.2.2.2.2" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S3.T3.2.2.2.2.1">MAcc.<math alttext="\uparrow" class="ltx_Math" display="inline" id="S3.T3.2.2.2.2.1.m1.1"><semantics id="S3.T3.2.2.2.2.1.m1.1a"><mo id="S3.T3.2.2.2.2.1.m1.1.1" stretchy="false" xref="S3.T3.2.2.2.2.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S3.T3.2.2.2.2.1.m1.1b"><ci id="S3.T3.2.2.2.2.1.m1.1.1.cmml" xref="S3.T3.2.2.2.2.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T3.2.2.2.2.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S3.T3.2.2.2.2.1.m1.1d">↑</annotation></semantics></math></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.3.3.3.3" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S3.T3.3.3.3.3.1">H-Acc.<math alttext="\uparrow" class="ltx_Math" display="inline" id="S3.T3.3.3.3.3.1.m1.1"><semantics id="S3.T3.3.3.3.3.1.m1.1a"><mo id="S3.T3.3.3.3.3.1.m1.1.1" stretchy="false" xref="S3.T3.3.3.3.3.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S3.T3.3.3.3.3.1.m1.1b"><ci id="S3.T3.3.3.3.3.1.m1.1.1.cmml" xref="S3.T3.3.3.3.3.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T3.3.3.3.3.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S3.T3.3.3.3.3.1.m1.1d">↑</annotation></semantics></math></span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T3.4.4.4.4" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S3.T3.4.4.4.4.1">MAcc.<math alttext="\uparrow" class="ltx_Math" display="inline" id="S3.T3.4.4.4.4.1.m1.1"><semantics id="S3.T3.4.4.4.4.1.m1.1a"><mo id="S3.T3.4.4.4.4.1.m1.1.1" stretchy="false" xref="S3.T3.4.4.4.4.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S3.T3.4.4.4.4.1.m1.1b"><ci id="S3.T3.4.4.4.4.1.m1.1.1.cmml" xref="S3.T3.4.4.4.4.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T3.4.4.4.4.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S3.T3.4.4.4.4.1.m1.1d">↑</annotation></semantics></math></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.5.5.5.5" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S3.T3.5.5.5.5.1">H-Acc.<math alttext="\uparrow" class="ltx_Math" display="inline" id="S3.T3.5.5.5.5.1.m1.1"><semantics id="S3.T3.5.5.5.5.1.m1.1a"><mo id="S3.T3.5.5.5.5.1.m1.1.1" stretchy="false" xref="S3.T3.5.5.5.5.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S3.T3.5.5.5.5.1.m1.1b"><ci id="S3.T3.5.5.5.5.1.m1.1.1.cmml" xref="S3.T3.5.5.5.5.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T3.5.5.5.5.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S3.T3.5.5.5.5.1.m1.1d">↑</annotation></semantics></math></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.6.6.6.6" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S3.T3.6.6.6.6.1">MAcc.<math alttext="\uparrow" class="ltx_Math" display="inline" id="S3.T3.6.6.6.6.1.m1.1"><semantics id="S3.T3.6.6.6.6.1.m1.1a"><mo id="S3.T3.6.6.6.6.1.m1.1.1" stretchy="false" xref="S3.T3.6.6.6.6.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S3.T3.6.6.6.6.1.m1.1b"><ci id="S3.T3.6.6.6.6.1.m1.1.1.cmml" xref="S3.T3.6.6.6.6.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T3.6.6.6.6.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S3.T3.6.6.6.6.1.m1.1d">↑</annotation></semantics></math></span></td>
</tr>
<tr class="ltx_tr" id="S3.T3.7.7.9">
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.7.7.9.1" style="padding-top:1pt;padding-bottom:1pt;">Pre-edited</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T3.7.7.9.2" rowspan="9" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S3.T3.7.7.9.2.1">
<span class="ltx_inline-block ltx_transformed_outer" id="S3.T3.7.7.9.2.1.1" style="width:6.8pt;height:71pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:71.0pt;transform:translate(-32.1pt,-32.1pt) rotate(-90deg) ;">
<span class="ltx_p" id="S3.T3.7.7.9.2.1.1.1">LLaMA3-8B-Ins</span>
</span></span></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.7.7.9.3" style="padding-top:1pt;padding-bottom:1pt;">79.0</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T3.7.7.9.4" style="padding-top:1pt;padding-bottom:1pt;">27.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.7.7.9.5" style="padding-top:1pt;padding-bottom:1pt;">78.4</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T3.7.7.9.6" style="padding-top:1pt;padding-bottom:1pt;">28.6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.7.7.9.7" style="padding-top:1pt;padding-bottom:1pt;">71.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.7.7.9.8" style="padding-top:1pt;padding-bottom:1pt;">5.3</td>
</tr>
<tr class="ltx_tr" id="S3.T3.7.7.10">
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.7.7.10.1" style="padding-top:1pt;padding-bottom:1pt;">LoRA</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.7.7.10.2" style="padding-top:1pt;padding-bottom:1pt;">66.0</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T3.7.7.10.3" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T3.7.7.10.3.1">27.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.7.7.10.4" style="padding-top:1pt;padding-bottom:1pt;">64.7</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T3.7.7.10.5" style="padding-top:1pt;padding-bottom:1pt;">24.6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.7.7.10.6" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S3.T3.7.7.10.6.1">92.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.7.7.10.7" style="padding-top:1pt;padding-bottom:1pt;">66.0</td>
</tr>
<tr class="ltx_tr" id="S3.T3.7.7.11">
<td class="ltx_td ltx_align_center" id="S3.T3.7.7.11.1" style="padding-top:1pt;padding-bottom:1pt;">WISE</td>
<td class="ltx_td ltx_align_center" id="S3.T3.7.7.11.2" style="padding-top:1pt;padding-bottom:1pt;">38.2</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T3.7.7.11.3" style="padding-top:1pt;padding-bottom:1pt;">24.0</td>
<td class="ltx_td ltx_align_center" id="S3.T3.7.7.11.4" style="padding-top:1pt;padding-bottom:1pt;">37.2</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T3.7.7.11.5" style="padding-top:1pt;padding-bottom:1pt;">21.0</td>
<td class="ltx_td ltx_align_center" id="S3.T3.7.7.11.6" style="padding-top:1pt;padding-bottom:1pt;">63.5</td>
<td class="ltx_td ltx_align_center" id="S3.T3.7.7.11.7" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T3.7.7.11.7.1">62.9</span></td>
</tr>
<tr class="ltx_tr" id="S3.T3.7.7.12">
<td class="ltx_td ltx_align_center" id="S3.T3.7.7.12.1" style="padding-top:1pt;padding-bottom:1pt;">MeLLo</td>
<td class="ltx_td ltx_align_center" id="S3.T3.7.7.12.2" style="padding-top:1pt;padding-bottom:1pt;">16.5</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T3.7.7.12.3" style="padding-top:1pt;padding-bottom:1pt;">16.1</td>
<td class="ltx_td ltx_align_center" id="S3.T3.7.7.12.4" style="padding-top:1pt;padding-bottom:1pt;">19.5</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T3.7.7.12.5" style="padding-top:1pt;padding-bottom:1pt;">16.0</td>
<td class="ltx_td ltx_align_center" id="S3.T3.7.7.12.6" style="padding-top:1pt;padding-bottom:1pt;">42.3</td>
<td class="ltx_td ltx_align_center" id="S3.T3.7.7.12.7" style="padding-top:1pt;padding-bottom:1pt;">50.1</td>
</tr>
<tr class="ltx_tr" id="S3.T3.7.7.13">
<td class="ltx_td ltx_align_center" id="S3.T3.7.7.13.1" style="padding-top:1pt;padding-bottom:1pt;">ROME</td>
<td class="ltx_td ltx_align_center" id="S3.T3.7.7.13.2" style="padding-top:1pt;padding-bottom:1pt;">86.8</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T3.7.7.13.3" style="padding-top:1pt;padding-bottom:1pt;">17.6</td>
<td class="ltx_td ltx_align_center" id="S3.T3.7.7.13.4" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T3.7.7.13.4.1">86.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T3.7.7.13.5" style="padding-top:1pt;padding-bottom:1pt;">15.5</td>
<td class="ltx_td ltx_align_center" id="S3.T3.7.7.13.6" style="padding-top:1pt;padding-bottom:1pt;">89.5</td>
<td class="ltx_td ltx_align_center" id="S3.T3.7.7.13.7" style="padding-top:1pt;padding-bottom:1pt;">8.4</td>
</tr>
<tr class="ltx_tr" id="S3.T3.7.7.14">
<td class="ltx_td ltx_align_center" id="S3.T3.7.7.14.1" style="padding-top:1pt;padding-bottom:1pt;">MEMIT</td>
<td class="ltx_td ltx_align_center" id="S3.T3.7.7.14.2" style="padding-top:1pt;padding-bottom:1pt;">76.3</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T3.7.7.14.3" style="padding-top:1pt;padding-bottom:1pt;">11.5</td>
<td class="ltx_td ltx_align_center" id="S3.T3.7.7.14.4" style="padding-top:1pt;padding-bottom:1pt;">74.0</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T3.7.7.14.5" style="padding-top:1pt;padding-bottom:1pt;">10.0</td>
<td class="ltx_td ltx_align_center" id="S3.T3.7.7.14.6" style="padding-top:1pt;padding-bottom:1pt;">86.0</td>
<td class="ltx_td ltx_align_center" id="S3.T3.7.7.14.7" style="padding-top:1pt;padding-bottom:1pt;">3.7</td>
</tr>
<tr class="ltx_tr" id="S3.T3.7.7.15">
<td class="ltx_td ltx_align_center" id="S3.T3.7.7.15.1" style="padding-top:1pt;padding-bottom:1pt;">AlphaEdit</td>
<td class="ltx_td ltx_align_center" id="S3.T3.7.7.15.2" style="padding-top:1pt;padding-bottom:1pt;">66.1</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T3.7.7.15.3" style="padding-top:1pt;padding-bottom:1pt;">10.1</td>
<td class="ltx_td ltx_align_center" id="S3.T3.7.7.15.4" style="padding-top:1pt;padding-bottom:1pt;">63.7</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T3.7.7.15.5" style="padding-top:1pt;padding-bottom:1pt;">8.5</td>
<td class="ltx_td ltx_align_center" id="S3.T3.7.7.15.6" style="padding-top:1pt;padding-bottom:1pt;">73.4</td>
<td class="ltx_td ltx_align_center" id="S3.T3.7.7.15.7" style="padding-top:1pt;padding-bottom:1pt;">1.0</td>
</tr>
<tr class="ltx_tr" id="S3.T3.7.7.7">
<td class="ltx_td ltx_align_center" id="S3.T3.7.7.7.1" style="padding-top:1pt;padding-bottom:1pt;">IFMET <sup class="ltx_sup" id="S3.T3.7.7.7.1.1"><span class="ltx_text ltx_font_italic" id="S3.T3.7.7.7.1.1.1">♣</span></sup>
</td>
<td class="ltx_td ltx_align_center" id="S3.T3.7.7.7.2" style="padding-top:1pt;padding-bottom:1pt;">81.9</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T3.7.7.7.3" style="padding-top:1pt;padding-bottom:1pt;">23.2</td>
<td class="ltx_td ltx_align_center" id="S3.T3.7.7.7.4" style="padding-top:1pt;padding-bottom:1pt;">75.3</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T3.7.7.7.5" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T3.7.7.7.5.1">36.5</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.7.7.7.6" style="padding-top:1pt;padding-bottom:1pt;">82.1</td>
<td class="ltx_td ltx_align_center" id="S3.T3.7.7.7.7" style="padding-top:1pt;padding-bottom:1pt;">46.1</td>
</tr>
<tr class="ltx_tr" id="S3.T3.7.7.16">
<td class="ltx_td ltx_align_center" id="S3.T3.7.7.16.1" style="padding-top:1pt;padding-bottom:1pt;">CaKE(ours)</td>
<td class="ltx_td ltx_align_center" id="S3.T3.7.7.16.2" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S3.T3.7.7.16.2.1">90.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T3.7.7.16.3" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S3.T3.7.7.16.3.1">57.3</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.7.7.16.4" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S3.T3.7.7.16.4.1">90.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T3.7.7.16.5" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S3.T3.7.7.16.5.1">57.1</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.7.7.16.6" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T3.7.7.16.6.1">91.5</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.7.7.16.7" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S3.T3.7.7.16.7.1">81.4</span></td>
</tr>
<tr class="ltx_tr" id="S3.T3.7.7.17">
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T3.7.7.17.1" style="padding-top:1pt;padding-bottom:1pt;">Pre-edited</td>
<td class="ltx_td ltx_border_r ltx_border_tt" id="S3.T3.7.7.17.2" style="padding-top:1pt;padding-bottom:1pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T3.7.7.17.3" style="padding-top:1pt;padding-bottom:1pt;">75.6</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S3.T3.7.7.17.4" style="padding-top:1pt;padding-bottom:1pt;">34.7</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T3.7.7.17.5" style="padding-top:1pt;padding-bottom:1pt;">76.8</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S3.T3.7.7.17.6" style="padding-top:1pt;padding-bottom:1pt;">37.7</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T3.7.7.17.7" style="padding-top:1pt;padding-bottom:1pt;">60.1</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T3.7.7.17.8" style="padding-top:1pt;padding-bottom:1pt;">15.6</td>
</tr>
<tr class="ltx_tr" id="S3.T3.7.7.18">
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.7.7.18.1" style="padding-top:1pt;padding-bottom:1pt;">LoRA</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r ltx_border_t" id="S3.T3.7.7.18.2" rowspan="3" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S3.T3.7.7.18.2.1">
<span class="ltx_inline-block ltx_transformed_outer" id="S3.T3.7.7.18.2.1.1" style="width:6.8pt;height:26.7pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:26.7pt;transform:translate(-9.92pt,-9.92pt) rotate(-90deg) ;">
<span class="ltx_p" id="S3.T3.7.7.18.2.1.1.1">L-70B</span>
</span></span></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.7.7.18.3" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T3.7.7.18.3.1">93.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T3.7.7.18.4" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T3.7.7.18.4.1">53.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.7.7.18.5" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T3.7.7.18.5.1">90.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T3.7.7.18.6" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T3.7.7.18.6.1">50.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.7.7.18.7" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T3.7.7.18.7.1">90.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.7.7.18.8" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T3.7.7.18.8.1">90.6</span></td>
</tr>
<tr class="ltx_tr" id="S3.T3.7.7.19">
<td class="ltx_td ltx_align_center" id="S3.T3.7.7.19.1" style="padding-top:1pt;padding-bottom:1pt;">MeLLo</td>
<td class="ltx_td ltx_align_center" id="S3.T3.7.7.19.2" style="padding-top:1pt;padding-bottom:1pt;">8.0</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T3.7.7.19.3" style="padding-top:1pt;padding-bottom:1pt;">6.4</td>
<td class="ltx_td ltx_align_center" id="S3.T3.7.7.19.4" style="padding-top:1pt;padding-bottom:1pt;">8.6</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T3.7.7.19.5" style="padding-top:1pt;padding-bottom:1pt;">9.9</td>
<td class="ltx_td ltx_align_center" id="S3.T3.7.7.19.6" style="padding-top:1pt;padding-bottom:1pt;">11.6</td>
<td class="ltx_td ltx_align_center" id="S3.T3.7.7.19.7" style="padding-top:1pt;padding-bottom:1pt;">32.9</td>
</tr>
<tr class="ltx_tr" id="S3.T3.7.7.20">
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T3.7.7.20.1" style="padding-top:1pt;padding-bottom:1pt;">CaKE(ours)</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T3.7.7.20.2" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S3.T3.7.7.20.2.1">93.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S3.T3.7.7.20.3" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S3.T3.7.7.20.3.1">65.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T3.7.7.20.4" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S3.T3.7.7.20.4.1">93.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S3.T3.7.7.20.5" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S3.T3.7.7.20.5.1">63.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T3.7.7.20.6" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S3.T3.7.7.20.6.1">91.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T3.7.7.20.7" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S3.T3.7.7.20.7.1">94.6</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents a comparison of the performance of CaKE and several other existing knowledge editing methods on the MQuAKE benchmark dataset.  The benchmark uses two different language models, LLAMA3-8B-Instruct and LLAMA3-70B-Instruct, and evaluates performance using two metrics: Hop Accuracy (H-Acc) and Multi-hop Accuracy (MAcc).  Results are shown for three variations of the MQuAKE dataset, representing different complexities and types of multi-hop reasoning tasks.  The best performing method for each metric and dataset is highlighted in bold, while the second best is underlined. Note that some results marked with ♣♣{   clubsuit}♣ indicate that the results are from re-implementations of other methods because the original code was not publicly available by those authors. Due to computational constraints, only LoRA and MeLLo were run on the larger LLAMA3-70B model.
> <details>
> <summary>read the caption</summary>
> Table 3: Comparison of CaKE with existing methods on MQuAKE for LLAMA3-8B-Instruct and LLAMA3-70B-Instruct. The best results are highlighted in bold, while the second-best results are underlined. ♣♣{\clubsuit}♣ means the results are based on our re-implementation since the original code is not open by the authors, and we will update it after the source code is open. Due to the computational limitations, we just run the LoRA and MeLLo in 70B model.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S3.T4.7.7">
<tr class="ltx_tr" id="S3.T4.7.7.8">
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T4.7.7.8.1" rowspan="2" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S3.T4.7.7.8.1.1">Method</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S3.T4.7.7.8.2" rowspan="2" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S3.T4.7.7.8.2.1">Model</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" colspan="2" id="S3.T4.7.7.8.3" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S3.T4.7.7.8.3.1">MQUAKE-CF</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" colspan="2" id="S3.T4.7.7.8.4" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S3.T4.7.7.8.4.1">MQUAKE-CF-v2</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="S3.T4.7.7.8.5" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S3.T4.7.7.8.5.1">MQUAKE-T</span></td>
</tr>
<tr class="ltx_tr" id="S3.T4.6.6.6">
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T4.1.1.1.1" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S3.T4.1.1.1.1.1">H-Acc.<math alttext="\uparrow" class="ltx_Math" display="inline" id="S3.T4.1.1.1.1.1.m1.1"><semantics id="S3.T4.1.1.1.1.1.m1.1a"><mo id="S3.T4.1.1.1.1.1.m1.1.1" stretchy="false" xref="S3.T4.1.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S3.T4.1.1.1.1.1.m1.1b"><ci id="S3.T4.1.1.1.1.1.m1.1.1.cmml" xref="S3.T4.1.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T4.1.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S3.T4.1.1.1.1.1.m1.1d">↑</annotation></semantics></math></span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T4.2.2.2.2" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S3.T4.2.2.2.2.1">MAcc.<math alttext="\uparrow" class="ltx_Math" display="inline" id="S3.T4.2.2.2.2.1.m1.1"><semantics id="S3.T4.2.2.2.2.1.m1.1a"><mo id="S3.T4.2.2.2.2.1.m1.1.1" stretchy="false" xref="S3.T4.2.2.2.2.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S3.T4.2.2.2.2.1.m1.1b"><ci id="S3.T4.2.2.2.2.1.m1.1.1.cmml" xref="S3.T4.2.2.2.2.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T4.2.2.2.2.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S3.T4.2.2.2.2.1.m1.1d">↑</annotation></semantics></math></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T4.3.3.3.3" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S3.T4.3.3.3.3.1">H-Acc.<math alttext="\uparrow" class="ltx_Math" display="inline" id="S3.T4.3.3.3.3.1.m1.1"><semantics id="S3.T4.3.3.3.3.1.m1.1a"><mo id="S3.T4.3.3.3.3.1.m1.1.1" stretchy="false" xref="S3.T4.3.3.3.3.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S3.T4.3.3.3.3.1.m1.1b"><ci id="S3.T4.3.3.3.3.1.m1.1.1.cmml" xref="S3.T4.3.3.3.3.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T4.3.3.3.3.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S3.T4.3.3.3.3.1.m1.1d">↑</annotation></semantics></math></span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T4.4.4.4.4" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S3.T4.4.4.4.4.1">MAcc.<math alttext="\uparrow" class="ltx_Math" display="inline" id="S3.T4.4.4.4.4.1.m1.1"><semantics id="S3.T4.4.4.4.4.1.m1.1a"><mo id="S3.T4.4.4.4.4.1.m1.1.1" stretchy="false" xref="S3.T4.4.4.4.4.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S3.T4.4.4.4.4.1.m1.1b"><ci id="S3.T4.4.4.4.4.1.m1.1.1.cmml" xref="S3.T4.4.4.4.4.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T4.4.4.4.4.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S3.T4.4.4.4.4.1.m1.1d">↑</annotation></semantics></math></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T4.5.5.5.5" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S3.T4.5.5.5.5.1">Hop-wise.<math alttext="\uparrow" class="ltx_Math" display="inline" id="S3.T4.5.5.5.5.1.m1.1"><semantics id="S3.T4.5.5.5.5.1.m1.1a"><mo id="S3.T4.5.5.5.5.1.m1.1.1" stretchy="false" xref="S3.T4.5.5.5.5.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S3.T4.5.5.5.5.1.m1.1b"><ci id="S3.T4.5.5.5.5.1.m1.1.1.cmml" xref="S3.T4.5.5.5.5.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T4.5.5.5.5.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S3.T4.5.5.5.5.1.m1.1d">↑</annotation></semantics></math></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T4.6.6.6.6" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S3.T4.6.6.6.6.1">MAcc.<math alttext="\uparrow" class="ltx_Math" display="inline" id="S3.T4.6.6.6.6.1.m1.1"><semantics id="S3.T4.6.6.6.6.1.m1.1a"><mo id="S3.T4.6.6.6.6.1.m1.1.1" stretchy="false" xref="S3.T4.6.6.6.6.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S3.T4.6.6.6.6.1.m1.1b"><ci id="S3.T4.6.6.6.6.1.m1.1.1.cmml" xref="S3.T4.6.6.6.6.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T4.6.6.6.6.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S3.T4.6.6.6.6.1.m1.1d">↑</annotation></semantics></math></span></td>
</tr>
<tr class="ltx_tr" id="S3.T4.7.7.9">
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T4.7.7.9.1" style="padding-top:1pt;padding-bottom:1pt;">Pre-edited</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r ltx_border_t" id="S3.T4.7.7.9.2" rowspan="9" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S3.T4.7.7.9.2.1">
<span class="ltx_inline-block ltx_transformed_outer" id="S3.T4.7.7.9.2.1.1" style="width:8.8pt;height:69.4pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:69.4pt;transform:translate(-30.29pt,-29.32pt) rotate(-90deg) ;">
<span class="ltx_p" id="S3.T4.7.7.9.2.1.1.1">Qwen2.5-7B-Ins</span>
</span></span></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T4.7.7.9.3" style="padding-top:1pt;padding-bottom:1pt;">73.4</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T4.7.7.9.4" style="padding-top:1pt;padding-bottom:1pt;">40.7</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T4.7.7.9.5" style="padding-top:1pt;padding-bottom:1pt;">72.8</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T4.7.7.9.6" style="padding-top:1pt;padding-bottom:1pt;">39.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T4.7.7.9.7" style="padding-top:1pt;padding-bottom:1pt;">56.1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T4.7.7.9.8" style="padding-top:1pt;padding-bottom:1pt;">15.6</td>
</tr>
<tr class="ltx_tr" id="S3.T4.7.7.10">
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T4.7.7.10.1" style="padding-top:1pt;padding-bottom:1pt;">LoRA</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T4.7.7.10.2" style="padding-top:1pt;padding-bottom:1pt;">35.1</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T4.7.7.10.3" style="padding-top:1pt;padding-bottom:1pt;">24.9</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T4.7.7.10.4" style="padding-top:1pt;padding-bottom:1pt;">36.5</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T4.7.7.10.5" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T4.7.7.10.5.1">25.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T4.7.7.10.6" style="padding-top:1pt;padding-bottom:1pt;">25.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T4.7.7.10.7" style="padding-top:1pt;padding-bottom:1pt;">28.6</td>
</tr>
<tr class="ltx_tr" id="S3.T4.7.7.11">
<td class="ltx_td ltx_align_center" id="S3.T4.7.7.11.1" style="padding-top:1pt;padding-bottom:1pt;">WISE</td>
<td class="ltx_td ltx_align_center" id="S3.T4.7.7.11.2" style="padding-top:1pt;padding-bottom:1pt;">41.2</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T4.7.7.11.3" style="padding-top:1pt;padding-bottom:1pt;">9.8</td>
<td class="ltx_td ltx_align_center" id="S3.T4.7.7.11.4" style="padding-top:1pt;padding-bottom:1pt;">26.5</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T4.7.7.11.5" style="padding-top:1pt;padding-bottom:1pt;">8.0</td>
<td class="ltx_td ltx_align_center" id="S3.T4.7.7.11.6" style="padding-top:1pt;padding-bottom:1pt;">50.2</td>
<td class="ltx_td ltx_align_center" id="S3.T4.7.7.11.7" style="padding-top:1pt;padding-bottom:1pt;">36.5</td>
</tr>
<tr class="ltx_tr" id="S3.T4.7.7.12">
<td class="ltx_td ltx_align_center" id="S3.T4.7.7.12.1" style="padding-top:1pt;padding-bottom:1pt;">MeLLo</td>
<td class="ltx_td ltx_align_center" id="S3.T4.7.7.12.2" style="padding-top:1pt;padding-bottom:1pt;">35.5</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T4.7.7.12.3" style="padding-top:1pt;padding-bottom:1pt;">7.8</td>
<td class="ltx_td ltx_align_center" id="S3.T4.7.7.12.4" style="padding-top:1pt;padding-bottom:1pt;">34.5</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T4.7.7.12.5" style="padding-top:1pt;padding-bottom:1pt;">7.6</td>
<td class="ltx_td ltx_align_center" id="S3.T4.7.7.12.6" style="padding-top:1pt;padding-bottom:1pt;">52.7</td>
<td class="ltx_td ltx_align_center" id="S3.T4.7.7.12.7" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T4.7.7.12.7.1">56.5</span></td>
</tr>
<tr class="ltx_tr" id="S3.T4.7.7.13">
<td class="ltx_td ltx_align_center" id="S3.T4.7.7.13.1" style="padding-top:1pt;padding-bottom:1pt;">ROME</td>
<td class="ltx_td ltx_align_center" id="S3.T4.7.7.13.2" style="padding-top:1pt;padding-bottom:1pt;">75.4</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T4.7.7.13.3" style="padding-top:1pt;padding-bottom:1pt;">10.7</td>
<td class="ltx_td ltx_align_center" id="S3.T4.7.7.13.4" style="padding-top:1pt;padding-bottom:1pt;">73.4</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T4.7.7.13.5" style="padding-top:1pt;padding-bottom:1pt;">8.8</td>
<td class="ltx_td ltx_align_center" id="S3.T4.7.7.13.6" style="padding-top:1pt;padding-bottom:1pt;">86.7</td>
<td class="ltx_td ltx_align_center" id="S3.T4.7.7.13.7" style="padding-top:1pt;padding-bottom:1pt;">17.7</td>
</tr>
<tr class="ltx_tr" id="S3.T4.7.7.14">
<td class="ltx_td ltx_align_center" id="S3.T4.7.7.14.1" style="padding-top:1pt;padding-bottom:1pt;">MEMIT</td>
<td class="ltx_td ltx_align_center" id="S3.T4.7.7.14.2" style="padding-top:1pt;padding-bottom:1pt;">82.6</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T4.7.7.14.3" style="padding-top:1pt;padding-bottom:1pt;">11.1</td>
<td class="ltx_td ltx_align_center" id="S3.T4.7.7.14.4" style="padding-top:1pt;padding-bottom:1pt;">83.4</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T4.7.7.14.5" style="padding-top:1pt;padding-bottom:1pt;">9.6</td>
<td class="ltx_td ltx_align_center" id="S3.T4.7.7.14.6" style="padding-top:1pt;padding-bottom:1pt;">88.9</td>
<td class="ltx_td ltx_align_center" id="S3.T4.7.7.14.7" style="padding-top:1pt;padding-bottom:1pt;">18.5</td>
</tr>
<tr class="ltx_tr" id="S3.T4.7.7.15">
<td class="ltx_td ltx_align_center" id="S3.T4.7.7.15.1" style="padding-top:1pt;padding-bottom:1pt;">AlphaEdit</td>
<td class="ltx_td ltx_align_center" id="S3.T4.7.7.15.2" style="padding-top:1pt;padding-bottom:1pt;">73.8</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T4.7.7.15.3" style="padding-top:1pt;padding-bottom:1pt;">12.6</td>
<td class="ltx_td ltx_align_center" id="S3.T4.7.7.15.4" style="padding-top:1pt;padding-bottom:1pt;">75.1</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T4.7.7.15.5" style="padding-top:1pt;padding-bottom:1pt;">10.5</td>
<td class="ltx_td ltx_align_center" id="S3.T4.7.7.15.6" style="padding-top:1pt;padding-bottom:1pt;">82.2</td>
<td class="ltx_td ltx_align_center" id="S3.T4.7.7.15.7" style="padding-top:1pt;padding-bottom:1pt;">17.2</td>
</tr>
<tr class="ltx_tr" id="S3.T4.7.7.7">
<td class="ltx_td ltx_align_center" id="S3.T4.7.7.7.1" style="padding-top:1pt;padding-bottom:1pt;">IFMET <sup class="ltx_sup" id="S3.T4.7.7.7.1.1"><span class="ltx_text ltx_font_italic" id="S3.T4.7.7.7.1.1.1">♣</span></sup>
</td>
<td class="ltx_td ltx_align_center" id="S3.T4.7.7.7.2" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T4.7.7.7.2.1">83.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T4.7.7.7.3" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T4.7.7.7.3.1">25.7</span></td>
<td class="ltx_td ltx_align_center" id="S3.T4.7.7.7.4" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T4.7.7.7.4.1">84.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T4.7.7.7.5" style="padding-top:1pt;padding-bottom:1pt;">24.5</td>
<td class="ltx_td ltx_align_center" id="S3.T4.7.7.7.6" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T4.7.7.7.6.1">90.0</span></td>
<td class="ltx_td ltx_align_center" id="S3.T4.7.7.7.7" style="padding-top:1pt;padding-bottom:1pt;">52.8</td>
</tr>
<tr class="ltx_tr" id="S3.T4.7.7.16">
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T4.7.7.16.1" style="padding-top:1pt;padding-bottom:1pt;">CaKE(ours)</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T4.7.7.16.2" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S3.T4.7.7.16.2.1">90.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S3.T4.7.7.16.3" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S3.T4.7.7.16.3.1">61.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T4.7.7.16.4" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S3.T4.7.7.16.4.1">90.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S3.T4.7.7.16.5" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S3.T4.7.7.16.5.1">63.05</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T4.7.7.16.6" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S3.T4.7.7.16.6.1">95.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T4.7.7.16.7" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S3.T4.7.7.16.7.1">87.8</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents a comparison of the performance of CaKE and other existing knowledge editing methods on the MQuAKE benchmark, specifically using the Qwen2.5-7B-Instruct language model.  The results are broken down by three metrics: Hop-wise Accuracy (H-Acc), Multi-hop Accuracy (MAcc), and Hop-wise Accuracy (Acc) showing the accuracy across different numbers of hops in the reasoning chain.  The best results for each metric are shown in bold, and the second-best results are underlined. Note that some results (marked with ♣♣{ clubsuit}♣♣) are based on the authors' own reimplementation of the methods because the original source code was not publicly available; these results will be updated once the original code becomes available.
> <details>
> <summary>read the caption</summary>
> Table 4: Comparison of CaKE with existing methods on MQuAKE on Qwen2.5-7B-Instruct. The best results are highlighted in bold, while the second-best results are underlined. ♣♣{\clubsuit}♣ means the results are based on our own implementation since the original code is not open by the authors, and we will update it after the source code is open.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S4.T5.1.1">
<tr class="ltx_tr" id="S4.T5.1.1.1">
<td class="ltx_td ltx_border_tt" id="S4.T5.1.1.1.1"></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T5.1.1.1.2"><span class="ltx_text ltx_font_bold" id="S4.T5.1.1.1.2.1">CSQA</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T5.1.1.1.3"><span class="ltx_text ltx_font_bold" id="S4.T5.1.1.1.3.1">BBH</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T5.1.1.1.4"><span class="ltx_text ltx_font_bold" id="S4.T5.1.1.1.4.1">MMLU</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T5.1.1.1.5"><span class="ltx_text ltx_font_bold" id="S4.T5.1.1.1.5.1">GSM8k</span></td>
</tr>
<tr class="ltx_tr" id="S4.T5.1.1.2">
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.1.1.2.1"><span class="ltx_text ltx_font_italic" id="S4.T5.1.1.2.1.1">LLaMA3-8B-Ins</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.1.1.2.2">76.09</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.1.1.2.3">67.89</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.1.1.2.4">63.83</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.1.1.2.5">75.20</td>
</tr>
<tr class="ltx_tr" id="S4.T5.1.1.3">
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.1.1.3.1">MEMIT</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.1.1.3.2">76.08</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.1.1.3.3">67.88</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.1.1.3.4">63.82</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.1.1.3.5">75.21</td>
</tr>
<tr class="ltx_tr" id="S4.T5.1.1.4">
<td class="ltx_td ltx_align_center" id="S4.T5.1.1.4.1">ROME</td>
<td class="ltx_td ltx_align_center" id="S4.T5.1.1.4.2">72.98</td>
<td class="ltx_td ltx_align_center" id="S4.T5.1.1.4.3">61.37</td>
<td class="ltx_td ltx_align_center" id="S4.T5.1.1.4.4">62.95</td>
<td class="ltx_td ltx_align_center" id="S4.T5.1.1.4.5">74.59</td>
</tr>
<tr class="ltx_tr" id="S4.T5.1.1.5">
<td class="ltx_td ltx_align_center" id="S4.T5.1.1.5.1">CAKE</td>
<td class="ltx_td ltx_align_center" id="S4.T5.1.1.5.2">75.10</td>
<td class="ltx_td ltx_align_center" id="S4.T5.1.1.5.3">67.20</td>
<td class="ltx_td ltx_align_center" id="S4.T5.1.1.5.4">62.98</td>
<td class="ltx_td ltx_align_center" id="S4.T5.1.1.5.5">76.04</td>
</tr>
<tr class="ltx_tr" id="S4.T5.1.1.6">
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T5.1.1.6.1"><span class="ltx_text ltx_font_italic" id="S4.T5.1.1.6.1.1">Qwen2.5-7B-Ins</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T5.1.1.6.2">82.31</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T5.1.1.6.3">33.39</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T5.1.1.6.4">71.80</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T5.1.1.6.5">82.26</td>
</tr>
<tr class="ltx_tr" id="S4.T5.1.1.7">
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.1.1.7.1">MEMIT</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.1.1.7.2">82.39</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.1.1.7.3">37.37</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.1.1.7.4">71.80</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.1.1.7.5">81.96</td>
</tr>
<tr class="ltx_tr" id="S4.T5.1.1.8">
<td class="ltx_td ltx_align_center" id="S4.T5.1.1.8.1">ROME</td>
<td class="ltx_td ltx_align_center" id="S4.T5.1.1.8.2">72.57</td>
<td class="ltx_td ltx_align_center" id="S4.T5.1.1.8.3">34.22</td>
<td class="ltx_td ltx_align_center" id="S4.T5.1.1.8.4">63.38</td>
<td class="ltx_td ltx_align_center" id="S4.T5.1.1.8.5">72.21</td>
</tr>
<tr class="ltx_tr" id="S4.T5.1.1.9">
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T5.1.1.9.1">CAKE</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T5.1.1.9.2">82.64</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T5.1.1.9.3">37.44</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T5.1.1.9.4">71.76</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T5.1.1.9.5">82.79</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of evaluating the locality performance of CaKE and several other knowledge editing methods.  Locality refers to the ability of a knowledge editing method to update a model's knowledge without negatively impacting its performance on unrelated tasks.  The table shows the accuracy scores achieved by each method on four commonly used general-purpose benchmarks: CommonsenseQA, BigBenchHard, MMLU, and GSM8k. These benchmarks assess different aspects of language understanding, including commonsense reasoning, complex reasoning, and knowledge about various topics. The results provide insights into how well each method maintains the overall capabilities of the language model while incorporating new knowledge.
> <details>
> <summary>read the caption</summary>
> Table 5: Locality Performance on several general benchmarks of CaKE and other editing methods.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="A1.T6.1.1">
<tr class="ltx_tr" id="A1.T6.1.1.1">
<td class="ltx_td ltx_align_center ltx_border_tt" id="A1.T6.1.1.1.1">Model</td>
<td class="ltx_td ltx_align_right ltx_border_tt" id="A1.T6.1.1.1.2">Correct</td>
<td class="ltx_td ltx_align_right ltx_border_tt" id="A1.T6.1.1.1.3">Inconsistent</td>
<td class="ltx_td ltx_align_right ltx_border_tt" id="A1.T6.1.1.1.4">Incorrect</td>
</tr>
<tr class="ltx_tr" id="A1.T6.1.1.2">
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T6.1.1.2.1">LLaMA3-8B-Ins.</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A1.T6.1.1.2.2">1,005</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A1.T6.1.1.2.3">1,032</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A1.T6.1.1.2.4">1,240</td>
</tr>
<tr class="ltx_tr" id="A1.T6.1.1.3">
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T6.1.1.3.1">Qwen2.5-7B-Ins.</td>
<td class="ltx_td ltx_align_right ltx_border_bb" id="A1.T6.1.1.3.2">241</td>
<td class="ltx_td ltx_align_right ltx_border_bb" id="A1.T6.1.1.3.3">252</td>
<td class="ltx_td ltx_align_right ltx_border_bb" id="A1.T6.1.1.3.4">275</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the dataset used for the circuit analysis in the paper. It shows the distribution of data points across three categories: correct, inconsistent, and incorrect, for two different language models: LLaMA3-8B-Instruct and Qwen2.5-7B-Instruct.  The numbers indicate how many data points fall into each category for each model.
> <details>
> <summary>read the caption</summary>
> Table 6: The dataset we used in the analysis.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="A1.T7.1.1">
<tr class="ltx_tr" id="A1.T7.1.1.1">
<td class="ltx_td ltx_align_left ltx_border_tt" id="A1.T7.1.1.1.1"><span class="ltx_text ltx_font_bold" id="A1.T7.1.1.1.1.1">Knowledge Type</span></td>
<td class="ltx_td ltx_align_left ltx_border_tt" id="A1.T7.1.1.1.2"><span class="ltx_text ltx_font_bold" id="A1.T7.1.1.1.2.1">Template</span></td>
<td class="ltx_td ltx_align_left ltx_border_tt" id="A1.T7.1.1.1.3"><span class="ltx_text ltx_font_bold" id="A1.T7.1.1.1.3.1">Answer</span></td>
</tr>
<tr class="ltx_tr" id="A1.T7.1.1.2">
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T7.1.1.2.1" rowspan="2">
<span class="ltx_text" id="A1.T7.1.1.2.1.1"><span class="ltx_text" id="A1.T7.1.1.2.1.1.1"></span><span class="ltx_text" id="A1.T7.1.1.2.1.1.2">
<span class="ltx_tabular ltx_align_middle" id="A1.T7.1.1.2.1.1.2.1">
<span class="ltx_tr" id="A1.T7.1.1.2.1.1.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_left" id="A1.T7.1.1.2.1.1.2.1.1.1">{target_person} works</span></span>
<span class="ltx_tr" id="A1.T7.1.1.2.1.1.2.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_left" id="A1.T7.1.1.2.1.1.2.1.2.1">in the field of {target_field}</span></span>
</span></span> <span class="ltx_text" id="A1.T7.1.1.2.1.1.3"></span></span>.</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T7.1.1.2.2">
<span class="ltx_text" id="A1.T7.1.1.2.2.1"></span><span class="ltx_text" id="A1.T7.1.1.2.2.2">
<span class="ltx_tabular ltx_align_middle" id="A1.T7.1.1.2.2.2.1">
<span class="ltx_tr" id="A1.T7.1.1.2.2.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_left" id="A1.T7.1.1.2.2.2.1.1.1">In a book related to different fields, Section A discusses {random_field},</span></span>
<span class="ltx_tr" id="A1.T7.1.1.2.2.2.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_left" id="A1.T7.1.1.2.2.2.1.2.1">Section B discusses {random_field}, and Section C discusses {target_field}.</span></span>
<span class="ltx_tr" id="A1.T7.1.1.2.2.2.1.3">
<span class="ltx_td ltx_nopad_r ltx_align_left" id="A1.T7.1.1.2.2.2.1.3.1">If you want to learn about {target_person}’s field,</span></span>
<span class="ltx_tr" id="A1.T7.1.1.2.2.2.1.4">
<span class="ltx_td ltx_nopad_r ltx_align_left" id="A1.T7.1.1.2.2.2.1.4.1">which section should you read?</span></span>
</span></span><span class="ltx_text" id="A1.T7.1.1.2.2.3"></span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T7.1.1.2.3">
<span class="ltx_text" id="A1.T7.1.1.2.3.1"></span><span class="ltx_text" id="A1.T7.1.1.2.3.2">
<span class="ltx_tabular ltx_align_middle" id="A1.T7.1.1.2.3.2.1">
<span class="ltx_tr" id="A1.T7.1.1.2.3.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_left" id="A1.T7.1.1.2.3.2.1.1.1">The working field of {target_person}</span></span>
<span class="ltx_tr" id="A1.T7.1.1.2.3.2.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_left" id="A1.T7.1.1.2.3.2.1.2.1">is discussed in Section C.</span></span>
</span></span><span class="ltx_text" id="A1.T7.1.1.2.3.3"></span></td>
</tr>
<tr class="ltx_tr" id="A1.T7.1.1.3">
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T7.1.1.3.1">
<span class="ltx_text" id="A1.T7.1.1.3.1.1"></span><span class="ltx_text" id="A1.T7.1.1.3.1.2">
<span class="ltx_tabular ltx_align_middle" id="A1.T7.1.1.3.1.2.1">
<span class="ltx_tr" id="A1.T7.1.1.3.1.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_left" id="A1.T7.1.1.3.1.2.1.1.1">In a biography book, Section A discusses the life of {random_person},</span></span>
<span class="ltx_tr" id="A1.T7.1.1.3.1.2.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_left" id="A1.T7.1.1.3.1.2.1.2.1">Section B discusses the life of {random_person},</span></span>
<span class="ltx_tr" id="A1.T7.1.1.3.1.2.1.3">
<span class="ltx_td ltx_nopad_r ltx_align_left" id="A1.T7.1.1.3.1.2.1.3.1">and Section C discusses the life of {target_person}.</span></span>
<span class="ltx_tr" id="A1.T7.1.1.3.1.2.1.4">
<span class="ltx_td ltx_nopad_r ltx_align_left" id="A1.T7.1.1.3.1.2.1.4.1">The field of the person in Section C is?</span></span>
</span></span><span class="ltx_text" id="A1.T7.1.1.3.1.3"></span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T7.1.1.3.2">
<span class="ltx_text" id="A1.T7.1.1.3.2.1"></span><span class="ltx_text" id="A1.T7.1.1.3.2.2">
<span class="ltx_tabular ltx_align_middle" id="A1.T7.1.1.3.2.2.1">
<span class="ltx_tr" id="A1.T7.1.1.3.2.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_left" id="A1.T7.1.1.3.2.2.1.1.1">The person in Section C</span></span>
<span class="ltx_tr" id="A1.T7.1.1.3.2.2.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_left" id="A1.T7.1.1.3.2.2.1.2.1">works in the field of {target_field}.</span></span>
</span></span><span class="ltx_text" id="A1.T7.1.1.3.2.3"></span></td>
</tr>
<tr class="ltx_tr" id="A1.T7.1.1.4">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_t" id="A1.T7.1.1.4.1" rowspan="4"><span class="ltx_text" id="A1.T7.1.1.4.1.1"><span class="ltx_text" id="A1.T7.1.1.4.1.1.1"></span><span class="ltx_text" id="A1.T7.1.1.4.1.1.2">
<span class="ltx_tabular ltx_align_middle" id="A1.T7.1.1.4.1.1.2.1">
<span class="ltx_tr" id="A1.T7.1.1.4.1.1.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_left" id="A1.T7.1.1.4.1.1.2.1.1.1">{target_person} speaks</span></span>
<span class="ltx_tr" id="A1.T7.1.1.4.1.1.2.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_left" id="A1.T7.1.1.4.1.1.2.1.2.1">the language of {target_language}.</span></span>
</span></span> <span class="ltx_text" id="A1.T7.1.1.4.1.1.3"></span></span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T7.1.1.4.2">
<span class="ltx_text" id="A1.T7.1.1.4.2.1"></span><span class="ltx_text" id="A1.T7.1.1.4.2.2">
<span class="ltx_tabular ltx_align_middle" id="A1.T7.1.1.4.2.2.1">
<span class="ltx_tr" id="A1.T7.1.1.4.2.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_left" id="A1.T7.1.1.4.2.2.1.1.1">The following facts are known: 1. {target_person} wears red clothes.</span></span>
<span class="ltx_tr" id="A1.T7.1.1.4.2.2.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_left" id="A1.T7.1.1.4.2.2.1.2.1">2. {random_person} wears blue clothes.</span></span>
<span class="ltx_tr" id="A1.T7.1.1.4.2.2.1.3">
<span class="ltx_td ltx_nopad_r ltx_align_left" id="A1.T7.1.1.4.2.2.1.3.1">3. {random_person} wears green clothes.</span></span>
<span class="ltx_tr" id="A1.T7.1.1.4.2.2.1.4">
<span class="ltx_td ltx_nopad_r ltx_align_left" id="A1.T7.1.1.4.2.2.1.4.1">The language that the person in red clothes speaks is?</span></span>
</span></span><span class="ltx_text" id="A1.T7.1.1.4.2.3"></span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T7.1.1.4.3">
<span class="ltx_text" id="A1.T7.1.1.4.3.1"></span><span class="ltx_text" id="A1.T7.1.1.4.3.2">
<span class="ltx_tabular ltx_align_middle" id="A1.T7.1.1.4.3.2.1">
<span class="ltx_tr" id="A1.T7.1.1.4.3.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_left" id="A1.T7.1.1.4.3.2.1.1.1">The language that the person in red clothes</span></span>
<span class="ltx_tr" id="A1.T7.1.1.4.3.2.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_left" id="A1.T7.1.1.4.3.2.1.2.1">speaks is {target_language}.</span></span>
</span></span><span class="ltx_text" id="A1.T7.1.1.4.3.3"></span></td>
</tr>
<tr class="ltx_tr" id="A1.T7.1.1.5">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_t" id="A1.T7.1.1.5.1">
<span class="ltx_text" id="A1.T7.1.1.5.1.1"></span><span class="ltx_text" id="A1.T7.1.1.5.1.2">
<span class="ltx_tabular ltx_align_middle" id="A1.T7.1.1.5.1.2.1">
<span class="ltx_tr" id="A1.T7.1.1.5.1.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_left" id="A1.T7.1.1.5.1.2.1.1.1">At a global company:</span></span>
<span class="ltx_tr" id="A1.T7.1.1.5.1.2.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_left" id="A1.T7.1.1.5.1.2.1.2.1">{target_language}-speaking employees work in Team A.</span></span>
<span class="ltx_tr" id="A1.T7.1.1.5.1.2.1.3">
<span class="ltx_td ltx_nopad_r ltx_align_left" id="A1.T7.1.1.5.1.2.1.3.1">{random_language}-speaking employees work in Team B.</span></span>
<span class="ltx_tr" id="A1.T7.1.1.5.1.2.1.4">
<span class="ltx_td ltx_nopad_r ltx_align_left" id="A1.T7.1.1.5.1.2.1.4.1">In which team would {target_person} work when he/she is at work?</span></span>
</span></span><span class="ltx_text" id="A1.T7.1.1.5.1.3"></span></td>
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_t" id="A1.T7.1.1.5.2">
<span class="ltx_text" id="A1.T7.1.1.5.2.1"></span><span class="ltx_text" id="A1.T7.1.1.5.2.2">
<span class="ltx_tabular ltx_align_middle" id="A1.T7.1.1.5.2.2.1">
<span class="ltx_tr" id="A1.T7.1.1.5.2.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_left" id="A1.T7.1.1.5.2.2.1.1.1">{target_person} would work in</span></span>
<span class="ltx_tr" id="A1.T7.1.1.5.2.2.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_left" id="A1.T7.1.1.5.2.2.1.2.1">Team A when he/she is at work.</span></span>
</span></span><span class="ltx_text" id="A1.T7.1.1.5.2.3"></span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents example templates used to generate training data for the CaKE model.  Each template creates a multi-hop question designed to test the model's ability to integrate updated knowledge within its reasoning circuits. The examples show how factual statements are embedded within a context that forces the model to utilize the newly learned knowledge at different steps of the reasoning process, rather than relying on simple pattern matching or memorization.
> <details>
> <summary>read the caption</summary>
> Table 7: Sample templates for generating the circuit-aware data.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="A2.T8.1.1">
<tr class="ltx_tr" id="A2.T8.1.1.1">
<td class="ltx_td ltx_align_left ltx_border_tt" id="A2.T8.1.1.1.1" rowspan="2"><span class="ltx_text ltx_font_bold" id="A2.T8.1.1.1.1.1">Edit Method</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="A2.T8.1.1.1.2"><span class="ltx_text ltx_font_bold" id="A2.T8.1.1.1.2.1">LLAMA3-8B</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="A2.T8.1.1.1.3"><span class="ltx_text ltx_font_bold" id="A2.T8.1.1.1.3.1">Qwen2.5-7B</span></td>
</tr>
<tr class="ltx_tr" id="A2.T8.1.1.2">
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T8.1.1.2.1">First_hop</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T8.1.1.2.2">Second_hop</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T8.1.1.2.3">First_hop</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T8.1.1.2.4">Second_hop</td>
</tr>
<tr class="ltx_tr" id="A2.T8.1.1.3">
<td class="ltx_td ltx_align_left ltx_border_t" id="A2.T8.1.1.3.1">ROME</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T8.1.1.3.2"><span class="ltx_text ltx_font_bold" id="A2.T8.1.1.3.2.1">16.66</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T8.1.1.3.3">7.81</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T8.1.1.3.4"><span class="ltx_text ltx_font_bold" id="A2.T8.1.1.3.4.1">10.57</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T8.1.1.3.5">8.33</td>
</tr>
<tr class="ltx_tr" id="A2.T8.1.1.4">
<td class="ltx_td ltx_align_left ltx_border_bb" id="A2.T8.1.1.4.1">WISE</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T8.1.1.4.2">49.85</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T8.1.1.4.3"><span class="ltx_text ltx_font_bold" id="A2.T8.1.1.4.3.1">67.36</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T8.1.1.4.4">8.33</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T8.1.1.4.5"><span class="ltx_text ltx_font_bold" id="A2.T8.1.1.4.5.1">33.59</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents a comparison of the performance of different knowledge editing methods. The comparison is made across various positions where the edited fact is placed within the input context (First-hop, Second-hop).  The performance metric used is likely accuracy or some other relevant measure of the model's ability to incorporate the new information correctly. This analysis helps to understand how the placement of an edited fact impacts the effectiveness of different knowledge editing techniques in a multi-hop reasoning task.
> <details>
> <summary>read the caption</summary>
> Table 8: Performance comparison of edit methods across different positions for the edited fact.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2503.16356/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16356/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16356/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16356/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16356/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16356/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16356/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16356/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16356/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16356/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16356/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16356/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16356/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16356/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16356/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16356/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16356/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}