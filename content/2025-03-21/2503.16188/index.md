---
title: "CLS-RL: Image Classification with Rule-Based Reinforcement Learning"
summary: "CLS-RL: Rule-based RL tackles catastrophic forgetting in MLLM image classification, outperforming SFT with better generalization and efficiency."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Computer Vision", "Image Classification", "🏢 Shanghai AI Laboratory",]
showSummary: true
date: 2025-03-20
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2503.16188 {{< /keyword >}}
{{< keyword icon="writer" >}} Ming Li et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-03-21 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2503.16188" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2503.16188" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2503.16188/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Classification is a core task in machine learning, but Multimodal Large Language Models(MLLMs)often struggle with it. Supervised fine-tuning(SFT) can improve performance, but it also leads to catastrophic forgetting and performance degradation. To solve this, the paper proposes **CLS-RL**, uses verifiable signals (class names) as reward to fine-tune MLLMs and format reward to encourage models to think before answering.The paper found that SFT can cause severe catastrophic forgetting issues and may even degrade performance. 



To address this, recent works in inference time thinking, the paper present that **No-Thinking-CLS-RL approach**, which minimizes thinking processes during training by setting an equality accuracy reward. Findings indicate that with much less fine-tuning time, the No-Thinking- CLS-RL method achieves superior in-domain performance and generalization capabilities. Extensive experiments showed that CLS-RL outperforms SFT in most datasets and has a much higher average accuracy on both base-to-new generalization and few-shot learning settings.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Rule-based reinforcement learning (RL) can effectively fine-tune Multimodal Large Language Models (MLLMs) for image classification tasks, surpassing supervised fine-tuning (SFT) by mitigating catastrophic forgetting. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} The CLS-RL method demonstrates a 'free-lunch' phenomenon, where fine-tuning on one dataset improves performance on others, suggesting a broader learning of image classification fundamentals. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Reducing the 'thinking process' during fine-tuning, as shown in No-Thinking-CLS-RL, can enhance performance and efficiency, challenging the assumption that extensive reasoning is always beneficial. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This work presents a new way to fine-tune MLLMs for image classification with rule-based RL which avoids catastrophic forgetting and achieves strong performance, offering insights into visual tasks of MLLMs and opening new avenues for RL-based fine-tuning.

------
#### Visual Insights



![](https://arxiv.org/html/2503.16188/x1.png)

> 🔼 This figure visualizes the changes in the length of model responses generated during the fine-tuning process of three different datasets: StanfordCars, SUN397, and DescribableTextures.  The x-axis represents the number of fine-tuning steps, while the y-axis shows the response length.  The plot reveals that the response length is not consistently decreasing but instead undergoes sudden drops at certain points, followed by periods of fluctuation. This indicates that the model's reasoning or 'thinking' process isn't linear during fine-tuning but instead involves abrupt shifts in its approach to the problem.
> <details>
> <summary>read the caption</summary>
> Figure 1: Changes in response length across different fine-tuning steps. The response length experiences a sudden decrease at specific steps across all three datasets and then fluctuates.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S4.T1.st1.4">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T1.st1.4.1.1">
<th class="ltx_td ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S4.T1.st1.4.1.1.1" style="padding-left:3.0pt;padding-right:3.0pt;"></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T1.st1.4.1.1.2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T1.st1.4.1.1.2.1" style="font-size:90%;">Base</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="S4.T1.st1.4.1.1.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T1.st1.4.1.1.3.1" style="font-size:90%;">New</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T1.st1.4.1.1.4" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T1.st1.4.1.1.4.1" style="font-size:90%;">H</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T1.st1.4.2.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T1.st1.4.2.1.1" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T1.st1.4.2.1.1.1" style="font-size:90%;">Qwen2VL</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.st1.4.2.1.2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T1.st1.4.2.1.2.1" style="font-size:90%;">62.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.st1.4.2.1.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T1.st1.4.2.1.3.1" style="font-size:90%;">66.27</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.st1.4.2.1.4" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T1.st1.4.2.1.4.1" style="font-size:90%;">64.12</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.st1.4.3.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T1.st1.4.3.2.1" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T1.st1.4.3.2.1.1" style="font-size:90%;">SFT</span></th>
<td class="ltx_td ltx_align_center" id="S4.T1.st1.4.3.2.2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T1.st1.4.3.2.2.1" style="font-size:90%;">67.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.st1.4.3.2.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T1.st1.4.3.2.3.1" style="font-size:90%;">70.73</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st1.4.3.2.4" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T1.st1.4.3.2.4.1" style="font-size:90%;">69.03</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.st1.4.4.3" style="background-color:#E5E5E5;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T1.st1.4.4.3.1" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T1.st1.4.4.3.1.1" style="font-size:90%;background-color:#E5E5E5;">CLS-RL</span></th>
<td class="ltx_td ltx_align_center" id="S4.T1.st1.4.4.3.2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T1.st1.4.4.3.2.1" style="font-size:90%;background-color:#E5E5E5;">81.17</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.st1.4.4.3.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T1.st1.4.4.3.3.1" style="font-size:90%;background-color:#E5E5E5;">79.15</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st1.4.4.3.4" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T1.st1.4.4.3.4.1" style="font-size:90%;background-color:#E5E5E5;">80.15</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.st1.4.5.4" style="background-color:#E5E5E5;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S4.T1.st1.4.5.4.1" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T1.st1.4.5.4.1.1" style="font-size:90%;background-color:#E5E5E5;">no-thinking</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.st1.4.5.4.2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.st1.4.5.4.2.1" style="font-size:90%;background-color:#E5E5E5;">83.42</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S4.T1.st1.4.5.4.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.st1.4.5.4.3.1" style="font-size:90%;background-color:#E5E5E5;">81.88</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.st1.4.5.4.4" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.st1.4.5.4.4.1" style="font-size:90%;background-color:#E5E5E5;">82.64</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 This table presents a comparison of four different methods for image classification fine-tuning on eleven benchmark datasets using the Qwen2VL instruction model.  The methods compared are: the Qwen2VL instruct model without any fine-tuning, supervised fine-tuning (SFT), the proposed CLS-RL (Classification with Rule-based Reinforcement Learning) method, and a variation of CLS-RL called 'No-Thinking-CLS-RL'. The evaluation is performed in a base-to-new generalization setting, meaning that a subset of classes is used for training ('base classes') and the performance is assessed on both the training classes and unseen classes ('new classes'). The table shows the accuracy achieved on 'base' classes and 'new' classes for each method, and also presents the harmonic mean (H) of base and new class accuracies, providing a more comprehensive measure of generalization ability.  'No-Thinking' refers to the 'No-Thinking-CLS-RL' method.
> <details>
> <summary>read the caption</summary>
> Table 1: Comparison of Qwen2VL instruct, SFT, CLS-RL, and no-thinking-RL in the base-to-new generalization setting. No-Thinking: no-thinking-RL. Base: base class accuracy. New: new class accuracy. H: harmonic mean accuracy. no-thinking: No-Thinking-CLS-RL.
> </details>





### In-depth insights


#### RL & No Forgetting
**Reinforcement learning (RL) offers a promising avenue to combat catastrophic forgetting in multimodal models.** Traditional fine-tuning often overwrites pre-existing knowledge, but RL, by optimizing for cumulative reward, can potentially retain broader capabilities. **Rule-based RL, specifically, uses verifiable signals to guide learning**, ensuring the model doesn't stray too far from desired behaviors. This approach can mitigate forgetting by encouraging the model to leverage existing knowledge to achieve new tasks, rather than learning from scratch. Furthermore, **the 'free-lunch' phenomenon observed with CLS-RL, where fine-tuning on one dataset improves performance on others, suggests a mechanism for knowledge consolidation and transfer, inherently reducing forgetting.** By learning general classification principles, the model becomes more robust and less susceptible to performance degradation when faced with novel datasets.

#### CLS-RL vs. SFT
**CLS-RL demonstrates a significant advantage over SFT**. CLS-RL achieves markedly higher accuracy, around 14%, for base classes and about 9% for new classes. Overall harmonic mean accuracy is 11% higher. **CLS-RL is more effective in classification**, showing rule-based reinforcement fine-tuning is useful. The results indicate that for image classification, CLS-RL framework surpasses the SFT framework because it can take advantage of more context and reasoning during the training process. It can fine-tune the parameters much more accurately and effectively.

#### No-Think > Think?
The paper challenges the conventional wisdom that complex reasoning is always beneficial in multimodal tasks. The core concept, 'No-Think > Think?', suggests that for some visual classification problems, **reducing the cognitive load and encouraging direct answer generation can outperform methods that promote extensive reasoning**. This is counterintuitive, as many recent advances in large language models (LLMs) emphasize chain-of-thought reasoning. The key findings are that a simpler approach, where the model directly outputs the answer, can lead to better accuracy and efficiency. This implies that the nature of the task plays a crucial role. Complex reasoning might be necessary for tasks requiring multi-step inference, but can be detrimental when it introduces unnecessary noise or complexity for simpler classifications. Also, **'thinking process' in fine-tuning might not be that important, or even detrimental, for simple visual tasks such as classification**. Moreover, by compelling the model to only output the answer, the training time is significantly shorter. **This challenges the assumption that explicit reasoning steps are always beneficial for visual tasks**, and underscores the importance of task-specific adaptation in MLLMs.

#### Free-Lunch Effect
The "free-lunch" effect in the context of MLLM fine-tuning, particularly with CLS-RL, presents a fascinating phenomenon. Unlike contrastive VLMs where fine-tuning on one dataset often leads to catastrophic forgetting on others, **CLS-RL can sometimes improve performance across diverse datasets**. This suggests that instead of merely memorizing dataset-specific information, the RL-based fine-tuning is enabling the model to learn more generalizable visual concepts or classification strategies. **This implies that CLS-RL is genuinely teaching fundamental aspects of image classification to the model.** The fact that improvements occur even with datasets differing significantly in distribution and class names supports this claim. However, the effect isn't universally positive; some datasets may see diminished performance after fine-tuning on others, hinting at potential interference or concept divergence. Further exploration into the factors influencing this 'free-lunch' effect, such as dataset similarity or the nature of the learned representations, would be valuable. The contrast between the 'free-lunch' effect and catastrophic forgetting further validates the RL-based method.

#### Dataset Limits
While the research paper extensively explores image classification with rule-based reinforcement learning (CLS-RL), it's crucial to acknowledge dataset limitations. **The reliance on specific, curated datasets might hinder the generalizability of findings to real-world scenarios with diverse or noisy data**. The paper mentions experiments on eleven public datasets, there could be a bias towards well-defined categories and clean images, potentially overestimating the performance of CLS-RL in more ambiguous settings. **Furthermore, the limited size of few-shot learning datasets raises questions about the robustness of the learned models and their ability to handle unseen variations within a class**. The 'free-lunch' phenomenon, where fine-tuning on one dataset improves performance on others, also needs careful scrutiny. The datasets used in this context should be further researched to discover potential overlapping between datasets, and any biases introduced by them. It's essential to investigate how CLS-RL performs on datasets with varying levels of difficulty and distributional shifts to gain a more comprehensive understanding of its capabilities. **Additionally, the paper should address the potential for overfitting to the specific characteristics of the datasets used, and explore techniques for mitigating this risk**. Analyzing performance across a wider range of datasets with varying properties is vital for assessing the true potential and limitations of CLS-RL.


### More visual insights




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S4.T1.st2.4">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T1.st2.4.1.1">
<th class="ltx_td ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S4.T1.st2.4.1.1.1" style="padding-left:3.0pt;padding-right:3.0pt;"></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T1.st2.4.1.1.2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T1.st2.4.1.1.2.1" style="font-size:90%;">Base</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="S4.T1.st2.4.1.1.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T1.st2.4.1.1.3.1" style="font-size:90%;">New</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T1.st2.4.1.1.4" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T1.st2.4.1.1.4.1" style="font-size:90%;">H</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T1.st2.4.2.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T1.st2.4.2.1.1" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T1.st2.4.2.1.1.1" style="font-size:90%;">Qwen2VL</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.st2.4.2.1.2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T1.st2.4.2.1.2.1" style="font-size:90%;">61.56</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.st2.4.2.1.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T1.st2.4.2.1.3.1" style="font-size:90%;">74.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.st2.4.2.1.4" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T1.st2.4.2.1.4.1" style="font-size:90%;">67.58</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.st2.4.3.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T1.st2.4.3.2.1" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T1.st2.4.3.2.1.1" style="font-size:90%;">SFT</span></th>
<td class="ltx_td ltx_align_center" id="S4.T1.st2.4.3.2.2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T1.st2.4.3.2.2.1" style="font-size:90%;">27.78</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.st2.4.3.2.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T1.st2.4.3.2.3.1" style="font-size:90%;">47.78</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st2.4.3.2.4" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T1.st2.4.3.2.4.1" style="font-size:90%;">35.13</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.st2.4.4.3" style="background-color:#E5E5E5;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T1.st2.4.4.3.1" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T1.st2.4.4.3.1.1" style="font-size:90%;background-color:#E5E5E5;">CLS-RL</span></th>
<td class="ltx_td ltx_align_center" id="S4.T1.st2.4.4.3.2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T1.st2.4.4.3.2.1" style="font-size:90%;background-color:#E5E5E5;">88.12</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.st2.4.4.3.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T1.st2.4.4.3.3.1" style="font-size:90%;background-color:#E5E5E5;">90.01</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st2.4.4.3.4" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T1.st2.4.4.3.4.1" style="font-size:90%;background-color:#E5E5E5;">89.05</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.st2.4.5.4" style="background-color:#E5E5E5;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S4.T1.st2.4.5.4.1" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T1.st2.4.5.4.1.1" style="font-size:90%;background-color:#E5E5E5;">no-thinking</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.st2.4.5.4.2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.st2.4.5.4.2.1" style="font-size:90%;background-color:#E5E5E5;">88.97</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S4.T1.st2.4.5.4.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.st2.4.5.4.3.1" style="font-size:90%;background-color:#E5E5E5;">90.66</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.st2.4.5.4.4" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.st2.4.5.4.4.1" style="font-size:90%;background-color:#E5E5E5;">89.81</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a comparison of the performance of four different methods: Qwen2VL instruct (a baseline), Supervised Fine-Tuning (SFT), CLS-RL, and No-Thinking-CLS-RL on eleven image classification datasets.  The comparison is done in a base-to-new generalization setting, where the models are initially trained on a subset of classes ('base') and then evaluated on those classes and a set of unseen classes ('new'). The table shows the 'base' and 'new' classification accuracies, as well as the harmonic mean of these two metrics (H), providing a comprehensive evaluation across different model approaches and dataset splits.  The average performance across all eleven datasets is also summarized.
> <details>
> <summary>read the caption</summary>
> (a) Average over 11 datasets.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S4.T1.st3.4">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T1.st3.4.1.1">
<th class="ltx_td ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S4.T1.st3.4.1.1.1" style="padding-left:3.0pt;padding-right:3.0pt;"></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T1.st3.4.1.1.2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T1.st3.4.1.1.2.1" style="font-size:90%;">Base</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="S4.T1.st3.4.1.1.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T1.st3.4.1.1.3.1" style="font-size:90%;">New</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T1.st3.4.1.1.4" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T1.st3.4.1.1.4.1" style="font-size:90%;">H</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T1.st3.4.2.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T1.st3.4.2.1.1" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T1.st3.4.2.1.1.1" style="font-size:90%;">Qwen2VL</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.st3.4.2.1.2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T1.st3.4.2.1.2.1" style="font-size:90%;">88.83</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.st3.4.2.1.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T1.st3.4.2.1.3.1" style="font-size:90%;">92.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.st3.4.2.1.4" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T1.st3.4.2.1.4.1" style="font-size:90%;">90.82</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.st3.4.3.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T1.st3.4.3.2.1" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T1.st3.4.3.2.1.1" style="font-size:90%;">SFT</span></th>
<td class="ltx_td ltx_align_center" id="S4.T1.st3.4.3.2.2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T1.st3.4.3.2.2.1" style="font-size:90%;">93.87</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.st3.4.3.2.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T1.st3.4.3.2.3.1" style="font-size:90%;">93.01</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st3.4.3.2.4" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T1.st3.4.3.2.4.1" style="font-size:90%;">93.44</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.st3.4.4.3" style="background-color:#E5E5E5;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T1.st3.4.4.3.1" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T1.st3.4.4.3.1.1" style="font-size:90%;background-color:#E5E5E5;">CLS-RL</span></th>
<td class="ltx_td ltx_align_center" id="S4.T1.st3.4.4.3.2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T1.st3.4.4.3.2.1" style="font-size:90%;background-color:#E5E5E5;">97.74</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.st3.4.4.3.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T1.st3.4.4.3.3.1" style="font-size:90%;background-color:#E5E5E5;">95.2</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st3.4.4.3.4" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T1.st3.4.4.3.4.1" style="font-size:90%;background-color:#E5E5E5;">96.45</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.st3.4.5.4" style="background-color:#E5E5E5;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S4.T1.st3.4.5.4.1" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T1.st3.4.5.4.1.1" style="font-size:90%;background-color:#E5E5E5;">no-thinking</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.st3.4.5.4.2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.st3.4.5.4.2.1" style="font-size:90%;background-color:#E5E5E5;">97.93</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S4.T1.st3.4.5.4.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.st3.4.5.4.3.1" style="font-size:90%;background-color:#E5E5E5;">95.63</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.st3.4.5.4.4" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.st3.4.5.4.4.1" style="font-size:90%;background-color:#E5E5E5;">96.77</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a comparison of the performance of different methods on the ImageNet dataset in the base-to-new generalization setting.  It shows the base class accuracy (accuracy on classes present in both training and testing sets), new class accuracy (accuracy on classes only present in the testing set), and the harmonic mean of these two accuracies. The methods compared are Qwen2VL (a baseline model), supervised fine-tuning (SFT), CLS-RL, and No-Thinking-CLS-RL.  The results illustrate the relative effectiveness of each method in generalizing to unseen classes.
> <details>
> <summary>read the caption</summary>
> (b) ImageNet.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S4.T1.st4.4">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T1.st4.4.1.1">
<th class="ltx_td ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S4.T1.st4.4.1.1.1" style="padding-left:3.0pt;padding-right:3.0pt;"></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T1.st4.4.1.1.2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T1.st4.4.1.1.2.1" style="font-size:90%;">Base</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="S4.T1.st4.4.1.1.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T1.st4.4.1.1.3.1" style="font-size:90%;">New</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T1.st4.4.1.1.4" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T1.st4.4.1.1.4.1" style="font-size:90%;">H</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T1.st4.4.2.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T1.st4.4.2.1.1" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T1.st4.4.2.1.1.1" style="font-size:90%;">Qwen2VL</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.st4.4.2.1.2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T1.st4.4.2.1.2.1" style="font-size:90%;">60.99</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.st4.4.2.1.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T1.st4.4.2.1.3.1" style="font-size:90%;">61.34</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.st4.4.2.1.4" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T1.st4.4.2.1.4.1" style="font-size:90%;">61.17</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.st4.4.3.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T1.st4.4.3.2.1" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T1.st4.4.3.2.1.1" style="font-size:90%;">SFT</span></th>
<td class="ltx_td ltx_align_center" id="S4.T1.st4.4.3.2.2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T1.st4.4.3.2.2.1" style="font-size:90%;">71.98</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.st4.4.3.2.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T1.st4.4.3.2.3.1" style="font-size:90%;">71.41</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st4.4.3.2.4" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T1.st4.4.3.2.4.1" style="font-size:90%;">71.7</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.st4.4.4.3" style="background-color:#E5E5E5;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T1.st4.4.4.3.1" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T1.st4.4.4.3.1.1" style="font-size:90%;background-color:#E5E5E5;">CLS-RL</span></th>
<td class="ltx_td ltx_align_center" id="S4.T1.st4.4.4.3.2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T1.st4.4.4.3.2.1" style="font-size:90%;background-color:#E5E5E5;">77.42</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.st4.4.4.3.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T1.st4.4.4.3.3.1" style="font-size:90%;background-color:#E5E5E5;">67.82</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st4.4.4.3.4" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T1.st4.4.4.3.4.1" style="font-size:90%;background-color:#E5E5E5;">72.3</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.st4.4.5.4" style="background-color:#E5E5E5;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S4.T1.st4.4.5.4.1" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T1.st4.4.5.4.1.1" style="font-size:90%;background-color:#E5E5E5;">no-thinking</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.st4.4.5.4.2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.st4.4.5.4.2.1" style="font-size:90%;background-color:#E5E5E5;">77.42</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S4.T1.st4.4.5.4.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.st4.4.5.4.3.1" style="font-size:90%;background-color:#E5E5E5;">70.37</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.st4.4.5.4.4" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.st4.4.5.4.4.1" style="font-size:90%;background-color:#E5E5E5;">73.72</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a comparison of the performance of four different methods on the Caltech101 dataset in a base-to-new generalization setting.  It shows base class accuracy, new class accuracy, and harmonic mean accuracy for each method: Qwen2VL, Supervised Fine-Tuning (SFT), CLS-RL, and No-Thinking-CLS-RL.  The results illustrate the performance differences between these approaches in adapting to unseen data.
> <details>
> <summary>read the caption</summary>
> (c) Caltech101.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S4.T1.st5.4">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T1.st5.4.1.1">
<th class="ltx_td ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S4.T1.st5.4.1.1.1" style="padding-left:3.0pt;padding-right:3.0pt;"></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T1.st5.4.1.1.2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T1.st5.4.1.1.2.1" style="font-size:90%;">Base</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="S4.T1.st5.4.1.1.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T1.st5.4.1.1.3.1" style="font-size:90%;">New</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T1.st5.4.1.1.4" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T1.st5.4.1.1.4.1" style="font-size:90%;">H</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T1.st5.4.2.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T1.st5.4.2.1.1" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T1.st5.4.2.1.1.1" style="font-size:90%;">Qwen2VL</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.st5.4.2.1.2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T1.st5.4.2.1.2.1" style="font-size:90%;">54.52</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.st5.4.2.1.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T1.st5.4.2.1.3.1" style="font-size:90%;">63.54</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.st5.4.2.1.4" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T1.st5.4.2.1.4.1" style="font-size:90%;">58.69</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.st5.4.3.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T1.st5.4.3.2.1" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T1.st5.4.3.2.1.1" style="font-size:90%;">SFT</span></th>
<td class="ltx_td ltx_align_center" id="S4.T1.st5.4.3.2.2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.st5.4.3.2.2.1" style="font-size:90%;">91.55</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.st5.4.3.2.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.st5.4.3.2.3.1" style="font-size:90%;">77.87</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st5.4.3.2.4" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.st5.4.3.2.4.1" style="font-size:90%;">84.16</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.st5.4.4.3" style="background-color:#E5E5E5;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T1.st5.4.4.3.1" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T1.st5.4.4.3.1.1" style="font-size:90%;background-color:#E5E5E5;">CLS-RL</span></th>
<td class="ltx_td ltx_align_center" id="S4.T1.st5.4.4.3.2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T1.st5.4.4.3.2.1" style="font-size:90%;background-color:#E5E5E5;">58.09</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.st5.4.4.3.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T1.st5.4.4.3.3.1" style="font-size:90%;background-color:#E5E5E5;">69.33</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st5.4.4.3.4" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T1.st5.4.4.3.4.1" style="font-size:90%;background-color:#E5E5E5;">63.22</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.st5.4.5.4" style="background-color:#E5E5E5;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S4.T1.st5.4.5.4.1" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T1.st5.4.5.4.1.1" style="font-size:90%;background-color:#E5E5E5;">no-thinking</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.st5.4.5.4.2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T1.st5.4.5.4.2.1" style="font-size:90%;background-color:#E5E5E5;">66.43</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S4.T1.st5.4.5.4.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T1.st5.4.5.4.3.1" style="font-size:90%;background-color:#E5E5E5;">74.13</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.st5.4.5.4.4" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T1.st5.4.5.4.4.1" style="font-size:90%;background-color:#E5E5E5;">70.07</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a comparison of the performance of different methods on the Describable Textures dataset in a base-to-new generalization setting. It shows the base class accuracy (accuracy on classes present in both training and testing sets), the new class accuracy (accuracy on classes only in the testing set), and the harmonic mean of these two accuracies for four different methods: Qwen2VL (a baseline), SFT (supervised fine-tuning), CLS-RL (the proposed method), and No-Thinking-CLS-RL (a variant of CLS-RL).  This allows for a comparison of the models' ability to generalize to unseen classes and their overall performance on this specific dataset.
> <details>
> <summary>read the caption</summary>
> (d) DescribableTextures.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S4.T1.st6.4">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T1.st6.4.1.1">
<th class="ltx_td ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S4.T1.st6.4.1.1.1" style="padding-left:3.0pt;padding-right:3.0pt;"></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T1.st6.4.1.1.2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T1.st6.4.1.1.2.1" style="font-size:90%;">Base</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="S4.T1.st6.4.1.1.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T1.st6.4.1.1.3.1" style="font-size:90%;">New</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T1.st6.4.1.1.4" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T1.st6.4.1.1.4.1" style="font-size:90%;">H</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T1.st6.4.2.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T1.st6.4.2.1.1" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T1.st6.4.2.1.1.1" style="font-size:90%;">Qwen2VL</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.st6.4.2.1.2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T1.st6.4.2.1.2.1" style="font-size:90%;">74.07</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.st6.4.2.1.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T1.st6.4.2.1.3.1" style="font-size:90%;">80.42</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.st6.4.2.1.4" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T1.st6.4.2.1.4.1" style="font-size:90%;">77.12</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.st6.4.3.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T1.st6.4.3.2.1" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T1.st6.4.3.2.1.1" style="font-size:90%;">SFT</span></th>
<td class="ltx_td ltx_align_center" id="S4.T1.st6.4.3.2.2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T1.st6.4.3.2.2.1" style="font-size:90%;">74.27</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.st6.4.3.2.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T1.st6.4.3.2.3.1" style="font-size:90%;">77.82</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st6.4.3.2.4" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T1.st6.4.3.2.4.1" style="font-size:90%;">76.0</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.st6.4.4.3" style="background-color:#E5E5E5;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T1.st6.4.4.3.1" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T1.st6.4.4.3.1.1" style="font-size:90%;background-color:#E5E5E5;">CLS-RL</span></th>
<td class="ltx_td ltx_align_center" id="S4.T1.st6.4.4.3.2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T1.st6.4.4.3.2.1" style="font-size:90%;background-color:#E5E5E5;">87.29</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.st6.4.4.3.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T1.st6.4.4.3.3.1" style="font-size:90%;background-color:#E5E5E5;">87.56</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st6.4.4.3.4" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T1.st6.4.4.3.4.1" style="font-size:90%;background-color:#E5E5E5;">87.42</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.st6.4.5.4" style="background-color:#E5E5E5;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S4.T1.st6.4.5.4.1" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T1.st6.4.5.4.1.1" style="font-size:90%;background-color:#E5E5E5;">no-thinking</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.st6.4.5.4.2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.st6.4.5.4.2.1" style="font-size:90%;background-color:#E5E5E5;">88.77</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S4.T1.st6.4.5.4.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.st6.4.5.4.3.1" style="font-size:90%;background-color:#E5E5E5;">88.93</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.st6.4.5.4.4" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.st6.4.5.4.4.1" style="font-size:90%;background-color:#E5E5E5;">88.85</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 Table 1 presents a comparison of the performance of different image classification methods on the EuroSAT dataset in a base-to-new generalization setting.  It shows the base class accuracy (accuracy on classes seen during training), new class accuracy (accuracy on unseen classes), and the harmonic mean of these two metrics for each method. The methods compared include Qwen2VL (a baseline model), Supervised Fine-Tuning (SFT), CLS-RL (the proposed method), and No-Thinking-CLS-RL (a variation of the proposed method). This allows for a detailed assessment of how each method generalizes to new classes after fine-tuning on the EuroSAT dataset.
> <details>
> <summary>read the caption</summary>
> (e) EuroSAT.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S4.T1.st7.4">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T1.st7.4.1.1">
<th class="ltx_td ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S4.T1.st7.4.1.1.1" style="padding-left:3.0pt;padding-right:3.0pt;"></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T1.st7.4.1.1.2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T1.st7.4.1.1.2.1" style="font-size:90%;">Base</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="S4.T1.st7.4.1.1.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T1.st7.4.1.1.3.1" style="font-size:90%;">New</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T1.st7.4.1.1.4" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T1.st7.4.1.1.4.1" style="font-size:90%;">H</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T1.st7.4.2.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T1.st7.4.2.1.1" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T1.st7.4.2.1.1.1" style="font-size:90%;">Qwen2VL</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.st7.4.2.1.2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T1.st7.4.2.1.2.1" style="font-size:90%;">61.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.st7.4.2.1.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T1.st7.4.2.1.3.1" style="font-size:90%;">60.99</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.st7.4.2.1.4" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T1.st7.4.2.1.4.1" style="font-size:90%;">61.05</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.st7.4.3.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T1.st7.4.3.2.1" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T1.st7.4.3.2.1.1" style="font-size:90%;">SFT</span></th>
<td class="ltx_td ltx_align_center" id="S4.T1.st7.4.3.2.2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.st7.4.3.2.2.1" style="font-size:90%;">97.77</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.st7.4.3.2.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.st7.4.3.2.3.1" style="font-size:90%;">94.95</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st7.4.3.2.4" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.st7.4.3.2.4.1" style="font-size:90%;">96.34</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.st7.4.4.3" style="background-color:#E5E5E5;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T1.st7.4.4.3.1" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T1.st7.4.4.3.1.1" style="font-size:90%;background-color:#E5E5E5;">CLS-RL</span></th>
<td class="ltx_td ltx_align_center" id="S4.T1.st7.4.4.3.2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T1.st7.4.4.3.2.1" style="font-size:90%;background-color:#E5E5E5;">87.78</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.st7.4.4.3.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T1.st7.4.4.3.3.1" style="font-size:90%;background-color:#E5E5E5;">74.97</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st7.4.4.3.4" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T1.st7.4.4.3.4.1" style="font-size:90%;background-color:#E5E5E5;">80.87</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.st7.4.5.4" style="background-color:#E5E5E5;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S4.T1.st7.4.5.4.1" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T1.st7.4.5.4.1.1" style="font-size:90%;background-color:#E5E5E5;">no-thinking</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.st7.4.5.4.2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T1.st7.4.5.4.2.1" style="font-size:90%;background-color:#E5E5E5;">88.71</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S4.T1.st7.4.5.4.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T1.st7.4.5.4.3.1" style="font-size:90%;background-color:#E5E5E5;">76.73</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.st7.4.5.4.4" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T1.st7.4.5.4.4.1" style="font-size:90%;background-color:#E5E5E5;">82.29</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a comparison of the performance of different image classification methods on the Food101 dataset.  The methods compared are Qwen2VL (a baseline model), Supervised Fine-Tuning (SFT), CLS-RL (the proposed rule-based reinforcement learning method), and No-Thinking-CLS-RL (a variant of CLS-RL).  The performance is evaluated in a base-to-new setting, measuring the accuracy on both base classes (used for fine-tuning) and new classes (not seen during fine-tuning).  The harmonic mean of base and new class accuracies (H) is also provided as a combined performance metric. This allows for a comprehensive comparison of the effectiveness of these methods in both in-domain and out-of-domain image classification scenarios.
> <details>
> <summary>read the caption</summary>
> (f) Food101.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S4.T1.st8.4">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T1.st8.4.1.1">
<th class="ltx_td ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S4.T1.st8.4.1.1.1" style="padding-left:3.0pt;padding-right:3.0pt;"></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T1.st8.4.1.1.2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T1.st8.4.1.1.2.1" style="font-size:90%;">Base</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="S4.T1.st8.4.1.1.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T1.st8.4.1.1.3.1" style="font-size:90%;">New</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T1.st8.4.1.1.4" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T1.st8.4.1.1.4.1" style="font-size:90%;">H</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T1.st8.4.2.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T1.st8.4.2.1.1" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T1.st8.4.2.1.1.1" style="font-size:90%;">Qwen2VL</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.st8.4.2.1.2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T1.st8.4.2.1.2.1" style="font-size:90%;">75.59</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.st8.4.2.1.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T1.st8.4.2.1.3.1" style="font-size:90%;">91.79</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.st8.4.2.1.4" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T1.st8.4.2.1.4.1" style="font-size:90%;">82.9</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.st8.4.3.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T1.st8.4.3.2.1" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T1.st8.4.3.2.1.1" style="font-size:90%;">SFT</span></th>
<td class="ltx_td ltx_align_center" id="S4.T1.st8.4.3.2.2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T1.st8.4.3.2.2.1" style="font-size:90%;">84.06</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.st8.4.3.2.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T1.st8.4.3.2.3.1" style="font-size:90%;">86.28</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st8.4.3.2.4" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T1.st8.4.3.2.4.1" style="font-size:90%;">85.15</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.st8.4.4.3" style="background-color:#E5E5E5;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T1.st8.4.4.3.1" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T1.st8.4.4.3.1.1" style="font-size:90%;background-color:#E5E5E5;">CLS-RL</span></th>
<td class="ltx_td ltx_align_center" id="S4.T1.st8.4.4.3.2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T1.st8.4.4.3.2.1" style="font-size:90%;background-color:#E5E5E5;">83.28</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.st8.4.4.3.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T1.st8.4.4.3.3.1" style="font-size:90%;background-color:#E5E5E5;">94.49</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st8.4.4.3.4" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T1.st8.4.4.3.4.1" style="font-size:90%;background-color:#E5E5E5;">88.53</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.st8.4.5.4" style="background-color:#E5E5E5;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S4.T1.st8.4.5.4.1" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T1.st8.4.5.4.1.1" style="font-size:90%;background-color:#E5E5E5;">no-thinking</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.st8.4.5.4.2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.st8.4.5.4.2.1" style="font-size:90%;background-color:#E5E5E5;">86.64</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S4.T1.st8.4.5.4.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.st8.4.5.4.3.1" style="font-size:90%;background-color:#E5E5E5;">95.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.st8.4.5.4.4" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.st8.4.5.4.4.1" style="font-size:90%;background-color:#E5E5E5;">90.85</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a comparison of the performance of four different methods on the OxfordFlowers dataset in a base-to-new generalization setting.  The methods compared are: Qwen2VL (a baseline zero-shot model), Supervised Fine-Tuning (SFT), CLS-RL (the proposed rule-based reinforcement learning method), and No-Thinking-CLS-RL (a variation of CLS-RL minimizing the 'thinking' process).  The table shows the accuracy achieved by each method on base classes (classes present in the training data) and new classes (classes not seen during training), along with the harmonic mean of these accuracies. This allows for evaluation of the model's ability to generalize to unseen data.
> <details>
> <summary>read the caption</summary>
> (g) OxfordFlowers.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S4.T1.st9.4">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T1.st9.4.1.1">
<th class="ltx_td ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S4.T1.st9.4.1.1.1" style="padding-left:3.0pt;padding-right:3.0pt;"></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T1.st9.4.1.1.2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T1.st9.4.1.1.2.1" style="font-size:90%;">Base</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="S4.T1.st9.4.1.1.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T1.st9.4.1.1.3.1" style="font-size:90%;">New</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T1.st9.4.1.1.4" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T1.st9.4.1.1.4.1" style="font-size:90%;">H</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T1.st9.4.2.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T1.st9.4.2.1.1" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T1.st9.4.2.1.1.1" style="font-size:90%;">Qwen2VL</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.st9.4.2.1.2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T1.st9.4.2.1.2.1" style="font-size:90%;">43.81</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.st9.4.2.1.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T1.st9.4.2.1.3.1" style="font-size:90%;">33.15</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.st9.4.2.1.4" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T1.st9.4.2.1.4.1" style="font-size:90%;">37.74</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.st9.4.3.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T1.st9.4.3.2.1" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T1.st9.4.3.2.1.1" style="font-size:90%;">SFT</span></th>
<td class="ltx_td ltx_align_center" id="S4.T1.st9.4.3.2.2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T1.st9.4.3.2.2.1" style="font-size:90%;">74.54</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.st9.4.3.2.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T1.st9.4.3.2.3.1" style="font-size:90%;">69.68</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st9.4.3.2.4" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T1.st9.4.3.2.4.1" style="font-size:90%;">72.03</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.st9.4.4.3" style="background-color:#E5E5E5;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T1.st9.4.4.3.1" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T1.st9.4.4.3.1.1" style="font-size:90%;background-color:#E5E5E5;">CLS-RL</span></th>
<td class="ltx_td ltx_align_center" id="S4.T1.st9.4.4.3.2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T1.st9.4.4.3.2.1" style="font-size:90%;background-color:#E5E5E5;">82.08</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.st9.4.4.3.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T1.st9.4.4.3.3.1" style="font-size:90%;background-color:#E5E5E5;">75.74</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st9.4.4.3.4" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T1.st9.4.4.3.4.1" style="font-size:90%;background-color:#E5E5E5;">78.78</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.st9.4.5.4" style="background-color:#E5E5E5;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S4.T1.st9.4.5.4.1" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T1.st9.4.5.4.1.1" style="font-size:90%;background-color:#E5E5E5;">no-thinking</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.st9.4.5.4.2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.st9.4.5.4.2.1" style="font-size:90%;background-color:#E5E5E5;">91.13</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S4.T1.st9.4.5.4.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.st9.4.5.4.3.1" style="font-size:90%;background-color:#E5E5E5;">87.04</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.st9.4.5.4.4" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.st9.4.5.4.4.1" style="font-size:90%;background-color:#E5E5E5;">89.04</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a comparison of the performance of four different methods (Qwen2VL instruct, SFT, CLS-RL, and No-Thinking-CLS-RL) on the OxfordPets dataset in a base-to-new generalization setting.  It shows the accuracy achieved by each method on both the base class (already seen during training) and new class (unseen during training). The 'H' column represents the harmonic mean of base and new class accuracies, providing a balanced view of the model's overall performance.  This allows for a comprehensive evaluation of how well each method generalizes to novel data, reflecting its ability to learn generalizable image classification knowledge rather than simply memorizing training examples.
> <details>
> <summary>read the caption</summary>
> (h) OxfordPets.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S4.T1.st10.4">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T1.st10.4.1.1">
<th class="ltx_td ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S4.T1.st10.4.1.1.1" style="padding-left:3.0pt;padding-right:3.0pt;"></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T1.st10.4.1.1.2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T1.st10.4.1.1.2.1" style="font-size:90%;">Base</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="S4.T1.st10.4.1.1.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T1.st10.4.1.1.3.1" style="font-size:90%;">New</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T1.st10.4.1.1.4" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T1.st10.4.1.1.4.1" style="font-size:90%;">H</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T1.st10.4.2.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T1.st10.4.2.1.1" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T1.st10.4.2.1.1.1" style="font-size:90%;">Qwen2VL</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.st10.4.2.1.2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T1.st10.4.2.1.2.1" style="font-size:90%;">56.97</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.st10.4.2.1.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T1.st10.4.2.1.3.1" style="font-size:90%;">65.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.st10.4.2.1.4" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T1.st10.4.2.1.4.1" style="font-size:90%;">61.07</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.st10.4.3.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T1.st10.4.3.2.1" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T1.st10.4.3.2.1.1" style="font-size:90%;">SFT</span></th>
<td class="ltx_td ltx_align_center" id="S4.T1.st10.4.3.2.2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T1.st10.4.3.2.2.1" style="font-size:90%;">27.39</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.st10.4.3.2.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T1.st10.4.3.2.3.1" style="font-size:90%;">37.8</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st10.4.3.2.4" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T1.st10.4.3.2.4.1" style="font-size:90%;">31.77</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.st10.4.4.3" style="background-color:#E5E5E5;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T1.st10.4.4.3.1" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T1.st10.4.4.3.1.1" style="font-size:90%;background-color:#E5E5E5;">CLS-RL</span></th>
<td class="ltx_td ltx_align_center" id="S4.T1.st10.4.4.3.2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T1.st10.4.4.3.2.1" style="font-size:90%;background-color:#E5E5E5;">81.03</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.st10.4.4.3.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T1.st10.4.4.3.3.1" style="font-size:90%;background-color:#E5E5E5;">82.52</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st10.4.4.3.4" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T1.st10.4.4.3.4.1" style="font-size:90%;background-color:#E5E5E5;">81.77</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.st10.4.5.4" style="background-color:#E5E5E5;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S4.T1.st10.4.5.4.1" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T1.st10.4.5.4.1.1" style="font-size:90%;background-color:#E5E5E5;">no-thinking</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.st10.4.5.4.2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.st10.4.5.4.2.1" style="font-size:90%;background-color:#E5E5E5;">83.18</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S4.T1.st10.4.5.4.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.st10.4.5.4.3.1" style="font-size:90%;background-color:#E5E5E5;">84.14</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.st10.4.5.4.4" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.st10.4.5.4.4.1" style="font-size:90%;background-color:#E5E5E5;">83.66</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 Table 1 presents a comparison of four different methods for image classification: Qwen2VL instruct (a baseline), Supervised Fine-tuning (SFT), CLS-RL, and No-Thinking-CLS-RL.  The comparison is done across eleven datasets, evaluating performance in two distinct settings:  'base-to-new' (where the model is trained on a subset of classes and tested on both seen and unseen classes) and  'few-shot' (where the model is trained on very limited data per class). For each dataset and method, the table shows the classification accuracy on the base classes, new classes, and the harmonic mean of these two accuracies. The table allows a direct comparison of the effectiveness of the different methods in terms of both in-domain and out-of-domain generalization.
> <details>
> <summary>read the caption</summary>
> (i) StanfordCars.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S4.T1.st11.4">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T1.st11.4.1.1">
<th class="ltx_td ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S4.T1.st11.4.1.1.1" style="padding-left:3.0pt;padding-right:3.0pt;"></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T1.st11.4.1.1.2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T1.st11.4.1.1.2.1" style="font-size:90%;">Base</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="S4.T1.st11.4.1.1.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T1.st11.4.1.1.3.1" style="font-size:90%;">New</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T1.st11.4.1.1.4" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T1.st11.4.1.1.4.1" style="font-size:90%;">H</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T1.st11.4.2.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T1.st11.4.2.1.1" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T1.st11.4.2.1.1.1" style="font-size:90%;">Qwen2VL</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.st11.4.2.1.2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T1.st11.4.2.1.2.1" style="font-size:90%;">69.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.st11.4.2.1.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T1.st11.4.2.1.3.1" style="font-size:90%;">64.62</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.st11.4.2.1.4" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T1.st11.4.2.1.4.1" style="font-size:90%;">67.02</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.st11.4.3.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T1.st11.4.3.2.1" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T1.st11.4.3.2.1.1" style="font-size:90%;">SFT</span></th>
<td class="ltx_td ltx_align_center" id="S4.T1.st11.4.3.2.2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T1.st11.4.3.2.2.1" style="font-size:90%;">59.95</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.st11.4.3.2.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T1.st11.4.3.2.3.1" style="font-size:90%;">63.93</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st11.4.3.2.4" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T1.st11.4.3.2.4.1" style="font-size:90%;">61.87</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.st11.4.4.3" style="background-color:#E5E5E5;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T1.st11.4.4.3.1" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T1.st11.4.4.3.1.1" style="font-size:90%;background-color:#E5E5E5;">CLS-RL</span></th>
<td class="ltx_td ltx_align_center" id="S4.T1.st11.4.4.3.2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T1.st11.4.4.3.2.1" style="font-size:90%;background-color:#E5E5E5;">79.47</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.st11.4.4.3.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T1.st11.4.4.3.3.1" style="font-size:90%;background-color:#E5E5E5;">74.95</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st11.4.4.3.4" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T1.st11.4.4.3.4.1" style="font-size:90%;background-color:#E5E5E5;">77.14</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.st11.4.5.4" style="background-color:#E5E5E5;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S4.T1.st11.4.5.4.1" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T1.st11.4.5.4.1.1" style="font-size:90%;background-color:#E5E5E5;">no-thinking</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.st11.4.5.4.2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.st11.4.5.4.2.1" style="font-size:90%;background-color:#E5E5E5;">80.47</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S4.T1.st11.4.5.4.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.st11.4.5.4.3.1" style="font-size:90%;background-color:#E5E5E5;">79.18</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.st11.4.5.4.4" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.st11.4.5.4.4.1" style="font-size:90%;background-color:#E5E5E5;">79.82</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 The table presents a comparison of different methods for image classification on the SUN397 dataset.  It shows the performance (base class accuracy, new class accuracy, and harmonic mean accuracy) of Qwen2VL instruct, supervised fine-tuning (SFT), CLS-RL, and No-Thinking-CLS-RL in a base-to-new generalization setting. This allows for assessment of how well each method generalizes from a set of base classes to unseen new classes.
> <details>
> <summary>read the caption</summary>
> (j) SUN397.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S4.T1.st12.4">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T1.st12.4.1.1">
<th class="ltx_td ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S4.T1.st12.4.1.1.1" style="padding-left:3.0pt;padding-right:3.0pt;"></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T1.st12.4.1.1.2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T1.st12.4.1.1.2.1" style="font-size:90%;">Base</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="S4.T1.st12.4.1.1.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T1.st12.4.1.1.3.1" style="font-size:90%;">New</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T1.st12.4.1.1.4" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T1.st12.4.1.1.4.1" style="font-size:90%;">H</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T1.st12.4.2.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T1.st12.4.2.1.1" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T1.st12.4.2.1.1.1" style="font-size:90%;">Qwen2VL</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.st12.4.2.1.2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T1.st12.4.2.1.2.1" style="font-size:90%;">36.07</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.st12.4.2.1.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T1.st12.4.2.1.3.1" style="font-size:90%;">39.47</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.st12.4.2.1.4" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T1.st12.4.2.1.4.1" style="font-size:90%;">37.7</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.st12.4.3.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T1.st12.4.3.2.1" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T1.st12.4.3.2.1.1" style="font-size:90%;">SFT</span></th>
<td class="ltx_td ltx_align_center" id="S4.T1.st12.4.3.2.2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T1.st12.4.3.2.2.1" style="font-size:90%;">38.23</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.st12.4.3.2.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T1.st12.4.3.2.3.1" style="font-size:90%;">57.53</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st12.4.3.2.4" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T1.st12.4.3.2.4.1" style="font-size:90%;">45.94</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.st12.4.4.3" style="background-color:#E5E5E5;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T1.st12.4.4.3.1" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T1.st12.4.4.3.1.1" style="font-size:90%;background-color:#E5E5E5;">CLS-RL</span></th>
<td class="ltx_td ltx_align_center" id="S4.T1.st12.4.4.3.2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.st12.4.4.3.2.1" style="font-size:90%;background-color:#E5E5E5;">70.53</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.st12.4.4.3.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T1.st12.4.4.3.3.1" style="font-size:90%;background-color:#E5E5E5;">58.07</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st12.4.4.3.4" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.st12.4.4.3.4.1" style="font-size:90%;background-color:#E5E5E5;">63.69</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.st12.4.5.4" style="background-color:#E5E5E5;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S4.T1.st12.4.5.4.1" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T1.st12.4.5.4.1.1" style="font-size:90%;background-color:#E5E5E5;">no-thinking</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.st12.4.5.4.2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T1.st12.4.5.4.2.1" style="font-size:90%;background-color:#E5E5E5;">68.01</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S4.T1.st12.4.5.4.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.st12.4.5.4.3.1" style="font-size:90%;background-color:#E5E5E5;">58.31</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.st12.4.5.4.4" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T1.st12.4.5.4.4.1" style="font-size:90%;background-color:#E5E5E5;">62.79</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 Table 1 presents a comparison of four different methods for image classification using the Qwen2VL-Instruct model: Qwen2VL, Supervised Fine-Tuning (SFT), CLS-RL (Classification with Rule-Based Reinforcement Learning), and No-Thinking-CLS-RL.  The table displays the performance metrics (Base class accuracy, New class accuracy, and Harmonic mean accuracy) across eleven datasets.  The 'Base-to-New' experimental setting is used, where models are trained on a subset of classes and tested on both seen (base) and unseen (new) classes. This allows for the evaluation of generalization capabilities. Each row represents a different model and method, allowing comparison across these techniques.
> <details>
> <summary>read the caption</summary>
> (k) UCF101.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S4.T2.4.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T2.4.1.1.1">
<th class="ltx_td ltx_th ltx_th_row ltx_border_tt" id="S4.T2.4.1.1.1.1" style="padding-left:5.0pt;padding-right:5.0pt;"></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T2.4.1.1.1.2" style="padding-left:5.0pt;padding-right:5.0pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="S4.T2.4.1.1.1.2.1" style="width:28.3pt;height:35.7pt;vertical-align:-1.0pt;"><span class="ltx_transformed_inner" style="width:38.0pt;transform:translate(-4.87pt,-12pt) rotate(-55deg) ;">
<p class="ltx_p" id="S4.T2.4.1.1.1.2.1.1"><span class="ltx_text" id="S4.T2.4.1.1.1.2.1.1.1" style="font-size:90%;">ImageNet</span></p>
</span></div>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T2.4.1.1.1.3" style="padding-left:5.0pt;padding-right:5.0pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="S4.T2.4.1.1.1.3.1" style="width:29.9pt;height:39pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:43.3pt;transform:translate(-6.66pt,-16.38pt) rotate(-55deg) ;">
<p class="ltx_p" id="S4.T2.4.1.1.1.3.1.1"><span class="ltx_text" id="S4.T2.4.1.1.1.3.1.1.1" style="font-size:90%;">Caltech101</span></p>
</span></div>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T2.4.1.1.1.4" style="padding-left:5.0pt;padding-right:5.0pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="S4.T2.4.1.1.1.4.1" style="width:16.7pt;height:20.1pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:20.3pt;transform:translate(-1.8pt,-6.98pt) rotate(-55deg) ;">
<p class="ltx_p" id="S4.T2.4.1.1.1.4.1.1"><span class="ltx_text" id="S4.T2.4.1.1.1.4.1.1.1" style="font-size:90%;">DTD</span></p>
</span></div>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T2.4.1.1.1.5" style="padding-left:5.0pt;padding-right:5.0pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="S4.T2.4.1.1.1.5.1" style="width:26.1pt;height:33.5pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:36.7pt;transform:translate(-5.3pt,-13.7pt) rotate(-55deg) ;">
<p class="ltx_p" id="S4.T2.4.1.1.1.5.1.1"><span class="ltx_text" id="S4.T2.4.1.1.1.5.1.1.1" style="font-size:90%;">EuroSAT</span></p>
</span></div>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T2.4.1.1.1.6" style="padding-left:5.0pt;padding-right:5.0pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="S4.T2.4.1.1.1.6.1" style="width:24.1pt;height:30.7pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:33.1pt;transform:translate(-4.5pt,-12.23pt) rotate(-55deg) ;">
<p class="ltx_p" id="S4.T2.4.1.1.1.6.1.1"><span class="ltx_text" id="S4.T2.4.1.1.1.6.1.1.1" style="font-size:90%;">Food101</span></p>
</span></div>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T2.4.1.1.1.7" style="padding-left:5.0pt;padding-right:5.0pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="S4.T2.4.1.1.1.7.1" style="width:30.0pt;height:39.2pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:43.5pt;transform:translate(-6.7pt,-16.46pt) rotate(-55deg) ;">
<p class="ltx_p" id="S4.T2.4.1.1.1.7.1.1"><span class="ltx_text" id="S4.T2.4.1.1.1.7.1.1.1" style="font-size:90%;">Flowers102</span></p>
</span></div>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T2.4.1.1.1.8" style="padding-left:5.0pt;padding-right:5.0pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="S4.T2.4.1.1.1.8.1" style="width:30.6pt;height:40pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:44.5pt;transform:translate(-6.92pt,-16.87pt) rotate(-55deg) ;">
<p class="ltx_p" id="S4.T2.4.1.1.1.8.1.1"><span class="ltx_text" id="S4.T2.4.1.1.1.8.1.1.1" style="font-size:90%;">OxfordPets</span></p>
</span></div>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T2.4.1.1.1.9" style="padding-left:5.0pt;padding-right:5.0pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="S4.T2.4.1.1.1.9.1" style="width:14.5pt;height:17pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:16.5pt;transform:translate(-1pt,-5.45pt) rotate(-55deg) ;">
<p class="ltx_p" id="S4.T2.4.1.1.1.9.1.1"><span class="ltx_text" id="S4.T2.4.1.1.1.9.1.1.1" style="font-size:90%;">S.C.</span></p>
</span></div>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T2.4.1.1.1.10" style="padding-left:5.0pt;padding-right:5.0pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="S4.T2.4.1.1.1.10.1" style="width:23.4pt;height:29.7pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:32.0pt;transform:translate(-4.3pt,-11.8pt) rotate(-55deg) ;">
<p class="ltx_p" id="S4.T2.4.1.1.1.10.1.1"><span class="ltx_text" id="S4.T2.4.1.1.1.10.1.1.1" style="font-size:90%;">SUN397</span></p>
</span></div>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T2.4.1.1.1.11" style="padding-left:5.0pt;padding-right:5.0pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="S4.T2.4.1.1.1.11.1" style="width:23.8pt;height:30.3pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:32.6pt;transform:translate(-4.44pt,-12.05pt) rotate(-55deg) ;">
<p class="ltx_p" id="S4.T2.4.1.1.1.11.1.1"><span class="ltx_text" id="S4.T2.4.1.1.1.11.1.1.1" style="font-size:90%;">UCF101</span></p>
</span></div>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T2.4.1.1.1.12" style="padding-left:5.0pt;padding-right:5.0pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="S4.T2.4.1.1.1.12.1" style="width:15.1pt;height:18pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:17.6pt;transform:translate(-1.24pt,-5.91pt) rotate(-55deg) ;">
<p class="ltx_p" id="S4.T2.4.1.1.1.12.1.1"><span class="ltx_text" id="S4.T2.4.1.1.1.12.1.1.1" style="font-size:90%;">F.A.</span></p>
</span></div>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T2.4.1.1.1.13" style="padding-left:5.0pt;padding-right:5.0pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="S4.T2.4.1.1.1.13.1" style="width:24.7pt;height:30.6pt;vertical-align:-1.0pt;"><span class="ltx_transformed_inner" style="width:31.8pt;transform:translate(-3.54pt,-9.45pt) rotate(-55deg) ;">
<p class="ltx_p" id="S4.T2.4.1.1.1.13.1.1"><em class="ltx_emph ltx_font_italic" id="S4.T2.4.1.1.1.13.1.1.1" style="font-size:90%;">Average</em></p>
</span></div>
</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T2.4.1.2.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T2.4.1.2.1.1" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T2.4.1.2.1.1.1" style="font-size:90%;">Qwen2VL</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.4.1.2.1.2" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T2.4.1.2.1.2.1" style="font-size:90%;">70.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.4.1.2.1.3" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T2.4.1.2.1.3.1" style="font-size:90%;">88.56</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.4.1.2.1.4" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T2.4.1.2.1.4.1" style="font-size:90%;">54.79</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.4.1.2.1.5" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T2.4.1.2.1.5.1" style="font-size:90%;">45.68</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.4.1.2.1.6" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T2.4.1.2.1.6.1" style="font-size:90%;">77.54</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.4.1.2.1.7" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T2.4.1.2.1.7.1" style="font-size:90%;">64.43</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.4.1.2.1.8" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T2.4.1.2.1.8.1" style="font-size:90%;">73.89</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.4.1.2.1.9" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T2.4.1.2.1.9.1" style="font-size:90%;">35.77</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.4.1.2.1.10" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T2.4.1.2.1.10.1" style="font-size:90%;">63.83</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.4.1.2.1.11" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T2.4.1.2.1.11.1" style="font-size:90%;">66.22</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.4.1.2.1.12" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T2.4.1.2.1.12.1" style="font-size:90%;">42.75</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.4.1.2.1.13" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T2.4.1.2.1.13.1" style="font-size:90%;">62.21</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.4.1.3.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.4.1.3.2.1" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T2.4.1.3.2.1.1" style="font-size:90%;">SFT</span></th>
<td class="ltx_td ltx_align_center" id="S4.T2.4.1.3.2.2" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T2.4.1.3.2.2.1" style="font-size:90%;">41.60</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.4.1.3.2.3" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T2.4.1.3.2.3.1" style="font-size:90%;">93.91</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.4.1.3.2.4" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T2.4.1.3.2.4.1" style="font-size:90%;">71.336</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.4.1.3.2.5" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.4.1.3.2.5.1" style="font-size:90%;">75.16</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.4.1.3.2.6" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T2.4.1.3.2.6.1" style="font-size:90%;">75.75</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.4.1.3.2.7" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.4.1.3.2.7.1" style="font-size:90%;">96.87</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.4.1.3.2.8" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T2.4.1.3.2.8.1" style="font-size:90%;">85.80</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.4.1.3.2.9" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T2.4.1.3.2.9.1" style="font-size:90%;">71.13</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.4.1.3.2.10" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T2.4.1.3.2.10.1" style="font-size:90%;">41.66</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.4.1.3.2.11" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T2.4.1.3.2.11.1" style="font-size:90%;">63.81</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.4.1.3.2.12" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T2.4.1.3.2.12.1" style="font-size:90%;">60.15</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.4.1.3.2.13" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T2.4.1.3.2.13.1" style="font-size:90%;">70.65</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.4.1.4.3" style="background-color:#E5E5E5;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.4.1.4.3.1" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T2.4.1.4.3.1.1" style="font-size:90%;background-color:#E5E5E5;">CLS-RL</span></th>
<td class="ltx_td ltx_align_center" id="S4.T2.4.1.4.3.2" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T2.4.1.4.3.2.1" style="font-size:90%;background-color:#E5E5E5;">92.24</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.4.1.4.3.3" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T2.4.1.4.3.3.1" style="font-size:90%;background-color:#E5E5E5;">98.09</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.4.1.4.3.4" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T2.4.1.4.3.4.1" style="font-size:90%;background-color:#E5E5E5;">69.92</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.4.1.4.3.5" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T2.4.1.4.3.5.1" style="font-size:90%;background-color:#E5E5E5;">49.46</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.4.1.4.3.6" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T2.4.1.4.3.6.1" style="font-size:90%;background-color:#E5E5E5;">88.94</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.4.1.4.3.7" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T2.4.1.4.3.7.1" style="font-size:90%;background-color:#E5E5E5;">86.56</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.4.1.4.3.8" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.4.1.4.3.8.1" style="font-size:90%;background-color:#E5E5E5;">87.24</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.4.1.4.3.9" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T2.4.1.4.3.9.1" style="font-size:90%;background-color:#E5E5E5;">80.24</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.4.1.4.3.10" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T2.4.1.4.3.10.1" style="font-size:90%;background-color:#E5E5E5;">84.57</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.4.1.4.3.11" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T2.4.1.4.3.11.1" style="font-size:90%;background-color:#E5E5E5;">82.1</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.4.1.4.3.12" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T2.4.1.4.3.12.1" style="font-size:90%;background-color:#E5E5E5;">74.41</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.4.1.4.3.13" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T2.4.1.4.3.13.1" style="font-size:90%;background-color:#E5E5E5;">81.25</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.4.1.5.4" style="background-color:#E5E5E5;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S4.T2.4.1.5.4.1" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T2.4.1.5.4.1.1" style="font-size:90%;background-color:#E5E5E5;">No-Thinking-RL</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.4.1.5.4.2" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.4.1.5.4.2.1" style="font-size:90%;background-color:#E5E5E5;">92.31</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.4.1.5.4.3" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.4.1.5.4.3.1" style="font-size:90%;background-color:#E5E5E5;">98.46</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.4.1.5.4.4" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.4.1.5.4.4.1" style="font-size:90%;background-color:#E5E5E5;">73.52</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.4.1.5.4.5" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T2.4.1.5.4.5.1" style="font-size:90%;background-color:#E5E5E5;">58.02</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.4.1.5.4.6" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.4.1.5.4.6.1" style="font-size:90%;background-color:#E5E5E5;">90.78</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.4.1.5.4.7" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T2.4.1.5.4.7.1" style="font-size:90%;background-color:#E5E5E5;">91.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.4.1.5.4.8" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T2.4.1.5.4.8.1" style="font-size:90%;background-color:#E5E5E5;">86.13</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.4.1.5.4.9" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.4.1.5.4.9.1" style="font-size:90%;background-color:#E5E5E5;">92.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.4.1.5.4.10" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.4.1.5.4.10.1" style="font-size:90%;background-color:#E5E5E5;">86.72</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.4.1.5.4.11" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.4.1.5.4.11.1" style="font-size:90%;background-color:#E5E5E5;">83.82</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.4.1.5.4.12" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.4.1.5.4.12.1" style="font-size:90%;background-color:#E5E5E5;">74.41</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.4.1.5.4.13" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.4.1.5.4.13.1" style="font-size:90%;background-color:#E5E5E5;">84.39</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 Table 1 presents a comparison of the performance of four different methods on eleven image classification datasets.  The methods compared are Qwen2VL instruct (a baseline), Supervised Fine-Tuning (SFT), CLS-RL, and No-Thinking-CLS-RL. The table shows the accuracy achieved by each method on the base classes (classes used for fine-tuning) and new classes (unseen classes) for each of the datasets.  The harmonic mean of base and new class accuracies is also provided to summarize overall performance. The results are displayed for both few-shot and base-to-new settings.  The purpose is to show the effectiveness of the CLS-RL and No-Thinking-CLS-RL methods in comparison to supervised fine-tuning in few-shot and base-to-new image classification scenarios.
> <details>
> <summary>read the caption</summary>
> (l) FGVCAircraft.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S5.T3.4">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S5.T3.4.1.1">
<th class="ltx_td ltx_th ltx_th_row ltx_border_tt" id="S5.T3.4.1.1.1"></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T3.4.1.1.2">Accuracy</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T3.4.1.1.3">Training Time</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T3.4.1.1.4">Inference Time</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S5.T3.4.2.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S5.T3.4.2.1.1">
SFT</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.4.2.1.2">41.60</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.4.2.1.3">35 min</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.4.2.1.4">20min</td>
</tr>
<tr class="ltx_tr" id="S5.T3.4.3.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T3.4.3.2.1">CLS-RL</th>
<td class="ltx_td ltx_align_center" id="S5.T3.4.3.2.2">92.24</td>
<td class="ltx_td ltx_align_center" id="S5.T3.4.3.2.3">1587 min</td>
<td class="ltx_td ltx_align_center" id="S5.T3.4.3.2.4">30 min</td>
</tr>
<tr class="ltx_tr" id="S5.T3.4.4.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S5.T3.4.4.3.1">No-Thinking-CLS-RL</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T3.4.4.3.2">92.31</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T3.4.4.3.3">94 min</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T3.4.4.3.4">26 min</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of few-shot learning experiments conducted on eleven image classification datasets.  For each dataset, it shows the accuracy achieved by the baseline Qwen2VL model, a supervised fine-tuning (SFT) approach, a rule-based reinforcement learning method (CLS-RL), and a modified version of CLS-RL that minimizes the 'thinking process' (No-Thinking-CLS-RL). The results are broken down for StanfordCars and FGVCAircraft datasets, and an average across all eleven datasets is provided for comparison.  The table showcases the performance of each method under a limited-data setting.
> <details>
> <summary>read the caption</summary>
> Table 2: Few-shot learning results. S.C.: StanfordCars dataset. F.A.: FGVCAircraft dataset.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S5.T4.4.1">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S5.T4.4.1.1.1">
<td class="ltx_td ltx_border_tt" id="S5.T4.4.1.1.1.1" style="padding-left:5.0pt;padding-right:5.0pt;"></td>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T4.4.1.1.1.2" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S5.T4.4.1.1.1.2.1" style="font-size:90%;">ImageNet</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T4.4.1.1.1.3" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S5.T4.4.1.1.1.3.1" style="font-size:90%;">Caltech101</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T4.4.1.1.1.4" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S5.T4.4.1.1.1.4.1" style="font-size:90%;">Food101</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T4.4.1.1.1.5" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S5.T4.4.1.1.1.5.1" style="font-size:90%;">Flowers102</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T4.4.1.1.1.6" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S5.T4.4.1.1.1.6.1" style="font-size:90%;">OxfordPets</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T4.4.1.1.1.7" style="padding-left:5.0pt;padding-right:5.0pt;"><em class="ltx_emph ltx_font_italic" id="S5.T4.4.1.1.1.7.1" style="font-size:90%;">Average</em></th>
</tr>
<tr class="ltx_tr" id="S5.T4.4.1.2.2">
<td class="ltx_td ltx_align_left ltx_border_t" id="S5.T4.4.1.2.2.1" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S5.T4.4.1.2.2.1.1" style="font-size:90%;">Qwen2VL</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.4.1.2.2.2" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S5.T4.4.1.2.2.2.1" style="font-size:90%;">46.57</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.4.1.2.2.3" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S5.T4.4.1.2.2.3.1" style="font-size:90%;">62.96</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.4.1.2.2.4" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S5.T4.4.1.2.2.4.1" style="font-size:90%;">57.79</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.4.1.2.2.5" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S5.T4.4.1.2.2.5.1" style="font-size:90%;">48.44</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.4.1.2.2.6" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S5.T4.4.1.2.2.6.1" style="font-size:90%;">47.40</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.4.1.2.2.7" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S5.T4.4.1.2.2.7.1" style="font-size:90%;">52.63</span></td>
</tr>
<tr class="ltx_tr" id="S5.T4.4.1.3.3">
<td class="ltx_td ltx_align_left" id="S5.T4.4.1.3.3.1" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S5.T4.4.1.3.3.1.1" style="font-size:90%;">CLS-RL</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.4.1.3.3.2" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S5.T4.4.1.3.3.2.1" style="font-size:90%;">54.84</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.4.1.3.3.3" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S5.T4.4.1.3.3.3.1" style="font-size:90%;">79.07</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.4.1.3.3.4" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T4.4.1.3.3.4.1" style="font-size:90%;">73.51</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.4.1.3.3.5" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S5.T4.4.1.3.3.5.1" style="font-size:90%;">67.64</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.4.1.3.3.6" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T4.4.1.3.3.6.1" style="font-size:90%;">89.94</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.4.1.3.3.7" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S5.T4.4.1.3.3.7.1" style="font-size:90%;">73.0</span></td>
</tr>
<tr class="ltx_tr" id="S5.T4.4.1.4.4">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S5.T4.4.1.4.4.1" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S5.T4.4.1.4.4.1.1" style="font-size:90%;">No-Thinking-CLS-RL</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T4.4.1.4.4.2" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T4.4.1.4.4.2.1" style="font-size:90%;">56.45</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T4.4.1.4.4.3" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T4.4.1.4.4.3.1" style="font-size:90%;">86.29</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T4.4.1.4.4.4" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S5.T4.4.1.4.4.4.1" style="font-size:90%;">71.99</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T4.4.1.4.4.5" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T4.4.1.4.4.5.1" style="font-size:90%;">71.21</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T4.4.1.4.4.6" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S5.T4.4.1.4.4.6.1" style="font-size:90%;">86.07</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T4.4.1.4.4.7" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T4.4.1.4.4.7.1" style="font-size:90%;">74.40</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table compares the training time and inference time, in minutes, for the CLS-RL and No-Thinking-CLS-RL models, in addition to their accuracy.  It demonstrates the significant efficiency gains achieved by No-Thinking-CLS-RL due to its simplified training process.
> <details>
> <summary>read the caption</summary>
> Table 3: Training and inference efficiency comparison between CLS-RL and No-Thinking-CLS-RL.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2503.16188/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16188/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16188/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16188/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16188/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16188/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16188/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16188/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16188/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16188/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16188/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16188/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16188/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}