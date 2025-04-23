---
title: "NoisyRollout: Reinforcing Visual Reasoning with Data Augmentation"
summary: "NoisyRollout: Enhances VLM visual reasoning via targeted data augmentation and noise annealing, achieving state-of-the-art performance."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Multimodal Learning", "Multimodal Reasoning", "🏢 National University of Singapore",]
showSummary: true
date: 2025-04-17
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2504.13055 {{< /keyword >}}
{{< keyword icon="writer" >}} Xiangyan Liu et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-04-18 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2504.13055" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2504.13055" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2504.13055/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Recent RL advances enhance vision-language models (VLMs), but policy exploration and visual perception remain challenging. VLMs struggle with imperfect visual input, affecting reasoning. Traditional practices lack informative guidance. This paper introduces NoisyRollout to tackle these challenges, promoting targeted exploration during training. It also aims to improve how well the VLMs works with distorted images to better understand the image. 



NoisyRollout mixes trajectories from clean and moderately distorted images. NoisyRollout uses a vision-oriented inductive bias and noise annealing, reducing distortion strength. With 2.1K training samples, NoisyRollout achieves state-of-the-art performance on 5 out-of-domain benchmarks, while maintaining or improving in-domain performance. The method introduces diverse explorations that improves generalization to harder or out-of-domain visual conditions. It also refining the model's perception during the reasoning process.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} NoisyRollout enhances exploration in VLMs by mixing trajectories from clean and distorted images. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} A noise annealing schedule ensures benefits from noisy signals early while maintaining training stability. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} The method achieves state-of-the-art performance on out-of-domain benchmarks with only 2.1K training samples. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper is important as it introduces an effective method to **enhance visual reasoning in VLMs without additional training costs**. The novel approach offers a practical solution for improving model generalization, relevant to current trends focused on scaling and improving the robustness of VLMs. This research opens avenues for exploring new data augmentation strategies in RL and analyzing their impact on model learning and performance.

------
#### Visual Insights



![](https://arxiv.org/html/2504.13055/x3.png)

> 🔼 This figure presents a bar chart comparing the accuracy improvements of different vision-language models on five out-of-domain benchmark datasets.  The baseline model is Qwen2.5-VL-7B-Instruct. The chart shows the performance gains achieved by various models, including Qwen2.5-VL-GRPO-7B and the proposed NoisyRollout-7B, which were both fine-tuned using the Geometry3K dataset. The y-axis represents the percentage improvement over the baseline, while the x-axis shows the different benchmark datasets, each testing a combination of reasoning and visual perception capabilities.  The exact accuracy of the NoisyRollout-7B model on each benchmark is provided in parentheses above each bar.
> <details>
> <summary>read the caption</summary>
> Figure 1: Accuracy improvement over the baseline model (Qwen2.5-VL-7B-Instruct) on out-of-domain benchmarks covering both reasoning and perception tasks. Both Qwen2.5-VL-GRPO-7B and NoisyRollout-7B are fine-tuned by ourselves (denoted with ‡‡\ddagger‡) using GRPO with 2.12.12.12.1K training samples from Geometry3K. The exact accuracy of NoisyRollout-7B is annotated above each corresponding bar in parentheses.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="id16.2">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="id15.1.1">
<td class="ltx_td ltx_align_right" id="id15.1.1.1" style="padding-bottom:5.0pt;"><span class="ltx_text" id="id15.1.1.1.1" style="position:relative; bottom:-1.5pt;"><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_square" height="20" id="id15.1.1.1.1.g1" src="x1.png" width="20"/></span></td>
<td class="ltx_td ltx_align_center" id="id15.1.1.2" style="padding-bottom:5.0pt;"><span class="ltx_text ltx_font_bold" id="id15.1.1.2.1">Code</span></td>
<td class="ltx_td ltx_align_left" id="id15.1.1.3" style="padding-bottom:5.0pt;"><a class="ltx_ref ltx_href" href="https://github.com/John-AI-Lab/NoisyRollout" title=""><span class="ltx_ref ltx_nolink ltx_path ltx_font_typewriter">github.com/John-AI-Lab/NoisyRollout</span></a></td>
</tr>
<tr class="ltx_tr" id="id16.2.2">
<td class="ltx_td ltx_align_right" id="id16.2.2.1" style="padding-bottom:5.0pt;"><span class="ltx_text" id="id16.2.2.1.1" style="position:relative; bottom:-1.5pt;"><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_square" height="20" id="id16.2.2.1.1.g1" src="x2.png" width="22"/></span></td>
<td class="ltx_td ltx_align_center" id="id16.2.2.2" style="padding-bottom:5.0pt;"><span class="ltx_text ltx_font_bold" id="id16.2.2.2.1">Model &amp; Dataset</span></td>
<td class="ltx_td ltx_align_left" id="id16.2.2.3" style="padding-bottom:5.0pt;"><a class="ltx_ref ltx_href" href="https://huggingface.co/collections/xyliu6/noisyrollout-67ff992d1cf251087fe021a2" title=""><span class="ltx_ref ltx_nolink ltx_path ltx_font_typewriter">hf.co/collections/xyliu6/noisyrollout</span></a></td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 Table 1 presents a performance comparison of various vision-language models (VLMs) on five out-of-domain benchmark datasets.  The table shows the accuracy (in percentage) achieved by each model on each benchmark, along with the average accuracy across all benchmarks.  To ensure consistent evaluation, models marked with a star were assessed using the authors' custom evaluation scripts built on the vLLM framework, while models marked with a dagger used a direct-answer template.  Models in the R1-related category additionally show the Supervised Fine-tuning (SFT) and Reinforcement Learning (RL) dataset sizes used during training (in red and blue, respectively). Within the R1-related group, the best and second-best performances in each column are highlighted in bold and underlined, respectively, for easy comparison.
> <details>
> <summary>read the caption</summary>
> Table 1: Performance comparison of various VLMs on a suite of out-of-domain benchmarks. We report accuracy scores (%) for all benchmarks for clarity. “Avg.” denotes the average accuracy across the five benchmarks. Models marked with “⋆⋆\star⋆” are evaluated using our evaluation scripts implemented with vLLM (Kwon et al., 2023), and “††\dagger†” indicates results evaluated using the direct-answer template. For models in the R1-related category, dataset sizes used for SFT and RL are annotated in red and blue, respectively. Among R1-related models, best value per column is bold, second best is underlined.
> </details>





### In-depth insights


#### NoisyRL's Roots
While "NoisyRL's Roots" isn't explicitly detailed, the paper's methodology heavily implies its grounding in data augmentation and reinforcement learning principles. The core idea of **injecting noise** during training is a well-established technique to improve model robustness and generalization, it leverages insights from robust optimization. Further, the method seeks to overcome **visual limitations** by exposing the model to distorted inputs, this builds resilience to imperfect real-world data. The RL aspect draws heavily from policy optimization techniques, aiming to refine the model's decision-making process in response to visual inputs. In essence, "NoisyRL's Roots" lie in the synergistic combination of data augmentation, robust optimization and policy optimization, targeting enhanced exploration and addressing perceptual bottlenecks.

#### Vision-guided RL
Vision-guided Reinforcement Learning (RL) represents a crucial frontier in AI, merging the representational power of computer vision with the decision-making capabilities of RL. This synergy allows agents to learn policies directly from raw visual inputs, bypassing the need for hand-engineered features or explicit state representations. A core challenge lies in efficiently exploring vast, high-dimensional visual state spaces. **Effective exploration strategies** that leverage visual cues to guide the learning process are essential for achieving robust and generalizable policies. Another key area is **representation learning**, where the goal is to extract meaningful and task-relevant features from visual data. **Techniques like convolutional neural networks (CNNs) and transformers** have proven effective in learning these representations, but further research is needed to develop methods that are more sample-efficient and robust to changes in the environment. Vision-guided RL holds immense promise for enabling intelligent agents to operate in complex, real-world environments, but significant research efforts are still required to address the challenges related to exploration, representation learning, and generalization. Future directions may involve incorporating attention mechanisms, memory modules, and hierarchical architectures to further enhance the capabilities of vision-guided RL agents.

#### Hybrid rollouts
**Hybrid rollouts** offer a novel approach to reinforcement learning, particularly in scenarios where data augmentation or diverse experiences are beneficial. The central idea is to mix trajectories from different sources, such as clean data and augmented data, to improve exploration and generalization. This strategy leverages the strengths of each source; clean data provides reliable signals for learning, while augmented data introduces variability and robustness. The success of hybrid rollouts depends on carefully balancing the mix of trajectories and designing augmentations that are relevant to the task. This approach can enhance exploration, improve sample efficiency, and lead to more robust policies that generalize better to unseen environments or challenging conditions. Furthermore, a well-designed annealing strategy is essential to fine-tune the impact of noisy trajectories effectively.

#### Data is Key
The principle that **data is key** highlights the significance of high-quality, diverse datasets in machine learning. A model's ability to generalize and perform well depends heavily on the data it is trained on. **Insufficient or biased data** can lead to poor performance, overfitting, or skewed results. Therefore, careful **data collection, cleaning, and augmentation** are vital steps. Strategies like **data augmentation** become crucial to improve model robustness and generalization. Furthermore, **incorporating diverse data** from various sources can help the model learn more comprehensive representations, leading to better decision-making and higher accuracy. Thus, emphasizing data quality and diversity is foundational for successful machine learning outcomes.

#### Future NoisyRL
Considering the presented research, future directions for "NoisyRL" are promising. First, exploring **adaptive noise scheduling** could optimize performance across diverse tasks. Datasets and dynamically adjusting noise levels based on training progress or task complexity might yield superior results. Second, investigating **diverse noise types** beyond Gaussian noise could prove beneficial; structured noise, mimicking real-world sensor imperfections, could enhance robustness. Finally, extending NoisyRL to other **reinforcement learning objectives** beyond GRPO could broaden its applicability. Evaluating its effectiveness in scenarios involving sparse rewards or continuous action spaces would be valuable, potentially enhancing its ability to **handle complex and varied environments**, and this will require a more thorough experimentation to adapt with more diverse datasets.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2504.13055/x4.png)

> 🔼 Figure 2 illustrates the NoisyRollout workflow, enhancing visual reasoning in vision-language models (VLMs) through reinforcement learning.  Solid lines represent the standard Group Relative Policy Optimization (GRPO) process. Dashed lines show the addition of noisy rollouts generated from distorted images.  The noisy rollouts contribute to the reward baseline and advantage calculations but are not directly used in policy updates, improving exploration without extra training cost.  A noise annealing schedule gradually reduces the image distortion strength over training, ensuring stability and scalability. This approach combines trajectories from both clean and noisy inputs to enhance the exploration capability of the model and improve robustness.
> <details>
> <summary>read the caption</summary>
> Figure 2: Illustration of our NoisyRollout workflow. Solid lines denote the standard GRPO process, while dashed lines depict the generation and use of noisy rollouts from distorted images. KL divergence loss is omitted as discussed in Section 2. The terms {𝐨i}i=1n1+n2superscriptsubscriptsubscript𝐨𝑖𝑖1subscript𝑛1subscript𝑛2\{\mathbf{o}_{i}\}_{i=1}^{n_{1}+n_{2}}{ bold_o start_POSTSUBSCRIPT italic_i end_POSTSUBSCRIPT } start_POSTSUBSCRIPT italic_i = 1 end_POSTSUBSCRIPT start_POSTSUPERSCRIPT italic_n start_POSTSUBSCRIPT 1 end_POSTSUBSCRIPT + italic_n start_POSTSUBSCRIPT 2 end_POSTSUBSCRIPT end_POSTSUPERSCRIPT, {ri}i=1n1+n2superscriptsubscriptsubscript𝑟𝑖𝑖1subscript𝑛1subscript𝑛2\{r_{i}\}_{i=1}^{n_{1}+n_{2}}{ italic_r start_POSTSUBSCRIPT italic_i end_POSTSUBSCRIPT } start_POSTSUBSCRIPT italic_i = 1 end_POSTSUBSCRIPT start_POSTSUPERSCRIPT italic_n start_POSTSUBSCRIPT 1 end_POSTSUBSCRIPT + italic_n start_POSTSUBSCRIPT 2 end_POSTSUBSCRIPT end_POSTSUPERSCRIPT, and {Ai}i=1n1+n2superscriptsubscriptsubscript𝐴𝑖𝑖1subscript𝑛1subscript𝑛2\{A_{i}\}_{i=1}^{n_{1}+n_{2}}{ italic_A start_POSTSUBSCRIPT italic_i end_POSTSUBSCRIPT } start_POSTSUBSCRIPT italic_i = 1 end_POSTSUBSCRIPT start_POSTSUPERSCRIPT italic_n start_POSTSUBSCRIPT 1 end_POSTSUBSCRIPT + italic_n start_POSTSUBSCRIPT 2 end_POSTSUBSCRIPT end_POSTSUPERSCRIPT represent mixed trajectories, rewards, and normalized advantages, respectively, with n1subscript𝑛1n_{1}italic_n start_POSTSUBSCRIPT 1 end_POSTSUBSCRIPT from clean inputs and n2subscript𝑛2n_{2}italic_n start_POSTSUBSCRIPT 2 end_POSTSUBSCRIPT from noisy inputs. (I,𝐪)𝐼𝐪(I,\mathbf{q})( italic_I , bold_q ) and (I~,𝐪)~𝐼𝐪(\tilde{I},\mathbf{q})( over~ start_ARG italic_I end_ARG , bold_q ) denote clean and noisy inputs where I~=Tαt⁢(I)~𝐼subscript𝑇subscript𝛼𝑡𝐼\tilde{I}=T_{\alpha_{t}}(I)over~ start_ARG italic_I end_ARG = italic_T start_POSTSUBSCRIPT italic_α start_POSTSUBSCRIPT italic_t end_POSTSUBSCRIPT end_POSTSUBSCRIPT ( italic_I ) applies a distortion with strength αtsubscript𝛼𝑡\alpha_{t}italic_α start_POSTSUBSCRIPT italic_t end_POSTSUBSCRIPT. The distortion level αtsubscript𝛼𝑡\alpha_{t}italic_α start_POSTSUBSCRIPT italic_t end_POSTSUBSCRIPT is determined by a noise annealing schedule η⁢(⋅)𝜂⋅\eta(\cdot)italic_η ( ⋅ ), which gradually reduces distortion over the training process. Only clean inputs are used for policy optimization in RL.
> </details>



![](https://arxiv.org/html/2504.13055/x5.png)

> 🔼 Figure 3 presents a comprehensive comparison of NoisyRollout and vanilla GRPO across both in-domain and out-of-domain scenarios.  All experiments used the same total rollout number (12). The x-axis consistently shows RL training steps. The first column displays a comparison of rewards obtained during training on the in-domain dataset. The second and third columns showcase a comparison of performance across four separate out-of-domain visual reasoning benchmarks. Finally, the last column evaluates the perception capabilities of both models. This is accomplished in two ways: the top subplot shows a direct comparison of perception performance on HallucinationBench, while the lower subplot uses model-ranked Bradley-Terry win rates to assess perception quality based on the reasoning traces generated during training. 
> <details>
> <summary>read the caption</summary>
> Figure 3: Comparison of NoisyRollout and vanilla GRPO across in-domain and out-of-domain scenarios with the same total rollout number (12121212). The X-axis in all plots represents RL training steps. First column: Reward comparison on the in-domain dataset during training. Second and third columns: Comparison on four out-of-domain visual reasoning benchmarks. Last column: Evaluation of perception capabilities, where the upper subplot directly compares their perception performance on HallusionBench and the lower subplot presents the model-ranked Bradley–Terry win rates w.r.t. the perception qualities of their reasoning traces during training.
> </details>



![](https://arxiv.org/html/2504.13055/x6.png)

> 🔼 Figure 4 presents a detailed comparison of the performance of NoisyRollout and vanilla GRPO across different RL training steps (0 to 40).  The left two subplots show a direct comparison between NoisyRollout and vanilla GRPO, both using a temperature of 1.0 during the rollout process.  These plots illustrate the changes in accuracy and rollout diversity over training. The right two subplots showcase how different temperature settings (0.8, 1.0, and 1.2) affect vanilla GRPO's performance and diversity.  By comparing these plots, one can observe how NoisyRollout manages to achieve comparable or better accuracy while maintaining a higher rollout diversity, suggesting that it has superior exploration capabilities.
> <details>
> <summary>read the caption</summary>
> Figure 4: Comparison of accuracy and diversity metrics (%) across RL training steps (00 to 40404040). The left two subfigures contrast NoisyRollout versus vanilla GRPO (both with temperature 1.01.01.01.0), while the right two demonstrate the effects of different temperature settings (0.80.80.80.8, 1.01.01.01.0, 1.21.21.21.2) on vanilla GRPO.
> </details>



![](https://arxiv.org/html/2504.13055/x7.png)

> 🔼 Figure 5 presents a detailed comparison of three reinforcement learning (RL) approaches for fine-tuning vision-language models: NoisyRollout with and without noise annealing, and vanilla GRPO.  It illustrates training dynamics by plotting policy clip fraction and training reward against training steps, giving insights into the stability and effectiveness of each method. The figure also displays in-domain test set accuracy for each approach over the training period, demonstrating how the models' performance on the target task changes as training progresses. This allows for a comprehensive assessment of the training stability and overall performance of each RL method.
> <details>
> <summary>read the caption</summary>
> Figure 5: Comparison of NoisyRollout w. and w.o. noise annealing, and vanilla GRPO in terms of training dynamics (policy clip fraction and training reward) and accuracy on the in-domain test set.
> </details>



![](https://arxiv.org/html/2504.13055/x8.png)

> 🔼 This figure visualizes the effect of applying different levels of Gaussian noise to a clean image.  It shows how increasing the noise level (noise step) leads to a progressive degradation of the image quality, making the details of the image increasingly difficult to discern. The figure aids in illustrating the impact of noisy input trajectories on the overall visual reasoning process of vision-language models. This type of noisy input is used in the NoisyRollout approach.
> <details>
> <summary>read the caption</summary>
> Figure 6: Illustration of visual degradation under increasing Gaussian noise steps.
> </details>



![](https://arxiv.org/html/2504.13055/x9.png)

> 🔼 This figure presents a comparative case study demonstrating the enhanced visual perception capabilities of the NoisyRollout method.  It compares the reasoning processes and final answers of both NoisyRollout and vanilla GRPO when responding to a question about the relative lengths of lines in an image. The step-by-step reasoning for each method is displayed, revealing how NoisyRollout meticulously analyzes the image components (lines and segments) leading to an accurate determination of line length. Conversely, vanilla GRPO shows a tendency to oversimplify or misinterpret the visual information, resulting in an incorrect answer. This case study visually underscores the effectiveness of NoisyRollout in improving the accuracy of visual information extraction and leading to improved reasoning performance.
> <details>
> <summary>read the caption</summary>
> Figure 7: Case study showcasing improved perception capability of NoisyRollout compared to vanilla GRPO.
> </details>



![](https://arxiv.org/html/2504.13055/x10.png)

> 🔼 This figure presents a case study comparing the reasoning capabilities of NoisyRollout and vanilla GRPO.  It shows how NoisyRollout correctly reasons through a geometry problem by accurately interpreting and using visual information from the diagram, while vanilla GRPO makes an error due to inaccurate visual perception. The problem involves determining the perimeter of a triangle within a larger diagram given specific conditions (equal lengths, angle bisector).  NoisyRollout demonstrates improved accuracy by correctly identifying and utilizing the relevant visual information in its reasoning steps, leading to the correct answer. In contrast, vanilla GRPO's reasoning is flawed due to an incorrect interpretation of the diagram, which leads it to an incorrect solution.
> <details>
> <summary>read the caption</summary>
> Figure 8: Case study illustrating enhanced reasoning capability of NoisyRollout over vanilla GRPO.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S3.T1.22.18">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S3.T1.22.18.19.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_tt" id="S3.T1.22.18.19.1.1" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.22.18.19.1.1.1">Model</span></th>
<th class="ltx_td ltx_align_right ltx_th ltx_th_row ltx_border_tt" id="S3.T1.22.18.19.1.2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.22.18.19.1.2.1">#Data</span></th>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T1.22.18.19.1.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.22.18.19.1.3.1">MathVerse</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T1.22.18.19.1.4" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.22.18.19.1.4.1">MathVision</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T1.22.18.19.1.5" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.22.18.19.1.5.1">MathVista</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T1.22.18.19.1.6" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.22.18.19.1.6.1">WeMath</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T1.22.18.19.1.7" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.22.18.19.1.7.1">HallusionBench</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T1.22.18.19.1.8" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.22.18.19.1.8.1">Avg.</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.22.18.20.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" colspan="8" id="S3.T1.22.18.20.2.1" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_italic" id="S3.T1.22.18.20.2.1.1">Close-source</span></th>
</tr>
<tr class="ltx_tr" id="S3.T1.22.18.21.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S3.T1.22.18.21.3.1" style="padding-left:3.0pt;padding-right:3.0pt;">GPT-4o <cite class="ltx_cite ltx_citemacro_citep">(Hurst et al., <a class="ltx_ref" href="https://arxiv.org/html/2504.13055v1#bib.bib17" title="">2024</a>)</cite>
</th>
<th class="ltx_td ltx_align_right ltx_th ltx_th_row ltx_border_t" id="S3.T1.22.18.21.3.2" style="padding-left:3.0pt;padding-right:3.0pt;">-</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.22.18.21.3.3" style="padding-left:3.0pt;padding-right:3.0pt;">50.8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.22.18.21.3.4" style="padding-left:3.0pt;padding-right:3.0pt;">30.4</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.22.18.21.3.5" style="padding-left:3.0pt;padding-right:3.0pt;">63.8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.22.18.21.3.6" style="padding-left:3.0pt;padding-right:3.0pt;">69.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.22.18.21.3.7" style="padding-left:3.0pt;padding-right:3.0pt;">-</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.22.18.21.3.8" style="padding-left:3.0pt;padding-right:3.0pt;">-</td>
</tr>
<tr class="ltx_tr" id="S3.T1.22.18.22.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T1.22.18.22.4.1" style="padding-left:3.0pt;padding-right:3.0pt;">Claude-3.5-Sonnet <cite class="ltx_cite ltx_citemacro_citep">(Anthropic, <a class="ltx_ref" href="https://arxiv.org/html/2504.13055v1#bib.bib3" title="">2024</a>)</cite>
</th>
<th class="ltx_td ltx_align_right ltx_th ltx_th_row" id="S3.T1.22.18.22.4.2" style="padding-left:3.0pt;padding-right:3.0pt;">-</th>
<td class="ltx_td ltx_align_center" id="S3.T1.22.18.22.4.3" style="padding-left:3.0pt;padding-right:3.0pt;">26.5</td>
<td class="ltx_td ltx_align_center" id="S3.T1.22.18.22.4.4" style="padding-left:3.0pt;padding-right:3.0pt;">38.0</td>
<td class="ltx_td ltx_align_center" id="S3.T1.22.18.22.4.5" style="padding-left:3.0pt;padding-right:3.0pt;">67.7</td>
<td class="ltx_td ltx_align_center" id="S3.T1.22.18.22.4.6" style="padding-left:3.0pt;padding-right:3.0pt;">-</td>
<td class="ltx_td ltx_align_center" id="S3.T1.22.18.22.4.7" style="padding-left:3.0pt;padding-right:3.0pt;">-</td>
<td class="ltx_td ltx_align_center" id="S3.T1.22.18.22.4.8" style="padding-left:3.0pt;padding-right:3.0pt;">-</td>
</tr>
<tr class="ltx_tr" id="S3.T1.22.18.23.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T1.22.18.23.5.1" style="padding-left:3.0pt;padding-right:3.0pt;">Kimi1.5 <cite class="ltx_cite ltx_citemacro_citep">(Kimi Team, <a class="ltx_ref" href="https://arxiv.org/html/2504.13055v1#bib.bib20" title="">2025</a>)</cite>
</th>
<th class="ltx_td ltx_align_right ltx_th ltx_th_row" id="S3.T1.22.18.23.5.2" style="padding-left:3.0pt;padding-right:3.0pt;">-</th>
<td class="ltx_td ltx_align_center" id="S3.T1.22.18.23.5.3" style="padding-left:3.0pt;padding-right:3.0pt;">-</td>
<td class="ltx_td ltx_align_center" id="S3.T1.22.18.23.5.4" style="padding-left:3.0pt;padding-right:3.0pt;">38.6</td>
<td class="ltx_td ltx_align_center" id="S3.T1.22.18.23.5.5" style="padding-left:3.0pt;padding-right:3.0pt;">74.9</td>
<td class="ltx_td ltx_align_center" id="S3.T1.22.18.23.5.6" style="padding-left:3.0pt;padding-right:3.0pt;">-</td>
<td class="ltx_td ltx_align_center" id="S3.T1.22.18.23.5.7" style="padding-left:3.0pt;padding-right:3.0pt;">-</td>
<td class="ltx_td ltx_align_center" id="S3.T1.22.18.23.5.8" style="padding-left:3.0pt;padding-right:3.0pt;">-</td>
</tr>
<tr class="ltx_tr" id="S3.T1.22.18.24.6">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" colspan="8" id="S3.T1.22.18.24.6.1" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_italic" id="S3.T1.22.18.24.6.1.1">Open-source</span></th>
</tr>
<tr class="ltx_tr" id="S3.T1.22.18.25.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S3.T1.22.18.25.7.1" style="padding-left:3.0pt;padding-right:3.0pt;">InternVL-2.5-8B-Instruct <cite class="ltx_cite ltx_citemacro_citep">(Chen et al., <a class="ltx_ref" href="https://arxiv.org/html/2504.13055v1#bib.bib8" title="">2024</a>)</cite>
</th>
<th class="ltx_td ltx_align_right ltx_th ltx_th_row ltx_border_t" id="S3.T1.22.18.25.7.2" style="padding-left:3.0pt;padding-right:3.0pt;">-</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.22.18.25.7.3" style="padding-left:3.0pt;padding-right:3.0pt;">39.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.22.18.25.7.4" style="padding-left:3.0pt;padding-right:3.0pt;">19.7</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.22.18.25.7.5" style="padding-left:3.0pt;padding-right:3.0pt;">64.4</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.22.18.25.7.6" style="padding-left:3.0pt;padding-right:3.0pt;">-</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.22.18.25.7.7" style="padding-left:3.0pt;padding-right:3.0pt;">-</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.22.18.25.7.8" style="padding-left:3.0pt;padding-right:3.0pt;">-</td>
</tr>
<tr class="ltx_tr" id="S3.T1.22.18.26.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T1.22.18.26.8.1" style="padding-left:3.0pt;padding-right:3.0pt;">InternVL-2.5-78B-Instruct <cite class="ltx_cite ltx_citemacro_citep">(Chen et al., <a class="ltx_ref" href="https://arxiv.org/html/2504.13055v1#bib.bib8" title="">2024</a>)</cite>
</th>
<th class="ltx_td ltx_align_right ltx_th ltx_th_row" id="S3.T1.22.18.26.8.2" style="padding-left:3.0pt;padding-right:3.0pt;">-</th>
<td class="ltx_td ltx_align_center" id="S3.T1.22.18.26.8.3" style="padding-left:3.0pt;padding-right:3.0pt;">51.7</td>
<td class="ltx_td ltx_align_center" id="S3.T1.22.18.26.8.4" style="padding-left:3.0pt;padding-right:3.0pt;">32.2</td>
<td class="ltx_td ltx_align_center" id="S3.T1.22.18.26.8.5" style="padding-left:3.0pt;padding-right:3.0pt;">72.3</td>
<td class="ltx_td ltx_align_center" id="S3.T1.22.18.26.8.6" style="padding-left:3.0pt;padding-right:3.0pt;">-</td>
<td class="ltx_td ltx_align_center" id="S3.T1.22.18.26.8.7" style="padding-left:3.0pt;padding-right:3.0pt;">-</td>
<td class="ltx_td ltx_align_center" id="S3.T1.22.18.26.8.8" style="padding-left:3.0pt;padding-right:3.0pt;">-</td>
</tr>
<tr class="ltx_tr" id="S3.T1.22.18.27.9">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T1.22.18.27.9.1" style="padding-left:3.0pt;padding-right:3.0pt;">QVQ-72B-Preview <cite class="ltx_cite ltx_citemacro_citep">(Qwen, <a class="ltx_ref" href="https://arxiv.org/html/2504.13055v1#bib.bib40" title="">2024</a>)</cite>
</th>
<th class="ltx_td ltx_align_right ltx_th ltx_th_row" id="S3.T1.22.18.27.9.2" style="padding-left:3.0pt;padding-right:3.0pt;">-</th>
<td class="ltx_td ltx_align_center" id="S3.T1.22.18.27.9.3" style="padding-left:3.0pt;padding-right:3.0pt;">-</td>
<td class="ltx_td ltx_align_center" id="S3.T1.22.18.27.9.4" style="padding-left:3.0pt;padding-right:3.0pt;">35.9</td>
<td class="ltx_td ltx_align_center" id="S3.T1.22.18.27.9.5" style="padding-left:3.0pt;padding-right:3.0pt;">71.4</td>
<td class="ltx_td ltx_align_center" id="S3.T1.22.18.27.9.6" style="padding-left:3.0pt;padding-right:3.0pt;">-</td>
<td class="ltx_td ltx_align_center" id="S3.T1.22.18.27.9.7" style="padding-left:3.0pt;padding-right:3.0pt;">-</td>
<td class="ltx_td ltx_align_center" id="S3.T1.22.18.27.9.8" style="padding-left:3.0pt;padding-right:3.0pt;">-</td>
</tr>
<tr class="ltx_tr" id="S3.T1.22.18.28.10">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T1.22.18.28.10.1" style="padding-left:3.0pt;padding-right:3.0pt;">Qwen2.5-VL-72B-Instruct <cite class="ltx_cite ltx_citemacro_citep">(Bai et al., <a class="ltx_ref" href="https://arxiv.org/html/2504.13055v1#bib.bib4" title="">2025</a>)</cite>
</th>
<th class="ltx_td ltx_align_right ltx_th ltx_th_row" id="S3.T1.22.18.28.10.2" style="padding-left:3.0pt;padding-right:3.0pt;">-</th>
<td class="ltx_td ltx_align_center" id="S3.T1.22.18.28.10.3" style="padding-left:3.0pt;padding-right:3.0pt;">-</td>
<td class="ltx_td ltx_align_center" id="S3.T1.22.18.28.10.4" style="padding-left:3.0pt;padding-right:3.0pt;">38.1</td>
<td class="ltx_td ltx_align_center" id="S3.T1.22.18.28.10.5" style="padding-left:3.0pt;padding-right:3.0pt;">74.8</td>
<td class="ltx_td ltx_align_center" id="S3.T1.22.18.28.10.6" style="padding-left:3.0pt;padding-right:3.0pt;">-</td>
<td class="ltx_td ltx_align_center" id="S3.T1.22.18.28.10.7" style="padding-left:3.0pt;padding-right:3.0pt;">-</td>
<td class="ltx_td ltx_align_center" id="S3.T1.22.18.28.10.8" style="padding-left:3.0pt;padding-right:3.0pt;">-</td>
</tr>
<tr class="ltx_tr" id="S3.T1.22.18.29.11">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T1.22.18.29.11.1" style="padding-left:3.0pt;padding-right:3.0pt;">URSA-8B <cite class="ltx_cite ltx_citemacro_citep">(Luo et al., <a class="ltx_ref" href="https://arxiv.org/html/2504.13055v1#bib.bib34" title="">2025</a>)</cite>
</th>
<th class="ltx_td ltx_align_right ltx_th ltx_th_row" id="S3.T1.22.18.29.11.2" style="padding-left:3.0pt;padding-right:3.0pt;">-</th>
<td class="ltx_td ltx_align_center" id="S3.T1.22.18.29.11.3" style="padding-left:3.0pt;padding-right:3.0pt;">45.7</td>
<td class="ltx_td ltx_align_center" id="S3.T1.22.18.29.11.4" style="padding-left:3.0pt;padding-right:3.0pt;">26.2</td>
<td class="ltx_td ltx_align_center" id="S3.T1.22.18.29.11.5" style="padding-left:3.0pt;padding-right:3.0pt;">59.8</td>
<td class="ltx_td ltx_align_center" id="S3.T1.22.18.29.11.6" style="padding-left:3.0pt;padding-right:3.0pt;">-</td>
<td class="ltx_td ltx_align_center" id="S3.T1.22.18.29.11.7" style="padding-left:3.0pt;padding-right:3.0pt;">-</td>
<td class="ltx_td ltx_align_center" id="S3.T1.22.18.29.11.8" style="padding-left:3.0pt;padding-right:3.0pt;">-</td>
</tr>
<tr class="ltx_tr" id="S3.T1.22.18.30.12">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T1.22.18.30.12.1" style="padding-left:3.0pt;padding-right:3.0pt;">Mulberry-7B <cite class="ltx_cite ltx_citemacro_citep">(Yao et al., <a class="ltx_ref" href="https://arxiv.org/html/2504.13055v1#bib.bib54" title="">2024</a>)</cite>
</th>
<th class="ltx_td ltx_align_right ltx_th ltx_th_row" id="S3.T1.22.18.30.12.2" style="padding-left:3.0pt;padding-right:3.0pt;">-</th>
<td class="ltx_td ltx_align_center" id="S3.T1.22.18.30.12.3" style="padding-left:3.0pt;padding-right:3.0pt;">-</td>
<td class="ltx_td ltx_align_center" id="S3.T1.22.18.30.12.4" style="padding-left:3.0pt;padding-right:3.0pt;">-</td>
<td class="ltx_td ltx_align_center" id="S3.T1.22.18.30.12.5" style="padding-left:3.0pt;padding-right:3.0pt;">63.1</td>
<td class="ltx_td ltx_align_center" id="S3.T1.22.18.30.12.6" style="padding-left:3.0pt;padding-right:3.0pt;">-</td>
<td class="ltx_td ltx_align_center" id="S3.T1.22.18.30.12.7" style="padding-left:3.0pt;padding-right:3.0pt;">-</td>
<td class="ltx_td ltx_align_center" id="S3.T1.22.18.30.12.8" style="padding-left:3.0pt;padding-right:3.0pt;">-</td>
</tr>
<tr class="ltx_tr" id="S3.T1.22.18.31.13">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" colspan="8" id="S3.T1.22.18.31.13.1" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_italic" id="S3.T1.22.18.31.13.1.1">R1-related (GRPO-tuned with rule-based reward)</span></th>
</tr>
<tr class="ltx_tr" id="S3.T1.22.18.32.14">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S3.T1.22.18.32.14.1" style="padding-left:3.0pt;padding-right:3.0pt;">R1-VL-7B <cite class="ltx_cite ltx_citemacro_citep">(Zhang et al., <a class="ltx_ref" href="https://arxiv.org/html/2504.13055v1#bib.bib58" title="">2025a</a>)</cite>
</th>
<th class="ltx_td ltx_align_right ltx_th ltx_th_row ltx_border_t" id="S3.T1.22.18.32.14.2" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_text" id="S3.T1.22.18.32.14.2.1" style="color:#D9541A;">260K</span>+<span class="ltx_text" id="S3.T1.22.18.32.14.2.2" style="color:#0073BD;">10K</span>
</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.22.18.32.14.3" style="padding-left:3.0pt;padding-right:3.0pt;">40.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.22.18.32.14.4" style="padding-left:3.0pt;padding-right:3.0pt;">24.7</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.22.18.32.14.5" style="padding-left:3.0pt;padding-right:3.0pt;">63.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.22.18.32.14.6" style="padding-left:3.0pt;padding-right:3.0pt;">-</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.22.18.32.14.7" style="padding-left:3.0pt;padding-right:3.0pt;">-</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.22.18.32.14.8" style="padding-left:3.0pt;padding-right:3.0pt;">-</td>
</tr>
<tr class="ltx_tr" id="S3.T1.22.18.33.15">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T1.22.18.33.15.1" style="padding-left:3.0pt;padding-right:3.0pt;">Vision-R1-7B <cite class="ltx_cite ltx_citemacro_citep">(Huang et al., <a class="ltx_ref" href="https://arxiv.org/html/2504.13055v1#bib.bib16" title="">2025</a>)</cite>
</th>
<th class="ltx_td ltx_align_right ltx_th ltx_th_row" id="S3.T1.22.18.33.15.2" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_text" id="S3.T1.22.18.33.15.2.1" style="color:#D9541A;">200K</span>+<span class="ltx_text" id="S3.T1.22.18.33.15.2.2" style="color:#0073BD;">10K</span>
</th>
<td class="ltx_td ltx_align_center" id="S3.T1.22.18.33.15.3" style="padding-left:3.0pt;padding-right:3.0pt;">52.4</td>
<td class="ltx_td ltx_align_center" id="S3.T1.22.18.33.15.4" style="padding-left:3.0pt;padding-right:3.0pt;">-</td>
<td class="ltx_td ltx_align_center" id="S3.T1.22.18.33.15.5" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.22.18.33.15.5.1">73.5</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.22.18.33.15.6" style="padding-left:3.0pt;padding-right:3.0pt;">-</td>
<td class="ltx_td ltx_align_center" id="S3.T1.22.18.33.15.7" style="padding-left:3.0pt;padding-right:3.0pt;">-</td>
<td class="ltx_td ltx_align_center" id="S3.T1.22.18.33.15.8" style="padding-left:3.0pt;padding-right:3.0pt;">-</td>
</tr>
<tr class="ltx_tr" id="S3.T1.5.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T1.5.1.1.1" style="padding-left:3.0pt;padding-right:3.0pt;">R1-OneVision-7B<sup class="ltx_sup" id="S3.T1.5.1.1.1.1"><math alttext="\star" class="ltx_Math" display="inline" id="S3.T1.5.1.1.1.1.m1.1"><semantics id="S3.T1.5.1.1.1.1.m1.1a"><mo id="S3.T1.5.1.1.1.1.m1.1.1" xref="S3.T1.5.1.1.1.1.m1.1.1.cmml">⋆</mo><annotation-xml encoding="MathML-Content" id="S3.T1.5.1.1.1.1.m1.1b"><ci id="S3.T1.5.1.1.1.1.m1.1.1.cmml" xref="S3.T1.5.1.1.1.1.m1.1.1">⋆</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.5.1.1.1.1.m1.1c">\star</annotation><annotation encoding="application/x-llamapun" id="S3.T1.5.1.1.1.1.m1.1d">⋆</annotation></semantics></math></sup> <cite class="ltx_cite ltx_citemacro_citep">(Yang et al., <a class="ltx_ref" href="https://arxiv.org/html/2504.13055v1#bib.bib53" title="">2025</a>)</cite>
</th>
<th class="ltx_td ltx_align_right ltx_th ltx_th_row" id="S3.T1.5.1.1.2" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_text" id="S3.T1.5.1.1.2.1" style="color:#D9541A;">155K</span>+<span class="ltx_text" id="S3.T1.5.1.1.2.2" style="color:#0073BD;">10K</span>
</th>
<td class="ltx_td ltx_align_center" id="S3.T1.5.1.1.3" style="padding-left:3.0pt;padding-right:3.0pt;">46.1</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.1.1.4" style="padding-left:3.0pt;padding-right:3.0pt;">22.5</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.1.1.5" style="padding-left:3.0pt;padding-right:3.0pt;">63.9</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.1.1.6" style="padding-left:3.0pt;padding-right:3.0pt;">62.1</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.1.1.7" style="padding-left:3.0pt;padding-right:3.0pt;">65.6</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.1.1.8" style="padding-left:3.0pt;padding-right:3.0pt;">52.0</td>
</tr>
<tr class="ltx_tr" id="S3.T1.6.2.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T1.6.2.2.1" style="padding-left:3.0pt;padding-right:3.0pt;">OpenVLThinker-7B<sup class="ltx_sup" id="S3.T1.6.2.2.1.1"><math alttext="\star" class="ltx_Math" display="inline" id="S3.T1.6.2.2.1.1.m1.1"><semantics id="S3.T1.6.2.2.1.1.m1.1a"><mo id="S3.T1.6.2.2.1.1.m1.1.1" xref="S3.T1.6.2.2.1.1.m1.1.1.cmml">⋆</mo><annotation-xml encoding="MathML-Content" id="S3.T1.6.2.2.1.1.m1.1b"><ci id="S3.T1.6.2.2.1.1.m1.1.1.cmml" xref="S3.T1.6.2.2.1.1.m1.1.1">⋆</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.6.2.2.1.1.m1.1c">\star</annotation><annotation encoding="application/x-llamapun" id="S3.T1.6.2.2.1.1.m1.1d">⋆</annotation></semantics></math></sup> <cite class="ltx_cite ltx_citemacro_citep">(Deng et al., <a class="ltx_ref" href="https://arxiv.org/html/2504.13055v1#bib.bib10" title="">2025</a>)</cite>
</th>
<th class="ltx_td ltx_align_right ltx_th ltx_th_row" id="S3.T1.6.2.2.2" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_text" id="S3.T1.6.2.2.2.1" style="color:#D9541A;">35K</span>+<span class="ltx_text" id="S3.T1.6.2.2.2.2" style="color:#0073BD;">15K</span>
</th>
<td class="ltx_td ltx_align_center" id="S3.T1.6.2.2.3" style="padding-left:3.0pt;padding-right:3.0pt;">48.0</td>
<td class="ltx_td ltx_align_center" id="S3.T1.6.2.2.4" style="padding-left:3.0pt;padding-right:3.0pt;">25.0</td>
<td class="ltx_td ltx_align_center" id="S3.T1.6.2.2.5" style="padding-left:3.0pt;padding-right:3.0pt;">71.5</td>
<td class="ltx_td ltx_align_center" id="S3.T1.6.2.2.6" style="padding-left:3.0pt;padding-right:3.0pt;">67.8</td>
<td class="ltx_td ltx_align_center" id="S3.T1.6.2.2.7" style="padding-left:3.0pt;padding-right:3.0pt;">70.8</td>
<td class="ltx_td ltx_align_center" id="S3.T1.6.2.2.8" style="padding-left:3.0pt;padding-right:3.0pt;">56.5</td>
</tr>
<tr class="ltx_tr" id="S3.T1.7.3.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T1.7.3.3.1" style="padding-left:3.0pt;padding-right:3.0pt;">MM-Eureka-Qwen-7B<sup class="ltx_sup" id="S3.T1.7.3.3.1.1"><math alttext="\star" class="ltx_Math" display="inline" id="S3.T1.7.3.3.1.1.m1.1"><semantics id="S3.T1.7.3.3.1.1.m1.1a"><mo id="S3.T1.7.3.3.1.1.m1.1.1" xref="S3.T1.7.3.3.1.1.m1.1.1.cmml">⋆</mo><annotation-xml encoding="MathML-Content" id="S3.T1.7.3.3.1.1.m1.1b"><ci id="S3.T1.7.3.3.1.1.m1.1.1.cmml" xref="S3.T1.7.3.3.1.1.m1.1.1">⋆</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.7.3.3.1.1.m1.1c">\star</annotation><annotation encoding="application/x-llamapun" id="S3.T1.7.3.3.1.1.m1.1d">⋆</annotation></semantics></math></sup> <cite class="ltx_cite ltx_citemacro_citep">(Meng et al., <a class="ltx_ref" href="https://arxiv.org/html/2504.13055v1#bib.bib36" title="">2025</a>)</cite>
</th>
<th class="ltx_td ltx_align_right ltx_th ltx_th_row" id="S3.T1.7.3.3.2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T1.7.3.3.2.1" style="color:#0073BD;">15K</span></th>
<td class="ltx_td ltx_align_center" id="S3.T1.7.3.3.3" style="padding-left:3.0pt;padding-right:3.0pt;">50.5</td>
<td class="ltx_td ltx_align_center" id="S3.T1.7.3.3.4" style="padding-left:3.0pt;padding-right:3.0pt;">28.3</td>
<td class="ltx_td ltx_align_center" id="S3.T1.7.3.3.5" style="padding-left:3.0pt;padding-right:3.0pt;">71.5</td>
<td class="ltx_td ltx_align_center" id="S3.T1.7.3.3.6" style="padding-left:3.0pt;padding-right:3.0pt;">65.5</td>
<td class="ltx_td ltx_align_center" id="S3.T1.7.3.3.7" style="padding-left:3.0pt;padding-right:3.0pt;">68.3</td>
<td class="ltx_td ltx_align_center" id="S3.T1.7.3.3.8" style="padding-left:3.0pt;padding-right:3.0pt;">56.8</td>
</tr>
<tr class="ltx_tr" id="S3.T1.8.4.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T1.8.4.4.1" style="padding-left:3.0pt;padding-right:3.0pt;">ADORA-7B<sup class="ltx_sup" id="S3.T1.8.4.4.1.1"><math alttext="\star" class="ltx_Math" display="inline" id="S3.T1.8.4.4.1.1.m1.1"><semantics id="S3.T1.8.4.4.1.1.m1.1a"><mo id="S3.T1.8.4.4.1.1.m1.1.1" xref="S3.T1.8.4.4.1.1.m1.1.1.cmml">⋆</mo><annotation-xml encoding="MathML-Content" id="S3.T1.8.4.4.1.1.m1.1b"><ci id="S3.T1.8.4.4.1.1.m1.1.1.cmml" xref="S3.T1.8.4.4.1.1.m1.1.1">⋆</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.8.4.4.1.1.m1.1c">\star</annotation><annotation encoding="application/x-llamapun" id="S3.T1.8.4.4.1.1.m1.1d">⋆</annotation></semantics></math></sup> <cite class="ltx_cite ltx_citemacro_citep">(Gui &amp; Ren, <a class="ltx_ref" href="https://arxiv.org/html/2504.13055v1#bib.bib14" title="">2025</a>)</cite>
</th>
<th class="ltx_td ltx_align_right ltx_th ltx_th_row" id="S3.T1.8.4.4.2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T1.8.4.4.2.1" style="color:#0073BD;">2.1K</span></th>
<td class="ltx_td ltx_align_center" id="S3.T1.8.4.4.3" style="padding-left:3.0pt;padding-right:3.0pt;">50.1</td>
<td class="ltx_td ltx_align_center" id="S3.T1.8.4.4.4" style="padding-left:3.0pt;padding-right:3.0pt;">27.6</td>
<td class="ltx_td ltx_align_center" id="S3.T1.8.4.4.5" style="padding-left:3.0pt;padding-right:3.0pt;">71.1</td>
<td class="ltx_td ltx_align_center" id="S3.T1.8.4.4.6" style="padding-left:3.0pt;padding-right:3.0pt;">67.1</td>
<td class="ltx_td ltx_align_center" id="S3.T1.8.4.4.7" style="padding-left:3.0pt;padding-right:3.0pt;">53.1</td>
<td class="ltx_td ltx_align_center" id="S3.T1.8.4.4.8" style="padding-left:3.0pt;padding-right:3.0pt;">53.8</td>
</tr>
<tr class="ltx_tr" id="S3.T1.9.5.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T1.9.5.5.1" style="padding-left:3.0pt;padding-right:3.0pt;">ThinkLite-7B-VL<sup class="ltx_sup" id="S3.T1.9.5.5.1.1"><math alttext="\star" class="ltx_Math" display="inline" id="S3.T1.9.5.5.1.1.m1.1"><semantics id="S3.T1.9.5.5.1.1.m1.1a"><mo id="S3.T1.9.5.5.1.1.m1.1.1" xref="S3.T1.9.5.5.1.1.m1.1.1.cmml">⋆</mo><annotation-xml encoding="MathML-Content" id="S3.T1.9.5.5.1.1.m1.1b"><ci id="S3.T1.9.5.5.1.1.m1.1.1.cmml" xref="S3.T1.9.5.5.1.1.m1.1.1">⋆</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.9.5.5.1.1.m1.1c">\star</annotation><annotation encoding="application/x-llamapun" id="S3.T1.9.5.5.1.1.m1.1d">⋆</annotation></semantics></math></sup> <cite class="ltx_cite ltx_citemacro_citep">(Wang et al., <a class="ltx_ref" href="https://arxiv.org/html/2504.13055v1#bib.bib48" title="">2025b</a>)</cite>
</th>
<th class="ltx_td ltx_align_right ltx_th ltx_th_row" id="S3.T1.9.5.5.2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T1.9.5.5.2.1" style="color:#0073BD;">11K</span></th>
<td class="ltx_td ltx_align_center" id="S3.T1.9.5.5.3" style="padding-left:3.0pt;padding-right:3.0pt;">50.2</td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.5.5.4" style="padding-left:3.0pt;padding-right:3.0pt;">27.6</td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.5.5.5" style="padding-left:3.0pt;padding-right:3.0pt;">72.7</td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.5.5.6" style="padding-left:3.0pt;padding-right:3.0pt;">69.2</td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.5.5.7" style="padding-left:3.0pt;padding-right:3.0pt;">71.0</td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.5.5.8" style="padding-left:3.0pt;padding-right:3.0pt;">58.1</td>
</tr>
<tr class="ltx_tr" id="S3.T1.10.6.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T1.10.6.6.1" style="padding-left:3.0pt;padding-right:3.0pt;">VLAA-Thinker-Qwen2.5-7B<sup class="ltx_sup" id="S3.T1.10.6.6.1.1"><math alttext="\star" class="ltx_Math" display="inline" id="S3.T1.10.6.6.1.1.m1.1"><semantics id="S3.T1.10.6.6.1.1.m1.1a"><mo id="S3.T1.10.6.6.1.1.m1.1.1" xref="S3.T1.10.6.6.1.1.m1.1.1.cmml">⋆</mo><annotation-xml encoding="MathML-Content" id="S3.T1.10.6.6.1.1.m1.1b"><ci id="S3.T1.10.6.6.1.1.m1.1.1.cmml" xref="S3.T1.10.6.6.1.1.m1.1.1">⋆</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.10.6.6.1.1.m1.1c">\star</annotation><annotation encoding="application/x-llamapun" id="S3.T1.10.6.6.1.1.m1.1d">⋆</annotation></semantics></math></sup> <cite class="ltx_cite ltx_citemacro_citep">(Chen et al., <a class="ltx_ref" href="https://arxiv.org/html/2504.13055v1#bib.bib5" title="">2025a</a>)</cite>
</th>
<th class="ltx_td ltx_align_right ltx_th ltx_th_row" id="S3.T1.10.6.6.2" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_text" id="S3.T1.10.6.6.2.1" style="color:#D9541A;">126K</span>+<span class="ltx_text" id="S3.T1.10.6.6.2.2" style="color:#0073BD;">25K</span>
</th>
<td class="ltx_td ltx_align_center" id="S3.T1.10.6.6.3" style="padding-left:3.0pt;padding-right:3.0pt;">49.9</td>
<td class="ltx_td ltx_align_center" id="S3.T1.10.6.6.4" style="padding-left:3.0pt;padding-right:3.0pt;">26.9</td>
<td class="ltx_td ltx_align_center" id="S3.T1.10.6.6.5" style="padding-left:3.0pt;padding-right:3.0pt;">68.8</td>
<td class="ltx_td ltx_align_center" id="S3.T1.10.6.6.6" style="padding-left:3.0pt;padding-right:3.0pt;">67.9</td>
<td class="ltx_td ltx_align_center" id="S3.T1.10.6.6.7" style="padding-left:3.0pt;padding-right:3.0pt;">68.6</td>
<td class="ltx_td ltx_align_center" id="S3.T1.10.6.6.8" style="padding-left:3.0pt;padding-right:3.0pt;">56.4</td>
</tr>
<tr class="ltx_tr" id="S3.T1.12.8.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S3.T1.11.7.7.1" style="padding-left:3.0pt;padding-right:3.0pt;">Qwen2.5-VL-7B-Instruct<sup class="ltx_sup" id="S3.T1.11.7.7.1.1"><math alttext="\star" class="ltx_Math" display="inline" id="S3.T1.11.7.7.1.1.m1.1"><semantics id="S3.T1.11.7.7.1.1.m1.1a"><mo id="S3.T1.11.7.7.1.1.m1.1.1" xref="S3.T1.11.7.7.1.1.m1.1.1.cmml">⋆</mo><annotation-xml encoding="MathML-Content" id="S3.T1.11.7.7.1.1.m1.1b"><ci id="S3.T1.11.7.7.1.1.m1.1.1.cmml" xref="S3.T1.11.7.7.1.1.m1.1.1">⋆</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.11.7.7.1.1.m1.1c">\star</annotation><annotation encoding="application/x-llamapun" id="S3.T1.11.7.7.1.1.m1.1d">⋆</annotation></semantics></math></sup> <cite class="ltx_cite ltx_citemacro_citep">(Bai et al., <a class="ltx_ref" href="https://arxiv.org/html/2504.13055v1#bib.bib4" title="">2025</a>)</cite>
</th>
<th class="ltx_td ltx_align_right ltx_th ltx_th_row ltx_border_t" id="S3.T1.12.8.8.3" style="padding-left:3.0pt;padding-right:3.0pt;">-</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.12.8.8.4" style="padding-left:3.0pt;padding-right:3.0pt;">46.2</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.12.8.8.5" style="padding-left:3.0pt;padding-right:3.0pt;">25.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.12.8.8.6" style="padding-left:3.0pt;padding-right:3.0pt;">67.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.12.8.8.7" style="padding-left:3.0pt;padding-right:3.0pt;">63.1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.12.8.8.2" style="padding-left:3.0pt;padding-right:3.0pt;">64.6 (<span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T1.12.8.8.2.2">71.2</span><sup class="ltx_sup" id="S3.T1.12.8.8.2.1"><math alttext="\dagger" class="ltx_Math" display="inline" id="S3.T1.12.8.8.2.1.m1.1"><semantics id="S3.T1.12.8.8.2.1.m1.1a"><mo id="S3.T1.12.8.8.2.1.m1.1.1" xref="S3.T1.12.8.8.2.1.m1.1.1.cmml">†</mo><annotation-xml encoding="MathML-Content" id="S3.T1.12.8.8.2.1.m1.1b"><ci id="S3.T1.12.8.8.2.1.m1.1.1.cmml" xref="S3.T1.12.8.8.2.1.m1.1.1">†</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.12.8.8.2.1.m1.1c">\dagger</annotation><annotation encoding="application/x-llamapun" id="S3.T1.12.8.8.2.1.m1.1d">†</annotation></semantics></math></sup>)</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.12.8.8.8" style="padding-left:3.0pt;padding-right:3.0pt;">53.3</td>
</tr>
<tr class="ltx_tr" id="S3.T1.14.10.10">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T1.14.10.10.2" style="padding-left:3.0pt;padding-right:3.0pt;">+ Vanilla GRPO<sup class="ltx_sup" id="S3.T1.13.9.9.1.1"><math alttext="\star" class="ltx_Math" display="inline" id="S3.T1.13.9.9.1.1.m1.1"><semantics id="S3.T1.13.9.9.1.1.m1.1a"><mo id="S3.T1.13.9.9.1.1.m1.1.1" xref="S3.T1.13.9.9.1.1.m1.1.1.cmml">⋆</mo><annotation-xml encoding="MathML-Content" id="S3.T1.13.9.9.1.1.m1.1b"><ci id="S3.T1.13.9.9.1.1.m1.1.1.cmml" xref="S3.T1.13.9.9.1.1.m1.1.1">⋆</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.13.9.9.1.1.m1.1c">\star</annotation><annotation encoding="application/x-llamapun" id="S3.T1.13.9.9.1.1.m1.1d">⋆</annotation></semantics></math></sup> (<math alttext="n" class="ltx_Math" display="inline" id="S3.T1.14.10.10.2.m1.1"><semantics id="S3.T1.14.10.10.2.m1.1a"><mi id="S3.T1.14.10.10.2.m1.1.1" xref="S3.T1.14.10.10.2.m1.1.1.cmml">n</mi><annotation-xml encoding="MathML-Content" id="S3.T1.14.10.10.2.m1.1b"><ci id="S3.T1.14.10.10.2.m1.1.1.cmml" xref="S3.T1.14.10.10.2.m1.1.1">𝑛</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.14.10.10.2.m1.1c">n</annotation><annotation encoding="application/x-llamapun" id="S3.T1.14.10.10.2.m1.1d">italic_n</annotation></semantics></math>=12)</th>
<th class="ltx_td ltx_align_right ltx_th ltx_th_row" id="S3.T1.14.10.10.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T1.14.10.10.3.1" style="color:#0073BD;">Geo3K (2.1K)</span></th>
<td class="ltx_td ltx_align_center" id="S3.T1.14.10.10.4" style="padding-left:3.0pt;padding-right:3.0pt;">50.8</td>
<td class="ltx_td ltx_align_center" id="S3.T1.14.10.10.5" style="padding-left:3.0pt;padding-right:3.0pt;">27.3</td>
<td class="ltx_td ltx_align_center" id="S3.T1.14.10.10.6" style="padding-left:3.0pt;padding-right:3.0pt;">70.5</td>
<td class="ltx_td ltx_align_center" id="S3.T1.14.10.10.7" style="padding-left:3.0pt;padding-right:3.0pt;">67.4</td>
<td class="ltx_td ltx_align_center" id="S3.T1.14.10.10.8" style="padding-left:3.0pt;padding-right:3.0pt;">69.8</td>
<td class="ltx_td ltx_align_center" id="S3.T1.14.10.10.9" style="padding-left:3.0pt;padding-right:3.0pt;">57.2</td>
</tr>
<tr class="ltx_tr" id="S3.T1.17.13.13">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T1.17.13.13.3" style="padding-left:3.0pt;padding-right:3.0pt;">+ NoisyRollout<sup class="ltx_sup" id="S3.T1.15.11.11.1.1"><math alttext="\star" class="ltx_Math" display="inline" id="S3.T1.15.11.11.1.1.m1.1"><semantics id="S3.T1.15.11.11.1.1.m1.1a"><mo id="S3.T1.15.11.11.1.1.m1.1.1" xref="S3.T1.15.11.11.1.1.m1.1.1.cmml">⋆</mo><annotation-xml encoding="MathML-Content" id="S3.T1.15.11.11.1.1.m1.1b"><ci id="S3.T1.15.11.11.1.1.m1.1.1.cmml" xref="S3.T1.15.11.11.1.1.m1.1.1">⋆</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.15.11.11.1.1.m1.1c">\star</annotation><annotation encoding="application/x-llamapun" id="S3.T1.15.11.11.1.1.m1.1d">⋆</annotation></semantics></math></sup> (<math alttext="n_{1}" class="ltx_Math" display="inline" id="S3.T1.16.12.12.2.m1.1"><semantics id="S3.T1.16.12.12.2.m1.1a"><msub id="S3.T1.16.12.12.2.m1.1.1" xref="S3.T1.16.12.12.2.m1.1.1.cmml"><mi id="S3.T1.16.12.12.2.m1.1.1.2" xref="S3.T1.16.12.12.2.m1.1.1.2.cmml">n</mi><mn id="S3.T1.16.12.12.2.m1.1.1.3" xref="S3.T1.16.12.12.2.m1.1.1.3.cmml">1</mn></msub><annotation-xml encoding="MathML-Content" id="S3.T1.16.12.12.2.m1.1b"><apply id="S3.T1.16.12.12.2.m1.1.1.cmml" xref="S3.T1.16.12.12.2.m1.1.1"><csymbol cd="ambiguous" id="S3.T1.16.12.12.2.m1.1.1.1.cmml" xref="S3.T1.16.12.12.2.m1.1.1">subscript</csymbol><ci id="S3.T1.16.12.12.2.m1.1.1.2.cmml" xref="S3.T1.16.12.12.2.m1.1.1.2">𝑛</ci><cn id="S3.T1.16.12.12.2.m1.1.1.3.cmml" type="integer" xref="S3.T1.16.12.12.2.m1.1.1.3">1</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.16.12.12.2.m1.1c">n_{1}</annotation><annotation encoding="application/x-llamapun" id="S3.T1.16.12.12.2.m1.1d">italic_n start_POSTSUBSCRIPT 1 end_POSTSUBSCRIPT</annotation></semantics></math>=6, <math alttext="n_{2}" class="ltx_Math" display="inline" id="S3.T1.17.13.13.3.m2.1"><semantics id="S3.T1.17.13.13.3.m2.1a"><msub id="S3.T1.17.13.13.3.m2.1.1" xref="S3.T1.17.13.13.3.m2.1.1.cmml"><mi id="S3.T1.17.13.13.3.m2.1.1.2" xref="S3.T1.17.13.13.3.m2.1.1.2.cmml">n</mi><mn id="S3.T1.17.13.13.3.m2.1.1.3" xref="S3.T1.17.13.13.3.m2.1.1.3.cmml">2</mn></msub><annotation-xml encoding="MathML-Content" id="S3.T1.17.13.13.3.m2.1b"><apply id="S3.T1.17.13.13.3.m2.1.1.cmml" xref="S3.T1.17.13.13.3.m2.1.1"><csymbol cd="ambiguous" id="S3.T1.17.13.13.3.m2.1.1.1.cmml" xref="S3.T1.17.13.13.3.m2.1.1">subscript</csymbol><ci id="S3.T1.17.13.13.3.m2.1.1.2.cmml" xref="S3.T1.17.13.13.3.m2.1.1.2">𝑛</ci><cn id="S3.T1.17.13.13.3.m2.1.1.3.cmml" type="integer" xref="S3.T1.17.13.13.3.m2.1.1.3">2</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.17.13.13.3.m2.1c">n_{2}</annotation><annotation encoding="application/x-llamapun" id="S3.T1.17.13.13.3.m2.1d">italic_n start_POSTSUBSCRIPT 2 end_POSTSUBSCRIPT</annotation></semantics></math>=6)</th>
<th class="ltx_td ltx_align_right ltx_th ltx_th_row" id="S3.T1.17.13.13.4" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T1.17.13.13.4.1" style="color:#0073BD;">Geo3K (2.1K)</span></th>
<td class="ltx_td ltx_align_center" id="S3.T1.17.13.13.5" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.17.13.13.5.1">53.2</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.17.13.13.6" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T1.17.13.13.6.1">28.5</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.17.13.13.7" style="padding-left:3.0pt;padding-right:3.0pt;">72.6</td>
<td class="ltx_td ltx_align_center" id="S3.T1.17.13.13.8" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T1.17.13.13.8.1">69.6</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.17.13.13.9" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.17.13.13.9.1">72.1</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.17.13.13.10" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T1.17.13.13.10.1">59.2</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.19.15.15">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T1.19.15.15.2" style="padding-left:3.0pt;padding-right:3.0pt;">+ Vanilla GRPO<sup class="ltx_sup" id="S3.T1.18.14.14.1.1"><math alttext="\star" class="ltx_Math" display="inline" id="S3.T1.18.14.14.1.1.m1.1"><semantics id="S3.T1.18.14.14.1.1.m1.1a"><mo id="S3.T1.18.14.14.1.1.m1.1.1" xref="S3.T1.18.14.14.1.1.m1.1.1.cmml">⋆</mo><annotation-xml encoding="MathML-Content" id="S3.T1.18.14.14.1.1.m1.1b"><ci id="S3.T1.18.14.14.1.1.m1.1.1.cmml" xref="S3.T1.18.14.14.1.1.m1.1.1">⋆</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.18.14.14.1.1.m1.1c">\star</annotation><annotation encoding="application/x-llamapun" id="S3.T1.18.14.14.1.1.m1.1d">⋆</annotation></semantics></math></sup> (<math alttext="n" class="ltx_Math" display="inline" id="S3.T1.19.15.15.2.m1.1"><semantics id="S3.T1.19.15.15.2.m1.1a"><mi id="S3.T1.19.15.15.2.m1.1.1" xref="S3.T1.19.15.15.2.m1.1.1.cmml">n</mi><annotation-xml encoding="MathML-Content" id="S3.T1.19.15.15.2.m1.1b"><ci id="S3.T1.19.15.15.2.m1.1.1.cmml" xref="S3.T1.19.15.15.2.m1.1.1">𝑛</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.19.15.15.2.m1.1c">n</annotation><annotation encoding="application/x-llamapun" id="S3.T1.19.15.15.2.m1.1d">italic_n</annotation></semantics></math>=12)</th>
<th class="ltx_td ltx_align_right ltx_th ltx_th_row" id="S3.T1.19.15.15.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T1.19.15.15.3.1" style="color:#0073BD;">K12 (2.1K)</span></th>
<td class="ltx_td ltx_align_center" id="S3.T1.19.15.15.4" style="padding-left:3.0pt;padding-right:3.0pt;">50.7</td>
<td class="ltx_td ltx_align_center" id="S3.T1.19.15.15.5" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T1.19.15.15.5.1">28.5</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.19.15.15.6" style="padding-left:3.0pt;padding-right:3.0pt;">71.7</td>
<td class="ltx_td ltx_align_center" id="S3.T1.19.15.15.7" style="padding-left:3.0pt;padding-right:3.0pt;">68.6</td>
<td class="ltx_td ltx_align_center" id="S3.T1.19.15.15.8" style="padding-left:3.0pt;padding-right:3.0pt;">69.8</td>
<td class="ltx_td ltx_align_center" id="S3.T1.19.15.15.9" style="padding-left:3.0pt;padding-right:3.0pt;">57.9</td>
</tr>
<tr class="ltx_tr" id="S3.T1.22.18.18">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S3.T1.22.18.18.3" style="padding-left:3.0pt;padding-right:3.0pt;">+ NoisyRollout<sup class="ltx_sup" id="S3.T1.20.16.16.1.1"><math alttext="\star" class="ltx_Math" display="inline" id="S3.T1.20.16.16.1.1.m1.1"><semantics id="S3.T1.20.16.16.1.1.m1.1a"><mo id="S3.T1.20.16.16.1.1.m1.1.1" xref="S3.T1.20.16.16.1.1.m1.1.1.cmml">⋆</mo><annotation-xml encoding="MathML-Content" id="S3.T1.20.16.16.1.1.m1.1b"><ci id="S3.T1.20.16.16.1.1.m1.1.1.cmml" xref="S3.T1.20.16.16.1.1.m1.1.1">⋆</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.20.16.16.1.1.m1.1c">\star</annotation><annotation encoding="application/x-llamapun" id="S3.T1.20.16.16.1.1.m1.1d">⋆</annotation></semantics></math></sup> (<math alttext="n_{1}" class="ltx_Math" display="inline" id="S3.T1.21.17.17.2.m1.1"><semantics id="S3.T1.21.17.17.2.m1.1a"><msub id="S3.T1.21.17.17.2.m1.1.1" xref="S3.T1.21.17.17.2.m1.1.1.cmml"><mi id="S3.T1.21.17.17.2.m1.1.1.2" xref="S3.T1.21.17.17.2.m1.1.1.2.cmml">n</mi><mn id="S3.T1.21.17.17.2.m1.1.1.3" xref="S3.T1.21.17.17.2.m1.1.1.3.cmml">1</mn></msub><annotation-xml encoding="MathML-Content" id="S3.T1.21.17.17.2.m1.1b"><apply id="S3.T1.21.17.17.2.m1.1.1.cmml" xref="S3.T1.21.17.17.2.m1.1.1"><csymbol cd="ambiguous" id="S3.T1.21.17.17.2.m1.1.1.1.cmml" xref="S3.T1.21.17.17.2.m1.1.1">subscript</csymbol><ci id="S3.T1.21.17.17.2.m1.1.1.2.cmml" xref="S3.T1.21.17.17.2.m1.1.1.2">𝑛</ci><cn id="S3.T1.21.17.17.2.m1.1.1.3.cmml" type="integer" xref="S3.T1.21.17.17.2.m1.1.1.3">1</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.21.17.17.2.m1.1c">n_{1}</annotation><annotation encoding="application/x-llamapun" id="S3.T1.21.17.17.2.m1.1d">italic_n start_POSTSUBSCRIPT 1 end_POSTSUBSCRIPT</annotation></semantics></math>=6, <math alttext="n_{2}" class="ltx_Math" display="inline" id="S3.T1.22.18.18.3.m2.1"><semantics id="S3.T1.22.18.18.3.m2.1a"><msub id="S3.T1.22.18.18.3.m2.1.1" xref="S3.T1.22.18.18.3.m2.1.1.cmml"><mi id="S3.T1.22.18.18.3.m2.1.1.2" xref="S3.T1.22.18.18.3.m2.1.1.2.cmml">n</mi><mn id="S3.T1.22.18.18.3.m2.1.1.3" xref="S3.T1.22.18.18.3.m2.1.1.3.cmml">2</mn></msub><annotation-xml encoding="MathML-Content" id="S3.T1.22.18.18.3.m2.1b"><apply id="S3.T1.22.18.18.3.m2.1.1.cmml" xref="S3.T1.22.18.18.3.m2.1.1"><csymbol cd="ambiguous" id="S3.T1.22.18.18.3.m2.1.1.1.cmml" xref="S3.T1.22.18.18.3.m2.1.1">subscript</csymbol><ci id="S3.T1.22.18.18.3.m2.1.1.2.cmml" xref="S3.T1.22.18.18.3.m2.1.1.2">𝑛</ci><cn id="S3.T1.22.18.18.3.m2.1.1.3.cmml" type="integer" xref="S3.T1.22.18.18.3.m2.1.1.3">2</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.22.18.18.3.m2.1c">n_{2}</annotation><annotation encoding="application/x-llamapun" id="S3.T1.22.18.18.3.m2.1d">italic_n start_POSTSUBSCRIPT 2 end_POSTSUBSCRIPT</annotation></semantics></math>=6)</th>
<th class="ltx_td ltx_align_right ltx_th ltx_th_row ltx_border_bb" id="S3.T1.22.18.18.4" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T1.22.18.18.4.1" style="color:#0073BD;">K12 (2.1K)</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.22.18.18.5" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T1.22.18.18.5.1">52.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.22.18.18.6" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.22.18.18.6.1">28.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.22.18.18.7" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T1.22.18.18.7.1">72.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.22.18.18.8" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.22.18.18.8.1">71.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.22.18.18.9" style="padding-left:3.0pt;padding-right:3.0pt;">70.8</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.22.18.18.10" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.22.18.18.10.1">59.5</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table compares the performance of NoisyRollout and vanilla GRPO on various benchmarks under different rollout temperature settings.  It shows the accuracy achieved on out-of-domain and in-domain datasets (Geometry3K).  For vanilla GRPO, the temperature settings and number of rollouts are shown explicitly.  For NoisyRollout, the numbers of clean and noisy rollouts (generated from clean and distorted images respectively) at specific temperature settings are also explicitly shown. The best and second-best results for each benchmark are highlighted.
> <details>
> <summary>read the caption</summary>
> Table 2: Performance comparison between NoisyRollout and vanilla GRPO on both out-of-domain and in-domain benchmarks under different rollout temperature settings. The total number of rollouts in all experiments is fixed at 12121212. In vanilla GRPO, “n⁢(6):1.0:𝑛61.0n(6):1.0italic_n ( 6 ) : 1.0, n⁢(6):1.2:𝑛61.2n(6):1.2italic_n ( 6 ) : 1.2” indicates 6666 rollouts with temperature 1.01.01.01.0 and another 6666 with temperature 1.21.21.21.2. In NoisyRollout, “n1⁢(6):1.0:subscript𝑛161.0n_{1}(6):1.0italic_n start_POSTSUBSCRIPT 1 end_POSTSUBSCRIPT ( 6 ) : 1.0” denotes 6666 rollouts per sample generated from clean input (I,𝐪)𝐼𝐪(I,\mathbf{q})( italic_I , bold_q ) with temperature 1.01.01.01.0, while “n2⁢(6):1.0:subscript𝑛261.0n_{2}(6):1.0italic_n start_POSTSUBSCRIPT 2 end_POSTSUBSCRIPT ( 6 ) : 1.0” denotes 6666 rollouts per sample from noisy input (I~,𝐪)~𝐼𝐪(\tilde{I},\mathbf{q})( over~ start_ARG italic_I end_ARG , bold_q ) with temperature 1.01.01.01.0. “Geo3K” represents the test set of Geometry3K dataset. The best value in each column is bold, and the second best is underlined.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S3.T2.41.11">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S3.T2.41.11.12.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_tt" id="S3.T2.41.11.12.1.1" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.41.11.12.1.1.1">Method</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_tt" id="S3.T2.41.11.12.1.2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.41.11.12.1.2.1">Temperature</span></th>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T2.41.11.12.1.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.41.11.12.1.3.1">Geo3K</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T2.41.11.12.1.4" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.41.11.12.1.4.1">MathVerse</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T2.41.11.12.1.5" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.41.11.12.1.5.1">MathVision</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T2.41.11.12.1.6" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.41.11.12.1.6.1">MathVista</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T2.41.11.12.1.7" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.41.11.12.1.7.1">WeMath</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T2.41.11.12.1.8" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.41.11.12.1.8.1">HallusionBench</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T2.41.11.12.1.9" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.41.11.12.1.9.1">Avg.</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.31.1.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S3.T2.31.1.1.2" rowspan="6" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T2.31.1.1.2.1">Vanilla GRPO</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S3.T2.31.1.1.1" style="padding-left:3.0pt;padding-right:3.0pt;"><math alttext="n(12):0.8" class="ltx_Math" display="inline" id="S3.T2.31.1.1.1.m1.1"><semantics id="S3.T2.31.1.1.1.m1.1a"><mrow id="S3.T2.31.1.1.1.m1.1.2" xref="S3.T2.31.1.1.1.m1.1.2.cmml"><mrow id="S3.T2.31.1.1.1.m1.1.2.2" xref="S3.T2.31.1.1.1.m1.1.2.2.cmml"><mi id="S3.T2.31.1.1.1.m1.1.2.2.2" xref="S3.T2.31.1.1.1.m1.1.2.2.2.cmml">n</mi><mo id="S3.T2.31.1.1.1.m1.1.2.2.1" xref="S3.T2.31.1.1.1.m1.1.2.2.1.cmml">⁢</mo><mrow id="S3.T2.31.1.1.1.m1.1.2.2.3.2" xref="S3.T2.31.1.1.1.m1.1.2.2.cmml"><mo id="S3.T2.31.1.1.1.m1.1.2.2.3.2.1" stretchy="false" xref="S3.T2.31.1.1.1.m1.1.2.2.cmml">(</mo><mn id="S3.T2.31.1.1.1.m1.1.1" xref="S3.T2.31.1.1.1.m1.1.1.cmml">12</mn><mo id="S3.T2.31.1.1.1.m1.1.2.2.3.2.2" rspace="0.278em" stretchy="false" xref="S3.T2.31.1.1.1.m1.1.2.2.cmml">)</mo></mrow></mrow><mo id="S3.T2.31.1.1.1.m1.1.2.1" rspace="0.278em" xref="S3.T2.31.1.1.1.m1.1.2.1.cmml">:</mo><mn id="S3.T2.31.1.1.1.m1.1.2.3" xref="S3.T2.31.1.1.1.m1.1.2.3.cmml">0.8</mn></mrow><annotation-xml encoding="MathML-Content" id="S3.T2.31.1.1.1.m1.1b"><apply id="S3.T2.31.1.1.1.m1.1.2.cmml" xref="S3.T2.31.1.1.1.m1.1.2"><ci id="S3.T2.31.1.1.1.m1.1.2.1.cmml" xref="S3.T2.31.1.1.1.m1.1.2.1">:</ci><apply id="S3.T2.31.1.1.1.m1.1.2.2.cmml" xref="S3.T2.31.1.1.1.m1.1.2.2"><times id="S3.T2.31.1.1.1.m1.1.2.2.1.cmml" xref="S3.T2.31.1.1.1.m1.1.2.2.1"></times><ci id="S3.T2.31.1.1.1.m1.1.2.2.2.cmml" xref="S3.T2.31.1.1.1.m1.1.2.2.2">𝑛</ci><cn id="S3.T2.31.1.1.1.m1.1.1.cmml" type="integer" xref="S3.T2.31.1.1.1.m1.1.1">12</cn></apply><cn id="S3.T2.31.1.1.1.m1.1.2.3.cmml" type="float" xref="S3.T2.31.1.1.1.m1.1.2.3">0.8</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.31.1.1.1.m1.1c">n(12):0.8</annotation><annotation encoding="application/x-llamapun" id="S3.T2.31.1.1.1.m1.1d">italic_n ( 12 ) : 0.8</annotation></semantics></math></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.31.1.1.3" style="padding-left:3.0pt;padding-right:3.0pt;">50.1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.31.1.1.4" style="padding-left:3.0pt;padding-right:3.0pt;">50.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.31.1.1.5" style="padding-left:3.0pt;padding-right:3.0pt;">26.7</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.31.1.1.6" style="padding-left:3.0pt;padding-right:3.0pt;">69.9</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.31.1.1.7" style="padding-left:3.0pt;padding-right:3.0pt;">65.8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.31.1.1.8" style="padding-left:3.0pt;padding-right:3.0pt;">70.1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.31.1.1.9" style="padding-left:3.0pt;padding-right:3.0pt;">55.5</td>
</tr>
<tr class="ltx_tr" id="S3.T2.32.2.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S3.T2.32.2.2.1" style="padding-left:3.0pt;padding-right:3.0pt;"><math alttext="n(12):1.0" class="ltx_Math" display="inline" id="S3.T2.32.2.2.1.m1.1"><semantics id="S3.T2.32.2.2.1.m1.1a"><mrow id="S3.T2.32.2.2.1.m1.1.2" xref="S3.T2.32.2.2.1.m1.1.2.cmml"><mrow id="S3.T2.32.2.2.1.m1.1.2.2" xref="S3.T2.32.2.2.1.m1.1.2.2.cmml"><mi id="S3.T2.32.2.2.1.m1.1.2.2.2" xref="S3.T2.32.2.2.1.m1.1.2.2.2.cmml">n</mi><mo id="S3.T2.32.2.2.1.m1.1.2.2.1" xref="S3.T2.32.2.2.1.m1.1.2.2.1.cmml">⁢</mo><mrow id="S3.T2.32.2.2.1.m1.1.2.2.3.2" xref="S3.T2.32.2.2.1.m1.1.2.2.cmml"><mo id="S3.T2.32.2.2.1.m1.1.2.2.3.2.1" stretchy="false" xref="S3.T2.32.2.2.1.m1.1.2.2.cmml">(</mo><mn id="S3.T2.32.2.2.1.m1.1.1" xref="S3.T2.32.2.2.1.m1.1.1.cmml">12</mn><mo id="S3.T2.32.2.2.1.m1.1.2.2.3.2.2" rspace="0.278em" stretchy="false" xref="S3.T2.32.2.2.1.m1.1.2.2.cmml">)</mo></mrow></mrow><mo id="S3.T2.32.2.2.1.m1.1.2.1" rspace="0.278em" xref="S3.T2.32.2.2.1.m1.1.2.1.cmml">:</mo><mn id="S3.T2.32.2.2.1.m1.1.2.3" xref="S3.T2.32.2.2.1.m1.1.2.3.cmml">1.0</mn></mrow><annotation-xml encoding="MathML-Content" id="S3.T2.32.2.2.1.m1.1b"><apply id="S3.T2.32.2.2.1.m1.1.2.cmml" xref="S3.T2.32.2.2.1.m1.1.2"><ci id="S3.T2.32.2.2.1.m1.1.2.1.cmml" xref="S3.T2.32.2.2.1.m1.1.2.1">:</ci><apply id="S3.T2.32.2.2.1.m1.1.2.2.cmml" xref="S3.T2.32.2.2.1.m1.1.2.2"><times id="S3.T2.32.2.2.1.m1.1.2.2.1.cmml" xref="S3.T2.32.2.2.1.m1.1.2.2.1"></times><ci id="S3.T2.32.2.2.1.m1.1.2.2.2.cmml" xref="S3.T2.32.2.2.1.m1.1.2.2.2">𝑛</ci><cn id="S3.T2.32.2.2.1.m1.1.1.cmml" type="integer" xref="S3.T2.32.2.2.1.m1.1.1">12</cn></apply><cn id="S3.T2.32.2.2.1.m1.1.2.3.cmml" type="float" xref="S3.T2.32.2.2.1.m1.1.2.3">1.0</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.32.2.2.1.m1.1c">n(12):1.0</annotation><annotation encoding="application/x-llamapun" id="S3.T2.32.2.2.1.m1.1d">italic_n ( 12 ) : 1.0</annotation></semantics></math></th>
<td class="ltx_td ltx_align_center" id="S3.T2.32.2.2.2" style="padding-left:3.0pt;padding-right:3.0pt;">51.4</td>
<td class="ltx_td ltx_align_center" id="S3.T2.32.2.2.3" style="padding-left:3.0pt;padding-right:3.0pt;">50.8</td>
<td class="ltx_td ltx_align_center" id="S3.T2.32.2.2.4" style="padding-left:3.0pt;padding-right:3.0pt;">27.3</td>
<td class="ltx_td ltx_align_center" id="S3.T2.32.2.2.5" style="padding-left:3.0pt;padding-right:3.0pt;">70.5</td>
<td class="ltx_td ltx_align_center" id="S3.T2.32.2.2.6" style="padding-left:3.0pt;padding-right:3.0pt;">67.4</td>
<td class="ltx_td ltx_align_center" id="S3.T2.32.2.2.7" style="padding-left:3.0pt;padding-right:3.0pt;">69.8</td>
<td class="ltx_td ltx_align_center" id="S3.T2.32.2.2.8" style="padding-left:3.0pt;padding-right:3.0pt;">56.2</td>
</tr>
<tr class="ltx_tr" id="S3.T2.33.3.3">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S3.T2.33.3.3.1" style="padding-left:3.0pt;padding-right:3.0pt;"><math alttext="n(12):1.1" class="ltx_Math" display="inline" id="S3.T2.33.3.3.1.m1.1"><semantics id="S3.T2.33.3.3.1.m1.1a"><mrow id="S3.T2.33.3.3.1.m1.1.2" xref="S3.T2.33.3.3.1.m1.1.2.cmml"><mrow id="S3.T2.33.3.3.1.m1.1.2.2" xref="S3.T2.33.3.3.1.m1.1.2.2.cmml"><mi id="S3.T2.33.3.3.1.m1.1.2.2.2" xref="S3.T2.33.3.3.1.m1.1.2.2.2.cmml">n</mi><mo id="S3.T2.33.3.3.1.m1.1.2.2.1" xref="S3.T2.33.3.3.1.m1.1.2.2.1.cmml">⁢</mo><mrow id="S3.T2.33.3.3.1.m1.1.2.2.3.2" xref="S3.T2.33.3.3.1.m1.1.2.2.cmml"><mo id="S3.T2.33.3.3.1.m1.1.2.2.3.2.1" stretchy="false" xref="S3.T2.33.3.3.1.m1.1.2.2.cmml">(</mo><mn id="S3.T2.33.3.3.1.m1.1.1" xref="S3.T2.33.3.3.1.m1.1.1.cmml">12</mn><mo id="S3.T2.33.3.3.1.m1.1.2.2.3.2.2" rspace="0.278em" stretchy="false" xref="S3.T2.33.3.3.1.m1.1.2.2.cmml">)</mo></mrow></mrow><mo id="S3.T2.33.3.3.1.m1.1.2.1" rspace="0.278em" xref="S3.T2.33.3.3.1.m1.1.2.1.cmml">:</mo><mn id="S3.T2.33.3.3.1.m1.1.2.3" xref="S3.T2.33.3.3.1.m1.1.2.3.cmml">1.1</mn></mrow><annotation-xml encoding="MathML-Content" id="S3.T2.33.3.3.1.m1.1b"><apply id="S3.T2.33.3.3.1.m1.1.2.cmml" xref="S3.T2.33.3.3.1.m1.1.2"><ci id="S3.T2.33.3.3.1.m1.1.2.1.cmml" xref="S3.T2.33.3.3.1.m1.1.2.1">:</ci><apply id="S3.T2.33.3.3.1.m1.1.2.2.cmml" xref="S3.T2.33.3.3.1.m1.1.2.2"><times id="S3.T2.33.3.3.1.m1.1.2.2.1.cmml" xref="S3.T2.33.3.3.1.m1.1.2.2.1"></times><ci id="S3.T2.33.3.3.1.m1.1.2.2.2.cmml" xref="S3.T2.33.3.3.1.m1.1.2.2.2">𝑛</ci><cn id="S3.T2.33.3.3.1.m1.1.1.cmml" type="integer" xref="S3.T2.33.3.3.1.m1.1.1">12</cn></apply><cn id="S3.T2.33.3.3.1.m1.1.2.3.cmml" type="float" xref="S3.T2.33.3.3.1.m1.1.2.3">1.1</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.33.3.3.1.m1.1c">n(12):1.1</annotation><annotation encoding="application/x-llamapun" id="S3.T2.33.3.3.1.m1.1d">italic_n ( 12 ) : 1.1</annotation></semantics></math></th>
<td class="ltx_td ltx_align_center" id="S3.T2.33.3.3.2" style="padding-left:3.0pt;padding-right:3.0pt;">50.4</td>
<td class="ltx_td ltx_align_center" id="S3.T2.33.3.3.3" style="padding-left:3.0pt;padding-right:3.0pt;">50.2</td>
<td class="ltx_td ltx_align_center" id="S3.T2.33.3.3.4" style="padding-left:3.0pt;padding-right:3.0pt;">27.7</td>
<td class="ltx_td ltx_align_center" id="S3.T2.33.3.3.5" style="padding-left:3.0pt;padding-right:3.0pt;">70.4</td>
<td class="ltx_td ltx_align_center" id="S3.T2.33.3.3.6" style="padding-left:3.0pt;padding-right:3.0pt;">68.1</td>
<td class="ltx_td ltx_align_center" id="S3.T2.33.3.3.7" style="padding-left:3.0pt;padding-right:3.0pt;">69.4</td>
<td class="ltx_td ltx_align_center" id="S3.T2.33.3.3.8" style="padding-left:3.0pt;padding-right:3.0pt;">56.0</td>
</tr>
<tr class="ltx_tr" id="S3.T2.34.4.4">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S3.T2.34.4.4.1" style="padding-left:3.0pt;padding-right:3.0pt;"><math alttext="n(12):1.2" class="ltx_Math" display="inline" id="S3.T2.34.4.4.1.m1.1"><semantics id="S3.T2.34.4.4.1.m1.1a"><mrow id="S3.T2.34.4.4.1.m1.1.2" xref="S3.T2.34.4.4.1.m1.1.2.cmml"><mrow id="S3.T2.34.4.4.1.m1.1.2.2" xref="S3.T2.34.4.4.1.m1.1.2.2.cmml"><mi id="S3.T2.34.4.4.1.m1.1.2.2.2" xref="S3.T2.34.4.4.1.m1.1.2.2.2.cmml">n</mi><mo id="S3.T2.34.4.4.1.m1.1.2.2.1" xref="S3.T2.34.4.4.1.m1.1.2.2.1.cmml">⁢</mo><mrow id="S3.T2.34.4.4.1.m1.1.2.2.3.2" xref="S3.T2.34.4.4.1.m1.1.2.2.cmml"><mo id="S3.T2.34.4.4.1.m1.1.2.2.3.2.1" stretchy="false" xref="S3.T2.34.4.4.1.m1.1.2.2.cmml">(</mo><mn id="S3.T2.34.4.4.1.m1.1.1" xref="S3.T2.34.4.4.1.m1.1.1.cmml">12</mn><mo id="S3.T2.34.4.4.1.m1.1.2.2.3.2.2" rspace="0.278em" stretchy="false" xref="S3.T2.34.4.4.1.m1.1.2.2.cmml">)</mo></mrow></mrow><mo id="S3.T2.34.4.4.1.m1.1.2.1" rspace="0.278em" xref="S3.T2.34.4.4.1.m1.1.2.1.cmml">:</mo><mn id="S3.T2.34.4.4.1.m1.1.2.3" xref="S3.T2.34.4.4.1.m1.1.2.3.cmml">1.2</mn></mrow><annotation-xml encoding="MathML-Content" id="S3.T2.34.4.4.1.m1.1b"><apply id="S3.T2.34.4.4.1.m1.1.2.cmml" xref="S3.T2.34.4.4.1.m1.1.2"><ci id="S3.T2.34.4.4.1.m1.1.2.1.cmml" xref="S3.T2.34.4.4.1.m1.1.2.1">:</ci><apply id="S3.T2.34.4.4.1.m1.1.2.2.cmml" xref="S3.T2.34.4.4.1.m1.1.2.2"><times id="S3.T2.34.4.4.1.m1.1.2.2.1.cmml" xref="S3.T2.34.4.4.1.m1.1.2.2.1"></times><ci id="S3.T2.34.4.4.1.m1.1.2.2.2.cmml" xref="S3.T2.34.4.4.1.m1.1.2.2.2">𝑛</ci><cn id="S3.T2.34.4.4.1.m1.1.1.cmml" type="integer" xref="S3.T2.34.4.4.1.m1.1.1">12</cn></apply><cn id="S3.T2.34.4.4.1.m1.1.2.3.cmml" type="float" xref="S3.T2.34.4.4.1.m1.1.2.3">1.2</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.34.4.4.1.m1.1c">n(12):1.2</annotation><annotation encoding="application/x-llamapun" id="S3.T2.34.4.4.1.m1.1d">italic_n ( 12 ) : 1.2</annotation></semantics></math></th>
<td class="ltx_td ltx_align_center" id="S3.T2.34.4.4.2" style="padding-left:3.0pt;padding-right:3.0pt;">53.2</td>
<td class="ltx_td ltx_align_center" id="S3.T2.34.4.4.3" style="padding-left:3.0pt;padding-right:3.0pt;">51.2</td>
<td class="ltx_td ltx_align_center" id="S3.T2.34.4.4.4" style="padding-left:3.0pt;padding-right:3.0pt;">27.1</td>
<td class="ltx_td ltx_align_center" id="S3.T2.34.4.4.5" style="padding-left:3.0pt;padding-right:3.0pt;">69.3</td>
<td class="ltx_td ltx_align_center" id="S3.T2.34.4.4.6" style="padding-left:3.0pt;padding-right:3.0pt;">68.3</td>
<td class="ltx_td ltx_align_center" id="S3.T2.34.4.4.7" style="padding-left:3.0pt;padding-right:3.0pt;">70.9</td>
<td class="ltx_td ltx_align_center" id="S3.T2.34.4.4.8" style="padding-left:3.0pt;padding-right:3.0pt;">56.7</td>
</tr>
<tr class="ltx_tr" id="S3.T2.35.5.5">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S3.T2.35.5.5.1" style="padding-left:3.0pt;padding-right:3.0pt;"><math alttext="n(12):1.4" class="ltx_Math" display="inline" id="S3.T2.35.5.5.1.m1.1"><semantics id="S3.T2.35.5.5.1.m1.1a"><mrow id="S3.T2.35.5.5.1.m1.1.2" xref="S3.T2.35.5.5.1.m1.1.2.cmml"><mrow id="S3.T2.35.5.5.1.m1.1.2.2" xref="S3.T2.35.5.5.1.m1.1.2.2.cmml"><mi id="S3.T2.35.5.5.1.m1.1.2.2.2" xref="S3.T2.35.5.5.1.m1.1.2.2.2.cmml">n</mi><mo id="S3.T2.35.5.5.1.m1.1.2.2.1" xref="S3.T2.35.5.5.1.m1.1.2.2.1.cmml">⁢</mo><mrow id="S3.T2.35.5.5.1.m1.1.2.2.3.2" xref="S3.T2.35.5.5.1.m1.1.2.2.cmml"><mo id="S3.T2.35.5.5.1.m1.1.2.2.3.2.1" stretchy="false" xref="S3.T2.35.5.5.1.m1.1.2.2.cmml">(</mo><mn id="S3.T2.35.5.5.1.m1.1.1" xref="S3.T2.35.5.5.1.m1.1.1.cmml">12</mn><mo id="S3.T2.35.5.5.1.m1.1.2.2.3.2.2" rspace="0.278em" stretchy="false" xref="S3.T2.35.5.5.1.m1.1.2.2.cmml">)</mo></mrow></mrow><mo id="S3.T2.35.5.5.1.m1.1.2.1" rspace="0.278em" xref="S3.T2.35.5.5.1.m1.1.2.1.cmml">:</mo><mn id="S3.T2.35.5.5.1.m1.1.2.3" xref="S3.T2.35.5.5.1.m1.1.2.3.cmml">1.4</mn></mrow><annotation-xml encoding="MathML-Content" id="S3.T2.35.5.5.1.m1.1b"><apply id="S3.T2.35.5.5.1.m1.1.2.cmml" xref="S3.T2.35.5.5.1.m1.1.2"><ci id="S3.T2.35.5.5.1.m1.1.2.1.cmml" xref="S3.T2.35.5.5.1.m1.1.2.1">:</ci><apply id="S3.T2.35.5.5.1.m1.1.2.2.cmml" xref="S3.T2.35.5.5.1.m1.1.2.2"><times id="S3.T2.35.5.5.1.m1.1.2.2.1.cmml" xref="S3.T2.35.5.5.1.m1.1.2.2.1"></times><ci id="S3.T2.35.5.5.1.m1.1.2.2.2.cmml" xref="S3.T2.35.5.5.1.m1.1.2.2.2">𝑛</ci><cn id="S3.T2.35.5.5.1.m1.1.1.cmml" type="integer" xref="S3.T2.35.5.5.1.m1.1.1">12</cn></apply><cn id="S3.T2.35.5.5.1.m1.1.2.3.cmml" type="float" xref="S3.T2.35.5.5.1.m1.1.2.3">1.4</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.35.5.5.1.m1.1c">n(12):1.4</annotation><annotation encoding="application/x-llamapun" id="S3.T2.35.5.5.1.m1.1d">italic_n ( 12 ) : 1.4</annotation></semantics></math></th>
<td class="ltx_td ltx_align_center" id="S3.T2.35.5.5.2" style="padding-left:3.0pt;padding-right:3.0pt;">51.4</td>
<td class="ltx_td ltx_align_center" id="S3.T2.35.5.5.3" style="padding-left:3.0pt;padding-right:3.0pt;">50.6</td>
<td class="ltx_td ltx_align_center" id="S3.T2.35.5.5.4" style="padding-left:3.0pt;padding-right:3.0pt;">25.8</td>
<td class="ltx_td ltx_align_center" id="S3.T2.35.5.5.5" style="padding-left:3.0pt;padding-right:3.0pt;">70.1</td>
<td class="ltx_td ltx_align_center" id="S3.T2.35.5.5.6" style="padding-left:3.0pt;padding-right:3.0pt;">69.0</td>
<td class="ltx_td ltx_align_center" id="S3.T2.35.5.5.7" style="padding-left:3.0pt;padding-right:3.0pt;">69.6</td>
<td class="ltx_td ltx_align_center" id="S3.T2.35.5.5.8" style="padding-left:3.0pt;padding-right:3.0pt;">56.1</td>
</tr>
<tr class="ltx_tr" id="S3.T2.37.7.7">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S3.T2.37.7.7.2" style="padding-left:3.0pt;padding-right:3.0pt;">
<math alttext="n(6):1.0" class="ltx_Math" display="inline" id="S3.T2.36.6.6.1.m1.1"><semantics id="S3.T2.36.6.6.1.m1.1a"><mrow id="S3.T2.36.6.6.1.m1.1.2" xref="S3.T2.36.6.6.1.m1.1.2.cmml"><mrow id="S3.T2.36.6.6.1.m1.1.2.2" xref="S3.T2.36.6.6.1.m1.1.2.2.cmml"><mi id="S3.T2.36.6.6.1.m1.1.2.2.2" xref="S3.T2.36.6.6.1.m1.1.2.2.2.cmml">n</mi><mo id="S3.T2.36.6.6.1.m1.1.2.2.1" xref="S3.T2.36.6.6.1.m1.1.2.2.1.cmml">⁢</mo><mrow id="S3.T2.36.6.6.1.m1.1.2.2.3.2" xref="S3.T2.36.6.6.1.m1.1.2.2.cmml"><mo id="S3.T2.36.6.6.1.m1.1.2.2.3.2.1" stretchy="false" xref="S3.T2.36.6.6.1.m1.1.2.2.cmml">(</mo><mn id="S3.T2.36.6.6.1.m1.1.1" xref="S3.T2.36.6.6.1.m1.1.1.cmml">6</mn><mo id="S3.T2.36.6.6.1.m1.1.2.2.3.2.2" rspace="0.278em" stretchy="false" xref="S3.T2.36.6.6.1.m1.1.2.2.cmml">)</mo></mrow></mrow><mo id="S3.T2.36.6.6.1.m1.1.2.1" rspace="0.278em" xref="S3.T2.36.6.6.1.m1.1.2.1.cmml">:</mo><mn id="S3.T2.36.6.6.1.m1.1.2.3" xref="S3.T2.36.6.6.1.m1.1.2.3.cmml">1.0</mn></mrow><annotation-xml encoding="MathML-Content" id="S3.T2.36.6.6.1.m1.1b"><apply id="S3.T2.36.6.6.1.m1.1.2.cmml" xref="S3.T2.36.6.6.1.m1.1.2"><ci id="S3.T2.36.6.6.1.m1.1.2.1.cmml" xref="S3.T2.36.6.6.1.m1.1.2.1">:</ci><apply id="S3.T2.36.6.6.1.m1.1.2.2.cmml" xref="S3.T2.36.6.6.1.m1.1.2.2"><times id="S3.T2.36.6.6.1.m1.1.2.2.1.cmml" xref="S3.T2.36.6.6.1.m1.1.2.2.1"></times><ci id="S3.T2.36.6.6.1.m1.1.2.2.2.cmml" xref="S3.T2.36.6.6.1.m1.1.2.2.2">𝑛</ci><cn id="S3.T2.36.6.6.1.m1.1.1.cmml" type="integer" xref="S3.T2.36.6.6.1.m1.1.1">6</cn></apply><cn id="S3.T2.36.6.6.1.m1.1.2.3.cmml" type="float" xref="S3.T2.36.6.6.1.m1.1.2.3">1.0</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.36.6.6.1.m1.1c">n(6):1.0</annotation><annotation encoding="application/x-llamapun" id="S3.T2.36.6.6.1.m1.1d">italic_n ( 6 ) : 1.0</annotation></semantics></math>, <math alttext="n(6):1.2" class="ltx_Math" display="inline" id="S3.T2.37.7.7.2.m2.1"><semantics id="S3.T2.37.7.7.2.m2.1a"><mrow id="S3.T2.37.7.7.2.m2.1.2" xref="S3.T2.37.7.7.2.m2.1.2.cmml"><mrow id="S3.T2.37.7.7.2.m2.1.2.2" xref="S3.T2.37.7.7.2.m2.1.2.2.cmml"><mi id="S3.T2.37.7.7.2.m2.1.2.2.2" xref="S3.T2.37.7.7.2.m2.1.2.2.2.cmml">n</mi><mo id="S3.T2.37.7.7.2.m2.1.2.2.1" xref="S3.T2.37.7.7.2.m2.1.2.2.1.cmml">⁢</mo><mrow id="S3.T2.37.7.7.2.m2.1.2.2.3.2" xref="S3.T2.37.7.7.2.m2.1.2.2.cmml"><mo id="S3.T2.37.7.7.2.m2.1.2.2.3.2.1" stretchy="false" xref="S3.T2.37.7.7.2.m2.1.2.2.cmml">(</mo><mn id="S3.T2.37.7.7.2.m2.1.1" xref="S3.T2.37.7.7.2.m2.1.1.cmml">6</mn><mo id="S3.T2.37.7.7.2.m2.1.2.2.3.2.2" rspace="0.278em" stretchy="false" xref="S3.T2.37.7.7.2.m2.1.2.2.cmml">)</mo></mrow></mrow><mo id="S3.T2.37.7.7.2.m2.1.2.1" rspace="0.278em" xref="S3.T2.37.7.7.2.m2.1.2.1.cmml">:</mo><mn id="S3.T2.37.7.7.2.m2.1.2.3" xref="S3.T2.37.7.7.2.m2.1.2.3.cmml">1.2</mn></mrow><annotation-xml encoding="MathML-Content" id="S3.T2.37.7.7.2.m2.1b"><apply id="S3.T2.37.7.7.2.m2.1.2.cmml" xref="S3.T2.37.7.7.2.m2.1.2"><ci id="S3.T2.37.7.7.2.m2.1.2.1.cmml" xref="S3.T2.37.7.7.2.m2.1.2.1">:</ci><apply id="S3.T2.37.7.7.2.m2.1.2.2.cmml" xref="S3.T2.37.7.7.2.m2.1.2.2"><times id="S3.T2.37.7.7.2.m2.1.2.2.1.cmml" xref="S3.T2.37.7.7.2.m2.1.2.2.1"></times><ci id="S3.T2.37.7.7.2.m2.1.2.2.2.cmml" xref="S3.T2.37.7.7.2.m2.1.2.2.2">𝑛</ci><cn id="S3.T2.37.7.7.2.m2.1.1.cmml" type="integer" xref="S3.T2.37.7.7.2.m2.1.1">6</cn></apply><cn id="S3.T2.37.7.7.2.m2.1.2.3.cmml" type="float" xref="S3.T2.37.7.7.2.m2.1.2.3">1.2</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.37.7.7.2.m2.1c">n(6):1.2</annotation><annotation encoding="application/x-llamapun" id="S3.T2.37.7.7.2.m2.1d">italic_n ( 6 ) : 1.2</annotation></semantics></math>
</th>
<td class="ltx_td ltx_align_center" id="S3.T2.37.7.7.3" style="padding-left:3.0pt;padding-right:3.0pt;">50.8</td>
<td class="ltx_td ltx_align_center" id="S3.T2.37.7.7.4" style="padding-left:3.0pt;padding-right:3.0pt;">50.7</td>
<td class="ltx_td ltx_align_center" id="S3.T2.37.7.7.5" style="padding-left:3.0pt;padding-right:3.0pt;">26.8</td>
<td class="ltx_td ltx_align_center" id="S3.T2.37.7.7.6" style="padding-left:3.0pt;padding-right:3.0pt;">70.1</td>
<td class="ltx_td ltx_align_center" id="S3.T2.37.7.7.7" style="padding-left:3.0pt;padding-right:3.0pt;">67.4</td>
<td class="ltx_td ltx_align_center" id="S3.T2.37.7.7.8" style="padding-left:3.0pt;padding-right:3.0pt;">68.2</td>
<td class="ltx_td ltx_align_center" id="S3.T2.37.7.7.9" style="padding-left:3.0pt;padding-right:3.0pt;">55.7</td>
</tr>
<tr class="ltx_tr" id="S3.T2.39.9.9">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_bb ltx_border_r ltx_border_t" id="S3.T2.39.9.9.3" rowspan="2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T2.39.9.9.3.1">NoisyRollout</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S3.T2.39.9.9.2" style="padding-left:3.0pt;padding-right:3.0pt;">
<math alttext="n_{1}(6):1.0" class="ltx_Math" display="inline" id="S3.T2.38.8.8.1.m1.1"><semantics id="S3.T2.38.8.8.1.m1.1a"><mrow id="S3.T2.38.8.8.1.m1.1.2" xref="S3.T2.38.8.8.1.m1.1.2.cmml"><mrow id="S3.T2.38.8.8.1.m1.1.2.2" xref="S3.T2.38.8.8.1.m1.1.2.2.cmml"><msub id="S3.T2.38.8.8.1.m1.1.2.2.2" xref="S3.T2.38.8.8.1.m1.1.2.2.2.cmml"><mi id="S3.T2.38.8.8.1.m1.1.2.2.2.2" xref="S3.T2.38.8.8.1.m1.1.2.2.2.2.cmml">n</mi><mn id="S3.T2.38.8.8.1.m1.1.2.2.2.3" xref="S3.T2.38.8.8.1.m1.1.2.2.2.3.cmml">1</mn></msub><mo id="S3.T2.38.8.8.1.m1.1.2.2.1" xref="S3.T2.38.8.8.1.m1.1.2.2.1.cmml">⁢</mo><mrow id="S3.T2.38.8.8.1.m1.1.2.2.3.2" xref="S3.T2.38.8.8.1.m1.1.2.2.cmml"><mo id="S3.T2.38.8.8.1.m1.1.2.2.3.2.1" stretchy="false" xref="S3.T2.38.8.8.1.m1.1.2.2.cmml">(</mo><mn id="S3.T2.38.8.8.1.m1.1.1" xref="S3.T2.38.8.8.1.m1.1.1.cmml">6</mn><mo id="S3.T2.38.8.8.1.m1.1.2.2.3.2.2" rspace="0.278em" stretchy="false" xref="S3.T2.38.8.8.1.m1.1.2.2.cmml">)</mo></mrow></mrow><mo id="S3.T2.38.8.8.1.m1.1.2.1" rspace="0.278em" xref="S3.T2.38.8.8.1.m1.1.2.1.cmml">:</mo><mn id="S3.T2.38.8.8.1.m1.1.2.3" xref="S3.T2.38.8.8.1.m1.1.2.3.cmml">1.0</mn></mrow><annotation-xml encoding="MathML-Content" id="S3.T2.38.8.8.1.m1.1b"><apply id="S3.T2.38.8.8.1.m1.1.2.cmml" xref="S3.T2.38.8.8.1.m1.1.2"><ci id="S3.T2.38.8.8.1.m1.1.2.1.cmml" xref="S3.T2.38.8.8.1.m1.1.2.1">:</ci><apply id="S3.T2.38.8.8.1.m1.1.2.2.cmml" xref="S3.T2.38.8.8.1.m1.1.2.2"><times id="S3.T2.38.8.8.1.m1.1.2.2.1.cmml" xref="S3.T2.38.8.8.1.m1.1.2.2.1"></times><apply id="S3.T2.38.8.8.1.m1.1.2.2.2.cmml" xref="S3.T2.38.8.8.1.m1.1.2.2.2"><csymbol cd="ambiguous" id="S3.T2.38.8.8.1.m1.1.2.2.2.1.cmml" xref="S3.T2.38.8.8.1.m1.1.2.2.2">subscript</csymbol><ci id="S3.T2.38.8.8.1.m1.1.2.2.2.2.cmml" xref="S3.T2.38.8.8.1.m1.1.2.2.2.2">𝑛</ci><cn id="S3.T2.38.8.8.1.m1.1.2.2.2.3.cmml" type="integer" xref="S3.T2.38.8.8.1.m1.1.2.2.2.3">1</cn></apply><cn id="S3.T2.38.8.8.1.m1.1.1.cmml" type="integer" xref="S3.T2.38.8.8.1.m1.1.1">6</cn></apply><cn id="S3.T2.38.8.8.1.m1.1.2.3.cmml" type="float" xref="S3.T2.38.8.8.1.m1.1.2.3">1.0</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.38.8.8.1.m1.1c">n_{1}(6):1.0</annotation><annotation encoding="application/x-llamapun" id="S3.T2.38.8.8.1.m1.1d">italic_n start_POSTSUBSCRIPT 1 end_POSTSUBSCRIPT ( 6 ) : 1.0</annotation></semantics></math>, <math alttext="n_{2}(6):1.0" class="ltx_Math" display="inline" id="S3.T2.39.9.9.2.m2.1"><semantics id="S3.T2.39.9.9.2.m2.1a"><mrow id="S3.T2.39.9.9.2.m2.1.2" xref="S3.T2.39.9.9.2.m2.1.2.cmml"><mrow id="S3.T2.39.9.9.2.m2.1.2.2" xref="S3.T2.39.9.9.2.m2.1.2.2.cmml"><msub id="S3.T2.39.9.9.2.m2.1.2.2.2" xref="S3.T2.39.9.9.2.m2.1.2.2.2.cmml"><mi id="S3.T2.39.9.9.2.m2.1.2.2.2.2" xref="S3.T2.39.9.9.2.m2.1.2.2.2.2.cmml">n</mi><mn id="S3.T2.39.9.9.2.m2.1.2.2.2.3" xref="S3.T2.39.9.9.2.m2.1.2.2.2.3.cmml">2</mn></msub><mo id="S3.T2.39.9.9.2.m2.1.2.2.1" xref="S3.T2.39.9.9.2.m2.1.2.2.1.cmml">⁢</mo><mrow id="S3.T2.39.9.9.2.m2.1.2.2.3.2" xref="S3.T2.39.9.9.2.m2.1.2.2.cmml"><mo id="S3.T2.39.9.9.2.m2.1.2.2.3.2.1" stretchy="false" xref="S3.T2.39.9.9.2.m2.1.2.2.cmml">(</mo><mn id="S3.T2.39.9.9.2.m2.1.1" xref="S3.T2.39.9.9.2.m2.1.1.cmml">6</mn><mo id="S3.T2.39.9.9.2.m2.1.2.2.3.2.2" rspace="0.278em" stretchy="false" xref="S3.T2.39.9.9.2.m2.1.2.2.cmml">)</mo></mrow></mrow><mo id="S3.T2.39.9.9.2.m2.1.2.1" rspace="0.278em" xref="S3.T2.39.9.9.2.m2.1.2.1.cmml">:</mo><mn id="S3.T2.39.9.9.2.m2.1.2.3" xref="S3.T2.39.9.9.2.m2.1.2.3.cmml">1.0</mn></mrow><annotation-xml encoding="MathML-Content" id="S3.T2.39.9.9.2.m2.1b"><apply id="S3.T2.39.9.9.2.m2.1.2.cmml" xref="S3.T2.39.9.9.2.m2.1.2"><ci id="S3.T2.39.9.9.2.m2.1.2.1.cmml" xref="S3.T2.39.9.9.2.m2.1.2.1">:</ci><apply id="S3.T2.39.9.9.2.m2.1.2.2.cmml" xref="S3.T2.39.9.9.2.m2.1.2.2"><times id="S3.T2.39.9.9.2.m2.1.2.2.1.cmml" xref="S3.T2.39.9.9.2.m2.1.2.2.1"></times><apply id="S3.T2.39.9.9.2.m2.1.2.2.2.cmml" xref="S3.T2.39.9.9.2.m2.1.2.2.2"><csymbol cd="ambiguous" id="S3.T2.39.9.9.2.m2.1.2.2.2.1.cmml" xref="S3.T2.39.9.9.2.m2.1.2.2.2">subscript</csymbol><ci id="S3.T2.39.9.9.2.m2.1.2.2.2.2.cmml" xref="S3.T2.39.9.9.2.m2.1.2.2.2.2">𝑛</ci><cn id="S3.T2.39.9.9.2.m2.1.2.2.2.3.cmml" type="integer" xref="S3.T2.39.9.9.2.m2.1.2.2.2.3">2</cn></apply><cn id="S3.T2.39.9.9.2.m2.1.1.cmml" type="integer" xref="S3.T2.39.9.9.2.m2.1.1">6</cn></apply><cn id="S3.T2.39.9.9.2.m2.1.2.3.cmml" type="float" xref="S3.T2.39.9.9.2.m2.1.2.3">1.0</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.39.9.9.2.m2.1c">n_{2}(6):1.0</annotation><annotation encoding="application/x-llamapun" id="S3.T2.39.9.9.2.m2.1d">italic_n start_POSTSUBSCRIPT 2 end_POSTSUBSCRIPT ( 6 ) : 1.0</annotation></semantics></math>
</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.39.9.9.4" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.39.9.9.4.1">54.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.39.9.9.5" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.39.9.9.5.1">53.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.39.9.9.6" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.39.9.9.6.1">28.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.39.9.9.7" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T2.39.9.9.7.1">72.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.39.9.9.8" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T2.39.9.9.8.1">69.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.39.9.9.9" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.39.9.9.9.1">72.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.39.9.9.10" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.39.9.9.10.1">58.6</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.41.11.11">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_bb ltx_border_r" id="S3.T2.41.11.11.2" style="padding-left:3.0pt;padding-right:3.0pt;">
<math alttext="n_{1}(6):1.2" class="ltx_Math" display="inline" id="S3.T2.40.10.10.1.m1.1"><semantics id="S3.T2.40.10.10.1.m1.1a"><mrow id="S3.T2.40.10.10.1.m1.1.2" xref="S3.T2.40.10.10.1.m1.1.2.cmml"><mrow id="S3.T2.40.10.10.1.m1.1.2.2" xref="S3.T2.40.10.10.1.m1.1.2.2.cmml"><msub id="S3.T2.40.10.10.1.m1.1.2.2.2" xref="S3.T2.40.10.10.1.m1.1.2.2.2.cmml"><mi id="S3.T2.40.10.10.1.m1.1.2.2.2.2" xref="S3.T2.40.10.10.1.m1.1.2.2.2.2.cmml">n</mi><mn id="S3.T2.40.10.10.1.m1.1.2.2.2.3" xref="S3.T2.40.10.10.1.m1.1.2.2.2.3.cmml">1</mn></msub><mo id="S3.T2.40.10.10.1.m1.1.2.2.1" xref="S3.T2.40.10.10.1.m1.1.2.2.1.cmml">⁢</mo><mrow id="S3.T2.40.10.10.1.m1.1.2.2.3.2" xref="S3.T2.40.10.10.1.m1.1.2.2.cmml"><mo id="S3.T2.40.10.10.1.m1.1.2.2.3.2.1" stretchy="false" xref="S3.T2.40.10.10.1.m1.1.2.2.cmml">(</mo><mn id="S3.T2.40.10.10.1.m1.1.1" xref="S3.T2.40.10.10.1.m1.1.1.cmml">6</mn><mo id="S3.T2.40.10.10.1.m1.1.2.2.3.2.2" rspace="0.278em" stretchy="false" xref="S3.T2.40.10.10.1.m1.1.2.2.cmml">)</mo></mrow></mrow><mo id="S3.T2.40.10.10.1.m1.1.2.1" rspace="0.278em" xref="S3.T2.40.10.10.1.m1.1.2.1.cmml">:</mo><mn id="S3.T2.40.10.10.1.m1.1.2.3" xref="S3.T2.40.10.10.1.m1.1.2.3.cmml">1.2</mn></mrow><annotation-xml encoding="MathML-Content" id="S3.T2.40.10.10.1.m1.1b"><apply id="S3.T2.40.10.10.1.m1.1.2.cmml" xref="S3.T2.40.10.10.1.m1.1.2"><ci id="S3.T2.40.10.10.1.m1.1.2.1.cmml" xref="S3.T2.40.10.10.1.m1.1.2.1">:</ci><apply id="S3.T2.40.10.10.1.m1.1.2.2.cmml" xref="S3.T2.40.10.10.1.m1.1.2.2"><times id="S3.T2.40.10.10.1.m1.1.2.2.1.cmml" xref="S3.T2.40.10.10.1.m1.1.2.2.1"></times><apply id="S3.T2.40.10.10.1.m1.1.2.2.2.cmml" xref="S3.T2.40.10.10.1.m1.1.2.2.2"><csymbol cd="ambiguous" id="S3.T2.40.10.10.1.m1.1.2.2.2.1.cmml" xref="S3.T2.40.10.10.1.m1.1.2.2.2">subscript</csymbol><ci id="S3.T2.40.10.10.1.m1.1.2.2.2.2.cmml" xref="S3.T2.40.10.10.1.m1.1.2.2.2.2">𝑛</ci><cn id="S3.T2.40.10.10.1.m1.1.2.2.2.3.cmml" type="integer" xref="S3.T2.40.10.10.1.m1.1.2.2.2.3">1</cn></apply><cn id="S3.T2.40.10.10.1.m1.1.1.cmml" type="integer" xref="S3.T2.40.10.10.1.m1.1.1">6</cn></apply><cn id="S3.T2.40.10.10.1.m1.1.2.3.cmml" type="float" xref="S3.T2.40.10.10.1.m1.1.2.3">1.2</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.40.10.10.1.m1.1c">n_{1}(6):1.2</annotation><annotation encoding="application/x-llamapun" id="S3.T2.40.10.10.1.m1.1d">italic_n start_POSTSUBSCRIPT 1 end_POSTSUBSCRIPT ( 6 ) : 1.2</annotation></semantics></math>, <math alttext="n_{2}(6):1.2" class="ltx_Math" display="inline" id="S3.T2.41.11.11.2.m2.1"><semantics id="S3.T2.41.11.11.2.m2.1a"><mrow id="S3.T2.41.11.11.2.m2.1.2" xref="S3.T2.41.11.11.2.m2.1.2.cmml"><mrow id="S3.T2.41.11.11.2.m2.1.2.2" xref="S3.T2.41.11.11.2.m2.1.2.2.cmml"><msub id="S3.T2.41.11.11.2.m2.1.2.2.2" xref="S3.T2.41.11.11.2.m2.1.2.2.2.cmml"><mi id="S3.T2.41.11.11.2.m2.1.2.2.2.2" xref="S3.T2.41.11.11.2.m2.1.2.2.2.2.cmml">n</mi><mn id="S3.T2.41.11.11.2.m2.1.2.2.2.3" xref="S3.T2.41.11.11.2.m2.1.2.2.2.3.cmml">2</mn></msub><mo id="S3.T2.41.11.11.2.m2.1.2.2.1" xref="S3.T2.41.11.11.2.m2.1.2.2.1.cmml">⁢</mo><mrow id="S3.T2.41.11.11.2.m2.1.2.2.3.2" xref="S3.T2.41.11.11.2.m2.1.2.2.cmml"><mo id="S3.T2.41.11.11.2.m2.1.2.2.3.2.1" stretchy="false" xref="S3.T2.41.11.11.2.m2.1.2.2.cmml">(</mo><mn id="S3.T2.41.11.11.2.m2.1.1" xref="S3.T2.41.11.11.2.m2.1.1.cmml">6</mn><mo id="S3.T2.41.11.11.2.m2.1.2.2.3.2.2" rspace="0.278em" stretchy="false" xref="S3.T2.41.11.11.2.m2.1.2.2.cmml">)</mo></mrow></mrow><mo id="S3.T2.41.11.11.2.m2.1.2.1" rspace="0.278em" xref="S3.T2.41.11.11.2.m2.1.2.1.cmml">:</mo><mn id="S3.T2.41.11.11.2.m2.1.2.3" xref="S3.T2.41.11.11.2.m2.1.2.3.cmml">1.2</mn></mrow><annotation-xml encoding="MathML-Content" id="S3.T2.41.11.11.2.m2.1b"><apply id="S3.T2.41.11.11.2.m2.1.2.cmml" xref="S3.T2.41.11.11.2.m2.1.2"><ci id="S3.T2.41.11.11.2.m2.1.2.1.cmml" xref="S3.T2.41.11.11.2.m2.1.2.1">:</ci><apply id="S3.T2.41.11.11.2.m2.1.2.2.cmml" xref="S3.T2.41.11.11.2.m2.1.2.2"><times id="S3.T2.41.11.11.2.m2.1.2.2.1.cmml" xref="S3.T2.41.11.11.2.m2.1.2.2.1"></times><apply id="S3.T2.41.11.11.2.m2.1.2.2.2.cmml" xref="S3.T2.41.11.11.2.m2.1.2.2.2"><csymbol cd="ambiguous" id="S3.T2.41.11.11.2.m2.1.2.2.2.1.cmml" xref="S3.T2.41.11.11.2.m2.1.2.2.2">subscript</csymbol><ci id="S3.T2.41.11.11.2.m2.1.2.2.2.2.cmml" xref="S3.T2.41.11.11.2.m2.1.2.2.2.2">𝑛</ci><cn id="S3.T2.41.11.11.2.m2.1.2.2.2.3.cmml" type="integer" xref="S3.T2.41.11.11.2.m2.1.2.2.2.3">2</cn></apply><cn id="S3.T2.41.11.11.2.m2.1.1.cmml" type="integer" xref="S3.T2.41.11.11.2.m2.1.1">6</cn></apply><cn id="S3.T2.41.11.11.2.m2.1.2.3.cmml" type="float" xref="S3.T2.41.11.11.2.m2.1.2.3">1.2</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.41.11.11.2.m2.1c">n_{2}(6):1.2</annotation><annotation encoding="application/x-llamapun" id="S3.T2.41.11.11.2.m2.1d">italic_n start_POSTSUBSCRIPT 2 end_POSTSUBSCRIPT ( 6 ) : 1.2</annotation></semantics></math>
</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.41.11.11.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T2.41.11.11.3.1">53.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.41.11.11.4" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T2.41.11.11.4.1">52.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.41.11.11.5" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T2.41.11.11.5.1">28.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.41.11.11.6" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.41.11.11.6.1">72.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.41.11.11.7" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.41.11.11.7.1">70.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.41.11.11.8" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T2.41.11.11.8.1">70.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.41.11.11.9" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T2.41.11.11.9.1">58.2</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table compares the performance of three different models on visual reasoning and perception tasks.  The models are: a baseline model (Qwen2.5-VL-7B-Instruct), the same model fine-tuned with the standard Group Relative Policy Optimization (GRPO) algorithm, and the same model fine-tuned with the Dr. GRPO algorithm (an improved version addressing an optimization bias).  Performance is measured by average accuracy across five out-of-domain benchmark datasets, reflecting the models' ability to generalize to unseen data and tasks. The table shows both in-domain (Geometry3K) and out-of-domain (OOD Avg.) performance, illustrating how well the different methods generalize.
> <details>
> <summary>read the caption</summary>
> Table 3: Performance comparison when using Dr. GRPO for optimization. “OOD Avg.” represents average accuracy (%) across five out-of-domain visual reasoning and perception benchmarks.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S3.T3.4.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S3.T3.4.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S3.T3.4.1.1.1.1" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T3.4.1.1.1.1.1">Method</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T3.4.1.1.1.2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T3.4.1.1.1.2.1">Geometry3K</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T3.4.1.1.1.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T3.4.1.1.1.3.1">OOD Avg.</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S3.T3.4.1.2.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S3.T3.4.1.2.1.1" style="padding-left:3.0pt;padding-right:3.0pt;">Qwen2.5-VL-7B-Instruct</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.4.1.2.1.2" style="padding-left:3.0pt;padding-right:3.0pt;">39.4</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.4.1.2.1.3" style="padding-left:3.0pt;padding-right:3.0pt;">53.3</td>
</tr>
<tr class="ltx_tr" id="S3.T3.4.1.3.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T3.4.1.3.2.1" style="padding-left:3.0pt;padding-right:3.0pt;">+ Dr. GRPO</th>
<td class="ltx_td ltx_align_center" id="S3.T3.4.1.3.2.2" style="padding-left:3.0pt;padding-right:3.0pt;">51.3</td>
<td class="ltx_td ltx_align_center" id="S3.T3.4.1.3.2.3" style="padding-left:3.0pt;padding-right:3.0pt;">57.0</td>
</tr>
<tr class="ltx_tr" id="S3.T3.4.1.4.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S3.T3.4.1.4.3.1" style="padding-left:3.0pt;padding-right:3.0pt;">+ <span class="ltx_text" id="S3.T3.4.1.4.3.1.1">NoisyRollout</span> (Dr. GRPO)</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T3.4.1.4.3.2" style="padding-left:3.0pt;padding-right:3.0pt;">56.1</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T3.4.1.4.3.3" style="padding-left:3.0pt;padding-right:3.0pt;">58.9</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This ablation study investigates the effect of varying the total number of rollouts and the initial noise level on the performance of NoisyRollout and vanilla GRPO. The left side shows the comparison of Vanilla GRPO with different total rollout numbers (n) against NoisyRollout with the same total rollout numbers split between clean and noisy rollouts (n1 and n2). The right side shows how varying the initial noise level impacts NoisyRollout's performance.  The results are evaluated on five out-of-domain benchmarks assessing visual reasoning and perception abilities, and the best performing model for each benchmark is highlighted.
> <details>
> <summary>read the caption</summary>
> Table 4: Ablation study on total rollouts and noise steps. Left: Vanilla GRPO with total rollout n𝑛nitalic_n versus our NoisyRollout with split rollouts n1subscript𝑛1n_{1}italic_n start_POSTSUBSCRIPT 1 end_POSTSUBSCRIPT and n2subscript𝑛2n_{2}italic_n start_POSTSUBSCRIPT 2 end_POSTSUBSCRIPT. Right: Impact of initial noise steps on NoisyRollout performance. “OOD Avg.” reports average accuracy (%) across five out-of-domain visual reasoning and perception benchmarks. Best value per column is bold, second best is underlined.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S3.T4.13.7.7">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S3.T4.13.7.7.8.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S3.T4.13.7.7.8.1.1" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T4.13.7.7.8.1.1.1">Rollout</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T4.13.7.7.8.1.2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T4.13.7.7.8.1.2.1">Geometry3K</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T4.13.7.7.8.1.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T4.13.7.7.8.1.3.1">OOD Avg.</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S3.T4.7.1.1.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" id="S3.T4.7.1.1.1.1" style="padding-left:3.0pt;padding-right:3.0pt;"><math alttext="n=8" class="ltx_Math" display="inline" id="S3.T4.7.1.1.1.1.m1.1"><semantics id="S3.T4.7.1.1.1.1.m1.1a"><mrow id="S3.T4.7.1.1.1.1.m1.1.1" xref="S3.T4.7.1.1.1.1.m1.1.1.cmml"><mi id="S3.T4.7.1.1.1.1.m1.1.1.2" xref="S3.T4.7.1.1.1.1.m1.1.1.2.cmml">n</mi><mo id="S3.T4.7.1.1.1.1.m1.1.1.1" xref="S3.T4.7.1.1.1.1.m1.1.1.1.cmml">=</mo><mn id="S3.T4.7.1.1.1.1.m1.1.1.3" xref="S3.T4.7.1.1.1.1.m1.1.1.3.cmml">8</mn></mrow><annotation-xml encoding="MathML-Content" id="S3.T4.7.1.1.1.1.m1.1b"><apply id="S3.T4.7.1.1.1.1.m1.1.1.cmml" xref="S3.T4.7.1.1.1.1.m1.1.1"><eq id="S3.T4.7.1.1.1.1.m1.1.1.1.cmml" xref="S3.T4.7.1.1.1.1.m1.1.1.1"></eq><ci id="S3.T4.7.1.1.1.1.m1.1.1.2.cmml" xref="S3.T4.7.1.1.1.1.m1.1.1.2">𝑛</ci><cn id="S3.T4.7.1.1.1.1.m1.1.1.3.cmml" type="integer" xref="S3.T4.7.1.1.1.1.m1.1.1.3">8</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T4.7.1.1.1.1.m1.1c">n=8</annotation><annotation encoding="application/x-llamapun" id="S3.T4.7.1.1.1.1.m1.1d">italic_n = 8</annotation></semantics></math></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T4.7.1.1.1.2" style="padding-left:3.0pt;padding-right:3.0pt;">49.6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T4.7.1.1.1.3" style="padding-left:3.0pt;padding-right:3.0pt;">56.8</td>
</tr>
<tr class="ltx_tr" id="S3.T4.8.2.2.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S3.T4.8.2.2.2.1" style="padding-left:3.0pt;padding-right:3.0pt;"><math alttext="n=12" class="ltx_Math" display="inline" id="S3.T4.8.2.2.2.1.m1.1"><semantics id="S3.T4.8.2.2.2.1.m1.1a"><mrow id="S3.T4.8.2.2.2.1.m1.1.1" xref="S3.T4.8.2.2.2.1.m1.1.1.cmml"><mi id="S3.T4.8.2.2.2.1.m1.1.1.2" xref="S3.T4.8.2.2.2.1.m1.1.1.2.cmml">n</mi><mo id="S3.T4.8.2.2.2.1.m1.1.1.1" xref="S3.T4.8.2.2.2.1.m1.1.1.1.cmml">=</mo><mn id="S3.T4.8.2.2.2.1.m1.1.1.3" xref="S3.T4.8.2.2.2.1.m1.1.1.3.cmml">12</mn></mrow><annotation-xml encoding="MathML-Content" id="S3.T4.8.2.2.2.1.m1.1b"><apply id="S3.T4.8.2.2.2.1.m1.1.1.cmml" xref="S3.T4.8.2.2.2.1.m1.1.1"><eq id="S3.T4.8.2.2.2.1.m1.1.1.1.cmml" xref="S3.T4.8.2.2.2.1.m1.1.1.1"></eq><ci id="S3.T4.8.2.2.2.1.m1.1.1.2.cmml" xref="S3.T4.8.2.2.2.1.m1.1.1.2">𝑛</ci><cn id="S3.T4.8.2.2.2.1.m1.1.1.3.cmml" type="integer" xref="S3.T4.8.2.2.2.1.m1.1.1.3">12</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T4.8.2.2.2.1.m1.1c">n=12</annotation><annotation encoding="application/x-llamapun" id="S3.T4.8.2.2.2.1.m1.1d">italic_n = 12</annotation></semantics></math></th>
<td class="ltx_td ltx_align_center" id="S3.T4.8.2.2.2.2" style="padding-left:3.0pt;padding-right:3.0pt;">51.4</td>
<td class="ltx_td ltx_align_center" id="S3.T4.8.2.2.2.3" style="padding-left:3.0pt;padding-right:3.0pt;">57.2</td>
</tr>
<tr class="ltx_tr" id="S3.T4.9.3.3.3">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S3.T4.9.3.3.3.1" style="padding-left:3.0pt;padding-right:3.0pt;"><math alttext="n=16" class="ltx_Math" display="inline" id="S3.T4.9.3.3.3.1.m1.1"><semantics id="S3.T4.9.3.3.3.1.m1.1a"><mrow id="S3.T4.9.3.3.3.1.m1.1.1" xref="S3.T4.9.3.3.3.1.m1.1.1.cmml"><mi id="S3.T4.9.3.3.3.1.m1.1.1.2" xref="S3.T4.9.3.3.3.1.m1.1.1.2.cmml">n</mi><mo id="S3.T4.9.3.3.3.1.m1.1.1.1" xref="S3.T4.9.3.3.3.1.m1.1.1.1.cmml">=</mo><mn id="S3.T4.9.3.3.3.1.m1.1.1.3" xref="S3.T4.9.3.3.3.1.m1.1.1.3.cmml">16</mn></mrow><annotation-xml encoding="MathML-Content" id="S3.T4.9.3.3.3.1.m1.1b"><apply id="S3.T4.9.3.3.3.1.m1.1.1.cmml" xref="S3.T4.9.3.3.3.1.m1.1.1"><eq id="S3.T4.9.3.3.3.1.m1.1.1.1.cmml" xref="S3.T4.9.3.3.3.1.m1.1.1.1"></eq><ci id="S3.T4.9.3.3.3.1.m1.1.1.2.cmml" xref="S3.T4.9.3.3.3.1.m1.1.1.2">𝑛</ci><cn id="S3.T4.9.3.3.3.1.m1.1.1.3.cmml" type="integer" xref="S3.T4.9.3.3.3.1.m1.1.1.3">16</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T4.9.3.3.3.1.m1.1c">n=16</annotation><annotation encoding="application/x-llamapun" id="S3.T4.9.3.3.3.1.m1.1d">italic_n = 16</annotation></semantics></math></th>
<td class="ltx_td ltx_align_center" id="S3.T4.9.3.3.3.2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T4.9.3.3.3.2.1">54.7</span></td>
<td class="ltx_td ltx_align_center" id="S3.T4.9.3.3.3.3" style="padding-left:3.0pt;padding-right:3.0pt;">57.5</td>
</tr>
<tr class="ltx_tr" id="S3.T4.10.4.4.4">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S3.T4.10.4.4.4.1" style="padding-left:3.0pt;padding-right:3.0pt;"><math alttext="n=20" class="ltx_Math" display="inline" id="S3.T4.10.4.4.4.1.m1.1"><semantics id="S3.T4.10.4.4.4.1.m1.1a"><mrow id="S3.T4.10.4.4.4.1.m1.1.1" xref="S3.T4.10.4.4.4.1.m1.1.1.cmml"><mi id="S3.T4.10.4.4.4.1.m1.1.1.2" xref="S3.T4.10.4.4.4.1.m1.1.1.2.cmml">n</mi><mo id="S3.T4.10.4.4.4.1.m1.1.1.1" xref="S3.T4.10.4.4.4.1.m1.1.1.1.cmml">=</mo><mn id="S3.T4.10.4.4.4.1.m1.1.1.3" xref="S3.T4.10.4.4.4.1.m1.1.1.3.cmml">20</mn></mrow><annotation-xml encoding="MathML-Content" id="S3.T4.10.4.4.4.1.m1.1b"><apply id="S3.T4.10.4.4.4.1.m1.1.1.cmml" xref="S3.T4.10.4.4.4.1.m1.1.1"><eq id="S3.T4.10.4.4.4.1.m1.1.1.1.cmml" xref="S3.T4.10.4.4.4.1.m1.1.1.1"></eq><ci id="S3.T4.10.4.4.4.1.m1.1.1.2.cmml" xref="S3.T4.10.4.4.4.1.m1.1.1.2">𝑛</ci><cn id="S3.T4.10.4.4.4.1.m1.1.1.3.cmml" type="integer" xref="S3.T4.10.4.4.4.1.m1.1.1.3">20</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T4.10.4.4.4.1.m1.1c">n=20</annotation><annotation encoding="application/x-llamapun" id="S3.T4.10.4.4.4.1.m1.1d">italic_n = 20</annotation></semantics></math></th>
<td class="ltx_td ltx_align_center" id="S3.T4.10.4.4.4.2" style="padding-left:3.0pt;padding-right:3.0pt;">53.6</td>
<td class="ltx_td ltx_align_center" id="S3.T4.10.4.4.4.3" style="padding-left:3.0pt;padding-right:3.0pt;">57.3</td>
</tr>
<tr class="ltx_tr" id="S3.T4.11.5.5.5">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" id="S3.T4.11.5.5.5.1" style="padding-left:3.0pt;padding-right:3.0pt;"><math alttext="n_{1}=n_{2}=4" class="ltx_Math" display="inline" id="S3.T4.11.5.5.5.1.m1.1"><semantics id="S3.T4.11.5.5.5.1.m1.1a"><mrow id="S3.T4.11.5.5.5.1.m1.1.1" xref="S3.T4.11.5.5.5.1.m1.1.1.cmml"><msub id="S3.T4.11.5.5.5.1.m1.1.1.2" xref="S3.T4.11.5.5.5.1.m1.1.1.2.cmml"><mi id="S3.T4.11.5.5.5.1.m1.1.1.2.2" xref="S3.T4.11.5.5.5.1.m1.1.1.2.2.cmml">n</mi><mn id="S3.T4.11.5.5.5.1.m1.1.1.2.3" xref="S3.T4.11.5.5.5.1.m1.1.1.2.3.cmml">1</mn></msub><mo id="S3.T4.11.5.5.5.1.m1.1.1.3" xref="S3.T4.11.5.5.5.1.m1.1.1.3.cmml">=</mo><msub id="S3.T4.11.5.5.5.1.m1.1.1.4" xref="S3.T4.11.5.5.5.1.m1.1.1.4.cmml"><mi id="S3.T4.11.5.5.5.1.m1.1.1.4.2" xref="S3.T4.11.5.5.5.1.m1.1.1.4.2.cmml">n</mi><mn id="S3.T4.11.5.5.5.1.m1.1.1.4.3" xref="S3.T4.11.5.5.5.1.m1.1.1.4.3.cmml">2</mn></msub><mo id="S3.T4.11.5.5.5.1.m1.1.1.5" xref="S3.T4.11.5.5.5.1.m1.1.1.5.cmml">=</mo><mn id="S3.T4.11.5.5.5.1.m1.1.1.6" xref="S3.T4.11.5.5.5.1.m1.1.1.6.cmml">4</mn></mrow><annotation-xml encoding="MathML-Content" id="S3.T4.11.5.5.5.1.m1.1b"><apply id="S3.T4.11.5.5.5.1.m1.1.1.cmml" xref="S3.T4.11.5.5.5.1.m1.1.1"><and id="S3.T4.11.5.5.5.1.m1.1.1a.cmml" xref="S3.T4.11.5.5.5.1.m1.1.1"></and><apply id="S3.T4.11.5.5.5.1.m1.1.1b.cmml" xref="S3.T4.11.5.5.5.1.m1.1.1"><eq id="S3.T4.11.5.5.5.1.m1.1.1.3.cmml" xref="S3.T4.11.5.5.5.1.m1.1.1.3"></eq><apply id="S3.T4.11.5.5.5.1.m1.1.1.2.cmml" xref="S3.T4.11.5.5.5.1.m1.1.1.2"><csymbol cd="ambiguous" id="S3.T4.11.5.5.5.1.m1.1.1.2.1.cmml" xref="S3.T4.11.5.5.5.1.m1.1.1.2">subscript</csymbol><ci id="S3.T4.11.5.5.5.1.m1.1.1.2.2.cmml" xref="S3.T4.11.5.5.5.1.m1.1.1.2.2">𝑛</ci><cn id="S3.T4.11.5.5.5.1.m1.1.1.2.3.cmml" type="integer" xref="S3.T4.11.5.5.5.1.m1.1.1.2.3">1</cn></apply><apply id="S3.T4.11.5.5.5.1.m1.1.1.4.cmml" xref="S3.T4.11.5.5.5.1.m1.1.1.4"><csymbol cd="ambiguous" id="S3.T4.11.5.5.5.1.m1.1.1.4.1.cmml" xref="S3.T4.11.5.5.5.1.m1.1.1.4">subscript</csymbol><ci id="S3.T4.11.5.5.5.1.m1.1.1.4.2.cmml" xref="S3.T4.11.5.5.5.1.m1.1.1.4.2">𝑛</ci><cn id="S3.T4.11.5.5.5.1.m1.1.1.4.3.cmml" type="integer" xref="S3.T4.11.5.5.5.1.m1.1.1.4.3">2</cn></apply></apply><apply id="S3.T4.11.5.5.5.1.m1.1.1c.cmml" xref="S3.T4.11.5.5.5.1.m1.1.1"><eq id="S3.T4.11.5.5.5.1.m1.1.1.5.cmml" xref="S3.T4.11.5.5.5.1.m1.1.1.5"></eq><share href="https://arxiv.org/html/2504.13055v1#S3.T4.11.5.5.5.1.m1.1.1.4.cmml" id="S3.T4.11.5.5.5.1.m1.1.1d.cmml" xref="S3.T4.11.5.5.5.1.m1.1.1"></share><cn id="S3.T4.11.5.5.5.1.m1.1.1.6.cmml" type="integer" xref="S3.T4.11.5.5.5.1.m1.1.1.6">4</cn></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T4.11.5.5.5.1.m1.1c">n_{1}=n_{2}=4</annotation><annotation encoding="application/x-llamapun" id="S3.T4.11.5.5.5.1.m1.1d">italic_n start_POSTSUBSCRIPT 1 end_POSTSUBSCRIPT = italic_n start_POSTSUBSCRIPT 2 end_POSTSUBSCRIPT = 4</annotation></semantics></math></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T4.11.5.5.5.2" style="padding-left:3.0pt;padding-right:3.0pt;">51.7</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T4.11.5.5.5.3" style="padding-left:3.0pt;padding-right:3.0pt;">58.3</td>
</tr>
<tr class="ltx_tr" id="S3.T4.12.6.6.6">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S3.T4.12.6.6.6.1" style="padding-left:3.0pt;padding-right:3.0pt;"><math alttext="n_{1}=n_{2}=6" class="ltx_Math" display="inline" id="S3.T4.12.6.6.6.1.m1.1"><semantics id="S3.T4.12.6.6.6.1.m1.1a"><mrow id="S3.T4.12.6.6.6.1.m1.1.1" xref="S3.T4.12.6.6.6.1.m1.1.1.cmml"><msub id="S3.T4.12.6.6.6.1.m1.1.1.2" xref="S3.T4.12.6.6.6.1.m1.1.1.2.cmml"><mi id="S3.T4.12.6.6.6.1.m1.1.1.2.2" xref="S3.T4.12.6.6.6.1.m1.1.1.2.2.cmml">n</mi><mn id="S3.T4.12.6.6.6.1.m1.1.1.2.3" xref="S3.T4.12.6.6.6.1.m1.1.1.2.3.cmml">1</mn></msub><mo id="S3.T4.12.6.6.6.1.m1.1.1.3" xref="S3.T4.12.6.6.6.1.m1.1.1.3.cmml">=</mo><msub id="S3.T4.12.6.6.6.1.m1.1.1.4" xref="S3.T4.12.6.6.6.1.m1.1.1.4.cmml"><mi id="S3.T4.12.6.6.6.1.m1.1.1.4.2" xref="S3.T4.12.6.6.6.1.m1.1.1.4.2.cmml">n</mi><mn id="S3.T4.12.6.6.6.1.m1.1.1.4.3" xref="S3.T4.12.6.6.6.1.m1.1.1.4.3.cmml">2</mn></msub><mo id="S3.T4.12.6.6.6.1.m1.1.1.5" xref="S3.T4.12.6.6.6.1.m1.1.1.5.cmml">=</mo><mn id="S3.T4.12.6.6.6.1.m1.1.1.6" xref="S3.T4.12.6.6.6.1.m1.1.1.6.cmml">6</mn></mrow><annotation-xml encoding="MathML-Content" id="S3.T4.12.6.6.6.1.m1.1b"><apply id="S3.T4.12.6.6.6.1.m1.1.1.cmml" xref="S3.T4.12.6.6.6.1.m1.1.1"><and id="S3.T4.12.6.6.6.1.m1.1.1a.cmml" xref="S3.T4.12.6.6.6.1.m1.1.1"></and><apply id="S3.T4.12.6.6.6.1.m1.1.1b.cmml" xref="S3.T4.12.6.6.6.1.m1.1.1"><eq id="S3.T4.12.6.6.6.1.m1.1.1.3.cmml" xref="S3.T4.12.6.6.6.1.m1.1.1.3"></eq><apply id="S3.T4.12.6.6.6.1.m1.1.1.2.cmml" xref="S3.T4.12.6.6.6.1.m1.1.1.2"><csymbol cd="ambiguous" id="S3.T4.12.6.6.6.1.m1.1.1.2.1.cmml" xref="S3.T4.12.6.6.6.1.m1.1.1.2">subscript</csymbol><ci id="S3.T4.12.6.6.6.1.m1.1.1.2.2.cmml" xref="S3.T4.12.6.6.6.1.m1.1.1.2.2">𝑛</ci><cn id="S3.T4.12.6.6.6.1.m1.1.1.2.3.cmml" type="integer" xref="S3.T4.12.6.6.6.1.m1.1.1.2.3">1</cn></apply><apply id="S3.T4.12.6.6.6.1.m1.1.1.4.cmml" xref="S3.T4.12.6.6.6.1.m1.1.1.4"><csymbol cd="ambiguous" id="S3.T4.12.6.6.6.1.m1.1.1.4.1.cmml" xref="S3.T4.12.6.6.6.1.m1.1.1.4">subscript</csymbol><ci id="S3.T4.12.6.6.6.1.m1.1.1.4.2.cmml" xref="S3.T4.12.6.6.6.1.m1.1.1.4.2">𝑛</ci><cn id="S3.T4.12.6.6.6.1.m1.1.1.4.3.cmml" type="integer" xref="S3.T4.12.6.6.6.1.m1.1.1.4.3">2</cn></apply></apply><apply id="S3.T4.12.6.6.6.1.m1.1.1c.cmml" xref="S3.T4.12.6.6.6.1.m1.1.1"><eq id="S3.T4.12.6.6.6.1.m1.1.1.5.cmml" xref="S3.T4.12.6.6.6.1.m1.1.1.5"></eq><share href="https://arxiv.org/html/2504.13055v1#S3.T4.12.6.6.6.1.m1.1.1.4.cmml" id="S3.T4.12.6.6.6.1.m1.1.1d.cmml" xref="S3.T4.12.6.6.6.1.m1.1.1"></share><cn id="S3.T4.12.6.6.6.1.m1.1.1.6.cmml" type="integer" xref="S3.T4.12.6.6.6.1.m1.1.1.6">6</cn></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T4.12.6.6.6.1.m1.1c">n_{1}=n_{2}=6</annotation><annotation encoding="application/x-llamapun" id="S3.T4.12.6.6.6.1.m1.1d">italic_n start_POSTSUBSCRIPT 1 end_POSTSUBSCRIPT = italic_n start_POSTSUBSCRIPT 2 end_POSTSUBSCRIPT = 6</annotation></semantics></math></th>
<td class="ltx_td ltx_align_center" id="S3.T4.12.6.6.6.2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T4.12.6.6.6.2.1">54.9</span></td>
<td class="ltx_td ltx_align_center" id="S3.T4.12.6.6.6.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T4.12.6.6.6.3.1">59.2</span></td>
</tr>
<tr class="ltx_tr" id="S3.T4.13.7.7.7">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_bb" id="S3.T4.13.7.7.7.1" style="padding-left:3.0pt;padding-right:3.0pt;"><math alttext="n_{1}=n_{2}=8" class="ltx_Math" display="inline" id="S3.T4.13.7.7.7.1.m1.1"><semantics id="S3.T4.13.7.7.7.1.m1.1a"><mrow id="S3.T4.13.7.7.7.1.m1.1.1" xref="S3.T4.13.7.7.7.1.m1.1.1.cmml"><msub id="S3.T4.13.7.7.7.1.m1.1.1.2" xref="S3.T4.13.7.7.7.1.m1.1.1.2.cmml"><mi id="S3.T4.13.7.7.7.1.m1.1.1.2.2" xref="S3.T4.13.7.7.7.1.m1.1.1.2.2.cmml">n</mi><mn id="S3.T4.13.7.7.7.1.m1.1.1.2.3" xref="S3.T4.13.7.7.7.1.m1.1.1.2.3.cmml">1</mn></msub><mo id="S3.T4.13.7.7.7.1.m1.1.1.3" xref="S3.T4.13.7.7.7.1.m1.1.1.3.cmml">=</mo><msub id="S3.T4.13.7.7.7.1.m1.1.1.4" xref="S3.T4.13.7.7.7.1.m1.1.1.4.cmml"><mi id="S3.T4.13.7.7.7.1.m1.1.1.4.2" xref="S3.T4.13.7.7.7.1.m1.1.1.4.2.cmml">n</mi><mn id="S3.T4.13.7.7.7.1.m1.1.1.4.3" xref="S3.T4.13.7.7.7.1.m1.1.1.4.3.cmml">2</mn></msub><mo id="S3.T4.13.7.7.7.1.m1.1.1.5" xref="S3.T4.13.7.7.7.1.m1.1.1.5.cmml">=</mo><mn id="S3.T4.13.7.7.7.1.m1.1.1.6" xref="S3.T4.13.7.7.7.1.m1.1.1.6.cmml">8</mn></mrow><annotation-xml encoding="MathML-Content" id="S3.T4.13.7.7.7.1.m1.1b"><apply id="S3.T4.13.7.7.7.1.m1.1.1.cmml" xref="S3.T4.13.7.7.7.1.m1.1.1"><and id="S3.T4.13.7.7.7.1.m1.1.1a.cmml" xref="S3.T4.13.7.7.7.1.m1.1.1"></and><apply id="S3.T4.13.7.7.7.1.m1.1.1b.cmml" xref="S3.T4.13.7.7.7.1.m1.1.1"><eq id="S3.T4.13.7.7.7.1.m1.1.1.3.cmml" xref="S3.T4.13.7.7.7.1.m1.1.1.3"></eq><apply id="S3.T4.13.7.7.7.1.m1.1.1.2.cmml" xref="S3.T4.13.7.7.7.1.m1.1.1.2"><csymbol cd="ambiguous" id="S3.T4.13.7.7.7.1.m1.1.1.2.1.cmml" xref="S3.T4.13.7.7.7.1.m1.1.1.2">subscript</csymbol><ci id="S3.T4.13.7.7.7.1.m1.1.1.2.2.cmml" xref="S3.T4.13.7.7.7.1.m1.1.1.2.2">𝑛</ci><cn id="S3.T4.13.7.7.7.1.m1.1.1.2.3.cmml" type="integer" xref="S3.T4.13.7.7.7.1.m1.1.1.2.3">1</cn></apply><apply id="S3.T4.13.7.7.7.1.m1.1.1.4.cmml" xref="S3.T4.13.7.7.7.1.m1.1.1.4"><csymbol cd="ambiguous" id="S3.T4.13.7.7.7.1.m1.1.1.4.1.cmml" xref="S3.T4.13.7.7.7.1.m1.1.1.4">subscript</csymbol><ci id="S3.T4.13.7.7.7.1.m1.1.1.4.2.cmml" xref="S3.T4.13.7.7.7.1.m1.1.1.4.2">𝑛</ci><cn id="S3.T4.13.7.7.7.1.m1.1.1.4.3.cmml" type="integer" xref="S3.T4.13.7.7.7.1.m1.1.1.4.3">2</cn></apply></apply><apply id="S3.T4.13.7.7.7.1.m1.1.1c.cmml" xref="S3.T4.13.7.7.7.1.m1.1.1"><eq id="S3.T4.13.7.7.7.1.m1.1.1.5.cmml" xref="S3.T4.13.7.7.7.1.m1.1.1.5"></eq><share href="https://arxiv.org/html/2504.13055v1#S3.T4.13.7.7.7.1.m1.1.1.4.cmml" id="S3.T4.13.7.7.7.1.m1.1.1d.cmml" xref="S3.T4.13.7.7.7.1.m1.1.1"></share><cn id="S3.T4.13.7.7.7.1.m1.1.1.6.cmml" type="integer" xref="S3.T4.13.7.7.7.1.m1.1.1.6">8</cn></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T4.13.7.7.7.1.m1.1c">n_{1}=n_{2}=8</annotation><annotation encoding="application/x-llamapun" id="S3.T4.13.7.7.7.1.m1.1d">italic_n start_POSTSUBSCRIPT 1 end_POSTSUBSCRIPT = italic_n start_POSTSUBSCRIPT 2 end_POSTSUBSCRIPT = 8</annotation></semantics></math></th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T4.13.7.7.7.2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T4.13.7.7.7.2.1">54.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T4.13.7.7.7.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T4.13.7.7.7.3.1">58.6</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents an ablation study on the impact of the noise annealing strategy used in the NoisyRollout method.  It compares the performance of NoisyRollout with and without noise annealing, as well as against a vanilla GRPO baseline. The results are shown in terms of the average accuracy across six out-of-domain benchmarks and in-domain Geometry3K dataset.
> <details>
> <summary>read the caption</summary>
> Table 5: Ablation study on the noise annealing strategy.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S3.T4.20.7.7">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S3.T4.20.7.7.8.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S3.T4.20.7.7.8.1.1" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T4.20.7.7.8.1.1.1">Noise Step</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T4.20.7.7.8.1.2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T4.20.7.7.8.1.2.1">Geometry3K</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T4.20.7.7.8.1.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T4.20.7.7.8.1.3.1">OOD Avg.</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S3.T4.14.1.1.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" id="S3.T4.14.1.1.1.1" style="padding-left:3.0pt;padding-right:3.0pt;"><math alttext="0" class="ltx_Math" display="inline" id="S3.T4.14.1.1.1.1.m1.1"><semantics id="S3.T4.14.1.1.1.1.m1.1a"><mn id="S3.T4.14.1.1.1.1.m1.1.1" xref="S3.T4.14.1.1.1.1.m1.1.1.cmml">0</mn><annotation-xml encoding="MathML-Content" id="S3.T4.14.1.1.1.1.m1.1b"><cn id="S3.T4.14.1.1.1.1.m1.1.1.cmml" type="integer" xref="S3.T4.14.1.1.1.1.m1.1.1">0</cn></annotation-xml></semantics></math></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T4.14.1.1.1.2" style="padding-left:3.0pt;padding-right:3.0pt;">51.4</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T4.14.1.1.1.3" style="padding-left:3.0pt;padding-right:3.0pt;">57.2</td>
</tr>
<tr class="ltx_tr" id="S3.T4.15.2.2.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S3.T4.15.2.2.2.1" style="padding-left:3.0pt;padding-right:3.0pt;"><math alttext="100" class="ltx_Math" display="inline" id="S3.T4.15.2.2.2.1.m1.1"><semantics id="S3.T4.15.2.2.2.1.m1.1a"><mn id="S3.T4.15.2.2.2.1.m1.1.1" xref="S3.T4.15.2.2.2.1.m1.1.1.cmml">100</mn><annotation-xml encoding="MathML-Content" id="S3.T4.15.2.2.2.1.m1.1b"><cn id="S3.T4.15.2.2.2.1.m1.1.1.cmml" type="integer" xref="S3.T4.15.2.2.2.1.m1.1.1">100</cn></annotation-xml><annotation encoding="application/x-tex" id="S3.T4.15.2.2.2.1.m1.1c">100</annotation><annotation encoding="application/x-llamapun" id="S3.T4.15.2.2.2.1.m1.1d">100</annotation></semantics></math></th>
<td class="ltx_td ltx_align_center" id="S3.T4.15.2.2.2.2" style="padding-left:3.0pt;padding-right:3.0pt;">52.7</td>
<td class="ltx_td ltx_align_center" id="S3.T4.15.2.2.2.3" style="padding-left:3.0pt;padding-right:3.0pt;">57.4</td>
</tr>
<tr class="ltx_tr" id="S3.T4.16.3.3.3">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S3.T4.16.3.3.3.1" style="padding-left:3.0pt;padding-right:3.0pt;"><math alttext="300" class="ltx_Math" display="inline" id="S3.T4.16.3.3.3.1.m1.1"><semantics id="S3.T4.16.3.3.3.1.m1.1a"><mn id="S3.T4.16.3.3.3.1.m1.1.1" xref="S3.T4.16.3.3.3.1.m1.1.1.cmml">300</mn><annotation-xml encoding="MathML-Content" id="S3.T4.16.3.3.3.1.m1.1b"><cn id="S3.T4.16.3.3.3.1.m1.1.1.cmml" type="integer" xref="S3.T4.16.3.3.3.1.m1.1.1">300</cn></annotation-xml><annotation encoding="application/x-tex" id="S3.T4.16.3.3.3.1.m1.1c">300</annotation><annotation encoding="application/x-llamapun" id="S3.T4.16.3.3.3.1.m1.1d">300</annotation></semantics></math></th>
<td class="ltx_td ltx_align_center" id="S3.T4.16.3.3.3.2" style="padding-left:3.0pt;padding-right:3.0pt;">53.4</td>
<td class="ltx_td ltx_align_center" id="S3.T4.16.3.3.3.3" style="padding-left:3.0pt;padding-right:3.0pt;">57.7</td>
</tr>
<tr class="ltx_tr" id="S3.T4.17.4.4.4">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S3.T4.17.4.4.4.1" style="padding-left:3.0pt;padding-right:3.0pt;"><math alttext="400" class="ltx_Math" display="inline" id="S3.T4.17.4.4.4.1.m1.1"><semantics id="S3.T4.17.4.4.4.1.m1.1a"><mn id="S3.T4.17.4.4.4.1.m1.1.1" xref="S3.T4.17.4.4.4.1.m1.1.1.cmml">400</mn><annotation-xml encoding="MathML-Content" id="S3.T4.17.4.4.4.1.m1.1b"><cn id="S3.T4.17.4.4.4.1.m1.1.1.cmml" type="integer" xref="S3.T4.17.4.4.4.1.m1.1.1">400</cn></annotation-xml><annotation encoding="application/x-tex" id="S3.T4.17.4.4.4.1.m1.1c">400</annotation><annotation encoding="application/x-llamapun" id="S3.T4.17.4.4.4.1.m1.1d">400</annotation></semantics></math></th>
<td class="ltx_td ltx_align_center" id="S3.T4.17.4.4.4.2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T4.17.4.4.4.2.1">54.6</span></td>
<td class="ltx_td ltx_align_center" id="S3.T4.17.4.4.4.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T4.17.4.4.4.3.1">58.1</span></td>
</tr>
<tr class="ltx_tr" id="S3.T4.18.5.5.5">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S3.T4.18.5.5.5.1" style="padding-left:3.0pt;padding-right:3.0pt;"><math alttext="500" class="ltx_Math" display="inline" id="S3.T4.18.5.5.5.1.m1.1"><semantics id="S3.T4.18.5.5.5.1.m1.1a"><mn id="S3.T4.18.5.5.5.1.m1.1.1" xref="S3.T4.18.5.5.5.1.m1.1.1.cmml">500</mn><annotation-xml encoding="MathML-Content" id="S3.T4.18.5.5.5.1.m1.1b"><cn id="S3.T4.18.5.5.5.1.m1.1.1.cmml" type="integer" xref="S3.T4.18.5.5.5.1.m1.1.1">500</cn></annotation-xml><annotation encoding="application/x-tex" id="S3.T4.18.5.5.5.1.m1.1c">500</annotation><annotation encoding="application/x-llamapun" id="S3.T4.18.5.5.5.1.m1.1d">500</annotation></semantics></math></th>
<td class="ltx_td ltx_align_center" id="S3.T4.18.5.5.5.2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T4.18.5.5.5.2.1">54.9</span></td>
<td class="ltx_td ltx_align_center" id="S3.T4.18.5.5.5.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T4.18.5.5.5.3.1">59.2</span></td>
</tr>
<tr class="ltx_tr" id="S3.T4.19.6.6.6">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S3.T4.19.6.6.6.1" style="padding-left:3.0pt;padding-right:3.0pt;"><math alttext="550" class="ltx_Math" display="inline" id="S3.T4.19.6.6.6.1.m1.1"><semantics id="S3.T4.19.6.6.6.1.m1.1a"><mn id="S3.T4.19.6.6.6.1.m1.1.1" xref="S3.T4.19.6.6.6.1.m1.1.1.cmml">550</mn><annotation-xml encoding="MathML-Content" id="S3.T4.19.6.6.6.1.m1.1b"><cn id="S3.T4.19.6.6.6.1.m1.1.1.cmml" type="integer" xref="S3.T4.19.6.6.6.1.m1.1.1">550</cn></annotation-xml><annotation encoding="application/x-tex" id="S3.T4.19.6.6.6.1.m1.1c">550</annotation><annotation encoding="application/x-llamapun" id="S3.T4.19.6.6.6.1.m1.1d">550</annotation></semantics></math></th>
<td class="ltx_td ltx_align_center" id="S3.T4.19.6.6.6.2" style="padding-left:3.0pt;padding-right:3.0pt;">39.6</td>
<td class="ltx_td ltx_align_center" id="S3.T4.19.6.6.6.3" style="padding-left:3.0pt;padding-right:3.0pt;">57.7</td>
</tr>
<tr class="ltx_tr" id="S3.T4.20.7.7.7">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_bb" id="S3.T4.20.7.7.7.1" style="padding-left:3.0pt;padding-right:3.0pt;"><math alttext="600" class="ltx_Math" display="inline" id="S3.T4.20.7.7.7.1.m1.1"><semantics id="S3.T4.20.7.7.7.1.m1.1a"><mn id="S3.T4.20.7.7.7.1.m1.1.1" xref="S3.T4.20.7.7.7.1.m1.1.1.cmml">600</mn><annotation-xml encoding="MathML-Content" id="S3.T4.20.7.7.7.1.m1.1b"><cn id="S3.T4.20.7.7.7.1.m1.1.1.cmml" type="integer" xref="S3.T4.20.7.7.7.1.m1.1.1">600</cn></annotation-xml><annotation encoding="application/x-tex" id="S3.T4.20.7.7.7.1.m1.1c">600</annotation><annotation encoding="application/x-llamapun" id="S3.T4.20.7.7.7.1.m1.1d">600</annotation></semantics></math></th>
<td class="ltx_td ltx_align_center ltx_border_bb" colspan="2" id="S3.T4.20.7.7.7.2" style="padding-left:3.0pt;padding-right:3.0pt;">Diverged</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This ablation study investigates the impact of different noise annealing strategies on the performance of the NoisyRollout method.  Three strategies are compared: sigmoid decay, power decay, and exponential decay. The results show the average accuracy across six visual reasoning benchmarks for each annealing strategy. The sigmoid decay function consistently outperforms the other two, highlighting its effectiveness in balancing exploration and stability during training.
> <details>
> <summary>read the caption</summary>
> Table 6: Ablation study on the strategies of noise annealing. “Avg.” denotes the average accuracy across all six visual reasoning benchmarks. Best value per column is bold, second best is underlined.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S3.T5.4.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S3.T5.4.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S3.T5.4.1.1.1.1" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T5.4.1.1.1.1.1">Method</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T5.4.1.1.1.2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T5.4.1.1.1.2.1">Geometry3K</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T5.4.1.1.1.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T5.4.1.1.1.3.1">OOD Avg.</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S3.T5.4.1.2.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S3.T5.4.1.2.1.1" style="padding-left:3.0pt;padding-right:3.0pt;">Qwen2.5-VL-7B-Instruct</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T5.4.1.2.1.2" style="padding-left:3.0pt;padding-right:3.0pt;">39.4</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T5.4.1.2.1.3" style="padding-left:3.0pt;padding-right:3.0pt;">53.3</td>
</tr>
<tr class="ltx_tr" id="S3.T5.4.1.3.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T5.4.1.3.2.1" style="padding-left:3.0pt;padding-right:3.0pt;">+ Vaninlla GRPO</th>
<td class="ltx_td ltx_align_center" id="S3.T5.4.1.3.2.2" style="padding-left:3.0pt;padding-right:3.0pt;">51.4</td>
<td class="ltx_td ltx_align_center" id="S3.T5.4.1.3.2.3" style="padding-left:3.0pt;padding-right:3.0pt;">57.2</td>
</tr>
<tr class="ltx_tr" id="S3.T5.4.1.4.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T5.4.1.4.3.1" style="padding-left:3.0pt;padding-right:3.0pt;">+ <span class="ltx_text" id="S3.T5.4.1.4.3.1.1">NoisyRollout</span> w.o. Noise Annealing</th>
<td class="ltx_td ltx_align_center" id="S3.T5.4.1.4.3.2" style="padding-left:3.0pt;padding-right:3.0pt;">43.9</td>
<td class="ltx_td ltx_align_center" id="S3.T5.4.1.4.3.3" style="padding-left:3.0pt;padding-right:3.0pt;">58.0</td>
</tr>
<tr class="ltx_tr" id="S3.T5.4.1.5.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S3.T5.4.1.5.4.1" style="padding-left:3.0pt;padding-right:3.0pt;">+ <span class="ltx_text" id="S3.T5.4.1.5.4.1.1">NoisyRollout</span>
</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T5.4.1.5.4.2" style="padding-left:3.0pt;padding-right:3.0pt;">54.9</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T5.4.1.5.4.3" style="padding-left:3.0pt;padding-right:3.0pt;">59.2</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a comparison of the performance of NoisyRollout and vanilla GRPO across three different random seeds used for data sampling during training on the Geometry3K dataset.  It demonstrates the robustness of NoisyRollout's performance improvements over vanilla GRPO, showing that these improvements are not simply due to a specific data ordering or subset selection, but rather are consistent across different random initializations. The table includes the accuracy scores on six benchmarks (Geometry3K, MathVerse, MathVision, MathVista, WeMath, and HallusionBench), along with the average across all six for each model and seed.
> <details>
> <summary>read the caption</summary>
> Table 7: Performance comparision of NoisyRollout and vanilla GRPO across different data seeds. “Avg.” denotes the average accuracy across all six benchmarks.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="A1.T6.6.1">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A1.T6.6.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_tt" id="A1.T6.6.1.1.1.1" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="A1.T6.6.1.1.1.1.1">Method</span></th>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A1.T6.6.1.1.1.2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="A1.T6.6.1.1.1.2.1">Geo3K</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A1.T6.6.1.1.1.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="A1.T6.6.1.1.1.3.1">MathVerse</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A1.T6.6.1.1.1.4" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="A1.T6.6.1.1.1.4.1">MathVision</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A1.T6.6.1.1.1.5" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="A1.T6.6.1.1.1.5.1">MathVista</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A1.T6.6.1.1.1.6" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="A1.T6.6.1.1.1.6.1">WeMath</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="A1.T6.6.1.1.1.7" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="A1.T6.6.1.1.1.7.1">HalluBench</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A1.T6.6.1.1.1.8" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="A1.T6.6.1.1.1.8.1">Avg.</span></td>
</tr>
<tr class="ltx_tr" id="A1.T6.6.1.2.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="A1.T6.6.1.2.2.1" style="padding-left:3.0pt;padding-right:3.0pt;">Qwen2.5-VL-7B-Instruct</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T6.6.1.2.2.2" style="padding-left:3.0pt;padding-right:3.0pt;">39.4</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T6.6.1.2.2.3" style="padding-left:3.0pt;padding-right:3.0pt;">46.2</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T6.6.1.2.2.4" style="padding-left:3.0pt;padding-right:3.0pt;">25.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T6.6.1.2.2.5" style="padding-left:3.0pt;padding-right:3.0pt;">67.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T6.6.1.2.2.6" style="padding-left:3.0pt;padding-right:3.0pt;">63.1</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A1.T6.6.1.2.2.7" style="padding-left:3.0pt;padding-right:3.0pt;">64.6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T6.6.1.2.2.8" style="padding-left:3.0pt;padding-right:3.0pt;">51.0</td>
</tr>
<tr class="ltx_tr" id="A1.T6.6.1.3.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A1.T6.6.1.3.3.1" style="padding-left:3.0pt;padding-right:3.0pt;">+ GRPO</th>
<td class="ltx_td ltx_align_center" id="A1.T6.6.1.3.3.2" style="padding-left:3.0pt;padding-right:3.0pt;">52.0</td>
<td class="ltx_td ltx_align_center" id="A1.T6.6.1.3.3.3" style="padding-left:3.0pt;padding-right:3.0pt;">50.8</td>
<td class="ltx_td ltx_align_center" id="A1.T6.6.1.3.3.4" style="padding-left:3.0pt;padding-right:3.0pt;">27.3</td>
<td class="ltx_td ltx_align_center" id="A1.T6.6.1.3.3.5" style="padding-left:3.0pt;padding-right:3.0pt;">70.5</td>
<td class="ltx_td ltx_align_center" id="A1.T6.6.1.3.3.6" style="padding-left:3.0pt;padding-right:3.0pt;">67.4</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T6.6.1.3.3.7" style="padding-left:3.0pt;padding-right:3.0pt;">69.8</td>
<td class="ltx_td ltx_align_center" id="A1.T6.6.1.3.3.8" style="padding-left:3.0pt;padding-right:3.0pt;">56.3</td>
</tr>
<tr class="ltx_tr" id="A1.T6.6.1.4.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="A1.T6.6.1.4.4.1" style="padding-left:3.0pt;padding-right:3.0pt;">+ <span class="ltx_text" id="A1.T6.6.1.4.4.1.1">NoisyRollout</span> (Power)</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T6.6.1.4.4.2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="A1.T6.6.1.4.4.2.1">52.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T6.6.1.4.4.3" style="padding-left:3.0pt;padding-right:3.0pt;">52.1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T6.6.1.4.4.4" style="padding-left:3.0pt;padding-right:3.0pt;">26.4</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T6.6.1.4.4.5" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="A1.T6.6.1.4.4.5.1">72.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T6.6.1.4.4.6" style="padding-left:3.0pt;padding-right:3.0pt;">68.7</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A1.T6.6.1.4.4.7" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="A1.T6.6.1.4.4.7.1">71.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T6.6.1.4.4.8" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="A1.T6.6.1.4.4.8.1">57.1</span></td>
</tr>
<tr class="ltx_tr" id="A1.T6.6.1.5.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A1.T6.6.1.5.5.1" style="padding-left:3.0pt;padding-right:3.0pt;">+ <span class="ltx_text" id="A1.T6.6.1.5.5.1.1">NoisyRollout</span> (Exponential)</th>
<td class="ltx_td ltx_align_center" id="A1.T6.6.1.5.5.2" style="padding-left:3.0pt;padding-right:3.0pt;">51.9</td>
<td class="ltx_td ltx_align_center" id="A1.T6.6.1.5.5.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="A1.T6.6.1.5.5.3.1">52.6</span></td>
<td class="ltx_td ltx_align_center" id="A1.T6.6.1.5.5.4" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="A1.T6.6.1.5.5.4.1">27.7</span></td>
<td class="ltx_td ltx_align_center" id="A1.T6.6.1.5.5.5" style="padding-left:3.0pt;padding-right:3.0pt;">70.5</td>
<td class="ltx_td ltx_align_center" id="A1.T6.6.1.5.5.6" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="A1.T6.6.1.5.5.6.1">70.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T6.6.1.5.5.7" style="padding-left:3.0pt;padding-right:3.0pt;">69.1</td>
<td class="ltx_td ltx_align_center" id="A1.T6.6.1.5.5.8" style="padding-left:3.0pt;padding-right:3.0pt;">57.0</td>
</tr>
<tr class="ltx_tr" id="A1.T6.6.1.6.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_r" id="A1.T6.6.1.6.6.1" style="padding-left:3.0pt;padding-right:3.0pt;">+ <span class="ltx_text" id="A1.T6.6.1.6.6.1.1">NoisyRollout</span> (Sigmoid)</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T6.6.1.6.6.2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="A1.T6.6.1.6.6.2.1">54.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T6.6.1.6.6.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="A1.T6.6.1.6.6.3.1">53.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T6.6.1.6.6.4" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="A1.T6.6.1.6.6.4.1">28.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T6.6.1.6.6.5" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="A1.T6.6.1.6.6.5.1">72.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T6.6.1.6.6.6" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="A1.T6.6.1.6.6.6.1">69.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="A1.T6.6.1.6.6.7" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="A1.T6.6.1.6.6.7.1">72.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T6.6.1.6.6.8" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="A1.T6.6.1.6.6.8.1">58.6</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the performance of the NoisyRollout model on the K12 dataset.  It shows how the model's accuracy across six benchmarks changes with different levels of image distortion introduced during training.  The 'Avg' column shows the average accuracy across all six benchmarks for each distortion level.
> <details>
> <summary>read the caption</summary>
> Table 8: Performance of NoisyRollout on the K12 dataset across different distortion levels. “Avg.” denotes the average accuracy across all six benchmarks
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2504.13055/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.13055/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.13055/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.13055/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.13055/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.13055/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.13055/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.13055/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.13055/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.13055/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.13055/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.13055/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.13055/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.13055/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.13055/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.13055/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.13055/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.13055/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}