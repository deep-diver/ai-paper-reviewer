---
title: "PVChat: Personalized Video Chat with One-Shot Learning"
summary: "PVChat: Personalize video understanding with one-shot learning, enabling identity-aware video comprehension."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Multimodal Learning", "Vision-Language Models", "🏢 Nanyang Technological University",]
showSummary: true
date: 2025-03-21
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2503.17069 {{< /keyword >}}
{{< keyword icon="writer" >}} Yufei Shi et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-03-24 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2503.17069" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2503.17069" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2503.17069/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Video Large Language Models (ViLLMs) struggle with identity-aware comprehension, limiting their applicability in personalized scenarios. Existing methods are limited to static image-based understanding and cannot model dynamic visual cues present in videos. This paper addresses the limitation by proposing a one-shot learning framework that enables subject-aware question answering from a single video for each subject. 



The paper introduces an automated augmentation pipeline that synthesizes identity-preserving positive samples and retrieves hard negatives from existing video corpora, generating a diverse training dataset with four QA types. It proposes a ReLU Routing MoH attention mechanism, alongside two novel objectives: Smooth Proximity Regularization and Head Activation Enhancement. The paper presents a two-stage training strategy, transitioning from image pre-training to video fine-tuning. The model is evaluated on diverse datasets, demonstrating its superiority in personalized feature understanding.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} PVChat, the first personalized ViLLM framework that enables subject-aware question answering from a single video {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} A novel data augmentation pipeline generates high-quality personalized training samples, addressing data scarcity. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} ReLU Routing Mixture-of-Heads (ReMoH) attention mechanism enhances subject-specific feature learning. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper is important for researchers as it introduces **a novel framework for personalized video understanding**. It addresses the limitations of current ViLLMs and opens new avenues for research in identity-aware video analysis and personalized AI applications. The **publicly released dataset** facilitates further research in this area.

------
#### Visual Insights



![](https://arxiv.org/html/2503.17069/x1.png)

> 🔼 Figure 1 showcases PVChat's capacity for one-shot learning.  Two example queries are presented. Each query involves a video featuring specific individuals (<Nz> and <Ab> in the examples).  PVChat successfully answers questions requiring personalized information (understanding of the specific individuals' actions and activities) gleaned from a single reference video.  In contrast, other state-of-the-art models (VideoLLaMA2 and InternVideo2) fail to accurately answer these personalized questions, highlighting PVChat's unique capabilities in personalized video comprehension.
> <details>
> <summary>read the caption</summary>
> Figure 1: Examples of PVChat’s ability with one-shot learning (e.g., <Nz>and <Ab>). PVChat can answer questions about the personalized information correctly while other models [5, 50] fail.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S4.T1.5.5">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T1.5.5.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S4.T1.5.5.5.6" style="padding:0.5pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.5.5.5.6.1">Model Type</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T1.1.1.1.1" style="padding:0.5pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.1.1.1">Acc<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T1.1.1.1.1.1.m1.1"><semantics id="S4.T1.1.1.1.1.1.m1.1a"><mo id="S4.T1.1.1.1.1.1.m1.1.1" stretchy="false" xref="S4.T1.1.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T1.1.1.1.1.1.m1.1b"><ci id="S4.T1.1.1.1.1.1.m1.1.1.cmml" xref="S4.T1.1.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.1.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.1.1.1.1.1.m1.1d">↑</annotation></semantics></math></span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T1.2.2.2.2" style="padding:0.5pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.2.2.2.2.1">BLEU<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T1.2.2.2.2.1.m1.1"><semantics id="S4.T1.2.2.2.2.1.m1.1a"><mo id="S4.T1.2.2.2.2.1.m1.1.1" stretchy="false" xref="S4.T1.2.2.2.2.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T1.2.2.2.2.1.m1.1b"><ci id="S4.T1.2.2.2.2.1.m1.1.1.cmml" xref="S4.T1.2.2.2.2.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.2.2.2.2.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.2.2.2.2.1.m1.1d">↑</annotation></semantics></math></span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T1.3.3.3.3" style="padding:0.5pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.3.3.3.3.1">BS<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T1.3.3.3.3.1.m1.1"><semantics id="S4.T1.3.3.3.3.1.m1.1a"><mo id="S4.T1.3.3.3.3.1.m1.1.1" stretchy="false" xref="S4.T1.3.3.3.3.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T1.3.3.3.3.1.m1.1b"><ci id="S4.T1.3.3.3.3.1.m1.1.1.cmml" xref="S4.T1.3.3.3.3.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.3.3.3.3.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.3.3.3.3.1.m1.1d">↑</annotation></semantics></math></span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T1.4.4.4.4" style="padding:0.5pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.4.4.4.4.1">ES<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T1.4.4.4.4.1.m1.1"><semantics id="S4.T1.4.4.4.4.1.m1.1a"><mo id="S4.T1.4.4.4.4.1.m1.1.1" stretchy="false" xref="S4.T1.4.4.4.4.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T1.4.4.4.4.1.m1.1b"><ci id="S4.T1.4.4.4.4.1.m1.1.1.cmml" xref="S4.T1.4.4.4.4.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.4.4.4.4.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.4.4.4.4.1.m1.1d">↑</annotation></semantics></math></span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T1.5.5.5.5" style="padding:0.5pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.5.5.5.5.1">DC<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T1.5.5.5.5.1.m1.1"><semantics id="S4.T1.5.5.5.5.1.m1.1a"><mo id="S4.T1.5.5.5.5.1.m1.1.1" stretchy="false" xref="S4.T1.5.5.5.5.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T1.5.5.5.5.1.m1.1b"><ci id="S4.T1.5.5.5.5.1.m1.1.1.cmml" xref="S4.T1.5.5.5.5.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.5.5.5.5.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.5.5.5.5.1.m1.1d">↑</annotation></semantics></math></span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T1.5.5.6.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T1.5.5.6.1.1" style="padding:0.5pt 3.0pt;">InternVideo2 <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.17069v1#bib.bib50" title=""><span class="ltx_text" style="font-size:90%;">50</span></a>]</cite>
</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.5.5.6.1.2" style="padding:0.5pt 3.0pt;">0.342</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.5.5.6.1.3" style="padding:0.5pt 3.0pt;">0.046</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.5.5.6.1.4" style="padding:0.5pt 3.0pt;">0.875</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.5.5.6.1.5" style="padding:0.5pt 3.0pt;">3.041</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.5.5.6.1.6" style="padding:0.5pt 3.0pt;">1.812</td>
</tr>
<tr class="ltx_tr" id="S4.T1.5.5.7.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T1.5.5.7.2.1" style="padding:0.5pt 3.0pt;">VideoLLaMA2 <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.17069v1#bib.bib5" title=""><span class="ltx_text" style="font-size:90%;">5</span></a>]</cite>
</th>
<td class="ltx_td ltx_align_center" id="S4.T1.5.5.7.2.2" style="padding:0.5pt 3.0pt;">0.470</td>
<td class="ltx_td ltx_align_center" id="S4.T1.5.5.7.2.3" style="padding:0.5pt 3.0pt;">0.082</td>
<td class="ltx_td ltx_align_center" id="S4.T1.5.5.7.2.4" style="padding:0.5pt 3.0pt;">0.890</td>
<td class="ltx_td ltx_align_center" id="S4.T1.5.5.7.2.5" style="padding:0.5pt 3.0pt;">3.012</td>
<td class="ltx_td ltx_align_center" id="S4.T1.5.5.7.2.6" style="padding:0.5pt 3.0pt;">3.301</td>
</tr>
<tr class="ltx_tr" id="S4.T1.5.5.8.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S4.T1.5.5.8.3.1" style="padding:0.5pt 3.0pt;">PVChat (<span class="ltx_text ltx_font_bold" id="S4.T1.5.5.8.3.1.1">Ours</span>)</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.5.5.8.3.2" style="padding:0.5pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.5.5.8.3.2.1">0.901</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.5.5.8.3.3" style="padding:0.5pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.5.5.8.3.3.1">0.562</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.5.5.8.3.4" style="padding:0.5pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.5.5.8.3.4.1">0.952</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.5.5.8.3.5" style="padding:0.5pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.5.5.8.3.5.1">4.940</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.5.5.8.3.6" style="padding:0.5pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.5.5.8.3.6.1">4.201</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 This table presents a quantitative comparison of the proposed PVChat model against two state-of-the-art (SOTA) video large language models (ViLLMs): InternVideo2 and VideoLLaMA2.  The comparison is based on five evaluation metrics: Accuracy (Acc), Bilingual Evaluation Understudy (BLEU), BERTscore (BS), Entity Specificity (ES), and Descriptive Completeness (DC). Higher scores indicate better performance.  The results demonstrate that PVChat significantly outperforms both SOTA models across all five metrics, highlighting its superior performance in personalized video understanding.
> <details>
> <summary>read the caption</summary>
> Table 1: Quantitative evaluation of our method against state-of-the-art methods [50, 5]. Compared with these SOTA models, our model exhibits superior performance across five metrics.
> </details>





### In-depth insights


#### One-Shot ViLLM
The concept of a 'One-Shot ViLLM' is intriguing, suggesting the ability to personalize video understanding with minimal data. Such a model would need to **efficiently extract and encode subject-specific features** from a single video, differentiating them from general knowledge. Challenges include **overfitting to the limited data**, **robustly handling variations in appearance and context**, and **generalizing to novel situations**. Success would hinge on sophisticated techniques like **meta-learning**, **few-shot adaptation**, or **generative augmentation** to create diverse training examples from the single reference video. This contrasts standard ViLLMs that rely on massive datasets and struggle with personalized scenarios that require distinguishing specific individuals. A One-Shot ViLLM has potential for applications in healthcare and smart homes.

#### ReMoH Attention
Based on the context, ReMoH attention likely refers to a novel attention mechanism that leverages a **ReLU Routing Mixture-of-Heads** approach. This suggests a departure from traditional softmax-based or top-k head selection methods, opting instead for a ReLU-driven dynamic routing strategy. The core idea is to enhance the model's ability to learn **domain-specific information**, which in this case, focuses on personalized video understanding with limited data. This ReLU router is designed to offer **greater flexibility** and differentiability in the head selection process, aiming to improve learning and reduce computational redundancy by enabling the model to selectively activate specific "expert" heads relevant to the input. This approach probably involves using a ReLU function to modulate the output of different expert heads, allowing for smoother and more scalable training compared to traditional MoH implementations. The method balances attention heads, mitigating gradient issues.

#### Video Augment
While 'Video Augment' isn't explicitly mentioned, the paper heavily focuses on data augmentation techniques, crucial for **one-shot learning** in video understanding. The core idea revolves around synthesizing personalized video data to overcome the scarcity of individual-specific video content.  They employ a pipeline for generating identity-preserving positive samples using techniques like facial attribute extraction, demographic categorization, and high-fidelity video synthesis with tools like ConsisID and PhotoMaker. Crucially, they also retrieve hard negative samples with similar faces to enhance discrimination. This involves facial retrieval from large datasets like Laion-Face-5B and CelebV-HQ, followed by video synthesis. This addresses a critical limitation: the tendency of models to focus solely on positives, resulting in poor generalization and difficulty in distinguishing individuals. The generation of diverse video clips with varying scenes, actions, and contexts, all while maintaining identity consistency, is essential for training a robust personalized ViLLM. By generating QA pairs, the augmented video data further enhanced personalized feature learning. This **synthetic data generation** helps the model learn individual characteristics and perform subject-specific question answering.

#### Dataset Diversity
Based on the supplementary material, the dataset appears to cover a range of scenarios, including Friends(6), Good Doctor(5), Ne Zha(2), doctor(3), patient(3), Big Bang(6)), suggesting an attempt to incorporate diversity in terms of **character types, media formats (TV series, anime), and possibly even levels of realism**. This variability is crucial for training a model to generalize well and avoid biases toward specific contexts.  Moreover, it's implied that the prompts used for data augmentation are designed to account for different ages and genders. This attention to demographic representation is a positive step towards creating a more inclusive and unbiased personalized video chat system, ensuring it performs reliably across various user demographics. The variety in prompts, spanning different scenarios and demographic factors, helps the model learn more robust associations between visual cues and personalized information, ultimately leading to improved question-answering performance and a better user experience. **The detail is helpful, however the exact details are still vague.**

#### Personalized QA
Personalized Question Answering (QA) is a challenging task that requires understanding the context of a question and the individual it is referring to. This goes beyond traditional QA, which focuses on general knowledge. In **personalized QA**, the system must be able to access and reason about specific information related to a particular person. This requires the ability to identify the individual, understand their preferences, and use this information to answer the question accurately. This task is particularly relevant in scenarios such as personalized assistants, healthcare, and education, where the ability to tailor responses to individual needs is crucial. Personalized QA is a complex problem that requires a combination of techniques, including **natural language processing, knowledge representation, and reasoning**. Developing effective personalized QA systems is essential for building intelligent and helpful AI applications that can truly understand and respond to individual needs, going far beyond what generic models can deliver. **One-shot learning** is very relevant for this QA, since obtaining many data for a person may violate privacy issues.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2503.17069/x2.png)

> 🔼 This figure illustrates the process of data augmentation for training a personalized video chat model.  Starting with original videos, high-quality facial images are extracted using DeepFaceLab.  InternVideo2 analyzes these images to determine demographic information (age, gender, etc.), which is crucial for identity preservation.  This demographic information, along with the extracted face, is then used by ConsisID and PhotoMaker to synthesize new videos with the same identity but different backgrounds and actions (positive samples). Hard negative samples are generated by retrieving similar faces from Laion-Face-5B and CelebV-HQ, creating a diverse dataset with varying visual similarities to the positive samples. This ensures the model learns to distinguish between genuine and similar-looking individuals, improving accuracy and robustness.
> <details>
> <summary>read the caption</summary>
> Figure 2: The systematic data collection pipeline. For positive data collection, the original videos are processed by DeepFaceLab [36] for high-quality face and InterVideo2 [50] for demographic characteristics, which boost identity preservation. ConsisID [56] and LivePortrait [9] with PhotoMaker [21] utilize the identity information to generate videos of various background or different motion/expression, respectively. For model’s robust perception, hard negative samples are selected from either similar face retrieval to generate negative videos, or sampled from the CelebV-HQ dataset [61]. These negative samples guarantee the model’s accurate recognition of both identity and content.
> </details>



![](https://arxiv.org/html/2503.17069/extracted/6299133/QAgen.png)

> 🔼 This figure details the automated pipeline for generating question-answer pairs used in training the PVChat model.  InternVideo2 [50], a video question answering model, initially generates the question-answer pairs. ChatGPT [1] then refines these pairs, ensuring natural language and consistency. The bottom of the figure shows examples of both a positive (correctly answered) and a negative (incorrectly answered) question-answer pair, illustrating the types of data used in model training.
> <details>
> <summary>read the caption</summary>
> Figure 3: We illustrate the process of automatically generating question-answer pairs using InternVideo2 [50] and ChatGPT [1]. A positive and a negative sample are shown at the bottom.
> </details>



![](https://arxiv.org/html/2503.17069/extracted/6299133/training.png)

> 🔼 Figure 4 illustrates two key aspects of the PVChat model. (a) presents the overall training pipeline, showcasing a two-stage process: initial image-based training for static feature learning followed by video-based fine-tuning to incorporate dynamic aspects and refine subject-specific understanding. (b) details the ReLU Routing Mixture-of-Heads (ReMoH) attention mechanism, a core component of the model designed for efficient and adaptive learning of personalized features. ReMoH is depicted as a routing system that dynamically selects relevant attention heads, enhancing model performance and understanding of individual characteristics.
> <details>
> <summary>read the caption</summary>
> Figure 4: (a) The training pipeline of our method. (b) The proposed ReMoH technique for better specialized characteristics learning.
> </details>



![](https://arxiv.org/html/2503.17069/x3.png)

> 🔼 Figure 5 presents a comparison of PVChat's performance against two other state-of-the-art video LLMs (InternVideo2 and VideoLLaMA2) on personalized video question answering.  The figure showcases two examples. In the left example, PVChat correctly identifies and describes a person's condition from a single video, while the other models fail. The right example demonstrates PVChat's ability to answer questions about two individuals in a scene, achieving success where the other models fail to even detect the presence of both individuals. This highlights PVChat's superior ability to learn personalized characteristics from only a single reference video.
> <details>
> <summary>read the caption</summary>
> Figure 5: Examples of PVChat’s ability with a learned video (e.g., a man named <Sh>and another man named <Ho>). PVChat can recognize and answer questions about the personalized concept in various scenarios, such as medical scenarios (left) and TV series (right).
> </details>



![](https://arxiv.org/html/2503.17069/x4.png)

> 🔼 This figure illustrates the hierarchical structure of the prompt library used in the PVChat model. The library is organized into four levels: gender, age, scenario, and specific descriptions.  Different prompts are generated based on the specific combination of these four factors to ensure that the model receives detailed and contextually relevant information about the target subject in each video.  This approach allows for diverse and accurate training data, especially important for personalized video understanding.
> <details>
> <summary>read the caption</summary>
> Figure 6: The hierarchical structure of our prompt library, which is carefully divided into four levels, such as gender, age, and scenarios, and provides different descriptions according to the specific subject.
> </details>



![](https://arxiv.org/html/2503.17069/x5.png)

> 🔼 Figure 7 presents a comparison of expert head activation between the standard Mixture-of-Heads (MoH) attention mechanism and the proposed ReLU Routing Mixture-of-Heads (ReMoH) mechanism.  The figure displays the activation of multiple attention heads (H<sub>i</sub>) across different layers of a neural network.  The activation levels are shown for two conditions: videos containing the target character (blue bars) and videos without the target character (orange bars). This visualization helps to demonstrate how the ReMoH mechanism focuses the attention of specific heads on relevant features related to the target character compared to the MoH approach.
> <details>
> <summary>read the caption</summary>
> Figure 7: The comparison of expert heads activation between MoH [12] and ReMoH in different layers, where HisubscriptH𝑖\text{H}_{i}H start_POSTSUBSCRIPT italic_i end_POSTSUBSCRIPT represents the it⁢hsuperscript𝑖𝑡ℎi^{th}italic_i start_POSTSUPERSCRIPT italic_t italic_h end_POSTSUPERSCRIPT head. Orange refers to the video without the target individual, while blue represents the video having the character.
> </details>



![](https://arxiv.org/html/2503.17069/extracted/6299133/supp_example_top.png)

> 🔼 This figure demonstrates PVChat's ability to answer personalized questions about individuals in videos using only one example video of that person. The left side shows a single-person evaluation where the model correctly identifies the activity of person Nz. The right side shows a multi-person evaluation where the model identifies the activity of individuals Nz and Ab.  The results show that PVChat outperforms other ViLLMs in personalized video understanding.
> <details>
> <summary>read the caption</summary>
> Figure 1: Example of PVChat.
> </details>



![](https://arxiv.org/html/2503.17069/extracted/6299133/supp_example1.png)

> 🔼 This figure shows an example of PVChat's ability to perform personalized video understanding.  It demonstrates the system's capability to answer questions about a specific individual's actions and behavior in a video clip, even when the video contains multiple individuals or complex actions.  The example highlights the model's ability to go beyond general video understanding and provide precise, identity-aware answers.
> <details>
> <summary>read the caption</summary>
> Figure 2: Example of PVChat.
> </details>



![](https://arxiv.org/html/2503.17069/extracted/6299133/supp_example2.png)

> 🔼 This figure showcases PVChat's ability to answer personalized video questions using only one reference video.  The example shows three different queries related to a single video involving three characters (<Cl>, <Ja>, <Xo>).  PVChat successfully identifies and provides information about all three characters, including their potential gift preferences and an in-depth description of their actions in the scene, demonstrating subject-aware question answering capability. The figure highlights the model's superiority compared to other models that struggle with such personalized video understanding tasks.
> <details>
> <summary>read the caption</summary>
> Figure 3: Example of PVChat.
> </details>



![](https://arxiv.org/html/2503.17069/extracted/6299133/supp_example3.png)

> 🔼 This figure showcases PVChat's ability to answer complex questions about individuals in videos, even with only one-shot learning. It presents a comparison between PVChat and other state-of-the-art video LLMs on a question-answering task. In the example shown, PVChat accurately identifies and describes the actions of individuals in the video, while the others struggle.
> <details>
> <summary>read the caption</summary>
> Figure 4: Example of PVChat.
> </details>



![](https://arxiv.org/html/2503.17069/extracted/6299133/supp_example4.png)

> 🔼 This figure showcases PVChat's ability to answer personalized questions about individuals in videos. The example demonstrates correct identification and detailed description of actions and appearances even after only seeing a single reference video of each subject. It highlights the model's ability to handle both single-person and multi-person scenarios.
> <details>
> <summary>read the caption</summary>
> Figure 5: Example of PVChat.
> </details>



![](https://arxiv.org/html/2503.17069/x6.png)

> 🔼 This figure shows the prompts used in the data augmentation pipeline.  First, a video is fed into InternVideo2, a model that extracts textual descriptions of the video content. The output text is then fed to ChatGPT-4, which refines the text and replaces all pronouns with the designated character identifier. The refined caption is used to help generate training data.
> <details>
> <summary>read the caption</summary>
> Figure 6: Prompt for Internvideo and GPT query
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S4.T2.5.5">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T2.5.5.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S4.T2.5.5.5.6" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.5.5.5.6.1">Method</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T2.1.1.1.1" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.1.1.1">Acc<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T2.1.1.1.1.1.m1.1"><semantics id="S4.T2.1.1.1.1.1.m1.1a"><mo id="S4.T2.1.1.1.1.1.m1.1.1" stretchy="false" xref="S4.T2.1.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T2.1.1.1.1.1.m1.1b"><ci id="S4.T2.1.1.1.1.1.m1.1.1.cmml" xref="S4.T2.1.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.1.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.1.1.1.1.1.m1.1d">↑</annotation></semantics></math></span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T2.2.2.2.2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.2.2.2.2.1">BLEU<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T2.2.2.2.2.1.m1.1"><semantics id="S4.T2.2.2.2.2.1.m1.1a"><mo id="S4.T2.2.2.2.2.1.m1.1.1" stretchy="false" xref="S4.T2.2.2.2.2.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T2.2.2.2.2.1.m1.1b"><ci id="S4.T2.2.2.2.2.1.m1.1.1.cmml" xref="S4.T2.2.2.2.2.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.2.2.2.2.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.2.2.2.2.1.m1.1d">↑</annotation></semantics></math></span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T2.3.3.3.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.3.3.3.3.1">BS<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T2.3.3.3.3.1.m1.1"><semantics id="S4.T2.3.3.3.3.1.m1.1a"><mo id="S4.T2.3.3.3.3.1.m1.1.1" stretchy="false" xref="S4.T2.3.3.3.3.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T2.3.3.3.3.1.m1.1b"><ci id="S4.T2.3.3.3.3.1.m1.1.1.cmml" xref="S4.T2.3.3.3.3.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.3.3.3.3.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.3.3.3.3.1.m1.1d">↑</annotation></semantics></math></span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T2.4.4.4.4" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.4.4.4.4.1">ES<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T2.4.4.4.4.1.m1.1"><semantics id="S4.T2.4.4.4.4.1.m1.1a"><mo id="S4.T2.4.4.4.4.1.m1.1.1" stretchy="false" xref="S4.T2.4.4.4.4.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T2.4.4.4.4.1.m1.1b"><ci id="S4.T2.4.4.4.4.1.m1.1.1.cmml" xref="S4.T2.4.4.4.4.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.4.4.4.4.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.4.4.4.4.1.m1.1d">↑</annotation></semantics></math></span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T2.5.5.5.5" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.5.5.5.5.1">DC<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T2.5.5.5.5.1.m1.1"><semantics id="S4.T2.5.5.5.5.1.m1.1a"><mo id="S4.T2.5.5.5.5.1.m1.1.1" stretchy="false" xref="S4.T2.5.5.5.5.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T2.5.5.5.5.1.m1.1b"><ci id="S4.T2.5.5.5.5.1.m1.1.1.cmml" xref="S4.T2.5.5.5.5.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.5.5.5.5.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.5.5.5.5.1.m1.1d">↑</annotation></semantics></math></span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T2.5.5.6.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T2.5.5.6.1.1" style="padding-left:3.0pt;padding-right:3.0pt;">Baseline</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.5.5.6.1.2" style="padding-left:3.0pt;padding-right:3.0pt;">0.733</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.5.5.6.1.3" style="padding-left:3.0pt;padding-right:3.0pt;">0.550</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.5.5.6.1.4" style="padding-left:3.0pt;padding-right:3.0pt;">0.904</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.5.5.6.1.5" style="padding-left:3.0pt;padding-right:3.0pt;">4.735</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.5.5.6.1.6" style="padding-left:3.0pt;padding-right:3.0pt;">4.142</td>
</tr>
<tr class="ltx_tr" id="S4.T2.5.5.7.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.5.5.7.2.1" style="padding-left:3.0pt;padding-right:3.0pt;">Baseline + MoH <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.17069v1#bib.bib12" title=""><span class="ltx_text" style="font-size:90%;">12</span></a>]</cite>
</th>
<td class="ltx_td ltx_align_center" id="S4.T2.5.5.7.2.2" style="padding-left:3.0pt;padding-right:3.0pt;">0.813</td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.5.7.2.3" style="padding-left:3.0pt;padding-right:3.0pt;">0.558</td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.5.7.2.4" style="padding-left:3.0pt;padding-right:3.0pt;">0.926</td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.5.7.2.5" style="padding-left:3.0pt;padding-right:3.0pt;">4.939</td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.5.7.2.6" style="padding-left:3.0pt;padding-right:3.0pt;">4.191</td>
</tr>
<tr class="ltx_tr" id="S4.T2.5.5.8.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S4.T2.5.5.8.3.1" style="padding-left:3.0pt;padding-right:3.0pt;">Baseline + ReMoH</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.5.5.8.3.2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.5.5.8.3.2.1">0.901</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.5.5.8.3.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.5.5.8.3.3.1">0.562</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.5.5.8.3.4" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.5.5.8.3.4.1">0.952</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.5.5.8.3.5" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.5.5.8.3.5.1">4.940</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.5.5.8.3.6" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.5.5.8.3.6.1">4.201</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of ablation studies comparing the performance of three different models: a baseline model, a model incorporating the Mixture-of-Heads (MoH) attention mechanism, and a model using the proposed ReLU Routing Mixture-of-Heads (ReMoH) attention mechanism.  The comparison focuses on the accuracy (Acc) metric, demonstrating a significant improvement achieved by ReMoH compared to both the baseline and the standard MoH approach.  The table shows that ReMoH enhances the model's ability to accurately perform personalized video understanding.
> <details>
> <summary>read the caption</summary>
> Table 2: Ablations on the proposed ReMoH, where ReMoH significantly outperforms MoH in Acc.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S4.T3.6.6">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T3.6.6.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S4.T3.6.6.6.7" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.6.6.6.7.1">Method</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T3.6.6.6.8" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.6.6.6.8.1">Activate Rate</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T3.1.1.1.1" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.1.1.1.1.1">loss<math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T3.1.1.1.1.1.m1.1"><semantics id="S4.T3.1.1.1.1.1.m1.1a"><mo id="S4.T3.1.1.1.1.1.m1.1.1" stretchy="false" xref="S4.T3.1.1.1.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T3.1.1.1.1.1.m1.1b"><ci id="S4.T3.1.1.1.1.1.m1.1.1.cmml" xref="S4.T3.1.1.1.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.1.1.1.1.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.1.1.1.1.1.m1.1d">↓</annotation></semantics></math></span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T3.2.2.2.2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.2.2.2.2.1">Acc<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T3.2.2.2.2.1.m1.1"><semantics id="S4.T3.2.2.2.2.1.m1.1a"><mo id="S4.T3.2.2.2.2.1.m1.1.1" stretchy="false" xref="S4.T3.2.2.2.2.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T3.2.2.2.2.1.m1.1b"><ci id="S4.T3.2.2.2.2.1.m1.1.1.cmml" xref="S4.T3.2.2.2.2.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.2.2.2.2.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.2.2.2.2.1.m1.1d">↑</annotation></semantics></math></span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T3.3.3.3.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.3.3.3.3.1">BLEU<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T3.3.3.3.3.1.m1.1"><semantics id="S4.T3.3.3.3.3.1.m1.1a"><mo id="S4.T3.3.3.3.3.1.m1.1.1" stretchy="false" xref="S4.T3.3.3.3.3.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T3.3.3.3.3.1.m1.1b"><ci id="S4.T3.3.3.3.3.1.m1.1.1.cmml" xref="S4.T3.3.3.3.3.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.3.3.3.3.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.3.3.3.3.1.m1.1d">↑</annotation></semantics></math></span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T3.4.4.4.4" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.4.4.4.4.1">BS<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T3.4.4.4.4.1.m1.1"><semantics id="S4.T3.4.4.4.4.1.m1.1a"><mo id="S4.T3.4.4.4.4.1.m1.1.1" stretchy="false" xref="S4.T3.4.4.4.4.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T3.4.4.4.4.1.m1.1b"><ci id="S4.T3.4.4.4.4.1.m1.1.1.cmml" xref="S4.T3.4.4.4.4.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.4.4.4.4.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.4.4.4.4.1.m1.1d">↑</annotation></semantics></math></span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T3.5.5.5.5" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.5.5.5.5.1">ES<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T3.5.5.5.5.1.m1.1"><semantics id="S4.T3.5.5.5.5.1.m1.1a"><mo id="S4.T3.5.5.5.5.1.m1.1.1" stretchy="false" xref="S4.T3.5.5.5.5.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T3.5.5.5.5.1.m1.1b"><ci id="S4.T3.5.5.5.5.1.m1.1.1.cmml" xref="S4.T3.5.5.5.5.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.5.5.5.5.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.5.5.5.5.1.m1.1d">↑</annotation></semantics></math></span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T3.6.6.6.6" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.6.6.6.6.1">DC<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T3.6.6.6.6.1.m1.1"><semantics id="S4.T3.6.6.6.6.1.m1.1a"><mo id="S4.T3.6.6.6.6.1.m1.1.1" stretchy="false" xref="S4.T3.6.6.6.6.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T3.6.6.6.6.1.m1.1b"><ci id="S4.T3.6.6.6.6.1.m1.1.1.cmml" xref="S4.T3.6.6.6.6.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.6.6.6.6.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.6.6.6.6.1.m1.1d">↑</annotation></semantics></math></span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T3.6.6.7.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T3.6.6.7.1.1" style="padding-left:3.0pt;padding-right:3.0pt;">PVChat <span class="ltx_text ltx_font_italic" id="S4.T3.6.6.7.1.1.1">w/o</span> SPR and MAE</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.6.6.7.1.2" style="padding-left:3.0pt;padding-right:3.0pt;">–</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.6.6.7.1.3" style="padding-left:3.0pt;padding-right:3.0pt;">nan</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.6.6.7.1.4" style="padding-left:3.0pt;padding-right:3.0pt;">–</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.6.6.7.1.5" style="padding-left:3.0pt;padding-right:3.0pt;">–</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.6.6.7.1.6" style="padding-left:3.0pt;padding-right:3.0pt;">–</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.6.6.7.1.7" style="padding-left:3.0pt;padding-right:3.0pt;">–</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.6.6.7.1.8" style="padding-left:3.0pt;padding-right:3.0pt;">–</td>
</tr>
<tr class="ltx_tr" id="S4.T3.6.6.8.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T3.6.6.8.2.1" style="padding-left:3.0pt;padding-right:3.0pt;">PVChat <span class="ltx_text ltx_font_italic" id="S4.T3.6.6.8.2.1.1">w/o</span> MAE</th>
<td class="ltx_td ltx_align_center" id="S4.T3.6.6.8.2.2" style="padding-left:3.0pt;padding-right:3.0pt;">0.217</td>
<td class="ltx_td ltx_align_center" id="S4.T3.6.6.8.2.3" style="padding-left:3.0pt;padding-right:3.0pt;">0.085</td>
<td class="ltx_td ltx_align_center" id="S4.T3.6.6.8.2.4" style="padding-left:3.0pt;padding-right:3.0pt;">0.746</td>
<td class="ltx_td ltx_align_center" id="S4.T3.6.6.8.2.5" style="padding-left:3.0pt;padding-right:3.0pt;">0.555</td>
<td class="ltx_td ltx_align_center" id="S4.T3.6.6.8.2.6" style="padding-left:3.0pt;padding-right:3.0pt;">0.926</td>
<td class="ltx_td ltx_align_center" id="S4.T3.6.6.8.2.7" style="padding-left:3.0pt;padding-right:3.0pt;">4.913</td>
<td class="ltx_td ltx_align_center" id="S4.T3.6.6.8.2.8" style="padding-left:3.0pt;padding-right:3.0pt;">4.112</td>
</tr>
<tr class="ltx_tr" id="S4.T3.6.6.9.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S4.T3.6.6.9.3.1" style="padding-left:3.0pt;padding-right:3.0pt;">PVChat</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.6.6.9.3.2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.6.6.9.3.2.1">0.552</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.6.6.9.3.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.6.6.9.3.3.1">0.028</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.6.6.9.3.4" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.6.6.9.3.4.1">0.901</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.6.6.9.3.5" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.6.6.9.3.5.1">0.562</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.6.6.9.3.6" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.6.6.9.3.6.1">0.952</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.6.6.9.3.7" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.6.6.9.3.7.1">4.940</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.6.6.9.3.8" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.6.6.9.3.8.1">4.201</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This ablation study investigates the impact of Smooth Proximity Regularization (SPR) and Head Activation Enhancement (HAE) on the model's performance.  It shows how these loss functions contribute to training stability and the effective learning of expert heads within the ReLU Routing Mixture-of-Heads (ReMoH) attention mechanism. The table likely compares different model variants: a baseline without SPR and HAE, one with only SPR, and the full model with both SPR and HAE. The results demonstrate the effectiveness of the proposed loss functions in achieving better performance metrics. 
> <details>
> <summary>read the caption</summary>
> Table 3: Ablations on SPR and HAE losses. It verifies that SPR and HAE guarantee stability and enhance learning of the expert heads.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S4.T4.5.5">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T4.5.5.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S4.T4.5.5.5.6" style="padding:0.5pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.5.5.5.6.1">Data Type</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T4.1.1.1.1" style="padding:0.5pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.1.1.1.1.1">Acc<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T4.1.1.1.1.1.m1.1"><semantics id="S4.T4.1.1.1.1.1.m1.1a"><mo id="S4.T4.1.1.1.1.1.m1.1.1" stretchy="false" xref="S4.T4.1.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T4.1.1.1.1.1.m1.1b"><ci id="S4.T4.1.1.1.1.1.m1.1.1.cmml" xref="S4.T4.1.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.1.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T4.1.1.1.1.1.m1.1d">↑</annotation></semantics></math></span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T4.2.2.2.2" style="padding:0.5pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.2.2.2.2.1">BLEU<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T4.2.2.2.2.1.m1.1"><semantics id="S4.T4.2.2.2.2.1.m1.1a"><mo id="S4.T4.2.2.2.2.1.m1.1.1" stretchy="false" xref="S4.T4.2.2.2.2.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T4.2.2.2.2.1.m1.1b"><ci id="S4.T4.2.2.2.2.1.m1.1.1.cmml" xref="S4.T4.2.2.2.2.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.2.2.2.2.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T4.2.2.2.2.1.m1.1d">↑</annotation></semantics></math></span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T4.3.3.3.3" style="padding:0.5pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.3.3.3.3.1">BS<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T4.3.3.3.3.1.m1.1"><semantics id="S4.T4.3.3.3.3.1.m1.1a"><mo id="S4.T4.3.3.3.3.1.m1.1.1" stretchy="false" xref="S4.T4.3.3.3.3.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T4.3.3.3.3.1.m1.1b"><ci id="S4.T4.3.3.3.3.1.m1.1.1.cmml" xref="S4.T4.3.3.3.3.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.3.3.3.3.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T4.3.3.3.3.1.m1.1d">↑</annotation></semantics></math></span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T4.4.4.4.4" style="padding:0.5pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.4.4.4.4.1">ES<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T4.4.4.4.4.1.m1.1"><semantics id="S4.T4.4.4.4.4.1.m1.1a"><mo id="S4.T4.4.4.4.4.1.m1.1.1" stretchy="false" xref="S4.T4.4.4.4.4.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T4.4.4.4.4.1.m1.1b"><ci id="S4.T4.4.4.4.4.1.m1.1.1.cmml" xref="S4.T4.4.4.4.4.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.4.4.4.4.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T4.4.4.4.4.1.m1.1d">↑</annotation></semantics></math></span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T4.5.5.5.5" style="padding:0.5pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.5.5.5.5.1">DC<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T4.5.5.5.5.1.m1.1"><semantics id="S4.T4.5.5.5.5.1.m1.1a"><mo id="S4.T4.5.5.5.5.1.m1.1.1" stretchy="false" xref="S4.T4.5.5.5.5.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T4.5.5.5.5.1.m1.1b"><ci id="S4.T4.5.5.5.5.1.m1.1.1.cmml" xref="S4.T4.5.5.5.5.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.5.5.5.5.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T4.5.5.5.5.1.m1.1d">↑</annotation></semantics></math></span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T4.5.5.6.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T4.5.5.6.1.1" style="padding:0.5pt 3.0pt;">one positive</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.5.5.6.1.2" style="padding:0.5pt 3.0pt;">0.464</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.5.5.6.1.3" style="padding:0.5pt 3.0pt;">0.417</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.5.5.6.1.4" style="padding:0.5pt 3.0pt;">0.905</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.5.5.6.1.5" style="padding:0.5pt 3.0pt;">4.826</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.5.5.6.1.6" style="padding:0.5pt 3.0pt;">3.947</td>
</tr>
<tr class="ltx_tr" id="S4.T4.5.5.7.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T4.5.5.7.2.1" style="padding:0.5pt 3.0pt;">+Negative</th>
<td class="ltx_td ltx_align_center" id="S4.T4.5.5.7.2.2" style="padding:0.5pt 3.0pt;">0.584</td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.5.7.2.3" style="padding:0.5pt 3.0pt;">0.418</td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.5.7.2.4" style="padding:0.5pt 3.0pt;">0.931</td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.5.7.2.5" style="padding:0.5pt 3.0pt;">4.899</td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.5.7.2.6" style="padding:0.5pt 3.0pt;">4.120</td>
</tr>
<tr class="ltx_tr" id="S4.T4.5.5.8.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T4.5.5.8.3.1" style="padding:0.5pt 3.0pt;">+ConsisID Positive</th>
<td class="ltx_td ltx_align_center" id="S4.T4.5.5.8.3.2" style="padding:0.5pt 3.0pt;">0.781</td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.5.8.3.3" style="padding:0.5pt 3.0pt;">0.532</td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.5.8.3.4" style="padding:0.5pt 3.0pt;">0.927</td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.5.8.3.5" style="padding:0.5pt 3.0pt;">4.929</td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.5.8.3.6" style="padding:0.5pt 3.0pt;">4.132</td>
</tr>
<tr class="ltx_tr" id="S4.T4.5.5.9.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S4.T4.5.5.9.4.1" style="padding:0.5pt 3.0pt;">+LivePortrait Positive</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.5.5.9.4.2" style="padding:0.5pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.5.5.9.4.2.1">0.901</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.5.5.9.4.3" style="padding:0.5pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.5.5.9.4.3.1">0.562</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.5.5.9.4.4" style="padding:0.5pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.5.5.9.4.4.1">0.952</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.5.5.9.4.5" style="padding:0.5pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.5.5.9.4.5.1">4.940</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.5.5.9.4.6" style="padding:0.5pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.5.5.9.4.6.1">4.201</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This ablation study investigates the impact of different data augmentation strategies on the performance of the PVChat model.  Specifically, it examines the effect of using only positive samples, positive samples with hard negative samples from CelebV-HQ, positive samples generated using ConsisID, and finally, the combination of all these data types. The results demonstrate that a diverse and comprehensive dataset, combining identity-preserving positive samples with hard negative samples, leads to more robust and accurate performance by the PVChat model. This highlights the crucial role of high-quality data augmentation in achieving effective one-shot learning for personalized video understanding.
> <details>
> <summary>read the caption</summary>
> Table 4: Ablations on the dataset collection, where combining all types of designed data, the model performs accurately and robustly.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S1.T1.5.5">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S1.T1.5.5.5">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S1.T1.5.5.5.6" style="padding:-0.45pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S1.T1.5.5.5.6.1" style="font-size:90%;">Number</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S1.T1.1.1.1.1" style="padding:-0.45pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S1.T1.1.1.1.1.1" style="font-size:90%;">Acc<math alttext="\uparrow" class="ltx_Math" display="inline" id="S1.T1.1.1.1.1.1.m1.1"><semantics id="S1.T1.1.1.1.1.1.m1.1a"><mo id="S1.T1.1.1.1.1.1.m1.1.1" stretchy="false" xref="S1.T1.1.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S1.T1.1.1.1.1.1.m1.1b"><ci id="S1.T1.1.1.1.1.1.m1.1.1.cmml" xref="S1.T1.1.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S1.T1.1.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S1.T1.1.1.1.1.1.m1.1d">↑</annotation></semantics></math></span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S1.T1.2.2.2.2" style="padding:-0.45pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S1.T1.2.2.2.2.1" style="font-size:90%;">BLEU<math alttext="\uparrow" class="ltx_Math" display="inline" id="S1.T1.2.2.2.2.1.m1.1"><semantics id="S1.T1.2.2.2.2.1.m1.1a"><mo id="S1.T1.2.2.2.2.1.m1.1.1" stretchy="false" xref="S1.T1.2.2.2.2.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S1.T1.2.2.2.2.1.m1.1b"><ci id="S1.T1.2.2.2.2.1.m1.1.1.cmml" xref="S1.T1.2.2.2.2.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S1.T1.2.2.2.2.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S1.T1.2.2.2.2.1.m1.1d">↑</annotation></semantics></math></span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S1.T1.3.3.3.3" style="padding:-0.45pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S1.T1.3.3.3.3.1" style="font-size:90%;">BS<math alttext="\uparrow" class="ltx_Math" display="inline" id="S1.T1.3.3.3.3.1.m1.1"><semantics id="S1.T1.3.3.3.3.1.m1.1a"><mo id="S1.T1.3.3.3.3.1.m1.1.1" stretchy="false" xref="S1.T1.3.3.3.3.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S1.T1.3.3.3.3.1.m1.1b"><ci id="S1.T1.3.3.3.3.1.m1.1.1.cmml" xref="S1.T1.3.3.3.3.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S1.T1.3.3.3.3.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S1.T1.3.3.3.3.1.m1.1d">↑</annotation></semantics></math></span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S1.T1.4.4.4.4" style="padding:-0.45pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S1.T1.4.4.4.4.1" style="font-size:90%;">ES<math alttext="\uparrow" class="ltx_Math" display="inline" id="S1.T1.4.4.4.4.1.m1.1"><semantics id="S1.T1.4.4.4.4.1.m1.1a"><mo id="S1.T1.4.4.4.4.1.m1.1.1" stretchy="false" xref="S1.T1.4.4.4.4.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S1.T1.4.4.4.4.1.m1.1b"><ci id="S1.T1.4.4.4.4.1.m1.1.1.cmml" xref="S1.T1.4.4.4.4.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S1.T1.4.4.4.4.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S1.T1.4.4.4.4.1.m1.1d">↑</annotation></semantics></math></span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S1.T1.5.5.5.5" style="padding:-0.45pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S1.T1.5.5.5.5.1" style="font-size:90%;">DC<math alttext="\uparrow" class="ltx_Math" display="inline" id="S1.T1.5.5.5.5.1.m1.1"><semantics id="S1.T1.5.5.5.5.1.m1.1a"><mo id="S1.T1.5.5.5.5.1.m1.1.1" stretchy="false" xref="S1.T1.5.5.5.5.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S1.T1.5.5.5.5.1.m1.1b"><ci id="S1.T1.5.5.5.5.1.m1.1.1.cmml" xref="S1.T1.5.5.5.5.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S1.T1.5.5.5.5.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S1.T1.5.5.5.5.1.m1.1d">↑</annotation></semantics></math></span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S1.T1.5.5.6.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" id="S1.T1.5.5.6.1.1" style="padding:-0.45pt 3.0pt;"><span class="ltx_text" id="S1.T1.5.5.6.1.1.1" style="font-size:90%;">0</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T1.5.5.6.1.2" style="padding:-0.45pt 3.0pt;"><span class="ltx_text" id="S1.T1.5.5.6.1.2.1" style="font-size:90%;">0.801</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T1.5.5.6.1.3" style="padding:-0.45pt 3.0pt;"><span class="ltx_text" id="S1.T1.5.5.6.1.3.1" style="font-size:90%;">0.495</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T1.5.5.6.1.4" style="padding:-0.45pt 3.0pt;"><span class="ltx_text" id="S1.T1.5.5.6.1.4.1" style="font-size:90%;">0.939</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T1.5.5.6.1.5" style="padding:-0.45pt 3.0pt;"><span class="ltx_text" id="S1.T1.5.5.6.1.5.1" style="font-size:90%;">5.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T1.5.5.6.1.6" style="padding:-0.45pt 3.0pt;"><span class="ltx_text" id="S1.T1.5.5.6.1.6.1" style="font-size:90%;">4.00</span></td>
</tr>
<tr class="ltx_tr" id="S1.T1.5.5.7.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S1.T1.5.5.7.2.1" style="padding:-0.45pt 3.0pt;"><span class="ltx_text" id="S1.T1.5.5.7.2.1.1" style="font-size:90%;">4</span></th>
<td class="ltx_td ltx_align_center" id="S1.T1.5.5.7.2.2" style="padding:-0.45pt 3.0pt;"><span class="ltx_text" id="S1.T1.5.5.7.2.2.1" style="font-size:90%;">0.871</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.5.5.7.2.3" style="padding:-0.45pt 3.0pt;"><span class="ltx_text" id="S1.T1.5.5.7.2.3.1" style="font-size:90%;">0.592</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.5.5.7.2.4" style="padding:-0.45pt 3.0pt;"><span class="ltx_text" id="S1.T1.5.5.7.2.4.1" style="font-size:90%;">0.951</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.5.5.7.2.5" style="padding:-0.45pt 3.0pt;"><span class="ltx_text" id="S1.T1.5.5.7.2.5.1" style="font-size:90%;">5.00</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.5.5.7.2.6" style="padding:-0.45pt 3.0pt;"><span class="ltx_text" id="S1.T1.5.5.7.2.6.1" style="font-size:90%;">4.50</span></td>
</tr>
<tr class="ltx_tr" id="S1.T1.5.5.8.3">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S1.T1.5.5.8.3.1" style="padding:-0.45pt 3.0pt;"><span class="ltx_text" id="S1.T1.5.5.8.3.1.1" style="font-size:90%;">8</span></th>
<td class="ltx_td ltx_align_center" id="S1.T1.5.5.8.3.2" style="padding:-0.45pt 3.0pt;"><span class="ltx_text" id="S1.T1.5.5.8.3.2.1" style="font-size:90%;">0.890</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.5.5.8.3.3" style="padding:-0.45pt 3.0pt;"><span class="ltx_text" id="S1.T1.5.5.8.3.3.1" style="font-size:90%;">0.553</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.5.5.8.3.4" style="padding:-0.45pt 3.0pt;"><span class="ltx_text" id="S1.T1.5.5.8.3.4.1" style="font-size:90%;">0.949</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.5.5.8.3.5" style="padding:-0.45pt 3.0pt;"><span class="ltx_text" id="S1.T1.5.5.8.3.5.1" style="font-size:90%;">5.00</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.5.5.8.3.6" style="padding:-0.45pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S1.T1.5.5.8.3.6.1" style="font-size:90%;">4.58</span></td>
</tr>
<tr class="ltx_tr" id="S1.T1.5.5.9.4">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S1.T1.5.5.9.4.1" style="padding:-0.45pt 3.0pt;"><span class="ltx_text" id="S1.T1.5.5.9.4.1.1" style="font-size:90%;">12</span></th>
<td class="ltx_td ltx_align_center" id="S1.T1.5.5.9.4.2" style="padding:-0.45pt 3.0pt;"><span class="ltx_text" id="S1.T1.5.5.9.4.2.1" style="font-size:90%;">0.895</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.5.5.9.4.3" style="padding:-0.45pt 3.0pt;"><span class="ltx_text" id="S1.T1.5.5.9.4.3.1" style="font-size:90%;">0.564</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.5.5.9.4.4" style="padding:-0.45pt 3.0pt;"><span class="ltx_text" id="S1.T1.5.5.9.4.4.1" style="font-size:90%;">0.949</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.5.5.9.4.5" style="padding:-0.45pt 3.0pt;"><span class="ltx_text" id="S1.T1.5.5.9.4.5.1" style="font-size:90%;">5.00</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.5.5.9.4.6" style="padding:-0.45pt 3.0pt;"><span class="ltx_text" id="S1.T1.5.5.9.4.6.1" style="font-size:90%;">4.41</span></td>
</tr>
<tr class="ltx_tr" id="S1.T1.5.5.10.5">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S1.T1.5.5.10.5.1" style="padding:-0.45pt 3.0pt;"><span class="ltx_text" id="S1.T1.5.5.10.5.1.1" style="font-size:90%;">16</span></th>
<td class="ltx_td ltx_align_center" id="S1.T1.5.5.10.5.2" style="padding:-0.45pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S1.T1.5.5.10.5.2.1" style="font-size:90%;">0.922</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.5.5.10.5.3" style="padding:-0.45pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S1.T1.5.5.10.5.3.1" style="font-size:90%;">0.606</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.5.5.10.5.4" style="padding:-0.45pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S1.T1.5.5.10.5.4.1" style="font-size:90%;">0.952</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.5.5.10.5.5" style="padding:-0.45pt 3.0pt;"><span class="ltx_text" id="S1.T1.5.5.10.5.5.1" style="font-size:90%;">4.74</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.5.5.10.5.6" style="padding:-0.45pt 3.0pt;"><span class="ltx_text" id="S1.T1.5.5.10.5.6.1" style="font-size:90%;">4.38</span></td>
</tr>
<tr class="ltx_tr" id="S1.T1.5.5.11.6">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_bb" id="S1.T1.5.5.11.6.1" style="padding:-0.45pt 3.0pt;"><span class="ltx_text" id="S1.T1.5.5.11.6.1.1" style="font-size:90%;">20</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S1.T1.5.5.11.6.2" style="padding:-0.45pt 3.0pt;"><span class="ltx_text" id="S1.T1.5.5.11.6.2.1" style="font-size:90%;">0.882</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S1.T1.5.5.11.6.3" style="padding:-0.45pt 3.0pt;"><span class="ltx_text" id="S1.T1.5.5.11.6.3.1" style="font-size:90%;">0.554</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S1.T1.5.5.11.6.4" style="padding:-0.45pt 3.0pt;"><span class="ltx_text" id="S1.T1.5.5.11.6.4.1" style="font-size:90%;">0.949</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S1.T1.5.5.11.6.5" style="padding:-0.45pt 3.0pt;"><span class="ltx_text" id="S1.T1.5.5.11.6.5.1" style="font-size:90%;">4.96</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S1.T1.5.5.11.6.6" style="padding:-0.45pt 3.0pt;"><span class="ltx_text" id="S1.T1.5.5.11.6.6.1" style="font-size:90%;">4.25</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of an ablation study investigating the impact of varying the number of tokens used in the prompt for the model.  Specifically, it examines the performance of the model (measured by Accuracy, BLEU score, BERTScore, Entity Specificity, and Descriptive Completeness) when processing video data related to subject <Aa> using different numbers of tokens (0, 4, 8, 12, 16, 20) in the input prompt.  The goal is to determine the optimal number of tokens that balances model performance and efficiency.
> <details>
> <summary>read the caption</summary>
> Table 1: Ablations on the number of tokens in <Aa>.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S5.T2.2">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S5.T2.2.1.1">
<th class="ltx_td ltx_align_justify ltx_align_top ltx_th ltx_th_column ltx_border_tt" id="S5.T2.2.1.1.1" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T2.2.1.1.1.1">
<span class="ltx_p" id="S5.T2.2.1.1.1.1.1" style="width:42.7pt;"><span class="ltx_text ltx_font_bold" id="S5.T2.2.1.1.1.1.1.1" style="font-size:90%;">Index</span></span>
</span>
</th>
<th class="ltx_td ltx_align_justify ltx_align_top ltx_th ltx_th_column ltx_border_tt" id="S5.T2.2.1.1.2" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T2.2.1.1.2.1">
<span class="ltx_p" id="S5.T2.2.1.1.2.1.1" style="width:184.9pt;"><span class="ltx_text ltx_font_bold" id="S5.T2.2.1.1.2.1.1.1" style="font-size:90%;">Question</span></span>
</span>
</th>
<th class="ltx_td ltx_align_justify ltx_align_top ltx_th ltx_th_column ltx_border_tt" id="S5.T2.2.1.1.3" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T2.2.1.1.3.1">
<span class="ltx_p" id="S5.T2.2.1.1.3.1.1" style="width:156.5pt;"><span class="ltx_text ltx_font_bold" id="S5.T2.2.1.1.3.1.1.1" style="font-size:90%;">Yes Answer</span></span>
</span>
</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S5.T2.2.2.1">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S5.T2.2.2.1.1" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T2.2.2.1.1.1">
<span class="ltx_p" id="S5.T2.2.2.1.1.1.1" style="width:42.7pt;"><span class="ltx_text" id="S5.T2.2.2.1.1.1.1.1" style="font-size:90%;">1</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S5.T2.2.2.1.2" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T2.2.2.1.2.1">
<span class="ltx_p" id="S5.T2.2.2.1.2.1.1" style="width:184.9pt;"><span class="ltx_text" id="S5.T2.2.2.1.2.1.1.1" style="font-size:90%;">Is there any trace of &lt;sks&gt; in this footage?</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S5.T2.2.2.1.3" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T2.2.2.1.3.1">
<span class="ltx_p" id="S5.T2.2.2.1.3.1.1" style="width:156.5pt;"><span class="ltx_text" id="S5.T2.2.2.1.3.1.1.1" style="font-size:90%;">Yes, &lt;sks&gt; is in this video.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.T2.2.3.2">
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T2.2.3.2.1" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T2.2.3.2.1.1">
<span class="ltx_p" id="S5.T2.2.3.2.1.1.1" style="width:42.7pt;"><span class="ltx_text" id="S5.T2.2.3.2.1.1.1.1" style="font-size:90%;">2</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T2.2.3.2.2" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T2.2.3.2.2.1">
<span class="ltx_p" id="S5.T2.2.3.2.2.1.1" style="width:184.9pt;"><span class="ltx_text" id="S5.T2.2.3.2.2.1.1.1" style="font-size:90%;">Can you detect &lt;sks&gt; in this video clip?</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T2.2.3.2.3" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T2.2.3.2.3.1">
<span class="ltx_p" id="S5.T2.2.3.2.3.1.1" style="width:156.5pt;"><span class="ltx_text" id="S5.T2.2.3.2.3.1.1.1" style="font-size:90%;">I can confirm that &lt;sks&gt; appears.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.T2.2.4.3">
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T2.2.4.3.1" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T2.2.4.3.1.1">
<span class="ltx_p" id="S5.T2.2.4.3.1.1.1" style="width:42.7pt;"><span class="ltx_text" id="S5.T2.2.4.3.1.1.1.1" style="font-size:90%;">3</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T2.2.4.3.2" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T2.2.4.3.2.1">
<span class="ltx_p" id="S5.T2.2.4.3.2.1.1" style="width:184.9pt;"><span class="ltx_text" id="S5.T2.2.4.3.2.1.1.1" style="font-size:90%;">Does &lt;sks&gt; show up anywhere in this recording?</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T2.2.4.3.3" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T2.2.4.3.3.1">
<span class="ltx_p" id="S5.T2.2.4.3.3.1.1" style="width:156.5pt;"><span class="ltx_text" id="S5.T2.2.4.3.3.1.1.1" style="font-size:90%;">&lt;sks&gt; is present in this recording.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.T2.2.5.4">
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T2.2.5.4.1" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T2.2.5.4.1.1">
<span class="ltx_p" id="S5.T2.2.5.4.1.1.1" style="width:42.7pt;"><span class="ltx_text" id="S5.T2.2.5.4.1.1.1.1" style="font-size:90%;">4</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T2.2.5.4.2" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T2.2.5.4.2.1">
<span class="ltx_p" id="S5.T2.2.5.4.2.1.1" style="width:184.9pt;"><span class="ltx_text" id="S5.T2.2.5.4.2.1.1.1" style="font-size:90%;">Is &lt;sks&gt; visible in this video?</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T2.2.5.4.3" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T2.2.5.4.3.1">
<span class="ltx_p" id="S5.T2.2.5.4.3.1.1" style="width:156.5pt;"><span class="ltx_text" id="S5.T2.2.5.4.3.1.1.1" style="font-size:90%;">The video contains &lt;sks&gt;.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.T2.2.6.5">
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T2.2.6.5.1" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T2.2.6.5.1.1">
<span class="ltx_p" id="S5.T2.2.6.5.1.1.1" style="width:42.7pt;"><span class="ltx_text" id="S5.T2.2.6.5.1.1.1.1" style="font-size:90%;">5</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T2.2.6.5.2" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T2.2.6.5.2.1">
<span class="ltx_p" id="S5.T2.2.6.5.2.1.1" style="width:184.9pt;"><span class="ltx_text" id="S5.T2.2.6.5.2.1.1.1" style="font-size:90%;">Could you verify if &lt;sks&gt; is here?</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T2.2.6.5.3" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T2.2.6.5.3.1">
<span class="ltx_p" id="S5.T2.2.6.5.3.1.1" style="width:156.5pt;"><span class="ltx_text" id="S5.T2.2.6.5.3.1.1.1" style="font-size:90%;">I’ve identified &lt;sks&gt;.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.T2.2.7.6">
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T2.2.7.6.1" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T2.2.7.6.1.1">
<span class="ltx_p" id="S5.T2.2.7.6.1.1.1" style="width:42.7pt;"><span class="ltx_text" id="S5.T2.2.7.6.1.1.1.1" style="font-size:90%;">6</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T2.2.7.6.2" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T2.2.7.6.2.1">
<span class="ltx_p" id="S5.T2.2.7.6.2.1.1" style="width:184.9pt;"><span class="ltx_text" id="S5.T2.2.7.6.2.1.1.1" style="font-size:90%;">Does this footage include &lt;sks&gt;?</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T2.2.7.6.3" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T2.2.7.6.3.1">
<span class="ltx_p" id="S5.T2.2.7.6.3.1.1" style="width:156.5pt;"><span class="ltx_text" id="S5.T2.2.7.6.3.1.1.1" style="font-size:90%;">&lt;sks&gt; is shown in this video.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.T2.2.8.7">
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T2.2.8.7.1" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T2.2.8.7.1.1">
<span class="ltx_p" id="S5.T2.2.8.7.1.1.1" style="width:42.7pt;"><span class="ltx_text" id="S5.T2.2.8.7.1.1.1.1" style="font-size:90%;">7</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T2.2.8.7.2" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T2.2.8.7.2.1">
<span class="ltx_p" id="S5.T2.2.8.7.2.1.1" style="width:184.9pt;"><span class="ltx_text" id="S5.T2.2.8.7.2.1.1.1" style="font-size:90%;">Can you spot &lt;sks&gt; in this clip?</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T2.2.8.7.3" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T2.2.8.7.3.1">
<span class="ltx_p" id="S5.T2.2.8.7.3.1.1" style="width:156.5pt;"><span class="ltx_text" id="S5.T2.2.8.7.3.1.1.1" style="font-size:90%;">Yes, &lt;sks&gt; appears here.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.T2.2.9.8">
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T2.2.9.8.1" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T2.2.9.8.1.1">
<span class="ltx_p" id="S5.T2.2.9.8.1.1.1" style="width:42.7pt;"><span class="ltx_text" id="S5.T2.2.9.8.1.1.1.1" style="font-size:90%;">8</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T2.2.9.8.2" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T2.2.9.8.2.1">
<span class="ltx_p" id="S5.T2.2.9.8.2.1.1" style="width:184.9pt;"><span class="ltx_text" id="S5.T2.2.9.8.2.1.1.1" style="font-size:90%;">Is &lt;sks&gt; present in this video?</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T2.2.9.8.3" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T2.2.9.8.3.1">
<span class="ltx_p" id="S5.T2.2.9.8.3.1.1" style="width:156.5pt;"><span class="ltx_text" id="S5.T2.2.9.8.3.1.1.1" style="font-size:90%;">I can verify that &lt;sks&gt; is present.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.T2.2.10.9">
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T2.2.10.9.1" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T2.2.10.9.1.1">
<span class="ltx_p" id="S5.T2.2.10.9.1.1.1" style="width:42.7pt;"><span class="ltx_text" id="S5.T2.2.10.9.1.1.1.1" style="font-size:90%;">9</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T2.2.10.9.2" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T2.2.10.9.2.1">
<span class="ltx_p" id="S5.T2.2.10.9.2.1.1" style="width:184.9pt;"><span class="ltx_text" id="S5.T2.2.10.9.2.1.1.1" style="font-size:90%;">Does &lt;sks&gt; appear in this footage?</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T2.2.10.9.3" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T2.2.10.9.3.1">
<span class="ltx_p" id="S5.T2.2.10.9.3.1.1" style="width:156.5pt;"><span class="ltx_text" id="S5.T2.2.10.9.3.1.1.1" style="font-size:90%;">The footage shows &lt;sks&gt;.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.T2.2.11.10">
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T2.2.11.10.1" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T2.2.11.10.1.1">
<span class="ltx_p" id="S5.T2.2.11.10.1.1.1" style="width:42.7pt;"><span class="ltx_text" id="S5.T2.2.11.10.1.1.1.1" style="font-size:90%;">10</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T2.2.11.10.2" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T2.2.11.10.2.1">
<span class="ltx_p" id="S5.T2.2.11.10.2.1.1" style="width:184.9pt;"><span class="ltx_text" id="S5.T2.2.11.10.2.1.1.1" style="font-size:90%;">Can you tell if &lt;sks&gt; is shown here?</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T2.2.11.10.3" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T2.2.11.10.3.1">
<span class="ltx_p" id="S5.T2.2.11.10.3.1.1" style="width:156.5pt;"><span class="ltx_text" id="S5.T2.2.11.10.3.1.1.1" style="font-size:90%;">&lt;sks&gt; is in this video clip.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.T2.2.12.11">
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T2.2.12.11.1" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T2.2.12.11.1.1">
<span class="ltx_p" id="S5.T2.2.12.11.1.1.1" style="width:42.7pt;"><span class="ltx_text" id="S5.T2.2.12.11.1.1.1.1" style="font-size:90%;">11</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T2.2.12.11.2" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T2.2.12.11.2.1">
<span class="ltx_p" id="S5.T2.2.12.11.2.1.1" style="width:184.9pt;"><span class="ltx_text" id="S5.T2.2.12.11.2.1.1.1" style="font-size:90%;">Is &lt;sks&gt; in this video segment?</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T2.2.12.11.3" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T2.2.12.11.3.1">
<span class="ltx_p" id="S5.T2.2.12.11.3.1.1" style="width:156.5pt;"><span class="ltx_text" id="S5.T2.2.12.11.3.1.1.1" style="font-size:90%;">I’ve detected &lt;sks&gt;.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.T2.2.13.12">
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T2.2.13.12.1" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T2.2.13.12.1.1">
<span class="ltx_p" id="S5.T2.2.13.12.1.1.1" style="width:42.7pt;"><span class="ltx_text" id="S5.T2.2.13.12.1.1.1.1" style="font-size:90%;">12</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T2.2.13.12.2" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T2.2.13.12.2.1">
<span class="ltx_p" id="S5.T2.2.13.12.2.1.1" style="width:184.9pt;"><span class="ltx_text" id="S5.T2.2.13.12.2.1.1.1" style="font-size:90%;">Can you confirm &lt;sks&gt;’s presence?</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T2.2.13.12.3" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T2.2.13.12.3.1">
<span class="ltx_p" id="S5.T2.2.13.12.3.1.1" style="width:156.5pt;"><span class="ltx_text" id="S5.T2.2.13.12.3.1.1.1" style="font-size:90%;">Yes, &lt;sks&gt; is featured.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.T2.2.14.13">
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T2.2.14.13.1" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T2.2.14.13.1.1">
<span class="ltx_p" id="S5.T2.2.14.13.1.1.1" style="width:42.7pt;"><span class="ltx_text" id="S5.T2.2.14.13.1.1.1.1" style="font-size:90%;">13</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T2.2.14.13.2" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T2.2.14.13.2.1">
<span class="ltx_p" id="S5.T2.2.14.13.2.1.1" style="width:184.9pt;"><span class="ltx_text" id="S5.T2.2.14.13.2.1.1.1" style="font-size:90%;">Does this clip contain &lt;sks&gt;?</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T2.2.14.13.3" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T2.2.14.13.3.1">
<span class="ltx_p" id="S5.T2.2.14.13.3.1.1" style="width:156.5pt;"><span class="ltx_text" id="S5.T2.2.14.13.3.1.1.1" style="font-size:90%;">The video includes &lt;sks&gt;.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.T2.2.15.14">
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T2.2.15.14.1" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T2.2.15.14.1.1">
<span class="ltx_p" id="S5.T2.2.15.14.1.1.1" style="width:42.7pt;"><span class="ltx_text" id="S5.T2.2.15.14.1.1.1.1" style="font-size:90%;">14</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T2.2.15.14.2" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T2.2.15.14.2.1">
<span class="ltx_p" id="S5.T2.2.15.14.2.1.1" style="width:184.9pt;"><span class="ltx_text" id="S5.T2.2.15.14.2.1.1.1" style="font-size:90%;">Is &lt;sks&gt; featured in this recording?</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T2.2.15.14.3" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T2.2.15.14.3.1">
<span class="ltx_p" id="S5.T2.2.15.14.3.1.1" style="width:156.5pt;"><span class="ltx_text" id="S5.T2.2.15.14.3.1.1.1" style="font-size:90%;">I can see &lt;sks&gt;.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.T2.2.16.15">
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T2.2.16.15.1" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T2.2.16.15.1.1">
<span class="ltx_p" id="S5.T2.2.16.15.1.1.1" style="width:42.7pt;"><span class="ltx_text" id="S5.T2.2.16.15.1.1.1.1" style="font-size:90%;">15</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T2.2.16.15.2" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T2.2.16.15.2.1">
<span class="ltx_p" id="S5.T2.2.16.15.2.1.1" style="width:184.9pt;"><span class="ltx_text" id="S5.T2.2.16.15.2.1.1.1" style="font-size:90%;">Can you find &lt;sks&gt; in this video?</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T2.2.16.15.3" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T2.2.16.15.3.1">
<span class="ltx_p" id="S5.T2.2.16.15.3.1.1" style="width:156.5pt;"><span class="ltx_text" id="S5.T2.2.16.15.3.1.1.1" style="font-size:90%;">&lt;sks&gt; is definitely here.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.T2.2.17.16">
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T2.2.17.16.1" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T2.2.17.16.1.1">
<span class="ltx_p" id="S5.T2.2.17.16.1.1.1" style="width:42.7pt;"><span class="ltx_text" id="S5.T2.2.17.16.1.1.1.1" style="font-size:90%;">16</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T2.2.17.16.2" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T2.2.17.16.2.1">
<span class="ltx_p" id="S5.T2.2.17.16.2.1.1" style="width:184.9pt;"><span class="ltx_text" id="S5.T2.2.17.16.2.1.1.1" style="font-size:90%;">Is &lt;sks&gt; shown in any frame?</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T2.2.17.16.3" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T2.2.17.16.3.1">
<span class="ltx_p" id="S5.T2.2.17.16.3.1.1" style="width:156.5pt;"><span class="ltx_text" id="S5.T2.2.17.16.3.1.1.1" style="font-size:90%;">Yes, I’ve found &lt;sks&gt;.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.T2.2.18.17">
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T2.2.18.17.1" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T2.2.18.17.1.1">
<span class="ltx_p" id="S5.T2.2.18.17.1.1.1" style="width:42.7pt;"><span class="ltx_text" id="S5.T2.2.18.17.1.1.1.1" style="font-size:90%;">17</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T2.2.18.17.2" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T2.2.18.17.2.1">
<span class="ltx_p" id="S5.T2.2.18.17.2.1.1" style="width:184.9pt;"><span class="ltx_text" id="S5.T2.2.18.17.2.1.1.1" style="font-size:90%;">Does this video show &lt;sks&gt;?</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T2.2.18.17.3" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T2.2.18.17.3.1">
<span class="ltx_p" id="S5.T2.2.18.17.3.1.1" style="width:156.5pt;"><span class="ltx_text" id="S5.T2.2.18.17.3.1.1.1" style="font-size:90%;">This video shows &lt;sks&gt;.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.T2.2.19.18">
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T2.2.19.18.1" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T2.2.19.18.1.1">
<span class="ltx_p" id="S5.T2.2.19.18.1.1.1" style="width:42.7pt;"><span class="ltx_text" id="S5.T2.2.19.18.1.1.1.1" style="font-size:90%;">18</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T2.2.19.18.2" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T2.2.19.18.2.1">
<span class="ltx_p" id="S5.T2.2.19.18.2.1.1" style="width:184.9pt;"><span class="ltx_text" id="S5.T2.2.19.18.2.1.1.1" style="font-size:90%;">Is &lt;sks&gt; visible anywhere?</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T2.2.19.18.3" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T2.2.19.18.3.1">
<span class="ltx_p" id="S5.T2.2.19.18.3.1.1" style="width:156.5pt;"><span class="ltx_text" id="S5.T2.2.19.18.3.1.1.1" style="font-size:90%;">&lt;sks&gt; is visible.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.T2.2.20.19">
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T2.2.20.19.1" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T2.2.20.19.1.1">
<span class="ltx_p" id="S5.T2.2.20.19.1.1.1" style="width:42.7pt;"><span class="ltx_text" id="S5.T2.2.20.19.1.1.1.1" style="font-size:90%;">19</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T2.2.20.19.2" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T2.2.20.19.2.1">
<span class="ltx_p" id="S5.T2.2.20.19.2.1.1" style="width:184.9pt;"><span class="ltx_text" id="S5.T2.2.20.19.2.1.1.1" style="font-size:90%;">Can you see &lt;sks&gt;?</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T2.2.20.19.3" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T2.2.20.19.3.1">
<span class="ltx_p" id="S5.T2.2.20.19.3.1.1" style="width:156.5pt;"><span class="ltx_text" id="S5.T2.2.20.19.3.1.1.1" style="font-size:90%;">Yes, &lt;sks&gt; has been captured.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.T2.2.21.20">
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T2.2.21.20.1" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T2.2.21.20.1.1">
<span class="ltx_p" id="S5.T2.2.21.20.1.1.1" style="width:42.7pt;"><span class="ltx_text" id="S5.T2.2.21.20.1.1.1.1" style="font-size:90%;">20</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T2.2.21.20.2" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T2.2.21.20.2.1">
<span class="ltx_p" id="S5.T2.2.21.20.2.1.1" style="width:184.9pt;"><span class="ltx_text" id="S5.T2.2.21.20.2.1.1.1" style="font-size:90%;">Is &lt;sks&gt; in this video?</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T2.2.21.20.3" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T2.2.21.20.3.1">
<span class="ltx_p" id="S5.T2.2.21.20.3.1.1" style="width:156.5pt;"><span class="ltx_text" id="S5.T2.2.21.20.3.1.1.1" style="font-size:90%;">The video clearly shows &lt;sks&gt;.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.T2.2.22.21">
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T2.2.22.21.1" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T2.2.22.21.1.1">
<span class="ltx_p" id="S5.T2.2.22.21.1.1.1" style="width:42.7pt;"><span class="ltx_text" id="S5.T2.2.22.21.1.1.1.1" style="font-size:90%;">21</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T2.2.22.21.2" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T2.2.22.21.2.1">
<span class="ltx_p" id="S5.T2.2.22.21.2.1.1" style="width:184.9pt;"><span class="ltx_text" id="S5.T2.2.22.21.2.1.1.1" style="font-size:90%;">Can you recognize &lt;sks&gt;?</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T2.2.22.21.3" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T2.2.22.21.3.1">
<span class="ltx_p" id="S5.T2.2.22.21.3.1.1" style="width:156.5pt;"><span class="ltx_text" id="S5.T2.2.22.21.3.1.1.1" style="font-size:90%;">I’ve spotted &lt;sks&gt;.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.T2.2.23.22">
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T2.2.23.22.1" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T2.2.23.22.1.1">
<span class="ltx_p" id="S5.T2.2.23.22.1.1.1" style="width:42.7pt;"><span class="ltx_text" id="S5.T2.2.23.22.1.1.1.1" style="font-size:90%;">22</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T2.2.23.22.2" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T2.2.23.22.2.1">
<span class="ltx_p" id="S5.T2.2.23.22.2.1.1" style="width:184.9pt;"><span class="ltx_text" id="S5.T2.2.23.22.2.1.1.1" style="font-size:90%;">Does &lt;sks&gt; appear at all?</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T2.2.23.22.3" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T2.2.23.22.3.1">
<span class="ltx_p" id="S5.T2.2.23.22.3.1.1" style="width:156.5pt;"><span class="ltx_text" id="S5.T2.2.23.22.3.1.1.1" style="font-size:90%;">&lt;sks&gt; appears in this video.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.T2.2.24.23">
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T2.2.24.23.1" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T2.2.24.23.1.1">
<span class="ltx_p" id="S5.T2.2.24.23.1.1.1" style="width:42.7pt;"><span class="ltx_text" id="S5.T2.2.24.23.1.1.1.1" style="font-size:90%;">23</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T2.2.24.23.2" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T2.2.24.23.2.1">
<span class="ltx_p" id="S5.T2.2.24.23.2.1.1" style="width:184.9pt;"><span class="ltx_text" id="S5.T2.2.24.23.2.1.1.1" style="font-size:90%;">Is &lt;sks&gt; recorded here?</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T2.2.24.23.3" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T2.2.24.23.3.1">
<span class="ltx_p" id="S5.T2.2.24.23.3.1.1" style="width:156.5pt;"><span class="ltx_text" id="S5.T2.2.24.23.3.1.1.1" style="font-size:90%;">Yes, this footage contains &lt;sks&gt;.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.T2.2.25.24">
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T2.2.25.24.1" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T2.2.25.24.1.1">
<span class="ltx_p" id="S5.T2.2.25.24.1.1.1" style="width:42.7pt;"><span class="ltx_text" id="S5.T2.2.25.24.1.1.1.1" style="font-size:90%;">24</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T2.2.25.24.2" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T2.2.25.24.2.1">
<span class="ltx_p" id="S5.T2.2.25.24.2.1.1" style="width:184.9pt;"><span class="ltx_text" id="S5.T2.2.25.24.2.1.1.1" style="font-size:90%;">Can you identify &lt;sks&gt;?</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T2.2.25.24.3" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T2.2.25.24.3.1">
<span class="ltx_p" id="S5.T2.2.25.24.3.1.1" style="width:156.5pt;"><span class="ltx_text" id="S5.T2.2.25.24.3.1.1.1" style="font-size:90%;">I can recognize &lt;sks&gt;.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.T2.2.26.25">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb" id="S5.T2.2.26.25.1" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T2.2.26.25.1.1">
<span class="ltx_p" id="S5.T2.2.26.25.1.1.1" style="width:42.7pt;"><span class="ltx_text" id="S5.T2.2.26.25.1.1.1.1" style="font-size:90%;">25</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb" id="S5.T2.2.26.25.2" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T2.2.26.25.2.1">
<span class="ltx_p" id="S5.T2.2.26.25.2.1.1" style="width:184.9pt;"><span class="ltx_text" id="S5.T2.2.26.25.2.1.1.1" style="font-size:90%;">Is &lt;sks&gt; present?</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb" id="S5.T2.2.26.25.3" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T2.2.26.25.3.1">
<span class="ltx_p" id="S5.T2.2.26.25.3.1.1" style="width:156.5pt;"><span class="ltx_text" id="S5.T2.2.26.25.3.1.1.1" style="font-size:90%;">&lt;sks&gt; is clearly visible.</span></span>
</span>
</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents 25 example questions and their corresponding positive answers related to verifying the existence of a single entity (person) within a video.  Each question is phrased differently to explore variations in natural language, ensuring the model is robust to diverse queries.  The answers consistently confirm the presence of the specified entity.
> <details>
> <summary>read the caption</summary>
> Table 2:  Example of positive existence verification answering (Single entity).
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S5.T3.2">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S5.T3.2.1.1">
<th class="ltx_td ltx_align_justify ltx_align_top ltx_th ltx_th_column ltx_border_tt" id="S5.T3.2.1.1.1" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T3.2.1.1.1.1">
<span class="ltx_p" id="S5.T3.2.1.1.1.1.1" style="width:42.7pt;"><span class="ltx_text ltx_font_bold" id="S5.T3.2.1.1.1.1.1.1" style="font-size:90%;">Index</span></span>
</span>
</th>
<th class="ltx_td ltx_align_justify ltx_align_top ltx_th ltx_th_column ltx_border_tt" id="S5.T3.2.1.1.2" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T3.2.1.1.2.1">
<span class="ltx_p" id="S5.T3.2.1.1.2.1.1" style="width:184.9pt;"><span class="ltx_text ltx_font_bold" id="S5.T3.2.1.1.2.1.1.1" style="font-size:90%;">Question</span></span>
</span>
</th>
<th class="ltx_td ltx_align_justify ltx_align_top ltx_th ltx_th_column ltx_border_tt" id="S5.T3.2.1.1.3" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T3.2.1.1.3.1">
<span class="ltx_p" id="S5.T3.2.1.1.3.1.1" style="width:184.9pt;"><span class="ltx_text ltx_font_bold" id="S5.T3.2.1.1.3.1.1.1" style="font-size:90%;">No Answer</span></span>
</span>
</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S5.T3.2.2.1">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S5.T3.2.2.1.1" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T3.2.2.1.1.1">
<span class="ltx_p" id="S5.T3.2.2.1.1.1.1" style="width:42.7pt;"><span class="ltx_text" id="S5.T3.2.2.1.1.1.1.1" style="font-size:90%;">1</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S5.T3.2.2.1.2" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T3.2.2.1.2.1">
<span class="ltx_p" id="S5.T3.2.2.1.2.1.1" style="width:184.9pt;"><span class="ltx_text" id="S5.T3.2.2.1.2.1.1.1" style="font-size:90%;">Is there any trace of &lt;sks&gt; in this footage?</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S5.T3.2.2.1.3" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T3.2.2.1.3.1">
<span class="ltx_p" id="S5.T3.2.2.1.3.1.1" style="width:184.9pt;"><span class="ltx_text" id="S5.T3.2.2.1.3.1.1.1" style="font-size:90%;">No, &lt;sks&gt; is not in this video.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.T3.2.3.2">
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T3.2.3.2.1" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T3.2.3.2.1.1">
<span class="ltx_p" id="S5.T3.2.3.2.1.1.1" style="width:42.7pt;"><span class="ltx_text" id="S5.T3.2.3.2.1.1.1.1" style="font-size:90%;">2</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T3.2.3.2.2" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T3.2.3.2.2.1">
<span class="ltx_p" id="S5.T3.2.3.2.2.1.1" style="width:184.9pt;"><span class="ltx_text" id="S5.T3.2.3.2.2.1.1.1" style="font-size:90%;">Can you detect &lt;sks&gt; in this video clip?</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T3.2.3.2.3" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T3.2.3.2.3.1">
<span class="ltx_p" id="S5.T3.2.3.2.3.1.1" style="width:184.9pt;"><span class="ltx_text" id="S5.T3.2.3.2.3.1.1.1" style="font-size:90%;">I cannot detect &lt;sks&gt;.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.T3.2.4.3">
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T3.2.4.3.1" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T3.2.4.3.1.1">
<span class="ltx_p" id="S5.T3.2.4.3.1.1.1" style="width:42.7pt;"><span class="ltx_text" id="S5.T3.2.4.3.1.1.1.1" style="font-size:90%;">3</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T3.2.4.3.2" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T3.2.4.3.2.1">
<span class="ltx_p" id="S5.T3.2.4.3.2.1.1" style="width:184.9pt;"><span class="ltx_text" id="S5.T3.2.4.3.2.1.1.1" style="font-size:90%;">Does &lt;sks&gt; show up anywhere in this recording?</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T3.2.4.3.3" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T3.2.4.3.3.1">
<span class="ltx_p" id="S5.T3.2.4.3.3.1.1" style="width:184.9pt;"><span class="ltx_text" id="S5.T3.2.4.3.3.1.1.1" style="font-size:90%;">This video does not contain &lt;sks&gt;.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.T3.2.5.4">
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T3.2.5.4.1" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T3.2.5.4.1.1">
<span class="ltx_p" id="S5.T3.2.5.4.1.1.1" style="width:42.7pt;"><span class="ltx_text" id="S5.T3.2.5.4.1.1.1.1" style="font-size:90%;">4</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T3.2.5.4.2" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T3.2.5.4.2.1">
<span class="ltx_p" id="S5.T3.2.5.4.2.1.1" style="width:184.9pt;"><span class="ltx_text" id="S5.T3.2.5.4.2.1.1.1" style="font-size:90%;">Is &lt;sks&gt; visible in this video?</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T3.2.5.4.3" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T3.2.5.4.3.1">
<span class="ltx_p" id="S5.T3.2.5.4.3.1.1" style="width:184.9pt;"><span class="ltx_text" id="S5.T3.2.5.4.3.1.1.1" style="font-size:90%;">&lt;sks&gt; is not shown.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.T3.2.6.5">
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T3.2.6.5.1" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T3.2.6.5.1.1">
<span class="ltx_p" id="S5.T3.2.6.5.1.1.1" style="width:42.7pt;"><span class="ltx_text" id="S5.T3.2.6.5.1.1.1.1" style="font-size:90%;">5</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T3.2.6.5.2" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T3.2.6.5.2.1">
<span class="ltx_p" id="S5.T3.2.6.5.2.1.1" style="width:184.9pt;"><span class="ltx_text" id="S5.T3.2.6.5.2.1.1.1" style="font-size:90%;">Could you verify if &lt;sks&gt; is here?</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T3.2.6.5.3" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T3.2.6.5.3.1">
<span class="ltx_p" id="S5.T3.2.6.5.3.1.1" style="width:184.9pt;"><span class="ltx_text" id="S5.T3.2.6.5.3.1.1.1" style="font-size:90%;">There is no sign of &lt;sks&gt;.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.T3.2.7.6">
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T3.2.7.6.1" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T3.2.7.6.1.1">
<span class="ltx_p" id="S5.T3.2.7.6.1.1.1" style="width:42.7pt;"><span class="ltx_text" id="S5.T3.2.7.6.1.1.1.1" style="font-size:90%;">6</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T3.2.7.6.2" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T3.2.7.6.2.1">
<span class="ltx_p" id="S5.T3.2.7.6.2.1.1" style="width:184.9pt;"><span class="ltx_text" id="S5.T3.2.7.6.2.1.1.1" style="font-size:90%;">Does this footage include &lt;sks&gt;?</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T3.2.7.6.3" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T3.2.7.6.3.1">
<span class="ltx_p" id="S5.T3.2.7.6.3.1.1" style="width:184.9pt;"><span class="ltx_text" id="S5.T3.2.7.6.3.1.1.1" style="font-size:90%;">&lt;sks&gt; does not appear.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.T3.2.8.7">
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T3.2.8.7.1" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T3.2.8.7.1.1">
<span class="ltx_p" id="S5.T3.2.8.7.1.1.1" style="width:42.7pt;"><span class="ltx_text" id="S5.T3.2.8.7.1.1.1.1" style="font-size:90%;">7</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T3.2.8.7.2" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T3.2.8.7.2.1">
<span class="ltx_p" id="S5.T3.2.8.7.2.1.1" style="width:184.9pt;"><span class="ltx_text" id="S5.T3.2.8.7.2.1.1.1" style="font-size:90%;">Can you spot &lt;sks&gt; in this clip?</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T3.2.8.7.3" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T3.2.8.7.3.1">
<span class="ltx_p" id="S5.T3.2.8.7.3.1.1" style="width:184.9pt;"><span class="ltx_text" id="S5.T3.2.8.7.3.1.1.1" style="font-size:90%;">I can confirm &lt;sks&gt; is not here.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.T3.2.9.8">
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T3.2.9.8.1" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T3.2.9.8.1.1">
<span class="ltx_p" id="S5.T3.2.9.8.1.1.1" style="width:42.7pt;"><span class="ltx_text" id="S5.T3.2.9.8.1.1.1.1" style="font-size:90%;">8</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T3.2.9.8.2" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T3.2.9.8.2.1">
<span class="ltx_p" id="S5.T3.2.9.8.2.1.1" style="width:184.9pt;"><span class="ltx_text" id="S5.T3.2.9.8.2.1.1.1" style="font-size:90%;">Is &lt;sks&gt; present in this video?</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T3.2.9.8.3" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T3.2.9.8.3.1">
<span class="ltx_p" id="S5.T3.2.9.8.3.1.1" style="width:184.9pt;"><span class="ltx_text" id="S5.T3.2.9.8.3.1.1.1" style="font-size:90%;">The footage does not include &lt;sks&gt;.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.T3.2.10.9">
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T3.2.10.9.1" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T3.2.10.9.1.1">
<span class="ltx_p" id="S5.T3.2.10.9.1.1.1" style="width:42.7pt;"><span class="ltx_text" id="S5.T3.2.10.9.1.1.1.1" style="font-size:90%;">9</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T3.2.10.9.2" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T3.2.10.9.2.1">
<span class="ltx_p" id="S5.T3.2.10.9.2.1.1" style="width:184.9pt;"><span class="ltx_text" id="S5.T3.2.10.9.2.1.1.1" style="font-size:90%;">Does &lt;sks&gt; appear in this footage?</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T3.2.10.9.3" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T3.2.10.9.3.1">
<span class="ltx_p" id="S5.T3.2.10.9.3.1.1" style="width:184.9pt;"><span class="ltx_text" id="S5.T3.2.10.9.3.1.1.1" style="font-size:90%;">There’s no evidence of &lt;sks&gt;.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.T3.2.11.10">
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T3.2.11.10.1" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T3.2.11.10.1.1">
<span class="ltx_p" id="S5.T3.2.11.10.1.1.1" style="width:42.7pt;"><span class="ltx_text" id="S5.T3.2.11.10.1.1.1.1" style="font-size:90%;">10</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T3.2.11.10.2" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T3.2.11.10.2.1">
<span class="ltx_p" id="S5.T3.2.11.10.2.1.1" style="width:184.9pt;"><span class="ltx_text" id="S5.T3.2.11.10.2.1.1.1" style="font-size:90%;">Can you tell if &lt;sks&gt; is shown here?</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T3.2.11.10.3" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T3.2.11.10.3.1">
<span class="ltx_p" id="S5.T3.2.11.10.3.1.1" style="width:184.9pt;"><span class="ltx_text" id="S5.T3.2.11.10.3.1.1.1" style="font-size:90%;">&lt;sks&gt; is not in this video.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.T3.2.12.11">
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T3.2.12.11.1" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T3.2.12.11.1.1">
<span class="ltx_p" id="S5.T3.2.12.11.1.1.1" style="width:42.7pt;"><span class="ltx_text" id="S5.T3.2.12.11.1.1.1.1" style="font-size:90%;">11</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T3.2.12.11.2" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T3.2.12.11.2.1">
<span class="ltx_p" id="S5.T3.2.12.11.2.1.1" style="width:184.9pt;"><span class="ltx_text" id="S5.T3.2.12.11.2.1.1.1" style="font-size:90%;">Is &lt;sks&gt; in this video segment?</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T3.2.12.11.3" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T3.2.12.11.3.1">
<span class="ltx_p" id="S5.T3.2.12.11.3.1.1" style="width:184.9pt;"><span class="ltx_text" id="S5.T3.2.12.11.3.1.1.1" style="font-size:90%;">I’ve checked, &lt;sks&gt; is not present.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.T3.2.13.12">
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T3.2.13.12.1" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T3.2.13.12.1.1">
<span class="ltx_p" id="S5.T3.2.13.12.1.1.1" style="width:42.7pt;"><span class="ltx_text" id="S5.T3.2.13.12.1.1.1.1" style="font-size:90%;">12</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T3.2.13.12.2" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T3.2.13.12.2.1">
<span class="ltx_p" id="S5.T3.2.13.12.2.1.1" style="width:184.9pt;"><span class="ltx_text" id="S5.T3.2.13.12.2.1.1.1" style="font-size:90%;">Can you confirm &lt;sks&gt;’s presence?</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T3.2.13.12.3" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T3.2.13.12.3.1">
<span class="ltx_p" id="S5.T3.2.13.12.3.1.1" style="width:184.9pt;"><span class="ltx_text" id="S5.T3.2.13.12.3.1.1.1" style="font-size:90%;">This video does not show &lt;sks&gt;.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.T3.2.14.13">
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T3.2.14.13.1" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T3.2.14.13.1.1">
<span class="ltx_p" id="S5.T3.2.14.13.1.1.1" style="width:42.7pt;"><span class="ltx_text" id="S5.T3.2.14.13.1.1.1.1" style="font-size:90%;">13</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T3.2.14.13.2" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T3.2.14.13.2.1">
<span class="ltx_p" id="S5.T3.2.14.13.2.1.1" style="width:184.9pt;"><span class="ltx_text" id="S5.T3.2.14.13.2.1.1.1" style="font-size:90%;">Does this clip contain &lt;sks&gt;?</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T3.2.14.13.3" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T3.2.14.13.3.1">
<span class="ltx_p" id="S5.T3.2.14.13.3.1.1" style="width:184.9pt;"><span class="ltx_text" id="S5.T3.2.14.13.3.1.1.1" style="font-size:90%;">I see no sign of &lt;sks&gt;.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.T3.2.15.14">
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T3.2.15.14.1" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T3.2.15.14.1.1">
<span class="ltx_p" id="S5.T3.2.15.14.1.1.1" style="width:42.7pt;"><span class="ltx_text" id="S5.T3.2.15.14.1.1.1.1" style="font-size:90%;">14</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T3.2.15.14.2" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T3.2.15.14.2.1">
<span class="ltx_p" id="S5.T3.2.15.14.2.1.1" style="width:184.9pt;"><span class="ltx_text" id="S5.T3.2.15.14.2.1.1.1" style="font-size:90%;">Is &lt;sks&gt; featured in this recording?</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T3.2.15.14.3" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T3.2.15.14.3.1">
<span class="ltx_p" id="S5.T3.2.15.14.3.1.1" style="width:184.9pt;"><span class="ltx_text" id="S5.T3.2.15.14.3.1.1.1" style="font-size:90%;">&lt;sks&gt; is absent.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.T3.2.16.15">
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T3.2.16.15.1" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T3.2.16.15.1.1">
<span class="ltx_p" id="S5.T3.2.16.15.1.1.1" style="width:42.7pt;"><span class="ltx_text" id="S5.T3.2.16.15.1.1.1.1" style="font-size:90%;">15</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T3.2.16.15.2" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T3.2.16.15.2.1">
<span class="ltx_p" id="S5.T3.2.16.15.2.1.1" style="width:184.9pt;"><span class="ltx_text" id="S5.T3.2.16.15.2.1.1.1" style="font-size:90%;">Can you find &lt;sks&gt; in this video?</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T3.2.16.15.3" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T3.2.16.15.3.1">
<span class="ltx_p" id="S5.T3.2.16.15.3.1.1" style="width:184.9pt;"><span class="ltx_text" id="S5.T3.2.16.15.3.1.1.1" style="font-size:90%;">The video does not show &lt;sks&gt;.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.T3.2.17.16">
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T3.2.17.16.1" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T3.2.17.16.1.1">
<span class="ltx_p" id="S5.T3.2.17.16.1.1.1" style="width:42.7pt;"><span class="ltx_text" id="S5.T3.2.17.16.1.1.1.1" style="font-size:90%;">16</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T3.2.17.16.2" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T3.2.17.16.2.1">
<span class="ltx_p" id="S5.T3.2.17.16.2.1.1" style="width:184.9pt;"><span class="ltx_text" id="S5.T3.2.17.16.2.1.1.1" style="font-size:90%;">Is &lt;sks&gt; shown in any frame?</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T3.2.17.16.3" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T3.2.17.16.3.1">
<span class="ltx_p" id="S5.T3.2.17.16.3.1.1" style="width:184.9pt;"><span class="ltx_text" id="S5.T3.2.17.16.3.1.1.1" style="font-size:90%;">I cannot find &lt;sks&gt;.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.T3.2.18.17">
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T3.2.18.17.1" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T3.2.18.17.1.1">
<span class="ltx_p" id="S5.T3.2.18.17.1.1.1" style="width:42.7pt;"><span class="ltx_text" id="S5.T3.2.18.17.1.1.1.1" style="font-size:90%;">17</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T3.2.18.17.2" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T3.2.18.17.2.1">
<span class="ltx_p" id="S5.T3.2.18.17.2.1.1" style="width:184.9pt;"><span class="ltx_text" id="S5.T3.2.18.17.2.1.1.1" style="font-size:90%;">Does this video show &lt;sks&gt;?</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T3.2.18.17.3" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T3.2.18.17.3.1">
<span class="ltx_p" id="S5.T3.2.18.17.3.1.1" style="width:184.9pt;"><span class="ltx_text" id="S5.T3.2.18.17.3.1.1.1" style="font-size:90%;">&lt;sks&gt; is not visible.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.T3.2.19.18">
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T3.2.19.18.1" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T3.2.19.18.1.1">
<span class="ltx_p" id="S5.T3.2.19.18.1.1.1" style="width:42.7pt;"><span class="ltx_text" id="S5.T3.2.19.18.1.1.1.1" style="font-size:90%;">18</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T3.2.19.18.2" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T3.2.19.18.2.1">
<span class="ltx_p" id="S5.T3.2.19.18.2.1.1" style="width:184.9pt;"><span class="ltx_text" id="S5.T3.2.19.18.2.1.1.1" style="font-size:90%;">Is &lt;sks&gt; visible anywhere?</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T3.2.19.18.3" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T3.2.19.18.3.1">
<span class="ltx_p" id="S5.T3.2.19.18.3.1.1" style="width:184.9pt;"><span class="ltx_text" id="S5.T3.2.19.18.3.1.1.1" style="font-size:90%;">I can verify &lt;sks&gt; is not here.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.T3.2.20.19">
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T3.2.20.19.1" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T3.2.20.19.1.1">
<span class="ltx_p" id="S5.T3.2.20.19.1.1.1" style="width:42.7pt;"><span class="ltx_text" id="S5.T3.2.20.19.1.1.1.1" style="font-size:90%;">19</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T3.2.20.19.2" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T3.2.20.19.2.1">
<span class="ltx_p" id="S5.T3.2.20.19.2.1.1" style="width:184.9pt;"><span class="ltx_text" id="S5.T3.2.20.19.2.1.1.1" style="font-size:90%;">Can you see &lt;sks&gt;?</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T3.2.20.19.3" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T3.2.20.19.3.1">
<span class="ltx_p" id="S5.T3.2.20.19.3.1.1" style="width:184.9pt;"><span class="ltx_text" id="S5.T3.2.20.19.3.1.1.1" style="font-size:90%;">The video has no &lt;sks&gt;.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.T3.2.21.20">
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T3.2.21.20.1" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T3.2.21.20.1.1">
<span class="ltx_p" id="S5.T3.2.21.20.1.1.1" style="width:42.7pt;"><span class="ltx_text" id="S5.T3.2.21.20.1.1.1.1" style="font-size:90%;">20</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T3.2.21.20.2" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T3.2.21.20.2.1">
<span class="ltx_p" id="S5.T3.2.21.20.2.1.1" style="width:184.9pt;"><span class="ltx_text" id="S5.T3.2.21.20.2.1.1.1" style="font-size:90%;">Is &lt;sks&gt; in this video?</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T3.2.21.20.3" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T3.2.21.20.3.1">
<span class="ltx_p" id="S5.T3.2.21.20.3.1.1" style="width:184.9pt;"><span class="ltx_text" id="S5.T3.2.21.20.3.1.1.1" style="font-size:90%;">&lt;sks&gt; does not exist in this video.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.T3.2.22.21">
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T3.2.22.21.1" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T3.2.22.21.1.1">
<span class="ltx_p" id="S5.T3.2.22.21.1.1.1" style="width:42.7pt;"><span class="ltx_text" id="S5.T3.2.22.21.1.1.1.1" style="font-size:90%;">21</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T3.2.22.21.2" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T3.2.22.21.2.1">
<span class="ltx_p" id="S5.T3.2.22.21.2.1.1" style="width:184.9pt;"><span class="ltx_text" id="S5.T3.2.22.21.2.1.1.1" style="font-size:90%;">Can you recognize &lt;sks&gt;?</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T3.2.22.21.3" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T3.2.22.21.3.1">
<span class="ltx_p" id="S5.T3.2.22.21.3.1.1" style="width:184.9pt;"><span class="ltx_text" id="S5.T3.2.22.21.3.1.1.1" style="font-size:90%;">I find no trace of &lt;sks&gt;.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.T3.2.23.22">
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T3.2.23.22.1" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T3.2.23.22.1.1">
<span class="ltx_p" id="S5.T3.2.23.22.1.1.1" style="width:42.7pt;"><span class="ltx_text" id="S5.T3.2.23.22.1.1.1.1" style="font-size:90%;">22</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T3.2.23.22.2" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T3.2.23.22.2.1">
<span class="ltx_p" id="S5.T3.2.23.22.2.1.1" style="width:184.9pt;"><span class="ltx_text" id="S5.T3.2.23.22.2.1.1.1" style="font-size:90%;">Does &lt;sks&gt; appear at all?</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T3.2.23.22.3" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T3.2.23.22.3.1">
<span class="ltx_p" id="S5.T3.2.23.22.3.1.1" style="width:184.9pt;"><span class="ltx_text" id="S5.T3.2.23.22.3.1.1.1" style="font-size:90%;">This clip does not contain &lt;sks&gt;.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.T3.2.24.23">
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T3.2.24.23.1" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T3.2.24.23.1.1">
<span class="ltx_p" id="S5.T3.2.24.23.1.1.1" style="width:42.7pt;"><span class="ltx_text" id="S5.T3.2.24.23.1.1.1.1" style="font-size:90%;">23</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T3.2.24.23.2" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T3.2.24.23.2.1">
<span class="ltx_p" id="S5.T3.2.24.23.2.1.1" style="width:184.9pt;"><span class="ltx_text" id="S5.T3.2.24.23.2.1.1.1" style="font-size:90%;">Is &lt;sks&gt; recorded here?</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T3.2.24.23.3" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T3.2.24.23.3.1">
<span class="ltx_p" id="S5.T3.2.24.23.3.1.1" style="width:184.9pt;"><span class="ltx_text" id="S5.T3.2.24.23.3.1.1.1" style="font-size:90%;">&lt;sks&gt; is not present.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.T3.2.25.24">
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T3.2.25.24.1" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T3.2.25.24.1.1">
<span class="ltx_p" id="S5.T3.2.25.24.1.1.1" style="width:42.7pt;"><span class="ltx_text" id="S5.T3.2.25.24.1.1.1.1" style="font-size:90%;">24</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T3.2.25.24.2" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T3.2.25.24.2.1">
<span class="ltx_p" id="S5.T3.2.25.24.2.1.1" style="width:184.9pt;"><span class="ltx_text" id="S5.T3.2.25.24.2.1.1.1" style="font-size:90%;">Can you identify &lt;sks&gt;?</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T3.2.25.24.3" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T3.2.25.24.3.1">
<span class="ltx_p" id="S5.T3.2.25.24.3.1.1" style="width:184.9pt;"><span class="ltx_text" id="S5.T3.2.25.24.3.1.1.1" style="font-size:90%;">I cannot identify &lt;sks&gt;.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.T3.2.26.25">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb" id="S5.T3.2.26.25.1" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T3.2.26.25.1.1">
<span class="ltx_p" id="S5.T3.2.26.25.1.1.1" style="width:42.7pt;"><span class="ltx_text" id="S5.T3.2.26.25.1.1.1.1" style="font-size:90%;">25</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb" id="S5.T3.2.26.25.2" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T3.2.26.25.2.1">
<span class="ltx_p" id="S5.T3.2.26.25.2.1.1" style="width:184.9pt;"><span class="ltx_text" id="S5.T3.2.26.25.2.1.1.1" style="font-size:90%;">Is &lt;sks&gt; present?</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb" id="S5.T3.2.26.25.3" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T3.2.26.25.3.1">
<span class="ltx_p" id="S5.T3.2.26.25.3.1.1" style="width:184.9pt;"><span class="ltx_text" id="S5.T3.2.26.25.3.1.1.1" style="font-size:90%;">There is no &lt;sks&gt; here.</span></span>
</span>
</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents 25 examples of questions and answers related to the absence of a single person in a video.  Each question asks if a specific individual is present or visible in the video clip.  The answers are consistently 'no,' indicating that the person is not found in the video.
> <details>
> <summary>read the caption</summary>
> Table 3:  Example of negative existence verification answering (Single entity).
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S5.T4.2">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S5.T4.2.1.1">
<th class="ltx_td ltx_align_justify ltx_align_top ltx_th ltx_th_column ltx_border_tt" id="S5.T4.2.1.1.1" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T4.2.1.1.1.1">
<span class="ltx_p" id="S5.T4.2.1.1.1.1.1" style="width:42.7pt;"><span class="ltx_text ltx_font_bold" id="S5.T4.2.1.1.1.1.1.1" style="font-size:90%;">Index</span></span>
</span>
</th>
<th class="ltx_td ltx_align_justify ltx_align_top ltx_th ltx_th_column ltx_border_tt" id="S5.T4.2.1.1.2" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T4.2.1.1.2.1">
<span class="ltx_p" id="S5.T4.2.1.1.2.1.1" style="width:184.9pt;"><span class="ltx_text ltx_font_bold" id="S5.T4.2.1.1.2.1.1.1" style="font-size:90%;">Question</span></span>
</span>
</th>
<th class="ltx_td ltx_align_justify ltx_align_top ltx_th ltx_th_column ltx_border_tt" id="S5.T4.2.1.1.3" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T4.2.1.1.3.1">
<span class="ltx_p" id="S5.T4.2.1.1.3.1.1" style="width:184.9pt;"><span class="ltx_text ltx_font_bold" id="S5.T4.2.1.1.3.1.1.1" style="font-size:90%;">Both Yes Answer</span></span>
</span>
</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S5.T4.2.2.1">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S5.T4.2.2.1.1" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T4.2.2.1.1.1">
<span class="ltx_p" id="S5.T4.2.2.1.1.1.1" style="width:42.7pt;"><span class="ltx_text" id="S5.T4.2.2.1.1.1.1.1" style="font-size:90%;">1</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S5.T4.2.2.1.2" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T4.2.2.1.2.1">
<span class="ltx_p" id="S5.T4.2.2.1.2.1.1" style="width:184.9pt;"><span class="ltx_text" id="S5.T4.2.2.1.2.1.1.1" style="font-size:90%;">Is there any trace of &lt;sks1&gt; or &lt;sks2&gt; in this footage?</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S5.T4.2.2.1.3" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T4.2.2.1.3.1">
<span class="ltx_p" id="S5.T4.2.2.1.3.1.1" style="width:184.9pt;"><span class="ltx_text" id="S5.T4.2.2.1.3.1.1.1" style="font-size:90%;">Both &lt;sks1&gt; and &lt;sks2&gt; are present in this video.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.T4.2.3.2">
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T4.2.3.2.1" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T4.2.3.2.1.1">
<span class="ltx_p" id="S5.T4.2.3.2.1.1.1" style="width:42.7pt;"><span class="ltx_text" id="S5.T4.2.3.2.1.1.1.1" style="font-size:90%;">2</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T4.2.3.2.2" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T4.2.3.2.2.1">
<span class="ltx_p" id="S5.T4.2.3.2.2.1.1" style="width:184.9pt;"><span class="ltx_text" id="S5.T4.2.3.2.2.1.1.1" style="font-size:90%;">Can you detect &lt;sks1&gt; or &lt;sks2&gt; in this video clip?</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T4.2.3.2.3" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T4.2.3.2.3.1">
<span class="ltx_p" id="S5.T4.2.3.2.3.1.1" style="width:184.9pt;"><span class="ltx_text" id="S5.T4.2.3.2.3.1.1.1" style="font-size:90%;">I can detect both &lt;sks1&gt; and &lt;sks2&gt; in the footage.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.T4.2.4.3">
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T4.2.4.3.1" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T4.2.4.3.1.1">
<span class="ltx_p" id="S5.T4.2.4.3.1.1.1" style="width:42.7pt;"><span class="ltx_text" id="S5.T4.2.4.3.1.1.1.1" style="font-size:90%;">3</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T4.2.4.3.2" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T4.2.4.3.2.1">
<span class="ltx_p" id="S5.T4.2.4.3.2.1.1" style="width:184.9pt;"><span class="ltx_text" id="S5.T4.2.4.3.2.1.1.1" style="font-size:90%;">Do &lt;sks1&gt; or &lt;sks2&gt; show up anywhere in this recording?</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T4.2.4.3.3" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T4.2.4.3.3.1">
<span class="ltx_p" id="S5.T4.2.4.3.3.1.1" style="width:184.9pt;"><span class="ltx_text" id="S5.T4.2.4.3.3.1.1.1" style="font-size:90%;">The video shows both &lt;sks1&gt; and &lt;sks2&gt; clearly.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.T4.2.5.4">
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T4.2.5.4.1" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T4.2.5.4.1.1">
<span class="ltx_p" id="S5.T4.2.5.4.1.1.1" style="width:42.7pt;"><span class="ltx_text" id="S5.T4.2.5.4.1.1.1.1" style="font-size:90%;">4</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T4.2.5.4.2" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T4.2.5.4.2.1">
<span class="ltx_p" id="S5.T4.2.5.4.2.1.1" style="width:184.9pt;"><span class="ltx_text" id="S5.T4.2.5.4.2.1.1.1" style="font-size:90%;">Are &lt;sks1&gt; or &lt;sks2&gt; visible in this video?</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T4.2.5.4.3" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T4.2.5.4.3.1">
<span class="ltx_p" id="S5.T4.2.5.4.3.1.1" style="width:184.9pt;"><span class="ltx_text" id="S5.T4.2.5.4.3.1.1.1" style="font-size:90%;">&lt;sks1&gt; and &lt;sks2&gt; are both visible in this recording.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.T4.2.6.5">
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T4.2.6.5.1" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T4.2.6.5.1.1">
<span class="ltx_p" id="S5.T4.2.6.5.1.1.1" style="width:42.7pt;"><span class="ltx_text" id="S5.T4.2.6.5.1.1.1.1" style="font-size:90%;">5</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T4.2.6.5.2" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T4.2.6.5.2.1">
<span class="ltx_p" id="S5.T4.2.6.5.2.1.1" style="width:184.9pt;"><span class="ltx_text" id="S5.T4.2.6.5.2.1.1.1" style="font-size:90%;">Could you verify if &lt;sks1&gt; or &lt;sks2&gt; are here?</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T4.2.6.5.3" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T4.2.6.5.3.1">
<span class="ltx_p" id="S5.T4.2.6.5.3.1.1" style="width:184.9pt;"><span class="ltx_text" id="S5.T4.2.6.5.3.1.1.1" style="font-size:90%;">I’ve identified both &lt;sks1&gt; and &lt;sks2&gt; in the clip.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.T4.2.7.6">
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T4.2.7.6.1" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T4.2.7.6.1.1">
<span class="ltx_p" id="S5.T4.2.7.6.1.1.1" style="width:42.7pt;"><span class="ltx_text" id="S5.T4.2.7.6.1.1.1.1" style="font-size:90%;">6</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T4.2.7.6.2" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T4.2.7.6.2.1">
<span class="ltx_p" id="S5.T4.2.7.6.2.1.1" style="width:184.9pt;"><span class="ltx_text" id="S5.T4.2.7.6.2.1.1.1" style="font-size:90%;">Does this footage include &lt;sks1&gt; or &lt;sks2&gt;?</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T4.2.7.6.3" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T4.2.7.6.3.1">
<span class="ltx_p" id="S5.T4.2.7.6.3.1.1" style="width:184.9pt;"><span class="ltx_text" id="S5.T4.2.7.6.3.1.1.1" style="font-size:90%;">Both &lt;sks1&gt; and &lt;sks2&gt; appear in this video.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.T4.2.8.7">
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T4.2.8.7.1" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T4.2.8.7.1.1">
<span class="ltx_p" id="S5.T4.2.8.7.1.1.1" style="width:42.7pt;"><span class="ltx_text" id="S5.T4.2.8.7.1.1.1.1" style="font-size:90%;">7</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T4.2.8.7.2" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T4.2.8.7.2.1">
<span class="ltx_p" id="S5.T4.2.8.7.2.1.1" style="width:184.9pt;"><span class="ltx_text" id="S5.T4.2.8.7.2.1.1.1" style="font-size:90%;">Can you spot &lt;sks1&gt; or &lt;sks2&gt; in this clip?</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T4.2.8.7.3" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T4.2.8.7.3.1">
<span class="ltx_p" id="S5.T4.2.8.7.3.1.1" style="width:184.9pt;"><span class="ltx_text" id="S5.T4.2.8.7.3.1.1.1" style="font-size:90%;">The footage contains both &lt;sks1&gt; and &lt;sks2&gt;.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.T4.2.9.8">
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T4.2.9.8.1" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T4.2.9.8.1.1">
<span class="ltx_p" id="S5.T4.2.9.8.1.1.1" style="width:42.7pt;"><span class="ltx_text" id="S5.T4.2.9.8.1.1.1.1" style="font-size:90%;">8</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T4.2.9.8.2" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T4.2.9.8.2.1">
<span class="ltx_p" id="S5.T4.2.9.8.2.1.1" style="width:184.9pt;"><span class="ltx_text" id="S5.T4.2.9.8.2.1.1.1" style="font-size:90%;">Are &lt;sks1&gt; or &lt;sks2&gt; present in this video?</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T4.2.9.8.3" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T4.2.9.8.3.1">
<span class="ltx_p" id="S5.T4.2.9.8.3.1.1" style="width:184.9pt;"><span class="ltx_text" id="S5.T4.2.9.8.3.1.1.1" style="font-size:90%;">I can see both &lt;sks1&gt; and &lt;sks2&gt; in frame.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.T4.2.10.9">
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T4.2.10.9.1" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T4.2.10.9.1.1">
<span class="ltx_p" id="S5.T4.2.10.9.1.1.1" style="width:42.7pt;"><span class="ltx_text" id="S5.T4.2.10.9.1.1.1.1" style="font-size:90%;">9</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T4.2.10.9.2" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T4.2.10.9.2.1">
<span class="ltx_p" id="S5.T4.2.10.9.2.1.1" style="width:184.9pt;"><span class="ltx_text" id="S5.T4.2.10.9.2.1.1.1" style="font-size:90%;">Do &lt;sks1&gt; or &lt;sks2&gt; appear in this footage?</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T4.2.10.9.3" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T4.2.10.9.3.1">
<span class="ltx_p" id="S5.T4.2.10.9.3.1.1" style="width:184.9pt;"><span class="ltx_text" id="S5.T4.2.10.9.3.1.1.1" style="font-size:90%;">&lt;sks1&gt; and &lt;sks2&gt; are both featured in this video.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.T4.2.11.10">
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T4.2.11.10.1" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T4.2.11.10.1.1">
<span class="ltx_p" id="S5.T4.2.11.10.1.1.1" style="width:42.7pt;"><span class="ltx_text" id="S5.T4.2.11.10.1.1.1.1" style="font-size:90%;">10</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T4.2.11.10.2" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T4.2.11.10.2.1">
<span class="ltx_p" id="S5.T4.2.11.10.2.1.1" style="width:184.9pt;"><span class="ltx_text" id="S5.T4.2.11.10.2.1.1.1" style="font-size:90%;">Can you tell if &lt;sks1&gt; or &lt;sks2&gt; are shown here?</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T4.2.11.10.3" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T4.2.11.10.3.1">
<span class="ltx_p" id="S5.T4.2.11.10.3.1.1" style="width:184.9pt;"><span class="ltx_text" id="S5.T4.2.11.10.3.1.1.1" style="font-size:90%;">The recording shows both &lt;sks1&gt; and &lt;sks2&gt; present.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.T4.2.12.11">
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T4.2.12.11.1" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T4.2.12.11.1.1">
<span class="ltx_p" id="S5.T4.2.12.11.1.1.1" style="width:42.7pt;"><span class="ltx_text" id="S5.T4.2.12.11.1.1.1.1" style="font-size:90%;">11</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T4.2.12.11.2" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T4.2.12.11.2.1">
<span class="ltx_p" id="S5.T4.2.12.11.2.1.1" style="width:184.9pt;"><span class="ltx_text" id="S5.T4.2.12.11.2.1.1.1" style="font-size:90%;">Are &lt;sks1&gt; or &lt;sks2&gt; in this video segment?</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T4.2.12.11.3" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T4.2.12.11.3.1">
<span class="ltx_p" id="S5.T4.2.12.11.3.1.1" style="width:184.9pt;"><span class="ltx_text" id="S5.T4.2.12.11.3.1.1.1" style="font-size:90%;">I’ve spotted both &lt;sks1&gt; and &lt;sks2&gt; in the footage.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.T4.2.13.12">
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T4.2.13.12.1" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T4.2.13.12.1.1">
<span class="ltx_p" id="S5.T4.2.13.12.1.1.1" style="width:42.7pt;"><span class="ltx_text" id="S5.T4.2.13.12.1.1.1.1" style="font-size:90%;">12</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T4.2.13.12.2" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T4.2.13.12.2.1">
<span class="ltx_p" id="S5.T4.2.13.12.2.1.1" style="width:184.9pt;"><span class="ltx_text" id="S5.T4.2.13.12.2.1.1.1" style="font-size:90%;">Can you confirm &lt;sks1&gt; or &lt;sks2&gt;’s presence?</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T4.2.13.12.3" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T4.2.13.12.3.1">
<span class="ltx_p" id="S5.T4.2.13.12.3.1.1" style="width:184.9pt;"><span class="ltx_text" id="S5.T4.2.13.12.3.1.1.1" style="font-size:90%;">Both &lt;sks1&gt; and &lt;sks2&gt; are captured in this clip.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.T4.2.14.13">
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T4.2.14.13.1" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T4.2.14.13.1.1">
<span class="ltx_p" id="S5.T4.2.14.13.1.1.1" style="width:42.7pt;"><span class="ltx_text" id="S5.T4.2.14.13.1.1.1.1" style="font-size:90%;">13</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T4.2.14.13.2" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T4.2.14.13.2.1">
<span class="ltx_p" id="S5.T4.2.14.13.2.1.1" style="width:184.9pt;"><span class="ltx_text" id="S5.T4.2.14.13.2.1.1.1" style="font-size:90%;">Does this clip contain &lt;sks1&gt; or &lt;sks2&gt;?</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T4.2.14.13.3" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T4.2.14.13.3.1">
<span class="ltx_p" id="S5.T4.2.14.13.3.1.1" style="width:184.9pt;"><span class="ltx_text" id="S5.T4.2.14.13.3.1.1.1" style="font-size:90%;">The video includes both &lt;sks1&gt; and &lt;sks2&gt;.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.T4.2.15.14">
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T4.2.15.14.1" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T4.2.15.14.1.1">
<span class="ltx_p" id="S5.T4.2.15.14.1.1.1" style="width:42.7pt;"><span class="ltx_text" id="S5.T4.2.15.14.1.1.1.1" style="font-size:90%;">14</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T4.2.15.14.2" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T4.2.15.14.2.1">
<span class="ltx_p" id="S5.T4.2.15.14.2.1.1" style="width:184.9pt;"><span class="ltx_text" id="S5.T4.2.15.14.2.1.1.1" style="font-size:90%;">Are &lt;sks1&gt; or &lt;sks2&gt; featured in this recording?</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T4.2.15.14.3" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T4.2.15.14.3.1">
<span class="ltx_p" id="S5.T4.2.15.14.3.1.1" style="width:184.9pt;"><span class="ltx_text" id="S5.T4.2.15.14.3.1.1.1" style="font-size:90%;">I can confirm the presence of both &lt;sks1&gt; and &lt;sks2&gt;.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.T4.2.16.15">
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T4.2.16.15.1" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T4.2.16.15.1.1">
<span class="ltx_p" id="S5.T4.2.16.15.1.1.1" style="width:42.7pt;"><span class="ltx_text" id="S5.T4.2.16.15.1.1.1.1" style="font-size:90%;">15</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T4.2.16.15.2" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T4.2.16.15.2.1">
<span class="ltx_p" id="S5.T4.2.16.15.2.1.1" style="width:184.9pt;"><span class="ltx_text" id="S5.T4.2.16.15.2.1.1.1" style="font-size:90%;">Can you find &lt;sks1&gt; or &lt;sks2&gt; in this video?</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T4.2.16.15.3" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T4.2.16.15.3.1">
<span class="ltx_p" id="S5.T4.2.16.15.3.1.1" style="width:184.9pt;"><span class="ltx_text" id="S5.T4.2.16.15.3.1.1.1" style="font-size:90%;">&lt;sks1&gt; and &lt;sks2&gt; are both shown in the recording.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.T4.2.17.16">
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T4.2.17.16.1" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T4.2.17.16.1.1">
<span class="ltx_p" id="S5.T4.2.17.16.1.1.1" style="width:42.7pt;"><span class="ltx_text" id="S5.T4.2.17.16.1.1.1.1" style="font-size:90%;">16</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T4.2.17.16.2" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T4.2.17.16.2.1">
<span class="ltx_p" id="S5.T4.2.17.16.2.1.1" style="width:184.9pt;"><span class="ltx_text" id="S5.T4.2.17.16.2.1.1.1" style="font-size:90%;">Are &lt;sks1&gt; or &lt;sks2&gt; shown in any frame?</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T4.2.17.16.3" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T4.2.17.16.3.1">
<span class="ltx_p" id="S5.T4.2.17.16.3.1.1" style="width:184.9pt;"><span class="ltx_text" id="S5.T4.2.17.16.3.1.1.1" style="font-size:90%;">Both figures, &lt;sks1&gt; and &lt;sks2&gt;, are visible.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.T4.2.18.17">
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T4.2.18.17.1" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T4.2.18.17.1.1">
<span class="ltx_p" id="S5.T4.2.18.17.1.1.1" style="width:42.7pt;"><span class="ltx_text" id="S5.T4.2.18.17.1.1.1.1" style="font-size:90%;">17</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T4.2.18.17.2" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T4.2.18.17.2.1">
<span class="ltx_p" id="S5.T4.2.18.17.2.1.1" style="width:184.9pt;"><span class="ltx_text" id="S5.T4.2.18.17.2.1.1.1" style="font-size:90%;">Does this video show &lt;sks1&gt; or &lt;sks2&gt;?</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T4.2.18.17.3" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T4.2.18.17.3.1">
<span class="ltx_p" id="S5.T4.2.18.17.3.1.1" style="width:184.9pt;"><span class="ltx_text" id="S5.T4.2.18.17.3.1.1.1" style="font-size:90%;">I’ve found both &lt;sks1&gt; and &lt;sks2&gt; in the video.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.T4.2.19.18">
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T4.2.19.18.1" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T4.2.19.18.1.1">
<span class="ltx_p" id="S5.T4.2.19.18.1.1.1" style="width:42.7pt;"><span class="ltx_text" id="S5.T4.2.19.18.1.1.1.1" style="font-size:90%;">18</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T4.2.19.18.2" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T4.2.19.18.2.1">
<span class="ltx_p" id="S5.T4.2.19.18.2.1.1" style="width:184.9pt;"><span class="ltx_text" id="S5.T4.2.19.18.2.1.1.1" style="font-size:90%;">Are &lt;sks1&gt; or &lt;sks2&gt; visible anywhere?</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T4.2.19.18.3" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T4.2.19.18.3.1">
<span class="ltx_p" id="S5.T4.2.19.18.3.1.1" style="width:184.9pt;"><span class="ltx_text" id="S5.T4.2.19.18.3.1.1.1" style="font-size:90%;">The footage displays both &lt;sks1&gt; and &lt;sks2&gt;.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.T4.2.20.19">
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T4.2.20.19.1" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T4.2.20.19.1.1">
<span class="ltx_p" id="S5.T4.2.20.19.1.1.1" style="width:42.7pt;"><span class="ltx_text" id="S5.T4.2.20.19.1.1.1.1" style="font-size:90%;">19</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T4.2.20.19.2" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T4.2.20.19.2.1">
<span class="ltx_p" id="S5.T4.2.20.19.2.1.1" style="width:184.9pt;"><span class="ltx_text" id="S5.T4.2.20.19.2.1.1.1" style="font-size:90%;">Can you see &lt;sks1&gt; or &lt;sks2&gt;?</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T4.2.20.19.3" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T4.2.20.19.3.1">
<span class="ltx_p" id="S5.T4.2.20.19.3.1.1" style="width:184.9pt;"><span class="ltx_text" id="S5.T4.2.20.19.3.1.1.1" style="font-size:90%;">Both &lt;sks1&gt; and &lt;sks2&gt; are identifiable here.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.T4.2.21.20">
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T4.2.21.20.1" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T4.2.21.20.1.1">
<span class="ltx_p" id="S5.T4.2.21.20.1.1.1" style="width:42.7pt;"><span class="ltx_text" id="S5.T4.2.21.20.1.1.1.1" style="font-size:90%;">20</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T4.2.21.20.2" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T4.2.21.20.2.1">
<span class="ltx_p" id="S5.T4.2.21.20.2.1.1" style="width:184.9pt;"><span class="ltx_text" id="S5.T4.2.21.20.2.1.1.1" style="font-size:90%;">Are &lt;sks1&gt; or &lt;sks2&gt; in this video?</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T4.2.21.20.3" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T4.2.21.20.3.1">
<span class="ltx_p" id="S5.T4.2.21.20.3.1.1" style="width:184.9pt;"><span class="ltx_text" id="S5.T4.2.21.20.3.1.1.1" style="font-size:90%;">I can recognize both &lt;sks1&gt; and &lt;sks2&gt;.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.T4.2.22.21">
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T4.2.22.21.1" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T4.2.22.21.1.1">
<span class="ltx_p" id="S5.T4.2.22.21.1.1.1" style="width:42.7pt;"><span class="ltx_text" id="S5.T4.2.22.21.1.1.1.1" style="font-size:90%;">21</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T4.2.22.21.2" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T4.2.22.21.2.1">
<span class="ltx_p" id="S5.T4.2.22.21.2.1.1" style="width:184.9pt;"><span class="ltx_text" id="S5.T4.2.22.21.2.1.1.1" style="font-size:90%;">Can you recognize &lt;sks1&gt; or &lt;sks2&gt;?</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T4.2.22.21.3" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T4.2.22.21.3.1">
<span class="ltx_p" id="S5.T4.2.22.21.3.1.1" style="width:184.9pt;"><span class="ltx_text" id="S5.T4.2.22.21.3.1.1.1" style="font-size:90%;">&lt;sks1&gt; and &lt;sks2&gt; both appear in this recording.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.T4.2.23.22">
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T4.2.23.22.1" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T4.2.23.22.1.1">
<span class="ltx_p" id="S5.T4.2.23.22.1.1.1" style="width:42.7pt;"><span class="ltx_text" id="S5.T4.2.23.22.1.1.1.1" style="font-size:90%;">22</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T4.2.23.22.2" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T4.2.23.22.2.1">
<span class="ltx_p" id="S5.T4.2.23.22.2.1.1" style="width:184.9pt;"><span class="ltx_text" id="S5.T4.2.23.22.2.1.1.1" style="font-size:90%;">Do &lt;sks1&gt; or &lt;sks2&gt; appear at all?</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T4.2.23.22.3" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T4.2.23.22.3.1">
<span class="ltx_p" id="S5.T4.2.23.22.3.1.1" style="width:184.9pt;"><span class="ltx_text" id="S5.T4.2.23.22.3.1.1.1" style="font-size:90%;">The video features both &lt;sks1&gt; and &lt;sks2&gt;.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.T4.2.24.23">
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T4.2.24.23.1" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T4.2.24.23.1.1">
<span class="ltx_p" id="S5.T4.2.24.23.1.1.1" style="width:42.7pt;"><span class="ltx_text" id="S5.T4.2.24.23.1.1.1.1" style="font-size:90%;">23</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T4.2.24.23.2" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T4.2.24.23.2.1">
<span class="ltx_p" id="S5.T4.2.24.23.2.1.1" style="width:184.9pt;"><span class="ltx_text" id="S5.T4.2.24.23.2.1.1.1" style="font-size:90%;">Are &lt;sks1&gt; or &lt;sks2&gt; recorded here?</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T4.2.24.23.3" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T4.2.24.23.3.1">
<span class="ltx_p" id="S5.T4.2.24.23.3.1.1" style="width:184.9pt;"><span class="ltx_text" id="S5.T4.2.24.23.3.1.1.1" style="font-size:90%;">Both &lt;sks1&gt; and &lt;sks2&gt; are clearly visible.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.T4.2.25.24">
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T4.2.25.24.1" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T4.2.25.24.1.1">
<span class="ltx_p" id="S5.T4.2.25.24.1.1.1" style="width:42.7pt;"><span class="ltx_text" id="S5.T4.2.25.24.1.1.1.1" style="font-size:90%;">24</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T4.2.25.24.2" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T4.2.25.24.2.1">
<span class="ltx_p" id="S5.T4.2.25.24.2.1.1" style="width:184.9pt;"><span class="ltx_text" id="S5.T4.2.25.24.2.1.1.1" style="font-size:90%;">Can you identify &lt;sks1&gt; or &lt;sks2&gt;?</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T4.2.25.24.3" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T4.2.25.24.3.1">
<span class="ltx_p" id="S5.T4.2.25.24.3.1.1" style="width:184.9pt;"><span class="ltx_text" id="S5.T4.2.25.24.3.1.1.1" style="font-size:90%;">I’ve detected the presence of both &lt;sks1&gt; and &lt;sks2&gt;.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.T4.2.26.25">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb" id="S5.T4.2.26.25.1" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T4.2.26.25.1.1">
<span class="ltx_p" id="S5.T4.2.26.25.1.1.1" style="width:42.7pt;"><span class="ltx_text" id="S5.T4.2.26.25.1.1.1.1" style="font-size:90%;">25</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb" id="S5.T4.2.26.25.2" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T4.2.26.25.2.1">
<span class="ltx_p" id="S5.T4.2.26.25.2.1.1" style="width:184.9pt;"><span class="ltx_text" id="S5.T4.2.26.25.2.1.1.1" style="font-size:90%;">Are &lt;sks1&gt; or &lt;sks2&gt; present?</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb" id="S5.T4.2.26.25.3" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T4.2.26.25.3.1">
<span class="ltx_p" id="S5.T4.2.26.25.3.1.1" style="width:184.9pt;"><span class="ltx_text" id="S5.T4.2.26.25.3.1.1.1" style="font-size:90%;">The clip shows both &lt;sks1&gt; and &lt;sks2&gt;.</span></span>
</span>
</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents example question-answer pairs demonstrating positive existence verification in a video with two subjects.  The questions aim to confirm the presence of either or both entities within the video.  Each row represents a different question phrasing, while the answers confirm the existence of one or both subjects as indicated in the question.
> <details>
> <summary>read the caption</summary>
> Table 4:  Example of positive existence verification question answering (Two entities).
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S5.T5.2">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S5.T5.2.1.1">
<th class="ltx_td ltx_align_justify ltx_align_top ltx_th ltx_th_column ltx_border_tt" id="S5.T5.2.1.1.1" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T5.2.1.1.1.1">
<span class="ltx_p" id="S5.T5.2.1.1.1.1.1" style="width:42.7pt;"><span class="ltx_text ltx_font_bold" id="S5.T5.2.1.1.1.1.1.1" style="font-size:90%;">Index</span></span>
</span>
</th>
<th class="ltx_td ltx_align_justify ltx_align_top ltx_th ltx_th_column ltx_border_tt" id="S5.T5.2.1.1.2" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T5.2.1.1.2.1">
<span class="ltx_p" id="S5.T5.2.1.1.2.1.1" style="width:184.9pt;"><span class="ltx_text ltx_font_bold" id="S5.T5.2.1.1.2.1.1.1" style="font-size:90%;">sks1 Yes, sks2 No</span></span>
</span>
</th>
<th class="ltx_td ltx_align_justify ltx_align_top ltx_th ltx_th_column ltx_border_tt" id="S5.T5.2.1.1.3" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T5.2.1.1.3.1">
<span class="ltx_p" id="S5.T5.2.1.1.3.1.1" style="width:184.9pt;"><span class="ltx_text ltx_font_bold" id="S5.T5.2.1.1.3.1.1.1" style="font-size:90%;">Both No</span></span>
</span>
</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S5.T5.2.2.1">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S5.T5.2.2.1.1" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T5.2.2.1.1.1">
<span class="ltx_p" id="S5.T5.2.2.1.1.1.1" style="width:42.7pt;"><span class="ltx_text" id="S5.T5.2.2.1.1.1.1.1" style="font-size:90%;">1</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S5.T5.2.2.1.2" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T5.2.2.1.2.1">
<span class="ltx_p" id="S5.T5.2.2.1.2.1.1" style="width:184.9pt;"><span class="ltx_text" id="S5.T5.2.2.1.2.1.1.1" style="font-size:90%;">Is there any trace of &lt;sks1&gt; or &lt;sks2&gt; in this footage?</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S5.T5.2.2.1.3" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T5.2.2.1.3.1">
<span class="ltx_p" id="S5.T5.2.2.1.3.1.1" style="width:184.9pt;"><span class="ltx_text" id="S5.T5.2.2.1.3.1.1.1" style="font-size:90%;">I can confirm that &lt;sks1&gt; appears, but &lt;sks2&gt; is not present. </span>
<br class="ltx_break"/><span class="ltx_text" id="S5.T5.2.2.1.3.1.1.2" style="font-size:90%;">Neither &lt;sks1&gt; nor &lt;sks2&gt; appear in this video.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.T5.2.3.2">
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T5.2.3.2.1" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T5.2.3.2.1.1">
<span class="ltx_p" id="S5.T5.2.3.2.1.1.1" style="width:42.7pt;"><span class="ltx_text" id="S5.T5.2.3.2.1.1.1.1" style="font-size:90%;">2</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T5.2.3.2.2" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T5.2.3.2.2.1">
<span class="ltx_p" id="S5.T5.2.3.2.2.1.1" style="width:184.9pt;"><span class="ltx_text" id="S5.T5.2.3.2.2.1.1.1" style="font-size:90%;">Can you detect &lt;sks1&gt; or &lt;sks2&gt; in this video clip?</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T5.2.3.2.3" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T5.2.3.2.3.1">
<span class="ltx_p" id="S5.T5.2.3.2.3.1.1" style="width:184.9pt;"><span class="ltx_text" id="S5.T5.2.3.2.3.1.1.1" style="font-size:90%;">The video shows &lt;sks1&gt;, though there’s no sign of &lt;sks2&gt;. </span>
<br class="ltx_break"/><span class="ltx_text" id="S5.T5.2.3.2.3.1.1.2" style="font-size:90%;">I cannot detect either &lt;sks1&gt; or &lt;sks2&gt;.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.T5.2.4.3">
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T5.2.4.3.1" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T5.2.4.3.1.1">
<span class="ltx_p" id="S5.T5.2.4.3.1.1.1" style="width:42.7pt;"><span class="ltx_text" id="S5.T5.2.4.3.1.1.1.1" style="font-size:90%;">3</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T5.2.4.3.2" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T5.2.4.3.2.1">
<span class="ltx_p" id="S5.T5.2.4.3.2.1.1" style="width:184.9pt;"><span class="ltx_text" id="S5.T5.2.4.3.2.1.1.1" style="font-size:90%;">Do &lt;sks1&gt; or &lt;sks2&gt; show up anywhere in this recording?</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T5.2.4.3.3" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T5.2.4.3.3.1">
<span class="ltx_p" id="S5.T5.2.4.3.3.1.1" style="width:184.9pt;"><span class="ltx_text" id="S5.T5.2.4.3.3.1.1.1" style="font-size:90%;">&lt;sks1&gt; is visible, but &lt;sks2&gt; is absent. </span>
<br class="ltx_break"/><span class="ltx_text" id="S5.T5.2.4.3.3.1.1.2" style="font-size:90%;">The video contains neither &lt;sks1&gt; nor &lt;sks2&gt;.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.T5.2.5.4">
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T5.2.5.4.1" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T5.2.5.4.1.1">
<span class="ltx_p" id="S5.T5.2.5.4.1.1.1" style="width:42.7pt;"><span class="ltx_text" id="S5.T5.2.5.4.1.1.1.1" style="font-size:90%;">4</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T5.2.5.4.2" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T5.2.5.4.2.1">
<span class="ltx_p" id="S5.T5.2.5.4.2.1.1" style="width:184.9pt;"><span class="ltx_text" id="S5.T5.2.5.4.2.1.1.1" style="font-size:90%;">Are &lt;sks1&gt; or &lt;sks2&gt; visible in this video?</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T5.2.5.4.3" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T5.2.5.4.3.1">
<span class="ltx_p" id="S5.T5.2.5.4.3.1.1" style="width:184.9pt;"><span class="ltx_text" id="S5.T5.2.5.4.3.1.1.1" style="font-size:90%;">I’ve detected &lt;sks1&gt;, while &lt;sks2&gt; does not appear. </span>
<br class="ltx_break"/><span class="ltx_text" id="S5.T5.2.5.4.3.1.1.2" style="font-size:90%;">Both &lt;sks1&gt; and &lt;sks2&gt; are absent.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.T5.2.6.5">
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T5.2.6.5.1" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T5.2.6.5.1.1">
<span class="ltx_p" id="S5.T5.2.6.5.1.1.1" style="width:42.7pt;"><span class="ltx_text" id="S5.T5.2.6.5.1.1.1.1" style="font-size:90%;">5</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T5.2.6.5.2" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T5.2.6.5.2.1">
<span class="ltx_p" id="S5.T5.2.6.5.2.1.1" style="width:184.9pt;"><span class="ltx_text" id="S5.T5.2.6.5.2.1.1.1" style="font-size:90%;">Could you verify if &lt;sks1&gt; or &lt;sks2&gt; are here?</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T5.2.6.5.3" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T5.2.6.5.3.1">
<span class="ltx_p" id="S5.T5.2.6.5.3.1.1" style="width:184.9pt;"><span class="ltx_text" id="S5.T5.2.6.5.3.1.1.1" style="font-size:90%;">The video contains &lt;sks1&gt;, but &lt;sks2&gt; is not shown. </span>
<br class="ltx_break"/><span class="ltx_text" id="S5.T5.2.6.5.3.1.1.2" style="font-size:90%;">There is no sign of either &lt;sks1&gt; or &lt;sks2&gt;.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.T5.2.7.6">
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T5.2.7.6.1" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T5.2.7.6.1.1">
<span class="ltx_p" id="S5.T5.2.7.6.1.1.1" style="width:42.7pt;"><span class="ltx_text" id="S5.T5.2.7.6.1.1.1.1" style="font-size:90%;">6</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T5.2.7.6.2" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T5.2.7.6.2.1">
<span class="ltx_p" id="S5.T5.2.7.6.2.1.1" style="width:184.9pt;"><span class="ltx_text" id="S5.T5.2.7.6.2.1.1.1" style="font-size:90%;">Does this footage include &lt;sks1&gt; or &lt;sks2&gt;?</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T5.2.7.6.3" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T5.2.7.6.3.1">
<span class="ltx_p" id="S5.T5.2.7.6.3.1.1" style="width:184.9pt;"><span class="ltx_text" id="S5.T5.2.7.6.3.1.1.1" style="font-size:90%;">&lt;sks1&gt; is present, however &lt;sks2&gt; is not in this clip. </span>
<br class="ltx_break"/><span class="ltx_text" id="S5.T5.2.7.6.3.1.1.2" style="font-size:90%;">Neither &lt;sks1&gt; nor &lt;sks2&gt; are shown.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.T5.2.8.7">
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T5.2.8.7.1" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T5.2.8.7.1.1">
<span class="ltx_p" id="S5.T5.2.8.7.1.1.1" style="width:42.7pt;"><span class="ltx_text" id="S5.T5.2.8.7.1.1.1.1" style="font-size:90%;">7</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T5.2.8.7.2" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T5.2.8.7.2.1">
<span class="ltx_p" id="S5.T5.2.8.7.2.1.1" style="width:184.9pt;"><span class="ltx_text" id="S5.T5.2.8.7.2.1.1.1" style="font-size:90%;">Can you spot &lt;sks1&gt; or &lt;sks2&gt; in this clip?</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T5.2.8.7.3" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T5.2.8.7.3.1">
<span class="ltx_p" id="S5.T5.2.8.7.3.1.1" style="width:184.9pt;"><span class="ltx_text" id="S5.T5.2.8.7.3.1.1.1" style="font-size:90%;">I can see &lt;sks1&gt;, but there’s no trace of &lt;sks2&gt;. </span>
<br class="ltx_break"/><span class="ltx_text" id="S5.T5.2.8.7.3.1.1.2" style="font-size:90%;">I confirm both &lt;sks1&gt; and &lt;sks2&gt; are not present.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.T5.2.9.8">
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T5.2.9.8.1" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T5.2.9.8.1.1">
<span class="ltx_p" id="S5.T5.2.9.8.1.1.1" style="width:42.7pt;"><span class="ltx_text" id="S5.T5.2.9.8.1.1.1.1" style="font-size:90%;">8</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T5.2.9.8.2" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T5.2.9.8.2.1">
<span class="ltx_p" id="S5.T5.2.9.8.2.1.1" style="width:184.9pt;"><span class="ltx_text" id="S5.T5.2.9.8.2.1.1.1" style="font-size:90%;">Are &lt;sks1&gt; or &lt;sks2&gt; present in this video?</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T5.2.9.8.3" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T5.2.9.8.3.1">
<span class="ltx_p" id="S5.T5.2.9.8.3.1.1" style="width:184.9pt;"><span class="ltx_text" id="S5.T5.2.9.8.3.1.1.1" style="font-size:90%;">The footage includes &lt;sks1&gt;, though &lt;sks2&gt; is not visible. </span>
<br class="ltx_break"/><span class="ltx_text" id="S5.T5.2.9.8.3.1.1.2" style="font-size:90%;">The footage does not include &lt;sks1&gt; or &lt;sks2&gt;.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.T5.2.10.9">
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T5.2.10.9.1" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T5.2.10.9.1.1">
<span class="ltx_p" id="S5.T5.2.10.9.1.1.1" style="width:42.7pt;"><span class="ltx_text" id="S5.T5.2.10.9.1.1.1.1" style="font-size:90%;">9</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T5.2.10.9.2" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T5.2.10.9.2.1">
<span class="ltx_p" id="S5.T5.2.10.9.2.1.1" style="width:184.9pt;"><span class="ltx_text" id="S5.T5.2.10.9.2.1.1.1" style="font-size:90%;">Do &lt;sks1&gt; or &lt;sks2&gt; appear in this footage?</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T5.2.10.9.3" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T5.2.10.9.3.1">
<span class="ltx_p" id="S5.T5.2.10.9.3.1.1" style="width:184.9pt;"><span class="ltx_text" id="S5.T5.2.10.9.3.1.1.1" style="font-size:90%;">&lt;sks1&gt; appears, but &lt;sks2&gt; is not featured. </span>
<br class="ltx_break"/><span class="ltx_text" id="S5.T5.2.10.9.3.1.1.2" style="font-size:90%;">There’s no evidence of either &lt;sks1&gt; or &lt;sks2&gt;.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.T5.2.11.10">
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T5.2.11.10.1" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T5.2.11.10.1.1">
<span class="ltx_p" id="S5.T5.2.11.10.1.1.1" style="width:42.7pt;"><span class="ltx_text" id="S5.T5.2.11.10.1.1.1.1" style="font-size:90%;">10</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T5.2.11.10.2" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T5.2.11.10.2.1">
<span class="ltx_p" id="S5.T5.2.11.10.2.1.1" style="width:184.9pt;"><span class="ltx_text" id="S5.T5.2.11.10.2.1.1.1" style="font-size:90%;">Can you tell if &lt;sks1&gt; or &lt;sks2&gt; are shown here?</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T5.2.11.10.3" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T5.2.11.10.3.1">
<span class="ltx_p" id="S5.T5.2.11.10.3.1.1" style="width:184.9pt;"><span class="ltx_text" id="S5.T5.2.11.10.3.1.1.1" style="font-size:90%;">I’ve spotted &lt;sks1&gt;, while &lt;sks2&gt; is nowhere to be seen. </span>
<br class="ltx_break"/><span class="ltx_text" id="S5.T5.2.11.10.3.1.1.2" style="font-size:90%;">Neither &lt;sks1&gt; nor &lt;sks2&gt; are visible.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.T5.2.12.11">
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T5.2.12.11.1" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T5.2.12.11.1.1">
<span class="ltx_p" id="S5.T5.2.12.11.1.1.1" style="width:42.7pt;"><span class="ltx_text" id="S5.T5.2.12.11.1.1.1.1" style="font-size:90%;">11</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T5.2.12.11.2" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T5.2.12.11.2.1">
<span class="ltx_p" id="S5.T5.2.12.11.2.1.1" style="width:184.9pt;"><span class="ltx_text" id="S5.T5.2.12.11.2.1.1.1" style="font-size:90%;">Are &lt;sks1&gt; or &lt;sks2&gt; in this video segment?</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T5.2.12.11.3" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T5.2.12.11.3.1">
<span class="ltx_p" id="S5.T5.2.12.11.3.1.1" style="width:184.9pt;"><span class="ltx_text" id="S5.T5.2.12.11.3.1.1.1" style="font-size:90%;">&lt;sks1&gt; is clearly visible, but &lt;sks2&gt; is not. </span>
<br class="ltx_break"/><span class="ltx_text" id="S5.T5.2.12.11.3.1.1.2" style="font-size:90%;">I’ve checked, both &lt;sks1&gt; and &lt;sks2&gt; are absent.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.T5.2.13.12">
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T5.2.13.12.1" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T5.2.13.12.1.1">
<span class="ltx_p" id="S5.T5.2.13.12.1.1.1" style="width:42.7pt;"><span class="ltx_text" id="S5.T5.2.13.12.1.1.1.1" style="font-size:90%;">12</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T5.2.13.12.2" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T5.2.13.12.2.1">
<span class="ltx_p" id="S5.T5.2.13.12.2.1.1" style="width:184.9pt;"><span class="ltx_text" id="S5.T5.2.13.12.2.1.1.1" style="font-size:90%;">Can you confirm &lt;sks1&gt; or &lt;sks2&gt;’s presence?</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T5.2.13.12.3" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T5.2.13.12.3.1">
<span class="ltx_p" id="S5.T5.2.13.12.3.1.1" style="width:184.9pt;"><span class="ltx_text" id="S5.T5.2.13.12.3.1.1.1" style="font-size:90%;">The recording shows &lt;sks1&gt;, though &lt;sks2&gt; is absent. </span>
<br class="ltx_break"/><span class="ltx_text" id="S5.T5.2.13.12.3.1.1.2" style="font-size:90%;">This video shows neither &lt;sks1&gt; nor &lt;sks2&gt;.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.T5.2.14.13">
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T5.2.14.13.1" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T5.2.14.13.1.1">
<span class="ltx_p" id="S5.T5.2.14.13.1.1.1" style="width:42.7pt;"><span class="ltx_text" id="S5.T5.2.14.13.1.1.1.1" style="font-size:90%;">13</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T5.2.14.13.2" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T5.2.14.13.2.1">
<span class="ltx_p" id="S5.T5.2.14.13.2.1.1" style="width:184.9pt;"><span class="ltx_text" id="S5.T5.2.14.13.2.1.1.1" style="font-size:90%;">Does this clip contain &lt;sks1&gt; or &lt;sks2&gt;?</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T5.2.14.13.3" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T5.2.14.13.3.1">
<span class="ltx_p" id="S5.T5.2.14.13.3.1.1" style="width:184.9pt;"><span class="ltx_text" id="S5.T5.2.14.13.3.1.1.1" style="font-size:90%;">I can identify &lt;sks1&gt;, but &lt;sks2&gt; doesn’t appear. </span>
<br class="ltx_break"/><span class="ltx_text" id="S5.T5.2.14.13.3.1.1.2" style="font-size:90%;">I see no sign of &lt;sks1&gt; or &lt;sks2&gt;.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.T5.2.15.14">
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T5.2.15.14.1" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T5.2.15.14.1.1">
<span class="ltx_p" id="S5.T5.2.15.14.1.1.1" style="width:42.7pt;"><span class="ltx_text" id="S5.T5.2.15.14.1.1.1.1" style="font-size:90%;">14</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T5.2.15.14.2" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T5.2.15.14.2.1">
<span class="ltx_p" id="S5.T5.2.15.14.2.1.1" style="width:184.9pt;"><span class="ltx_text" id="S5.T5.2.15.14.2.1.1.1" style="font-size:90%;">Are &lt;sks1&gt; or &lt;sks2&gt; featured in this recording?</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T5.2.15.14.3" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T5.2.15.14.3.1">
<span class="ltx_p" id="S5.T5.2.15.14.3.1.1" style="width:184.9pt;"><span class="ltx_text" id="S5.T5.2.15.14.3.1.1.1" style="font-size:90%;">&lt;sks1&gt; is present, while &lt;sks2&gt; is not. </span>
<br class="ltx_break"/><span class="ltx_text" id="S5.T5.2.15.14.3.1.1.2" style="font-size:90%;">Both &lt;sks1&gt; and &lt;sks2&gt; are not in the recording.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.T5.2.16.15">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb" id="S5.T5.2.16.15.1" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T5.2.16.15.1.1">
<span class="ltx_p" id="S5.T5.2.16.15.1.1.1" style="width:42.7pt;"><span class="ltx_text" id="S5.T5.2.16.15.1.1.1.1" style="font-size:90%;">15</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb" id="S5.T5.2.16.15.2" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T5.2.16.15.2.1">
<span class="ltx_p" id="S5.T5.2.16.15.2.1.1" style="width:184.9pt;"><span class="ltx_text" id="S5.T5.2.16.15.2.1.1.1" style="font-size:90%;">Can you find &lt;sks1&gt; or &lt;sks2&gt; in this video?</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb" id="S5.T5.2.16.15.3" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T5.2.16.15.3.1">
<span class="ltx_p" id="S5.T5.2.16.15.3.1.1" style="width:184.9pt;"><span class="ltx_text" id="S5.T5.2.16.15.3.1.1.1" style="font-size:90%;">The clip features &lt;sks1&gt;, but there’s no sign of &lt;sks2&gt;. </span>
<br class="ltx_break"/><span class="ltx_text" id="S5.T5.2.16.15.3.1.1.2" style="font-size:90%;">The video does not contain &lt;sks1&gt; or &lt;sks2&gt;.</span></span>
</span>
</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents example questions and answers for a mixed existence verification task in a video involving two entities. The questions aim to determine whether either or both of the two specified entities are present in the video.  The answers show various responses, demonstrating situations where one entity is present, both entities are present, or neither entity is present.  This illustrates the model's ability to handle nuanced queries about the existence of multiple individuals in a video.
> <details>
> <summary>read the caption</summary>
> Table 5:  Example of mixed existence verification question answering (Two entities).
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S5.T6.2">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S5.T6.2.1.1">
<th class="ltx_td ltx_align_justify ltx_align_top ltx_th ltx_th_column ltx_border_tt" id="S5.T6.2.1.1.1" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T6.2.1.1.1.1">
<span class="ltx_p" id="S5.T6.2.1.1.1.1.1" style="width:42.7pt;"><span class="ltx_text ltx_font_bold" id="S5.T6.2.1.1.1.1.1.1" style="font-size:90%;">Index</span></span>
</span>
</th>
<th class="ltx_td ltx_align_justify ltx_align_top ltx_th ltx_th_column ltx_border_tt" id="S5.T6.2.1.1.2" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T6.2.1.1.2.1">
<span class="ltx_p" id="S5.T6.2.1.1.2.1.1" style="width:284.5pt;"><span class="ltx_text ltx_font_bold" id="S5.T6.2.1.1.2.1.1.1" style="font-size:90%;">Question</span></span>
</span>
</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S5.T6.2.2.1">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S5.T6.2.2.1.1" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T6.2.2.1.1.1">
<span class="ltx_p" id="S5.T6.2.2.1.1.1.1" style="width:42.7pt;"><span class="ltx_text" id="S5.T6.2.2.1.1.1.1.1" style="font-size:90%;">1</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S5.T6.2.2.1.2" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T6.2.2.1.2.1">
<span class="ltx_p" id="S5.T6.2.2.1.2.1.1" style="width:284.5pt;"><span class="ltx_text" id="S5.T6.2.2.1.2.1.1.1" style="font-size:90%;">What activity is &lt;sks&gt; engaged in during this video?</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.T6.2.3.2">
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T6.2.3.2.1" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T6.2.3.2.1.1">
<span class="ltx_p" id="S5.T6.2.3.2.1.1.1" style="width:42.7pt;"><span class="ltx_text" id="S5.T6.2.3.2.1.1.1.1" style="font-size:90%;">2</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T6.2.3.2.2" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T6.2.3.2.2.1">
<span class="ltx_p" id="S5.T6.2.3.2.2.1.1" style="width:284.5pt;"><span class="ltx_text" id="S5.T6.2.3.2.2.1.1.1" style="font-size:90%;">Could you describe what &lt;sks&gt; is doing in this footage?</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.T6.2.4.3">
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T6.2.4.3.1" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T6.2.4.3.1.1">
<span class="ltx_p" id="S5.T6.2.4.3.1.1.1" style="width:42.7pt;"><span class="ltx_text" id="S5.T6.2.4.3.1.1.1.1" style="font-size:90%;">3</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T6.2.4.3.2" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T6.2.4.3.2.1">
<span class="ltx_p" id="S5.T6.2.4.3.2.1.1" style="width:284.5pt;"><span class="ltx_text" id="S5.T6.2.4.3.2.1.1.1" style="font-size:90%;">What specific actions can you observe &lt;sks&gt; performing in this recording?</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.T6.2.5.4">
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T6.2.5.4.1" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T6.2.5.4.1.1">
<span class="ltx_p" id="S5.T6.2.5.4.1.1.1" style="width:42.7pt;"><span class="ltx_text" id="S5.T6.2.5.4.1.1.1.1" style="font-size:90%;">4</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T6.2.5.4.2" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T6.2.5.4.2.1">
<span class="ltx_p" id="S5.T6.2.5.4.2.1.1" style="width:284.5pt;"><span class="ltx_text" id="S5.T6.2.5.4.2.1.1.1" style="font-size:90%;">What movements or actions does &lt;sks&gt; perform here?</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.T6.2.6.5">
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T6.2.6.5.1" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T6.2.6.5.1.1">
<span class="ltx_p" id="S5.T6.2.6.5.1.1.1" style="width:42.7pt;"><span class="ltx_text" id="S5.T6.2.6.5.1.1.1.1" style="font-size:90%;">5</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T6.2.6.5.2" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T6.2.6.5.2.1">
<span class="ltx_p" id="S5.T6.2.6.5.2.1.1" style="width:284.5pt;"><span class="ltx_text" id="S5.T6.2.6.5.2.1.1.1" style="font-size:90%;">Can you describe &lt;sks&gt;’s behavior in this sequence?</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.T6.2.7.6">
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T6.2.7.6.1" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T6.2.7.6.1.1">
<span class="ltx_p" id="S5.T6.2.7.6.1.1.1" style="width:42.7pt;"><span class="ltx_text" id="S5.T6.2.7.6.1.1.1.1" style="font-size:90%;">6</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T6.2.7.6.2" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T6.2.7.6.2.1">
<span class="ltx_p" id="S5.T6.2.7.6.2.1.1" style="width:284.5pt;"><span class="ltx_text" id="S5.T6.2.7.6.2.1.1.1" style="font-size:90%;">What is &lt;sks&gt; wearing in this video?</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.T6.2.8.7">
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T6.2.8.7.1" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T6.2.8.7.1.1">
<span class="ltx_p" id="S5.T6.2.8.7.1.1.1" style="width:42.7pt;"><span class="ltx_text" id="S5.T6.2.8.7.1.1.1.1" style="font-size:90%;">7</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T6.2.8.7.2" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T6.2.8.7.2.1">
<span class="ltx_p" id="S5.T6.2.8.7.2.1.1" style="width:284.5pt;"><span class="ltx_text" id="S5.T6.2.8.7.2.1.1.1" style="font-size:90%;">Could you describe &lt;sks&gt;’s outfit in this footage?</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.T6.2.9.8">
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T6.2.9.8.1" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T6.2.9.8.1.1">
<span class="ltx_p" id="S5.T6.2.9.8.1.1.1" style="width:42.7pt;"><span class="ltx_text" id="S5.T6.2.9.8.1.1.1.1" style="font-size:90%;">8</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T6.2.9.8.2" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T6.2.9.8.2.1">
<span class="ltx_p" id="S5.T6.2.9.8.2.1.1" style="width:284.5pt;"><span class="ltx_text" id="S5.T6.2.9.8.2.1.1.1" style="font-size:90%;">What color and style of clothing is &lt;sks&gt; dressed in?</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.T6.2.10.9">
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T6.2.10.9.1" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T6.2.10.9.1.1">
<span class="ltx_p" id="S5.T6.2.10.9.1.1.1" style="width:42.7pt;"><span class="ltx_text" id="S5.T6.2.10.9.1.1.1.1" style="font-size:90%;">9</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T6.2.10.9.2" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T6.2.10.9.2.1">
<span class="ltx_p" id="S5.T6.2.10.9.2.1.1" style="width:284.5pt;"><span class="ltx_text" id="S5.T6.2.10.9.2.1.1.1" style="font-size:90%;">How would you describe &lt;sks&gt;’s appearance and attire?</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.T6.2.11.10">
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T6.2.11.10.1" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T6.2.11.10.1.1">
<span class="ltx_p" id="S5.T6.2.11.10.1.1.1" style="width:42.7pt;"><span class="ltx_text" id="S5.T6.2.11.10.1.1.1.1" style="font-size:90%;">10</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T6.2.11.10.2" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T6.2.11.10.2.1">
<span class="ltx_p" id="S5.T6.2.11.10.2.1.1" style="width:284.5pt;"><span class="ltx_text" id="S5.T6.2.11.10.2.1.1.1" style="font-size:90%;">What notable features can you see in &lt;sks&gt;’s clothing?</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.T6.2.12.11">
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T6.2.12.11.1" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T6.2.12.11.1.1">
<span class="ltx_p" id="S5.T6.2.12.11.1.1.1" style="width:42.7pt;"><span class="ltx_text" id="S5.T6.2.12.11.1.1.1.1" style="font-size:90%;">11</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T6.2.12.11.2" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T6.2.12.11.2.1">
<span class="ltx_p" id="S5.T6.2.12.11.2.1.1" style="width:284.5pt;"><span class="ltx_text" id="S5.T6.2.12.11.2.1.1.1" style="font-size:90%;">Where is &lt;sks&gt; positioned in this video?</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.T6.2.13.12">
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T6.2.13.12.1" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T6.2.13.12.1.1">
<span class="ltx_p" id="S5.T6.2.13.12.1.1.1" style="width:42.7pt;"><span class="ltx_text" id="S5.T6.2.13.12.1.1.1.1" style="font-size:90%;">12</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T6.2.13.12.2" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T6.2.13.12.2.1">
<span class="ltx_p" id="S5.T6.2.13.12.2.1.1" style="width:284.5pt;"><span class="ltx_text" id="S5.T6.2.13.12.2.1.1.1" style="font-size:90%;">What color and style of clothing is &lt;sks&gt; dressed in?</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.T6.2.14.13">
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T6.2.14.13.1" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T6.2.14.13.1.1">
<span class="ltx_p" id="S5.T6.2.14.13.1.1.1" style="width:42.7pt;"><span class="ltx_text" id="S5.T6.2.14.13.1.1.1.1" style="font-size:90%;">13</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T6.2.14.13.2" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T6.2.14.13.2.1">
<span class="ltx_p" id="S5.T6.2.14.13.2.1.1" style="width:284.5pt;"><span class="ltx_text" id="S5.T6.2.14.13.2.1.1.1" style="font-size:90%;">Can you describe &lt;sks&gt;’s location relative to others?</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.T6.2.15.14">
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T6.2.15.14.1" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T6.2.15.14.1.1">
<span class="ltx_p" id="S5.T6.2.15.14.1.1.1" style="width:42.7pt;"><span class="ltx_text" id="S5.T6.2.15.14.1.1.1.1" style="font-size:90%;">14</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T6.2.15.14.2" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T6.2.15.14.2.1">
<span class="ltx_p" id="S5.T6.2.15.14.2.1.1" style="width:284.5pt;"><span class="ltx_text" id="S5.T6.2.15.14.2.1.1.1" style="font-size:90%;">Which part of the scene does &lt;sks&gt; appear in?</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.T6.2.16.15">
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T6.2.16.15.1" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T6.2.16.15.1.1">
<span class="ltx_p" id="S5.T6.2.16.15.1.1.1" style="width:42.7pt;"><span class="ltx_text" id="S5.T6.2.16.15.1.1.1.1" style="font-size:90%;">15</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T6.2.16.15.2" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T6.2.16.15.2.1">
<span class="ltx_p" id="S5.T6.2.16.15.2.1.1" style="width:284.5pt;"><span class="ltx_text" id="S5.T6.2.16.15.2.1.1.1" style="font-size:90%;">How does &lt;sks&gt;’s position change throughout the video?</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.T6.2.17.16">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb" id="S5.T6.2.17.16.1" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T6.2.17.16.1.1">
<span class="ltx_p" id="S5.T6.2.17.16.1.1.1" style="width:42.7pt;"><span class="ltx_text" id="S5.T6.2.17.16.1.1.1.1" style="font-size:90%;">16</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb" id="S5.T6.2.17.16.2" style="padding-top:1.8pt;padding-bottom:1.8pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T6.2.17.16.2.1">
<span class="ltx_p" id="S5.T6.2.17.16.2.1.1" style="width:284.5pt;"><span class="ltx_text" id="S5.T6.2.17.16.2.1.1.1" style="font-size:90%;">Where can &lt;sks&gt; be found in this footage?</span></span>
</span>
</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents example questions and answers related to negative existence verification in a single-entity scenario.  The questions aim to determine whether a specific person, referred to as '<sks>', is present in a video.  Each question is phrased differently to explore various ways of asking the same question, and the answers consistently confirm that the individual is not in the video clip.
> <details>
> <summary>read the caption</summary>
> Table 6:  Example of negative existence verification question answering (Single entity).
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2503.17069/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.17069/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.17069/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.17069/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.17069/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.17069/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.17069/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.17069/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.17069/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.17069/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.17069/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.17069/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.17069/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.17069/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.17069/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.17069/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.17069/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.17069/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.17069/19.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.17069/20.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}