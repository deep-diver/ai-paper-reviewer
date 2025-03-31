---
title: "MedAgent-Pro: Towards Multi-modal Evidence-based Medical Diagnosis via Reasoning Agentic Workflow"
summary: "MedAgent-Pro: An evidence-based reasoning agentic system for reliable multi-modal medical diagnosis."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["AI Applications", "Healthcare", "🏢 National University of Singapore",]
showSummary: true
date: 2025-03-21
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2503.18968 {{< /keyword >}}
{{< keyword icon="writer" >}} Ziyue Wang et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-03-31 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2503.18968" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2503.18968" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2503.18968/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Multi-modal Large Language Models (MLLMs) show potential in medical diagnosis, yet face hurdles like limited visual input perception and reasoning inconsistencies. Current MLLMs primarily function in one-hop question answering, falling short of the expert-driven, evidence-based analysis needed in real-world medical diagnosis. These models often exhibit hallucinations and inconsistencies in reasoning, making it difficult to strictly adhere to established medical criteria. This limitation raises safety concerns, highlighting the need for advancements to improve reliability and clinical applicability.



To solve these issues, the paper introduces **MedAgent-Pro**, an evidence-based reasoning agentic system. It uses hierarchical workflow that integrates medical guidelines and expert tools. Multiple tool agents process multi-modal inputs & analyze indicators, providing diagnoses based on quantitative and qualitative evidence. The system achieves superior results in 2D & 3D medical diagnosis tasks, demonstrating its effectiveness.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} MedAgent-Pro, an evidence-based reasoning agentic system, enhances diagnostic accuracy by integrating medical guidelines and expert tools. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} The system employs a hierarchical workflow, with task-level planning and case-level execution, to ensure comprehensive and reliable medical diagnoses. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Experiments demonstrate MedAgent-Pro's superior performance in both 2D and 3D multi-modal medical diagnosis tasks compared to existing MLLMs and task-specific solutions. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper introduces a new method, that uses reasoning to improve medical diagnoses by incorporating evidence.  The demonstrated enhancements in diagnostic accuracy & interpretability, is significant for pushing the boundaries of  AI in healthcare. This work could inspire new research into AI-driven diagnostic tools and personalized medicine approaches.

------
#### Visual Insights



![](https://arxiv.org/html/2503.18968/x1.png)

> 🔼 This figure compares the performance of existing large multimodal language models (MLLMs) and the MedAgent-Pro framework in diagnosing two diseases: glaucoma and heart disease.  It demonstrates that MLLMs, while capable of processing multi-modal data, often lack the precision and comprehensive reasoning necessary for reliable diagnoses.  Their limitations are highlighted in red text. In contrast, MedAgent-Pro, which leverages a reasoning agentic workflow, provides more accurate and evidence-based diagnoses, supported by visual evidence and relevant literature citations (green text). This showcases MedAgent-Pro's improved diagnostic accuracy and interpretability.
> <details>
> <summary>read the caption</summary>
> Figure 1: Comparison of existing MLLMs and our MedAgent-Pro framework on two disease diagnoses. Red text highlights the limitations of MLLMs, while green text represents the evidence-based diagnosis provided by MedAgent-Pro. Our approach enhances diagnostic accuracy while offering comprehensive literature support and visual evidence.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S4.T1.1">
<tr class="ltx_tr" id="S4.T1.1.1">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.1.1.1" rowspan="2" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="S4.T1.1.1.1.1">Method</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" colspan="2" id="S4.T1.1.1.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">Glaucoma</td>
<td class="ltx_td ltx_align_center ltx_border_t" colspan="2" id="S4.T1.1.1.3" style="padding-top:0.5pt;padding-bottom:0.5pt;">Heart Disease</td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.2">
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.2.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">mACC</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.1.2.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">F1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.2.3" style="padding-top:0.5pt;padding-bottom:0.5pt;">mACC</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.2.4" style="padding-top:0.5pt;padding-bottom:0.5pt;">F1</td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.3">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.1.3.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">GPT-4o <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.18968v1#bib.bib1" title="">1</a>]</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.3.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">-</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.1.3.3" style="padding-top:0.5pt;padding-bottom:0.5pt;">-</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.3.4" style="padding-top:0.5pt;padding-bottom:0.5pt;">-</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.3.5" style="padding-top:0.5pt;padding-bottom:0.5pt;">-</td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.4">
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.1.4.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">LLaVa-Med <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.18968v1#bib.bib33" title="">33</a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.4.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">50.0</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.1.4.3" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.0</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.4.4" style="padding-top:0.5pt;padding-bottom:0.5pt;">50.0</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.4.5" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.0</td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.5">
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.1.5.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">Janus-Pro-7B <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.18968v1#bib.bib13" title="">13</a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.5.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">53.4</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.1.5.3" style="padding-top:0.5pt;padding-bottom:0.5pt;">13.3</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.5.4" style="padding-top:0.5pt;padding-bottom:0.5pt;">52.3</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.5.5" style="padding-top:0.5pt;padding-bottom:0.5pt;">10.7</td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.6">
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.1.6.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">BioMedClip <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.18968v1#bib.bib74" title="">74</a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.6.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">58.1</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.1.6.3" style="padding-top:0.5pt;padding-bottom:0.5pt;">21.3</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.6.4" style="padding-top:0.5pt;padding-bottom:0.5pt;">47.0</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.6.5" style="padding-top:0.5pt;padding-bottom:0.5pt;">37.8</td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.7">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.1.7.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">MedAgent-Pro (MOE Decider)</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.7.2" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.1.7.2.1">90.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.1.7.3" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.1.7.3.1">76.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.7.4" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.1.7.4.1">66.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.7.5" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.1.7.5.1">52.6</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.8">
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r" id="S4.T1.1.8.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">MedAgent-Pro (LLM Decider)</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T1.1.8.2" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T1.1.8.2.1">75.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r" id="S4.T1.1.8.3" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T1.1.8.3.1">44.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T1.1.8.4" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T1.1.8.4.1">63.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T1.1.8.5" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T1.1.8.5.1">44.1</span></td>
</tr>
</table>{{< /table-caption >}}

> 🔼 This table compares the performance of different single foundation models (GPT-40, LLaVa-Med, Janus-Pro-7B, and BioMedClip) and the proposed MedAgent-Pro model (with two different decider agents: MOE and LLM) on two medical diagnosis tasks: glaucoma and heart disease.  The comparison uses two metrics: macro-averaged accuracy (MACC) and F1 score.  The '-' symbol indicates that the method failed to provide a diagnosis for most cases.  The results show that MedAgent-Pro significantly outperforms the other single foundation models on both tasks.
> <details>
> <summary>read the caption</summary>
> Table 1: Comparison with single foundation models on two diagnosis tasks (%). '-' means the method refuses to give a clear diagnosis for most of the cases.
> </details>





### In-depth insights


#### Agentic Med Diag
Agentic medical diagnosis represents a paradigm shift in AI-driven healthcare, moving beyond isolated diagnostic tasks towards comprehensive, collaborative systems. **These systems leverage the strengths of Large Language Models (LLMs) and specialized AI tools** within an agentic framework to mimic the reasoning and decision-making processes of human clinicians. Key features include the ability to integrate multi-modal patient data, access and apply medical knowledge, perform quantitative image analysis, and provide explainable diagnoses with supporting evidence. **Agentic architectures address the limitations of directly applying LLMs to medical diagnosis, such as hallucinations, inconsistencies, and a lack of quantitative analysis capabilities.** By combining LLMs with external tools and structured workflows, agentic systems can achieve greater accuracy, reliability, and interpretability in medical decision-making. **The focus on evidence-based reasoning and adherence to clinical guidelines ensures that diagnoses are well-founded and aligned with established medical protocols.** Future research will likely explore enhancing the collaboration and communication between agents, incorporating more diverse data modalities, and validating the clinical utility of these systems in real-world healthcare settings.

#### Evidence Workflow
An evidence workflow, crucial in medical AI, systematically gathers and analyzes data to support diagnoses. It begins with data collection from various sources (images, text, patient data), followed by preprocessing to standardize and clean the information. **AI models** then extract relevant features, which are synthesized into evidence. This evidence is evaluated against medical knowledge and guidelines, generating a diagnosis with supporting rationale. **Transparency** is key, detailing the evidence used. The workflow is iterative, refining diagnoses as new evidence emerges. It enhances **reliability** by grounding decisions in verifiable data, improving clinical trust and patient outcomes. Standardizing this process ensures consistent and **explainable** AI application in healthcare.

#### Hierarchical AI
**Hierarchical AI** represents a multi-layered approach to artificial intelligence, mirroring the structured organization found in complex systems like the human brain. This paradigm facilitates sophisticated problem-solving by decomposing intricate tasks into manageable sub-tasks, each addressed by specialized AI modules. The benefits are multi-fold: enhanced **modularity** allows for easier updates and maintenance, improved **interpretability** provides insights into the decision-making process at each level, and greater **scalability** enables the system to handle increasingly complex scenarios. A hierarchical architecture is not without its challenges, requiring careful design to ensure seamless communication and coordination between different AI modules. Effective management of information flow and decision delegation is crucial for optimal performance. Moreover, the creation of robust and adaptable hierarchical AI systems demands advanced techniques in areas such as reinforcement learning, knowledge representation, and automated planning. The potential applications span diverse fields, including robotics, natural language processing, and autonomous systems, offering a pathway towards more intelligent and adaptable AI solutions.

#### Multi-Modal Focus
In the context of medical diagnosis, a "Multi-Modal Focus" signifies the **integration of diverse data types** for a more comprehensive patient assessment. This includes combining **visual information** from medical images (X-rays, MRIs) with **structured data** like patient history, lab results, and clinical notes. MLLMs are limited in quantitative analysis, making them hard to apply in clinical practice. A multi-modal approach aims to leverage the strengths of each modality, enabling more accurate and robust diagnoses. This is especially crucial when a single data source is insufficient or ambiguous, relying heavily on human doctors. The development of AI systems capable of autonomously handling the entire diagnostic workflow has become a key research focus. This integration also addresses the challenge of **data heterogeneity**, as medical information is often stored in various formats and locations, requiring sophisticated data fusion techniques for effective analysis.

#### Interpretability
While the paper doesn't explicitly have a section labeled "Interpretability," the core concept is woven throughout its design and evaluation. **MedAgent-Pro prioritizes explainability by design**, contrasting with end-to-end MLLM approaches often acting as black boxes. The hierarchical workflow – task-level planning and case-level execution – promotes transparency. **Each stage leverages specialized tools, providing traceable steps in the diagnostic process.**  The use of both quantitative and qualitative indicators, combined with visual evidence and clinical guidelines offers a multifaceted rationale behind the diagnosis. This is further enhanced by the MOE decider, **assigning weights to different indicators to promote a more in-depth understanding of how the diagnosis is made rather than just a result**. The case study (illustrated in Figure 3) exemplifies how MedAgent-Pro makes decisions transparent and justified. Finally, MedAgentPro's ability to provide supporting evidence offers users a more grounded approach compared to MLLMs.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2503.18968/x2.png)

> 🔼 MedAgent-Pro uses a hierarchical workflow for medical diagnosis.  The task-level reasoning stage uses a planner agent (an LLM) to generate a diagnostic plan based on retrieved clinical guidelines and available tools. This plan is then executed in the case-level diagnosis stage using orchestrator and tool agents. The orchestrator agent manages the process, while tool agents (e.g., image processing models, coding agents, VQA models) handle specific tasks.  Finally, a decider agent integrates the results and delivers the final diagnosis, supported by evidence from the case-level analysis.
> <details>
> <summary>read the caption</summary>
> Figure 2: The overall structure of our MedAgent-Pro framework. The blue text indicates different roles of agents, and the black text indicates medical information.
> </details>



![](https://arxiv.org/html/2503.18968/x3.png)

> 🔼 Figure 3 presents a detailed case study of glaucoma diagnosis using the MedAgent-Pro framework. It visually outlines the workflow, starting from the knowledge-based task-level reasoning where a diagnostic plan is generated based on retrieved medical guidelines and available tools. The figure then moves to the evidence-based case-level diagnosis, showing how multi-modal patient information (e.g., fundus image) is processed through various agents (orchestrator, tool, coding, and summary agents) to extract relevant features. The process culminates in a final diagnosis decision made by a decider agent, demonstrating how the system integrates clinical criteria and visual evidence for an accurate and explainable diagnosis.
> <details>
> <summary>read the caption</summary>
> Figure 3: A case study for glaucoma diagnosis, which illustrates the workflow for a case in our MedAgent-Pro framework.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S4.T2.1">
<tr class="ltx_tr" id="S4.T2.1.1">
<td class="ltx_td ltx_align_center ltx_border_rr ltx_border_t" colspan="3" id="S4.T2.1.1.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">REFUGE2 winners</td>
<td class="ltx_td ltx_align_center ltx_border_t" colspan="3" id="S4.T2.1.1.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">Ophthalmology Expert MLLMs</td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.2">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.1.2.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">Team Name</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.2.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">AUC</td>
<td class="ltx_td ltx_align_center ltx_border_rr ltx_border_t" id="S4.T2.1.2.3" style="padding-top:0.5pt;padding-bottom:0.5pt;">Rank</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.1.2.4" style="padding-top:0.5pt;padding-bottom:0.5pt;">Method</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.2.5" style="padding-top:0.5pt;padding-bottom:0.5pt;">mAcc</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.2.6" style="padding-top:0.5pt;padding-bottom:0.5pt;">F1</td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.3">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.1.3.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">VUNO EYE TEAM</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.3.2" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.1.3.2.1">88.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_rr ltx_border_t" id="S4.T2.1.3.3" style="padding-top:0.5pt;padding-bottom:0.5pt;">1</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.1.3.4" style="padding-top:0.5pt;padding-bottom:0.5pt;">RetiZero <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.18968v1#bib.bib63" title="">63</a>]</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.3.5" style="padding-top:0.5pt;padding-bottom:0.5pt;">50.8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.3.6" style="padding-top:0.5pt;padding-bottom:0.5pt;">18.4</td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.4">
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.1.4.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">MIG</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.4.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">87.6</td>
<td class="ltx_td ltx_align_center ltx_border_rr" id="S4.T2.1.4.3" style="padding-top:0.5pt;padding-bottom:0.5pt;">2</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.1.4.4" style="padding-top:0.5pt;padding-bottom:0.5pt;">VisionUnite <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.18968v1#bib.bib38" title="">38</a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.4.5" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.1.4.5.1">85.8</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.4.6" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.1.4.6.1">73.1</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.5">
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.1.5.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">MAI</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.5.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">86.1</td>
<td class="ltx_td ltx_align_center ltx_border_rr" id="S4.T2.1.5.3" style="padding-top:0.5pt;padding-bottom:0.5pt;">3</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.1.5.4" style="padding-top:0.5pt;padding-bottom:0.5pt;">MedAgent-Pro (LLM decider)</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.5.5" style="padding-top:0.5pt;padding-bottom:0.5pt;">75.9</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.5.6" style="padding-top:0.5pt;padding-bottom:0.5pt;">44.8</td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.6">
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r ltx_border_t" id="S4.T2.1.6.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">MedAgent-Pro (MOE decider)</td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_t" id="S4.T2.1.6.2" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.1.6.2.1">95.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_rr ltx_border_t" id="S4.T2.1.6.3" style="padding-top:0.5pt;padding-bottom:0.5pt;">-</td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r ltx_border_t" id="S4.T2.1.6.4" style="padding-top:0.5pt;padding-bottom:0.5pt;">MedAgent-Pro (MOE decider)</td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_t" id="S4.T2.1.6.5" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.1.6.5.1">90.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_t" id="S4.T2.1.6.6" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.1.6.6.1">76.4</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table compares the performance of MedAgent-Pro with the top-performing methods from the REFUGE2 challenge, a benchmark for glaucoma diagnosis, and with state-of-the-art ophthalmology-specific large language models (LLMs).  It shows the AUC (Area Under the Curve) scores and ranks from the REFUGE2 leaderboard, along with mACC (mean accuracy across classes) and F1 scores for MedAgent-Pro and the other models.  The comparison highlights MedAgent-Pro's performance relative to established methods in the field.
> <details>
> <summary>read the caption</summary>
> Table 2: Comparison with REFUGE2 challenge winners and ophthalmology MLLMs (%).
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S4.T3.1.1">
<tr class="ltx_tr" id="S4.T3.1.1.1">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" colspan="4" id="S4.T3.1.1.1.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">Indicators</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" colspan="2" id="S4.T3.1.1.1.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">Single Indicator</td>
<td class="ltx_td ltx_align_center ltx_border_t" colspan="4" id="S4.T3.1.1.1.3" style="padding-top:0.5pt;padding-bottom:0.5pt;">Multiple Indicators</td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.1.2">
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.1.2.1" rowspan="2" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="S4.T3.1.1.2.1.1">vCDR</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.1.2.2" rowspan="2" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="S4.T3.1.1.2.2.1">RT</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.1.2.3" rowspan="2" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="S4.T3.1.1.2.3.1">PPA</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T3.1.1.2.4" rowspan="2" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="S4.T3.1.1.2.4.1">DH</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.1.2.5" rowspan="2" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="S4.T3.1.1.2.5.1">mACC</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T3.1.1.2.6" rowspan="2" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="S4.T3.1.1.2.6.1">F1</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" colspan="2" id="S4.T3.1.1.2.7" style="padding-top:0.5pt;padding-bottom:0.5pt;">MOE decider</td>
<td class="ltx_td ltx_align_center ltx_border_t" colspan="2" id="S4.T3.1.1.2.8" style="padding-top:0.5pt;padding-bottom:0.5pt;">LLM decider</td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.1.3">
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.1.3.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">mACC</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T3.1.1.3.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">F1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.1.3.3" style="padding-top:0.5pt;padding-bottom:0.5pt;">mACC</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.1.3.4" style="padding-top:0.5pt;padding-bottom:0.5pt;">F1</td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.1.4">
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.1.4.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">✓</td>
<td class="ltx_td ltx_border_t" id="S4.T3.1.1.4.2" style="padding-top:0.5pt;padding-bottom:0.5pt;"></td>
<td class="ltx_td ltx_border_t" id="S4.T3.1.1.4.3" style="padding-top:0.5pt;padding-bottom:0.5pt;"></td>
<td class="ltx_td ltx_border_r ltx_border_t" id="S4.T3.1.1.4.4" style="padding-top:0.5pt;padding-bottom:0.5pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.1.4.5" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.1.1.4.5.1">81.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T3.1.1.4.6" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T3.1.1.4.6.1">65.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.1.4.7" style="padding-top:0.5pt;padding-bottom:0.5pt;">-</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T3.1.1.4.8" style="padding-top:0.5pt;padding-bottom:0.5pt;">-</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.1.4.9" style="padding-top:0.5pt;padding-bottom:0.5pt;">-</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.1.4.10" style="padding-top:0.5pt;padding-bottom:0.5pt;">-</td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.1.5">
<td class="ltx_td" id="S4.T3.1.1.5.1" style="padding-top:0.5pt;padding-bottom:0.5pt;"></td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.5.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">✓</td>
<td class="ltx_td" id="S4.T3.1.1.5.3" style="padding-top:0.5pt;padding-bottom:0.5pt;"></td>
<td class="ltx_td ltx_border_r" id="S4.T3.1.1.5.4" style="padding-top:0.5pt;padding-bottom:0.5pt;"></td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.5.5" style="padding-top:0.5pt;padding-bottom:0.5pt;">70.8</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.1.1.5.6" style="padding-top:0.5pt;padding-bottom:0.5pt;">31.3</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.5.7" style="padding-top:0.5pt;padding-bottom:0.5pt;">-</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.1.1.5.8" style="padding-top:0.5pt;padding-bottom:0.5pt;">-</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.5.9" style="padding-top:0.5pt;padding-bottom:0.5pt;">-</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.5.10" style="padding-top:0.5pt;padding-bottom:0.5pt;">-</td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.1.6">
<td class="ltx_td" id="S4.T3.1.1.6.1" style="padding-top:0.5pt;padding-bottom:0.5pt;"></td>
<td class="ltx_td" id="S4.T3.1.1.6.2" style="padding-top:0.5pt;padding-bottom:0.5pt;"></td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.6.3" style="padding-top:0.5pt;padding-bottom:0.5pt;">✓</td>
<td class="ltx_td ltx_border_r" id="S4.T3.1.1.6.4" style="padding-top:0.5pt;padding-bottom:0.5pt;"></td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.6.5" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T3.1.1.6.5.1">81.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.1.1.6.6" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.1.1.6.6.1">74.6</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.6.7" style="padding-top:0.5pt;padding-bottom:0.5pt;">-</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.1.1.6.8" style="padding-top:0.5pt;padding-bottom:0.5pt;">-</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.6.9" style="padding-top:0.5pt;padding-bottom:0.5pt;">-</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.6.10" style="padding-top:0.5pt;padding-bottom:0.5pt;">-</td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.1.7">
<td class="ltx_td" id="S4.T3.1.1.7.1" style="padding-top:0.5pt;padding-bottom:0.5pt;"></td>
<td class="ltx_td" id="S4.T3.1.1.7.2" style="padding-top:0.5pt;padding-bottom:0.5pt;"></td>
<td class="ltx_td" id="S4.T3.1.1.7.3" style="padding-top:0.5pt;padding-bottom:0.5pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.1.1.7.4" style="padding-top:0.5pt;padding-bottom:0.5pt;">✓</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.7.5" style="padding-top:0.5pt;padding-bottom:0.5pt;">66.8</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.1.1.7.6" style="padding-top:0.5pt;padding-bottom:0.5pt;">29.6</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.7.7" style="padding-top:0.5pt;padding-bottom:0.5pt;">-</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.1.1.7.8" style="padding-top:0.5pt;padding-bottom:0.5pt;">-</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.7.9" style="padding-top:0.5pt;padding-bottom:0.5pt;">-</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.7.10" style="padding-top:0.5pt;padding-bottom:0.5pt;">-</td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.1.8">
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.1.8.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">✓</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.1.8.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">✓</td>
<td class="ltx_td ltx_border_t" id="S4.T3.1.1.8.3" style="padding-top:0.5pt;padding-bottom:0.5pt;"></td>
<td class="ltx_td ltx_border_r ltx_border_t" id="S4.T3.1.1.8.4" style="padding-top:0.5pt;padding-bottom:0.5pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.1.8.5" style="padding-top:0.5pt;padding-bottom:0.5pt;">-</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T3.1.1.8.6" style="padding-top:0.5pt;padding-bottom:0.5pt;">-</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.1.8.7" style="padding-top:0.5pt;padding-bottom:0.5pt;">87.0</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T3.1.1.8.8" style="padding-top:0.5pt;padding-bottom:0.5pt;">55.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.1.8.9" style="padding-top:0.5pt;padding-bottom:0.5pt;">71.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.1.8.10" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T3.1.1.8.10.1">55.4</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.1.9">
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.9.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">✓</td>
<td class="ltx_td" id="S4.T3.1.1.9.2" style="padding-top:0.5pt;padding-bottom:0.5pt;"></td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.9.3" style="padding-top:0.5pt;padding-bottom:0.5pt;">✓</td>
<td class="ltx_td ltx_border_r" id="S4.T3.1.1.9.4" style="padding-top:0.5pt;padding-bottom:0.5pt;"></td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.9.5" style="padding-top:0.5pt;padding-bottom:0.5pt;">-</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.1.1.9.6" style="padding-top:0.5pt;padding-bottom:0.5pt;">-</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.9.7" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.1.1.9.7.1">93.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.1.1.9.8" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T3.1.1.9.8.1">78.7</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.9.9" style="padding-top:0.5pt;padding-bottom:0.5pt;">69.7</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.9.10" style="padding-top:0.5pt;padding-bottom:0.5pt;">52.0</td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.1.10">
<td class="ltx_td" id="S4.T3.1.1.10.1" style="padding-top:0.5pt;padding-bottom:0.5pt;"></td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.10.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">✓</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.10.3" style="padding-top:0.5pt;padding-bottom:0.5pt;">✓</td>
<td class="ltx_td ltx_border_r" id="S4.T3.1.1.10.4" style="padding-top:0.5pt;padding-bottom:0.5pt;"></td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.10.5" style="padding-top:0.5pt;padding-bottom:0.5pt;">-</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.1.1.10.6" style="padding-top:0.5pt;padding-bottom:0.5pt;">-</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.10.7" style="padding-top:0.5pt;padding-bottom:0.5pt;">80.4</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.1.1.10.8" style="padding-top:0.5pt;padding-bottom:0.5pt;">70.4</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.10.9" style="padding-top:0.5pt;padding-bottom:0.5pt;">52.8</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.10.10" style="padding-top:0.5pt;padding-bottom:0.5pt;">14.3</td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.1.11">
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.11.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">✓</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.11.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">✓</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.11.3" style="padding-top:0.5pt;padding-bottom:0.5pt;">✓</td>
<td class="ltx_td ltx_border_r" id="S4.T3.1.1.11.4" style="padding-top:0.5pt;padding-bottom:0.5pt;"></td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.11.5" style="padding-top:0.5pt;padding-bottom:0.5pt;">-</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.1.1.11.6" style="padding-top:0.5pt;padding-bottom:0.5pt;">-</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.11.7" style="padding-top:0.5pt;padding-bottom:0.5pt;">90.1</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.1.1.11.8" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.1.1.11.8.1">81.5</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.11.9" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T3.1.1.11.9.1">73.3</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.11.10" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.1.1.11.10.1">61.3</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.1.12">
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T3.1.1.12.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">✓</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T3.1.1.12.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">✓</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T3.1.1.12.3" style="padding-top:0.5pt;padding-bottom:0.5pt;">✓</td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r" id="S4.T3.1.1.12.4" style="padding-top:0.5pt;padding-bottom:0.5pt;">✓</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T3.1.1.12.5" style="padding-top:0.5pt;padding-bottom:0.5pt;">-</td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r" id="S4.T3.1.1.12.6" style="padding-top:0.5pt;padding-bottom:0.5pt;">-</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T3.1.1.12.7" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T3.1.1.12.7.1">90.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r" id="S4.T3.1.1.12.8" style="padding-top:0.5pt;padding-bottom:0.5pt;">76.4</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T3.1.1.12.9" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.1.1.12.9.1">75.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T3.1.1.12.10" style="padding-top:0.5pt;padding-bottom:0.5pt;">44.8</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This ablation study analyzes the impact of individual indicators (vertical Cup-to-Disc Ratio (vCDR), Rim Thickness (RT), Peripapillary Atrophy (PPA), and Disc Hemorrhages (DH)) on glaucoma diagnosis accuracy.  It compares the performance of using each indicator alone against using all indicators together with two different decision-making methods (MOE decider and LLM decider). The results show how much each individual indicator contributes to the overall diagnostic accuracy and highlight the differences in performance between the two decision-making methods, particularly when some indicators are missing or less accurate.
> <details>
> <summary>read the caption</summary>
> Table 3: Ablation study of single and multiple indicators in glaucoma diagnosis (%).
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2503.18968/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.18968/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.18968/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.18968/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.18968/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.18968/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.18968/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.18968/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.18968/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.18968/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.18968/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.18968/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.18968/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.18968/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}