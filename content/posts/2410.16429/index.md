---
title: "Pantograph: A Machine-to-Machine Interaction Interface for Advanced Theorem Proving, High Level Reasoning, and Data Extraction in Lean 4"
summary: "Pantograph is a new Lean 4 tool improving the machine-learning assisted theorem proving process by offering an advanced interface that supports efficient proof search, high-level reasoning, and data e....."
categories: ["AI Generated"]
tags: ["🔖 2024-10-21", "🤗 2024-10-25"]
showSummary: true
date: 2024-10-21
draft: false
---

### TL;DR


{{< lead >}}

Pantograph is a new Lean 4 tool improving the machine-learning assisted theorem proving process by offering an advanced interface that supports efficient proof search, high-level reasoning, and data extraction.  It overcomes limitations of existing interfaces, enabling more powerful search algorithms and facilitating the implementation of novel theorem proving techniques like Draft-Sketch-Proof.

{{< /lead >}}


{{< button href="https://arxiv.org/abs/2410.16429" target="_self" >}}
{{< icon "link" >}} &nbsp; read the paper on arXiv
{{< /button >}}

#### Why does this paper matter?
Pantograph is a novel API and REPL for Lean 4 that provides a versatile interface for training and evaluating theorem-proving agents, enabling efficient proof search and high-level reasoning. It addresses challenges in existing interfaces by supporting advanced reasoning steps, essential data extraction tasks, and handling metavariable coupling, paving the way for more advanced machine learning models in theorem proving.
#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Pantograph offers a user-friendly interface for machine learning agents to interact with the Lean 4 proof assistant. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} It supports advanced reasoning steps and data extraction capabilities, facilitating high-level reasoning and training data generation. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Pantograph's novel features enable the implementation of the Draft-Sketch-Proof approach for automated theorem proving. {{< /typeit >}}
{{< /alert >}}

------
#### Visual Insights



![](figures/figures_5_0.png "🔼 Fig. 1: A proof tree for Expression (1)")





{{< table-caption caption="🔽 Table 1: LLM parameters for DSP Experiment" >}}
| Parameter | Value |
| --- | --- |
| Max tokens | 2048 |
| Top P | 0.95 |
| Temperature | 0.8 |
{{< /table-caption >}}


------



<details>
<summary>More on figures
</summary>


![](figures/figures_7_0.png "🔼 Fig. 2: System architecture of Pantograph. A solid arrow indicates that the component at the arrow source calls functions in the component that is the arrow's target. A human operator interacts with Lean 4's kernel via the IDE, but a machine learning agent can interact via one of Pantograph's interfaces.")

![](figures/figures_7_1.png "🔼 Fig. 3: Call hierarchy in Pantograph during the execution of a normal tactic. The text on the right indicates the Lean 4 monad each function runs in.")

![](figures/figures_10_0.png "🔼 Fig. 4: 2 becomes dormant after a tactic is applied to 1. It must be brought back into scope with goal.continue before the proof can finish. The ellipses (...) are plalceholders for some combination of tactics which eventually solves the descendant of (1")

![](figures/figures_11_0.png "🔼 Fig. 5: In this diagram, rectangular boxes are proof states, and circles are goals. Each proof state has 0 or more goals. A state with no goals is considered solved. If all descendant goals of a state become solved, the state itself becomes solved.")


</details>

------





