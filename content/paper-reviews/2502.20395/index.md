---
title: "R2-T2: Re-Routing in Test-Time for Multimodal Mixture-of-Experts"
summary: "R2-T2: Boost multimodal MoE performance by re-routing experts in test-time, no retraining needed!"
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Multimodal Learning", "Multimodal Reasoning", "🏢 Johns Hopkins University",]
showSummary: true
date: 2025-02-27
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2502.20395 {{< /keyword >}}
{{< keyword icon="writer" >}} Zhongyang Li et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-02-28 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2502.20395" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2502.20395" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2502.20395/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

**Large Multimodal Models (LMMs) often underperform due to limitations in perceiving non-language modalities.** Recent efforts mitigate this by using Mixture-of-Experts (MoE) to provide diverse representations. However, the router, which mixes experts, can be suboptimal for test samples, hindering performance. This paper addresses this issue by improving routing weights during test time. 



The authors propose "Re-Routing in Test-Time (R2-T2)", a method that optimizes routing weights locally. **R2-T2 enhances performance by locally optimizing routing weights towards those of correctly predicted neighboring samples**. They introduce three R2-T2 strategies with different optimization objectives, consistently improving LMM performance without training base-model parameters.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} R2-T2 enhances LMM performance by optimizing routing weights in test-time. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} The study introduces three effective R2-T2 strategies for expert re-routing. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} R2-T2 significantly improves performance on challenging multimodal benchmarks. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This work introduces a **novel test-time adaptation method, R2-T2, for multimodal MoE models, improving performance without retraining**. This approach tackles the critical issue of routing optimization, offering a new direction for enhancing LMMs' adaptability and robustness across diverse tasks, potentially unlocking greater generalization capabilities.

------
#### Visual Insights



![](https://arxiv.org/html/2502.20395/extracted/6189153/fig/radar.png)

> 🔼 This figure displays a comparison of the performance of the R2-T2 method applied to the MoAI-7B model against various other Vision-Language Models (VLMs) with different parameter sizes (7B, 8B, and 13B) across nine benchmark datasets.  The bar chart visually represents the improvement in performance achieved by R2-T2 on each benchmark.  The key finding is that R2-T2 substantially improves the performance of the smaller 7B MoE model, even surpassing the performance of a larger 13B VLM in some cases. This demonstrates the effectiveness of R2-T2 in enhancing the capabilities of multimodal Mixture-of-Experts models.
> <details>
> <summary>read the caption</summary>
> Figure 1: R2-T2 applied to MoAI-7B compared against 7/8/13B VLMs on 9 benchmarks. R2-T2 significantly enhances performance of the 7B base MoE model, surpassing a recent 13B VLM.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S3.T1.1.1">
<tr class="ltx_tr" id="S3.T1.1.1.1">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_tt" id="S3.T1.1.1.1.1"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.1.1.1">Task Type</span></td>
<td class="ltx_td ltx_align_left ltx_border_tt" id="S3.T1.1.1.1.2"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.1.2.1">Reference</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S3.T1.1.1.1.3"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.1.3.1">Size</span></td>
<td class="ltx_td ltx_align_left ltx_border_tt" id="S3.T1.1.1.1.4"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.1.4.1">Evaluation</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T1.1.1.1.5"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.1.5.1">Size</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.1.2">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S3.T1.1.1.2.1" rowspan="4"><span class="ltx_text" id="S3.T1.1.1.2.1.1"><span class="ltx_text" id="S3.T1.1.1.2.1.1.1"></span><span class="ltx_text" id="S3.T1.1.1.2.1.1.2">
<span class="ltx_tabular ltx_align_middle" id="S3.T1.1.1.2.1.1.2.1">
<span class="ltx_tr" id="S3.T1.1.1.2.1.1.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_left" id="S3.T1.1.1.2.1.1.2.1.1.1">General</span></span>
<span class="ltx_tr" id="S3.T1.1.1.2.1.1.2.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_left" id="S3.T1.1.1.2.1.1.2.1.2.1">Visual</span></span>
<span class="ltx_tr" id="S3.T1.1.1.2.1.1.2.1.3">
<span class="ltx_td ltx_nopad_r ltx_align_left" id="S3.T1.1.1.2.1.1.2.1.3.1">Understanding</span></span>
</span></span> <span class="ltx_text" id="S3.T1.1.1.2.1.1.3"></span></span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T1.1.1.2.2">VQA-V2</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T1.1.1.2.3">5,000</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T1.1.1.2.4">MMBench</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.2.5">2,374</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.1.3">
<td class="ltx_td ltx_align_left" id="S3.T1.1.1.3.1">Visual7W</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.1.1.3.2">5,000</td>
<td class="ltx_td ltx_align_left" id="S3.T1.1.1.3.3">MME-P</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.3.4">2,114</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.1.4">
<td class="ltx_td ltx_align_left" id="S3.T1.1.1.4.1">COCO-QA</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.1.1.4.2">5,000</td>
<td class="ltx_td ltx_align_left" id="S3.T1.1.1.4.3">CVBench<sup class="ltx_sup" id="S3.T1.1.1.4.3.1">2D/3D</sup>
</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.4.4">2,638</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.1.5">
<td class="ltx_td ltx_align_left" id="S3.T1.1.1.5.1">CLEVR</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.1.1.5.2">5,000</td>
<td class="ltx_td ltx_align_left" id="S3.T1.1.1.5.3">GQA</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.5.4">1,590</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.1.6">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S3.T1.1.1.6.1" rowspan="3"><span class="ltx_text" id="S3.T1.1.1.6.1.1"><span class="ltx_text" id="S3.T1.1.1.6.1.1.1"></span><span class="ltx_text" id="S3.T1.1.1.6.1.1.2">
<span class="ltx_tabular ltx_align_middle" id="S3.T1.1.1.6.1.1.2.1">
<span class="ltx_tr" id="S3.T1.1.1.6.1.1.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_left" id="S3.T1.1.1.6.1.1.2.1.1.1">Knowledge-</span></span>
<span class="ltx_tr" id="S3.T1.1.1.6.1.1.2.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_left" id="S3.T1.1.1.6.1.1.2.1.2.1">Based</span></span>
<span class="ltx_tr" id="S3.T1.1.1.6.1.1.2.1.3">
<span class="ltx_td ltx_nopad_r ltx_align_left" id="S3.T1.1.1.6.1.1.2.1.3.1">Reasoning</span></span>
</span></span> <span class="ltx_text" id="S3.T1.1.1.6.1.1.3"></span></span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T1.1.1.6.2">A-OKVQA</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T1.1.1.6.3">5,000</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T1.1.1.6.4">SQA-IMG</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.6.5">2,017</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.1.7">
<td class="ltx_td ltx_align_left" id="S3.T1.1.1.7.1">TQA</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.1.1.7.2">5,000</td>
<td class="ltx_td ltx_align_left" id="S3.T1.1.1.7.3">AI2D</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.7.4">3,087</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.1.8">
<td class="ltx_td ltx_align_left" id="S3.T1.1.1.8.1">MathVista</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.1.1.8.2">5,000</td>
<td class="ltx_td ltx_align_left" id="S3.T1.1.1.8.3">PhysBench</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.8.4">2,093</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.1.9">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_r ltx_border_t" id="S3.T1.1.1.9.1" rowspan="2"><span class="ltx_text" id="S3.T1.1.1.9.1.1"><span class="ltx_text" id="S3.T1.1.1.9.1.1.1"></span><span class="ltx_text" id="S3.T1.1.1.9.1.1.2">
<span class="ltx_tabular ltx_align_middle" id="S3.T1.1.1.9.1.1.2.1">
<span class="ltx_tr" id="S3.T1.1.1.9.1.1.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_left" id="S3.T1.1.1.9.1.1.2.1.1.1">Optical Character</span></span>
<span class="ltx_tr" id="S3.T1.1.1.9.1.1.2.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_left" id="S3.T1.1.1.9.1.1.2.1.2.1">Recognition</span></span>
</span></span> <span class="ltx_text" id="S3.T1.1.1.9.1.1.3"></span></span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T1.1.1.9.2">ST-VQA</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T1.1.1.9.3">5,000</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T1.1.1.9.4">TextVQA</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.9.5">5,734</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.1.10">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S3.T1.1.1.10.1">DocVQA</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S3.T1.1.1.10.2">5,000</td>
<td class="ltx_td ltx_border_bb" id="S3.T1.1.1.10.3"></td>
<td class="ltx_td ltx_border_bb" id="S3.T1.1.1.10.4"></td>
</tr>
</table>{{< /table-caption >}}

> 🔼 This table presents a summary of the benchmark datasets used for evaluating the performance of multimodal mixture-of-experts models. It lists the dataset name, type of task, the number of samples in the reference set (limited to 5000 if the original set exceeds that number), and the number of samples in the corresponding evaluation set.
> <details>
> <summary>read the caption</summary>
> Table 1: Summary of reference and evaluation benchmarks. If the reference dataset contains more than 5,000 samples, we randomly select 5,000 to ensure balanced evaluation.
> </details>





### In-depth insights


#### MoE Router Gaps
While Mixture-of-Experts (MoE) models have shown remarkable success in various domains, a critical area for improvement lies in addressing the 'MoE Router Gaps.' These gaps refer to the **suboptimal routing decisions made by the router**, which can significantly impact the overall performance of the MoE. Ideally, the router should direct each input to the most relevant experts, ensuring efficient allocation of resources and optimal utilization of specialized knowledge. However, in practice, routers often struggle to make perfect decisions, leading to several potential issues. One key challenge is the **lack of sufficient training data or diversity in the training data**, which can result in the router being unable to generalize effectively to new or unseen inputs. Another issue is the **inherent complexity of the routing task itself**, as it requires the router to balance multiple factors such as input similarity, expert capacity, and load balancing considerations. Addressing these 'MoE Router Gaps' is essential for unlocking the full potential of MoE models and achieving state-of-the-art performance.

#### R2-T2: Re-Routing
**R2-T2: Re-Routing in Test-Time for Multimodal Mixture-of-Experts** introduces a novel approach to enhance the performance of large multimodal models (LMMs) by dynamically adjusting the routing weights of experts during inference. This addresses the challenge of **suboptimal expert selection** in existing MoE architectures, where the router, trained end-to-end, may not always produce the best routing weights for every test sample.  The core idea of R2-T2 is to leverage the routing weights of successful tasks to guide the re-routing process for new, potentially challenging, inputs. It posits that by identifying similar tasks in a reference set and adapting the routing weights based on their successful configurations, LMMs can achieve improved accuracy and generalization. The proposed method, **R2-T2**, optimizes the vector of routing weights in test-time by moving it toward those vectors of the correctly predicted samples. **Three key strategies** are explored: neighborhood gradient descent, kernel regression, and mode finding, each offering different optimization objectives and neighbor search spaces. A significant advantage is that R2-T2 is **training-free**, avoiding the need to re-train the entire model and thus conserving computational resources.

#### Gradient Descent
Gradient Descent is a **fundamental optimization algorithm** used to **minimize a function** by iteratively moving towards the **steepest descent direction**. In this paper, it is used to **optimize the routing weights of the model**. The gradient descent method uses the gradient of an objective function L(r) to update r for multiple steps until convergence or when certain stopping criteria have been fulfilled. The paper further introduces Oracle and Neighborhood Gradient Descent (NGD) which is a practical approach that uses the loss functions of the nearest neighbors of x in the reference set to estimate the gradient of r. By incorporating loss information from the neighborhood of x, NGD enables a label-free, test-time adaptation mechanism. This effectively aligns r with the successful routing patterns in the reference set and exploiting the routing for relevant reference examples **without requiring access to the oracle loss**.

#### Robust on MoVA/MoAI
It seems the study aims for **robustness in multimodal models**, specifically MoVA/MoAI. This suggests an investigation into how well these models perform under varying conditions, such as noisy data or out-of-distribution samples. The research likely explores methods to make these models more reliable and generalizable, which is vital for real-world applications. Key aspects may include **evaluating performance across diverse datasets**, analyzing failure cases, and implementing techniques to improve resilience. The study may delve into **data augmentation strategies**, regularization methods, or architecture modifications. Essentially, the goal is to ensure that MoVA/MoAI models consistently deliver accurate results, even when faced with unexpected or challenging inputs. Enhancing robustness improves the usability and trust in these models, promoting their adoption in various domains. This focus aligns with the broader trend of developing more dependable and adaptable AI systems.

#### LMM Expert Shifts
**Expert selection shifts within LMMs reveal nuanced adaptation strategies.** The initial router often over-relies on certain experts, like ILANG, hindering optimal performance. Re-routing mechanisms, like R2-T2, dynamically diversify expert utilization. Transitions toward experts such as LIMG, IAUX, and LAUX indicates improved reasoning and feature integration. These shifts rectify misalignments and enhance overall model adaptability. Balancing expert contributions leads to improved accuracy and more robust performance across diverse tasks, preventing excessive reliance on a single specialized module. R2-T2 mitigates the mobility imbalance of the base model with more evenly distributed expert decisions. Moreover, the transitions can vary. These dynamics reveal the power of adaptive expert routing in LMMs.


### More visual insights




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S4.T2.6.2">
<tr class="ltx_tr" id="S4.T2.6.2.2">
<td class="ltx_td ltx_align_left ltx_border_tt" id="S4.T2.6.2.2.3">Method</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.6.2.2.4"><span class="ltx_text ltx_font_bold" id="S4.T2.6.2.2.4.1">MMBench</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.6.2.2.5"><span class="ltx_text ltx_font_bold" id="S4.T2.6.2.2.5.1">MME-P</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.6.2.2.6"><span class="ltx_text ltx_font_bold" id="S4.T2.6.2.2.6.1">SQA-IMG</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.6.2.2.7"><span class="ltx_text ltx_font_bold" id="S4.T2.6.2.2.7.1">AI2D</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.6.2.2.8"><span class="ltx_text ltx_font_bold" id="S4.T2.6.2.2.8.1">TextVQA</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.6.2.2.9"><span class="ltx_text ltx_font_bold" id="S4.T2.6.2.2.9.1">GQA</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.5.1.1.1"><span class="ltx_text ltx_font_bold" id="S4.T2.5.1.1.1.1">CVBench<sup class="ltx_sup" id="S4.T2.5.1.1.1.1.1"><span class="ltx_text ltx_font_medium ltx_font_italic" id="S4.T2.5.1.1.1.1.1.1">2D</span></sup></span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.6.2.2.2"><span class="ltx_text ltx_font_bold" id="S4.T2.6.2.2.2.1">CVBench<sup class="ltx_sup" id="S4.T2.6.2.2.2.1.1"><span class="ltx_text ltx_font_medium ltx_font_italic" id="S4.T2.6.2.2.2.1.1.1">3D</span></sup></span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.6.2.2.10"><span class="ltx_text ltx_font_bold" id="S4.T2.6.2.2.10.1">PhysBench</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.6.2.3">
<td class="ltx_td ltx_align_left ltx_border_tt ltx_border_tt" id="S4.T2.6.2.3.1">MoVA (base model)</td>
<td class="ltx_td ltx_align_center ltx_border_tt ltx_border_tt" id="S4.T2.6.2.3.2">74.3</td>
<td class="ltx_td ltx_align_center ltx_border_tt ltx_border_tt" id="S4.T2.6.2.3.3">1579.2</td>
<td class="ltx_td ltx_align_center ltx_border_tt ltx_border_tt" id="S4.T2.6.2.3.4">74.4</td>
<td class="ltx_td ltx_align_center ltx_border_tt ltx_border_tt" id="S4.T2.6.2.3.5">74.9</td>
<td class="ltx_td ltx_align_center ltx_border_tt ltx_border_tt" id="S4.T2.6.2.3.6">76.4</td>
<td class="ltx_td ltx_align_center ltx_border_tt ltx_border_tt" id="S4.T2.6.2.3.7">64.8</td>
<td class="ltx_td ltx_align_center ltx_border_tt ltx_border_tt" id="S4.T2.6.2.3.8">61.6</td>
<td class="ltx_td ltx_align_center ltx_border_tt ltx_border_tt" id="S4.T2.6.2.3.9">62.3</td>
<td class="ltx_td ltx_align_center ltx_border_tt ltx_border_tt" id="S4.T2.6.2.3.10">32.6</td>
</tr>
<tr class="ltx_tr" id="S4.T2.6.2.4">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T2.6.2.4.1">Mode Finding</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.6.2.4.2">75.2</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.6.2.4.3">1587.1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.6.2.4.4">74.9</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.6.2.4.5">75.8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.6.2.4.6">77.3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.6.2.4.7">65.7</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.6.2.4.8">62.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.6.2.4.9">63.2</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.6.2.4.10">33.5</td>
</tr>
<tr class="ltx_tr" id="S4.T2.6.2.5">
<td class="ltx_td ltx_align_left" id="S4.T2.6.2.5.1">Kernel Regression</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.2.5.2">77.9</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.2.5.3">1610.6</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.2.5.4">76.4</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.2.5.5">78.5</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.2.5.6">79.9</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.2.5.7">68.3</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.2.5.8">65.2</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.2.5.9">65.9</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.2.5.10">35.7</td>
</tr>
<tr class="ltx_tr" id="S4.T2.6.2.6">
<td class="ltx_td ltx_align_left" id="S4.T2.6.2.6.1">NGD</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.2.6.2"><span class="ltx_text ltx_font_bold" id="S4.T2.6.2.6.2.1">81.2</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.2.6.3"><span class="ltx_text ltx_font_bold" id="S4.T2.6.2.6.3.1">1645.3</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.2.6.4"><span class="ltx_text ltx_font_bold" id="S4.T2.6.2.6.4.1">79.1</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.2.6.5"><span class="ltx_text ltx_font_bold" id="S4.T2.6.2.6.5.1">81.8</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.2.6.6"><span class="ltx_text ltx_font_bold" id="S4.T2.6.2.6.6.1">83.2</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.2.6.7"><span class="ltx_text ltx_font_bold" id="S4.T2.6.2.6.7.1">71.5</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.2.6.8"><span class="ltx_text ltx_font_bold" id="S4.T2.6.2.6.8.1">68.3</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.2.6.9"><span class="ltx_text ltx_font_bold" id="S4.T2.6.2.6.9.1">68.9</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.2.6.10"><span class="ltx_text ltx_font_bold" id="S4.T2.6.2.6.10.1">37.8</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.6.2.7">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T2.6.2.7.1">Oracle (upper bound)</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.6.2.7.2">87.6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.6.2.7.3">1735.4</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.6.2.7.4">87.3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.6.2.7.5">88.4</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.6.2.7.6">89.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.6.2.7.7">76.2</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.6.2.7.8">72.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.6.2.7.9">73.2</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.6.2.7.10">47.5</td>
</tr>
<tr class="ltx_tr" id="S4.T2.6.2.8">
<td class="ltx_td ltx_align_left ltx_border_tt ltx_border_tt" id="S4.T2.6.2.8.1">MoAI (base model)</td>
<td class="ltx_td ltx_align_center ltx_border_tt ltx_border_tt" id="S4.T2.6.2.8.2">79.3</td>
<td class="ltx_td ltx_align_center ltx_border_tt ltx_border_tt" id="S4.T2.6.2.8.3">1714.0</td>
<td class="ltx_td ltx_align_center ltx_border_tt ltx_border_tt" id="S4.T2.6.2.8.4">83.5</td>
<td class="ltx_td ltx_align_center ltx_border_tt ltx_border_tt" id="S4.T2.6.2.8.5">78.6</td>
<td class="ltx_td ltx_align_center ltx_border_tt ltx_border_tt" id="S4.T2.6.2.8.6">67.8</td>
<td class="ltx_td ltx_align_center ltx_border_tt ltx_border_tt" id="S4.T2.6.2.8.7">70.2</td>
<td class="ltx_td ltx_align_center ltx_border_tt ltx_border_tt" id="S4.T2.6.2.8.8">71.2</td>
<td class="ltx_td ltx_align_center ltx_border_tt ltx_border_tt" id="S4.T2.6.2.8.9">59.3</td>
<td class="ltx_td ltx_align_center ltx_border_tt ltx_border_tt" id="S4.T2.6.2.8.10">39.1</td>
</tr>
<tr class="ltx_tr" id="S4.T2.6.2.9">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T2.6.2.9.1">Mode Finding</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.6.2.9.2">80.8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.6.2.9.3">1725.2</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.6.2.9.4">84.1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.6.2.9.5">79.8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.6.2.9.6">66.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.6.2.9.7">71.4</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.6.2.9.8">70.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.6.2.9.9">60.1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.6.2.9.10">40.2</td>
</tr>
<tr class="ltx_tr" id="S4.T2.6.2.10">
<td class="ltx_td ltx_align_left" id="S4.T2.6.2.10.1">Kernel Regression</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.2.10.2">83.7</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.2.10.3">1756.7</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.2.10.4">86.2</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.2.10.5">82.6</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.2.10.6">71.2</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.2.10.7">74.5</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.2.10.8">74.6</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.2.10.9">64.5</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.2.10.10">42.8</td>
</tr>
<tr class="ltx_tr" id="S4.T2.6.2.11">
<td class="ltx_td ltx_align_left" id="S4.T2.6.2.11.1">NGD</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.2.11.2"><span class="ltx_text ltx_font_bold" id="S4.T2.6.2.11.2.1">85.2</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.2.11.3"><span class="ltx_text ltx_font_bold" id="S4.T2.6.2.11.3.1">1785.5</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.2.11.4"><span class="ltx_text ltx_font_bold" id="S4.T2.6.2.11.4.1">88.3</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.2.11.5"><span class="ltx_text ltx_font_bold" id="S4.T2.6.2.11.5.1">85.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.2.11.6"><span class="ltx_text ltx_font_bold" id="S4.T2.6.2.11.6.1">73.5</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.2.11.7"><span class="ltx_text ltx_font_bold" id="S4.T2.6.2.11.7.1">77.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.2.11.8"><span class="ltx_text ltx_font_bold" id="S4.T2.6.2.11.8.1">77.9</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.2.11.9"><span class="ltx_text ltx_font_bold" id="S4.T2.6.2.11.9.1">69.2</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.2.11.10"><span class="ltx_text ltx_font_bold" id="S4.T2.6.2.11.10.1">44.7</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.6.2.12">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_t" id="S4.T2.6.2.12.1">Oracle (upper bound)</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T2.6.2.12.2">92.1</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T2.6.2.12.3">1860.2</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T2.6.2.12.4">93.8</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T2.6.2.12.5">91.2</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T2.6.2.12.6">79.6</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T2.6.2.12.7">83.2</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T2.6.2.12.8">84.0</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T2.6.2.12.9">76.8</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T2.6.2.12.10">54.5</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents a comparison of three different re-routing strategies (Neighborhood Gradient Descent, Kernel Regression, and Mode Finding) within the R2-T2 framework.  The comparison is conducted on two multimodal Mixture-of-Experts models, MoVA and MoAI, across multiple benchmarks.  The results are expressed as accuracy percentages for each model and method.  A baseline using the original router weights is also provided, as well as an oracle upper bound (achievable only with access to ground truth labels). The table highlights the significant performance improvements achieved using the R2-T2 re-routing strategies, especially the Neighborhood Gradient Descent method, demonstrating its effectiveness in enhancing the accuracy of the multimodal MoE models.
> <details>
> <summary>read the caption</summary>
> Table 2: Comparison of three R2-T2 methods (k𝑘kitalic_kNN with k=5𝑘5k=5italic_k = 5) applied to MoVA and MoAI (base models), with Accuracy (%) reported111Except MME-P’s score, the sum of two accuracy metrics.. Oracle has access to the ground truths and provides an upper bound. NGD significantly improves base models and performs the best.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S4.T3.4.2">
<tr class="ltx_tr" id="S4.T3.4.2.2">
<td class="ltx_td ltx_align_left ltx_border_tt" id="S4.T3.4.2.2.3">VLM</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T3.4.2.2.4"><span class="ltx_text ltx_font_bold" id="S4.T3.4.2.2.4.1">MMBench</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T3.4.2.2.5"><span class="ltx_text ltx_font_bold" id="S4.T3.4.2.2.5.1">MME-P</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T3.4.2.2.6"><span class="ltx_text ltx_font_bold" id="S4.T3.4.2.2.6.1">SQA-IMG</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T3.4.2.2.7"><span class="ltx_text ltx_font_bold" id="S4.T3.4.2.2.7.1">AI2D</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T3.4.2.2.8"><span class="ltx_text ltx_font_bold" id="S4.T3.4.2.2.8.1">TextVQA</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T3.4.2.2.9"><span class="ltx_text ltx_font_bold" id="S4.T3.4.2.2.9.1">GQA</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T3.3.1.1.1"><span class="ltx_text ltx_font_bold" id="S4.T3.3.1.1.1.1">CVBench<sup class="ltx_sup" id="S4.T3.3.1.1.1.1.1"><span class="ltx_text ltx_font_medium ltx_font_italic" id="S4.T3.3.1.1.1.1.1.1">2D</span></sup></span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T3.4.2.2.2"><span class="ltx_text ltx_font_bold" id="S4.T3.4.2.2.2.1">CVBench<sup class="ltx_sup" id="S4.T3.4.2.2.2.1.1"><span class="ltx_text ltx_font_medium ltx_font_italic" id="S4.T3.4.2.2.2.1.1.1">3D</span></sup></span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T3.4.2.2.10"><span class="ltx_text ltx_font_bold" id="S4.T3.4.2.2.10.1">PhysBench</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.4.2.3" style="background-color:#E6E6E6;">
<td class="ltx_td ltx_align_left ltx_border_t" colspan="10" id="S4.T3.4.2.3.1"><span class="ltx_text ltx_font_bold" id="S4.T3.4.2.3.1.1" style="background-color:#E6E6E6;">7B Models</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.4.2.4">
<td class="ltx_td ltx_align_left" id="S4.T3.4.2.4.1">InstructBLIP-7B <cite class="ltx_cite ltx_citemacro_citep">(Dai et al., <a class="ltx_ref" href="https://arxiv.org/html/2502.20395v1#bib.bib14" title="">2023</a>)</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.2.4.2">36.0</td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.2.4.3">-</td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.2.4.4">60.5</td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.2.4.5">-</td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.2.4.6">50.1</td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.2.4.7">56.7</td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.2.4.8">-</td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.2.4.9">-</td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.2.4.10">23.8</td>
</tr>
<tr class="ltx_tr" id="S4.T3.4.2.5">
<td class="ltx_td ltx_align_left" id="S4.T3.4.2.5.1">Qwen-VL-7B <cite class="ltx_cite ltx_citemacro_citep">(Bai et al., <a class="ltx_ref" href="https://arxiv.org/html/2502.20395v1#bib.bib4" title="">2023</a>)</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.2.5.2">38.2</td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.2.5.3">-</td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.2.5.4">67.1</td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.2.5.5">62.3</td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.2.5.6">63.8</td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.2.5.7">59.4</td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.2.5.8">-</td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.2.5.9">-</td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.2.5.10">-</td>
</tr>
<tr class="ltx_tr" id="S4.T3.4.2.6">
<td class="ltx_td ltx_align_left" id="S4.T3.4.2.6.1">Qwen-VL-Chat-7B <cite class="ltx_cite ltx_citemacro_citep">(Bai et al., <a class="ltx_ref" href="https://arxiv.org/html/2502.20395v1#bib.bib4" title="">2023</a>)</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.2.6.2">60.6</td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.2.6.3">1488.0</td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.2.6.4">68.2</td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.2.6.5">57.7</td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.2.6.6">61.5</td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.2.6.7">-</td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.2.6.8">-</td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.2.6.9">-</td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.2.6.10"><span class="ltx_text ltx_font_bold" id="S4.T3.4.2.6.10.1">35.6</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.4.2.7">
<td class="ltx_td ltx_align_left" id="S4.T3.4.2.7.1">mPLUG-Owl-7B <cite class="ltx_cite ltx_citemacro_citep">(Ye et al., <a class="ltx_ref" href="https://arxiv.org/html/2502.20395v1#bib.bib60" title="">2023</a>)</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.2.7.2">46.6</td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.2.7.3">967.0</td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.2.7.4">-</td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.2.7.5">-</td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.2.7.6">-</td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.2.7.7">58.9</td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.2.7.8">-</td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.2.7.9">-</td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.2.7.10">-</td>
</tr>
<tr class="ltx_tr" id="S4.T3.4.2.8">
<td class="ltx_td ltx_align_left" id="S4.T3.4.2.8.1">mPLUG-Owl2-7B <cite class="ltx_cite ltx_citemacro_citep">(Ye et al., <a class="ltx_ref" href="https://arxiv.org/html/2502.20395v1#bib.bib61" title="">2024</a>)</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.2.8.2">64.5</td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.2.8.3">1450.0</td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.2.8.4">68.7</td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.2.8.5">-</td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.2.8.6">58.2</td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.2.8.7">62.9</td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.2.8.8">-</td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.2.8.9">-</td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.2.8.10">-</td>
</tr>
<tr class="ltx_tr" id="S4.T3.4.2.9">
<td class="ltx_td ltx_align_left" id="S4.T3.4.2.9.1">ShareGPT4V-7B <cite class="ltx_cite ltx_citemacro_citep">(Chen et al., <a class="ltx_ref" href="https://arxiv.org/html/2502.20395v1#bib.bib9" title="">2025</a>)</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.2.9.2"><span class="ltx_text ltx_font_bold" id="S4.T3.4.2.9.2.1">68.8</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.2.9.3"><span class="ltx_text ltx_font_bold" id="S4.T3.4.2.9.3.1">1567.4</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.2.9.4"><span class="ltx_text ltx_font_bold" id="S4.T3.4.2.9.4.1">68.4</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.2.9.5">67.3</td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.2.9.6">65.8</td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.2.9.7"><span class="ltx_text ltx_font_bold" id="S4.T3.4.2.9.7.1">63.4</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.2.9.8">60.2</td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.2.9.9">57.5</td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.2.9.10">31.3</td>
</tr>
<tr class="ltx_tr" id="S4.T3.4.2.10" style="background-color:#E6E6E6;">
<td class="ltx_td ltx_align_left ltx_border_t" colspan="10" id="S4.T3.4.2.10.1"><span class="ltx_text ltx_font_bold" id="S4.T3.4.2.10.1.1" style="background-color:#E6E6E6;">8B Models</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.4.2.11">
<td class="ltx_td ltx_align_left" id="S4.T3.4.2.11.1">Mini-Gemini-HD-8B <cite class="ltx_cite ltx_citemacro_citep">(Li et al., <a class="ltx_ref" href="https://arxiv.org/html/2502.20395v1#bib.bib29" title="">2024</a>)</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.2.11.2">72.7</td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.2.11.3">1606.0</td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.2.11.4"><span class="ltx_text ltx_font_bold" id="S4.T3.4.2.11.4.1">75.1</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.2.11.5"><span class="ltx_text ltx_font_bold" id="S4.T3.4.2.11.5.1">73.5</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.2.11.6"><span class="ltx_text ltx_font_bold" id="S4.T3.4.2.11.6.1">70.2</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.2.11.7">64.5</td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.2.11.8">62.2</td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.2.11.9">63.0</td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.2.11.10">34.7</td>
</tr>
<tr class="ltx_tr" id="S4.T3.4.2.12">
<td class="ltx_td ltx_align_left" id="S4.T3.4.2.12.1">LLaVA-NeXT-8B <cite class="ltx_cite ltx_citemacro_citep">(Liu et al., <a class="ltx_ref" href="https://arxiv.org/html/2502.20395v1#bib.bib34" title="">2024</a>)</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.2.12.2">72.1</td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.2.12.3">1603.7</td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.2.12.4">72.8</td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.2.12.5">71.6</td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.2.12.6">64.6</td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.2.12.7"><span class="ltx_text ltx_font_bold" id="S4.T3.4.2.12.7.1">65.2</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.2.12.8">62.2</td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.2.12.9"><span class="ltx_text ltx_font_bold" id="S4.T3.4.2.12.9.1">65.3</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.2.12.10">-</td>
</tr>
<tr class="ltx_tr" id="S4.T3.4.2.13">
<td class="ltx_td ltx_align_left" id="S4.T3.4.2.13.1">Cambrian1-8B <cite class="ltx_cite ltx_citemacro_citep">(Tong et al., <a class="ltx_ref" href="https://arxiv.org/html/2502.20395v1#bib.bib53" title="">2024</a>)</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.2.13.2"><span class="ltx_text ltx_font_bold" id="S4.T3.4.2.13.2.1">75.9</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.2.13.3"><span class="ltx_text ltx_font_bold" id="S4.T3.4.2.13.3.1">1647.1</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.2.13.4">74.4</td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.2.13.5">73.0</td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.2.13.6">68.7</td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.2.13.7">64.6</td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.2.13.8"><span class="ltx_text ltx_font_bold" id="S4.T3.4.2.13.8.1">72.3</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.2.13.9">65.0</td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.2.13.10"><span class="ltx_text ltx_font_bold" id="S4.T3.4.2.13.10.1">24.6</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.4.2.14" style="background-color:#E6E6E6;">
<td class="ltx_td ltx_align_left ltx_border_t" colspan="10" id="S4.T3.4.2.14.1"><span class="ltx_text ltx_font_bold" id="S4.T3.4.2.14.1.1" style="background-color:#E6E6E6;">13B Models</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.4.2.15">
<td class="ltx_td ltx_align_left" id="S4.T3.4.2.15.1">BLIP2-13B <cite class="ltx_cite ltx_citemacro_citep">(Li et al., <a class="ltx_ref" href="https://arxiv.org/html/2502.20395v1#bib.bib28" title="">2023a</a>)</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.2.15.2">28.8</td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.2.15.3">1294.0</td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.2.15.4">61.0</td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.2.15.5">-</td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.2.15.6">42.5</td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.2.15.7">-</td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.2.15.8">-</td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.2.15.9">-</td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.2.15.10">38.6</td>
</tr>
<tr class="ltx_tr" id="S4.T3.4.2.16">
<td class="ltx_td ltx_align_left" id="S4.T3.4.2.16.1">InstructBLIP-13B <cite class="ltx_cite ltx_citemacro_citep">(Dai et al., <a class="ltx_ref" href="https://arxiv.org/html/2502.20395v1#bib.bib14" title="">2023</a>)</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.2.16.2">39.1</td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.2.16.3">1213.0</td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.2.16.4">63.1</td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.2.16.5">-</td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.2.16.6">50.7</td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.2.16.7">-</td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.2.16.8">-</td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.2.16.9">-</td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.2.16.10">29.9</td>
</tr>
<tr class="ltx_tr" id="S4.T3.4.2.17">
<td class="ltx_td ltx_align_left" id="S4.T3.4.2.17.1">Mini-Gemini-HD-13B <cite class="ltx_cite ltx_citemacro_citep">(Li et al., <a class="ltx_ref" href="https://arxiv.org/html/2502.20395v1#bib.bib29" title="">2024</a>)</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.2.17.2">68.6</td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.2.17.3">1597.0</td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.2.17.4">71.9</td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.2.17.5">70.1</td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.2.17.6">70.2</td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.2.17.7">63.7</td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.2.17.8">53.6</td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.2.17.9">67.3</td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.2.17.10">-</td>
</tr>
<tr class="ltx_tr" id="S4.T3.4.2.18">
<td class="ltx_td ltx_align_left" id="S4.T3.4.2.18.1">LLaVA-NeXT-13B <cite class="ltx_cite ltx_citemacro_citep">(Liu et al., <a class="ltx_ref" href="https://arxiv.org/html/2502.20395v1#bib.bib34" title="">2024</a>)</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.2.18.2">70.0</td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.2.18.3">1575.0</td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.2.18.4">73.5</td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.2.18.5">70.0</td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.2.18.6">67.1</td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.2.18.7"><span class="ltx_text ltx_font_bold" id="S4.T3.4.2.18.7.1">65.4</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.2.18.8">62.7</td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.2.18.9">65.7</td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.2.18.10"><span class="ltx_text ltx_font_bold" id="S4.T3.4.2.18.10.1">40.5</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.4.2.19">
<td class="ltx_td ltx_align_left" id="S4.T3.4.2.19.1">Cambrian1-13B <cite class="ltx_cite ltx_citemacro_citep">(Tong et al., <a class="ltx_ref" href="https://arxiv.org/html/2502.20395v1#bib.bib53" title="">2024</a>)</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.2.19.2"><span class="ltx_text ltx_font_bold" id="S4.T3.4.2.19.2.1">75.7</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.2.19.3"><span class="ltx_text ltx_font_bold" id="S4.T3.4.2.19.3.1">1610.4</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.2.19.4"><span class="ltx_text ltx_font_bold" id="S4.T3.4.2.19.4.1">79.3</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.2.19.5"><span class="ltx_text ltx_font_bold" id="S4.T3.4.2.19.5.1">73.6</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.2.19.6"><span class="ltx_text ltx_font_bold" id="S4.T3.4.2.19.6.1">72.8</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.2.19.7">64.3</td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.2.19.8"><span class="ltx_text ltx_font_bold" id="S4.T3.4.2.19.8.1">72.5</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.2.19.9"><span class="ltx_text ltx_font_bold" id="S4.T3.4.2.19.9.1">71.8</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.2.19.10">-</td>
</tr>
<tr class="ltx_tr" id="S4.T3.4.2.20" style="background-color:#E6E6E6;">
<td class="ltx_td ltx_align_left ltx_border_t" colspan="10" id="S4.T3.4.2.20.1"><span class="ltx_text ltx_font_bold" id="S4.T3.4.2.20.1.1" style="background-color:#E6E6E6;">34B Models</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.4.2.21">
<td class="ltx_td ltx_align_left" id="S4.T3.4.2.21.1">Mini-Gemini-HD-34B <cite class="ltx_cite ltx_citemacro_citep">(Li et al., <a class="ltx_ref" href="https://arxiv.org/html/2502.20395v1#bib.bib29" title="">2024</a>)</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.2.21.2">80.6</td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.2.21.3">1659.0</td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.2.21.4">77.7</td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.2.21.5">80.5</td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.2.21.6">74.1</td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.2.21.7">65.8</td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.2.21.8">71.5</td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.2.21.9">79.2</td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.2.21.10">-</td>
</tr>
<tr class="ltx_tr" id="S4.T3.4.2.22">
<td class="ltx_td ltx_align_left" id="S4.T3.4.2.22.1">LLaVA-NeXT-34B <cite class="ltx_cite ltx_citemacro_citep">(Liu et al., <a class="ltx_ref" href="https://arxiv.org/html/2502.20395v1#bib.bib34" title="">2024</a>)</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.2.22.2">79.3</td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.2.22.3">1633.2</td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.2.22.4">81.8</td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.2.22.5">74.9</td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.2.22.6">69.5</td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.2.22.7"><span class="ltx_text ltx_font_bold" id="S4.T3.4.2.22.7.1">67.1</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.2.22.8">73.0</td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.2.22.9">74.8</td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.2.22.10">-</td>
</tr>
<tr class="ltx_tr" id="S4.T3.4.2.23">
<td class="ltx_td ltx_align_left" id="S4.T3.4.2.23.1">Cambrian1-34B <cite class="ltx_cite ltx_citemacro_citep">(Tong et al., <a class="ltx_ref" href="https://arxiv.org/html/2502.20395v1#bib.bib53" title="">2024</a>)</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.2.23.2"><span class="ltx_text ltx_font_bold" id="S4.T3.4.2.23.2.1">81.4</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.2.23.3"><span class="ltx_text ltx_font_bold" id="S4.T3.4.2.23.3.1">1689.3</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.2.23.4"><span class="ltx_text ltx_font_bold" id="S4.T3.4.2.23.4.1">85.6</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.2.23.5"><span class="ltx_text ltx_font_bold" id="S4.T3.4.2.23.5.1">79.7</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.2.23.6"><span class="ltx_text ltx_font_bold" id="S4.T3.4.2.23.6.1">76.7</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.2.23.7">65.8</td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.2.23.8"><span class="ltx_text ltx_font_bold" id="S4.T3.4.2.23.8.1">74.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.2.23.9"><span class="ltx_text ltx_font_bold" id="S4.T3.4.2.23.9.1">79.7</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.2.23.10"><span class="ltx_text ltx_font_bold" id="S4.T3.4.2.23.10.1">30.2</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.4.2.24" style="background-color:#E6E6E6;">
<td class="ltx_td ltx_align_left ltx_border_t" colspan="10" id="S4.T3.4.2.24.1"><span class="ltx_text ltx_font_bold" id="S4.T3.4.2.24.1.1" style="background-color:#E6E6E6;">Ours</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.4.2.25">
<td class="ltx_td ltx_align_left" id="S4.T3.4.2.25.1">MoVA-7B</td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.2.25.2">74.3</td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.2.25.3">1579.2</td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.2.25.4">74.4</td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.2.25.5">74.9</td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.2.25.6">76.4</td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.2.25.7">64.8</td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.2.25.8">61.6</td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.2.25.9">62.3</td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.2.25.10">32.6</td>
</tr>
<tr class="ltx_tr" id="S4.T3.4.2.26">
<td class="ltx_td ltx_align_left" id="S4.T3.4.2.26.1">R2-T2 (MoVA-7B)</td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.2.26.2"><span class="ltx_text ltx_font_bold" id="S4.T3.4.2.26.2.1">81.2</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.2.26.3"><span class="ltx_text ltx_font_bold" id="S4.T3.4.2.26.3.1">1645.3</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.2.26.4"><span class="ltx_text ltx_font_bold" id="S4.T3.4.2.26.4.1">79.1</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.2.26.5"><span class="ltx_text ltx_font_bold" id="S4.T3.4.2.26.5.1">81.8</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.2.26.6"><span class="ltx_text ltx_font_bold" id="S4.T3.4.2.26.6.1">83.2</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.2.26.7"><span class="ltx_text ltx_font_bold" id="S4.T3.4.2.26.7.1">71.5</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.2.26.8"><span class="ltx_text ltx_font_bold" id="S4.T3.4.2.26.8.1">68.3</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.2.26.9"><span class="ltx_text ltx_font_bold" id="S4.T3.4.2.26.9.1">68.9</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.2.26.10"><span class="ltx_text ltx_font_bold" id="S4.T3.4.2.26.10.1">37.8</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.4.2.27">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T3.4.2.27.1">MoAI-7B</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.4.2.27.2">79.3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.4.2.27.3">1714</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.4.2.27.4">83.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.4.2.27.5">78.6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.4.2.27.6">67.8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.4.2.27.7">70.2</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.4.2.27.8">71.2</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.4.2.27.9">59.3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.4.2.27.10">39.1</td>
</tr>
<tr class="ltx_tr" id="S4.T3.4.2.28">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S4.T3.4.2.28.1">R2-T2 (MoAI-7B)</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.4.2.28.2"><span class="ltx_text ltx_font_bold" id="S4.T3.4.2.28.2.1">85.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.4.2.28.3"><span class="ltx_text ltx_font_bold" id="S4.T3.4.2.28.3.1">1785.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.4.2.28.4"><span class="ltx_text ltx_font_bold" id="S4.T3.4.2.28.4.1">88.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.4.2.28.5"><span class="ltx_text ltx_font_bold" id="S4.T3.4.2.28.5.1">85.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.4.2.28.6"><span class="ltx_text ltx_font_bold" id="S4.T3.4.2.28.6.1">73.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.4.2.28.7"><span class="ltx_text ltx_font_bold" id="S4.T3.4.2.28.7.1">77.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.4.2.28.8"><span class="ltx_text ltx_font_bold" id="S4.T3.4.2.28.8.1">77.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.4.2.28.9"><span class="ltx_text ltx_font_bold" id="S4.T3.4.2.28.9.1">69.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.4.2.28.10"><span class="ltx_text ltx_font_bold" id="S4.T3.4.2.28.10.1">44.7</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 Table 3 presents a comparative analysis of the R2-T2 model's performance against several state-of-the-art vision-language models.  The comparison is based on nine benchmark datasets, each designed to assess different aspects of vision-language capabilities.  Higher scores indicate better performance.  The table allows readers to quickly gauge the relative improvement achieved by R2-T2 compared to other models, particularly considering the models' varying parameter scales (7B, 8B, 13B, and 34B parameters). This provides valuable context for understanding the efficiency and effectiveness of R2-T2.
> <details>
> <summary>read the caption</summary>
> Table 3: Comparison of R2-T2 (k𝑘kitalic_kNN, NGD) with state-of-the-art vision-language models on nine benchmarks (higher the better).
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S4.T4.5.1">
<tr class="ltx_tr" id="S4.T4.5.1.2">
<td class="ltx_td ltx_align_left ltx_border_tt" id="S4.T4.5.1.2.1" style="padding:0.5pt 3.0pt;">Method</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T4.5.1.2.2" style="padding:0.5pt 3.0pt;">
<span class="ltx_text" id="S4.T4.5.1.2.2.1"></span> <span class="ltx_text" id="S4.T4.5.1.2.2.2">
<span class="ltx_tabular ltx_align_middle" id="S4.T4.5.1.2.2.2.1">
<span class="ltx_tr" id="S4.T4.5.1.2.2.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T4.5.1.2.2.2.1.1.1" style="padding:0.5pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.5.1.2.2.2.1.1.1.1">Inference</span></span></span>
<span class="ltx_tr" id="S4.T4.5.1.2.2.2.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T4.5.1.2.2.2.1.2.1" style="padding:0.5pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.5.1.2.2.2.1.2.1.1">steps</span></span></span>
</span></span><span class="ltx_text" id="S4.T4.5.1.2.2.3"></span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T4.5.1.2.3" style="padding:0.5pt 3.0pt;">
<span class="ltx_text" id="S4.T4.5.1.2.3.1"></span> <span class="ltx_text" id="S4.T4.5.1.2.3.2">
<span class="ltx_tabular ltx_align_middle" id="S4.T4.5.1.2.3.2.1">
<span class="ltx_tr" id="S4.T4.5.1.2.3.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T4.5.1.2.3.2.1.1.1" style="padding:0.5pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.5.1.2.3.2.1.1.1.1">FLOPs (T)</span></span></span>
<span class="ltx_tr" id="S4.T4.5.1.2.3.2.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T4.5.1.2.3.2.1.2.1" style="padding:0.5pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.5.1.2.3.2.1.2.1.1">per case</span></span></span>
</span></span><span class="ltx_text" id="S4.T4.5.1.2.3.3"></span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T4.5.1.2.4" style="padding:0.5pt 3.0pt;">
<span class="ltx_text" id="S4.T4.5.1.2.4.1"></span> <span class="ltx_text" id="S4.T4.5.1.2.4.2">
<span class="ltx_tabular ltx_align_middle" id="S4.T4.5.1.2.4.2.1">
<span class="ltx_tr" id="S4.T4.5.1.2.4.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T4.5.1.2.4.2.1.1.1" style="padding:0.5pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.5.1.2.4.2.1.1.1.1">Accuracy</span></span></span>
<span class="ltx_tr" id="S4.T4.5.1.2.4.2.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T4.5.1.2.4.2.1.2.1" style="padding:0.5pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.5.1.2.4.2.1.2.1.1">(%)</span></span></span>
</span></span><span class="ltx_text" id="S4.T4.5.1.2.4.3"></span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.5.1.3">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T4.5.1.3.1" style="padding:0.5pt 3.0pt;">Base Model (MoAI-7B)</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.5.1.3.2" style="padding:0.5pt 3.0pt;">1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.5.1.3.3" style="padding:0.5pt 3.0pt;">9.9</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.5.1.3.4" style="padding:0.5pt 3.0pt;">79.3</td>
</tr>
<tr class="ltx_tr" id="S4.T4.5.1.4">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T4.5.1.4.1" style="padding:0.5pt 3.0pt;">Mode Finding</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.5.1.4.2" style="padding:0.5pt 3.0pt;">10</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.5.1.4.3" style="padding:0.5pt 3.0pt;">10.7</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.5.1.4.4" style="padding:0.5pt 3.0pt;">80.8</td>
</tr>
<tr class="ltx_tr" id="S4.T4.5.1.5">
<td class="ltx_td ltx_align_left" id="S4.T4.5.1.5.1" style="padding:0.5pt 3.0pt;">Kernel Regression</td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.1.5.2" style="padding:0.5pt 3.0pt;">10</td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.1.5.3" style="padding:0.5pt 3.0pt;">61.9</td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.1.5.4" style="padding:0.5pt 3.0pt;">83.7</td>
</tr>
<tr class="ltx_tr" id="S4.T4.5.1.1">
<td class="ltx_td ltx_align_left" id="S4.T4.5.1.1.1" style="padding:0.5pt 3.0pt;">R2-T2 (<math alttext="k" class="ltx_Math" display="inline" id="S4.T4.5.1.1.1.m1.1"><semantics id="S4.T4.5.1.1.1.m1.1a"><mi id="S4.T4.5.1.1.1.m1.1.1" xref="S4.T4.5.1.1.1.m1.1.1.cmml">k</mi><annotation-xml encoding="MathML-Content" id="S4.T4.5.1.1.1.m1.1b"><ci id="S4.T4.5.1.1.1.m1.1.1.cmml" xref="S4.T4.5.1.1.1.m1.1.1">𝑘</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.5.1.1.1.m1.1c">k</annotation><annotation encoding="application/x-llamapun" id="S4.T4.5.1.1.1.m1.1d">italic_k</annotation></semantics></math>NN, NGD)</td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.1.1.2" style="padding:0.5pt 3.0pt;">10</td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.1.1.3" style="padding:0.5pt 3.0pt;">67.5</td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.1.1.4" style="padding:0.5pt 3.0pt;">85.2</td>
</tr>
<tr class="ltx_tr" id="S4.T4.5.1.6">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_t" id="S4.T4.5.1.6.1" style="padding:0.5pt 3.0pt;">Oracle (upper bound)</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T4.5.1.6.2" style="padding:0.5pt 3.0pt;">10</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T4.5.1.6.3" style="padding:0.5pt 3.0pt;">11.8</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T4.5.1.6.4" style="padding:0.5pt 3.0pt;">89.8</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents a comparison of the computational cost (measured in FLOPs) and accuracy for different methods in the R2-T2 framework on the MMBench benchmark.  It shows the number of FLOPs required per inference case for the base MoAI-7B model, as well as for variations that use different R2-T2 strategies (Mode Finding, Kernel Regression, and Neighborhood Gradient Descent).  The kNN algorithm with k=5 was used for all R2-T2 methods. This allows for an assessment of the trade-off between computational efficiency and accuracy improvement offered by each R2-T2 approach.
> <details>
> <summary>read the caption</summary>
> Table 4: FLOPs of different methods (k𝑘kitalic_kNN with k𝑘kitalic_k = 5) on MMBench using MoAI-7B as the base model.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S4.T5.12.10">
<tr class="ltx_tr" id="S4.T5.4.2.2">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" colspan="3" id="S4.T5.3.1.1.1">
<math alttext="\epsilon" class="ltx_Math" display="inline" id="S4.T5.3.1.1.1.m1.1"><semantics id="S4.T5.3.1.1.1.m1.1a"><mi id="S4.T5.3.1.1.1.m1.1.1" xref="S4.T5.3.1.1.1.m1.1.1.cmml">ϵ</mi><annotation-xml encoding="MathML-Content" id="S4.T5.3.1.1.1.m1.1b"><ci id="S4.T5.3.1.1.1.m1.1.1.cmml" xref="S4.T5.3.1.1.1.m1.1.1">italic-ϵ</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T5.3.1.1.1.m1.1c">\epsilon</annotation><annotation encoding="application/x-llamapun" id="S4.T5.3.1.1.1.m1.1d">italic_ϵ</annotation></semantics></math>-ball</td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="S4.T5.4.2.2.2">
<math alttext="k" class="ltx_Math" display="inline" id="S4.T5.4.2.2.2.m1.1"><semantics id="S4.T5.4.2.2.2.m1.1a"><mi id="S4.T5.4.2.2.2.m1.1.1" xref="S4.T5.4.2.2.2.m1.1.1.cmml">k</mi><annotation-xml encoding="MathML-Content" id="S4.T5.4.2.2.2.m1.1b"><ci id="S4.T5.4.2.2.2.m1.1.1.cmml" xref="S4.T5.4.2.2.2.m1.1.1">𝑘</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T5.4.2.2.2.m1.1c">k</annotation><annotation encoding="application/x-llamapun" id="S4.T5.4.2.2.2.m1.1d">italic_k</annotation></semantics></math>NN</td>
</tr>
<tr class="ltx_tr" id="S4.T5.12.10.11">
<td class="ltx_td ltx_align_left" id="S4.T5.12.10.11.1">Parameter</td>
<td class="ltx_td ltx_align_center" id="S4.T5.12.10.11.2">Avg.</td>
<td class="ltx_td ltx_border_r" id="S4.T5.12.10.11.3"></td>
<td class="ltx_td ltx_align_left" id="S4.T5.12.10.11.4">Parameter</td>
<td class="ltx_td ltx_align_center" id="S4.T5.12.10.11.5">Avg.</td>
</tr>
<tr class="ltx_tr" id="S4.T5.6.4.4">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T5.5.3.3.1"><math alttext="\epsilon=0.2" class="ltx_Math" display="inline" id="S4.T5.5.3.3.1.m1.1"><semantics id="S4.T5.5.3.3.1.m1.1a"><mrow id="S4.T5.5.3.3.1.m1.1.1" xref="S4.T5.5.3.3.1.m1.1.1.cmml"><mi id="S4.T5.5.3.3.1.m1.1.1.2" xref="S4.T5.5.3.3.1.m1.1.1.2.cmml">ϵ</mi><mo id="S4.T5.5.3.3.1.m1.1.1.1" xref="S4.T5.5.3.3.1.m1.1.1.1.cmml">=</mo><mn id="S4.T5.5.3.3.1.m1.1.1.3" xref="S4.T5.5.3.3.1.m1.1.1.3.cmml">0.2</mn></mrow><annotation-xml encoding="MathML-Content" id="S4.T5.5.3.3.1.m1.1b"><apply id="S4.T5.5.3.3.1.m1.1.1.cmml" xref="S4.T5.5.3.3.1.m1.1.1"><eq id="S4.T5.5.3.3.1.m1.1.1.1.cmml" xref="S4.T5.5.3.3.1.m1.1.1.1"></eq><ci id="S4.T5.5.3.3.1.m1.1.1.2.cmml" xref="S4.T5.5.3.3.1.m1.1.1.2">italic-ϵ</ci><cn id="S4.T5.5.3.3.1.m1.1.1.3.cmml" type="float" xref="S4.T5.5.3.3.1.m1.1.1.3">0.2</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T5.5.3.3.1.m1.1c">\epsilon=0.2</annotation><annotation encoding="application/x-llamapun" id="S4.T5.5.3.3.1.m1.1d">italic_ϵ = 0.2</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.6.4.4.3">76.5</td>
<td class="ltx_td ltx_border_r ltx_border_t" id="S4.T5.6.4.4.4"></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T5.6.4.4.2"><math alttext="k=3" class="ltx_Math" display="inline" id="S4.T5.6.4.4.2.m1.1"><semantics id="S4.T5.6.4.4.2.m1.1a"><mrow id="S4.T5.6.4.4.2.m1.1.1" xref="S4.T5.6.4.4.2.m1.1.1.cmml"><mi id="S4.T5.6.4.4.2.m1.1.1.2" xref="S4.T5.6.4.4.2.m1.1.1.2.cmml">k</mi><mo id="S4.T5.6.4.4.2.m1.1.1.1" xref="S4.T5.6.4.4.2.m1.1.1.1.cmml">=</mo><mn id="S4.T5.6.4.4.2.m1.1.1.3" xref="S4.T5.6.4.4.2.m1.1.1.3.cmml">3</mn></mrow><annotation-xml encoding="MathML-Content" id="S4.T5.6.4.4.2.m1.1b"><apply id="S4.T5.6.4.4.2.m1.1.1.cmml" xref="S4.T5.6.4.4.2.m1.1.1"><eq id="S4.T5.6.4.4.2.m1.1.1.1.cmml" xref="S4.T5.6.4.4.2.m1.1.1.1"></eq><ci id="S4.T5.6.4.4.2.m1.1.1.2.cmml" xref="S4.T5.6.4.4.2.m1.1.1.2">𝑘</ci><cn id="S4.T5.6.4.4.2.m1.1.1.3.cmml" type="integer" xref="S4.T5.6.4.4.2.m1.1.1.3">3</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T5.6.4.4.2.m1.1c">k=3</annotation><annotation encoding="application/x-llamapun" id="S4.T5.6.4.4.2.m1.1d">italic_k = 3</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.6.4.4.5">78.6</td>
</tr>
<tr class="ltx_tr" id="S4.T5.8.6.6">
<td class="ltx_td ltx_align_left" id="S4.T5.7.5.5.1"><math alttext="\epsilon=0.4" class="ltx_Math" display="inline" id="S4.T5.7.5.5.1.m1.1"><semantics id="S4.T5.7.5.5.1.m1.1a"><mrow id="S4.T5.7.5.5.1.m1.1.1" xref="S4.T5.7.5.5.1.m1.1.1.cmml"><mi id="S4.T5.7.5.5.1.m1.1.1.2" xref="S4.T5.7.5.5.1.m1.1.1.2.cmml">ϵ</mi><mo id="S4.T5.7.5.5.1.m1.1.1.1" xref="S4.T5.7.5.5.1.m1.1.1.1.cmml">=</mo><mn id="S4.T5.7.5.5.1.m1.1.1.3" xref="S4.T5.7.5.5.1.m1.1.1.3.cmml">0.4</mn></mrow><annotation-xml encoding="MathML-Content" id="S4.T5.7.5.5.1.m1.1b"><apply id="S4.T5.7.5.5.1.m1.1.1.cmml" xref="S4.T5.7.5.5.1.m1.1.1"><eq id="S4.T5.7.5.5.1.m1.1.1.1.cmml" xref="S4.T5.7.5.5.1.m1.1.1.1"></eq><ci id="S4.T5.7.5.5.1.m1.1.1.2.cmml" xref="S4.T5.7.5.5.1.m1.1.1.2">italic-ϵ</ci><cn id="S4.T5.7.5.5.1.m1.1.1.3.cmml" type="float" xref="S4.T5.7.5.5.1.m1.1.1.3">0.4</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T5.7.5.5.1.m1.1c">\epsilon=0.4</annotation><annotation encoding="application/x-llamapun" id="S4.T5.7.5.5.1.m1.1d">italic_ϵ = 0.4</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T5.8.6.6.3">77.9</td>
<td class="ltx_td ltx_border_r" id="S4.T5.8.6.6.4"></td>
<td class="ltx_td ltx_align_left" id="S4.T5.8.6.6.2"><math alttext="k=5" class="ltx_Math" display="inline" id="S4.T5.8.6.6.2.m1.1"><semantics id="S4.T5.8.6.6.2.m1.1a"><mrow id="S4.T5.8.6.6.2.m1.1.1" xref="S4.T5.8.6.6.2.m1.1.1.cmml"><mi id="S4.T5.8.6.6.2.m1.1.1.2" xref="S4.T5.8.6.6.2.m1.1.1.2.cmml">k</mi><mo id="S4.T5.8.6.6.2.m1.1.1.1" xref="S4.T5.8.6.6.2.m1.1.1.1.cmml">=</mo><mn id="S4.T5.8.6.6.2.m1.1.1.3" xref="S4.T5.8.6.6.2.m1.1.1.3.cmml">5</mn></mrow><annotation-xml encoding="MathML-Content" id="S4.T5.8.6.6.2.m1.1b"><apply id="S4.T5.8.6.6.2.m1.1.1.cmml" xref="S4.T5.8.6.6.2.m1.1.1"><eq id="S4.T5.8.6.6.2.m1.1.1.1.cmml" xref="S4.T5.8.6.6.2.m1.1.1.1"></eq><ci id="S4.T5.8.6.6.2.m1.1.1.2.cmml" xref="S4.T5.8.6.6.2.m1.1.1.2">𝑘</ci><cn id="S4.T5.8.6.6.2.m1.1.1.3.cmml" type="integer" xref="S4.T5.8.6.6.2.m1.1.1.3">5</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T5.8.6.6.2.m1.1c">k=5</annotation><annotation encoding="application/x-llamapun" id="S4.T5.8.6.6.2.m1.1d">italic_k = 5</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T5.8.6.6.5"><span class="ltx_text ltx_font_bold" id="S4.T5.8.6.6.5.1">80.7</span></td>
</tr>
<tr class="ltx_tr" id="S4.T5.10.8.8">
<td class="ltx_td ltx_align_left" id="S4.T5.9.7.7.1"><math alttext="\epsilon=0.6" class="ltx_Math" display="inline" id="S4.T5.9.7.7.1.m1.1"><semantics id="S4.T5.9.7.7.1.m1.1a"><mrow id="S4.T5.9.7.7.1.m1.1.1" xref="S4.T5.9.7.7.1.m1.1.1.cmml"><mi id="S4.T5.9.7.7.1.m1.1.1.2" xref="S4.T5.9.7.7.1.m1.1.1.2.cmml">ϵ</mi><mo id="S4.T5.9.7.7.1.m1.1.1.1" xref="S4.T5.9.7.7.1.m1.1.1.1.cmml">=</mo><mn id="S4.T5.9.7.7.1.m1.1.1.3" xref="S4.T5.9.7.7.1.m1.1.1.3.cmml">0.6</mn></mrow><annotation-xml encoding="MathML-Content" id="S4.T5.9.7.7.1.m1.1b"><apply id="S4.T5.9.7.7.1.m1.1.1.cmml" xref="S4.T5.9.7.7.1.m1.1.1"><eq id="S4.T5.9.7.7.1.m1.1.1.1.cmml" xref="S4.T5.9.7.7.1.m1.1.1.1"></eq><ci id="S4.T5.9.7.7.1.m1.1.1.2.cmml" xref="S4.T5.9.7.7.1.m1.1.1.2">italic-ϵ</ci><cn id="S4.T5.9.7.7.1.m1.1.1.3.cmml" type="float" xref="S4.T5.9.7.7.1.m1.1.1.3">0.6</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T5.9.7.7.1.m1.1c">\epsilon=0.6</annotation><annotation encoding="application/x-llamapun" id="S4.T5.9.7.7.1.m1.1d">italic_ϵ = 0.6</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T5.10.8.8.3"><span class="ltx_text ltx_font_bold" id="S4.T5.10.8.8.3.1">78.9</span></td>
<td class="ltx_td ltx_border_r" id="S4.T5.10.8.8.4"></td>
<td class="ltx_td ltx_align_left" id="S4.T5.10.8.8.2"><math alttext="k=10" class="ltx_Math" display="inline" id="S4.T5.10.8.8.2.m1.1"><semantics id="S4.T5.10.8.8.2.m1.1a"><mrow id="S4.T5.10.8.8.2.m1.1.1" xref="S4.T5.10.8.8.2.m1.1.1.cmml"><mi id="S4.T5.10.8.8.2.m1.1.1.2" xref="S4.T5.10.8.8.2.m1.1.1.2.cmml">k</mi><mo id="S4.T5.10.8.8.2.m1.1.1.1" xref="S4.T5.10.8.8.2.m1.1.1.1.cmml">=</mo><mn id="S4.T5.10.8.8.2.m1.1.1.3" xref="S4.T5.10.8.8.2.m1.1.1.3.cmml">10</mn></mrow><annotation-xml encoding="MathML-Content" id="S4.T5.10.8.8.2.m1.1b"><apply id="S4.T5.10.8.8.2.m1.1.1.cmml" xref="S4.T5.10.8.8.2.m1.1.1"><eq id="S4.T5.10.8.8.2.m1.1.1.1.cmml" xref="S4.T5.10.8.8.2.m1.1.1.1"></eq><ci id="S4.T5.10.8.8.2.m1.1.1.2.cmml" xref="S4.T5.10.8.8.2.m1.1.1.2">𝑘</ci><cn id="S4.T5.10.8.8.2.m1.1.1.3.cmml" type="integer" xref="S4.T5.10.8.8.2.m1.1.1.3">10</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T5.10.8.8.2.m1.1c">k=10</annotation><annotation encoding="application/x-llamapun" id="S4.T5.10.8.8.2.m1.1d">italic_k = 10</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T5.10.8.8.5">79.4</td>
</tr>
<tr class="ltx_tr" id="S4.T5.12.10.10">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S4.T5.11.9.9.1"><math alttext="\epsilon=0.8" class="ltx_Math" display="inline" id="S4.T5.11.9.9.1.m1.1"><semantics id="S4.T5.11.9.9.1.m1.1a"><mrow id="S4.T5.11.9.9.1.m1.1.1" xref="S4.T5.11.9.9.1.m1.1.1.cmml"><mi id="S4.T5.11.9.9.1.m1.1.1.2" xref="S4.T5.11.9.9.1.m1.1.1.2.cmml">ϵ</mi><mo id="S4.T5.11.9.9.1.m1.1.1.1" xref="S4.T5.11.9.9.1.m1.1.1.1.cmml">=</mo><mn id="S4.T5.11.9.9.1.m1.1.1.3" xref="S4.T5.11.9.9.1.m1.1.1.3.cmml">0.8</mn></mrow><annotation-xml encoding="MathML-Content" id="S4.T5.11.9.9.1.m1.1b"><apply id="S4.T5.11.9.9.1.m1.1.1.cmml" xref="S4.T5.11.9.9.1.m1.1.1"><eq id="S4.T5.11.9.9.1.m1.1.1.1.cmml" xref="S4.T5.11.9.9.1.m1.1.1.1"></eq><ci id="S4.T5.11.9.9.1.m1.1.1.2.cmml" xref="S4.T5.11.9.9.1.m1.1.1.2">italic-ϵ</ci><cn id="S4.T5.11.9.9.1.m1.1.1.3.cmml" type="float" xref="S4.T5.11.9.9.1.m1.1.1.3">0.8</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T5.11.9.9.1.m1.1c">\epsilon=0.8</annotation><annotation encoding="application/x-llamapun" id="S4.T5.11.9.9.1.m1.1d">italic_ϵ = 0.8</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T5.12.10.10.3">77.7</td>
<td class="ltx_td ltx_border_bb ltx_border_r" id="S4.T5.12.10.10.4"></td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="S4.T5.12.10.10.2"><math alttext="k=20" class="ltx_Math" display="inline" id="S4.T5.12.10.10.2.m1.1"><semantics id="S4.T5.12.10.10.2.m1.1a"><mrow id="S4.T5.12.10.10.2.m1.1.1" xref="S4.T5.12.10.10.2.m1.1.1.cmml"><mi id="S4.T5.12.10.10.2.m1.1.1.2" xref="S4.T5.12.10.10.2.m1.1.1.2.cmml">k</mi><mo id="S4.T5.12.10.10.2.m1.1.1.1" xref="S4.T5.12.10.10.2.m1.1.1.1.cmml">=</mo><mn id="S4.T5.12.10.10.2.m1.1.1.3" xref="S4.T5.12.10.10.2.m1.1.1.3.cmml">20</mn></mrow><annotation-xml encoding="MathML-Content" id="S4.T5.12.10.10.2.m1.1b"><apply id="S4.T5.12.10.10.2.m1.1.1.cmml" xref="S4.T5.12.10.10.2.m1.1.1"><eq id="S4.T5.12.10.10.2.m1.1.1.1.cmml" xref="S4.T5.12.10.10.2.m1.1.1.1"></eq><ci id="S4.T5.12.10.10.2.m1.1.1.2.cmml" xref="S4.T5.12.10.10.2.m1.1.1.2">𝑘</ci><cn id="S4.T5.12.10.10.2.m1.1.1.3.cmml" type="integer" xref="S4.T5.12.10.10.2.m1.1.1.3">20</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T5.12.10.10.2.m1.1c">k=20</annotation><annotation encoding="application/x-llamapun" id="S4.T5.12.10.10.2.m1.1d">italic_k = 20</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T5.12.10.10.5">76.6</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of an ablation study conducted to evaluate the impact of different neighborhood selection strategies on the performance of the R2-T2 method, specifically using k-Nearest Neighbors (kNN) and Neighborhood Gradient Descent (NGD).  The study was performed using the MoAI model.  The table compares the performance across various benchmarks using different neighborhood sizes defined by both radius-based (e-ball) and kNN-based approaches. The goal is to determine the optimal neighborhood size and strategy for improving the accuracy of the test-time re-routing process.
> <details>
> <summary>read the caption</summary>
> Table 5: Ablation study of R2-T2 (k𝑘kitalic_kNN, NGD) with different choices of neighborhood on MoAI.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S4.SS2.1.fig1.1.1">
<tr class="ltx_tr" id="S4.SS2.1.fig1.1.1.1">
<td class="ltx_td ltx_align_left ltx_border_tt" id="S4.SS2.1.fig1.1.1.1.1" style="padding-top:0.45pt;padding-bottom:0.45pt;"><span class="ltx_text" id="S4.SS2.1.fig1.1.1.1.1.1" style="font-size:90%;">Kernel</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_tt" id="S4.SS2.1.fig1.1.1.1.2" style="padding-top:0.45pt;padding-bottom:0.45pt;"><span class="ltx_text" id="S4.SS2.1.fig1.1.1.1.2.1" style="font-size:90%;">Avg.</span></td>
</tr>
<tr class="ltx_tr" id="S4.SS2.1.fig1.1.1.2">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.SS2.1.fig1.1.1.2.1" style="padding-top:0.45pt;padding-bottom:0.45pt;">
<span class="ltx_text" id="S4.SS2.1.fig1.1.1.2.1.1" style="font-size:90%;">Linear </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="S4.SS2.1.fig1.1.1.2.1.2.1" style="font-size:90%;">(</span>Cortes<span class="ltx_text" id="S4.SS2.1.fig1.1.1.2.1.3.2.1.1" style="font-size:90%;">, </span><a class="ltx_ref" href="https://arxiv.org/html/2502.20395v1#bib.bib12" title="">1995</a><span class="ltx_text" id="S4.SS2.1.fig1.1.1.2.1.4.3" style="font-size:90%;">)</span></cite>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_t" id="S4.SS2.1.fig1.1.1.2.2" style="padding-top:0.45pt;padding-bottom:0.45pt;"><span class="ltx_text" id="S4.SS2.1.fig1.1.1.2.2.1" style="font-size:90%;">76.3</span></td>
</tr>
<tr class="ltx_tr" id="S4.SS2.1.fig1.1.1.3">
<td class="ltx_td ltx_align_left" id="S4.SS2.1.fig1.1.1.3.1" style="padding-top:0.45pt;padding-bottom:0.45pt;">
<span class="ltx_text" id="S4.SS2.1.fig1.1.1.3.1.1" style="font-size:90%;">Polynomial </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="S4.SS2.1.fig1.1.1.3.1.2.1" style="font-size:90%;">(</span>Cortes<span class="ltx_text" id="S4.SS2.1.fig1.1.1.3.1.3.2.1.1" style="font-size:90%;">, </span><a class="ltx_ref" href="https://arxiv.org/html/2502.20395v1#bib.bib12" title="">1995</a><span class="ltx_text" id="S4.SS2.1.fig1.1.1.3.1.4.3" style="font-size:90%;">)</span></cite>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.SS2.1.fig1.1.1.3.2" style="padding-top:0.45pt;padding-bottom:0.45pt;"><span class="ltx_text" id="S4.SS2.1.fig1.1.1.3.2.1" style="font-size:90%;">77.7</span></td>
</tr>
<tr class="ltx_tr" id="S4.SS2.1.fig1.1.1.4">
<td class="ltx_td ltx_align_left" id="S4.SS2.1.fig1.1.1.4.1" style="padding-top:0.45pt;padding-bottom:0.45pt;">
<span class="ltx_text" id="S4.SS2.1.fig1.1.1.4.1.1" style="font-size:90%;">Matern </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="S4.SS2.1.fig1.1.1.4.1.2.1" style="font-size:90%;">(</span>Williams &amp; Rasmussen<span class="ltx_text" id="S4.SS2.1.fig1.1.1.4.1.3.2.1.1" style="font-size:90%;">, </span><a class="ltx_ref" href="https://arxiv.org/html/2502.20395v1#bib.bib56" title="">2006</a><span class="ltx_text" id="S4.SS2.1.fig1.1.1.4.1.4.3" style="font-size:90%;">)</span></cite>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.SS2.1.fig1.1.1.4.2" style="padding-top:0.45pt;padding-bottom:0.45pt;"><span class="ltx_text" id="S4.SS2.1.fig1.1.1.4.2.1" style="font-size:90%;">78.7</span></td>
</tr>
<tr class="ltx_tr" id="S4.SS2.1.fig1.1.1.5">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S4.SS2.1.fig1.1.1.5.1" style="padding-top:0.45pt;padding-bottom:0.45pt;">
<span class="ltx_text" id="S4.SS2.1.fig1.1.1.5.1.1" style="font-size:90%;">Gaussian </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="S4.SS2.1.fig1.1.1.5.1.2.1" style="font-size:90%;">(</span>Williams &amp; Rasmussen<span class="ltx_text" id="S4.SS2.1.fig1.1.1.5.1.3.2.1.1" style="font-size:90%;">, </span><a class="ltx_ref" href="https://arxiv.org/html/2502.20395v1#bib.bib56" title="">2006</a><span class="ltx_text" id="S4.SS2.1.fig1.1.1.5.1.4.3" style="font-size:90%;">)</span></cite>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_bb" id="S4.SS2.1.fig1.1.1.5.2" style="padding-top:0.45pt;padding-bottom:0.45pt;"><span class="ltx_text ltx_font_bold" id="S4.SS2.1.fig1.1.1.5.2.1" style="font-size:90%;">80.7</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of an ablation study that investigates the impact of different kernel functions on the performance of the R2-T2 method (specifically using k-Nearest Neighbors and Neighborhood Gradient Descent).  The study was conducted on the MoAI multimodal model, and it shows how the choice of kernel affects various metrics across multiple benchmarks. The results provide insights into which kernel functions are best suited for the R2-T2 algorithm and its overall performance.
> <details>
> <summary>read the caption</summary>
> Table 6: Ablation study of R2-T2 (k𝑘kitalic_kNN, NGD) with kernel choices on MoAl.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S4.SS2.2.fig2.1.1">
<tr class="ltx_tr" id="S4.SS2.2.fig2.1.1.1">
<td class="ltx_td ltx_align_left ltx_border_tt" id="S4.SS2.2.fig2.1.1.1.1" style="padding-top:0.45pt;padding-bottom:0.45pt;"><span class="ltx_text" id="S4.SS2.2.fig2.1.1.1.1.1" style="font-size:90%;">Embedding Model</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_tt" id="S4.SS2.2.fig2.1.1.1.2" style="padding-top:0.45pt;padding-bottom:0.45pt;"><span class="ltx_text" id="S4.SS2.2.fig2.1.1.1.2.1" style="font-size:90%;">Avg.</span></td>
</tr>
<tr class="ltx_tr" id="S4.SS2.2.fig2.1.1.2">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.SS2.2.fig2.1.1.2.1" style="padding-top:0.45pt;padding-bottom:0.45pt;">
<span class="ltx_text" id="S4.SS2.2.fig2.1.1.2.1.1" style="font-size:90%;">Sentence-Bert </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="S4.SS2.2.fig2.1.1.2.1.2.1" style="font-size:90%;">(</span>Reimers<span class="ltx_text" id="S4.SS2.2.fig2.1.1.2.1.3.2.1.1" style="font-size:90%;">, </span><a class="ltx_ref" href="https://arxiv.org/html/2502.20395v1#bib.bib45" title="">2019</a><span class="ltx_text" id="S4.SS2.2.fig2.1.1.2.1.4.3" style="font-size:90%;">)</span></cite>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_t" id="S4.SS2.2.fig2.1.1.2.2" style="padding-top:0.45pt;padding-bottom:0.45pt;"><span class="ltx_text" id="S4.SS2.2.fig2.1.1.2.2.1" style="font-size:90%;">77.5</span></td>
</tr>
<tr class="ltx_tr" id="S4.SS2.2.fig2.1.1.3">
<td class="ltx_td ltx_align_left" id="S4.SS2.2.fig2.1.1.3.1" style="padding-top:0.45pt;padding-bottom:0.45pt;">
<span class="ltx_text" id="S4.SS2.2.fig2.1.1.3.1.1" style="font-size:90%;">Stella-En-1.5B-V5 </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="S4.SS2.2.fig2.1.1.3.1.2.1" style="font-size:90%;">(</span>Kusupati et al.<span class="ltx_text" id="S4.SS2.2.fig2.1.1.3.1.3.2.1.1" style="font-size:90%;">, </span><a class="ltx_ref" href="https://arxiv.org/html/2502.20395v1#bib.bib24" title="">2022</a><span class="ltx_text" id="S4.SS2.2.fig2.1.1.3.1.4.3" style="font-size:90%;">)</span></cite>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.SS2.2.fig2.1.1.3.2" style="padding-top:0.45pt;padding-bottom:0.45pt;"><span class="ltx_text" id="S4.SS2.2.fig2.1.1.3.2.1" style="font-size:90%;">78.5</span></td>
</tr>
<tr class="ltx_tr" id="S4.SS2.2.fig2.1.1.4">
<td class="ltx_td ltx_align_left" id="S4.SS2.2.fig2.1.1.4.1" style="padding-top:0.45pt;padding-bottom:0.45pt;">
<span class="ltx_text" id="S4.SS2.2.fig2.1.1.4.1.1" style="font-size:90%;">Gte-Qwen2-7B </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="S4.SS2.2.fig2.1.1.4.1.2.1" style="font-size:90%;">(</span>Li et al.<span class="ltx_text" id="S4.SS2.2.fig2.1.1.4.1.3.2.1.1" style="font-size:90%;">, </span><a class="ltx_ref" href="https://arxiv.org/html/2502.20395v1#bib.bib32" title="">2023c</a><span class="ltx_text" id="S4.SS2.2.fig2.1.1.4.1.4.3" style="font-size:90%;">)</span></cite>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.SS2.2.fig2.1.1.4.2" style="padding-top:0.45pt;padding-bottom:0.45pt;"><span class="ltx_text" id="S4.SS2.2.fig2.1.1.4.2.1" style="font-size:90%;">78.7</span></td>
</tr>
<tr class="ltx_tr" id="S4.SS2.2.fig2.1.1.5">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S4.SS2.2.fig2.1.1.5.1" style="padding-top:0.45pt;padding-bottom:0.45pt;">
<span class="ltx_text" id="S4.SS2.2.fig2.1.1.5.1.1" style="font-size:90%;">NV-Embed-V2 </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="S4.SS2.2.fig2.1.1.5.1.2.1" style="font-size:90%;">(</span>Lee et al.<span class="ltx_text" id="S4.SS2.2.fig2.1.1.5.1.3.2.1.1" style="font-size:90%;">, </span><a class="ltx_ref" href="https://arxiv.org/html/2502.20395v1#bib.bib26" title="">2024</a><span class="ltx_text" id="S4.SS2.2.fig2.1.1.5.1.4.3" style="font-size:90%;">)</span></cite>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_bb" id="S4.SS2.2.fig2.1.1.5.2" style="padding-top:0.45pt;padding-bottom:0.45pt;"><span class="ltx_text ltx_font_bold" id="S4.SS2.2.fig2.1.1.5.2.1" style="font-size:90%;">80.7</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This ablation study analyzes the impact of different embedding models on the performance of the R2-T2 method (specifically using k-NN and Neighborhood Gradient Descent).  It shows how various embedding models affect the overall accuracy of the multimodal mixture-of-experts (MoE) model across several benchmark tasks.  By comparing the accuracy achieved by different embedding models, the study evaluates the effectiveness of each model in capturing relevant information for improved routing weight optimization and enhanced performance.
> <details>
> <summary>read the caption</summary>
> Table 7: Ablation study of R2-T2 (k𝑘kitalic_kNN, NGD) with embedding models on MoAI.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S4.SS2.3.fig3.1.1">
<tr class="ltx_tr" id="S4.SS2.3.fig3.1.1.1">
<td class="ltx_td ltx_align_left ltx_border_tt" id="S4.SS2.3.fig3.1.1.1.1" style="padding-top:0.45pt;padding-bottom:0.45pt;"><span class="ltx_text" id="S4.SS2.3.fig3.1.1.1.1.1" style="font-size:90%;">#Step</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_tt" id="S4.SS2.3.fig3.1.1.1.2" style="padding-top:0.45pt;padding-bottom:0.45pt;"><span class="ltx_text" id="S4.SS2.3.fig3.1.1.1.2.1" style="font-size:90%;">Avg.</span></td>
</tr>
<tr class="ltx_tr" id="S4.SS2.3.fig3.1.1.2">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.SS2.3.fig3.1.1.2.1" style="padding-top:0.45pt;padding-bottom:0.45pt;"><span class="ltx_text" id="S4.SS2.3.fig3.1.1.2.1.1" style="font-size:90%;">5</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_t" id="S4.SS2.3.fig3.1.1.2.2" style="padding-top:0.45pt;padding-bottom:0.45pt;"><span class="ltx_text" id="S4.SS2.3.fig3.1.1.2.2.1" style="font-size:90%;">76.6</span></td>
</tr>
<tr class="ltx_tr" id="S4.SS2.3.fig3.1.1.3">
<td class="ltx_td ltx_align_left" id="S4.SS2.3.fig3.1.1.3.1" style="padding-top:0.45pt;padding-bottom:0.45pt;"><span class="ltx_text" id="S4.SS2.3.fig3.1.1.3.1.1" style="font-size:90%;">10</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.SS2.3.fig3.1.1.3.2" style="padding-top:0.45pt;padding-bottom:0.45pt;"><span class="ltx_text ltx_font_bold" id="S4.SS2.3.fig3.1.1.3.2.1" style="font-size:90%;">80.7</span></td>
</tr>
<tr class="ltx_tr" id="S4.SS2.3.fig3.1.1.4">
<td class="ltx_td ltx_align_left" id="S4.SS2.3.fig3.1.1.4.1" style="padding-top:0.45pt;padding-bottom:0.45pt;"><span class="ltx_text" id="S4.SS2.3.fig3.1.1.4.1.1" style="font-size:90%;">20</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.SS2.3.fig3.1.1.4.2" style="padding-top:0.45pt;padding-bottom:0.45pt;"><span class="ltx_text" id="S4.SS2.3.fig3.1.1.4.2.1" style="font-size:90%;">80.5</span></td>
</tr>
<tr class="ltx_tr" id="S4.SS2.3.fig3.1.1.5">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S4.SS2.3.fig3.1.1.5.1" style="padding-top:0.45pt;padding-bottom:0.45pt;"><span class="ltx_text" id="S4.SS2.3.fig3.1.1.5.1.1" style="font-size:90%;">50</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_bb" id="S4.SS2.3.fig3.1.1.5.2" style="padding-top:0.45pt;padding-bottom:0.45pt;"><span class="ltx_text ltx_font_bold" id="S4.SS2.3.fig3.1.1.5.2.1" style="font-size:90%;">80.7</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This ablation study investigates the impact of varying the number of Neighborhood Gradient Descent (NGD) steps on the performance of the R2-T2 method (using k-NN and NGD) with the MoAI model. It shows the accuracy of the model on several benchmarks (MMBench, MME-P, SQA-IMG, AI2D, TextVQA, GQA, CVBench2D, CVBench3D) when different numbers of NGD steps are performed (5, 7, 10, 20, 50).  The results help determine the optimal balance between accuracy and computational cost by showing how many steps are needed before improvements plateau.
> <details>
> <summary>read the caption</summary>
> Table 8: Ablation study of R2-T2 (k𝑘kitalic_kNN, NGD) with NGD steps on MoAI.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="A4.T9.6.4">
<tr class="ltx_tr" id="A4.T9.4.2.2">
<td class="ltx_td ltx_align_left ltx_border_tt" id="A4.T9.4.2.2.3">Schedule</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A4.T9.4.2.2.4"><span class="ltx_text ltx_font_bold" id="A4.T9.4.2.2.4.1">MMBench</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A4.T9.4.2.2.5"><span class="ltx_text ltx_font_bold" id="A4.T9.4.2.2.5.1">MME-P</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A4.T9.4.2.2.6"><span class="ltx_text ltx_font_bold" id="A4.T9.4.2.2.6.1">SQA-IMG</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A4.T9.4.2.2.7"><span class="ltx_text ltx_font_bold" id="A4.T9.4.2.2.7.1">AI2D</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A4.T9.4.2.2.8"><span class="ltx_text ltx_font_bold" id="A4.T9.4.2.2.8.1">TextVQA</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A4.T9.4.2.2.9"><span class="ltx_text ltx_font_bold" id="A4.T9.4.2.2.9.1">GQA</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A4.T9.3.1.1.1"><span class="ltx_text ltx_font_bold" id="A4.T9.3.1.1.1.1">CVBench<sup class="ltx_sup" id="A4.T9.3.1.1.1.1.1"><span class="ltx_text ltx_font_medium ltx_font_italic" id="A4.T9.3.1.1.1.1.1.1">2D</span></sup></span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A4.T9.4.2.2.2"><span class="ltx_text ltx_font_bold" id="A4.T9.4.2.2.2.1">CVBench<sup class="ltx_sup" id="A4.T9.4.2.2.2.1.1"><span class="ltx_text ltx_font_medium ltx_font_italic" id="A4.T9.4.2.2.2.1.1.1">3D</span></sup></span></td>
</tr>
<tr class="ltx_tr" id="A4.T9.5.3.3">
<td class="ltx_td ltx_align_left ltx_border_t" id="A4.T9.5.3.3.1">Fixed (<math alttext="1e\text{-}3" class="ltx_Math" display="inline" id="A4.T9.5.3.3.1.m1.1"><semantics id="A4.T9.5.3.3.1.m1.1a"><mrow id="A4.T9.5.3.3.1.m1.1.1" xref="A4.T9.5.3.3.1.m1.1.1.cmml"><mn id="A4.T9.5.3.3.1.m1.1.1.2" xref="A4.T9.5.3.3.1.m1.1.1.2.cmml">1</mn><mo id="A4.T9.5.3.3.1.m1.1.1.1" xref="A4.T9.5.3.3.1.m1.1.1.1.cmml">⁢</mo><mi id="A4.T9.5.3.3.1.m1.1.1.3" xref="A4.T9.5.3.3.1.m1.1.1.3.cmml">e</mi><mo id="A4.T9.5.3.3.1.m1.1.1.1a" xref="A4.T9.5.3.3.1.m1.1.1.1.cmml">⁢</mo><mtext id="A4.T9.5.3.3.1.m1.1.1.4" xref="A4.T9.5.3.3.1.m1.1.1.4a.cmml">-</mtext><mo id="A4.T9.5.3.3.1.m1.1.1.1b" xref="A4.T9.5.3.3.1.m1.1.1.1.cmml">⁢</mo><mn id="A4.T9.5.3.3.1.m1.1.1.5" xref="A4.T9.5.3.3.1.m1.1.1.5.cmml">3</mn></mrow><annotation-xml encoding="MathML-Content" id="A4.T9.5.3.3.1.m1.1b"><apply id="A4.T9.5.3.3.1.m1.1.1.cmml" xref="A4.T9.5.3.3.1.m1.1.1"><times id="A4.T9.5.3.3.1.m1.1.1.1.cmml" xref="A4.T9.5.3.3.1.m1.1.1.1"></times><cn id="A4.T9.5.3.3.1.m1.1.1.2.cmml" type="integer" xref="A4.T9.5.3.3.1.m1.1.1.2">1</cn><ci id="A4.T9.5.3.3.1.m1.1.1.3.cmml" xref="A4.T9.5.3.3.1.m1.1.1.3">𝑒</ci><ci id="A4.T9.5.3.3.1.m1.1.1.4a.cmml" xref="A4.T9.5.3.3.1.m1.1.1.4"><mtext id="A4.T9.5.3.3.1.m1.1.1.4.cmml" xref="A4.T9.5.3.3.1.m1.1.1.4">-</mtext></ci><cn id="A4.T9.5.3.3.1.m1.1.1.5.cmml" type="integer" xref="A4.T9.5.3.3.1.m1.1.1.5">3</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="A4.T9.5.3.3.1.m1.1c">1e\text{-}3</annotation><annotation encoding="application/x-llamapun" id="A4.T9.5.3.3.1.m1.1d">1 italic_e - 3</annotation></semantics></math>)</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T9.5.3.3.2">71.8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T9.5.3.3.3">1671.2</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T9.5.3.3.4">74.3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T9.5.3.3.5">70.9</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T9.5.3.3.6">60.4</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T9.5.3.3.7">63.1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T9.5.3.3.8">66.8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T9.5.3.3.9">57.2</td>
</tr>
<tr class="ltx_tr" id="A4.T9.6.4.4">
<td class="ltx_td ltx_align_left" id="A4.T9.6.4.4.1">Fixed (<math alttext="1e\text{-}4" class="ltx_Math" display="inline" id="A4.T9.6.4.4.1.m1.1"><semantics id="A4.T9.6.4.4.1.m1.1a"><mrow id="A4.T9.6.4.4.1.m1.1.1" xref="A4.T9.6.4.4.1.m1.1.1.cmml"><mn id="A4.T9.6.4.4.1.m1.1.1.2" xref="A4.T9.6.4.4.1.m1.1.1.2.cmml">1</mn><mo id="A4.T9.6.4.4.1.m1.1.1.1" xref="A4.T9.6.4.4.1.m1.1.1.1.cmml">⁢</mo><mi id="A4.T9.6.4.4.1.m1.1.1.3" xref="A4.T9.6.4.4.1.m1.1.1.3.cmml">e</mi><mo id="A4.T9.6.4.4.1.m1.1.1.1a" xref="A4.T9.6.4.4.1.m1.1.1.1.cmml">⁢</mo><mtext id="A4.T9.6.4.4.1.m1.1.1.4" xref="A4.T9.6.4.4.1.m1.1.1.4a.cmml">-</mtext><mo id="A4.T9.6.4.4.1.m1.1.1.1b" xref="A4.T9.6.4.4.1.m1.1.1.1.cmml">⁢</mo><mn id="A4.T9.6.4.4.1.m1.1.1.5" xref="A4.T9.6.4.4.1.m1.1.1.5.cmml">4</mn></mrow><annotation-xml encoding="MathML-Content" id="A4.T9.6.4.4.1.m1.1b"><apply id="A4.T9.6.4.4.1.m1.1.1.cmml" xref="A4.T9.6.4.4.1.m1.1.1"><times id="A4.T9.6.4.4.1.m1.1.1.1.cmml" xref="A4.T9.6.4.4.1.m1.1.1.1"></times><cn id="A4.T9.6.4.4.1.m1.1.1.2.cmml" type="integer" xref="A4.T9.6.4.4.1.m1.1.1.2">1</cn><ci id="A4.T9.6.4.4.1.m1.1.1.3.cmml" xref="A4.T9.6.4.4.1.m1.1.1.3">𝑒</ci><ci id="A4.T9.6.4.4.1.m1.1.1.4a.cmml" xref="A4.T9.6.4.4.1.m1.1.1.4"><mtext id="A4.T9.6.4.4.1.m1.1.1.4.cmml" xref="A4.T9.6.4.4.1.m1.1.1.4">-</mtext></ci><cn id="A4.T9.6.4.4.1.m1.1.1.5.cmml" type="integer" xref="A4.T9.6.4.4.1.m1.1.1.5">4</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="A4.T9.6.4.4.1.m1.1c">1e\text{-}4</annotation><annotation encoding="application/x-llamapun" id="A4.T9.6.4.4.1.m1.1d">1 italic_e - 4</annotation></semantics></math>)</td>
<td class="ltx_td ltx_align_center" id="A4.T9.6.4.4.2">75.2</td>
<td class="ltx_td ltx_align_center" id="A4.T9.6.4.4.3">1692.5</td>
<td class="ltx_td ltx_align_center" id="A4.T9.6.4.4.4">77.8</td>
<td class="ltx_td ltx_align_center" id="A4.T9.6.4.4.5">74.5</td>
<td class="ltx_td ltx_align_center" id="A4.T9.6.4.4.6">63.9</td>
<td class="ltx_td ltx_align_center" id="A4.T9.6.4.4.7">66.5</td>
<td class="ltx_td ltx_align_center" id="A4.T9.6.4.4.8">69.9</td>
<td class="ltx_td ltx_align_center" id="A4.T9.6.4.4.9">63.3</td>
</tr>
<tr class="ltx_tr" id="A4.T9.6.4.5">
<td class="ltx_td ltx_align_left" id="A4.T9.6.4.5.1">Step Decay</td>
<td class="ltx_td ltx_align_center" id="A4.T9.6.4.5.2">82.9</td>
<td class="ltx_td ltx_align_center" id="A4.T9.6.4.5.3">1745.4</td>
<td class="ltx_td ltx_align_center" id="A4.T9.6.4.5.4">84.2</td>
<td class="ltx_td ltx_align_center" id="A4.T9.6.4.5.5">81.8</td>
<td class="ltx_td ltx_align_center" id="A4.T9.6.4.5.6">70.5</td>
<td class="ltx_td ltx_align_center" id="A4.T9.6.4.5.7">73.8</td>
<td class="ltx_td ltx_align_center" id="A4.T9.6.4.5.8">73.5</td>
<td class="ltx_td ltx_align_center" id="A4.T9.6.4.5.9">67.2</td>
</tr>
<tr class="ltx_tr" id="A4.T9.6.4.6">
<td class="ltx_td ltx_align_left ltx_border_bb" id="A4.T9.6.4.6.1">Cosine</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T9.6.4.6.2"><span class="ltx_text ltx_font_bold" id="A4.T9.6.4.6.2.1">85.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T9.6.4.6.3"><span class="ltx_text ltx_font_bold" id="A4.T9.6.4.6.3.1">1785.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T9.6.4.6.4"><span class="ltx_text ltx_font_bold" id="A4.T9.6.4.6.4.1">88.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T9.6.4.6.5"><span class="ltx_text ltx_font_bold" id="A4.T9.6.4.6.5.1">85.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T9.6.4.6.6"><span class="ltx_text ltx_font_bold" id="A4.T9.6.4.6.6.1">73.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T9.6.4.6.7"><span class="ltx_text ltx_font_bold" id="A4.T9.6.4.6.7.1">77.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T9.6.4.6.8"><span class="ltx_text ltx_font_bold" id="A4.T9.6.4.6.8.1">77.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T9.6.4.6.9"><span class="ltx_text ltx_font_bold" id="A4.T9.6.4.6.9.1">69.2</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This ablation study analyzes the impact of different learning rate schedules on the performance of the R2-T2 algorithm, specifically using kNN and Neighborhood Gradient Descent (NGD). It compares four different learning rate schedules: a fixed learning rate of 1e-3, a fixed learning rate of 1e-4, a step decay schedule, and a cosine annealing schedule. The performance is evaluated across multiple benchmarks (MMBench, MME-P, SQA-IMG, AI2D, TextVQA, GQA, CVBench2D, and CVBench3D), with accuracy measured for each schedule.
> <details>
> <summary>read the caption</summary>
> Table 9: Ablation study of R2-T2 (k𝑘kitalic_kNN, NGD) with different learning rate schedules.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="A4.T10.14.12">
<tr class="ltx_tr" id="A4.T10.4.2.2">
<td class="ltx_td ltx_align_left ltx_border_tt" id="A4.T10.4.2.2.3">Neighbors</td>
<td class="ltx_td ltx_align_left ltx_border_tt" id="A4.T10.4.2.2.4">Parameter</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A4.T10.4.2.2.5"><span class="ltx_text ltx_font_bold" id="A4.T10.4.2.2.5.1">MMBench</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A4.T10.4.2.2.6"><span class="ltx_text ltx_font_bold" id="A4.T10.4.2.2.6.1">MME-P</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A4.T10.4.2.2.7"><span class="ltx_text ltx_font_bold" id="A4.T10.4.2.2.7.1">SQA-IMG</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A4.T10.4.2.2.8"><span class="ltx_text ltx_font_bold" id="A4.T10.4.2.2.8.1">AI2D</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A4.T10.4.2.2.9"><span class="ltx_text ltx_font_bold" id="A4.T10.4.2.2.9.1">TextVQA</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A4.T10.4.2.2.10"><span class="ltx_text ltx_font_bold" id="A4.T10.4.2.2.10.1">GQA</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A4.T10.3.1.1.1"><span class="ltx_text ltx_font_bold" id="A4.T10.3.1.1.1.1">CVBench<sup class="ltx_sup" id="A4.T10.3.1.1.1.1.1"><span class="ltx_text ltx_font_medium ltx_font_italic" id="A4.T10.3.1.1.1.1.1.1">2D</span></sup></span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A4.T10.4.2.2.2"><span class="ltx_text ltx_font_bold" id="A4.T10.4.2.2.2.1">CVBench<sup class="ltx_sup" id="A4.T10.4.2.2.2.1.1"><span class="ltx_text ltx_font_medium ltx_font_italic" id="A4.T10.4.2.2.2.1.1.1">3D</span></sup></span></td>
</tr>
<tr class="ltx_tr" id="A4.T10.6.4.4">
<td class="ltx_td ltx_align_left ltx_border_t" id="A4.T10.5.3.3.1" rowspan="4"><span class="ltx_text" id="A4.T10.5.3.3.1.1"><math alttext="\epsilon" class="ltx_Math" display="inline" id="A4.T10.5.3.3.1.1.m1.1"><semantics id="A4.T10.5.3.3.1.1.m1.1a"><mi id="A4.T10.5.3.3.1.1.m1.1.1" xref="A4.T10.5.3.3.1.1.m1.1.1.cmml">ϵ</mi><annotation-xml encoding="MathML-Content" id="A4.T10.5.3.3.1.1.m1.1b"><ci id="A4.T10.5.3.3.1.1.m1.1.1.cmml" xref="A4.T10.5.3.3.1.1.m1.1.1">italic-ϵ</ci></annotation-xml><annotation encoding="application/x-tex" id="A4.T10.5.3.3.1.1.m1.1c">\epsilon</annotation><annotation encoding="application/x-llamapun" id="A4.T10.5.3.3.1.1.m1.1d">italic_ϵ</annotation></semantics></math>-ball</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A4.T10.6.4.4.2">
<math alttext="\epsilon=" class="ltx_Math" display="inline" id="A4.T10.6.4.4.2.m1.1"><semantics id="A4.T10.6.4.4.2.m1.1a"><mrow id="A4.T10.6.4.4.2.m1.1.1" xref="A4.T10.6.4.4.2.m1.1.1.cmml"><mi id="A4.T10.6.4.4.2.m1.1.1.2" xref="A4.T10.6.4.4.2.m1.1.1.2.cmml">ϵ</mi><mo id="A4.T10.6.4.4.2.m1.1.1.1" xref="A4.T10.6.4.4.2.m1.1.1.1.cmml">=</mo><mi id="A4.T10.6.4.4.2.m1.1.1.3" xref="A4.T10.6.4.4.2.m1.1.1.3.cmml"></mi></mrow><annotation-xml encoding="MathML-Content" id="A4.T10.6.4.4.2.m1.1b"><apply id="A4.T10.6.4.4.2.m1.1.1.cmml" xref="A4.T10.6.4.4.2.m1.1.1"><eq id="A4.T10.6.4.4.2.m1.1.1.1.cmml" xref="A4.T10.6.4.4.2.m1.1.1.1"></eq><ci id="A4.T10.6.4.4.2.m1.1.1.2.cmml" xref="A4.T10.6.4.4.2.m1.1.1.2">italic-ϵ</ci><csymbol cd="latexml" id="A4.T10.6.4.4.2.m1.1.1.3.cmml" xref="A4.T10.6.4.4.2.m1.1.1.3">absent</csymbol></apply></annotation-xml><annotation encoding="application/x-tex" id="A4.T10.6.4.4.2.m1.1c">\epsilon=</annotation><annotation encoding="application/x-llamapun" id="A4.T10.6.4.4.2.m1.1d">italic_ϵ =</annotation></semantics></math> 0.2</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T10.6.4.4.3">82.4</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T10.6.4.4.4">1733.9</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T10.6.4.4.5">84.8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T10.6.4.4.6">81.3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T10.6.4.4.7">69.9</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T10.6.4.4.8">73.1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T10.6.4.4.9">67.1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T10.6.4.4.10">66.5</td>
</tr>
<tr class="ltx_tr" id="A4.T10.7.5.5">
<td class="ltx_td ltx_align_left" id="A4.T10.7.5.5.1">
<math alttext="\epsilon=" class="ltx_Math" display="inline" id="A4.T10.7.5.5.1.m1.1"><semantics id="A4.T10.7.5.5.1.m1.1a"><mrow id="A4.T10.7.5.5.1.m1.1.1" xref="A4.T10.7.5.5.1.m1.1.1.cmml"><mi id="A4.T10.7.5.5.1.m1.1.1.2" xref="A4.T10.7.5.5.1.m1.1.1.2.cmml">ϵ</mi><mo id="A4.T10.7.5.5.1.m1.1.1.1" xref="A4.T10.7.5.5.1.m1.1.1.1.cmml">=</mo><mi id="A4.T10.7.5.5.1.m1.1.1.3" xref="A4.T10.7.5.5.1.m1.1.1.3.cmml"></mi></mrow><annotation-xml encoding="MathML-Content" id="A4.T10.7.5.5.1.m1.1b"><apply id="A4.T10.7.5.5.1.m1.1.1.cmml" xref="A4.T10.7.5.5.1.m1.1.1"><eq id="A4.T10.7.5.5.1.m1.1.1.1.cmml" xref="A4.T10.7.5.5.1.m1.1.1.1"></eq><ci id="A4.T10.7.5.5.1.m1.1.1.2.cmml" xref="A4.T10.7.5.5.1.m1.1.1.2">italic-ϵ</ci><csymbol cd="latexml" id="A4.T10.7.5.5.1.m1.1.1.3.cmml" xref="A4.T10.7.5.5.1.m1.1.1.3">absent</csymbol></apply></annotation-xml><annotation encoding="application/x-tex" id="A4.T10.7.5.5.1.m1.1c">\epsilon=</annotation><annotation encoding="application/x-llamapun" id="A4.T10.7.5.5.1.m1.1d">italic_ϵ =</annotation></semantics></math> 0.4</td>
<td class="ltx_td ltx_align_center" id="A4.T10.7.5.5.2">83.9</td>
<td class="ltx_td ltx_align_center" id="A4.T10.7.5.5.3">1758.4</td>
<td class="ltx_td ltx_align_center" id="A4.T10.7.5.5.4">86.0</td>
<td class="ltx_td ltx_align_center" id="A4.T10.7.5.5.5">83.0</td>
<td class="ltx_td ltx_align_center" id="A4.T10.7.5.5.6">71.5</td>
<td class="ltx_td ltx_align_center" id="A4.T10.7.5.5.7">74.8</td>
<td class="ltx_td ltx_align_center" id="A4.T10.7.5.5.8">68.5</td>
<td class="ltx_td ltx_align_center" id="A4.T10.7.5.5.9">67.3</td>
</tr>
<tr class="ltx_tr" id="A4.T10.8.6.6">
<td class="ltx_td ltx_align_left" id="A4.T10.8.6.6.1">
<math alttext="\epsilon=" class="ltx_Math" display="inline" id="A4.T10.8.6.6.1.m1.1"><semantics id="A4.T10.8.6.6.1.m1.1a"><mrow id="A4.T10.8.6.6.1.m1.1.1" xref="A4.T10.8.6.6.1.m1.1.1.cmml"><mi id="A4.T10.8.6.6.1.m1.1.1.2" xref="A4.T10.8.6.6.1.m1.1.1.2.cmml">ϵ</mi><mo id="A4.T10.8.6.6.1.m1.1.1.1" xref="A4.T10.8.6.6.1.m1.1.1.1.cmml">=</mo><mi id="A4.T10.8.6.6.1.m1.1.1.3" xref="A4.T10.8.6.6.1.m1.1.1.3.cmml"></mi></mrow><annotation-xml encoding="MathML-Content" id="A4.T10.8.6.6.1.m1.1b"><apply id="A4.T10.8.6.6.1.m1.1.1.cmml" xref="A4.T10.8.6.6.1.m1.1.1"><eq id="A4.T10.8.6.6.1.m1.1.1.1.cmml" xref="A4.T10.8.6.6.1.m1.1.1.1"></eq><ci id="A4.T10.8.6.6.1.m1.1.1.2.cmml" xref="A4.T10.8.6.6.1.m1.1.1.2">italic-ϵ</ci><csymbol cd="latexml" id="A4.T10.8.6.6.1.m1.1.1.3.cmml" xref="A4.T10.8.6.6.1.m1.1.1.3">absent</csymbol></apply></annotation-xml><annotation encoding="application/x-tex" id="A4.T10.8.6.6.1.m1.1c">\epsilon=</annotation><annotation encoding="application/x-llamapun" id="A4.T10.8.6.6.1.m1.1d">italic_ϵ =</annotation></semantics></math> 0.6</td>
<td class="ltx_td ltx_align_center" id="A4.T10.8.6.6.2"><span class="ltx_text ltx_font_bold" id="A4.T10.8.6.6.2.1">85.4</span></td>
<td class="ltx_td ltx_align_center" id="A4.T10.8.6.6.3"><span class="ltx_text ltx_font_bold" id="A4.T10.8.6.6.3.1">1778.8</span></td>
<td class="ltx_td ltx_align_center" id="A4.T10.8.6.6.4"><span class="ltx_text ltx_font_bold" id="A4.T10.8.6.6.4.1">87.2</span></td>
<td class="ltx_td ltx_align_center" id="A4.T10.8.6.6.5"><span class="ltx_text ltx_font_bold" id="A4.T10.8.6.6.5.1">83.8</span></td>
<td class="ltx_td ltx_align_center" id="A4.T10.8.6.6.6"><span class="ltx_text ltx_font_bold" id="A4.T10.8.6.6.6.1">72.4</span></td>
<td class="ltx_td ltx_align_center" id="A4.T10.8.6.6.7"><span class="ltx_text ltx_font_bold" id="A4.T10.8.6.6.7.1">75.9</span></td>
<td class="ltx_td ltx_align_center" id="A4.T10.8.6.6.8"><span class="ltx_text ltx_font_bold" id="A4.T10.8.6.6.8.1">69.6</span></td>
<td class="ltx_td ltx_align_center" id="A4.T10.8.6.6.9"><span class="ltx_text ltx_font_bold" id="A4.T10.8.6.6.9.1">68.0</span></td>
</tr>
<tr class="ltx_tr" id="A4.T10.9.7.7">
<td class="ltx_td ltx_align_left" id="A4.T10.9.7.7.1">
<math alttext="\epsilon=" class="ltx_Math" display="inline" id="A4.T10.9.7.7.1.m1.1"><semantics id="A4.T10.9.7.7.1.m1.1a"><mrow id="A4.T10.9.7.7.1.m1.1.1" xref="A4.T10.9.7.7.1.m1.1.1.cmml"><mi id="A4.T10.9.7.7.1.m1.1.1.2" xref="A4.T10.9.7.7.1.m1.1.1.2.cmml">ϵ</mi><mo id="A4.T10.9.7.7.1.m1.1.1.1" xref="A4.T10.9.7.7.1.m1.1.1.1.cmml">=</mo><mi id="A4.T10.9.7.7.1.m1.1.1.3" xref="A4.T10.9.7.7.1.m1.1.1.3.cmml"></mi></mrow><annotation-xml encoding="MathML-Content" id="A4.T10.9.7.7.1.m1.1b"><apply id="A4.T10.9.7.7.1.m1.1.1.cmml" xref="A4.T10.9.7.7.1.m1.1.1"><eq id="A4.T10.9.7.7.1.m1.1.1.1.cmml" xref="A4.T10.9.7.7.1.m1.1.1.1"></eq><ci id="A4.T10.9.7.7.1.m1.1.1.2.cmml" xref="A4.T10.9.7.7.1.m1.1.1.2">italic-ϵ</ci><csymbol cd="latexml" id="A4.T10.9.7.7.1.m1.1.1.3.cmml" xref="A4.T10.9.7.7.1.m1.1.1.3">absent</csymbol></apply></annotation-xml><annotation encoding="application/x-tex" id="A4.T10.9.7.7.1.m1.1c">\epsilon=</annotation><annotation encoding="application/x-llamapun" id="A4.T10.9.7.7.1.m1.1d">italic_ϵ =</annotation></semantics></math> 0.8</td>
<td class="ltx_td ltx_align_center" id="A4.T10.9.7.7.2">83.7</td>
<td class="ltx_td ltx_align_center" id="A4.T10.9.7.7.3">1756.5</td>
<td class="ltx_td ltx_align_center" id="A4.T10.9.7.7.4">85.9</td>
<td class="ltx_td ltx_align_center" id="A4.T10.9.7.7.5">82.5</td>
<td class="ltx_td ltx_align_center" id="A4.T10.9.7.7.6">71.2</td>
<td class="ltx_td ltx_align_center" id="A4.T10.9.7.7.7">74.5</td>
<td class="ltx_td ltx_align_center" id="A4.T10.9.7.7.8">68.3</td>
<td class="ltx_td ltx_align_center" id="A4.T10.9.7.7.9">67.4</td>
</tr>
<tr class="ltx_tr" id="A4.T10.11.9.9">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_t" id="A4.T10.10.8.8.1" rowspan="4"><span class="ltx_text" id="A4.T10.10.8.8.1.1"><math alttext="k" class="ltx_Math" display="inline" id="A4.T10.10.8.8.1.1.m1.1"><semantics id="A4.T10.10.8.8.1.1.m1.1a"><mi id="A4.T10.10.8.8.1.1.m1.1.1" xref="A4.T10.10.8.8.1.1.m1.1.1.cmml">k</mi><annotation-xml encoding="MathML-Content" id="A4.T10.10.8.8.1.1.m1.1b"><ci id="A4.T10.10.8.8.1.1.m1.1.1.cmml" xref="A4.T10.10.8.8.1.1.m1.1.1">𝑘</ci></annotation-xml><annotation encoding="application/x-tex" id="A4.T10.10.8.8.1.1.m1.1c">k</annotation><annotation encoding="application/x-llamapun" id="A4.T10.10.8.8.1.1.m1.1d">italic_k</annotation></semantics></math>NN</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A4.T10.11.9.9.2">
<math alttext="k=" class="ltx_Math" display="inline" id="A4.T10.11.9.9.2.m1.1"><semantics id="A4.T10.11.9.9.2.m1.1a"><mrow id="A4.T10.11.9.9.2.m1.1.1" xref="A4.T10.11.9.9.2.m1.1.1.cmml"><mi id="A4.T10.11.9.9.2.m1.1.1.2" xref="A4.T10.11.9.9.2.m1.1.1.2.cmml">k</mi><mo id="A4.T10.11.9.9.2.m1.1.1.1" xref="A4.T10.11.9.9.2.m1.1.1.1.cmml">=</mo><mi id="A4.T10.11.9.9.2.m1.1.1.3" xref="A4.T10.11.9.9.2.m1.1.1.3.cmml"></mi></mrow><annotation-xml encoding="MathML-Content" id="A4.T10.11.9.9.2.m1.1b"><apply id="A4.T10.11.9.9.2.m1.1.1.cmml" xref="A4.T10.11.9.9.2.m1.1.1"><eq id="A4.T10.11.9.9.2.m1.1.1.1.cmml" xref="A4.T10.11.9.9.2.m1.1.1.1"></eq><ci id="A4.T10.11.9.9.2.m1.1.1.2.cmml" xref="A4.T10.11.9.9.2.m1.1.1.2">𝑘</ci><csymbol cd="latexml" id="A4.T10.11.9.9.2.m1.1.1.3.cmml" xref="A4.T10.11.9.9.2.m1.1.1.3">absent</csymbol></apply></annotation-xml><annotation encoding="application/x-tex" id="A4.T10.11.9.9.2.m1.1c">k=</annotation><annotation encoding="application/x-llamapun" id="A4.T10.11.9.9.2.m1.1d">italic_k =</annotation></semantics></math> 3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T10.11.9.9.3">83.2</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T10.11.9.9.4">1740.9</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T10.11.9.9.5">86.1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T10.11.9.9.6">83.1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T10.11.9.9.7">71.3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T10.11.9.9.8">75.1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T10.11.9.9.9">75.8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T10.11.9.9.10">67.4</td>
</tr>
<tr class="ltx_tr" id="A4.T10.12.10.10">
<td class="ltx_td ltx_align_left" id="A4.T10.12.10.10.1">
<math alttext="k=" class="ltx_Math" display="inline" id="A4.T10.12.10.10.1.m1.1"><semantics id="A4.T10.12.10.10.1.m1.1a"><mrow id="A4.T10.12.10.10.1.m1.1.1" xref="A4.T10.12.10.10.1.m1.1.1.cmml"><mi id="A4.T10.12.10.10.1.m1.1.1.2" xref="A4.T10.12.10.10.1.m1.1.1.2.cmml">k</mi><mo id="A4.T10.12.10.10.1.m1.1.1.1" xref="A4.T10.12.10.10.1.m1.1.1.1.cmml">=</mo><mi id="A4.T10.12.10.10.1.m1.1.1.3" xref="A4.T10.12.10.10.1.m1.1.1.3.cmml"></mi></mrow><annotation-xml encoding="MathML-Content" id="A4.T10.12.10.10.1.m1.1b"><apply id="A4.T10.12.10.10.1.m1.1.1.cmml" xref="A4.T10.12.10.10.1.m1.1.1"><eq id="A4.T10.12.10.10.1.m1.1.1.1.cmml" xref="A4.T10.12.10.10.1.m1.1.1.1"></eq><ci id="A4.T10.12.10.10.1.m1.1.1.2.cmml" xref="A4.T10.12.10.10.1.m1.1.1.2">𝑘</ci><csymbol cd="latexml" id="A4.T10.12.10.10.1.m1.1.1.3.cmml" xref="A4.T10.12.10.10.1.m1.1.1.3">absent</csymbol></apply></annotation-xml><annotation encoding="application/x-tex" id="A4.T10.12.10.10.1.m1.1c">k=</annotation><annotation encoding="application/x-llamapun" id="A4.T10.12.10.10.1.m1.1d">italic_k =</annotation></semantics></math> 5</td>
<td class="ltx_td ltx_align_center" id="A4.T10.12.10.10.2"><span class="ltx_text ltx_font_bold" id="A4.T10.12.10.10.2.1">85.2</span></td>
<td class="ltx_td ltx_align_center" id="A4.T10.12.10.10.3"><span class="ltx_text ltx_font_bold" id="A4.T10.12.10.10.3.1">1785.5</span></td>
<td class="ltx_td ltx_align_center" id="A4.T10.12.10.10.4"><span class="ltx_text ltx_font_bold" id="A4.T10.12.10.10.4.1">88.3</span></td>
<td class="ltx_td ltx_align_center" id="A4.T10.12.10.10.5"><span class="ltx_text ltx_font_bold" id="A4.T10.12.10.10.5.1">85.0</span></td>
<td class="ltx_td ltx_align_center" id="A4.T10.12.10.10.6"><span class="ltx_text ltx_font_bold" id="A4.T10.12.10.10.6.1">73.5</span></td>
<td class="ltx_td ltx_align_center" id="A4.T10.12.10.10.7"><span class="ltx_text ltx_font_bold" id="A4.T10.12.10.10.7.1">77.0</span></td>
<td class="ltx_td ltx_align_center" id="A4.T10.12.10.10.8"><span class="ltx_text ltx_font_bold" id="A4.T10.12.10.10.8.1">77.9</span></td>
<td class="ltx_td ltx_align_center" id="A4.T10.12.10.10.9"><span class="ltx_text ltx_font_bold" id="A4.T10.12.10.10.9.1">69.2</span></td>
</tr>
<tr class="ltx_tr" id="A4.T10.13.11.11">
<td class="ltx_td ltx_align_left" id="A4.T10.13.11.11.1">
<math alttext="k=" class="ltx_Math" display="inline" id="A4.T10.13.11.11.1.m1.1"><semantics id="A4.T10.13.11.11.1.m1.1a"><mrow id="A4.T10.13.11.11.1.m1.1.1" xref="A4.T10.13.11.11.1.m1.1.1.cmml"><mi id="A4.T10.13.11.11.1.m1.1.1.2" xref="A4.T10.13.11.11.1.m1.1.1.2.cmml">k</mi><mo id="A4.T10.13.11.11.1.m1.1.1.1" xref="A4.T10.13.11.11.1.m1.1.1.1.cmml">=</mo><mi id="A4.T10.13.11.11.1.m1.1.1.3" xref="A4.T10.13.11.11.1.m1.1.1.3.cmml"></mi></mrow><annotation-xml encoding="MathML-Content" id="A4.T10.13.11.11.1.m1.1b"><apply id="A4.T10.13.11.11.1.m1.1.1.cmml" xref="A4.T10.13.11.11.1.m1.1.1"><eq id="A4.T10.13.11.11.1.m1.1.1.1.cmml" xref="A4.T10.13.11.11.1.m1.1.1.1"></eq><ci id="A4.T10.13.11.11.1.m1.1.1.2.cmml" xref="A4.T10.13.11.11.1.m1.1.1.2">𝑘</ci><csymbol cd="latexml" id="A4.T10.13.11.11.1.m1.1.1.3.cmml" xref="A4.T10.13.11.11.1.m1.1.1.3">absent</csymbol></apply></annotation-xml><annotation encoding="application/x-tex" id="A4.T10.13.11.11.1.m1.1c">k=</annotation><annotation encoding="application/x-llamapun" id="A4.T10.13.11.11.1.m1.1d">italic_k =</annotation></semantics></math> 10</td>
<td class="ltx_td ltx_align_center" id="A4.T10.13.11.11.2">84.0</td>
<td class="ltx_td ltx_align_center" id="A4.T10.13.11.11.3">1761.3</td>
<td class="ltx_td ltx_align_center" id="A4.T10.13.11.11.4">86.8</td>
<td class="ltx_td ltx_align_center" id="A4.T10.13.11.11.5">83.5</td>
<td class="ltx_td ltx_align_center" id="A4.T10.13.11.11.6">72.8</td>
<td class="ltx_td ltx_align_center" id="A4.T10.13.11.11.7">75.3</td>
<td class="ltx_td ltx_align_center" id="A4.T10.13.11.11.8">76.6</td>
<td class="ltx_td ltx_align_center" id="A4.T10.13.11.11.9">68.1</td>
</tr>
<tr class="ltx_tr" id="A4.T10.14.12.12">
<td class="ltx_td ltx_align_left ltx_border_bb" id="A4.T10.14.12.12.1">
<math alttext="k=" class="ltx_Math" display="inline" id="A4.T10.14.12.12.1.m1.1"><semantics id="A4.T10.14.12.12.1.m1.1a"><mrow id="A4.T10.14.12.12.1.m1.1.1" xref="A4.T10.14.12.12.1.m1.1.1.cmml"><mi id="A4.T10.14.12.12.1.m1.1.1.2" xref="A4.T10.14.12.12.1.m1.1.1.2.cmml">k</mi><mo id="A4.T10.14.12.12.1.m1.1.1.1" xref="A4.T10.14.12.12.1.m1.1.1.1.cmml">=</mo><mi id="A4.T10.14.12.12.1.m1.1.1.3" xref="A4.T10.14.12.12.1.m1.1.1.3.cmml"></mi></mrow><annotation-xml encoding="MathML-Content" id="A4.T10.14.12.12.1.m1.1b"><apply id="A4.T10.14.12.12.1.m1.1.1.cmml" xref="A4.T10.14.12.12.1.m1.1.1"><eq id="A4.T10.14.12.12.1.m1.1.1.1.cmml" xref="A4.T10.14.12.12.1.m1.1.1.1"></eq><ci id="A4.T10.14.12.12.1.m1.1.1.2.cmml" xref="A4.T10.14.12.12.1.m1.1.1.2">𝑘</ci><csymbol cd="latexml" id="A4.T10.14.12.12.1.m1.1.1.3.cmml" xref="A4.T10.14.12.12.1.m1.1.1.3">absent</csymbol></apply></annotation-xml><annotation encoding="application/x-tex" id="A4.T10.14.12.12.1.m1.1c">k=</annotation><annotation encoding="application/x-llamapun" id="A4.T10.14.12.12.1.m1.1d">italic_k =</annotation></semantics></math> 20</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T10.14.12.12.2">80.7</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T10.14.12.12.3">1693.6</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T10.14.12.12.4">83.6</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T10.14.12.12.5">80.7</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T10.14.12.12.6">70.5</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T10.14.12.12.7">73.2</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T10.14.12.12.8">73.9</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T10.14.12.12.9">65.7</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This ablation study investigates the impact of different neighborhood selection strategies on the performance of the R2-T2 method (specifically the kNN-NGD variant) when used with the MoAI model.  It compares the effectiveness of using either an epsilon-ball (e-ball) or k-Nearest Neighbors (kNN) to define the neighborhood within the embedding space, and examines how the size of the neighborhood (parameterized by epsilon or k) affects the model's accuracy across various benchmarks.
> <details>
> <summary>read the caption</summary>
> Table 10: Ablation study of R2-T2 (k𝑘kitalic_kNN, NGD) with different choices of neighborhood on MoAI.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="A4.T11.4.2">
<tr class="ltx_tr" id="A4.T11.4.2.2">
<td class="ltx_td ltx_align_left ltx_border_tt" id="A4.T11.4.2.2.3">Kernel</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A4.T11.4.2.2.4"><span class="ltx_text ltx_font_bold" id="A4.T11.4.2.2.4.1">MMBench</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A4.T11.4.2.2.5"><span class="ltx_text ltx_font_bold" id="A4.T11.4.2.2.5.1">MME-P</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A4.T11.4.2.2.6"><span class="ltx_text ltx_font_bold" id="A4.T11.4.2.2.6.1">SQA-IMG</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A4.T11.4.2.2.7"><span class="ltx_text ltx_font_bold" id="A4.T11.4.2.2.7.1">AI2D</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A4.T11.4.2.2.8"><span class="ltx_text ltx_font_bold" id="A4.T11.4.2.2.8.1">TextVQA</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A4.T11.4.2.2.9"><span class="ltx_text ltx_font_bold" id="A4.T11.4.2.2.9.1">GQA</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A4.T11.3.1.1.1"><span class="ltx_text ltx_font_bold" id="A4.T11.3.1.1.1.1">CVBench<sup class="ltx_sup" id="A4.T11.3.1.1.1.1.1"><span class="ltx_text ltx_font_medium ltx_font_italic" id="A4.T11.3.1.1.1.1.1.1">2D</span></sup></span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A4.T11.4.2.2.2"><span class="ltx_text ltx_font_bold" id="A4.T11.4.2.2.2.1">CVBench<sup class="ltx_sup" id="A4.T11.4.2.2.2.1.1"><span class="ltx_text ltx_font_medium ltx_font_italic" id="A4.T11.4.2.2.2.1.1.1">3D</span></sup></span></td>
</tr>
<tr class="ltx_tr" id="A4.T11.4.2.3">
<td class="ltx_td ltx_align_left ltx_border_t" id="A4.T11.4.2.3.1">Linear</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T11.4.2.3.2">82.1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T11.4.2.3.3">1722.3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T11.4.2.3.4">84.2</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T11.4.2.3.5">80.8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T11.4.2.3.6">69.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T11.4.2.3.7">72.8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T11.4.2.3.8">72.7</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T11.4.2.3.9">62.1</td>
</tr>
<tr class="ltx_tr" id="A4.T11.4.2.4">
<td class="ltx_td ltx_align_left" id="A4.T11.4.2.4.1">Polynomial</td>
<td class="ltx_td ltx_align_center" id="A4.T11.4.2.4.2">83.2</td>
<td class="ltx_td ltx_align_center" id="A4.T11.4.2.4.3">1745.5</td>
<td class="ltx_td ltx_align_center" id="A4.T11.4.2.4.4">85.1</td>
<td class="ltx_td ltx_align_center" id="A4.T11.4.2.4.5">81.9</td>
<td class="ltx_td ltx_align_center" id="A4.T11.4.2.4.6">70.4</td>
<td class="ltx_td ltx_align_center" id="A4.T11.4.2.4.7">73.9</td>
<td class="ltx_td ltx_align_center" id="A4.T11.4.2.4.8">74.5</td>
<td class="ltx_td ltx_align_center" id="A4.T11.4.2.4.9">65.2</td>
</tr>
<tr class="ltx_tr" id="A4.T11.4.2.5">
<td class="ltx_td ltx_align_left" id="A4.T11.4.2.5.1">Matern</td>
<td class="ltx_td ltx_align_center" id="A4.T11.4.2.5.2">83.9</td>
<td class="ltx_td ltx_align_center" id="A4.T11.4.2.5.3">1752.8</td>
<td class="ltx_td ltx_align_center" id="A4.T11.4.2.5.4">85.8</td>
<td class="ltx_td ltx_align_center" id="A4.T11.4.2.5.5">82.5</td>
<td class="ltx_td ltx_align_center" id="A4.T11.4.2.5.6">71.2</td>
<td class="ltx_td ltx_align_center" id="A4.T11.4.2.5.7">74.6</td>
<td class="ltx_td ltx_align_center" id="A4.T11.4.2.5.8">76.3</td>
<td class="ltx_td ltx_align_center" id="A4.T11.4.2.5.9">67.8</td>
</tr>
<tr class="ltx_tr" id="A4.T11.4.2.6">
<td class="ltx_td ltx_align_left ltx_border_bb" id="A4.T11.4.2.6.1">Gaussian</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T11.4.2.6.2"><span class="ltx_text ltx_font_bold" id="A4.T11.4.2.6.2.1">85.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T11.4.2.6.3"><span class="ltx_text ltx_font_bold" id="A4.T11.4.2.6.3.1">1785.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T11.4.2.6.4"><span class="ltx_text ltx_font_bold" id="A4.T11.4.2.6.4.1">88.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T11.4.2.6.5"><span class="ltx_text ltx_font_bold" id="A4.T11.4.2.6.5.1">85.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T11.4.2.6.6"><span class="ltx_text ltx_font_bold" id="A4.T11.4.2.6.6.1">73.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T11.4.2.6.7"><span class="ltx_text ltx_font_bold" id="A4.T11.4.2.6.7.1">77.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T11.4.2.6.8"><span class="ltx_text ltx_font_bold" id="A4.T11.4.2.6.8.1">77.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T11.4.2.6.9"><span class="ltx_text ltx_font_bold" id="A4.T11.4.2.6.9.1">69.2</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the ablation study results on the impact of different kernel functions within the R2-T2 method, specifically focusing on the Neighborhood Gradient Descent (NGD) strategy using k-nearest neighbors (kNN).  It shows how variations in the kernel choice affect the overall performance of the R2-T2 method across several benchmarks.  The benchmarks are likely visual reasoning tasks, and the model used is MoAI (a multimodal mixture-of-experts model). The results are likely presented in terms of accuracy, providing a quantitative measure of the influence of the kernel function selection on the model's ability to correctly answer questions.
> <details>
> <summary>read the caption</summary>
> Table 11: Ablation study of R2-T2 (k𝑘kitalic_kNN, NGD) with different choices of kernels on MoAI.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="A4.T12.4.2">
<tr class="ltx_tr" id="A4.T12.4.2.2">
<td class="ltx_td ltx_align_left ltx_border_tt" id="A4.T12.4.2.2.3">Embedding Model</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A4.T12.4.2.2.4"><span class="ltx_text ltx_font_bold" id="A4.T12.4.2.2.4.1">MMBench</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A4.T12.4.2.2.5"><span class="ltx_text ltx_font_bold" id="A4.T12.4.2.2.5.1">MME-P</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A4.T12.4.2.2.6"><span class="ltx_text ltx_font_bold" id="A4.T12.4.2.2.6.1">SQA-IMG</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A4.T12.4.2.2.7"><span class="ltx_text ltx_font_bold" id="A4.T12.4.2.2.7.1">AI2D</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A4.T12.4.2.2.8"><span class="ltx_text ltx_font_bold" id="A4.T12.4.2.2.8.1">TextVQA</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A4.T12.4.2.2.9"><span class="ltx_text ltx_font_bold" id="A4.T12.4.2.2.9.1">GQA</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A4.T12.3.1.1.1"><span class="ltx_text ltx_font_bold" id="A4.T12.3.1.1.1.1">CVBench<sup class="ltx_sup" id="A4.T12.3.1.1.1.1.1"><span class="ltx_text ltx_font_medium ltx_font_italic" id="A4.T12.3.1.1.1.1.1.1">2D</span></sup></span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A4.T12.4.2.2.2"><span class="ltx_text ltx_font_bold" id="A4.T12.4.2.2.2.1">CVBench<sup class="ltx_sup" id="A4.T12.4.2.2.2.1.1"><span class="ltx_text ltx_font_medium ltx_font_italic" id="A4.T12.4.2.2.2.1.1.1">3D</span></sup></span></td>
</tr>
<tr class="ltx_tr" id="A4.T12.4.2.3">
<td class="ltx_td ltx_align_left ltx_border_t" id="A4.T12.4.2.3.1">Sentence-Bert</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T12.4.2.3.2">82.8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T12.4.2.3.3">1748.2</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T12.4.2.3.4">84.2</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T12.4.2.3.5">80.3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T12.4.2.3.6">70.2</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T12.4.2.3.7">73.8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T12.4.2.3.8">75.6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T12.4.2.3.9">66.0</td>
</tr>
<tr class="ltx_tr" id="A4.T12.4.2.4">
<td class="ltx_td ltx_align_left" id="A4.T12.4.2.4.1">Stella-En-1.5B-V5</td>
<td class="ltx_td ltx_align_center" id="A4.T12.4.2.4.2">83.6</td>
<td class="ltx_td ltx_align_center" id="A4.T12.4.2.4.3">1752.5</td>
<td class="ltx_td ltx_align_center" id="A4.T12.4.2.4.4">85.4</td>
<td class="ltx_td ltx_align_center" id="A4.T12.4.2.4.5">82.1</td>
<td class="ltx_td ltx_align_center" id="A4.T12.4.2.4.6">70.8</td>
<td class="ltx_td ltx_align_center" id="A4.T12.4.2.4.7">74.3</td>
<td class="ltx_td ltx_align_center" id="A4.T12.4.2.4.8">76.3</td>
<td class="ltx_td ltx_align_center" id="A4.T12.4.2.4.9">67.5</td>
</tr>
<tr class="ltx_tr" id="A4.T12.4.2.5">
<td class="ltx_td ltx_align_left" id="A4.T12.4.2.5.1">Gte-Qwen2-7B-instruct</td>
<td class="ltx_td ltx_align_center" id="A4.T12.4.2.5.2">84.0</td>
<td class="ltx_td ltx_align_center" id="A4.T12.4.2.5.3">1757.0</td>
<td class="ltx_td ltx_align_center" id="A4.T12.4.2.5.4">86.0</td>
<td class="ltx_td ltx_align_center" id="A4.T12.4.2.5.5">82.7</td>
<td class="ltx_td ltx_align_center" id="A4.T12.4.2.5.6">71.3</td>
<td class="ltx_td ltx_align_center" id="A4.T12.4.2.5.7">74.8</td>
<td class="ltx_td ltx_align_center" id="A4.T12.4.2.5.8">76.1</td>
<td class="ltx_td ltx_align_center" id="A4.T12.4.2.5.9">67.0</td>
</tr>
<tr class="ltx_tr" id="A4.T12.4.2.6">
<td class="ltx_td ltx_align_left ltx_border_bb" id="A4.T12.4.2.6.1">NV-Embed-V2</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T12.4.2.6.2"><span class="ltx_text ltx_font_bold" id="A4.T12.4.2.6.2.1">85.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T12.4.2.6.3"><span class="ltx_text ltx_font_bold" id="A4.T12.4.2.6.3.1">1785.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T12.4.2.6.4"><span class="ltx_text ltx_font_bold" id="A4.T12.4.2.6.4.1">88.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T12.4.2.6.5"><span class="ltx_text ltx_font_bold" id="A4.T12.4.2.6.5.1">85.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T12.4.2.6.6"><span class="ltx_text ltx_font_bold" id="A4.T12.4.2.6.6.1">73.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T12.4.2.6.7"><span class="ltx_text ltx_font_bold" id="A4.T12.4.2.6.7.1">77.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T12.4.2.6.8"><span class="ltx_text ltx_font_bold" id="A4.T12.4.2.6.8.1">77.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T12.4.2.6.9"><span class="ltx_text ltx_font_bold" id="A4.T12.4.2.6.9.1">69.2</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This ablation study investigates the impact of different embedding models on the performance of the R2-T2 method (specifically using k-Nearest Neighbors and Neighborhood Gradient Descent).  It shows how the choice of embedding model affects the accuracy of the model across various benchmark tasks within the multimodal mixture-of-experts framework using the MoAI model.
> <details>
> <summary>read the caption</summary>
> Table 12: Ablation study of R2-T2 (k𝑘kitalic_kNN, NGD) with different embedding models on MoAI.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="A4.T13.4.2">
<tr class="ltx_tr" id="A4.T13.4.2.2">
<td class="ltx_td ltx_align_left ltx_border_tt" id="A4.T13.4.2.2.3">#Step</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A4.T13.4.2.2.4"><span class="ltx_text ltx_font_bold" id="A4.T13.4.2.2.4.1">MMBench</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A4.T13.4.2.2.5"><span class="ltx_text ltx_font_bold" id="A4.T13.4.2.2.5.1">MME-P</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A4.T13.4.2.2.6"><span class="ltx_text ltx_font_bold" id="A4.T13.4.2.2.6.1">SQA-IMG</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A4.T13.4.2.2.7"><span class="ltx_text ltx_font_bold" id="A4.T13.4.2.2.7.1">AI2D</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A4.T13.4.2.2.8"><span class="ltx_text ltx_font_bold" id="A4.T13.4.2.2.8.1">TextVQA</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A4.T13.4.2.2.9"><span class="ltx_text ltx_font_bold" id="A4.T13.4.2.2.9.1">GQA</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A4.T13.3.1.1.1"><span class="ltx_text ltx_font_bold" id="A4.T13.3.1.1.1.1">CVBench<sup class="ltx_sup" id="A4.T13.3.1.1.1.1.1"><span class="ltx_text ltx_font_medium ltx_font_italic" id="A4.T13.3.1.1.1.1.1.1">2D</span></sup></span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A4.T13.4.2.2.2"><span class="ltx_text ltx_font_bold" id="A4.T13.4.2.2.2.1">CVBench<sup class="ltx_sup" id="A4.T13.4.2.2.2.1.1"><span class="ltx_text ltx_font_medium ltx_font_italic" id="A4.T13.4.2.2.2.1.1.1">3D</span></sup></span></td>
</tr>
<tr class="ltx_tr" id="A4.T13.4.2.3">
<td class="ltx_td ltx_align_left ltx_border_t" id="A4.T13.4.2.3.1">5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T13.4.2.3.2">81.3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T13.4.2.3.3">1705.8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T13.4.2.3.4">84.2</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T13.4.2.3.5">80.9</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T13.4.2.3.6">69.2</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T13.4.2.3.7">73.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T13.4.2.3.8">72.2</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T13.4.2.3.9">66.1</td>
</tr>
<tr class="ltx_tr" id="A4.T13.4.2.4">
<td class="ltx_td ltx_align_left" id="A4.T13.4.2.4.1">7</td>
<td class="ltx_td ltx_align_center" id="A4.T13.4.2.4.2">83.8</td>
<td class="ltx_td ltx_align_center" id="A4.T13.4.2.4.3">1745.2</td>
<td class="ltx_td ltx_align_center" id="A4.T13.4.2.4.4">86.5</td>
<td class="ltx_td ltx_align_center" id="A4.T13.4.2.4.5">83.2</td>
<td class="ltx_td ltx_align_center" id="A4.T13.4.2.4.6">71.8</td>
<td class="ltx_td ltx_align_center" id="A4.T13.4.2.4.7">75.2</td>
<td class="ltx_td ltx_align_center" id="A4.T13.4.2.4.8">76.0</td>
<td class="ltx_td ltx_align_center" id="A4.T13.4.2.4.9">67.6</td>
</tr>
<tr class="ltx_tr" id="A4.T13.4.2.5">
<td class="ltx_td ltx_align_left" id="A4.T13.4.2.5.1">10 (ours)</td>
<td class="ltx_td ltx_align_center" id="A4.T13.4.2.5.2">85.2</td>
<td class="ltx_td ltx_align_center" id="A4.T13.4.2.5.3">1785.5</td>
<td class="ltx_td ltx_align_center" id="A4.T13.4.2.5.4">88.3</td>
<td class="ltx_td ltx_align_center" id="A4.T13.4.2.5.5"><span class="ltx_text ltx_font_bold" id="A4.T13.4.2.5.5.1">85.0</span></td>
<td class="ltx_td ltx_align_center" id="A4.T13.4.2.5.6">73.5</td>
<td class="ltx_td ltx_align_center" id="A4.T13.4.2.5.7">77.0</td>
<td class="ltx_td ltx_align_center" id="A4.T13.4.2.5.8"><span class="ltx_text ltx_font_bold" id="A4.T13.4.2.5.8.1">77.9</span></td>
<td class="ltx_td ltx_align_center" id="A4.T13.4.2.5.9">69.2</td>
</tr>
<tr class="ltx_tr" id="A4.T13.4.2.6">
<td class="ltx_td ltx_align_left" id="A4.T13.4.2.6.1">20</td>
<td class="ltx_td ltx_align_center" id="A4.T13.4.2.6.2">85.0</td>
<td class="ltx_td ltx_align_center" id="A4.T13.4.2.6.3">1777.8</td>
<td class="ltx_td ltx_align_center" id="A4.T13.4.2.6.4"><span class="ltx_text ltx_font_bold" id="A4.T13.4.2.6.4.1">88.5</span></td>
<td class="ltx_td ltx_align_center" id="A4.T13.4.2.6.5">84.6</td>
<td class="ltx_td ltx_align_center" id="A4.T13.4.2.6.6">73.7</td>
<td class="ltx_td ltx_align_center" id="A4.T13.4.2.6.7">76.8</td>
<td class="ltx_td ltx_align_center" id="A4.T13.4.2.6.8">77.7</td>
<td class="ltx_td ltx_align_center" id="A4.T13.4.2.6.9">69.0</td>
</tr>
<tr class="ltx_tr" id="A4.T13.4.2.7">
<td class="ltx_td ltx_align_left ltx_border_bb" id="A4.T13.4.2.7.1">50</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T13.4.2.7.2"><span class="ltx_text ltx_font_bold" id="A4.T13.4.2.7.2.1">85.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T13.4.2.7.3"><span class="ltx_text ltx_font_bold" id="A4.T13.4.2.7.3.1">1792.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T13.4.2.7.4">88.2</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T13.4.2.7.5">84.8</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T13.4.2.7.6"><span class="ltx_text ltx_font_bold" id="A4.T13.4.2.7.6.1">73.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T13.4.2.7.7"><span class="ltx_text ltx_font_bold" id="A4.T13.4.2.7.7.1">77.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T13.4.2.7.8">77.6</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T13.4.2.7.9"><span class="ltx_text ltx_font_bold" id="A4.T13.4.2.7.9.1">69.3</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of an ablation study that investigates the impact of varying the number of Neighborhood Gradient Descent (NGD) steps on the performance of the R2-T2 method.  The study uses the k-Nearest Neighbors (kNN) approach and the NGD optimization strategy within the R2-T2 framework.  The table shows how changes in the number of NGD steps affect the accuracy of the model across multiple benchmark datasets, allowing for an analysis of the trade-off between computational cost and performance gains.  Different numbers of NGD steps (5, 7, 10, 20, and 50) are tested, and the accuracy achieved on several benchmark datasets (MMBench, MME-P, SQA-IMG, AI2D, TextVQA, GQA, CVBench2D, CVBench3D) is reported for each.
> <details>
> <summary>read the caption</summary>
> Table 13: Ablation study of R2-T2 (k𝑘kitalic_kNN, NGD) with different number of NGD steps.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2502.20395/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.20395/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.20395/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.20395/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.20395/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.20395/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.20395/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.20395/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.20395/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.20395/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.20395/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.20395/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.20395/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.20395/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.20395/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.20395/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.20395/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.20395/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.20395/19.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.20395/20.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}