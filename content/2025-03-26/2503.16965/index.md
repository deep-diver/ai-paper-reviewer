---
title: "When Words Outperform Vision: VLMs Can Self-Improve Via Text-Only Training For Human-Centered Decision Making"
summary: "VLMs self-improve with text-only training, outperforming vision for human-centered decisions, opening efficient enhancement avenues."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Multimodal Learning", "Vision-Language Models", "🏢 Hong Kong Polytechnic University",]
showSummary: true
date: 2025-03-21
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2503.16965 {{< /keyword >}}
{{< keyword icon="writer" >}} Zhe Hu et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-03-26 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2503.16965" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2503.16965" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2503.16965/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Embodied decision-making is vital for AI agents, but Visual Language Models (VLMs) struggle, especially in human-centered contexts needing value understanding. Current VLMs rely on image-text data, which is costly and impractical to obtain in real-world scenarios. Surprisingly, Large Language Models(LLMs) that receive text perform better than VLMs using images. This suggests visual data complicates VLM's decision-making. This paper aims to enhance VLMs' reasoning without costly paired data.



This paper introduces text-only training, using model-synthesized textual data to enhance VLM decision-making, applied to multimodal inputs during inference. This method bolsters VLMs' language components and transfers learned skills to multimodal inference, negating the need for expensive paired data. VLMs achieve gains through self-improvement, using training data from their LLM counterparts rather than larger models. This establishes an efficient approach to enhance VLM capabilities.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} LLMs can outperform their VLM counterparts in human-centered decision-making tasks. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} Text-only training enhances VLMs' reasoning abilities and decision-making capabilities. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} VLMs can achieve self-improvement through their LLM modules, providing a scalable solution. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper addresses the critical need to enhance human-centered decision-making in VLMs. By demonstrating the effectiveness of text-only training and self-improvement mechanisms, it offers **practical, scalable solutions for improving VLM performance** in real-world applications. The findings open new avenues for research in data-centric training and model optimization.

------
#### Visual Insights



![](https://arxiv.org/html/2503.16965/x1.png)

> 🔼 This figure illustrates the proposed text-only training method for enhancing Visual Language Model (VLM) decision-making abilities.  The process starts with model-synthesized textual data, which focuses on human-centered decision-making scenarios.  This textual data is used to train the VLM, strengthening its language understanding and reasoning capabilities.  Crucially, this training approach doesn't rely on expensive image-text paired data. After the text-only training phase, the improved VLM is then applied to multimodal inputs (including images) during inference, demonstrating the transferability of the learned abilities.  This method effectively improves VLM performance without requiring the typical large-scale image-text datasets.
> <details>
> <summary>read the caption</summary>
> Figure 1:  Our text-only training using model synthesized textual data enhances VLM decision-making abilities, which are then applied to multimodal inputs in inference. This enables model improvement without image-text paired training data. Complete data samples are shown in  §A.5.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S2.T1.1">
<tr class="ltx_tr" id="S2.T1.1.1">
<td class="ltx_td ltx_align_left ltx_border_tt" id="S2.T1.1.1.1" style="padding-left:4.3pt;padding-right:4.3pt;"><span class="ltx_text ltx_font_bold" id="S2.T1.1.1.1.1">Model</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S2.T1.1.1.2" style="padding-left:4.3pt;padding-right:4.3pt;"><span class="ltx_text ltx_font_bold" id="S2.T1.1.1.2.1"># LM Params</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S2.T1.1.1.3" style="padding-left:4.3pt;padding-right:4.3pt;"><span class="ltx_text ltx_font_bold" id="S2.T1.1.1.3.1">Accuracy</span></td>
</tr>
<tr class="ltx_tr" id="S2.T1.1.2">
<td class="ltx_td ltx_align_left ltx_border_t" id="S2.T1.1.2.1" style="padding-left:4.3pt;padding-right:4.3pt;">Llama-3.1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.1.2.2" style="padding-left:4.3pt;padding-right:4.3pt;">8B</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.1.2.3" style="padding-left:4.3pt;padding-right:4.3pt;">79.11</td>
</tr>
<tr class="ltx_tr" id="S2.T1.1.3">
<td class="ltx_td ltx_align_left" id="S2.T1.1.3.1" style="padding-left:4.3pt;padding-right:4.3pt;">Qwen2</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.3.2" style="padding-left:4.3pt;padding-right:4.3pt;">7B</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.3.3" style="padding-left:4.3pt;padding-right:4.3pt;">81.45</td>
</tr>
<tr class="ltx_tr" id="S2.T1.1.4">
<td class="ltx_td ltx_align_left" id="S2.T1.1.4.1" style="padding-left:4.3pt;padding-right:4.3pt;">
<span class="ltx_ERROR undefined" id="S2.T1.1.4.1.1">\hdashline</span>Mllama</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.4.2" style="padding-left:4.3pt;padding-right:4.3pt;">8B</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.4.3" style="padding-left:4.3pt;padding-right:4.3pt;">75.65</td>
</tr>
<tr class="ltx_tr" id="S2.T1.1.5">
<td class="ltx_td ltx_align_left" id="S2.T1.1.5.1" style="padding-left:4.3pt;padding-right:4.3pt;">Qwen2-VL</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.5.2" style="padding-left:4.3pt;padding-right:4.3pt;">7B</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.5.3" style="padding-left:4.3pt;padding-right:4.3pt;">80.32</td>
</tr>
<tr class="ltx_tr" id="S2.T1.1.6">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S2.T1.1.6.1" style="padding-left:4.3pt;padding-right:4.3pt;">LLaVA-OneVision</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S2.T1.1.6.2" style="padding-left:4.3pt;padding-right:4.3pt;">7B</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S2.T1.1.6.3" style="padding-left:4.3pt;padding-right:4.3pt;">78.31</td>
</tr>
</table>{{< /table-caption >}}

> 🔼 This table presents the performance of various Large Language Models (LLMs) and Visual Language Models (VLMs) on the VIVA benchmark's action selection task.  The VIVA benchmark focuses on human-centered decision-making scenarios.  The table shows the model name, the number of parameters in the Language Model component, and the accuracy achieved on the task. This allows for a comparison of different models' abilities to make decisions in complex, human-centric situations.
> <details>
> <summary>read the caption</summary>
> Table 1:  Model results on VIVA action selection task.
> </details>





### In-depth insights


#### Text-Only > Vision
The research surprisingly reveals that **LLMs, when fed only textual descriptions, outperform VLMs processing actual images** in human-centered decision-making. This suggests the visual alignment process in VLMs may hinder their language components' reasoning. The study introduces a novel text-only training approach, leveraging synthesized textual data to enhance VLMs' language capabilities and transfer learned abilities to multimodal inference. Significantly, **VLMs can achieve performance gains through self-improvement**, using training data generated by their LLM counterparts, offering a more efficient approach than relying on larger models. The findings highlight a potential paradigm shift: emphasizing language reasoning within VLMs through text-only training can unlock superior decision-making abilities, even in visually rich contexts.

#### Text for VLM+
Based on the paper, leveraging text offers a compelling avenue for enhancing VLMs. The unexpected outperformance of LLMs over VLMs in human-centered decision-making suggests that **visual alignment** might hinder VLMs' reasoning abilities. The text modality seems to promote **stronger reasoning** and transfer those acquired abilities to multimodal inference. This approach strengthens the language components of VLMs and enhances decision-making without expensive image-text paired data. Furthermore, VLMs can achieve **self-improvement** using training data generated by their LLM counterparts rather than larger models, offering a scalable approach.

#### VLM Self-Improve
The concept of **VLM self-improvement** detailed in the paper is intriguing. It posits that VLMs can enhance their performance through a text-only training paradigm, leveraging data generated by their LLM components or similarly scaled LLMs, rather than relying on larger teacher models like GPT-4 or expensive image-text paired data. This approach allows VLMs to strengthen their language reasoning capabilities. **The key insight** here is that by focusing on improving the language components of VLMs, particularly in understanding human values and needs, the models become better equipped to handle complex decision-making in human-centered situations. VLMs improve by using smaller-scale LLMs, either their LLM modules or counterparts of same scale, for training data generation offering a practical and efficient pathway for model enhancement.

#### Data>Model Scale
The interplay between data and model scale is a critical consideration, impacting performance and computational efficiency. **Larger models** typically require **more data** to achieve optimal performance, preventing overfitting and ensuring generalization. The investment in larger models should be balanced by the availability of sufficient, high-quality training data. Furthermore, research shows that data quality and diversity are key. **More complex datasets** can improve model performance even with smaller models. **Data augmentation techniques** could improve model performance. Finally, scaling laws suggest a predictable relationship between model size, dataset size, and performance, providing guidelines for resource allocation. These laws should always be considered before jumping into a new architecture. Future work can explore new avenues for optimal scaling.

#### Ethics in VLMs
When considering the ethics of VLMs, several critical aspects emerge. **Ensuring reliability in decision-making** is paramount, especially in high-stakes scenarios. The **protection of privacy** when processing human-centered data is another key concern. VLMs are also vulnerable to **adversarial misuse**, highlighting the need for robust security measures. **Addressing biases** in training data is essential to prevent unfair or discriminatory outcomes, promoting equitable and ethical AI applications. Responsible deployment should be prioritized through thorough evaluation and continuous monitoring, ensuring VLMs align with human values and societal well-being. These considerations are crucial for the ethical development and implementation of VLMs in real-world contexts.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2503.16965/x2.png)

> 🔼 This figure shows the accuracy improvement of three different Vision Language Models (VLMs) after undergoing text-only fine-tuning.  Before fine-tuning, the accuracy of each VLM (Mllama, Qwen2-VL, and LLaVA-OneVision) is shown by the light-colored bars. The dark-colored bars represent the accuracy of each VLM *after* text-only fine-tuning. The improvement in accuracy after the training is clearly visible, demonstrating the efficacy of the text-only training approach in enhancing the VLMs' decision-making abilities.
> <details>
> <summary>read the caption</summary>
> Figure 2: VLM results after text-only training.
> </details>



![](https://arxiv.org/html/2503.16965/x3.png)

> 🔼 This figure shows the prompts used to generate training data for the text-only training approach.  The prompts instruct GPT-4 and Llama-3.1-8B-Instruct models to create complex decision-making questions based on human-centered scenarios.  The prompts encourage the models to vary the complexity by adding contextual details, making the choices challenging, and changing the way questions are asked, using techniques like reverse reasoning or critical thinking. The generated data consists of a situation description, a multiple-choice question, the correct answer, and a rationale explaining why the selected answer is correct. The prompts are designed to generate diverse and high-quality data for fine-tuning the VLMs.
> <details>
> <summary>read the caption</summary>
> Figure 3: Prompts for training data generation.
> </details>



</details>






### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2503.16965/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16965/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16965/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16965/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16965/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16965/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16965/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16965/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16965/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16965/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}