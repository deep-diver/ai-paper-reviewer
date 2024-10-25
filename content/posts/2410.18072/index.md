---
title: "WorldSimBench: Towards Video Generation Models as World Simulators"
summary: "WorldSimBench is a new benchmark for evaluating video generation models as 'World Simulators,' focusing on their ability to generate actionable videos.  It uses a dual evaluation approach (explicit pe....."
categories: ["AI Generated"]
tags: ["2024-10-23"]
showSummary: true
date: 2024-10-23
draft: false
---

### TL;DR


{{< lead >}}

WorldSimBench is a new benchmark for evaluating video generation models as 'World Simulators,' focusing on their ability to generate actionable videos.  It uses a dual evaluation approach (explicit perceptual and implicit manipulative evaluations) and a new dataset (HF-Embodied) to assess visual fidelity and video-action consistency. The results highlight limitations of current models, guiding future research in embodied AI.

{{< /lead >}}


{{< button href="https://arxiv.org/abs/2410.18072" target="_self" >}}
{{< icon "link" >}} &nbsp; read the paper on arXiv
{{< /button >}}

#### Why does this paper matter?
This paper introduces WorldSimBench, a dual evaluation framework for assessing the capabilities of World Simulators (predictive models that generate actionable videos).  It categorizes predictive models into a hierarchy based on embodiment level, proposes explicit perceptual and implicit manipulative evaluations, and introduces the HF-Embodied Dataset. The framework offers key insights into the strengths and limitations of current World Simulators, highlighting the need for further advancement in embodied AI.
#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} WorldSimBench provides a comprehensive dual evaluation framework for World Simulators, encompassing both visual quality and action consistency. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} The HF-Embodied Dataset offers a large-scale, fine-grained human-feedback video assessment resource for training Human Preference Evaluators. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} The study reveals key challenges and limitations in current World Simulators, particularly in generating videos adhering to physical rules and achieving alignment between video and action. {{< /typeit >}}
{{< /alert >}}

------

#### Visual Insights

![](figures/figures_2_0.png "🔼 Figure 1: Overview of the hierarchical capabilities of the Predictive Models. Models at higher stages demonstrate more advanced capabilities. We take the initial step in evaluating Predictive Generative Models up to the S3 stage, known as World Simulators, by introducing a parallel evaluation framework, WorldSimBench. WorldSimBench assesses the models both Explicit Perceptual Evaluation and Implicit Manipulative Evaluation, focusing on video generation and action transformation across three critical embodied scenarios.")

{{< table-caption caption="🔽 Comparisons between existing Predictive Model benchmarks. Interactive Environment refers to the interaction with the simulation environment during the prediction phase. Task-Level Interaction denotes that each task interacts once, whereas Action-Level Interaction represents the frequency of interactions that occur through the generation of actions for control purposes." >}}
| Benchmark | Input Modality | Output Modality | Based Method | Stage | Interactive Env. | Evaluation Strategy |
| --- | --- | --- | --- | --- | --- | --- |
| AgentBench Liu et al. 2023b | Text | Text | LLM | So | Task-Level | Human Judgement |
| EgoPlan-Bench Chen etal. 2023 | Text & Images | Text | MLLM | So | N/A | Multi-choice |
| MMWorld He et al. 2024 | Text & Images | Text | MLLM | So | N/A | GPT Judgement |
| VAB Liu et al. 2024a | Text & Images | Text | MLLM | So | Task-Level | Human Judgement |
| LEGO Lai et al. 2023 | Text & Images | Image | IGM | S1 | Task-Level | Feature Similarity |
| VBench Huang etal. 2024 | Text | Video | VGM | S2 | N/A | Feature Similarity |
| EvalCrafter Liu etal. 2024b | Text & Images | Video | VGM | S2 | N/A | Feature Similarity |
| WorldSimBench | Text & Images | Actionable Video | VGM | S3 | Action-Level | Human Preference Evaluator Embodied Metric |
{{< /table-caption >}}

------

<details>
<summary>More figures
</summary>


![](figures/figures_5_0.png "🔼 Figure 2: Overview of Explicit Perceptual Evaluation. (Top) Instruction Prompt Generation. We use a large collection of video captions from the internet and our predefined embodied evaluation dimensions. These are expanded using GPT and manually verified to create a corresponding Task Instruction Prompt List for data generation and evaluation. (Bottom) HF-Embodied Dataset Generation. Massive internet-sourced embodied videos with captions are used to train data generation models. Fine-grained Human Feedback Annotation is then applied to the embodied videos according to the corresponding Task Instruction Prompt List, covering multiple embodied dimensions.")

![](figures/figures_7_0.png "🔼 Overview of Implicit Manipulative Evaluation. Embodied tasks in different scenarios are decomposed into executable sub-tasks. The video generation model generates corresponding predicted videos based on the current instructions and real-time observations. Using a pre-trained IDM or a goal-based policy, the agent executes the generated sequence of actions. After a fixed timestep, the predicted video is refreshed by sampling again from the video generation model, and this process repeats. Finally, the success rates of various embodied tasks are obtained through monitors in the simulation environment.")

![](figures/figures_22_0.png "🔼 Figure 7: Rollout of Open-Ended Embodied Environment in Implicit Manipulative Evaluation.")

![](figures/figures_24_0.png "🔼 Figure 8: Rollout of Autonomous Driving in Implicit Manipulative Evaluation.")

![](figures/figures_26_0.png "🔼 Overview of Explicit Perceptual Evaluation. (Top) Instruction Prompt Generation. We use a large collection of video captions from the internet and our predefined embodied evaluation dimensions. These are expanded using GPT and manually verified to create a corresponding Task Instruction Prompt List for data generation and evaluation. (Bottom) HF-Embodied Dataset Generation. Massive internet-sourced embodied videos with captions are used to train data generation models. Fine-grained Human Feedback Annotation is then applied to the embodied videos according to the corresponding Task Instruction Prompt List, covering multiple embodied dimensions.")


</details>

---