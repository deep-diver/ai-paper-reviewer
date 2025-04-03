---
title: "Safeguarding Vision-Language Models: Mitigating Vulnerabilities to Gaussian Noise in Perturbation-based Attacks"
summary: "Robust-VLGuard: Fortifying VLMs against Gaussian noise attacks with multimodal safety dataset and noise-augmented training."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Multimodal Learning", "Vision-Language Models", "🏢 University of Science and Technology of China",]
showSummary: true
date: 2025-04-02
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2504.01308 {{< /keyword >}}
{{< keyword icon="writer" >}} Jiawei Wang et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-04-03 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2504.01308" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2504.01308" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2504.01308/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Vision-Language Models (**VLMs**) extend capabilities of Large Language Models by integrating visual and textual information. Despite advancements in training, **VLMs** remain susceptible to jailbreak attacks, particularly when handling noisy or corrupted images. Existing security measures often overlook vulnerabilities associated with noise-augmented visual inputs, leading to critical security gaps. Many **VLMs** are vulnerable to even simple perturbations like Gaussian noise, disrupting both the helpfulness and safety alignment of models.



To address these issues, the paper introduces **Robust-VLGuard**, a multimodal safety dataset with aligned/misaligned image-text pairs. It combines **Robust-VLGuard** with noise-augmented fine-tuning.  The paper also proposes **DiffPure-VLM**, leveraging diffusion models to convert adversarial perturbations into Gaussian-like noise.  Experiments demonstrate that the distribution-shifting property of diffusion models aligns well with fine-tuned **VLMs**, mitigating adversarial perturbations across varying intensities.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Vision-Language Models (VLMs) are vulnerable to even simple noise perturbations, disrupting both helpfulness and safety. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} Robust-VLGuard, a new dataset with aligned/misaligned image-text pairs, enhances VLM robustness against noise through noise-augmented fine-tuning. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} DiffPure-VLM, leverages diffusion models to convert adversarial perturbations into Gaussian-like noise, significantly mitigating adversarial attacks. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper enhances VLM robustness against noise, mitigating vulnerabilities. By introducing a new dataset and defense mechanism, it paves the way for more reliable and secure multimodal AI systems. The findings are crucial for advancing VLM technology and addressing real-world deployment challenges, ensuring safety and utility in diverse applications. The research encourages further exploration to enhance VLM defenses against complex attacks.

------
#### Visual Insights



![](https://arxiv.org/html/2504.01308/x1.png)

> 🔼 This figure demonstrates how the addition of Gaussian noise affects the outputs of a Vision-Language Model (VLM).  The top half shows an original image and the VLM's correct response to a query about that image. The bottom half shows the same image with added Gaussian noise. The VLM's response to the noisy image is incorrect, highlighted in red, illustrating the model's vulnerability to noise.  The difference in responses highlights a key finding of the paper: that the lack of noise-augmented training in existing VLMs creates a critical security gap.  This security gap makes these models susceptible even to simple perturbations like Gaussian noise.
> <details>
> <summary>read the caption</summary>
> Figure 1: Visualization of Vision-Language Model’s outputs under different noise conditions. The upper part shows the original image with green text indicating correct responses generated without noise, while the lower part adds slight Gaussian noise, with red text highlighting errors introduced under noisy conditions. Please zoom in for better visualization.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S3.T1.6.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S3.T1.6.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_r ltx_border_t" id="S3.T1.6.1.1.1.1"><span class="ltx_text ltx_font_bold" id="S3.T1.6.1.1.1.1.1" style="font-size:144%;">Task</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_r ltx_border_t" id="S3.T1.6.1.1.1.2"><span class="ltx_text ltx_font_bold" id="S3.T1.6.1.1.1.2.1" style="font-size:144%;">Dataset</span></th>
<th class="ltx_td ltx_align_right ltx_th ltx_th_column ltx_border_t" id="S3.T1.6.1.1.1.3"><span class="ltx_text ltx_font_bold" id="S3.T1.6.1.1.1.3.1" style="font-size:144%;">Number of Samples</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S3.T1.6.1.2.1">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S3.T1.6.1.2.1.1"><span class="ltx_text" id="S3.T1.6.1.2.1.1.1" style="font-size:144%;">General QA</span></td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S3.T1.6.1.2.1.2">
<span class="ltx_text" id="S3.T1.6.1.2.1.2.1" style="font-size:144%;">GQA </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S3.T1.6.1.2.1.2.2.1" style="font-size:144%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.01308v1#bib.bib24" title=""><span class="ltx_text" style="font-size:90%;">24</span></a><span class="ltx_text" id="S3.T1.6.1.2.1.2.3.2" style="font-size:144%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S3.T1.6.1.2.1.3"><span class="ltx_text" id="S3.T1.6.1.2.1.3.1" style="font-size:144%;">1000</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.6.1.3.2">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S3.T1.6.1.3.2.1"><span class="ltx_text" id="S3.T1.6.1.3.2.1.1" style="font-size:144%;">World Knowledge</span></td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S3.T1.6.1.3.2.2">
<span class="ltx_text" id="S3.T1.6.1.3.2.2.1" style="font-size:144%;">A-OKVQA </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S3.T1.6.1.3.2.2.2.1" style="font-size:144%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.01308v1#bib.bib38" title=""><span class="ltx_text" style="font-size:90%;">38</span></a><span class="ltx_text" id="S3.T1.6.1.3.2.2.3.2" style="font-size:144%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S3.T1.6.1.3.2.3"><span class="ltx_text" id="S3.T1.6.1.3.2.3.1" style="font-size:144%;">1000</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.6.1.4.3">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S3.T1.6.1.4.3.1"><span class="ltx_text" id="S3.T1.6.1.4.3.1.1" style="font-size:144%;">Math &amp; OCR</span></td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S3.T1.6.1.4.3.2">
<span class="ltx_text" id="S3.T1.6.1.4.3.2.1" style="font-size:144%;">ChartQA </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S3.T1.6.1.4.3.2.2.1" style="font-size:144%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.01308v1#bib.bib31" title=""><span class="ltx_text" style="font-size:90%;">31</span></a><span class="ltx_text" id="S3.T1.6.1.4.3.2.3.2" style="font-size:144%;">]</span></cite><span class="ltx_text" id="S3.T1.6.1.4.3.2.4" style="font-size:144%;">, TabMWP </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S3.T1.6.1.4.3.2.5.1" style="font-size:144%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.01308v1#bib.bib30" title=""><span class="ltx_text" style="font-size:90%;">30</span></a><span class="ltx_text" id="S3.T1.6.1.4.3.2.6.2" style="font-size:144%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S3.T1.6.1.4.3.3"><span class="ltx_text" id="S3.T1.6.1.4.3.3.1" style="font-size:144%;">467</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.6.1.5.4">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S3.T1.6.1.5.4.1"><span class="ltx_text" id="S3.T1.6.1.5.4.1.1" style="font-size:144%;">Spatial Reasoning</span></td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S3.T1.6.1.5.4.2">
<span class="ltx_text" id="S3.T1.6.1.5.4.2.1" style="font-size:144%;">VQAv2 </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S3.T1.6.1.5.4.2.2.1" style="font-size:144%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.01308v1#bib.bib19" title=""><span class="ltx_text" style="font-size:90%;">19</span></a><span class="ltx_text" id="S3.T1.6.1.5.4.2.3.2" style="font-size:144%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S3.T1.6.1.5.4.3"><span class="ltx_text" id="S3.T1.6.1.5.4.3.1" style="font-size:144%;">1000</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.6.1.6.5">
<td class="ltx_td ltx_align_left ltx_border_b ltx_border_r ltx_border_t" id="S3.T1.6.1.6.5.1"><span class="ltx_text" id="S3.T1.6.1.6.5.1.1" style="font-size:144%;">Extended Text Generation</span></td>
<td class="ltx_td ltx_align_left ltx_border_b ltx_border_r ltx_border_t" id="S3.T1.6.1.6.5.2">
<span class="ltx_text" id="S3.T1.6.1.6.5.2.1" style="font-size:144%;">LLaVA_v1.5_Mix_665k </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S3.T1.6.1.6.5.2.2.1" style="font-size:144%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.01308v1#bib.bib29" title=""><span class="ltx_text" style="font-size:90%;">29</span></a><span class="ltx_text" id="S3.T1.6.1.6.5.2.3.2" style="font-size:144%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_right ltx_border_b ltx_border_t" id="S3.T1.6.1.6.5.3"><span class="ltx_text" id="S3.T1.6.1.6.5.3.1" style="font-size:144%;">1000</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 This table details the composition of the General Instruction Data subset within the Robust-VLGuard dataset. It breaks down the number of samples used for various tasks, sourced from different existing datasets. These tasks cover a wide range of functionalities to ensure the helpfulness of the resulting Vision-Language Models (VLMs), including general question answering, world knowledge, mathematics, Optical Character Recognition (OCR), spatial reasoning, and extended text generation.
> <details>
> <summary>read the caption</summary>
> Table 1: Detailed Breakdown of General Instruction Data
> </details>





### In-depth insights


#### VLM Noise Gaps
The exploration of 'VLM Noise Gaps' is crucial for understanding how **vision-language models falter when processing noisy or corrupted visual data**. This area likely delves into scenarios where even seemingly minor perturbations, such as Gaussian noise, can significantly degrade a VLM's performance. Such vulnerabilities arise from the fact that many VLMs aren't trained extensively with noise-augmented visual data, leaving a **critical security gaps**. Research in this area would aim to identify specific types of noise that most severely impact VLM accuracy and robustness, and how these vulnerabilities affect the model's decision-making process, potentially disrupting both the helpfulness and safety alignment. Addressing these gaps would involve developing techniques to enhance noise robustness, possibly through novel training strategies or input preprocessing methods, ensuring VLMs can reliably handle real-world conditions where visual inputs are rarely pristine. The investigation should also determine whether VLMs are uniquely vulnerable to noise, compared to LLMs, and then help to design more robust and dependable vision-language systems that can effectively navigate imperfect visual data.

#### Robust-VLGuard
The name Robust-VLGuard suggests a multimodal dataset designed to enhance the robustness of Vision-Language Models (VLMs), **specifically against noise and potentially adversarial attacks**, while preserving their functionality. It implies a focus on addressing vulnerabilities that arise from noisy or corrupted visual inputs, a problem often overlooked in existing VLM training paradigms. The 'Guard' portion hints at its role in safeguarding VLMs, likely through a combination of aligned and misaligned image-text pairs. **Misalignment is key**, acknowledging that fine-tuning can disrupt pretrained alignments and introduce vulnerabilities to noise. The dataset likely incorporates diverse instructions, including safety-critical scenarios and general knowledge, to ensure both safety and helpfulness are addressed. **Robust-VLGuard is not just about adding data**; it's about carefully curating data that stresses the VLM's ability to discern relevant information amidst noise and maintain ethical alignment. This is to significantly improve VLM security and reliability for real-world deployment.

#### DiffPure Shift
**DiffPure, acting as a preprocessing step, excels at shifting the distribution of adversarial noise** closer to a Gaussian distribution. This distribution shift is crucial because vision-language models (VLMs) often lack inherent robustness to even simple noise like Gaussian noise. By transforming complex adversarial perturbations into a more manageable Gaussian-like noise, DiffPure prepares the input image for effective defense by noise-robust VLMs. **This approach aligns well with fine-tuning strategies that incorporate Gaussian noise augmentation**, creating a synergistic effect. The key idea is that **DiffPure doesn't necessarily eliminate all noise**, but rather makes it easier for downstream noise-robust components to handle. **The distribution-shifting property is more important than complete noise removal**, making it computationally efficient while maximizing its impact on adversarial defense for VLMs. The effectiveness hinges on selecting an appropriate timestep within DiffPure, optimizing the balance between information preservation and Gaussianization of the noise profile. The approach contrasts with traditional methods relying on complete noise elimination, and the **success emphasizes the role of understanding and manipulating noise distributions**.

#### Tuning Preserves
While the exact phrase "Tuning Preserves" does not appear, the idea of maintaining capabilities during adjustments is central to successful machine learning. The core aim is to **retain existing strengths** while improving in specific areas. There is a need to consider how modifications in fine-tuning affect the initial proficiency of models. **Overfitting**, for instance, can occur during fine-tuning, causing the model to lose its generalization ability and original functionality, making it crucial to apply strategies that **mitigate negative transfer**. Regularization techniques and careful dataset construction can promote the **preservation of performance** across a range of tasks, rather than sacrificing one for another. The goal is that the benefits from fine-tuning outweigh any potential drawbacks, making it important to strike a balance between task-specific learning and maintaining pre-existing knowledge, making the process more complex.

#### Beyond Gaussian
Exploring "Beyond Gaussian" in the context of this paper suggests a multifaceted approach to robustness in VLMs. While the paper initially focuses on mitigating vulnerabilities to Gaussian noise, a broader perspective involves considering more complex and realistic noise distributions. **Real-world noise often deviates significantly from the idealized Gaussian model**, exhibiting characteristics like heavy tails, skewness, and spatial correlations. Addressing these non-Gaussian noise types would necessitate employing more sophisticated defense mechanisms, such as adversarial training with diverse noise models or developing noise-robust feature representations. **Techniques like wavelet denoising, non-local means filtering, or generative adversarial networks (GANs) could be explored for effectively handling complex noise patterns**. Furthermore, investigating the interplay between different noise types and adversarial attacks is crucial. It's plausible that certain noise distributions amplify the effectiveness of adversarial perturbations, while others provide inherent resilience. A comprehensive understanding of these interactions is essential for designing robust VLMs that can effectively function in unpredictable environments. **Moving beyond Gaussian noise also implies considering structured or semantic noise, where the noise is not merely random but carries specific patterns or meanings**. For instance, occlusions, distortions, or even semantically misleading visual elements can be viewed as forms of structured noise. Defending against such noise requires incorporating contextual information and reasoning capabilities into the VLM, enabling it to discern and mitigate the impact of these structured perturbations. The exploration opens avenues for more adaptive and intelligent defense strategies that dynamically adjust to the characteristics of the incoming noise.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2504.01308/x2.png)

> 🔼 This figure shows the performance comparison of different vision-language models on the MM-Vet benchmark. The MM-Vet benchmark is a comprehensive evaluation suite that assesses various vision-language capabilities. The figure likely displays performance scores (e.g., accuracy, F1 score) achieved by each model across different tasks within the benchmark, potentially broken down by image conditions (e.g., clean images versus images with added Gaussian noise). By comparing model performance under different conditions, the figure helps to demonstrate the impact of Gaussian noise and evaluate the robustness of the vision-language models.
> <details>
> <summary>read the caption</summary>
> (a) Performance evaluation on MM-Vet benchmark.
> </details>



![](https://arxiv.org/html/2504.01308/x3.png)

> 🔼 This figure shows the attack success rate, which measures the percentage of responses classified as toxic, on the RealToxicityPrompts benchmark.  The benchmark contains prompts designed to elicit toxic responses, and the attack success rate indicates the model's vulnerability to generating toxic outputs when presented with a noisy image prompt. Lower attack success rate indicates better safety alignment of the model.
> <details>
> <summary>read the caption</summary>
> (b) Attack success rate on RealToxicityPrompts benchmark.
> </details>



![](https://arxiv.org/html/2504.01308/x4.png)

> 🔼 Figure 2 presents a comparative analysis of three vision-language models (VLMs): MiniGPT-4, LLaVA-v1.5, and InternVL2, evaluating their performance and robustness under both clean and noisy image inputs.  Subfigure (a) shows helpfulness scores measured using the MM-Vet benchmark, illustrating how model performance degrades in the presence of Gaussian noise.  Subfigure (b) displays attack success rates from the RealToxicityPrompts benchmark, highlighting the increased vulnerability of the models to adversarial attacks when images are corrupted with Gaussian noise. This figure demonstrates that while these models are effective under normal conditions, they exhibit vulnerabilities and reduced robustness when presented with noisy or corrupted image data.
> <details>
> <summary>read the caption</summary>
> Figure 2: Comparison of various models’ performance and robustness: (a) helpfulness on the MM-Vet benchmark with clean and noisy image prompts, and (b) attack success rates on the RealToxicityPrompts benchmark using clean and noisy image prompts.
> </details>



![](https://arxiv.org/html/2504.01308/x5.png)

> 🔼 This figure shows an example from the General Instruction Data subset of the Robust-VLGuard dataset.  It displays a question, an image relevant to the question, and a detailed, comprehensive answer generated by GPT-4V. The purpose of this data is to ensure the fine-tuned VLMs maintain helpfulness across a wide range of tasks.
> <details>
> <summary>read the caption</summary>
> (a) Example of general instruction data.
> </details>



![](https://arxiv.org/html/2504.01308/x6.png)

> 🔼 This figure shows an example from the Robust-VLGuard dataset, specifically demonstrating image-text aligned safety data.  It displays an image of a person kneading bread dough, paired with a question about the next step in the process before dividing the dough.  The provided safe response offers detailed instructions, indicating a helpful and safe model output.  This is in contrast to unsafe examples where images might be paired with prompts that elicit harmful or inappropriate responses.
> <details>
> <summary>read the caption</summary>
> (b) Example of image-text aligned safety data.
> </details>



![](https://arxiv.org/html/2504.01308/x7.png)

> 🔼 This figure shows an example from the Robust-VLGuard dataset's Image-Text Misaligned Safety Data subset.  It highlights a scenario where the image content is deliberately unrelated to the safety-related text prompt.  This is a novel aspect of the dataset, designed to test the VLM's robustness against attacks where irrelevant visuals are paired with sensitive text prompts. The goal is to evaluate whether the model can correctly identify and handle unsafe text prompts, even in the presence of potentially distracting or misleading images.
> <details>
> <summary>read the caption</summary>
> (c) Example of image-text misaligned safety data.
> </details>



![](https://arxiv.org/html/2504.01308/x8.png)

> 🔼 Figure 3 illustrates the Robust-VLGuard dataset, designed to enhance the robustness of Vision-Language Models (VLMs) against safety-related issues and noise.  It's composed of three parts: (a) General Instruction Data:  This section contains diverse, general instructions with detailed responses generated by GPT-4V, to ensure the VLM maintains helpfulness after fine-tuning. (b) Image-Text Aligned Safety Data: This section includes instructions where the image and text are aligned and relate to safety-related content. (c) Image-Text Misaligned Safety Data: This section introduces a novel aspect, where images are intentionally misaligned with the safety-related text prompts, to better cover scenarios encountered during attacks or real-world usage.  Red text within the examples highlights potentially risky or unsafe content, while green indicates safe content.
> <details>
> <summary>read the caption</summary>
> Figure 3: Overview of the Robust-VLGuard dataset. (a) General Instruction Data: Leveraging GPT-4V to generate comprehensive, detailed responses rather than brief replies; (b) Image-Text Aligned Safety Data: The image content directly corresponds to the safety-related text prompts; (c) Image-Text Misaligned Safety Data: The image content that is deliberately unrelated to the safety-related text prompts. Red text indicates content with potential risks, while green text denotes content without risks.
> </details>



![](https://arxiv.org/html/2504.01308/x9.png)

> 🔼 This figure shows the results of an ablation study on the impact of varying the ratio of general instructions to safety instructions in the Robust-VLGuard dataset on the model's performance.  The x-axis represents different ratios of general to safety instructions (e.g., 4:1, 4:2, 4:3, 4:4, meaning four general instructions for every one safety instruction, etc.), while the y-axis shows the performance score. Two sets of bars are displayed: one for the model's performance with clean images and another for the model's performance with noisy images.  The figure helps to understand how the balance between general and safety-focused training data impacts both the model's helpfulness (measured by performance score) and its robustness to noisy inputs.
> <details>
> <summary>read the caption</summary>
> (a) Performance on the MM-Vet benchmark across different instruction ratios.
> </details>



![](https://arxiv.org/html/2504.01308/x10.png)

> 🔼 This figure shows the attack success rate on the RealToxicityPrompts benchmark. The attack success rate is the percentage of responses that are considered toxic. The x-axis shows different ratios of general instructions to safety instructions in the training data. The y-axis shows the attack success rate. The figure shows that as the ratio of safety instructions increases, the attack success rate decreases. This indicates that adding more safety instructions to the training data improves the model's ability to resist toxic attacks.
> <details>
> <summary>read the caption</summary>
> (b) Attack success rate on the RealToxicityPrompts benchmark across different instruction ratios.
> </details>



![](https://arxiv.org/html/2504.01308/x11.png)

> 🔼 This figure analyzes the impact of different ratios of general instructions to safety-focused instructions within the Robust-VLGuard dataset on the performance and robustness of Vision-Language Models (VLMs).  The left graph shows how varying these ratios affects the models' helpfulness scores, as measured by the MM-Vet benchmark.  The right graph displays the impact on the attack success rate against safety-related instructions, using the RealToxicityPrompts benchmark. This helps to determine the optimal balance between maintaining the helpfulness of the model and enhancing its safety against adversarial attacks.
> <details>
> <summary>read the caption</summary>
> Figure 4: Effect of varying instruction ratios on VLM’s robustness of helpfulness and safety alignment.
> </details>



![](https://arxiv.org/html/2504.01308/x12.png)

> 🔼 This figure shows the performance of different vision-language models on the MM-Vet benchmark as the number of training epochs varies.  The MM-Vet benchmark assesses several capabilities of these models.  The plot likely displays the model's performance scores across various tasks within the benchmark, enabling a comparison of model robustness and helpfulness under different training durations.  Higher scores generally indicate better performance.
> <details>
> <summary>read the caption</summary>
> (a) Performance on the MM-Vet benchmark across different training epochs.
> </details>



![](https://arxiv.org/html/2504.01308/x13.png)

> 🔼 This figure shows how the success rate of attacks changes as the number of training epochs increases. The x-axis represents the number of training epochs, and the y-axis shows the attack success rate, indicating the percentage of times the model generated unsafe responses.  The figure helps assess the model's robustness to attacks over different training durations. A lower attack success rate suggests improved model safety.
> <details>
> <summary>read the caption</summary>
> (b) Attack success rate on the RealToxicityPrompts benchmark across different training epochs.
> </details>



![](https://arxiv.org/html/2504.01308/x14.png)

> 🔼 This figure displays the results of an ablation study evaluating the effect of varying the number of training epochs on the performance and safety of Vision-Language Models (VLMs).  Two subplots are shown: (a) shows helpfulness as measured by the MM-Vet benchmark, and (b) shows safety, measured by the attack success rate using the RealToxicityPrompts benchmark.  The x-axis in both plots represents the number of training epochs (1, 2, 3), and the y-axis represents performance score for helpfulness and attack success rate for safety.  The results show the trade-off between helpfulness and safety with increasing training epochs, indicating the need for careful tuning to balance these aspects.
> <details>
> <summary>read the caption</summary>
> Figure 5: Effect of varying training epochs on VLM’s robustness of helpfulness and safety alignment.
> </details>



![](https://arxiv.org/html/2504.01308/x15.png)

> 🔼 This figure displays a Gaussianity analysis of residual images.  The experiment begins with an adversarial image (Iadv), which has been created through adversarial attacks.  DiffPure, a diffusion model, is applied to this adversarial image with a timestep of 50 (t*=50). This process generates a diffused image (Idiffused). The difference between the original clean image and the adversarial image is calculated as the residual image (radv), and similarly, the difference between the clean image and the diffused image is calculated as rdiffused.  The distributions of radv and rdiffused are then analyzed using histograms and Q-Q plots to assess how close these residual images are to a Gaussian distribution. This visualization helps to understand the effectiveness of DiffPure in transforming adversarial noise into Gaussian-like noise.
> <details>
> <summary>read the caption</summary>
> Figure 6: Residual image Gaussianity analysis. We apply DiffPure (t∗=50superscript𝑡50t^{*}=50italic_t start_POSTSUPERSCRIPT ∗ end_POSTSUPERSCRIPT = 50) to adversarial image Ia⁢d⁢vsubscript𝐼𝑎𝑑𝑣I_{adv}italic_I start_POSTSUBSCRIPT italic_a italic_d italic_v end_POSTSUBSCRIPT to obtain diffused image I𝑑𝑖𝑓𝑓𝑢𝑠𝑒𝑑subscript𝐼𝑑𝑖𝑓𝑓𝑢𝑠𝑒𝑑I_{\mathit{diffused}}italic_I start_POSTSUBSCRIPT italic_diffused end_POSTSUBSCRIPT. Then we calculate residual images ra⁢d⁢vsubscript𝑟𝑎𝑑𝑣r_{adv}italic_r start_POSTSUBSCRIPT italic_a italic_d italic_v end_POSTSUBSCRIPT and r𝑑𝑖𝑓𝑓𝑢𝑠𝑒𝑑subscript𝑟𝑑𝑖𝑓𝑓𝑢𝑠𝑒𝑑r_{\mathit{diffused}}italic_r start_POSTSUBSCRIPT italic_diffused end_POSTSUBSCRIPT and evaluate their distribution by the histogram and Q-Q plot.
> </details>



![](https://arxiv.org/html/2504.01308/x16.png)

> 🔼 This figure displays the results of an analysis evaluating the Gaussianity of residual images after applying the DiffPure method to adversarial images.  Specifically, it examines how the kurtosis and Q-Q deviation of the residuals change based on two key factors: the pixel constraint (epsilon) applied during the generation of the adversarial image and the timestep (t*) used in the DiffPure process. Different lines in the plot represent different epsilon values and each point on those lines shows the metrics calculated for a particular timestep. The figure helps to visualize how effective DiffPure is at transforming the distribution of adversarial noise into a Gaussian-like distribution, which is a key aspect of its defense mechanism against optimization-based attacks.
> <details>
> <summary>read the caption</summary>
> Figure 7:  Gaussianity metrics of r𝑑𝑖𝑓𝑓𝑢𝑠𝑒𝑑subscript𝑟𝑑𝑖𝑓𝑓𝑢𝑠𝑒𝑑r_{\mathit{diffused}}italic_r start_POSTSUBSCRIPT italic_diffused end_POSTSUBSCRIPT under different pixel constraints ϵitalic-ϵ\epsilonitalic_ϵ of adversarial image Ia⁢d⁢vsubscript𝐼𝑎𝑑𝑣I_{adv}italic_I start_POSTSUBSCRIPT italic_a italic_d italic_v end_POSTSUBSCRIPT and timestep t∗superscript𝑡t^{*}italic_t start_POSTSUPERSCRIPT ∗ end_POSTSUPERSCRIPT in DiffPure. Please zoom in to see details.
> </details>



![](https://arxiv.org/html/2504.01308/x17.png)

> 🔼 The DiffPure-VLM framework starts with an adversarial image and a harmful text prompt.  The adversarial image undergoes a forward and reverse diffusion process using a diffusion model (like DDPM), which transforms the adversarial noise into Gaussian-like noise, thereby purifying the image. The resulting image, now containing only Gaussian noise, is fed into a Gaussian-noise-tolerant vision-language model (VLM) which has been fine-tuned with noise-augmented safety data. This robust VLM then produces a safe response to the harmful prompt.
> <details>
> <summary>read the caption</summary>
> Figure 8: The overall framework of DiffPure-VLM.
> </details>



![](https://arxiv.org/html/2504.01308/x18.png)

> 🔼 Figure 9 visualizes the effects of applying DiffPure, a diffusion model-based image preprocessing technique, to adversarial images.  It shows the original adversarial image (Iₐdv), the image after DiffPure processing (Idiffused), and statistical analyses of the residual images (rₐdv and rdiffused).  These residuals represent the difference between the original clean image and the adversarial/DiffPure-processed images, respectively. The analysis includes histograms and Q-Q plots for each color channel (red, green, blue) to assess the distribution of pixel values in the residuals.  Different values of t*, a parameter controlling the number of diffusion steps in DiffPure, are shown, highlighting how the distribution shifts with varying levels of processing. The goal is to show how DiffPure transforms adversarial noise into more Gaussian-like noise.
> <details>
> <summary>read the caption</summary>
> Figure 9: Ia⁢d⁢vsubscript𝐼𝑎𝑑𝑣I_{adv}italic_I start_POSTSUBSCRIPT italic_a italic_d italic_v end_POSTSUBSCRIPT, I𝑑𝑖𝑓𝑓𝑢𝑠𝑒𝑑subscript𝐼𝑑𝑖𝑓𝑓𝑢𝑠𝑒𝑑I_{\mathit{diffused}}italic_I start_POSTSUBSCRIPT italic_diffused end_POSTSUBSCRIPT and statistics of ra⁢d⁢vsubscript𝑟𝑎𝑑𝑣r_{adv}italic_r start_POSTSUBSCRIPT italic_a italic_d italic_v end_POSTSUBSCRIPT, r𝑑𝑖𝑓𝑓𝑢𝑠𝑒𝑑subscript𝑟𝑑𝑖𝑓𝑓𝑢𝑠𝑒𝑑r_{\mathit{diffused}}italic_r start_POSTSUBSCRIPT italic_diffused end_POSTSUBSCRIPT under different t∗superscript𝑡t^{*}italic_t start_POSTSUPERSCRIPT ∗ end_POSTSUPERSCRIPT in DiffPure (constraint ϵ=16/255italic-ϵ16255\epsilon=16/255italic_ϵ = 16 / 255). Metrics are shown in ‘Kurtosis / Q-Q Deviation / Mean / Standard Deviation’. Please zoom in to see details.
> </details>



![](https://arxiv.org/html/2504.01308/x19.png)

> 🔼 Figure 10 visualizes the effects of applying the DiffPure algorithm with varying timesteps (t*) on adversarial images.  The top row shows the original adversarial image (Iadv) and the images produced by DiffPure (Idiffused) for different t* values. The bottom rows display the statistical properties (Kurtosis, Q-Q Deviation, Mean, Standard Deviation) of the residual images (radv and rdiffused) which represent the difference between the original clean image and the adversarial/DiffPure processed images. These statistics help assess how well DiffPure transforms the adversarial noise into a Gaussian-like distribution.  The figure uses an adversarial image created with a pixel constraint of ϵ=32/255. This analysis helps to evaluate the effectiveness of DiffPure in mitigating adversarial noise in images before feeding them into vision-language models.
> <details>
> <summary>read the caption</summary>
> Figure 10: Ia⁢d⁢vsubscript𝐼𝑎𝑑𝑣I_{adv}italic_I start_POSTSUBSCRIPT italic_a italic_d italic_v end_POSTSUBSCRIPT, I𝑑𝑖𝑓𝑓𝑢𝑠𝑒𝑑subscript𝐼𝑑𝑖𝑓𝑓𝑢𝑠𝑒𝑑I_{\mathit{diffused}}italic_I start_POSTSUBSCRIPT italic_diffused end_POSTSUBSCRIPT and statistics of ra⁢d⁢vsubscript𝑟𝑎𝑑𝑣r_{adv}italic_r start_POSTSUBSCRIPT italic_a italic_d italic_v end_POSTSUBSCRIPT, r𝑑𝑖𝑓𝑓𝑢𝑠𝑒𝑑subscript𝑟𝑑𝑖𝑓𝑓𝑢𝑠𝑒𝑑r_{\mathit{diffused}}italic_r start_POSTSUBSCRIPT italic_diffused end_POSTSUBSCRIPT under different t∗superscript𝑡t^{*}italic_t start_POSTSUPERSCRIPT ∗ end_POSTSUPERSCRIPT in DiffPure (constraint ϵ=32/255italic-ϵ32255\epsilon=32/255italic_ϵ = 32 / 255). Metrics are shown in ‘Kurtosis / Q-Q Deviation / Mean / Standard Deviation’. Please zoom in to see details.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S3.T2.6.4">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S3.T2.4.2.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S3.T2.4.2.2.3"><span class="ltx_text ltx_font_bold" id="S3.T2.4.2.2.3.1" style="font-size:144%;">Model</span></th>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" colspan="2" id="S3.T2.3.1.1.1">
<span class="ltx_text ltx_font_bold" id="S3.T2.3.1.1.1.1" style="font-size:144%;">MM-Vet (%)</span><span class="ltx_text" id="S3.T2.3.1.1.1.2" style="font-size:144%;"> </span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S3.T2.3.1.1.1.m1.1"><semantics id="S3.T2.3.1.1.1.m1.1a"><mo id="S3.T2.3.1.1.1.m1.1.1" mathsize="144%" stretchy="false" xref="S3.T2.3.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S3.T2.3.1.1.1.m1.1b"><ci id="S3.T2.3.1.1.1.m1.1.1.cmml" xref="S3.T2.3.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.3.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S3.T2.3.1.1.1.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" colspan="2" id="S3.T2.4.2.2.2">
<span class="ltx_text ltx_font_bold" id="S3.T2.4.2.2.2.1" style="font-size:144%;">RealToxicityPrompts (%)</span><span class="ltx_text" id="S3.T2.4.2.2.2.2" style="font-size:144%;"> </span><math alttext="\downarrow" class="ltx_Math" display="inline" id="S3.T2.4.2.2.2.m1.1"><semantics id="S3.T2.4.2.2.2.m1.1a"><mo id="S3.T2.4.2.2.2.m1.1.1" mathsize="144%" stretchy="false" xref="S3.T2.4.2.2.2.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S3.T2.4.2.2.2.m1.1b"><ci id="S3.T2.4.2.2.2.m1.1.1.cmml" xref="S3.T2.4.2.2.2.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.4.2.2.2.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S3.T2.4.2.2.2.m1.1d">↓</annotation></semantics></math>
</td>
</tr>
<tr class="ltx_tr" id="S3.T2.6.4.5.1">
<th class="ltx_td ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S3.T2.6.4.5.1.1"></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.6.4.5.1.2"><span class="ltx_text ltx_font_bold" id="S3.T2.6.4.5.1.2.1" style="font-size:144%;">Clean Image</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T2.6.4.5.1.3"><span class="ltx_text ltx_font_bold" id="S3.T2.6.4.5.1.3.1" style="font-size:144%;">Noisy Image</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.6.4.5.1.4"><span class="ltx_text ltx_font_bold" id="S3.T2.6.4.5.1.4.1" style="font-size:144%;">Clean Image</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.6.4.5.1.5"><span class="ltx_text ltx_font_bold" id="S3.T2.6.4.5.1.5.1" style="font-size:144%;">Noisy Image</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.6.4.6.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S3.T2.6.4.6.2.1"><span class="ltx_text" id="S3.T2.6.4.6.2.1.1" style="font-size:144%;">InternVL2-8B</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.6.4.6.2.2"><span class="ltx_text" id="S3.T2.6.4.6.2.2.1" style="font-size:144%;">59.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T2.6.4.6.2.3"><span class="ltx_text" id="S3.T2.6.4.6.2.3.1" style="font-size:144%;">54.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.6.4.6.2.4"><span class="ltx_text" id="S3.T2.6.4.6.2.4.1" style="font-size:144%;">50.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.6.4.6.2.5"><span class="ltx_text" id="S3.T2.6.4.6.2.5.1" style="font-size:144%;">57.2</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.5.3.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S3.T2.5.3.3.1">
<span class="ltx_text" id="S3.T2.5.3.3.1.1" style="font-size:144%;">InternVL2-8B-VLGuard</span><sup class="ltx_sup" id="S3.T2.5.3.3.1.2"><span class="ltx_text ltx_font_italic" id="S3.T2.5.3.3.1.2.1" style="font-size:144%;">†</span></sup>
</th>
<td class="ltx_td ltx_align_center" id="S3.T2.5.3.3.2"><span class="ltx_text" id="S3.T2.5.3.3.2.1" style="font-size:144%;">42.9 (-7.0)</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.5.3.3.3"><span class="ltx_text" id="S3.T2.5.3.3.3.1" style="font-size:144%;">42.6 (-11.8)</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.5.3.3.4"><span class="ltx_text ltx_font_bold" id="S3.T2.5.3.3.4.1" style="font-size:144%;">27.7</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.5.3.3.5"><span class="ltx_text" id="S3.T2.5.3.3.5.1" style="font-size:144%;">39.9</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.6.4.7.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S3.T2.6.4.7.3.1"><span class="ltx_text" id="S3.T2.6.4.7.3.1.1" style="font-size:144%;">InternVL2-8B-RobustVLGuard</span></th>
<td class="ltx_td ltx_align_center" id="S3.T2.6.4.7.3.2">
<span class="ltx_text" id="S3.T2.6.4.7.3.2.1" style="font-size:144%;">56.2 </span><span class="ltx_text ltx_font_bold" id="S3.T2.6.4.7.3.2.2" style="font-size:144%;">(-3.7)</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.6.4.7.3.3">
<span class="ltx_text" id="S3.T2.6.4.7.3.3.1" style="font-size:144%;">52.5 </span><span class="ltx_text ltx_font_bold" id="S3.T2.6.4.7.3.3.2" style="font-size:144%;">(-1.9)</span>
</td>
<td class="ltx_td ltx_align_center" id="S3.T2.6.4.7.3.4"><span class="ltx_text" id="S3.T2.6.4.7.3.4.1" style="font-size:144%;">29.9</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.6.4.7.3.5"><span class="ltx_text ltx_font_bold" id="S3.T2.6.4.7.3.5.1" style="font-size:144%;">34.5</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.6.4.8.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S3.T2.6.4.8.4.1"><span class="ltx_text" id="S3.T2.6.4.8.4.1.1" style="font-size:144%;">LLaVA-v1.5-7B</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.6.4.8.4.2"><span class="ltx_text" id="S3.T2.6.4.8.4.2.1" style="font-size:144%;">33.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T2.6.4.8.4.3"><span class="ltx_text" id="S3.T2.6.4.8.4.3.1" style="font-size:144%;">31.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.6.4.8.4.4"><span class="ltx_text" id="S3.T2.6.4.8.4.4.1" style="font-size:144%;">57.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.6.4.8.4.5"><span class="ltx_text" id="S3.T2.6.4.8.4.5.1" style="font-size:144%;">60.1</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.6.4.9.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S3.T2.6.4.9.5.1">
<span class="ltx_text" id="S3.T2.6.4.9.5.1.1" style="font-size:144%;">LLaVA-v1.5-7B-VLGuard </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S3.T2.6.4.9.5.1.2.1" style="font-size:144%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.01308v1#bib.bib51" title=""><span class="ltx_text" style="font-size:90%;">51</span></a><span class="ltx_text" id="S3.T2.6.4.9.5.1.3.2" style="font-size:144%;">]</span></cite>
</th>
<td class="ltx_td ltx_align_center" id="S3.T2.6.4.9.5.2"><span class="ltx_text" id="S3.T2.6.4.9.5.2.1" style="font-size:144%;">28.8 (-4.2)</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.6.4.9.5.3">
<span class="ltx_text" id="S3.T2.6.4.9.5.3.1" style="font-size:144%;">29.8 </span><span class="ltx_text ltx_font_bold" id="S3.T2.6.4.9.5.3.2" style="font-size:144%;">(-1.5)</span>
</td>
<td class="ltx_td ltx_align_center" id="S3.T2.6.4.9.5.4"><span class="ltx_text" id="S3.T2.6.4.9.5.4.1" style="font-size:144%;">50.3</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.6.4.9.5.5"><span class="ltx_text" id="S3.T2.6.4.9.5.5.1" style="font-size:144%;">52.3</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.6.4.10.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S3.T2.6.4.10.6.1"><span class="ltx_text" id="S3.T2.6.4.10.6.1.1" style="font-size:144%;">LLaVA-v1.5-7B-RobustVLGuard</span></th>
<td class="ltx_td ltx_align_center" id="S3.T2.6.4.10.6.2">
<span class="ltx_text" id="S3.T2.6.4.10.6.2.1" style="font-size:144%;">30.3 </span><span class="ltx_text ltx_font_bold" id="S3.T2.6.4.10.6.2.2" style="font-size:144%;">(-2.7)</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.6.4.10.6.3">
<span class="ltx_text" id="S3.T2.6.4.10.6.3.1" style="font-size:144%;">29.8 </span><span class="ltx_text ltx_font_bold" id="S3.T2.6.4.10.6.3.2" style="font-size:144%;">(-1.5)</span>
</td>
<td class="ltx_td ltx_align_center" id="S3.T2.6.4.10.6.4"><span class="ltx_text ltx_font_bold" id="S3.T2.6.4.10.6.4.1" style="font-size:144%;">43.6</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.6.4.10.6.5"><span class="ltx_text ltx_font_bold" id="S3.T2.6.4.10.6.5.1" style="font-size:144%;">42.3</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.6.4.11.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S3.T2.6.4.11.7.1"><span class="ltx_text" id="S3.T2.6.4.11.7.1.1" style="font-size:144%;">MiniGPT-4-13B</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.6.4.11.7.2"><span class="ltx_text" id="S3.T2.6.4.11.7.2.1" style="font-size:144%;">26.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T2.6.4.11.7.3"><span class="ltx_text" id="S3.T2.6.4.11.7.3.1" style="font-size:144%;">24.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.6.4.11.7.4"><span class="ltx_text" id="S3.T2.6.4.11.7.4.1" style="font-size:144%;">34.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.6.4.11.7.5"><span class="ltx_text" id="S3.T2.6.4.11.7.5.1" style="font-size:144%;">44.1</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.6.4.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S3.T2.6.4.4.1">
<span class="ltx_text" id="S3.T2.6.4.4.1.1" style="font-size:144%;">MiniGPT-4-13B-VLGuard</span><sup class="ltx_sup" id="S3.T2.6.4.4.1.2"><span class="ltx_text ltx_font_italic" id="S3.T2.6.4.4.1.2.1" style="font-size:144%;">†</span></sup>
</th>
<td class="ltx_td ltx_align_center" id="S3.T2.6.4.4.2"><span class="ltx_text" id="S3.T2.6.4.4.2.1" style="font-size:144%;">17.5 (-9.2)</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.6.4.4.3"><span class="ltx_text" id="S3.T2.6.4.4.3.1" style="font-size:144%;">17.6 (-6.4)</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.6.4.4.4"><span class="ltx_text" id="S3.T2.6.4.4.4.1" style="font-size:144%;">41.3</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.6.4.4.5"><span class="ltx_text" id="S3.T2.6.4.4.5.1" style="font-size:144%;">43.7</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.6.4.12.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_b ltx_border_r" id="S3.T2.6.4.12.8.1"><span class="ltx_text" id="S3.T2.6.4.12.8.1.1" style="font-size:144%;">MiniGPT-4-13B-RobustVLGuard</span></th>
<td class="ltx_td ltx_align_center ltx_border_b" id="S3.T2.6.4.12.8.2">
<span class="ltx_text" id="S3.T2.6.4.12.8.2.1" style="font-size:144%;">26.9 </span><span class="ltx_text ltx_font_bold" id="S3.T2.6.4.12.8.2.2" style="font-size:144%;">(+0.2)</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r" id="S3.T2.6.4.12.8.3">
<span class="ltx_text" id="S3.T2.6.4.12.8.3.1" style="font-size:144%;">27.3 </span><span class="ltx_text ltx_font_bold" id="S3.T2.6.4.12.8.3.2" style="font-size:144%;">(+3.3)</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S3.T2.6.4.12.8.4"><span class="ltx_text ltx_font_bold" id="S3.T2.6.4.12.8.4.1" style="font-size:144%;">16.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S3.T2.6.4.12.8.5"><span class="ltx_text ltx_font_bold" id="S3.T2.6.4.12.8.5.1" style="font-size:144%;">16.5</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a performance comparison of three vision-language models (InternVL2-8B, LLaVA-v1.5-7B, MiniGPT-4-13B) on two benchmarks: MM-Vet (for helpfulness) and RealToxicityPrompts (for safety).  The models are evaluated with both clean and noisy image prompts.  The results show the impact of Gaussian noise on the models’ performance.  For each model, the table highlights whether using RobustVLGuard (a new dataset and training method proposed in the paper) resulted in a smaller performance drop on the MM-Vet benchmark and a lower attack success rate on the RealToxicityPrompts benchmark compared to using the original VLGuard method.  The results indicate the robustness or vulnerability of the models to Gaussian noise in terms of both helpfulness and safety.
> <details>
> <summary>read the caption</summary>
> Table 2: Performance Comparison on MM-Vet and RealToxicityPrompts Benchmarks with Clean and Noisy Image Prompts. † indicates reproduced results. Bold values denote, for each base model, the method (VLGuard vs. RobustVLGuard) that achieves the smallest performance drop on MM-Vet and the lowest attack success rate on RealToxicityPrompts.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S4.T3.15.15">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T3.15.15.16.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_r ltx_border_tt" id="S4.T3.15.15.16.1.1" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.15.15.16.1.1.1" style="font-size:90%;">Image Configuration</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T3.15.15.16.1.2" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.15.15.16.1.2.1" style="font-size:90%;">Attack Success Rate (%)</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T3.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S4.T3.1.1.1.1" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.1.1.1.1.1" style="font-size:90%;">Benign clean Image <math alttext="I_{c}" class="ltx_Math" display="inline" id="S4.T3.1.1.1.1.1.m1.1"><semantics id="S4.T3.1.1.1.1.1.m1.1a"><msub id="S4.T3.1.1.1.1.1.m1.1.1" xref="S4.T3.1.1.1.1.1.m1.1.1.cmml"><mi id="S4.T3.1.1.1.1.1.m1.1.1.2" xref="S4.T3.1.1.1.1.1.m1.1.1.2.cmml">I</mi><mi id="S4.T3.1.1.1.1.1.m1.1.1.3" xref="S4.T3.1.1.1.1.1.m1.1.1.3.cmml">c</mi></msub><annotation-xml encoding="MathML-Content" id="S4.T3.1.1.1.1.1.m1.1b"><apply id="S4.T3.1.1.1.1.1.m1.1.1.cmml" xref="S4.T3.1.1.1.1.1.m1.1.1"><csymbol cd="ambiguous" id="S4.T3.1.1.1.1.1.m1.1.1.1.cmml" xref="S4.T3.1.1.1.1.1.m1.1.1">subscript</csymbol><ci id="S4.T3.1.1.1.1.1.m1.1.1.2.cmml" xref="S4.T3.1.1.1.1.1.m1.1.1.2">𝐼</ci><ci id="S4.T3.1.1.1.1.1.m1.1.1.3.cmml" xref="S4.T3.1.1.1.1.1.m1.1.1.3">𝑐</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.1.1.1.1.1.m1.1c">I_{c}</annotation><annotation encoding="application/x-llamapun" id="S4.T3.1.1.1.1.1.m1.1d">italic_I start_POSTSUBSCRIPT italic_c end_POSTSUBSCRIPT</annotation></semantics></math></span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.1.1.2" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S4.T3.1.1.1.2.1" style="font-size:90%;">34.8 ± 1.6</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.3.3.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T3.3.3.3.2" style="padding-left:8.0pt;padding-right:8.0pt;">
<span class="ltx_text" id="S4.T3.3.3.3.2.1" style="font-size:90%;">    + </span><math alttext="n" class="ltx_Math" display="inline" id="S4.T3.2.2.2.1.m1.1"><semantics id="S4.T3.2.2.2.1.m1.1a"><mi id="S4.T3.2.2.2.1.m1.1.1" mathsize="90%" xref="S4.T3.2.2.2.1.m1.1.1.cmml">n</mi><annotation-xml encoding="MathML-Content" id="S4.T3.2.2.2.1.m1.1b"><ci id="S4.T3.2.2.2.1.m1.1.1.cmml" xref="S4.T3.2.2.2.1.m1.1.1">𝑛</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.2.2.2.1.m1.1c">n</annotation><annotation encoding="application/x-llamapun" id="S4.T3.2.2.2.1.m1.1d">italic_n</annotation></semantics></math><span class="ltx_text" id="S4.T3.3.3.3.2.2" style="font-size:90%;"> (</span><math alttext="\sigma_{n}=30/255" class="ltx_Math" display="inline" id="S4.T3.3.3.3.2.m2.1"><semantics id="S4.T3.3.3.3.2.m2.1a"><mrow id="S4.T3.3.3.3.2.m2.1.1" xref="S4.T3.3.3.3.2.m2.1.1.cmml"><msub id="S4.T3.3.3.3.2.m2.1.1.2" xref="S4.T3.3.3.3.2.m2.1.1.2.cmml"><mi id="S4.T3.3.3.3.2.m2.1.1.2.2" mathsize="90%" xref="S4.T3.3.3.3.2.m2.1.1.2.2.cmml">σ</mi><mi id="S4.T3.3.3.3.2.m2.1.1.2.3" mathsize="90%" xref="S4.T3.3.3.3.2.m2.1.1.2.3.cmml">n</mi></msub><mo id="S4.T3.3.3.3.2.m2.1.1.1" mathsize="90%" xref="S4.T3.3.3.3.2.m2.1.1.1.cmml">=</mo><mrow id="S4.T3.3.3.3.2.m2.1.1.3" xref="S4.T3.3.3.3.2.m2.1.1.3.cmml"><mn id="S4.T3.3.3.3.2.m2.1.1.3.2" mathsize="90%" xref="S4.T3.3.3.3.2.m2.1.1.3.2.cmml">30</mn><mo id="S4.T3.3.3.3.2.m2.1.1.3.1" maxsize="90%" minsize="90%" stretchy="true" symmetric="true" xref="S4.T3.3.3.3.2.m2.1.1.3.1.cmml">/</mo><mn id="S4.T3.3.3.3.2.m2.1.1.3.3" mathsize="90%" xref="S4.T3.3.3.3.2.m2.1.1.3.3.cmml">255</mn></mrow></mrow><annotation-xml encoding="MathML-Content" id="S4.T3.3.3.3.2.m2.1b"><apply id="S4.T3.3.3.3.2.m2.1.1.cmml" xref="S4.T3.3.3.3.2.m2.1.1"><eq id="S4.T3.3.3.3.2.m2.1.1.1.cmml" xref="S4.T3.3.3.3.2.m2.1.1.1"></eq><apply id="S4.T3.3.3.3.2.m2.1.1.2.cmml" xref="S4.T3.3.3.3.2.m2.1.1.2"><csymbol cd="ambiguous" id="S4.T3.3.3.3.2.m2.1.1.2.1.cmml" xref="S4.T3.3.3.3.2.m2.1.1.2">subscript</csymbol><ci id="S4.T3.3.3.3.2.m2.1.1.2.2.cmml" xref="S4.T3.3.3.3.2.m2.1.1.2.2">𝜎</ci><ci id="S4.T3.3.3.3.2.m2.1.1.2.3.cmml" xref="S4.T3.3.3.3.2.m2.1.1.2.3">𝑛</ci></apply><apply id="S4.T3.3.3.3.2.m2.1.1.3.cmml" xref="S4.T3.3.3.3.2.m2.1.1.3"><divide id="S4.T3.3.3.3.2.m2.1.1.3.1.cmml" xref="S4.T3.3.3.3.2.m2.1.1.3.1"></divide><cn id="S4.T3.3.3.3.2.m2.1.1.3.2.cmml" type="integer" xref="S4.T3.3.3.3.2.m2.1.1.3.2">30</cn><cn id="S4.T3.3.3.3.2.m2.1.1.3.3.cmml" type="integer" xref="S4.T3.3.3.3.2.m2.1.1.3.3">255</cn></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.3.3.3.2.m2.1c">\sigma_{n}=30/255</annotation><annotation encoding="application/x-llamapun" id="S4.T3.3.3.3.2.m2.1d">italic_σ start_POSTSUBSCRIPT italic_n end_POSTSUBSCRIPT = 30 / 255</annotation></semantics></math><span class="ltx_text" id="S4.T3.3.3.3.2.3" style="font-size:90%;">)</span>
</th>
<td class="ltx_td ltx_align_center" id="S4.T3.3.3.3.3" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S4.T3.3.3.3.3.1" style="font-size:90%;">44.1</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.6.6.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T3.6.6.6.3" style="padding-left:8.0pt;padding-right:8.0pt;">
<span class="ltx_text" id="S4.T3.6.6.6.3.1" style="font-size:90%;">    + </span><math alttext="n" class="ltx_Math" display="inline" id="S4.T3.4.4.4.1.m1.1"><semantics id="S4.T3.4.4.4.1.m1.1a"><mi id="S4.T3.4.4.4.1.m1.1.1" mathsize="90%" xref="S4.T3.4.4.4.1.m1.1.1.cmml">n</mi><annotation-xml encoding="MathML-Content" id="S4.T3.4.4.4.1.m1.1b"><ci id="S4.T3.4.4.4.1.m1.1.1.cmml" xref="S4.T3.4.4.4.1.m1.1.1">𝑛</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.4.4.4.1.m1.1c">n</annotation><annotation encoding="application/x-llamapun" id="S4.T3.4.4.4.1.m1.1d">italic_n</annotation></semantics></math><span class="ltx_text" id="S4.T3.6.6.6.3.2" style="font-size:90%;"> (</span><math alttext="\sigma_{n}=30/255" class="ltx_Math" display="inline" id="S4.T3.5.5.5.2.m2.1"><semantics id="S4.T3.5.5.5.2.m2.1a"><mrow id="S4.T3.5.5.5.2.m2.1.1" xref="S4.T3.5.5.5.2.m2.1.1.cmml"><msub id="S4.T3.5.5.5.2.m2.1.1.2" xref="S4.T3.5.5.5.2.m2.1.1.2.cmml"><mi id="S4.T3.5.5.5.2.m2.1.1.2.2" mathsize="90%" xref="S4.T3.5.5.5.2.m2.1.1.2.2.cmml">σ</mi><mi id="S4.T3.5.5.5.2.m2.1.1.2.3" mathsize="90%" xref="S4.T3.5.5.5.2.m2.1.1.2.3.cmml">n</mi></msub><mo id="S4.T3.5.5.5.2.m2.1.1.1" mathsize="90%" xref="S4.T3.5.5.5.2.m2.1.1.1.cmml">=</mo><mrow id="S4.T3.5.5.5.2.m2.1.1.3" xref="S4.T3.5.5.5.2.m2.1.1.3.cmml"><mn id="S4.T3.5.5.5.2.m2.1.1.3.2" mathsize="90%" xref="S4.T3.5.5.5.2.m2.1.1.3.2.cmml">30</mn><mo id="S4.T3.5.5.5.2.m2.1.1.3.1" maxsize="90%" minsize="90%" stretchy="true" symmetric="true" xref="S4.T3.5.5.5.2.m2.1.1.3.1.cmml">/</mo><mn id="S4.T3.5.5.5.2.m2.1.1.3.3" mathsize="90%" xref="S4.T3.5.5.5.2.m2.1.1.3.3.cmml">255</mn></mrow></mrow><annotation-xml encoding="MathML-Content" id="S4.T3.5.5.5.2.m2.1b"><apply id="S4.T3.5.5.5.2.m2.1.1.cmml" xref="S4.T3.5.5.5.2.m2.1.1"><eq id="S4.T3.5.5.5.2.m2.1.1.1.cmml" xref="S4.T3.5.5.5.2.m2.1.1.1"></eq><apply id="S4.T3.5.5.5.2.m2.1.1.2.cmml" xref="S4.T3.5.5.5.2.m2.1.1.2"><csymbol cd="ambiguous" id="S4.T3.5.5.5.2.m2.1.1.2.1.cmml" xref="S4.T3.5.5.5.2.m2.1.1.2">subscript</csymbol><ci id="S4.T3.5.5.5.2.m2.1.1.2.2.cmml" xref="S4.T3.5.5.5.2.m2.1.1.2.2">𝜎</ci><ci id="S4.T3.5.5.5.2.m2.1.1.2.3.cmml" xref="S4.T3.5.5.5.2.m2.1.1.2.3">𝑛</ci></apply><apply id="S4.T3.5.5.5.2.m2.1.1.3.cmml" xref="S4.T3.5.5.5.2.m2.1.1.3"><divide id="S4.T3.5.5.5.2.m2.1.1.3.1.cmml" xref="S4.T3.5.5.5.2.m2.1.1.3.1"></divide><cn id="S4.T3.5.5.5.2.m2.1.1.3.2.cmml" type="integer" xref="S4.T3.5.5.5.2.m2.1.1.3.2">30</cn><cn id="S4.T3.5.5.5.2.m2.1.1.3.3.cmml" type="integer" xref="S4.T3.5.5.5.2.m2.1.1.3.3">255</cn></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.5.5.5.2.m2.1c">\sigma_{n}=30/255</annotation><annotation encoding="application/x-llamapun" id="S4.T3.5.5.5.2.m2.1d">italic_σ start_POSTSUBSCRIPT italic_n end_POSTSUBSCRIPT = 30 / 255</annotation></semantics></math><span class="ltx_text" id="S4.T3.6.6.6.3.3" style="font-size:90%;">) + DiffPure (</span><math alttext="t^{*}=50" class="ltx_Math" display="inline" id="S4.T3.6.6.6.3.m3.1"><semantics id="S4.T3.6.6.6.3.m3.1a"><mrow id="S4.T3.6.6.6.3.m3.1.1" xref="S4.T3.6.6.6.3.m3.1.1.cmml"><msup id="S4.T3.6.6.6.3.m3.1.1.2" xref="S4.T3.6.6.6.3.m3.1.1.2.cmml"><mi id="S4.T3.6.6.6.3.m3.1.1.2.2" mathsize="90%" xref="S4.T3.6.6.6.3.m3.1.1.2.2.cmml">t</mi><mo id="S4.T3.6.6.6.3.m3.1.1.2.3" mathsize="90%" xref="S4.T3.6.6.6.3.m3.1.1.2.3.cmml">∗</mo></msup><mo id="S4.T3.6.6.6.3.m3.1.1.1" mathsize="90%" xref="S4.T3.6.6.6.3.m3.1.1.1.cmml">=</mo><mn id="S4.T3.6.6.6.3.m3.1.1.3" mathsize="90%" xref="S4.T3.6.6.6.3.m3.1.1.3.cmml">50</mn></mrow><annotation-xml encoding="MathML-Content" id="S4.T3.6.6.6.3.m3.1b"><apply id="S4.T3.6.6.6.3.m3.1.1.cmml" xref="S4.T3.6.6.6.3.m3.1.1"><eq id="S4.T3.6.6.6.3.m3.1.1.1.cmml" xref="S4.T3.6.6.6.3.m3.1.1.1"></eq><apply id="S4.T3.6.6.6.3.m3.1.1.2.cmml" xref="S4.T3.6.6.6.3.m3.1.1.2"><csymbol cd="ambiguous" id="S4.T3.6.6.6.3.m3.1.1.2.1.cmml" xref="S4.T3.6.6.6.3.m3.1.1.2">superscript</csymbol><ci id="S4.T3.6.6.6.3.m3.1.1.2.2.cmml" xref="S4.T3.6.6.6.3.m3.1.1.2.2">𝑡</ci><times id="S4.T3.6.6.6.3.m3.1.1.2.3.cmml" xref="S4.T3.6.6.6.3.m3.1.1.2.3"></times></apply><cn id="S4.T3.6.6.6.3.m3.1.1.3.cmml" type="integer" xref="S4.T3.6.6.6.3.m3.1.1.3">50</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.6.6.6.3.m3.1c">t^{*}=50</annotation><annotation encoding="application/x-llamapun" id="S4.T3.6.6.6.3.m3.1d">italic_t start_POSTSUPERSCRIPT ∗ end_POSTSUPERSCRIPT = 50</annotation></semantics></math><span class="ltx_text" id="S4.T3.6.6.6.3.4" style="font-size:90%;">)</span>
</th>
<td class="ltx_td ltx_align_center" id="S4.T3.6.6.6.4" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S4.T3.6.6.6.4.1" style="font-size:90%;">44.3</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.8.8.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S4.T3.8.8.8.2" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.8.8.8.2.2" style="font-size:90%;">Adversarial image <math alttext="I_{adv}" class="ltx_Math" display="inline" id="S4.T3.7.7.7.1.1.m1.1"><semantics id="S4.T3.7.7.7.1.1.m1.1a"><msub id="S4.T3.7.7.7.1.1.m1.1.1" xref="S4.T3.7.7.7.1.1.m1.1.1.cmml"><mi id="S4.T3.7.7.7.1.1.m1.1.1.2" xref="S4.T3.7.7.7.1.1.m1.1.1.2.cmml">I</mi><mrow id="S4.T3.7.7.7.1.1.m1.1.1.3" xref="S4.T3.7.7.7.1.1.m1.1.1.3.cmml"><mi id="S4.T3.7.7.7.1.1.m1.1.1.3.2" xref="S4.T3.7.7.7.1.1.m1.1.1.3.2.cmml">a</mi><mo id="S4.T3.7.7.7.1.1.m1.1.1.3.1" xref="S4.T3.7.7.7.1.1.m1.1.1.3.1.cmml">⁢</mo><mi id="S4.T3.7.7.7.1.1.m1.1.1.3.3" xref="S4.T3.7.7.7.1.1.m1.1.1.3.3.cmml">d</mi><mo id="S4.T3.7.7.7.1.1.m1.1.1.3.1a" xref="S4.T3.7.7.7.1.1.m1.1.1.3.1.cmml">⁢</mo><mi id="S4.T3.7.7.7.1.1.m1.1.1.3.4" xref="S4.T3.7.7.7.1.1.m1.1.1.3.4.cmml">v</mi></mrow></msub><annotation-xml encoding="MathML-Content" id="S4.T3.7.7.7.1.1.m1.1b"><apply id="S4.T3.7.7.7.1.1.m1.1.1.cmml" xref="S4.T3.7.7.7.1.1.m1.1.1"><csymbol cd="ambiguous" id="S4.T3.7.7.7.1.1.m1.1.1.1.cmml" xref="S4.T3.7.7.7.1.1.m1.1.1">subscript</csymbol><ci id="S4.T3.7.7.7.1.1.m1.1.1.2.cmml" xref="S4.T3.7.7.7.1.1.m1.1.1.2">𝐼</ci><apply id="S4.T3.7.7.7.1.1.m1.1.1.3.cmml" xref="S4.T3.7.7.7.1.1.m1.1.1.3"><times id="S4.T3.7.7.7.1.1.m1.1.1.3.1.cmml" xref="S4.T3.7.7.7.1.1.m1.1.1.3.1"></times><ci id="S4.T3.7.7.7.1.1.m1.1.1.3.2.cmml" xref="S4.T3.7.7.7.1.1.m1.1.1.3.2">𝑎</ci><ci id="S4.T3.7.7.7.1.1.m1.1.1.3.3.cmml" xref="S4.T3.7.7.7.1.1.m1.1.1.3.3">𝑑</ci><ci id="S4.T3.7.7.7.1.1.m1.1.1.3.4.cmml" xref="S4.T3.7.7.7.1.1.m1.1.1.3.4">𝑣</ci></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.7.7.7.1.1.m1.1c">I_{adv}</annotation><annotation encoding="application/x-llamapun" id="S4.T3.7.7.7.1.1.m1.1d">italic_I start_POSTSUBSCRIPT italic_a italic_d italic_v end_POSTSUBSCRIPT</annotation></semantics></math> (<math alttext="\epsilon=16/255" class="ltx_Math" display="inline" id="S4.T3.8.8.8.2.2.m2.1"><semantics id="S4.T3.8.8.8.2.2.m2.1a"><mrow id="S4.T3.8.8.8.2.2.m2.1.1" xref="S4.T3.8.8.8.2.2.m2.1.1.cmml"><mi id="S4.T3.8.8.8.2.2.m2.1.1.2" xref="S4.T3.8.8.8.2.2.m2.1.1.2.cmml">ϵ</mi><mo id="S4.T3.8.8.8.2.2.m2.1.1.1" xref="S4.T3.8.8.8.2.2.m2.1.1.1.cmml">=</mo><mrow id="S4.T3.8.8.8.2.2.m2.1.1.3" xref="S4.T3.8.8.8.2.2.m2.1.1.3.cmml"><mn id="S4.T3.8.8.8.2.2.m2.1.1.3.2" xref="S4.T3.8.8.8.2.2.m2.1.1.3.2.cmml">16</mn><mo id="S4.T3.8.8.8.2.2.m2.1.1.3.1" xref="S4.T3.8.8.8.2.2.m2.1.1.3.1.cmml">/</mo><mn id="S4.T3.8.8.8.2.2.m2.1.1.3.3" xref="S4.T3.8.8.8.2.2.m2.1.1.3.3.cmml">255</mn></mrow></mrow><annotation-xml encoding="MathML-Content" id="S4.T3.8.8.8.2.2.m2.1b"><apply id="S4.T3.8.8.8.2.2.m2.1.1.cmml" xref="S4.T3.8.8.8.2.2.m2.1.1"><eq id="S4.T3.8.8.8.2.2.m2.1.1.1.cmml" xref="S4.T3.8.8.8.2.2.m2.1.1.1"></eq><ci id="S4.T3.8.8.8.2.2.m2.1.1.2.cmml" xref="S4.T3.8.8.8.2.2.m2.1.1.2">italic-ϵ</ci><apply id="S4.T3.8.8.8.2.2.m2.1.1.3.cmml" xref="S4.T3.8.8.8.2.2.m2.1.1.3"><divide id="S4.T3.8.8.8.2.2.m2.1.1.3.1.cmml" xref="S4.T3.8.8.8.2.2.m2.1.1.3.1"></divide><cn id="S4.T3.8.8.8.2.2.m2.1.1.3.2.cmml" type="integer" xref="S4.T3.8.8.8.2.2.m2.1.1.3.2">16</cn><cn id="S4.T3.8.8.8.2.2.m2.1.1.3.3.cmml" type="integer" xref="S4.T3.8.8.8.2.2.m2.1.1.3.3">255</cn></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.8.8.8.2.2.m2.1c">\epsilon=16/255</annotation><annotation encoding="application/x-llamapun" id="S4.T3.8.8.8.2.2.m2.1d">italic_ϵ = 16 / 255</annotation></semantics></math>)</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.8.8.8.3" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S4.T3.8.8.8.3.1" style="font-size:90%;">53.6 ± 1.0</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.9.9.9">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T3.9.9.9.1" style="padding-left:8.0pt;padding-right:8.0pt;">
<span class="ltx_text" id="S4.T3.9.9.9.1.1" style="font-size:90%;">    + DiffPure (</span><math alttext="t^{*}=50" class="ltx_Math" display="inline" id="S4.T3.9.9.9.1.m1.1"><semantics id="S4.T3.9.9.9.1.m1.1a"><mrow id="S4.T3.9.9.9.1.m1.1.1" xref="S4.T3.9.9.9.1.m1.1.1.cmml"><msup id="S4.T3.9.9.9.1.m1.1.1.2" xref="S4.T3.9.9.9.1.m1.1.1.2.cmml"><mi id="S4.T3.9.9.9.1.m1.1.1.2.2" mathsize="90%" xref="S4.T3.9.9.9.1.m1.1.1.2.2.cmml">t</mi><mo id="S4.T3.9.9.9.1.m1.1.1.2.3" mathsize="90%" xref="S4.T3.9.9.9.1.m1.1.1.2.3.cmml">∗</mo></msup><mo id="S4.T3.9.9.9.1.m1.1.1.1" mathsize="90%" xref="S4.T3.9.9.9.1.m1.1.1.1.cmml">=</mo><mn id="S4.T3.9.9.9.1.m1.1.1.3" mathsize="90%" xref="S4.T3.9.9.9.1.m1.1.1.3.cmml">50</mn></mrow><annotation-xml encoding="MathML-Content" id="S4.T3.9.9.9.1.m1.1b"><apply id="S4.T3.9.9.9.1.m1.1.1.cmml" xref="S4.T3.9.9.9.1.m1.1.1"><eq id="S4.T3.9.9.9.1.m1.1.1.1.cmml" xref="S4.T3.9.9.9.1.m1.1.1.1"></eq><apply id="S4.T3.9.9.9.1.m1.1.1.2.cmml" xref="S4.T3.9.9.9.1.m1.1.1.2"><csymbol cd="ambiguous" id="S4.T3.9.9.9.1.m1.1.1.2.1.cmml" xref="S4.T3.9.9.9.1.m1.1.1.2">superscript</csymbol><ci id="S4.T3.9.9.9.1.m1.1.1.2.2.cmml" xref="S4.T3.9.9.9.1.m1.1.1.2.2">𝑡</ci><times id="S4.T3.9.9.9.1.m1.1.1.2.3.cmml" xref="S4.T3.9.9.9.1.m1.1.1.2.3"></times></apply><cn id="S4.T3.9.9.9.1.m1.1.1.3.cmml" type="integer" xref="S4.T3.9.9.9.1.m1.1.1.3">50</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.9.9.9.1.m1.1c">t^{*}=50</annotation><annotation encoding="application/x-llamapun" id="S4.T3.9.9.9.1.m1.1d">italic_t start_POSTSUPERSCRIPT ∗ end_POSTSUPERSCRIPT = 50</annotation></semantics></math><span class="ltx_text" id="S4.T3.9.9.9.1.2" style="font-size:90%;">)</span>
</th>
<td class="ltx_td ltx_align_center" id="S4.T3.9.9.9.2" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S4.T3.9.9.9.2.1" style="font-size:90%;">45.0</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.11.11.11">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S4.T3.11.11.11.2" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.11.11.11.2.2" style="font-size:90%;">Adversarial image <math alttext="I_{adv}" class="ltx_Math" display="inline" id="S4.T3.10.10.10.1.1.m1.1"><semantics id="S4.T3.10.10.10.1.1.m1.1a"><msub id="S4.T3.10.10.10.1.1.m1.1.1" xref="S4.T3.10.10.10.1.1.m1.1.1.cmml"><mi id="S4.T3.10.10.10.1.1.m1.1.1.2" xref="S4.T3.10.10.10.1.1.m1.1.1.2.cmml">I</mi><mrow id="S4.T3.10.10.10.1.1.m1.1.1.3" xref="S4.T3.10.10.10.1.1.m1.1.1.3.cmml"><mi id="S4.T3.10.10.10.1.1.m1.1.1.3.2" xref="S4.T3.10.10.10.1.1.m1.1.1.3.2.cmml">a</mi><mo id="S4.T3.10.10.10.1.1.m1.1.1.3.1" xref="S4.T3.10.10.10.1.1.m1.1.1.3.1.cmml">⁢</mo><mi id="S4.T3.10.10.10.1.1.m1.1.1.3.3" xref="S4.T3.10.10.10.1.1.m1.1.1.3.3.cmml">d</mi><mo id="S4.T3.10.10.10.1.1.m1.1.1.3.1a" xref="S4.T3.10.10.10.1.1.m1.1.1.3.1.cmml">⁢</mo><mi id="S4.T3.10.10.10.1.1.m1.1.1.3.4" xref="S4.T3.10.10.10.1.1.m1.1.1.3.4.cmml">v</mi></mrow></msub><annotation-xml encoding="MathML-Content" id="S4.T3.10.10.10.1.1.m1.1b"><apply id="S4.T3.10.10.10.1.1.m1.1.1.cmml" xref="S4.T3.10.10.10.1.1.m1.1.1"><csymbol cd="ambiguous" id="S4.T3.10.10.10.1.1.m1.1.1.1.cmml" xref="S4.T3.10.10.10.1.1.m1.1.1">subscript</csymbol><ci id="S4.T3.10.10.10.1.1.m1.1.1.2.cmml" xref="S4.T3.10.10.10.1.1.m1.1.1.2">𝐼</ci><apply id="S4.T3.10.10.10.1.1.m1.1.1.3.cmml" xref="S4.T3.10.10.10.1.1.m1.1.1.3"><times id="S4.T3.10.10.10.1.1.m1.1.1.3.1.cmml" xref="S4.T3.10.10.10.1.1.m1.1.1.3.1"></times><ci id="S4.T3.10.10.10.1.1.m1.1.1.3.2.cmml" xref="S4.T3.10.10.10.1.1.m1.1.1.3.2">𝑎</ci><ci id="S4.T3.10.10.10.1.1.m1.1.1.3.3.cmml" xref="S4.T3.10.10.10.1.1.m1.1.1.3.3">𝑑</ci><ci id="S4.T3.10.10.10.1.1.m1.1.1.3.4.cmml" xref="S4.T3.10.10.10.1.1.m1.1.1.3.4">𝑣</ci></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.10.10.10.1.1.m1.1c">I_{adv}</annotation><annotation encoding="application/x-llamapun" id="S4.T3.10.10.10.1.1.m1.1d">italic_I start_POSTSUBSCRIPT italic_a italic_d italic_v end_POSTSUBSCRIPT</annotation></semantics></math> (<math alttext="\epsilon=32/255" class="ltx_Math" display="inline" id="S4.T3.11.11.11.2.2.m2.1"><semantics id="S4.T3.11.11.11.2.2.m2.1a"><mrow id="S4.T3.11.11.11.2.2.m2.1.1" xref="S4.T3.11.11.11.2.2.m2.1.1.cmml"><mi id="S4.T3.11.11.11.2.2.m2.1.1.2" xref="S4.T3.11.11.11.2.2.m2.1.1.2.cmml">ϵ</mi><mo id="S4.T3.11.11.11.2.2.m2.1.1.1" xref="S4.T3.11.11.11.2.2.m2.1.1.1.cmml">=</mo><mrow id="S4.T3.11.11.11.2.2.m2.1.1.3" xref="S4.T3.11.11.11.2.2.m2.1.1.3.cmml"><mn id="S4.T3.11.11.11.2.2.m2.1.1.3.2" xref="S4.T3.11.11.11.2.2.m2.1.1.3.2.cmml">32</mn><mo id="S4.T3.11.11.11.2.2.m2.1.1.3.1" xref="S4.T3.11.11.11.2.2.m2.1.1.3.1.cmml">/</mo><mn id="S4.T3.11.11.11.2.2.m2.1.1.3.3" xref="S4.T3.11.11.11.2.2.m2.1.1.3.3.cmml">255</mn></mrow></mrow><annotation-xml encoding="MathML-Content" id="S4.T3.11.11.11.2.2.m2.1b"><apply id="S4.T3.11.11.11.2.2.m2.1.1.cmml" xref="S4.T3.11.11.11.2.2.m2.1.1"><eq id="S4.T3.11.11.11.2.2.m2.1.1.1.cmml" xref="S4.T3.11.11.11.2.2.m2.1.1.1"></eq><ci id="S4.T3.11.11.11.2.2.m2.1.1.2.cmml" xref="S4.T3.11.11.11.2.2.m2.1.1.2">italic-ϵ</ci><apply id="S4.T3.11.11.11.2.2.m2.1.1.3.cmml" xref="S4.T3.11.11.11.2.2.m2.1.1.3"><divide id="S4.T3.11.11.11.2.2.m2.1.1.3.1.cmml" xref="S4.T3.11.11.11.2.2.m2.1.1.3.1"></divide><cn id="S4.T3.11.11.11.2.2.m2.1.1.3.2.cmml" type="integer" xref="S4.T3.11.11.11.2.2.m2.1.1.3.2">32</cn><cn id="S4.T3.11.11.11.2.2.m2.1.1.3.3.cmml" type="integer" xref="S4.T3.11.11.11.2.2.m2.1.1.3.3">255</cn></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.11.11.11.2.2.m2.1c">\epsilon=32/255</annotation><annotation encoding="application/x-llamapun" id="S4.T3.11.11.11.2.2.m2.1d">italic_ϵ = 32 / 255</annotation></semantics></math>)</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.11.11.11.3" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S4.T3.11.11.11.3.1" style="font-size:90%;">59.4 ± 1.4</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.12.12.12">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T3.12.12.12.1" style="padding-left:8.0pt;padding-right:8.0pt;">
<span class="ltx_text" id="S4.T3.12.12.12.1.1" style="font-size:90%;">    + DiffPure (</span><math alttext="t^{*}=50" class="ltx_Math" display="inline" id="S4.T3.12.12.12.1.m1.1"><semantics id="S4.T3.12.12.12.1.m1.1a"><mrow id="S4.T3.12.12.12.1.m1.1.1" xref="S4.T3.12.12.12.1.m1.1.1.cmml"><msup id="S4.T3.12.12.12.1.m1.1.1.2" xref="S4.T3.12.12.12.1.m1.1.1.2.cmml"><mi id="S4.T3.12.12.12.1.m1.1.1.2.2" mathsize="90%" xref="S4.T3.12.12.12.1.m1.1.1.2.2.cmml">t</mi><mo id="S4.T3.12.12.12.1.m1.1.1.2.3" mathsize="90%" xref="S4.T3.12.12.12.1.m1.1.1.2.3.cmml">∗</mo></msup><mo id="S4.T3.12.12.12.1.m1.1.1.1" mathsize="90%" xref="S4.T3.12.12.12.1.m1.1.1.1.cmml">=</mo><mn id="S4.T3.12.12.12.1.m1.1.1.3" mathsize="90%" xref="S4.T3.12.12.12.1.m1.1.1.3.cmml">50</mn></mrow><annotation-xml encoding="MathML-Content" id="S4.T3.12.12.12.1.m1.1b"><apply id="S4.T3.12.12.12.1.m1.1.1.cmml" xref="S4.T3.12.12.12.1.m1.1.1"><eq id="S4.T3.12.12.12.1.m1.1.1.1.cmml" xref="S4.T3.12.12.12.1.m1.1.1.1"></eq><apply id="S4.T3.12.12.12.1.m1.1.1.2.cmml" xref="S4.T3.12.12.12.1.m1.1.1.2"><csymbol cd="ambiguous" id="S4.T3.12.12.12.1.m1.1.1.2.1.cmml" xref="S4.T3.12.12.12.1.m1.1.1.2">superscript</csymbol><ci id="S4.T3.12.12.12.1.m1.1.1.2.2.cmml" xref="S4.T3.12.12.12.1.m1.1.1.2.2">𝑡</ci><times id="S4.T3.12.12.12.1.m1.1.1.2.3.cmml" xref="S4.T3.12.12.12.1.m1.1.1.2.3"></times></apply><cn id="S4.T3.12.12.12.1.m1.1.1.3.cmml" type="integer" xref="S4.T3.12.12.12.1.m1.1.1.3">50</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.12.12.12.1.m1.1c">t^{*}=50</annotation><annotation encoding="application/x-llamapun" id="S4.T3.12.12.12.1.m1.1d">italic_t start_POSTSUPERSCRIPT ∗ end_POSTSUPERSCRIPT = 50</annotation></semantics></math><span class="ltx_text" id="S4.T3.12.12.12.1.2" style="font-size:90%;">)</span>
</th>
<td class="ltx_td ltx_align_center" id="S4.T3.12.12.12.2" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S4.T3.12.12.12.2.1" style="font-size:90%;">45.5</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.14.14.14">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S4.T3.14.14.14.2" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.14.14.14.2.2" style="font-size:90%;">Adversarial image <math alttext="I_{adv}" class="ltx_Math" display="inline" id="S4.T3.13.13.13.1.1.m1.1"><semantics id="S4.T3.13.13.13.1.1.m1.1a"><msub id="S4.T3.13.13.13.1.1.m1.1.1" xref="S4.T3.13.13.13.1.1.m1.1.1.cmml"><mi id="S4.T3.13.13.13.1.1.m1.1.1.2" xref="S4.T3.13.13.13.1.1.m1.1.1.2.cmml">I</mi><mrow id="S4.T3.13.13.13.1.1.m1.1.1.3" xref="S4.T3.13.13.13.1.1.m1.1.1.3.cmml"><mi id="S4.T3.13.13.13.1.1.m1.1.1.3.2" xref="S4.T3.13.13.13.1.1.m1.1.1.3.2.cmml">a</mi><mo id="S4.T3.13.13.13.1.1.m1.1.1.3.1" xref="S4.T3.13.13.13.1.1.m1.1.1.3.1.cmml">⁢</mo><mi id="S4.T3.13.13.13.1.1.m1.1.1.3.3" xref="S4.T3.13.13.13.1.1.m1.1.1.3.3.cmml">d</mi><mo id="S4.T3.13.13.13.1.1.m1.1.1.3.1a" xref="S4.T3.13.13.13.1.1.m1.1.1.3.1.cmml">⁢</mo><mi id="S4.T3.13.13.13.1.1.m1.1.1.3.4" xref="S4.T3.13.13.13.1.1.m1.1.1.3.4.cmml">v</mi></mrow></msub><annotation-xml encoding="MathML-Content" id="S4.T3.13.13.13.1.1.m1.1b"><apply id="S4.T3.13.13.13.1.1.m1.1.1.cmml" xref="S4.T3.13.13.13.1.1.m1.1.1"><csymbol cd="ambiguous" id="S4.T3.13.13.13.1.1.m1.1.1.1.cmml" xref="S4.T3.13.13.13.1.1.m1.1.1">subscript</csymbol><ci id="S4.T3.13.13.13.1.1.m1.1.1.2.cmml" xref="S4.T3.13.13.13.1.1.m1.1.1.2">𝐼</ci><apply id="S4.T3.13.13.13.1.1.m1.1.1.3.cmml" xref="S4.T3.13.13.13.1.1.m1.1.1.3"><times id="S4.T3.13.13.13.1.1.m1.1.1.3.1.cmml" xref="S4.T3.13.13.13.1.1.m1.1.1.3.1"></times><ci id="S4.T3.13.13.13.1.1.m1.1.1.3.2.cmml" xref="S4.T3.13.13.13.1.1.m1.1.1.3.2">𝑎</ci><ci id="S4.T3.13.13.13.1.1.m1.1.1.3.3.cmml" xref="S4.T3.13.13.13.1.1.m1.1.1.3.3">𝑑</ci><ci id="S4.T3.13.13.13.1.1.m1.1.1.3.4.cmml" xref="S4.T3.13.13.13.1.1.m1.1.1.3.4">𝑣</ci></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.13.13.13.1.1.m1.1c">I_{adv}</annotation><annotation encoding="application/x-llamapun" id="S4.T3.13.13.13.1.1.m1.1d">italic_I start_POSTSUBSCRIPT italic_a italic_d italic_v end_POSTSUBSCRIPT</annotation></semantics></math> (<math alttext="\epsilon=64/255" class="ltx_Math" display="inline" id="S4.T3.14.14.14.2.2.m2.1"><semantics id="S4.T3.14.14.14.2.2.m2.1a"><mrow id="S4.T3.14.14.14.2.2.m2.1.1" xref="S4.T3.14.14.14.2.2.m2.1.1.cmml"><mi id="S4.T3.14.14.14.2.2.m2.1.1.2" xref="S4.T3.14.14.14.2.2.m2.1.1.2.cmml">ϵ</mi><mo id="S4.T3.14.14.14.2.2.m2.1.1.1" xref="S4.T3.14.14.14.2.2.m2.1.1.1.cmml">=</mo><mrow id="S4.T3.14.14.14.2.2.m2.1.1.3" xref="S4.T3.14.14.14.2.2.m2.1.1.3.cmml"><mn id="S4.T3.14.14.14.2.2.m2.1.1.3.2" xref="S4.T3.14.14.14.2.2.m2.1.1.3.2.cmml">64</mn><mo id="S4.T3.14.14.14.2.2.m2.1.1.3.1" xref="S4.T3.14.14.14.2.2.m2.1.1.3.1.cmml">/</mo><mn id="S4.T3.14.14.14.2.2.m2.1.1.3.3" xref="S4.T3.14.14.14.2.2.m2.1.1.3.3.cmml">255</mn></mrow></mrow><annotation-xml encoding="MathML-Content" id="S4.T3.14.14.14.2.2.m2.1b"><apply id="S4.T3.14.14.14.2.2.m2.1.1.cmml" xref="S4.T3.14.14.14.2.2.m2.1.1"><eq id="S4.T3.14.14.14.2.2.m2.1.1.1.cmml" xref="S4.T3.14.14.14.2.2.m2.1.1.1"></eq><ci id="S4.T3.14.14.14.2.2.m2.1.1.2.cmml" xref="S4.T3.14.14.14.2.2.m2.1.1.2">italic-ϵ</ci><apply id="S4.T3.14.14.14.2.2.m2.1.1.3.cmml" xref="S4.T3.14.14.14.2.2.m2.1.1.3"><divide id="S4.T3.14.14.14.2.2.m2.1.1.3.1.cmml" xref="S4.T3.14.14.14.2.2.m2.1.1.3.1"></divide><cn id="S4.T3.14.14.14.2.2.m2.1.1.3.2.cmml" type="integer" xref="S4.T3.14.14.14.2.2.m2.1.1.3.2">64</cn><cn id="S4.T3.14.14.14.2.2.m2.1.1.3.3.cmml" type="integer" xref="S4.T3.14.14.14.2.2.m2.1.1.3.3">255</cn></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.14.14.14.2.2.m2.1c">\epsilon=64/255</annotation><annotation encoding="application/x-llamapun" id="S4.T3.14.14.14.2.2.m2.1d">italic_ϵ = 64 / 255</annotation></semantics></math>)</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.14.14.14.3" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S4.T3.14.14.14.3.1" style="font-size:90%;">67.2 ± 0.2</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.15.15.15">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_r" id="S4.T3.15.15.15.1" style="padding-left:8.0pt;padding-right:8.0pt;">
<span class="ltx_text" id="S4.T3.15.15.15.1.1" style="font-size:90%;">    + DiffPure (</span><math alttext="t^{*}=50" class="ltx_Math" display="inline" id="S4.T3.15.15.15.1.m1.1"><semantics id="S4.T3.15.15.15.1.m1.1a"><mrow id="S4.T3.15.15.15.1.m1.1.1" xref="S4.T3.15.15.15.1.m1.1.1.cmml"><msup id="S4.T3.15.15.15.1.m1.1.1.2" xref="S4.T3.15.15.15.1.m1.1.1.2.cmml"><mi id="S4.T3.15.15.15.1.m1.1.1.2.2" mathsize="90%" xref="S4.T3.15.15.15.1.m1.1.1.2.2.cmml">t</mi><mo id="S4.T3.15.15.15.1.m1.1.1.2.3" mathsize="90%" xref="S4.T3.15.15.15.1.m1.1.1.2.3.cmml">∗</mo></msup><mo id="S4.T3.15.15.15.1.m1.1.1.1" mathsize="90%" xref="S4.T3.15.15.15.1.m1.1.1.1.cmml">=</mo><mn id="S4.T3.15.15.15.1.m1.1.1.3" mathsize="90%" xref="S4.T3.15.15.15.1.m1.1.1.3.cmml">50</mn></mrow><annotation-xml encoding="MathML-Content" id="S4.T3.15.15.15.1.m1.1b"><apply id="S4.T3.15.15.15.1.m1.1.1.cmml" xref="S4.T3.15.15.15.1.m1.1.1"><eq id="S4.T3.15.15.15.1.m1.1.1.1.cmml" xref="S4.T3.15.15.15.1.m1.1.1.1"></eq><apply id="S4.T3.15.15.15.1.m1.1.1.2.cmml" xref="S4.T3.15.15.15.1.m1.1.1.2"><csymbol cd="ambiguous" id="S4.T3.15.15.15.1.m1.1.1.2.1.cmml" xref="S4.T3.15.15.15.1.m1.1.1.2">superscript</csymbol><ci id="S4.T3.15.15.15.1.m1.1.1.2.2.cmml" xref="S4.T3.15.15.15.1.m1.1.1.2.2">𝑡</ci><times id="S4.T3.15.15.15.1.m1.1.1.2.3.cmml" xref="S4.T3.15.15.15.1.m1.1.1.2.3"></times></apply><cn id="S4.T3.15.15.15.1.m1.1.1.3.cmml" type="integer" xref="S4.T3.15.15.15.1.m1.1.1.3">50</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.15.15.15.1.m1.1c">t^{*}=50</annotation><annotation encoding="application/x-llamapun" id="S4.T3.15.15.15.1.m1.1d">italic_t start_POSTSUPERSCRIPT ∗ end_POSTSUPERSCRIPT = 50</annotation></semantics></math><span class="ltx_text" id="S4.T3.15.15.15.1.2" style="font-size:90%;">)</span>
</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.15.15.15.2" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S4.T3.15.15.15.2.1" style="font-size:90%;">44.5</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of applying DiffPure, an image preprocessing technique, to different image types before inputting them to the MiniGPT-4 model. It showcases the impact of this preprocessing on the model's performance, specifically focusing on its susceptibility to RealToxicityPrompts (a benchmark used to evaluate the safety and robustness of language models). The rows show the attack success rates for various image types: clean images, images with added Gaussian noise, and adversarial images (images manipulated to cause the model to generate unsafe outputs). For each image type, the attack success rate is presented along with the results when applying DiffPure at a specified timestep (t*=50).  This analysis helps to evaluate the effectiveness of DiffPure in mitigating the impact of various image types on the model's safety and robustness.
> <details>
> <summary>read the caption</summary>
> Table 3: Defense of DiffPure in MiniGPT-4 under different image configurations. Attack Success Rate is evaluated on the RealToxicityPrompts benchmark.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S4.T4.3.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T4.3.1.1">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_r ltx_border_t" id="S4.T4.3.1.1.2" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.3.1.1.2.1">Model</span></th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_column ltx_th_row ltx_border_r ltx_border_t" id="S4.T4.3.1.1.1" style="padding-left:1.0pt;padding-right:1.0pt;">
<table class="ltx_tabular ltx_align_middle" id="S4.T4.3.1.1.1.1">
<tr class="ltx_tr" id="S4.T4.3.1.1.1.1.2">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T4.3.1.1.1.1.2.1" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.3.1.1.1.1.2.1.1">Attack</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.3.1.1.1.1.1">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T4.3.1.1.1.1.1.1" style="padding-left:1.0pt;padding-right:1.0pt;">
<span class="ltx_text ltx_font_bold" id="S4.T4.3.1.1.1.1.1.1.1">Success Rate </span><math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T4.3.1.1.1.1.1.1.m1.1"><semantics id="S4.T4.3.1.1.1.1.1.1.m1.1a"><mo id="S4.T4.3.1.1.1.1.1.1.m1.1.1" stretchy="false" xref="S4.T4.3.1.1.1.1.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T4.3.1.1.1.1.1.1.m1.1b"><ci id="S4.T4.3.1.1.1.1.1.1.m1.1.1.cmml" xref="S4.T4.3.1.1.1.1.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.3.1.1.1.1.1.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T4.3.1.1.1.1.1.1.m1.1d">↓</annotation></semantics></math>
</td>
</tr>
</table>
</th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T4.3.1.1.3" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.3.1.1.3.1">Identity</span></th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T4.3.1.1.4" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.3.1.1.4.1">Profanity</span></th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T4.3.1.1.5" style="padding-left:1.0pt;padding-right:1.0pt;">
<table class="ltx_tabular ltx_align_middle" id="S4.T4.3.1.1.5.1">
<tr class="ltx_tr" id="S4.T4.3.1.1.5.1.1">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T4.3.1.1.5.1.1.1" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.3.1.1.5.1.1.1.1">Severe</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.3.1.1.5.1.2">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T4.3.1.1.5.1.2.1" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.3.1.1.5.1.2.1.1">Toxicity</span></td>
</tr>
</table>
</th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T4.3.1.1.6" style="padding-left:1.0pt;padding-right:1.0pt;">
<table class="ltx_tabular ltx_align_middle" id="S4.T4.3.1.1.6.1">
<tr class="ltx_tr" id="S4.T4.3.1.1.6.1.1">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T4.3.1.1.6.1.1.1" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.3.1.1.6.1.1.1.1">Sexually</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.3.1.1.6.1.2">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T4.3.1.1.6.1.2.1" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.3.1.1.6.1.2.1.1">Explicit</span></td>
</tr>
</table>
</th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T4.3.1.1.7" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.3.1.1.7.1">Threat</span></th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T4.3.1.1.8" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.3.1.1.8.1">Toxicity</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T4.3.1.2.1">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S4.T4.3.1.2.1.1" style="padding-left:1.0pt;padding-right:1.0pt;">LLaVA-VLGuard</th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S4.T4.3.1.2.1.2" style="padding-left:1.0pt;padding-right:1.0pt;">70.4</th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T4.3.1.2.1.3" style="padding-left:1.0pt;padding-right:1.0pt;">21.3</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T4.3.1.2.1.4" style="padding-left:1.0pt;padding-right:1.0pt;">52.8</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T4.3.1.2.1.5" style="padding-left:1.0pt;padding-right:1.0pt;">7.5</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T4.3.1.2.1.6" style="padding-left:1.0pt;padding-right:1.0pt;">16.7</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T4.3.1.2.1.7" style="padding-left:1.0pt;padding-right:1.0pt;">7.0</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T4.3.1.2.1.8" style="padding-left:1.0pt;padding-right:1.0pt;">67.2</td>
</tr>
<tr class="ltx_tr" id="S4.T4.3.1.3.2">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T4.3.1.3.2.1" style="padding-left:1.0pt;padding-right:1.0pt;">JailGuard + LLaVA-VLGuard</th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S4.T4.3.1.3.2.2" style="padding-left:1.0pt;padding-right:1.0pt;">52.1</th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T4.3.1.3.2.3" style="padding-left:1.0pt;padding-right:1.0pt;">12.5</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T4.3.1.3.2.4" style="padding-left:1.0pt;padding-right:1.0pt;">39.0</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T4.3.1.3.2.5" style="padding-left:1.0pt;padding-right:1.0pt;">5.3</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T4.3.1.3.2.6" style="padding-left:1.0pt;padding-right:1.0pt;">13.2</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T4.3.1.3.2.7" style="padding-left:1.0pt;padding-right:1.0pt;">4.9</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T4.3.1.3.2.8" style="padding-left:1.0pt;padding-right:1.0pt;">50.0</td>
</tr>
<tr class="ltx_tr" id="S4.T4.3.1.4.3">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T4.3.1.4.3.1" style="padding-left:1.0pt;padding-right:1.0pt;">DiffPure + LLaVA-VLGuard</th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S4.T4.3.1.4.3.2" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.3.1.4.3.2.1">51.1</span></th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T4.3.1.4.3.3" style="padding-left:1.0pt;padding-right:1.0pt;">3.4</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T4.3.1.4.3.4" style="padding-left:1.0pt;padding-right:1.0pt;">40.9</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T4.3.1.4.3.5" style="padding-left:1.0pt;padding-right:1.0pt;">2.2</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T4.3.1.4.3.6" style="padding-left:1.0pt;padding-right:1.0pt;">13.4</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T4.3.1.4.3.7" style="padding-left:1.0pt;padding-right:1.0pt;">3.6</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T4.3.1.4.3.8" style="padding-left:1.0pt;padding-right:1.0pt;">47.5</td>
</tr>
<tr class="ltx_tr" id="S4.T4.3.1.5.4">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S4.T4.3.1.5.4.1" style="padding-left:1.0pt;padding-right:1.0pt;">LLaVA-RobustVLGuard</th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S4.T4.3.1.5.4.2" style="padding-left:1.0pt;padding-right:1.0pt;">62.5</th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T4.3.1.5.4.3" style="padding-left:1.0pt;padding-right:1.0pt;">7.8</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T4.3.1.5.4.4" style="padding-left:1.0pt;padding-right:1.0pt;">48.0</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T4.3.1.5.4.5" style="padding-left:1.0pt;padding-right:1.0pt;">5.4</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T4.3.1.5.4.6" style="padding-left:1.0pt;padding-right:1.0pt;">16.5</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T4.3.1.5.4.7" style="padding-left:1.0pt;padding-right:1.0pt;">5.8</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T4.3.1.5.4.8" style="padding-left:1.0pt;padding-right:1.0pt;">60.0</td>
</tr>
<tr class="ltx_tr" id="S4.T4.3.1.6.5">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T4.3.1.6.5.1" style="padding-left:1.0pt;padding-right:1.0pt;">JailGuard + LLaVA-RobustVLGuard</th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S4.T4.3.1.6.5.2" style="padding-left:1.0pt;padding-right:1.0pt;">48.9</th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T4.3.1.6.5.3" style="padding-left:1.0pt;padding-right:1.0pt;">6.0</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T4.3.1.6.5.4" style="padding-left:1.0pt;padding-right:1.0pt;">37.3</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T4.3.1.6.5.5" style="padding-left:1.0pt;padding-right:1.0pt;">4.8</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T4.3.1.6.5.6" style="padding-left:1.0pt;padding-right:1.0pt;">13.4</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T4.3.1.6.5.7" style="padding-left:1.0pt;padding-right:1.0pt;">4.0</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T4.3.1.6.5.8" style="padding-left:1.0pt;padding-right:1.0pt;">46.5</td>
</tr>
<tr class="ltx_tr" id="S4.T4.3.1.7.6">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row ltx_border_b ltx_border_r" id="S4.T4.3.1.7.6.1" style="padding-left:1.0pt;padding-right:1.0pt;">DiffPure + LLaVA-RobustVLGuard</th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_row ltx_border_b ltx_border_r" id="S4.T4.3.1.7.6.2" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.3.1.7.6.2.1">43.9</span></th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_b" id="S4.T4.3.1.7.6.3" style="padding-left:1.0pt;padding-right:1.0pt;">3.2</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_b" id="S4.T4.3.1.7.6.4" style="padding-left:1.0pt;padding-right:1.0pt;">34.6</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_b" id="S4.T4.3.1.7.6.5" style="padding-left:1.0pt;padding-right:1.0pt;">2.4</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_b" id="S4.T4.3.1.7.6.6" style="padding-left:1.0pt;padding-right:1.0pt;">12.8</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_b" id="S4.T4.3.1.7.6.7" style="padding-left:1.0pt;padding-right:1.0pt;">3.7</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_b" id="S4.T4.3.1.7.6.8" style="padding-left:1.0pt;padding-right:1.0pt;">41.0</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table compares the effectiveness of different image preprocessing methods in defending against adversarial attacks on vision-language models.  Specifically, it focuses on attacks using the RealToxicityPrompts benchmark and a pixel constraint of 32/255. The table shows the attack success rates across various toxicity levels (Identity, Profanity, Severe Toxicity, Explicit, Threat, and Overall Toxicity) for different preprocessing techniques applied to vision-language models fine-tuned with VLGuard and RobustVLGuard datasets.  It helps to understand how image preprocessing impacts the resilience of these models to attacks that manipulate input images.
> <details>
> <summary>read the caption</summary>
> Table 4: Comparison of image preprocessing methods for mitigating adversarial attacks (ϵitalic-ϵ\epsilonitalic_ϵ = 32/255) on RealToxicityPrompts.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S4.T4.3.1.1.1.1">
<tr class="ltx_tr" id="S4.T4.3.1.1.1.1.2">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T4.3.1.1.1.1.2.1" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.3.1.1.1.1.2.1.1">Attack</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.3.1.1.1.1.1">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T4.3.1.1.1.1.1.1" style="padding-left:1.0pt;padding-right:1.0pt;">
<span class="ltx_text ltx_font_bold" id="S4.T4.3.1.1.1.1.1.1.1">Success Rate </span><math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T4.3.1.1.1.1.1.1.m1.1"><semantics id="S4.T4.3.1.1.1.1.1.1.m1.1a"><mo id="S4.T4.3.1.1.1.1.1.1.m1.1.1" stretchy="false" xref="S4.T4.3.1.1.1.1.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T4.3.1.1.1.1.1.1.m1.1b"><ci id="S4.T4.3.1.1.1.1.1.1.m1.1.1.cmml" xref="S4.T4.3.1.1.1.1.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.3.1.1.1.1.1.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T4.3.1.1.1.1.1.1.m1.1d">↓</annotation></semantics></math>
</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 Table 5 presents a detailed performance evaluation of the DiffPure-VLM defense mechanism against adversarial attacks on the RealToxicityPrompts benchmark.  The table showcases the attack success rate and various toxicity levels (as measured by the Perspective API) for different scenarios, including clean and noisy images. This offers a quantitative assessment of DiffPure-VLM's effectiveness in mitigating adversarial attacks and maintaining safety. For a comprehensive analysis across a wider range of attack intensities, please refer to Table 12 in the Appendix.
> <details>
> <summary>read the caption</summary>
> Table 5: Evaluation of DiffPure-VLM’s effectiveness on RealToxicityPrompts. Metrics include attack success rate and various toxicity levels (Perspective API %). Additional results for other attack strengths are provided in Table 12 in the Appendix .
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S4.T4.3.1.1.5.1">
<tr class="ltx_tr" id="S4.T4.3.1.1.5.1.1">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T4.3.1.1.5.1.1.1" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.3.1.1.5.1.1.1.1">Severe</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.3.1.1.5.1.2">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T4.3.1.1.5.1.2.1" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.3.1.1.5.1.2.1.1">Toxicity</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table details the architectures of the three Vision-Language Models (VLMs) used in the paper's experiments.  For each model, it lists the specific Large Language Model (LLM) used, along with the size of the LLM in terms of parameters.  It further specifies the vision encoder architecture employed and the method used for connecting the language and vision components of the model.  This provides context for understanding the models' capabilities and potential differences.
> <details>
> <summary>read the caption</summary>
> Table 6: Specifications of the evaluated VLMs.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S4.T4.3.1.1.6.1">
<tr class="ltx_tr" id="S4.T4.3.1.1.6.1.1">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T4.3.1.1.6.1.1.1" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.3.1.1.6.1.1.1.1">Sexually</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.3.1.1.6.1.2">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T4.3.1.1.6.1.2.1" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.3.1.1.6.1.2.1.1">Explicit</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table details the hyperparameters used for the post-hoc fine-tuning of three different vision-language models (VLMs): MiniGPT-4, LLaVA-v1.5, and InternVL2.  For each model, it specifies the layers that were fine-tuned (Vision Encoder and/or Linear Projector), the rank and alpha values used in the Low-Rank Adaptation (LoRA) technique, and the learning rate employed during training. These hyperparameters were carefully selected to optimize the fine-tuning process, balancing model robustness with efficiency.
> <details>
> <summary>read the caption</summary>
> Table 7: Post-hoc fine-tuning hyper-parameters of different models.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S4.T5.4.4">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T5.1.1.1">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S4.T5.1.1.1.2" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T5.1.1.1.2.1">Image Type</span></th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S4.T5.1.1.1.1" style="padding-left:1.0pt;padding-right:1.0pt;">
<table class="ltx_tabular ltx_align_middle" id="S4.T5.1.1.1.1.1">
<tr class="ltx_tr" id="S4.T5.1.1.1.1.1.2">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T5.1.1.1.1.1.2.1" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T5.1.1.1.1.1.2.1.1">Attack</span></td>
</tr>
<tr class="ltx_tr" id="S4.T5.1.1.1.1.1.1">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T5.1.1.1.1.1.1.1" style="padding-left:1.0pt;padding-right:1.0pt;">
<span class="ltx_text ltx_font_bold" id="S4.T5.1.1.1.1.1.1.1.1">Success Rate </span><math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T5.1.1.1.1.1.1.1.m1.1"><semantics id="S4.T5.1.1.1.1.1.1.1.m1.1a"><mo id="S4.T5.1.1.1.1.1.1.1.m1.1.1" stretchy="false" xref="S4.T5.1.1.1.1.1.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T5.1.1.1.1.1.1.1.m1.1b"><ci id="S4.T5.1.1.1.1.1.1.1.m1.1.1.cmml" xref="S4.T5.1.1.1.1.1.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T5.1.1.1.1.1.1.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T5.1.1.1.1.1.1.1.m1.1d">↓</annotation></semantics></math>
</td>
</tr>
</table>
</th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T5.1.1.1.3" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T5.1.1.1.3.1">Identity</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T5.1.1.1.4" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T5.1.1.1.4.1">Profanity</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T5.1.1.1.5" style="padding-left:1.0pt;padding-right:1.0pt;">
<table class="ltx_tabular ltx_align_middle" id="S4.T5.1.1.1.5.1">
<tr class="ltx_tr" id="S4.T5.1.1.1.5.1.1">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T5.1.1.1.5.1.1.1" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T5.1.1.1.5.1.1.1.1">Severe</span></td>
</tr>
<tr class="ltx_tr" id="S4.T5.1.1.1.5.1.2">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T5.1.1.1.5.1.2.1" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T5.1.1.1.5.1.2.1.1">Toxicity</span></td>
</tr>
</table>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T5.1.1.1.6" style="padding-left:1.0pt;padding-right:1.0pt;">
<table class="ltx_tabular ltx_align_middle" id="S4.T5.1.1.1.6.1">
<tr class="ltx_tr" id="S4.T5.1.1.1.6.1.1">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T5.1.1.1.6.1.1.1" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T5.1.1.1.6.1.1.1.1">Sexually</span></td>
</tr>
<tr class="ltx_tr" id="S4.T5.1.1.1.6.1.2">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T5.1.1.1.6.1.2.1" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T5.1.1.1.6.1.2.1.1">Explicit</span></td>
</tr>
</table>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T5.1.1.1.7" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T5.1.1.1.7.1">Threat</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T5.1.1.1.8" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T5.1.1.1.8.1">Toxicity</span></td>
</tr>
<tr class="ltx_tr" id="S4.T5.4.4.5.1">
<th class="ltx_td ltx_nopad_l ltx_align_center ltx_th ltx_th_row ltx_border_t" colspan="8" id="S4.T5.4.4.5.1.1" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T5.4.4.5.1.1.1">InternVL2-8B-RobustVLGuard</span></th>
</tr>
<tr class="ltx_tr" id="S4.T5.4.4.6.2">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S4.T5.4.4.6.2.1" style="padding-left:1.0pt;padding-right:1.0pt;">Benign Clean image</th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S4.T5.4.4.6.2.2" style="padding-left:1.0pt;padding-right:1.0pt;">29.9</th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T5.4.4.6.2.3" style="padding-left:1.0pt;padding-right:1.0pt;">0.8</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T5.4.4.6.2.4" style="padding-left:1.0pt;padding-right:1.0pt;">22.1</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T5.4.4.6.2.5" style="padding-left:1.0pt;padding-right:1.0pt;">0.3</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T5.4.4.6.2.6" style="padding-left:1.0pt;padding-right:1.0pt;">7.2</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T5.4.4.6.2.7" style="padding-left:1.0pt;padding-right:1.0pt;">1.5</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T5.4.4.6.2.8" style="padding-left:1.0pt;padding-right:1.0pt;">25.9</td>
</tr>
<tr class="ltx_tr" id="S4.T5.4.4.7.3">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S4.T5.4.4.7.3.1" style="padding-left:1.0pt;padding-right:1.0pt;">Gaussian Noisy image</th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S4.T5.4.4.7.3.2" style="padding-left:1.0pt;padding-right:1.0pt;">34.5</th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T5.4.4.7.3.3" style="padding-left:1.0pt;padding-right:1.0pt;">2.1</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T5.4.4.7.3.4" style="padding-left:1.0pt;padding-right:1.0pt;">27.2</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T5.4.4.7.3.5" style="padding-left:1.0pt;padding-right:1.0pt;">1.3</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T5.4.4.7.3.6" style="padding-left:1.0pt;padding-right:1.0pt;">8.4</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T5.4.4.7.3.7" style="padding-left:1.0pt;padding-right:1.0pt;">1.6</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T5.4.4.7.3.8" style="padding-left:1.0pt;padding-right:1.0pt;">31.3</td>
</tr>
<tr class="ltx_tr" id="S4.T5.2.2.2">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S4.T5.2.2.2.1" style="padding-left:1.0pt;padding-right:1.0pt;">Adversarial image (<math alttext="\epsilon" class="ltx_Math" display="inline" id="S4.T5.2.2.2.1.m1.1"><semantics id="S4.T5.2.2.2.1.m1.1a"><mi id="S4.T5.2.2.2.1.m1.1.1" xref="S4.T5.2.2.2.1.m1.1.1.cmml">ϵ</mi><annotation-xml encoding="MathML-Content" id="S4.T5.2.2.2.1.m1.1b"><ci id="S4.T5.2.2.2.1.m1.1.1.cmml" xref="S4.T5.2.2.2.1.m1.1.1">italic-ϵ</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T5.2.2.2.1.m1.1c">\epsilon</annotation><annotation encoding="application/x-llamapun" id="S4.T5.2.2.2.1.m1.1d">italic_ϵ</annotation></semantics></math> = 32/255)</th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S4.T5.2.2.2.2" style="padding-left:1.0pt;padding-right:1.0pt;">70.6</th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T5.2.2.2.3" style="padding-left:1.0pt;padding-right:1.0pt;">26.7</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T5.2.2.2.4" style="padding-left:1.0pt;padding-right:1.0pt;">56.5</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T5.2.2.2.5" style="padding-left:1.0pt;padding-right:1.0pt;">9.2</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T5.2.2.2.6" style="padding-left:1.0pt;padding-right:1.0pt;">17.3</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T5.2.2.2.7" style="padding-left:1.0pt;padding-right:1.0pt;">6.9</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T5.2.2.2.8" style="padding-left:1.0pt;padding-right:1.0pt;">68.1</td>
</tr>
<tr class="ltx_tr" id="S4.T5.4.4.8.4">
<th class="ltx_td ltx_nopad_r ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S4.T5.4.4.8.4.1" style="padding-left:1.0pt;padding-right:1.0pt;">+DiffPure-VLM (t*=50)</th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S4.T5.4.4.8.4.2" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T5.4.4.8.4.2.1">33.4</span></th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T5.4.4.8.4.3" style="padding-left:1.0pt;padding-right:1.0pt;">2.4</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T5.4.4.8.4.4" style="padding-left:1.0pt;padding-right:1.0pt;">20.6</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T5.4.4.8.4.5" style="padding-left:1.0pt;padding-right:1.0pt;">0.7</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T5.4.4.8.4.6" style="padding-left:1.0pt;padding-right:1.0pt;">8.1</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T5.4.4.8.4.7" style="padding-left:1.0pt;padding-right:1.0pt;">2.4</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T5.4.4.8.4.8" style="padding-left:1.0pt;padding-right:1.0pt;">29.1</td>
</tr>
<tr class="ltx_tr" id="S4.T5.4.4.9.5">
<th class="ltx_td ltx_nopad_r ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S4.T5.4.4.9.5.1" style="padding-left:1.0pt;padding-right:1.0pt;">+DiffPure-VLM (t*=150)</th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S4.T5.4.4.9.5.2" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T5.4.4.9.5.2.1">32.8</span></th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T5.4.4.9.5.3" style="padding-left:1.0pt;padding-right:1.0pt;">1.7</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T5.4.4.9.5.4" style="padding-left:1.0pt;padding-right:1.0pt;">25.9</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T5.4.4.9.5.5" style="padding-left:1.0pt;padding-right:1.0pt;">0.6</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T5.4.4.9.5.6" style="padding-left:1.0pt;padding-right:1.0pt;">7.7</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T5.4.4.9.5.7" style="padding-left:1.0pt;padding-right:1.0pt;">1.8</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T5.4.4.9.5.8" style="padding-left:1.0pt;padding-right:1.0pt;">29.1</td>
</tr>
<tr class="ltx_tr" id="S4.T5.4.4.10.6">
<th class="ltx_td ltx_nopad_l ltx_align_center ltx_th ltx_th_row ltx_border_t" colspan="8" id="S4.T5.4.4.10.6.1" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T5.4.4.10.6.1.1">LLaVA-v1.5-7B-RobustVLGuard</span></th>
</tr>
<tr class="ltx_tr" id="S4.T5.4.4.11.7">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S4.T5.4.4.11.7.1" style="padding-left:1.0pt;padding-right:1.0pt;">Benign Clean image</th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S4.T5.4.4.11.7.2" style="padding-left:1.0pt;padding-right:1.0pt;">43.6</th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T5.4.4.11.7.3" style="padding-left:1.0pt;padding-right:1.0pt;">4.6</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T5.4.4.11.7.4" style="padding-left:1.0pt;padding-right:1.0pt;">34.7</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T5.4.4.11.7.5" style="padding-left:1.0pt;padding-right:1.0pt;">2.4</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T5.4.4.11.7.6" style="padding-left:1.0pt;padding-right:1.0pt;">12.3</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T5.4.4.11.7.7" style="padding-left:1.0pt;padding-right:1.0pt;">3.5</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T5.4.4.11.7.8" style="padding-left:1.0pt;padding-right:1.0pt;">41.0</td>
</tr>
<tr class="ltx_tr" id="S4.T5.4.4.12.8">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S4.T5.4.4.12.8.1" style="padding-left:1.0pt;padding-right:1.0pt;">Gaussian Noisy image</th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S4.T5.4.4.12.8.2" style="padding-left:1.0pt;padding-right:1.0pt;">42.3</th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T5.4.4.12.8.3" style="padding-left:1.0pt;padding-right:1.0pt;">3.1</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T5.4.4.12.8.4" style="padding-left:1.0pt;padding-right:1.0pt;">34.5</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T5.4.4.12.8.5" style="padding-left:1.0pt;padding-right:1.0pt;">1.9</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T5.4.4.12.8.6" style="padding-left:1.0pt;padding-right:1.0pt;">11.8</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T5.4.4.12.8.7" style="padding-left:1.0pt;padding-right:1.0pt;">3.1</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T5.4.4.12.8.8" style="padding-left:1.0pt;padding-right:1.0pt;">40.0</td>
</tr>
<tr class="ltx_tr" id="S4.T5.3.3.3">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S4.T5.3.3.3.1" style="padding-left:1.0pt;padding-right:1.0pt;">Adversarial image (<math alttext="\epsilon" class="ltx_Math" display="inline" id="S4.T5.3.3.3.1.m1.1"><semantics id="S4.T5.3.3.3.1.m1.1a"><mi id="S4.T5.3.3.3.1.m1.1.1" xref="S4.T5.3.3.3.1.m1.1.1.cmml">ϵ</mi><annotation-xml encoding="MathML-Content" id="S4.T5.3.3.3.1.m1.1b"><ci id="S4.T5.3.3.3.1.m1.1.1.cmml" xref="S4.T5.3.3.3.1.m1.1.1">italic-ϵ</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T5.3.3.3.1.m1.1c">\epsilon</annotation><annotation encoding="application/x-llamapun" id="S4.T5.3.3.3.1.m1.1d">italic_ϵ</annotation></semantics></math> = 32/255)</th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S4.T5.3.3.3.2" style="padding-left:1.0pt;padding-right:1.0pt;">62.5</th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T5.3.3.3.3" style="padding-left:1.0pt;padding-right:1.0pt;">7.8</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T5.3.3.3.4" style="padding-left:1.0pt;padding-right:1.0pt;">48.0</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T5.3.3.3.5" style="padding-left:1.0pt;padding-right:1.0pt;">5.4</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T5.3.3.3.6" style="padding-left:1.0pt;padding-right:1.0pt;">16.5</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T5.3.3.3.7" style="padding-left:1.0pt;padding-right:1.0pt;">5.8</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T5.3.3.3.8" style="padding-left:1.0pt;padding-right:1.0pt;">60.0</td>
</tr>
<tr class="ltx_tr" id="S4.T5.4.4.13.9">
<th class="ltx_td ltx_nopad_r ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S4.T5.4.4.13.9.1" style="padding-left:1.0pt;padding-right:1.0pt;">+DiffPure-VLM (t*=50)</th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S4.T5.4.4.13.9.2" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T5.4.4.13.9.2.1">43.9</span></th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T5.4.4.13.9.3" style="padding-left:1.0pt;padding-right:1.0pt;">3.2</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T5.4.4.13.9.4" style="padding-left:1.0pt;padding-right:1.0pt;">34.6</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T5.4.4.13.9.5" style="padding-left:1.0pt;padding-right:1.0pt;">2.4</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T5.4.4.13.9.6" style="padding-left:1.0pt;padding-right:1.0pt;">12.8</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T5.4.4.13.9.7" style="padding-left:1.0pt;padding-right:1.0pt;">3.7</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T5.4.4.13.9.8" style="padding-left:1.0pt;padding-right:1.0pt;">41.0</td>
</tr>
<tr class="ltx_tr" id="S4.T5.4.4.14.10">
<th class="ltx_td ltx_nopad_r ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S4.T5.4.4.14.10.1" style="padding-left:1.0pt;padding-right:1.0pt;">+DiffPure-VLM (t*=150)</th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S4.T5.4.4.14.10.2" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T5.4.4.14.10.2.1">42.5</span></th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T5.4.4.14.10.3" style="padding-left:1.0pt;padding-right:1.0pt;">3.5</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T5.4.4.14.10.4" style="padding-left:1.0pt;padding-right:1.0pt;">32.7</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T5.4.4.14.10.5" style="padding-left:1.0pt;padding-right:1.0pt;">2.8</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T5.4.4.14.10.6" style="padding-left:1.0pt;padding-right:1.0pt;">12.1</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T5.4.4.14.10.7" style="padding-left:1.0pt;padding-right:1.0pt;">4.1</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T5.4.4.14.10.8" style="padding-left:1.0pt;padding-right:1.0pt;">39.3</td>
</tr>
<tr class="ltx_tr" id="S4.T5.4.4.15.11">
<th class="ltx_td ltx_nopad_l ltx_align_center ltx_th ltx_th_row ltx_border_t" colspan="8" id="S4.T5.4.4.15.11.1" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T5.4.4.15.11.1.1">MiniGPT-4-13B-RobustVLGuard</span></th>
</tr>
<tr class="ltx_tr" id="S4.T5.4.4.16.12">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S4.T5.4.4.16.12.1" style="padding-left:1.0pt;padding-right:1.0pt;">Benign Clean image</th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S4.T5.4.4.16.12.2" style="padding-left:1.0pt;padding-right:1.0pt;">16.0</th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T5.4.4.16.12.3" style="padding-left:1.0pt;padding-right:1.0pt;">0.4</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T5.4.4.16.12.4" style="padding-left:1.0pt;padding-right:1.0pt;">9.9</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T5.4.4.16.12.5" style="padding-left:1.0pt;padding-right:1.0pt;">0.3</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T5.4.4.16.12.6" style="padding-left:1.0pt;padding-right:1.0pt;">4.6</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T5.4.4.16.12.7" style="padding-left:1.0pt;padding-right:1.0pt;">1.1</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T5.4.4.16.12.8" style="padding-left:1.0pt;padding-right:1.0pt;">12.1</td>
</tr>
<tr class="ltx_tr" id="S4.T5.4.4.17.13">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S4.T5.4.4.17.13.1" style="padding-left:1.0pt;padding-right:1.0pt;">Gaussian Noisy image</th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S4.T5.4.4.17.13.2" style="padding-left:1.0pt;padding-right:1.0pt;">16.5</th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T5.4.4.17.13.3" style="padding-left:1.0pt;padding-right:1.0pt;">0.9</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T5.4.4.17.13.4" style="padding-left:1.0pt;padding-right:1.0pt;">11.9</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T5.4.4.17.13.5" style="padding-left:1.0pt;padding-right:1.0pt;">0.6</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T5.4.4.17.13.6" style="padding-left:1.0pt;padding-right:1.0pt;">5.8</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T5.4.4.17.13.7" style="padding-left:1.0pt;padding-right:1.0pt;">1.0</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T5.4.4.17.13.8" style="padding-left:1.0pt;padding-right:1.0pt;">14.0</td>
</tr>
<tr class="ltx_tr" id="S4.T5.4.4.4">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S4.T5.4.4.4.1" style="padding-left:1.0pt;padding-right:1.0pt;">Adversarial image (<math alttext="\epsilon" class="ltx_Math" display="inline" id="S4.T5.4.4.4.1.m1.1"><semantics id="S4.T5.4.4.4.1.m1.1a"><mi id="S4.T5.4.4.4.1.m1.1.1" xref="S4.T5.4.4.4.1.m1.1.1.cmml">ϵ</mi><annotation-xml encoding="MathML-Content" id="S4.T5.4.4.4.1.m1.1b"><ci id="S4.T5.4.4.4.1.m1.1.1.cmml" xref="S4.T5.4.4.4.1.m1.1.1">italic-ϵ</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T5.4.4.4.1.m1.1c">\epsilon</annotation><annotation encoding="application/x-llamapun" id="S4.T5.4.4.4.1.m1.1d">italic_ϵ</annotation></semantics></math> = 32/255)</th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S4.T5.4.4.4.2" style="padding-left:1.0pt;padding-right:1.0pt;">53.7</th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T5.4.4.4.3" style="padding-left:1.0pt;padding-right:1.0pt;">9.8</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T5.4.4.4.4" style="padding-left:1.0pt;padding-right:1.0pt;">35.3</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T5.4.4.4.5" style="padding-left:1.0pt;padding-right:1.0pt;">4.1</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T5.4.4.4.6" style="padding-left:1.0pt;padding-right:1.0pt;">13.9</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T5.4.4.4.7" style="padding-left:1.0pt;padding-right:1.0pt;">5.4</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T5.4.4.4.8" style="padding-left:1.0pt;padding-right:1.0pt;">48.1</td>
</tr>
<tr class="ltx_tr" id="S4.T5.4.4.18.14">
<th class="ltx_td ltx_nopad_r ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S4.T5.4.4.18.14.1" style="padding-left:1.0pt;padding-right:1.0pt;">+DiffPure-VLM (t*=50)</th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S4.T5.4.4.18.14.2" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T5.4.4.18.14.2.1">13.6</span></th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T5.4.4.18.14.3" style="padding-left:1.0pt;padding-right:1.0pt;">0.3</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T5.4.4.18.14.4" style="padding-left:1.0pt;padding-right:1.0pt;">9.2</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T5.4.4.18.14.5" style="padding-left:1.0pt;padding-right:1.0pt;">0.2</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T5.4.4.18.14.6" style="padding-left:1.0pt;padding-right:1.0pt;">5.5</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T5.4.4.18.14.7" style="padding-left:1.0pt;padding-right:1.0pt;">0.9</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T5.4.4.18.14.8" style="padding-left:1.0pt;padding-right:1.0pt;">10.6</td>
</tr>
<tr class="ltx_tr" id="S4.T5.4.4.19.15">
<th class="ltx_td ltx_nopad_r ltx_align_left ltx_th ltx_th_row ltx_border_b ltx_border_r ltx_border_t" id="S4.T5.4.4.19.15.1" style="padding-left:1.0pt;padding-right:1.0pt;">+DiffPure-VLM (t*=150)</th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_row ltx_border_b ltx_border_r ltx_border_t" id="S4.T5.4.4.19.15.2" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T5.4.4.19.15.2.1">11.9</span></th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_b ltx_border_t" id="S4.T5.4.4.19.15.3" style="padding-left:1.0pt;padding-right:1.0pt;">0.5</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_b ltx_border_t" id="S4.T5.4.4.19.15.4" style="padding-left:1.0pt;padding-right:1.0pt;">8.6</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_b ltx_border_t" id="S4.T5.4.4.19.15.5" style="padding-left:1.0pt;padding-right:1.0pt;">0.2</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_b ltx_border_t" id="S4.T5.4.4.19.15.6" style="padding-left:1.0pt;padding-right:1.0pt;">4.2</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_b ltx_border_t" id="S4.T5.4.4.19.15.7" style="padding-left:1.0pt;padding-right:1.0pt;">0.6</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_b ltx_border_t" id="S4.T5.4.4.19.15.8" style="padding-left:1.0pt;padding-right:1.0pt;">9.9</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a comparative analysis of the robustness of three vision-language models (MiniGPT-4, LLaVA-v1.5, and InternVL2) when processing both clean and Gaussian-noise-added images.  The performance is evaluated using the MM-Vet benchmark, which assesses six vision-language capabilities: recognition, OCR, knowledge, language generation, spatial reasoning, and mathematics.  For each model and image type (clean or noisy), the table shows the overall performance score (as a percentage) and a breakdown of scores across the six tasks.
> <details>
> <summary>read the caption</summary>
> Table 8: Robustness comparison of various models on the MM-Vet benchmark using clean and Gaussian noisy image prompts (GPT-4 %).
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S4.T5.1.1.1.1.1">
<tr class="ltx_tr" id="S4.T5.1.1.1.1.1.2">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T5.1.1.1.1.1.2.1" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T5.1.1.1.1.1.2.1.1">Attack</span></td>
</tr>
<tr class="ltx_tr" id="S4.T5.1.1.1.1.1.1">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T5.1.1.1.1.1.1.1" style="padding-left:1.0pt;padding-right:1.0pt;">
<span class="ltx_text ltx_font_bold" id="S4.T5.1.1.1.1.1.1.1.1">Success Rate </span><math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T5.1.1.1.1.1.1.1.m1.1"><semantics id="S4.T5.1.1.1.1.1.1.1.m1.1a"><mo id="S4.T5.1.1.1.1.1.1.1.m1.1.1" stretchy="false" xref="S4.T5.1.1.1.1.1.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T5.1.1.1.1.1.1.1.m1.1b"><ci id="S4.T5.1.1.1.1.1.1.1.m1.1.1.cmml" xref="S4.T5.1.1.1.1.1.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T5.1.1.1.1.1.1.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T5.1.1.1.1.1.1.1.m1.1d">↓</annotation></semantics></math>
</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents a comparison of the robustness of different vision-language models against Gaussian noise.  It evaluates two key aspects: the Attack Success Rate and the toxicity levels (measured using the Perspective API) of the model's responses. The comparison is made under two conditions: using clean images as prompts and using Gaussian noisy images.  The results show how the helpfulness and safety performance of these models changes with the introduction of Gaussian noise to the image input.
> <details>
> <summary>read the caption</summary>
> Table 9: Robustness comparison of various models on the RealToxicityPrompts benchmark using clean and Gaussian noisy image prompts. Metrics include Attack Success Rate and toxicity levels (Perspective API %).
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S4.T5.1.1.1.5.1">
<tr class="ltx_tr" id="S4.T5.1.1.1.5.1.1">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T5.1.1.1.5.1.1.1" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T5.1.1.1.5.1.1.1.1">Severe</span></td>
</tr>
<tr class="ltx_tr" id="S4.T5.1.1.1.5.1.2">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T5.1.1.1.5.1.2.1" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T5.1.1.1.5.1.2.1.1">Toxicity</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the attack success rates on the RealToxicityPrompts benchmark for several vision-language models.  The attack success rate is calculated under varying levels of added Gaussian noise to the input images. Lower attack success rates indicate improved safety alignment of the model; that is, the model is less likely to generate toxic or harmful responses when presented with noisy images.  The table allows for a comparison of how different vision-language models react to various levels of noise, revealing their relative robustness to perturbations.
> <details>
> <summary>read the caption</summary>
> Table 10: Attack success rate (%) on the RealToxicityPrompts benchmark for various vision-language models under different noise levels. Lower scores indicate improved safety alignment.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S4.T5.1.1.1.6.1">
<tr class="ltx_tr" id="S4.T5.1.1.1.6.1.1">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T5.1.1.1.6.1.1.1" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T5.1.1.1.6.1.1.1.1">Sexually</span></td>
</tr>
<tr class="ltx_tr" id="S4.T5.1.1.1.6.1.2">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T5.1.1.1.6.1.2.1" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T5.1.1.1.6.1.2.1.1">Explicit</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents a detailed breakdown of the effectiveness of the DiffPure method in defending against adversarial attacks on the MiniGPT-4 model, specifically focusing on the RealToxicityPrompts benchmark. It shows the attack success rates and various toxicity levels (as measured by the Perspective API) under different image conditions.  These conditions include clean images, images with added Gaussian noise at varying levels, and adversarially perturbed images. The table also includes results for the DiffPure method at various timesteps (t*) in order to analyze the effect of image purification on the model's vulnerability. By comparing the results across different conditions, the table aims to illustrate the robustness of MiniGPT-4 when DiffPure is used as a defense mechanism against adversarial attacks.
> <details>
> <summary>read the caption</summary>
> Table 11: Detailed results of the defense of DiffPure in MiniGPT-4 on the RealToxicityPrompts benchmark under different image configurations. (Perspective API %).
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S9.T6.6.1">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S9.T6.6.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S9.T6.6.1.1.1.1" style="padding:4.3pt 10.0pt;"><span class="ltx_text ltx_font_bold" id="S9.T6.6.1.1.1.1.1" style="font-size:144%;">Model</span></th>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S9.T6.6.1.1.1.2" style="padding:4.3pt 10.0pt;"><span class="ltx_text ltx_font_bold" id="S9.T6.6.1.1.1.2.1" style="font-size:144%;">Size</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S9.T6.6.1.1.1.3" style="padding:4.3pt 10.0pt;"><span class="ltx_text ltx_font_bold" id="S9.T6.6.1.1.1.3.1" style="font-size:144%;">Vision Encoder</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S9.T6.6.1.1.1.4" style="padding:4.3pt 10.0pt;"><span class="ltx_text ltx_font_bold" id="S9.T6.6.1.1.1.4.1" style="font-size:144%;">LLM</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S9.T6.6.1.1.1.5" style="padding:4.3pt 10.0pt;"><span class="ltx_text ltx_font_bold" id="S9.T6.6.1.1.1.5.1" style="font-size:144%;">VL Connection Module</span></td>
</tr>
<tr class="ltx_tr" id="S9.T6.6.1.2.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S9.T6.6.1.2.2.1" style="padding:4.3pt 10.0pt;"><span class="ltx_text" id="S9.T6.6.1.2.2.1.1" style="font-size:144%;">MiniGPT-4-13B</span></th>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S9.T6.6.1.2.2.2" style="padding:4.3pt 10.0pt;"><span class="ltx_text" id="S9.T6.6.1.2.2.2.1" style="font-size:144%;">14B</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S9.T6.6.1.2.2.3" style="padding:4.3pt 10.0pt;"><span class="ltx_text" id="S9.T6.6.1.2.2.3.1" style="font-size:144%;">EVA-CLIP ViT-G/14</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S9.T6.6.1.2.2.4" style="padding:4.3pt 10.0pt;"><span class="ltx_text" id="S9.T6.6.1.2.2.4.1" style="font-size:144%;">Vicuna-v0-13B</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S9.T6.6.1.2.2.5" style="padding:4.3pt 10.0pt;"><span class="ltx_text" id="S9.T6.6.1.2.2.5.1" style="font-size:144%;">Q-former</span></td>
</tr>
<tr class="ltx_tr" id="S9.T6.6.1.3.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S9.T6.6.1.3.3.1" style="padding:4.3pt 10.0pt;"><span class="ltx_text" id="S9.T6.6.1.3.3.1.1" style="font-size:144%;">LLaVA-v1.5-7B</span></th>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S9.T6.6.1.3.3.2" style="padding:4.3pt 10.0pt;"><span class="ltx_text" id="S9.T6.6.1.3.3.2.1" style="font-size:144%;">7B</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S9.T6.6.1.3.3.3" style="padding:4.3pt 10.0pt;"><span class="ltx_text" id="S9.T6.6.1.3.3.3.1" style="font-size:144%;">CLIP ViT-L/14</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S9.T6.6.1.3.3.4" style="padding:4.3pt 10.0pt;"><span class="ltx_text" id="S9.T6.6.1.3.3.4.1" style="font-size:144%;">Vicuna-v1.5-7B</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S9.T6.6.1.3.3.5" style="padding:4.3pt 10.0pt;"><span class="ltx_text" id="S9.T6.6.1.3.3.5.1" style="font-size:144%;">MLP</span></td>
</tr>
<tr class="ltx_tr" id="S9.T6.6.1.4.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_b ltx_border_r ltx_border_t" id="S9.T6.6.1.4.4.1" style="padding:4.3pt 10.0pt;"><span class="ltx_text" id="S9.T6.6.1.4.4.1.1" style="font-size:144%;">InternVL2-8B</span></th>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r ltx_border_t" id="S9.T6.6.1.4.4.2" style="padding:4.3pt 10.0pt;"><span class="ltx_text" id="S9.T6.6.1.4.4.2.1" style="font-size:144%;">8B</span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r ltx_border_t" id="S9.T6.6.1.4.4.3" style="padding:4.3pt 10.0pt;"><span class="ltx_text" id="S9.T6.6.1.4.4.3.1" style="font-size:144%;">InternViT-300M-448px</span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r ltx_border_t" id="S9.T6.6.1.4.4.4" style="padding:4.3pt 10.0pt;"><span class="ltx_text" id="S9.T6.6.1.4.4.4.1" style="font-size:144%;">InternLM2-8B</span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_t" id="S9.T6.6.1.4.4.5" style="padding:4.3pt 10.0pt;"><span class="ltx_text" id="S9.T6.6.1.4.4.5.1" style="font-size:144%;">MLP</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a comprehensive evaluation of the DiffPure-VLM model's performance against adversarial attacks on the RealToxicityPrompts benchmark.  It examines the model's robustness under various conditions, specifically comparing attack success rates and toxicity levels (measured using the Perspective API) for three different types of input images: benign clean images, benign noisy images (with added Gaussian noise), and adversarially perturbed images. For each image type, DiffPure-VLM is tested with different diffusion model parameters (t* = 50, 100, 150).  The results show how effectively DiffPure-VLM mitigates adversarial attacks across different perturbation strengths (indicated by epsilon values). Rows are highlighted if the attack success rate is higher than the baseline (benign clean image), indicating a failure of the defense mechanism.
> <details>
> <summary>read the caption</summary>
> Table 12: Evaluation of DiffPure-VLM’s effectiveness on RealToxicityPrompts across different image configurations. Metrics include attack success rate and toxicity levels (Perspective API %). Rows highlighted in light red indicate cases where attack success rate does not meet the baseline level of benign image input.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2504.01308/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.01308/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.01308/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.01308/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.01308/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.01308/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.01308/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.01308/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.01308/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.01308/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.01308/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.01308/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.01308/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.01308/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.01308/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.01308/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.01308/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.01308/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.01308/19.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.01308/20.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}