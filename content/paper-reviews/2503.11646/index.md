---
title: "Adversarial Data Collection: Human-Collaborative Perturbations for Efficient and Robust Robotic Imitation Learning"
summary: "ADC: Human-robot collaboration revolutionizes data collection, slashing data needs and boosting robot learning!"
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["AI Applications", "Robotics", "🏢 Shanghai Jiao Tong University",]
showSummary: true
date: 2025-03-14
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2503.11646 {{< /keyword >}}
{{< keyword icon="writer" >}} Siyuan Huang et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-03-17 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2503.11646" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2503.11646" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2503.11646/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

**Collecting data for robots to learn tasks is expensive and time-consuming**, particularly in real-world scenarios. Traditional methods passively record robot demonstrations, leading to redundant data and limited diversity. Recent methods attempt to address the issue by generating diversity through simulated environments or low-cost Universal Manipulation Interface grippers, but these methods face two fundamental limitations: the domain gap due to idealized physics and the impracticality of extending diversity to tele-operated systems.



To address these challenges, the paper introduces **Adversarial Data Collection (ADC), a framework that uses real-time human-environment interactions to strategically inject controlled perturbations** during data acquisition. This collaborative approach compresses diverse failure-recovery behaviors, task variations, and environmental changes into minimal demonstrations. Experiments show that models trained with just 20% of ADC data outperform traditional methods using full datasets, enhancing generalization, robustness, and error recovery.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Adversarial Data Collection (ADC) significantly reduces the amount of data needed for robot imitation learning. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} ADC enhances robot robustness to perceptual and linguistic variations. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} ADC-trained models exhibit superior generalization and emergent error recovery. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper is **crucial for robotics** by introducing ADC, a method that slashes data needs while boosting robot skills. It addresses the pressing need for data efficiency in real-world robot learning, offering a practical solution to improve existing VLA models and opening doors for broader research into active data acquisition strategies.

------
#### Visual Insights



![](https://arxiv.org/html/2503.11646/x1.png)

> 🔼 Figure 1 illustrates three approaches to collecting real-world data for robotic imitation learning.  (a) shows the traditional method, where a single human teleoperates the robot to perform a task based on a fixed instruction in a static environment.  (b) introduces the Adversarial Data Collection (ADC) framework which utilizes two humans: one teleoperates the robot, while the other introduces dynamic perturbations during task execution. (c) details the ADC loop, highlighting how the adversarial operator introduces visual and linguistic changes to the environment and instructions, forcing the teleoperator to adapt and creating a much more information-dense demonstration.
> <details>
> <summary>read the caption</summary>
> Figure 1: Comparative Analysis of the Real-Data Collection Loop in Robotic Manipulation. (a) Traditional Approach: A tele-operator executes tasks via fixed linguistic instructions in static visual environments. (b) Adversarial Data Collection (ADC) Framework: Employs a Two-Humans-in-the-Loop approach, where a secondary operator intervenes to perturb the primary’s execution dynamically when the tele-operator is executing a task. (c) ADC Loop: The adversarial operator introduces visual (backgrounds, object positions/poses) and linguistic (task goals) perturbations, shifting environmental context and target objects within a single episode.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S3.T1.3">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S3.T1.3.4.1" style="background-color:#E6E6E6;">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_t" id="S3.T1.3.4.1.1" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.3.4.1.1.1" style="background-color:#E6E6E6;">Method</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_t" id="S3.T1.3.4.1.2" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.3.4.1.2.1" style="background-color:#E6E6E6;">Vis Perturb.</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_t" id="S3.T1.3.4.1.3" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.3.4.1.3.1" style="background-color:#E6E6E6;">Lin. Perturb.</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_t" id="S3.T1.3.4.1.4" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.3.4.1.4.1" style="background-color:#E6E6E6;">Varied Height</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_t" id="S3.T1.3.4.1.5" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.3.4.1.5.1" style="background-color:#E6E6E6;">#Epis.</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_t" id="S3.T1.3.4.1.6" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.3.4.1.6.1" style="background-color:#E6E6E6;">#Frame</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_t" id="S3.T1.3.4.1.7" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.3.4.1.7.1" style="background-color:#E6E6E6;">Collection Time</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_t" id="S3.T1.3.4.1.8" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.3.4.1.8.1" style="background-color:#E6E6E6;">Additional Label Time</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S3.T1.3.4.1.9" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.3.4.1.9.1" style="background-color:#E6E6E6;">Avg Time</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S3.T1.3.3">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T1.3.3.4" style="padding-top:0.5pt;padding-bottom:0.5pt;">Traditional</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T1.1.1.1" style="padding-top:0.5pt;padding-bottom:0.5pt;"><math alttext="\times" class="ltx_Math" display="inline" id="S3.T1.1.1.1.m1.1"><semantics id="S3.T1.1.1.1.m1.1a"><mo id="S3.T1.1.1.1.m1.1.1" xref="S3.T1.1.1.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S3.T1.1.1.1.m1.1b"><times id="S3.T1.1.1.1.m1.1.1.cmml" xref="S3.T1.1.1.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.1.1.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S3.T1.1.1.1.m1.1d">×</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T1.2.2.2" style="padding-top:0.5pt;padding-bottom:0.5pt;"><math alttext="\times" class="ltx_Math" display="inline" id="S3.T1.2.2.2.m1.1"><semantics id="S3.T1.2.2.2.m1.1a"><mo id="S3.T1.2.2.2.m1.1.1" xref="S3.T1.2.2.2.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S3.T1.2.2.2.m1.1b"><times id="S3.T1.2.2.2.m1.1.1.cmml" xref="S3.T1.2.2.2.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.2.2.2.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S3.T1.2.2.2.m1.1d">×</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T1.3.3.3" style="padding-top:0.5pt;padding-bottom:0.5pt;"><math alttext="\times" class="ltx_Math" display="inline" id="S3.T1.3.3.3.m1.1"><semantics id="S3.T1.3.3.3.m1.1a"><mo id="S3.T1.3.3.3.m1.1.1" xref="S3.T1.3.3.3.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S3.T1.3.3.3.m1.1b"><times id="S3.T1.3.3.3.m1.1.1.cmml" xref="S3.T1.3.3.3.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.3.3.3.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S3.T1.3.3.3.m1.1d">×</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T1.3.3.5" style="padding-top:0.5pt;padding-bottom:0.5pt;">120</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T1.3.3.6" style="padding-top:0.5pt;padding-bottom:0.5pt;">90k</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T1.3.3.7" style="padding-top:0.5pt;padding-bottom:0.5pt;">25s per episode</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T1.3.3.8" style="padding-top:0.5pt;padding-bottom:0.5pt;">10s per episode</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.3.3.9" style="padding-top:0.5pt;padding-bottom:0.5pt;">46.7ms/frame</td>
</tr>
<tr class="ltx_tr" id="S3.T1.3.5.1" style="background-color:#E6F5E6;">
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r" id="S3.T1.3.5.1.1" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text ltx_font_smallcaps" id="S3.T1.3.5.1.1.1" style="background-color:#E6F5E6;">ADC</span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r" id="S3.T1.3.5.1.2" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="S3.T1.3.5.1.2.1" style="background-color:#E6F5E6;">✓</span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r" id="S3.T1.3.5.1.3" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="S3.T1.3.5.1.3.1" style="background-color:#E6F5E6;">✓</span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r" id="S3.T1.3.5.1.4" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="S3.T1.3.5.1.4.1" style="background-color:#E6F5E6;">✓</span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r" id="S3.T1.3.5.1.5" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="S3.T1.3.5.1.5.1" style="background-color:#E6F5E6;">80</span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r" id="S3.T1.3.5.1.6" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="S3.T1.3.5.1.6.1" style="background-color:#E6F5E6;">96k</span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r" id="S3.T1.3.5.1.7" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="S3.T1.3.5.1.7.1" style="background-color:#E6F5E6;">40s per episode</span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r" id="S3.T1.3.5.1.8" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="S3.T1.3.5.1.8.1" style="background-color:#E6F5E6;">15s per episode</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S3.T1.3.5.1.9" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="S3.T1.3.5.1.9.1" style="background-color:#E6F5E6;">45.8ms/frame</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 This table compares two data collection strategies: the traditional approach and the proposed Adversarial Data Collection (ADC) method.  It details the use of visual perturbations and linguistic perturbations in the ADC method, indicating whether they were used (X) or not. The table also shows the number of episodes, frames, and the average time spent per frame for data collection, as well as the additional time required for labeling with the ADC method.
> <details>
> <summary>read the caption</summary>
> TABLE I: Comparison of data collection strategies.
> </details>





### In-depth insights


#### Adversarial HiL
The 'Adversarial HiL' framework introduces a novel approach to data collection by transforming conventional teleoperation into an adversarial Human-in-the-Loop process. This involves **two key roles**: a tele-operator and an adversarial operator, who collaboratively interact during data collection. The adversarial operator introduces **controlled perturbations** across visual and linguistic dimensions to maximize per-demonstration diversity, while preserving physical plausibility. This dynamic interaction forces the tele-operator to adapt in real-time, generating rich and diverse data units that include recovery behaviors, compositional task variations, and environmental perturbations. This approach aims to create more robust and generalizable models by exposing them to a wider range of scenarios during training, ultimately leading to more efficient and effective robotic learning.

#### Data Efficiency
**Data efficiency** is critical in robot learning because collecting real-world data is expensive and time-consuming. The pursuit of efficient learning paradigms has led to the development of various techniques aimed at maximizing the information gained from each demonstration. The main idea is that high-quality data allows models to achieve better generalization and robustness with smaller datasets, thus reducing the overall cost and effort. The paper advocates for a shift in focus from simply scaling up the amount of training data to improving the informational density and diversity of the training data. This involves carefully designing data collection procedures to capture a wide range of task variations, failure recovery behaviors, and environmental perturbations. **Maximizing the information density** of individual demonstrations dramatically reduces the reliance on large-scale datasets while improving task performance.

#### VLA Robustness
Vision-Language-Action (VLA) model robustness is a critical area in robotics, focusing on ensuring that robots can reliably perform tasks in the face of various challenges. The paper likely explores techniques to enhance VLA model robustness to **perceptual ambiguities**, **linguistic variability**, and **physical uncertainties**. **Adversarial training** with carefully designed perturbations in both the visual and linguistic domains is a key strategy. The results presented highlight the **superior performance of ADC-trained models** in handling ambiguous instructions, environmental perturbations, and unseen object configurations, showcasing the effectiveness of strategic data acquisition in improving VLA model robustness. The research demonstrates that VLA systems require more than just broad exposure to data, but an intentional, targeted curriculum emphasizing failure modes and recovery.

#### Dynamic HRI
**Dynamic Human-Robot Interaction (HRI)** represents a critical frontier in robotics, shifting from static environments to collaborative spaces.  **Current VLA models face challenges in adapting to real-time human interventions**. Robustness is crucial for seamless collaboration, **requiring robots to provide dynamic and adaptive responses during task execution**. Scenarios include humans moving target objects, necessitating continuous action adjustments.  ADC demonstrates the ability for dynamic adaptation, enabling future HRI. This approach focuses on seamless integration with humans, where robots provide dynamic and adaptive responses during task execution, even under human intervention, requiring robots to provide dynamic and adaptive responses during task execution.

#### ADC: Key to HRI
**Adversarial Data Collection (ADC) holds significant promise for advancing Human-Robot Interaction (HRI)**. By introducing dynamic, human-driven perturbations, ADC cultivates robot robustness to environmental uncertainties and unexpected human actions. This contrasts with traditional methods focusing solely on static environments. Robots trained with ADC are better equipped to adapt in real-time to changing task goals, spatial redefinitions, and even physical disruptions, all vital for seamless human collaboration. This adaptation capability is a key prerequisite for effective HRI, allowing robots to provide dynamic, adaptive responses during task execution, even under human intervention. **ADC equips robots with the ability to autonomously recover from failures** which enhances their reliability and trustworthiness in collaborative settings.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2503.11646/x2.png)

> 🔼 Figure 2 illustrates the Adversarial Data Collection (ADC) process.  It contrasts traditional data collection methods with ADC's human-in-the-loop approach.  Traditional methods passively record robot actions while ADC actively introduces dynamic visual (e.g., changing object positions, backgrounds) and linguistic (e.g., changing task instructions mid-episode) perturbations to increase data diversity. This process results in a dataset with higher information density, allowing for models trained on fewer samples to achieve better robustness and generalization on unseen tasks compared to models trained using traditional methods. The figure also visually represents how information density, coverage and completeness of observations are improved via ADC.
> <details>
> <summary>read the caption</summary>
> Figure 2: The overview of ADC. During training data collection, we introduce several adversarial perturbations, including dynamic visual perturbations and adaptive linguistic challenges. These perturbations increase information density, expand state space coverage, and provide more complete observations of target objects. The resulting high-quality dataset enables the trained policy model to achieve strong robustness and generalization, outperforming models trained with conventional data collection strategies.
> </details>



![](https://arxiv.org/html/2503.11646/x3.png)

> 🔼 This figure shows the hardware setups used in the Adversarial Data Collection (ADC) experiments.  Two robots are shown: the Aloha robot, used for conventional robotic policy experiments with various visual distractors to test robustness, and the AgiBot G1 robot, used for Vision-Language-Action (VLA) policy experiments which involved more complex and dynamic perturbations. This illustrates the different experimental conditions used to compare ADC with traditional methods.
> <details>
> <summary>read the caption</summary>
> Figure 3: Hardware setup used in ADC for both data collection and evaluation experiments. The Aloha robot is employed for conventional robotic policy experiments, which include various visual distractors. The AgiBot G1 robot is utilized for the VLA policy experiments, where different dynamic perturbations are applied.
> </details>



![](https://arxiv.org/html/2503.11646/x4.png)

> 🔼 This figure compares attention maps of models trained on data collected using the Adversarial Data Collection (ADC) method versus a traditional method.  Both models have one of their cameras masked. The attention maps show where the model focuses its attention when processing visual input. The ADC-trained model demonstrates a stronger ability to focus on the functional cameras (those that still provide useful information) even with a camera masked, highlighting its superior robustness and attention mechanism. In contrast, the traditionally-trained model shows less precise attention, paying attention to irrelevant features like table edges rather than the target object.
> <details>
> <summary>read the caption</summary>
> Figure 4: Comparison of attention maps when one camera is masked. Models trained with ADC focus more precisely on functional cameras, demonstrating superior attention concentration compared to models trained with traditional data collection pipelines.
> </details>



![](https://arxiv.org/html/2503.11646/x5.png)

> 🔼 Figure 5 compares the visual observation coverage of the 'Grasp the orange' task between traditional data collection and the proposed Adversarial Data Collection (ADC) method.  Traditional methods yield images of the orange from very similar viewpoints, limiting the diversity of visual data.  In contrast, ADC uses dynamic perturbations to change the orange's position and orientation during the task. This results in a much wider variety of viewpoints being captured in the dataset. This increased visual diversity from ADC is crucial for building more robust and generalizable robotic models. The improved generalization is because the models trained on the varied viewpoints from ADC can better adapt to new or unseen scenarios.
> <details>
> <summary>read the caption</summary>
> Figure 5: Comparison of observation coverage for the task ”Grasp the orange.” In the traditional data collection process, the target object (orange) is observed from similar viewpoints, resulting in limited visual diversity. In contrast, ADC introduces dynamic perturbations, allowing the orange to be observed from a wider range of viewpoints. This leads to greater visual variation in the ADC dataset, improving model robustness and generalization.
> </details>



![](https://arxiv.org/html/2503.11646/x6.png)

> 🔼 Figure 6 showcases the dynamic human-robot interaction (HRI) scenarios used to test the robot's ability to grasp a moving object.  A human hand holds the fruit (the target object), and the human moves their hand during the grasping process, making the task significantly more challenging. The experiment was repeated across various scenes to further test the model's robustness.
> <details>
> <summary>read the caption</summary>
> Figure 6: Dynamic Human-Robot Interaction (HRI) scenarios. The robot is tasked with grasping the target fruit from the human hand, where the human’s hand may move during the manipulation tasks. Evaluation experiments are conducted across different scenes.
> </details>



![](https://arxiv.org/html/2503.11646/x7.png)

> 🔼 This figure shows a real-time demonstration of an autonomous failure recovery mechanism in a robot performing a grasping task. The robot initially attempts to grasp a peach but loses contact. It then automatically adjusts its grip parameters, performs a precise regrasp, and successfully completes the task. This demonstrates the robustness and adaptability of the robot's control system, which has been trained using the Adversarial Data Collection (ADC) method.
> <details>
> <summary>read the caption</summary>
> Figure 7: Autonomous Failure Recovery in ADC-Trained Robotic Grasping: Real-time demonstration of failure recovery after empty grasp. Following initial contact loss during peach acquisition, the system autonomously recalibrates grip pose parameters and executes a precision-aligned regrasp to complete the task.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S4.T2.3">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T2.3.1.1" style="background-color:#E6E6E6;">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="S4.T2.3.1.1.1" style="padding:0.5pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.3.1.1.1.1" style="background-color:#E6E6E6;">Method</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="S4.T2.3.1.1.2" style="padding:0.5pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.3.1.1.2.1" style="background-color:#E6E6E6;">Height</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_l ltx_border_r ltx_border_tt" colspan="3" id="S4.T2.3.1.1.3" style="padding:0.5pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.3.1.1.3.1" style="background-color:#E6E6E6;">Normal Positions</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_l ltx_border_r ltx_border_tt" colspan="3" id="S4.T2.3.1.1.4" style="padding:0.5pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.3.1.1.4.1" style="background-color:#E6E6E6;">Varied Positions</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T2.3.1.1.5" style="padding:0.5pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.3.1.1.5.1" style="background-color:#E6E6E6;">Avg.</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T2.3.2.1">
<td class="ltx_td ltx_border_r" id="S4.T2.3.2.1.1" style="padding:0.5pt 3.0pt;"></td>
<td class="ltx_td ltx_border_r" id="S4.T2.3.2.1.2" style="padding:0.5pt 3.0pt;"></td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.2.1.3" style="padding:0.5pt 3.0pt;"><span class="ltx_text" id="S4.T2.3.2.1.3.1" style="background-color:#E6E6E6;">Pick</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.2.1.4" style="padding:0.5pt 3.0pt;"><span class="ltx_text" id="S4.T2.3.2.1.4.1" style="background-color:#E6E6E6;">Place</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.3.2.1.5" style="background-color:#FFFF99;padding:0.5pt 3.0pt;"><span class="ltx_text" id="S4.T2.3.2.1.5.1" style="background-color:#FFFF99;">Place-C</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.2.1.6" style="padding:0.5pt 3.0pt;"><span class="ltx_text" id="S4.T2.3.2.1.6.1" style="background-color:#E6E6E6;">Pick</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.2.1.7" style="padding:0.5pt 3.0pt;"><span class="ltx_text" id="S4.T2.3.2.1.7.1" style="background-color:#E6E6E6;">Place</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.3.2.1.8" style="background-color:#FFFF99;padding:0.5pt 3.0pt;"><span class="ltx_text" id="S4.T2.3.2.1.8.1" style="background-color:#FFFF99;">Place-C</span></td>
<td class="ltx_td" id="S4.T2.3.2.1.9" style="padding:0.5pt 3.0pt;"></td>
</tr>
<tr class="ltx_tr" id="S4.T2.3.3.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_t" id="S4.T2.3.3.2.1" style="padding:0.5pt 3.0pt;">Traditional</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_t" id="S4.T2.3.3.2.2" style="padding:0.5pt 3.0pt;">Var. 1</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T2.3.3.2.3" style="padding:0.5pt 3.0pt;">1.0</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T2.3.3.2.4" style="padding:0.5pt 3.0pt;">0.8</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_t" id="S4.T2.3.3.2.5" style="padding:0.5pt 3.0pt;">1.0</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T2.3.3.2.6" style="padding:0.5pt 3.0pt;">0.0</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T2.3.3.2.7" style="padding:0.5pt 3.0pt;">0.0</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_t" id="S4.T2.3.3.2.8" style="padding:0.5pt 3.0pt;">0.0</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T2.3.3.2.9" style="padding:0.5pt 3.0pt;">0.47</th>
</tr>
<tr class="ltx_tr" id="S4.T2.3.4.3">
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.3.4.3.1" style="padding:0.5pt 3.0pt;"><span class="ltx_text ltx_font_smallcaps" id="S4.T2.3.4.3.1.1">ADC</span></td>
<td class="ltx_td ltx_border_r" id="S4.T2.3.4.3.2" style="padding:0.5pt 3.0pt;"></td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.4.3.3" style="padding:0.5pt 3.0pt;">1.0</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.4.3.4" style="padding:0.5pt 3.0pt;">1.0</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.3.4.3.5" style="padding:0.5pt 3.0pt;">1.0</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.4.3.6" style="padding:0.5pt 3.0pt;">1.0</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.4.3.7" style="padding:0.5pt 3.0pt;">1.0</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.3.4.3.8" style="padding:0.5pt 3.0pt;">1.0</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.4.3.9" style="padding:0.5pt 3.0pt;">1.0</td>
</tr>
<tr class="ltx_tr" id="S4.T2.3.5.4">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_t" id="S4.T2.3.5.4.1" style="padding:0.5pt 3.0pt;">Traditional</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_t" id="S4.T2.3.5.4.2" style="padding:0.5pt 3.0pt;">Var. 2</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T2.3.5.4.3" style="padding:0.5pt 3.0pt;">0.5</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T2.3.5.4.4" style="padding:0.5pt 3.0pt;">0.3</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_t" id="S4.T2.3.5.4.5" style="padding:0.5pt 3.0pt;">1.0</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T2.3.5.4.6" style="padding:0.5pt 3.0pt;">0.0</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T2.3.5.4.7" style="padding:0.5pt 3.0pt;">0.0</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_t" id="S4.T2.3.5.4.8" style="padding:0.5pt 3.0pt;">0.0</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T2.3.5.4.9" style="padding:0.5pt 3.0pt;">0.3</th>
</tr>
<tr class="ltx_tr" id="S4.T2.3.6.5">
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.3.6.5.1" style="padding:0.5pt 3.0pt;"><span class="ltx_text ltx_font_smallcaps" id="S4.T2.3.6.5.1.1">ADC</span></td>
<td class="ltx_td ltx_border_r" id="S4.T2.3.6.5.2" style="padding:0.5pt 3.0pt;"></td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.6.5.3" style="padding:0.5pt 3.0pt;">1.0</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.6.5.4" style="padding:0.5pt 3.0pt;">1.0</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.3.6.5.5" style="padding:0.5pt 3.0pt;">1.0</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.6.5.6" style="padding:0.5pt 3.0pt;">1.0</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.6.5.7" style="padding:0.5pt 3.0pt;">1.0</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.3.6.5.8" style="padding:0.5pt 3.0pt;">1.0</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.6.5.9" style="padding:0.5pt 3.0pt;">1.0</td>
</tr>
<tr class="ltx_tr" id="S4.T2.3.7.6">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_t" id="S4.T2.3.7.6.1" style="padding:0.5pt 3.0pt;">Traditional</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_t" id="S4.T2.3.7.6.2" style="padding:0.5pt 3.0pt;">Var. 3</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T2.3.7.6.3" style="padding:0.5pt 3.0pt;">0.3</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T2.3.7.6.4" style="padding:0.5pt 3.0pt;">0.5</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_t" id="S4.T2.3.7.6.5" style="padding:0.5pt 3.0pt;">0.0</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T2.3.7.6.6" style="padding:0.5pt 3.0pt;">0.0</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T2.3.7.6.7" style="padding:0.5pt 3.0pt;">0.0</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_t" id="S4.T2.3.7.6.8" style="padding:0.5pt 3.0pt;">0.0</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T2.3.7.6.9" style="padding:0.5pt 3.0pt;">0.13</th>
</tr>
<tr class="ltx_tr" id="S4.T2.3.8.7">
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S4.T2.3.8.7.1" style="padding:0.5pt 3.0pt;"><span class="ltx_text ltx_font_smallcaps" id="S4.T2.3.8.7.1.1">ADC</span></td>
<td class="ltx_td ltx_border_bb ltx_border_r" id="S4.T2.3.8.7.2" style="padding:0.5pt 3.0pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.3.8.7.3" style="padding:0.5pt 3.0pt;">1.0</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.3.8.7.4" style="padding:0.5pt 3.0pt;">1.0</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S4.T2.3.8.7.5" style="padding:0.5pt 3.0pt;">0.0</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.3.8.7.6" style="padding:0.5pt 3.0pt;">0.8</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.3.8.7.7" style="padding:0.5pt 3.0pt;">1.0</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S4.T2.3.8.7.8" style="padding:0.5pt 3.0pt;">0.5</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.3.8.7.9" style="padding:0.5pt 3.0pt;">0.72</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of evaluating different methods for robotic manipulation in static environments.  It compares the success rates of a traditional approach and the proposed Adversarial Data Collection (ADC) method across various conditions.  These conditions include different table heights (Var. 1, Var. 2, Var. 3 representing standard height, medium height and extreme height) and object placement positions (normal vs. varied positions). The 'Place-C' column is particularly important as it assesses compositional generalization – the ability of the model to perform a task (placing an object into a container) it has not explicitly been trained on, demonstrating the learned generalization capability.
> <details>
> <summary>read the caption</summary>
> TABLE II: Evaluation results in static environment. The column Place-C is highlighted for compositional generalization evaluation.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S4.T3.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T3.1.1.1" style="background-color:#E6E6E6;">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="S4.T3.1.1.1.1" style="padding:0.5pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.1.1.1.1.1" style="background-color:#E6E6E6;">Pert.</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" colspan="3" id="S4.T3.1.1.1.2" style="padding:0.5pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.1.1.1.2.1" style="background-color:#E6E6E6;">Varied Container’s Pos.</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" colspan="3" id="S4.T3.1.1.1.3" style="padding:0.5pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.1.1.1.3.1" style="background-color:#E6E6E6;">Varied Object’s Pos.</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T3.1.1.1.4" style="padding:0.5pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.1.1.1.4.1" style="background-color:#E6E6E6;">Avg.</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T3.1.2.1" style="background-color:#E6E6E6;">
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.1.2.1.1" style="padding:0.5pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.1.2.1.1.1" style="background-color:#E6E6E6;">Method</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.2.1.2" style="padding:0.5pt 3.0pt;"><span class="ltx_text" id="S4.T3.1.2.1.2.1" style="background-color:#E6E6E6;">Pick</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.2.1.3" style="padding:0.5pt 3.0pt;"><span class="ltx_text" id="S4.T3.1.2.1.3.1" style="background-color:#E6E6E6;">Place</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.1.2.1.4" style="padding:0.5pt 3.0pt;"><span class="ltx_text" id="S4.T3.1.2.1.4.1" style="background-color:#E6E6E6;">Place-C</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.2.1.5" style="padding:0.5pt 3.0pt;"><span class="ltx_text" id="S4.T3.1.2.1.5.1" style="background-color:#E6E6E6;">Pick</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.2.1.6" style="padding:0.5pt 3.0pt;"><span class="ltx_text" id="S4.T3.1.2.1.6.1" style="background-color:#E6E6E6;">Place</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.1.2.1.7" style="padding:0.5pt 3.0pt;"><span class="ltx_text" id="S4.T3.1.2.1.7.1" style="background-color:#E6E6E6;">Place-C</span></td>
<td class="ltx_td" id="S4.T3.1.2.1.8" style="padding:0.5pt 3.0pt;"></td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.3.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_t" id="S4.T3.1.3.2.1" style="padding:0.5pt 3.0pt;">Traditional</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T3.1.3.2.2" style="padding:0.5pt 3.0pt;">0.0</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T3.1.3.2.3" style="padding:0.5pt 3.0pt;">0.0</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_t" id="S4.T3.1.3.2.4" style="padding:0.5pt 3.0pt;">0.0</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T3.1.3.2.5" style="padding:0.5pt 3.0pt;">0.0</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T3.1.3.2.6" style="padding:0.5pt 3.0pt;">0.0</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_t" id="S4.T3.1.3.2.7" style="padding:0.5pt 3.0pt;">0.0</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T3.1.3.2.8" style="padding:0.5pt 3.0pt;">0.0</th>
</tr>
<tr class="ltx_tr" id="S4.T3.1.4.3">
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S4.T3.1.4.3.1" style="padding:0.5pt 3.0pt;"><span class="ltx_text ltx_font_smallcaps" id="S4.T3.1.4.3.1.1">ADC</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.1.4.3.2" style="padding:0.5pt 3.0pt;">0.8</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.1.4.3.3" style="padding:0.5pt 3.0pt;">0.7</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S4.T3.1.4.3.4" style="padding:0.5pt 3.0pt;">1.0</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.1.4.3.5" style="padding:0.5pt 3.0pt;">0.8</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.1.4.3.6" style="padding:0.5pt 3.0pt;">1.0</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S4.T3.1.4.3.7" style="padding:0.5pt 3.0pt;">1.0</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.1.4.3.8" style="padding:0.5pt 3.0pt;">0.88</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of evaluating the performance of robotic policies trained with and without adversarial data collection (ADC) in dynamic environments where visual perturbations are introduced.  The visual perturbations include changes to the position of the target objects and the containers. The table shows the success rates for different tasks (Pick, Place, Place-C which indicates compositional generalization) under varied conditions.  The goal is to demonstrate the robustness of ADC-trained policies to these visual disruptions.
> <details>
> <summary>read the caption</summary>
> TABLE III: Evaluation results in dynamic environment against the visual perturbations.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S4.T4.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T4.1.1.1" style="background-color:#E6E6E6;">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_th_row ltx_border_r ltx_border_tt" colspan="2" id="S4.T4.1.1.1.1" style="padding:0.5pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.1.1.1.1.1" style="background-color:#E6E6E6;">Pert. Time</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_th_row ltx_border_r ltx_border_tt" colspan="2" id="S4.T4.1.1.1.2" style="padding:0.5pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.1.1.1.2.1" style="background-color:#E6E6E6;">Before Grasp.</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_th_row ltx_border_r ltx_border_tt" colspan="2" id="S4.T4.1.1.1.3" style="padding:0.5pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.1.1.1.3.1" style="background-color:#E6E6E6;">During Grasp.</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_th_row ltx_border_tt" colspan="2" id="S4.T4.1.1.1.4" style="padding:0.5pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.1.1.1.4.1" style="background-color:#E6E6E6;">After Grasp.</span></th>
</tr>
<tr class="ltx_tr" id="S4.T4.1.2.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_th_row ltx_border_t" id="S4.T4.1.2.2.1" style="padding:0.5pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.1.2.2.1.1">Methods</span></th>
<th class="ltx_td ltx_th ltx_th_column ltx_border_r ltx_border_t" id="S4.T4.1.2.2.2" style="padding:0.5pt 3.0pt;"></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_th_row ltx_border_t" id="S4.T4.1.2.2.3" style="padding:0.5pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.1.2.2.3.1">Pick</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_t" id="S4.T4.1.2.2.4" style="padding:0.5pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.1.2.2.4.1">Place</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_th_row ltx_border_t" id="S4.T4.1.2.2.5" style="padding:0.5pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.1.2.2.5.1">Pick</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_t" id="S4.T4.1.2.2.6" style="padding:0.5pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.1.2.2.6.1">Place</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_th_row ltx_border_t" id="S4.T4.1.2.2.7" style="padding:0.5pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.1.2.2.7.1">Pick</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T4.1.2.2.8" style="padding:0.5pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.1.2.2.8.1">Place</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T4.1.3.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" id="S4.T4.1.3.1.1" style="padding:0.5pt 3.0pt;"><span class="ltx_text" id="S4.T4.1.3.1.1.1">Traditional</span></th>
<td class="ltx_td ltx_border_r ltx_border_t" id="S4.T4.1.3.1.2" style="padding:0.5pt 3.0pt;"></td>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" id="S4.T4.1.3.1.3" style="padding:0.5pt 3.0pt;">0.0</th>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T4.1.3.1.4" style="padding:0.5pt 3.0pt;">0.0</td>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" id="S4.T4.1.3.1.5" style="padding:0.5pt 3.0pt;">0.0</th>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T4.1.3.1.6" style="padding:0.5pt 3.0pt;">0.0</td>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" id="S4.T4.1.3.1.7" style="padding:0.5pt 3.0pt;">0.0</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.1.3.1.8" style="padding:0.5pt 3.0pt;">0.0</td>
</tr>
<tr class="ltx_tr" id="S4.T4.1.4.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_bb" id="S4.T4.1.4.2.1" style="padding:0.5pt 3.0pt;"><span class="ltx_text ltx_font_smallcaps" id="S4.T4.1.4.2.1.1">ADC</span></th>
<td class="ltx_td ltx_border_bb ltx_border_r" id="S4.T4.1.4.2.2" style="padding:0.5pt 3.0pt;"></td>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_bb" id="S4.T4.1.4.2.3" style="padding:0.5pt 3.0pt;">1.0</th>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S4.T4.1.4.2.4" style="padding:0.5pt 3.0pt;">1.0</td>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_bb" id="S4.T4.1.4.2.5" style="padding:0.5pt 3.0pt;">0.6</th>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S4.T4.1.4.2.6" style="padding:0.5pt 3.0pt;">0.7</td>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_bb" id="S4.T4.1.4.2.7" style="padding:0.5pt 3.0pt;">1.0</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.1.4.2.8" style="padding:0.5pt 3.0pt;">1.0</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of evaluating the performance of robotic policies trained with and without adversarial data collection (ADC) in dynamic environments where linguistic perturbations are introduced.  It shows the success rate (SR) for different subtasks (Pick, Place, Place-C, which refers to a composite task) under various conditions: before, during, and after the grasp. This allows for analysis of how well each policy handles changes in instructions mid-task execution.
> <details>
> <summary>read the caption</summary>
> TABLE IV: Evaluation results in dynamic environment against the linguistic perturbations.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S4.T5.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T5.1.1.1" style="background-color:#E6E6E6;">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" colspan="2" id="S4.T5.1.1.1.1" style="padding:0.5pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T5.1.1.1.1.1" style="background-color:#E6E6E6;">Masked Cam.</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" colspan="2" id="S4.T5.1.1.1.2" style="padding:0.5pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T5.1.1.1.2.1" style="background-color:#E6E6E6;">Right Wrist</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" colspan="2" id="S4.T5.1.1.1.3" style="padding:0.5pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T5.1.1.1.3.1" style="background-color:#E6E6E6;">Head</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T5.1.1.1.4" style="padding:0.5pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T5.1.1.1.4.1" style="background-color:#E6E6E6;">Avg.</span></th>
</tr>
<tr class="ltx_tr" id="S4.T5.1.2.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T5.1.2.2.1" style="padding:0.5pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T5.1.2.2.1.1">Methods</span></th>
<th class="ltx_td ltx_th ltx_th_column ltx_border_r ltx_border_t" id="S4.T5.1.2.2.2" style="padding:0.5pt 3.0pt;"></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T5.1.2.2.3" style="padding:0.5pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T5.1.2.2.3.1">Pick</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_t" id="S4.T5.1.2.2.4" style="padding:0.5pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T5.1.2.2.4.1">Place-AB</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T5.1.2.2.5" style="padding:0.5pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T5.1.2.2.5.1">Pick</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_t" id="S4.T5.1.2.2.6" style="padding:0.5pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T5.1.2.2.6.1">Place-AB</span></th>
<th class="ltx_td ltx_th ltx_th_column" id="S4.T5.1.2.2.7" style="padding:0.5pt 3.0pt;"></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T5.1.3.1">
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.1.3.1.1" style="padding:0.5pt 3.0pt;">Traditional</td>
<td class="ltx_td ltx_border_r ltx_border_t" id="S4.T5.1.3.1.2" style="padding:0.5pt 3.0pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.1.3.1.3" style="padding:0.5pt 3.0pt;">0.0</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T5.1.3.1.4" style="padding:0.5pt 3.0pt;">0.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.1.3.1.5" style="padding:0.5pt 3.0pt;">0.0</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T5.1.3.1.6" style="padding:0.5pt 3.0pt;">0.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.1.3.1.7" style="padding:0.5pt 3.0pt;">0.0</td>
</tr>
<tr class="ltx_tr" id="S4.T5.1.4.2">
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T5.1.4.2.1" style="padding:0.5pt 3.0pt;"><span class="ltx_text ltx_font_smallcaps" id="S4.T5.1.4.2.1.1">ADC</span></td>
<td class="ltx_td ltx_border_bb ltx_border_r" id="S4.T5.1.4.2.2" style="padding:0.5pt 3.0pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T5.1.4.2.3" style="padding:0.5pt 3.0pt;">0.6</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S4.T5.1.4.2.4" style="padding:0.5pt 3.0pt;">0.5</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T5.1.4.2.5" style="padding:0.5pt 3.0pt;">0.7</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S4.T5.1.4.2.6" style="padding:0.5pt 3.0pt;">0.4</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T5.1.4.2.7" style="padding:0.5pt 3.0pt;">0.55</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 Table V presents the performance of models trained with traditional data collection methods and the proposed Adversarial Data Collection (ADC) method when one or more cameras are masked during evaluation.  It assesses the models' robustness to sensor failures in a static environment by measuring their success rate on the 'Pick' and 'Place' subtasks.  The table evaluates performance under three different masked camera scenarios: masking only the head camera, masking only the right wrist camera, and masking all cameras. The results demonstrate the impact of ADC on the resilience of the robotic manipulation model in the face of sensor limitations.
> <details>
> <summary>read the caption</summary>
> TABLE V: Evaluation results with masked cameras in static environment.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S4.T6.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T6.1.1.1">
<th class="ltx_td ltx_th ltx_th_column ltx_border_tt" id="S4.T6.1.1.1.1" style="padding:0.5pt 4.0pt;"></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="2" id="S4.T6.1.1.1.2" style="padding:0.5pt 4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T6.1.1.1.2.1">Static Env.</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="2" id="S4.T6.1.1.1.3" style="padding:0.5pt 4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T6.1.1.1.3.1">Dynamic Env.</span></th>
<th class="ltx_td ltx_th ltx_th_column ltx_border_tt" id="S4.T6.1.1.1.4" style="padding:0.5pt 4.0pt;"></th>
</tr>
<tr class="ltx_tr" id="S4.T6.1.2.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column" id="S4.T6.1.2.2.1" style="padding:0.5pt 4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T6.1.2.2.1.1">Dataset Receipt</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T6.1.2.2.2" style="padding:0.5pt 4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T6.1.2.2.2.1">Pick</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_t" id="S4.T6.1.2.2.3" style="padding:0.5pt 4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T6.1.2.2.3.1">Place</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T6.1.2.2.4" style="padding:0.5pt 4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T6.1.2.2.4.1">Pick</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_t" id="S4.T6.1.2.2.5" style="padding:0.5pt 4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T6.1.2.2.5.1">Place</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S4.T6.1.2.2.6" style="padding:0.5pt 4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T6.1.2.2.6.1">Avg.</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T6.1.3.1">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T6.1.3.1.1" style="padding:0.5pt 4.0pt;">100% Traditional</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.1.3.1.2" style="padding:0.5pt 4.0pt;">0.5</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T6.1.3.1.3" style="padding:0.5pt 4.0pt;">0.45</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.1.3.1.4" style="padding:0.5pt 4.0pt;">0.0</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T6.1.3.1.5" style="padding:0.5pt 4.0pt;">0.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.1.3.1.6" style="padding:0.5pt 4.0pt;">0.24</td>
</tr>
<tr class="ltx_tr" id="S4.T6.1.4.2">
<td class="ltx_td ltx_align_left" id="S4.T6.1.4.2.1" style="padding:0.5pt 4.0pt;">20% Ours</td>
<td class="ltx_td ltx_align_center" id="S4.T6.1.4.2.2" style="padding:0.5pt 4.0pt;">0.5</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T6.1.4.2.3" style="padding:0.5pt 4.0pt;">0.75</td>
<td class="ltx_td ltx_align_center" id="S4.T6.1.4.2.4" style="padding:0.5pt 4.0pt;">0.58</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T6.1.4.2.5" style="padding:0.5pt 4.0pt;">0.75</td>
<td class="ltx_td ltx_align_center" id="S4.T6.1.4.2.6" style="padding:0.5pt 4.0pt;">0.65</td>
</tr>
<tr class="ltx_tr" id="S4.T6.1.5.3">
<td class="ltx_td ltx_align_left" id="S4.T6.1.5.3.1" style="padding:0.5pt 4.0pt;">50% Ours</td>
<td class="ltx_td ltx_align_center" id="S4.T6.1.5.3.2" style="padding:0.5pt 4.0pt;">0.83</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T6.1.5.3.3" style="padding:0.5pt 4.0pt;">0.75</td>
<td class="ltx_td ltx_align_center" id="S4.T6.1.5.3.4" style="padding:0.5pt 4.0pt;">0.63</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T6.1.5.3.5" style="padding:0.5pt 4.0pt;">0.75</td>
<td class="ltx_td ltx_align_center" id="S4.T6.1.5.3.6" style="padding:0.5pt 4.0pt;">0.74</td>
</tr>
<tr class="ltx_tr" id="S4.T6.1.6.4">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S4.T6.1.6.4.1" style="padding:0.5pt 4.0pt;">100% Ours</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T6.1.6.4.2" style="padding:0.5pt 4.0pt;">0.9</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S4.T6.1.6.4.3" style="padding:0.5pt 4.0pt;">0.875</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T6.1.6.4.4" style="padding:0.5pt 4.0pt;">0.83</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S4.T6.1.6.4.5" style="padding:0.5pt 4.0pt;">0.94</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T6.1.6.4.6" style="padding:0.5pt 4.0pt;">0.89</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a comparison of model performance using different datasets in both static and dynamic robotic manipulation environments.  It shows the success rate (SR) of picking and placing objects in various conditions.  These conditions include variations in object positions and heights (static), and the introduction of dynamic visual and linguistic perturbations (dynamic). The table compares the performance of models trained on 100%, 50%, and 20% of the Adversarial Data Collection (ADC) dataset, as well as a model trained on the traditional dataset (100% Traditional). This allows for an analysis of the data efficiency of the ADC method.
> <details>
> <summary>read the caption</summary>
> TABLE VI: Performance comparison of different datasets in static and dynamic environments.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2503.11646/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.11646/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.11646/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.11646/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.11646/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.11646/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.11646/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.11646/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}