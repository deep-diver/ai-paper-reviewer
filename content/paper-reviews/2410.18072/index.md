---
title: "WorldSimBench: Towards Video Generation Models as World Simulators"
summary: "WorldSimBench: a new benchmark rigorously evaluates video generation models as embodied AI agents, using dual evaluation (perceptual and manipulative) and the novel HF-Embodied Dataset."
categories: ["AI Generated"]
tags: ["🔖 24-10-23", "🤗 24-10-24"]
showSummary: true
date: 2024-10-23
draft: false
---

### TL;DR


{{< lead >}}

This research introduces WorldSimBench, a novel benchmark for evaluating video generation models designed to function as embodied AI agents. Unlike existing benchmarks, WorldSimBench uses a dual evaluation approach:  Explicit Perceptual Evaluation (assessing visual quality and consistency via a Human Preference Evaluator trained on the new HF-Embodied Dataset) and Implicit Manipulative Evaluation (assessing how well generated videos translate into correct actions within dynamic environments).  The evaluation covers three representative scenarios: Open-Ended Embodied Environments, Autonomous Driving, and Robot Manipulation.  The study reveals current limitations in video generation models, particularly in accurately representing physical rules, and highlights the need for further innovation in embodied AI.  The resulting HF-Embodied Dataset is a valuable resource for researchers.

{{< /lead >}}


{{< button href="https://arxiv.org/abs/2410.18072" target="_self" >}}
{{< icon "link" >}} &nbsp; read the paper on arXiv
{{< /button >}}
<br><br>
{{< button href="https://huggingface.co/papers/2410.18072" target="_self" >}}
{{< icon "hf-logo" >}} &nbsp; on Hugging Face
{{< /button >}}

#### Why does it matter?
This paper is crucial for researchers in AI, particularly those working on video generation and embodied AI. It introduces a novel benchmark, WorldSimBench, which addresses the limitations of existing benchmarks in evaluating highly embodied predictive models.  The benchmark's dual evaluation framework (explicit perceptual and implicit manipulative evaluation) provides a more comprehensive and human-centric assessment.  The creation of the HF-Embodied Dataset, a valuable resource for training Human Preference Evaluators, further enhances the paper's significance. This work is timely and relevant to the current surge in research on embodied AI and video generation, opening exciting new avenues for research and innovation.
#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} WorldSimBench offers a dual evaluation framework for embodied AI video generation models, addressing existing benchmark limitations. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} The HF-Embodied Dataset provides a valuable resource for training Human Preference Evaluators. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} The study reveals that current video generation models need significant improvements in accurately capturing physical rules and generating highly embodied actions. {{< /typeit >}}
{{< /alert >}}

------
#### Visual Insights



![](figures/figures_2_0.png)

> 🔼 Figure 1 shows a hierarchical system categorizing predictive models by their capabilities and level of embodiment, and introduces WorldSimBench, a dual evaluation framework for assessing World Simulators.
> <details>
> <summary>read the caption</summary>
> Figure 1: Overview of the hierarchical capabilities of the Predictive Models. Models at higher stages demonstrate more advanced capabilities. We take the initial step in evaluating Predictive Generative Models up to the S3 stage, known as World Simulators, by introducing a parallel evaluation framework, WorldSimBench. WorldSimBench assesses the models both Explicit Perceptual Evaluation and Implicit Manipulative Evaluation, focusing on video generation and action transformation across three critical embodied scenarios.
> </details>





![](charts/charts_9_0.png)

> 🔼 The radar chart visualizes the performance of eight different video generation models across three embodied scenarios (OE, AD, RM) based on various evaluation dimensions.
> <details>
> <summary>read the caption</summary>
> Figure 4: Result of Explicit Perceptual Evaluation across three embodied scenarios. Scores in each embodied scenario are normalized to 0-1. The abbreviations are listed in Tab. 2.
> </details>





{{< table-caption >}}
<br><table id='1' style='font-size:14px'><tr><td>Benchmark</td><td>Input Modality</td><td>Output Modality</td><td>Based Method</td><td>Stage</td><td>Interactive Env.</td><td>Evaluation Strategy</td></tr><tr><td>AgentBench Liu et al. 2023b</td><td>Text</td><td>Text</td><td>LLM</td><td>So</td><td>Task-Level</td><td>Human Judgement</td></tr><tr><td>EgoPlan-Bench Chen etal. 2023</td><td>Text & Images</td><td>Text</td><td>MLLM</td><td>So</td><td>N/A</td><td>Multi-choice</td></tr><tr><td>MMWorld He et al. 2024</td><td>Text & Images</td><td>Text</td><td>MLLM</td><td>So</td><td>N/A</td><td>GPT Judgement</td></tr><tr><td>VAB Liu et al. 2024a</td><td>Text & Images</td><td>Text</td><td>MLLM</td><td>So</td><td>Task-Level</td><td>Human Judgement</td></tr><tr><td>LEGO Lai et al. 2023</td><td>Text & Images</td><td>Image</td><td>IGM</td><td>S1</td><td>Task-Level</td><td>Feature Similarity</td></tr><tr><td>VBench Huang etal. 2024</td><td>Text</td><td>Video</td><td>VGM</td><td>S2</td><td>N/A</td><td>Feature Similarity</td></tr><tr><td>EvalCrafter Liu etal. 2024b</td><td>Text & Images</td><td>Video</td><td>VGM</td><td>S2</td><td>N/A</td><td>Feature Similarity</td></tr><tr><td>WorldSimBench</td><td>Text & Images</td><td>Actionable Video</td><td>VGM</td><td>S3</td><td>Action-Level</td><td>Human Preference Evaluator Embodied Metric</td></tr></table>{{< /table-caption >}}

> 🔼 Table 1 compares existing predictive model benchmarks based on input modality, output modality, method, stage, interactive environment, and evaluation strategy.
> <details>
> <summary>read the caption</summary>
> Table 1: Comparisons between existing Predictive Model benchmarks. Interactive Environment refers to the interaction with the simulation environment during the prediction phase. Task-Level Interaction denotes that each task interacts once, whereas Action-Level Interaction represents the frequency of interactions that occur through the generation of actions for control purposes.
> </details>



### More visual insights

<details>
<summary>More on figures
</summary>


![](figures/figures_5_0.png)

> 🔼 The figure illustrates the process of Explicit Perceptual Evaluation, including instruction prompt generation and HF-Embodied dataset creation with fine-grained human feedback annotation.
> <details>
> <summary>read the caption</summary>
> Figure 2: Overview of Explicit Perceptual Evaluation. (Top) Instruction Prompt Generation. We use a large collection of video captions from the internet and our predefined embodied evaluation dimensions. These are expanded using GPT and manually verified to create a corresponding Task Instruction Prompt List for data generation and evaluation. (Bottom) HF-Embodied Dataset Generation. Massive internet-sourced embodied videos with captions are used to train data generation models. Fine-grained Human Feedback Annotation is then applied to the embodied videos according to the corresponding Task Instruction Prompt List, covering multiple embodied dimensions.
> </details>



![](figures/figures_7_0.png)

> 🔼 The figure illustrates the Implicit Manipulative Evaluation process, showing how embodied tasks are broken down into sub-tasks, video generation models predict videos, and video-to-action mappings allow agents to execute actions in simulation environments.
> <details>
> <summary>read the caption</summary>
> Figure 3: Overview of Implicit Manipulative Evaluation. Embodied tasks in different scenarios are decomposed into executable sub-tasks. The video generation model generates corresponding predicted videos based on the current instructions and real-time observations. Using a pre-trained IDM or a goal-based policy, the agent executes the generated sequence of actions. After a fixed timestep, the predicted video is refreshed by sampling again from the video generation model, and this process repeats. Finally, the success rates of various embodied tasks are obtained through monitors in the simulation environment.
> </details>



![](figures/figures_22_0.png)

> 🔼 The figure shows a sequence of images from the Minecraft environment illustrating the agent's actions in response to the instruction to collect wood.
> <details>
> <summary>read the caption</summary>
> Figure 7: Rollout of Open-Ended Embodied Environment in Implicit Manipulative Evaluation.
> </details>



![](figures/figures_24_0.png)

> 🔼 The figure shows a sequence of frames from the Autonomous Driving simulation environment, illustrating the execution of a driving task guided by a video generation model.
> <details>
> <summary>read the caption</summary>
> Figure 8: Rollout of Autonomous Driving in Implicit Manipulative Evaluation.
> </details>



![](figures/figures_26_0.png)

> 🔼 The figure shows a sequence of images depicting the steps involved in a robot manipulation task, illustrating the process of translating video predictions into executable actions.
> <details>
> <summary>read the caption</summary>
> Figure 9: Rollout of Robot Manipulation in Implicit Manipulative Evaluation.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<br><table id='1' style='font-size:14px'><tr><td>Embodied Scenarios</td><td>Visual Quality</td><td>Condition Consistency</td><td>Embodiment</td></tr><tr><td>Open-Ended Embodied Environment (OE)</td><td>Background Consistency (BC) Foreground Consistency (FC)</td><td>Instruction Alignment (IA) Scenario Alignment (SA)</td><td>Velocity (VC) Trajectory (TJ) Embodied Interaction (EI)</td></tr><tr><td>Autonomous Driving (AD)</td><td>Aesthetics (AE)</td><td>Instruction Alignment (IA)</td><td>Perspectivity (PV) Trajectory (TJ) Key Element (KE) Safety (SF)</td></tr><tr><td>Robot Manipulation (RM)</td><td>Aesthetics (AE) Background Consistency (BC) Foreground Consistency (FC)</td><td>Instruction Alignment (IA)</td><td>Perspectivity (PV) Trajectory (TJ) Embodied Interaction (EI)</td></tr></table>{{< /table-caption >}}
> 🔼 {{ table.description }}
> <details>
> <summary>read the caption</summary>
> {{ table.caption }}
> </details>


> This table compares existing Predictive Model benchmarks across various features including input/output modalities, methods, evaluation strategies, and interaction types.


{{< table-caption >}}
<br><table id='1' style='font-size:14px'><tr><td>Embodied Scenario</td><td>GPT-4o</td><td>HPE</td><td>GPT-4o@OpenSora</td><td>HPE@OpenSora</td><td>GPT-4o@Lavie</td><td>HPE@Lavie</td></tr><tr><td>OE@Acc(↑)</td><td>72.8</td><td>89.4</td><td>66.5</td><td>71.6</td><td>78.5</td><td>87.9</td></tr><tr><td>AD @ PLCC(↑)</td><td>0.28</td><td>0.60</td><td>0.03</td><td>0.34</td><td>-0.04</td><td>0.49</td></tr><tr><td>RM@PLCC(↑)</td><td>0.07</td><td>0.43</td><td>-0.06</td><td>0.47</td><td>0.17</td><td>0.44</td></tr></table>{{< /table-caption >}}
> 🔼 {{ table.description }}
> <details>
> <summary>read the caption</summary>
> {{ table.caption }}
> </details>


> The table compares the overall performance of the Human Preference Evaluator and GPT-40 across three embodied scenarios (OE, AD, RM) using different metrics (Acc, PLCC).


{{< table-caption >}}
<table id='1' style='font-size:14px'><tr><td>Embodied Scenario</td><td>#instructions</td><td>#videos</td><td>#dims</td><td>#actions</td><td>#positive</td><td>#negative</td></tr><tr><td>Open-Ended Embodied Environment</td><td>270</td><td>8401</td><td>7</td><td>11</td><td>121249</td><td>79965</td></tr><tr><td>Autonomous Driving</td><td>5</td><td>15870</td><td>6</td><td>5</td><td>56768</td><td>35044</td></tr><tr><td>Robot Manipulation</td><td>2556</td><td>11430</td><td>7</td><td>26</td><td>70672</td><td>9338</td></tr></table>{{< /table-caption >}}
> 🔼 {{ table.description }}
> <details>
> <summary>read the caption</summary>
> {{ table.caption }}
> </details>


> Table 4 presents the analysis of the HF-Embodied Dataset, showing the number of instructions, videos, dimensions, actions, positive, and negative samples for each of the three embodied scenarios.


{{< table-caption >}}
<table id='0' style='font-size:14px'><tr><td>OE@ Acc(↑)</td><td>BC</td><td>FC</td><td>IA</td><td>SA</td><td>VC</td><td>TJ</td><td>EI</td><td>Overall</td></tr><tr><td rowspan="2">GPT-4o HPE</td><td>60.5</td><td>70.4</td><td>70.9</td><td>67.3</td><td>79.6</td><td>83.7</td><td>85.9</td><td>72.8</td></tr><tr><td>81.2</td><td>87.5</td><td>87.5</td><td>96.4</td><td>94.5</td><td>93.8</td><td>88.8</td><td>89.4</td></tr><tr><td rowspan="2">GPT-4o@OpenSora HPE@OpenSora</td><td>60</td><td>80</td><td>80</td><td>50</td><td>0.0</td><td>100</td><td>88.8</td><td>66.5</td></tr><tr><td>70</td><td>90</td><td>60</td><td>100</td><td>100</td><td>22.2</td><td>80</td><td>71.6</td></tr><tr><td rowspan="2">GPT-4o@Lavie HPE@Lavie</td><td>50</td><td>66.7</td><td>75</td><td>88.8</td><td>87.5</td><td>100</td><td>87.5</td><td>78.5</td></tr><tr><td>80</td><td>80</td><td>80</td><td>100</td><td>100</td><td>75</td><td>100</td><td>87.9</td></tr><tr><td>AD @ PLCC(↑)</td><td>AE</td><td>IA</td><td>PV</td><td>TJ</td><td></td><td>KE</td><td>SF</td><td>Overall</td></tr><tr><td rowspan="2">GPT-4o HPE</td><td>0.37</td><td>0.22</td><td>0.23</td><td></td><td>0.28</td><td>0.37</td><td>0.18</td><td>0.28</td></tr><tr><td>0.71</td><td>0.57</td><td>0.50</td><td>0.58</td><td></td><td>0.65</td><td>0.58</td><td>0.60</td></tr><tr><td rowspan="2">GPT-4o@OpenSora HPE@OpenSora</td><td>0.22</td><td>-0.39</td><td>0.32</td><td></td><td>0.15</td><td>-0.03</td><td>-0.12</td><td>0.03</td></tr><tr><td>0.37</td><td>0.55</td><td>0.34</td><td></td><td>0.06</td><td>0.28</td><td>0.41</td><td>0.34</td></tr><tr><td rowspan="2">GPT-4o@Lavie HPE@Lavie</td><td>0.17</td><td>0.13</td><td>-0.34</td><td></td><td>0.06</td><td>-0.09</td><td>-0.15</td><td>-0.04</td></tr><tr><td>0.28</td><td>1.0</td><td>0.49</td><td>0.37</td><td></td><td>0.12</td><td>0.69</td><td>0.49</td></tr><tr><td>RM@PLCC(↑)</td><td>AE</td><td>BC</td><td>FC</td><td>IA</td><td>PV</td><td>TJ</td><td>EI</td><td>Overall</td></tr><tr><td rowspan="2">GPT-4o HPE</td><td>0.07</td><td>0.18</td><td>0.20</td><td>0.32</td><td>-0.14</td><td>-0.01</td><td>-0.14</td><td>0.07</td></tr><tr><td>0.52</td><td>0.43</td><td>0.43</td><td>0.43</td><td>0.20</td><td>0.56</td><td>0.44</td><td>0.43</td></tr><tr><td rowspan="2">GPT-4o@OpenSora HPE@ OpenSora</td><td>-0.45</td><td>-0.03</td><td>0.08</td><td>0.0</td><td>0.04</td><td>-0.23</td><td>0.14</td><td>-0.06</td></tr><tr><td>0.25</td><td>0.35</td><td>0.05</td><td>0.42</td><td>0.89</td><td>0.89</td><td>0.44</td><td>0.47</td></tr><tr><td rowspan="2">GPT-4o@Lavie HPE@Lavie</td><td>0.11</td><td>-0.07</td><td>0.42</td><td>0.42</td><td>0.21</td><td>0.31</td><td>-0.21</td><td>0.17</td></tr><tr><td>0.33</td><td>0.04</td><td>0.69</td><td>0.40</td><td>0.89</td><td>0.67</td><td>0.06</td><td>0.44</td></tr></table>{{< /table-caption >}}
> 🔼 {{ table.description }}
> <details>
> <summary>read the caption</summary>
> {{ table.caption }}
> </details>


> This table compares existing predictive model benchmarks across various dimensions, including input/output modality, method stage, interactive environment, and evaluation strategy.


{{< table-caption >}}
<table id='3' style='font-size:16px'><tr><td>Model</td><td>BC</td><td>FC</td><td>IA</td><td>SA</td><td>VC</td><td>TJ</td><td>EI</td><td>Overall</td></tr><tr><td>Open-Sora-Plan</td><td>1.4</td><td>1.9</td><td>1.7</td><td>1.7</td><td>2.0</td><td>1.5</td><td>1.6</td><td>1.69</td></tr><tr><td>Lavie</td><td>1.3</td><td>2.0</td><td>1.7</td><td>1.7</td><td>2.0</td><td>2.0</td><td>1.8</td><td>1.79</td></tr><tr><td>ModelScope</td><td>1.9</td><td>2.0</td><td>2.0</td><td>1.7</td><td>2.0</td><td>2.0</td><td>1.75</td><td>1.91</td></tr><tr><td>OpenSora</td><td>1.6</td><td>1.9</td><td>1.6</td><td>1.8</td><td>2.0</td><td>2.0</td><td>1.6</td><td>1.79</td></tr><tr><td>AnimateDiff</td><td>1.3</td><td>1.3</td><td>1.2</td><td>1.7</td><td>1.4</td><td>1.38</td><td>1.55</td><td>1.40</td></tr><tr><td>DynamicCrafter</td><td>1.9</td><td>2.0</td><td>1.5</td><td>2.0</td><td>2.0</td><td>2.0</td><td>1.45</td><td>1.84</td></tr><tr><td>EasyAnimate</td><td>1.4</td><td>1.8</td><td>1.5</td><td>2.0</td><td>2.0</td><td>1.22</td><td>1.45</td><td>1.62</td></tr></table>{{< /table-caption >}}
> 🔼 {{ table.description }}
> <details>
> <summary>read the caption</summary>
> {{ table.caption }}
> </details>


> The table presents the evaluation results of seven video generation models across seven dimensions for the Open-Ended Embodied Environment scenario.


{{< table-caption >}}
<table id='1' style='font-size:16px'><tr><td>Model</td><td>AE</td><td>IA</td><td>PV</td><td>TJ</td><td>KE</td><td>SF</td><td>Overall</td></tr><tr><td>Open-Sora-Plan</td><td>1.6</td><td>5.0</td><td>1.55</td><td>1.4</td><td>1.45</td><td>3.2</td><td>2.37</td></tr><tr><td>Lavie</td><td>2.15</td><td>5.0</td><td>2.2</td><td>2.8</td><td>2.1</td><td>5.0</td><td>3.21</td></tr><tr><td>ModelScope</td><td>2.8</td><td>5.0</td><td>3.35</td><td>4.0</td><td>3.0</td><td>5.0</td><td>3.86</td></tr><tr><td>OpenSora</td><td>3.55</td><td>5.0</td><td>4.4</td><td>4.8</td><td>3.65</td><td>5.0</td><td>4.40</td></tr><tr><td>AnimateDiff</td><td>1.55</td><td>5.0</td><td>1.55</td><td>1.0</td><td>1.3</td><td>3.8</td><td>2.37</td></tr><tr><td>DynamicCrafter</td><td>2.6</td><td>4.0</td><td>3.4</td><td>3.8</td><td>2.65</td><td>5.0</td><td>3.57</td></tr><tr><td>EasyAnimate</td><td>1.5</td><td>3.4</td><td>1.4</td><td>1.4</td><td>1.3</td><td>2.6</td><td>1.93</td></tr></table>{{< /table-caption >}}
> 🔼 {{ table.description }}
> <details>
> <summary>read the caption</summary>
> {{ table.caption }}
> </details>


> The table presents a comparison of eight video generation models' performance across six evaluation dimensions (Aesthetics, Instruction Alignment, Perspectivity, Trajectory, Key Element, and Safety) in the Autonomous Driving scenario.


{{< table-caption >}}
<table id='3' style='font-size:16px'><tr><td>Model</td><td>AE</td><td>BC</td><td>FC</td><td>IA</td><td>PV</td><td>TJ</td><td>EI</td><td>Overall</td></tr><tr><td>Open-Sora-Plan</td><td>4.0</td><td>4.0</td><td>4.0</td><td>1.0</td><td>4.9</td><td>5.0</td><td>4.0</td><td>3.84</td></tr><tr><td>Lavie</td><td>3.8</td><td>3.9</td><td>4.0</td><td>1.8</td><td>4.95</td><td>5.0</td><td>4.1</td><td>3.94</td></tr><tr><td>ModelScope</td><td>3.63</td><td>4.1</td><td>4.0</td><td>1.18</td><td>4.9</td><td>5.0</td><td>4.0</td><td>3.83</td></tr><tr><td>OpenSora</td><td>3.85</td><td>4.0</td><td>3.95</td><td>1.3</td><td>4.75</td><td>5.0</td><td>4.1</td><td>3.85</td></tr><tr><td>AnimateDiff</td><td>3.8</td><td>3.9</td><td>4.0</td><td>1.0</td><td>4.95</td><td>5.0</td><td>4.1</td><td>3.82</td></tr><tr><td>DynamicCrafter</td><td>3.97</td><td>4.08</td><td>4.0</td><td>2.6</td><td>5.0</td><td>5.0</td><td>4.31</td><td>4.14</td></tr><tr><td>EasyAnimate</td><td>3.55</td><td>3.45</td><td>3.65</td><td>1.2</td><td>4.8</td><td>4.3</td><td>3.45</td><td>3.49</td></tr></table>{{< /table-caption >}}
> 🔼 {{ table.description }}
> <details>
> <summary>read the caption</summary>
> {{ table.caption }}
> </details>


> This table presents a hierarchical categorization of evaluation dimensions for three embodied scenarios, categorized into Visual Quality, Condition Consistency, and Embodiment.


{{< table-caption >}}
<table id='2' style='font-size:14px'><tr><td rowspan="2">Model</td><td rowspan="2">Condition</td><td rowspan="2">AVG</td><td></td><td colspan="3">Specific Tasks</td><td></td></tr><tr><td>Collect Wood</td><td>Collect Dirt</td><td>Collect Seed</td><td>Travel Dis.</td><td>Dig Depth</td></tr><tr><td>Open-Sora-Plan</td><td rowspan="5">Text</td><td>26.38</td><td>19.90</td><td>50.20</td><td>7.30</td><td>342.91</td><td>20.20</td></tr><tr><td>Lavie</td><td>26.06</td><td>23.50</td><td>56.00</td><td>11.60</td><td>270.20</td><td>12.20</td></tr><tr><td>ModelScope</td><td>21.050</td><td>14.00</td><td>52.20</td><td>6.30</td><td>240.72</td><td>8.70</td></tr><tr><td>OpenSora</td><td>27.80</td><td>21.20</td><td>70.20</td><td>10.40</td><td>339.87</td><td>3.20</td></tr><tr><td>AnimateDiff</td><td>13.10</td><td>7.40</td><td>22.90</td><td>3.30</td><td>274.19</td><td>4.50</td></tr><tr><td>Open-Sora-Plan</td><td rowspan="3">Text & Image</td><td>10.28</td><td>11.10</td><td>12.50</td><td>2.60</td><td>195.14</td><td>5.70</td></tr><tr><td>DynamiCrafter</td><td>4.06</td><td>0.40</td><td>0.30</td><td>1.30</td><td>130.04</td><td>5.30</td></tr><tr><td>EasyAnimate</td><td>4.84</td><td>0.20</td><td>0.70</td><td>1.70</td><td>157.12</td><td>5.90</td></tr></table>{{< /table-caption >}}
> 🔼 {{ table.description }}
> <details>
> <summary>read the caption</summary>
> {{ table.caption }}
> </details>


> This table compares different existing benchmarks for evaluating predictive models based on their input modality, output modality, the stage of the predictive model, interactive environment, evaluation strategy, and key elements.


{{< table-caption >}}
<table id='4' style='font-size:18px'><tr><td>Model</td><td>DS(↑)</td><td>RC(↑)</td><td>IS(↑)</td><td>VC(↓)</td><td>PC(↓)</td><td>LC(↓)</td><td>RV(↓)</td><td>OI(↓)</td></tr><tr><td>Open-Sora-Plan</td><td>31.054</td><td>38.249</td><td>0.767</td><td>2.400</td><td>0.000</td><td>4.401</td><td>1.133</td><td>3.514</td></tr><tr><td>DynamiCrafter</td><td>24.491</td><td>37.189</td><td>0.599</td><td>5.030</td><td>0.000</td><td>4.896</td><td>0.937</td><td>3.221</td></tr><tr><td>EasyAnimate</td><td>17.414</td><td>28.475</td><td>0.607</td><td>0.000</td><td>0.000</td><td>29.344</td><td>0.000</td><td>1.690</td></tr></table>{{< /table-caption >}}
> 🔼 {{ table.description }}
> <details>
> <summary>read the caption</summary>
> {{ table.caption }}
> </details>


> The table presents the evaluation results of three video generation models across eight metrics in the autonomous driving task within the Implicit Manipulative Evaluation.


{{< table-caption >}}
<table id='11' style='font-size:18px'><tr><td rowspan="2">Method</td><td colspan="5">Task completed in a row (%) ↑</td><td rowspan="2">Avg. Len. ↑</td></tr><tr><td>1</td><td>2</td><td>3</td><td>4</td><td>5</td></tr><tr><td>Open-Sora-Plan</td><td>0.85</td><td>0.70</td><td>0.60</td><td>0.40</td><td>0.40</td><td>2.95</td></tr><tr><td>DynamiCrafter</td><td>0.95</td><td>0.75</td><td>0.55</td><td>0.25</td><td>0.25</td><td>2.75</td></tr><tr><td>EasyAnimate</td><td>0.90</td><td>0.60</td><td>0.35</td><td>0.10</td><td>0.10</td><td>2.05</td></tr></table>{{< /table-caption >}}
> 🔼 {{ table.description }}
> <details>
> <summary>read the caption</summary>
> {{ table.caption }}
> </details>


> Table 1 compares existing predictive model benchmarks across various dimensions, including input/output modalities, evaluation strategies, and interaction frequency with the environment.


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
<img src="paper_images/19.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/20.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/21.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/22.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/23.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/24.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/25.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/26.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}