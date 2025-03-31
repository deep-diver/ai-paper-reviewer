---
title: "Gumbel-Softmax Flow Matching with Straight-Through Guidance for Controllable Biological Sequence Generation"
summary: "Gumbel-Softmax Flow Matching enables controllable biological sequence generation with straight-through guidance, scaling efficiently to high-dimensional simplices."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Machine Learning", "Deep Learning", "🏢 Department of Biomedical Engineering, Duke University",]
showSummary: true
date: 2025-03-21
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2503.17361 {{< /keyword >}}
{{< keyword icon="writer" >}} Sophia Tang et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-03-26 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2503.17361" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2503.17361" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2503.17361/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Generative modeling for biological sequences, like proteins and DNA, faces challenges due to the non-differentiability of categorical variables, resulting in issues such as compounding errors and limited global coherence. Existing methods struggle with scaling to higher dimensions and lack effective controllability during inference. To solve this, the paper tackles these limitations by introducing a framework that improves sequence generation in discrete spaces. 



The paper introduces **Gumbel-Softmax Flow Matching**, which defines a novel Gumbel-Softmax interpolant with a time-dependent temperature parameter. This allows for high-quality, diverse generation and efficient scaling. Additionally, **Straight-Through Guided Flows** enables training-free guidance, steering the velocity field toward optimal sequence vertices. The framework is shown to be effective in DNA promoter design, protein generation, and target-binding peptide design.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Introduces Gumbel-Softmax Flow Matching, a generative framework on the simplex based on a novel Gumbel-Softmax interpolant with a time-dependent temperature. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} Proposes Straight-Through Guided Flows (STGFlow), a classifier-based guidance method that leverages straight-through estimators to steer the unconditional velocity field toward optimal vertices of the simplex, enabling efficient inference-time guidance. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Demonstrates state-of-the-art performance in conditional DNA promoter design, sequence-only protein generation, and target-binding peptide design for rare disease treatment. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper introduces a novel approach for controllable sequence generation that tackles the challenge of scaling to high-dimensional simplices and offers a training-free guidance method. **It enables high-quality, diverse sequence generation, providing a robust framework for various biological sequence design tasks**. This research is vital for advancing de novo sequence design and personalized medicine.

------
#### Visual Insights



![](https://arxiv.org/html/2503.17361/extracted/6300322/Figures/gumbel-flow-figure1.png)

> 🔼 This figure illustrates the Gumbel-Softmax Flow Matching method. It begins with clean, one-hot encoded biological sequences.  A time-dependent temperature parameter is introduced, gradually decreasing the temperature over time. At each time point, a Gumbel-softmax transformation is applied to the clean sequences, creating a noisy distribution of probabilities. This noisy distribution is then inputted to either a parameterized flow model or a score model. These models output a conditional flow velocity or score function, respectively, which guide the generation process toward the target (clean) sequences.  The entire process results in a transformation from a noisy distribution to a clean distribution concentrated at the desired sequence.
> <details>
> <summary>read the caption</summary>
> Figure 1: Overview of Gumbel-Softmax Flow Matching. Gumbel-softmax transformations are applied to clean one-hot sequences for varying temperatures dependent on time. The embedded noisy distributions are passed into a parameterized flow or score model and error prediction model to predict the conditional flow velocity and score function.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S6.T1.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S6.T1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S6.T1.1.1.2"><span class="ltx_text ltx_font_bold" id="S6.T1.1.1.2.1" style="font-size:90%;">Model</span></th>
<th class="ltx_td ltx_nopad_r ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S6.T1.1.1.1">
<span class="ltx_text ltx_font_bold" id="S6.T1.1.1.1.1" style="font-size:90%;">MSE</span><span class="ltx_text" id="S6.T1.1.1.1.2" style="font-size:90%;"> (</span><math alttext="\downarrow" class="ltx_Math" display="inline" id="S6.T1.1.1.1.m1.1"><semantics id="S6.T1.1.1.1.m1.1a"><mo id="S6.T1.1.1.1.m1.1.1" mathsize="90%" stretchy="false" xref="S6.T1.1.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S6.T1.1.1.1.m1.1b"><ci id="S6.T1.1.1.1.m1.1.1.cmml" xref="S6.T1.1.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S6.T1.1.1.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S6.T1.1.1.1.m1.1d">↓</annotation></semantics></math><span class="ltx_text" id="S6.T1.1.1.1.3" style="font-size:90%;">)</span>
</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S6.T1.1.2.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S6.T1.1.2.1.1"><span class="ltx_text" id="S6.T1.1.2.1.1.1" style="font-size:90%;">Bit Diffusion (Bit Encoding)*</span></th>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_t" id="S6.T1.1.2.1.2"><span class="ltx_text" id="S6.T1.1.2.1.2.1" style="font-size:90%;">0.041</span></td>
</tr>
<tr class="ltx_tr" id="S6.T1.1.3.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S6.T1.1.3.2.1"><span class="ltx_text" id="S6.T1.1.3.2.1.1" style="font-size:90%;">Bit Diffusion (One-Hot Encoding)*</span></th>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S6.T1.1.3.2.2"><span class="ltx_text" id="S6.T1.1.3.2.2.1" style="font-size:90%;">0.040</span></td>
</tr>
<tr class="ltx_tr" id="S6.T1.1.4.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S6.T1.1.4.3.1"><span class="ltx_text" id="S6.T1.1.4.3.1.1" style="font-size:90%;">D3PM-Uniform*</span></th>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S6.T1.1.4.3.2"><span class="ltx_text" id="S6.T1.1.4.3.2.1" style="font-size:90%;">0.038</span></td>
</tr>
<tr class="ltx_tr" id="S6.T1.1.5.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S6.T1.1.5.4.1"><span class="ltx_text" id="S6.T1.1.5.4.1.1" style="font-size:90%;">DDSM*</span></th>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S6.T1.1.5.4.2"><span class="ltx_text" id="S6.T1.1.5.4.2.1" style="font-size:90%;">0.033</span></td>
</tr>
<tr class="ltx_tr" id="S6.T1.1.6.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S6.T1.1.6.5.1"><span class="ltx_text" id="S6.T1.1.6.5.1.1" style="font-size:90%;">Language Model*</span></th>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S6.T1.1.6.5.2"><span class="ltx_text" id="S6.T1.1.6.5.2.1" style="font-size:90%;">0.033</span></td>
</tr>
<tr class="ltx_tr" id="S6.T1.1.7.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S6.T1.1.7.6.1"><span class="ltx_text" id="S6.T1.1.7.6.1.1" style="font-size:90%;">Dirichlet Flow Matching</span></th>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_t" id="S6.T1.1.7.6.2"><span class="ltx_text" id="S6.T1.1.7.6.2.1" style="font-size:90%;">0.029</span></td>
</tr>
<tr class="ltx_tr" id="S6.T1.1.8.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S6.T1.1.8.7.1"><span class="ltx_text" id="S6.T1.1.8.7.1.1" style="font-size:90%;">Fisher Flow Matching</span></th>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S6.T1.1.8.7.2"><span class="ltx_text" id="S6.T1.1.8.7.2.1" style="font-size:90%;">0.030</span></td>
</tr>
<tr class="ltx_tr" id="S6.T1.1.9.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S6.T1.1.9.8.1">
<span class="ltx_text ltx_font_bold" id="S6.T1.1.9.8.1.1" style="font-size:90%;">Gumbel-Softmax Flow Matching</span><span class="ltx_text" id="S6.T1.1.9.8.1.2" style="font-size:90%;"> (Ours)</span>
</th>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_bb" id="S6.T1.1.9.8.2"><span class="ltx_text" id="S6.T1.1.9.8.2.1" style="font-size:90%;">0.029</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 This table presents a comparison of the mean squared error (MSE) for various models in predicting the regulatory signal of generated DNA promoter sequences.  The models were evaluated using a validation set, and the MSE was calculated by comparing the predicted signal to the true signal (obtained using a pre-trained Sei model [25]). Lower MSE values indicate better model performance. The results include several different generative models, some of which are from previous work (marked with an asterisk, *). This comparison shows how the Gumbel-Softmax Flow Matching model performs against current state-of-the-art methods for this task.
> <details>
> <summary>read the caption</summary>
> Table 1: Evaluation of promoter DNA generation conditioned on transcription profile. MSE was evaluated across all validation batches between the predicted signal of a conditionally generated sequence and the true sequence. Regulatory signals were predicted with a pre-trained Sei model [25]. Numbers with * are from Stark et al. [4]
> </details>





### In-depth insights


#### Gumbel Flows
The Gumbel-Softmax distribution is the core of "Gumbel Flows", providing a **differentiable relaxation of categorical variables**. This is crucial for sequence generation, as it allows gradients to flow through discrete choices. The use of a **temperature parameter** to control the sharpness of the distribution is also interesting; starting with a high temperature for exploration and annealing it for exploitation. Gumbel flows' potential to **model complex dependencies** is valuable, especially in biological sequences. By combining the Gumbel-Softmax with flow-based generative models, it enables a powerful and **tractable approach to sequence design**.

#### ST Guidance
It appears that the paper explores the use of a Straight-Through (ST) estimator for guiding the flow-matching process within a Gumbel-Softmax framework. The key idea is to leverage pre-trained classifiers to steer the generated sequences toward regions of higher quality or desired properties. **ST Guidance** is designed to use readily available classifiers trained on clean sequences, rather than training noisy classifiers. This is helpful since ST guidance leverages **straight-through gradients to guide the flow** towards optimal sequences by refining the predicted logits in a temperature dependent manner. The classifier guides the generation towards higher scoring sequences, making the process effective and efficient.

#### Sequence Design
Sequence design, a pivotal aspect of computational biology, focuses on creating novel sequences with desired properties. In the context of proteins, this involves generating amino acid sequences that fold into specific 3D structures, enabling tailored functionalities. **For DNA/RNA, it aims to engineer sequences with targeted regulatory effects or binding affinities.** The challenge lies in navigating the vast sequence space efficiently. Computational methods like generative models (GANs, VAEs) and reinforcement learning play a crucial role in this domain, allowing researchers to explore and optimize sequences with higher chances of success compared to random screening. Sequence design holds immense potential for drug discovery, synthetic biology, and materials science. **The ability to precisely control biological functions at the sequence level is paramount for advancing these fields.**

#### Protein Generation
From the context of the paper, the concept of 'Protein Generation' seems to revolve around using generative models to design novel protein sequences. The authors likely explore different methods, including **flow matching** and **diffusion models**, to overcome the challenges of generating structured sequences in the discrete amino acid space. A key focus is likely on improving the **quality**, **diversity**, and **structural feasibility** of the generated proteins. Another aim is to design proteins with specific functions or binding affinities, such as peptide binders for therapeutic targets. The research explores both unconditional protein generation and conditional protein generation, where the generation process is guided by specific constraints or objectives. The goal is to create tools that can aid in the design of new proteins with desired properties.

#### Peptide Binders
**Peptide binder** design is a crucial area, particularly for rare diseases. The paper integrates guidance into Gumbel-Softmax FM to create de novo peptides with high target affinity. By generating peptides with similar or higher binding affinity to known binders, it addresses the need for novel therapeutics. The use of the STGFlow algorithm facilitates guided flow paths, enhancing binding potential. The models predict Ka/Ki/IC50 scores, crucial for assessing binding. Comparing designed peptides with existing ones, and employing metrics such as ipTM and VINA docking, validates the efficacy. The consistent generation of peptides with superior binding affinity marks a key advancement. Further, demonstrating effectiveness in diseases lacking known binders signifies a major stride in therapeutic design.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2503.17361/extracted/6300322/Figures/guidance.png)

> 🔼 This figure illustrates the Straight-Through Guided Flows (STGFlow) method.  STGFlow uses a pre-trained classifier to guide the generation process without requiring additional classifier training during the generation process.  The process begins by sampling M discrete sequences from an intermediate token distribution,  represented as **x<sub>t</sub>**. Gradients of the classifier function are then computed with respect to these M sequences. These gradients act as a guiding force, modifying the unconditional velocity field to steer the generation process towards sequences that achieve optimal classifier scores.  In essence, STGFlow leverages straight-through gradient estimators to efficiently guide the generation towards high-scoring sequences during inference.
> <details>
> <summary>read the caption</summary>
> Figure 2: Straight-Through Guided Flows (STGFlow). We compute the gradients of the classifier function with respect to M𝑀Mitalic_M discrete sequences sampled from the intermediate token distribution 𝐱tsubscript𝐱𝑡\mathbf{x}_{t}bold_x start_POSTSUBSCRIPT italic_t end_POSTSUBSCRIPT, which act as a guided flow velocity that steers the unconditional trajectory towards sequences with optimal scores.
> </details>



![](https://arxiv.org/html/2503.17361/extracted/6300322/Figures/proteins.png)

> 🔼 This figure showcases three examples of protein structures generated using the Gumbel-Softmax Flow Matching method. Each structure is accompanied by its predicted pLDDT, pAE, and pTM scores, all generated using the ESMFold prediction model.  These metrics assess the quality of the predicted structures, with higher pLDDT scores indicating higher confidence in the prediction, lower pAE scores suggesting better accuracy in the relative positioning of amino acid residues, and higher pTM scores signifying a greater agreement with known protein structures.
> <details>
> <summary>read the caption</summary>
> Figure 3: Predicted structures of de novo generated proteins from Gumbel-Softmax FM. The structures, pLDDT, pAE, and pTM scores are predicted with ESMFold [27]
> </details>



![](https://arxiv.org/html/2503.17361/extracted/6300322/Figures/no-binder-targets.png)

> 🔼 This figure showcases three examples of novel peptide binders generated using the Gumbel-Softmax Flow Matching method.  Each panel (A, B, C) represents a different target protein associated with a rare disease: JPH3 (Huntington's Disease-Like 2), GFAP (Alexander Disease), and eIF2B (Vanishing White Matter Disease). For each target, the figure displays the 3D structure of the designed peptide binder, its amino acid sequence length (10 amino acids in A and B, 7 amino acids in C), and its binding interaction with the target protein (visualized via polar contacts within 3.5 Å). The protein structures shown in (A) were produced using AlphaFold3 predictions, while panels (B) and (C) utilize existing PDB structures (6A9P and 6CAJ, respectively). These results highlight the method's capability to generate effective peptide binders for various disease-related targets without prior knowledge of existing binders, paving the way for potential therapeutic developments.  Further details about additional targets are provided in Table 4 of the paper.
> <details>
> <summary>read the caption</summary>
> Figure 4: Gumbel-Softmax FM generated peptide binders for three targets with no known binders. (A) 10101010 a.a. designed binder to JPH3 (structure generated with AlphaFold3) involved in Huntington’s Disease-Like 2. (B) 10101010 a.a. designed binder to GFAP (PDB: 6A9P) involved in Alexander Disease. (C) 7777 a.a. designed binder to eIF2B (PDB: 6CAJ) involved in Vanishing White Matter Disease. Docked with AutoDock VINA and polar contacts within 3.53.53.53.5 Å are annotated. Additional targets are shown in Table 4.
> </details>



![](https://arxiv.org/html/2503.17361/extracted/6300322/Figures/4ezn.png)

> 🔼 Figure 5 displays a comparison of peptide binders for protein 4EZN, illustrating the performance of Gumbel-Softmax FM in designing novel binders. The figure shows two peptide binders docked to protein 4EZN: an existing binder (green) and a de novo designed binder generated by Gumbel-Softmax FM (magenta). Key features of the figure are the improved docking scores of the designed binder (-6.5 kcal/mol) compared to the existing binder (-4.1 kcal/mol), highlighting its stronger binding affinity. Additionally, crucial polar contacts (within 3.5 Å) between the designed binder and protein 4EZN are annotated, providing insights into the binding interaction.  Further comparisons of existing and designed peptide binders for different proteins are provided in Table 3 of the paper.
> <details>
> <summary>read the caption</summary>
> Figure 5: Comparison of existing and Gumbel-Softmax FM designed binder to protein 4EZN. AutoDock VINA docking score of the designed binder (−6.56.5-6.5- 6.5 kcal/mol; magenta) is lower than that of the existing binder (−4.14.1-4.1- 4.1 kcal/mol; green) indicating stronger binding affinity. Polar contacts within 3.53.53.53.5 Å are annotated. Additional comparisons of existing and designed binders are in Table 3.
> </details>



![](https://arxiv.org/html/2503.17361/extracted/6300322/Figures/guidance-curves.png)

> 🔼 This figure visualizes the performance of Gumbel-Softmax Flow Matching (FM), a generative model for peptide design, enhanced with Straight-Through Guided Flows (STGFlow).  The plots show how the predicted binding affinity of generated peptides changes over the course of the iterative generation process. Specifically, the model samples multiple (M) peptide sequences at each step, and their average predicted binding affinity is calculated and plotted.  Crucially, the gradients of these predicted affinities guide the model's next step, ensuring that the generation process is steered towards higher-affinity peptides.  The graphs illustrate this guided optimization, showing how the predicted affinity increases over the iterations, driven by the STGFlow mechanism.  Two specific target proteins, 3EQS and GFAP, are depicted, demonstrating the model's effectiveness for different targets.
> <details>
> <summary>read the caption</summary>
> Figure 6: Predicted binding-affinity scores over iteration of Gumbel-Softmax FM guided with STGFlow for target-binding peptide generation. The predicted binding affinity is the mean regression scores of the M𝑀Mitalic_M discrete sequences sampled at each integration step. The gradients of the scores are used to compute the guided velocity.
> </details>



![](https://arxiv.org/html/2503.17361/extracted/6300322/Figures/validation-loss.png)

> 🔼 This figure displays the validation mean squared error (MSE) loss during training for a toy experiment involving different simplex dimensions.  Two methods are compared: Fisher Flow Matching (FM) and Gumbel-Softmax FM.  Both methods used the same loss calculation, yet the Fisher FM model shows significantly higher validation MSE loss, indicating a tendency to overfit the training data.  This suggests that the parameterization used by Fisher FM is more prone to overfitting than the one used by Gumbel-Softmax FM.
> <details>
> <summary>read the caption</summary>
> Figure 7: Validation MSE loss over training step of simplex-dimension toy experiment. Fisher FM exhibits significantly higher validation MSE loss during training than Gumbel-Softmax FM despite the same loss calculation, suggesting that the parameterization easily overfits to training data.
> </details>



![](https://arxiv.org/html/2503.17361/extracted/6300322/Figures/no-binder-targets2.png)

> 🔼 Figure 8 showcases three examples of novel peptide binders generated using the Gumbel-Softmax Flow Matching method.  These peptides target proteins associated with rare diseases, for which no known binders previously existed.  Each panel (A, B, C) highlights a different protein-peptide pair: (A) a 7-amino acid peptide binding to NPC2 (a protein involved in Niemann-Pick Disease Type C; PDB ID: 6W5V), (B) a 10-amino acid peptide binding to BMI1 (implicated in medulloblastoma; PDB ID: 2CKL), and (C) a 10-amino acid peptide binding to Gigaxonin (associated with Giant Axonal Neuropathy; PDB ID: 3HVE).  The figure illustrates the binding interactions using AutoDock Vina docking, showing polar contacts within 3.5 angstroms (Å) of the binding site. Additional examples of generated peptide binders can be found in Table 4 of the paper.
> <details>
> <summary>read the caption</summary>
> Figure 8: Gumbel-Softmax FM generated peptide binders for three targets with no known binders. (A) 7 a.a. designed binder to NPC2 (PDB: 6W5V) involved in Niemann-Pick Disease Type C. (B) 10 a.a. designed binder to BMI1 (PDB: 2CKL) involved in Medulloblastoma. (C) 10 a.a. designed binder to Gigaxonin (PDB: 3HVE) involved in Giant Axonal Neuropathy. Docked with AutoDock VINA and polar contacts within 3.5 Å are annotated. Additional targets are shown in Table 4.
> </details>



![](https://arxiv.org/html/2503.17361/extracted/6300322/Figures/appendix-proteins.png)

> 🔼 This figure shows the 3D structures of 20 de novo generated proteins predicted by the Gumbel-Softmax Flow Matching (FM) model. Each protein structure is displayed in a different orientation and coloring scheme, highlighting their structural diversity. The proteins show various shapes, sizes, and folds, demonstrating the model's ability to generate a wide range of diverse protein structures.
> <details>
> <summary>read the caption</summary>
> Figure 9: Predicted structures of de novo generated proteins with Gumbel-Softmax FM. Generated proteins demonstrate diverse structural generation.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S6.T2.10.6.6">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S6.T2.10.6.6.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S6.T2.10.6.6.6.7"><span class="ltx_text ltx_font_bold" id="S6.T2.10.6.6.6.7.1" style="font-size:90%;">Model</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S6.T2.5.1.1.1.1">
<span class="ltx_text ltx_font_bold" id="S6.T2.5.1.1.1.1.1" style="font-size:90%;">Params</span><span class="ltx_text" id="S6.T2.5.1.1.1.1.2" style="font-size:90%;"> (</span><math alttext="\downarrow" class="ltx_Math" display="inline" id="S6.T2.5.1.1.1.1.m1.1"><semantics id="S6.T2.5.1.1.1.1.m1.1a"><mo id="S6.T2.5.1.1.1.1.m1.1.1" mathsize="90%" stretchy="false" xref="S6.T2.5.1.1.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S6.T2.5.1.1.1.1.m1.1b"><ci id="S6.T2.5.1.1.1.1.m1.1.1.cmml" xref="S6.T2.5.1.1.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S6.T2.5.1.1.1.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S6.T2.5.1.1.1.1.m1.1d">↓</annotation></semantics></math><span class="ltx_text" id="S6.T2.5.1.1.1.1.3" style="font-size:90%;">)</span>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S6.T2.6.2.2.2.2">
<span class="ltx_text ltx_font_bold" id="S6.T2.6.2.2.2.2.1" style="font-size:90%;">pLDDT</span><span class="ltx_text" id="S6.T2.6.2.2.2.2.2" style="font-size:90%;"> (</span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S6.T2.6.2.2.2.2.m1.1"><semantics id="S6.T2.6.2.2.2.2.m1.1a"><mo id="S6.T2.6.2.2.2.2.m1.1.1" mathsize="90%" stretchy="false" xref="S6.T2.6.2.2.2.2.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S6.T2.6.2.2.2.2.m1.1b"><ci id="S6.T2.6.2.2.2.2.m1.1.1.cmml" xref="S6.T2.6.2.2.2.2.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S6.T2.6.2.2.2.2.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S6.T2.6.2.2.2.2.m1.1d">↑</annotation></semantics></math><span class="ltx_text" id="S6.T2.6.2.2.2.2.3" style="font-size:90%;">)</span>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S6.T2.7.3.3.3.3">
<span class="ltx_text ltx_font_bold" id="S6.T2.7.3.3.3.3.1" style="font-size:90%;">pTM</span><span class="ltx_text" id="S6.T2.7.3.3.3.3.2" style="font-size:90%;"> (</span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S6.T2.7.3.3.3.3.m1.1"><semantics id="S6.T2.7.3.3.3.3.m1.1a"><mo id="S6.T2.7.3.3.3.3.m1.1.1" mathsize="90%" stretchy="false" xref="S6.T2.7.3.3.3.3.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S6.T2.7.3.3.3.3.m1.1b"><ci id="S6.T2.7.3.3.3.3.m1.1.1.cmml" xref="S6.T2.7.3.3.3.3.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S6.T2.7.3.3.3.3.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S6.T2.7.3.3.3.3.m1.1d">↑</annotation></semantics></math><span class="ltx_text" id="S6.T2.7.3.3.3.3.3" style="font-size:90%;">)</span>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S6.T2.8.4.4.4.4">
<span class="ltx_text ltx_font_bold" id="S6.T2.8.4.4.4.4.1" style="font-size:90%;">pAE</span><span class="ltx_text" id="S6.T2.8.4.4.4.4.2" style="font-size:90%;"> (</span><math alttext="\downarrow" class="ltx_Math" display="inline" id="S6.T2.8.4.4.4.4.m1.1"><semantics id="S6.T2.8.4.4.4.4.m1.1a"><mo id="S6.T2.8.4.4.4.4.m1.1.1" mathsize="90%" stretchy="false" xref="S6.T2.8.4.4.4.4.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S6.T2.8.4.4.4.4.m1.1b"><ci id="S6.T2.8.4.4.4.4.m1.1.1.cmml" xref="S6.T2.8.4.4.4.4.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S6.T2.8.4.4.4.4.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S6.T2.8.4.4.4.4.m1.1d">↓</annotation></semantics></math><span class="ltx_text" id="S6.T2.8.4.4.4.4.3" style="font-size:90%;">)</span>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S6.T2.9.5.5.5.5">
<span class="ltx_text ltx_font_bold" id="S6.T2.9.5.5.5.5.1" style="font-size:90%;">Entropy</span><span class="ltx_text" id="S6.T2.9.5.5.5.5.2" style="font-size:90%;"> (</span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S6.T2.9.5.5.5.5.m1.1"><semantics id="S6.T2.9.5.5.5.5.m1.1a"><mo id="S6.T2.9.5.5.5.5.m1.1.1" mathsize="90%" stretchy="false" xref="S6.T2.9.5.5.5.5.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S6.T2.9.5.5.5.5.m1.1b"><ci id="S6.T2.9.5.5.5.5.m1.1.1.cmml" xref="S6.T2.9.5.5.5.5.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S6.T2.9.5.5.5.5.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S6.T2.9.5.5.5.5.m1.1d">↑</annotation></semantics></math><span class="ltx_text" id="S6.T2.9.5.5.5.5.3" style="font-size:90%;">)</span>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S6.T2.10.6.6.6.6">
<span class="ltx_text ltx_font_bold" id="S6.T2.10.6.6.6.6.1" style="font-size:90%;">Diversity</span><span class="ltx_text" id="S6.T2.10.6.6.6.6.2" style="font-size:90%;"> (%) (</span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S6.T2.10.6.6.6.6.m1.1"><semantics id="S6.T2.10.6.6.6.6.m1.1a"><mo id="S6.T2.10.6.6.6.6.m1.1.1" mathsize="90%" stretchy="false" xref="S6.T2.10.6.6.6.6.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S6.T2.10.6.6.6.6.m1.1b"><ci id="S6.T2.10.6.6.6.6.m1.1.1.cmml" xref="S6.T2.10.6.6.6.6.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S6.T2.10.6.6.6.6.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S6.T2.10.6.6.6.6.m1.1d">↑</annotation></semantics></math><span class="ltx_text" id="S6.T2.10.6.6.6.6.3" style="font-size:90%;">)</span>
</th>
</tr>
<tr class="ltx_tr" id="S6.T2.10.6.6.7.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_t" id="S6.T2.10.6.6.7.1.1"><span class="ltx_text" id="S6.T2.10.6.6.7.1.1.1" style="font-size:90%;">Test Dataset (random 1000)</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S6.T2.10.6.6.7.1.2"><span class="ltx_text" id="S6.T2.10.6.6.7.1.2.1" style="font-size:90%;">-</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S6.T2.10.6.6.7.1.3"><span class="ltx_text" id="S6.T2.10.6.6.7.1.3.1" style="font-size:90%;">74.00</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S6.T2.10.6.6.7.1.4"><span class="ltx_text" id="S6.T2.10.6.6.7.1.4.1" style="font-size:90%;">0.63</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S6.T2.10.6.6.7.1.5"><span class="ltx_text" id="S6.T2.10.6.6.7.1.5.1" style="font-size:90%;">12.99</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S6.T2.10.6.6.7.1.6"><span class="ltx_text" id="S6.T2.10.6.6.7.1.6.1" style="font-size:90%;">4.0</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S6.T2.10.6.6.7.1.7"><span class="ltx_text" id="S6.T2.10.6.6.7.1.7.1" style="font-size:90%;">71.8</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S6.T2.10.6.6.8.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S6.T2.10.6.6.8.1.1"><span class="ltx_text" id="S6.T2.10.6.6.8.1.1.1" style="font-size:90%;">EvoDiff</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T2.10.6.6.8.1.2"><span class="ltx_text" id="S6.T2.10.6.6.8.1.2.1" style="font-size:90%;">640M</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T2.10.6.6.8.1.3"><span class="ltx_text" id="S6.T2.10.6.6.8.1.3.1" style="font-size:90%;">31.84</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T2.10.6.6.8.1.4"><span class="ltx_text" id="S6.T2.10.6.6.8.1.4.1" style="font-size:90%;">0.21</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T2.10.6.6.8.1.5"><span class="ltx_text" id="S6.T2.10.6.6.8.1.5.1" style="font-size:90%;">24.76</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T2.10.6.6.8.1.6"><span class="ltx_text" id="S6.T2.10.6.6.8.1.6.1" style="font-size:90%;">4.05</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T2.10.6.6.8.1.7"><span class="ltx_text" id="S6.T2.10.6.6.8.1.7.1" style="font-size:90%;">93.2</span></td>
</tr>
<tr class="ltx_tr" id="S6.T2.10.6.6.9.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S6.T2.10.6.6.9.2.1"><span class="ltx_text" id="S6.T2.10.6.6.9.2.1.1" style="font-size:90%;">ProtGPT2</span></th>
<td class="ltx_td ltx_align_center" id="S6.T2.10.6.6.9.2.2"><span class="ltx_text" id="S6.T2.10.6.6.9.2.2.1" style="font-size:90%;">738M</span></td>
<td class="ltx_td ltx_align_center" id="S6.T2.10.6.6.9.2.3"><span class="ltx_text" id="S6.T2.10.6.6.9.2.3.1" style="font-size:90%;">54.92</span></td>
<td class="ltx_td ltx_align_center" id="S6.T2.10.6.6.9.2.4"><span class="ltx_text" id="S6.T2.10.6.6.9.2.4.1" style="font-size:90%;">0.41</span></td>
<td class="ltx_td ltx_align_center" id="S6.T2.10.6.6.9.2.5"><span class="ltx_text" id="S6.T2.10.6.6.9.2.5.1" style="font-size:90%;">19.39</span></td>
<td class="ltx_td ltx_align_center" id="S6.T2.10.6.6.9.2.6"><span class="ltx_text" id="S6.T2.10.6.6.9.2.6.1" style="font-size:90%;">3.85</span></td>
<td class="ltx_td ltx_align_center" id="S6.T2.10.6.6.9.2.7"><span class="ltx_text" id="S6.T2.10.6.6.9.2.7.1" style="font-size:90%;">70.9</span></td>
</tr>
<tr class="ltx_tr" id="S6.T2.10.6.6.10.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S6.T2.10.6.6.10.3.1"><span class="ltx_text" id="S6.T2.10.6.6.10.3.1.1" style="font-size:90%;">ProGen2-small</span></th>
<td class="ltx_td ltx_align_center" id="S6.T2.10.6.6.10.3.2"><span class="ltx_text" id="S6.T2.10.6.6.10.3.2.1" style="font-size:90%;">151M</span></td>
<td class="ltx_td ltx_align_center" id="S6.T2.10.6.6.10.3.3"><span class="ltx_text" id="S6.T2.10.6.6.10.3.3.1" style="font-size:90%;">49.38</span></td>
<td class="ltx_td ltx_align_center" id="S6.T2.10.6.6.10.3.4"><span class="ltx_text" id="S6.T2.10.6.6.10.3.4.1" style="font-size:90%;">0.28</span></td>
<td class="ltx_td ltx_align_center" id="S6.T2.10.6.6.10.3.5"><span class="ltx_text" id="S6.T2.10.6.6.10.3.5.1" style="font-size:90%;">23.38</span></td>
<td class="ltx_td ltx_align_center" id="S6.T2.10.6.6.10.3.6"><span class="ltx_text" id="S6.T2.10.6.6.10.3.6.1" style="font-size:90%;">2.55</span></td>
<td class="ltx_td ltx_align_center" id="S6.T2.10.6.6.10.3.7"><span class="ltx_text" id="S6.T2.10.6.6.10.3.7.1" style="font-size:90%;">89.3</span></td>
</tr>
<tr class="ltx_tr" id="S6.T2.10.6.6.11.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S6.T2.10.6.6.11.4.1">
<span class="ltx_text ltx_font_bold" id="S6.T2.10.6.6.11.4.1.1" style="font-size:90%;">Gumbel-Softmax Flow Matching</span><span class="ltx_text" id="S6.T2.10.6.6.11.4.1.2" style="font-size:90%;"> (Ours)</span>
</th>
<td class="ltx_td ltx_align_center" id="S6.T2.10.6.6.11.4.2"><span class="ltx_text" id="S6.T2.10.6.6.11.4.2.1" style="font-size:90%;">198M</span></td>
<td class="ltx_td ltx_align_center" id="S6.T2.10.6.6.11.4.3"><span class="ltx_text" id="S6.T2.10.6.6.11.4.3.1" style="font-size:90%;">52.54</span></td>
<td class="ltx_td ltx_align_center" id="S6.T2.10.6.6.11.4.4"><span class="ltx_text" id="S6.T2.10.6.6.11.4.4.1" style="font-size:90%;">0.27</span></td>
<td class="ltx_td ltx_align_center" id="S6.T2.10.6.6.11.4.5"><span class="ltx_text" id="S6.T2.10.6.6.11.4.5.1" style="font-size:90%;">16.67</span></td>
<td class="ltx_td ltx_align_center" id="S6.T2.10.6.6.11.4.6"><span class="ltx_text" id="S6.T2.10.6.6.11.4.6.1" style="font-size:90%;">3.41</span></td>
<td class="ltx_td ltx_align_center" id="S6.T2.10.6.6.11.4.7"><span class="ltx_text" id="S6.T2.10.6.6.11.4.7.1" style="font-size:90%;">86.1</span></td>
</tr>
<tr class="ltx_tr" id="S6.T2.10.6.6.12.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S6.T2.10.6.6.12.5.1">
<span class="ltx_text ltx_font_bold" id="S6.T2.10.6.6.12.5.1.1" style="font-size:90%;">Gumbel-Softmax Score Matching</span><span class="ltx_text" id="S6.T2.10.6.6.12.5.1.2" style="font-size:90%;"> (Ours)</span>
</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S6.T2.10.6.6.12.5.2"><span class="ltx_text" id="S6.T2.10.6.6.12.5.2.1" style="font-size:90%;">198M</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S6.T2.10.6.6.12.5.3"><span class="ltx_text" id="S6.T2.10.6.6.12.5.3.1" style="font-size:90%;">49.40</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S6.T2.10.6.6.12.5.4"><span class="ltx_text" id="S6.T2.10.6.6.12.5.4.1" style="font-size:90%;">0.29</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S6.T2.10.6.6.12.5.5"><span class="ltx_text" id="S6.T2.10.6.6.12.5.5.1" style="font-size:90%;">15.71</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S6.T2.10.6.6.12.5.6"><span class="ltx_text" id="S6.T2.10.6.6.12.5.6.1" style="font-size:90%;">3.37</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S6.T2.10.6.6.12.5.7"><span class="ltx_text" id="S6.T2.10.6.6.12.5.7.1" style="font-size:90%;">82.5</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a comparison of various protein sequence generation models, evaluating their performance based on several key metrics.  The models compared include EvoDiff and ProtGPT2, along with the proposed Gumbel-Softmax Flow Matching and Gumbel-Softmax Score Matching. For each model, 100 protein sequences were generated without any input conditioning (unconditionally).  The table then assesses the quality of these generated sequences using metrics such as PLDDT (a measure of local structural confidence), PTM (predicted template modeling score for global structure quality), PAE (predicted alignment error, measuring pairwise residue placement accuracy), entropy (reflecting sequence diversity), and the percentage of diverse sequences generated.
> <details>
> <summary>read the caption</summary>
> Table 2: Evaluation metrics for generative quality of protein sequences. Metrics were calculated on 100 unconditionally generated sequences from each model, including EvoDiff and ProtGPT2. The arrow indicates whether (↑)↑(\uparrow)( ↑ ) or (↓)↓(\downarrow)( ↓ ) values are better.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S6.T3.3.3.3">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S6.T3.3.3.3.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S6.T3.3.3.3.3.4"><span class="ltx_text ltx_font_bold" id="S6.T3.3.3.3.3.4.1" style="font-size:90%;">PDB ID</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S6.T3.3.3.3.3.5"><span class="ltx_text ltx_font_bold" id="S6.T3.3.3.3.3.5.1" style="font-size:90%;">existing binder</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="2" id="S6.T3.1.1.1.1.1"><span class="ltx_text ltx_font_bold" id="S6.T3.1.1.1.1.1.1" style="font-size:90%;">ipTM (<math alttext="\uparrow" class="ltx_Math" display="inline" id="S6.T3.1.1.1.1.1.1.m1.1"><semantics id="S6.T3.1.1.1.1.1.1.m1.1a"><mo id="S6.T3.1.1.1.1.1.1.m1.1.1" stretchy="false" xref="S6.T3.1.1.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S6.T3.1.1.1.1.1.1.m1.1b"><ci id="S6.T3.1.1.1.1.1.1.m1.1.1.cmml" xref="S6.T3.1.1.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S6.T3.1.1.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S6.T3.1.1.1.1.1.1.m1.1d">↑</annotation></semantics></math>)</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="2" id="S6.T3.2.2.2.2.2"><span class="ltx_text ltx_font_bold" id="S6.T3.2.2.2.2.2.1" style="font-size:90%;">pTM (<math alttext="\uparrow" class="ltx_Math" display="inline" id="S6.T3.2.2.2.2.2.1.m1.1"><semantics id="S6.T3.2.2.2.2.2.1.m1.1a"><mo id="S6.T3.2.2.2.2.2.1.m1.1.1" stretchy="false" xref="S6.T3.2.2.2.2.2.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S6.T3.2.2.2.2.2.1.m1.1b"><ci id="S6.T3.2.2.2.2.2.1.m1.1.1.cmml" xref="S6.T3.2.2.2.2.2.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S6.T3.2.2.2.2.2.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S6.T3.2.2.2.2.2.1.m1.1d">↑</annotation></semantics></math>)</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="2" id="S6.T3.3.3.3.3.3"><span class="ltx_text ltx_font_bold" id="S6.T3.3.3.3.3.3.1" style="font-size:90%;">VINA Docking Score (kcal/mol) (<math alttext="\downarrow" class="ltx_Math" display="inline" id="S6.T3.3.3.3.3.3.1.m1.1"><semantics id="S6.T3.3.3.3.3.3.1.m1.1a"><mo id="S6.T3.3.3.3.3.3.1.m1.1.1" stretchy="false" xref="S6.T3.3.3.3.3.3.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S6.T3.3.3.3.3.3.1.m1.1b"><ci id="S6.T3.3.3.3.3.3.1.m1.1.1.cmml" xref="S6.T3.3.3.3.3.3.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S6.T3.3.3.3.3.3.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S6.T3.3.3.3.3.3.1.m1.1d">↓</annotation></semantics></math>)</span></th>
</tr>
<tr class="ltx_tr" id="S6.T3.3.3.3.4.1">
<th class="ltx_td ltx_th ltx_th_row ltx_border_t" id="S6.T3.3.3.3.4.1.1"></th>
<th class="ltx_td ltx_th ltx_th_column ltx_th_row ltx_border_t" id="S6.T3.3.3.3.4.1.2"></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S6.T3.3.3.3.4.1.3"><span class="ltx_text" id="S6.T3.3.3.3.4.1.3.1" style="font-size:90%;">existing</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S6.T3.3.3.3.4.1.4"><span class="ltx_text" id="S6.T3.3.3.3.4.1.4.1" style="font-size:90%;">designed</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S6.T3.3.3.3.4.1.5"><span class="ltx_text" id="S6.T3.3.3.3.4.1.5.1" style="font-size:90%;">existing</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S6.T3.3.3.3.4.1.6"><span class="ltx_text" id="S6.T3.3.3.3.4.1.6.1" style="font-size:90%;">designed</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S6.T3.3.3.3.4.1.7"><span class="ltx_text" id="S6.T3.3.3.3.4.1.7.1" style="font-size:90%;">existing</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S6.T3.3.3.3.4.1.8"><span class="ltx_text" id="S6.T3.3.3.3.4.1.8.1" style="font-size:90%;">designed</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S6.T3.3.3.3.5.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S6.T3.3.3.3.5.1.1"><span class="ltx_text" id="S6.T3.3.3.3.5.1.1.1" style="font-size:90%;">GLP-1R (3C5T)</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S6.T3.3.3.3.5.1.2"><span class="ltx_text" id="S6.T3.3.3.3.5.1.2.1" style="font-size:90%;">HXEGTFTSDVSSYLEGQAAKEFIAWLVRGRG</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T3.3.3.3.5.1.3"><span class="ltx_text" id="S6.T3.3.3.3.5.1.3.1" style="font-size:90%;">*</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T3.3.3.3.5.1.4"><span class="ltx_text" id="S6.T3.3.3.3.5.1.4.1" style="font-size:90%;">0.65</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T3.3.3.3.5.1.5"><span class="ltx_text" id="S6.T3.3.3.3.5.1.5.1" style="font-size:90%;">*</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T3.3.3.3.5.1.6"><span class="ltx_text" id="S6.T3.3.3.3.5.1.6.1" style="font-size:90%;">0.66</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T3.3.3.3.5.1.7"><span class="ltx_text" id="S6.T3.3.3.3.5.1.7.1" style="font-size:90%;">-5.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T3.3.3.3.5.1.8"><span class="ltx_text" id="S6.T3.3.3.3.5.1.8.1" style="font-size:90%;">-7.5</span></td>
</tr>
<tr class="ltx_tr" id="S6.T3.3.3.3.6.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S6.T3.3.3.3.6.2.1"><span class="ltx_text" id="S6.T3.3.3.3.6.2.1.1" style="font-size:90%;">1AYC</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S6.T3.3.3.3.6.2.2"><span class="ltx_text" id="S6.T3.3.3.3.6.2.2.1" style="font-size:90%;">ARLIDDQLLKS</span></th>
<td class="ltx_td ltx_align_center" id="S6.T3.3.3.3.6.2.3"><span class="ltx_text" id="S6.T3.3.3.3.6.2.3.1" style="font-size:90%;">0.68</span></td>
<td class="ltx_td ltx_align_center" id="S6.T3.3.3.3.6.2.4"><span class="ltx_text" id="S6.T3.3.3.3.6.2.4.1" style="font-size:90%;">0.67</span></td>
<td class="ltx_td ltx_align_center" id="S6.T3.3.3.3.6.2.5"><span class="ltx_text" id="S6.T3.3.3.3.6.2.5.1" style="font-size:90%;">0.88</span></td>
<td class="ltx_td ltx_align_center" id="S6.T3.3.3.3.6.2.6"><span class="ltx_text" id="S6.T3.3.3.3.6.2.6.1" style="font-size:90%;">0.88</span></td>
<td class="ltx_td ltx_align_center" id="S6.T3.3.3.3.6.2.7"><span class="ltx_text" id="S6.T3.3.3.3.6.2.7.1" style="font-size:90%;">-5.3</span></td>
<td class="ltx_td ltx_align_center" id="S6.T3.3.3.3.6.2.8"><span class="ltx_text" id="S6.T3.3.3.3.6.2.8.1" style="font-size:90%;">-4.6</span></td>
</tr>
<tr class="ltx_tr" id="S6.T3.3.3.3.7.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S6.T3.3.3.3.7.3.1"><span class="ltx_text" id="S6.T3.3.3.3.7.3.1.1" style="font-size:90%;">2Q8Y</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S6.T3.3.3.3.7.3.2"><span class="ltx_text" id="S6.T3.3.3.3.7.3.2.1" style="font-size:90%;">ALRRELADW</span></th>
<td class="ltx_td ltx_align_center" id="S6.T3.3.3.3.7.3.3"><span class="ltx_text" id="S6.T3.3.3.3.7.3.3.1" style="font-size:90%;">0.44</span></td>
<td class="ltx_td ltx_align_center" id="S6.T3.3.3.3.7.3.4"><span class="ltx_text" id="S6.T3.3.3.3.7.3.4.1" style="font-size:90%;">0.70</span></td>
<td class="ltx_td ltx_align_center" id="S6.T3.3.3.3.7.3.5"><span class="ltx_text" id="S6.T3.3.3.3.7.3.5.1" style="font-size:90%;">0.83</span></td>
<td class="ltx_td ltx_align_center" id="S6.T3.3.3.3.7.3.6"><span class="ltx_text" id="S6.T3.3.3.3.7.3.6.1" style="font-size:90%;">0.84</span></td>
<td class="ltx_td ltx_align_center" id="S6.T3.3.3.3.7.3.7"><span class="ltx_text" id="S6.T3.3.3.3.7.3.7.1" style="font-size:90%;">-6.7</span></td>
<td class="ltx_td ltx_align_center" id="S6.T3.3.3.3.7.3.8"><span class="ltx_text" id="S6.T3.3.3.3.7.3.8.1" style="font-size:90%;">-6.8</span></td>
</tr>
<tr class="ltx_tr" id="S6.T3.3.3.3.8.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S6.T3.3.3.3.8.4.1"><span class="ltx_text" id="S6.T3.3.3.3.8.4.1.1" style="font-size:90%;">3EQS</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S6.T3.3.3.3.8.4.2"><span class="ltx_text" id="S6.T3.3.3.3.8.4.2.1" style="font-size:90%;">GDHARQGLLALG</span></th>
<td class="ltx_td ltx_align_center" id="S6.T3.3.3.3.8.4.3"><span class="ltx_text" id="S6.T3.3.3.3.8.4.3.1" style="font-size:90%;">0.80</span></td>
<td class="ltx_td ltx_align_center" id="S6.T3.3.3.3.8.4.4"><span class="ltx_text" id="S6.T3.3.3.3.8.4.4.1" style="font-size:90%;">0.71</span></td>
<td class="ltx_td ltx_align_center" id="S6.T3.3.3.3.8.4.5"><span class="ltx_text" id="S6.T3.3.3.3.8.4.5.1" style="font-size:90%;">0.88</span></td>
<td class="ltx_td ltx_align_center" id="S6.T3.3.3.3.8.4.6"><span class="ltx_text" id="S6.T3.3.3.3.8.4.6.1" style="font-size:90%;">0.86</span></td>
<td class="ltx_td ltx_align_center" id="S6.T3.3.3.3.8.4.7"><span class="ltx_text" id="S6.T3.3.3.3.8.4.7.1" style="font-size:90%;">-4.4</span></td>
<td class="ltx_td ltx_align_center" id="S6.T3.3.3.3.8.4.8"><span class="ltx_text" id="S6.T3.3.3.3.8.4.8.1" style="font-size:90%;">-4.7</span></td>
</tr>
<tr class="ltx_tr" id="S6.T3.3.3.3.9.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S6.T3.3.3.3.9.5.1"><span class="ltx_text" id="S6.T3.3.3.3.9.5.1.1" style="font-size:90%;">3NIH</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S6.T3.3.3.3.9.5.2"><span class="ltx_text" id="S6.T3.3.3.3.9.5.2.1" style="font-size:90%;">RIAAA</span></th>
<td class="ltx_td ltx_align_center" id="S6.T3.3.3.3.9.5.3"><span class="ltx_text" id="S6.T3.3.3.3.9.5.3.1" style="font-size:90%;">0.85</span></td>
<td class="ltx_td ltx_align_center" id="S6.T3.3.3.3.9.5.4"><span class="ltx_text" id="S6.T3.3.3.3.9.5.4.1" style="font-size:90%;">0.86</span></td>
<td class="ltx_td ltx_align_center" id="S6.T3.3.3.3.9.5.5"><span class="ltx_text" id="S6.T3.3.3.3.9.5.5.1" style="font-size:90%;">0.91</span></td>
<td class="ltx_td ltx_align_center" id="S6.T3.3.3.3.9.5.6"><span class="ltx_text" id="S6.T3.3.3.3.9.5.6.1" style="font-size:90%;">0.90</span></td>
<td class="ltx_td ltx_align_center" id="S6.T3.3.3.3.9.5.7"><span class="ltx_text" id="S6.T3.3.3.3.9.5.7.1" style="font-size:90%;">-6.2</span></td>
<td class="ltx_td ltx_align_center" id="S6.T3.3.3.3.9.5.8"><span class="ltx_text" id="S6.T3.3.3.3.9.5.8.1" style="font-size:90%;">-5.7</span></td>
</tr>
<tr class="ltx_tr" id="S6.T3.3.3.3.10.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S6.T3.3.3.3.10.6.1"><span class="ltx_text" id="S6.T3.3.3.3.10.6.1.1" style="font-size:90%;">4EZN</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S6.T3.3.3.3.10.6.2"><span class="ltx_text" id="S6.T3.3.3.3.10.6.2.1" style="font-size:90%;">VDKGSYLPRPTPPRPIYNRN</span></th>
<td class="ltx_td ltx_align_center" id="S6.T3.3.3.3.10.6.3"><span class="ltx_text" id="S6.T3.3.3.3.10.6.3.1" style="font-size:90%;">0.54</span></td>
<td class="ltx_td ltx_align_center" id="S6.T3.3.3.3.10.6.4"><span class="ltx_text" id="S6.T3.3.3.3.10.6.4.1" style="font-size:90%;">0.59</span></td>
<td class="ltx_td ltx_align_center" id="S6.T3.3.3.3.10.6.5"><span class="ltx_text" id="S6.T3.3.3.3.10.6.5.1" style="font-size:90%;">0.85</span></td>
<td class="ltx_td ltx_align_center" id="S6.T3.3.3.3.10.6.6"><span class="ltx_text" id="S6.T3.3.3.3.10.6.6.1" style="font-size:90%;">0.87</span></td>
<td class="ltx_td ltx_align_center" id="S6.T3.3.3.3.10.6.7"><span class="ltx_text" id="S6.T3.3.3.3.10.6.7.1" style="font-size:90%;">-4.1</span></td>
<td class="ltx_td ltx_align_center" id="S6.T3.3.3.3.10.6.8"><span class="ltx_text" id="S6.T3.3.3.3.10.6.8.1" style="font-size:90%;">-6.5</span></td>
</tr>
<tr class="ltx_tr" id="S6.T3.3.3.3.11.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S6.T3.3.3.3.11.7.1"><span class="ltx_text" id="S6.T3.3.3.3.11.7.1.1" style="font-size:90%;">4GNE</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S6.T3.3.3.3.11.7.2"><span class="ltx_text" id="S6.T3.3.3.3.11.7.2.1" style="font-size:90%;">ARTKQTA</span></th>
<td class="ltx_td ltx_align_center" id="S6.T3.3.3.3.11.7.3"><span class="ltx_text" id="S6.T3.3.3.3.11.7.3.1" style="font-size:90%;">0.89</span></td>
<td class="ltx_td ltx_align_center" id="S6.T3.3.3.3.11.7.4"><span class="ltx_text" id="S6.T3.3.3.3.11.7.4.1" style="font-size:90%;">0.76</span></td>
<td class="ltx_td ltx_align_center" id="S6.T3.3.3.3.11.7.5"><span class="ltx_text" id="S6.T3.3.3.3.11.7.5.1" style="font-size:90%;">0.76</span></td>
<td class="ltx_td ltx_align_center" id="S6.T3.3.3.3.11.7.6"><span class="ltx_text" id="S6.T3.3.3.3.11.7.6.1" style="font-size:90%;">0.76</span></td>
<td class="ltx_td ltx_align_center" id="S6.T3.3.3.3.11.7.7"><span class="ltx_text" id="S6.T3.3.3.3.11.7.7.1" style="font-size:90%;">-5.0</span></td>
<td class="ltx_td ltx_align_center" id="S6.T3.3.3.3.11.7.8"><span class="ltx_text" id="S6.T3.3.3.3.11.7.8.1" style="font-size:90%;">-4.8</span></td>
</tr>
<tr class="ltx_tr" id="S6.T3.3.3.3.12.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S6.T3.3.3.3.12.8.1"><span class="ltx_text" id="S6.T3.3.3.3.12.8.1.1" style="font-size:90%;">4IU7</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S6.T3.3.3.3.12.8.2"><span class="ltx_text" id="S6.T3.3.3.3.12.8.2.1" style="font-size:90%;">HKILHRLLQD</span></th>
<td class="ltx_td ltx_align_center" id="S6.T3.3.3.3.12.8.3"><span class="ltx_text" id="S6.T3.3.3.3.12.8.3.1" style="font-size:90%;">0.93</span></td>
<td class="ltx_td ltx_align_center" id="S6.T3.3.3.3.12.8.4"><span class="ltx_text" id="S6.T3.3.3.3.12.8.4.1" style="font-size:90%;">0.79</span></td>
<td class="ltx_td ltx_align_center" id="S6.T3.3.3.3.12.8.5"><span class="ltx_text" id="S6.T3.3.3.3.12.8.5.1" style="font-size:90%;">0.91</span></td>
<td class="ltx_td ltx_align_center" id="S6.T3.3.3.3.12.8.6"><span class="ltx_text" id="S6.T3.3.3.3.12.8.6.1" style="font-size:90%;">0.94</span></td>
<td class="ltx_td ltx_align_center" id="S6.T3.3.3.3.12.8.7"><span class="ltx_text" id="S6.T3.3.3.3.12.8.7.1" style="font-size:90%;">-4.6</span></td>
<td class="ltx_td ltx_align_center" id="S6.T3.3.3.3.12.8.8"><span class="ltx_text" id="S6.T3.3.3.3.12.8.8.1" style="font-size:90%;">-5.9</span></td>
</tr>
<tr class="ltx_tr" id="S6.T3.3.3.3.13.9">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S6.T3.3.3.3.13.9.1"><span class="ltx_text" id="S6.T3.3.3.3.13.9.1.1" style="font-size:90%;">5E1C</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S6.T3.3.3.3.13.9.2"><span class="ltx_text" id="S6.T3.3.3.3.13.9.2.1" style="font-size:90%;">KHKILHRLLQDSSS</span></th>
<td class="ltx_td ltx_align_center" id="S6.T3.3.3.3.13.9.3"><span class="ltx_text" id="S6.T3.3.3.3.13.9.3.1" style="font-size:90%;">0.83</span></td>
<td class="ltx_td ltx_align_center" id="S6.T3.3.3.3.13.9.4"><span class="ltx_text" id="S6.T3.3.3.3.13.9.4.1" style="font-size:90%;">0.80</span></td>
<td class="ltx_td ltx_align_center" id="S6.T3.3.3.3.13.9.5"><span class="ltx_text" id="S6.T3.3.3.3.13.9.5.1" style="font-size:90%;">0.91</span></td>
<td class="ltx_td ltx_align_center" id="S6.T3.3.3.3.13.9.6"><span class="ltx_text" id="S6.T3.3.3.3.13.9.6.1" style="font-size:90%;">0.91</span></td>
<td class="ltx_td ltx_align_center" id="S6.T3.3.3.3.13.9.7"><span class="ltx_text" id="S6.T3.3.3.3.13.9.7.1" style="font-size:90%;">-4.3</span></td>
<td class="ltx_td ltx_align_center" id="S6.T3.3.3.3.13.9.8"><span class="ltx_text" id="S6.T3.3.3.3.13.9.8.1" style="font-size:90%;">-5.1</span></td>
</tr>
<tr class="ltx_tr" id="S6.T3.3.3.3.14.10">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S6.T3.3.3.3.14.10.1"><span class="ltx_text" id="S6.T3.3.3.3.14.10.1.1" style="font-size:90%;">5EYZ</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S6.T3.3.3.3.14.10.2"><span class="ltx_text" id="S6.T3.3.3.3.14.10.2.1" style="font-size:90%;">SWESHKSGRETEV</span></th>
<td class="ltx_td ltx_align_center" id="S6.T3.3.3.3.14.10.3"><span class="ltx_text" id="S6.T3.3.3.3.14.10.3.1" style="font-size:90%;">0.73</span></td>
<td class="ltx_td ltx_align_center" id="S6.T3.3.3.3.14.10.4"><span class="ltx_text" id="S6.T3.3.3.3.14.10.4.1" style="font-size:90%;">0.81</span></td>
<td class="ltx_td ltx_align_center" id="S6.T3.3.3.3.14.10.5"><span class="ltx_text" id="S6.T3.3.3.3.14.10.5.1" style="font-size:90%;">0.77</span></td>
<td class="ltx_td ltx_align_center" id="S6.T3.3.3.3.14.10.6"><span class="ltx_text" id="S6.T3.3.3.3.14.10.6.1" style="font-size:90%;">0.78</span></td>
<td class="ltx_td ltx_align_center" id="S6.T3.3.3.3.14.10.7"><span class="ltx_text" id="S6.T3.3.3.3.14.10.7.1" style="font-size:90%;">-2.9</span></td>
<td class="ltx_td ltx_align_center" id="S6.T3.3.3.3.14.10.8"><span class="ltx_text" id="S6.T3.3.3.3.14.10.8.1" style="font-size:90%;">-6.9</span></td>
</tr>
<tr class="ltx_tr" id="S6.T3.3.3.3.15.11">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S6.T3.3.3.3.15.11.1"><span class="ltx_text" id="S6.T3.3.3.3.15.11.1.1" style="font-size:90%;">5KRI</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S6.T3.3.3.3.15.11.2"><span class="ltx_text" id="S6.T3.3.3.3.15.11.2.1" style="font-size:90%;">KHKILHRLLQDSSS</span></th>
<td class="ltx_td ltx_align_center" id="S6.T3.3.3.3.15.11.3"><span class="ltx_text" id="S6.T3.3.3.3.15.11.3.1" style="font-size:90%;">0.83</span></td>
<td class="ltx_td ltx_align_center" id="S6.T3.3.3.3.15.11.4"><span class="ltx_text" id="S6.T3.3.3.3.15.11.4.1" style="font-size:90%;">0.77</span></td>
<td class="ltx_td ltx_align_center" id="S6.T3.3.3.3.15.11.5"><span class="ltx_text" id="S6.T3.3.3.3.15.11.5.1" style="font-size:90%;">0.91</span></td>
<td class="ltx_td ltx_align_center" id="S6.T3.3.3.3.15.11.6"><span class="ltx_text" id="S6.T3.3.3.3.15.11.6.1" style="font-size:90%;">0.91</span></td>
<td class="ltx_td ltx_align_center" id="S6.T3.3.3.3.15.11.7"><span class="ltx_text" id="S6.T3.3.3.3.15.11.7.1" style="font-size:90%;">-3.5</span></td>
<td class="ltx_td ltx_align_center" id="S6.T3.3.3.3.15.11.8"><span class="ltx_text" id="S6.T3.3.3.3.15.11.8.1" style="font-size:90%;">-5.5</span></td>
</tr>
<tr class="ltx_tr" id="S6.T3.3.3.3.16.12">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S6.T3.3.3.3.16.12.1"><span class="ltx_text" id="S6.T3.3.3.3.16.12.1.1" style="font-size:90%;">7LUL</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S6.T3.3.3.3.16.12.2"><span class="ltx_text" id="S6.T3.3.3.3.16.12.2.1" style="font-size:90%;">RWYERWV</span></th>
<td class="ltx_td ltx_align_center" id="S6.T3.3.3.3.16.12.3"><span class="ltx_text" id="S6.T3.3.3.3.16.12.3.1" style="font-size:90%;">0.94</span></td>
<td class="ltx_td ltx_align_center" id="S6.T3.3.3.3.16.12.4"><span class="ltx_text" id="S6.T3.3.3.3.16.12.4.1" style="font-size:90%;">0.91</span></td>
<td class="ltx_td ltx_align_center" id="S6.T3.3.3.3.16.12.5"><span class="ltx_text" id="S6.T3.3.3.3.16.12.5.1" style="font-size:90%;">0.93</span></td>
<td class="ltx_td ltx_align_center" id="S6.T3.3.3.3.16.12.6"><span class="ltx_text" id="S6.T3.3.3.3.16.12.6.1" style="font-size:90%;">0.92</span></td>
<td class="ltx_td ltx_align_center" id="S6.T3.3.3.3.16.12.7"><span class="ltx_text" id="S6.T3.3.3.3.16.12.7.1" style="font-size:90%;">-6.5</span></td>
<td class="ltx_td ltx_align_center" id="S6.T3.3.3.3.16.12.8"><span class="ltx_text" id="S6.T3.3.3.3.16.12.8.1" style="font-size:90%;">-7.6</span></td>
</tr>
<tr class="ltx_tr" id="S6.T3.3.3.3.17.13">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S6.T3.3.3.3.17.13.1"><span class="ltx_text" id="S6.T3.3.3.3.17.13.1.1" style="font-size:90%;">8CN1</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S6.T3.3.3.3.17.13.2"><span class="ltx_text" id="S6.T3.3.3.3.17.13.2.1" style="font-size:90%;">ETEV</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S6.T3.3.3.3.17.13.3"><span class="ltx_text" id="S6.T3.3.3.3.17.13.3.1" style="font-size:90%;">0.90</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S6.T3.3.3.3.17.13.4"><span class="ltx_text" id="S6.T3.3.3.3.17.13.4.1" style="font-size:90%;">0.86</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S6.T3.3.3.3.17.13.5"><span class="ltx_text" id="S6.T3.3.3.3.17.13.5.1" style="font-size:90%;">0.72</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S6.T3.3.3.3.17.13.6"><span class="ltx_text" id="S6.T3.3.3.3.17.13.6.1" style="font-size:90%;">0.82</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S6.T3.3.3.3.17.13.7"><span class="ltx_text" id="S6.T3.3.3.3.17.13.7.1" style="font-size:90%;">-6.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S6.T3.3.3.3.17.13.8"><span class="ltx_text" id="S6.T3.3.3.3.17.13.8.1" style="font-size:90%;">-6.9</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table compares the performance of existing peptide binders and those designed using the Gumbel-Softmax Flow Matching (FM) method.  For each of several protein targets, it shows the interface predicted template modeling (ipTM) scores and VINA docking scores for both existing binders (from the literature) and newly designed binders (generated by the model).  ipTM assesses the accuracy of predicted relative positions of interacting residues between the peptide and protein, while VINA docking score estimates the binding affinity. Higher ipTM scores and lower VINA scores indicate better binding. Note that one entry contains an unnatural amino acid (marked with *) which cannot be processed by AlphaFold3, and thus lacks ipTM data.
> <details>
> <summary>read the caption</summary>
> Table 3: Comparison of ipTM and VINA docking scores for existing and designed peptide binders to protein targets. The ipTM scores are calculated by AlphaFold3 for peptide-protein complexes using both existing peptides and peptides designed by guided Gumbel-Softmax FM. *Contains unnatural amino acid X which cannot be processed by AlphaFold3.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S6.T4.3.3.3">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S6.T4.3.3.3.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S6.T4.3.3.3.3.4"><span class="ltx_text ltx_font_bold" id="S6.T4.3.3.3.3.4.1">PDB ID</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S6.T4.3.3.3.3.5"><span class="ltx_text ltx_font_bold" id="S6.T4.3.3.3.3.5.1">Protein Name</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S6.T4.3.3.3.3.6"><span class="ltx_text ltx_font_bold" id="S6.T4.3.3.3.3.6.1">Disease</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="2" id="S6.T4.1.1.1.1.1"><span class="ltx_text ltx_font_bold" id="S6.T4.1.1.1.1.1.1">ipTM (<math alttext="\uparrow" class="ltx_Math" display="inline" id="S6.T4.1.1.1.1.1.1.m1.1"><semantics id="S6.T4.1.1.1.1.1.1.m1.1a"><mo id="S6.T4.1.1.1.1.1.1.m1.1.1" stretchy="false" xref="S6.T4.1.1.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S6.T4.1.1.1.1.1.1.m1.1b"><ci id="S6.T4.1.1.1.1.1.1.m1.1.1.cmml" xref="S6.T4.1.1.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S6.T4.1.1.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S6.T4.1.1.1.1.1.1.m1.1d">↑</annotation></semantics></math>)</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="2" id="S6.T4.2.2.2.2.2"><span class="ltx_text ltx_font_bold" id="S6.T4.2.2.2.2.2.1">pTM (<math alttext="\uparrow" class="ltx_Math" display="inline" id="S6.T4.2.2.2.2.2.1.m1.1"><semantics id="S6.T4.2.2.2.2.2.1.m1.1a"><mo id="S6.T4.2.2.2.2.2.1.m1.1.1" stretchy="false" xref="S6.T4.2.2.2.2.2.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S6.T4.2.2.2.2.2.1.m1.1b"><ci id="S6.T4.2.2.2.2.2.1.m1.1.1.cmml" xref="S6.T4.2.2.2.2.2.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S6.T4.2.2.2.2.2.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S6.T4.2.2.2.2.2.1.m1.1d">↑</annotation></semantics></math>)</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="2" id="S6.T4.3.3.3.3.3"><span class="ltx_text ltx_font_bold" id="S6.T4.3.3.3.3.3.1">VINA Docking Score (kcal/mol) (<math alttext="\downarrow" class="ltx_Math" display="inline" id="S6.T4.3.3.3.3.3.1.m1.1"><semantics id="S6.T4.3.3.3.3.3.1.m1.1a"><mo id="S6.T4.3.3.3.3.3.1.m1.1.1" stretchy="false" xref="S6.T4.3.3.3.3.3.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S6.T4.3.3.3.3.3.1.m1.1b"><ci id="S6.T4.3.3.3.3.3.1.m1.1.1.cmml" xref="S6.T4.3.3.3.3.3.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S6.T4.3.3.3.3.3.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S6.T4.3.3.3.3.3.1.m1.1d">↓</annotation></semantics></math>)</span></th>
</tr>
<tr class="ltx_tr" id="S6.T4.3.3.3.4.1">
<th class="ltx_td ltx_th ltx_th_row ltx_border_t" id="S6.T4.3.3.3.4.1.1"></th>
<th class="ltx_td ltx_th ltx_th_column ltx_th_row ltx_border_t" id="S6.T4.3.3.3.4.1.2"></th>
<th class="ltx_td ltx_th ltx_th_column ltx_th_row ltx_border_t" id="S6.T4.3.3.3.4.1.3"></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S6.T4.3.3.3.4.1.4">designed</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S6.T4.3.3.3.4.1.5">scramble</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S6.T4.3.3.3.4.1.6">designed</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S6.T4.3.3.3.4.1.7">scramble</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S6.T4.3.3.3.4.1.8">designed</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S6.T4.3.3.3.4.1.9">scramble</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S6.T4.3.3.3.5.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S6.T4.3.3.3.5.1.1">6A9P</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S6.T4.3.3.3.5.1.2">GFAP</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S6.T4.3.3.3.5.1.3">Alexander Disease</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T4.3.3.3.5.1.4">0.62</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T4.3.3.3.5.1.5">0.38</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T4.3.3.3.5.1.6">0.31</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T4.3.3.3.5.1.7">0.29</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T4.3.3.3.5.1.8">-5.9</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T4.3.3.3.5.1.9">-3.7</td>
</tr>
<tr class="ltx_tr" id="S6.T4.3.3.3.6.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S6.T4.3.3.3.6.2.1">6CAJ</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S6.T4.3.3.3.6.2.2">eIF2B</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S6.T4.3.3.3.6.2.3">Vanishing White Matter Disease</th>
<td class="ltx_td ltx_align_center" id="S6.T4.3.3.3.6.2.4">0.61</td>
<td class="ltx_td ltx_align_center" id="S6.T4.3.3.3.6.2.5">0.39</td>
<td class="ltx_td ltx_align_center" id="S6.T4.3.3.3.6.2.6">0.77</td>
<td class="ltx_td ltx_align_center" id="S6.T4.3.3.3.6.2.7">0.76</td>
<td class="ltx_td ltx_align_center" id="S6.T4.3.3.3.6.2.8">-9.1</td>
<td class="ltx_td ltx_align_center" id="S6.T4.3.3.3.6.2.9">-9.0</td>
</tr>
<tr class="ltx_tr" id="S6.T4.3.3.3.7.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S6.T4.3.3.3.7.3.1">3HVE</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S6.T4.3.3.3.7.3.2">Gigaxonin</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S6.T4.3.3.3.7.3.3">Giant Axonal Neuropathy</th>
<td class="ltx_td ltx_align_center" id="S6.T4.3.3.3.7.3.4">0.75</td>
<td class="ltx_td ltx_align_center" id="S6.T4.3.3.3.7.3.5">0.54</td>
<td class="ltx_td ltx_align_center" id="S6.T4.3.3.3.7.3.6">0.83</td>
<td class="ltx_td ltx_align_center" id="S6.T4.3.3.3.7.3.7">0.82</td>
<td class="ltx_td ltx_align_center" id="S6.T4.3.3.3.7.3.8">-6.8</td>
<td class="ltx_td ltx_align_center" id="S6.T4.3.3.3.7.3.9">-6.2</td>
</tr>
<tr class="ltx_tr" id="S6.T4.3.3.3.8.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S6.T4.3.3.3.8.4.1">6W5V</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S6.T4.3.3.3.8.4.2">NPC2</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S6.T4.3.3.3.8.4.3">Niemann-Pick Disease Type C</th>
<td class="ltx_td ltx_align_center" id="S6.T4.3.3.3.8.4.4">0.80</td>
<td class="ltx_td ltx_align_center" id="S6.T4.3.3.3.8.4.5">0.34</td>
<td class="ltx_td ltx_align_center" id="S6.T4.3.3.3.8.4.6">0.79</td>
<td class="ltx_td ltx_align_center" id="S6.T4.3.3.3.8.4.7">0.77</td>
<td class="ltx_td ltx_align_center" id="S6.T4.3.3.3.8.4.8">-6.5</td>
<td class="ltx_td ltx_align_center" id="S6.T4.3.3.3.8.4.9">-5.6</td>
</tr>
<tr class="ltx_tr" id="S6.T4.3.3.3.9.5">
<th class="ltx_td ltx_th ltx_th_row" id="S6.T4.3.3.3.9.5.1"></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S6.T4.3.3.3.9.5.2">JPH3</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S6.T4.3.3.3.9.5.3">Huntington’s Disease-Like 2 (HDL2)</th>
<td class="ltx_td ltx_align_center" id="S6.T4.3.3.3.9.5.4">0.72</td>
<td class="ltx_td ltx_align_center" id="S6.T4.3.3.3.9.5.5">0.60</td>
<td class="ltx_td ltx_align_center" id="S6.T4.3.3.3.9.5.6">0.49</td>
<td class="ltx_td ltx_align_center" id="S6.T4.3.3.3.9.5.7">0.49</td>
<td class="ltx_td ltx_align_center" id="S6.T4.3.3.3.9.5.8">-7.9</td>
<td class="ltx_td ltx_align_center" id="S6.T4.3.3.3.9.5.9">-7.8</td>
</tr>
<tr class="ltx_tr" id="S6.T4.3.3.3.10.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S6.T4.3.3.3.10.6.1">2CKL</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S6.T4.3.3.3.10.6.2">BMI1</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S6.T4.3.3.3.10.6.3">Medulloblastoma</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S6.T4.3.3.3.10.6.4">0.71</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S6.T4.3.3.3.10.6.5">0.43</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S6.T4.3.3.3.10.6.6">0.81</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S6.T4.3.3.3.10.6.7">0.73</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S6.T4.3.3.3.10.6.8">-6.8</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S6.T4.3.3.3.10.6.9">-6.2</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a comparison of the binding affinity of designed peptides and scrambled control peptides for six protein targets with no known binders. The performance is evaluated using three metrics: ipTM (interface predicted template modeling) score from AlphaFold3, which measures the accuracy of the predicted relative positions between residues involved in peptide-protein interactions; pTM (predicted template modeling) score from AlphaFold3, which measures the accuracy of the predicted structure of the whole peptide-protein complex; and VINA docking score from AutoDock Vina, which evaluates the free energy of the binding interaction. The ipTM and pTM scores are calculated using AlphaFold3, while the VINA docking score is determined using AutoDock Vina. For comparison, scrambled sequences (negative controls) are generated by randomly permuting the designed peptide sequences. The table includes the PDB ID, protein name, disease associated with the protein, ipTM score, pTM score, and VINA docking score for both the designed peptides and the scrambled controls. A note indicates that AlphaFold3-predicted structures were used for docking when PDB structures were not available.
> <details>
> <summary>read the caption</summary>
> Table 4: Comparison of ipTM and VINA docking scores for designed peptide binders and scrambled negative control to protein targets with no known binders. The ipTM and pTM scores are calculated by AlphaFold3 and docking scores are calculated by AutoDock VINA for peptides designed by Gumbel-Softmax FM with STGFlow. Designed sequences are randomly permuted to generate a scrambled negative control for comparison. *No PDB structure available. Used AlphaFold3 predicted structure for docking.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="A6.T5.2">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A6.T5.2.3.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="A6.T5.2.3.1.1"><span class="ltx_text ltx_font_bold" id="A6.T5.2.3.1.1.1">Layers</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A6.T5.2.3.1.2"><span class="ltx_text ltx_font_bold" id="A6.T5.2.3.1.2.1">Input Dimension</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A6.T5.2.3.1.3"><span class="ltx_text ltx_font_bold" id="A6.T5.2.3.1.3.1">Output Dimension</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A6.T5.2.4.1">
<td class="ltx_td ltx_align_left ltx_border_t" id="A6.T5.2.4.1.1"><span class="ltx_text ltx_font_bold" id="A6.T5.2.4.1.1.1">Sequence Distribution Embedding Module</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A6.T5.2.4.1.2">vocab size</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A6.T5.2.4.1.3">1024</td>
</tr>
<tr class="ltx_tr" id="A6.T5.2.5.2">
<td class="ltx_td ltx_align_left" id="A6.T5.2.5.2.1">        Feed-Forward + GeLU</td>
<td class="ltx_td ltx_align_center" id="A6.T5.2.5.2.2">vocab size</td>
<td class="ltx_td ltx_align_center" id="A6.T5.2.5.2.3">1024</td>
</tr>
<tr class="ltx_tr" id="A6.T5.1.1">
<td class="ltx_td ltx_align_left" id="A6.T5.1.1.1">
<span class="ltx_text ltx_font_bold" id="A6.T5.1.1.1.1">DiT Blocks</span> <math alttext="\times 32" class="ltx_Math" display="inline" id="A6.T5.1.1.1.m1.1"><semantics id="A6.T5.1.1.1.m1.1a"><mrow id="A6.T5.1.1.1.m1.1.1" xref="A6.T5.1.1.1.m1.1.1.cmml"><mi id="A6.T5.1.1.1.m1.1.1.2" xref="A6.T5.1.1.1.m1.1.1.2.cmml"></mi><mo id="A6.T5.1.1.1.m1.1.1.1" lspace="0.222em" rspace="0.222em" xref="A6.T5.1.1.1.m1.1.1.1.cmml">×</mo><mn id="A6.T5.1.1.1.m1.1.1.3" xref="A6.T5.1.1.1.m1.1.1.3.cmml">32</mn></mrow><annotation-xml encoding="MathML-Content" id="A6.T5.1.1.1.m1.1b"><apply id="A6.T5.1.1.1.m1.1.1.cmml" xref="A6.T5.1.1.1.m1.1.1"><times id="A6.T5.1.1.1.m1.1.1.1.cmml" xref="A6.T5.1.1.1.m1.1.1.1"></times><csymbol cd="latexml" id="A6.T5.1.1.1.m1.1.1.2.cmml" xref="A6.T5.1.1.1.m1.1.1.2">absent</csymbol><cn id="A6.T5.1.1.1.m1.1.1.3.cmml" type="integer" xref="A6.T5.1.1.1.m1.1.1.3">32</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="A6.T5.1.1.1.m1.1c">\times 32</annotation><annotation encoding="application/x-llamapun" id="A6.T5.1.1.1.m1.1d">× 32</annotation></semantics></math>
</td>
<td class="ltx_td" id="A6.T5.1.1.2"></td>
<td class="ltx_td" id="A6.T5.1.1.3"></td>
</tr>
<tr class="ltx_tr" id="A6.T5.2.6.3">
<td class="ltx_td ltx_align_left" id="A6.T5.2.6.3.1">        Adaptive Layer Norm (time conditioning)</td>
<td class="ltx_td ltx_align_center" id="A6.T5.2.6.3.2">1024</td>
<td class="ltx_td ltx_align_center" id="A6.T5.2.6.3.3">1024</td>
</tr>
<tr class="ltx_tr" id="A6.T5.2.2">
<td class="ltx_td ltx_align_left" id="A6.T5.2.2.1">        Multi-Head Self-Attention (<math alttext="h=16" class="ltx_Math" display="inline" id="A6.T5.2.2.1.m1.1"><semantics id="A6.T5.2.2.1.m1.1a"><mrow id="A6.T5.2.2.1.m1.1.1" xref="A6.T5.2.2.1.m1.1.1.cmml"><mi id="A6.T5.2.2.1.m1.1.1.2" xref="A6.T5.2.2.1.m1.1.1.2.cmml">h</mi><mo id="A6.T5.2.2.1.m1.1.1.1" xref="A6.T5.2.2.1.m1.1.1.1.cmml">=</mo><mn id="A6.T5.2.2.1.m1.1.1.3" xref="A6.T5.2.2.1.m1.1.1.3.cmml">16</mn></mrow><annotation-xml encoding="MathML-Content" id="A6.T5.2.2.1.m1.1b"><apply id="A6.T5.2.2.1.m1.1.1.cmml" xref="A6.T5.2.2.1.m1.1.1"><eq id="A6.T5.2.2.1.m1.1.1.1.cmml" xref="A6.T5.2.2.1.m1.1.1.1"></eq><ci id="A6.T5.2.2.1.m1.1.1.2.cmml" xref="A6.T5.2.2.1.m1.1.1.2">ℎ</ci><cn id="A6.T5.2.2.1.m1.1.1.3.cmml" type="integer" xref="A6.T5.2.2.1.m1.1.1.3">16</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="A6.T5.2.2.1.m1.1c">h=16</annotation><annotation encoding="application/x-llamapun" id="A6.T5.2.2.1.m1.1d">italic_h = 16</annotation></semantics></math>)</td>
<td class="ltx_td" id="A6.T5.2.2.2"></td>
<td class="ltx_td" id="A6.T5.2.2.3"></td>
</tr>
<tr class="ltx_tr" id="A6.T5.2.7.4">
<td class="ltx_td ltx_align_left" id="A6.T5.2.7.4.1">           + Rotary Positional Embeddings</td>
<td class="ltx_td ltx_align_center" id="A6.T5.2.7.4.2">1024</td>
<td class="ltx_td ltx_align_center" id="A6.T5.2.7.4.3">1024</td>
</tr>
<tr class="ltx_tr" id="A6.T5.2.8.5">
<td class="ltx_td ltx_align_left" id="A6.T5.2.8.5.1">        Dropout + Residual</td>
<td class="ltx_td ltx_align_center" id="A6.T5.2.8.5.2">1024</td>
<td class="ltx_td ltx_align_center" id="A6.T5.2.8.5.3">1024</td>
</tr>
<tr class="ltx_tr" id="A6.T5.2.9.6">
<td class="ltx_td ltx_align_left" id="A6.T5.2.9.6.1">        Adaptive Layer Norm (time conditioning)</td>
<td class="ltx_td ltx_align_center" id="A6.T5.2.9.6.2">1024</td>
<td class="ltx_td ltx_align_center" id="A6.T5.2.9.6.3">1024</td>
</tr>
<tr class="ltx_tr" id="A6.T5.2.10.7">
<td class="ltx_td ltx_align_left" id="A6.T5.2.10.7.1">        FFN + GeLU</td>
<td class="ltx_td ltx_align_center" id="A6.T5.2.10.7.2">1024</td>
<td class="ltx_td ltx_align_center" id="A6.T5.2.10.7.3">1024</td>
</tr>
<tr class="ltx_tr" id="A6.T5.2.11.8">
<td class="ltx_td ltx_align_left" id="A6.T5.2.11.8.1"><span class="ltx_text ltx_font_bold" id="A6.T5.2.11.8.1.1">DiT Final Block</span></td>
<td class="ltx_td" id="A6.T5.2.11.8.2"></td>
<td class="ltx_td" id="A6.T5.2.11.8.3"></td>
</tr>
<tr class="ltx_tr" id="A6.T5.2.12.9">
<td class="ltx_td ltx_align_left" id="A6.T5.2.12.9.1">        Adaptive Layer Norm (time conditioning)</td>
<td class="ltx_td ltx_align_center" id="A6.T5.2.12.9.2">1024</td>
<td class="ltx_td ltx_align_center" id="A6.T5.2.12.9.3">1024</td>
</tr>
<tr class="ltx_tr" id="A6.T5.2.13.10">
<td class="ltx_td ltx_align_left ltx_border_bb" id="A6.T5.2.13.10.1">        Linear</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A6.T5.2.13.10.2">1024</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A6.T5.2.13.10.3">vocab size</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table details the architecture of the Diffusion Transformer model used in the paper. It breaks down the model into its main components: Sequence Distribution Embedding Module, DiT Blocks (repeated 32 times), and DiT Final Block.  Each layer's input and output dimensions are specified, along with the layers within each block: Feed-Forward, GeLU activation, Adaptive Layer Normalization (with time conditioning), Multi-Head Self-Attention (with 16 attention heads and Rotary Positional Embeddings), Dropout, Residual connections, and a final linear layer. This provides a comprehensive view of the model's internal structure and its processing of information at each stage.
> <details>
> <summary>read the caption</summary>
> Table 5: Diffusion Transformer Architecture
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="A6.T6.29">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A6.T6.29.30.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="A6.T6.29.30.1.1"><span class="ltx_text ltx_font_bold" id="A6.T6.29.30.1.1.1">Layers</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A6.T6.29.30.1.2"><span class="ltx_text ltx_font_bold" id="A6.T6.29.30.1.2.1">Protein Dimension</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A6.T6.29.30.1.3"><span class="ltx_text ltx_font_bold" id="A6.T6.29.30.1.3.1">Peptide Dimension</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A6.T6.2.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A6.T6.2.2.3">Embedding Module</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="A6.T6.1.1.1"><math alttext="1280" class="ltx_Math" display="inline" id="A6.T6.1.1.1.m1.1"><semantics id="A6.T6.1.1.1.m1.1a"><mn id="A6.T6.1.1.1.m1.1.1" xref="A6.T6.1.1.1.m1.1.1.cmml">1280</mn><annotation-xml encoding="MathML-Content" id="A6.T6.1.1.1.m1.1b"><cn id="A6.T6.1.1.1.m1.1.1.cmml" type="integer" xref="A6.T6.1.1.1.m1.1.1">1280</cn></annotation-xml><annotation encoding="application/x-tex" id="A6.T6.1.1.1.m1.1c">1280</annotation><annotation encoding="application/x-llamapun" id="A6.T6.1.1.1.m1.1d">1280</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A6.T6.2.2.2"><math alttext="1280" class="ltx_Math" display="inline" id="A6.T6.2.2.2.m1.1"><semantics id="A6.T6.2.2.2.m1.1a"><mn id="A6.T6.2.2.2.m1.1.1" xref="A6.T6.2.2.2.m1.1.1.cmml">1280</mn><annotation-xml encoding="MathML-Content" id="A6.T6.2.2.2.m1.1b"><cn id="A6.T6.2.2.2.m1.1.1.cmml" type="integer" xref="A6.T6.2.2.2.m1.1.1">1280</cn></annotation-xml><annotation encoding="application/x-tex" id="A6.T6.2.2.2.m1.1c">1280</annotation><annotation encoding="application/x-llamapun" id="A6.T6.2.2.2.m1.1d">1280</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="A6.T6.5.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A6.T6.3.3.1">
<span class="ltx_text ltx_font_bold" id="A6.T6.3.3.1.1">CNN Layers</span> <math alttext="\times 3" class="ltx_Math" display="inline" id="A6.T6.3.3.1.m1.1"><semantics id="A6.T6.3.3.1.m1.1a"><mrow id="A6.T6.3.3.1.m1.1.1" xref="A6.T6.3.3.1.m1.1.1.cmml"><mi id="A6.T6.3.3.1.m1.1.1.2" xref="A6.T6.3.3.1.m1.1.1.2.cmml"></mi><mo id="A6.T6.3.3.1.m1.1.1.1" lspace="0.222em" rspace="0.222em" xref="A6.T6.3.3.1.m1.1.1.1.cmml">×</mo><mn id="A6.T6.3.3.1.m1.1.1.3" xref="A6.T6.3.3.1.m1.1.1.3.cmml">3</mn></mrow><annotation-xml encoding="MathML-Content" id="A6.T6.3.3.1.m1.1b"><apply id="A6.T6.3.3.1.m1.1.1.cmml" xref="A6.T6.3.3.1.m1.1.1"><times id="A6.T6.3.3.1.m1.1.1.1.cmml" xref="A6.T6.3.3.1.m1.1.1.1"></times><csymbol cd="latexml" id="A6.T6.3.3.1.m1.1.1.2.cmml" xref="A6.T6.3.3.1.m1.1.1.2">absent</csymbol><cn id="A6.T6.3.3.1.m1.1.1.3.cmml" type="integer" xref="A6.T6.3.3.1.m1.1.1.3">3</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="A6.T6.3.3.1.m1.1c">\times 3</annotation><annotation encoding="application/x-llamapun" id="A6.T6.3.3.1.m1.1d">× 3</annotation></semantics></math> (Kernel Sizes: 3,5,7)</th>
<td class="ltx_td ltx_align_center" id="A6.T6.4.4.2"><math alttext="(1280,L)" class="ltx_Math" display="inline" id="A6.T6.4.4.2.m1.2"><semantics id="A6.T6.4.4.2.m1.2a"><mrow id="A6.T6.4.4.2.m1.2.3.2" xref="A6.T6.4.4.2.m1.2.3.1.cmml"><mo id="A6.T6.4.4.2.m1.2.3.2.1" stretchy="false" xref="A6.T6.4.4.2.m1.2.3.1.cmml">(</mo><mn id="A6.T6.4.4.2.m1.1.1" xref="A6.T6.4.4.2.m1.1.1.cmml">1280</mn><mo id="A6.T6.4.4.2.m1.2.3.2.2" xref="A6.T6.4.4.2.m1.2.3.1.cmml">,</mo><mi id="A6.T6.4.4.2.m1.2.2" xref="A6.T6.4.4.2.m1.2.2.cmml">L</mi><mo id="A6.T6.4.4.2.m1.2.3.2.3" stretchy="false" xref="A6.T6.4.4.2.m1.2.3.1.cmml">)</mo></mrow><annotation-xml encoding="MathML-Content" id="A6.T6.4.4.2.m1.2b"><interval closure="open" id="A6.T6.4.4.2.m1.2.3.1.cmml" xref="A6.T6.4.4.2.m1.2.3.2"><cn id="A6.T6.4.4.2.m1.1.1.cmml" type="integer" xref="A6.T6.4.4.2.m1.1.1">1280</cn><ci id="A6.T6.4.4.2.m1.2.2.cmml" xref="A6.T6.4.4.2.m1.2.2">𝐿</ci></interval></annotation-xml><annotation encoding="application/x-tex" id="A6.T6.4.4.2.m1.2c">(1280,L)</annotation><annotation encoding="application/x-llamapun" id="A6.T6.4.4.2.m1.2d">( 1280 , italic_L )</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="A6.T6.5.5.3">
<math alttext="(64\times 3,L)" class="ltx_Math" display="inline" id="A6.T6.5.5.3.m1.2"><semantics id="A6.T6.5.5.3.m1.2a"><mrow id="A6.T6.5.5.3.m1.2.2.1" xref="A6.T6.5.5.3.m1.2.2.2.cmml"><mo id="A6.T6.5.5.3.m1.2.2.1.2" stretchy="false" xref="A6.T6.5.5.3.m1.2.2.2.cmml">(</mo><mrow id="A6.T6.5.5.3.m1.2.2.1.1" xref="A6.T6.5.5.3.m1.2.2.1.1.cmml"><mn id="A6.T6.5.5.3.m1.2.2.1.1.2" xref="A6.T6.5.5.3.m1.2.2.1.1.2.cmml">64</mn><mo id="A6.T6.5.5.3.m1.2.2.1.1.1" lspace="0.222em" rspace="0.222em" xref="A6.T6.5.5.3.m1.2.2.1.1.1.cmml">×</mo><mn id="A6.T6.5.5.3.m1.2.2.1.1.3" xref="A6.T6.5.5.3.m1.2.2.1.1.3.cmml">3</mn></mrow><mo id="A6.T6.5.5.3.m1.2.2.1.3" xref="A6.T6.5.5.3.m1.2.2.2.cmml">,</mo><mi id="A6.T6.5.5.3.m1.1.1" xref="A6.T6.5.5.3.m1.1.1.cmml">L</mi><mo id="A6.T6.5.5.3.m1.2.2.1.4" stretchy="false" xref="A6.T6.5.5.3.m1.2.2.2.cmml">)</mo></mrow><annotation-xml encoding="MathML-Content" id="A6.T6.5.5.3.m1.2b"><interval closure="open" id="A6.T6.5.5.3.m1.2.2.2.cmml" xref="A6.T6.5.5.3.m1.2.2.1"><apply id="A6.T6.5.5.3.m1.2.2.1.1.cmml" xref="A6.T6.5.5.3.m1.2.2.1.1"><times id="A6.T6.5.5.3.m1.2.2.1.1.1.cmml" xref="A6.T6.5.5.3.m1.2.2.1.1.1"></times><cn id="A6.T6.5.5.3.m1.2.2.1.1.2.cmml" type="integer" xref="A6.T6.5.5.3.m1.2.2.1.1.2">64</cn><cn id="A6.T6.5.5.3.m1.2.2.1.1.3.cmml" type="integer" xref="A6.T6.5.5.3.m1.2.2.1.1.3">3</cn></apply><ci id="A6.T6.5.5.3.m1.1.1.cmml" xref="A6.T6.5.5.3.m1.1.1">𝐿</ci></interval></annotation-xml><annotation encoding="application/x-tex" id="A6.T6.5.5.3.m1.2c">(64\times 3,L)</annotation><annotation encoding="application/x-llamapun" id="A6.T6.5.5.3.m1.2d">( 64 × 3 , italic_L )</annotation></semantics></math> per kernel</td>
</tr>
<tr class="ltx_tr" id="A6.T6.7.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A6.T6.7.7.3">   ReLU Activation</th>
<td class="ltx_td ltx_align_center" id="A6.T6.6.6.1">
<math alttext="(64,L)" class="ltx_Math" display="inline" id="A6.T6.6.6.1.m1.2"><semantics id="A6.T6.6.6.1.m1.2a"><mrow id="A6.T6.6.6.1.m1.2.3.2" xref="A6.T6.6.6.1.m1.2.3.1.cmml"><mo id="A6.T6.6.6.1.m1.2.3.2.1" stretchy="false" xref="A6.T6.6.6.1.m1.2.3.1.cmml">(</mo><mn id="A6.T6.6.6.1.m1.1.1" xref="A6.T6.6.6.1.m1.1.1.cmml">64</mn><mo id="A6.T6.6.6.1.m1.2.3.2.2" xref="A6.T6.6.6.1.m1.2.3.1.cmml">,</mo><mi id="A6.T6.6.6.1.m1.2.2" xref="A6.T6.6.6.1.m1.2.2.cmml">L</mi><mo id="A6.T6.6.6.1.m1.2.3.2.3" stretchy="false" xref="A6.T6.6.6.1.m1.2.3.1.cmml">)</mo></mrow><annotation-xml encoding="MathML-Content" id="A6.T6.6.6.1.m1.2b"><interval closure="open" id="A6.T6.6.6.1.m1.2.3.1.cmml" xref="A6.T6.6.6.1.m1.2.3.2"><cn id="A6.T6.6.6.1.m1.1.1.cmml" type="integer" xref="A6.T6.6.6.1.m1.1.1">64</cn><ci id="A6.T6.6.6.1.m1.2.2.cmml" xref="A6.T6.6.6.1.m1.2.2">𝐿</ci></interval></annotation-xml><annotation encoding="application/x-tex" id="A6.T6.6.6.1.m1.2c">(64,L)</annotation><annotation encoding="application/x-llamapun" id="A6.T6.6.6.1.m1.2d">( 64 , italic_L )</annotation></semantics></math> per kernel</td>
<td class="ltx_td ltx_align_center" id="A6.T6.7.7.2">
<math alttext="(64,L)" class="ltx_Math" display="inline" id="A6.T6.7.7.2.m1.2"><semantics id="A6.T6.7.7.2.m1.2a"><mrow id="A6.T6.7.7.2.m1.2.3.2" xref="A6.T6.7.7.2.m1.2.3.1.cmml"><mo id="A6.T6.7.7.2.m1.2.3.2.1" stretchy="false" xref="A6.T6.7.7.2.m1.2.3.1.cmml">(</mo><mn id="A6.T6.7.7.2.m1.1.1" xref="A6.T6.7.7.2.m1.1.1.cmml">64</mn><mo id="A6.T6.7.7.2.m1.2.3.2.2" xref="A6.T6.7.7.2.m1.2.3.1.cmml">,</mo><mi id="A6.T6.7.7.2.m1.2.2" xref="A6.T6.7.7.2.m1.2.2.cmml">L</mi><mo id="A6.T6.7.7.2.m1.2.3.2.3" stretchy="false" xref="A6.T6.7.7.2.m1.2.3.1.cmml">)</mo></mrow><annotation-xml encoding="MathML-Content" id="A6.T6.7.7.2.m1.2b"><interval closure="open" id="A6.T6.7.7.2.m1.2.3.1.cmml" xref="A6.T6.7.7.2.m1.2.3.2"><cn id="A6.T6.7.7.2.m1.1.1.cmml" type="integer" xref="A6.T6.7.7.2.m1.1.1">64</cn><ci id="A6.T6.7.7.2.m1.2.2.cmml" xref="A6.T6.7.7.2.m1.2.2">𝐿</ci></interval></annotation-xml><annotation encoding="application/x-tex" id="A6.T6.7.7.2.m1.2c">(64,L)</annotation><annotation encoding="application/x-llamapun" id="A6.T6.7.7.2.m1.2d">( 64 , italic_L )</annotation></semantics></math> per kernel</td>
</tr>
<tr class="ltx_tr" id="A6.T6.9.9">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A6.T6.9.9.3">
<span class="ltx_text ltx_font_bold" id="A6.T6.9.9.3.1">Global Pooling</span> (Max + Avg)</th>
<td class="ltx_td ltx_align_center" id="A6.T6.8.8.1"><math alttext="(64\times 3,L)" class="ltx_Math" display="inline" id="A6.T6.8.8.1.m1.2"><semantics id="A6.T6.8.8.1.m1.2a"><mrow id="A6.T6.8.8.1.m1.2.2.1" xref="A6.T6.8.8.1.m1.2.2.2.cmml"><mo id="A6.T6.8.8.1.m1.2.2.1.2" stretchy="false" xref="A6.T6.8.8.1.m1.2.2.2.cmml">(</mo><mrow id="A6.T6.8.8.1.m1.2.2.1.1" xref="A6.T6.8.8.1.m1.2.2.1.1.cmml"><mn id="A6.T6.8.8.1.m1.2.2.1.1.2" xref="A6.T6.8.8.1.m1.2.2.1.1.2.cmml">64</mn><mo id="A6.T6.8.8.1.m1.2.2.1.1.1" lspace="0.222em" rspace="0.222em" xref="A6.T6.8.8.1.m1.2.2.1.1.1.cmml">×</mo><mn id="A6.T6.8.8.1.m1.2.2.1.1.3" xref="A6.T6.8.8.1.m1.2.2.1.1.3.cmml">3</mn></mrow><mo id="A6.T6.8.8.1.m1.2.2.1.3" xref="A6.T6.8.8.1.m1.2.2.2.cmml">,</mo><mi id="A6.T6.8.8.1.m1.1.1" xref="A6.T6.8.8.1.m1.1.1.cmml">L</mi><mo id="A6.T6.8.8.1.m1.2.2.1.4" stretchy="false" xref="A6.T6.8.8.1.m1.2.2.2.cmml">)</mo></mrow><annotation-xml encoding="MathML-Content" id="A6.T6.8.8.1.m1.2b"><interval closure="open" id="A6.T6.8.8.1.m1.2.2.2.cmml" xref="A6.T6.8.8.1.m1.2.2.1"><apply id="A6.T6.8.8.1.m1.2.2.1.1.cmml" xref="A6.T6.8.8.1.m1.2.2.1.1"><times id="A6.T6.8.8.1.m1.2.2.1.1.1.cmml" xref="A6.T6.8.8.1.m1.2.2.1.1.1"></times><cn id="A6.T6.8.8.1.m1.2.2.1.1.2.cmml" type="integer" xref="A6.T6.8.8.1.m1.2.2.1.1.2">64</cn><cn id="A6.T6.8.8.1.m1.2.2.1.1.3.cmml" type="integer" xref="A6.T6.8.8.1.m1.2.2.1.1.3">3</cn></apply><ci id="A6.T6.8.8.1.m1.1.1.cmml" xref="A6.T6.8.8.1.m1.1.1">𝐿</ci></interval></annotation-xml><annotation encoding="application/x-tex" id="A6.T6.8.8.1.m1.2c">(64\times 3,L)</annotation><annotation encoding="application/x-llamapun" id="A6.T6.8.8.1.m1.2d">( 64 × 3 , italic_L )</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="A6.T6.9.9.2"><math alttext="64\times 3\times 2" class="ltx_Math" display="inline" id="A6.T6.9.9.2.m1.1"><semantics id="A6.T6.9.9.2.m1.1a"><mrow id="A6.T6.9.9.2.m1.1.1" xref="A6.T6.9.9.2.m1.1.1.cmml"><mn id="A6.T6.9.9.2.m1.1.1.2" xref="A6.T6.9.9.2.m1.1.1.2.cmml">64</mn><mo id="A6.T6.9.9.2.m1.1.1.1" lspace="0.222em" rspace="0.222em" xref="A6.T6.9.9.2.m1.1.1.1.cmml">×</mo><mn id="A6.T6.9.9.2.m1.1.1.3" xref="A6.T6.9.9.2.m1.1.1.3.cmml">3</mn><mo id="A6.T6.9.9.2.m1.1.1.1a" lspace="0.222em" rspace="0.222em" xref="A6.T6.9.9.2.m1.1.1.1.cmml">×</mo><mn id="A6.T6.9.9.2.m1.1.1.4" xref="A6.T6.9.9.2.m1.1.1.4.cmml">2</mn></mrow><annotation-xml encoding="MathML-Content" id="A6.T6.9.9.2.m1.1b"><apply id="A6.T6.9.9.2.m1.1.1.cmml" xref="A6.T6.9.9.2.m1.1.1"><times id="A6.T6.9.9.2.m1.1.1.1.cmml" xref="A6.T6.9.9.2.m1.1.1.1"></times><cn id="A6.T6.9.9.2.m1.1.1.2.cmml" type="integer" xref="A6.T6.9.9.2.m1.1.1.2">64</cn><cn id="A6.T6.9.9.2.m1.1.1.3.cmml" type="integer" xref="A6.T6.9.9.2.m1.1.1.3">3</cn><cn id="A6.T6.9.9.2.m1.1.1.4.cmml" type="integer" xref="A6.T6.9.9.2.m1.1.1.4">2</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="A6.T6.9.9.2.m1.1c">64\times 3\times 2</annotation><annotation encoding="application/x-llamapun" id="A6.T6.9.9.2.m1.1d">64 × 3 × 2</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="A6.T6.11.11">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A6.T6.11.11.3">Linear Layer</th>
<td class="ltx_td ltx_align_center" id="A6.T6.10.10.1"><math alttext="384" class="ltx_Math" display="inline" id="A6.T6.10.10.1.m1.1"><semantics id="A6.T6.10.10.1.m1.1a"><mn id="A6.T6.10.10.1.m1.1.1" xref="A6.T6.10.10.1.m1.1.1.cmml">384</mn><annotation-xml encoding="MathML-Content" id="A6.T6.10.10.1.m1.1b"><cn id="A6.T6.10.10.1.m1.1.1.cmml" type="integer" xref="A6.T6.10.10.1.m1.1.1">384</cn></annotation-xml><annotation encoding="application/x-tex" id="A6.T6.10.10.1.m1.1c">384</annotation><annotation encoding="application/x-llamapun" id="A6.T6.10.10.1.m1.1d">384</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="A6.T6.11.11.2"><math alttext="384" class="ltx_Math" display="inline" id="A6.T6.11.11.2.m1.1"><semantics id="A6.T6.11.11.2.m1.1a"><mn id="A6.T6.11.11.2.m1.1.1" xref="A6.T6.11.11.2.m1.1.1.cmml">384</mn><annotation-xml encoding="MathML-Content" id="A6.T6.11.11.2.m1.1b"><cn id="A6.T6.11.11.2.m1.1.1.cmml" type="integer" xref="A6.T6.11.11.2.m1.1.1">384</cn></annotation-xml><annotation encoding="application/x-tex" id="A6.T6.11.11.2.m1.1c">384</annotation><annotation encoding="application/x-llamapun" id="A6.T6.11.11.2.m1.1d">384</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="A6.T6.13.13">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A6.T6.13.13.3">Layer Norm</th>
<td class="ltx_td ltx_align_center" id="A6.T6.12.12.1"><math alttext="384" class="ltx_Math" display="inline" id="A6.T6.12.12.1.m1.1"><semantics id="A6.T6.12.12.1.m1.1a"><mn id="A6.T6.12.12.1.m1.1.1" xref="A6.T6.12.12.1.m1.1.1.cmml">384</mn><annotation-xml encoding="MathML-Content" id="A6.T6.12.12.1.m1.1b"><cn id="A6.T6.12.12.1.m1.1.1.cmml" type="integer" xref="A6.T6.12.12.1.m1.1.1">384</cn></annotation-xml><annotation encoding="application/x-tex" id="A6.T6.12.12.1.m1.1c">384</annotation><annotation encoding="application/x-llamapun" id="A6.T6.12.12.1.m1.1d">384</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="A6.T6.13.13.2"><math alttext="384" class="ltx_Math" display="inline" id="A6.T6.13.13.2.m1.1"><semantics id="A6.T6.13.13.2.m1.1a"><mn id="A6.T6.13.13.2.m1.1.1" xref="A6.T6.13.13.2.m1.1.1.cmml">384</mn><annotation-xml encoding="MathML-Content" id="A6.T6.13.13.2.m1.1b"><cn id="A6.T6.13.13.2.m1.1.1.cmml" type="integer" xref="A6.T6.13.13.2.m1.1.1">384</cn></annotation-xml><annotation encoding="application/x-tex" id="A6.T6.13.13.2.m1.1c">384</annotation><annotation encoding="application/x-llamapun" id="A6.T6.13.13.2.m1.1d">384</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="A6.T6.14.14">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A6.T6.14.14.1">
<span class="ltx_text ltx_font_bold" id="A6.T6.14.14.1.1">Cross-Attention</span> <math alttext="\times 4" class="ltx_Math" display="inline" id="A6.T6.14.14.1.m1.1"><semantics id="A6.T6.14.14.1.m1.1a"><mrow id="A6.T6.14.14.1.m1.1.1" xref="A6.T6.14.14.1.m1.1.1.cmml"><mi id="A6.T6.14.14.1.m1.1.1.2" xref="A6.T6.14.14.1.m1.1.1.2.cmml"></mi><mo id="A6.T6.14.14.1.m1.1.1.1" lspace="0.222em" rspace="0.222em" xref="A6.T6.14.14.1.m1.1.1.1.cmml">×</mo><mn id="A6.T6.14.14.1.m1.1.1.3" xref="A6.T6.14.14.1.m1.1.1.3.cmml">4</mn></mrow><annotation-xml encoding="MathML-Content" id="A6.T6.14.14.1.m1.1b"><apply id="A6.T6.14.14.1.m1.1.1.cmml" xref="A6.T6.14.14.1.m1.1.1"><times id="A6.T6.14.14.1.m1.1.1.1.cmml" xref="A6.T6.14.14.1.m1.1.1.1"></times><csymbol cd="latexml" id="A6.T6.14.14.1.m1.1.1.2.cmml" xref="A6.T6.14.14.1.m1.1.1.2">absent</csymbol><cn id="A6.T6.14.14.1.m1.1.1.3.cmml" type="integer" xref="A6.T6.14.14.1.m1.1.1.3">4</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="A6.T6.14.14.1.m1.1c">\times 4</annotation><annotation encoding="application/x-llamapun" id="A6.T6.14.14.1.m1.1d">× 4</annotation></semantics></math>
</th>
<td class="ltx_td" id="A6.T6.14.14.2"></td>
<td class="ltx_td" id="A6.T6.14.14.3"></td>
</tr>
<tr class="ltx_tr" id="A6.T6.17.17">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A6.T6.15.15.1">        Multi-Head Attention (<math alttext="h=8" class="ltx_Math" display="inline" id="A6.T6.15.15.1.m1.1"><semantics id="A6.T6.15.15.1.m1.1a"><mrow id="A6.T6.15.15.1.m1.1.1" xref="A6.T6.15.15.1.m1.1.1.cmml"><mi id="A6.T6.15.15.1.m1.1.1.2" xref="A6.T6.15.15.1.m1.1.1.2.cmml">h</mi><mo id="A6.T6.15.15.1.m1.1.1.1" xref="A6.T6.15.15.1.m1.1.1.1.cmml">=</mo><mn id="A6.T6.15.15.1.m1.1.1.3" xref="A6.T6.15.15.1.m1.1.1.3.cmml">8</mn></mrow><annotation-xml encoding="MathML-Content" id="A6.T6.15.15.1.m1.1b"><apply id="A6.T6.15.15.1.m1.1.1.cmml" xref="A6.T6.15.15.1.m1.1.1"><eq id="A6.T6.15.15.1.m1.1.1.1.cmml" xref="A6.T6.15.15.1.m1.1.1.1"></eq><ci id="A6.T6.15.15.1.m1.1.1.2.cmml" xref="A6.T6.15.15.1.m1.1.1.2">ℎ</ci><cn id="A6.T6.15.15.1.m1.1.1.3.cmml" type="integer" xref="A6.T6.15.15.1.m1.1.1.3">8</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="A6.T6.15.15.1.m1.1c">h=8</annotation><annotation encoding="application/x-llamapun" id="A6.T6.15.15.1.m1.1d">italic_h = 8</annotation></semantics></math>)</th>
<td class="ltx_td ltx_align_center" id="A6.T6.16.16.2"><math alttext="384" class="ltx_Math" display="inline" id="A6.T6.16.16.2.m1.1"><semantics id="A6.T6.16.16.2.m1.1a"><mn id="A6.T6.16.16.2.m1.1.1" xref="A6.T6.16.16.2.m1.1.1.cmml">384</mn><annotation-xml encoding="MathML-Content" id="A6.T6.16.16.2.m1.1b"><cn id="A6.T6.16.16.2.m1.1.1.cmml" type="integer" xref="A6.T6.16.16.2.m1.1.1">384</cn></annotation-xml><annotation encoding="application/x-tex" id="A6.T6.16.16.2.m1.1c">384</annotation><annotation encoding="application/x-llamapun" id="A6.T6.16.16.2.m1.1d">384</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="A6.T6.17.17.3"><math alttext="384" class="ltx_Math" display="inline" id="A6.T6.17.17.3.m1.1"><semantics id="A6.T6.17.17.3.m1.1a"><mn id="A6.T6.17.17.3.m1.1.1" xref="A6.T6.17.17.3.m1.1.1.cmml">384</mn><annotation-xml encoding="MathML-Content" id="A6.T6.17.17.3.m1.1b"><cn id="A6.T6.17.17.3.m1.1.1.cmml" type="integer" xref="A6.T6.17.17.3.m1.1.1">384</cn></annotation-xml><annotation encoding="application/x-tex" id="A6.T6.17.17.3.m1.1c">384</annotation><annotation encoding="application/x-llamapun" id="A6.T6.17.17.3.m1.1d">384</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="A6.T6.19.19">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A6.T6.19.19.3">        Linear Layer</th>
<td class="ltx_td ltx_align_center" id="A6.T6.18.18.1"><math alttext="2048" class="ltx_Math" display="inline" id="A6.T6.18.18.1.m1.1"><semantics id="A6.T6.18.18.1.m1.1a"><mn id="A6.T6.18.18.1.m1.1.1" xref="A6.T6.18.18.1.m1.1.1.cmml">2048</mn><annotation-xml encoding="MathML-Content" id="A6.T6.18.18.1.m1.1b"><cn id="A6.T6.18.18.1.m1.1.1.cmml" type="integer" xref="A6.T6.18.18.1.m1.1.1">2048</cn></annotation-xml><annotation encoding="application/x-tex" id="A6.T6.18.18.1.m1.1c">2048</annotation><annotation encoding="application/x-llamapun" id="A6.T6.18.18.1.m1.1d">2048</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="A6.T6.19.19.2"><math alttext="2048" class="ltx_Math" display="inline" id="A6.T6.19.19.2.m1.1"><semantics id="A6.T6.19.19.2.m1.1a"><mn id="A6.T6.19.19.2.m1.1.1" xref="A6.T6.19.19.2.m1.1.1.cmml">2048</mn><annotation-xml encoding="MathML-Content" id="A6.T6.19.19.2.m1.1b"><cn id="A6.T6.19.19.2.m1.1.1.cmml" type="integer" xref="A6.T6.19.19.2.m1.1.1">2048</cn></annotation-xml><annotation encoding="application/x-tex" id="A6.T6.19.19.2.m1.1c">2048</annotation><annotation encoding="application/x-llamapun" id="A6.T6.19.19.2.m1.1d">2048</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="A6.T6.21.21">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A6.T6.21.21.3">        ReLU</th>
<td class="ltx_td ltx_align_center" id="A6.T6.20.20.1"><math alttext="2048" class="ltx_Math" display="inline" id="A6.T6.20.20.1.m1.1"><semantics id="A6.T6.20.20.1.m1.1a"><mn id="A6.T6.20.20.1.m1.1.1" xref="A6.T6.20.20.1.m1.1.1.cmml">2048</mn><annotation-xml encoding="MathML-Content" id="A6.T6.20.20.1.m1.1b"><cn id="A6.T6.20.20.1.m1.1.1.cmml" type="integer" xref="A6.T6.20.20.1.m1.1.1">2048</cn></annotation-xml><annotation encoding="application/x-tex" id="A6.T6.20.20.1.m1.1c">2048</annotation><annotation encoding="application/x-llamapun" id="A6.T6.20.20.1.m1.1d">2048</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="A6.T6.21.21.2"><math alttext="2048" class="ltx_Math" display="inline" id="A6.T6.21.21.2.m1.1"><semantics id="A6.T6.21.21.2.m1.1a"><mn id="A6.T6.21.21.2.m1.1.1" xref="A6.T6.21.21.2.m1.1.1.cmml">2048</mn><annotation-xml encoding="MathML-Content" id="A6.T6.21.21.2.m1.1b"><cn id="A6.T6.21.21.2.m1.1.1.cmml" type="integer" xref="A6.T6.21.21.2.m1.1.1">2048</cn></annotation-xml><annotation encoding="application/x-tex" id="A6.T6.21.21.2.m1.1c">2048</annotation><annotation encoding="application/x-llamapun" id="A6.T6.21.21.2.m1.1d">2048</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="A6.T6.23.23">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A6.T6.23.23.3">        Dropout</th>
<td class="ltx_td ltx_align_center" id="A6.T6.22.22.1"><math alttext="2048" class="ltx_Math" display="inline" id="A6.T6.22.22.1.m1.1"><semantics id="A6.T6.22.22.1.m1.1a"><mn id="A6.T6.22.22.1.m1.1.1" xref="A6.T6.22.22.1.m1.1.1.cmml">2048</mn><annotation-xml encoding="MathML-Content" id="A6.T6.22.22.1.m1.1b"><cn id="A6.T6.22.22.1.m1.1.1.cmml" type="integer" xref="A6.T6.22.22.1.m1.1.1">2048</cn></annotation-xml><annotation encoding="application/x-tex" id="A6.T6.22.22.1.m1.1c">2048</annotation><annotation encoding="application/x-llamapun" id="A6.T6.22.22.1.m1.1d">2048</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="A6.T6.23.23.2"><math alttext="2048" class="ltx_Math" display="inline" id="A6.T6.23.23.2.m1.1"><semantics id="A6.T6.23.23.2.m1.1a"><mn id="A6.T6.23.23.2.m1.1.1" xref="A6.T6.23.23.2.m1.1.1.cmml">2048</mn><annotation-xml encoding="MathML-Content" id="A6.T6.23.23.2.m1.1b"><cn id="A6.T6.23.23.2.m1.1.1.cmml" type="integer" xref="A6.T6.23.23.2.m1.1.1">2048</cn></annotation-xml><annotation encoding="application/x-tex" id="A6.T6.23.23.2.m1.1c">2048</annotation><annotation encoding="application/x-llamapun" id="A6.T6.23.23.2.m1.1d">2048</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="A6.T6.25.25">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A6.T6.25.25.3">        Linear Layer</th>
<td class="ltx_td ltx_align_center" id="A6.T6.24.24.1"><math alttext="384" class="ltx_Math" display="inline" id="A6.T6.24.24.1.m1.1"><semantics id="A6.T6.24.24.1.m1.1a"><mn id="A6.T6.24.24.1.m1.1.1" xref="A6.T6.24.24.1.m1.1.1.cmml">384</mn><annotation-xml encoding="MathML-Content" id="A6.T6.24.24.1.m1.1b"><cn id="A6.T6.24.24.1.m1.1.1.cmml" type="integer" xref="A6.T6.24.24.1.m1.1.1">384</cn></annotation-xml><annotation encoding="application/x-tex" id="A6.T6.24.24.1.m1.1c">384</annotation><annotation encoding="application/x-llamapun" id="A6.T6.24.24.1.m1.1d">384</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="A6.T6.25.25.2"><math alttext="384" class="ltx_Math" display="inline" id="A6.T6.25.25.2.m1.1"><semantics id="A6.T6.25.25.2.m1.1a"><mn id="A6.T6.25.25.2.m1.1.1" xref="A6.T6.25.25.2.m1.1.1.cmml">384</mn><annotation-xml encoding="MathML-Content" id="A6.T6.25.25.2.m1.1b"><cn id="A6.T6.25.25.2.m1.1.1.cmml" type="integer" xref="A6.T6.25.25.2.m1.1.1">384</cn></annotation-xml><annotation encoding="application/x-tex" id="A6.T6.25.25.2.m1.1c">384</annotation><annotation encoding="application/x-llamapun" id="A6.T6.25.25.2.m1.1d">384</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="A6.T6.29.31.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A6.T6.29.31.1.1"><span class="ltx_text ltx_font_bold" id="A6.T6.29.31.1.1.1">Shared Prediction Head</span></th>
<td class="ltx_td" id="A6.T6.29.31.1.2"></td>
<td class="ltx_td" id="A6.T6.29.31.1.3"></td>
</tr>
<tr class="ltx_tr" id="A6.T6.26.26">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A6.T6.26.26.2">        Linear Layer</th>
<td class="ltx_td ltx_align_center" colspan="2" id="A6.T6.26.26.1"><math alttext="1024" class="ltx_Math" display="inline" id="A6.T6.26.26.1.m1.1"><semantics id="A6.T6.26.26.1.m1.1a"><mn id="A6.T6.26.26.1.m1.1.1" xref="A6.T6.26.26.1.m1.1.1.cmml">1024</mn><annotation-xml encoding="MathML-Content" id="A6.T6.26.26.1.m1.1b"><cn id="A6.T6.26.26.1.m1.1.1.cmml" type="integer" xref="A6.T6.26.26.1.m1.1.1">1024</cn></annotation-xml><annotation encoding="application/x-tex" id="A6.T6.26.26.1.m1.1c">1024</annotation><annotation encoding="application/x-llamapun" id="A6.T6.26.26.1.m1.1d">1024</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="A6.T6.27.27">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A6.T6.27.27.2">        ReLU</th>
<td class="ltx_td ltx_align_center" colspan="2" id="A6.T6.27.27.1"><math alttext="1024" class="ltx_Math" display="inline" id="A6.T6.27.27.1.m1.1"><semantics id="A6.T6.27.27.1.m1.1a"><mn id="A6.T6.27.27.1.m1.1.1" xref="A6.T6.27.27.1.m1.1.1.cmml">1024</mn><annotation-xml encoding="MathML-Content" id="A6.T6.27.27.1.m1.1b"><cn id="A6.T6.27.27.1.m1.1.1.cmml" type="integer" xref="A6.T6.27.27.1.m1.1.1">1024</cn></annotation-xml><annotation encoding="application/x-tex" id="A6.T6.27.27.1.m1.1c">1024</annotation><annotation encoding="application/x-llamapun" id="A6.T6.27.27.1.m1.1d">1024</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="A6.T6.28.28">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A6.T6.28.28.2">        Dropout</th>
<td class="ltx_td ltx_align_center" colspan="2" id="A6.T6.28.28.1"><math alttext="1024" class="ltx_Math" display="inline" id="A6.T6.28.28.1.m1.1"><semantics id="A6.T6.28.28.1.m1.1a"><mn id="A6.T6.28.28.1.m1.1.1" xref="A6.T6.28.28.1.m1.1.1.cmml">1024</mn><annotation-xml encoding="MathML-Content" id="A6.T6.28.28.1.m1.1b"><cn id="A6.T6.28.28.1.m1.1.1.cmml" type="integer" xref="A6.T6.28.28.1.m1.1.1">1024</cn></annotation-xml><annotation encoding="application/x-tex" id="A6.T6.28.28.1.m1.1c">1024</annotation><annotation encoding="application/x-llamapun" id="A6.T6.28.28.1.m1.1d">1024</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="A6.T6.29.29">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="A6.T6.29.29.2"><span class="ltx_text ltx_font_bold" id="A6.T6.29.29.2.1">Regression Head</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb" colspan="2" id="A6.T6.29.29.1"><math alttext="1" class="ltx_Math" display="inline" id="A6.T6.29.29.1.m1.1"><semantics id="A6.T6.29.29.1.m1.1a"><mn id="A6.T6.29.29.1.m1.1.1" xref="A6.T6.29.29.1.m1.1.1.cmml">1</mn><annotation-xml encoding="MathML-Content" id="A6.T6.29.29.1.m1.1b"><cn id="A6.T6.29.29.1.m1.1.1.cmml" type="integer" xref="A6.T6.29.29.1.m1.1.1">1</cn></annotation-xml><annotation encoding="application/x-tex" id="A6.T6.29.29.1.m1.1c">1</annotation><annotation encoding="application/x-llamapun" id="A6.T6.29.29.1.m1.1d">1</annotation></semantics></math></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table details the architecture of the peptide-binding affinity classifier used in the paper.  It's a multi-head cross-attention network that uses ESM-2 650M protein and peptide sequence embeddings as input.  The network is designed to predict binding affinity scores (regression) and classify affinities into three categories (classification): low, medium, and high. The architecture includes convolutional layers, layer normalization, attention mechanisms, and dropout for regularization. The output is a single value representing the predicted binding affinity or a class label.
> <details>
> <summary>read the caption</summary>
> Table 6: Peptide-Binding Affinity Classifier
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="A7.T7.1.1.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A7.T7.1.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="A7.T7.1.1.1.1.1"><span class="ltx_text ltx_font_bold" id="A7.T7.1.1.1.1.1.1">Simplex Dimension <math alttext="K" class="ltx_Math" display="inline" id="A7.T7.1.1.1.1.1.1.m1.1"><semantics id="A7.T7.1.1.1.1.1.1.m1.1a"><mi id="A7.T7.1.1.1.1.1.1.m1.1.1" xref="A7.T7.1.1.1.1.1.1.m1.1.1.cmml">K</mi><annotation-xml encoding="MathML-Content" id="A7.T7.1.1.1.1.1.1.m1.1b"><ci id="A7.T7.1.1.1.1.1.1.m1.1.1.cmml" xref="A7.T7.1.1.1.1.1.1.m1.1.1">𝐾</ci></annotation-xml><annotation encoding="application/x-tex" id="A7.T7.1.1.1.1.1.1.m1.1c">K</annotation><annotation encoding="application/x-llamapun" id="A7.T7.1.1.1.1.1.1.m1.1d">italic_K</annotation></semantics></math></span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A7.T7.1.1.1.1.2">20</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A7.T7.1.1.1.1.3">40</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A7.T7.1.1.1.1.4">60</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A7.T7.1.1.1.1.5">80</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A7.T7.1.1.1.1.6">100</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A7.T7.1.1.1.1.7">120</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A7.T7.1.1.1.1.8">140</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A7.T7.1.1.1.1.9">160</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A7.T7.1.1.1.1.10">512</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A7.T7.1.1.1.2.1">
<td class="ltx_td ltx_align_left ltx_border_t" id="A7.T7.1.1.1.2.1.1">Linear FM</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A7.T7.1.1.1.2.1.2">0.013</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A7.T7.1.1.1.2.1.3">0.046</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A7.T7.1.1.1.2.1.4">0.070</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A7.T7.1.1.1.2.1.5">0.100</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A7.T7.1.1.1.2.1.6">0.114</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A7.T7.1.1.1.2.1.7">0.112</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A7.T7.1.1.1.2.1.8">0.156</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A7.T7.1.1.1.2.1.9">0.146</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A7.T7.1.1.1.2.1.10">0.479</td>
</tr>
<tr class="ltx_tr" id="A7.T7.1.1.1.3.2">
<td class="ltx_td ltx_align_left" id="A7.T7.1.1.1.3.2.1">Dirichlet FM</td>
<td class="ltx_td ltx_align_center" id="A7.T7.1.1.1.3.2.2">0.007</td>
<td class="ltx_td ltx_align_center" id="A7.T7.1.1.1.3.2.3">0.017</td>
<td class="ltx_td ltx_align_center" id="A7.T7.1.1.1.3.2.4">0.032</td>
<td class="ltx_td ltx_align_center" id="A7.T7.1.1.1.3.2.5">0.035</td>
<td class="ltx_td ltx_align_center" id="A7.T7.1.1.1.3.2.6">0.028</td>
<td class="ltx_td ltx_align_center" id="A7.T7.1.1.1.3.2.7">0.024</td>
<td class="ltx_td ltx_align_center" id="A7.T7.1.1.1.3.2.8">0.039</td>
<td class="ltx_td ltx_align_center" id="A7.T7.1.1.1.3.2.9">0.053</td>
<td class="ltx_td ltx_align_center" id="A7.T7.1.1.1.3.2.10">0.554</td>
</tr>
<tr class="ltx_tr" id="A7.T7.1.1.1.4.3">
<td class="ltx_td ltx_align_left" id="A7.T7.1.1.1.4.3.1">Fisher FM (Optimal Transport)</td>
<td class="ltx_td ltx_align_center" id="A7.T7.1.1.1.4.3.2">0.0004</td>
<td class="ltx_td ltx_align_center" id="A7.T7.1.1.1.4.3.3">0.007</td>
<td class="ltx_td ltx_align_center" id="A7.T7.1.1.1.4.3.4">0.007</td>
<td class="ltx_td ltx_align_center" id="A7.T7.1.1.1.4.3.5">0.007</td>
<td class="ltx_td ltx_align_center" id="A7.T7.1.1.1.4.3.6">0.008</td>
<td class="ltx_td ltx_align_center" id="A7.T7.1.1.1.4.3.7">0.043</td>
<td class="ltx_td ltx_align_center" id="A7.T7.1.1.1.4.3.8">0.013</td>
<td class="ltx_td ltx_align_center" id="A7.T7.1.1.1.4.3.9">0.013</td>
<td class="ltx_td ltx_align_center" id="A7.T7.1.1.1.4.3.10">0.036</td>
</tr>
<tr class="ltx_tr" id="A7.T7.1.1.1.5.4">
<td class="ltx_td ltx_align_left ltx_border_bb" id="A7.T7.1.1.1.5.4.1"><span class="ltx_text ltx_font_bold" id="A7.T7.1.1.1.5.4.1.1">Gumbel-Softmax FM (Ours)</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A7.T7.1.1.1.5.4.2">0.029</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A7.T7.1.1.1.5.4.3">0.027</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A7.T7.1.1.1.5.4.4">0.025</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A7.T7.1.1.1.5.4.5">0.027</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A7.T7.1.1.1.5.4.6">0.030</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A7.T7.1.1.1.5.4.7">0.029</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A7.T7.1.1.1.5.4.8">0.035</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A7.T7.1.1.1.5.4.9">0.038</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A7.T7.1.1.1.5.4.10">0.048</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a quantitative comparison of the performance of several generative models on a synthetic sequence generation task. The models were evaluated using the KL divergence metric, which measures the difference between the probability distributions of generated sequences and the ground truth distribution.  The experiment was designed to test the scalability of the different approaches to higher-dimensional sequence spaces (simplex dimensions). All models were trained on 100,000 sequences of length 4, sampled from a random distribution.  The KL divergence was calculated on 51,200 sequences generated after 50,000 training steps for each model.  The results allow for an assessment of how well each model can learn to generate sequences and how well that performance scales with the complexity of the sequence space.
> <details>
> <summary>read the caption</summary>
> Table 7: KL divergences of toy experiment for increasing simplex dimensions compared to benchmark models. The sequence length is set to a constant of 4 across all experiments. The toy models are trained on 100K sequences from a random distribution. KL divergence is evaluated for 51.2K sequences after 50K training steps.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2503.17361/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.17361/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.17361/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.17361/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.17361/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.17361/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.17361/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.17361/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.17361/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.17361/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.17361/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.17361/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.17361/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.17361/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.17361/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.17361/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.17361/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.17361/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.17361/19.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.17361/20.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}