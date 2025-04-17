---
title: "SAEs $\textit{Can}$ Improve Unlearning: Dynamic Sparse Autoencoder Guardrails for Precision Unlearning in LLMs"
summary: "Dynamic Sparse Autoencoders (**SAEs**) significantly improve machine unlearning in LLMs by dynamically selecting features and conditionally intervening, achieving superior forget-utility trade-offs."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["AI Theory", "Safety", "🏢 Carnegie Mellon University",]
showSummary: true
date: 2025-04-11
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2504.08192 {{< /keyword >}}
{{< keyword icon="writer" >}} Aashiq Muhamed et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-04-14 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2504.08192" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2504.08192" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2504.08192/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Machine unlearning improves LLM safety by removing unwanted knowledge. Prevailing gradient-based methods face high costs, hyperparameter instability, poor sequential unlearning, and low interpretability. Sparse Autoencoders (**SAEs**) improve these aspects via targeted activation-based unlearning, but prior approaches underperform. This research significantly improves unlearning dynamically.



This paper introduces Dynamic SAE Guardrails (**DSG**), a method for precision unlearning using SAEs. **DSG** integrates Fisher Information-based feature selection with a dynamic classifier. Experiments demonstrate **DSG** substantially outperforms leading unlearning methods, achieving superior forget-utility trade-offs and interpretable unlearning.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Dynamic SAE Guardrails (DSG) substantially outperforms leading unlearning methods. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} DSG offers enhanced computational efficiency and stability, with robust performance in sequential unlearning. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} DSG demonstrates stronger resistance to relearning attacks, better data efficiency, and more interpretable unlearning. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper introduces Dynamic SAE Guardrails (**DSG**), a novel unlearning method improving upon previous approaches. **DSG**'s effectiveness in enhancing computational efficiency, stability, and interpretability makes it a valuable asset for researchers.

------
#### Visual Insights



![](https://arxiv.org/html/2504.08192/extracted/6352696/figures/SAE_plotv2.png)

> 🔼 The figure illustrates the architecture of Dynamic SAE Guardrails (DSG), a method for targeted unlearning in large language models.  The diagram shows how DSG leverages a sparse autoencoder (SAE) to identify and remove the influence of features associated with unwanted knowledge.  It begins with activations from a Transformer layer of the LLM. The SAE encoder converts these activations into a sparse representation, where individual features represent different aspects of the model's knowledge.  A dynamic classifier determines whether the input is forget-relevant, and only then are the activations of identified forget features clamped, preventing the model from accessing those specific knowledge pathways.  The SAE decoder then reconstructs the activations for subsequent processing by the LLM, resulting in a model that has effectively forgotten the specified information.
> <details>
> <summary>read the caption</summary>
> Figure 1: An illustration of DSG
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S4.T1.4">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T1.3.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S4.T1.3.3.4" rowspan="2"><span class="ltx_text" id="S4.T1.3.3.4.1">Method</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T1.1.1.1" rowspan="2"><span class="ltx_text" id="S4.T1.1.1.1.1">WMDP Bio (<math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T1.1.1.1.1.m1.1"><semantics id="S4.T1.1.1.1.1.m1.1a"><mo id="S4.T1.1.1.1.1.m1.1.1" stretchy="false" xref="S4.T1.1.1.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T1.1.1.1.1.m1.1b"><ci id="S4.T1.1.1.1.1.m1.1.1.cmml" xref="S4.T1.1.1.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.1.1.1.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.1.1.1.1.m1.1d">↓</annotation></semantics></math>)</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="5" id="S4.T1.2.2.2">MMLU (<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T1.2.2.2.m1.1"><semantics id="S4.T1.2.2.2.m1.1a"><mo id="S4.T1.2.2.2.m1.1.1" stretchy="false" xref="S4.T1.2.2.2.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T1.2.2.2.m1.1b"><ci id="S4.T1.2.2.2.m1.1.1.cmml" xref="S4.T1.2.2.2.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.2.2.2.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.2.2.2.m1.1d">↑</annotation></semantics></math>)</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T1.3.3.3" rowspan="2"><span class="ltx_text" id="S4.T1.3.3.3.1">MT (<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T1.3.3.3.1.m1.1"><semantics id="S4.T1.3.3.3.1.m1.1a"><mo id="S4.T1.3.3.3.1.m1.1.1" stretchy="false" xref="S4.T1.3.3.3.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T1.3.3.3.1.m1.1b"><ci id="S4.T1.3.3.3.1.m1.1.1.cmml" xref="S4.T1.3.3.3.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.3.3.3.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.3.3.3.1.m1.1d">↑</annotation></semantics></math>)</span></th>
</tr>
<tr class="ltx_tr" id="S4.T1.4.5.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T1.4.5.1.1">HS Hist</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T1.4.5.1.2">C. CS</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T1.4.5.1.3">HS Geo</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T1.4.5.1.4">H. Aging</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T1.4.5.1.5">All</th>
</tr>
<tr class="ltx_tr" id="S4.T1.4.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_t" id="S4.T1.4.4.1">Target <math alttext="\mathcal{M}" class="ltx_Math" display="inline" id="S4.T1.4.4.1.m1.1"><semantics id="S4.T1.4.4.1.m1.1a"><mi class="ltx_font_mathcaligraphic" id="S4.T1.4.4.1.m1.1.1" xref="S4.T1.4.4.1.m1.1.1.cmml">ℳ</mi><annotation-xml encoding="MathML-Content" id="S4.T1.4.4.1.m1.1b"><ci id="S4.T1.4.4.1.m1.1.1.cmml" xref="S4.T1.4.4.1.m1.1.1">ℳ</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.4.4.1.m1.1c">\mathcal{M}</annotation><annotation encoding="application/x-llamapun" id="S4.T1.4.4.1.m1.1d">caligraphic_M</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T1.4.4.2">100.00</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T1.4.4.3">100.00</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T1.4.4.4">100.00</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T1.4.4.5">100.00</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T1.4.4.6">100.00</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T1.4.4.7">100.00</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T1.4.4.8">7.36</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T1.4.6.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T1.4.6.1.1">GA</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.4.6.1.2">99.44</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.4.6.1.3">98.18</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.4.6.1.4">100.00</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.4.6.1.5">100.00</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.4.6.1.6">100.00</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.4.6.1.7">99.35</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.4.6.1.8">7.44</td>
</tr>
<tr class="ltx_tr" id="S4.T1.4.7.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T1.4.7.2.1">NPO</th>
<td class="ltx_td ltx_align_center" id="S4.T1.4.7.2.2">97.95</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.7.2.3">99.99</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.7.2.4">88.88</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.7.2.5">100.00</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.7.2.6">98.82</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.7.2.7">99.35</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.7.2.8">7.29</td>
</tr>
<tr class="ltx_tr" id="S4.T1.4.8.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T1.4.8.3.1">SSD</th>
<td class="ltx_td ltx_align_center" id="S4.T1.4.8.3.2">99.44</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.8.3.3">100.00</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.8.3.4">100.00</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.8.3.5">100.00</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.8.3.6">98.82</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.8.3.7">99.68</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.8.3.8">7.24</td>
</tr>
<tr class="ltx_tr" id="S4.T1.4.9.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T1.4.9.4.1">SCRUB</th>
<td class="ltx_td ltx_align_center" id="S4.T1.4.9.4.2">94.97</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.9.4.3">99.09</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.9.4.4">100.00</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.9.4.5">100.00</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.9.4.6">98.82</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.9.4.7">99.35</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.9.4.8">6.09</td>
</tr>
<tr class="ltx_tr" id="S4.T1.4.10.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T1.4.10.5.1">Farrell et al.</th>
<td class="ltx_td ltx_align_center" id="S4.T1.4.10.5.2">59.22</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.10.5.3">100.00</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.10.5.4">100.00</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.10.5.5">100.00</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.10.5.6">96.47</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.10.5.7">99.03</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.10.5.8">7.33</td>
</tr>
<tr class="ltx_tr" id="S4.T1.4.11.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T1.4.11.6.1">RMU</th>
<td class="ltx_td ltx_align_center" id="S4.T1.4.11.6.2">50.00</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.11.6.3">99.08</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.11.6.4">100.00</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.11.6.5">100.00</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.11.6.6">98.81</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.11.6.7">99.47</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.11.6.8">7.21</td>
</tr>
<tr class="ltx_tr" id="S4.T1.4.12.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_t" id="S4.T1.4.12.7.1"><span class="ltx_text ltx_font_bold" id="S4.T1.4.12.7.1.1">DSG (Ours)</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T1.4.12.7.2"><span class="ltx_text ltx_font_bold" id="S4.T1.4.12.7.2.1">29.64</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T1.4.12.7.3">100.00</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T1.4.12.7.4">100.00</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T1.4.12.7.5">100.00</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T1.4.12.7.6">97.62</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T1.4.12.7.7">99.34</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T1.4.12.7.8"><span class="ltx_text ltx_font_bold" id="S4.T1.4.12.7.8.1">7.78</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 This table presents the results of unlearning experiments on the WMDP-Bio dataset, comparing the performance of the Dynamic Sparse Autoencoder Guardrails (DSG) method to several baselines (GA, NPO, SSD, SCRUB, Farrell et al., RMU). The evaluation measures two key aspects of unlearning: (1) forget quality, the ability of the model to remove specific knowledge from the forget dataset (WMDP-Bio), and (2) utility preservation, the ability of the model to retain its general knowledge and capabilities on the retain dataset (WikiText).  Metrics include WMDP-Bio accuracy (lower is better, indicating successful forgetting) and MMLU accuracy (higher is better, indicating preserved general knowledge), with MT-Bench scores providing an additional measure of the model's overall fluency and quality of text generation. The results show that DSG significantly outperforms all baselines in terms of unlearning effectiveness (achieving substantially lower WMDP-Bio accuracy) while maintaining high levels of general utility (near-perfect MMLU accuracy). MT-bench scores also indicate superior text quality compared to the baseline methods.
> <details>
> <summary>read the caption</summary>
> Table 1: Unlearning performance on WMDP-Bio. All represents the average MMLU score. MT-Bench scores show 0.16 variance across 5 runs. DSG shows superior unlearning effectiveness compared to baselines while maintaining high MMLU performance.
> </details>





### In-depth insights


#### DSG: Causal Unlearn
The term "DSG: Causal Unlearn" suggests a novel approach to machine unlearning that leverages causal inference. The key idea is to **identify and mitigate the causal pathways** through which unwanted knowledge influences a model's outputs. Traditional unlearning methods often focus on removing correlations, but causal unlearning aims to disrupt the underlying mechanisms that lead to the generation of undesirable content. This may involve **identifying key features or activations** that act as causal mediators of the unwanted knowledge and then applying targeted interventions to block their influence. The "DSG" likely refers to a specific method or framework that implements this causal unlearning approach, potentially involving techniques such as **causal discovery algorithms** to identify relevant causal relationships and **intervention strategies** to sever the connections between the unwanted knowledge and the model's predictions. This targeted approach has the potential to be more effective and efficient than traditional unlearning methods by focusing on the root causes of the problem rather than simply addressing the symptoms.

#### SAE for Precision
**SAE for Precision** could refer to the application of Sparse Autoencoders (SAEs) to achieve greater accuracy and control in various tasks. In machine learning, precision is crucial, demanding targeted interventions without unintended side effects. SAEs, with their ability to disentangle complex data representations into sparse, interpretable features, are promising for precision-driven applications. In machine unlearning, for example, SAEs can identify and manipulate specific knowledge components, allowing for the removal of unwanted information while preserving general model capabilities. The precision arises from the SAEs capability to target specific activations linked to the 'forget' data. Also, Precision can stem from the interpretability they provide, enabling human-guided refinement of models. To ensure precision, the feature selection, the intervention strategy, and the integration of domain knowledge are important. To conclude, SAEs offer a pathway towards precision by providing a toolkit for interpreting, targeting, and manipulating complex data in various fields.

#### Dynamic Clamping
**Dynamic clamping** is likely a technique used to mitigate undesirable behavior in machine learning models, particularly in the context of unlearning or safety. It probably involves adjusting the activation values of certain neurons or features during inference to prevent the model from accessing or utilizing specific knowledge pathways. Unlike static clamping, which applies the same adjustments regardless of input, dynamic clamping would be conditional, adapting the clamping based on the specific input or context. This helps to minimize side effects and preserve the model's general utility while effectively removing the influence of unwanted knowledge. The effectiveness of dynamic clamping depends on accurately identifying the relevant neurons or features to clamp and on designing a robust mechanism to trigger the clamping when necessary. This technique could also contribute to more robust and tamper-resistant AI systems.

#### Robust Relearning
**Robust relearning** focuses on a model's capacity to resist the reacquisition of previously 'unlearned' knowledge. It's a critical aspect of unlearning, ensuring that sensitive or undesirable information remains inaccessible even after subsequent model updates or fine-tuning. Measuring **robustness** often involves subjecting the 'unlearned' model to retraining or adversarial attacks designed to elicit the forgotten information. A truly robust unlearning method should demonstrably prevent the model from rediscovering the deleted knowledge, maintaining a consistent level of forgetfulness. This often involves techniques beyond simply suppressing information, focusing instead on fundamentally altering the model's representation to eliminate the encoding of the undesirable knowledge. Strategies might involve targeted interventions in the model's architecture or training process, aiming to create a lasting barrier against relearning and ensuring long-term compliance with privacy or safety requirements. Approaches that emphasize modifying internal representations, rather than merely suppressing weights, tend to exhibit greater resistance to relearning attacks. Methods which modifies the parameters are more prone to being relearnt as finetuning helps relearn the data.

#### API Threat Model
An API threat model is crucial for understanding and mitigating security risks in modern software systems. It involves identifying potential attack vectors targeting APIs, such as **authentication bypass**, **data injection**, and **denial-of-service attacks**. A comprehensive model also considers the potential impact of vulnerabilities in dependent services and third-party libraries. **Rate limiting** and input validation are essential countermeasures. The model should analyze potential consequences, such as data breaches or system compromise. An effective API threat model is **continuously updated**, reflecting changes in the API's functionality and the evolving threat landscape, incorporating insights from security testing and vulnerability assessments. **Regular audits** and penetration testing help refine the threat model and validate its effectiveness. Furthermore, it should drive secure coding practices and inform the design of robust security controls.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2504.08192/extracted/6352696/figures/fig_tk_percent.png)

> 🔼 This figure is a histogram showing the distribution of the percentage of forget-set activated tokens (ρ(x)) in sequences from the WMDP-Bio (biosecurity) and MMLU (general knowledge) datasets.  The x-axis represents the percentage of tokens in a sequence that activate at least one of the SAE features identified as causally linked to the forget data (WMDP-Bio). The y-axis represents the count of sequences with that percentage.  The dashed red line indicates the 95th percentile of the ρ(x) distribution for the retain set (MMLU). This threshold is used in the Dynamic SAE Guardrails (DSG) method to dynamically classify sequences as forget-relevant or retain-relevant for targeted unlearning interventions. The plot demonstrates the effectiveness of this threshold in separating sequences from the forget and retain sets, highlighting the ability of DSG to differentiate between the two data types.
> <details>
> <summary>read the caption</summary>
> Figure 2: Distribution of ρ⁢(x)𝜌𝑥\rho(x)italic_ρ ( italic_x ) for unlearning on WMDP-Bio. Threshold at 95th percentile (dashed red line) separates MMLU from WMDP.
> </details>



![](https://arxiv.org/html/2504.08192/x1.png)

> 🔼 This figure displays the results of unlearning experiments conducted on two subsets of the WMDP dataset: WMDP-Bio and WMDP-Cyber.  The primary metric for evaluating unlearning effectiveness is the accuracy on the WMDP task itself (lower accuracy is better, indicating successful forgetting).  Simultaneously, the figure tracks the accuracy of a general knowledge task (MMLU) to ensure that the unlearning process doesn't significantly impact the model's overall capabilities (higher MMLU accuracy is preferred).  Various unlearning methods are compared, including gradient-based approaches (RMU, SCRUB, SSD) and a static SAE-based method from previous work (Farrell et al.). The Dynamic SAE Guardrails (DSG) method is the focus.  Different clamp strengths (a parameter controlling the intensity of the intervention) are used for DSG. The plot showcases DSG's superior performance, demonstrating that it achieves better trade-offs between forgetting and utility preservation than all the comparison methods, as demonstrated by Pareto dominance. This means that for any level of retained general knowledge (as measured by MMLU accuracy), DSG achieves better forgetting of the target knowledge (lower WMDP accuracy) compared to the other methods.
> <details>
> <summary>read the caption</summary>
> Figure 3: Unlearning performance on WMDP-Bio (left) and WMDP-Cyber (right). Higher MMLU accuracy and lower WMDP accuracy is better. Clamp strengths (c𝑐citalic_c) used for DSG points are shown as annotations. DSG Pareto-dominates the top four baseline methods (RMU, SCRUB, Farrell et al., SSD).
> </details>



![](https://arxiv.org/html/2504.08192/x2.png)

> 🔼 This figure shows the results of experiments evaluating the scalability and sequential unlearning capabilities of the Dynamic SAE Guardrails (DSG) method.  Panel (a) demonstrates DSG's performance as the size of the forget dataset increases, showing its ability to maintain effectiveness even with large amounts of data to be removed.  Panel (b) illustrates DSG's performance when handling multiple, consecutive unlearning requests.  It showcases the robustness of DSG in maintaining both forget quality (effectively removing the targeted data) and utility preservation (retaining the model's overall capabilities) across multiple requests, a significant advantage over methods that exhibit performance degradation over successive unlearning attempts.
> <details>
> <summary>read the caption</summary>
> Figure 4: (a) Scalability: Performance across increasing forget set sizes. (b) Sequential Unlearning: Performance across sequential unlearning requests
> </details>



![](https://arxiv.org/html/2504.08192/x3.png)

> 🔼 This figure displays the results of relearning attacks on two different models: one using Dynamic SAE Guardrails (DSG) and the other using RMU.  The left panel (a) shows the WMDP-Bio accuracy over multiple finetuning epochs after an initial unlearning phase.  It demonstrates that DSG is significantly more resistant to relearning attacks than RMU, maintaining a much lower accuracy even after extensive finetuning. The right panel (b) shows MMLU (general knowledge) performance for three different scenarios: a baseline model, the baseline model with test-time DSG (DSG applied only during testing), and the baseline model with train-time DSG (DSG integrated into the training process). This comparison highlights the trade-off between unlearning effectiveness and utility preservation. Train-time DSG reduces WMDP accuracy more than test-time DSG but at the cost of a slightly decreased MMLU accuracy, showcasing that test-time DSG offers a more favorable balance between forgetting and retention.
> <details>
> <summary>read the caption</summary>
> Figure 5:  Relearning attack resistance across finetuning epochs. (a) DSG demonstrates superior resistance to relearning compared to RMU. (b) Test-time DSG preserves MMLU utility better than Train-time DSG while still providing significant protection.
> </details>



![](https://arxiv.org/html/2504.08192/x4.png)

> 🔼 Figure 6 presents a comparison of Dynamic SAE Guardrails (DSG) and RMU in terms of data efficiency and zero-shot performance.  Part (A) illustrates how well each method performs when trained with varying amounts of data (20%, 40%, 60%, 80%, and 100%). It shows that DSG maintains robust performance even with limited data. Part (B) demonstrates the zero-shot performance of DSG on the WMDP-Bio and WMDP-Cyber datasets.  Here, 20 features were selected using the Neuropedia API.  The performance is shown for different values of the dynamic threshold τ, highlighting DSG's ability to achieve good performance even without using task-specific data for training.
> <details>
> <summary>read the caption</summary>
> Figure 6: Data efficiency analysis of DSG. (A) Performance across varying training data sizes compared to RMU. (B) Zero-shot performance on WMDP-Bio (left) and WMDP-Cyber (right) using 20 features selected via Neuropedia API with different τ𝜏\tauitalic_τ thresholds (shown next to each data point).
> </details>



![](https://arxiv.org/html/2504.08192/x5.png)

> 🔼 This figure presents the results of ablation studies conducted on the Dynamic SAE Guardrails (DSG) model to analyze the impact of its key components.  Panel (A) compares static and dynamic clamping methods, varying the clamp strength (c) applied to the selected features. This panel helps to understand the effect of dynamic intervention on balancing forgetting and utility preservation. Panel (B) investigates the influence of the dynamic threshold percentile (p<sub>dyn</sub>) parameter in controlling the trade-off between these two aspects.  The dynamic threshold is used to classify the model inputs as either forget-relevant or retain-relevant which triggers clamping. Changing this percentile alters the sensitivity of the classification, directly affecting how often the clamping is applied. Panel (C) explores the effect of the importance ratio threshold (p<sub>ratio</sub>) on performance. The importance ratio is used to rank features according to how strongly they are associated with the knowledge to be forgotten relative to the knowledge to be retained. The threshold determines how many of the top-ranked features are selected for clamping.  In essence, this figure provides a detailed exploration of how each of these hyperparameters affects the balance between the quality of unlearning and the preservation of the model's general utility.
> <details>
> <summary>read the caption</summary>
> Figure 7: DSG Ablation studies (A) Static vs. dynamic clamping comparison with varying clamp strengths [10-500] for 20 and 30 features. (B) Effect of dynamic threshold percentile (pdynsubscript𝑝dyn\smash{p_{\text{dyn}}}italic_p start_POSTSUBSCRIPT dyn end_POSTSUBSCRIPT) on performance (C) Impact of importance ratio threshold (pratiosubscript𝑝ratiop_{\text{ratio}}italic_p start_POSTSUBSCRIPT ratio end_POSTSUBSCRIPT, range 75-95) for 20 and 30 features.
> </details>



![](https://arxiv.org/html/2504.08192/extracted/6352696/figures/zero_shot.png)

> 🔼 This figure displays the distribution of the percentage of forget-set activated tokens within sequences from the WMDP-Cyber dataset and the MMLU dataset.  The x-axis represents the percentage of tokens in a sequence that activate at least one of the SAE features identified as causally linked to the forget data (WMDP-Cyber). The y-axis shows the count of sequences with that percentage of activated tokens. The dashed red line marks the 95th percentile of the distribution, which is used as a threshold in the dynamic classification component of the DSG method.  The plot shows that the distribution for WMDP-Cyber sequences is shifted towards higher percentages of activated tokens compared to the MMLU sequences, indicating that the selected SAE features effectively discriminate between data from these two datasets. This supports the use of this threshold in the DSG method to selectively trigger intervention only when processing inputs relevant to the forget data.
> <details>
> <summary>read the caption</summary>
> Figure 8: Distribution of forget-set activated tokens for WMDP-Cyber. Threshold at the 95th percentile (dashed red line) effectively separates MMLU from WMDP.
> </details>



![](https://arxiv.org/html/2504.08192/extracted/6352696/figures/ablations.png)

> 🔼 This figure shows the distribution of cosine similarity and magnitude ratio between the base model's activations and the finetuned model's activations. The cosine similarity distribution shows that finetuning does not significantly change the underlying activation space, with most values clustered around 1.0. The magnitude ratio distribution, which represents the ratio of finetuned activations to base activations, also shows most values clustered around 1.0, indicating that the magnitude of activations does not change significantly during finetuning. This figure supports the Superficial Alignment Hypothesis, which suggests that activation patterns remain relatively stable during finetuning while weights change significantly.
> <details>
> <summary>read the caption</summary>
> ((a))
> </details>



![](https://arxiv.org/html/2504.08192/extracted/6352696/figures/fig_tk_percent_cyber.png)

> 🔼 This figure shows the distribution of cosine similarity and magnitude ratio between base and fine-tuned models' activations.  The high cosine similarity values (centered around 0.994) and magnitude ratios around 1.02 demonstrate that fine-tuning the model does not substantially alter the underlying activation patterns. This supports the superficial alignment hypothesis, which posits that the activation patterns remain stable during finetuning, even when weights change significantly.  This stability is crucial for the robustness of DSG against relearning attacks.
> <details>
> <summary>read the caption</summary>
> ((b))
> </details>



![](https://arxiv.org/html/2504.08192/x6.png)

> 🔼 Figure 9 presents two key observations related to the model's activation patterns during finetuning. (a) Activation Cosine Similarity and Magnitude Ratio: This plot demonstrates the stability of activation patterns during finetuning. The distribution of cosine similarities between activation vectors before and after finetuning is heavily concentrated around 1.0, indicating that the direction of the activations remains largely unchanged. Similarly, the magnitude ratios also cluster around 1.0, suggesting that the scale of activations remains largely unaltered. This supports the Superficial Alignment Hypothesis which suggests that while weights in the model might change considerably during finetuning, the fundamental activation patterns remain relatively stable. (b) Training Loss During Finetuning: This plot shows training loss values when finetuning the base model and a model using test-time DSG on two tasks: WMDP and MMLU. The significantly higher loss observed for the model with test-time DSG on the WMDP task compared to MMLU suggests that DSG effectively prevents the model from reactivating or easily accessing knowledge related to the WMDP dataset (forget set) while maintaining performance on MMLU (retain set). This shows how DSG actively restricts access to specific knowledge pathways during training by clamping certain activation patterns, making it more resistant to relearning attacks.
> <details>
> <summary>read the caption</summary>
> Figure 9: (a) Distribution of activation cosine similarity and activation magnitude ratio between Base and Finetuned models. Finetuning does not significantly change the underlying activation space. (b) Train loss when finetuning Base model and Base+SAE model on WMDP and MMLU. Loss on WMDP for the BASE+SAE model is significantly higher than on MMLU.
> </details>



![](https://arxiv.org/html/2504.08192/x7.png)

> 🔼 This figure shows the results of a relearning attack experiment conducted with a reduced learning rate of 1e-6, in contrast to the primary experiments using a learning rate of 1e-5.  The experiment evaluates the impact of reduced learning rate on the effectiveness of relearning attacks.  The figure plots the WMDP-Bio accuracy over multiple finetuning epochs for different model configurations: a base model (before unlearning), a base model with test-time DSG, a model using RMU (a baseline unlearning method) and a model using RMU with test-time DSG.  The results demonstrate that across all configurations, minimal changes in performance are observed during finetuning epochs. This indicates a strong dependency of relearning attack efficacy on the learning rate, suggesting that applying learning rate constraints in API-based model access could significantly reduce the susceptibility to relearning attacks.
> <details>
> <summary>read the caption</summary>
> Figure 10: Relearning attack performance with reduced learning rate (1e-6). All configurations show minimal performance changes across finetuning epochs, demonstrating that relearning attack efficacy is strongly dependent on learning rate.
> </details>



![](https://arxiv.org/html/2504.08192/x8.png)

> 🔼 This figure illustrates the impact of the clamp strength parameter (c) and the number of selected features on the performance of Dynamic SAE Guardrails (DSG).  The MMLU accuracy (a measure of the model's performance on a general knowledge benchmark) remains high (above 99%) across a wide range of clamp strengths (from 10 to 500) when using 10 or 20 features.  However, the WMDP-Bio accuracy (a measure of the model's ability to forget specific knowledge) decreases sharply even with a small clamp strength (c = 25) when using 10-30 features. This demonstrates that DSG can effectively remove the targeted knowledge while maintaining high overall performance with minimal sensitivity to the clamp strength hyperparameter.
> <details>
> <summary>read the caption</summary>
> Figure 11: Effect of clamp strength c𝑐citalic_c on DSG performance across different feature counts. MMLU accuracy (solid lines) remains consistently high (>99%absentpercent99>99\%> 99 %) for 10-20 features across all clamp values, while WMDP-Bio accuracy (dashed lines) drops sharply even at modest clamp strengths (c=25𝑐25c=25italic_c = 25). This demonstrates DSG’s ability to effectively remove targeted knowledge while preserving general model capabilities with minimal parameter sensitivity.
> </details>



![](https://arxiv.org/html/2504.08192/extracted/6352696/figures/multiplier.png)

> 🔼 Figure 12 presents a comparison of two methods for calculating a statistical measure called Total Variation Distance (TVD).  TVD quantifies the difference between two probability distributions. In this case, the distributions represent the activation patterns of different sets of data used in a machine unlearning experiment.  The two methods being compared are a percentage-based method (using the ρ symbol) and a raw count-based method (ρraw).  WikiText data represents the 'retain' data (data that should be preserved after unlearning), while MMLU and WMDP data represents the 'forget' data (data to be removed or forgotten) in different domains. Lower TVD values between WikiText and MMLU indicate better alignment or similarity between the retain data's activation pattern before and after the unlearning process. Conversely, higher TVD values between WikiText and WMDP signify a better separation—the unlearning process successfully distinguished the activations of the retain and forget datasets. The figure shows that the percentage-based method consistently outperforms the raw count method in both alignment and separation across all benchmarks (MMLU and WMDP in biosecurity and cybersecurity domains).
> <details>
> <summary>read the caption</summary>
> Figure 12: Total Variation Distance (TVD) between WikiText and benchmark datasets using percentage-based (ρ𝜌\rhoitalic_ρ) vs. raw count-based (ρrawsubscript𝜌raw\rho_{\text{raw}}italic_ρ start_POSTSUBSCRIPT raw end_POSTSUBSCRIPT) metrics. Lower TVD between WikiText and MMLU indicates better alignment of retain sets, while higher TVD between WikiText and WMDP indicates better separation between retain and forget distributions. Percentage-based metrics consistently outperform raw counts on both measures across all benchmarks.
> </details>



![](https://arxiv.org/html/2504.08192/x9.png)

> 🔼 This figure visualizes the activations of specific Sparse Autoencoder (SAE) features on example sequences from the forget datasets of WMDP-Bio and WMDP-Cyber.  For WMDP-Bio (part A), it shows two SAE features (IDs 373 and 10933) with high activations on words related to biological processes and infectious diseases. For WMDP-Cyber (part B), it displays two different features (IDs 15286 and 2905) that are strongly activated in the context of cybersecurity-related terms like 'encryption' and 'security'. The grey numbers above the words represent the magnitude of the activations. This visualization demonstrates that the SAE features identified by DSG are semantically meaningful and capture domain-relevant concepts, supporting the interpretability of DSG's unlearning.
> <details>
> <summary>read the caption</summary>
> Figure 13:  Feature Activations on Example Sequences from Forget Sets. (A) WMDP-Bio sequence with words highlighted in green indicating activation values >0absent0>0> 0 for feature ID (top) 373 and (bottom) 10933. (B) WMDP-Cyber sequence with words highlighted in green indicating activation values >0absent0>0> 0 for feature ID (top) 15286 and (bottom) 2905. Activation magnitudes are reported above the words in grey.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S4.T2.53.53">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T2.53.53.54.1">
<td class="ltx_td ltx_border_tt" id="S4.T2.53.53.54.1.1" style="padding:-1.25pt 8.0pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="S4.T2.53.53.54.1.2" style="padding:-1.25pt 8.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.53.53.54.1.2.1">C1. No Verbatim Mem.</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="S4.T2.53.53.54.1.3" style="padding:-1.25pt 8.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.53.53.54.1.3.1">C2. No Knowledge Mem.</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="S4.T2.53.53.54.1.4" style="padding:-1.25pt 8.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.53.53.54.1.4.1">C3. No Privacy Leak.</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="S4.T2.53.53.54.1.5" style="padding:-1.25pt 8.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.53.53.54.1.5.1">C4. Utiltiy Preserv.</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.7.7.7">
<td class="ltx_td" id="S4.T2.7.7.7.8" style="padding:-1.25pt 8.0pt;"></td>
<td class="ltx_td ltx_align_center" colspan="2" id="S4.T2.2.2.2.2" style="padding:-1.25pt 8.0pt;">
<span class="ltx_text ltx_font_sansserif" id="S4.T2.2.2.2.2.1">VerbMem</span> on <math alttext="\mathcal{D}_{\text{forget}}" class="ltx_Math" display="inline" id="S4.T2.1.1.1.1.m1.1"><semantics id="S4.T2.1.1.1.1.m1.1a"><msub id="S4.T2.1.1.1.1.m1.1.1" xref="S4.T2.1.1.1.1.m1.1.1.cmml"><mi class="ltx_font_mathcaligraphic" id="S4.T2.1.1.1.1.m1.1.1.2" xref="S4.T2.1.1.1.1.m1.1.1.2.cmml">𝒟</mi><mtext id="S4.T2.1.1.1.1.m1.1.1.3" xref="S4.T2.1.1.1.1.m1.1.1.3a.cmml">forget</mtext></msub><annotation-xml encoding="MathML-Content" id="S4.T2.1.1.1.1.m1.1b"><apply id="S4.T2.1.1.1.1.m1.1.1.cmml" xref="S4.T2.1.1.1.1.m1.1.1"><csymbol cd="ambiguous" id="S4.T2.1.1.1.1.m1.1.1.1.cmml" xref="S4.T2.1.1.1.1.m1.1.1">subscript</csymbol><ci id="S4.T2.1.1.1.1.m1.1.1.2.cmml" xref="S4.T2.1.1.1.1.m1.1.1.2">𝒟</ci><ci id="S4.T2.1.1.1.1.m1.1.1.3a.cmml" xref="S4.T2.1.1.1.1.m1.1.1.3"><mtext id="S4.T2.1.1.1.1.m1.1.1.3.cmml" mathsize="70%" xref="S4.T2.1.1.1.1.m1.1.1.3">forget</mtext></ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.1.1.1.1.m1.1c">\mathcal{D}_{\text{forget}}</annotation><annotation encoding="application/x-llamapun" id="S4.T2.1.1.1.1.m1.1d">caligraphic_D start_POSTSUBSCRIPT forget end_POSTSUBSCRIPT</annotation></semantics></math> (<math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T2.2.2.2.2.m2.1"><semantics id="S4.T2.2.2.2.2.m2.1a"><mo id="S4.T2.2.2.2.2.m2.1.1" stretchy="false" xref="S4.T2.2.2.2.2.m2.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T2.2.2.2.2.m2.1b"><ci id="S4.T2.2.2.2.2.m2.1.1.cmml" xref="S4.T2.2.2.2.2.m2.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.2.2.2.2.m2.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.2.2.2.2.m2.1d">↓</annotation></semantics></math>)</td>
<td class="ltx_td ltx_align_center" colspan="2" id="S4.T2.4.4.4.4" style="padding:-1.25pt 8.0pt;">
<span class="ltx_text ltx_font_sansserif" id="S4.T2.4.4.4.4.1">KnowMem</span> on <math alttext="\mathcal{D}_{\text{forget}}" class="ltx_Math" display="inline" id="S4.T2.3.3.3.3.m1.1"><semantics id="S4.T2.3.3.3.3.m1.1a"><msub id="S4.T2.3.3.3.3.m1.1.1" xref="S4.T2.3.3.3.3.m1.1.1.cmml"><mi class="ltx_font_mathcaligraphic" id="S4.T2.3.3.3.3.m1.1.1.2" xref="S4.T2.3.3.3.3.m1.1.1.2.cmml">𝒟</mi><mtext id="S4.T2.3.3.3.3.m1.1.1.3" xref="S4.T2.3.3.3.3.m1.1.1.3a.cmml">forget</mtext></msub><annotation-xml encoding="MathML-Content" id="S4.T2.3.3.3.3.m1.1b"><apply id="S4.T2.3.3.3.3.m1.1.1.cmml" xref="S4.T2.3.3.3.3.m1.1.1"><csymbol cd="ambiguous" id="S4.T2.3.3.3.3.m1.1.1.1.cmml" xref="S4.T2.3.3.3.3.m1.1.1">subscript</csymbol><ci id="S4.T2.3.3.3.3.m1.1.1.2.cmml" xref="S4.T2.3.3.3.3.m1.1.1.2">𝒟</ci><ci id="S4.T2.3.3.3.3.m1.1.1.3a.cmml" xref="S4.T2.3.3.3.3.m1.1.1.3"><mtext id="S4.T2.3.3.3.3.m1.1.1.3.cmml" mathsize="70%" xref="S4.T2.3.3.3.3.m1.1.1.3">forget</mtext></ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.3.3.3.3.m1.1c">\mathcal{D}_{\text{forget}}</annotation><annotation encoding="application/x-llamapun" id="S4.T2.3.3.3.3.m1.1d">caligraphic_D start_POSTSUBSCRIPT forget end_POSTSUBSCRIPT</annotation></semantics></math> (<math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T2.4.4.4.4.m2.1"><semantics id="S4.T2.4.4.4.4.m2.1a"><mo id="S4.T2.4.4.4.4.m2.1.1" stretchy="false" xref="S4.T2.4.4.4.4.m2.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T2.4.4.4.4.m2.1b"><ci id="S4.T2.4.4.4.4.m2.1.1.cmml" xref="S4.T2.4.4.4.4.m2.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.4.4.4.4.m2.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.4.4.4.4.m2.1d">↓</annotation></semantics></math>)</td>
<td class="ltx_td ltx_align_center" colspan="2" id="S4.T2.5.5.5.5" style="padding:-1.25pt 8.0pt;">
<span class="ltx_text ltx_font_sansserif" id="S4.T2.5.5.5.5.1">PrivLeak</span> (<math alttext="\in[-5\%,5\%]" class="ltx_Math" display="inline" id="S4.T2.5.5.5.5.m1.2"><semantics id="S4.T2.5.5.5.5.m1.2a"><mrow id="S4.T2.5.5.5.5.m1.2.2" xref="S4.T2.5.5.5.5.m1.2.2.cmml"><mi id="S4.T2.5.5.5.5.m1.2.2.4" xref="S4.T2.5.5.5.5.m1.2.2.4.cmml"></mi><mo id="S4.T2.5.5.5.5.m1.2.2.3" xref="S4.T2.5.5.5.5.m1.2.2.3.cmml">∈</mo><mrow id="S4.T2.5.5.5.5.m1.2.2.2.2" xref="S4.T2.5.5.5.5.m1.2.2.2.3.cmml"><mo id="S4.T2.5.5.5.5.m1.2.2.2.2.3" stretchy="false" xref="S4.T2.5.5.5.5.m1.2.2.2.3.cmml">[</mo><mrow id="S4.T2.5.5.5.5.m1.1.1.1.1.1" xref="S4.T2.5.5.5.5.m1.1.1.1.1.1.cmml"><mo id="S4.T2.5.5.5.5.m1.1.1.1.1.1a" xref="S4.T2.5.5.5.5.m1.1.1.1.1.1.cmml">−</mo><mrow id="S4.T2.5.5.5.5.m1.1.1.1.1.1.2" xref="S4.T2.5.5.5.5.m1.1.1.1.1.1.2.cmml"><mn id="S4.T2.5.5.5.5.m1.1.1.1.1.1.2.2" xref="S4.T2.5.5.5.5.m1.1.1.1.1.1.2.2.cmml">5</mn><mo id="S4.T2.5.5.5.5.m1.1.1.1.1.1.2.1" xref="S4.T2.5.5.5.5.m1.1.1.1.1.1.2.1.cmml">%</mo></mrow></mrow><mo id="S4.T2.5.5.5.5.m1.2.2.2.2.4" xref="S4.T2.5.5.5.5.m1.2.2.2.3.cmml">,</mo><mrow id="S4.T2.5.5.5.5.m1.2.2.2.2.2" xref="S4.T2.5.5.5.5.m1.2.2.2.2.2.cmml"><mn id="S4.T2.5.5.5.5.m1.2.2.2.2.2.2" xref="S4.T2.5.5.5.5.m1.2.2.2.2.2.2.cmml">5</mn><mo id="S4.T2.5.5.5.5.m1.2.2.2.2.2.1" xref="S4.T2.5.5.5.5.m1.2.2.2.2.2.1.cmml">%</mo></mrow><mo id="S4.T2.5.5.5.5.m1.2.2.2.2.5" stretchy="false" xref="S4.T2.5.5.5.5.m1.2.2.2.3.cmml">]</mo></mrow></mrow><annotation-xml encoding="MathML-Content" id="S4.T2.5.5.5.5.m1.2b"><apply id="S4.T2.5.5.5.5.m1.2.2.cmml" xref="S4.T2.5.5.5.5.m1.2.2"><in id="S4.T2.5.5.5.5.m1.2.2.3.cmml" xref="S4.T2.5.5.5.5.m1.2.2.3"></in><csymbol cd="latexml" id="S4.T2.5.5.5.5.m1.2.2.4.cmml" xref="S4.T2.5.5.5.5.m1.2.2.4">absent</csymbol><interval closure="closed" id="S4.T2.5.5.5.5.m1.2.2.2.3.cmml" xref="S4.T2.5.5.5.5.m1.2.2.2.2"><apply id="S4.T2.5.5.5.5.m1.1.1.1.1.1.cmml" xref="S4.T2.5.5.5.5.m1.1.1.1.1.1"><minus id="S4.T2.5.5.5.5.m1.1.1.1.1.1.1.cmml" xref="S4.T2.5.5.5.5.m1.1.1.1.1.1"></minus><apply id="S4.T2.5.5.5.5.m1.1.1.1.1.1.2.cmml" xref="S4.T2.5.5.5.5.m1.1.1.1.1.1.2"><csymbol cd="latexml" id="S4.T2.5.5.5.5.m1.1.1.1.1.1.2.1.cmml" xref="S4.T2.5.5.5.5.m1.1.1.1.1.1.2.1">percent</csymbol><cn id="S4.T2.5.5.5.5.m1.1.1.1.1.1.2.2.cmml" type="integer" xref="S4.T2.5.5.5.5.m1.1.1.1.1.1.2.2">5</cn></apply></apply><apply id="S4.T2.5.5.5.5.m1.2.2.2.2.2.cmml" xref="S4.T2.5.5.5.5.m1.2.2.2.2.2"><csymbol cd="latexml" id="S4.T2.5.5.5.5.m1.2.2.2.2.2.1.cmml" xref="S4.T2.5.5.5.5.m1.2.2.2.2.2.1">percent</csymbol><cn id="S4.T2.5.5.5.5.m1.2.2.2.2.2.2.cmml" type="integer" xref="S4.T2.5.5.5.5.m1.2.2.2.2.2.2">5</cn></apply></interval></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.5.5.5.5.m1.2c">\in[-5\%,5\%]</annotation><annotation encoding="application/x-llamapun" id="S4.T2.5.5.5.5.m1.2d">∈ [ - 5 % , 5 % ]</annotation></semantics></math>)</td>
<td class="ltx_td ltx_align_center" colspan="2" id="S4.T2.7.7.7.7" style="padding:-1.25pt 8.0pt;">
<span class="ltx_text ltx_font_sansserif" id="S4.T2.7.7.7.7.1">KnowMem</span> on <math alttext="\mathcal{D}_{\text{retain}}" class="ltx_Math" display="inline" id="S4.T2.6.6.6.6.m1.1"><semantics id="S4.T2.6.6.6.6.m1.1a"><msub id="S4.T2.6.6.6.6.m1.1.1" xref="S4.T2.6.6.6.6.m1.1.1.cmml"><mi class="ltx_font_mathcaligraphic" id="S4.T2.6.6.6.6.m1.1.1.2" xref="S4.T2.6.6.6.6.m1.1.1.2.cmml">𝒟</mi><mtext id="S4.T2.6.6.6.6.m1.1.1.3" xref="S4.T2.6.6.6.6.m1.1.1.3a.cmml">retain</mtext></msub><annotation-xml encoding="MathML-Content" id="S4.T2.6.6.6.6.m1.1b"><apply id="S4.T2.6.6.6.6.m1.1.1.cmml" xref="S4.T2.6.6.6.6.m1.1.1"><csymbol cd="ambiguous" id="S4.T2.6.6.6.6.m1.1.1.1.cmml" xref="S4.T2.6.6.6.6.m1.1.1">subscript</csymbol><ci id="S4.T2.6.6.6.6.m1.1.1.2.cmml" xref="S4.T2.6.6.6.6.m1.1.1.2">𝒟</ci><ci id="S4.T2.6.6.6.6.m1.1.1.3a.cmml" xref="S4.T2.6.6.6.6.m1.1.1.3"><mtext id="S4.T2.6.6.6.6.m1.1.1.3.cmml" mathsize="70%" xref="S4.T2.6.6.6.6.m1.1.1.3">retain</mtext></ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.6.6.6.6.m1.1c">\mathcal{D}_{\text{retain}}</annotation><annotation encoding="application/x-llamapun" id="S4.T2.6.6.6.6.m1.1d">caligraphic_D start_POSTSUBSCRIPT retain end_POSTSUBSCRIPT</annotation></semantics></math> (<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T2.7.7.7.7.m2.1"><semantics id="S4.T2.7.7.7.7.m2.1a"><mo id="S4.T2.7.7.7.7.m2.1.1" stretchy="false" xref="S4.T2.7.7.7.7.m2.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T2.7.7.7.7.m2.1b"><ci id="S4.T2.7.7.7.7.m2.1.1.cmml" xref="S4.T2.7.7.7.7.m2.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.7.7.7.7.m2.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.7.7.7.7.m2.1d">↑</annotation></semantics></math>)</td>
</tr>
<tr class="ltx_tr" id="S4.T2.53.53.55.2">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="9" id="S4.T2.53.53.55.2.1" style="background-color:#F2F2F2;padding:-1.25pt 8.0pt;"><span class="ltx_text ltx_font_bold ltx_font_smallcaps" id="S4.T2.53.53.55.2.1.1" style="background-color:#F2F2F2;">News</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.12.12.12">
<td class="ltx_td ltx_align_left" id="S4.T2.8.8.8.1" style="padding:-1.25pt 8.0pt;">Target <math alttext="\mathcal{M}" class="ltx_Math" display="inline" id="S4.T2.8.8.8.1.m1.1"><semantics id="S4.T2.8.8.8.1.m1.1a"><mi class="ltx_font_mathcaligraphic" id="S4.T2.8.8.8.1.m1.1.1" xref="S4.T2.8.8.8.1.m1.1.1.cmml">ℳ</mi><annotation-xml encoding="MathML-Content" id="S4.T2.8.8.8.1.m1.1b"><ci id="S4.T2.8.8.8.1.m1.1.1.cmml" xref="S4.T2.8.8.8.1.m1.1.1">ℳ</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.8.8.8.1.m1.1c">\mathcal{M}</annotation><annotation encoding="application/x-llamapun" id="S4.T2.8.8.8.1.m1.1d">caligraphic_M</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_right" id="S4.T2.9.9.9.2" style="padding:-1.25pt 8.0pt;"><math alttext="21.15" class="ltx_Math" display="inline" id="S4.T2.9.9.9.2.m1.1"><semantics id="S4.T2.9.9.9.2.m1.1a"><mn id="S4.T2.9.9.9.2.m1.1.1" xref="S4.T2.9.9.9.2.m1.1.1.cmml">21.15</mn><annotation-xml encoding="MathML-Content" id="S4.T2.9.9.9.2.m1.1b"><cn id="S4.T2.9.9.9.2.m1.1.1.cmml" type="float" xref="S4.T2.9.9.9.2.m1.1.1">21.15</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.9.9.9.2.m1.1c">21.15</annotation><annotation encoding="application/x-llamapun" id="S4.T2.9.9.9.2.m1.1d">21.15</annotation></semantics></math></td>
<td class="ltx_td" id="S4.T2.12.12.12.6" style="padding:-1.25pt 8.0pt;"></td>
<td class="ltx_td ltx_align_right" id="S4.T2.10.10.10.3" style="padding:-1.25pt 8.0pt;"><math alttext="29.51" class="ltx_Math" display="inline" id="S4.T2.10.10.10.3.m1.1"><semantics id="S4.T2.10.10.10.3.m1.1a"><mn id="S4.T2.10.10.10.3.m1.1.1" xref="S4.T2.10.10.10.3.m1.1.1.cmml">29.51</mn><annotation-xml encoding="MathML-Content" id="S4.T2.10.10.10.3.m1.1b"><cn id="S4.T2.10.10.10.3.m1.1.1.cmml" type="float" xref="S4.T2.10.10.10.3.m1.1.1">29.51</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.10.10.10.3.m1.1c">29.51</annotation><annotation encoding="application/x-llamapun" id="S4.T2.10.10.10.3.m1.1d">29.51</annotation></semantics></math></td>
<td class="ltx_td" id="S4.T2.12.12.12.7" style="padding:-1.25pt 8.0pt;"></td>
<td class="ltx_td ltx_align_right" id="S4.T2.11.11.11.4" style="padding:-1.25pt 8.0pt;"><math alttext="-88.16" class="ltx_Math" display="inline" id="S4.T2.11.11.11.4.m1.1"><semantics id="S4.T2.11.11.11.4.m1.1a"><mrow id="S4.T2.11.11.11.4.m1.1.1" xref="S4.T2.11.11.11.4.m1.1.1.cmml"><mo id="S4.T2.11.11.11.4.m1.1.1a" xref="S4.T2.11.11.11.4.m1.1.1.cmml">−</mo><mn id="S4.T2.11.11.11.4.m1.1.1.2" xref="S4.T2.11.11.11.4.m1.1.1.2.cmml">88.16</mn></mrow><annotation-xml encoding="MathML-Content" id="S4.T2.11.11.11.4.m1.1b"><apply id="S4.T2.11.11.11.4.m1.1.1.cmml" xref="S4.T2.11.11.11.4.m1.1.1"><minus id="S4.T2.11.11.11.4.m1.1.1.1.cmml" xref="S4.T2.11.11.11.4.m1.1.1"></minus><cn id="S4.T2.11.11.11.4.m1.1.1.2.cmml" type="float" xref="S4.T2.11.11.11.4.m1.1.1.2">88.16</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.11.11.11.4.m1.1c">-88.16</annotation><annotation encoding="application/x-llamapun" id="S4.T2.11.11.11.4.m1.1d">- 88.16</annotation></semantics></math></td>
<td class="ltx_td" id="S4.T2.12.12.12.8" style="padding:-1.25pt 8.0pt;"></td>
<td class="ltx_td ltx_align_right" id="S4.T2.12.12.12.5" style="padding:-1.25pt 8.0pt;"><math alttext="26.78" class="ltx_Math" display="inline" id="S4.T2.12.12.12.5.m1.1"><semantics id="S4.T2.12.12.12.5.m1.1a"><mn id="S4.T2.12.12.12.5.m1.1.1" xref="S4.T2.12.12.12.5.m1.1.1.cmml">26.78</mn><annotation-xml encoding="MathML-Content" id="S4.T2.12.12.12.5.m1.1b"><cn id="S4.T2.12.12.12.5.m1.1.1.cmml" type="float" xref="S4.T2.12.12.12.5.m1.1.1">26.78</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.12.12.12.5.m1.1c">26.78</annotation><annotation encoding="application/x-llamapun" id="S4.T2.12.12.12.5.m1.1d">26.78</annotation></semantics></math></td>
<td class="ltx_td" id="S4.T2.12.12.12.9" style="padding:-1.25pt 8.0pt;"></td>
</tr>
<tr class="ltx_tr" id="S4.T2.15.15.15">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T2.15.15.15.4" style="padding:-1.25pt 8.0pt;"><span class="ltx_text ltx_font_sansserif" id="S4.T2.15.15.15.4.1">GA</span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T2.15.15.15.5" style="padding:-1.25pt 8.0pt;">0.62</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T2.13.13.13.1" style="padding:-1.25pt 8.0pt;"><span class="ltx_text" id="S4.T2.13.13.13.1.1"><math alttext="\downarrow 97.1\%" class="ltx_Math" display="inline" id="S4.T2.13.13.13.1.1.m1.1" style="background-color:#CCFFCC;"><semantics id="S4.T2.13.13.13.1.1.m1.1a"><mrow id="S4.T2.13.13.13.1.1.m1.1.1" xref="S4.T2.13.13.13.1.1.m1.1.1.cmml"><mi id="S4.T2.13.13.13.1.1.m1.1.1.2" xref="S4.T2.13.13.13.1.1.m1.1.1.2.cmml"></mi><mo id="S4.T2.13.13.13.1.1.m1.1.1.1" mathbackground="#CCFFCC" stretchy="false" xref="S4.T2.13.13.13.1.1.m1.1.1.1.cmml">↓</mo><mrow id="S4.T2.13.13.13.1.1.m1.1.1.3" xref="S4.T2.13.13.13.1.1.m1.1.1.3.cmml"><mn id="S4.T2.13.13.13.1.1.m1.1.1.3.2" mathbackground="#CCFFCC" xref="S4.T2.13.13.13.1.1.m1.1.1.3.2.cmml">97.1</mn><mo id="S4.T2.13.13.13.1.1.m1.1.1.3.1" mathbackground="#CCFFCC" xref="S4.T2.13.13.13.1.1.m1.1.1.3.1.cmml">%</mo></mrow></mrow><annotation-xml encoding="MathML-Content" id="S4.T2.13.13.13.1.1.m1.1b"><apply id="S4.T2.13.13.13.1.1.m1.1.1.cmml" xref="S4.T2.13.13.13.1.1.m1.1.1"><ci id="S4.T2.13.13.13.1.1.m1.1.1.1.cmml" xref="S4.T2.13.13.13.1.1.m1.1.1.1">↓</ci><csymbol cd="latexml" id="S4.T2.13.13.13.1.1.m1.1.1.2.cmml" xref="S4.T2.13.13.13.1.1.m1.1.1.2">absent</csymbol><apply id="S4.T2.13.13.13.1.1.m1.1.1.3.cmml" xref="S4.T2.13.13.13.1.1.m1.1.1.3"><csymbol cd="latexml" id="S4.T2.13.13.13.1.1.m1.1.1.3.1.cmml" xref="S4.T2.13.13.13.1.1.m1.1.1.3.1">percent</csymbol><cn id="S4.T2.13.13.13.1.1.m1.1.1.3.2.cmml" type="float" xref="S4.T2.13.13.13.1.1.m1.1.1.3.2">97.1</cn></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.13.13.13.1.1.m1.1c">\downarrow 97.1\%</annotation><annotation encoding="application/x-llamapun" id="S4.T2.13.13.13.1.1.m1.1d">↓ 97.1 %</annotation></semantics></math></span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T2.15.15.15.6" style="padding:-1.25pt 8.0pt;">0.00</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T2.14.14.14.2" style="padding:-1.25pt 8.0pt;"><span class="ltx_text" id="S4.T2.14.14.14.2.1"><math alttext="\downarrow 100.0\%" class="ltx_Math" display="inline" id="S4.T2.14.14.14.2.1.m1.1" style="background-color:#CCFFCC;"><semantics id="S4.T2.14.14.14.2.1.m1.1a"><mrow id="S4.T2.14.14.14.2.1.m1.1.1" xref="S4.T2.14.14.14.2.1.m1.1.1.cmml"><mi id="S4.T2.14.14.14.2.1.m1.1.1.2" xref="S4.T2.14.14.14.2.1.m1.1.1.2.cmml"></mi><mo id="S4.T2.14.14.14.2.1.m1.1.1.1" mathbackground="#CCFFCC" stretchy="false" xref="S4.T2.14.14.14.2.1.m1.1.1.1.cmml">↓</mo><mrow id="S4.T2.14.14.14.2.1.m1.1.1.3" xref="S4.T2.14.14.14.2.1.m1.1.1.3.cmml"><mn id="S4.T2.14.14.14.2.1.m1.1.1.3.2" mathbackground="#CCFFCC" xref="S4.T2.14.14.14.2.1.m1.1.1.3.2.cmml">100.0</mn><mo id="S4.T2.14.14.14.2.1.m1.1.1.3.1" mathbackground="#CCFFCC" xref="S4.T2.14.14.14.2.1.m1.1.1.3.1.cmml">%</mo></mrow></mrow><annotation-xml encoding="MathML-Content" id="S4.T2.14.14.14.2.1.m1.1b"><apply id="S4.T2.14.14.14.2.1.m1.1.1.cmml" xref="S4.T2.14.14.14.2.1.m1.1.1"><ci id="S4.T2.14.14.14.2.1.m1.1.1.1.cmml" xref="S4.T2.14.14.14.2.1.m1.1.1.1">↓</ci><csymbol cd="latexml" id="S4.T2.14.14.14.2.1.m1.1.1.2.cmml" xref="S4.T2.14.14.14.2.1.m1.1.1.2">absent</csymbol><apply id="S4.T2.14.14.14.2.1.m1.1.1.3.cmml" xref="S4.T2.14.14.14.2.1.m1.1.1.3"><csymbol cd="latexml" id="S4.T2.14.14.14.2.1.m1.1.1.3.1.cmml" xref="S4.T2.14.14.14.2.1.m1.1.1.3.1">percent</csymbol><cn id="S4.T2.14.14.14.2.1.m1.1.1.3.2.cmml" type="float" xref="S4.T2.14.14.14.2.1.m1.1.1.3.2">100.0</cn></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.14.14.14.2.1.m1.1c">\downarrow 100.0\%</annotation><annotation encoding="application/x-llamapun" id="S4.T2.14.14.14.2.1.m1.1d">↓ 100.0 %</annotation></semantics></math></span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T2.15.15.15.7" style="padding:-1.25pt 8.0pt;">-8.16</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T2.15.15.15.8" style="padding:-1.25pt 8.0pt;"><span class="ltx_text ltx_font_sansserif" id="S4.T2.15.15.15.8.1" style="background-color:#FFCCCC;">under-unlearn</span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T2.15.15.15.9" style="padding:-1.25pt 8.0pt;">0.09</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T2.15.15.15.3" style="padding:-1.25pt 8.0pt;"><span class="ltx_text" id="S4.T2.15.15.15.3.1"><math alttext="\downarrow 99.7\%" class="ltx_Math" display="inline" id="S4.T2.15.15.15.3.1.m1.1" style="background-color:#FFCCCC;"><semantics id="S4.T2.15.15.15.3.1.m1.1a"><mrow id="S4.T2.15.15.15.3.1.m1.1.1" xref="S4.T2.15.15.15.3.1.m1.1.1.cmml"><mi id="S4.T2.15.15.15.3.1.m1.1.1.2" xref="S4.T2.15.15.15.3.1.m1.1.1.2.cmml"></mi><mo id="S4.T2.15.15.15.3.1.m1.1.1.1" mathbackground="#FFCCCC" stretchy="false" xref="S4.T2.15.15.15.3.1.m1.1.1.1.cmml">↓</mo><mrow id="S4.T2.15.15.15.3.1.m1.1.1.3" xref="S4.T2.15.15.15.3.1.m1.1.1.3.cmml"><mn id="S4.T2.15.15.15.3.1.m1.1.1.3.2" mathbackground="#FFCCCC" xref="S4.T2.15.15.15.3.1.m1.1.1.3.2.cmml">99.7</mn><mo id="S4.T2.15.15.15.3.1.m1.1.1.3.1" mathbackground="#FFCCCC" xref="S4.T2.15.15.15.3.1.m1.1.1.3.1.cmml">%</mo></mrow></mrow><annotation-xml encoding="MathML-Content" id="S4.T2.15.15.15.3.1.m1.1b"><apply id="S4.T2.15.15.15.3.1.m1.1.1.cmml" xref="S4.T2.15.15.15.3.1.m1.1.1"><ci id="S4.T2.15.15.15.3.1.m1.1.1.1.cmml" xref="S4.T2.15.15.15.3.1.m1.1.1.1">↓</ci><csymbol cd="latexml" id="S4.T2.15.15.15.3.1.m1.1.1.2.cmml" xref="S4.T2.15.15.15.3.1.m1.1.1.2">absent</csymbol><apply id="S4.T2.15.15.15.3.1.m1.1.1.3.cmml" xref="S4.T2.15.15.15.3.1.m1.1.1.3"><csymbol cd="latexml" id="S4.T2.15.15.15.3.1.m1.1.1.3.1.cmml" xref="S4.T2.15.15.15.3.1.m1.1.1.3.1">percent</csymbol><cn id="S4.T2.15.15.15.3.1.m1.1.1.3.2.cmml" type="float" xref="S4.T2.15.15.15.3.1.m1.1.1.3.2">99.7</cn></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.15.15.15.3.1.m1.1c">\downarrow 99.7\%</annotation><annotation encoding="application/x-llamapun" id="S4.T2.15.15.15.3.1.m1.1d">↓ 99.7 %</annotation></semantics></math></span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.18.18.18">
<td class="ltx_td ltx_align_left" id="S4.T2.18.18.18.4" style="padding:-1.25pt 8.0pt;"><span class="ltx_text ltx_font_sansserif" id="S4.T2.18.18.18.4.1">GradDiff</span></td>
<td class="ltx_td ltx_align_right" id="S4.T2.18.18.18.5" style="padding:-1.25pt 8.0pt;">2.81</td>
<td class="ltx_td ltx_align_left" id="S4.T2.16.16.16.1" style="padding:-1.25pt 8.0pt;"><span class="ltx_text" id="S4.T2.16.16.16.1.1"><math alttext="\downarrow 86.7\%" class="ltx_Math" display="inline" id="S4.T2.16.16.16.1.1.m1.1" style="background-color:#CCFFCC;"><semantics id="S4.T2.16.16.16.1.1.m1.1a"><mrow id="S4.T2.16.16.16.1.1.m1.1.1" xref="S4.T2.16.16.16.1.1.m1.1.1.cmml"><mi id="S4.T2.16.16.16.1.1.m1.1.1.2" xref="S4.T2.16.16.16.1.1.m1.1.1.2.cmml"></mi><mo id="S4.T2.16.16.16.1.1.m1.1.1.1" mathbackground="#CCFFCC" stretchy="false" xref="S4.T2.16.16.16.1.1.m1.1.1.1.cmml">↓</mo><mrow id="S4.T2.16.16.16.1.1.m1.1.1.3" xref="S4.T2.16.16.16.1.1.m1.1.1.3.cmml"><mn id="S4.T2.16.16.16.1.1.m1.1.1.3.2" mathbackground="#CCFFCC" xref="S4.T2.16.16.16.1.1.m1.1.1.3.2.cmml">86.7</mn><mo id="S4.T2.16.16.16.1.1.m1.1.1.3.1" mathbackground="#CCFFCC" xref="S4.T2.16.16.16.1.1.m1.1.1.3.1.cmml">%</mo></mrow></mrow><annotation-xml encoding="MathML-Content" id="S4.T2.16.16.16.1.1.m1.1b"><apply id="S4.T2.16.16.16.1.1.m1.1.1.cmml" xref="S4.T2.16.16.16.1.1.m1.1.1"><ci id="S4.T2.16.16.16.1.1.m1.1.1.1.cmml" xref="S4.T2.16.16.16.1.1.m1.1.1.1">↓</ci><csymbol cd="latexml" id="S4.T2.16.16.16.1.1.m1.1.1.2.cmml" xref="S4.T2.16.16.16.1.1.m1.1.1.2">absent</csymbol><apply id="S4.T2.16.16.16.1.1.m1.1.1.3.cmml" xref="S4.T2.16.16.16.1.1.m1.1.1.3"><csymbol cd="latexml" id="S4.T2.16.16.16.1.1.m1.1.1.3.1.cmml" xref="S4.T2.16.16.16.1.1.m1.1.1.3.1">percent</csymbol><cn id="S4.T2.16.16.16.1.1.m1.1.1.3.2.cmml" type="float" xref="S4.T2.16.16.16.1.1.m1.1.1.3.2">86.7</cn></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.16.16.16.1.1.m1.1c">\downarrow 86.7\%</annotation><annotation encoding="application/x-llamapun" id="S4.T2.16.16.16.1.1.m1.1d">↓ 86.7 %</annotation></semantics></math></span></td>
<td class="ltx_td ltx_align_right" id="S4.T2.18.18.18.6" style="padding:-1.25pt 8.0pt;">0.71</td>
<td class="ltx_td ltx_align_left" id="S4.T2.17.17.17.2" style="padding:-1.25pt 8.0pt;"><span class="ltx_text" id="S4.T2.17.17.17.2.1"><math alttext="\downarrow 97.6\%" class="ltx_Math" display="inline" id="S4.T2.17.17.17.2.1.m1.1" style="background-color:#CCFFCC;"><semantics id="S4.T2.17.17.17.2.1.m1.1a"><mrow id="S4.T2.17.17.17.2.1.m1.1.1" xref="S4.T2.17.17.17.2.1.m1.1.1.cmml"><mi id="S4.T2.17.17.17.2.1.m1.1.1.2" xref="S4.T2.17.17.17.2.1.m1.1.1.2.cmml"></mi><mo id="S4.T2.17.17.17.2.1.m1.1.1.1" mathbackground="#CCFFCC" stretchy="false" xref="S4.T2.17.17.17.2.1.m1.1.1.1.cmml">↓</mo><mrow id="S4.T2.17.17.17.2.1.m1.1.1.3" xref="S4.T2.17.17.17.2.1.m1.1.1.3.cmml"><mn id="S4.T2.17.17.17.2.1.m1.1.1.3.2" mathbackground="#CCFFCC" xref="S4.T2.17.17.17.2.1.m1.1.1.3.2.cmml">97.6</mn><mo id="S4.T2.17.17.17.2.1.m1.1.1.3.1" mathbackground="#CCFFCC" xref="S4.T2.17.17.17.2.1.m1.1.1.3.1.cmml">%</mo></mrow></mrow><annotation-xml encoding="MathML-Content" id="S4.T2.17.17.17.2.1.m1.1b"><apply id="S4.T2.17.17.17.2.1.m1.1.1.cmml" xref="S4.T2.17.17.17.2.1.m1.1.1"><ci id="S4.T2.17.17.17.2.1.m1.1.1.1.cmml" xref="S4.T2.17.17.17.2.1.m1.1.1.1">↓</ci><csymbol cd="latexml" id="S4.T2.17.17.17.2.1.m1.1.1.2.cmml" xref="S4.T2.17.17.17.2.1.m1.1.1.2">absent</csymbol><apply id="S4.T2.17.17.17.2.1.m1.1.1.3.cmml" xref="S4.T2.17.17.17.2.1.m1.1.1.3"><csymbol cd="latexml" id="S4.T2.17.17.17.2.1.m1.1.1.3.1.cmml" xref="S4.T2.17.17.17.2.1.m1.1.1.3.1">percent</csymbol><cn id="S4.T2.17.17.17.2.1.m1.1.1.3.2.cmml" type="float" xref="S4.T2.17.17.17.2.1.m1.1.1.3.2">97.6</cn></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.17.17.17.2.1.m1.1c">\downarrow 97.6\%</annotation><annotation encoding="application/x-llamapun" id="S4.T2.17.17.17.2.1.m1.1d">↓ 97.6 %</annotation></semantics></math></span></td>
<td class="ltx_td ltx_align_right" id="S4.T2.18.18.18.7" style="padding:-1.25pt 8.0pt;">93.10</td>
<td class="ltx_td ltx_align_left" id="S4.T2.18.18.18.8" style="padding:-1.25pt 8.0pt;"><span class="ltx_text ltx_font_sansserif" id="S4.T2.18.18.18.8.1" style="background-color:#FFCCCC;">over-unlearn</span></td>
<td class="ltx_td ltx_align_right" id="S4.T2.18.18.18.9" style="padding:-1.25pt 8.0pt;">7.76</td>
<td class="ltx_td ltx_align_left" id="S4.T2.18.18.18.3" style="padding:-1.25pt 8.0pt;"><span class="ltx_text" id="S4.T2.18.18.18.3.1"><math alttext="\downarrow 71.0\%" class="ltx_Math" display="inline" id="S4.T2.18.18.18.3.1.m1.1" style="background-color:#FFCCCC;"><semantics id="S4.T2.18.18.18.3.1.m1.1a"><mrow id="S4.T2.18.18.18.3.1.m1.1.1" xref="S4.T2.18.18.18.3.1.m1.1.1.cmml"><mi id="S4.T2.18.18.18.3.1.m1.1.1.2" xref="S4.T2.18.18.18.3.1.m1.1.1.2.cmml"></mi><mo id="S4.T2.18.18.18.3.1.m1.1.1.1" mathbackground="#FFCCCC" stretchy="false" xref="S4.T2.18.18.18.3.1.m1.1.1.1.cmml">↓</mo><mrow id="S4.T2.18.18.18.3.1.m1.1.1.3" xref="S4.T2.18.18.18.3.1.m1.1.1.3.cmml"><mn id="S4.T2.18.18.18.3.1.m1.1.1.3.2" mathbackground="#FFCCCC" xref="S4.T2.18.18.18.3.1.m1.1.1.3.2.cmml">71.0</mn><mo id="S4.T2.18.18.18.3.1.m1.1.1.3.1" mathbackground="#FFCCCC" xref="S4.T2.18.18.18.3.1.m1.1.1.3.1.cmml">%</mo></mrow></mrow><annotation-xml encoding="MathML-Content" id="S4.T2.18.18.18.3.1.m1.1b"><apply id="S4.T2.18.18.18.3.1.m1.1.1.cmml" xref="S4.T2.18.18.18.3.1.m1.1.1"><ci id="S4.T2.18.18.18.3.1.m1.1.1.1.cmml" xref="S4.T2.18.18.18.3.1.m1.1.1.1">↓</ci><csymbol cd="latexml" id="S4.T2.18.18.18.3.1.m1.1.1.2.cmml" xref="S4.T2.18.18.18.3.1.m1.1.1.2">absent</csymbol><apply id="S4.T2.18.18.18.3.1.m1.1.1.3.cmml" xref="S4.T2.18.18.18.3.1.m1.1.1.3"><csymbol cd="latexml" id="S4.T2.18.18.18.3.1.m1.1.1.3.1.cmml" xref="S4.T2.18.18.18.3.1.m1.1.1.3.1">percent</csymbol><cn id="S4.T2.18.18.18.3.1.m1.1.1.3.2.cmml" type="float" xref="S4.T2.18.18.18.3.1.m1.1.1.3.2">71.0</cn></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.18.18.18.3.1.m1.1c">\downarrow 71.0\%</annotation><annotation encoding="application/x-llamapun" id="S4.T2.18.18.18.3.1.m1.1d">↓ 71.0 %</annotation></semantics></math></span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.21.21.21">
<td class="ltx_td ltx_align_left" id="S4.T2.21.21.21.4" style="padding:-1.25pt 8.0pt;"><span class="ltx_text ltx_font_sansserif" id="S4.T2.21.21.21.4.1">NPO</span></td>
<td class="ltx_td ltx_align_right" id="S4.T2.21.21.21.5" style="padding:-1.25pt 8.0pt;">20.98</td>
<td class="ltx_td ltx_align_left" id="S4.T2.19.19.19.1" style="padding:-1.25pt 8.0pt;"><span class="ltx_text" id="S4.T2.19.19.19.1.1"><math alttext="\downarrow 0.8\%" class="ltx_Math" display="inline" id="S4.T2.19.19.19.1.1.m1.1" style="background-color:#CCFFCC;"><semantics id="S4.T2.19.19.19.1.1.m1.1a"><mrow id="S4.T2.19.19.19.1.1.m1.1.1" xref="S4.T2.19.19.19.1.1.m1.1.1.cmml"><mi id="S4.T2.19.19.19.1.1.m1.1.1.2" xref="S4.T2.19.19.19.1.1.m1.1.1.2.cmml"></mi><mo id="S4.T2.19.19.19.1.1.m1.1.1.1" mathbackground="#CCFFCC" stretchy="false" xref="S4.T2.19.19.19.1.1.m1.1.1.1.cmml">↓</mo><mrow id="S4.T2.19.19.19.1.1.m1.1.1.3" xref="S4.T2.19.19.19.1.1.m1.1.1.3.cmml"><mn id="S4.T2.19.19.19.1.1.m1.1.1.3.2" mathbackground="#CCFFCC" xref="S4.T2.19.19.19.1.1.m1.1.1.3.2.cmml">0.8</mn><mo id="S4.T2.19.19.19.1.1.m1.1.1.3.1" mathbackground="#CCFFCC" xref="S4.T2.19.19.19.1.1.m1.1.1.3.1.cmml">%</mo></mrow></mrow><annotation-xml encoding="MathML-Content" id="S4.T2.19.19.19.1.1.m1.1b"><apply id="S4.T2.19.19.19.1.1.m1.1.1.cmml" xref="S4.T2.19.19.19.1.1.m1.1.1"><ci id="S4.T2.19.19.19.1.1.m1.1.1.1.cmml" xref="S4.T2.19.19.19.1.1.m1.1.1.1">↓</ci><csymbol cd="latexml" id="S4.T2.19.19.19.1.1.m1.1.1.2.cmml" xref="S4.T2.19.19.19.1.1.m1.1.1.2">absent</csymbol><apply id="S4.T2.19.19.19.1.1.m1.1.1.3.cmml" xref="S4.T2.19.19.19.1.1.m1.1.1.3"><csymbol cd="latexml" id="S4.T2.19.19.19.1.1.m1.1.1.3.1.cmml" xref="S4.T2.19.19.19.1.1.m1.1.1.3.1">percent</csymbol><cn id="S4.T2.19.19.19.1.1.m1.1.1.3.2.cmml" type="float" xref="S4.T2.19.19.19.1.1.m1.1.1.3.2">0.8</cn></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.19.19.19.1.1.m1.1c">\downarrow 0.8\%</annotation><annotation encoding="application/x-llamapun" id="S4.T2.19.19.19.1.1.m1.1d">↓ 0.8 %</annotation></semantics></math></span></td>
<td class="ltx_td ltx_align_right" id="S4.T2.21.21.21.6" style="padding:-1.25pt 8.0pt;">25.14</td>
<td class="ltx_td ltx_align_left" id="S4.T2.20.20.20.2" style="padding:-1.25pt 8.0pt;"><span class="ltx_text" id="S4.T2.20.20.20.2.1"><math alttext="\downarrow 14.8\%" class="ltx_Math" display="inline" id="S4.T2.20.20.20.2.1.m1.1" style="background-color:#CCFFCC;"><semantics id="S4.T2.20.20.20.2.1.m1.1a"><mrow id="S4.T2.20.20.20.2.1.m1.1.1" xref="S4.T2.20.20.20.2.1.m1.1.1.cmml"><mi id="S4.T2.20.20.20.2.1.m1.1.1.2" xref="S4.T2.20.20.20.2.1.m1.1.1.2.cmml"></mi><mo id="S4.T2.20.20.20.2.1.m1.1.1.1" mathbackground="#CCFFCC" stretchy="false" xref="S4.T2.20.20.20.2.1.m1.1.1.1.cmml">↓</mo><mrow id="S4.T2.20.20.20.2.1.m1.1.1.3" xref="S4.T2.20.20.20.2.1.m1.1.1.3.cmml"><mn id="S4.T2.20.20.20.2.1.m1.1.1.3.2" mathbackground="#CCFFCC" xref="S4.T2.20.20.20.2.1.m1.1.1.3.2.cmml">14.8</mn><mo id="S4.T2.20.20.20.2.1.m1.1.1.3.1" mathbackground="#CCFFCC" xref="S4.T2.20.20.20.2.1.m1.1.1.3.1.cmml">%</mo></mrow></mrow><annotation-xml encoding="MathML-Content" id="S4.T2.20.20.20.2.1.m1.1b"><apply id="S4.T2.20.20.20.2.1.m1.1.1.cmml" xref="S4.T2.20.20.20.2.1.m1.1.1"><ci id="S4.T2.20.20.20.2.1.m1.1.1.1.cmml" xref="S4.T2.20.20.20.2.1.m1.1.1.1">↓</ci><csymbol cd="latexml" id="S4.T2.20.20.20.2.1.m1.1.1.2.cmml" xref="S4.T2.20.20.20.2.1.m1.1.1.2">absent</csymbol><apply id="S4.T2.20.20.20.2.1.m1.1.1.3.cmml" xref="S4.T2.20.20.20.2.1.m1.1.1.3"><csymbol cd="latexml" id="S4.T2.20.20.20.2.1.m1.1.1.3.1.cmml" xref="S4.T2.20.20.20.2.1.m1.1.1.3.1">percent</csymbol><cn id="S4.T2.20.20.20.2.1.m1.1.1.3.2.cmml" type="float" xref="S4.T2.20.20.20.2.1.m1.1.1.3.2">14.8</cn></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.20.20.20.2.1.m1.1c">\downarrow 14.8\%</annotation><annotation encoding="application/x-llamapun" id="S4.T2.20.20.20.2.1.m1.1d">↓ 14.8 %</annotation></semantics></math></span></td>
<td class="ltx_td ltx_align_right" id="S4.T2.21.21.21.7" style="padding:-1.25pt 8.0pt;">-53.42</td>
<td class="ltx_td ltx_align_left" id="S4.T2.21.21.21.8" style="padding:-1.25pt 8.0pt;"><span class="ltx_text ltx_font_sansserif" id="S4.T2.21.21.21.8.1" style="background-color:#FFCCCC;">under-unlearn</span></td>
<td class="ltx_td ltx_align_right" id="S4.T2.21.21.21.9" style="padding:-1.25pt 8.0pt;">29.02</td>
<td class="ltx_td ltx_align_left" id="S4.T2.21.21.21.3" style="padding:-1.25pt 8.0pt;"><span class="ltx_text" id="S4.T2.21.21.21.3.1"><math alttext="\uparrow 8.4\%" class="ltx_Math" display="inline" id="S4.T2.21.21.21.3.1.m1.1" style="background-color:#CCFFCC;"><semantics id="S4.T2.21.21.21.3.1.m1.1a"><mrow id="S4.T2.21.21.21.3.1.m1.1.1" xref="S4.T2.21.21.21.3.1.m1.1.1.cmml"><mi id="S4.T2.21.21.21.3.1.m1.1.1.2" xref="S4.T2.21.21.21.3.1.m1.1.1.2.cmml"></mi><mo id="S4.T2.21.21.21.3.1.m1.1.1.1" mathbackground="#CCFFCC" stretchy="false" xref="S4.T2.21.21.21.3.1.m1.1.1.1.cmml">↑</mo><mrow id="S4.T2.21.21.21.3.1.m1.1.1.3" xref="S4.T2.21.21.21.3.1.m1.1.1.3.cmml"><mn id="S4.T2.21.21.21.3.1.m1.1.1.3.2" mathbackground="#CCFFCC" xref="S4.T2.21.21.21.3.1.m1.1.1.3.2.cmml">8.4</mn><mo id="S4.T2.21.21.21.3.1.m1.1.1.3.1" mathbackground="#CCFFCC" xref="S4.T2.21.21.21.3.1.m1.1.1.3.1.cmml">%</mo></mrow></mrow><annotation-xml encoding="MathML-Content" id="S4.T2.21.21.21.3.1.m1.1b"><apply id="S4.T2.21.21.21.3.1.m1.1.1.cmml" xref="S4.T2.21.21.21.3.1.m1.1.1"><ci id="S4.T2.21.21.21.3.1.m1.1.1.1.cmml" xref="S4.T2.21.21.21.3.1.m1.1.1.1">↑</ci><csymbol cd="latexml" id="S4.T2.21.21.21.3.1.m1.1.1.2.cmml" xref="S4.T2.21.21.21.3.1.m1.1.1.2">absent</csymbol><apply id="S4.T2.21.21.21.3.1.m1.1.1.3.cmml" xref="S4.T2.21.21.21.3.1.m1.1.1.3"><csymbol cd="latexml" id="S4.T2.21.21.21.3.1.m1.1.1.3.1.cmml" xref="S4.T2.21.21.21.3.1.m1.1.1.3.1">percent</csymbol><cn id="S4.T2.21.21.21.3.1.m1.1.1.3.2.cmml" type="float" xref="S4.T2.21.21.21.3.1.m1.1.1.3.2">8.4</cn></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.21.21.21.3.1.m1.1c">\uparrow 8.4\%</annotation><annotation encoding="application/x-llamapun" id="S4.T2.21.21.21.3.1.m1.1d">↑ 8.4 %</annotation></semantics></math></span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.24.24.24">
<td class="ltx_td ltx_align_left" id="S4.T2.24.24.24.4" style="padding:-1.25pt 8.0pt;"><span class="ltx_text ltx_font_sansserif" id="S4.T2.24.24.24.4.1">SimNPO</span></td>
<td class="ltx_td ltx_align_right" id="S4.T2.24.24.24.5" style="padding:-1.25pt 8.0pt;">21.14</td>
<td class="ltx_td ltx_align_left" id="S4.T2.22.22.22.1" style="padding:-1.25pt 8.0pt;"><span class="ltx_text" id="S4.T2.22.22.22.1.1"><math alttext="\downarrow 0.0\%" class="ltx_Math" display="inline" id="S4.T2.22.22.22.1.1.m1.1" style="background-color:#CCFFCC;"><semantics id="S4.T2.22.22.22.1.1.m1.1a"><mrow id="S4.T2.22.22.22.1.1.m1.1.1" xref="S4.T2.22.22.22.1.1.m1.1.1.cmml"><mi id="S4.T2.22.22.22.1.1.m1.1.1.2" xref="S4.T2.22.22.22.1.1.m1.1.1.2.cmml"></mi><mo id="S4.T2.22.22.22.1.1.m1.1.1.1" mathbackground="#CCFFCC" stretchy="false" xref="S4.T2.22.22.22.1.1.m1.1.1.1.cmml">↓</mo><mrow id="S4.T2.22.22.22.1.1.m1.1.1.3" xref="S4.T2.22.22.22.1.1.m1.1.1.3.cmml"><mn id="S4.T2.22.22.22.1.1.m1.1.1.3.2" mathbackground="#CCFFCC" xref="S4.T2.22.22.22.1.1.m1.1.1.3.2.cmml">0.0</mn><mo id="S4.T2.22.22.22.1.1.m1.1.1.3.1" mathbackground="#CCFFCC" xref="S4.T2.22.22.22.1.1.m1.1.1.3.1.cmml">%</mo></mrow></mrow><annotation-xml encoding="MathML-Content" id="S4.T2.22.22.22.1.1.m1.1b"><apply id="S4.T2.22.22.22.1.1.m1.1.1.cmml" xref="S4.T2.22.22.22.1.1.m1.1.1"><ci id="S4.T2.22.22.22.1.1.m1.1.1.1.cmml" xref="S4.T2.22.22.22.1.1.m1.1.1.1">↓</ci><csymbol cd="latexml" id="S4.T2.22.22.22.1.1.m1.1.1.2.cmml" xref="S4.T2.22.22.22.1.1.m1.1.1.2">absent</csymbol><apply id="S4.T2.22.22.22.1.1.m1.1.1.3.cmml" xref="S4.T2.22.22.22.1.1.m1.1.1.3"><csymbol cd="latexml" id="S4.T2.22.22.22.1.1.m1.1.1.3.1.cmml" xref="S4.T2.22.22.22.1.1.m1.1.1.3.1">percent</csymbol><cn id="S4.T2.22.22.22.1.1.m1.1.1.3.2.cmml" type="float" xref="S4.T2.22.22.22.1.1.m1.1.1.3.2">0.0</cn></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.22.22.22.1.1.m1.1c">\downarrow 0.0\%</annotation><annotation encoding="application/x-llamapun" id="S4.T2.22.22.22.1.1.m1.1d">↓ 0.0 %</annotation></semantics></math></span></td>
<td class="ltx_td ltx_align_right" id="S4.T2.24.24.24.6" style="padding:-1.25pt 8.0pt;">27.70</td>
<td class="ltx_td ltx_align_left" id="S4.T2.23.23.23.2" style="padding:-1.25pt 8.0pt;"><span class="ltx_text" id="S4.T2.23.23.23.2.1"><math alttext="\downarrow 6.1\%" class="ltx_Math" display="inline" id="S4.T2.23.23.23.2.1.m1.1" style="background-color:#CCFFCC;"><semantics id="S4.T2.23.23.23.2.1.m1.1a"><mrow id="S4.T2.23.23.23.2.1.m1.1.1" xref="S4.T2.23.23.23.2.1.m1.1.1.cmml"><mi id="S4.T2.23.23.23.2.1.m1.1.1.2" xref="S4.T2.23.23.23.2.1.m1.1.1.2.cmml"></mi><mo id="S4.T2.23.23.23.2.1.m1.1.1.1" mathbackground="#CCFFCC" stretchy="false" xref="S4.T2.23.23.23.2.1.m1.1.1.1.cmml">↓</mo><mrow id="S4.T2.23.23.23.2.1.m1.1.1.3" xref="S4.T2.23.23.23.2.1.m1.1.1.3.cmml"><mn id="S4.T2.23.23.23.2.1.m1.1.1.3.2" mathbackground="#CCFFCC" xref="S4.T2.23.23.23.2.1.m1.1.1.3.2.cmml">6.1</mn><mo id="S4.T2.23.23.23.2.1.m1.1.1.3.1" mathbackground="#CCFFCC" xref="S4.T2.23.23.23.2.1.m1.1.1.3.1.cmml">%</mo></mrow></mrow><annotation-xml encoding="MathML-Content" id="S4.T2.23.23.23.2.1.m1.1b"><apply id="S4.T2.23.23.23.2.1.m1.1.1.cmml" xref="S4.T2.23.23.23.2.1.m1.1.1"><ci id="S4.T2.23.23.23.2.1.m1.1.1.1.cmml" xref="S4.T2.23.23.23.2.1.m1.1.1.1">↓</ci><csymbol cd="latexml" id="S4.T2.23.23.23.2.1.m1.1.1.2.cmml" xref="S4.T2.23.23.23.2.1.m1.1.1.2">absent</csymbol><apply id="S4.T2.23.23.23.2.1.m1.1.1.3.cmml" xref="S4.T2.23.23.23.2.1.m1.1.1.3"><csymbol cd="latexml" id="S4.T2.23.23.23.2.1.m1.1.1.3.1.cmml" xref="S4.T2.23.23.23.2.1.m1.1.1.3.1">percent</csymbol><cn id="S4.T2.23.23.23.2.1.m1.1.1.3.2.cmml" type="float" xref="S4.T2.23.23.23.2.1.m1.1.1.3.2">6.1</cn></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.23.23.23.2.1.m1.1c">\downarrow 6.1\%</annotation><annotation encoding="application/x-llamapun" id="S4.T2.23.23.23.2.1.m1.1d">↓ 6.1 %</annotation></semantics></math></span></td>
<td class="ltx_td ltx_align_right" id="S4.T2.24.24.24.7" style="padding:-1.25pt 8.0pt;">-89.84</td>
<td class="ltx_td ltx_align_left" id="S4.T2.24.24.24.8" style="padding:-1.25pt 8.0pt;"><span class="ltx_text ltx_font_sansserif" id="S4.T2.24.24.24.8.1" style="background-color:#FFCCCC;">under-unlearn</span></td>
<td class="ltx_td ltx_align_right" id="S4.T2.24.24.24.9" style="padding:-1.25pt 8.0pt;">30.59</td>
<td class="ltx_td ltx_align_left" id="S4.T2.24.24.24.3" style="padding:-1.25pt 8.0pt;"><span class="ltx_text" id="S4.T2.24.24.24.3.1"><math alttext="\uparrow 14.2\%" class="ltx_Math" display="inline" id="S4.T2.24.24.24.3.1.m1.1" style="background-color:#CCFFCC;"><semantics id="S4.T2.24.24.24.3.1.m1.1a"><mrow id="S4.T2.24.24.24.3.1.m1.1.1" xref="S4.T2.24.24.24.3.1.m1.1.1.cmml"><mi id="S4.T2.24.24.24.3.1.m1.1.1.2" xref="S4.T2.24.24.24.3.1.m1.1.1.2.cmml"></mi><mo id="S4.T2.24.24.24.3.1.m1.1.1.1" mathbackground="#CCFFCC" stretchy="false" xref="S4.T2.24.24.24.3.1.m1.1.1.1.cmml">↑</mo><mrow id="S4.T2.24.24.24.3.1.m1.1.1.3" xref="S4.T2.24.24.24.3.1.m1.1.1.3.cmml"><mn id="S4.T2.24.24.24.3.1.m1.1.1.3.2" mathbackground="#CCFFCC" xref="S4.T2.24.24.24.3.1.m1.1.1.3.2.cmml">14.2</mn><mo id="S4.T2.24.24.24.3.1.m1.1.1.3.1" mathbackground="#CCFFCC" xref="S4.T2.24.24.24.3.1.m1.1.1.3.1.cmml">%</mo></mrow></mrow><annotation-xml encoding="MathML-Content" id="S4.T2.24.24.24.3.1.m1.1b"><apply id="S4.T2.24.24.24.3.1.m1.1.1.cmml" xref="S4.T2.24.24.24.3.1.m1.1.1"><ci id="S4.T2.24.24.24.3.1.m1.1.1.1.cmml" xref="S4.T2.24.24.24.3.1.m1.1.1.1">↑</ci><csymbol cd="latexml" id="S4.T2.24.24.24.3.1.m1.1.1.2.cmml" xref="S4.T2.24.24.24.3.1.m1.1.1.2">absent</csymbol><apply id="S4.T2.24.24.24.3.1.m1.1.1.3.cmml" xref="S4.T2.24.24.24.3.1.m1.1.1.3"><csymbol cd="latexml" id="S4.T2.24.24.24.3.1.m1.1.1.3.1.cmml" xref="S4.T2.24.24.24.3.1.m1.1.1.3.1">percent</csymbol><cn id="S4.T2.24.24.24.3.1.m1.1.1.3.2.cmml" type="float" xref="S4.T2.24.24.24.3.1.m1.1.1.3.2">14.2</cn></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.24.24.24.3.1.m1.1c">\uparrow 14.2\%</annotation><annotation encoding="application/x-llamapun" id="S4.T2.24.24.24.3.1.m1.1d">↑ 14.2 %</annotation></semantics></math></span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.27.27.27">
<td class="ltx_td ltx_align_left" id="S4.T2.27.27.27.4" style="padding:-1.25pt 8.0pt;"><span class="ltx_text ltx_font_sansserif" id="S4.T2.27.27.27.4.1">RMU</span></td>
<td class="ltx_td ltx_align_right" id="S4.T2.27.27.27.5" style="padding:-1.25pt 8.0pt;">9.60</td>
<td class="ltx_td ltx_align_left" id="S4.T2.25.25.25.1" style="padding:-1.25pt 8.0pt;"><span class="ltx_text" id="S4.T2.25.25.25.1.1"><math alttext="\downarrow 54.6\%" class="ltx_Math" display="inline" id="S4.T2.25.25.25.1.1.m1.1" style="background-color:#CCFFCC;"><semantics id="S4.T2.25.25.25.1.1.m1.1a"><mrow id="S4.T2.25.25.25.1.1.m1.1.1" xref="S4.T2.25.25.25.1.1.m1.1.1.cmml"><mi id="S4.T2.25.25.25.1.1.m1.1.1.2" xref="S4.T2.25.25.25.1.1.m1.1.1.2.cmml"></mi><mo id="S4.T2.25.25.25.1.1.m1.1.1.1" mathbackground="#CCFFCC" stretchy="false" xref="S4.T2.25.25.25.1.1.m1.1.1.1.cmml">↓</mo><mrow id="S4.T2.25.25.25.1.1.m1.1.1.3" xref="S4.T2.25.25.25.1.1.m1.1.1.3.cmml"><mn id="S4.T2.25.25.25.1.1.m1.1.1.3.2" mathbackground="#CCFFCC" xref="S4.T2.25.25.25.1.1.m1.1.1.3.2.cmml">54.6</mn><mo id="S4.T2.25.25.25.1.1.m1.1.1.3.1" mathbackground="#CCFFCC" xref="S4.T2.25.25.25.1.1.m1.1.1.3.1.cmml">%</mo></mrow></mrow><annotation-xml encoding="MathML-Content" id="S4.T2.25.25.25.1.1.m1.1b"><apply id="S4.T2.25.25.25.1.1.m1.1.1.cmml" xref="S4.T2.25.25.25.1.1.m1.1.1"><ci id="S4.T2.25.25.25.1.1.m1.1.1.1.cmml" xref="S4.T2.25.25.25.1.1.m1.1.1.1">↓</ci><csymbol cd="latexml" id="S4.T2.25.25.25.1.1.m1.1.1.2.cmml" xref="S4.T2.25.25.25.1.1.m1.1.1.2">absent</csymbol><apply id="S4.T2.25.25.25.1.1.m1.1.1.3.cmml" xref="S4.T2.25.25.25.1.1.m1.1.1.3"><csymbol cd="latexml" id="S4.T2.25.25.25.1.1.m1.1.1.3.1.cmml" xref="S4.T2.25.25.25.1.1.m1.1.1.3.1">percent</csymbol><cn id="S4.T2.25.25.25.1.1.m1.1.1.3.2.cmml" type="float" xref="S4.T2.25.25.25.1.1.m1.1.1.3.2">54.6</cn></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.25.25.25.1.1.m1.1c">\downarrow 54.6\%</annotation><annotation encoding="application/x-llamapun" id="S4.T2.25.25.25.1.1.m1.1d">↓ 54.6 %</annotation></semantics></math></span></td>
<td class="ltx_td ltx_align_right" id="S4.T2.27.27.27.6" style="padding:-1.25pt 8.0pt;">26.63</td>
<td class="ltx_td ltx_align_left" id="S4.T2.26.26.26.2" style="padding:-1.25pt 8.0pt;"><span class="ltx_text" id="S4.T2.26.26.26.2.1"><math alttext="\downarrow 9.8\%" class="ltx_Math" display="inline" id="S4.T2.26.26.26.2.1.m1.1" style="background-color:#CCFFCC;"><semantics id="S4.T2.26.26.26.2.1.m1.1a"><mrow id="S4.T2.26.26.26.2.1.m1.1.1" xref="S4.T2.26.26.26.2.1.m1.1.1.cmml"><mi id="S4.T2.26.26.26.2.1.m1.1.1.2" xref="S4.T2.26.26.26.2.1.m1.1.1.2.cmml"></mi><mo id="S4.T2.26.26.26.2.1.m1.1.1.1" mathbackground="#CCFFCC" stretchy="false" xref="S4.T2.26.26.26.2.1.m1.1.1.1.cmml">↓</mo><mrow id="S4.T2.26.26.26.2.1.m1.1.1.3" xref="S4.T2.26.26.26.2.1.m1.1.1.3.cmml"><mn id="S4.T2.26.26.26.2.1.m1.1.1.3.2" mathbackground="#CCFFCC" xref="S4.T2.26.26.26.2.1.m1.1.1.3.2.cmml">9.8</mn><mo id="S4.T2.26.26.26.2.1.m1.1.1.3.1" mathbackground="#CCFFCC" xref="S4.T2.26.26.26.2.1.m1.1.1.3.1.cmml">%</mo></mrow></mrow><annotation-xml encoding="MathML-Content" id="S4.T2.26.26.26.2.1.m1.1b"><apply id="S4.T2.26.26.26.2.1.m1.1.1.cmml" xref="S4.T2.26.26.26.2.1.m1.1.1"><ci id="S4.T2.26.26.26.2.1.m1.1.1.1.cmml" xref="S4.T2.26.26.26.2.1.m1.1.1.1">↓</ci><csymbol cd="latexml" id="S4.T2.26.26.26.2.1.m1.1.1.2.cmml" xref="S4.T2.26.26.26.2.1.m1.1.1.2">absent</csymbol><apply id="S4.T2.26.26.26.2.1.m1.1.1.3.cmml" xref="S4.T2.26.26.26.2.1.m1.1.1.3"><csymbol cd="latexml" id="S4.T2.26.26.26.2.1.m1.1.1.3.1.cmml" xref="S4.T2.26.26.26.2.1.m1.1.1.3.1">percent</csymbol><cn id="S4.T2.26.26.26.2.1.m1.1.1.3.2.cmml" type="float" xref="S4.T2.26.26.26.2.1.m1.1.1.3.2">9.8</cn></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.26.26.26.2.1.m1.1c">\downarrow 9.8\%</annotation><annotation encoding="application/x-llamapun" id="S4.T2.26.26.26.2.1.m1.1d">↓ 9.8 %</annotation></semantics></math></span></td>
<td class="ltx_td ltx_align_right" id="S4.T2.27.27.27.7" style="padding:-1.25pt 8.0pt;">75.02</td>
<td class="ltx_td ltx_align_left" id="S4.T2.27.27.27.8" style="padding:-1.25pt 8.0pt;"><span class="ltx_text ltx_font_sansserif" id="S4.T2.27.27.27.8.1" style="background-color:#FFCCCC;">over-unlearn</span></td>
<td class="ltx_td ltx_align_right" id="S4.T2.27.27.27.9" style="padding:-1.25pt 8.0pt;">26.41</td>
<td class="ltx_td ltx_align_left" id="S4.T2.27.27.27.3" style="padding:-1.25pt 8.0pt;"><span class="ltx_text" id="S4.T2.27.27.27.3.1"><math alttext="\downarrow 1.4\%" class="ltx_Math" display="inline" id="S4.T2.27.27.27.3.1.m1.1" style="background-color:#FFCCCC;"><semantics id="S4.T2.27.27.27.3.1.m1.1a"><mrow id="S4.T2.27.27.27.3.1.m1.1.1" xref="S4.T2.27.27.27.3.1.m1.1.1.cmml"><mi id="S4.T2.27.27.27.3.1.m1.1.1.2" xref="S4.T2.27.27.27.3.1.m1.1.1.2.cmml"></mi><mo id="S4.T2.27.27.27.3.1.m1.1.1.1" mathbackground="#FFCCCC" stretchy="false" xref="S4.T2.27.27.27.3.1.m1.1.1.1.cmml">↓</mo><mrow id="S4.T2.27.27.27.3.1.m1.1.1.3" xref="S4.T2.27.27.27.3.1.m1.1.1.3.cmml"><mn id="S4.T2.27.27.27.3.1.m1.1.1.3.2" mathbackground="#FFCCCC" xref="S4.T2.27.27.27.3.1.m1.1.1.3.2.cmml">1.4</mn><mo id="S4.T2.27.27.27.3.1.m1.1.1.3.1" mathbackground="#FFCCCC" xref="S4.T2.27.27.27.3.1.m1.1.1.3.1.cmml">%</mo></mrow></mrow><annotation-xml encoding="MathML-Content" id="S4.T2.27.27.27.3.1.m1.1b"><apply id="S4.T2.27.27.27.3.1.m1.1.1.cmml" xref="S4.T2.27.27.27.3.1.m1.1.1"><ci id="S4.T2.27.27.27.3.1.m1.1.1.1.cmml" xref="S4.T2.27.27.27.3.1.m1.1.1.1">↓</ci><csymbol cd="latexml" id="S4.T2.27.27.27.3.1.m1.1.1.2.cmml" xref="S4.T2.27.27.27.3.1.m1.1.1.2">absent</csymbol><apply id="S4.T2.27.27.27.3.1.m1.1.1.3.cmml" xref="S4.T2.27.27.27.3.1.m1.1.1.3"><csymbol cd="latexml" id="S4.T2.27.27.27.3.1.m1.1.1.3.1.cmml" xref="S4.T2.27.27.27.3.1.m1.1.1.3.1">percent</csymbol><cn id="S4.T2.27.27.27.3.1.m1.1.1.3.2.cmml" type="float" xref="S4.T2.27.27.27.3.1.m1.1.1.3.2">1.4</cn></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.27.27.27.3.1.m1.1c">\downarrow 1.4\%</annotation><annotation encoding="application/x-llamapun" id="S4.T2.27.27.27.3.1.m1.1d">↓ 1.4 %</annotation></semantics></math></span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.30.30.30">
<td class="ltx_td ltx_align_left" id="S4.T2.30.30.30.4" style="padding:-1.25pt 8.0pt;"><span class="ltx_text ltx_font_sansserif ltx_font_bold" id="S4.T2.30.30.30.4.1">DSG (Ours)</span></td>
<td class="ltx_td ltx_align_right" id="S4.T2.30.30.30.5" style="padding:-1.25pt 8.0pt;">11.80</td>
<td class="ltx_td ltx_align_left" id="S4.T2.28.28.28.1" style="padding:-1.25pt 8.0pt;"><span class="ltx_text" id="S4.T2.28.28.28.1.1"><math alttext="\downarrow 44.2\%" class="ltx_Math" display="inline" id="S4.T2.28.28.28.1.1.m1.1" style="background-color:#CCFFCC;"><semantics id="S4.T2.28.28.28.1.1.m1.1a"><mrow id="S4.T2.28.28.28.1.1.m1.1.1" xref="S4.T2.28.28.28.1.1.m1.1.1.cmml"><mi id="S4.T2.28.28.28.1.1.m1.1.1.2" xref="S4.T2.28.28.28.1.1.m1.1.1.2.cmml"></mi><mo id="S4.T2.28.28.28.1.1.m1.1.1.1" mathbackground="#CCFFCC" stretchy="false" xref="S4.T2.28.28.28.1.1.m1.1.1.1.cmml">↓</mo><mrow id="S4.T2.28.28.28.1.1.m1.1.1.3" xref="S4.T2.28.28.28.1.1.m1.1.1.3.cmml"><mn id="S4.T2.28.28.28.1.1.m1.1.1.3.2" mathbackground="#CCFFCC" xref="S4.T2.28.28.28.1.1.m1.1.1.3.2.cmml">44.2</mn><mo id="S4.T2.28.28.28.1.1.m1.1.1.3.1" mathbackground="#CCFFCC" xref="S4.T2.28.28.28.1.1.m1.1.1.3.1.cmml">%</mo></mrow></mrow><annotation-xml encoding="MathML-Content" id="S4.T2.28.28.28.1.1.m1.1b"><apply id="S4.T2.28.28.28.1.1.m1.1.1.cmml" xref="S4.T2.28.28.28.1.1.m1.1.1"><ci id="S4.T2.28.28.28.1.1.m1.1.1.1.cmml" xref="S4.T2.28.28.28.1.1.m1.1.1.1">↓</ci><csymbol cd="latexml" id="S4.T2.28.28.28.1.1.m1.1.1.2.cmml" xref="S4.T2.28.28.28.1.1.m1.1.1.2">absent</csymbol><apply id="S4.T2.28.28.28.1.1.m1.1.1.3.cmml" xref="S4.T2.28.28.28.1.1.m1.1.1.3"><csymbol cd="latexml" id="S4.T2.28.28.28.1.1.m1.1.1.3.1.cmml" xref="S4.T2.28.28.28.1.1.m1.1.1.3.1">percent</csymbol><cn id="S4.T2.28.28.28.1.1.m1.1.1.3.2.cmml" type="float" xref="S4.T2.28.28.28.1.1.m1.1.1.3.2">44.2</cn></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.28.28.28.1.1.m1.1c">\downarrow 44.2\%</annotation><annotation encoding="application/x-llamapun" id="S4.T2.28.28.28.1.1.m1.1d">↓ 44.2 %</annotation></semantics></math></span></td>
<td class="ltx_td ltx_align_right" id="S4.T2.30.30.30.6" style="padding:-1.25pt 8.0pt;">0.44</td>
<td class="ltx_td ltx_align_left" id="S4.T2.29.29.29.2" style="padding:-1.25pt 8.0pt;"><span class="ltx_text" id="S4.T2.29.29.29.2.1"><math alttext="\downarrow 98.5\%" class="ltx_Math" display="inline" id="S4.T2.29.29.29.2.1.m1.1" style="background-color:#CCFFCC;"><semantics id="S4.T2.29.29.29.2.1.m1.1a"><mrow id="S4.T2.29.29.29.2.1.m1.1.1" xref="S4.T2.29.29.29.2.1.m1.1.1.cmml"><mi id="S4.T2.29.29.29.2.1.m1.1.1.2" xref="S4.T2.29.29.29.2.1.m1.1.1.2.cmml"></mi><mo id="S4.T2.29.29.29.2.1.m1.1.1.1" mathbackground="#CCFFCC" stretchy="false" xref="S4.T2.29.29.29.2.1.m1.1.1.1.cmml">↓</mo><mrow id="S4.T2.29.29.29.2.1.m1.1.1.3" xref="S4.T2.29.29.29.2.1.m1.1.1.3.cmml"><mn id="S4.T2.29.29.29.2.1.m1.1.1.3.2" mathbackground="#CCFFCC" xref="S4.T2.29.29.29.2.1.m1.1.1.3.2.cmml">98.5</mn><mo id="S4.T2.29.29.29.2.1.m1.1.1.3.1" mathbackground="#CCFFCC" xref="S4.T2.29.29.29.2.1.m1.1.1.3.1.cmml">%</mo></mrow></mrow><annotation-xml encoding="MathML-Content" id="S4.T2.29.29.29.2.1.m1.1b"><apply id="S4.T2.29.29.29.2.1.m1.1.1.cmml" xref="S4.T2.29.29.29.2.1.m1.1.1"><ci id="S4.T2.29.29.29.2.1.m1.1.1.1.cmml" xref="S4.T2.29.29.29.2.1.m1.1.1.1">↓</ci><csymbol cd="latexml" id="S4.T2.29.29.29.2.1.m1.1.1.2.cmml" xref="S4.T2.29.29.29.2.1.m1.1.1.2">absent</csymbol><apply id="S4.T2.29.29.29.2.1.m1.1.1.3.cmml" xref="S4.T2.29.29.29.2.1.m1.1.1.3"><csymbol cd="latexml" id="S4.T2.29.29.29.2.1.m1.1.1.3.1.cmml" xref="S4.T2.29.29.29.2.1.m1.1.1.3.1">percent</csymbol><cn id="S4.T2.29.29.29.2.1.m1.1.1.3.2.cmml" type="float" xref="S4.T2.29.29.29.2.1.m1.1.1.3.2">98.5</cn></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.29.29.29.2.1.m1.1c">\downarrow 98.5\%</annotation><annotation encoding="application/x-llamapun" id="S4.T2.29.29.29.2.1.m1.1d">↓ 98.5 %</annotation></semantics></math></span></td>
<td class="ltx_td ltx_align_right" id="S4.T2.30.30.30.7" style="padding:-1.25pt 8.0pt;">12.08</td>
<td class="ltx_td ltx_align_left" id="S4.T2.30.30.30.8" style="padding:-1.25pt 8.0pt;"><span class="ltx_text ltx_font_sansserif" id="S4.T2.30.30.30.8.1" style="background-color:#FFCCCC;">over-unlearn</span></td>
<td class="ltx_td ltx_align_right" id="S4.T2.30.30.30.9" style="padding:-1.25pt 8.0pt;">25.65</td>
<td class="ltx_td ltx_align_left" id="S4.T2.30.30.30.3" style="padding:-1.25pt 8.0pt;"><span class="ltx_text" id="S4.T2.30.30.30.3.1"><math alttext="\downarrow 4.2\%" class="ltx_Math" display="inline" id="S4.T2.30.30.30.3.1.m1.1" style="background-color:#FFCCCC;"><semantics id="S4.T2.30.30.30.3.1.m1.1a"><mrow id="S4.T2.30.30.30.3.1.m1.1.1" xref="S4.T2.30.30.30.3.1.m1.1.1.cmml"><mi id="S4.T2.30.30.30.3.1.m1.1.1.2" xref="S4.T2.30.30.30.3.1.m1.1.1.2.cmml"></mi><mo id="S4.T2.30.30.30.3.1.m1.1.1.1" mathbackground="#FFCCCC" stretchy="false" xref="S4.T2.30.30.30.3.1.m1.1.1.1.cmml">↓</mo><mrow id="S4.T2.30.30.30.3.1.m1.1.1.3" xref="S4.T2.30.30.30.3.1.m1.1.1.3.cmml"><mn id="S4.T2.30.30.30.3.1.m1.1.1.3.2" mathbackground="#FFCCCC" xref="S4.T2.30.30.30.3.1.m1.1.1.3.2.cmml">4.2</mn><mo id="S4.T2.30.30.30.3.1.m1.1.1.3.1" mathbackground="#FFCCCC" xref="S4.T2.30.30.30.3.1.m1.1.1.3.1.cmml">%</mo></mrow></mrow><annotation-xml encoding="MathML-Content" id="S4.T2.30.30.30.3.1.m1.1b"><apply id="S4.T2.30.30.30.3.1.m1.1.1.cmml" xref="S4.T2.30.30.30.3.1.m1.1.1"><ci id="S4.T2.30.30.30.3.1.m1.1.1.1.cmml" xref="S4.T2.30.30.30.3.1.m1.1.1.1">↓</ci><csymbol cd="latexml" id="S4.T2.30.30.30.3.1.m1.1.1.2.cmml" xref="S4.T2.30.30.30.3.1.m1.1.1.2">absent</csymbol><apply id="S4.T2.30.30.30.3.1.m1.1.1.3.cmml" xref="S4.T2.30.30.30.3.1.m1.1.1.3"><csymbol cd="latexml" id="S4.T2.30.30.30.3.1.m1.1.1.3.1.cmml" xref="S4.T2.30.30.30.3.1.m1.1.1.3.1">percent</csymbol><cn id="S4.T2.30.30.30.3.1.m1.1.1.3.2.cmml" type="float" xref="S4.T2.30.30.30.3.1.m1.1.1.3.2">4.2</cn></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.30.30.30.3.1.m1.1c">\downarrow 4.2\%</annotation><annotation encoding="application/x-llamapun" id="S4.T2.30.30.30.3.1.m1.1d">↓ 4.2 %</annotation></semantics></math></span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.53.53.56.3">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="9" id="S4.T2.53.53.56.3.1" style="background-color:#F2F2F2;padding:-1.25pt 8.0pt;"><span class="ltx_text ltx_font_bold ltx_font_smallcaps" id="S4.T2.53.53.56.3.1.1" style="background-color:#F2F2F2;">Books</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.35.35.35">
<td class="ltx_td ltx_align_left" id="S4.T2.31.31.31.1" style="padding:-1.25pt 8.0pt;">Target <math alttext="\mathcal{M}" class="ltx_Math" display="inline" id="S4.T2.31.31.31.1.m1.1"><semantics id="S4.T2.31.31.31.1.m1.1a"><mi class="ltx_font_mathcaligraphic" id="S4.T2.31.31.31.1.m1.1.1" xref="S4.T2.31.31.31.1.m1.1.1.cmml">ℳ</mi><annotation-xml encoding="MathML-Content" id="S4.T2.31.31.31.1.m1.1b"><ci id="S4.T2.31.31.31.1.m1.1.1.cmml" xref="S4.T2.31.31.31.1.m1.1.1">ℳ</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.31.31.31.1.m1.1c">\mathcal{M}</annotation><annotation encoding="application/x-llamapun" id="S4.T2.31.31.31.1.m1.1d">caligraphic_M</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_right" id="S4.T2.32.32.32.2" style="padding:-1.25pt 8.0pt;"><math alttext="15.80" class="ltx_Math" display="inline" id="S4.T2.32.32.32.2.m1.1"><semantics id="S4.T2.32.32.32.2.m1.1a"><mn id="S4.T2.32.32.32.2.m1.1.1" xref="S4.T2.32.32.32.2.m1.1.1.cmml">15.80</mn><annotation-xml encoding="MathML-Content" id="S4.T2.32.32.32.2.m1.1b"><cn id="S4.T2.32.32.32.2.m1.1.1.cmml" type="float" xref="S4.T2.32.32.32.2.m1.1.1">15.80</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.32.32.32.2.m1.1c">15.80</annotation><annotation encoding="application/x-llamapun" id="S4.T2.32.32.32.2.m1.1d">15.80</annotation></semantics></math></td>
<td class="ltx_td" id="S4.T2.35.35.35.6" style="padding:-1.25pt 8.0pt;"></td>
<td class="ltx_td ltx_align_right" id="S4.T2.33.33.33.3" style="padding:-1.25pt 8.0pt;"><math alttext="33.90" class="ltx_Math" display="inline" id="S4.T2.33.33.33.3.m1.1"><semantics id="S4.T2.33.33.33.3.m1.1a"><mn id="S4.T2.33.33.33.3.m1.1.1" xref="S4.T2.33.33.33.3.m1.1.1.cmml">33.90</mn><annotation-xml encoding="MathML-Content" id="S4.T2.33.33.33.3.m1.1b"><cn id="S4.T2.33.33.33.3.m1.1.1.cmml" type="float" xref="S4.T2.33.33.33.3.m1.1.1">33.90</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.33.33.33.3.m1.1c">33.90</annotation><annotation encoding="application/x-llamapun" id="S4.T2.33.33.33.3.m1.1d">33.90</annotation></semantics></math></td>
<td class="ltx_td" id="S4.T2.35.35.35.7" style="padding:-1.25pt 8.0pt;"></td>
<td class="ltx_td ltx_align_right" id="S4.T2.34.34.34.4" style="padding:-1.25pt 8.0pt;"><math alttext="-98.80" class="ltx_Math" display="inline" id="S4.T2.34.34.34.4.m1.1"><semantics id="S4.T2.34.34.34.4.m1.1a"><mrow id="S4.T2.34.34.34.4.m1.1.1" xref="S4.T2.34.34.34.4.m1.1.1.cmml"><mo id="S4.T2.34.34.34.4.m1.1.1a" xref="S4.T2.34.34.34.4.m1.1.1.cmml">−</mo><mn id="S4.T2.34.34.34.4.m1.1.1.2" xref="S4.T2.34.34.34.4.m1.1.1.2.cmml">98.80</mn></mrow><annotation-xml encoding="MathML-Content" id="S4.T2.34.34.34.4.m1.1b"><apply id="S4.T2.34.34.34.4.m1.1.1.cmml" xref="S4.T2.34.34.34.4.m1.1.1"><minus id="S4.T2.34.34.34.4.m1.1.1.1.cmml" xref="S4.T2.34.34.34.4.m1.1.1"></minus><cn id="S4.T2.34.34.34.4.m1.1.1.2.cmml" type="float" xref="S4.T2.34.34.34.4.m1.1.1.2">98.80</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.34.34.34.4.m1.1c">-98.80</annotation><annotation encoding="application/x-llamapun" id="S4.T2.34.34.34.4.m1.1d">- 98.80</annotation></semantics></math></td>
<td class="ltx_td" id="S4.T2.35.35.35.8" style="padding:-1.25pt 8.0pt;"></td>
<td class="ltx_td ltx_align_right" id="S4.T2.35.35.35.5" style="padding:-1.25pt 8.0pt;"><math alttext="35.28" class="ltx_Math" display="inline" id="S4.T2.35.35.35.5.m1.1"><semantics id="S4.T2.35.35.35.5.m1.1a"><mn id="S4.T2.35.35.35.5.m1.1.1" xref="S4.T2.35.35.35.5.m1.1.1.cmml">35.28</mn><annotation-xml encoding="MathML-Content" id="S4.T2.35.35.35.5.m1.1b"><cn id="S4.T2.35.35.35.5.m1.1.1.cmml" type="float" xref="S4.T2.35.35.35.5.m1.1.1">35.28</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.35.35.35.5.m1.1c">35.28</annotation><annotation encoding="application/x-llamapun" id="S4.T2.35.35.35.5.m1.1d">35.28</annotation></semantics></math></td>
<td class="ltx_td" id="S4.T2.35.35.35.9" style="padding:-1.25pt 8.0pt;"></td>
</tr>
<tr class="ltx_tr" id="S4.T2.38.38.38">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T2.38.38.38.4" style="padding:-1.25pt 8.0pt;"><span class="ltx_text ltx_font_sansserif" id="S4.T2.38.38.38.4.1">GA</span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T2.38.38.38.5" style="padding:-1.25pt 8.0pt;">2.61</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T2.36.36.36.1" style="padding:-1.25pt 8.0pt;"><span class="ltx_text" id="S4.T2.36.36.36.1.1"><math alttext="\downarrow 83.5\%" class="ltx_Math" display="inline" id="S4.T2.36.36.36.1.1.m1.1" style="background-color:#CCFFCC;"><semantics id="S4.T2.36.36.36.1.1.m1.1a"><mrow id="S4.T2.36.36.36.1.1.m1.1.1" xref="S4.T2.36.36.36.1.1.m1.1.1.cmml"><mi id="S4.T2.36.36.36.1.1.m1.1.1.2" xref="S4.T2.36.36.36.1.1.m1.1.1.2.cmml"></mi><mo id="S4.T2.36.36.36.1.1.m1.1.1.1" mathbackground="#CCFFCC" stretchy="false" xref="S4.T2.36.36.36.1.1.m1.1.1.1.cmml">↓</mo><mrow id="S4.T2.36.36.36.1.1.m1.1.1.3" xref="S4.T2.36.36.36.1.1.m1.1.1.3.cmml"><mn id="S4.T2.36.36.36.1.1.m1.1.1.3.2" mathbackground="#CCFFCC" xref="S4.T2.36.36.36.1.1.m1.1.1.3.2.cmml">83.5</mn><mo id="S4.T2.36.36.36.1.1.m1.1.1.3.1" mathbackground="#CCFFCC" xref="S4.T2.36.36.36.1.1.m1.1.1.3.1.cmml">%</mo></mrow></mrow><annotation-xml encoding="MathML-Content" id="S4.T2.36.36.36.1.1.m1.1b"><apply id="S4.T2.36.36.36.1.1.m1.1.1.cmml" xref="S4.T2.36.36.36.1.1.m1.1.1"><ci id="S4.T2.36.36.36.1.1.m1.1.1.1.cmml" xref="S4.T2.36.36.36.1.1.m1.1.1.1">↓</ci><csymbol cd="latexml" id="S4.T2.36.36.36.1.1.m1.1.1.2.cmml" xref="S4.T2.36.36.36.1.1.m1.1.1.2">absent</csymbol><apply id="S4.T2.36.36.36.1.1.m1.1.1.3.cmml" xref="S4.T2.36.36.36.1.1.m1.1.1.3"><csymbol cd="latexml" id="S4.T2.36.36.36.1.1.m1.1.1.3.1.cmml" xref="S4.T2.36.36.36.1.1.m1.1.1.3.1">percent</csymbol><cn id="S4.T2.36.36.36.1.1.m1.1.1.3.2.cmml" type="float" xref="S4.T2.36.36.36.1.1.m1.1.1.3.2">83.5</cn></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.36.36.36.1.1.m1.1c">\downarrow 83.5\%</annotation><annotation encoding="application/x-llamapun" id="S4.T2.36.36.36.1.1.m1.1d">↓ 83.5 %</annotation></semantics></math></span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T2.38.38.38.6" style="padding:-1.25pt 8.0pt;">0.17</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T2.37.37.37.2" style="padding:-1.25pt 8.0pt;"><span class="ltx_text" id="S4.T2.37.37.37.2.1"><math alttext="\downarrow 99.5\%" class="ltx_Math" display="inline" id="S4.T2.37.37.37.2.1.m1.1" style="background-color:#CCFFCC;"><semantics id="S4.T2.37.37.37.2.1.m1.1a"><mrow id="S4.T2.37.37.37.2.1.m1.1.1" xref="S4.T2.37.37.37.2.1.m1.1.1.cmml"><mi id="S4.T2.37.37.37.2.1.m1.1.1.2" xref="S4.T2.37.37.37.2.1.m1.1.1.2.cmml"></mi><mo id="S4.T2.37.37.37.2.1.m1.1.1.1" mathbackground="#CCFFCC" stretchy="false" xref="S4.T2.37.37.37.2.1.m1.1.1.1.cmml">↓</mo><mrow id="S4.T2.37.37.37.2.1.m1.1.1.3" xref="S4.T2.37.37.37.2.1.m1.1.1.3.cmml"><mn id="S4.T2.37.37.37.2.1.m1.1.1.3.2" mathbackground="#CCFFCC" xref="S4.T2.37.37.37.2.1.m1.1.1.3.2.cmml">99.5</mn><mo id="S4.T2.37.37.37.2.1.m1.1.1.3.1" mathbackground="#CCFFCC" xref="S4.T2.37.37.37.2.1.m1.1.1.3.1.cmml">%</mo></mrow></mrow><annotation-xml encoding="MathML-Content" id="S4.T2.37.37.37.2.1.m1.1b"><apply id="S4.T2.37.37.37.2.1.m1.1.1.cmml" xref="S4.T2.37.37.37.2.1.m1.1.1"><ci id="S4.T2.37.37.37.2.1.m1.1.1.1.cmml" xref="S4.T2.37.37.37.2.1.m1.1.1.1">↓</ci><csymbol cd="latexml" id="S4.T2.37.37.37.2.1.m1.1.1.2.cmml" xref="S4.T2.37.37.37.2.1.m1.1.1.2">absent</csymbol><apply id="S4.T2.37.37.37.2.1.m1.1.1.3.cmml" xref="S4.T2.37.37.37.2.1.m1.1.1.3"><csymbol cd="latexml" id="S4.T2.37.37.37.2.1.m1.1.1.3.1.cmml" xref="S4.T2.37.37.37.2.1.m1.1.1.3.1">percent</csymbol><cn id="S4.T2.37.37.37.2.1.m1.1.1.3.2.cmml" type="float" xref="S4.T2.37.37.37.2.1.m1.1.1.3.2">99.5</cn></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.37.37.37.2.1.m1.1c">\downarrow 99.5\%</annotation><annotation encoding="application/x-llamapun" id="S4.T2.37.37.37.2.1.m1.1d">↓ 99.5 %</annotation></semantics></math></span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T2.38.38.38.7" style="padding:-1.25pt 8.0pt;">-1.58</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T2.38.38.38.8" style="padding:-1.25pt 8.0pt;"><span class="ltx_text ltx_font_sansserif" id="S4.T2.38.38.38.8.1" style="background-color:#CCFFCC;">acceptable</span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T2.38.38.38.9" style="padding:-1.25pt 8.0pt;">0.57</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T2.38.38.38.3" style="padding:-1.25pt 8.0pt;"><span class="ltx_text" id="S4.T2.38.38.38.3.1"><math alttext="\downarrow 98.4\%" class="ltx_Math" display="inline" id="S4.T2.38.38.38.3.1.m1.1" style="background-color:#FFCCCC;"><semantics id="S4.T2.38.38.38.3.1.m1.1a"><mrow id="S4.T2.38.38.38.3.1.m1.1.1" xref="S4.T2.38.38.38.3.1.m1.1.1.cmml"><mi id="S4.T2.38.38.38.3.1.m1.1.1.2" xref="S4.T2.38.38.38.3.1.m1.1.1.2.cmml"></mi><mo id="S4.T2.38.38.38.3.1.m1.1.1.1" mathbackground="#FFCCCC" stretchy="false" xref="S4.T2.38.38.38.3.1.m1.1.1.1.cmml">↓</mo><mrow id="S4.T2.38.38.38.3.1.m1.1.1.3" xref="S4.T2.38.38.38.3.1.m1.1.1.3.cmml"><mn id="S4.T2.38.38.38.3.1.m1.1.1.3.2" mathbackground="#FFCCCC" xref="S4.T2.38.38.38.3.1.m1.1.1.3.2.cmml">98.4</mn><mo id="S4.T2.38.38.38.3.1.m1.1.1.3.1" mathbackground="#FFCCCC" xref="S4.T2.38.38.38.3.1.m1.1.1.3.1.cmml">%</mo></mrow></mrow><annotation-xml encoding="MathML-Content" id="S4.T2.38.38.38.3.1.m1.1b"><apply id="S4.T2.38.38.38.3.1.m1.1.1.cmml" xref="S4.T2.38.38.38.3.1.m1.1.1"><ci id="S4.T2.38.38.38.3.1.m1.1.1.1.cmml" xref="S4.T2.38.38.38.3.1.m1.1.1.1">↓</ci><csymbol cd="latexml" id="S4.T2.38.38.38.3.1.m1.1.1.2.cmml" xref="S4.T2.38.38.38.3.1.m1.1.1.2">absent</csymbol><apply id="S4.T2.38.38.38.3.1.m1.1.1.3.cmml" xref="S4.T2.38.38.38.3.1.m1.1.1.3"><csymbol cd="latexml" id="S4.T2.38.38.38.3.1.m1.1.1.3.1.cmml" xref="S4.T2.38.38.38.3.1.m1.1.1.3.1">percent</csymbol><cn id="S4.T2.38.38.38.3.1.m1.1.1.3.2.cmml" type="float" xref="S4.T2.38.38.38.3.1.m1.1.1.3.2">98.4</cn></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.38.38.38.3.1.m1.1c">\downarrow 98.4\%</annotation><annotation encoding="application/x-llamapun" id="S4.T2.38.38.38.3.1.m1.1d">↓ 98.4 %</annotation></semantics></math></span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.41.41.41">
<td class="ltx_td ltx_align_left" id="S4.T2.41.41.41.4" style="padding:-1.25pt 8.0pt;"><span class="ltx_text ltx_font_sansserif" id="S4.T2.41.41.41.4.1">GradDiff</span></td>
<td class="ltx_td ltx_align_right" id="S4.T2.41.41.41.5" style="padding:-1.25pt 8.0pt;">9.49</td>
<td class="ltx_td ltx_align_left" id="S4.T2.39.39.39.1" style="padding:-1.25pt 8.0pt;"><span class="ltx_text" id="S4.T2.39.39.39.1.1"><math alttext="\downarrow 39.9\%" class="ltx_Math" display="inline" id="S4.T2.39.39.39.1.1.m1.1" style="background-color:#CCFFCC;"><semantics id="S4.T2.39.39.39.1.1.m1.1a"><mrow id="S4.T2.39.39.39.1.1.m1.1.1" xref="S4.T2.39.39.39.1.1.m1.1.1.cmml"><mi id="S4.T2.39.39.39.1.1.m1.1.1.2" xref="S4.T2.39.39.39.1.1.m1.1.1.2.cmml"></mi><mo id="S4.T2.39.39.39.1.1.m1.1.1.1" mathbackground="#CCFFCC" stretchy="false" xref="S4.T2.39.39.39.1.1.m1.1.1.1.cmml">↓</mo><mrow id="S4.T2.39.39.39.1.1.m1.1.1.3" xref="S4.T2.39.39.39.1.1.m1.1.1.3.cmml"><mn id="S4.T2.39.39.39.1.1.m1.1.1.3.2" mathbackground="#CCFFCC" xref="S4.T2.39.39.39.1.1.m1.1.1.3.2.cmml">39.9</mn><mo id="S4.T2.39.39.39.1.1.m1.1.1.3.1" mathbackground="#CCFFCC" xref="S4.T2.39.39.39.1.1.m1.1.1.3.1.cmml">%</mo></mrow></mrow><annotation-xml encoding="MathML-Content" id="S4.T2.39.39.39.1.1.m1.1b"><apply id="S4.T2.39.39.39.1.1.m1.1.1.cmml" xref="S4.T2.39.39.39.1.1.m1.1.1"><ci id="S4.T2.39.39.39.1.1.m1.1.1.1.cmml" xref="S4.T2.39.39.39.1.1.m1.1.1.1">↓</ci><csymbol cd="latexml" id="S4.T2.39.39.39.1.1.m1.1.1.2.cmml" xref="S4.T2.39.39.39.1.1.m1.1.1.2">absent</csymbol><apply id="S4.T2.39.39.39.1.1.m1.1.1.3.cmml" xref="S4.T2.39.39.39.1.1.m1.1.1.3"><csymbol cd="latexml" id="S4.T2.39.39.39.1.1.m1.1.1.3.1.cmml" xref="S4.T2.39.39.39.1.1.m1.1.1.3.1">percent</csymbol><cn id="S4.T2.39.39.39.1.1.m1.1.1.3.2.cmml" type="float" xref="S4.T2.39.39.39.1.1.m1.1.1.3.2">39.9</cn></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.39.39.39.1.1.m1.1c">\downarrow 39.9\%</annotation><annotation encoding="application/x-llamapun" id="S4.T2.39.39.39.1.1.m1.1d">↓ 39.9 %</annotation></semantics></math></span></td>
<td class="ltx_td ltx_align_right" id="S4.T2.41.41.41.6" style="padding:-1.25pt 8.0pt;">21.57</td>
<td class="ltx_td ltx_align_left" id="S4.T2.40.40.40.2" style="padding:-1.25pt 8.0pt;"><span class="ltx_text" id="S4.T2.40.40.40.2.1"><math alttext="\downarrow 36.4\%" class="ltx_Math" display="inline" id="S4.T2.40.40.40.2.1.m1.1" style="background-color:#CCFFCC;"><semantics id="S4.T2.40.40.40.2.1.m1.1a"><mrow id="S4.T2.40.40.40.2.1.m1.1.1" xref="S4.T2.40.40.40.2.1.m1.1.1.cmml"><mi id="S4.T2.40.40.40.2.1.m1.1.1.2" xref="S4.T2.40.40.40.2.1.m1.1.1.2.cmml"></mi><mo id="S4.T2.40.40.40.2.1.m1.1.1.1" mathbackground="#CCFFCC" stretchy="false" xref="S4.T2.40.40.40.2.1.m1.1.1.1.cmml">↓</mo><mrow id="S4.T2.40.40.40.2.1.m1.1.1.3" xref="S4.T2.40.40.40.2.1.m1.1.1.3.cmml"><mn id="S4.T2.40.40.40.2.1.m1.1.1.3.2" mathbackground="#CCFFCC" xref="S4.T2.40.40.40.2.1.m1.1.1.3.2.cmml">36.4</mn><mo id="S4.T2.40.40.40.2.1.m1.1.1.3.1" mathbackground="#CCFFCC" xref="S4.T2.40.40.40.2.1.m1.1.1.3.1.cmml">%</mo></mrow></mrow><annotation-xml encoding="MathML-Content" id="S4.T2.40.40.40.2.1.m1.1b"><apply id="S4.T2.40.40.40.2.1.m1.1.1.cmml" xref="S4.T2.40.40.40.2.1.m1.1.1"><ci id="S4.T2.40.40.40.2.1.m1.1.1.1.cmml" xref="S4.T2.40.40.40.2.1.m1.1.1.1">↓</ci><csymbol cd="latexml" id="S4.T2.40.40.40.2.1.m1.1.1.2.cmml" xref="S4.T2.40.40.40.2.1.m1.1.1.2">absent</csymbol><apply id="S4.T2.40.40.40.2.1.m1.1.1.3.cmml" xref="S4.T2.40.40.40.2.1.m1.1.1.3"><csymbol cd="latexml" id="S4.T2.40.40.40.2.1.m1.1.1.3.1.cmml" xref="S4.T2.40.40.40.2.1.m1.1.1.3.1">percent</csymbol><cn id="S4.T2.40.40.40.2.1.m1.1.1.3.2.cmml" type="float" xref="S4.T2.40.40.40.2.1.m1.1.1.3.2">36.4</cn></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.40.40.40.2.1.m1.1c">\downarrow 36.4\%</annotation><annotation encoding="application/x-llamapun" id="S4.T2.40.40.40.2.1.m1.1d">↓ 36.4 %</annotation></semantics></math></span></td>
<td class="ltx_td ltx_align_right" id="S4.T2.41.41.41.7" style="padding:-1.25pt 8.0pt;">-10.30</td>
<td class="ltx_td ltx_align_left" id="S4.T2.41.41.41.8" style="padding:-1.25pt 8.0pt;"><span class="ltx_text ltx_font_sansserif" id="S4.T2.41.41.41.8.1" style="background-color:#FFCCCC;">under-unlearn</span></td>
<td class="ltx_td ltx_align_right" id="S4.T2.41.41.41.9" style="padding:-1.25pt 8.0pt;">23.66</td>
<td class="ltx_td ltx_align_left" id="S4.T2.41.41.41.3" style="padding:-1.25pt 8.0pt;"><span class="ltx_text" id="S4.T2.41.41.41.3.1"><math alttext="\downarrow 32.9\%" class="ltx_Math" display="inline" id="S4.T2.41.41.41.3.1.m1.1" style="background-color:#FFCCCC;"><semantics id="S4.T2.41.41.41.3.1.m1.1a"><mrow id="S4.T2.41.41.41.3.1.m1.1.1" xref="S4.T2.41.41.41.3.1.m1.1.1.cmml"><mi id="S4.T2.41.41.41.3.1.m1.1.1.2" xref="S4.T2.41.41.41.3.1.m1.1.1.2.cmml"></mi><mo id="S4.T2.41.41.41.3.1.m1.1.1.1" mathbackground="#FFCCCC" stretchy="false" xref="S4.T2.41.41.41.3.1.m1.1.1.1.cmml">↓</mo><mrow id="S4.T2.41.41.41.3.1.m1.1.1.3" xref="S4.T2.41.41.41.3.1.m1.1.1.3.cmml"><mn id="S4.T2.41.41.41.3.1.m1.1.1.3.2" mathbackground="#FFCCCC" xref="S4.T2.41.41.41.3.1.m1.1.1.3.2.cmml">32.9</mn><mo id="S4.T2.41.41.41.3.1.m1.1.1.3.1" mathbackground="#FFCCCC" xref="S4.T2.41.41.41.3.1.m1.1.1.3.1.cmml">%</mo></mrow></mrow><annotation-xml encoding="MathML-Content" id="S4.T2.41.41.41.3.1.m1.1b"><apply id="S4.T2.41.41.41.3.1.m1.1.1.cmml" xref="S4.T2.41.41.41.3.1.m1.1.1"><ci id="S4.T2.41.41.41.3.1.m1.1.1.1.cmml" xref="S4.T2.41.41.41.3.1.m1.1.1.1">↓</ci><csymbol cd="latexml" id="S4.T2.41.41.41.3.1.m1.1.1.2.cmml" xref="S4.T2.41.41.41.3.1.m1.1.1.2">absent</csymbol><apply id="S4.T2.41.41.41.3.1.m1.1.1.3.cmml" xref="S4.T2.41.41.41.3.1.m1.1.1.3"><csymbol cd="latexml" id="S4.T2.41.41.41.3.1.m1.1.1.3.1.cmml" xref="S4.T2.41.41.41.3.1.m1.1.1.3.1">percent</csymbol><cn id="S4.T2.41.41.41.3.1.m1.1.1.3.2.cmml" type="float" xref="S4.T2.41.41.41.3.1.m1.1.1.3.2">32.9</cn></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.41.41.41.3.1.m1.1c">\downarrow 32.9\%</annotation><annotation encoding="application/x-llamapun" id="S4.T2.41.41.41.3.1.m1.1d">↓ 32.9 %</annotation></semantics></math></span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.44.44.44">
<td class="ltx_td ltx_align_left" id="S4.T2.44.44.44.4" style="padding:-1.25pt 8.0pt;"><span class="ltx_text ltx_font_sansserif" id="S4.T2.44.44.44.4.1">NPO</span></td>
<td class="ltx_td ltx_align_right" id="S4.T2.44.44.44.5" style="padding:-1.25pt 8.0pt;">14.41</td>
<td class="ltx_td ltx_align_left" id="S4.T2.42.42.42.1" style="padding:-1.25pt 8.0pt;"><span class="ltx_text" id="S4.T2.42.42.42.1.1"><math alttext="\downarrow 8.8\%" class="ltx_Math" display="inline" id="S4.T2.42.42.42.1.1.m1.1" style="background-color:#CCFFCC;"><semantics id="S4.T2.42.42.42.1.1.m1.1a"><mrow id="S4.T2.42.42.42.1.1.m1.1.1" xref="S4.T2.42.42.42.1.1.m1.1.1.cmml"><mi id="S4.T2.42.42.42.1.1.m1.1.1.2" xref="S4.T2.42.42.42.1.1.m1.1.1.2.cmml"></mi><mo id="S4.T2.42.42.42.1.1.m1.1.1.1" mathbackground="#CCFFCC" stretchy="false" xref="S4.T2.42.42.42.1.1.m1.1.1.1.cmml">↓</mo><mrow id="S4.T2.42.42.42.1.1.m1.1.1.3" xref="S4.T2.42.42.42.1.1.m1.1.1.3.cmml"><mn id="S4.T2.42.42.42.1.1.m1.1.1.3.2" mathbackground="#CCFFCC" xref="S4.T2.42.42.42.1.1.m1.1.1.3.2.cmml">8.8</mn><mo id="S4.T2.42.42.42.1.1.m1.1.1.3.1" mathbackground="#CCFFCC" xref="S4.T2.42.42.42.1.1.m1.1.1.3.1.cmml">%</mo></mrow></mrow><annotation-xml encoding="MathML-Content" id="S4.T2.42.42.42.1.1.m1.1b"><apply id="S4.T2.42.42.42.1.1.m1.1.1.cmml" xref="S4.T2.42.42.42.1.1.m1.1.1"><ci id="S4.T2.42.42.42.1.1.m1.1.1.1.cmml" xref="S4.T2.42.42.42.1.1.m1.1.1.1">↓</ci><csymbol cd="latexml" id="S4.T2.42.42.42.1.1.m1.1.1.2.cmml" xref="S4.T2.42.42.42.1.1.m1.1.1.2">absent</csymbol><apply id="S4.T2.42.42.42.1.1.m1.1.1.3.cmml" xref="S4.T2.42.42.42.1.1.m1.1.1.3"><csymbol cd="latexml" id="S4.T2.42.42.42.1.1.m1.1.1.3.1.cmml" xref="S4.T2.42.42.42.1.1.m1.1.1.3.1">percent</csymbol><cn id="S4.T2.42.42.42.1.1.m1.1.1.3.2.cmml" type="float" xref="S4.T2.42.42.42.1.1.m1.1.1.3.2">8.8</cn></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.42.42.42.1.1.m1.1c">\downarrow 8.8\%</annotation><annotation encoding="application/x-llamapun" id="S4.T2.42.42.42.1.1.m1.1d">↓ 8.8 %</annotation></semantics></math></span></td>
<td class="ltx_td ltx_align_right" id="S4.T2.44.44.44.6" style="padding:-1.25pt 8.0pt;">28.21</td>
<td class="ltx_td ltx_align_left" id="S4.T2.43.43.43.2" style="padding:-1.25pt 8.0pt;"><span class="ltx_text" id="S4.T2.43.43.43.2.1"><math alttext="\downarrow 16.8\%" class="ltx_Math" display="inline" id="S4.T2.43.43.43.2.1.m1.1" style="background-color:#CCFFCC;"><semantics id="S4.T2.43.43.43.2.1.m1.1a"><mrow id="S4.T2.43.43.43.2.1.m1.1.1" xref="S4.T2.43.43.43.2.1.m1.1.1.cmml"><mi id="S4.T2.43.43.43.2.1.m1.1.1.2" xref="S4.T2.43.43.43.2.1.m1.1.1.2.cmml"></mi><mo id="S4.T2.43.43.43.2.1.m1.1.1.1" mathbackground="#CCFFCC" stretchy="false" xref="S4.T2.43.43.43.2.1.m1.1.1.1.cmml">↓</mo><mrow id="S4.T2.43.43.43.2.1.m1.1.1.3" xref="S4.T2.43.43.43.2.1.m1.1.1.3.cmml"><mn id="S4.T2.43.43.43.2.1.m1.1.1.3.2" mathbackground="#CCFFCC" xref="S4.T2.43.43.43.2.1.m1.1.1.3.2.cmml">16.8</mn><mo id="S4.T2.43.43.43.2.1.m1.1.1.3.1" mathbackground="#CCFFCC" xref="S4.T2.43.43.43.2.1.m1.1.1.3.1.cmml">%</mo></mrow></mrow><annotation-xml encoding="MathML-Content" id="S4.T2.43.43.43.2.1.m1.1b"><apply id="S4.T2.43.43.43.2.1.m1.1.1.cmml" xref="S4.T2.43.43.43.2.1.m1.1.1"><ci id="S4.T2.43.43.43.2.1.m1.1.1.1.cmml" xref="S4.T2.43.43.43.2.1.m1.1.1.1">↓</ci><csymbol cd="latexml" id="S4.T2.43.43.43.2.1.m1.1.1.2.cmml" xref="S4.T2.43.43.43.2.1.m1.1.1.2">absent</csymbol><apply id="S4.T2.43.43.43.2.1.m1.1.1.3.cmml" xref="S4.T2.43.43.43.2.1.m1.1.1.3"><csymbol cd="latexml" id="S4.T2.43.43.43.2.1.m1.1.1.3.1.cmml" xref="S4.T2.43.43.43.2.1.m1.1.1.3.1">percent</csymbol><cn id="S4.T2.43.43.43.2.1.m1.1.1.3.2.cmml" type="float" xref="S4.T2.43.43.43.2.1.m1.1.1.3.2">16.8</cn></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.43.43.43.2.1.m1.1c">\downarrow 16.8\%</annotation><annotation encoding="application/x-llamapun" id="S4.T2.43.43.43.2.1.m1.1d">↓ 16.8 %</annotation></semantics></math></span></td>
<td class="ltx_td ltx_align_right" id="S4.T2.44.44.44.7" style="padding:-1.25pt 8.0pt;">-97.24</td>
<td class="ltx_td ltx_align_left" id="S4.T2.44.44.44.8" style="padding:-1.25pt 8.0pt;"><span class="ltx_text ltx_font_sansserif" id="S4.T2.44.44.44.8.1" style="background-color:#FFCCCC;">under-unlearn</span></td>
<td class="ltx_td ltx_align_right" id="S4.T2.44.44.44.9" style="padding:-1.25pt 8.0pt;">37.19</td>
<td class="ltx_td ltx_align_left" id="S4.T2.44.44.44.3" style="padding:-1.25pt 8.0pt;"><span class="ltx_text" id="S4.T2.44.44.44.3.1"><math alttext="\uparrow 5.4\%" class="ltx_Math" display="inline" id="S4.T2.44.44.44.3.1.m1.1" style="background-color:#CCFFCC;"><semantics id="S4.T2.44.44.44.3.1.m1.1a"><mrow id="S4.T2.44.44.44.3.1.m1.1.1" xref="S4.T2.44.44.44.3.1.m1.1.1.cmml"><mi id="S4.T2.44.44.44.3.1.m1.1.1.2" xref="S4.T2.44.44.44.3.1.m1.1.1.2.cmml"></mi><mo id="S4.T2.44.44.44.3.1.m1.1.1.1" mathbackground="#CCFFCC" stretchy="false" xref="S4.T2.44.44.44.3.1.m1.1.1.1.cmml">↑</mo><mrow id="S4.T2.44.44.44.3.1.m1.1.1.3" xref="S4.T2.44.44.44.3.1.m1.1.1.3.cmml"><mn id="S4.T2.44.44.44.3.1.m1.1.1.3.2" mathbackground="#CCFFCC" xref="S4.T2.44.44.44.3.1.m1.1.1.3.2.cmml">5.4</mn><mo id="S4.T2.44.44.44.3.1.m1.1.1.3.1" mathbackground="#CCFFCC" xref="S4.T2.44.44.44.3.1.m1.1.1.3.1.cmml">%</mo></mrow></mrow><annotation-xml encoding="MathML-Content" id="S4.T2.44.44.44.3.1.m1.1b"><apply id="S4.T2.44.44.44.3.1.m1.1.1.cmml" xref="S4.T2.44.44.44.3.1.m1.1.1"><ci id="S4.T2.44.44.44.3.1.m1.1.1.1.cmml" xref="S4.T2.44.44.44.3.1.m1.1.1.1">↑</ci><csymbol cd="latexml" id="S4.T2.44.44.44.3.1.m1.1.1.2.cmml" xref="S4.T2.44.44.44.3.1.m1.1.1.2">absent</csymbol><apply id="S4.T2.44.44.44.3.1.m1.1.1.3.cmml" xref="S4.T2.44.44.44.3.1.m1.1.1.3"><csymbol cd="latexml" id="S4.T2.44.44.44.3.1.m1.1.1.3.1.cmml" xref="S4.T2.44.44.44.3.1.m1.1.1.3.1">percent</csymbol><cn id="S4.T2.44.44.44.3.1.m1.1.1.3.2.cmml" type="float" xref="S4.T2.44.44.44.3.1.m1.1.1.3.2">5.4</cn></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.44.44.44.3.1.m1.1c">\uparrow 5.4\%</annotation><annotation encoding="application/x-llamapun" id="S4.T2.44.44.44.3.1.m1.1d">↑ 5.4 %</annotation></semantics></math></span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.47.47.47">
<td class="ltx_td ltx_align_left" id="S4.T2.47.47.47.4" style="padding:-1.25pt 8.0pt;"><span class="ltx_text ltx_font_sansserif" id="S4.T2.47.47.47.4.1">SimNPO</span></td>
<td class="ltx_td ltx_align_right" id="S4.T2.47.47.47.5" style="padding:-1.25pt 8.0pt;">14.55</td>
<td class="ltx_td ltx_align_left" id="S4.T2.45.45.45.1" style="padding:-1.25pt 8.0pt;"><span class="ltx_text" id="S4.T2.45.45.45.1.1"><math alttext="\downarrow 7.9\%" class="ltx_Math" display="inline" id="S4.T2.45.45.45.1.1.m1.1" style="background-color:#CCFFCC;"><semantics id="S4.T2.45.45.45.1.1.m1.1a"><mrow id="S4.T2.45.45.45.1.1.m1.1.1" xref="S4.T2.45.45.45.1.1.m1.1.1.cmml"><mi id="S4.T2.45.45.45.1.1.m1.1.1.2" xref="S4.T2.45.45.45.1.1.m1.1.1.2.cmml"></mi><mo id="S4.T2.45.45.45.1.1.m1.1.1.1" mathbackground="#CCFFCC" stretchy="false" xref="S4.T2.45.45.45.1.1.m1.1.1.1.cmml">↓</mo><mrow id="S4.T2.45.45.45.1.1.m1.1.1.3" xref="S4.T2.45.45.45.1.1.m1.1.1.3.cmml"><mn id="S4.T2.45.45.45.1.1.m1.1.1.3.2" mathbackground="#CCFFCC" xref="S4.T2.45.45.45.1.1.m1.1.1.3.2.cmml">7.9</mn><mo id="S4.T2.45.45.45.1.1.m1.1.1.3.1" mathbackground="#CCFFCC" xref="S4.T2.45.45.45.1.1.m1.1.1.3.1.cmml">%</mo></mrow></mrow><annotation-xml encoding="MathML-Content" id="S4.T2.45.45.45.1.1.m1.1b"><apply id="S4.T2.45.45.45.1.1.m1.1.1.cmml" xref="S4.T2.45.45.45.1.1.m1.1.1"><ci id="S4.T2.45.45.45.1.1.m1.1.1.1.cmml" xref="S4.T2.45.45.45.1.1.m1.1.1.1">↓</ci><csymbol cd="latexml" id="S4.T2.45.45.45.1.1.m1.1.1.2.cmml" xref="S4.T2.45.45.45.1.1.m1.1.1.2">absent</csymbol><apply id="S4.T2.45.45.45.1.1.m1.1.1.3.cmml" xref="S4.T2.45.45.45.1.1.m1.1.1.3"><csymbol cd="latexml" id="S4.T2.45.45.45.1.1.m1.1.1.3.1.cmml" xref="S4.T2.45.45.45.1.1.m1.1.1.3.1">percent</csymbol><cn id="S4.T2.45.45.45.1.1.m1.1.1.3.2.cmml" type="float" xref="S4.T2.45.45.45.1.1.m1.1.1.3.2">7.9</cn></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.45.45.45.1.1.m1.1c">\downarrow 7.9\%</annotation><annotation encoding="application/x-llamapun" id="S4.T2.45.45.45.1.1.m1.1d">↓ 7.9 %</annotation></semantics></math></span></td>
<td class="ltx_td ltx_align_right" id="S4.T2.47.47.47.6" style="padding:-1.25pt 8.0pt;">34.36</td>
<td class="ltx_td ltx_align_left" id="S4.T2.46.46.46.2" style="padding:-1.25pt 8.0pt;"><span class="ltx_text" id="S4.T2.46.46.46.2.1"><math alttext="\uparrow 1.4\%" class="ltx_Math" display="inline" id="S4.T2.46.46.46.2.1.m1.1" style="background-color:#FFCCCC;"><semantics id="S4.T2.46.46.46.2.1.m1.1a"><mrow id="S4.T2.46.46.46.2.1.m1.1.1" xref="S4.T2.46.46.46.2.1.m1.1.1.cmml"><mi id="S4.T2.46.46.46.2.1.m1.1.1.2" xref="S4.T2.46.46.46.2.1.m1.1.1.2.cmml"></mi><mo id="S4.T2.46.46.46.2.1.m1.1.1.1" mathbackground="#FFCCCC" stretchy="false" xref="S4.T2.46.46.46.2.1.m1.1.1.1.cmml">↑</mo><mrow id="S4.T2.46.46.46.2.1.m1.1.1.3" xref="S4.T2.46.46.46.2.1.m1.1.1.3.cmml"><mn id="S4.T2.46.46.46.2.1.m1.1.1.3.2" mathbackground="#FFCCCC" xref="S4.T2.46.46.46.2.1.m1.1.1.3.2.cmml">1.4</mn><mo id="S4.T2.46.46.46.2.1.m1.1.1.3.1" mathbackground="#FFCCCC" xref="S4.T2.46.46.46.2.1.m1.1.1.3.1.cmml">%</mo></mrow></mrow><annotation-xml encoding="MathML-Content" id="S4.T2.46.46.46.2.1.m1.1b"><apply id="S4.T2.46.46.46.2.1.m1.1.1.cmml" xref="S4.T2.46.46.46.2.1.m1.1.1"><ci id="S4.T2.46.46.46.2.1.m1.1.1.1.cmml" xref="S4.T2.46.46.46.2.1.m1.1.1.1">↑</ci><csymbol cd="latexml" id="S4.T2.46.46.46.2.1.m1.1.1.2.cmml" xref="S4.T2.46.46.46.2.1.m1.1.1.2">absent</csymbol><apply id="S4.T2.46.46.46.2.1.m1.1.1.3.cmml" xref="S4.T2.46.46.46.2.1.m1.1.1.3"><csymbol cd="latexml" id="S4.T2.46.46.46.2.1.m1.1.1.3.1.cmml" xref="S4.T2.46.46.46.2.1.m1.1.1.3.1">percent</csymbol><cn id="S4.T2.46.46.46.2.1.m1.1.1.3.2.cmml" type="float" xref="S4.T2.46.46.46.2.1.m1.1.1.3.2">1.4</cn></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.46.46.46.2.1.m1.1c">\uparrow 1.4\%</annotation><annotation encoding="application/x-llamapun" id="S4.T2.46.46.46.2.1.m1.1d">↑ 1.4 %</annotation></semantics></math></span></td>
<td class="ltx_td ltx_align_right" id="S4.T2.47.47.47.7" style="padding:-1.25pt 8.0pt;">-96.40</td>
<td class="ltx_td ltx_align_left" id="S4.T2.47.47.47.8" style="padding:-1.25pt 8.0pt;"><span class="ltx_text ltx_font_sansserif" id="S4.T2.47.47.47.8.1" style="background-color:#FFCCCC;">under-unlearn</span></td>
<td class="ltx_td ltx_align_right" id="S4.T2.47.47.47.9" style="padding:-1.25pt 8.0pt;">36.62</td>
<td class="ltx_td ltx_align_left" id="S4.T2.47.47.47.3" style="padding:-1.25pt 8.0pt;"><span class="ltx_text" id="S4.T2.47.47.47.3.1"><math alttext="\uparrow 3.8\%" class="ltx_Math" display="inline" id="S4.T2.47.47.47.3.1.m1.1" style="background-color:#CCFFCC;"><semantics id="S4.T2.47.47.47.3.1.m1.1a"><mrow id="S4.T2.47.47.47.3.1.m1.1.1" xref="S4.T2.47.47.47.3.1.m1.1.1.cmml"><mi id="S4.T2.47.47.47.3.1.m1.1.1.2" xref="S4.T2.47.47.47.3.1.m1.1.1.2.cmml"></mi><mo id="S4.T2.47.47.47.3.1.m1.1.1.1" mathbackground="#CCFFCC" stretchy="false" xref="S4.T2.47.47.47.3.1.m1.1.1.1.cmml">↑</mo><mrow id="S4.T2.47.47.47.3.1.m1.1.1.3" xref="S4.T2.47.47.47.3.1.m1.1.1.3.cmml"><mn id="S4.T2.47.47.47.3.1.m1.1.1.3.2" mathbackground="#CCFFCC" xref="S4.T2.47.47.47.3.1.m1.1.1.3.2.cmml">3.8</mn><mo id="S4.T2.47.47.47.3.1.m1.1.1.3.1" mathbackground="#CCFFCC" xref="S4.T2.47.47.47.3.1.m1.1.1.3.1.cmml">%</mo></mrow></mrow><annotation-xml encoding="MathML-Content" id="S4.T2.47.47.47.3.1.m1.1b"><apply id="S4.T2.47.47.47.3.1.m1.1.1.cmml" xref="S4.T2.47.47.47.3.1.m1.1.1"><ci id="S4.T2.47.47.47.3.1.m1.1.1.1.cmml" xref="S4.T2.47.47.47.3.1.m1.1.1.1">↑</ci><csymbol cd="latexml" id="S4.T2.47.47.47.3.1.m1.1.1.2.cmml" xref="S4.T2.47.47.47.3.1.m1.1.1.2">absent</csymbol><apply id="S4.T2.47.47.47.3.1.m1.1.1.3.cmml" xref="S4.T2.47.47.47.3.1.m1.1.1.3"><csymbol cd="latexml" id="S4.T2.47.47.47.3.1.m1.1.1.3.1.cmml" xref="S4.T2.47.47.47.3.1.m1.1.1.3.1">percent</csymbol><cn id="S4.T2.47.47.47.3.1.m1.1.1.3.2.cmml" type="float" xref="S4.T2.47.47.47.3.1.m1.1.1.3.2">3.8</cn></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.47.47.47.3.1.m1.1c">\uparrow 3.8\%</annotation><annotation encoding="application/x-llamapun" id="S4.T2.47.47.47.3.1.m1.1d">↑ 3.8 %</annotation></semantics></math></span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.50.50.50">
<td class="ltx_td ltx_align_left" id="S4.T2.50.50.50.4" style="padding:-1.25pt 8.0pt;"><span class="ltx_text ltx_font_sansserif" id="S4.T2.50.50.50.4.1">RMU</span></td>
<td class="ltx_td ltx_align_right" id="S4.T2.50.50.50.5" style="padding:-1.25pt 8.0pt;">14.89</td>
<td class="ltx_td ltx_align_left" id="S4.T2.48.48.48.1" style="padding:-1.25pt 8.0pt;"><span class="ltx_text" id="S4.T2.48.48.48.1.1"><math alttext="\downarrow 5.8\%" class="ltx_Math" display="inline" id="S4.T2.48.48.48.1.1.m1.1" style="background-color:#CCFFCC;"><semantics id="S4.T2.48.48.48.1.1.m1.1a"><mrow id="S4.T2.48.48.48.1.1.m1.1.1" xref="S4.T2.48.48.48.1.1.m1.1.1.cmml"><mi id="S4.T2.48.48.48.1.1.m1.1.1.2" xref="S4.T2.48.48.48.1.1.m1.1.1.2.cmml"></mi><mo id="S4.T2.48.48.48.1.1.m1.1.1.1" mathbackground="#CCFFCC" stretchy="false" xref="S4.T2.48.48.48.1.1.m1.1.1.1.cmml">↓</mo><mrow id="S4.T2.48.48.48.1.1.m1.1.1.3" xref="S4.T2.48.48.48.1.1.m1.1.1.3.cmml"><mn id="S4.T2.48.48.48.1.1.m1.1.1.3.2" mathbackground="#CCFFCC" xref="S4.T2.48.48.48.1.1.m1.1.1.3.2.cmml">5.8</mn><mo id="S4.T2.48.48.48.1.1.m1.1.1.3.1" mathbackground="#CCFFCC" xref="S4.T2.48.48.48.1.1.m1.1.1.3.1.cmml">%</mo></mrow></mrow><annotation-xml encoding="MathML-Content" id="S4.T2.48.48.48.1.1.m1.1b"><apply id="S4.T2.48.48.48.1.1.m1.1.1.cmml" xref="S4.T2.48.48.48.1.1.m1.1.1"><ci id="S4.T2.48.48.48.1.1.m1.1.1.1.cmml" xref="S4.T2.48.48.48.1.1.m1.1.1.1">↓</ci><csymbol cd="latexml" id="S4.T2.48.48.48.1.1.m1.1.1.2.cmml" xref="S4.T2.48.48.48.1.1.m1.1.1.2">absent</csymbol><apply id="S4.T2.48.48.48.1.1.m1.1.1.3.cmml" xref="S4.T2.48.48.48.1.1.m1.1.1.3"><csymbol cd="latexml" id="S4.T2.48.48.48.1.1.m1.1.1.3.1.cmml" xref="S4.T2.48.48.48.1.1.m1.1.1.3.1">percent</csymbol><cn id="S4.T2.48.48.48.1.1.m1.1.1.3.2.cmml" type="float" xref="S4.T2.48.48.48.1.1.m1.1.1.3.2">5.8</cn></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.48.48.48.1.1.m1.1c">\downarrow 5.8\%</annotation><annotation encoding="application/x-llamapun" id="S4.T2.48.48.48.1.1.m1.1d">↓ 5.8 %</annotation></semantics></math></span></td>
<td class="ltx_td ltx_align_right" id="S4.T2.50.50.50.6" style="padding:-1.25pt 8.0pt;">32.59</td>
<td class="ltx_td ltx_align_left" id="S4.T2.49.49.49.2" style="padding:-1.25pt 8.0pt;"><span class="ltx_text" id="S4.T2.49.49.49.2.1"><math alttext="\downarrow 3.9\%" class="ltx_Math" display="inline" id="S4.T2.49.49.49.2.1.m1.1" style="background-color:#CCFFCC;"><semantics id="S4.T2.49.49.49.2.1.m1.1a"><mrow id="S4.T2.49.49.49.2.1.m1.1.1" xref="S4.T2.49.49.49.2.1.m1.1.1.cmml"><mi id="S4.T2.49.49.49.2.1.m1.1.1.2" xref="S4.T2.49.49.49.2.1.m1.1.1.2.cmml"></mi><mo id="S4.T2.49.49.49.2.1.m1.1.1.1" mathbackground="#CCFFCC" stretchy="false" xref="S4.T2.49.49.49.2.1.m1.1.1.1.cmml">↓</mo><mrow id="S4.T2.49.49.49.2.1.m1.1.1.3" xref="S4.T2.49.49.49.2.1.m1.1.1.3.cmml"><mn id="S4.T2.49.49.49.2.1.m1.1.1.3.2" mathbackground="#CCFFCC" xref="S4.T2.49.49.49.2.1.m1.1.1.3.2.cmml">3.9</mn><mo id="S4.T2.49.49.49.2.1.m1.1.1.3.1" mathbackground="#CCFFCC" xref="S4.T2.49.49.49.2.1.m1.1.1.3.1.cmml">%</mo></mrow></mrow><annotation-xml encoding="MathML-Content" id="S4.T2.49.49.49.2.1.m1.1b"><apply id="S4.T2.49.49.49.2.1.m1.1.1.cmml" xref="S4.T2.49.49.49.2.1.m1.1.1"><ci id="S4.T2.49.49.49.2.1.m1.1.1.1.cmml" xref="S4.T2.49.49.49.2.1.m1.1.1.1">↓</ci><csymbol cd="latexml" id="S4.T2.49.49.49.2.1.m1.1.1.2.cmml" xref="S4.T2.49.49.49.2.1.m1.1.1.2">absent</csymbol><apply id="S4.T2.49.49.49.2.1.m1.1.1.3.cmml" xref="S4.T2.49.49.49.2.1.m1.1.1.3"><csymbol cd="latexml" id="S4.T2.49.49.49.2.1.m1.1.1.3.1.cmml" xref="S4.T2.49.49.49.2.1.m1.1.1.3.1">percent</csymbol><cn id="S4.T2.49.49.49.2.1.m1.1.1.3.2.cmml" type="float" xref="S4.T2.49.49.49.2.1.m1.1.1.3.2">3.9</cn></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.49.49.49.2.1.m1.1c">\downarrow 3.9\%</annotation><annotation encoding="application/x-llamapun" id="S4.T2.49.49.49.2.1.m1.1d">↓ 3.9 %</annotation></semantics></math></span></td>
<td class="ltx_td ltx_align_right" id="S4.T2.50.50.50.7" style="padding:-1.25pt 8.0pt;">-97.58</td>
<td class="ltx_td ltx_align_left" id="S4.T2.50.50.50.8" style="padding:-1.25pt 8.0pt;"><span class="ltx_text ltx_font_sansserif" id="S4.T2.50.50.50.8.1" style="background-color:#FFCCCC;">under-unlearn</span></td>
<td class="ltx_td ltx_align_right" id="S4.T2.50.50.50.9" style="padding:-1.25pt 8.0pt;">37.13</td>
<td class="ltx_td ltx_align_left" id="S4.T2.50.50.50.3" style="padding:-1.25pt 8.0pt;"><span class="ltx_text" id="S4.T2.50.50.50.3.1"><math alttext="\uparrow 5.2\%" class="ltx_Math" display="inline" id="S4.T2.50.50.50.3.1.m1.1" style="background-color:#CCFFCC;"><semantics id="S4.T2.50.50.50.3.1.m1.1a"><mrow id="S4.T2.50.50.50.3.1.m1.1.1" xref="S4.T2.50.50.50.3.1.m1.1.1.cmml"><mi id="S4.T2.50.50.50.3.1.m1.1.1.2" xref="S4.T2.50.50.50.3.1.m1.1.1.2.cmml"></mi><mo id="S4.T2.50.50.50.3.1.m1.1.1.1" mathbackground="#CCFFCC" stretchy="false" xref="S4.T2.50.50.50.3.1.m1.1.1.1.cmml">↑</mo><mrow id="S4.T2.50.50.50.3.1.m1.1.1.3" xref="S4.T2.50.50.50.3.1.m1.1.1.3.cmml"><mn id="S4.T2.50.50.50.3.1.m1.1.1.3.2" mathbackground="#CCFFCC" xref="S4.T2.50.50.50.3.1.m1.1.1.3.2.cmml">5.2</mn><mo id="S4.T2.50.50.50.3.1.m1.1.1.3.1" mathbackground="#CCFFCC" xref="S4.T2.50.50.50.3.1.m1.1.1.3.1.cmml">%</mo></mrow></mrow><annotation-xml encoding="MathML-Content" id="S4.T2.50.50.50.3.1.m1.1b"><apply id="S4.T2.50.50.50.3.1.m1.1.1.cmml" xref="S4.T2.50.50.50.3.1.m1.1.1"><ci id="S4.T2.50.50.50.3.1.m1.1.1.1.cmml" xref="S4.T2.50.50.50.3.1.m1.1.1.1">↑</ci><csymbol cd="latexml" id="S4.T2.50.50.50.3.1.m1.1.1.2.cmml" xref="S4.T2.50.50.50.3.1.m1.1.1.2">absent</csymbol><apply id="S4.T2.50.50.50.3.1.m1.1.1.3.cmml" xref="S4.T2.50.50.50.3.1.m1.1.1.3"><csymbol cd="latexml" id="S4.T2.50.50.50.3.1.m1.1.1.3.1.cmml" xref="S4.T2.50.50.50.3.1.m1.1.1.3.1">percent</csymbol><cn id="S4.T2.50.50.50.3.1.m1.1.1.3.2.cmml" type="float" xref="S4.T2.50.50.50.3.1.m1.1.1.3.2">5.2</cn></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.50.50.50.3.1.m1.1c">\uparrow 5.2\%</annotation><annotation encoding="application/x-llamapun" id="S4.T2.50.50.50.3.1.m1.1d">↑ 5.2 %</annotation></semantics></math></span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.53.53.53">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S4.T2.53.53.53.4" style="padding:-1.25pt 8.0pt;"><span class="ltx_text ltx_font_sansserif ltx_font_bold" id="S4.T2.53.53.53.4.1">DSG (Ours)</span></td>
<td class="ltx_td ltx_align_right ltx_border_bb" id="S4.T2.53.53.53.5" style="padding:-1.25pt 8.0pt;">8.73</td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="S4.T2.51.51.51.1" style="padding:-1.25pt 8.0pt;"><span class="ltx_text" id="S4.T2.51.51.51.1.1"><math alttext="\downarrow 44.7\%" class="ltx_Math" display="inline" id="S4.T2.51.51.51.1.1.m1.1" style="background-color:#CCFFCC;"><semantics id="S4.T2.51.51.51.1.1.m1.1a"><mrow id="S4.T2.51.51.51.1.1.m1.1.1" xref="S4.T2.51.51.51.1.1.m1.1.1.cmml"><mi id="S4.T2.51.51.51.1.1.m1.1.1.2" xref="S4.T2.51.51.51.1.1.m1.1.1.2.cmml"></mi><mo id="S4.T2.51.51.51.1.1.m1.1.1.1" mathbackground="#CCFFCC" stretchy="false" xref="S4.T2.51.51.51.1.1.m1.1.1.1.cmml">↓</mo><mrow id="S4.T2.51.51.51.1.1.m1.1.1.3" xref="S4.T2.51.51.51.1.1.m1.1.1.3.cmml"><mn id="S4.T2.51.51.51.1.1.m1.1.1.3.2" mathbackground="#CCFFCC" xref="S4.T2.51.51.51.1.1.m1.1.1.3.2.cmml">44.7</mn><mo id="S4.T2.51.51.51.1.1.m1.1.1.3.1" mathbackground="#CCFFCC" xref="S4.T2.51.51.51.1.1.m1.1.1.3.1.cmml">%</mo></mrow></mrow><annotation-xml encoding="MathML-Content" id="S4.T2.51.51.51.1.1.m1.1b"><apply id="S4.T2.51.51.51.1.1.m1.1.1.cmml" xref="S4.T2.51.51.51.1.1.m1.1.1"><ci id="S4.T2.51.51.51.1.1.m1.1.1.1.cmml" xref="S4.T2.51.51.51.1.1.m1.1.1.1">↓</ci><csymbol cd="latexml" id="S4.T2.51.51.51.1.1.m1.1.1.2.cmml" xref="S4.T2.51.51.51.1.1.m1.1.1.2">absent</csymbol><apply id="S4.T2.51.51.51.1.1.m1.1.1.3.cmml" xref="S4.T2.51.51.51.1.1.m1.1.1.3"><csymbol cd="latexml" id="S4.T2.51.51.51.1.1.m1.1.1.3.1.cmml" xref="S4.T2.51.51.51.1.1.m1.1.1.3.1">percent</csymbol><cn id="S4.T2.51.51.51.1.1.m1.1.1.3.2.cmml" type="float" xref="S4.T2.51.51.51.1.1.m1.1.1.3.2">44.7</cn></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.51.51.51.1.1.m1.1c">\downarrow 44.7\%</annotation><annotation encoding="application/x-llamapun" id="S4.T2.51.51.51.1.1.m1.1d">↓ 44.7 %</annotation></semantics></math></span></td>
<td class="ltx_td ltx_align_right ltx_border_bb" id="S4.T2.53.53.53.6" style="padding:-1.25pt 8.0pt;">1.79</td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="S4.T2.52.52.52.2" style="padding:-1.25pt 8.0pt;"><span class="ltx_text" id="S4.T2.52.52.52.2.1"><math alttext="\downarrow 94.7\%" class="ltx_Math" display="inline" id="S4.T2.52.52.52.2.1.m1.1" style="background-color:#CCFFCC;"><semantics id="S4.T2.52.52.52.2.1.m1.1a"><mrow id="S4.T2.52.52.52.2.1.m1.1.1" xref="S4.T2.52.52.52.2.1.m1.1.1.cmml"><mi id="S4.T2.52.52.52.2.1.m1.1.1.2" xref="S4.T2.52.52.52.2.1.m1.1.1.2.cmml"></mi><mo id="S4.T2.52.52.52.2.1.m1.1.1.1" mathbackground="#CCFFCC" stretchy="false" xref="S4.T2.52.52.52.2.1.m1.1.1.1.cmml">↓</mo><mrow id="S4.T2.52.52.52.2.1.m1.1.1.3" xref="S4.T2.52.52.52.2.1.m1.1.1.3.cmml"><mn id="S4.T2.52.52.52.2.1.m1.1.1.3.2" mathbackground="#CCFFCC" xref="S4.T2.52.52.52.2.1.m1.1.1.3.2.cmml">94.7</mn><mo id="S4.T2.52.52.52.2.1.m1.1.1.3.1" mathbackground="#CCFFCC" xref="S4.T2.52.52.52.2.1.m1.1.1.3.1.cmml">%</mo></mrow></mrow><annotation-xml encoding="MathML-Content" id="S4.T2.52.52.52.2.1.m1.1b"><apply id="S4.T2.52.52.52.2.1.m1.1.1.cmml" xref="S4.T2.52.52.52.2.1.m1.1.1"><ci id="S4.T2.52.52.52.2.1.m1.1.1.1.cmml" xref="S4.T2.52.52.52.2.1.m1.1.1.1">↓</ci><csymbol cd="latexml" id="S4.T2.52.52.52.2.1.m1.1.1.2.cmml" xref="S4.T2.52.52.52.2.1.m1.1.1.2">absent</csymbol><apply id="S4.T2.52.52.52.2.1.m1.1.1.3.cmml" xref="S4.T2.52.52.52.2.1.m1.1.1.3"><csymbol cd="latexml" id="S4.T2.52.52.52.2.1.m1.1.1.3.1.cmml" xref="S4.T2.52.52.52.2.1.m1.1.1.3.1">percent</csymbol><cn id="S4.T2.52.52.52.2.1.m1.1.1.3.2.cmml" type="float" xref="S4.T2.52.52.52.2.1.m1.1.1.3.2">94.7</cn></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.52.52.52.2.1.m1.1c">\downarrow 94.7\%</annotation><annotation encoding="application/x-llamapun" id="S4.T2.52.52.52.2.1.m1.1d">↓ 94.7 %</annotation></semantics></math></span></td>
<td class="ltx_td ltx_align_right ltx_border_bb" id="S4.T2.53.53.53.7" style="padding:-1.25pt 8.0pt;">-23.18</td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="S4.T2.53.53.53.8" style="padding:-1.25pt 8.0pt;"><span class="ltx_text ltx_font_sansserif" id="S4.T2.53.53.53.8.1" style="background-color:#FFCCCC;">under-unlearn</span></td>
<td class="ltx_td ltx_align_right ltx_border_bb" id="S4.T2.53.53.53.9" style="padding:-1.25pt 8.0pt;">37.10</td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="S4.T2.53.53.53.3" style="padding:-1.25pt 8.0pt;"><span class="ltx_text" id="S4.T2.53.53.53.3.1"><math alttext="\uparrow 5.2\%" class="ltx_Math" display="inline" id="S4.T2.53.53.53.3.1.m1.1" style="background-color:#CCFFCC;"><semantics id="S4.T2.53.53.53.3.1.m1.1a"><mrow id="S4.T2.53.53.53.3.1.m1.1.1" xref="S4.T2.53.53.53.3.1.m1.1.1.cmml"><mi id="S4.T2.53.53.53.3.1.m1.1.1.2" xref="S4.T2.53.53.53.3.1.m1.1.1.2.cmml"></mi><mo id="S4.T2.53.53.53.3.1.m1.1.1.1" mathbackground="#CCFFCC" stretchy="false" xref="S4.T2.53.53.53.3.1.m1.1.1.1.cmml">↑</mo><mrow id="S4.T2.53.53.53.3.1.m1.1.1.3" xref="S4.T2.53.53.53.3.1.m1.1.1.3.cmml"><mn id="S4.T2.53.53.53.3.1.m1.1.1.3.2" mathbackground="#CCFFCC" xref="S4.T2.53.53.53.3.1.m1.1.1.3.2.cmml">5.2</mn><mo id="S4.T2.53.53.53.3.1.m1.1.1.3.1" mathbackground="#CCFFCC" xref="S4.T2.53.53.53.3.1.m1.1.1.3.1.cmml">%</mo></mrow></mrow><annotation-xml encoding="MathML-Content" id="S4.T2.53.53.53.3.1.m1.1b"><apply id="S4.T2.53.53.53.3.1.m1.1.1.cmml" xref="S4.T2.53.53.53.3.1.m1.1.1"><ci id="S4.T2.53.53.53.3.1.m1.1.1.1.cmml" xref="S4.T2.53.53.53.3.1.m1.1.1.1">↑</ci><csymbol cd="latexml" id="S4.T2.53.53.53.3.1.m1.1.1.2.cmml" xref="S4.T2.53.53.53.3.1.m1.1.1.2">absent</csymbol><apply id="S4.T2.53.53.53.3.1.m1.1.1.3.cmml" xref="S4.T2.53.53.53.3.1.m1.1.1.3"><csymbol cd="latexml" id="S4.T2.53.53.53.3.1.m1.1.1.3.1.cmml" xref="S4.T2.53.53.53.3.1.m1.1.1.3.1">percent</csymbol><cn id="S4.T2.53.53.53.3.1.m1.1.1.3.2.cmml" type="float" xref="S4.T2.53.53.53.3.1.m1.1.1.3.2">5.2</cn></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.53.53.53.3.1.m1.1c">\uparrow 5.2\%</annotation><annotation encoding="application/x-llamapun" id="S4.T2.53.53.53.3.1.m1.1d">↑ 5.2 %</annotation></semantics></math></span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 Table 2 presents the results of several unlearning methods on the MUSE benchmark dataset.  The benchmark assesses unlearning performance across six dimensions: verbatim memorization, knowledge memorization, privacy leakage, utility preservation, forget set scalability, and sequential unlearning.  Each cell shows the performance of a given method on a specific criterion. Green cells indicate that the method met the criterion's threshold; red cells indicate failure. For privacy leakage, the interpretation of values is reversed: large positive values indicate over-unlearning (forgetting too much), while large negative values indicate under-unlearning (not forgetting enough). The table demonstrates that the Dynamic SAE Guardrails (DSG) method performs substantially better than baseline methods across all six dimensions, with significant improvements in reducing verbatim and knowledge memorization while maintaining high utility.
> <details>
> <summary>read the caption</summary>
> Table 2:   Unlearning performance on MUSE. We highlight in  green if the method satisfies the criterion and red otherwise. For privacy leakage, large positive values suggest over-unlearning, while large negative values suggest under-unlearning. DSG shows strong performance across all metrics, achieving substantial reductions in verbatim and knowledge memorization while maintaining high utility.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="A7.T3.2">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A7.T3.2.3.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="A7.T3.2.3.1.1"><span class="ltx_text ltx_font_bold" id="A7.T3.2.3.1.1.1">Hyperparameter</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="A7.T3.2.3.1.2"><span class="ltx_text ltx_font_bold" id="A7.T3.2.3.1.2.1">Values Tested</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A7.T3.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A7.T3.1.1.1">Importance Ratio Percentile (<math alttext="p_{\text{ratio}}" class="ltx_Math" display="inline" id="A7.T3.1.1.1.m1.1"><semantics id="A7.T3.1.1.1.m1.1a"><msub id="A7.T3.1.1.1.m1.1.1" xref="A7.T3.1.1.1.m1.1.1.cmml"><mi id="A7.T3.1.1.1.m1.1.1.2" xref="A7.T3.1.1.1.m1.1.1.2.cmml">p</mi><mtext id="A7.T3.1.1.1.m1.1.1.3" xref="A7.T3.1.1.1.m1.1.1.3a.cmml">ratio</mtext></msub><annotation-xml encoding="MathML-Content" id="A7.T3.1.1.1.m1.1b"><apply id="A7.T3.1.1.1.m1.1.1.cmml" xref="A7.T3.1.1.1.m1.1.1"><csymbol cd="ambiguous" id="A7.T3.1.1.1.m1.1.1.1.cmml" xref="A7.T3.1.1.1.m1.1.1">subscript</csymbol><ci id="A7.T3.1.1.1.m1.1.1.2.cmml" xref="A7.T3.1.1.1.m1.1.1.2">𝑝</ci><ci id="A7.T3.1.1.1.m1.1.1.3a.cmml" xref="A7.T3.1.1.1.m1.1.1.3"><mtext id="A7.T3.1.1.1.m1.1.1.3.cmml" mathsize="70%" xref="A7.T3.1.1.1.m1.1.1.3">ratio</mtext></ci></apply></annotation-xml><annotation encoding="application/x-tex" id="A7.T3.1.1.1.m1.1c">p_{\text{ratio}}</annotation><annotation encoding="application/x-llamapun" id="A7.T3.1.1.1.m1.1d">italic_p start_POSTSUBSCRIPT ratio end_POSTSUBSCRIPT</annotation></semantics></math>)</th>
<td class="ltx_td ltx_align_left ltx_border_t" id="A7.T3.1.1.2">90, 95</td>
</tr>
<tr class="ltx_tr" id="A7.T3.2.4.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A7.T3.2.4.1.1">Number of Features</th>
<td class="ltx_td ltx_align_left" id="A7.T3.2.4.1.2">10, 20, 30</td>
</tr>
<tr class="ltx_tr" id="A7.T3.2.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="A7.T3.2.2.1">Clamp Strength (<math alttext="c" class="ltx_Math" display="inline" id="A7.T3.2.2.1.m1.1"><semantics id="A7.T3.2.2.1.m1.1a"><mi id="A7.T3.2.2.1.m1.1.1" xref="A7.T3.2.2.1.m1.1.1.cmml">c</mi><annotation-xml encoding="MathML-Content" id="A7.T3.2.2.1.m1.1b"><ci id="A7.T3.2.2.1.m1.1.1.cmml" xref="A7.T3.2.2.1.m1.1.1">𝑐</ci></annotation-xml><annotation encoding="application/x-tex" id="A7.T3.2.2.1.m1.1c">c</annotation><annotation encoding="application/x-llamapun" id="A7.T3.2.2.1.m1.1d">italic_c</annotation></semantics></math>)</th>
<td class="ltx_td ltx_align_left ltx_border_bb" id="A7.T3.2.2.2">10, 25, 50, 100, 200, 300, 400, 500</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table shows the hyperparameter search space explored for the Dynamic SAE Guardrails (DSG) method.  It details the values tested for three key hyperparameters: Importance Ratio Percentile (pratio), the number of features selected (Number of Features), and clamp strength (c). The dynamic threshold percentile (pdyn) is held constant at 95 for all experiments in this table.
> <details>
> <summary>read the caption</summary>
> Table 3: Hyperparameter sweep for Dynamic SAE Guardrails (DSG). Fixed values: pdyn=95subscript𝑝dyn95p_{\text{dyn}}=95italic_p start_POSTSUBSCRIPT dyn end_POSTSUBSCRIPT = 95.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="A7.T4.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A7.T4.1.2.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="A7.T4.1.2.1.1"><span class="ltx_text ltx_font_bold" id="A7.T4.1.2.1.1.1">Hyperparameter</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="A7.T4.1.2.1.2"><span class="ltx_text ltx_font_bold" id="A7.T4.1.2.1.2.1">Values Tested</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A7.T4.1.3.1">
<td class="ltx_td ltx_align_left ltx_border_t" id="A7.T4.1.3.1.1">Steering Coefficient</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A7.T4.1.3.1.2">1, 5, 10, 20, 100, 200, 400, 500, 800, 1000</td>
</tr>
<tr class="ltx_tr" id="A7.T4.1.1">
<td class="ltx_td ltx_align_left" id="A7.T4.1.1.1">Alpha (<math alttext="\alpha" class="ltx_Math" display="inline" id="A7.T4.1.1.1.m1.1"><semantics id="A7.T4.1.1.1.m1.1a"><mi id="A7.T4.1.1.1.m1.1.1" xref="A7.T4.1.1.1.m1.1.1.cmml">α</mi><annotation-xml encoding="MathML-Content" id="A7.T4.1.1.1.m1.1b"><ci id="A7.T4.1.1.1.m1.1.1.cmml" xref="A7.T4.1.1.1.m1.1.1">𝛼</ci></annotation-xml><annotation encoding="application/x-tex" id="A7.T4.1.1.1.m1.1c">\alpha</annotation><annotation encoding="application/x-llamapun" id="A7.T4.1.1.1.m1.1d">italic_α</annotation></semantics></math>)</td>
<td class="ltx_td ltx_align_left" id="A7.T4.1.1.2">0.01, 0.1, 1, 10, 100, 300, 500</td>
</tr>
<tr class="ltx_tr" id="A7.T4.1.4.2">
<td class="ltx_td ltx_align_left" id="A7.T4.1.4.2.1">Batch Size</td>
<td class="ltx_td ltx_align_left" id="A7.T4.1.4.2.2">4, 8</td>
</tr>
<tr class="ltx_tr" id="A7.T4.1.5.3">
<td class="ltx_td ltx_align_left ltx_border_bb" id="A7.T4.1.5.3.1">Steps</td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="A7.T4.1.5.3.2">400, 800</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table shows the hyperparameter settings used in the experiments for the RMU (Representation Misdirection for Unlearning) method.  It details the range of values tested for each hyperparameter during the model's training process, while holding constant other hyperparameters such as the monitoring layer (Layer 3) and learning rate (5e-6).  The table helps understand the various configurations tested to find the optimal parameters for the RMU algorithm for unlearning.
> <details>
> <summary>read the caption</summary>
> Table 4: Hyperparameter sweep for RMU. Fixed values: Monitoring Layer ID=3, Learning Rate=5e-6.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="A7.T5.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A7.T5.1.2.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="A7.T5.1.2.1.1"><span class="ltx_text ltx_font_bold" id="A7.T5.1.2.1.1.1">Hyperparameter</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="A7.T5.1.2.1.2"><span class="ltx_text ltx_font_bold" id="A7.T5.1.2.1.2.1">Values Tested</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A7.T5.1.1">
<td class="ltx_td ltx_align_left ltx_border_t" id="A7.T5.1.1.1">Beta (<math alttext="\beta" class="ltx_Math" display="inline" id="A7.T5.1.1.1.m1.1"><semantics id="A7.T5.1.1.1.m1.1a"><mi id="A7.T5.1.1.1.m1.1.1" xref="A7.T5.1.1.1.m1.1.1.cmml">β</mi><annotation-xml encoding="MathML-Content" id="A7.T5.1.1.1.m1.1b"><ci id="A7.T5.1.1.1.m1.1.1.cmml" xref="A7.T5.1.1.1.m1.1.1">𝛽</ci></annotation-xml><annotation encoding="application/x-tex" id="A7.T5.1.1.1.m1.1c">\beta</annotation><annotation encoding="application/x-llamapun" id="A7.T5.1.1.1.m1.1d">italic_β</annotation></semantics></math>)</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A7.T5.1.1.2">0.0001, 0.001, 0.01, 0.1, 1, 10</td>
</tr>
<tr class="ltx_tr" id="A7.T5.1.3.1">
<td class="ltx_td ltx_align_left" id="A7.T5.1.3.1.1">Learning Rate (lr)</td>
<td class="ltx_td ltx_align_left" id="A7.T5.1.3.1.2">1e-4, 1e-5, 5e-6</td>
</tr>
<tr class="ltx_tr" id="A7.T5.1.4.2">
<td class="ltx_td ltx_align_left" id="A7.T5.1.4.2.1">Batch Size</td>
<td class="ltx_td ltx_align_left" id="A7.T5.1.4.2.2">4, 8</td>
</tr>
<tr class="ltx_tr" id="A7.T5.1.5.3">
<td class="ltx_td ltx_align_left ltx_border_bb" id="A7.T5.1.5.3.1">Steps</td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="A7.T5.1.5.3.2">400, 800</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table details the hyperparameter tuning performed for the SCRUB (Scalable Remembering and Unlearning unBound) algorithm during experiments on the WMDP (What Makes Data Poisonous) dataset.  The table shows which hyperparameters were tuned, the specific values tested for each, and which hyperparameters were held constant (α, γ, and KL Temperature). The results of this hyperparameter search were used to select the optimal SCRUB settings for use in the WMDP experiments.
> <details>
> <summary>read the caption</summary>
> Table 5: Hyperparameter sweep for SCRUB. Fixed values: α=1.0𝛼1.0\alpha=1.0italic_α = 1.0, γ=1.0𝛾1.0\gamma=1.0italic_γ = 1.0, KL Temperature=2.0.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="A7.T6.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A7.T6.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="A7.T6.1.1.1.1"><span class="ltx_text ltx_font_bold" id="A7.T6.1.1.1.1.1">Hyperparameter</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="A7.T6.1.1.1.2"><span class="ltx_text ltx_font_bold" id="A7.T6.1.1.1.2.1">Values Tested</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A7.T6.1.2.1">
<td class="ltx_td ltx_align_left ltx_border_t" id="A7.T6.1.2.1.1">Threshold</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A7.T6.1.2.1.2">0.1, 0.25, 0.5, 1, 2.5, 5</td>
</tr>
<tr class="ltx_tr" id="A7.T6.1.3.2">
<td class="ltx_td ltx_align_left ltx_border_bb" id="A7.T6.1.3.2.1">Dampening Constant</td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="A7.T6.1.3.2.2">1e-5, 1e-4, 1e-3, 1e-2, 1e-1, 1</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table shows the hyperparameters used in the experiments for the Selective Synaptic Dampening (SSD) unlearning method.  It details the range of values tested for two key hyperparameters: the threshold for selecting synapses to dampen, and the dampening constant applied to those selected synapses. This is important because the choices for these hyperparameters will strongly impact the performance of the unlearning process, balancing the degree to which unwanted knowledge is removed with the preservation of the model's overall capabilities.
> <details>
> <summary>read the caption</summary>
> Table 6: Hyperparameter sweep for Selective Synaptic Dampening (SSD).
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="A7.T7.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A7.T7.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="A7.T7.1.1.1.1"><span class="ltx_text ltx_font_bold" id="A7.T7.1.1.1.1.1">Hyperparameter</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="A7.T7.1.1.1.2"><span class="ltx_text ltx_font_bold" id="A7.T7.1.1.1.2.1">Values Tested</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A7.T7.1.2.1">
<td class="ltx_td ltx_align_left ltx_border_t" id="A7.T7.1.2.1.1">Retain Threshold</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A7.T7.1.2.1.2">0.01, 0.001, 0.005, 0.1, 1</td>
</tr>
<tr class="ltx_tr" id="A7.T7.1.3.2">
<td class="ltx_td ltx_align_left" id="A7.T7.1.3.2.1">Multiplier (Clamp Value)</td>
<td class="ltx_td ltx_align_left" id="A7.T7.1.3.2.2">10, 25, 50, 100, 200, 500</td>
</tr>
<tr class="ltx_tr" id="A7.T7.1.4.3">
<td class="ltx_td ltx_align_left ltx_border_bb" id="A7.T7.1.4.3.1">Number of Features</td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="A7.T7.1.4.3.2">5, 10, 20, 30, 50</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the hyperparameter settings explored for the static SAE clamping method from Farrell et al. (2024).  The authors investigated different retain thresholds to determine the sensitivity of the model's accuracy to the feature clamping mechanism. They also explored several clamp values (multipliers applied to the activations of the selected features). Finally, they varied the number of features used in the clamping process, examining the impact of these parameters on both the unlearning effectiveness (forget quality) and model utility preservation. The sequence length was held constant at 1024 tokens for all experiments.
> <details>
> <summary>read the caption</summary>
> Table 7: Hyperparameter sweep for Static SAE Clamping. Fixed value: Sequence Length=1024.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="A7.T8.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A7.T8.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="A7.T8.1.1.1.1"><span class="ltx_text ltx_font_bold" id="A7.T8.1.1.1.1.1">Hyperparameter</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="A7.T8.1.1.1.2"><span class="ltx_text ltx_font_bold" id="A7.T8.1.1.1.2.1">Values Tested</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A7.T8.1.2.1">
<td class="ltx_td ltx_align_left ltx_border_t" id="A7.T8.1.2.1.1">Learning Rate (lr)</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A7.T8.1.2.1.2">1e-5, 5e-5</td>
</tr>
<tr class="ltx_tr" id="A7.T8.1.3.2">
<td class="ltx_td ltx_align_left ltx_border_bb" id="A7.T8.1.3.2.1">Beta (Retain Loss Weight)</td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="A7.T8.1.3.2.2">0.01, 0.1, 1.0, 5.0, 10.0</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table shows the hyperparameter settings explored during the Gradient Ascent (GA) experiments for unlearning.  It details the values tested for the learning rate and the beta parameter (retain loss weight).  Gamma, batch size and the number of steps were held constant across all experiments for consistency. This is important for comparing the effectiveness of different learning rates and beta values on the overall performance of the unlearning process. The best configuration for WMDP-Bio unlearning was identified using these results.
> <details>
> <summary>read the caption</summary>
> Table 8: Hyperparameter sweep for Gradient Ascent. Fixed values: Gamma=1.0, Batch Size=8, Steps=400.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="A7.T9.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A7.T9.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="A7.T9.1.1.1.1"><span class="ltx_text ltx_font_bold" id="A7.T9.1.1.1.1.1">Hyperparameter</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="A7.T9.1.1.1.2"><span class="ltx_text ltx_font_bold" id="A7.T9.1.1.1.2.1">Values Tested</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A7.T9.1.2.1">
<td class="ltx_td ltx_align_left ltx_border_t" id="A7.T9.1.2.1.1">Alpha (Retain Loss Weight)</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A7.T9.1.2.1.2">0.01, 0.1, 1.0</td>
</tr>
<tr class="ltx_tr" id="A7.T9.1.3.2">
<td class="ltx_td ltx_align_left" id="A7.T9.1.3.2.1">Beta (Temperature Parameter)</td>
<td class="ltx_td ltx_align_left" id="A7.T9.1.3.2.2">0.1, 1.0</td>
</tr>
<tr class="ltx_tr" id="A7.T9.1.4.3">
<td class="ltx_td ltx_align_left ltx_border_bb" id="A7.T9.1.4.3.1">Retain Loss Type</td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="A7.T9.1.4.3.2">NLL, KL</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the hyperparameter settings used for the Negative Preference Optimization (NPO) unlearning method.  It shows the values tested for three key hyperparameters: alpha (controlling the weight of the retain loss), beta (the temperature parameter), and the type of retain loss used (either Negative Log-Likelihood or Kullback-Leibler divergence).  Gamma, learning rate, batch size, and the number of steps were fixed at 1.0, 1e-5, 8, and 400, respectively.
> <details>
> <summary>read the caption</summary>
> Table 9: Hyperparameter sweep for NPO. Fixed values: Gamma=1.0, Learning Rate=1e-5, Batch Size=8, Steps=400.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="A7.T10.4">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A7.T10.3.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="A7.T10.3.3.4" rowspan="2"><span class="ltx_text" id="A7.T10.3.3.4.1">Method</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A7.T10.1.1.1" rowspan="2"><span class="ltx_text" id="A7.T10.1.1.1.1">WMDP Cyber (<math alttext="\downarrow" class="ltx_Math" display="inline" id="A7.T10.1.1.1.1.m1.1"><semantics id="A7.T10.1.1.1.1.m1.1a"><mo id="A7.T10.1.1.1.1.m1.1.1" stretchy="false" xref="A7.T10.1.1.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="A7.T10.1.1.1.1.m1.1b"><ci id="A7.T10.1.1.1.1.m1.1.1.cmml" xref="A7.T10.1.1.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="A7.T10.1.1.1.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="A7.T10.1.1.1.1.m1.1d">↓</annotation></semantics></math>)</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="5" id="A7.T10.2.2.2">MMLU (<math alttext="\uparrow" class="ltx_Math" display="inline" id="A7.T10.2.2.2.m1.1"><semantics id="A7.T10.2.2.2.m1.1a"><mo id="A7.T10.2.2.2.m1.1.1" stretchy="false" xref="A7.T10.2.2.2.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="A7.T10.2.2.2.m1.1b"><ci id="A7.T10.2.2.2.m1.1.1.cmml" xref="A7.T10.2.2.2.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="A7.T10.2.2.2.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="A7.T10.2.2.2.m1.1d">↑</annotation></semantics></math>)</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A7.T10.3.3.3" rowspan="2"><span class="ltx_text" id="A7.T10.3.3.3.1">MT (<math alttext="\uparrow" class="ltx_Math" display="inline" id="A7.T10.3.3.3.1.m1.1"><semantics id="A7.T10.3.3.3.1.m1.1a"><mo id="A7.T10.3.3.3.1.m1.1.1" stretchy="false" xref="A7.T10.3.3.3.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="A7.T10.3.3.3.1.m1.1b"><ci id="A7.T10.3.3.3.1.m1.1.1.cmml" xref="A7.T10.3.3.3.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="A7.T10.3.3.3.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="A7.T10.3.3.3.1.m1.1d">↑</annotation></semantics></math>)</span></th>
</tr>
<tr class="ltx_tr" id="A7.T10.4.5.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A7.T10.4.5.1.1">HS Hist</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A7.T10.4.5.1.2">C. Bio</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A7.T10.4.5.1.3">HS Geo</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A7.T10.4.5.1.4">H. Aging</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A7.T10.4.5.1.5">All</th>
</tr>
<tr class="ltx_tr" id="A7.T10.4.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_t" id="A7.T10.4.4.1">Target <math alttext="\mathcal{M}" class="ltx_Math" display="inline" id="A7.T10.4.4.1.m1.1"><semantics id="A7.T10.4.4.1.m1.1a"><mi class="ltx_font_mathcaligraphic" id="A7.T10.4.4.1.m1.1.1" xref="A7.T10.4.4.1.m1.1.1.cmml">ℳ</mi><annotation-xml encoding="MathML-Content" id="A7.T10.4.4.1.m1.1b"><ci id="A7.T10.4.4.1.m1.1.1.cmml" xref="A7.T10.4.4.1.m1.1.1">ℳ</ci></annotation-xml><annotation encoding="application/x-tex" id="A7.T10.4.4.1.m1.1c">\mathcal{M}</annotation><annotation encoding="application/x-llamapun" id="A7.T10.4.4.1.m1.1d">caligraphic_M</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A7.T10.4.4.2">100.00</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A7.T10.4.4.3">100.00</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A7.T10.4.4.4">100.00</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A7.T10.4.4.5">100.00</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A7.T10.4.4.6">100.00</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A7.T10.4.4.7">100.00</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A7.T10.4.4.8">7.36</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A7.T10.4.6.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A7.T10.4.6.1.1">GA</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="A7.T10.4.6.1.2">98.91</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A7.T10.4.6.1.3">98.15</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A7.T10.4.6.1.4">100.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A7.T10.4.6.1.5">100.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A7.T10.4.6.1.6">100.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A7.T10.4.6.1.7">99.46</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A7.T10.4.6.1.8">7.39</td>
</tr>
<tr class="ltx_tr" id="A7.T10.4.7.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A7.T10.4.7.2.1">NPO</th>
<td class="ltx_td ltx_align_center" id="A7.T10.4.7.2.2">96.36</td>
<td class="ltx_td ltx_align_center" id="A7.T10.4.7.2.3">100.0</td>
<td class="ltx_td ltx_align_center" id="A7.T10.4.7.2.4">100.0</td>
<td class="ltx_td ltx_align_center" id="A7.T10.4.7.2.5">100.0</td>
<td class="ltx_td ltx_align_center" id="A7.T10.4.7.2.6">100.0</td>
<td class="ltx_td ltx_align_center" id="A7.T10.4.7.2.7">100.0</td>
<td class="ltx_td ltx_align_center" id="A7.T10.4.7.2.8">7.18</td>
</tr>
<tr class="ltx_tr" id="A7.T10.4.8.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A7.T10.4.8.3.1">SSD</th>
<td class="ltx_td ltx_align_center" id="A7.T10.4.8.3.2">98.91</td>
<td class="ltx_td ltx_align_center" id="A7.T10.4.8.3.3">100.00</td>
<td class="ltx_td ltx_align_center" id="A7.T10.4.8.3.4">100.00</td>
<td class="ltx_td ltx_align_center" id="A7.T10.4.8.3.5">98.08</td>
<td class="ltx_td ltx_align_center" id="A7.T10.4.8.3.6">98.81</td>
<td class="ltx_td ltx_align_center" id="A7.T10.4.8.3.7">99.19</td>
<td class="ltx_td ltx_align_center" id="A7.T10.4.8.3.8">7.25</td>
</tr>
<tr class="ltx_tr" id="A7.T10.4.9.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A7.T10.4.9.4.1">SCRUB</th>
<td class="ltx_td ltx_align_center" id="A7.T10.4.9.4.2">97.82</td>
<td class="ltx_td ltx_align_center" id="A7.T10.4.9.4.3">99.07</td>
<td class="ltx_td ltx_align_center" id="A7.T10.4.9.4.4">100.00</td>
<td class="ltx_td ltx_align_center" id="A7.T10.4.9.4.5">100.00</td>
<td class="ltx_td ltx_align_center" id="A7.T10.4.9.4.6">98.81</td>
<td class="ltx_td ltx_align_center" id="A7.T10.4.9.4.7">99.46</td>
<td class="ltx_td ltx_align_center" id="A7.T10.4.9.4.8">6.51</td>
</tr>
<tr class="ltx_tr" id="A7.T10.4.10.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A7.T10.4.10.5.1">Farrell et al.</th>
<td class="ltx_td ltx_align_center" id="A7.T10.4.10.5.2">52.73</td>
<td class="ltx_td ltx_align_center" id="A7.T10.4.10.5.3">99.07</td>
<td class="ltx_td ltx_align_center" id="A7.T10.4.10.5.4">100.00</td>
<td class="ltx_td ltx_align_center" id="A7.T10.4.10.5.5">100.00</td>
<td class="ltx_td ltx_align_center" id="A7.T10.4.10.5.6">97.62</td>
<td class="ltx_td ltx_align_center" id="A7.T10.4.10.5.7">99.19</td>
<td class="ltx_td ltx_align_center" id="A7.T10.4.10.5.8">7.39</td>
</tr>
<tr class="ltx_tr" id="A7.T10.4.11.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A7.T10.4.11.6.1">RMU</th>
<td class="ltx_td ltx_align_center" id="A7.T10.4.11.6.2">88.00</td>
<td class="ltx_td ltx_align_center" id="A7.T10.4.11.6.3">99.07</td>
<td class="ltx_td ltx_align_center" id="A7.T10.4.11.6.4">100.00</td>
<td class="ltx_td ltx_align_center" id="A7.T10.4.11.6.5">99.04</td>
<td class="ltx_td ltx_align_center" id="A7.T10.4.11.6.6">98.81</td>
<td class="ltx_td ltx_align_center" id="A7.T10.4.11.6.7">99.19</td>
<td class="ltx_td ltx_align_center" id="A7.T10.4.11.6.8">7.28</td>
</tr>
<tr class="ltx_tr" id="A7.T10.4.12.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_t" id="A7.T10.4.12.7.1"><span class="ltx_text ltx_font_bold" id="A7.T10.4.12.7.1.1">DSG (Ours)</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A7.T10.4.12.7.2">26.74</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A7.T10.4.12.7.3">99.07</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A7.T10.4.12.7.4">100.00</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A7.T10.4.12.7.5">100.00</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A7.T10.4.12.7.6">100.00</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A7.T10.4.12.7.7">99.73</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A7.T10.4.12.7.8">7.66</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of unlearning experiments on the WMDP-Cyber dataset.  It compares the performance of Dynamic Sparse Autoencoder Guardrails (DSG) against several baseline unlearning methods. The table shows the average performance across multiple metrics:  WMDP-Cyber accuracy (lower is better, as it indicates better forgetting of the target data), MMLU accuracy (higher is better, as it indicates better preservation of general knowledge), and MT-Bench scores (higher is better, representing fluency and quality of generated text). The standard deviation for the MT-Bench scores is 0.13, reflecting the variation across five runs.  The results demonstrate DSG's superior unlearning performance relative to the baselines, achieving a more favorable balance between forgetting unwanted knowledge and retaining useful information.
> <details>
> <summary>read the caption</summary>
> Table 10: Unlearning performance on WMDP-Cyber. All represents the average MMLU score. MT-Bench scores show 0.13 variance across 5 runs. DSG shows superior unlearning effectiveness compared to other baselines while maintaining high MMLU performance.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="A8.T11.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A8.T11.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="A8.T11.1.1.1.1"><span class="ltx_text ltx_font_bold" id="A8.T11.1.1.1.1.1">Unlearning Method</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A8.T11.1.1.1.2"><span class="ltx_text ltx_font_bold" id="A8.T11.1.1.1.2.1">NEWS</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A8.T11.1.1.1.3"><span class="ltx_text ltx_font_bold" id="A8.T11.1.1.1.3.1">BOOKS</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A8.T11.1.2.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A8.T11.1.2.1.1">GA</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="A8.T11.1.2.1.2">epoch 1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A8.T11.1.2.1.3">epoch 1</td>
</tr>
<tr class="ltx_tr" id="A8.T11.1.3.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A8.T11.1.3.2.1">GradDiff</th>
<td class="ltx_td ltx_align_center" id="A8.T11.1.3.2.2">epoch 2</td>
<td class="ltx_td ltx_align_center" id="A8.T11.1.3.2.3">epoch 3</td>
</tr>
<tr class="ltx_tr" id="A8.T11.1.4.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A8.T11.1.4.3.1">NPO</th>
<td class="ltx_td ltx_align_center" id="A8.T11.1.4.3.2">epoch 8</td>
<td class="ltx_td ltx_align_center" id="A8.T11.1.4.3.3">epoch 10</td>
</tr>
<tr class="ltx_tr" id="A8.T11.1.5.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A8.T11.1.5.4.1">SimNPO</th>
<td class="ltx_td ltx_align_center" id="A8.T11.1.5.4.2">epoch 10</td>
<td class="ltx_td ltx_align_center" id="A8.T11.1.5.4.3">epoch 10</td>
</tr>
<tr class="ltx_tr" id="A8.T11.1.6.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="A8.T11.1.6.5.1">RMU</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A8.T11.1.6.5.2">epoch 9</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A8.T11.1.6.5.3">epoch 10</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table shows the number of training epochs used for each baseline unlearning method on the MUSE benchmark. The optimal number of epochs for each method was determined using a utility-based stopping criterion, which means the training stopped when the model's performance on the retain set dropped below 90% of the target model's performance. This ensures a balance between effectively removing unwanted knowledge from the forget set and preserving the model's overall capabilities.
> <details>
> <summary>read the caption</summary>
> Table 11: Optimal epochs for baseline unlearning methods on MUSE benchmark, determined by utility-based stopping criteria.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="A10.T12.4">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A10.T12.4.5.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="A10.T12.4.5.1.1"><span class="ltx_text ltx_font_bold" id="A10.T12.4.5.1.1.1">Parameter</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="A10.T12.4.5.1.2"><span class="ltx_text ltx_font_bold" id="A10.T12.4.5.1.2.1">Value</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A10.T12.4.6.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A10.T12.4.6.1.1">SAE</th>
<td class="ltx_td ltx_align_left ltx_border_t" id="A10.T12.4.6.1.2">
<span class="ltx_text ltx_font_typewriter" id="A10.T12.4.6.1.2.1">gemma-scope-2b-pt-res</span> SAE (width 16k)</td>
</tr>
<tr class="ltx_tr" id="A10.T12.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A10.T12.1.1.2">SAE layer</th>
<td class="ltx_td ltx_align_left" id="A10.T12.1.1.1">Layer 3, <math alttext="\ell_{0}" class="ltx_Math" display="inline" id="A10.T12.1.1.1.m1.1"><semantics id="A10.T12.1.1.1.m1.1a"><msub id="A10.T12.1.1.1.m1.1.1" xref="A10.T12.1.1.1.m1.1.1.cmml"><mi id="A10.T12.1.1.1.m1.1.1.2" mathvariant="normal" xref="A10.T12.1.1.1.m1.1.1.2.cmml">ℓ</mi><mn id="A10.T12.1.1.1.m1.1.1.3" xref="A10.T12.1.1.1.m1.1.1.3.cmml">0</mn></msub><annotation-xml encoding="MathML-Content" id="A10.T12.1.1.1.m1.1b"><apply id="A10.T12.1.1.1.m1.1.1.cmml" xref="A10.T12.1.1.1.m1.1.1"><csymbol cd="ambiguous" id="A10.T12.1.1.1.m1.1.1.1.cmml" xref="A10.T12.1.1.1.m1.1.1">subscript</csymbol><ci id="A10.T12.1.1.1.m1.1.1.2.cmml" xref="A10.T12.1.1.1.m1.1.1.2">ℓ</ci><cn id="A10.T12.1.1.1.m1.1.1.3.cmml" type="integer" xref="A10.T12.1.1.1.m1.1.1.3">0</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="A10.T12.1.1.1.m1.1c">\ell_{0}</annotation><annotation encoding="application/x-llamapun" id="A10.T12.1.1.1.m1.1d">roman_ℓ start_POSTSUBSCRIPT 0 end_POSTSUBSCRIPT</annotation></semantics></math> 142</td>
</tr>
<tr class="ltx_tr" id="A10.T12.2.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A10.T12.2.2.1">Importance ratio percentile (<math alttext="p_{\text{ratio}}" class="ltx_Math" display="inline" id="A10.T12.2.2.1.m1.1"><semantics id="A10.T12.2.2.1.m1.1a"><msub id="A10.T12.2.2.1.m1.1.1" xref="A10.T12.2.2.1.m1.1.1.cmml"><mi id="A10.T12.2.2.1.m1.1.1.2" xref="A10.T12.2.2.1.m1.1.1.2.cmml">p</mi><mtext id="A10.T12.2.2.1.m1.1.1.3" xref="A10.T12.2.2.1.m1.1.1.3a.cmml">ratio</mtext></msub><annotation-xml encoding="MathML-Content" id="A10.T12.2.2.1.m1.1b"><apply id="A10.T12.2.2.1.m1.1.1.cmml" xref="A10.T12.2.2.1.m1.1.1"><csymbol cd="ambiguous" id="A10.T12.2.2.1.m1.1.1.1.cmml" xref="A10.T12.2.2.1.m1.1.1">subscript</csymbol><ci id="A10.T12.2.2.1.m1.1.1.2.cmml" xref="A10.T12.2.2.1.m1.1.1.2">𝑝</ci><ci id="A10.T12.2.2.1.m1.1.1.3a.cmml" xref="A10.T12.2.2.1.m1.1.1.3"><mtext id="A10.T12.2.2.1.m1.1.1.3.cmml" mathsize="70%" xref="A10.T12.2.2.1.m1.1.1.3">ratio</mtext></ci></apply></annotation-xml><annotation encoding="application/x-tex" id="A10.T12.2.2.1.m1.1c">p_{\text{ratio}}</annotation><annotation encoding="application/x-llamapun" id="A10.T12.2.2.1.m1.1d">italic_p start_POSTSUBSCRIPT ratio end_POSTSUBSCRIPT</annotation></semantics></math>)</th>
<td class="ltx_td ltx_align_left" id="A10.T12.2.2.2">95</td>
</tr>
<tr class="ltx_tr" id="A10.T12.3.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A10.T12.3.3.1">Dynamic threshold percentile (<math alttext="p_{\text{dyn}}" class="ltx_Math" display="inline" id="A10.T12.3.3.1.m1.1"><semantics id="A10.T12.3.3.1.m1.1a"><msub id="A10.T12.3.3.1.m1.1.1" xref="A10.T12.3.3.1.m1.1.1.cmml"><mi id="A10.T12.3.3.1.m1.1.1.2" xref="A10.T12.3.3.1.m1.1.1.2.cmml">p</mi><mtext id="A10.T12.3.3.1.m1.1.1.3" xref="A10.T12.3.3.1.m1.1.1.3a.cmml">dyn</mtext></msub><annotation-xml encoding="MathML-Content" id="A10.T12.3.3.1.m1.1b"><apply id="A10.T12.3.3.1.m1.1.1.cmml" xref="A10.T12.3.3.1.m1.1.1"><csymbol cd="ambiguous" id="A10.T12.3.3.1.m1.1.1.1.cmml" xref="A10.T12.3.3.1.m1.1.1">subscript</csymbol><ci id="A10.T12.3.3.1.m1.1.1.2.cmml" xref="A10.T12.3.3.1.m1.1.1.2">𝑝</ci><ci id="A10.T12.3.3.1.m1.1.1.3a.cmml" xref="A10.T12.3.3.1.m1.1.1.3"><mtext id="A10.T12.3.3.1.m1.1.1.3.cmml" mathsize="70%" xref="A10.T12.3.3.1.m1.1.1.3">dyn</mtext></ci></apply></annotation-xml><annotation encoding="application/x-tex" id="A10.T12.3.3.1.m1.1c">p_{\text{dyn}}</annotation><annotation encoding="application/x-llamapun" id="A10.T12.3.3.1.m1.1d">italic_p start_POSTSUBSCRIPT dyn end_POSTSUBSCRIPT</annotation></semantics></math>)</th>
<td class="ltx_td ltx_align_left" id="A10.T12.3.3.2">95</td>
</tr>
<tr class="ltx_tr" id="A10.T12.4.7.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A10.T12.4.7.2.1">Number of selected features</th>
<td class="ltx_td ltx_align_left" id="A10.T12.4.7.2.2">20</td>
</tr>
<tr class="ltx_tr" id="A10.T12.4.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="A10.T12.4.4.1">Clamp strength (<math alttext="c" class="ltx_Math" display="inline" id="A10.T12.4.4.1.m1.1"><semantics id="A10.T12.4.4.1.m1.1a"><mi id="A10.T12.4.4.1.m1.1.1" xref="A10.T12.4.4.1.m1.1.1.cmml">c</mi><annotation-xml encoding="MathML-Content" id="A10.T12.4.4.1.m1.1b"><ci id="A10.T12.4.4.1.m1.1.1.cmml" xref="A10.T12.4.4.1.m1.1.1">𝑐</ci></annotation-xml><annotation encoding="application/x-tex" id="A10.T12.4.4.1.m1.1c">c</annotation><annotation encoding="application/x-llamapun" id="A10.T12.4.4.1.m1.1d">italic_c</annotation></semantics></math>)</th>
<td class="ltx_td ltx_align_left ltx_border_bb" id="A10.T12.4.4.2">500</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table lists the hyperparameters used in the Dynamic SAE Guardrails (DSG) experiments conducted to evaluate the method's data efficiency.  It shows that the hyperparameters remained consistent across varying amounts of training data to isolate the effects of data size on performance.
> <details>
> <summary>read the caption</summary>
> Table 12: DSG hyperparameters for data efficiency experiments
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="A10.T13.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A10.T13.1.2.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="A10.T13.1.2.1.1"><span class="ltx_text ltx_font_bold" id="A10.T13.1.2.1.1.1">Parameter</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="A10.T13.1.2.1.2"><span class="ltx_text ltx_font_bold" id="A10.T13.1.2.1.2.1">Value</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A10.T13.1.3.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A10.T13.1.3.1.1">Steering coefficient</th>
<td class="ltx_td ltx_align_left ltx_border_t" id="A10.T13.1.3.1.2">400</td>
</tr>
<tr class="ltx_tr" id="A10.T13.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A10.T13.1.1.1">Alpha (<math alttext="\alpha" class="ltx_Math" display="inline" id="A10.T13.1.1.1.m1.1"><semantics id="A10.T13.1.1.1.m1.1a"><mi id="A10.T13.1.1.1.m1.1.1" xref="A10.T13.1.1.1.m1.1.1.cmml">α</mi><annotation-xml encoding="MathML-Content" id="A10.T13.1.1.1.m1.1b"><ci id="A10.T13.1.1.1.m1.1.1.cmml" xref="A10.T13.1.1.1.m1.1.1">𝛼</ci></annotation-xml><annotation encoding="application/x-tex" id="A10.T13.1.1.1.m1.1c">\alpha</annotation><annotation encoding="application/x-llamapun" id="A10.T13.1.1.1.m1.1d">italic_α</annotation></semantics></math>)</th>
<td class="ltx_td ltx_align_left" id="A10.T13.1.1.2">100</td>
</tr>
<tr class="ltx_tr" id="A10.T13.1.4.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A10.T13.1.4.2.1">Monitoring layer</th>
<td class="ltx_td ltx_align_left" id="A10.T13.1.4.2.2">3</td>
</tr>
<tr class="ltx_tr" id="A10.T13.1.5.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A10.T13.1.5.3.1">Learning rate</th>
<td class="ltx_td ltx_align_left" id="A10.T13.1.5.3.2">5e-6</td>
</tr>
<tr class="ltx_tr" id="A10.T13.1.6.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="A10.T13.1.6.4.1">Parameter subset</th>
<td class="ltx_td ltx_align_left ltx_border_bb" id="A10.T13.1.6.4.2">MLP layers only</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table lists the hyperparameters used for the Representation Misdirection Unlearning (RMU) method in the data efficiency experiments.  It shows the values used for each hyperparameter, including steering coefficient, alpha (regularization parameter), monitoring layer (the layer where the RMU intervention is applied), learning rate, and the specific parameters adjusted. The table specifically details the settings used when only adjusting the Multi-Layer Perceptron (MLP) layers within the model.
> <details>
> <summary>read the caption</summary>
> Table 13: RMU hyperparameters for data efficiency experiments
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="A10.T14.6">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A10.T14.6.7.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_tt" id="A10.T14.6.7.1.1"><span class="ltx_text ltx_font_bold" id="A10.T14.6.7.1.1.1">Parameter</span></th>
<td class="ltx_td ltx_align_left ltx_border_tt" id="A10.T14.6.7.1.2"><span class="ltx_text ltx_font_bold" id="A10.T14.6.7.1.2.1">WMDP-Bio</span></td>
<td class="ltx_td ltx_align_left ltx_border_tt" id="A10.T14.6.7.1.3"><span class="ltx_text ltx_font_bold" id="A10.T14.6.7.1.3.1">WMDP-Cyber</span></td>
</tr>
<tr class="ltx_tr" id="A10.T14.2.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A10.T14.2.2.3">SAE layer</th>
<td class="ltx_td ltx_align_left ltx_border_t" id="A10.T14.1.1.1">Layer 3, <math alttext="\ell_{0}" class="ltx_Math" display="inline" id="A10.T14.1.1.1.m1.1"><semantics id="A10.T14.1.1.1.m1.1a"><msub id="A10.T14.1.1.1.m1.1.1" xref="A10.T14.1.1.1.m1.1.1.cmml"><mi id="A10.T14.1.1.1.m1.1.1.2" mathvariant="normal" xref="A10.T14.1.1.1.m1.1.1.2.cmml">ℓ</mi><mn id="A10.T14.1.1.1.m1.1.1.3" xref="A10.T14.1.1.1.m1.1.1.3.cmml">0</mn></msub><annotation-xml encoding="MathML-Content" id="A10.T14.1.1.1.m1.1b"><apply id="A10.T14.1.1.1.m1.1.1.cmml" xref="A10.T14.1.1.1.m1.1.1"><csymbol cd="ambiguous" id="A10.T14.1.1.1.m1.1.1.1.cmml" xref="A10.T14.1.1.1.m1.1.1">subscript</csymbol><ci id="A10.T14.1.1.1.m1.1.1.2.cmml" xref="A10.T14.1.1.1.m1.1.1.2">ℓ</ci><cn id="A10.T14.1.1.1.m1.1.1.3.cmml" type="integer" xref="A10.T14.1.1.1.m1.1.1.3">0</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="A10.T14.1.1.1.m1.1c">\ell_{0}</annotation><annotation encoding="application/x-llamapun" id="A10.T14.1.1.1.m1.1d">roman_ℓ start_POSTSUBSCRIPT 0 end_POSTSUBSCRIPT</annotation></semantics></math> 59</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A10.T14.2.2.2">Layer 3, <math alttext="\ell_{0}" class="ltx_Math" display="inline" id="A10.T14.2.2.2.m1.1"><semantics id="A10.T14.2.2.2.m1.1a"><msub id="A10.T14.2.2.2.m1.1.1" xref="A10.T14.2.2.2.m1.1.1.cmml"><mi id="A10.T14.2.2.2.m1.1.1.2" mathvariant="normal" xref="A10.T14.2.2.2.m1.1.1.2.cmml">ℓ</mi><mn id="A10.T14.2.2.2.m1.1.1.3" xref="A10.T14.2.2.2.m1.1.1.3.cmml">0</mn></msub><annotation-xml encoding="MathML-Content" id="A10.T14.2.2.2.m1.1b"><apply id="A10.T14.2.2.2.m1.1.1.cmml" xref="A10.T14.2.2.2.m1.1.1"><csymbol cd="ambiguous" id="A10.T14.2.2.2.m1.1.1.1.cmml" xref="A10.T14.2.2.2.m1.1.1">subscript</csymbol><ci id="A10.T14.2.2.2.m1.1.1.2.cmml" xref="A10.T14.2.2.2.m1.1.1.2">ℓ</ci><cn id="A10.T14.2.2.2.m1.1.1.3.cmml" type="integer" xref="A10.T14.2.2.2.m1.1.1.3">0</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="A10.T14.2.2.2.m1.1c">\ell_{0}</annotation><annotation encoding="application/x-llamapun" id="A10.T14.2.2.2.m1.1d">roman_ℓ start_POSTSUBSCRIPT 0 end_POSTSUBSCRIPT</annotation></semantics></math> 59</td>
</tr>
<tr class="ltx_tr" id="A10.T14.3.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A10.T14.3.3.1">Importance ratio percentile (<math alttext="p_{\text{ratio}}" class="ltx_Math" display="inline" id="A10.T14.3.3.1.m1.1"><semantics id="A10.T14.3.3.1.m1.1a"><msub id="A10.T14.3.3.1.m1.1.1" xref="A10.T14.3.3.1.m1.1.1.cmml"><mi id="A10.T14.3.3.1.m1.1.1.2" xref="A10.T14.3.3.1.m1.1.1.2.cmml">p</mi><mtext id="A10.T14.3.3.1.m1.1.1.3" xref="A10.T14.3.3.1.m1.1.1.3a.cmml">ratio</mtext></msub><annotation-xml encoding="MathML-Content" id="A10.T14.3.3.1.m1.1b"><apply id="A10.T14.3.3.1.m1.1.1.cmml" xref="A10.T14.3.3.1.m1.1.1"><csymbol cd="ambiguous" id="A10.T14.3.3.1.m1.1.1.1.cmml" xref="A10.T14.3.3.1.m1.1.1">subscript</csymbol><ci id="A10.T14.3.3.1.m1.1.1.2.cmml" xref="A10.T14.3.3.1.m1.1.1.2">𝑝</ci><ci id="A10.T14.3.3.1.m1.1.1.3a.cmml" xref="A10.T14.3.3.1.m1.1.1.3"><mtext id="A10.T14.3.3.1.m1.1.1.3.cmml" mathsize="70%" xref="A10.T14.3.3.1.m1.1.1.3">ratio</mtext></ci></apply></annotation-xml><annotation encoding="application/x-tex" id="A10.T14.3.3.1.m1.1c">p_{\text{ratio}}</annotation><annotation encoding="application/x-llamapun" id="A10.T14.3.3.1.m1.1d">italic_p start_POSTSUBSCRIPT ratio end_POSTSUBSCRIPT</annotation></semantics></math>)</th>
<td class="ltx_td ltx_align_left" id="A10.T14.3.3.2">95</td>
<td class="ltx_td ltx_align_left" id="A10.T14.3.3.3">90</td>
</tr>
<tr class="ltx_tr" id="A10.T14.6.8.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A10.T14.6.8.2.1">Feature selection</th>
<td class="ltx_td ltx_align_left" id="A10.T14.6.8.2.2">20 features</td>
<td class="ltx_td ltx_align_left" id="A10.T14.6.8.2.3">20 features via</td>
</tr>
<tr class="ltx_tr" id="A10.T14.4.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A10.T14.4.4.1">Clamp strength (<math alttext="c" class="ltx_Math" display="inline" id="A10.T14.4.4.1.m1.1"><semantics id="A10.T14.4.4.1.m1.1a"><mi id="A10.T14.4.4.1.m1.1.1" xref="A10.T14.4.4.1.m1.1.1.cmml">c</mi><annotation-xml encoding="MathML-Content" id="A10.T14.4.4.1.m1.1b"><ci id="A10.T14.4.4.1.m1.1.1.cmml" xref="A10.T14.4.4.1.m1.1.1">𝑐</ci></annotation-xml><annotation encoding="application/x-tex" id="A10.T14.4.4.1.m1.1c">c</annotation><annotation encoding="application/x-llamapun" id="A10.T14.4.4.1.m1.1d">italic_c</annotation></semantics></math>)</th>
<td class="ltx_td ltx_align_left" id="A10.T14.4.4.2">500</td>
<td class="ltx_td ltx_align_left" id="A10.T14.4.4.3">500</td>
</tr>
<tr class="ltx_tr" id="A10.T14.5.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A10.T14.5.5.1">
<math alttext="\tau" class="ltx_Math" display="inline" id="A10.T14.5.5.1.m1.1"><semantics id="A10.T14.5.5.1.m1.1a"><mi id="A10.T14.5.5.1.m1.1.1" xref="A10.T14.5.5.1.m1.1.1.cmml">τ</mi><annotation-xml encoding="MathML-Content" id="A10.T14.5.5.1.m1.1b"><ci id="A10.T14.5.5.1.m1.1.1.cmml" xref="A10.T14.5.5.1.m1.1.1">𝜏</ci></annotation-xml><annotation encoding="application/x-tex" id="A10.T14.5.5.1.m1.1c">\tau</annotation><annotation encoding="application/x-llamapun" id="A10.T14.5.5.1.m1.1d">italic_τ</annotation></semantics></math> range tested</th>
<td class="ltx_td ltx_align_left" id="A10.T14.5.5.2">0.1 to 0.9 (increments of 0.1)</td>
<td class="ltx_td ltx_align_left" id="A10.T14.5.5.3">0.1 to 0.9 (increments of 0.1)</td>
</tr>
<tr class="ltx_tr" id="A10.T14.6.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="A10.T14.6.6.1">Optimal <math alttext="\tau" class="ltx_Math" display="inline" id="A10.T14.6.6.1.m1.1"><semantics id="A10.T14.6.6.1.m1.1a"><mi id="A10.T14.6.6.1.m1.1.1" xref="A10.T14.6.6.1.m1.1.1.cmml">τ</mi><annotation-xml encoding="MathML-Content" id="A10.T14.6.6.1.m1.1b"><ci id="A10.T14.6.6.1.m1.1.1.cmml" xref="A10.T14.6.6.1.m1.1.1">𝜏</ci></annotation-xml><annotation encoding="application/x-tex" id="A10.T14.6.6.1.m1.1c">\tau</annotation><annotation encoding="application/x-llamapun" id="A10.T14.6.6.1.m1.1d">italic_τ</annotation></semantics></math>
</th>
<td class="ltx_td ltx_align_left ltx_border_bb" id="A10.T14.6.6.2">0.6</td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="A10.T14.6.6.3">0.2</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the hyperparameters used in the zero-shot experiments of the paper. Zero-shot experiments refer to experiments where no domain-specific training data (i.e., neither forget nor retain data) is available for model fine-tuning. Instead, feature selection is performed using external knowledge resources (Neuropedia API) to identify features related to the target knowledge domains (biosecurity and cybersecurity). The table shows the configurations for both WMDP-Bio and WMDP-Cyber datasets, listing the SAE layer used for feature extraction, the importance ratio percentile for feature selection, the number of features selected, the clamp strength, and the range of dynamic thresholds tested.  The optimal dynamic threshold values are also provided, showing the specific values that yielded the best results for each dataset.
> <details>
> <summary>read the caption</summary>
> Table 14: Hyperparameters for zero-shot experiments
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="A12.T15.9">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A12.T15.9.10.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="A12.T15.9.10.1.1"><span class="ltx_text ltx_font_bold" id="A12.T15.9.10.1.1.1">Seq Length</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A12.T15.9.10.1.2"><span class="ltx_text ltx_font_bold" id="A12.T15.9.10.1.2.1">Original Model (s)</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A12.T15.9.10.1.3"><span class="ltx_text ltx_font_bold" id="A12.T15.9.10.1.3.1">Static Clamping (s)</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A12.T15.9.10.1.4"><span class="ltx_text ltx_font_bold" id="A12.T15.9.10.1.4.1">Dynamic Clamping (DSG) (s)</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A12.T15.3.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A12.T15.3.3.4">256 tokens</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="A12.T15.1.1.1"><math alttext="0.0872\pm 0.0098" class="ltx_Math" display="inline" id="A12.T15.1.1.1.m1.1"><semantics id="A12.T15.1.1.1.m1.1a"><mrow id="A12.T15.1.1.1.m1.1.1" xref="A12.T15.1.1.1.m1.1.1.cmml"><mn id="A12.T15.1.1.1.m1.1.1.2" xref="A12.T15.1.1.1.m1.1.1.2.cmml">0.0872</mn><mo id="A12.T15.1.1.1.m1.1.1.1" xref="A12.T15.1.1.1.m1.1.1.1.cmml">±</mo><mn id="A12.T15.1.1.1.m1.1.1.3" xref="A12.T15.1.1.1.m1.1.1.3.cmml">0.0098</mn></mrow><annotation-xml encoding="MathML-Content" id="A12.T15.1.1.1.m1.1b"><apply id="A12.T15.1.1.1.m1.1.1.cmml" xref="A12.T15.1.1.1.m1.1.1"><csymbol cd="latexml" id="A12.T15.1.1.1.m1.1.1.1.cmml" xref="A12.T15.1.1.1.m1.1.1.1">plus-or-minus</csymbol><cn id="A12.T15.1.1.1.m1.1.1.2.cmml" type="float" xref="A12.T15.1.1.1.m1.1.1.2">0.0872</cn><cn id="A12.T15.1.1.1.m1.1.1.3.cmml" type="float" xref="A12.T15.1.1.1.m1.1.1.3">0.0098</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="A12.T15.1.1.1.m1.1c">0.0872\pm 0.0098</annotation><annotation encoding="application/x-llamapun" id="A12.T15.1.1.1.m1.1d">0.0872 ± 0.0098</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A12.T15.2.2.2">
<math alttext="0.0933\pm 0.0091" class="ltx_Math" display="inline" id="A12.T15.2.2.2.m1.1"><semantics id="A12.T15.2.2.2.m1.1a"><mrow id="A12.T15.2.2.2.m1.1.1" xref="A12.T15.2.2.2.m1.1.1.cmml"><mn id="A12.T15.2.2.2.m1.1.1.2" xref="A12.T15.2.2.2.m1.1.1.2.cmml">0.0933</mn><mo id="A12.T15.2.2.2.m1.1.1.1" xref="A12.T15.2.2.2.m1.1.1.1.cmml">±</mo><mn id="A12.T15.2.2.2.m1.1.1.3" xref="A12.T15.2.2.2.m1.1.1.3.cmml">0.0091</mn></mrow><annotation-xml encoding="MathML-Content" id="A12.T15.2.2.2.m1.1b"><apply id="A12.T15.2.2.2.m1.1.1.cmml" xref="A12.T15.2.2.2.m1.1.1"><csymbol cd="latexml" id="A12.T15.2.2.2.m1.1.1.1.cmml" xref="A12.T15.2.2.2.m1.1.1.1">plus-or-minus</csymbol><cn id="A12.T15.2.2.2.m1.1.1.2.cmml" type="float" xref="A12.T15.2.2.2.m1.1.1.2">0.0933</cn><cn id="A12.T15.2.2.2.m1.1.1.3.cmml" type="float" xref="A12.T15.2.2.2.m1.1.1.3">0.0091</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="A12.T15.2.2.2.m1.1c">0.0933\pm 0.0091</annotation><annotation encoding="application/x-llamapun" id="A12.T15.2.2.2.m1.1d">0.0933 ± 0.0091</annotation></semantics></math> (+7.0%)</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A12.T15.3.3.3">
<math alttext="0.0936\pm 0.0090" class="ltx_Math" display="inline" id="A12.T15.3.3.3.m1.1"><semantics id="A12.T15.3.3.3.m1.1a"><mrow id="A12.T15.3.3.3.m1.1.1" xref="A12.T15.3.3.3.m1.1.1.cmml"><mn id="A12.T15.3.3.3.m1.1.1.2" xref="A12.T15.3.3.3.m1.1.1.2.cmml">0.0936</mn><mo id="A12.T15.3.3.3.m1.1.1.1" xref="A12.T15.3.3.3.m1.1.1.1.cmml">±</mo><mn id="A12.T15.3.3.3.m1.1.1.3" xref="A12.T15.3.3.3.m1.1.1.3.cmml">0.0090</mn></mrow><annotation-xml encoding="MathML-Content" id="A12.T15.3.3.3.m1.1b"><apply id="A12.T15.3.3.3.m1.1.1.cmml" xref="A12.T15.3.3.3.m1.1.1"><csymbol cd="latexml" id="A12.T15.3.3.3.m1.1.1.1.cmml" xref="A12.T15.3.3.3.m1.1.1.1">plus-or-minus</csymbol><cn id="A12.T15.3.3.3.m1.1.1.2.cmml" type="float" xref="A12.T15.3.3.3.m1.1.1.2">0.0936</cn><cn id="A12.T15.3.3.3.m1.1.1.3.cmml" type="float" xref="A12.T15.3.3.3.m1.1.1.3">0.0090</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="A12.T15.3.3.3.m1.1c">0.0936\pm 0.0090</annotation><annotation encoding="application/x-llamapun" id="A12.T15.3.3.3.m1.1d">0.0936 ± 0.0090</annotation></semantics></math> (+7.3%)</td>
</tr>
<tr class="ltx_tr" id="A12.T15.6.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A12.T15.6.6.4">512 tokens</th>
<td class="ltx_td ltx_align_center" id="A12.T15.4.4.1"><math alttext="0.1618\pm 0.0061" class="ltx_Math" display="inline" id="A12.T15.4.4.1.m1.1"><semantics id="A12.T15.4.4.1.m1.1a"><mrow id="A12.T15.4.4.1.m1.1.1" xref="A12.T15.4.4.1.m1.1.1.cmml"><mn id="A12.T15.4.4.1.m1.1.1.2" xref="A12.T15.4.4.1.m1.1.1.2.cmml">0.1618</mn><mo id="A12.T15.4.4.1.m1.1.1.1" xref="A12.T15.4.4.1.m1.1.1.1.cmml">±</mo><mn id="A12.T15.4.4.1.m1.1.1.3" xref="A12.T15.4.4.1.m1.1.1.3.cmml">0.0061</mn></mrow><annotation-xml encoding="MathML-Content" id="A12.T15.4.4.1.m1.1b"><apply id="A12.T15.4.4.1.m1.1.1.cmml" xref="A12.T15.4.4.1.m1.1.1"><csymbol cd="latexml" id="A12.T15.4.4.1.m1.1.1.1.cmml" xref="A12.T15.4.4.1.m1.1.1.1">plus-or-minus</csymbol><cn id="A12.T15.4.4.1.m1.1.1.2.cmml" type="float" xref="A12.T15.4.4.1.m1.1.1.2">0.1618</cn><cn id="A12.T15.4.4.1.m1.1.1.3.cmml" type="float" xref="A12.T15.4.4.1.m1.1.1.3">0.0061</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="A12.T15.4.4.1.m1.1c">0.1618\pm 0.0061</annotation><annotation encoding="application/x-llamapun" id="A12.T15.4.4.1.m1.1d">0.1618 ± 0.0061</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="A12.T15.5.5.2">
<math alttext="0.1659\pm 0.0029" class="ltx_Math" display="inline" id="A12.T15.5.5.2.m1.1"><semantics id="A12.T15.5.5.2.m1.1a"><mrow id="A12.T15.5.5.2.m1.1.1" xref="A12.T15.5.5.2.m1.1.1.cmml"><mn id="A12.T15.5.5.2.m1.1.1.2" xref="A12.T15.5.5.2.m1.1.1.2.cmml">0.1659</mn><mo id="A12.T15.5.5.2.m1.1.1.1" xref="A12.T15.5.5.2.m1.1.1.1.cmml">±</mo><mn id="A12.T15.5.5.2.m1.1.1.3" xref="A12.T15.5.5.2.m1.1.1.3.cmml">0.0029</mn></mrow><annotation-xml encoding="MathML-Content" id="A12.T15.5.5.2.m1.1b"><apply id="A12.T15.5.5.2.m1.1.1.cmml" xref="A12.T15.5.5.2.m1.1.1"><csymbol cd="latexml" id="A12.T15.5.5.2.m1.1.1.1.cmml" xref="A12.T15.5.5.2.m1.1.1.1">plus-or-minus</csymbol><cn id="A12.T15.5.5.2.m1.1.1.2.cmml" type="float" xref="A12.T15.5.5.2.m1.1.1.2">0.1659</cn><cn id="A12.T15.5.5.2.m1.1.1.3.cmml" type="float" xref="A12.T15.5.5.2.m1.1.1.3">0.0029</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="A12.T15.5.5.2.m1.1c">0.1659\pm 0.0029</annotation><annotation encoding="application/x-llamapun" id="A12.T15.5.5.2.m1.1d">0.1659 ± 0.0029</annotation></semantics></math> (+2.5%)</td>
<td class="ltx_td ltx_align_center" id="A12.T15.6.6.3">
<math alttext="0.1676\pm 0.0047" class="ltx_Math" display="inline" id="A12.T15.6.6.3.m1.1"><semantics id="A12.T15.6.6.3.m1.1a"><mrow id="A12.T15.6.6.3.m1.1.1" xref="A12.T15.6.6.3.m1.1.1.cmml"><mn id="A12.T15.6.6.3.m1.1.1.2" xref="A12.T15.6.6.3.m1.1.1.2.cmml">0.1676</mn><mo id="A12.T15.6.6.3.m1.1.1.1" xref="A12.T15.6.6.3.m1.1.1.1.cmml">±</mo><mn id="A12.T15.6.6.3.m1.1.1.3" xref="A12.T15.6.6.3.m1.1.1.3.cmml">0.0047</mn></mrow><annotation-xml encoding="MathML-Content" id="A12.T15.6.6.3.m1.1b"><apply id="A12.T15.6.6.3.m1.1.1.cmml" xref="A12.T15.6.6.3.m1.1.1"><csymbol cd="latexml" id="A12.T15.6.6.3.m1.1.1.1.cmml" xref="A12.T15.6.6.3.m1.1.1.1">plus-or-minus</csymbol><cn id="A12.T15.6.6.3.m1.1.1.2.cmml" type="float" xref="A12.T15.6.6.3.m1.1.1.2">0.1676</cn><cn id="A12.T15.6.6.3.m1.1.1.3.cmml" type="float" xref="A12.T15.6.6.3.m1.1.1.3">0.0047</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="A12.T15.6.6.3.m1.1c">0.1676\pm 0.0047</annotation><annotation encoding="application/x-llamapun" id="A12.T15.6.6.3.m1.1d">0.1676 ± 0.0047</annotation></semantics></math> (+3.6%)</td>
</tr>
<tr class="ltx_tr" id="A12.T15.9.9">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="A12.T15.9.9.4">1024 tokens</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A12.T15.7.7.1"><math alttext="0.3300\pm 0.0081" class="ltx_Math" display="inline" id="A12.T15.7.7.1.m1.1"><semantics id="A12.T15.7.7.1.m1.1a"><mrow id="A12.T15.7.7.1.m1.1.1" xref="A12.T15.7.7.1.m1.1.1.cmml"><mn id="A12.T15.7.7.1.m1.1.1.2" xref="A12.T15.7.7.1.m1.1.1.2.cmml">0.3300</mn><mo id="A12.T15.7.7.1.m1.1.1.1" xref="A12.T15.7.7.1.m1.1.1.1.cmml">±</mo><mn id="A12.T15.7.7.1.m1.1.1.3" xref="A12.T15.7.7.1.m1.1.1.3.cmml">0.0081</mn></mrow><annotation-xml encoding="MathML-Content" id="A12.T15.7.7.1.m1.1b"><apply id="A12.T15.7.7.1.m1.1.1.cmml" xref="A12.T15.7.7.1.m1.1.1"><csymbol cd="latexml" id="A12.T15.7.7.1.m1.1.1.1.cmml" xref="A12.T15.7.7.1.m1.1.1.1">plus-or-minus</csymbol><cn id="A12.T15.7.7.1.m1.1.1.2.cmml" type="float" xref="A12.T15.7.7.1.m1.1.1.2">0.3300</cn><cn id="A12.T15.7.7.1.m1.1.1.3.cmml" type="float" xref="A12.T15.7.7.1.m1.1.1.3">0.0081</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="A12.T15.7.7.1.m1.1c">0.3300\pm 0.0081</annotation><annotation encoding="application/x-llamapun" id="A12.T15.7.7.1.m1.1d">0.3300 ± 0.0081</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A12.T15.8.8.2">
<math alttext="0.3403\pm 0.0083" class="ltx_Math" display="inline" id="A12.T15.8.8.2.m1.1"><semantics id="A12.T15.8.8.2.m1.1a"><mrow id="A12.T15.8.8.2.m1.1.1" xref="A12.T15.8.8.2.m1.1.1.cmml"><mn id="A12.T15.8.8.2.m1.1.1.2" xref="A12.T15.8.8.2.m1.1.1.2.cmml">0.3403</mn><mo id="A12.T15.8.8.2.m1.1.1.1" xref="A12.T15.8.8.2.m1.1.1.1.cmml">±</mo><mn id="A12.T15.8.8.2.m1.1.1.3" xref="A12.T15.8.8.2.m1.1.1.3.cmml">0.0083</mn></mrow><annotation-xml encoding="MathML-Content" id="A12.T15.8.8.2.m1.1b"><apply id="A12.T15.8.8.2.m1.1.1.cmml" xref="A12.T15.8.8.2.m1.1.1"><csymbol cd="latexml" id="A12.T15.8.8.2.m1.1.1.1.cmml" xref="A12.T15.8.8.2.m1.1.1.1">plus-or-minus</csymbol><cn id="A12.T15.8.8.2.m1.1.1.2.cmml" type="float" xref="A12.T15.8.8.2.m1.1.1.2">0.3403</cn><cn id="A12.T15.8.8.2.m1.1.1.3.cmml" type="float" xref="A12.T15.8.8.2.m1.1.1.3">0.0083</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="A12.T15.8.8.2.m1.1c">0.3403\pm 0.0083</annotation><annotation encoding="application/x-llamapun" id="A12.T15.8.8.2.m1.1d">0.3403 ± 0.0083</annotation></semantics></math> (+3.1%)</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A12.T15.9.9.3">
<math alttext="0.3420\pm 0.0081" class="ltx_Math" display="inline" id="A12.T15.9.9.3.m1.1"><semantics id="A12.T15.9.9.3.m1.1a"><mrow id="A12.T15.9.9.3.m1.1.1" xref="A12.T15.9.9.3.m1.1.1.cmml"><mn id="A12.T15.9.9.3.m1.1.1.2" xref="A12.T15.9.9.3.m1.1.1.2.cmml">0.3420</mn><mo id="A12.T15.9.9.3.m1.1.1.1" xref="A12.T15.9.9.3.m1.1.1.1.cmml">±</mo><mn id="A12.T15.9.9.3.m1.1.1.3" xref="A12.T15.9.9.3.m1.1.1.3.cmml">0.0081</mn></mrow><annotation-xml encoding="MathML-Content" id="A12.T15.9.9.3.m1.1b"><apply id="A12.T15.9.9.3.m1.1.1.cmml" xref="A12.T15.9.9.3.m1.1.1"><csymbol cd="latexml" id="A12.T15.9.9.3.m1.1.1.1.cmml" xref="A12.T15.9.9.3.m1.1.1.1">plus-or-minus</csymbol><cn id="A12.T15.9.9.3.m1.1.1.2.cmml" type="float" xref="A12.T15.9.9.3.m1.1.1.2">0.3420</cn><cn id="A12.T15.9.9.3.m1.1.1.3.cmml" type="float" xref="A12.T15.9.9.3.m1.1.1.3">0.0081</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="A12.T15.9.9.3.m1.1c">0.3420\pm 0.0081</annotation><annotation encoding="application/x-llamapun" id="A12.T15.9.9.3.m1.1d">0.3420 ± 0.0081</annotation></semantics></math> (+3.6%)</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a comparison of inference latency (time taken for processing) across different sequence lengths (256, 512, and 1024 tokens) for three models: the original language model (gemma-2-2b-it) without any unlearning intervention; the same model with a static SAE clamping method applied; and the same model with the Dynamic SAE Guardrails (DSG) method applied.  The measurements were averaged over 100 samples (batches of 1 sequence each) processed on a single NVIDIA A6000 GPU. The results show the mean inference time in seconds, along with the standard deviation (±std).  Percentage increases in latency relative to the original model are provided in parentheses for the static and dynamic methods. This helps quantify the computational overhead introduced by the SAE and the DSG intervention.
> <details>
> <summary>read the caption</summary>
> Table 15: Comparison of Inference Latency Across Sequence Lengths for gemma-2-2b-it with gemma-scope-2b-pt-res SAE. Data reported as mean ±plus-or-minus\pm± std over 100 samples on a single A6000 GPU. Percentage increase relative to the Original Model shown in parentheses.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="A13.T16.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A13.T16.1.1.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_th_row" colspan="2" id="A13.T16.1.1.1.1"><span class="ltx_text ltx_font_bold" id="A13.T16.1.1.1.1.1">Biology</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A13.T16.1.2.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_t" id="A13.T16.1.2.1.1"><span class="ltx_text ltx_font_bold" id="A13.T16.1.2.1.1.1">ID</span></th>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A13.T16.1.2.1.2">
<span class="ltx_inline-block ltx_align_top" id="A13.T16.1.2.1.2.1">
<span class="ltx_p" id="A13.T16.1.2.1.2.1.1" style="width:341.4pt;"><span class="ltx_text ltx_font_bold" id="A13.T16.1.2.1.2.1.1.1">Sentence</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A13.T16.1.3.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_t" id="A13.T16.1.3.2.1">12382</th>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A13.T16.1.3.2.2">
<span class="ltx_inline-block ltx_align_top" id="A13.T16.1.3.2.2.1">
<span class="ltx_p" id="A13.T16.1.3.2.2.1.1" style="width:341.4pt;">Terms related to biological processes and structures in living organisms</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A13.T16.1.4.3">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="A13.T16.1.4.3.1">9722</th>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A13.T16.1.4.3.2">
<span class="ltx_inline-block ltx_align_top" id="A13.T16.1.4.3.2.1">
<span class="ltx_p" id="A13.T16.1.4.3.2.1.1" style="width:341.4pt;">Concepts related to biological processes and systems</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A13.T16.1.5.4">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="A13.T16.1.5.4.1">343</th>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A13.T16.1.5.4.2">
<span class="ltx_inline-block ltx_align_top" id="A13.T16.1.5.4.2.1">
<span class="ltx_p" id="A13.T16.1.5.4.2.1.1" style="width:341.4pt;">Terms related to biological processes and laboratory techniques</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A13.T16.1.6.5">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="A13.T16.1.6.5.1">373</th>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A13.T16.1.6.5.2">
<span class="ltx_inline-block ltx_align_top" id="A13.T16.1.6.5.2.1">
<span class="ltx_p" id="A13.T16.1.6.5.2.1.1" style="width:341.4pt;">Scientific terminology related to biological processes and cellular functions</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A13.T16.1.7.6">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="A13.T16.1.7.6.1">11</th>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A13.T16.1.7.6.2">
<span class="ltx_inline-block ltx_align_top" id="A13.T16.1.7.6.2.1">
<span class="ltx_p" id="A13.T16.1.7.6.2.1.1" style="width:341.4pt;">Scientific terms and concepts related to biology</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A13.T16.1.8.7">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="A13.T16.1.8.7.1">15969</th>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A13.T16.1.8.7.2">
<span class="ltx_inline-block ltx_align_top" id="A13.T16.1.8.7.2.1">
<span class="ltx_p" id="A13.T16.1.8.7.2.1.1" style="width:341.4pt;">Terms related to biotechnology and bio-related fields</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A13.T16.1.9.8">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="A13.T16.1.9.8.1">12117</th>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A13.T16.1.9.8.2">
<span class="ltx_inline-block ltx_align_top" id="A13.T16.1.9.8.2.1">
<span class="ltx_p" id="A13.T16.1.9.8.2.1.1" style="width:341.4pt;">Concepts related to biological or cellular processes and conditions, particularly focusing on requirements, limitations, and energy dynamics</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A13.T16.1.10.9">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="A13.T16.1.10.9.1">5877</th>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A13.T16.1.10.9.2">
<span class="ltx_inline-block ltx_align_top" id="A13.T16.1.10.9.2.1">
<span class="ltx_p" id="A13.T16.1.10.9.2.1.1" style="width:341.4pt;">Terms related to biological processes and molecular interactions</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A13.T16.1.11.10">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="A13.T16.1.11.10.1">968</th>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A13.T16.1.11.10.2">
<span class="ltx_inline-block ltx_align_top" id="A13.T16.1.11.10.2.1">
<span class="ltx_p" id="A13.T16.1.11.10.2.1.1" style="width:341.4pt;">Terms related to biological or medical processes and conditions, especially those involving cellular or molecular biology</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A13.T16.1.12.11">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="A13.T16.1.12.11.1">622</th>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A13.T16.1.12.11.2">
<span class="ltx_inline-block ltx_align_top" id="A13.T16.1.12.11.2.1">
<span class="ltx_p" id="A13.T16.1.12.11.2.1.1" style="width:341.4pt;">Scientific terminology related to cellular processes and functions</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A13.T16.1.13.12">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="A13.T16.1.13.12.1">5231</th>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A13.T16.1.13.12.2">
<span class="ltx_inline-block ltx_align_top" id="A13.T16.1.13.12.2.1">
<span class="ltx_p" id="A13.T16.1.13.12.2.1.1" style="width:341.4pt;">Specific terminology related to biological processes and gene expression</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A13.T16.1.14.13">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="A13.T16.1.14.13.1">10546</th>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A13.T16.1.14.13.2">
<span class="ltx_inline-block ltx_align_top" id="A13.T16.1.14.13.2.1">
<span class="ltx_p" id="A13.T16.1.14.13.2.1.1" style="width:341.4pt;">Biological and genetic terms or sequences</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A13.T16.1.15.14">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="A13.T16.1.15.14.1">12037</th>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A13.T16.1.15.14.2">
<span class="ltx_inline-block ltx_align_top" id="A13.T16.1.15.14.2.1">
<span class="ltx_p" id="A13.T16.1.15.14.2.1.1" style="width:341.4pt;">Medical terms and technical jargon related to genetic and biological research</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A13.T16.1.16.15">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="A13.T16.1.16.15.1">6150</th>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A13.T16.1.16.15.2">
<span class="ltx_inline-block ltx_align_top" id="A13.T16.1.16.15.2.1">
<span class="ltx_p" id="A13.T16.1.16.15.2.1.1" style="width:341.4pt;">Elements related to scientific terminology, particularly in genetics and molecular biology</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A13.T16.1.17.16">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="A13.T16.1.17.16.1">5704</th>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A13.T16.1.17.16.2">
<span class="ltx_inline-block ltx_align_top" id="A13.T16.1.17.16.2.1">
<span class="ltx_p" id="A13.T16.1.17.16.2.1.1" style="width:341.4pt;">Scientific terms and jargon related to biological research</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A13.T16.1.18.17">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="A13.T16.1.18.17.1">14747</th>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A13.T16.1.18.17.2">
<span class="ltx_inline-block ltx_align_top" id="A13.T16.1.18.17.2.1">
<span class="ltx_p" id="A13.T16.1.18.17.2.1.1" style="width:341.4pt;">Technical terminology and references related to biotechnology and medical research</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A13.T16.1.19.18">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="A13.T16.1.19.18.1">8786</th>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A13.T16.1.19.18.2">
<span class="ltx_inline-block ltx_align_top" id="A13.T16.1.19.18.2.1">
<span class="ltx_p" id="A13.T16.1.19.18.2.1.1" style="width:341.4pt;">Scientific terminology related to molecular biology and laboratory procedures</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A13.T16.1.20.19">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="A13.T16.1.20.19.1">10933</th>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A13.T16.1.20.19.2">
<span class="ltx_inline-block ltx_align_top" id="A13.T16.1.20.19.2.1">
<span class="ltx_p" id="A13.T16.1.20.19.2.1.1" style="width:341.4pt;">Terms related to biological research and medical methodologies</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A13.T16.1.21.20">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="A13.T16.1.21.20.1">140</th>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A13.T16.1.21.20.2">
<span class="ltx_inline-block ltx_align_top" id="A13.T16.1.21.20.2.1">
<span class="ltx_p" id="A13.T16.1.21.20.2.1.1" style="width:341.4pt;">Technical terms and concepts related to biology and bioengineering</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A13.T16.1.22.21">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="A13.T16.1.22.21.1">13527</th>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A13.T16.1.22.21.2">
<span class="ltx_inline-block ltx_align_top" id="A13.T16.1.22.21.2.1">
<span class="ltx_p" id="A13.T16.1.22.21.2.1.1" style="width:341.4pt;">Terms related to biological or medical research, particularly focusing on specific conditions and associated microorganisms</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A13.T16.1.23.22">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_th_row ltx_border_t" colspan="2" id="A13.T16.1.23.22.1"><span class="ltx_text ltx_font_bold" id="A13.T16.1.23.22.1.1">Cybersecurity</span></th>
</tr>
<tr class="ltx_tr" id="A13.T16.1.24.23">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_t" id="A13.T16.1.24.23.1"><span class="ltx_text ltx_font_bold" id="A13.T16.1.24.23.1.1">ID</span></th>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A13.T16.1.24.23.2">
<span class="ltx_inline-block ltx_align_top" id="A13.T16.1.24.23.2.1">
<span class="ltx_p" id="A13.T16.1.24.23.2.1.1" style="width:341.4pt;"><span class="ltx_text ltx_font_bold" id="A13.T16.1.24.23.2.1.1.1">Sentence</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A13.T16.1.25.24">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_t" id="A13.T16.1.25.24.1">15331</th>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A13.T16.1.25.24.2">
<span class="ltx_inline-block ltx_align_top" id="A13.T16.1.25.24.2.1">
<span class="ltx_p" id="A13.T16.1.25.24.2.1.1" style="width:341.4pt;">Terms related to cyber threats and cybersecurity issues</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A13.T16.1.26.25">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="A13.T16.1.26.25.1">2060</th>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A13.T16.1.26.25.2">
<span class="ltx_inline-block ltx_align_top" id="A13.T16.1.26.25.2.1">
<span class="ltx_p" id="A13.T16.1.26.25.2.1.1" style="width:341.4pt;">Explicit mentions of digital security concerns</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A13.T16.1.27.26">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="A13.T16.1.27.26.1">15286</th>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A13.T16.1.27.26.2">
<span class="ltx_inline-block ltx_align_top" id="A13.T16.1.27.26.2.1">
<span class="ltx_p" id="A13.T16.1.27.26.2.1.1" style="width:341.4pt;">Concepts and terms related to digital security and data integrity</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A13.T16.1.28.27">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="A13.T16.1.28.27.1">11015</th>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A13.T16.1.28.27.2">
<span class="ltx_inline-block ltx_align_top" id="A13.T16.1.28.27.2.1">
<span class="ltx_p" id="A13.T16.1.28.27.2.1.1" style="width:341.4pt;">Terms related to security and the act of securing something</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A13.T16.1.29.28">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="A13.T16.1.29.28.1">364</th>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A13.T16.1.29.28.2">
<span class="ltx_inline-block ltx_align_top" id="A13.T16.1.29.28.2.1">
<span class="ltx_p" id="A13.T16.1.29.28.2.1.1" style="width:341.4pt;">References to security and related terms</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A13.T16.1.30.29">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="A13.T16.1.30.29.1">4836</th>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A13.T16.1.30.29.2">
<span class="ltx_inline-block ltx_align_top" id="A13.T16.1.30.29.2.1">
<span class="ltx_p" id="A13.T16.1.30.29.2.1.1" style="width:341.4pt;">Concepts related to secure web connections and cryptocurrency surplus</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A13.T16.1.31.30">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="A13.T16.1.31.30.1">2905</th>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A13.T16.1.31.30.2">
<span class="ltx_inline-block ltx_align_top" id="A13.T16.1.31.30.2.1">
<span class="ltx_p" id="A13.T16.1.31.30.2.1.1" style="width:341.4pt;">Terms related to data security and encryption</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A13.T16.1.32.31">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="A13.T16.1.32.31.1">10931</th>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A13.T16.1.32.31.2">
<span class="ltx_inline-block ltx_align_top" id="A13.T16.1.32.31.2.1">
<span class="ltx_p" id="A13.T16.1.32.31.2.1.1" style="width:341.4pt;">References to national security and related governmental positions or actions</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A13.T16.1.33.32">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="A13.T16.1.33.32.1">11716</th>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A13.T16.1.33.32.2">
<span class="ltx_inline-block ltx_align_top" id="A13.T16.1.33.32.2.1">
<span class="ltx_p" id="A13.T16.1.33.32.2.1.1" style="width:341.4pt;">Technical terms and language related to coding and software functionality, specifically focusing on vulnerabilities</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A13.T16.1.34.33">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="A13.T16.1.34.33.1">16160</th>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A13.T16.1.34.33.2">
<span class="ltx_inline-block ltx_align_top" id="A13.T16.1.34.33.2.1">
<span class="ltx_p" id="A13.T16.1.34.33.2.1.1" style="width:341.4pt;">Discussions related to technology and computer systems</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A13.T16.1.35.34">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="A13.T16.1.35.34.1">6309</th>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A13.T16.1.35.34.2">
<span class="ltx_inline-block ltx_align_top" id="A13.T16.1.35.34.2.1">
<span class="ltx_p" id="A13.T16.1.35.34.2.1.1" style="width:341.4pt;">References to technology and its applications across various sectors</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A13.T16.1.36.35">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="A13.T16.1.36.35.1">10543</th>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A13.T16.1.36.35.2">
<span class="ltx_inline-block ltx_align_top" id="A13.T16.1.36.35.2.1">
<span class="ltx_p" id="A13.T16.1.36.35.2.1.1" style="width:341.4pt;">Keywords related to safety and security measures in various contexts</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A13.T16.1.37.36">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="A13.T16.1.37.36.1">11513</th>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A13.T16.1.37.36.2">
<span class="ltx_inline-block ltx_align_top" id="A13.T16.1.37.36.2.1">
<span class="ltx_p" id="A13.T16.1.37.36.2.1.1" style="width:341.4pt;">Terms related to computing and data centers</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A13.T16.1.38.37">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="A13.T16.1.38.37.1">1803</th>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A13.T16.1.38.37.2">
<span class="ltx_inline-block ltx_align_top" id="A13.T16.1.38.37.2.1">
<span class="ltx_p" id="A13.T16.1.38.37.2.1.1" style="width:341.4pt;">References to Common Weakness Enumeration (CWE) identifiers</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A13.T16.1.39.38">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="A13.T16.1.39.38.1">12681</th>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A13.T16.1.39.38.2">
<span class="ltx_inline-block ltx_align_top" id="A13.T16.1.39.38.2.1">
<span class="ltx_p" id="A13.T16.1.39.38.2.1.1" style="width:341.4pt;">Keywords related to safety and security</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A13.T16.1.40.39">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="A13.T16.1.40.39.1">11520</th>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A13.T16.1.40.39.2">
<span class="ltx_inline-block ltx_align_top" id="A13.T16.1.40.39.2.1">
<span class="ltx_p" id="A13.T16.1.40.39.2.1.1" style="width:341.4pt;">References to information technology and IT-related concepts</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A13.T16.1.41.40">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="A13.T16.1.41.40.1">11323</th>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A13.T16.1.41.40.2">
<span class="ltx_inline-block ltx_align_top" id="A13.T16.1.41.40.2.1">
<span class="ltx_p" id="A13.T16.1.41.40.2.1.1" style="width:341.4pt;">Key concepts related to digital citizenship and its implications in various contexts</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A13.T16.1.42.41">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="A13.T16.1.42.41.1">10415</th>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A13.T16.1.42.41.2">
<span class="ltx_inline-block ltx_align_top" id="A13.T16.1.42.41.2.1">
<span class="ltx_p" id="A13.T16.1.42.41.2.1.1" style="width:341.4pt;">Key components of data processing and communication in systems, particularly focusing on the details of data packet headers and their significance for routing and interpreting data</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A13.T16.1.43.42">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="A13.T16.1.43.42.1">3943</th>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A13.T16.1.43.42.2">
<span class="ltx_inline-block ltx_align_top" id="A13.T16.1.43.42.2.1">
<span class="ltx_p" id="A13.T16.1.43.42.2.1.1" style="width:341.4pt;">References to computing systems and technologies</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A13.T16.1.44.43">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_b ltx_border_r" id="A13.T16.1.44.43.1">4686</th>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_b" id="A13.T16.1.44.43.2">
<span class="ltx_inline-block ltx_align_top" id="A13.T16.1.44.43.2.1">
<span class="ltx_p" id="A13.T16.1.44.43.2.1.1" style="width:341.4pt;">References to technology and tech-related topics</span>
</span>
</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the top 20 Sparse Autoencoder (SAE) features identified for the 'Biology' and 'Cybersecurity' domains using the Neuronpedia API.  For each feature ID, the table shows its corresponding Neuronpedia interpretation.  The interpretations highlight the strong semantic relevance of the selected features to concepts central to biosecurity and cybersecurity, demonstrating that even without using domain-specific training data, the SAEs extracted meaningful and relevant features.
> <details>
> <summary>read the caption</summary>
> Table 16: Top 20 SAE Features for Biology and Cybersecurity in Zero-Shot Setting. List of the top 20 SAE feature IDs identified by querying Neuronpedia with “Biology” and “Cybersecurity”, alongside their corresponding Neuronpedia-provided interpretations, showing the semantic relevance of the selected features to the targeted knowledge domains.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2504.08192/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.08192/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.08192/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.08192/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.08192/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.08192/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.08192/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.08192/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.08192/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.08192/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.08192/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.08192/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.08192/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.08192/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.08192/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.08192/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.08192/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.08192/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.08192/19.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.08192/20.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}