---
title: "WorldSimBench: Towards Video Generation Models as World Simulators"
summary: "WorldSimBench is a new benchmark for evaluating video generation models as world simulators, classifying them hierarchically and assessing them via Explicit Perceptual Evaluation (visual quality) and ....."
categories: ["AI Generated"]
tags: ["🔖 2024-10-23", "🤗 2024-10-24"]
showSummary: true
date: 2024-10-23
draft: false
---

### TL;DR


{{< lead >}}

WorldSimBench is a new benchmark for evaluating video generation models as world simulators, classifying them hierarchically and assessing them via Explicit Perceptual Evaluation (visual quality) and Implicit Manipulative Evaluation (video-action consistency across three scenarios).  It leverages a new dataset, HF-Embodied, and a Human Preference Evaluator for better evaluation.

{{< /lead >}}


{{< button href="https://arxiv.org/abs/2410.18072" target="_self" >}}
{{< icon "link" >}} &nbsp; read the paper on arXiv
{{< /button >}}

#### Why does this paper matter?
This paper introduces WorldSimBench, a dual evaluation framework for assessing video generation models' ability to function as world simulators. It categorizes predictive models hierarchically and proposes Explicit Perceptual Evaluation (visual quality) and Implicit Manipulative Evaluation (video-action consistency) using three embodied scenarios.  The framework also introduces the HF-Embodied Dataset for training a Human Preference Evaluator.
#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} WorldSimBench provides a comprehensive evaluation framework for assessing the capabilities of video generation models as world simulators, addressing limitations of existing benchmarks. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} The dual evaluation approach (Explicit Perceptual & Implicit Manipulative) offers a more thorough assessment of model capabilities, encompassing both visual quality and embodied action consistency. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} The HF-Embodied Dataset, with fine-grained human feedback, enables a more nuanced and human-aligned evaluation of generated videos. {{< /typeit >}}
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
<summary>More on figures
</summary>


![](figures/figures_5_0.png "🔼 Figure 2: Overview of Explicit Perceptual Evaluation. (Top) Instruction Prompt Generation. We use a large collection of video captions from the internet and our predefined embodied evaluation dimensions. These are expanded using GPT and manually verified to create a corresponding Task Instruction Prompt List for data generation and evaluation. (Bottom) HF-Embodied Dataset Generation. Massive internet-sourced embodied videos with captions are used to train data generation models. Fine-grained Human Feedback Annotation is then applied to the embodied videos according to the corresponding Task Instruction Prompt List, covering multiple embodied dimensions.")

![](figures/figures_7_0.png "🔼 Figure 3: Overview of Implicit Manipulative Evaluation. Embodied tasks in different scenarios are decomposed into executable sub-tasks. The video generation model generates corresponding predicted videos based on the current instructions and real-time observations. Using a pre-trained IDM or a goal-based policy, the agent executes the generated sequence of actions. After a fixed timestep, the predicted video is refreshed by sampling again from the video generation model, and this process repeats. Finally, the success rates of various embodied tasks are obtained through monitors in the simulation environment.")

![](figures/figures_22_0.png "🔼 Figure 7: Rollout of Open-Ended Embodied Environment in Implicit Manipulative Evaluation.")

![](figures/figures_24_0.png "🔼 Figure 8: Rollout of Autonomous Driving in Implicit Manipulative Evaluation.")

![](figures/figures_26_0.png "🔼 Figure 9: Rollout of Robot Manipulation in Implicit Manipulative Evaluation.")


</details>

------







------

<details>
<summary>More on tables
</summary>


{{< table-caption caption="🔽 Table 2: Hierarchical Evaluation Dimension. The dimensions are categorized into three main aspects: Visual Quality for evaluating the overall quality, Condition Consistency for evaluating the alignment to the input instruction, and Embodiment for evaluating embodied related factors like physical rules." >}}
| Embodied Scenarios | Visual Quality | Condition Consistency | Embodiment |
| --- | --- | --- | --- |
| Open-Ended Embodied Environment (OE) | Background Consistency (BC) Foreground Consistency (FC) | Instruction Alignment (IA) Scenario Alignment (SA) | Velocity (VC) Trajectory (TJ) Embodied Interaction (EI) |
| Autonomous Driving (AD) | Aesthetics (AE) | Instruction Alignment (IA) | Perspectivity (PV) Trajectory (TJ) Key Element (KE) Safety (SF) |
| Robot Manipulation (RM) | Aesthetics (AE) Background Consistency (BC) Foreground Consistency (FC) | Instruction Alignment (IA) | Perspectivity (PV) Trajectory (TJ) Embodied Interaction (EI) |
{{< /table-caption >}}

{{< table-caption caption="🔽 Table 3: The overall performance comparison between Human Preference Evaluator and GPT-40. HPE indicates Human Preference Evaluator. HPE@Lavie means that HPE is trained on videos except those generated by Lavie. The validation is conducted on videos generated by Laive under zero-shot setting." >}}
| Embodied Scenario | GPT-4o | HPE | GPT-4o@OpenSora | HPE@OpenSora | GPT-4o@Lavie | HPE@Lavie |
| --- | --- | --- | --- | --- | --- | --- |
| OE@Acc(↑) | 72.8 | 89.4 | 66.5 | 71.6 | 78.5 | 87.9 |
| AD @ PLCC(↑) | 0.28 | 0.60 | 0.03 | 0.34 | -0.04 | 0.49 |
| RM@PLCC(↑) | 0.07 | 0.43 | -0.06 | 0.47 | 0.17 | 0.44 |
{{< /table-caption >}}

{{< table-caption caption="🔽 Table 4: Analysis of HF-Embodied Dataset. Samples scored higher than 3 in AD and RM are considered positive." >}}
| Embodied Scenario | #instructions | #videos | #dims | #actions | #positive | #negative |
| --- | --- | --- | --- | --- | --- | --- |
| Open-Ended Embodied Environment | 270 | 8401 | 7 | 11 | 121249 | 79965 |
| Autonomous Driving | 5 | 15870 | 6 | 5 | 56768 | 35044 |
| Robot Manipulation | 2556 | 11430 | 7 | 26 | 70672 | 9338 |
{{< /table-caption >}}

{{< table-caption caption="🔽 Table 5: Training Frames of Generation Models." >}}
| Model | Open-Sora-Plan | Lavie | ModelScope | OpenSora | AnimateDiff | DynamicCrafter | EasyAnimate |
| --- | --- | --- | --- | --- | --- | --- | --- |
| Short Videos(frames) | 16 | 16 | 16 | 16 | 16 | 16 | 16 |
| Long Videos(frames) | 64 | 48 | 60 | 48 | 64 | 60 | 64 |
{{< /table-caption >}}

{{< table-caption caption="🔽 Comparisons between existing Predictive Model benchmarks. Interactive Environment refers to the interaction with the simulation environment during the prediction phase. Task-Level Interaction denotes that each task interacts once, whereas Action-Level Interaction represents the frequency of interactions that occur through the generation of actions for control purposes." >}}
| OE@ Acc(↑) | BC | FC | IA | SA | VC | TJ | EI | Overall |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| GPT-4o HPE | 60.5 | 70.4 | 70.9 | 67.3 | 79.6 | 83.7 | 85.9 | 72.8 |
| GPT-4o HPE | 81.2 | 87.5 | 87.5 | 96.4 | 94.5 | 93.8 | 88.8 | 89.4 |
| GPT-4o@OpenSora HPE@OpenSora | 60 | 80 | 80 | 50 | 0.0 | 100 | 88.8 | 66.5 |
| GPT-4o@OpenSora HPE@OpenSora | 70 | 90 | 60 | 100 | 100 | 22.2 | 80 | 71.6 |
| GPT-4o@Lavie HPE@Lavie | 50 | 66.7 | 75 | 88.8 | 87.5 | 100 | 87.5 | 78.5 |
| GPT-4o@Lavie HPE@Lavie | 80 | 80 | 80 | 100 | 100 | 75 | 100 | 87.9 |
| AD @ PLCC(↑) | AE | IA | PV | TJ |  | KE | SF | Overall |
| GPT-4o HPE | 0.37 | 0.22 | 0.23 |  | 0.28 | 0.37 | 0.18 | 0.28 |
| GPT-4o HPE | 0.71 | 0.57 | 0.50 | 0.58 | 0.65 | 0.58 | 0.60 |  |
| GPT-4o@OpenSora HPE@OpenSora | 0.22 | -0.39 | 0.32 |  | 0.15 | -0.03 | -0.12 | 0.03 |
| GPT-4o@OpenSora HPE@OpenSora | 0.37 | 0.55 | 0.34 | 0.06 | 0.28 | 0.41 | 0.34 |  |
| GPT-4o@Lavie HPE@Lavie | 0.17 | 0.13 | -0.34 |  | 0.06 | -0.09 | -0.15 | -0.04 |
| GPT-4o@Lavie HPE@Lavie | 0.28 | 1.0 | 0.49 | 0.37 | 0.12 | 0.69 | 0.49 |  |
| RM@PLCC(↑) | AE | BC | FC | IA | PV | TJ | EI | Overall |
| GPT-4o HPE | 0.07 | 0.18 | 0.20 | 0.32 | -0.14 | -0.01 | -0.14 | 0.07 |
| GPT-4o HPE | 0.52 | 0.43 | 0.43 | 0.43 | 0.20 | 0.56 | 0.44 | 0.43 |
| GPT-4o@OpenSora HPE@ OpenSora | -0.45 | -0.03 | 0.08 | 0.0 | 0.04 | -0.23 | 0.14 | -0.06 |
| GPT-4o@OpenSora HPE@ OpenSora | 0.25 | 0.35 | 0.05 | 0.42 | 0.89 | 0.89 | 0.44 | 0.47 |
| GPT-4o@Lavie HPE@Lavie | 0.11 | -0.07 | 0.42 | 0.42 | 0.21 | 0.31 | -0.21 | 0.17 |
| GPT-4o@Lavie HPE@Lavie | 0.33 | 0.04 | 0.69 | 0.40 | 0.89 | 0.67 | 0.06 | 0.44 |
{{< /table-caption >}}

{{< table-caption caption="🔽 Table 7: Evaluation results in OE. The abbreviations are listed in Tab. 2." >}}
| Model | BC | FC | IA | SA | VC | TJ | EI | Overall |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| Open-Sora-Plan | 1.4 | 1.9 | 1.7 | 1.7 | 2.0 | 1.5 | 1.6 | 1.69 |
| Lavie | 1.3 | 2.0 | 1.7 | 1.7 | 2.0 | 2.0 | 1.8 | 1.79 |
| ModelScope | 1.9 | 2.0 | 2.0 | 1.7 | 2.0 | 2.0 | 1.75 | 1.91 |
| OpenSora | 1.6 | 1.9 | 1.6 | 1.8 | 2.0 | 2.0 | 1.6 | 1.79 |
| AnimateDiff | 1.3 | 1.3 | 1.2 | 1.7 | 1.4 | 1.38 | 1.55 | 1.40 |
| DynamicCrafter | 1.9 | 2.0 | 1.5 | 2.0 | 2.0 | 2.0 | 1.45 | 1.84 |
| EasyAnimate | 1.4 | 1.8 | 1.5 | 2.0 | 2.0 | 1.22 | 1.45 | 1.62 |
{{< /table-caption >}}

{{< table-caption caption="🔽 Comparisons between existing Predictive Model benchmarks. Interactive Environment refers to the interaction with the simulation environment during the prediction phase. Task-Level Interaction denotes that each task interacts once, whereas Action-Level Interaction represents the frequency of interactions that occur through the generation of actions for control purposes." >}}
| Model | AE | IA | PV | TJ | KE | SF | Overall |
| --- | --- | --- | --- | --- | --- | --- | --- |
| Open-Sora-Plan | 1.6 | 5.0 | 1.55 | 1.4 | 1.45 | 3.2 | 2.37 |
| Lavie | 2.15 | 5.0 | 2.2 | 2.8 | 2.1 | 5.0 | 3.21 |
| ModelScope | 2.8 | 5.0 | 3.35 | 4.0 | 3.0 | 5.0 | 3.86 |
| OpenSora | 3.55 | 5.0 | 4.4 | 4.8 | 3.65 | 5.0 | 4.40 |
| AnimateDiff | 1.55 | 5.0 | 1.55 | 1.0 | 1.3 | 3.8 | 2.37 |
| DynamicCrafter | 2.6 | 4.0 | 3.4 | 3.8 | 2.65 | 5.0 | 3.57 |
| EasyAnimate | 1.5 | 3.4 | 1.4 | 1.4 | 1.3 | 2.6 | 1.93 |
{{< /table-caption >}}

{{< table-caption caption="🔽 Table 9: Evaluation results in RM. The abbreviations are listed in Tab. 2." >}}
| Model | AE | BC | FC | IA | PV | TJ | EI | Overall |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| Open-Sora-Plan | 4.0 | 4.0 | 4.0 | 1.0 | 4.9 | 5.0 | 4.0 | 3.84 |
| Lavie | 3.8 | 3.9 | 4.0 | 1.8 | 4.95 | 5.0 | 4.1 | 3.94 |
| ModelScope | 3.63 | 4.1 | 4.0 | 1.18 | 4.9 | 5.0 | 4.0 | 3.83 |
| OpenSora | 3.85 | 4.0 | 3.95 | 1.3 | 4.75 | 5.0 | 4.1 | 3.85 |
| AnimateDiff | 3.8 | 3.9 | 4.0 | 1.0 | 4.95 | 5.0 | 4.1 | 3.82 |
| DynamicCrafter | 3.97 | 4.08 | 4.0 | 2.6 | 5.0 | 5.0 | 4.31 | 4.14 |
| EasyAnimate | 3.55 | 3.45 | 3.65 | 1.2 | 4.8 | 4.3 | 3.45 | 3.49 |
{{< /table-caption >}}

{{< table-caption caption="🔽 Table 1: Comparisons between existing Predictive Model benchmarks. Interactive Environment refers to the interaction with the simulation environment during the prediction phase. Task-Level Interaction denotes that each task interacts once, whereas Action-Level Interaction represents the frequency of interactions that occur through the generation of actions for control purposes." >}}
| Behavior | Action |
| --- | --- |
| forward | W key |
| back | S key |
| left | A key |
| right | D key |
| jump | space key |
| inventory | E key |
| sneak | shift key |
| sprint | ctrl key |
| attack | left mouse button |
{{< /table-caption >}}

{{< table-caption caption="🔽 Comparisons between existing Predictive Model benchmarks. Interactive Environment refers to the interaction with the simulation environment during the prediction phase. Task-Level Interaction denotes that each task interacts once, whereas Action-Level Interaction represents the frequency of interactions that occur through the generation of actions for control purposes." >}}
| Model | Condition | AVG |  | Specific Tasks | Specific Tasks | Specific Tasks |  |
| --- | --- | --- | --- | --- | --- | --- | --- |
| Model | Condition | AVG | Collect Wood | Collect Dirt | Collect Seed | Travel Dis. | Dig Depth |
| Open-Sora-Plan | Text | 26.38 | 19.90 | 50.20 | 7.30 | 342.91 | 20.20 |
| Lavie | Text | 26.06 | 23.50 | 56.00 | 11.60 | 270.20 | 12.20 |
| ModelScope | Text | 21.050 | 14.00 | 52.20 | 6.30 | 240.72 | 8.70 |
| OpenSora | Text | 27.80 | 21.20 | 70.20 | 10.40 | 339.87 | 3.20 |
| AnimateDiff | Text | 13.10 | 7.40 | 22.90 | 3.30 | 274.19 | 4.50 |
| Open-Sora-Plan | Text & Image | 10.28 | 11.10 | 12.50 | 2.60 | 195.14 | 5.70 |
| DynamiCrafter | Text & Image | 4.06 | 0.40 | 0.30 | 1.30 | 130.04 | 5.30 |
| EasyAnimate | Text & Image | 4.84 | 0.20 | 0.70 | 1.70 | 157.12 | 5.90 |
{{< /table-caption >}}

{{< table-caption caption="🔽 Table 3: The overall performance comparison between Human Preference Evaluator and GPT-40. HPE indicates Human Preference Evaluator. HPE@Lavie means that HPE is trained on videos except those generated by Lavie. The validation is conducted on videos generated by Laive under zero-shot setting." >}}
| Model | DS(↑) | RC(↑) | IS(↑) | VC(↓) | PC(↓) | LC(↓) | RV(↓) | OI(↓) |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| Open-Sora-Plan | 31.054 | 38.249 | 0.767 | 2.400 | 0.000 | 4.401 | 1.133 | 3.514 |
| DynamiCrafter | 24.491 | 37.189 | 0.599 | 5.030 | 0.000 | 4.896 | 0.937 | 3.221 |
| EasyAnimate | 17.414 | 28.475 | 0.607 | 0.000 | 0.000 | 29.344 | 0.000 | 1.690 |
{{< /table-caption >}}

{{< table-caption caption="🔽 Table 1: Comparisons between existing Predictive Model benchmarks. Interactive Environment refers to the interaction with the simulation environment during the prediction phase. Task-Level Interaction denotes that each task interacts once, whereas Action-Level Interaction represents the frequency of interactions that occur through the generation of actions for control purposes." >}}
| Method | Task completed in a row (%) ↑ | Task completed in a row (%) ↑ | Task completed in a row (%) ↑ | Task completed in a row (%) ↑ | Task completed in a row (%) ↑ | Avg. Len. ↑ |
| --- | --- | --- | --- | --- | --- | --- |
| Method | 1 | 2 | 3 | 4 | 5 | Avg. Len. ↑ |
| Open-Sora-Plan | 0.85 | 0.70 | 0.60 | 0.40 | 0.40 | 2.95 |
| DynamiCrafter | 0.95 | 0.75 | 0.55 | 0.25 | 0.25 | 2.75 |
| EasyAnimate | 0.90 | 0.60 | 0.35 | 0.10 | 0.10 | 2.05 |
{{< /table-caption >}}


</details>

------

