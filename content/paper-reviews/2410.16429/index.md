---
title: "Pantograph: A Machine-to-Machine Interaction Interface for Advanced Theorem Proving, High Level Reasoning, and Data Extraction in Lean 4"
summary: "Pantograph: a new Lean 4 interface boosts machine-assisted theorem proving by enabling efficient proof search and high-level reasoning via novel features, including draft-sketch-proof (DSP) support."
categories: ["AI Generated"]
tags: ["🔖 24-10-21", "🤗 24-10-25"]
showSummary: true
date: 2024-10-21
draft: false
---

### TL;DR


{{< lead >}}

The research introduces Pantograph, a versatile tool designed to improve the interaction between machine learning models and the Lean 4 proof assistant.  It overcomes limitations of existing interfaces, enabling more efficient proof search using advanced algorithms like Monte Carlo Tree Search. Pantograph also supports high-level reasoning by better handling Lean 4's inference steps and provides advanced data extraction capabilities.  A key feature is its support for the Draft-Sketch-Proof (DSP) approach, where a proof outline is created first, then refined step-by-step. The paper showcases Pantograph's capabilities through an illustrative use case, demonstrating its effectiveness in proving Lean 4 theorems using machine learning models and proof sketches.  Overall, Pantograph's innovative features simplify the process of building and evaluating theorem-proving agents, setting the stage for future advancements in automated reasoning.

{{< /lead >}}


{{< button href="https://arxiv.org/abs/2410.16429" target="_self" >}}
{{< icon "link" >}} &nbsp; read the paper on arXiv
{{< /button >}}
<br><br>
{{< button href="https://huggingface.co/papers/2410.16429" target="_self" >}}
{{< icon "hf-logo" >}} &nbsp; on Hugging Face
{{< /button >}}

#### Why does it matter?
This paper is important because it introduces Pantograph, a novel tool that significantly improves the interaction between machine learning models and the Lean 4 proof assistant.  This addresses a key challenge in automated theorem proving, paving the way for more powerful and versatile theorem provers.  The introduction of the DSP approach in Lean 4 is also a significant contribution, opening new avenues for research in this area. The tool's open-source nature ensures broader accessibility and collaboration within the research community.
#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Pantograph offers a novel and efficient interface between machine learning models and the Lean 4 proof assistant. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} Pantograph supports high-level reasoning strategies and advanced data extraction capabilities. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} The paper demonstrates the successful implementation of the draft-sketch-proof (DSP) approach within Lean 4. {{< /typeit >}}
{{< /alert >}}

------
#### Visual Insights



![](figures/figures_5_0.png)

> 🔼 The figure shows a proof tree for the commutativity of OR, illustrating the tree structure that results from using tactics to prove theorems in Lean 4.
> <details>
> <summary>read the caption</summary>
> Fig. 1: A proof tree for Expression (1)
> </details>





![](charts/charts_14_0.png)

> 🔼 Figure 6 shows the distribution of the number of hammer tactic invocations and the distribution of runtimes of DSP on the validation and test sets of MiniF2F using the GPT-40 model.
> <details>
> <summary>read the caption</summary>
> Fig. 6: Hammer invocations and runtimes of DSP on the validation and test sets of MiniF2F using the GPT-40 model. The name of the legend refers to the dataset split (validation or test) and the number of sketches used to solve the dataset split.
> </details>





{{< table-caption >}}
<table id='4' style='font-size:16px'><tr><td>Parameter</td><td>Value</td></tr><tr><td>Max tokens</td><td>2048</td></tr><tr><td>Top P</td><td>0.95</td></tr><tr><td>Temperature</td><td>0.8</td></tr></table>{{< /table-caption >}}

> 🔼 Table 1 lists the maximum number of tokens, top P, and temperature parameters used for the large language models in the DSP experiment.
> <details>
> <summary>read the caption</summary>
> Table 1: LLM parameters for DSP Experiment
> </details>



### More visual insights

<details>
<summary>More on figures
</summary>


![](figures/figures_7_0.png)

> 🔼 The figure illustrates the system architecture of Pantograph, showing how a user (human or machine learning agent) interacts with the Lean 4 kernel through various interfaces.
> <details>
> <summary>read the caption</summary>
> Fig. 2: System architecture of Pantograph. A solid arrow indicates that the component at the arrow source calls functions in the component that is the arrow's target. A human operator interacts with Lean 4's kernel via the IDE, but a machine learning agent can interact via one of Pantograph's interfaces.
> </details>



![](figures/figures_7_1.png)

> 🔼 The figure shows the call hierarchy of functions in Pantograph when executing a tactic in Lean 4, illustrating the monad hierarchy involved.
> <details>
> <summary>read the caption</summary>
> Fig. 3: Call hierarchy in Pantograph during the execution of a normal tactic. The text on the right indicates the Lean 4 monad each function runs in.
> </details>



![](figures/figures_10_0.png)

> 🔼 The figure illustrates how a goal becomes dormant in Pantograph's manual tree search mode and how to bring it back into scope.
> <details>
> <summary>read the caption</summary>
> Fig. 4: ② becomes dormant after a tactic is applied to ①. It must be brought back into scope with goal.continue before the proof can finish. The ellipses (...) are plalceholders for some combination of tactics which eventually solves the descendant of ①.
> </details>



![](figures/figures_11_0.png)

> 🔼 The figure illustrates the workflow of metavariable coupling in Pantograph, showing how goals are coupled and resolved.
> <details>
> <summary>read the caption</summary>
> Fig. 5: In this diagram, rectangular boxes are proof states, and circles are goals. Each proof state has 0 or more goals. A state with no goals is considered solved. If all descendant goals of a state become solved, the state itself becomes solved.
> </details>



</details>




### Full paper

{{< gallery >}}
<img src="paper_images/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}