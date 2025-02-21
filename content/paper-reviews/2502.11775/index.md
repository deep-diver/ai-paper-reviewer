---
title: "video-SALMONN-o1: Reasoning-enhanced Audio-visual Large Language Model"
summary: "video-SALMONN-01: An open-source audio-visual LLM enhances video understanding with a novel reasoning-intensive dataset and the pDPO method, achieving significant accuracy gains."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Multimodal Learning", "Multimodal Reasoning", "🏢 Tsinghua University",]
showSummary: true
date: 2025-02-17
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2502.11775 {{< /keyword >}}
{{< keyword icon="writer" >}} Guangzhi Sun et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-02-18 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2502.11775" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2502.11775" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2502.11775/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Current large language models (LLMs) struggle with complex reasoning, especially in the context of video understanding.  Existing methods often focus on specific tasks like solving mathematical problems or analyzing images, neglecting the broader applications of video understanding. Moreover, creating high-quality datasets for multimodal reasoning is challenging. 

This research introduces video-SALMONN-01, the first open-source reasoning-enhanced audio-visual LLM designed for general video understanding.  To address the issue of dataset scarcity, they created a new reasoning-intensive dataset with step-by-step solutions.  They also developed a novel optimization technique, pDPO, that efficiently models step-level rewards for multimodal inputs.  Their model outperforms existing baselines on various video reasoning benchmarks, demonstrating the effectiveness of their approach.  Furthermore, RivaBench, a new benchmark dataset, was created to facilitate future research in this area.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} video-SALMONN-01, the first open-source reasoning-enhanced audio-visual LLM for general video understanding, was developed. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} A new reasoning-intensive video understanding benchmark, RivaBench, was introduced. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} The proposed pDPO method significantly improved reasoning accuracy compared to baselines. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper is important because it addresses the limitations of existing large language models in handling complex reasoning tasks within general video understanding.  **It introduces a novel reasoning-enhanced audio-visual LLM, video-SALMONN-01, along with a new benchmark, RivaBench, pushing the boundaries of multimodal reasoning.** The proposed methods, including process direct preference optimization (pDPO), offer significant improvements in accuracy and zero-shot capabilities, opening exciting avenues for future research in multimodal AI.

------
#### Visual Insights



![](https://arxiv.org/html/2502.11775/x1.png)

> 🔼 The figure illustrates the architecture of the video-SALMONN-01 model.  It shows how input video data is processed through two parallel branches: one for visual information and one for audio.  Each branch uses an encoder (visual encoder and audio encoder) to extract relevant features from the respective input sequences (frames and audio segments).  These feature representations are then combined in an interleaved manner to align temporal information and create a unified representation suitable for processing by a Large Language Model (LLM). This unified representation is then inputted to the LLM for further analysis and task completion.
> <details>
> <summary>read the caption</summary>
> Figure 1: video-SALMONN-o1 model structure. The input video is processed by the visual and audio branches, generating encodings from the visual and audio frame sequences respectively. Two encoding streams are combined in an interleaved fashion to synchronize across time before sending to LLM.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S5.T1.5">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S5.T1.5.4.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S5.T1.5.4.1.1"><span class="ltx_text" id="S5.T1.5.4.1.1.1" style="font-size:80%;">Attribute</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T1.5.4.1.2"><span class="ltx_text" id="S5.T1.5.4.1.2.1" style="font-size:80%;">Academic</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T1.5.4.1.3"><span class="ltx_text" id="S5.T1.5.4.1.3.1" style="font-size:80%;">StandUp</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T1.5.4.1.4"><span class="ltx_text" id="S5.T1.5.4.1.4.1" style="font-size:80%;">SynthDec</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S5.T1.5.5.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S5.T1.5.5.1.1"><span class="ltx_text" id="S5.T1.5.5.1.1.1" style="font-size:80%;">Num. of QA</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.5.5.1.2"><span class="ltx_text" id="S5.T1.5.5.1.2.1" style="font-size:80%;">1,912</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.5.5.1.3"><span class="ltx_text" id="S5.T1.5.5.1.3.1" style="font-size:80%;">2,128</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.5.5.1.4"><span class="ltx_text" id="S5.T1.5.5.1.4.1" style="font-size:80%;">200</span></td>
</tr>
<tr class="ltx_tr" id="S5.T1.5.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T1.5.3.4"><span class="ltx_text" id="S5.T1.5.3.4.1" style="font-size:80%;">Duration (s)</span></th>
<td class="ltx_td ltx_align_center" id="S5.T1.3.1.1">
<span class="ltx_text" id="S5.T1.3.1.1.1" style="font-size:80%;">47.2</span><math alttext="\pm" class="ltx_Math" display="inline" id="S5.T1.3.1.1.m1.1"><semantics id="S5.T1.3.1.1.m1.1a"><mo id="S5.T1.3.1.1.m1.1.1" mathsize="80%" xref="S5.T1.3.1.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S5.T1.3.1.1.m1.1b"><csymbol cd="latexml" id="S5.T1.3.1.1.m1.1.1.cmml" xref="S5.T1.3.1.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S5.T1.3.1.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S5.T1.3.1.1.m1.1d">±</annotation></semantics></math><span class="ltx_text" id="S5.T1.3.1.1.2" style="font-size:80%;"> 66.1</span>
</td>
<td class="ltx_td ltx_align_center" id="S5.T1.4.2.2">
<span class="ltx_text" id="S5.T1.4.2.2.1" style="font-size:80%;">43.2</span><math alttext="\pm" class="ltx_Math" display="inline" id="S5.T1.4.2.2.m1.1"><semantics id="S5.T1.4.2.2.m1.1a"><mo id="S5.T1.4.2.2.m1.1.1" mathsize="80%" xref="S5.T1.4.2.2.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S5.T1.4.2.2.m1.1b"><csymbol cd="latexml" id="S5.T1.4.2.2.m1.1.1.cmml" xref="S5.T1.4.2.2.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S5.T1.4.2.2.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S5.T1.4.2.2.m1.1d">±</annotation></semantics></math><span class="ltx_text" id="S5.T1.4.2.2.2" style="font-size:80%;"> 15.1</span>
</td>
<td class="ltx_td ltx_align_center" id="S5.T1.5.3.3">
<span class="ltx_text" id="S5.T1.5.3.3.1" style="font-size:80%;">8.1</span><math alttext="\pm" class="ltx_Math" display="inline" id="S5.T1.5.3.3.m1.1"><semantics id="S5.T1.5.3.3.m1.1a"><mo id="S5.T1.5.3.3.m1.1.1" mathsize="80%" xref="S5.T1.5.3.3.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S5.T1.5.3.3.m1.1b"><csymbol cd="latexml" id="S5.T1.5.3.3.m1.1.1.cmml" xref="S5.T1.5.3.3.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S5.T1.5.3.3.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S5.T1.5.3.3.m1.1d">±</annotation></semantics></math><span class="ltx_text" id="S5.T1.5.3.3.2" style="font-size:80%;">3.2</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.T1.5.6.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S5.T1.5.6.2.1"><span class="ltx_text" id="S5.T1.5.6.2.1.1" style="font-size:80%;">Format</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T1.5.6.2.2"><span class="ltx_text" id="S5.T1.5.6.2.2.1" style="font-size:80%;">5-way MCQ</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T1.5.6.2.3"><span class="ltx_text" id="S5.T1.5.6.2.3.1" style="font-size:80%;">5-way MCQ</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T1.5.6.2.4"><span class="ltx_text" id="S5.T1.5.6.2.4.1" style="font-size:80%;">Yes/No</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 Table 1 provides a detailed breakdown of the RivaBench dataset's statistics, a new benchmark specifically designed for evaluating the reasoning capabilities of audio-visual LLMs.  It shows the number of question-answer pairs, average video duration (mean and standard deviation), and the type of questions (Multiple Choice Questions, or MCQ) for three different scenarios or partitions within the dataset: Academic, StandUp, and SynthDec.  The SynthDec partition is particularly noteworthy, as it is composed of 100 synthetically generated videos paired with 100 real videos selected to have similar content. This careful construction aims to assess the model's ability to distinguish between real and synthetic video data.  All videos used in RivaBench are sourced from YouTube.
> <details>
> <summary>read the caption</summary>
> Table 1: RivaBench basic statistics. The duration is given by mean ±plus-or-minus\pm± standard deviation. The SynthDec split contains 100 synthetic videos and 100 real videos that human annotators search to have similar content as synthetic videos. MCQ stands for multiple-choice questions. Video sources are all from YouTube.
> </details>





### In-depth insights


#### Reasoning in LLMs
Reasoning capabilities in large language models (LLMs) are a rapidly evolving area of research.  Early approaches focused on prompt engineering and search algorithms to guide LLMs through complex problems. However, these methods proved inefficient and limited for intricate reasoning tasks.  A significant advancement is the development of reinforcement learning techniques. **Reinforcement learning (RL) based methods, such as Process Direct Preference Optimization (pDPO), optimize the reasoning process by directly rewarding or penalizing each step taken towards a solution.** This contrasts with earlier methods that only considered the final outcome.  **Multimodal LLMs, those that integrate visual and audio inputs, further challenge the task of reasoning**, requiring sophisticated reward modeling tailored to diverse sensory data.  Effective benchmarks, such as RivaBench, are crucial for evaluating progress.  The core challenge remains balancing model efficiency with accuracy and avoiding biases or hallucinations.  **Future work needs to focus on addressing the high computational cost of RL training for multimodal LLMs and developing robust methods that handle ambiguous or complex inputs.**

#### Multimodal Reasoning
Multimodal reasoning, a crucial aspect of artificial intelligence, focuses on the ability of systems to integrate and interpret information from diverse sources like text, images, audio, and video to solve complex problems.  **The key challenge lies in effectively fusing these heterogeneous data modalities, each with its own unique characteristics and representations.**  This integration requires advanced techniques capable of handling ambiguity, noise, and potentially conflicting information across modalities.  Successful multimodal reasoning systems must be able to **disambiguate meaning**, **establish relationships between different modalities**, and **generate coherent inferences** that go beyond simple concatenation or averaging of individual modal outputs.  **Progress in this area relies heavily on robust feature extraction, efficient fusion mechanisms, and advanced reasoning algorithms that can handle multimodal contexts.**  The development of large-scale, high-quality datasets is vital for training and evaluating such systems, as well as the creation of new evaluation metrics that capture the nuances of multimodal reasoning capabilities.  Future research should explore methods for **improved explainability and interpretability**, particularly crucial for building trust and understanding in these powerful systems.

#### pDPO Optimization
The concept of pDPO (process direct preference optimization) presents a novel approach to enhance the reasoning capabilities of multimodal large language models (LLMs).  **Instead of directly predicting a numerical reward for each reasoning step**, as in traditional methods, pDPO leverages **contrastive learning**.  It compares the effectiveness of different reasoning steps within the same context, focusing on step-level pairwise comparisons rather than absolute scores. This is particularly beneficial for multimodal tasks, as the ambiguity in assessing numerical scores is mitigated.  By employing a contrastive selection method, pDPO efficiently identifies and prioritizes the most critical reasoning steps that significantly affect the final outcome.  **This targeted approach improves training efficiency and reduces computational costs** compared to methods relying on extensive rollouts.  The innovative combination of contrastive step selection and pairwise reward modeling makes pDPO well-suited for the challenges of multimodal reasoning, where various modalities (audio, visual, text) must be effectively integrated.  The results demonstrate that pDPO achieves significant performance improvements, highlighting its potential as a powerful technique for enhancing reasoning in complex, real-world scenarios.

#### RivaBench Dataset
The RivaBench dataset represents a significant contribution to the field of multimodal reasoning, particularly for audio-visual large language models (LLMs).  Its **focus on challenging, high-quality question-answer pairs across diverse scenarios** such as stand-up comedy, academic presentations, and synthetic video detection addresses a critical gap in existing benchmarks.  The inclusion of detailed, expert-curated step-by-step solutions for each question makes RivaBench ideal for training and evaluating LLMs' reasoning capabilities.  The dataset's **three representative scenarios** offer a variety of challenges: stand-up comedy tests the model's ability to interpret humor within an audio-visual context; academic presentations assess its ability to process complex information and extract meaning; and synthetic video detection pushes the boundaries of zero-shot capabilities. The **4,000+ high-quality question-answer pairs** within RivaBench ensure rigorous evaluation of models.  By incorporating these varied settings, RivaBench facilitates a deeper understanding of the strengths and limitations of audio-visual LLMs, fostering the development of more robust and reliable models.

#### Zero-Shot Detection
Zero-shot detection, in the context of this research paper, signifies the model's ability to identify synthetic videos without prior training examples.  This is a **remarkable feat**, showcasing the model's robust generalization capabilities and deeper understanding of visual patterns. The paper highlights the **enhanced reasoning abilities** as the key contributor to this performance, suggesting that the model is not merely matching visual features but actively inferring the underlying characteristics of real versus synthetic videos.  This capability goes beyond typical image classification tasks, showcasing the potential for broader applications in video authenticity verification, content generation evaluation, and anomaly detection.  The success of zero-shot detection underlines the importance of **reasoning-enhanced** multimodal models in tackling complex visual understanding tasks.  Further investigation could explore the limitations of this approach, its sensitivity to various types of synthetic videos, and how it can be improved with additional training or architectural refinements. The **zero-shot nature** of this capability suggests a step toward more generalizable and robust AI systems that can adapt to novel challenges with minimal additional training.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2502.11775/x2.png)

> 🔼 This figure illustrates the process of creating a dataset for fine-tuning (SFT) a large language model (LLM).  The process starts with a video and its corresponding audio. Gemini-1.5-pro, a large language model, is used to generate a question-answer pair related to the video content, along with a step-by-step reasoning path that explains how to arrive at the answer.  GPT-40, another LLM, then acts as a quality control mechanism, evaluating the validity and logical coherence of both the question-answer pair and the reasoning steps.  Only those QA pairs and reasoning paths that pass GPT-40's quality check are included in the final SFT dataset.  This ensures that the model learns from high-quality, logically sound reasoning examples.
> <details>
> <summary>read the caption</summary>
> Figure 2: Acquisition pipeline of reasoning-intensive SFT data. The question, answer and reasoning paths are generated by Gemini-1.5-pro taking the video with paired audio as inputs. GPT4o is employed for quality checks to ensure the QA-pair and the reasoning steps are valid and require logical thinking.
> </details>



![](https://arxiv.org/html/2502.11775/x3.png)

> 🔼 Figure 3 illustrates the process of contrastive step selection and pairwise rollout used in the process direct preference optimization (pDPO) method.  The top panel shows how the top two most influential steps (s2 and s5) are selected for optimization. For each step, an alternative step is sampled to create a pair used for comparison.  The bottom panel demonstrates the pairwise rollout process.  For each step (like s2), multiple possible next steps are simulated (rollouts).  These rollouts, starting from the same prefix, are then evaluated by GPT-40 to determine which is closer to the correct solution and thus which step was more effective.
> <details>
> <summary>read the caption</summary>
> Figure 3: Illustration of the contrastive step selection (top) and pairwise rollout (bottom) to construct per-step expected correctness score for pDPO. Contrastive step selection: Top 2 steps, s2subscript𝑠2s_{2}italic_s start_POSTSUBSCRIPT 2 end_POSTSUBSCRIPT and s5subscript𝑠5s_{5}italic_s start_POSTSUBSCRIPT 5 end_POSTSUBSCRIPT are selected in this example, and for s2subscript𝑠2s_{2}italic_s start_POSTSUBSCRIPT 2 end_POSTSUBSCRIPT, an alternative step, s2′subscriptsuperscript𝑠′2s^{\prime}_{2}italic_s start_POSTSUPERSCRIPT ′ end_POSTSUPERSCRIPT start_POSTSUBSCRIPT 2 end_POSTSUBSCRIPT, is sampled to form the preference pair. Pairwise rollout: Three rollouts are shown for each step and s2subscript𝑠2s_{2}italic_s start_POSTSUBSCRIPT 2 end_POSTSUBSCRIPT and s2′subscriptsuperscript𝑠′2s^{\prime}_{2}italic_s start_POSTSUPERSCRIPT ′ end_POSTSUPERSCRIPT start_POSTSUBSCRIPT 2 end_POSTSUBSCRIPT are step pairs with the same prefix solution. The answer correctness is checked using GPT-4o by comparing it against the reference answer.
> </details>



![](https://arxiv.org/html/2502.11775/x4.png)

> 🔼 This figure shows the distribution of the number of reasoning steps in the supervised fine-tuning (SFT) data. The left panel displays the distribution for the entire SFT dataset, while the right panel focuses on a subset of the data specifically designed for reasoning-intensive tasks.  The figure highlights that the reasoning-intensive subset, which contains more challenging questions, necessitates a greater number of reasoning steps for successful problem-solving, compared to the overall SFT dataset.
> <details>
> <summary>read the caption</summary>
> Figure 4: Distributions of the numbers of reasoning steps in SFT data. Left: Distribution of the entire SFT data. Right: Distribution on the reasoning-intensive subset of SFT data. Due to the difficulty of the reasoning-intensive subset, more reasoning steps are required in general for samples in this set.
> </details>



![](https://arxiv.org/html/2502.11775/x5.png)

> 🔼 This figure compares the performance of the process direct preference optimization (pDPO) algorithm using different numbers of top steps selected for pairwise training.  The x-axis represents the number of top steps selected, and the y-axis represents the accuracy.  The results show that including intermediate steps in addition to full solution paths improves the overall accuracy of pDPO, suggesting that focusing on specific, error-prone steps enhances the model's learning and reasoning capabilities. Note that pairs of full solution paths are always included in the training.
> <details>
> <summary>read the caption</summary>
> Figure 5: Comparison between different top T steps selected for pDPO. Pairs of full solution paths are always used in addition to pairs of intermediate steps.
> </details>



![](https://arxiv.org/html/2502.11775/x6.png)

> 🔼 This figure shows an example from the reasoning-intensive SFT (Supervised Fine-Tuning) dataset. It illustrates a question-answer pair along with a step-by-step reasoning process. The visual input is a short video showing items made of glass and plastic. The question asks which material is better when considering frequent handling and minimal dropping risk. The provided answer is 'the glass one', and the figure details a six-step reasoning path leading to that conclusion. This showcases the multimodal nature of the dataset, combining visual information from a video with text-based questions, answers, and reasoning steps.
> <details>
> <summary>read the caption</summary>
> Figure 6: Example of reasoning SFT data
> </details>



![](https://arxiv.org/html/2502.11775/x7.png)

> 🔼 This figure shows an example from the StandUp comedy section of the RivaBench dataset.  The example includes a short video clip, a question related to understanding the humor in the video, the correct answer, and an explanation clarifying why that answer is correct. The question requires the model to understand the interplay between the audio (comedian's words), visual (comedian's actions and facial expressions), and the audience's reaction (laughter) to determine the humor's source.  It highlights the multi-modal nature of the reasoning required within RivaBench.
> <details>
> <summary>read the caption</summary>
> Figure 7: Example of StandUp part of the RivaBench.
> </details>



![](https://arxiv.org/html/2502.11775/x8.png)

> 🔼 Figure 8 shows an example from the StandUp comedy subset of the RivaBench dataset.  It displays a still image from a stand-up comedy video, the corresponding audio transcription, a multiple-choice question about the comedic effect of a particular line, the correct answer, and a detailed explanation justifying the answer. This exemplifies the type of high-quality, expert-annotated audio-visual reasoning data included in the RivaBench benchmark.
> <details>
> <summary>read the caption</summary>
> Figure 8: Example of StandUp part of the RivaBench.
> </details>



![](https://arxiv.org/html/2502.11775/x9.png)

> 🔼 Figure 9 shows an example from the Academic portion of the RivaBench dataset.  It displays a slide from an academic presentation about a twin study investigating the relationship between traumatic brain injury (TBI) and dementia. The figure also includes a portion of the accompanying audio transcript and the question and answer related to this video segment. The question assesses the study's method for isolating the impact of TBI on dementia risk, while the answer explains how the twin study design controls for genetic and early life factors by analyzing twins with differing TBI and dementia onset.
> <details>
> <summary>read the caption</summary>
> Figure 9: Example of Academic part of the RivaBench.
> </details>



![](https://arxiv.org/html/2502.11775/x10.png)

> 🔼 Figure 10 shows an example from the Academic portion of the RivaBench dataset.  The figure contains a screenshot of a video showing students working on a hands-on electronics project using either a Zoom-based remote learning environment or a RobotAR augmented reality environment.  Accompanying the video screenshot is a textual description of the key learning competencies tested (conceptual understanding of voltage and current, series and parallel circuits, use of a breadboard, multimeter, and building a working circuit). The results show that students in the RobotAR condition achieved greater competency in more of the learning objectives than their peers using Zoom. The caption references the improved performance with RobotAR.
> <details>
> <summary>read the caption</summary>
> Figure 10: Example of Academic part of the RivaBench.
> </details>



![](https://arxiv.org/html/2502.11775/x11.png)

> 🔼 This figure shows an example video clip from the RivaBench benchmark's SynthDec (synthetic video detection) partition. The SynthDec partition contains videos generated using AI, making it challenging to distinguish between real and synthetic content. This particular clip is likely intended to showcase a particularly difficult example or characteristic of synthetic videos for which visual reasoning is needed to accurately classify.
> <details>
> <summary>read the caption</summary>
> Figure 11: Example video clip of the SynthDec part of RivaBench.
> </details>



![](https://arxiv.org/html/2502.11775/x12.png)

> 🔼 This figure shows a short video clip from the RivaBench dataset's SynthDec (synthetic video detection) subset. The video clip is an example of a synthetic video, meaning it was artificially generated rather than recorded from real life.  SynthDec is designed to test the ability of large language models to differentiate between real and synthetic videos. This specific clip likely contains visual anomalies or inconsistencies that are characteristic of AI-generated videos and would be used to train or evaluate such a model. 
> <details>
> <summary>read the caption</summary>
> Figure 12: Example video clip of the SynthDec part of RivaBench.
> </details>



![](https://arxiv.org/html/2502.11775/x13.png)

> 🔼 This figure shows a side-by-side comparison of how two different models, video-SALMONN-01 SFT and video-SALMONN-01 Process DPO, approached the same question from the StandUp subset of the RivaBench benchmark dataset.  The StandUp subset contains comedic video clips. The video shows a comedian performing on stage.  The question asks what the speaker implies by saying 'I didn't need to know that' at the end of the video. Both models provide a step-by-step reasoning process leading to their respective answers. The figure highlights the differences in the reasoning process, showing how the enhanced reasoning capabilities of pDPO lead to a more accurate and nuanced understanding of the context compared to the simpler SFT model.
> <details>
> <summary>read the caption</summary>
> Figure 13: Example video and solutions from the StandUp test set.
> </details>



![](https://arxiv.org/html/2502.11775/x14.png)

> 🔼 This figure showcases an example video frame from the VideoMME test set, accompanied by solution approaches from two distinct model versions: video-SALMONN-01 using standard supervised fine-tuning (SFT) and video-SALMONN-01 employing the proposed Process Direct Preference Optimization (pDPO).  The video depicts a scene involving a character in a game being struck by a turret.  The solutions highlight the different reasoning steps each model undertakes to arrive at its answer, and how pDPO leads to a more accurate response by leveraging its audio-visual reasoning capabilities.
> <details>
> <summary>read the caption</summary>
> Figure 14: Example video and solutions from videoMME test set.
> </details>



![](https://arxiv.org/html/2502.11775/x15.png)

> 🔼 This figure showcases a video from the VideoMME test set and presents two different solution approaches generated by the model.  The top solution demonstrates the model's initial attempt using supervised fine-tuning (SFT), revealing a flawed reasoning process due to misinterpreting visual information (mistaking moonlit sky for the moon). The bottom solution illustrates the enhanced performance achieved through the proposed process direct preference optimization (pDPO) method. Using pDPO, the model correctly identifies the missing element in the video.
> <details>
> <summary>read the caption</summary>
> Figure 15: Example video and solutions from videoMME test set.
> </details>



![](https://arxiv.org/html/2502.11775/x16.png)

> 🔼 This figure showcases a comparative analysis of three different large language models (LLMs) - video-SALMONN-01, GPT-4, and Gemini-1.5-pro - in their ability to detect synthetic videos.  Each model is presented with the same video clip and asked to determine if it is synthetically generated or real. The figure displays the response of each model, highlighting the reasoning steps and the final conclusion reached by each model. This comparison underscores the varying capabilities of these LLMs in handling this nuanced task, demonstrating the strengths and weaknesses in their ability to process and interpret visual cues to identify artificial or synthetic video content.
> <details>
> <summary>read the caption</summary>
> Figure 16: Example output from video-SALMONN-o1, GPT-4o and Gemini-1.5-pro for synthetic video detection.
> </details>



![](https://arxiv.org/html/2502.11775/x17.png)

> 🔼 Figure 17 shows a comparison of the outputs of three different large language models (LLMs) – video-SALMONN-01, GPT-4, and Gemini-1.5-pro – when tasked with detecting whether a video is synthetically generated or real.  The models analyze the same video and provide a Yes/No answer, along with a step-by-step reasoning process justifying their conclusions. The figure highlights the differences in their reasoning abilities and the types of visual cues each model focuses on to arrive at its decision. This showcases the varying capabilities of these LLMs in identifying subtle visual artifacts characteristic of AI-generated videos.
> <details>
> <summary>read the caption</summary>
> Figure 17: Example output from video-SALMONN-o1, GPT-4o and Gemini-1.5-pro for synthetic video detection.
> </details>



![](https://arxiv.org/html/2502.11775/x18.png)

> 🔼 Figure 18 illustrates the contrastive step selection process used in the process direct preference optimization (pDPO) method. Two example reasoning paths for answering a question about a video are shown, highlighting the step-by-step reasoning process.  Each step in the reasoning path has an associated score (d<sub>sk</sub>), representing the sensitivity of that step to small perturbations in the input video. A higher d<sub>sk</sub> score indicates a greater sensitivity, suggesting that the model is more likely to make an error at that step.  The figure demonstrates how the algorithm selects the most crucial steps for further optimization by focusing on steps with high d<sub>sk</sub> scores, particularly those where errors due to visual misinterpretations or hallucinations might occur. In this example, the third step in the first solution path demonstrates a visual hallucination, and hence it receives a very high d<sub>sk</sub> score and is selected for optimization via rollout.
> <details>
> <summary>read the caption</summary>
> Figure 18: Example of the contrastive step selection process where two sampled paths are shown and the scores dsksubscript𝑑subscript𝑠𝑘d_{s_{k}}italic_d start_POSTSUBSCRIPT italic_s start_POSTSUBSCRIPT italic_k end_POSTSUBSCRIPT end_POSTSUBSCRIPT are given for each reasoning steps. The 3rd step in the first solution is wrong due to visual hallucination, and as a result, a very high score is assigned to that step and that step will be used to perform rollout.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S6.T2.7">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S6.T2.7.6.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_tt" id="S6.T2.7.6.1.1" style="padding-left:4.0pt;padding-right:4.0pt;">Model</th>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S6.T2.7.6.1.2" style="padding-left:4.0pt;padding-right:4.0pt;">Modality</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S6.T2.7.6.1.3" style="padding-left:4.0pt;padding-right:4.0pt;">VideoMME</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S6.T2.7.6.1.4" style="padding-left:4.0pt;padding-right:4.0pt;">NExT-QA</td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="3" id="S6.T2.7.6.1.5" style="padding-left:4.0pt;padding-right:4.0pt;">RivaBench</td>
</tr>
<tr class="ltx_tr" id="S6.T2.7.7.2">
<th class="ltx_td ltx_th ltx_th_row" id="S6.T2.7.7.2.1" style="padding-left:4.0pt;padding-right:4.0pt;"></th>
<td class="ltx_td" id="S6.T2.7.7.2.2" style="padding-left:4.0pt;padding-right:4.0pt;"></td>
<td class="ltx_td" id="S6.T2.7.7.2.3" style="padding-left:4.0pt;padding-right:4.0pt;"></td>
<td class="ltx_td" id="S6.T2.7.7.2.4" style="padding-left:4.0pt;padding-right:4.0pt;"></td>
<td class="ltx_td ltx_align_center" id="S6.T2.7.7.2.5" style="padding-left:4.0pt;padding-right:4.0pt;">StandUp</td>
<td class="ltx_td ltx_align_center" id="S6.T2.7.7.2.6" style="padding-left:4.0pt;padding-right:4.0pt;">Academic</td>
<td class="ltx_td ltx_align_center" id="S6.T2.7.7.2.7" style="padding-left:4.0pt;padding-right:4.0pt;">SynthDec (P/R)</td>
</tr>
<tr class="ltx_tr" id="S6.T2.7.8.3" style="background-color:#E6E6E6;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S6.T2.7.8.3.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S6.T2.7.8.3.1.1" style="background-color:#E6E6E6;">Proprietary models</span></th>
<td class="ltx_td ltx_border_t" id="S6.T2.7.8.3.2" style="padding-left:4.0pt;padding-right:4.0pt;"></td>
<td class="ltx_td ltx_border_t" id="S6.T2.7.8.3.3" style="padding-left:4.0pt;padding-right:4.0pt;"></td>
<td class="ltx_td ltx_border_t" id="S6.T2.7.8.3.4" style="padding-left:4.0pt;padding-right:4.0pt;"></td>
<td class="ltx_td ltx_border_t" id="S6.T2.7.8.3.5" style="padding-left:4.0pt;padding-right:4.0pt;"></td>
<td class="ltx_td ltx_border_t" id="S6.T2.7.8.3.6" style="padding-left:4.0pt;padding-right:4.0pt;"></td>
<td class="ltx_td ltx_border_t" id="S6.T2.7.8.3.7" style="padding-left:4.0pt;padding-right:4.0pt;"></td>
</tr>
<tr class="ltx_tr" id="S6.T2.3.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S6.T2.3.1.2" style="padding-left:4.0pt;padding-right:4.0pt;">Gemini-1.5-pro <cite class="ltx_cite ltx_citemacro_citep">(Team et al., <a class="ltx_ref" href="https://arxiv.org/html/2502.11775v1#bib.bib48" title="">2024</a>)</cite>
</th>
<td class="ltx_td ltx_align_center" id="S6.T2.3.1.3" style="padding-left:4.0pt;padding-right:4.0pt;">A+V</td>
<td class="ltx_td ltx_align_center" id="S6.T2.3.1.1" style="padding-left:4.0pt;padding-right:4.0pt;">75.0%<math alttext="\dagger" class="ltx_Math" display="inline" id="S6.T2.3.1.1.m1.1"><semantics id="S6.T2.3.1.1.m1.1a"><mo id="S6.T2.3.1.1.m1.1.1" xref="S6.T2.3.1.1.m1.1.1.cmml">†</mo><annotation-xml encoding="MathML-Content" id="S6.T2.3.1.1.m1.1b"><ci id="S6.T2.3.1.1.m1.1.1.cmml" xref="S6.T2.3.1.1.m1.1.1">†</ci></annotation-xml><annotation encoding="application/x-tex" id="S6.T2.3.1.1.m1.1c">\dagger</annotation><annotation encoding="application/x-llamapun" id="S6.T2.3.1.1.m1.1d">†</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center" id="S6.T2.3.1.4" style="padding-left:4.0pt;padding-right:4.0pt;">79.2%</td>
<td class="ltx_td ltx_align_center" id="S6.T2.3.1.5" style="padding-left:4.0pt;padding-right:4.0pt;">75.8%</td>
<td class="ltx_td ltx_align_center" id="S6.T2.3.1.6" style="padding-left:4.0pt;padding-right:4.0pt;">67.1%</td>
<td class="ltx_td ltx_align_center" id="S6.T2.3.1.7" style="padding-left:4.0pt;padding-right:4.0pt;">23.6% (55%/15%)</td>
</tr>
<tr class="ltx_tr" id="S6.T2.7.9.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S6.T2.7.9.4.1" style="padding-left:4.0pt;padding-right:4.0pt;">Gemini-1.5-pro+reasoning</th>
<td class="ltx_td ltx_align_center" id="S6.T2.7.9.4.2" style="padding-left:4.0pt;padding-right:4.0pt;">A+V</td>
<td class="ltx_td ltx_align_center" id="S6.T2.7.9.4.3" style="padding-left:4.0pt;padding-right:4.0pt;">75.1%</td>
<td class="ltx_td ltx_align_center" id="S6.T2.7.9.4.4" style="padding-left:4.0pt;padding-right:4.0pt;">79.5%</td>
<td class="ltx_td ltx_align_center" id="S6.T2.7.9.4.5" style="padding-left:4.0pt;padding-right:4.0pt;">81.8%</td>
<td class="ltx_td ltx_align_center" id="S6.T2.7.9.4.6" style="padding-left:4.0pt;padding-right:4.0pt;">69.5%</td>
<td class="ltx_td ltx_align_center" id="S6.T2.7.9.4.7" style="padding-left:4.0pt;padding-right:4.0pt;">40.0% (49%/34%)</td>
</tr>
<tr class="ltx_tr" id="S6.T2.4.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S6.T2.4.2.2" style="padding-left:4.0pt;padding-right:4.0pt;">GPT-4o <cite class="ltx_cite ltx_citemacro_citep">(OpenAI Team, <a class="ltx_ref" href="https://arxiv.org/html/2502.11775v1#bib.bib34" title="">2024</a>)</cite>
</th>
<td class="ltx_td ltx_align_center" id="S6.T2.4.2.3" style="padding-left:4.0pt;padding-right:4.0pt;">V</td>
<td class="ltx_td ltx_align_center" id="S6.T2.4.2.1" style="padding-left:4.0pt;padding-right:4.0pt;">71.9%<math alttext="\dagger" class="ltx_Math" display="inline" id="S6.T2.4.2.1.m1.1"><semantics id="S6.T2.4.2.1.m1.1a"><mo id="S6.T2.4.2.1.m1.1.1" xref="S6.T2.4.2.1.m1.1.1.cmml">†</mo><annotation-xml encoding="MathML-Content" id="S6.T2.4.2.1.m1.1b"><ci id="S6.T2.4.2.1.m1.1.1.cmml" xref="S6.T2.4.2.1.m1.1.1">†</ci></annotation-xml><annotation encoding="application/x-tex" id="S6.T2.4.2.1.m1.1c">\dagger</annotation><annotation encoding="application/x-llamapun" id="S6.T2.4.2.1.m1.1d">†</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center" id="S6.T2.4.2.4" style="padding-left:4.0pt;padding-right:4.0pt;">81.7%</td>
<td class="ltx_td ltx_align_center" id="S6.T2.4.2.5" style="padding-left:4.0pt;padding-right:4.0pt;">63.3%</td>
<td class="ltx_td ltx_align_center" id="S6.T2.4.2.6" style="padding-left:4.0pt;padding-right:4.0pt;">60.0%</td>
<td class="ltx_td ltx_align_center" id="S6.T2.4.2.7" style="padding-left:4.0pt;padding-right:4.0pt;">34.1%(90%/21%)</td>
</tr>
<tr class="ltx_tr" id="S6.T2.7.10.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S6.T2.7.10.5.1" style="padding-left:4.0pt;padding-right:4.0pt;">GPT-4o+reasoning</th>
<td class="ltx_td ltx_align_center" id="S6.T2.7.10.5.2" style="padding-left:4.0pt;padding-right:4.0pt;">V</td>
<td class="ltx_td ltx_align_center" id="S6.T2.7.10.5.3" style="padding-left:4.0pt;padding-right:4.0pt;">72.1%</td>
<td class="ltx_td ltx_align_center" id="S6.T2.7.10.5.4" style="padding-left:4.0pt;padding-right:4.0pt;">81.9%</td>
<td class="ltx_td ltx_align_center" id="S6.T2.7.10.5.5" style="padding-left:4.0pt;padding-right:4.0pt;">69.6%</td>
<td class="ltx_td ltx_align_center" id="S6.T2.7.10.5.6" style="padding-left:4.0pt;padding-right:4.0pt;">61.0%</td>
<td class="ltx_td ltx_align_center" id="S6.T2.7.10.5.7" style="padding-left:4.0pt;padding-right:4.0pt;">25.8%(53%/17%)</td>
</tr>
<tr class="ltx_tr" id="S6.T2.7.11.6" style="background-color:#E6E6E6;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S6.T2.7.11.6.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S6.T2.7.11.6.1.1" style="background-color:#E6E6E6;">Open-source baselines</span></th>
<td class="ltx_td ltx_border_t" id="S6.T2.7.11.6.2" style="padding-left:4.0pt;padding-right:4.0pt;"></td>
<td class="ltx_td ltx_border_t" id="S6.T2.7.11.6.3" style="padding-left:4.0pt;padding-right:4.0pt;"></td>
<td class="ltx_td ltx_border_t" id="S6.T2.7.11.6.4" style="padding-left:4.0pt;padding-right:4.0pt;"></td>
<td class="ltx_td ltx_border_t" id="S6.T2.7.11.6.5" style="padding-left:4.0pt;padding-right:4.0pt;"></td>
<td class="ltx_td ltx_border_t" id="S6.T2.7.11.6.6" style="padding-left:4.0pt;padding-right:4.0pt;"></td>
<td class="ltx_td ltx_border_t" id="S6.T2.7.11.6.7" style="padding-left:4.0pt;padding-right:4.0pt;"></td>
</tr>
<tr class="ltx_tr" id="S6.T2.6.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S6.T2.6.4.3" style="padding-left:4.0pt;padding-right:4.0pt;">LLaVA-OneVision <cite class="ltx_cite ltx_citemacro_citep">(Li et al., <a class="ltx_ref" href="https://arxiv.org/html/2502.11775v1#bib.bib20" title="">2024a</a>)</cite>
</th>
<td class="ltx_td ltx_align_center" id="S6.T2.6.4.4" style="padding-left:4.0pt;padding-right:4.0pt;">V</td>
<td class="ltx_td ltx_align_center" id="S6.T2.5.3.1" style="padding-left:4.0pt;padding-right:4.0pt;">58.2%<math alttext="\dagger" class="ltx_Math" display="inline" id="S6.T2.5.3.1.m1.1"><semantics id="S6.T2.5.3.1.m1.1a"><mo id="S6.T2.5.3.1.m1.1.1" xref="S6.T2.5.3.1.m1.1.1.cmml">†</mo><annotation-xml encoding="MathML-Content" id="S6.T2.5.3.1.m1.1b"><ci id="S6.T2.5.3.1.m1.1.1.cmml" xref="S6.T2.5.3.1.m1.1.1">†</ci></annotation-xml><annotation encoding="application/x-tex" id="S6.T2.5.3.1.m1.1c">\dagger</annotation><annotation encoding="application/x-llamapun" id="S6.T2.5.3.1.m1.1d">†</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center" id="S6.T2.6.4.2" style="padding-left:4.0pt;padding-right:4.0pt;">79.4%<math alttext="\dagger" class="ltx_Math" display="inline" id="S6.T2.6.4.2.m1.1"><semantics id="S6.T2.6.4.2.m1.1a"><mo id="S6.T2.6.4.2.m1.1.1" xref="S6.T2.6.4.2.m1.1.1.cmml">†</mo><annotation-xml encoding="MathML-Content" id="S6.T2.6.4.2.m1.1b"><ci id="S6.T2.6.4.2.m1.1.1.cmml" xref="S6.T2.6.4.2.m1.1.1">†</ci></annotation-xml><annotation encoding="application/x-tex" id="S6.T2.6.4.2.m1.1c">\dagger</annotation><annotation encoding="application/x-llamapun" id="S6.T2.6.4.2.m1.1d">†</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center" id="S6.T2.6.4.5" style="padding-left:4.0pt;padding-right:4.0pt;">67.2%</td>
<td class="ltx_td ltx_align_center" id="S6.T2.6.4.6" style="padding-left:4.0pt;padding-right:4.0pt;">45.8%</td>
<td class="ltx_td ltx_align_center" id="S6.T2.6.4.7" style="padding-left:4.0pt;padding-right:4.0pt;">0.0%(97%/0%)</td>
</tr>
<tr class="ltx_tr" id="S6.T2.7.12.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S6.T2.7.12.7.1" style="padding-left:4.0pt;padding-right:4.0pt;">video-SALMONN <cite class="ltx_cite ltx_citemacro_citep">(Sun et al., <a class="ltx_ref" href="https://arxiv.org/html/2502.11775v1#bib.bib42" title="">2024b</a>)</cite>
</th>
<td class="ltx_td ltx_align_center" id="S6.T2.7.12.7.2" style="padding-left:4.0pt;padding-right:4.0pt;">A+V</td>
<td class="ltx_td ltx_align_center" id="S6.T2.7.12.7.3" style="padding-left:4.0pt;padding-right:4.0pt;">43.3%</td>
<td class="ltx_td ltx_align_center" id="S6.T2.7.12.7.4" style="padding-left:4.0pt;padding-right:4.0pt;">49.2%</td>
<td class="ltx_td ltx_align_center" id="S6.T2.7.12.7.5" style="padding-left:4.0pt;padding-right:4.0pt;">47.8%</td>
<td class="ltx_td ltx_align_center" id="S6.T2.7.12.7.6" style="padding-left:4.0pt;padding-right:4.0pt;">33.6%</td>
<td class="ltx_td ltx_align_center" id="S6.T2.7.12.7.7" style="padding-left:4.0pt;padding-right:4.0pt;">0.0%(100%/0%)</td>
</tr>
<tr class="ltx_tr" id="S6.T2.7.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S6.T2.7.5.2" style="padding-left:4.0pt;padding-right:4.0pt;">Video-LLaMA 2.1 <cite class="ltx_cite ltx_citemacro_citep">(Cheng et al., <a class="ltx_ref" href="https://arxiv.org/html/2502.11775v1#bib.bib5" title="">2024</a>)</cite>
</th>
<td class="ltx_td ltx_align_center" id="S6.T2.7.5.3" style="padding-left:4.0pt;padding-right:4.0pt;">A+V</td>
<td class="ltx_td ltx_align_center" id="S6.T2.7.5.1" style="padding-left:4.0pt;padding-right:4.0pt;">54.9%<math alttext="\dagger" class="ltx_Math" display="inline" id="S6.T2.7.5.1.m1.1"><semantics id="S6.T2.7.5.1.m1.1a"><mo id="S6.T2.7.5.1.m1.1.1" xref="S6.T2.7.5.1.m1.1.1.cmml">†</mo><annotation-xml encoding="MathML-Content" id="S6.T2.7.5.1.m1.1b"><ci id="S6.T2.7.5.1.m1.1.1.cmml" xref="S6.T2.7.5.1.m1.1.1">†</ci></annotation-xml><annotation encoding="application/x-tex" id="S6.T2.7.5.1.m1.1c">\dagger</annotation><annotation encoding="application/x-llamapun" id="S6.T2.7.5.1.m1.1d">†</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center" id="S6.T2.7.5.4" style="padding-left:4.0pt;padding-right:4.0pt;">75.6%</td>
<td class="ltx_td ltx_align_center" id="S6.T2.7.5.5" style="padding-left:4.0pt;padding-right:4.0pt;">53.7%</td>
<td class="ltx_td ltx_align_center" id="S6.T2.7.5.6" style="padding-left:4.0pt;padding-right:4.0pt;">34.3%</td>
<td class="ltx_td ltx_align_center" id="S6.T2.7.5.7" style="padding-left:4.0pt;padding-right:4.0pt;">0.0%(99%/0%)</td>
</tr>
<tr class="ltx_tr" id="S6.T2.7.13.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S6.T2.7.13.8.1" style="padding-left:4.0pt;padding-right:4.0pt;">video-SALMONN-o1 (ours, SFT)</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T2.7.13.8.2" style="padding-left:4.0pt;padding-right:4.0pt;">A+V</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T2.7.13.8.3" style="padding-left:4.0pt;padding-right:4.0pt;">62.9%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T2.7.13.8.4" style="padding-left:4.0pt;padding-right:4.0pt;">78.2%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T2.7.13.8.5" style="padding-left:4.0pt;padding-right:4.0pt;">68.6%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T2.7.13.8.6" style="padding-left:4.0pt;padding-right:4.0pt;">42.5%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T2.7.13.8.7" style="padding-left:4.0pt;padding-right:4.0pt;">5.8%(97%/5%)</td>
</tr>
<tr class="ltx_tr" id="S6.T2.7.14.9">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S6.T2.7.14.9.1" style="padding-left:4.0pt;padding-right:4.0pt;">video-SALMONN-o1 (ours, pDPO)</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S6.T2.7.14.9.2" style="padding-left:4.0pt;padding-right:4.0pt;">A+V</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S6.T2.7.14.9.3" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_text ltx_font_bold" id="S6.T2.7.14.9.3.1">65.6</span>%</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S6.T2.7.14.9.4" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_text ltx_font_bold" id="S6.T2.7.14.9.4.1">82.3</span>%</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S6.T2.7.14.9.5" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_text ltx_font_bold" id="S6.T2.7.14.9.5.1">76.7</span>%</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S6.T2.7.14.9.6" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_text ltx_font_bold" id="S6.T2.7.14.9.6.1">48.3</span>%</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S6.T2.7.14.9.7" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_text ltx_font_bold" id="S6.T2.7.14.9.7.1">17.8</span>%(87%/13%)</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the main results of the video-SALMONN-01 model on three video understanding benchmarks: VideoMME, NEXT-QA, and RivaBench.  It compares the performance of video-SALMONN-01, after both supervised fine-tuning (SFT) with reasoning data and further optimization using process direct preference optimization (pDPO), against several other visual (V) and audio-visual (A+V) large language models (LLMs).  The metrics used are accuracy for VideoMME, NEXT-QA, and the StandUp and Academic subsets of RivaBench, and F1-score (Precision/Recall) for the SynthDec subset of RivaBench. Results marked with a dagger (†) are taken directly from the cited papers. A key difference highlighted is that video-SALMONN-01 performs reasoning during inference, unlike the other open-source models which provide direct answers.
> <details>
> <summary>read the caption</summary>
> Table 2: Main results of video-SALMONN-o1 compared against other visual (V) and audio-visual (A+V) LLMs. SFT refers to the model after SFT with reasoning data and pDPO refers to the model obtained after training with pDPO based on the same SFT model. F1-score (Precision/Recall) is reported for SynthDec and accuracy is reported for others. Results with ††\dagger† are directly taken from the corresponding papers. video-SALMONN-o1 performs reasoning during inference and other open-source models give answers directly.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S6.T3.7">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S6.T3.7.8.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_tt" id="S6.T3.7.8.1.1">Training Data</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_tt" id="S6.T3.7.8.1.2">Inference Reasoning</th>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S6.T3.7.8.1.3">VideoMME</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S6.T3.7.8.1.4">NExT-QA</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S6.T3.7.8.1.5">Academic</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S6.T3.7.8.1.6">StandUp</td>
</tr>
<tr class="ltx_tr" id="S6.T3.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S6.T3.1.1.2">Full SFT data</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" id="S6.T3.1.1.1"><svg class="ltx_picture ltx_markedasmath" height="10.02" id="S6.T3.1.1.1.m1.1.1.pic1" overflow="visible" version="1.1" width="10.02"><g fill="#000000" stroke="#000000" transform="translate(0,10.02) matrix(1 0 0 -1 0 0) translate(0.48,0) translate(0,0.48)"><g stroke-linecap="round" stroke-width="0.7pt"><path d="M 0 0 C 3.16 3.9 5.16 5.9 9.05 9.05" style="fill:none"></path></g><g stroke-linecap="round" stroke-width="0.7pt"><path d="M 1.81 8.6 C 3.77 5.3 4.95 3.53 7.24 0.45" style="fill:none"></path></g></g></svg></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T3.1.1.3"><span class="ltx_text ltx_framed ltx_framed_underline" id="S6.T3.1.1.3.1">63.7%</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T3.1.1.4">80.7%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T3.1.1.5"><span class="ltx_text ltx_framed ltx_framed_underline" id="S6.T3.1.1.5.1">45.2%</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T3.1.1.6"><span class="ltx_text ltx_framed ltx_framed_underline" id="S6.T3.1.1.6.1">72.3%</span></td>
</tr>
<tr class="ltx_tr" id="S6.T3.2.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S6.T3.2.2.2">Full SFT data</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S6.T3.2.2.1"><math alttext="\checkmark" class="ltx_Math" display="inline" id="S6.T3.2.2.1.m1.1"><semantics id="S6.T3.2.2.1.m1.1a"><mi id="S6.T3.2.2.1.m1.1.1" mathvariant="normal" xref="S6.T3.2.2.1.m1.1.1.cmml">✓</mi><annotation-xml encoding="MathML-Content" id="S6.T3.2.2.1.m1.1b"><ci id="S6.T3.2.2.1.m1.1.1.cmml" xref="S6.T3.2.2.1.m1.1.1">✓</ci></annotation-xml><annotation encoding="application/x-tex" id="S6.T3.2.2.1.m1.1c">\checkmark</annotation><annotation encoding="application/x-llamapun" id="S6.T3.2.2.1.m1.1d">✓</annotation></semantics></math></th>
<td class="ltx_td ltx_align_center" id="S6.T3.2.2.3">62.9%</td>
<td class="ltx_td ltx_align_center" id="S6.T3.2.2.4">78.2%</td>
<td class="ltx_td ltx_align_center" id="S6.T3.2.2.5">42.5%</td>
<td class="ltx_td ltx_align_center" id="S6.T3.2.2.6">68.6%</td>
</tr>
<tr class="ltx_tr" id="S6.T3.3.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S6.T3.3.3.2">w/o any reasoning</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S6.T3.3.3.1"><svg class="ltx_picture ltx_markedasmath" height="10.02" id="S6.T3.3.3.1.m1.1.1.pic1" overflow="visible" version="1.1" width="10.02"><g fill="#000000" stroke="#000000" transform="translate(0,10.02) matrix(1 0 0 -1 0 0) translate(0.48,0) translate(0,0.48)"><g stroke-linecap="round" stroke-width="0.7pt"><path d="M 0 0 C 3.16 3.9 5.16 5.9 9.05 9.05" style="fill:none"></path></g><g stroke-linecap="round" stroke-width="0.7pt"><path d="M 1.81 8.6 C 3.77 5.3 4.95 3.53 7.24 0.45" style="fill:none"></path></g></g></svg></th>
<td class="ltx_td ltx_align_center" id="S6.T3.3.3.3">63.2%</td>
<td class="ltx_td ltx_align_center" id="S6.T3.3.3.4"><span class="ltx_text ltx_framed ltx_framed_underline" id="S6.T3.3.3.4.1">81.0%</span></td>
<td class="ltx_td ltx_align_center" id="S6.T3.3.3.5">44.1%</td>
<td class="ltx_td ltx_align_center" id="S6.T3.3.3.6">71.1%</td>
</tr>
<tr class="ltx_tr" id="S6.T3.4.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S6.T3.4.4.2">w/o reasoning-intensive part</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S6.T3.4.4.1"><svg class="ltx_picture ltx_markedasmath" height="10.02" id="S6.T3.4.4.1.m1.1.1.pic1" overflow="visible" version="1.1" width="10.02"><g fill="#000000" stroke="#000000" transform="translate(0,10.02) matrix(1 0 0 -1 0 0) translate(0.48,0) translate(0,0.48)"><g stroke-linecap="round" stroke-width="0.7pt"><path d="M 0 0 C 3.16 3.9 5.16 5.9 9.05 9.05" style="fill:none"></path></g><g stroke-linecap="round" stroke-width="0.7pt"><path d="M 1.81 8.6 C 3.77 5.3 4.95 3.53 7.24 0.45" style="fill:none"></path></g></g></svg></th>
<td class="ltx_td ltx_align_center" id="S6.T3.4.4.3">62.7%</td>
<td class="ltx_td ltx_align_center" id="S6.T3.4.4.4">78.9%</td>
<td class="ltx_td ltx_align_center" id="S6.T3.4.4.5">44.7%</td>
<td class="ltx_td ltx_align_center" id="S6.T3.4.4.6">71.5%</td>
</tr>
<tr class="ltx_tr" id="S6.T3.5.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S6.T3.5.5.2">w/o reasoning-intensive part</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S6.T3.5.5.1"><math alttext="\checkmark" class="ltx_Math" display="inline" id="S6.T3.5.5.1.m1.1"><semantics id="S6.T3.5.5.1.m1.1a"><mi id="S6.T3.5.5.1.m1.1.1" mathvariant="normal" xref="S6.T3.5.5.1.m1.1.1.cmml">✓</mi><annotation-xml encoding="MathML-Content" id="S6.T3.5.5.1.m1.1b"><ci id="S6.T3.5.5.1.m1.1.1.cmml" xref="S6.T3.5.5.1.m1.1.1">✓</ci></annotation-xml><annotation encoding="application/x-tex" id="S6.T3.5.5.1.m1.1c">\checkmark</annotation><annotation encoding="application/x-llamapun" id="S6.T3.5.5.1.m1.1d">✓</annotation></semantics></math></th>
<td class="ltx_td ltx_align_center" id="S6.T3.5.5.3">61.6%</td>
<td class="ltx_td ltx_align_center" id="S6.T3.5.5.4">76.6%</td>
<td class="ltx_td ltx_align_center" id="S6.T3.5.5.5">42.3%</td>
<td class="ltx_td ltx_align_center" id="S6.T3.5.5.6">67.5%</td>
</tr>
<tr class="ltx_tr" id="S6.T3.6.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S6.T3.6.6.2">Reasoning-intensive part only</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S6.T3.6.6.1"><math alttext="\checkmark" class="ltx_Math" display="inline" id="S6.T3.6.6.1.m1.1"><semantics id="S6.T3.6.6.1.m1.1a"><mi id="S6.T3.6.6.1.m1.1.1" mathvariant="normal" xref="S6.T3.6.6.1.m1.1.1.cmml">✓</mi><annotation-xml encoding="MathML-Content" id="S6.T3.6.6.1.m1.1b"><ci id="S6.T3.6.6.1.m1.1.1.cmml" xref="S6.T3.6.6.1.m1.1.1">✓</ci></annotation-xml><annotation encoding="application/x-tex" id="S6.T3.6.6.1.m1.1c">\checkmark</annotation><annotation encoding="application/x-llamapun" id="S6.T3.6.6.1.m1.1d">✓</annotation></semantics></math></th>
<td class="ltx_td ltx_align_center" id="S6.T3.6.6.3">58.8%</td>
<td class="ltx_td ltx_align_center" id="S6.T3.6.6.4">75.2%</td>
<td class="ltx_td ltx_align_center" id="S6.T3.6.6.5">40.1%</td>
<td class="ltx_td ltx_align_center" id="S6.T3.6.6.6">63.5%</td>
</tr>
<tr class="ltx_tr" id="S6.T3.7.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_t" id="S6.T3.7.7.2">Full SFT data + pDPO</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_bb ltx_border_t" id="S6.T3.7.7.1"><math alttext="\checkmark" class="ltx_Math" display="inline" id="S6.T3.7.7.1.m1.1"><semantics id="S6.T3.7.7.1.m1.1a"><mi id="S6.T3.7.7.1.m1.1.1" mathvariant="normal" xref="S6.T3.7.7.1.m1.1.1.cmml">✓</mi><annotation-xml encoding="MathML-Content" id="S6.T3.7.7.1.m1.1b"><ci id="S6.T3.7.7.1.m1.1.1.cmml" xref="S6.T3.7.7.1.m1.1.1">✓</ci></annotation-xml><annotation encoding="application/x-tex" id="S6.T3.7.7.1.m1.1c">\checkmark</annotation><annotation encoding="application/x-llamapun" id="S6.T3.7.7.1.m1.1d">✓</annotation></semantics></math></th>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S6.T3.7.7.3">
<span class="ltx_text ltx_font_bold" id="S6.T3.7.7.3.1">65.6</span>%</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S6.T3.7.7.4">
<span class="ltx_text ltx_font_bold" id="S6.T3.7.7.4.1">82.3</span>%</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S6.T3.7.7.5">
<span class="ltx_text ltx_font_bold" id="S6.T3.7.7.5.1">48.3</span>%</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S6.T3.7.7.6">
<span class="ltx_text ltx_font_bold" id="S6.T3.7.7.6.1">76.7</span>%</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 Table 3 analyzes how different subsets of the audio-visual supervised fine-tuning (SFT) data impact the model's performance on three different benchmarks: VideoMME, Academic, and StandUp.  It compares the full SFT data, data without the reasoning-intensive portion, data with only the reasoning intensive part, and data where the model directly outputs answers without any reasoning steps.  The results show the accuracy of each configuration across the three benchmarks, highlighting the importance of reasoning-intensive data and the effect of removing it.  Underscores indicate the second-best performance for easier comparison. 
> <details>
> <summary>read the caption</summary>
> Table 3: Effect of different parts of the audio-visual SFT data on VideoMME, Academic and StandUp test sets. Underscore for second-best results. “w/o reasoning-intensive part” means removing the reasoning-intensive SFT data, and “w/o any reasoning” always directly outputting answers during SFT. “Reasoning-intensive part only” always performs reasoning for QA.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S6.T4.1">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S6.T4.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_tt" id="S6.T4.1.1.1.1">Training Configuration</th>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S6.T4.1.1.1.2">Inference</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S6.T4.1.1.1.3">VideoMME</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S6.T4.1.1.1.4">NExT-QA</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S6.T4.1.1.1.5">StandUp</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S6.T4.1.1.1.6">Academic</td>
</tr>
<tr class="ltx_tr" id="S6.T4.1.2.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S6.T4.1.2.2.1">SFT</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T4.1.2.2.2">1-best</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T4.1.2.2.3">62.9%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T4.1.2.2.4">78.2%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T4.1.2.2.5">68.6%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T4.1.2.2.6">42.5%</td>
</tr>
<tr class="ltx_tr" id="S6.T4.1.3.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S6.T4.1.3.3.1">SFT</th>
<td class="ltx_td ltx_align_center" id="S6.T4.1.3.3.2">Major@20</td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.3.3.3">63.5%</td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.3.3.4">81.5%</td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.3.3.5">73.5%</td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.3.3.6">45.3%</td>
</tr>
<tr class="ltx_tr" id="S6.T4.1.4.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S6.T4.1.4.4.1">SFT + ORM</th>
<td class="ltx_td ltx_align_center" id="S6.T4.1.4.4.2">RM@20</td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.4.4.3">62.7%</td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.4.4.4">78.5%</td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.4.4.5">69.0%</td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.4.4.6">42.6%</td>
</tr>
<tr class="ltx_tr" id="S6.T4.1.5.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S6.T4.1.5.5.1">SFT + PRM</th>
<td class="ltx_td ltx_align_center" id="S6.T4.1.5.5.2">RM@20</td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.5.5.3">63.5%</td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.5.5.4">79.3%</td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.5.5.5">72.1%</td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.5.5.6">43.9%</td>
</tr>
<tr class="ltx_tr" id="S6.T4.1.6.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S6.T4.1.6.6.1">SFT + pDPO</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S6.T4.1.6.6.2">1-best</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S6.T4.1.6.6.3">
<span class="ltx_text ltx_font_bold" id="S6.T4.1.6.6.3.1">65.6</span>%</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S6.T4.1.6.6.4">
<span class="ltx_text ltx_font_bold" id="S6.T4.1.6.6.4.1">82.3</span>%</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S6.T4.1.6.6.5">
<span class="ltx_text ltx_font_bold" id="S6.T4.1.6.6.5.1">76.7</span>%</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S6.T4.1.6.6.6">
<span class="ltx_text ltx_font_bold" id="S6.T4.1.6.6.6.1">48.3</span>%</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table compares the performance of different reward modeling methods on four video understanding benchmarks: VideoMME, NEXT-QA, StandUp (from RivaBench), and Academic (from RivaBench).  The methods compared are standard supervised fine-tuning (SFT), SFT with outcome reward model (ORM), SFT with process reward model (PRM), and SFT with process direct preference optimization (pDPO).  Performance is measured using two metrics: Major@20 (majority voting accuracy over 20 sampled reasoning paths) and RM@20 (best-of-n accuracy over 20 samples). The pDPO method, which uses preference pairs of complete reasoning paths, is highlighted as a key approach in the paper.  The results demonstrate how the different reward models influence the ability of the large language model to reason through the video understanding problems.
> <details>
> <summary>read the caption</summary>
> Table 4: Effect of different reward modelling methods on VideoMME, NExT-QA, the StandUp and Academic split of RivaBench. Major@20 and RM@20 are evaluated following Zhang et al. (2024a), where Major@20 refers to the accuracy under majority voting with 20 sampled paths, and RM@20 is the best-of-n with 20 samples. Samples are all generated from the model after SFT. pDPO with full paths only uses preference pairs of complete reasoning paths.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="A5.T5.6">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A5.T5.6.7.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="A5.T5.6.7.1.1">Type</th>
<th class="ltx_td ltx_align_justify ltx_align_top ltx_th ltx_th_column ltx_border_tt" id="A5.T5.6.7.1.2">
<span class="ltx_inline-block ltx_align_top" id="A5.T5.6.7.1.2.1">
<span class="ltx_p" id="A5.T5.6.7.1.2.1.1" style="width:341.4pt;">Prompt content</span>
</span>
</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A5.T5.2.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A5.T5.2.2.3">Direct answer</th>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A5.T5.2.2.2">
<span class="ltx_inline-block ltx_align_top" id="A5.T5.2.2.2.2">
<span class="ltx_p" id="A5.T5.2.2.2.2.2" style="width:341.4pt;"><math alttext="&lt;" class="ltx_Math" display="inline" id="A5.T5.1.1.1.1.1.m1.1"><semantics id="A5.T5.1.1.1.1.1.m1.1a"><mo id="A5.T5.1.1.1.1.1.m1.1.1" xref="A5.T5.1.1.1.1.1.m1.1.1.cmml">&lt;</mo><annotation-xml encoding="MathML-Content" id="A5.T5.1.1.1.1.1.m1.1b"><lt id="A5.T5.1.1.1.1.1.m1.1.1.cmml" xref="A5.T5.1.1.1.1.1.m1.1.1"></lt></annotation-xml><annotation encoding="application/x-tex" id="A5.T5.1.1.1.1.1.m1.1c">&lt;</annotation><annotation encoding="application/x-llamapun" id="A5.T5.1.1.1.1.1.m1.1d">&lt;</annotation></semantics></math>VIDEO<math alttext="&gt;" class="ltx_Math" display="inline" id="A5.T5.2.2.2.2.2.m2.1"><semantics id="A5.T5.2.2.2.2.2.m2.1a"><mo id="A5.T5.2.2.2.2.2.m2.1.1" xref="A5.T5.2.2.2.2.2.m2.1.1.cmml">&gt;</mo><annotation-xml encoding="MathML-Content" id="A5.T5.2.2.2.2.2.m2.1b"><gt id="A5.T5.2.2.2.2.2.m2.1.1.cmml" xref="A5.T5.2.2.2.2.2.m2.1.1"></gt></annotation-xml><annotation encoding="application/x-tex" id="A5.T5.2.2.2.2.2.m2.1c">&gt;</annotation><annotation encoding="application/x-llamapun" id="A5.T5.2.2.2.2.2.m2.1d">&gt;</annotation></semantics></math>Select the best answer to the following question based on the video. Respond with only the letter of the correct option.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T5.6.8.1">
<th class="ltx_td ltx_th ltx_th_row" id="A5.T5.6.8.1.1"></th>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A5.T5.6.8.1.2">
<span class="ltx_inline-block ltx_align_top" id="A5.T5.6.8.1.2.1">
<span class="ltx_p" id="A5.T5.6.8.1.2.1.1" style="width:341.4pt;"><span class="ltx_text" id="A5.T5.6.8.1.2.1.1.1">{Question}</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T5.6.9.2">
<th class="ltx_td ltx_th ltx_th_row" id="A5.T5.6.9.2.1"></th>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A5.T5.6.9.2.2">
<span class="ltx_inline-block ltx_align_top" id="A5.T5.6.9.2.2.1">
<span class="ltx_p" id="A5.T5.6.9.2.2.1.1" style="width:341.4pt;"><span class="ltx_text" id="A5.T5.6.9.2.2.1.1.1">Choose from: A. {Option A}, B, {Option B}…</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T5.4.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A5.T5.4.4.3">Reasoning</th>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A5.T5.4.4.2">
<span class="ltx_inline-block ltx_align_top" id="A5.T5.4.4.2.2">
<span class="ltx_p" id="A5.T5.4.4.2.2.2" style="width:341.4pt;"><math alttext="&lt;" class="ltx_Math" display="inline" id="A5.T5.3.3.1.1.1.m1.1"><semantics id="A5.T5.3.3.1.1.1.m1.1a"><mo id="A5.T5.3.3.1.1.1.m1.1.1" xref="A5.T5.3.3.1.1.1.m1.1.1.cmml">&lt;</mo><annotation-xml encoding="MathML-Content" id="A5.T5.3.3.1.1.1.m1.1b"><lt id="A5.T5.3.3.1.1.1.m1.1.1.cmml" xref="A5.T5.3.3.1.1.1.m1.1.1"></lt></annotation-xml><annotation encoding="application/x-tex" id="A5.T5.3.3.1.1.1.m1.1c">&lt;</annotation><annotation encoding="application/x-llamapun" id="A5.T5.3.3.1.1.1.m1.1d">&lt;</annotation></semantics></math>VIDEO<math alttext="&gt;" class="ltx_Math" display="inline" id="A5.T5.4.4.2.2.2.m2.1"><semantics id="A5.T5.4.4.2.2.2.m2.1a"><mo id="A5.T5.4.4.2.2.2.m2.1.1" xref="A5.T5.4.4.2.2.2.m2.1.1.cmml">&gt;</mo><annotation-xml encoding="MathML-Content" id="A5.T5.4.4.2.2.2.m2.1b"><gt id="A5.T5.4.4.2.2.2.m2.1.1.cmml" xref="A5.T5.4.4.2.2.2.m2.1.1"></gt></annotation-xml><annotation encoding="application/x-tex" id="A5.T5.4.4.2.2.2.m2.1c">&gt;</annotation><annotation encoding="application/x-llamapun" id="A5.T5.4.4.2.2.2.m2.1d">&gt;</annotation></semantics></math> Question:</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T5.6.10.3">
<th class="ltx_td ltx_th ltx_th_row" id="A5.T5.6.10.3.1"></th>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A5.T5.6.10.3.2">
<span class="ltx_inline-block ltx_align_top" id="A5.T5.6.10.3.2.1">
<span class="ltx_p" id="A5.T5.6.10.3.2.1.1" style="width:341.4pt;"><span class="ltx_text" id="A5.T5.6.10.3.2.1.1.1">{Question}</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T5.6.11.4">
<th class="ltx_td ltx_th ltx_th_row" id="A5.T5.6.11.4.1"></th>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A5.T5.6.11.4.2">
<span class="ltx_inline-block ltx_align_top" id="A5.T5.6.11.4.2.1">
<span class="ltx_p" id="A5.T5.6.11.4.2.1.1" style="width:341.4pt;"><span class="ltx_text" id="A5.T5.6.11.4.2.1.1.1">Choose from: A. {Option A}, B, {Option B}…</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T5.6.6">
<th class="ltx_td ltx_th ltx_th_row" id="A5.T5.6.6.3"></th>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A5.T5.6.6.2">
<span class="ltx_inline-block ltx_align_top" id="A5.T5.6.6.2.2">
<span class="ltx_p" id="A5.T5.6.6.2.2.2" style="width:341.4pt;">Answer the question step by step. Output each thinking step. Mark the end of each step with <math alttext="&lt;" class="ltx_Math" display="inline" id="A5.T5.5.5.1.1.1.m1.1"><semantics id="A5.T5.5.5.1.1.1.m1.1a"><mo id="A5.T5.5.5.1.1.1.m1.1.1" xref="A5.T5.5.5.1.1.1.m1.1.1.cmml">&lt;</mo><annotation-xml encoding="MathML-Content" id="A5.T5.5.5.1.1.1.m1.1b"><lt id="A5.T5.5.5.1.1.1.m1.1.1.cmml" xref="A5.T5.5.5.1.1.1.m1.1.1"></lt></annotation-xml><annotation encoding="application/x-tex" id="A5.T5.5.5.1.1.1.m1.1c">&lt;</annotation><annotation encoding="application/x-llamapun" id="A5.T5.5.5.1.1.1.m1.1d">&lt;</annotation></semantics></math>end_of_step<math alttext="&gt;" class="ltx_Math" display="inline" id="A5.T5.6.6.2.2.2.m2.1"><semantics id="A5.T5.6.6.2.2.2.m2.1a"><mo id="A5.T5.6.6.2.2.2.m2.1.1" xref="A5.T5.6.6.2.2.2.m2.1.1.cmml">&gt;</mo><annotation-xml encoding="MathML-Content" id="A5.T5.6.6.2.2.2.m2.1b"><gt id="A5.T5.6.6.2.2.2.m2.1.1.cmml" xref="A5.T5.6.6.2.2.2.m2.1.1"></gt></annotation-xml><annotation encoding="application/x-tex" id="A5.T5.6.6.2.2.2.m2.1c">&gt;</annotation><annotation encoding="application/x-llamapun" id="A5.T5.6.6.2.2.2.m2.1d">&gt;</annotation></semantics></math> token.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T5.6.12.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="A5.T5.6.12.5.1">SynthDec</th>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb" id="A5.T5.6.12.5.2">
<span class="ltx_inline-block ltx_align_top" id="A5.T5.6.12.5.2.1">
<span class="ltx_p" id="A5.T5.6.12.5.2.1.1" style="width:341.4pt;">An AI-generated video contains unnatural distorted things, such as distorted hands or faces. Is the given video AI generated? Answer YES or NO. Answer step by step and output each step clearly.</span>
</span>
</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the prompt templates used for different task types in the video-SALMONN-01 model.  It shows how the prompts are structured for direct answer tasks (requiring a single choice from provided options), reasoning tasks (requiring step-by-step explanations and a final answer), and synthetic video detection tasks (requiring identification of AI-generated video features and a yes/no answer).  The different prompt structures illustrate how the model's interaction and expected output vary based on the task demands.
> <details>
> <summary>read the caption</summary>
> Table 5: Prompt used for different types of tasks.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2502.11775/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.11775/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.11775/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.11775/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.11775/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.11775/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.11775/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.11775/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.11775/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.11775/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.11775/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.11775/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.11775/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.11775/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.11775/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.11775/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.11775/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.11775/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.11775/19.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}