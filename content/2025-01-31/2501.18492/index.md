---
title: "GuardReasoner: Towards Reasoning-based LLM Safeguards"
summary: "GuardReasoner enhances LLM safety with reasoning-based guardrails, improving performance, explainability, and generalization on various benchmarks."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Natural Language Processing", "Large Language Models", "🏢 National University of Singapore",]
showSummary: true
date: 2025-01-30
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2501.18492 {{< /keyword >}}
{{< keyword icon="writer" >}} Yue Liu et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-01-31 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2501.18492" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2501.18492" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2501.18492/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Large Language Models (LLMs) are increasingly used in safety-critical applications, raising significant concerns about their safety and reliability. Existing guardrails for LLMs often fall short due to limited reasoning capabilities, lack of explainability, and poor generalization to new types of harmful behavior. These limitations hinder the development of truly safe and dependable AI systems. 

To overcome these challenges, the researchers propose GuardReasoner, a novel reasoning-based safeguard.  GuardReasoner uses a two-stage training process: reasoning supervised fine-tuning (R-SFT) followed by hard sample direct preference optimization (HS-DPO).  R-SFT unlocks the reasoning abilities of the guard model, while HS-DPO enhances its ability to handle ambiguous situations. This approach leads to a guardrail that not only provides moderation decisions but also offers detailed reasoning steps and thus improved explainability and generalization. Experiments demonstrate GuardReasoner's superiority across multiple benchmarks, surpassing existing methods in performance, explainability, and generalization.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} GuardReasoner, a novel reasoning-based LLM safeguard, significantly improves performance, explainability, and generalizability compared to existing methods. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} The GuardReasonerTrain dataset, comprising 127K samples and 460K detailed reasoning steps, enables the training of more robust and explainable guard models. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} The introduced R-SFT and HS-DPO training techniques effectively unlock reasoning capabilities in guard models, leading to superior performance on various benchmarks. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper is important because it addresses the critical challenge of LLM safety by introducing **GuardReasoner**, a novel reasoning-based guardrail.  The work is significant due to its focus on **explainability and generalizability**, which are often lacking in current LLM safety solutions.  The open-sourcing of data, code, and models facilitates further research and development in this critical area.  The findings directly impact the design and evaluation of safer and more responsible AI systems.

------
#### Visual Insights



![](https://arxiv.org/html/2501.18492/x1.png)

> 🔼 This figure compares the performance of LLaMA Guard 3 and GuardReasoner on a prompt from the WildGuardTest dataset.  The comparison highlights three key aspects:  (1) **Performance:** The F1 scores show GuardReasoner's improved accuracy in identifying harmful prompts compared to LLaMA Guard 3. (2) **Explainability:** GuardReasoner provides detailed reasoning steps behind its classification, while LLaMA Guard 3 offers a less transparent output. (3) **Generalization:**  GuardReasoner demonstrates better generalization by handling prompts beyond predefined categories, whereas LLaMA Guard 3 relies on fixed, predefined harmful categories. The example shown illustrates how GuardReasoner successfully identifies a deceptive request, offering a step-by-step explanation to support its classification, in contrast to LLaMA Guard 3 which flags the prompt without providing such detail.
> <details>
> <summary>read the caption</summary>
> Figure 1: Demonstrations of LLaMA Guard 3 (left side) and our GuardReasoner (right side), mainly focusing on 3 aspects: (1) performance, (2) explainability, and (3) generalization. We sample this case from the WildGuardTest (Han et al., 2024) dataset.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S3.T1.1.1">
<tr class="ltx_tr" id="S3.T1.1.1.1">
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.1.1" style="padding:1.5pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.1.1.1">Training Corpus</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.1.2" style="padding:1.5pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.1.2.1"># Sample</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.1.3" style="padding:1.5pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.1.3.1"># Step</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.1.4" style="padding:1.5pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.1.4.1">Mean Step</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.1.5" style="padding:1.5pt 3.0pt;">
<span class="ltx_text" id="S3.T1.1.1.1.5.1"></span> <span class="ltx_text" id="S3.T1.1.1.1.5.2">
<span class="ltx_tabular ltx_align_middle" id="S3.T1.1.1.1.5.2.1">
<span class="ltx_tr" id="S3.T1.1.1.1.5.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T1.1.1.1.5.2.1.1.1" style="padding:1.5pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.1.5.2.1.1.1.1">Mean Len.</span></span></span>
<span class="ltx_tr" id="S3.T1.1.1.1.5.2.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T1.1.1.1.5.2.1.2.1" style="padding:1.5pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.1.5.2.1.2.1.1">per Step</span></span></span>
</span></span><span class="ltx_text" id="S3.T1.1.1.1.5.3"></span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.1.2">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="5" id="S3.T1.1.1.2.1" style="padding:1.5pt 3.0pt;">Seed Data</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.1.3">
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.3.1" style="padding:1.5pt 3.0pt;">WildGuardTrain</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.3.2" style="padding:1.5pt 3.0pt;">86,759</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.3.3" style="padding:1.5pt 3.0pt;">0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.3.4" style="padding:1.5pt 3.0pt;">0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.3.5" style="padding:1.5pt 3.0pt;">0</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.1.4">
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.4.1" style="padding:1.5pt 3.0pt;">AegisTrain</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.4.2" style="padding:1.5pt 3.0pt;">10,798</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.4.3" style="padding:1.5pt 3.0pt;">0</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.4.4" style="padding:1.5pt 3.0pt;">0</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.4.5" style="padding:1.5pt 3.0pt;">0</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.1.5">
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.5.1" style="padding:1.5pt 3.0pt;">BeaverTailsTrain</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.5.2" style="padding:1.5pt 3.0pt;">27,186</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.5.3" style="padding:1.5pt 3.0pt;">0</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.5.4" style="padding:1.5pt 3.0pt;">0</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.5.5" style="padding:1.5pt 3.0pt;">0</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.1.6">
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.6.1" style="padding:1.5pt 3.0pt;">ToxicChatTrain</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.6.2" style="padding:1.5pt 3.0pt;">5,082</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.6.3" style="padding:1.5pt 3.0pt;">0</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.6.4" style="padding:1.5pt 3.0pt;">0</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.6.5" style="padding:1.5pt 3.0pt;">0</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.1.7">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="5" id="S3.T1.1.1.7.1" style="padding:1.5pt 3.0pt;">Synthesized Reasoning Data</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.1.8">
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.8.1" style="padding:1.5pt 3.0pt;">WildGuardTrain-R</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.8.2" style="padding:1.5pt 3.0pt;">86,759</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.8.3" style="padding:1.5pt 3.0pt;">323,930</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.8.4" style="padding:1.5pt 3.0pt;">3.73</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.8.5" style="padding:1.5pt 3.0pt;">138.35</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.1.9">
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.9.1" style="padding:1.5pt 3.0pt;">AegisTrain-R</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.9.2" style="padding:1.5pt 3.0pt;">10,798</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.9.3" style="padding:1.5pt 3.0pt;">37,082</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.9.4" style="padding:1.5pt 3.0pt;">3.43</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.9.5" style="padding:1.5pt 3.0pt;">140.83</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.1.10">
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.10.1" style="padding:1.5pt 3.0pt;">BeaverTailsTrain-R</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.10.2" style="padding:1.5pt 3.0pt;">27,186</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.10.3" style="padding:1.5pt 3.0pt;">90,553</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.10.4" style="padding:1.5pt 3.0pt;">3.33</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.10.5" style="padding:1.5pt 3.0pt;">114.49</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.1.11">
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.11.1" style="padding:1.5pt 3.0pt;">ToxicChatTrain-R</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.11.2" style="padding:1.5pt 3.0pt;">2,801</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.11.3" style="padding:1.5pt 3.0pt;">9,094</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.11.4" style="padding:1.5pt 3.0pt;">3.25</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.11.5" style="padding:1.5pt 3.0pt;">143.89</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.1.12">
<td class="ltx_td ltx_align_center ltx_border_b" id="S3.T1.1.1.12.1" style="padding:1.5pt 3.0pt;">GuardReasonerTrain</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S3.T1.1.1.12.2" style="padding:1.5pt 3.0pt;">127,544</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S3.T1.1.1.12.3" style="padding:1.5pt 3.0pt;">460,659</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S3.T1.1.1.12.4" style="padding:1.5pt 3.0pt;">3.61</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S3.T1.1.1.12.5" style="padding:1.5pt 3.0pt;">133.97</td>
</tr>
</table>{{< /table-caption >}}

> 🔼 This table presents a statistical summary of the datasets used to train the GuardReasoner model. It breaks down the number of samples and reasoning steps in each dataset, providing context for the scale and composition of the training data.  The 'Mean Step' column shows the average number of steps in the reasoning process for each sample, and 'Mean Len. per Step' shows the average length of each step in the reasoning process. This information is crucial in understanding the model's training process and how much reasoning data was incorporated.
> <details>
> <summary>read the caption</summary>
> Table 1: Statistical information of the training corpus.
> </details>





### In-depth insights


#### LLM Safety: Guardrails
LLM safety, especially concerning the deployment of large language models in real-world applications, is a critical concern.  **Guardrails**, in this context, represent the various mechanisms and techniques designed to mitigate risks associated with LLMs.  These can range from simple input filtering and output sanitization to more sophisticated methods like reinforcement learning from human feedback (RLHF) and adversarial training.  The effectiveness of these guardrails is constantly challenged by sophisticated attacks and prompt engineering, highlighting the need for robust, adaptable, and explainable safety mechanisms.  **Research continues to explore the limitations of current guardrails**, particularly in handling unforeseen or novel attack vectors.  Furthermore, there is ongoing debate on the ideal balance between safety and functionality; overly restrictive guardrails can limit the usefulness of LLMs, while insufficient safeguards can lead to harmful outcomes.  Therefore, **future research must focus on developing more sophisticated, adaptable, and transparent guardrail strategies** that proactively address the evolving threat landscape and allow for a more nuanced approach to managing the inherent risks of LLMs.

#### Reasoning-based SFT
Reasoning-based Supervised Fine-Tuning (SFT) represents a significant advancement in training guardrail models for LLMs.  Standard SFT methods often fall short in generating truly robust and explainable safeguards, as they primarily focus on surface-level pattern recognition.  **The key innovation of reasoning-based SFT lies in its integration of explicit reasoning steps into the training data**.  This allows the guard model to learn not just to classify inputs as safe or unsafe, but to also justify its classification through a chain of logical inferences. By guiding the model to reason, the method enhances both its **performance** (by improving classification accuracy) and **explainability** (by providing a transparent rationale for decisions).  This leads to more robust and reliable safeguards, capable of handling more nuanced and adversarial scenarios that traditional SFT methods may struggle with. The method's success hinges on the creation of a high-quality training dataset that includes both the input, the correct output, and a detailed step-by-step reasoning path. The effectiveness is further boosted by incorporating techniques like hard sample mining to focus learning on the most challenging cases, and direct preference optimization for finer-grained control over model behavior.

#### HS-DPO: Hard Samples
The concept of 'HS-DPO: Hard Samples' within the context of a research paper on AI safety is intriguing.  It suggests a method to improve the robustness and accuracy of a guard model by focusing on the most challenging examples. **Hard samples**, those near the decision boundary where the model is least certain, are crucial for effective learning. The use of direct preference optimization (DPO) to train the model on these hard samples implies a learning paradigm that emphasizes refining the model's ability to distinguish subtle differences between safe and harmful inputs. This approach is **more effective** than standard methods that may overfit on easily classifiable data.  By **weighting hard samples more heavily**, the algorithm prioritizes addressing the most challenging scenarios, leading to a more generalizable and reliable safeguard. The effectiveness of this strategy hinges on the ability to effectively identify and generate these hard samples, potentially using techniques like adversarial attacks or sophisticated sampling strategies. This approach is promising because it directly addresses the limitations of typical training methods in AI safety, which often fail to adequately address the nuances and complexities of real-world harm.

#### GuardReasoner: Results
A hypothetical 'GuardReasoner: Results' section would likely present a multifaceted evaluation of the proposed model.  **Benchmark comparisons** against existing LLMs and guardrails would be crucial, showcasing improvements in performance metrics like F1-score across various safety-critical tasks (harmfulness detection, refusal detection, etc.).  The results should detail performance gains across different model sizes (1B, 3B, 8B parameters), highlighting the impact of scaling on accuracy and efficiency.  **Explainability analysis** should demonstrate GuardReasoner's capacity for providing detailed reasoning steps, thereby enhancing trust and transparency.  The analysis should discuss the model's ability to generalize beyond the training data, demonstrating robustness against adversarial attacks and open-ended harmful content.   **Qualitative analysis** with case studies would strengthen the results by providing concrete examples of how GuardReasoner outperforms existing methods in challenging scenarios. Finally, a discussion on resource efficiency (training time, computational costs) is critical for assessing the model's practical viability.  The overall presentation should emphasize the **superiority** of GuardReasoner in performance, explainability, and generalizability compared to state-of-the-art alternatives.

#### Future Work: Efficiency
Future work in enhancing the efficiency of reasoning-based guardrails for LLMs is crucial.  **Reducing computational costs** is paramount, as current methods can be resource-intensive.  This could involve exploring more efficient reasoning strategies, potentially leveraging techniques like **knowledge distillation** to create smaller, faster guard models without significant performance loss.  Another avenue is to **optimize the training process** itself, perhaps by investigating more sample-efficient training methods or developing techniques for better data selection and synthesis.  **Improving the balance between reasoning depth and speed** is also key.  Overly deep reasoning might not be necessary for many moderation tasks, so finding the optimal level of reasoning to achieve a balance between accuracy and efficiency is essential.  This might involve techniques that allow the model to selectively apply more or less reasoning based on the complexity of the input.  Ultimately, **achieving high performance with significantly lower resource requirements** is the goal, making large-scale deployment of reasoning-based safeguards for LLMs more feasible.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2501.18492/x2.png)

> 🔼 GuardReasoner is composed of three stages: (1) Reasoning Data Synthesis uses GPT-4 to generate a dataset (GuardReasonerTrain) by providing it with user prompts, model responses, and ground truth labels.  The model then infers the reasoning steps needed to arrive at the ground truth. (2) Reasoning SFT (Supervised Fine-Tuning) trains a base model using the GuardReasonerTrain dataset to develop a reasoning model (ℳR-SFT). (3) Hard Sample DPO (Direct Preference Optimization) identifies ambiguous samples from ℳR-SFT's output by generating multiple outputs for the same input.  It uses an ensemble of reasoning models trained on subsets of the data to improve diversity and then uses HS-DPO, up-weighting harder samples to improve reasoning ability by focusing on the decision boundary.
> <details>
> <summary>read the caption</summary>
> Figure 2: GuardReasoner consists of three modules: (1) Reasoning Data Synthesis, (2) Reasoning SFT, and (3) Hard Sample DPO. (1) First, GPT-4o is used to create reasoning data (GuardReasonerTrain) by inputting the user’s prompt, the target model’s response, and the ground truth. (2) Then, the base model is trained by R-SFT on this dataset to develop the reasoning model ℳR-SFTsubscriptℳR-SFT\mathcal{M}_{\text{R-SFT}}caligraphic_M start_POSTSUBSCRIPT R-SFT end_POSTSUBSCRIPT. (3) ℳR-SFTsubscriptℳR-SFT\mathcal{M}_{\text{R-SFT}}caligraphic_M start_POSTSUBSCRIPT R-SFT end_POSTSUBSCRIPT produces k𝑘kitalic_k outputs to identify the ambiguous samples with both correct and incorrect responses. Different reasoning models, which are trained on different subsets of the reasoning data, are used to improve the diversity of these samples, and an ensemble approach is applied. Lastly, HS-DPO is performed on these ambiguous samples, selecting correct outputs as positive data and incorrect ones as negative data, with a focus on hard samples by up-weighting those with more errors. In this way, we guide GuardReasoner to learn to reason.
> </details>



![](https://arxiv.org/html/2501.18492/x3.png)

> 🔼 This figure showcases a comparison between Baselinemix and GuardReasoner's performance on a single example from the ToxicChat dataset.  It highlights how GuardReasoner, by incorporating a reasoning process, correctly identifies a harmful prompt where Baselinemix fails. This demonstrates GuardReasoner's improved accuracy in moderation tasks due to its enhanced reasoning capabilities.
> <details>
> <summary>read the caption</summary>
> Figure 3: Performance: Baselinemixmix{}_{\text{mix}}start_FLOATSUBSCRIPT mix end_FLOATSUBSCRIPT vs. GuardReasoner on one conventional case from the ToxicChat dataset (Lin et al., 2023).
> </details>



![](https://arxiv.org/html/2501.18492/x4.png)

> 🔼 This figure showcases a comparison of WildGuard and GuardReasoner's performance against a 'scenario nesting attack,' a sophisticated evasion technique from the WildGuardTest benchmark dataset. The figure highlights a specific example where WildGuard incorrectly classifies a harmful prompt as safe, while GuardReasoner accurately identifies it as harmful. This demonstrates GuardReasoner's superior ability to detect complex and nested adversarial attacks, showcasing its improved safety and robustness compared to WildGuard.
> <details>
> <summary>read the caption</summary>
> Figure 4: Performance: WildGuard vs. GuardReasoner against a scenario nesting attack from WildGuardTest (Han et al., 2024). GuardReasoner successfully defends while WildGuard fails.
> </details>



![](https://arxiv.org/html/2501.18492/x5.png)

> 🔼 GuardReasoner not only provides moderation results but also gives detailed reasoning steps behind its decisions. This transparency helps users understand why a certain decision was made, which is crucial for building trust and improving the model's reliability.  The figure shows how GuardReasoner's explanations helped correct mislabeled data in the OpenAI Moderation dataset, showcasing its ability to enhance the quality and explainability of moderation decisions.
> <details>
> <summary>read the caption</summary>
> Figure 5: Explainability: GuardReasoner offers transparent explanations for outcomes and helps labelers to fix the mislabelled label in the OpenAIModeration dataset (Markov et al., 2023).
> </details>



![](https://arxiv.org/html/2501.18492/x6.png)

> 🔼 This figure compares the performance of LLaMA Guard 3 and GuardReasoner on a specific example from the AegisSafetyTest dataset.  LLaMA Guard 3, a pre-existing model, relies on a predefined set of fixed harmful categories.  In contrast, GuardReasoner demonstrates superior generalizability by identifying harmful content without relying on these fixed categories, showcasing its ability to handle a broader range of potentially harmful scenarios.  The figure highlights GuardReasoner's open-ended and flexible approach to harmful content identification, suggesting greater adaptability to novel and evolving forms of misuse.
> <details>
> <summary>read the caption</summary>
> Figure 6: Generalizability: LLaMA Guard 3 vs. GuardReasoner on one case in AegisSafetyTest (Ghosh et al., 2024a). GuardReasoner provides open-ended non-fixed harmful categories.
> </details>



![](https://arxiv.org/html/2501.18492/x7.png)

> 🔼 This figure displays the training loss curves for the GuardReasoner model across three different sizes (1B, 3B, and 8B parameters).  Each row shows the convergence of the model during training. The graphs show the loss for both reasoning supervised fine-tuning (R-SFT) and hard sample direct preference optimization (HS-DPO).  The smoothed curves help visualize the overall trend of the loss during training. Observing the convergence behavior across different model sizes allows for an understanding of the training efficiency and stability of the GuardReasoner model.
> <details>
> <summary>read the caption</summary>
> Figure 7: Convergence of GuardReasoner. The first, second, and third row denotes 1B, 3B, and 8B models, respectively.
> </details>



![](https://arxiv.org/html/2501.18492/x8.png)

> 🔼 This figure showcases a case where the GuardReasoner model successfully corrects a mislabeled example from the AegisSafetyTest dataset.  Initially, the example was incorrectly labeled as 'harmful'. The GuardReasoner model analyzes the user's prompt and the AI's response, providing a step-by-step reasoning process.  Through this reasoning, the model determines that the content is not harmful, thus correcting the label to 'unharmful'. This demonstrates the model's ability to not only perform classification tasks, but also provide explainable and potentially correctable results.
> <details>
> <summary>read the caption</summary>
> Figure 8: One case of correcting the label from harmful to unharmful. It is from the AegisSafetyTest dataset (Ghosh et al., 2024a).
> </details>



![](https://arxiv.org/html/2501.18492/x9.png)

> 🔼 The figure showcases a case where the model initially classified a user's prompt as 'unharmful,' but after review and correction, it was reclassified as 'harmful.' The user's prompt is 'What does it feel like when you take LSD?'  The GuardReasoner's initial analysis considered the request harmless, lacking explicit harmful content. However, upon further analysis, it identified that the question implicitly promotes or normalizes the use of a controlled substance (LSD), which could be considered harmful due to potential health risks and illegal implications. This highlights GuardReasoner's ability to learn from corrections and improve its classification accuracy. The example is from the AegisSafetyTest dataset.
> <details>
> <summary>read the caption</summary>
> Figure 9: One case of correcting the label from unharmful to harmful. It is from the AegisSafetyTest dataset (Ghosh et al., 2024a).
> </details>



![](https://arxiv.org/html/2501.18492/x10.png)

> 🔼 This figure showcases an example from the BeaverTails dataset where the original label was incorrectly marked as 'harmful.'  The GuardReasoner model, through its reasoning process, successfully identifies the input as unharmful, highlighting its ability to correct mislabeled data and improve the accuracy of harmful content detection. The visualization likely displays the user's prompt, the AI's response, the GuardReasoner's step-by-step reasoning process leading to its conclusion, and the original and corrected labels.  This demonstrates the model's capacity for nuanced interpretation and its potential to enhance the reliability of existing safety datasets.
> <details>
> <summary>read the caption</summary>
> Figure 10: One case of correcting the label from harmful to unharmful. It is from the BeaverTails dataset (Ji et al., 2024b).
> </details>



![](https://arxiv.org/html/2501.18492/x11.png)

> 🔼 This figure showcases a case where the initial label of a sample in the BeaverTails dataset was incorrectly classified as 'unharmful', but after review and correction, it was rightfully changed to 'harmful'.  The image likely displays the original user prompt, the AI's response, and the reasoning process behind the label correction.  The reasoning process shows step-by-step analysis highlighting why the response is actually harmful, even if it initially appeared benign.
> <details>
> <summary>read the caption</summary>
> Figure 11: One case of correcting the label from unharmful to harmful. It is from the BeaverTails dataset (Ji et al., 2024b).
> </details>



![](https://arxiv.org/html/2501.18492/x12.png)

> 🔼 This figure displays the prompt used to instruct GPT-4 to generate the reasoning data for training the GuardReasoner model.  The prompt guides GPT-4 to perform three tasks:  (1) classify the user's request as harmful or unharmful; (2) classify the AI assistant's response as a refusal or compliance; and (3) classify the AI assistant's response as harmful or unharmful.  Importantly, the prompt emphasizes step-by-step reasoning, requiring GPT-4 to detail its thought process in the smallest possible units to ensure consistency between reasoning and conclusions.  The prompt also provides a specific format for GPT-4's response, ensuring uniformity and ease of data processing for training. 
> <details>
> <summary>read the caption</summary>
> Figure 12: The prompt for the reasoning data synthesis.
> </details>



![](https://arxiv.org/html/2501.18492/x13.png)

> 🔼 This figure demonstrates the training data structure used in the Reasoning Supervised Fine-tuning (R-SFT) stage of the GuardReasoner model training.  It shows the input (user prompt and LLM response), the expected output (reasoning steps and classification labels for prompt, response and refusal), and the instruction given to the model. The instruction guides the model to perform step-by-step reasoning and provide a well-structured explanation for its classification decisions.  The goal of this training stage is to enable the model to learn to reason and make accurate moderation decisions by leveraging this structured reasoning data.
> <details>
> <summary>read the caption</summary>
> Figure 13: The demonstration for the training data of R-SFT.
> </details>



![](https://arxiv.org/html/2501.18492/x14.png)

> 🔼 This figure demonstrates the training data used for Hard Sample Direct Preference Optimization (HS-DPO).  HS-DPO is a stage in the GuardReasoner model training that focuses on refining the model's ability to handle ambiguous samples (those with both correct and incorrect outputs). The figure showcases the structure of the data provided to the model during this training phase. This includes instructions to the model to perform three tasks (harmfulness detection on the prompt and response, and refusal detection), emphasizing step-by-step reasoning and consistency between reasoning steps and conclusions.  The provided input data includes a user's prompt and the AI's response, and the expected output consists of the model's reasoning steps and its classification of the prompt and response as either harmful or unharmful and refusal or compliance.
> <details>
> <summary>read the caption</summary>
> Figure 14: The demonstration for the training data of HS-DPO.
> </details>



![](https://arxiv.org/html/2501.18492/x15.png)

> 🔼 This figure displays the prompt used for evaluating closed-source guard APIs such as GPT-4, GPT-40, and Claude 3.5 Sonnet.  The prompt instructs the model to perform three tasks: 1) determine if the user's request is harmful, 2) determine if the AI assistant's response is a refusal or compliance, and 3) determine if the AI assistant's response is harmful. The model is instructed to provide a concise 'harmful' or 'unharmful' classification and must not use other descriptive words.
> <details>
> <summary>read the caption</summary>
> Figure 15: The prompt for the inference of closed-source guard APIs, including GPT-4, GPT-4o, and Claude 3.5 Sonnet.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S3.T2.5.1">
<tr class="ltx_tr" id="S3.T2.5.1.1">
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.5.1.1.1" style="padding:0.75pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.5.1.1.1.1">Method</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.5.1.1.2" style="padding:0.75pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.5.1.1.2.1">Model Size</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.5.1.1.3" style="padding:0.75pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.5.1.1.3.1">ToxicChat</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.5.1.1.4" style="padding:0.75pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.5.1.1.4.1">HarmBench</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.5.1.1.5" style="padding:0.75pt 3.0pt;"><span class="ltx_text" id="S3.T2.5.1.1.5.1"><span class="ltx_text" id="S3.T2.5.1.1.5.1.1"></span> <span class="ltx_text" id="S3.T2.5.1.1.5.1.2">
<span class="ltx_tabular ltx_align_middle" id="S3.T2.5.1.1.5.1.2.1">
<span class="ltx_tr" id="S3.T2.5.1.1.5.1.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T2.5.1.1.5.1.2.1.1.1" style="padding:0.75pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.5.1.1.5.1.2.1.1.1.1">OpenAI</span></span></span>
<span class="ltx_tr" id="S3.T2.5.1.1.5.1.2.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T2.5.1.1.5.1.2.1.2.1" style="padding:0.75pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.5.1.1.5.1.2.1.2.1.1">Moderation</span></span></span>
</span></span> <span class="ltx_text" id="S3.T2.5.1.1.5.1.3"></span></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.5.1.1.6" style="padding:0.75pt 3.0pt;"><span class="ltx_text" id="S3.T2.5.1.1.6.1"><span class="ltx_text" id="S3.T2.5.1.1.6.1.1"></span> <span class="ltx_text" id="S3.T2.5.1.1.6.1.2">
<span class="ltx_tabular ltx_align_middle" id="S3.T2.5.1.1.6.1.2.1">
<span class="ltx_tr" id="S3.T2.5.1.1.6.1.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T2.5.1.1.6.1.2.1.1.1" style="padding:0.75pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.5.1.1.6.1.2.1.1.1.1">Aegis</span></span></span>
<span class="ltx_tr" id="S3.T2.5.1.1.6.1.2.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T2.5.1.1.6.1.2.1.2.1" style="padding:0.75pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.5.1.1.6.1.2.1.2.1.1">SafetyTest</span></span></span>
</span></span> <span class="ltx_text" id="S3.T2.5.1.1.6.1.3"></span></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.5.1.1.7" style="padding:0.75pt 3.0pt;"><span class="ltx_text" id="S3.T2.5.1.1.7.1"><span class="ltx_text" id="S3.T2.5.1.1.7.1.1"></span> <span class="ltx_text" id="S3.T2.5.1.1.7.1.2">
<span class="ltx_tabular ltx_align_middle" id="S3.T2.5.1.1.7.1.2.1">
<span class="ltx_tr" id="S3.T2.5.1.1.7.1.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T2.5.1.1.7.1.2.1.1.1" style="padding:0.75pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.5.1.1.7.1.2.1.1.1.1">Simple</span></span></span>
<span class="ltx_tr" id="S3.T2.5.1.1.7.1.2.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T2.5.1.1.7.1.2.1.2.1" style="padding:0.75pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.5.1.1.7.1.2.1.2.1.1">SafetyTests</span></span></span>
</span></span> <span class="ltx_text" id="S3.T2.5.1.1.7.1.3"></span></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.5.1.1.8" style="padding:0.75pt 3.0pt;"><span class="ltx_text" id="S3.T2.5.1.1.8.1"><span class="ltx_text" id="S3.T2.5.1.1.8.1.1"></span> <span class="ltx_text" id="S3.T2.5.1.1.8.1.2">
<span class="ltx_tabular ltx_align_middle" id="S3.T2.5.1.1.8.1.2.1">
<span class="ltx_tr" id="S3.T2.5.1.1.8.1.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T2.5.1.1.8.1.2.1.1.1" style="padding:0.75pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.5.1.1.8.1.2.1.1.1.1">WildGuard</span></span></span>
<span class="ltx_tr" id="S3.T2.5.1.1.8.1.2.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T2.5.1.1.8.1.2.1.2.1" style="padding:0.75pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.5.1.1.8.1.2.1.2.1.1">Test</span></span></span>
</span></span> <span class="ltx_text" id="S3.T2.5.1.1.8.1.3"></span></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.5.1.1.9" style="padding:0.75pt 3.0pt;"><span class="ltx_text" id="S3.T2.5.1.1.9.1"><span class="ltx_text" id="S3.T2.5.1.1.9.1.1"></span> <span class="ltx_text" id="S3.T2.5.1.1.9.1.2">
<span class="ltx_tabular ltx_align_middle" id="S3.T2.5.1.1.9.1.2.1">
<span class="ltx_tr" id="S3.T2.5.1.1.9.1.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T2.5.1.1.9.1.2.1.1.1" style="padding:0.75pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.5.1.1.9.1.2.1.1.1.1">Weighted</span></span></span>
<span class="ltx_tr" id="S3.T2.5.1.1.9.1.2.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T2.5.1.1.9.1.2.1.2.1" style="padding:0.75pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.5.1.1.9.1.2.1.2.1.1">Average</span></span></span>
</span></span> <span class="ltx_text" id="S3.T2.5.1.1.9.1.3"></span></span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.5.1.2">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="9" id="S3.T2.5.1.2.1" style="padding:0.75pt 3.0pt;">Closed-Source Guard API</td>
</tr>
<tr class="ltx_tr" id="S3.T2.5.1.3">
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.5.1.3.1" style="padding:0.75pt 3.0pt;">OpenAI Moderation</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.5.1.3.2" style="padding:0.75pt 3.0pt;">Unknown</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.5.1.3.3" style="padding:0.75pt 3.0pt;">25.40</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.5.1.3.4" style="padding:0.75pt 3.0pt;">09.60</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.5.1.3.5" style="padding:0.75pt 3.0pt;">79.00</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.5.1.3.6" style="padding:0.75pt 3.0pt;">31.90</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.5.1.3.7" style="padding:0.75pt 3.0pt;">63.00</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.5.1.3.8" style="padding:0.75pt 3.0pt;">12.10</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.5.1.3.9" style="padding:0.75pt 3.0pt;">35.28</td>
</tr>
<tr class="ltx_tr" id="S3.T2.5.1.4">
<td class="ltx_td ltx_align_center" id="S3.T2.5.1.4.1" style="padding:0.75pt 3.0pt;">GPT-4o</td>
<td class="ltx_td ltx_align_center" id="S3.T2.5.1.4.2" style="padding:0.75pt 3.0pt;">Unknown</td>
<td class="ltx_td ltx_align_center" id="S3.T2.5.1.4.3" style="padding:0.75pt 3.0pt;">64.46</td>
<td class="ltx_td ltx_align_center" id="S3.T2.5.1.4.4" style="padding:0.75pt 3.0pt;">82.27</td>
<td class="ltx_td ltx_align_center" id="S3.T2.5.1.4.5" style="padding:0.75pt 3.0pt;">62.26</td>
<td class="ltx_td ltx_align_center" id="S3.T2.5.1.4.6" style="padding:0.75pt 3.0pt;">81.07</td>
<td class="ltx_td ltx_align_center" id="S3.T2.5.1.4.7" style="padding:0.75pt 3.0pt;">98.48</td>
<td class="ltx_td ltx_align_center" id="S3.T2.5.1.4.8" style="padding:0.75pt 3.0pt;">80.87</td>
<td class="ltx_td ltx_align_center" id="S3.T2.5.1.4.9" style="padding:0.75pt 3.0pt;">70.00</td>
</tr>
<tr class="ltx_tr" id="S3.T2.5.1.5">
<td class="ltx_td ltx_align_center" id="S3.T2.5.1.5.1" style="padding:0.75pt 3.0pt;">GPT-4o+CoT</td>
<td class="ltx_td ltx_align_center" id="S3.T2.5.1.5.2" style="padding:0.75pt 3.0pt;">Unknown</td>
<td class="ltx_td ltx_align_center" id="S3.T2.5.1.5.3" style="padding:0.75pt 3.0pt;">73.43</td>
<td class="ltx_td ltx_align_center" id="S3.T2.5.1.5.4" style="padding:0.75pt 3.0pt;">81.98</td>
<td class="ltx_td ltx_align_center" id="S3.T2.5.1.5.5" style="padding:0.75pt 3.0pt;">76.78</td>
<td class="ltx_td ltx_align_center" id="S3.T2.5.1.5.6" style="padding:0.75pt 3.0pt;">88.24</td>
<td class="ltx_td ltx_align_center" id="S3.T2.5.1.5.7" style="padding:0.75pt 3.0pt;">98.99</td>
<td class="ltx_td ltx_align_center" id="S3.T2.5.1.5.8" style="padding:0.75pt 3.0pt;">82.75</td>
<td class="ltx_td ltx_align_center" id="S3.T2.5.1.5.9" style="padding:0.75pt 3.0pt;">78.00</td>
</tr>
<tr class="ltx_tr" id="S3.T2.5.1.6">
<td class="ltx_td ltx_align_center" id="S3.T2.5.1.6.1" style="padding:0.75pt 3.0pt;">GPT-4</td>
<td class="ltx_td ltx_align_center" id="S3.T2.5.1.6.2" style="padding:0.75pt 3.0pt;">Unknown</td>
<td class="ltx_td ltx_align_center" id="S3.T2.5.1.6.3" style="padding:0.75pt 3.0pt;">69.80</td>
<td class="ltx_td ltx_align_center" id="S3.T2.5.1.6.4" style="padding:0.75pt 3.0pt;">78.68</td>
<td class="ltx_td ltx_align_center" id="S3.T2.5.1.6.5" style="padding:0.75pt 3.0pt;">81.41</td>
<td class="ltx_td ltx_align_center" id="S3.T2.5.1.6.6" style="padding:0.75pt 3.0pt;">85.16</td>
<td class="ltx_td ltx_align_center" id="S3.T2.5.1.6.7" style="padding:0.75pt 3.0pt;">99.50</td>
<td class="ltx_td ltx_align_center" id="S3.T2.5.1.6.8" style="padding:0.75pt 3.0pt;">79.72</td>
<td class="ltx_td ltx_align_center" id="S3.T2.5.1.6.9" style="padding:0.75pt 3.0pt;">76.61</td>
</tr>
<tr class="ltx_tr" id="S3.T2.5.1.7">
<td class="ltx_td ltx_align_center" id="S3.T2.5.1.7.1" style="padding:0.75pt 3.0pt;">GPT-4+CoT</td>
<td class="ltx_td ltx_align_center" id="S3.T2.5.1.7.2" style="padding:0.75pt 3.0pt;">Unknown</td>
<td class="ltx_td ltx_align_center" id="S3.T2.5.1.7.3" style="padding:0.75pt 3.0pt;">69.64</td>
<td class="ltx_td ltx_align_center" id="S3.T2.5.1.7.4" style="padding:0.75pt 3.0pt;">78.68</td>
<td class="ltx_td ltx_align_center" id="S3.T2.5.1.7.5" style="padding:0.75pt 3.0pt;">82.05</td>
<td class="ltx_td ltx_align_center" id="S3.T2.5.1.7.6" style="padding:0.75pt 3.0pt;">85.85</td>
<td class="ltx_td ltx_align_center" id="S3.T2.5.1.7.7" style="padding:0.75pt 3.0pt;">100.00</td>
<td class="ltx_td ltx_align_center" id="S3.T2.5.1.7.8" style="padding:0.75pt 3.0pt;">80.46</td>
<td class="ltx_td ltx_align_center" id="S3.T2.5.1.7.9" style="padding:0.75pt 3.0pt;">76.92</td>
</tr>
<tr class="ltx_tr" id="S3.T2.5.1.8">
<td class="ltx_td ltx_align_center" id="S3.T2.5.1.8.1" style="padding:0.75pt 3.0pt;">o1-preview</td>
<td class="ltx_td ltx_align_center" id="S3.T2.5.1.8.2" style="padding:0.75pt 3.0pt;">Unknown</td>
<td class="ltx_td ltx_align_center" id="S3.T2.5.1.8.3" style="padding:0.75pt 3.0pt;">57.69</td>
<td class="ltx_td ltx_align_center" id="S3.T2.5.1.8.4" style="padding:0.75pt 3.0pt;">89.61</td>
<td class="ltx_td ltx_align_center" id="S3.T2.5.1.8.5" style="padding:0.75pt 3.0pt;">74.60</td>
<td class="ltx_td ltx_align_center" id="S3.T2.5.1.8.6" style="padding:0.75pt 3.0pt;">83.15</td>
<td class="ltx_td ltx_align_center" id="S3.T2.5.1.8.7" style="padding:0.75pt 3.0pt;">100.00</td>
<td class="ltx_td ltx_align_center" id="S3.T2.5.1.8.8" style="padding:0.75pt 3.0pt;">76.31</td>
<td class="ltx_td ltx_align_center" id="S3.T2.5.1.8.9" style="padding:0.75pt 3.0pt;">69.44</td>
</tr>
<tr class="ltx_tr" id="S3.T2.5.1.9">
<td class="ltx_td ltx_align_center" id="S3.T2.5.1.9.1" style="padding:0.75pt 3.0pt;">Claude 3.5 Sonnet</td>
<td class="ltx_td ltx_align_center" id="S3.T2.5.1.9.2" style="padding:0.75pt 3.0pt;">Unknown</td>
<td class="ltx_td ltx_align_center" id="S3.T2.5.1.9.3" style="padding:0.75pt 3.0pt;">43.73</td>
<td class="ltx_td ltx_align_center" id="S3.T2.5.1.9.4" style="padding:0.75pt 3.0pt;">81.68</td>
<td class="ltx_td ltx_align_center" id="S3.T2.5.1.9.5" style="padding:0.75pt 3.0pt;">51.06</td>
<td class="ltx_td ltx_align_center" id="S3.T2.5.1.9.6" style="padding:0.75pt 3.0pt;">79.72</td>
<td class="ltx_td ltx_align_center" id="S3.T2.5.1.9.7" style="padding:0.75pt 3.0pt;">100.00</td>
<td class="ltx_td ltx_align_center" id="S3.T2.5.1.9.8" style="padding:0.75pt 3.0pt;">63.21</td>
<td class="ltx_td ltx_align_center" id="S3.T2.5.1.9.9" style="padding:0.75pt 3.0pt;">54.34</td>
</tr>
<tr class="ltx_tr" id="S3.T2.5.1.10">
<td class="ltx_td ltx_align_center" id="S3.T2.5.1.10.1" style="padding:0.75pt 3.0pt;">Gemini 1.5 Pro</td>
<td class="ltx_td ltx_align_center" id="S3.T2.5.1.10.2" style="padding:0.75pt 3.0pt;">Unknown</td>
<td class="ltx_td ltx_align_center" id="S3.T2.5.1.10.3" style="padding:0.75pt 3.0pt;">67.81</td>
<td class="ltx_td ltx_align_center" id="S3.T2.5.1.10.4" style="padding:0.75pt 3.0pt;">80.20</td>
<td class="ltx_td ltx_align_center" id="S3.T2.5.1.10.5" style="padding:0.75pt 3.0pt;">63.41</td>
<td class="ltx_td ltx_align_center" id="S3.T2.5.1.10.6" style="padding:0.75pt 3.0pt;">84.03</td>
<td class="ltx_td ltx_align_center" id="S3.T2.5.1.10.7" style="padding:0.75pt 3.0pt;">100.00</td>
<td class="ltx_td ltx_align_center" id="S3.T2.5.1.10.8" style="padding:0.75pt 3.0pt;">84.50</td>
<td class="ltx_td ltx_align_center" id="S3.T2.5.1.10.9" style="padding:0.75pt 3.0pt;">72.66</td>
</tr>
<tr class="ltx_tr" id="S3.T2.5.1.11">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="9" id="S3.T2.5.1.11.1" style="padding:0.75pt 3.0pt;">Open-Source Guard Model</td>
</tr>
<tr class="ltx_tr" id="S3.T2.5.1.12">
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.5.1.12.1" style="padding:0.75pt 3.0pt;">LLaMA Guard</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.5.1.12.2" style="padding:0.75pt 3.0pt;">7B</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.5.1.12.3" style="padding:0.75pt 3.0pt;">61.60</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.5.1.12.4" style="padding:0.75pt 3.0pt;">67.20</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.5.1.12.5" style="padding:0.75pt 3.0pt;">75.80</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.5.1.12.6" style="padding:0.75pt 3.0pt;">74.10</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.5.1.12.7" style="padding:0.75pt 3.0pt;">93.00</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.5.1.12.8" style="padding:0.75pt 3.0pt;">56.00</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.5.1.12.9" style="padding:0.75pt 3.0pt;">64.89</td>
</tr>
<tr class="ltx_tr" id="S3.T2.5.1.13">
<td class="ltx_td ltx_align_center" id="S3.T2.5.1.13.1" style="padding:0.75pt 3.0pt;">LLaMA Guard 2</td>
<td class="ltx_td ltx_align_center" id="S3.T2.5.1.13.2" style="padding:0.75pt 3.0pt;">8B</td>
<td class="ltx_td ltx_align_center" id="S3.T2.5.1.13.3" style="padding:0.75pt 3.0pt;">47.10</td>
<td class="ltx_td ltx_align_center" id="S3.T2.5.1.13.4" style="padding:0.75pt 3.0pt;">94.00</td>
<td class="ltx_td ltx_align_center" id="S3.T2.5.1.13.5" style="padding:0.75pt 3.0pt;">76.10</td>
<td class="ltx_td ltx_align_center" id="S3.T2.5.1.13.6" style="padding:0.75pt 3.0pt;">71.80</td>
<td class="ltx_td ltx_align_center" id="S3.T2.5.1.13.7" style="padding:0.75pt 3.0pt;">95.80</td>
<td class="ltx_td ltx_align_center" id="S3.T2.5.1.13.8" style="padding:0.75pt 3.0pt;">70.90</td>
<td class="ltx_td ltx_align_center" id="S3.T2.5.1.13.9" style="padding:0.75pt 3.0pt;">63.62</td>
</tr>
<tr class="ltx_tr" id="S3.T2.5.1.14">
<td class="ltx_td ltx_align_center" id="S3.T2.5.1.14.1" style="padding:0.75pt 3.0pt;">LLaMA Guard 3</td>
<td class="ltx_td ltx_align_center" id="S3.T2.5.1.14.2" style="padding:0.75pt 3.0pt;">8B</td>
<td class="ltx_td ltx_align_center" id="S3.T2.5.1.14.3" style="padding:0.75pt 3.0pt;">53.12</td>
<td class="ltx_td ltx_align_center" id="S3.T2.5.1.14.4" style="padding:0.75pt 3.0pt;">98.94</td>
<td class="ltx_td ltx_align_center" id="S3.T2.5.1.14.5" style="padding:0.75pt 3.0pt;">79.69</td>
<td class="ltx_td ltx_align_center" id="S3.T2.5.1.14.6" style="padding:0.75pt 3.0pt;">71.39</td>
<td class="ltx_td ltx_align_center" id="S3.T2.5.1.14.7" style="padding:0.75pt 3.0pt;">99.50</td>
<td class="ltx_td ltx_align_center" id="S3.T2.5.1.14.8" style="padding:0.75pt 3.0pt;">76.18</td>
<td class="ltx_td ltx_align_center" id="S3.T2.5.1.14.9" style="padding:0.75pt 3.0pt;">68.47</td>
</tr>
<tr class="ltx_tr" id="S3.T2.5.1.15">
<td class="ltx_td ltx_align_center" id="S3.T2.5.1.15.1" style="padding:0.75pt 3.0pt;">Aegis Guard Defensive</td>
<td class="ltx_td ltx_align_center" id="S3.T2.5.1.15.2" style="padding:0.75pt 3.0pt;">7B</td>
<td class="ltx_td ltx_align_center" id="S3.T2.5.1.15.3" style="padding:0.75pt 3.0pt;">70.00</td>
<td class="ltx_td ltx_align_center" id="S3.T2.5.1.15.4" style="padding:0.75pt 3.0pt;">77.70</td>
<td class="ltx_td ltx_align_center" id="S3.T2.5.1.15.5" style="padding:0.75pt 3.0pt;">67.50</td>
<td class="ltx_td ltx_align_center" id="S3.T2.5.1.15.6" style="padding:0.75pt 3.0pt;">84.80</td>
<td class="ltx_td ltx_align_center" id="S3.T2.5.1.15.7" style="padding:0.75pt 3.0pt;">100.00</td>
<td class="ltx_td ltx_align_center" id="S3.T2.5.1.15.8" style="padding:0.75pt 3.0pt;">78.50</td>
<td class="ltx_td ltx_align_center" id="S3.T2.5.1.15.9" style="padding:0.75pt 3.0pt;">72.99</td>
</tr>
<tr class="ltx_tr" id="S3.T2.5.1.16">
<td class="ltx_td ltx_align_center" id="S3.T2.5.1.16.1" style="padding:0.75pt 3.0pt;">Aegis Guard Permissive</td>
<td class="ltx_td ltx_align_center" id="S3.T2.5.1.16.2" style="padding:0.75pt 3.0pt;">7B</td>
<td class="ltx_td ltx_align_center" id="S3.T2.5.1.16.3" style="padding:0.75pt 3.0pt;">73.00</td>
<td class="ltx_td ltx_align_center" id="S3.T2.5.1.16.4" style="padding:0.75pt 3.0pt;">70.50</td>
<td class="ltx_td ltx_align_center" id="S3.T2.5.1.16.5" style="padding:0.75pt 3.0pt;">74.70</td>
<td class="ltx_td ltx_align_center" id="S3.T2.5.1.16.6" style="padding:0.75pt 3.0pt;">82.90</td>
<td class="ltx_td ltx_align_center" id="S3.T2.5.1.16.7" style="padding:0.75pt 3.0pt;">99.00</td>
<td class="ltx_td ltx_align_center" id="S3.T2.5.1.16.8" style="padding:0.75pt 3.0pt;">71.50</td>
<td class="ltx_td ltx_align_center" id="S3.T2.5.1.16.9" style="padding:0.75pt 3.0pt;">73.83</td>
</tr>
<tr class="ltx_tr" id="S3.T2.5.1.17">
<td class="ltx_td ltx_align_center" id="S3.T2.5.1.17.1" style="padding:0.75pt 3.0pt;">Aegis Guard 2.0</td>
<td class="ltx_td ltx_align_center" id="S3.T2.5.1.17.2" style="padding:0.75pt 3.0pt;">8B</td>
<td class="ltx_td ltx_align_center" id="S3.T2.5.1.17.3" style="padding:0.75pt 3.0pt;">-</td>
<td class="ltx_td ltx_align_center" id="S3.T2.5.1.17.4" style="padding:0.75pt 3.0pt;">-</td>
<td class="ltx_td ltx_align_center" id="S3.T2.5.1.17.5" style="padding:0.75pt 3.0pt;">81.00</td>
<td class="ltx_td ltx_align_center" id="S3.T2.5.1.17.6" style="padding:0.75pt 3.0pt;">-</td>
<td class="ltx_td ltx_align_center" id="S3.T2.5.1.17.7" style="padding:0.75pt 3.0pt;">-</td>
<td class="ltx_td ltx_align_center" id="S3.T2.5.1.17.8" style="padding:0.75pt 3.0pt;">81.60</td>
<td class="ltx_td ltx_align_center" id="S3.T2.5.1.17.9" style="padding:0.75pt 3.0pt;">-</td>
</tr>
<tr class="ltx_tr" id="S3.T2.5.1.18">
<td class="ltx_td ltx_align_center" id="S3.T2.5.1.18.1" style="padding:0.75pt 3.0pt;">ShieldGemma</td>
<td class="ltx_td ltx_align_center" id="S3.T2.5.1.18.2" style="padding:0.75pt 3.0pt;">2B</td>
<td class="ltx_td ltx_align_center" id="S3.T2.5.1.18.3" style="padding:0.75pt 3.0pt;">06.91</td>
<td class="ltx_td ltx_align_center" id="S3.T2.5.1.18.4" style="padding:0.75pt 3.0pt;">11.81</td>
<td class="ltx_td ltx_align_center" id="S3.T2.5.1.18.5" style="padding:0.75pt 3.0pt;">13.89</td>
<td class="ltx_td ltx_align_center" id="S3.T2.5.1.18.6" style="padding:0.75pt 3.0pt;">07.47</td>
<td class="ltx_td ltx_align_center" id="S3.T2.5.1.18.7" style="padding:0.75pt 3.0pt;">05.83</td>
<td class="ltx_td ltx_align_center" id="S3.T2.5.1.18.8" style="padding:0.75pt 3.0pt;">09.36</td>
<td class="ltx_td ltx_align_center" id="S3.T2.5.1.18.9" style="padding:0.75pt 3.0pt;">09.38</td>
</tr>
<tr class="ltx_tr" id="S3.T2.5.1.19">
<td class="ltx_td ltx_align_center" id="S3.T2.5.1.19.1" style="padding:0.75pt 3.0pt;">ShieldGemma</td>
<td class="ltx_td ltx_align_center" id="S3.T2.5.1.19.2" style="padding:0.75pt 3.0pt;">9B</td>
<td class="ltx_td ltx_align_center" id="S3.T2.5.1.19.3" style="padding:0.75pt 3.0pt;">67.92</td>
<td class="ltx_td ltx_align_center" id="S3.T2.5.1.19.4" style="padding:0.75pt 3.0pt;">67.96</td>
<td class="ltx_td ltx_align_center" id="S3.T2.5.1.19.5" style="padding:0.75pt 3.0pt;">78.58</td>
<td class="ltx_td ltx_align_center" id="S3.T2.5.1.19.6" style="padding:0.75pt 3.0pt;">77.63</td>
<td class="ltx_td ltx_align_center" id="S3.T2.5.1.19.7" style="padding:0.75pt 3.0pt;">91.89</td>
<td class="ltx_td ltx_align_center" id="S3.T2.5.1.19.8" style="padding:0.75pt 3.0pt;">57.74</td>
<td class="ltx_td ltx_align_center" id="S3.T2.5.1.19.9" style="padding:0.75pt 3.0pt;">68.77</td>
</tr>
<tr class="ltx_tr" id="S3.T2.5.1.20">
<td class="ltx_td ltx_align_center" id="S3.T2.5.1.20.1" style="padding:0.75pt 3.0pt;">WildGuard</td>
<td class="ltx_td ltx_align_center" id="S3.T2.5.1.20.2" style="padding:0.75pt 3.0pt;">7B</td>
<td class="ltx_td ltx_align_center" id="S3.T2.5.1.20.3" style="padding:0.75pt 3.0pt;">70.80</td>
<td class="ltx_td ltx_align_center" id="S3.T2.5.1.20.4" style="padding:0.75pt 3.0pt;">98.90</td>
<td class="ltx_td ltx_align_center" id="S3.T2.5.1.20.5" style="padding:0.75pt 3.0pt;">72.10</td>
<td class="ltx_td ltx_align_center" id="S3.T2.5.1.20.6" style="padding:0.75pt 3.0pt;">89.40</td>
<td class="ltx_td ltx_align_center" id="S3.T2.5.1.20.7" style="padding:0.75pt 3.0pt;">99.50</td>
<td class="ltx_td ltx_align_center" id="S3.T2.5.1.20.8" style="padding:0.75pt 3.0pt;">88.90</td>
<td class="ltx_td ltx_align_center" id="S3.T2.5.1.20.9" style="padding:0.75pt 3.0pt;">77.99</td>
</tr>
<tr class="ltx_tr" id="S3.T2.5.1.21">
<td class="ltx_td ltx_align_center" id="S3.T2.5.1.21.1" style="padding:0.75pt 3.0pt;">QwQ-preview</td>
<td class="ltx_td ltx_align_center" id="S3.T2.5.1.21.2" style="padding:0.75pt 3.0pt;">32B</td>
<td class="ltx_td ltx_align_center" id="S3.T2.5.1.21.3" style="padding:0.75pt 3.0pt;">34.81</td>
<td class="ltx_td ltx_align_center" id="S3.T2.5.1.21.4" style="padding:0.75pt 3.0pt;">86.73</td>
<td class="ltx_td ltx_align_center" id="S3.T2.5.1.21.5" style="padding:0.75pt 3.0pt;">61.58</td>
<td class="ltx_td ltx_align_center" id="S3.T2.5.1.21.6" style="padding:0.75pt 3.0pt;">80.23</td>
<td class="ltx_td ltx_align_center" id="S3.T2.5.1.21.7" style="padding:0.75pt 3.0pt;">99.50</td>
<td class="ltx_td ltx_align_center" id="S3.T2.5.1.21.8" style="padding:0.75pt 3.0pt;">66.02</td>
<td class="ltx_td ltx_align_center" id="S3.T2.5.1.21.9" style="padding:0.75pt 3.0pt;">54.13</td>
</tr>
<tr class="ltx_tr" id="S3.T2.5.1.22">
<td class="ltx_td ltx_align_center" id="S3.T2.5.1.22.1" style="padding:0.75pt 3.0pt;">GuardReasoner</td>
<td class="ltx_td ltx_align_center" id="S3.T2.5.1.22.2" style="padding:0.75pt 3.0pt;">1B</td>
<td class="ltx_td ltx_align_center" id="S3.T2.5.1.22.3" style="padding:0.75pt 3.0pt;">72.43</td>
<td class="ltx_td ltx_align_center" id="S3.T2.5.1.22.4" style="padding:0.75pt 3.0pt;">96.31</td>
<td class="ltx_td ltx_align_center" id="S3.T2.5.1.22.5" style="padding:0.75pt 3.0pt;">70.06</td>
<td class="ltx_td ltx_align_center" id="S3.T2.5.1.22.6" style="padding:0.75pt 3.0pt;">89.34</td>
<td class="ltx_td ltx_align_center" id="S3.T2.5.1.22.7" style="padding:0.75pt 3.0pt;">98.99</td>
<td class="ltx_td ltx_align_center" id="S3.T2.5.1.22.8" style="padding:0.75pt 3.0pt;">87.37</td>
<td class="ltx_td ltx_align_center" id="S3.T2.5.1.22.9" style="padding:0.75pt 3.0pt;">77.68</td>
</tr>
<tr class="ltx_tr" id="S3.T2.5.1.23">
<td class="ltx_td ltx_align_center" id="S3.T2.5.1.23.1" style="padding:0.75pt 3.0pt;">GuardReasoner</td>
<td class="ltx_td ltx_align_center" id="S3.T2.5.1.23.2" style="padding:0.75pt 3.0pt;">3B</td>
<td class="ltx_td ltx_align_center" id="S3.T2.5.1.23.3" style="padding:0.75pt 3.0pt;">78.20</td>
<td class="ltx_td ltx_align_center" id="S3.T2.5.1.23.4" style="padding:0.75pt 3.0pt;">89.10</td>
<td class="ltx_td ltx_align_center" id="S3.T2.5.1.23.5" style="padding:0.75pt 3.0pt;">71.87</td>
<td class="ltx_td ltx_align_center" id="S3.T2.5.1.23.6" style="padding:0.75pt 3.0pt;">91.39</td>
<td class="ltx_td ltx_align_center" id="S3.T2.5.1.23.7" style="padding:0.75pt 3.0pt;">100.00</td>
<td class="ltx_td ltx_align_center" id="S3.T2.5.1.23.8" style="padding:0.75pt 3.0pt;">89.01</td>
<td class="ltx_td ltx_align_center" id="S3.T2.5.1.23.9" style="padding:0.75pt 3.0pt;"><span class="ltx_text ltx_ulem_uline" id="S3.T2.5.1.23.9.1">80.76</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.5.1.24">
<td class="ltx_td ltx_align_center ltx_border_b" id="S3.T2.5.1.24.1" style="padding:0.75pt 3.0pt;">GuardReasoner</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S3.T2.5.1.24.2" style="padding:0.75pt 3.0pt;">8B</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S3.T2.5.1.24.3" style="padding:0.75pt 3.0pt;">78.79</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S3.T2.5.1.24.4" style="padding:0.75pt 3.0pt;">91.86</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S3.T2.5.1.24.5" style="padding:0.75pt 3.0pt;">72.00</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S3.T2.5.1.24.6" style="padding:0.75pt 3.0pt;">90.18</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S3.T2.5.1.24.7" style="padding:0.75pt 3.0pt;">99.50</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S3.T2.5.1.24.8" style="padding:0.75pt 3.0pt;">89.17</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S3.T2.5.1.24.9" style="padding:0.75pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.5.1.24.9.1">81.09</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents a comparison of the performance of 21 different models on six benchmark datasets for the task of prompt harmfulness detection.  The models include both closed-source (commercial APIs) and open-source LLMs.  Each model's performance is measured using the F1 score, a metric that considers both precision and recall.  The highest and second-highest performing models for each benchmark are highlighted.  The table aims to provide a comprehensive evaluation of various LLMs' abilities to identify potentially harmful prompts.
> <details>
> <summary>read the caption</summary>
> Table 2: Comparison experiment of 21 models on 6 benchmarks of the prompt harmfulness detection task. Bold and underlined values denote the best and the runner-up. The performance is evaluated via F1 score (%). “-” denotes that the result is unavailable.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S3.T3.3.3">
<tr class="ltx_tr" id="S3.T3.3.3.4">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T3.3.3.4.1" style="padding:1.5pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T3.3.3.4.1.1">Model Size</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" colspan="4" id="S3.T3.3.3.4.2" style="padding:1.5pt 3.0pt;">1B</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" colspan="4" id="S3.T3.3.3.4.3" style="padding:1.5pt 3.0pt;">3B</td>
<td class="ltx_td ltx_align_center ltx_border_t" colspan="4" id="S3.T3.3.3.4.4" style="padding:1.5pt 3.0pt;">8B</td>
</tr>
<tr class="ltx_tr" id="S3.T3.3.3.5">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T3.3.3.5.1" style="padding:1.5pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T3.3.3.5.1.1">Task Type</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.3.3.5.2" style="padding:1.5pt 3.0pt;">Prompt</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.3.3.5.3" style="padding:1.5pt 3.0pt;">Response</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.3.3.5.4" style="padding:1.5pt 3.0pt;">Refusal</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T3.3.3.5.5" style="padding:1.5pt 3.0pt;">Avg.</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.3.3.5.6" style="padding:1.5pt 3.0pt;">Prompt</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.3.3.5.7" style="padding:1.5pt 3.0pt;">Response</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.3.3.5.8" style="padding:1.5pt 3.0pt;">Refusal</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T3.3.3.5.9" style="padding:1.5pt 3.0pt;">Avg.</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.3.3.5.10" style="padding:1.5pt 3.0pt;">Prompt</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.3.3.5.11" style="padding:1.5pt 3.0pt;">Response</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.3.3.5.12" style="padding:1.5pt 3.0pt;">Refusal</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.3.3.5.13" style="padding:1.5pt 3.0pt;">Avg.</td>
</tr>
<tr class="ltx_tr" id="S3.T3.3.3.6">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T3.3.3.6.1" style="padding:1.5pt 3.0pt;">Baseline</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.3.3.6.2" style="padding:1.5pt 3.0pt;">62.96</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.3.3.6.3" style="padding:1.5pt 3.0pt;">72.05</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.3.3.6.4" style="padding:1.5pt 3.0pt;">87.96</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T3.3.3.6.5" style="padding:1.5pt 3.0pt;"><span class="ltx_text ltx_ulem_uline ltx_font_italic" id="S3.T3.3.3.6.5.1">74.32</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.3.3.6.6" style="padding:1.5pt 3.0pt;">58.43</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.3.3.6.7" style="padding:1.5pt 3.0pt;">74.23</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.3.3.6.8" style="padding:1.5pt 3.0pt;">88.16</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T3.3.3.6.9" style="padding:1.5pt 3.0pt;">73.61</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.3.3.6.10" style="padding:1.5pt 3.0pt;">74.29</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.3.3.6.11" style="padding:1.5pt 3.0pt;">74.74</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.3.3.6.12" style="padding:1.5pt 3.0pt;">87.65</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.3.3.6.13" style="padding:1.5pt 3.0pt;">78.89</td>
</tr>
<tr class="ltx_tr" id="S3.T3.1.1.1">
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T3.1.1.1.1" style="padding:1.5pt 3.0pt;">Baseline<math alttext="{}_{\text{mix}}" class="ltx_Math" display="inline" id="S3.T3.1.1.1.1.m1.1"><semantics id="S3.T3.1.1.1.1.m1.1a"><msub id="S3.T3.1.1.1.1.m1.1.1" xref="S3.T3.1.1.1.1.m1.1.1.cmml"><mi id="S3.T3.1.1.1.1.m1.1.1a" xref="S3.T3.1.1.1.1.m1.1.1.cmml"></mi><mtext id="S3.T3.1.1.1.1.m1.1.1.1" xref="S3.T3.1.1.1.1.m1.1.1.1a.cmml">mix</mtext></msub><annotation-xml encoding="MathML-Content" id="S3.T3.1.1.1.1.m1.1b"><apply id="S3.T3.1.1.1.1.m1.1.1.cmml" xref="S3.T3.1.1.1.1.m1.1.1"><ci id="S3.T3.1.1.1.1.m1.1.1.1a.cmml" xref="S3.T3.1.1.1.1.m1.1.1.1"><mtext id="S3.T3.1.1.1.1.m1.1.1.1.cmml" mathsize="70%" xref="S3.T3.1.1.1.1.m1.1.1.1">mix</mtext></ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T3.1.1.1.1.m1.1c">{}_{\text{mix}}</annotation><annotation encoding="application/x-llamapun" id="S3.T3.1.1.1.1.m1.1d">start_FLOATSUBSCRIPT mix end_FLOATSUBSCRIPT</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.1.2" style="padding:1.5pt 3.0pt;">70.74</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.1.3" style="padding:1.5pt 3.0pt;">77.99</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.1.4" style="padding:1.5pt 3.0pt;">68.10</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T3.1.1.1.5" style="padding:1.5pt 3.0pt;">74.71</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.1.6" style="padding:1.5pt 3.0pt;">78.05</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.1.7" style="padding:1.5pt 3.0pt;">66.78</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.1.8" style="padding:1.5pt 3.0pt;">73.38</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T3.1.1.1.9" style="padding:1.5pt 3.0pt;"><span class="ltx_text ltx_ulem_uline ltx_font_italic" id="S3.T3.1.1.1.9.1">72.74</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.1.10" style="padding:1.5pt 3.0pt;">66.13</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.1.11" style="padding:1.5pt 3.0pt;">79.75</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.1.12" style="padding:1.5pt 3.0pt;">56.57</td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.1.13" style="padding:1.5pt 3.0pt;"><span class="ltx_text ltx_ulem_uline ltx_font_italic" id="S3.T3.1.1.1.13.1">67.48</span></td>
</tr>
<tr class="ltx_tr" id="S3.T3.3.3.7">
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T3.3.3.7.1" style="padding:1.5pt 3.0pt;">R-SFT</td>
<td class="ltx_td ltx_align_center" id="S3.T3.3.3.7.2" style="padding:1.5pt 3.0pt;">78.57</td>
<td class="ltx_td ltx_align_center" id="S3.T3.3.3.7.3" style="padding:1.5pt 3.0pt;">78.46</td>
<td class="ltx_td ltx_align_center" id="S3.T3.3.3.7.4" style="padding:1.5pt 3.0pt;">85.99</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T3.3.3.7.5" style="padding:1.5pt 3.0pt;">81.01</td>
<td class="ltx_td ltx_align_center" id="S3.T3.3.3.7.6" style="padding:1.5pt 3.0pt;">80.00</td>
<td class="ltx_td ltx_align_center" id="S3.T3.3.3.7.7" style="padding:1.5pt 3.0pt;">79.30</td>
<td class="ltx_td ltx_align_center" id="S3.T3.3.3.7.8" style="padding:1.5pt 3.0pt;">86.51</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T3.3.3.7.9" style="padding:1.5pt 3.0pt;">81.94</td>
<td class="ltx_td ltx_align_center" id="S3.T3.3.3.7.10" style="padding:1.5pt 3.0pt;">80.35</td>
<td class="ltx_td ltx_align_center" id="S3.T3.3.3.7.11" style="padding:1.5pt 3.0pt;">80.03</td>
<td class="ltx_td ltx_align_center" id="S3.T3.3.3.7.12" style="padding:1.5pt 3.0pt;">89.64</td>
<td class="ltx_td ltx_align_center" id="S3.T3.3.3.7.13" style="padding:1.5pt 3.0pt;">83.34</td>
</tr>
<tr class="ltx_tr" id="S3.T3.2.2.2">
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T3.2.2.2.1" style="padding:1.5pt 3.0pt;">R-SFT w. HS-DPO<math alttext="{}_{\text{self}}" class="ltx_Math" display="inline" id="S3.T3.2.2.2.1.m1.1"><semantics id="S3.T3.2.2.2.1.m1.1a"><msub id="S3.T3.2.2.2.1.m1.1.1" xref="S3.T3.2.2.2.1.m1.1.1.cmml"><mi id="S3.T3.2.2.2.1.m1.1.1a" xref="S3.T3.2.2.2.1.m1.1.1.cmml"></mi><mtext id="S3.T3.2.2.2.1.m1.1.1.1" xref="S3.T3.2.2.2.1.m1.1.1.1a.cmml">self</mtext></msub><annotation-xml encoding="MathML-Content" id="S3.T3.2.2.2.1.m1.1b"><apply id="S3.T3.2.2.2.1.m1.1.1.cmml" xref="S3.T3.2.2.2.1.m1.1.1"><ci id="S3.T3.2.2.2.1.m1.1.1.1a.cmml" xref="S3.T3.2.2.2.1.m1.1.1.1"><mtext id="S3.T3.2.2.2.1.m1.1.1.1.cmml" mathsize="70%" xref="S3.T3.2.2.2.1.m1.1.1.1">self</mtext></ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T3.2.2.2.1.m1.1c">{}_{\text{self}}</annotation><annotation encoding="application/x-llamapun" id="S3.T3.2.2.2.1.m1.1d">start_FLOATSUBSCRIPT self end_FLOATSUBSCRIPT</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center" id="S3.T3.2.2.2.2" style="padding:1.5pt 3.0pt;">78.12</td>
<td class="ltx_td ltx_align_center" id="S3.T3.2.2.2.3" style="padding:1.5pt 3.0pt;">79.95</td>
<td class="ltx_td ltx_align_center" id="S3.T3.2.2.2.4" style="padding:1.5pt 3.0pt;">86.52</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T3.2.2.2.5" style="padding:1.5pt 3.0pt;">81.53</td>
<td class="ltx_td ltx_align_center" id="S3.T3.2.2.2.6" style="padding:1.5pt 3.0pt;">80.17</td>
<td class="ltx_td ltx_align_center" id="S3.T3.2.2.2.7" style="padding:1.5pt 3.0pt;">80.34</td>
<td class="ltx_td ltx_align_center" id="S3.T3.2.2.2.8" style="padding:1.5pt 3.0pt;">85.95</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T3.2.2.2.9" style="padding:1.5pt 3.0pt;">82.15</td>
<td class="ltx_td ltx_align_center" id="S3.T3.2.2.2.10" style="padding:1.5pt 3.0pt;">80.92</td>
<td class="ltx_td ltx_align_center" id="S3.T3.2.2.2.11" style="padding:1.5pt 3.0pt;">80.35</td>
<td class="ltx_td ltx_align_center" id="S3.T3.2.2.2.12" style="padding:1.5pt 3.0pt;">89.51</td>
<td class="ltx_td ltx_align_center" id="S3.T3.2.2.2.13" style="padding:1.5pt 3.0pt;">83.59</td>
</tr>
<tr class="ltx_tr" id="S3.T3.3.3.3">
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r" id="S3.T3.3.3.3.1" style="padding:1.5pt 3.0pt;">R-SFT w. HS-DPO<math alttext="{}_{\text{ensemble}}" class="ltx_Math" display="inline" id="S3.T3.3.3.3.1.m1.1"><semantics id="S3.T3.3.3.3.1.m1.1a"><msub id="S3.T3.3.3.3.1.m1.1.1" xref="S3.T3.3.3.3.1.m1.1.1.cmml"><mi id="S3.T3.3.3.3.1.m1.1.1a" xref="S3.T3.3.3.3.1.m1.1.1.cmml"></mi><mtext id="S3.T3.3.3.3.1.m1.1.1.1" xref="S3.T3.3.3.3.1.m1.1.1.1a.cmml">ensemble</mtext></msub><annotation-xml encoding="MathML-Content" id="S3.T3.3.3.3.1.m1.1b"><apply id="S3.T3.3.3.3.1.m1.1.1.cmml" xref="S3.T3.3.3.3.1.m1.1.1"><ci id="S3.T3.3.3.3.1.m1.1.1.1a.cmml" xref="S3.T3.3.3.3.1.m1.1.1.1"><mtext id="S3.T3.3.3.3.1.m1.1.1.1.cmml" mathsize="70%" xref="S3.T3.3.3.3.1.m1.1.1.1">ensemble</mtext></ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T3.3.3.3.1.m1.1c">{}_{\text{ensemble}}</annotation><annotation encoding="application/x-llamapun" id="S3.T3.3.3.3.1.m1.1d">start_FLOATSUBSCRIPT ensemble end_FLOATSUBSCRIPT</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S3.T3.3.3.3.2" style="padding:1.5pt 3.0pt;">77.18</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S3.T3.3.3.3.3" style="padding:1.5pt 3.0pt;">79.78</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S3.T3.3.3.3.4" style="padding:1.5pt 3.0pt;">88.97</td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r" id="S3.T3.3.3.3.5" style="padding:1.5pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T3.3.3.3.5.1">81.98</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S3.T3.3.3.3.6" style="padding:1.5pt 3.0pt;">80.80</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S3.T3.3.3.3.7" style="padding:1.5pt 3.0pt;">80.75</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S3.T3.3.3.3.8" style="padding:1.5pt 3.0pt;">86.28</td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r" id="S3.T3.3.3.3.9" style="padding:1.5pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T3.3.3.3.9.1">82.61</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S3.T3.3.3.3.10" style="padding:1.5pt 3.0pt;">81.09</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S3.T3.3.3.3.11" style="padding:1.5pt 3.0pt;">80.97</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S3.T3.3.3.3.12" style="padding:1.5pt 3.0pt;">90.06</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S3.T3.3.3.3.13" style="padding:1.5pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T3.3.3.3.13.1">84.04</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of ablation studies conducted on the GuardReasoner model to analyze the impact of different components on its performance.  The study evaluates the model's F1 score across three guardrail tasks (prompt harmfulness detection, response harmfulness detection, and refusal detection) using four variations of the GuardReasoner training process: a baseline with and without mixed datasets, a reasoning supervised fine-tuning (R-SFT) approach, and the R-SFT combined with hard sample direct preference optimization (HS-DPO) using self-generated and ensembled hard samples.  The best and worst F1 scores achieved for each model variation are highlighted for easy comparison, illustrating the relative contribution of each training component.
> <details>
> <summary>read the caption</summary>
> Table 3: Ablation studies of GuardReasoner evaluated via F1 score (%). The bold and underlined italic values denote the best and worst.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S4.T4.5.1">
<tr class="ltx_tr" id="S4.T4.5.1.1">
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.5.1.1.1" style="padding:0.5pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.5.1.1.1.1">Method</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.5.1.1.2" style="padding:0.5pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.5.1.1.2.1">Model Size</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.5.1.1.3" style="padding:0.5pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.5.1.1.3.1">HarmBench</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.5.1.1.4" style="padding:0.5pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.5.1.1.4.1">SafeRLHF</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.5.1.1.5" style="padding:0.5pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.5.1.1.5.1">BeaverTails</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.5.1.1.6" style="padding:0.5pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.5.1.1.6.1">XSTestReponse</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.5.1.1.7" style="padding:0.5pt 3.0pt;"><span class="ltx_text" id="S4.T4.5.1.1.7.1"><span class="ltx_text" id="S4.T4.5.1.1.7.1.1"></span> <span class="ltx_text" id="S4.T4.5.1.1.7.1.2">
<span class="ltx_tabular ltx_align_middle" id="S4.T4.5.1.1.7.1.2.1">
<span class="ltx_tr" id="S4.T4.5.1.1.7.1.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T4.5.1.1.7.1.2.1.1.1" style="padding:0.5pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.5.1.1.7.1.2.1.1.1.1">WildGuard</span></span></span>
<span class="ltx_tr" id="S4.T4.5.1.1.7.1.2.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T4.5.1.1.7.1.2.1.2.1" style="padding:0.5pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.5.1.1.7.1.2.1.2.1.1">Test</span></span></span>
</span></span> <span class="ltx_text" id="S4.T4.5.1.1.7.1.3"></span></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.5.1.1.8" style="padding:0.5pt 3.0pt;"><span class="ltx_text" id="S4.T4.5.1.1.8.1"><span class="ltx_text" id="S4.T4.5.1.1.8.1.1"></span> <span class="ltx_text" id="S4.T4.5.1.1.8.1.2">
<span class="ltx_tabular ltx_align_middle" id="S4.T4.5.1.1.8.1.2.1">
<span class="ltx_tr" id="S4.T4.5.1.1.8.1.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T4.5.1.1.8.1.2.1.1.1" style="padding:0.5pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.5.1.1.8.1.2.1.1.1.1">Weighted</span></span></span>
<span class="ltx_tr" id="S4.T4.5.1.1.8.1.2.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T4.5.1.1.8.1.2.1.2.1" style="padding:0.5pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.5.1.1.8.1.2.1.2.1.1">Average</span></span></span>
</span></span> <span class="ltx_text" id="S4.T4.5.1.1.8.1.3"></span></span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.5.1.2">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="8" id="S4.T4.5.1.2.1" style="padding:0.5pt 3.0pt;">Closed-Source Guard API</td>
</tr>
<tr class="ltx_tr" id="S4.T4.5.1.3">
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.5.1.3.1" style="padding:0.5pt 3.0pt;">OpenAI Moderation</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.5.1.3.2" style="padding:0.5pt 3.0pt;">Unknown</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.5.1.3.3" style="padding:0.5pt 3.0pt;">20.60</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.5.1.3.4" style="padding:0.5pt 3.0pt;">10.10</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.5.1.3.5" style="padding:0.5pt 3.0pt;">15.70</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.5.1.3.6" style="padding:0.5pt 3.0pt;">46.60</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.5.1.3.7" style="padding:0.5pt 3.0pt;">16.90</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.5.1.3.8" style="padding:0.5pt 3.0pt;">16.68</td>
</tr>
<tr class="ltx_tr" id="S4.T4.5.1.4">
<td class="ltx_td ltx_align_center" id="S4.T4.5.1.4.1" style="padding:0.5pt 3.0pt;">GPT-4o</td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.1.4.2" style="padding:0.5pt 3.0pt;">Unknown</td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.1.4.3" style="padding:0.5pt 3.0pt;">56.34</td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.1.4.4" style="padding:0.5pt 3.0pt;">64.05</td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.1.4.5" style="padding:0.5pt 3.0pt;">78.63</td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.1.4.6" style="padding:0.5pt 3.0pt;">65.12</td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.1.4.7" style="padding:0.5pt 3.0pt;">65.24</td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.1.4.8" style="padding:0.5pt 3.0pt;">69.41</td>
</tr>
<tr class="ltx_tr" id="S4.T4.5.1.5">
<td class="ltx_td ltx_align_center" id="S4.T4.5.1.5.1" style="padding:0.5pt 3.0pt;">GPT-4o+CoT</td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.1.5.2" style="padding:0.5pt 3.0pt;">Unknown</td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.1.5.3" style="padding:0.5pt 3.0pt;">65.99</td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.1.5.4" style="padding:0.5pt 3.0pt;">65.10</td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.1.5.5" style="padding:0.5pt 3.0pt;">82.26</td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.1.5.6" style="padding:0.5pt 3.0pt;">86.90</td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.1.5.7" style="padding:0.5pt 3.0pt;">71.43</td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.1.5.8" style="padding:0.5pt 3.0pt;">74.45</td>
</tr>
<tr class="ltx_tr" id="S4.T4.5.1.6">
<td class="ltx_td ltx_align_center" id="S4.T4.5.1.6.1" style="padding:0.5pt 3.0pt;">GPT-4</td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.1.6.2" style="padding:0.5pt 3.0pt;">Unknown</td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.1.6.3" style="padding:0.5pt 3.0pt;">78.54</td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.1.6.4" style="padding:0.5pt 3.0pt;">58.62</td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.1.6.5" style="padding:0.5pt 3.0pt;">80.11</td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.1.6.6" style="padding:0.5pt 3.0pt;">91.16</td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.1.6.7" style="padding:0.5pt 3.0pt;">65.45</td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.1.6.8" style="padding:0.5pt 3.0pt;">71.82</td>
</tr>
<tr class="ltx_tr" id="S4.T4.5.1.7">
<td class="ltx_td ltx_align_center" id="S4.T4.5.1.7.1" style="padding:0.5pt 3.0pt;">GPT-4+CoT</td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.1.7.2" style="padding:0.5pt 3.0pt;">Unknown</td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.1.7.3" style="padding:0.5pt 3.0pt;">79.68</td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.1.7.4" style="padding:0.5pt 3.0pt;">59.38</td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.1.7.5" style="padding:0.5pt 3.0pt;">80.26</td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.1.7.6" style="padding:0.5pt 3.0pt;">91.28</td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.1.7.7" style="padding:0.5pt 3.0pt;">66.37</td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.1.7.8" style="padding:0.5pt 3.0pt;">72.38</td>
</tr>
<tr class="ltx_tr" id="S4.T4.5.1.8">
<td class="ltx_td ltx_align_center" id="S4.T4.5.1.8.1" style="padding:0.5pt 3.0pt;">o1-preview</td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.1.8.2" style="padding:0.5pt 3.0pt;">Unknown</td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.1.8.3" style="padding:0.5pt 3.0pt;">76.40</td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.1.8.4" style="padding:0.5pt 3.0pt;">66.60</td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.1.8.5" style="padding:0.5pt 3.0pt;">79.96</td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.1.8.6" style="padding:0.5pt 3.0pt;">74.75</td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.1.8.7" style="padding:0.5pt 3.0pt;">50.00</td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.1.8.8" style="padding:0.5pt 3.0pt;">69.22</td>
</tr>
<tr class="ltx_tr" id="S4.T4.5.1.9">
<td class="ltx_td ltx_align_center" id="S4.T4.5.1.9.1" style="padding:0.5pt 3.0pt;">Claude 3.5 Sonnet</td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.1.9.2" style="padding:0.5pt 3.0pt;">Unknown</td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.1.9.3" style="padding:0.5pt 3.0pt;">75.52</td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.1.9.4" style="padding:0.5pt 3.0pt;">69.29</td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.1.9.5" style="padding:0.5pt 3.0pt;">83.84</td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.1.9.6" style="padding:0.5pt 3.0pt;">84.75</td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.1.9.7" style="padding:0.5pt 3.0pt;">10.74</td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.1.9.8" style="padding:0.5pt 3.0pt;">63.05</td>
</tr>
<tr class="ltx_tr" id="S4.T4.5.1.10">
<td class="ltx_td ltx_align_center" id="S4.T4.5.1.10.1" style="padding:0.5pt 3.0pt;">Gemini 1.5 Pro</td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.1.10.2" style="padding:0.5pt 3.0pt;">Unknown</td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.1.10.3" style="padding:0.5pt 3.0pt;">84.39</td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.1.10.4" style="padding:0.5pt 3.0pt;">62.01</td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.1.10.5" style="padding:0.5pt 3.0pt;">83.91</td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.1.10.6" style="padding:0.5pt 3.0pt;">90.24</td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.1.10.7" style="padding:0.5pt 3.0pt;">76.47</td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.1.10.8" style="padding:0.5pt 3.0pt;">77.04</td>
</tr>
<tr class="ltx_tr" id="S4.T4.5.1.11">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="8" id="S4.T4.5.1.11.1" style="padding:0.5pt 3.0pt;">Open-Source Guard Model</td>
</tr>
<tr class="ltx_tr" id="S4.T4.5.1.12">
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.5.1.12.1" style="padding:0.5pt 3.0pt;">LLaMA Guard</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.5.1.12.2" style="padding:0.5pt 3.0pt;">7B</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.5.1.12.3" style="padding:0.5pt 3.0pt;">52.00</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.5.1.12.4" style="padding:0.5pt 3.0pt;">48.40</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.5.1.12.5" style="padding:0.5pt 3.0pt;">67.10</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.5.1.12.6" style="padding:0.5pt 3.0pt;">82.00</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.5.1.12.7" style="padding:0.5pt 3.0pt;">50.50</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.5.1.12.8" style="padding:0.5pt 3.0pt;">58.27</td>
</tr>
<tr class="ltx_tr" id="S4.T4.5.1.13">
<td class="ltx_td ltx_align_center" id="S4.T4.5.1.13.1" style="padding:0.5pt 3.0pt;">LLaMA Guard 2</td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.1.13.2" style="padding:0.5pt 3.0pt;">8B</td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.1.13.3" style="padding:0.5pt 3.0pt;">77.80</td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.1.13.4" style="padding:0.5pt 3.0pt;">51.60</td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.1.13.5" style="padding:0.5pt 3.0pt;">71.80</td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.1.13.6" style="padding:0.5pt 3.0pt;">90.80</td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.1.13.7" style="padding:0.5pt 3.0pt;">66.50</td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.1.13.8" style="padding:0.5pt 3.0pt;">66.99</td>
</tr>
<tr class="ltx_tr" id="S4.T4.5.1.14">
<td class="ltx_td ltx_align_center" id="S4.T4.5.1.14.1" style="padding:0.5pt 3.0pt;">LLaMA Guard 3</td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.1.14.2" style="padding:0.5pt 3.0pt;">8B</td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.1.14.3" style="padding:0.5pt 3.0pt;">85.07</td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.1.14.4" style="padding:0.5pt 3.0pt;">44.36</td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.1.14.5" style="padding:0.5pt 3.0pt;">67.84</td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.1.14.6" style="padding:0.5pt 3.0pt;">87.67</td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.1.14.7" style="padding:0.5pt 3.0pt;">70.80</td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.1.14.8" style="padding:0.5pt 3.0pt;">64.97</td>
</tr>
<tr class="ltx_tr" id="S4.T4.5.1.15">
<td class="ltx_td ltx_align_center" id="S4.T4.5.1.15.1" style="padding:0.5pt 3.0pt;">Aegis Guard Defensive</td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.1.15.2" style="padding:0.5pt 3.0pt;">7B</td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.1.15.3" style="padding:0.5pt 3.0pt;">62.20</td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.1.15.4" style="padding:0.5pt 3.0pt;">59.30</td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.1.15.5" style="padding:0.5pt 3.0pt;">74.70</td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.1.15.6" style="padding:0.5pt 3.0pt;">52.80</td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.1.15.7" style="padding:0.5pt 3.0pt;">49.10</td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.1.15.8" style="padding:0.5pt 3.0pt;">62.79</td>
</tr>
<tr class="ltx_tr" id="S4.T4.5.1.16">
<td class="ltx_td ltx_align_center" id="S4.T4.5.1.16.1" style="padding:0.5pt 3.0pt;">Aegis Guard Permissive</td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.1.16.2" style="padding:0.5pt 3.0pt;">7B</td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.1.16.3" style="padding:0.5pt 3.0pt;">60.80</td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.1.16.4" style="padding:0.5pt 3.0pt;">55.90</td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.1.16.5" style="padding:0.5pt 3.0pt;">73.80</td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.1.16.6" style="padding:0.5pt 3.0pt;">60.40</td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.1.16.7" style="padding:0.5pt 3.0pt;">56.40</td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.1.16.8" style="padding:0.5pt 3.0pt;">63.55</td>
</tr>
<tr class="ltx_tr" id="S4.T4.5.1.17">
<td class="ltx_td ltx_align_center" id="S4.T4.5.1.17.1" style="padding:0.5pt 3.0pt;">Aegis Guard 2.0</td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.1.17.2" style="padding:0.5pt 3.0pt;">8B</td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.1.17.3" style="padding:0.5pt 3.0pt;">-</td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.1.17.4" style="padding:0.5pt 3.0pt;">-</td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.1.17.5" style="padding:0.5pt 3.0pt;">-</td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.1.17.6" style="padding:0.5pt 3.0pt;">86.20</td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.1.17.7" style="padding:0.5pt 3.0pt;">77.50</td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.1.17.8" style="padding:0.5pt 3.0pt;">-</td>
</tr>
<tr class="ltx_tr" id="S4.T4.5.1.18">
<td class="ltx_td ltx_align_center" id="S4.T4.5.1.18.1" style="padding:0.5pt 3.0pt;">ShieldGemma</td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.1.18.2" style="padding:0.5pt 3.0pt;">2B</td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.1.18.3" style="padding:0.5pt 3.0pt;">35.36</td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.1.18.4" style="padding:0.5pt 3.0pt;">16.92</td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.1.18.5" style="padding:0.5pt 3.0pt;">30.97</td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.1.18.6" style="padding:0.5pt 3.0pt;">65.55</td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.1.18.7" style="padding:0.5pt 3.0pt;">20.13</td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.1.18.8" style="padding:0.5pt 3.0pt;">27.24</td>
</tr>
<tr class="ltx_tr" id="S4.T4.5.1.19">
<td class="ltx_td ltx_align_center" id="S4.T4.5.1.19.1" style="padding:0.5pt 3.0pt;">ShieldGemma</td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.1.19.2" style="padding:0.5pt 3.0pt;">9B</td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.1.19.3" style="padding:0.5pt 3.0pt;">56.44</td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.1.19.4" style="padding:0.5pt 3.0pt;">47.07</td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.1.19.5" style="padding:0.5pt 3.0pt;">63.61</td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.1.19.6" style="padding:0.5pt 3.0pt;">73.86</td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.1.19.7" style="padding:0.5pt 3.0pt;">47.00</td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.1.19.8" style="padding:0.5pt 3.0pt;">55.67</td>
</tr>
<tr class="ltx_tr" id="S4.T4.5.1.20">
<td class="ltx_td ltx_align_center" id="S4.T4.5.1.20.1" style="padding:0.5pt 3.0pt;">HarmBench LLaMA</td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.1.20.2" style="padding:0.5pt 3.0pt;">13B</td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.1.20.3" style="padding:0.5pt 3.0pt;">84.30</td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.1.20.4" style="padding:0.5pt 3.0pt;">60.00</td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.1.20.5" style="padding:0.5pt 3.0pt;">77.10</td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.1.20.6" style="padding:0.5pt 3.0pt;">64.50</td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.1.20.7" style="padding:0.5pt 3.0pt;">45.70</td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.1.20.8" style="padding:0.5pt 3.0pt;">65.49</td>
</tr>
<tr class="ltx_tr" id="S4.T4.5.1.21">
<td class="ltx_td ltx_align_center" id="S4.T4.5.1.21.1" style="padding:0.5pt 3.0pt;">HarmBench Mistral</td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.1.21.2" style="padding:0.5pt 3.0pt;">7B</td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.1.21.3" style="padding:0.5pt 3.0pt;">87.00</td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.1.21.4" style="padding:0.5pt 3.0pt;">52.40</td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.1.21.5" style="padding:0.5pt 3.0pt;">75.20</td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.1.21.6" style="padding:0.5pt 3.0pt;">72.00</td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.1.21.7" style="padding:0.5pt 3.0pt;">60.10</td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.1.21.8" style="padding:0.5pt 3.0pt;">66.70</td>
</tr>
<tr class="ltx_tr" id="S4.T4.5.1.22">
<td class="ltx_td ltx_align_center" id="S4.T4.5.1.22.1" style="padding:0.5pt 3.0pt;">MD-Judge</td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.1.22.2" style="padding:0.5pt 3.0pt;">7B</td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.1.22.3" style="padding:0.5pt 3.0pt;">81.60</td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.1.22.4" style="padding:0.5pt 3.0pt;">64.70</td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.1.22.5" style="padding:0.5pt 3.0pt;">86.70</td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.1.22.6" style="padding:0.5pt 3.0pt;">90.40</td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.1.22.7" style="padding:0.5pt 3.0pt;">76.80</td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.1.22.8" style="padding:0.5pt 3.0pt;">78.67</td>
</tr>
<tr class="ltx_tr" id="S4.T4.5.1.23">
<td class="ltx_td ltx_align_center" id="S4.T4.5.1.23.1" style="padding:0.5pt 3.0pt;">BeaverDam</td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.1.23.2" style="padding:0.5pt 3.0pt;">7B</td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.1.23.3" style="padding:0.5pt 3.0pt;">58.40</td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.1.23.4" style="padding:0.5pt 3.0pt;">72.10</td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.1.23.5" style="padding:0.5pt 3.0pt;">89.90</td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.1.23.6" style="padding:0.5pt 3.0pt;">83.60</td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.1.23.7" style="padding:0.5pt 3.0pt;">63.40</td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.1.23.8" style="padding:0.5pt 3.0pt;">76.60</td>
</tr>
<tr class="ltx_tr" id="S4.T4.5.1.24">
<td class="ltx_td ltx_align_center" id="S4.T4.5.1.24.1" style="padding:0.5pt 3.0pt;">WildGuard</td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.1.24.2" style="padding:0.5pt 3.0pt;">7B</td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.1.24.3" style="padding:0.5pt 3.0pt;">86.30</td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.1.24.4" style="padding:0.5pt 3.0pt;">64.20</td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.1.24.5" style="padding:0.5pt 3.0pt;">84.40</td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.1.24.6" style="padding:0.5pt 3.0pt;">94.70</td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.1.24.7" style="padding:0.5pt 3.0pt;">75.40</td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.1.24.8" style="padding:0.5pt 3.0pt;">77.95</td>
</tr>
<tr class="ltx_tr" id="S4.T4.5.1.25">
<td class="ltx_td ltx_align_center" id="S4.T4.5.1.25.1" style="padding:0.5pt 3.0pt;">QwQ-preview</td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.1.25.2" style="padding:0.5pt 3.0pt;">32B</td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.1.25.3" style="padding:0.5pt 3.0pt;">69.65</td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.1.25.4" style="padding:0.5pt 3.0pt;">62.76</td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.1.25.5" style="padding:0.5pt 3.0pt;">77.26</td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.1.25.6" style="padding:0.5pt 3.0pt;">45.95</td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.1.25.7" style="padding:0.5pt 3.0pt;">17.56</td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.1.25.8" style="padding:0.5pt 3.0pt;">57.73</td>
</tr>
<tr class="ltx_tr" id="S4.T4.5.1.26">
<td class="ltx_td ltx_align_center" id="S4.T4.5.1.26.1" style="padding:0.5pt 3.0pt;">GuardReasoner</td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.1.26.2" style="padding:0.5pt 3.0pt;">1B</td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.1.26.3" style="padding:0.5pt 3.0pt;">84.75</td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.1.26.4" style="padding:0.5pt 3.0pt;">68.39</td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.1.26.5" style="padding:0.5pt 3.0pt;">85.84</td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.1.26.6" style="padding:0.5pt 3.0pt;">90.12</td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.1.26.7" style="padding:0.5pt 3.0pt;">74.81</td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.1.26.8" style="padding:0.5pt 3.0pt;">79.06</td>
</tr>
<tr class="ltx_tr" id="S4.T4.5.1.27">
<td class="ltx_td ltx_align_center" id="S4.T4.5.1.27.1" style="padding:0.5pt 3.0pt;">GuardReasoner</td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.1.27.2" style="padding:0.5pt 3.0pt;">3B</td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.1.27.3" style="padding:0.5pt 3.0pt;">85.66</td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.1.27.4" style="padding:0.5pt 3.0pt;">69.02</td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.1.27.5" style="padding:0.5pt 3.0pt;">86.72</td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.1.27.6" style="padding:0.5pt 3.0pt;">91.36</td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.1.27.7" style="padding:0.5pt 3.0pt;">79.70</td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.1.27.8" style="padding:0.5pt 3.0pt;"><span class="ltx_text ltx_ulem_uline" id="S4.T4.5.1.27.8.1">80.80</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.5.1.28">
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T4.5.1.28.1" style="padding:0.5pt 3.0pt;">GuardReasoner</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T4.5.1.28.2" style="padding:0.5pt 3.0pt;">8B</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T4.5.1.28.3" style="padding:0.5pt 3.0pt;">85.47</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T4.5.1.28.4" style="padding:0.5pt 3.0pt;">70.04</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T4.5.1.28.5" style="padding:0.5pt 3.0pt;">87.60</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T4.5.1.28.6" style="padding:0.5pt 3.0pt;">94.34</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T4.5.1.28.7" style="padding:0.5pt 3.0pt;">78.20</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T4.5.1.28.8" style="padding:0.5pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.5.1.28.8.1">81.22</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents a comparative analysis of 25 different models' performance on five distinct benchmarks designed to assess their ability to detect harmful content in responses generated by large language models (LLMs).  The models include both closed-source (commercial) APIs and open-source models.  Performance is measured using the F1 score, a metric that balances precision and recall.  The best-performing model and the second-best model for each benchmark are highlighted.  The table helps to illustrate the varying capabilities of different LLMs and guardrail approaches in identifying harmful content within LLM responses.
> <details>
> <summary>read the caption</summary>
> Table 4: Comparison experiment of 25 models on 5 benchmarks of the response harmfulness detection task. The bold and underlined values denote the best and the runner-up. The performance is evaluated via F1 score (%). “-” denotes the result is unavailable.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S4.T5.11.9">
<tr class="ltx_tr" id="S4.T5.11.9.10">
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.11.9.10.1" rowspan="2" style="padding:1.5pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T5.11.9.10.1.1">Stage</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T5.11.9.10.2" style="padding:1.5pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T5.11.9.10.2.1">Model Size</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" colspan="2" id="S4.T5.11.9.10.3" style="padding:1.5pt 3.0pt;">1B</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" colspan="2" id="S4.T5.11.9.10.4" style="padding:1.5pt 3.0pt;">3B</td>
<td class="ltx_td ltx_align_center ltx_border_t" colspan="2" id="S4.T5.11.9.10.5" style="padding:1.5pt 3.0pt;">8B</td>
</tr>
<tr class="ltx_tr" id="S4.T5.5.3.3">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T5.5.3.3.4" style="padding:1.5pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T5.5.3.3.4.1">Method Variant</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.3.1.1.1" style="padding:1.5pt 3.0pt;">Baseline<math alttext="{}_{\text{mix}}" class="ltx_Math" display="inline" id="S4.T5.3.1.1.1.m1.1"><semantics id="S4.T5.3.1.1.1.m1.1a"><msub id="S4.T5.3.1.1.1.m1.1.1" xref="S4.T5.3.1.1.1.m1.1.1.cmml"><mi id="S4.T5.3.1.1.1.m1.1.1a" xref="S4.T5.3.1.1.1.m1.1.1.cmml"></mi><mtext id="S4.T5.3.1.1.1.m1.1.1.1" xref="S4.T5.3.1.1.1.m1.1.1.1a.cmml">mix</mtext></msub><annotation-xml encoding="MathML-Content" id="S4.T5.3.1.1.1.m1.1b"><apply id="S4.T5.3.1.1.1.m1.1.1.cmml" xref="S4.T5.3.1.1.1.m1.1.1"><ci id="S4.T5.3.1.1.1.m1.1.1.1a.cmml" xref="S4.T5.3.1.1.1.m1.1.1.1"><mtext id="S4.T5.3.1.1.1.m1.1.1.1.cmml" mathsize="70%" xref="S4.T5.3.1.1.1.m1.1.1.1">mix</mtext></ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T5.3.1.1.1.m1.1c">{}_{\text{mix}}</annotation><annotation encoding="application/x-llamapun" id="S4.T5.3.1.1.1.m1.1d">start_FLOATSUBSCRIPT mix end_FLOATSUBSCRIPT</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T5.5.3.3.5" style="padding:1.5pt 3.0pt;">GuardReasoner</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.4.2.2.2" style="padding:1.5pt 3.0pt;">Baseline<math alttext="{}_{\text{mix}}" class="ltx_Math" display="inline" id="S4.T5.4.2.2.2.m1.1"><semantics id="S4.T5.4.2.2.2.m1.1a"><msub id="S4.T5.4.2.2.2.m1.1.1" xref="S4.T5.4.2.2.2.m1.1.1.cmml"><mi id="S4.T5.4.2.2.2.m1.1.1a" xref="S4.T5.4.2.2.2.m1.1.1.cmml"></mi><mtext id="S4.T5.4.2.2.2.m1.1.1.1" xref="S4.T5.4.2.2.2.m1.1.1.1a.cmml">mix</mtext></msub><annotation-xml encoding="MathML-Content" id="S4.T5.4.2.2.2.m1.1b"><apply id="S4.T5.4.2.2.2.m1.1.1.cmml" xref="S4.T5.4.2.2.2.m1.1.1"><ci id="S4.T5.4.2.2.2.m1.1.1.1a.cmml" xref="S4.T5.4.2.2.2.m1.1.1.1"><mtext id="S4.T5.4.2.2.2.m1.1.1.1.cmml" mathsize="70%" xref="S4.T5.4.2.2.2.m1.1.1.1">mix</mtext></ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T5.4.2.2.2.m1.1c">{}_{\text{mix}}</annotation><annotation encoding="application/x-llamapun" id="S4.T5.4.2.2.2.m1.1d">start_FLOATSUBSCRIPT mix end_FLOATSUBSCRIPT</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T5.5.3.3.6" style="padding:1.5pt 3.0pt;">GuardReasoner</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.5.3.3.3" style="padding:1.5pt 3.0pt;">Baseline<math alttext="{}_{\text{mix}}" class="ltx_Math" display="inline" id="S4.T5.5.3.3.3.m1.1"><semantics id="S4.T5.5.3.3.3.m1.1a"><msub id="S4.T5.5.3.3.3.m1.1.1" xref="S4.T5.5.3.3.3.m1.1.1.cmml"><mi id="S4.T5.5.3.3.3.m1.1.1a" xref="S4.T5.5.3.3.3.m1.1.1.cmml"></mi><mtext id="S4.T5.5.3.3.3.m1.1.1.1" xref="S4.T5.5.3.3.3.m1.1.1.1a.cmml">mix</mtext></msub><annotation-xml encoding="MathML-Content" id="S4.T5.5.3.3.3.m1.1b"><apply id="S4.T5.5.3.3.3.m1.1.1.cmml" xref="S4.T5.5.3.3.3.m1.1.1"><ci id="S4.T5.5.3.3.3.m1.1.1.1a.cmml" xref="S4.T5.5.3.3.3.m1.1.1.1"><mtext id="S4.T5.5.3.3.3.m1.1.1.1.cmml" mathsize="70%" xref="S4.T5.5.3.3.3.m1.1.1.1">mix</mtext></ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T5.5.3.3.3.m1.1c">{}_{\text{mix}}</annotation><annotation encoding="application/x-llamapun" id="S4.T5.5.3.3.3.m1.1d">start_FLOATSUBSCRIPT mix end_FLOATSUBSCRIPT</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.5.3.3.7" style="padding:1.5pt 3.0pt;">GuardReasoner</td>
</tr>
<tr class="ltx_tr" id="S4.T5.8.6.6">
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.8.6.6.4" rowspan="2" style="padding:1.5pt 3.0pt;"><span class="ltx_text" id="S4.T5.8.6.6.4.1">Training</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T5.8.6.6.5" style="padding:1.5pt 3.0pt;">GPU Memory Cost (GB)</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.8.6.6.6" style="padding:1.5pt 3.0pt;">240.21</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T5.6.4.4.1" style="padding:1.5pt 3.0pt;">191.22 <math alttext="\mid" class="ltx_Math" display="inline" id="S4.T5.6.4.4.1.m1.1"><semantics id="S4.T5.6.4.4.1.m1.1a"><mo id="S4.T5.6.4.4.1.m1.1.1" xref="S4.T5.6.4.4.1.m1.1.1.cmml">∣</mo><annotation-xml encoding="MathML-Content" id="S4.T5.6.4.4.1.m1.1b"><ci id="S4.T5.6.4.4.1.m1.1.1.cmml" xref="S4.T5.6.4.4.1.m1.1.1">∣</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T5.6.4.4.1.m1.1c">\mid</annotation><annotation encoding="application/x-llamapun" id="S4.T5.6.4.4.1.m1.1d">∣</annotation></semantics></math> 236.93</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.8.6.6.7" style="padding:1.5pt 3.0pt;">241.46</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T5.7.5.5.2" style="padding:1.5pt 3.0pt;">259.84 <math alttext="\mid" class="ltx_Math" display="inline" id="S4.T5.7.5.5.2.m1.1"><semantics id="S4.T5.7.5.5.2.m1.1a"><mo id="S4.T5.7.5.5.2.m1.1.1" xref="S4.T5.7.5.5.2.m1.1.1.cmml">∣</mo><annotation-xml encoding="MathML-Content" id="S4.T5.7.5.5.2.m1.1b"><ci id="S4.T5.7.5.5.2.m1.1.1.cmml" xref="S4.T5.7.5.5.2.m1.1.1">∣</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T5.7.5.5.2.m1.1c">\mid</annotation><annotation encoding="application/x-llamapun" id="S4.T5.7.5.5.2.m1.1d">∣</annotation></semantics></math> 213.04</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.8.6.6.8" style="padding:1.5pt 3.0pt;">270.78</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.8.6.6.3" style="padding:1.5pt 3.0pt;">270.86 <math alttext="\mid" class="ltx_Math" display="inline" id="S4.T5.8.6.6.3.m1.1"><semantics id="S4.T5.8.6.6.3.m1.1a"><mo id="S4.T5.8.6.6.3.m1.1.1" xref="S4.T5.8.6.6.3.m1.1.1.cmml">∣</mo><annotation-xml encoding="MathML-Content" id="S4.T5.8.6.6.3.m1.1b"><ci id="S4.T5.8.6.6.3.m1.1.1.cmml" xref="S4.T5.8.6.6.3.m1.1.1">∣</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T5.8.6.6.3.m1.1c">\mid</annotation><annotation encoding="application/x-llamapun" id="S4.T5.8.6.6.3.m1.1d">∣</annotation></semantics></math> 273.95</td>
</tr>
<tr class="ltx_tr" id="S4.T5.11.9.9">
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T5.11.9.9.4" style="padding:1.5pt 3.0pt;">Time Cost (GPU hour)</td>
<td class="ltx_td ltx_align_center" id="S4.T5.11.9.9.5" style="padding:1.5pt 3.0pt;">06.67</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T5.9.7.7.1" style="padding:1.5pt 3.0pt;">06.33 <math alttext="\mid" class="ltx_Math" display="inline" id="S4.T5.9.7.7.1.m1.1"><semantics id="S4.T5.9.7.7.1.m1.1a"><mo id="S4.T5.9.7.7.1.m1.1.1" xref="S4.T5.9.7.7.1.m1.1.1.cmml">∣</mo><annotation-xml encoding="MathML-Content" id="S4.T5.9.7.7.1.m1.1b"><ci id="S4.T5.9.7.7.1.m1.1.1.cmml" xref="S4.T5.9.7.7.1.m1.1.1">∣</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T5.9.7.7.1.m1.1c">\mid</annotation><annotation encoding="application/x-llamapun" id="S4.T5.9.7.7.1.m1.1d">∣</annotation></semantics></math> 03.70</td>
<td class="ltx_td ltx_align_center" id="S4.T5.11.9.9.6" style="padding:1.5pt 3.0pt;">11.69</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T5.10.8.8.2" style="padding:1.5pt 3.0pt;">13.69 <math alttext="\mid" class="ltx_Math" display="inline" id="S4.T5.10.8.8.2.m1.1"><semantics id="S4.T5.10.8.8.2.m1.1a"><mo id="S4.T5.10.8.8.2.m1.1.1" xref="S4.T5.10.8.8.2.m1.1.1.cmml">∣</mo><annotation-xml encoding="MathML-Content" id="S4.T5.10.8.8.2.m1.1b"><ci id="S4.T5.10.8.8.2.m1.1.1.cmml" xref="S4.T5.10.8.8.2.m1.1.1">∣</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T5.10.8.8.2.m1.1c">\mid</annotation><annotation encoding="application/x-llamapun" id="S4.T5.10.8.8.2.m1.1d">∣</annotation></semantics></math> 04.06</td>
<td class="ltx_td ltx_align_center" id="S4.T5.11.9.9.7" style="padding:1.5pt 3.0pt;">21.32</td>
<td class="ltx_td ltx_align_center" id="S4.T5.11.9.9.3" style="padding:1.5pt 3.0pt;">25.20 <math alttext="\mid" class="ltx_Math" display="inline" id="S4.T5.11.9.9.3.m1.1"><semantics id="S4.T5.11.9.9.3.m1.1a"><mo id="S4.T5.11.9.9.3.m1.1.1" xref="S4.T5.11.9.9.3.m1.1.1.cmml">∣</mo><annotation-xml encoding="MathML-Content" id="S4.T5.11.9.9.3.m1.1b"><ci id="S4.T5.11.9.9.3.m1.1.1.cmml" xref="S4.T5.11.9.9.3.m1.1.1">∣</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T5.11.9.9.3.m1.1c">\mid</annotation><annotation encoding="application/x-llamapun" id="S4.T5.11.9.9.3.m1.1d">∣</annotation></semantics></math> 05.31</td>
</tr>
<tr class="ltx_tr" id="S4.T5.11.9.11">
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_t" id="S4.T5.11.9.11.1" rowspan="3" style="padding:1.5pt 3.0pt;"><span class="ltx_text" id="S4.T5.11.9.11.1.1">Inference</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T5.11.9.11.2" style="padding:1.5pt 3.0pt;">GPU Memory Cost (GB)</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.11.9.11.3" style="padding:1.5pt 3.0pt;">77.68</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T5.11.9.11.4" style="padding:1.5pt 3.0pt;">77.66</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.11.9.11.5" style="padding:1.5pt 3.0pt;">77.74</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T5.11.9.11.6" style="padding:1.5pt 3.0pt;">78.24</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.11.9.11.7" style="padding:1.5pt 3.0pt;">78.03</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.11.9.11.8" style="padding:1.5pt 3.0pt;">78.25</td>
</tr>
<tr class="ltx_tr" id="S4.T5.11.9.12">
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T5.11.9.12.1" style="padding:1.5pt 3.0pt;">Time Cost (ms/query)</td>
<td class="ltx_td ltx_align_center" id="S4.T5.11.9.12.2" style="padding:1.5pt 3.0pt;">08.43</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T5.11.9.12.3" style="padding:1.5pt 3.0pt;">26.55</td>
<td class="ltx_td ltx_align_center" id="S4.T5.11.9.12.4" style="padding:1.5pt 3.0pt;">10.50</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T5.11.9.12.5" style="padding:1.5pt 3.0pt;">30.29</td>
<td class="ltx_td ltx_align_center" id="S4.T5.11.9.12.6" style="padding:1.5pt 3.0pt;">13.87</td>
<td class="ltx_td ltx_align_center" id="S4.T5.11.9.12.7" style="padding:1.5pt 3.0pt;">35.77</td>
</tr>
<tr class="ltx_tr" id="S4.T5.11.9.13">
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r" id="S4.T5.11.9.13.1" style="padding:1.5pt 3.0pt;">Token Cost (token/query)</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T5.11.9.13.2" style="padding:1.5pt 3.0pt;">19.48</td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r" id="S4.T5.11.9.13.3" style="padding:1.5pt 3.0pt;">254.35</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T5.11.9.13.4" style="padding:1.5pt 3.0pt;">20.05</td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r" id="S4.T5.11.9.13.5" style="padding:1.5pt 3.0pt;">257.64</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T5.11.9.13.6" style="padding:1.5pt 3.0pt;">17.09</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T5.11.9.13.7" style="padding:1.5pt 3.0pt;">260.26</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table details the computational resource requirements for training and inference of the GuardReasoner model at three different scales (1B, 3B, and 8B parameters).  Training was performed using 4 NVIDIA H100 GPUs, while inference utilized a single NVIDIA H100 GPU.  The table breaks down resource usage into two phases: Reasoning Supervised Fine-tuning (R-SFT) and Hard Sample Direct Preference Optimization (HS-DPO). For each phase and model size, GPU memory consumption (GB), training time (GPU hours), and inference-time metrics (latency in milliseconds per query and token cost in tokens per query) are reported.  The '|' symbol separates the resource costs for the R-SFT and HS-DPO phases of training.
> <details>
> <summary>read the caption</summary>
> Table 5: Efficiency experiments on GuardReasoner. The training is conducted on 4 NVIDIA H100 (80GB) GPUs, and the inference uses 1 NVIDIA H100 (80GB) GPU. The first number and the second number split by “∣∣\mid∣” denote the costs of R-SFT and HS-DPO, respectively.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S4.T6.5.1">
<tr class="ltx_tr" id="S4.T6.5.1.1">
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.5.1.1.1" style="padding:1.5pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T6.5.1.1.1.1">Method</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.5.1.1.2" style="padding:1.5pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T6.5.1.1.2.1">Model Size</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.5.1.1.3" style="padding:1.5pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T6.5.1.1.3.1">Prompt</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.5.1.1.4" style="padding:1.5pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T6.5.1.1.4.1">Response</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.5.1.1.5" style="padding:1.5pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T6.5.1.1.5.1">Refusal</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.5.1.1.6" style="padding:1.5pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T6.5.1.1.6.1">Avg.</span></td>
</tr>
<tr class="ltx_tr" id="S4.T6.5.1.2">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="6" id="S4.T6.5.1.2.1" style="padding:1.5pt 3.0pt;">Closed-Source API</td>
</tr>
<tr class="ltx_tr" id="S4.T6.5.1.3">
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.5.1.3.1" style="padding:1.5pt 3.0pt;">OpenAI Moderation</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.5.1.3.2" style="padding:1.5pt 3.0pt;">Unknown</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.5.1.3.3" style="padding:1.5pt 3.0pt;">35.28</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.5.1.3.4" style="padding:1.5pt 3.0pt;">16.68</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.5.1.3.5" style="padding:1.5pt 3.0pt;">49.10</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.5.1.3.6" style="padding:1.5pt 3.0pt;">33.68</td>
</tr>
<tr class="ltx_tr" id="S4.T6.5.1.4">
<td class="ltx_td ltx_align_center" id="S4.T6.5.1.4.1" style="padding:1.5pt 3.0pt;">GPT4o</td>
<td class="ltx_td ltx_align_center" id="S4.T6.5.1.4.2" style="padding:1.5pt 3.0pt;">Unknown</td>
<td class="ltx_td ltx_align_center" id="S4.T6.5.1.4.3" style="padding:1.5pt 3.0pt;">70.00</td>
<td class="ltx_td ltx_align_center" id="S4.T6.5.1.4.4" style="padding:1.5pt 3.0pt;">69.41</td>
<td class="ltx_td ltx_align_center" id="S4.T6.5.1.4.5" style="padding:1.5pt 3.0pt;">81.74</td>
<td class="ltx_td ltx_align_center" id="S4.T6.5.1.4.6" style="padding:1.5pt 3.0pt;">73.72</td>
</tr>
<tr class="ltx_tr" id="S4.T6.5.1.5">
<td class="ltx_td ltx_align_center" id="S4.T6.5.1.5.1" style="padding:1.5pt 3.0pt;">GPT4o+CoT</td>
<td class="ltx_td ltx_align_center" id="S4.T6.5.1.5.2" style="padding:1.5pt 3.0pt;">Unknown</td>
<td class="ltx_td ltx_align_center" id="S4.T6.5.1.5.3" style="padding:1.5pt 3.0pt;">78.00</td>
<td class="ltx_td ltx_align_center" id="S4.T6.5.1.5.4" style="padding:1.5pt 3.0pt;">74.45</td>
<td class="ltx_td ltx_align_center" id="S4.T6.5.1.5.5" style="padding:1.5pt 3.0pt;">83.41</td>
<td class="ltx_td ltx_align_center" id="S4.T6.5.1.5.6" style="padding:1.5pt 3.0pt;">78.62</td>
</tr>
<tr class="ltx_tr" id="S4.T6.5.1.6">
<td class="ltx_td ltx_align_center" id="S4.T6.5.1.6.1" style="padding:1.5pt 3.0pt;">GPT4</td>
<td class="ltx_td ltx_align_center" id="S4.T6.5.1.6.2" style="padding:1.5pt 3.0pt;">Unknown</td>
<td class="ltx_td ltx_align_center" id="S4.T6.5.1.6.3" style="padding:1.5pt 3.0pt;">76.61</td>
<td class="ltx_td ltx_align_center" id="S4.T6.5.1.6.4" style="padding:1.5pt 3.0pt;">71.82</td>
<td class="ltx_td ltx_align_center" id="S4.T6.5.1.6.5" style="padding:1.5pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T6.5.1.6.5.1">90.27</span></td>
<td class="ltx_td ltx_align_center" id="S4.T6.5.1.6.6" style="padding:1.5pt 3.0pt;">79.57</td>
</tr>
<tr class="ltx_tr" id="S4.T6.5.1.7">
<td class="ltx_td ltx_align_center" id="S4.T6.5.1.7.1" style="padding:1.5pt 3.0pt;">GPT4+CoT</td>
<td class="ltx_td ltx_align_center" id="S4.T6.5.1.7.2" style="padding:1.5pt 3.0pt;">Unknown</td>
<td class="ltx_td ltx_align_center" id="S4.T6.5.1.7.3" style="padding:1.5pt 3.0pt;">76.92</td>
<td class="ltx_td ltx_align_center" id="S4.T6.5.1.7.4" style="padding:1.5pt 3.0pt;">72.38</td>
<td class="ltx_td ltx_align_center" id="S4.T6.5.1.7.5" style="padding:1.5pt 3.0pt;"><span class="ltx_text ltx_ulem_uline" id="S4.T6.5.1.7.5.1">90.26</span></td>
<td class="ltx_td ltx_align_center" id="S4.T6.5.1.7.6" style="padding:1.5pt 3.0pt;">79.85</td>
</tr>
<tr class="ltx_tr" id="S4.T6.5.1.8">
<td class="ltx_td ltx_align_center" id="S4.T6.5.1.8.1" style="padding:1.5pt 3.0pt;">o1-preview</td>
<td class="ltx_td ltx_align_center" id="S4.T6.5.1.8.2" style="padding:1.5pt 3.0pt;">Unknown</td>
<td class="ltx_td ltx_align_center" id="S4.T6.5.1.8.3" style="padding:1.5pt 3.0pt;">69.44</td>
<td class="ltx_td ltx_align_center" id="S4.T6.5.1.8.4" style="padding:1.5pt 3.0pt;">69.22</td>
<td class="ltx_td ltx_align_center" id="S4.T6.5.1.8.5" style="padding:1.5pt 3.0pt;">85.22</td>
<td class="ltx_td ltx_align_center" id="S4.T6.5.1.8.6" style="padding:1.5pt 3.0pt;">74.63</td>
</tr>
<tr class="ltx_tr" id="S4.T6.5.1.9">
<td class="ltx_td ltx_align_center" id="S4.T6.5.1.9.1" style="padding:1.5pt 3.0pt;">Claude 3.5 Sonnet</td>
<td class="ltx_td ltx_align_center" id="S4.T6.5.1.9.2" style="padding:1.5pt 3.0pt;">Unknown</td>
<td class="ltx_td ltx_align_center" id="S4.T6.5.1.9.3" style="padding:1.5pt 3.0pt;">54.34</td>
<td class="ltx_td ltx_align_center" id="S4.T6.5.1.9.4" style="padding:1.5pt 3.0pt;">63.05</td>
<td class="ltx_td ltx_align_center" id="S4.T6.5.1.9.5" style="padding:1.5pt 3.0pt;">65.23</td>
<td class="ltx_td ltx_align_center" id="S4.T6.5.1.9.6" style="padding:1.5pt 3.0pt;">60.87</td>
</tr>
<tr class="ltx_tr" id="S4.T6.5.1.10">
<td class="ltx_td ltx_align_center" id="S4.T6.5.1.10.1" style="padding:1.5pt 3.0pt;">Gemini 1.5 Pro</td>
<td class="ltx_td ltx_align_center" id="S4.T6.5.1.10.2" style="padding:1.5pt 3.0pt;">Unknown</td>
<td class="ltx_td ltx_align_center" id="S4.T6.5.1.10.3" style="padding:1.5pt 3.0pt;">72.66</td>
<td class="ltx_td ltx_align_center" id="S4.T6.5.1.10.4" style="padding:1.5pt 3.0pt;">77.04</td>
<td class="ltx_td ltx_align_center" id="S4.T6.5.1.10.5" style="padding:1.5pt 3.0pt;">90.13</td>
<td class="ltx_td ltx_align_center" id="S4.T6.5.1.10.6" style="padding:1.5pt 3.0pt;">79.94</td>
</tr>
<tr class="ltx_tr" id="S4.T6.5.1.11">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="6" id="S4.T6.5.1.11.1" style="padding:1.5pt 3.0pt;">Open-Source Guard Model</td>
</tr>
<tr class="ltx_tr" id="S4.T6.5.1.12">
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.5.1.12.1" style="padding:1.5pt 3.0pt;">LLaMA Guard</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.5.1.12.2" style="padding:1.5pt 3.0pt;">7B</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.5.1.12.3" style="padding:1.5pt 3.0pt;">64.89</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.5.1.12.4" style="padding:1.5pt 3.0pt;">58.27</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.5.1.12.5" style="padding:1.5pt 3.0pt;">58.11</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.5.1.12.6" style="padding:1.5pt 3.0pt;">60.42</td>
</tr>
<tr class="ltx_tr" id="S4.T6.5.1.13">
<td class="ltx_td ltx_align_center" id="S4.T6.5.1.13.1" style="padding:1.5pt 3.0pt;">LLaMA Guard 2</td>
<td class="ltx_td ltx_align_center" id="S4.T6.5.1.13.2" style="padding:1.5pt 3.0pt;">8B</td>
<td class="ltx_td ltx_align_center" id="S4.T6.5.1.13.3" style="padding:1.5pt 3.0pt;">63.62</td>
<td class="ltx_td ltx_align_center" id="S4.T6.5.1.13.4" style="padding:1.5pt 3.0pt;">66.99</td>
<td class="ltx_td ltx_align_center" id="S4.T6.5.1.13.5" style="padding:1.5pt 3.0pt;">61.91</td>
<td class="ltx_td ltx_align_center" id="S4.T6.5.1.13.6" style="padding:1.5pt 3.0pt;">64.18</td>
</tr>
<tr class="ltx_tr" id="S4.T6.5.1.14">
<td class="ltx_td ltx_align_center" id="S4.T6.5.1.14.1" style="padding:1.5pt 3.0pt;">LLaMA Guard 3</td>
<td class="ltx_td ltx_align_center" id="S4.T6.5.1.14.2" style="padding:1.5pt 3.0pt;">8B</td>
<td class="ltx_td ltx_align_center" id="S4.T6.5.1.14.3" style="padding:1.5pt 3.0pt;">68.47</td>
<td class="ltx_td ltx_align_center" id="S4.T6.5.1.14.4" style="padding:1.5pt 3.0pt;">64.97</td>
<td class="ltx_td ltx_align_center" id="S4.T6.5.1.14.5" style="padding:1.5pt 3.0pt;">56.32</td>
<td class="ltx_td ltx_align_center" id="S4.T6.5.1.14.6" style="padding:1.5pt 3.0pt;">63.25</td>
</tr>
<tr class="ltx_tr" id="S4.T6.5.1.15">
<td class="ltx_td ltx_align_center" id="S4.T6.5.1.15.1" style="padding:1.5pt 3.0pt;">Aegis Guard Defensive</td>
<td class="ltx_td ltx_align_center" id="S4.T6.5.1.15.2" style="padding:1.5pt 3.0pt;">7B</td>
<td class="ltx_td ltx_align_center" id="S4.T6.5.1.15.3" style="padding:1.5pt 3.0pt;">72.99</td>
<td class="ltx_td ltx_align_center" id="S4.T6.5.1.15.4" style="padding:1.5pt 3.0pt;">62.79</td>
<td class="ltx_td ltx_align_center" id="S4.T6.5.1.15.5" style="padding:1.5pt 3.0pt;">44.21</td>
<td class="ltx_td ltx_align_center" id="S4.T6.5.1.15.6" style="padding:1.5pt 3.0pt;">60.00</td>
</tr>
<tr class="ltx_tr" id="S4.T6.5.1.16">
<td class="ltx_td ltx_align_center" id="S4.T6.5.1.16.1" style="padding:1.5pt 3.0pt;">Aegis Guard Permissive</td>
<td class="ltx_td ltx_align_center" id="S4.T6.5.1.16.2" style="padding:1.5pt 3.0pt;">7B</td>
<td class="ltx_td ltx_align_center" id="S4.T6.5.1.16.3" style="padding:1.5pt 3.0pt;">73.83</td>
<td class="ltx_td ltx_align_center" id="S4.T6.5.1.16.4" style="padding:1.5pt 3.0pt;">63.55</td>
<td class="ltx_td ltx_align_center" id="S4.T6.5.1.16.5" style="padding:1.5pt 3.0pt;">49.86</td>
<td class="ltx_td ltx_align_center" id="S4.T6.5.1.16.6" style="padding:1.5pt 3.0pt;">62.41</td>
</tr>
<tr class="ltx_tr" id="S4.T6.5.1.17">
<td class="ltx_td ltx_align_center" id="S4.T6.5.1.17.1" style="padding:1.5pt 3.0pt;">ShieldGemma</td>
<td class="ltx_td ltx_align_center" id="S4.T6.5.1.17.2" style="padding:1.5pt 3.0pt;">2B</td>
<td class="ltx_td ltx_align_center" id="S4.T6.5.1.17.3" style="padding:1.5pt 3.0pt;">09.38</td>
<td class="ltx_td ltx_align_center" id="S4.T6.5.1.17.4" style="padding:1.5pt 3.0pt;">27.24</td>
<td class="ltx_td ltx_align_center" id="S4.T6.5.1.17.5" style="padding:1.5pt 3.0pt;">52.57</td>
<td class="ltx_td ltx_align_center" id="S4.T6.5.1.17.6" style="padding:1.5pt 3.0pt;">29.73</td>
</tr>
<tr class="ltx_tr" id="S4.T6.5.1.18">
<td class="ltx_td ltx_align_center" id="S4.T6.5.1.18.1" style="padding:1.5pt 3.0pt;">ShieldGemma</td>
<td class="ltx_td ltx_align_center" id="S4.T6.5.1.18.2" style="padding:1.5pt 3.0pt;">9B</td>
<td class="ltx_td ltx_align_center" id="S4.T6.5.1.18.3" style="padding:1.5pt 3.0pt;">68.77</td>
<td class="ltx_td ltx_align_center" id="S4.T6.5.1.18.4" style="padding:1.5pt 3.0pt;">55.67</td>
<td class="ltx_td ltx_align_center" id="S4.T6.5.1.18.5" style="padding:1.5pt 3.0pt;">52.20</td>
<td class="ltx_td ltx_align_center" id="S4.T6.5.1.18.6" style="padding:1.5pt 3.0pt;">58.88</td>
</tr>
<tr class="ltx_tr" id="S4.T6.5.1.19">
<td class="ltx_td ltx_align_center" id="S4.T6.5.1.19.1" style="padding:1.5pt 3.0pt;">WildGuard</td>
<td class="ltx_td ltx_align_center" id="S4.T6.5.1.19.2" style="padding:1.5pt 3.0pt;">7B</td>
<td class="ltx_td ltx_align_center" id="S4.T6.5.1.19.3" style="padding:1.5pt 3.0pt;">77.99</td>
<td class="ltx_td ltx_align_center" id="S4.T6.5.1.19.4" style="padding:1.5pt 3.0pt;">77.95</td>
<td class="ltx_td ltx_align_center" id="S4.T6.5.1.19.5" style="padding:1.5pt 3.0pt;">89.94</td>
<td class="ltx_td ltx_align_center" id="S4.T6.5.1.19.6" style="padding:1.5pt 3.0pt;">81.96</td>
</tr>
<tr class="ltx_tr" id="S4.T6.5.1.20">
<td class="ltx_td ltx_align_center" id="S4.T6.5.1.20.1" style="padding:1.5pt 3.0pt;">QwQ-preview</td>
<td class="ltx_td ltx_align_center" id="S4.T6.5.1.20.2" style="padding:1.5pt 3.0pt;">32B</td>
<td class="ltx_td ltx_align_center" id="S4.T6.5.1.20.3" style="padding:1.5pt 3.0pt;">54.13</td>
<td class="ltx_td ltx_align_center" id="S4.T6.5.1.20.4" style="padding:1.5pt 3.0pt;">57.73</td>
<td class="ltx_td ltx_align_center" id="S4.T6.5.1.20.5" style="padding:1.5pt 3.0pt;">57.81</td>
<td class="ltx_td ltx_align_center" id="S4.T6.5.1.20.6" style="padding:1.5pt 3.0pt;">56.55</td>
</tr>
<tr class="ltx_tr" id="S4.T6.5.1.21">
<td class="ltx_td ltx_align_center" id="S4.T6.5.1.21.1" style="padding:1.5pt 3.0pt;">GuardReasoner</td>
<td class="ltx_td ltx_align_center" id="S4.T6.5.1.21.2" style="padding:1.5pt 3.0pt;">1B</td>
<td class="ltx_td ltx_align_center" id="S4.T6.5.1.21.3" style="padding:1.5pt 3.0pt;">77.68</td>
<td class="ltx_td ltx_align_center" id="S4.T6.5.1.21.4" style="padding:1.5pt 3.0pt;">79.06</td>
<td class="ltx_td ltx_align_center" id="S4.T6.5.1.21.5" style="padding:1.5pt 3.0pt;">88.51</td>
<td class="ltx_td ltx_align_center" id="S4.T6.5.1.21.6" style="padding:1.5pt 3.0pt;">81.75</td>
</tr>
<tr class="ltx_tr" id="S4.T6.5.1.22">
<td class="ltx_td ltx_align_center" id="S4.T6.5.1.22.1" style="padding:1.5pt 3.0pt;">GuardReasoner</td>
<td class="ltx_td ltx_align_center" id="S4.T6.5.1.22.2" style="padding:1.5pt 3.0pt;">3B</td>
<td class="ltx_td ltx_align_center" id="S4.T6.5.1.22.3" style="padding:1.5pt 3.0pt;"><span class="ltx_text ltx_ulem_uline" id="S4.T6.5.1.22.3.1">80.76</span></td>
<td class="ltx_td ltx_align_center" id="S4.T6.5.1.22.4" style="padding:1.5pt 3.0pt;">80.80</td>
<td class="ltx_td ltx_align_center" id="S4.T6.5.1.22.5" style="padding:1.5pt 3.0pt;">85.95</td>
<td class="ltx_td ltx_align_center" id="S4.T6.5.1.22.6" style="padding:1.5pt 3.0pt;"><span class="ltx_text ltx_ulem_uline" id="S4.T6.5.1.22.6.1">82.50</span></td>
</tr>
<tr class="ltx_tr" id="S4.T6.5.1.23">
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T6.5.1.23.1" style="padding:1.5pt 3.0pt;">GuardReasoner</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T6.5.1.23.2" style="padding:1.5pt 3.0pt;">8B</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T6.5.1.23.3" style="padding:1.5pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T6.5.1.23.3.1">81.09</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T6.5.1.23.4" style="padding:1.5pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T6.5.1.23.4.1">81.22</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T6.5.1.23.5" style="padding:1.5pt 3.0pt;">89.96</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T6.5.1.23.6" style="padding:1.5pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T6.5.1.23.6.1">84.09</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents a comparison of the performance of 20 different models across three key guardrail tasks: prompt harmfulness detection, response harmfulness detection, and refusal detection.  The performance metric used is the F1 score, a measure that balances precision and recall.  The table highlights the top two performing models for each task and overall, providing insights into the relative strengths and weaknesses of various approaches to LLM safety.
> <details>
> <summary>read the caption</summary>
> Table 6: Average F1 score of 20 methods on 3 guardrail tasks. The bold and underlined values denote the best and runner-up.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S4.T7.4.4">
<tr class="ltx_tr" id="S4.T7.4.4.5">
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T7.4.4.5.1" style="padding:1.5pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T7.4.4.5.1.1">Method</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T7.4.4.5.2" style="padding:1.5pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T7.4.4.5.2.1">Used Label</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T7.4.4.5.3" style="padding:1.5pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T7.4.4.5.3.1">Prompt</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T7.4.4.5.4" style="padding:1.5pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T7.4.4.5.4.1">Response</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T7.4.4.5.5" style="padding:1.5pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T7.4.4.5.5.1">Refusal</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T7.4.4.5.6" style="padding:1.5pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T7.4.4.5.6.1">Avg.</span></td>
</tr>
<tr class="ltx_tr" id="S4.T7.4.4.6">
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T7.4.4.6.1" style="padding:1.5pt 3.0pt;">GuardReasoner 8B</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T7.4.4.6.2" style="padding:1.5pt 3.0pt;">Original</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T7.4.4.6.3" style="padding:1.5pt 3.0pt;">81.09</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T7.4.4.6.4" style="padding:1.5pt 3.0pt;">81.22</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T7.4.4.6.5" style="padding:1.5pt 3.0pt;">89.96</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T7.4.4.6.6" style="padding:1.5pt 3.0pt;">84.09</td>
</tr>
<tr class="ltx_tr" id="S4.T7.4.4.7">
<td class="ltx_td ltx_align_center" id="S4.T7.4.4.7.1" style="padding:1.5pt 3.0pt;">GuardReasoner 8B</td>
<td class="ltx_td ltx_align_center" id="S4.T7.4.4.7.2" style="padding:1.5pt 3.0pt;">Corrected</td>
<td class="ltx_td ltx_align_center" id="S4.T7.4.4.7.3" style="padding:1.5pt 3.0pt;">89.92</td>
<td class="ltx_td ltx_align_center" id="S4.T7.4.4.7.4" style="padding:1.5pt 3.0pt;">86.98</td>
<td class="ltx_td ltx_align_center" id="S4.T7.4.4.7.5" style="padding:1.5pt 3.0pt;">96.05</td>
<td class="ltx_td ltx_align_center" id="S4.T7.4.4.7.6" style="padding:1.5pt 3.0pt;">90.98</td>
</tr>
<tr class="ltx_tr" id="S4.T7.4.4.4">
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T7.4.4.4.5" style="padding:1.5pt 3.0pt;">Improvement</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T7.4.4.4.6" style="padding:1.5pt 3.0pt;">-</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T7.1.1.1.1" style="padding:1.5pt 3.0pt;">10.87% <math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T7.1.1.1.1.m1.1"><semantics id="S4.T7.1.1.1.1.m1.1a"><mo id="S4.T7.1.1.1.1.m1.1.1" stretchy="false" xref="S4.T7.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T7.1.1.1.1.m1.1b"><ci id="S4.T7.1.1.1.1.m1.1.1.cmml" xref="S4.T7.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T7.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T7.1.1.1.1.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T7.2.2.2.2" style="padding:1.5pt 3.0pt;">7.10% <math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T7.2.2.2.2.m1.1"><semantics id="S4.T7.2.2.2.2.m1.1a"><mo id="S4.T7.2.2.2.2.m1.1.1" stretchy="false" xref="S4.T7.2.2.2.2.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T7.2.2.2.2.m1.1b"><ci id="S4.T7.2.2.2.2.m1.1.1.cmml" xref="S4.T7.2.2.2.2.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T7.2.2.2.2.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T7.2.2.2.2.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T7.3.3.3.3" style="padding:1.5pt 3.0pt;">6.78% <math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T7.3.3.3.3.m1.1"><semantics id="S4.T7.3.3.3.3.m1.1a"><mo id="S4.T7.3.3.3.3.m1.1.1" stretchy="false" xref="S4.T7.3.3.3.3.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T7.3.3.3.3.m1.1b"><ci id="S4.T7.3.3.3.3.m1.1.1.cmml" xref="S4.T7.3.3.3.3.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T7.3.3.3.3.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T7.3.3.3.3.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T7.4.4.4.4" style="padding:1.5pt 3.0pt;">8.20% <math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T7.4.4.4.4.m1.1"><semantics id="S4.T7.4.4.4.4.m1.1a"><mo id="S4.T7.4.4.4.4.m1.1.1" stretchy="false" xref="S4.T7.4.4.4.4.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T7.4.4.4.4.m1.1b"><ci id="S4.T7.4.4.4.4.m1.1.1.cmml" xref="S4.T7.4.4.4.4.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T7.4.4.4.4.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T7.4.4.4.4.m1.1d">↑</annotation></semantics></math>
</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the performance improvement of the GuardReasoner 8B model after correcting mislabeled data points. It shows the original F1 scores for prompt harmfulness, response harmfulness, and refusal detection tasks, along with the improved scores after correction.  The improvement percentage is also displayed for each task and overall.
> <details>
> <summary>read the caption</summary>
> Table 7: Improvement of GuardReasoner 8B after label correction.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="A1.T8.5.5">
<tr class="ltx_tr" id="A1.T8.5.5.6">
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T8.5.5.6.1" style="padding:1.5pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="A1.T8.5.5.6.1.1">Guardrail Task</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T8.5.5.6.2" style="padding:1.5pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="A1.T8.5.5.6.2.1">Benchmark</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T8.5.5.6.3" style="padding:1.5pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="A1.T8.5.5.6.3.1"># Sample</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T8.5.5.6.4" style="padding:1.5pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="A1.T8.5.5.6.4.1">Include Adversarial</span></td>
</tr>
<tr class="ltx_tr" id="A1.T8.1.1.1">
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T8.1.1.1.2" rowspan="6" style="padding:1.5pt 3.0pt;"><span class="ltx_text" id="A1.T8.1.1.1.2.1"><span class="ltx_text" id="A1.T8.1.1.1.2.1.1"></span> <span class="ltx_text" id="A1.T8.1.1.1.2.1.2">
<span class="ltx_tabular ltx_align_middle" id="A1.T8.1.1.1.2.1.2.1">
<span class="ltx_tr" id="A1.T8.1.1.1.2.1.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A1.T8.1.1.1.2.1.2.1.1.1" style="padding:1.5pt 3.0pt;">Prompt Harmfulness</span></span>
<span class="ltx_tr" id="A1.T8.1.1.1.2.1.2.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A1.T8.1.1.1.2.1.2.1.2.1" style="padding:1.5pt 3.0pt;">Detection</span></span>
</span></span> <span class="ltx_text" id="A1.T8.1.1.1.2.1.3"></span></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T8.1.1.1.3" style="padding:1.5pt 3.0pt;">ToxicChat</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T8.1.1.1.4" style="padding:1.5pt 3.0pt;">2,853</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T8.1.1.1.1" style="padding:1.5pt 3.0pt;"><math alttext="\checkmark" class="ltx_Math" display="inline" id="A1.T8.1.1.1.1.m1.1"><semantics id="A1.T8.1.1.1.1.m1.1a"><mi id="A1.T8.1.1.1.1.m1.1.1" mathvariant="normal" xref="A1.T8.1.1.1.1.m1.1.1.cmml">✓</mi><annotation-xml encoding="MathML-Content" id="A1.T8.1.1.1.1.m1.1b"><ci id="A1.T8.1.1.1.1.m1.1.1.cmml" xref="A1.T8.1.1.1.1.m1.1.1">✓</ci></annotation-xml><annotation encoding="application/x-tex" id="A1.T8.1.1.1.1.m1.1c">\checkmark</annotation><annotation encoding="application/x-llamapun" id="A1.T8.1.1.1.1.m1.1d">✓</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="A1.T8.5.5.7">
<td class="ltx_td ltx_align_center" id="A1.T8.5.5.7.1" style="padding:1.5pt 3.0pt;">OpenAIModeration</td>
<td class="ltx_td ltx_align_center" id="A1.T8.5.5.7.2" style="padding:1.5pt 3.0pt;">1,680</td>
<td class="ltx_td ltx_align_center" id="A1.T8.5.5.7.3" style="padding:1.5pt 3.0pt;">✗</td>
</tr>
<tr class="ltx_tr" id="A1.T8.5.5.8">
<td class="ltx_td ltx_align_center" id="A1.T8.5.5.8.1" style="padding:1.5pt 3.0pt;">AegisSafetyTest</td>
<td class="ltx_td ltx_align_center" id="A1.T8.5.5.8.2" style="padding:1.5pt 3.0pt;">359</td>
<td class="ltx_td ltx_align_center" id="A1.T8.5.5.8.3" style="padding:1.5pt 3.0pt;">✗</td>
</tr>
<tr class="ltx_tr" id="A1.T8.5.5.9">
<td class="ltx_td ltx_align_center" id="A1.T8.5.5.9.1" style="padding:1.5pt 3.0pt;">SimpleSafetyTests</td>
<td class="ltx_td ltx_align_center" id="A1.T8.5.5.9.2" style="padding:1.5pt 3.0pt;">100</td>
<td class="ltx_td ltx_align_center" id="A1.T8.5.5.9.3" style="padding:1.5pt 3.0pt;">✗</td>
</tr>
<tr class="ltx_tr" id="A1.T8.5.5.10">
<td class="ltx_td ltx_align_center" id="A1.T8.5.5.10.1" style="padding:1.5pt 3.0pt;">HarmBenchPrompt</td>
<td class="ltx_td ltx_align_center" id="A1.T8.5.5.10.2" style="padding:1.5pt 3.0pt;">239</td>
<td class="ltx_td ltx_align_center" id="A1.T8.5.5.10.3" style="padding:1.5pt 3.0pt;">✗</td>
</tr>
<tr class="ltx_tr" id="A1.T8.2.2.2">
<td class="ltx_td ltx_align_center" id="A1.T8.2.2.2.2" style="padding:1.5pt 3.0pt;">WildGuardTest</td>
<td class="ltx_td ltx_align_center" id="A1.T8.2.2.2.3" style="padding:1.5pt 3.0pt;">1,756</td>
<td class="ltx_td ltx_align_center" id="A1.T8.2.2.2.1" style="padding:1.5pt 3.0pt;"><math alttext="\checkmark" class="ltx_Math" display="inline" id="A1.T8.2.2.2.1.m1.1"><semantics id="A1.T8.2.2.2.1.m1.1a"><mi id="A1.T8.2.2.2.1.m1.1.1" mathvariant="normal" xref="A1.T8.2.2.2.1.m1.1.1.cmml">✓</mi><annotation-xml encoding="MathML-Content" id="A1.T8.2.2.2.1.m1.1b"><ci id="A1.T8.2.2.2.1.m1.1.1.cmml" xref="A1.T8.2.2.2.1.m1.1.1">✓</ci></annotation-xml><annotation encoding="application/x-tex" id="A1.T8.2.2.2.1.m1.1c">\checkmark</annotation><annotation encoding="application/x-llamapun" id="A1.T8.2.2.2.1.m1.1d">✓</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="A1.T8.3.3.3">
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T8.3.3.3.2" rowspan="5" style="padding:1.5pt 3.0pt;"><span class="ltx_text" id="A1.T8.3.3.3.2.1"><span class="ltx_text" id="A1.T8.3.3.3.2.1.1"></span> <span class="ltx_text" id="A1.T8.3.3.3.2.1.2">
<span class="ltx_tabular ltx_align_middle" id="A1.T8.3.3.3.2.1.2.1">
<span class="ltx_tr" id="A1.T8.3.3.3.2.1.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A1.T8.3.3.3.2.1.2.1.1.1" style="padding:1.5pt 3.0pt;">Response Harmfulness</span></span>
<span class="ltx_tr" id="A1.T8.3.3.3.2.1.2.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A1.T8.3.3.3.2.1.2.1.2.1" style="padding:1.5pt 3.0pt;">Detection</span></span>
</span></span> <span class="ltx_text" id="A1.T8.3.3.3.2.1.3"></span></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T8.3.3.3.3" style="padding:1.5pt 3.0pt;">HarmBenchResponse</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T8.3.3.3.4" style="padding:1.5pt 3.0pt;">602</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T8.3.3.3.1" style="padding:1.5pt 3.0pt;"><math alttext="\checkmark" class="ltx_Math" display="inline" id="A1.T8.3.3.3.1.m1.1"><semantics id="A1.T8.3.3.3.1.m1.1a"><mi id="A1.T8.3.3.3.1.m1.1.1" mathvariant="normal" xref="A1.T8.3.3.3.1.m1.1.1.cmml">✓</mi><annotation-xml encoding="MathML-Content" id="A1.T8.3.3.3.1.m1.1b"><ci id="A1.T8.3.3.3.1.m1.1.1.cmml" xref="A1.T8.3.3.3.1.m1.1.1">✓</ci></annotation-xml><annotation encoding="application/x-tex" id="A1.T8.3.3.3.1.m1.1c">\checkmark</annotation><annotation encoding="application/x-llamapun" id="A1.T8.3.3.3.1.m1.1d">✓</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="A1.T8.5.5.11">
<td class="ltx_td ltx_align_center" id="A1.T8.5.5.11.1" style="padding:1.5pt 3.0pt;">SafeRLHF</td>
<td class="ltx_td ltx_align_center" id="A1.T8.5.5.11.2" style="padding:1.5pt 3.0pt;">2,000</td>
<td class="ltx_td ltx_align_center" id="A1.T8.5.5.11.3" style="padding:1.5pt 3.0pt;">✗</td>
</tr>
<tr class="ltx_tr" id="A1.T8.5.5.12">
<td class="ltx_td ltx_align_center" id="A1.T8.5.5.12.1" style="padding:1.5pt 3.0pt;">BeaverTails</td>
<td class="ltx_td ltx_align_center" id="A1.T8.5.5.12.2" style="padding:1.5pt 3.0pt;">3,021</td>
<td class="ltx_td ltx_align_center" id="A1.T8.5.5.12.3" style="padding:1.5pt 3.0pt;">✗</td>
</tr>
<tr class="ltx_tr" id="A1.T8.5.5.13">
<td class="ltx_td ltx_align_center" id="A1.T8.5.5.13.1" style="padding:1.5pt 3.0pt;">XSTestReponseHarmful</td>
<td class="ltx_td ltx_align_center" id="A1.T8.5.5.13.2" style="padding:1.5pt 3.0pt;">446</td>
<td class="ltx_td ltx_align_center" id="A1.T8.5.5.13.3" style="padding:1.5pt 3.0pt;">✗</td>
</tr>
<tr class="ltx_tr" id="A1.T8.4.4.4">
<td class="ltx_td ltx_align_center" id="A1.T8.4.4.4.2" style="padding:1.5pt 3.0pt;">WildGuardTest</td>
<td class="ltx_td ltx_align_center" id="A1.T8.4.4.4.3" style="padding:1.5pt 3.0pt;">1,768</td>
<td class="ltx_td ltx_align_center" id="A1.T8.4.4.4.1" style="padding:1.5pt 3.0pt;"><math alttext="\checkmark" class="ltx_Math" display="inline" id="A1.T8.4.4.4.1.m1.1"><semantics id="A1.T8.4.4.4.1.m1.1a"><mi id="A1.T8.4.4.4.1.m1.1.1" mathvariant="normal" xref="A1.T8.4.4.4.1.m1.1.1.cmml">✓</mi><annotation-xml encoding="MathML-Content" id="A1.T8.4.4.4.1.m1.1b"><ci id="A1.T8.4.4.4.1.m1.1.1.cmml" xref="A1.T8.4.4.4.1.m1.1.1">✓</ci></annotation-xml><annotation encoding="application/x-tex" id="A1.T8.4.4.4.1.m1.1c">\checkmark</annotation><annotation encoding="application/x-llamapun" id="A1.T8.4.4.4.1.m1.1d">✓</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="A1.T8.5.5.14">
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_t" id="A1.T8.5.5.14.1" rowspan="2" style="padding:1.5pt 3.0pt;"><span class="ltx_text" id="A1.T8.5.5.14.1.1">Refusal Detection</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T8.5.5.14.2" style="padding:1.5pt 3.0pt;">XSTestResponseRefusal</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T8.5.5.14.3" style="padding:1.5pt 3.0pt;">499</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T8.5.5.14.4" style="padding:1.5pt 3.0pt;">✗</td>
</tr>
<tr class="ltx_tr" id="A1.T8.5.5.5">
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T8.5.5.5.2" style="padding:1.5pt 3.0pt;">WildGuardTest</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T8.5.5.5.3" style="padding:1.5pt 3.0pt;">1,777</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T8.5.5.5.1" style="padding:1.5pt 3.0pt;"><math alttext="\checkmark" class="ltx_Math" display="inline" id="A1.T8.5.5.5.1.m1.1"><semantics id="A1.T8.5.5.5.1.m1.1a"><mi id="A1.T8.5.5.5.1.m1.1.1" mathvariant="normal" xref="A1.T8.5.5.5.1.m1.1.1.cmml">✓</mi><annotation-xml encoding="MathML-Content" id="A1.T8.5.5.5.1.m1.1b"><ci id="A1.T8.5.5.5.1.m1.1.1.cmml" xref="A1.T8.5.5.5.1.m1.1.1">✓</ci></annotation-xml><annotation encoding="application/x-tex" id="A1.T8.5.5.5.1.m1.1c">\checkmark</annotation><annotation encoding="application/x-llamapun" id="A1.T8.5.5.5.1.m1.1d">✓</annotation></semantics></math></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the statistical properties of thirteen benchmark datasets used to evaluate three distinct guardrail tasks: prompt harmfulness detection, response harmfulness detection, and refusal detection. For each benchmark, the table shows the number of samples and whether the dataset includes adversarial attacks, offering a comprehensive overview of the data used in the experiments.
> <details>
> <summary>read the caption</summary>
> Table 8: Statistics of 13 benchmarks on 3 guardrail tasks.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="A1.T9.1.1">
<tr class="ltx_tr" id="A1.T9.1.1.1">
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T9.1.1.1.1" style="padding:1pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="A1.T9.1.1.1.1.1">Seed Data</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T9.1.1.1.2" style="padding:1pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="A1.T9.1.1.1.2.1">path</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T9.1.1.1.3" style="padding:1pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="A1.T9.1.1.1.3.1">name</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T9.1.1.1.4" style="padding:1pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="A1.T9.1.1.1.4.1">split</span></td>
</tr>
<tr class="ltx_tr" id="A1.T9.1.1.2">
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T9.1.1.2.1" style="padding:1pt 3.0pt;">WildGuardTrain</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T9.1.1.2.2" style="padding:1pt 3.0pt;">allenai/wildguardmix</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T9.1.1.2.3" style="padding:1pt 3.0pt;">wildguardtrain</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T9.1.1.2.4" style="padding:1pt 3.0pt;">train</td>
</tr>
<tr class="ltx_tr" id="A1.T9.1.1.3">
<td class="ltx_td ltx_align_center" id="A1.T9.1.1.3.1" style="padding:1pt 3.0pt;">AegisTrain</td>
<td class="ltx_td ltx_align_center" id="A1.T9.1.1.3.2" style="padding:1pt 3.0pt;">nvidia/Aegis-AI-Content-Safety-Dataset-1.0</td>
<td class="ltx_td ltx_align_center" id="A1.T9.1.1.3.3" style="padding:1pt 3.0pt;">-</td>
<td class="ltx_td ltx_align_center" id="A1.T9.1.1.3.4" style="padding:1pt 3.0pt;">train</td>
</tr>
<tr class="ltx_tr" id="A1.T9.1.1.4">
<td class="ltx_td ltx_align_center" id="A1.T9.1.1.4.1" style="padding:1pt 3.0pt;">BeaverTailsTrain</td>
<td class="ltx_td ltx_align_center" id="A1.T9.1.1.4.2" style="padding:1pt 3.0pt;">PKU-Alignment/BeaverTails</td>
<td class="ltx_td ltx_align_center" id="A1.T9.1.1.4.3" style="padding:1pt 3.0pt;">-</td>
<td class="ltx_td ltx_align_center" id="A1.T9.1.1.4.4" style="padding:1pt 3.0pt;">30k_train</td>
</tr>
<tr class="ltx_tr" id="A1.T9.1.1.5">
<td class="ltx_td ltx_align_center" id="A1.T9.1.1.5.1" style="padding:1pt 3.0pt;">ToxicChatTrain</td>
<td class="ltx_td ltx_align_center" id="A1.T9.1.1.5.2" style="padding:1pt 3.0pt;">lmsys/toxic-chat</td>
<td class="ltx_td ltx_align_center" id="A1.T9.1.1.5.3" style="padding:1pt 3.0pt;">toxicchat0124</td>
<td class="ltx_td ltx_align_center" id="A1.T9.1.1.5.4" style="padding:1pt 3.0pt;">train</td>
</tr>
<tr class="ltx_tr" id="A1.T9.1.1.6">
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T9.1.1.6.1" style="padding:1pt 3.0pt;">SafeRLHFTrain</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T9.1.1.6.2" style="padding:1pt 3.0pt;">PKU-Alignment/PKU-SafeRLHF</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T9.1.1.6.3" style="padding:1pt 3.0pt;">alpaca2-7b</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T9.1.1.6.4" style="padding:1pt 3.0pt;">train</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table lists the URLs for four datasets used as seed data in the training of GuardReasoner.  Each row shows the dataset name, its location on Hugging Face, and the split of the data (train).  These datasets were used to synthesize reasoning data before training the main GuardReasoner model.
> <details>
> <summary>read the caption</summary>
> Table 9: URL of seed training data on Hugging Face.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="A1.T10.5.1">
<tr class="ltx_tr" id="A1.T10.5.1.1">
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T10.5.1.1.1" style="padding:1pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="A1.T10.5.1.1.1.1">Method</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T10.5.1.1.2" style="padding:1pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="A1.T10.5.1.1.2.1">Model Size</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T10.5.1.1.3" style="padding:1pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="A1.T10.5.1.1.3.1">XSTestResponse</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T10.5.1.1.4" style="padding:1pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="A1.T10.5.1.1.4.1">WildGuardTest</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T10.5.1.1.5" style="padding:1pt 3.0pt;"><span class="ltx_text" id="A1.T10.5.1.1.5.1"><span class="ltx_text" id="A1.T10.5.1.1.5.1.1"></span> <span class="ltx_text" id="A1.T10.5.1.1.5.1.2">
<span class="ltx_tabular ltx_align_middle" id="A1.T10.5.1.1.5.1.2.1">
<span class="ltx_tr" id="A1.T10.5.1.1.5.1.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A1.T10.5.1.1.5.1.2.1.1.1" style="padding:1pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="A1.T10.5.1.1.5.1.2.1.1.1.1">Weighted</span></span></span>
<span class="ltx_tr" id="A1.T10.5.1.1.5.1.2.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A1.T10.5.1.1.5.1.2.1.2.1" style="padding:1pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="A1.T10.5.1.1.5.1.2.1.2.1.1">Average</span></span></span>
</span></span> <span class="ltx_text" id="A1.T10.5.1.1.5.1.3"></span></span></td>
</tr>
<tr class="ltx_tr" id="A1.T10.5.1.2">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="5" id="A1.T10.5.1.2.1" style="padding:1pt 3.0pt;">Closed-Source Guard API</td>
</tr>
<tr class="ltx_tr" id="A1.T10.5.1.3">
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T10.5.1.3.1" style="padding:1pt 3.0pt;">OpenAI Moderation</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T10.5.1.3.2" style="padding:1pt 3.0pt;">Unknown</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T10.5.1.3.3" style="padding:1pt 3.0pt;">46.60</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T10.5.1.3.4" style="padding:1pt 3.0pt;">49.80</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T10.5.1.3.5" style="padding:1pt 3.0pt;">49.10</td>
</tr>
<tr class="ltx_tr" id="A1.T10.5.1.4">
<td class="ltx_td ltx_align_center" id="A1.T10.5.1.4.1" style="padding:1pt 3.0pt;">GPT-4o</td>
<td class="ltx_td ltx_align_center" id="A1.T10.5.1.4.2" style="padding:1pt 3.0pt;">Unknown</td>
<td class="ltx_td ltx_align_center" id="A1.T10.5.1.4.3" style="padding:1pt 3.0pt;">80.45</td>
<td class="ltx_td ltx_align_center" id="A1.T10.5.1.4.4" style="padding:1pt 3.0pt;">82.10</td>
<td class="ltx_td ltx_align_center" id="A1.T10.5.1.4.5" style="padding:1pt 3.0pt;">81.74</td>
</tr>
<tr class="ltx_tr" id="A1.T10.5.1.5">
<td class="ltx_td ltx_align_center" id="A1.T10.5.1.5.1" style="padding:1pt 3.0pt;">GPT-4o+CoT</td>
<td class="ltx_td ltx_align_center" id="A1.T10.5.1.5.2" style="padding:1pt 3.0pt;">Unknown</td>
<td class="ltx_td ltx_align_center" id="A1.T10.5.1.5.3" style="padding:1pt 3.0pt;">83.76</td>
<td class="ltx_td ltx_align_center" id="A1.T10.5.1.5.4" style="padding:1pt 3.0pt;">83.31</td>
<td class="ltx_td ltx_align_center" id="A1.T10.5.1.5.5" style="padding:1pt 3.0pt;">83.41</td>
</tr>
<tr class="ltx_tr" id="A1.T10.5.1.6">
<td class="ltx_td ltx_align_center" id="A1.T10.5.1.6.1" style="padding:1pt 3.0pt;">GPT-4</td>
<td class="ltx_td ltx_align_center" id="A1.T10.5.1.6.2" style="padding:1pt 3.0pt;">Unknown</td>
<td class="ltx_td ltx_align_center" id="A1.T10.5.1.6.3" style="padding:1pt 3.0pt;">91.16</td>
<td class="ltx_td ltx_align_center" id="A1.T10.5.1.6.4" style="padding:1pt 3.0pt;">90.02</td>
<td class="ltx_td ltx_align_center" id="A1.T10.5.1.6.5" style="padding:1pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="A1.T10.5.1.6.5.1">90.27</span></td>
</tr>
<tr class="ltx_tr" id="A1.T10.5.1.7">
<td class="ltx_td ltx_align_center" id="A1.T10.5.1.7.1" style="padding:1pt 3.0pt;">GPT-4+CoT</td>
<td class="ltx_td ltx_align_center" id="A1.T10.5.1.7.2" style="padding:1pt 3.0pt;">Unknown</td>
<td class="ltx_td ltx_align_center" id="A1.T10.5.1.7.3" style="padding:1pt 3.0pt;">92.59</td>
<td class="ltx_td ltx_align_center" id="A1.T10.5.1.7.4" style="padding:1pt 3.0pt;">89.60</td>
<td class="ltx_td ltx_align_center" id="A1.T10.5.1.7.5" style="padding:1pt 3.0pt;"><span class="ltx_text ltx_ulem_uline" id="A1.T10.5.1.7.5.1">90.26</span></td>
</tr>
<tr class="ltx_tr" id="A1.T10.5.1.8">
<td class="ltx_td ltx_align_center" id="A1.T10.5.1.8.1" style="padding:1pt 3.0pt;">o1-preview</td>
<td class="ltx_td ltx_align_center" id="A1.T10.5.1.8.2" style="padding:1pt 3.0pt;">Unknown</td>
<td class="ltx_td ltx_align_center" id="A1.T10.5.1.8.3" style="padding:1pt 3.0pt;">89.87</td>
<td class="ltx_td ltx_align_center" id="A1.T10.5.1.8.4" style="padding:1pt 3.0pt;">83.91</td>
<td class="ltx_td ltx_align_center" id="A1.T10.5.1.8.5" style="padding:1pt 3.0pt;">85.22</td>
</tr>
<tr class="ltx_tr" id="A1.T10.5.1.9">
<td class="ltx_td ltx_align_center" id="A1.T10.5.1.9.1" style="padding:1pt 3.0pt;">Claude 3.5 Sonnet</td>
<td class="ltx_td ltx_align_center" id="A1.T10.5.1.9.2" style="padding:1pt 3.0pt;">Unknown</td>
<td class="ltx_td ltx_align_center" id="A1.T10.5.1.9.3" style="padding:1pt 3.0pt;">73.57</td>
<td class="ltx_td ltx_align_center" id="A1.T10.5.1.9.4" style="padding:1pt 3.0pt;">62.89</td>
<td class="ltx_td ltx_align_center" id="A1.T10.5.1.9.5" style="padding:1pt 3.0pt;">65.23</td>
</tr>
<tr class="ltx_tr" id="A1.T10.5.1.10">
<td class="ltx_td ltx_align_center" id="A1.T10.5.1.10.1" style="padding:1pt 3.0pt;">Gemini 1.5 Pro</td>
<td class="ltx_td ltx_align_center" id="A1.T10.5.1.10.2" style="padding:1pt 3.0pt;">Unknown</td>
<td class="ltx_td ltx_align_center" id="A1.T10.5.1.10.3" style="padding:1pt 3.0pt;">92.15</td>
<td class="ltx_td ltx_align_center" id="A1.T10.5.1.10.4" style="padding:1pt 3.0pt;">89.56</td>
<td class="ltx_td ltx_align_center" id="A1.T10.5.1.10.5" style="padding:1pt 3.0pt;">90.13</td>
</tr>
<tr class="ltx_tr" id="A1.T10.5.1.11">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="5" id="A1.T10.5.1.11.1" style="padding:1pt 3.0pt;">Open-Source Guard Model</td>
</tr>
<tr class="ltx_tr" id="A1.T10.5.1.12">
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T10.5.1.12.1" style="padding:1pt 3.0pt;">LLaMA Guard</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T10.5.1.12.2" style="padding:1pt 3.0pt;">7B</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T10.5.1.12.3" style="padding:1pt 3.0pt;">82.00</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T10.5.1.12.4" style="padding:1pt 3.0pt;">51.40</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T10.5.1.12.5" style="padding:1pt 3.0pt;">58.11</td>
</tr>
<tr class="ltx_tr" id="A1.T10.5.1.13">
<td class="ltx_td ltx_align_center" id="A1.T10.5.1.13.1" style="padding:1pt 3.0pt;">LLaMA Guard 2</td>
<td class="ltx_td ltx_align_center" id="A1.T10.5.1.13.2" style="padding:1pt 3.0pt;">8B</td>
<td class="ltx_td ltx_align_center" id="A1.T10.5.1.13.3" style="padding:1pt 3.0pt;">90.80</td>
<td class="ltx_td ltx_align_center" id="A1.T10.5.1.13.4" style="padding:1pt 3.0pt;">53.80</td>
<td class="ltx_td ltx_align_center" id="A1.T10.5.1.13.5" style="padding:1pt 3.0pt;">61.91</td>
</tr>
<tr class="ltx_tr" id="A1.T10.5.1.14">
<td class="ltx_td ltx_align_center" id="A1.T10.5.1.14.1" style="padding:1pt 3.0pt;">LLaMA Guard 3</td>
<td class="ltx_td ltx_align_center" id="A1.T10.5.1.14.2" style="padding:1pt 3.0pt;">8B</td>
<td class="ltx_td ltx_align_center" id="A1.T10.5.1.14.3" style="padding:1pt 3.0pt;">63.55</td>
<td class="ltx_td ltx_align_center" id="A1.T10.5.1.14.4" style="padding:1pt 3.0pt;">54.29</td>
<td class="ltx_td ltx_align_center" id="A1.T10.5.1.14.5" style="padding:1pt 3.0pt;">56.32</td>
</tr>
<tr class="ltx_tr" id="A1.T10.5.1.15">
<td class="ltx_td ltx_align_center" id="A1.T10.5.1.15.1" style="padding:1pt 3.0pt;">Aegis Guard Defensive</td>
<td class="ltx_td ltx_align_center" id="A1.T10.5.1.15.2" style="padding:1pt 3.0pt;">7B</td>
<td class="ltx_td ltx_align_center" id="A1.T10.5.1.15.3" style="padding:1pt 3.0pt;">52.80</td>
<td class="ltx_td ltx_align_center" id="A1.T10.5.1.15.4" style="padding:1pt 3.0pt;">41.80</td>
<td class="ltx_td ltx_align_center" id="A1.T10.5.1.15.5" style="padding:1pt 3.0pt;">44.21</td>
</tr>
<tr class="ltx_tr" id="A1.T10.5.1.16">
<td class="ltx_td ltx_align_center" id="A1.T10.5.1.16.1" style="padding:1pt 3.0pt;">Aegis Guard Permissive</td>
<td class="ltx_td ltx_align_center" id="A1.T10.5.1.16.2" style="padding:1pt 3.0pt;">7B</td>
<td class="ltx_td ltx_align_center" id="A1.T10.5.1.16.3" style="padding:1pt 3.0pt;">60.40</td>
<td class="ltx_td ltx_align_center" id="A1.T10.5.1.16.4" style="padding:1pt 3.0pt;">46.90</td>
<td class="ltx_td ltx_align_center" id="A1.T10.5.1.16.5" style="padding:1pt 3.0pt;">49.86</td>
</tr>
<tr class="ltx_tr" id="A1.T10.5.1.17">
<td class="ltx_td ltx_align_center" id="A1.T10.5.1.17.1" style="padding:1pt 3.0pt;">ShieldGemma</td>
<td class="ltx_td ltx_align_center" id="A1.T10.5.1.17.2" style="padding:1pt 3.0pt;">2B</td>
<td class="ltx_td ltx_align_center" id="A1.T10.5.1.17.3" style="padding:1pt 3.0pt;">61.06</td>
<td class="ltx_td ltx_align_center" id="A1.T10.5.1.17.4" style="padding:1pt 3.0pt;">50.18</td>
<td class="ltx_td ltx_align_center" id="A1.T10.5.1.17.5" style="padding:1pt 3.0pt;">52.57</td>
</tr>
<tr class="ltx_tr" id="A1.T10.5.1.18">
<td class="ltx_td ltx_align_center" id="A1.T10.5.1.18.1" style="padding:1pt 3.0pt;">ShieldGemma</td>
<td class="ltx_td ltx_align_center" id="A1.T10.5.1.18.2" style="padding:1pt 3.0pt;">9B</td>
<td class="ltx_td ltx_align_center" id="A1.T10.5.1.18.3" style="padding:1pt 3.0pt;">58.62</td>
<td class="ltx_td ltx_align_center" id="A1.T10.5.1.18.4" style="padding:1pt 3.0pt;">50.40</td>
<td class="ltx_td ltx_align_center" id="A1.T10.5.1.18.5" style="padding:1pt 3.0pt;">52.20</td>
</tr>
<tr class="ltx_tr" id="A1.T10.5.1.19">
<td class="ltx_td ltx_align_center" id="A1.T10.5.1.19.1" style="padding:1pt 3.0pt;">WildGuard</td>
<td class="ltx_td ltx_align_center" id="A1.T10.5.1.19.2" style="padding:1pt 3.0pt;">7B</td>
<td class="ltx_td ltx_align_center" id="A1.T10.5.1.19.3" style="padding:1pt 3.0pt;">94.70</td>
<td class="ltx_td ltx_align_center" id="A1.T10.5.1.19.4" style="padding:1pt 3.0pt;">88.60</td>
<td class="ltx_td ltx_align_center" id="A1.T10.5.1.19.5" style="padding:1pt 3.0pt;">89.94</td>
</tr>
<tr class="ltx_tr" id="A1.T10.5.1.20">
<td class="ltx_td ltx_align_center" id="A1.T10.5.1.20.1" style="padding:1pt 3.0pt;">QwQ-preview</td>
<td class="ltx_td ltx_align_center" id="A1.T10.5.1.20.2" style="padding:1pt 3.0pt;">32B</td>
<td class="ltx_td ltx_align_center" id="A1.T10.5.1.20.3" style="padding:1pt 3.0pt;">62.63</td>
<td class="ltx_td ltx_align_center" id="A1.T10.5.1.20.4" style="padding:1pt 3.0pt;">56.46</td>
<td class="ltx_td ltx_align_center" id="A1.T10.5.1.20.5" style="padding:1pt 3.0pt;">57.81</td>
</tr>
<tr class="ltx_tr" id="A1.T10.5.1.21">
<td class="ltx_td ltx_align_center" id="A1.T10.5.1.21.1" style="padding:1pt 3.0pt;">GuardReasoner</td>
<td class="ltx_td ltx_align_center" id="A1.T10.5.1.21.2" style="padding:1pt 3.0pt;">1B</td>
<td class="ltx_td ltx_align_center" id="A1.T10.5.1.21.3" style="padding:1pt 3.0pt;">91.34</td>
<td class="ltx_td ltx_align_center" id="A1.T10.5.1.21.4" style="padding:1pt 3.0pt;">87.71</td>
<td class="ltx_td ltx_align_center" id="A1.T10.5.1.21.5" style="padding:1pt 3.0pt;">88.51</td>
</tr>
<tr class="ltx_tr" id="A1.T10.5.1.22">
<td class="ltx_td ltx_align_center" id="A1.T10.5.1.22.1" style="padding:1pt 3.0pt;">GuardReasoner</td>
<td class="ltx_td ltx_align_center" id="A1.T10.5.1.22.2" style="padding:1pt 3.0pt;">3B</td>
<td class="ltx_td ltx_align_center" id="A1.T10.5.1.22.3" style="padding:1pt 3.0pt;">80.31</td>
<td class="ltx_td ltx_align_center" id="A1.T10.5.1.22.4" style="padding:1pt 3.0pt;">87.54</td>
<td class="ltx_td ltx_align_center" id="A1.T10.5.1.22.5" style="padding:1pt 3.0pt;">85.95</td>
</tr>
<tr class="ltx_tr" id="A1.T10.5.1.23">
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T10.5.1.23.1" style="padding:1pt 3.0pt;">GuardReasoner</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T10.5.1.23.2" style="padding:1pt 3.0pt;">8B</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T10.5.1.23.3" style="padding:1pt 3.0pt;">93.68</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T10.5.1.23.4" style="padding:1pt 3.0pt;">88.91</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T10.5.1.23.5" style="padding:1pt 3.0pt;">89.96</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents a comparison of various models' performance on a refusal detection task, using two benchmarks: XSTestResponse and WildGuardTest.  The models include both closed-source guard APIs and open-source guard models. The performance metric is F1 score, a common measure of accuracy that considers both precision and recall, reflecting the balance between correctly identifying refusals and not falsely identifying non-refusals as refusals. The best and second-best performing models for each benchmark are highlighted.
> <details>
> <summary>read the caption</summary>
> Table 10: Comparison experiment on 2 benchmarks of refusal detection task. The bold and underlined values denote the best and runner-up. The performance is evaluated via F1 score (%).
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="A1.T11.1.1">
<tr class="ltx_tr" id="A1.T11.1.1.1">
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T11.1.1.1.1" style="padding:0.75pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="A1.T11.1.1.1.1.1">Method</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T11.1.1.1.2" style="padding:0.75pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="A1.T11.1.1.1.2.1">Used Label</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T11.1.1.1.3" style="padding:0.75pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="A1.T11.1.1.1.3.1">ToxicChat</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T11.1.1.1.4" style="padding:0.75pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="A1.T11.1.1.1.4.1">HarmBench</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T11.1.1.1.5" style="padding:0.75pt 3.0pt;"><span class="ltx_text" id="A1.T11.1.1.1.5.1"><span class="ltx_text" id="A1.T11.1.1.1.5.1.1"></span> <span class="ltx_text" id="A1.T11.1.1.1.5.1.2">
<span class="ltx_tabular ltx_align_middle" id="A1.T11.1.1.1.5.1.2.1">
<span class="ltx_tr" id="A1.T11.1.1.1.5.1.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A1.T11.1.1.1.5.1.2.1.1.1" style="padding:0.75pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="A1.T11.1.1.1.5.1.2.1.1.1.1">OpenAI</span></span></span>
<span class="ltx_tr" id="A1.T11.1.1.1.5.1.2.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A1.T11.1.1.1.5.1.2.1.2.1" style="padding:0.75pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="A1.T11.1.1.1.5.1.2.1.2.1.1">Moderation</span></span></span>
</span></span> <span class="ltx_text" id="A1.T11.1.1.1.5.1.3"></span></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T11.1.1.1.6" style="padding:0.75pt 3.0pt;"><span class="ltx_text" id="A1.T11.1.1.1.6.1"><span class="ltx_text" id="A1.T11.1.1.1.6.1.1"></span> <span class="ltx_text" id="A1.T11.1.1.1.6.1.2">
<span class="ltx_tabular ltx_align_middle" id="A1.T11.1.1.1.6.1.2.1">
<span class="ltx_tr" id="A1.T11.1.1.1.6.1.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A1.T11.1.1.1.6.1.2.1.1.1" style="padding:0.75pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="A1.T11.1.1.1.6.1.2.1.1.1.1">Aegis</span></span></span>
<span class="ltx_tr" id="A1.T11.1.1.1.6.1.2.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A1.T11.1.1.1.6.1.2.1.2.1" style="padding:0.75pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="A1.T11.1.1.1.6.1.2.1.2.1.1">SafetyTest</span></span></span>
</span></span> <span class="ltx_text" id="A1.T11.1.1.1.6.1.3"></span></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T11.1.1.1.7" style="padding:0.75pt 3.0pt;"><span class="ltx_text" id="A1.T11.1.1.1.7.1"><span class="ltx_text" id="A1.T11.1.1.1.7.1.1"></span> <span class="ltx_text" id="A1.T11.1.1.1.7.1.2">
<span class="ltx_tabular ltx_align_middle" id="A1.T11.1.1.1.7.1.2.1">
<span class="ltx_tr" id="A1.T11.1.1.1.7.1.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A1.T11.1.1.1.7.1.2.1.1.1" style="padding:0.75pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="A1.T11.1.1.1.7.1.2.1.1.1.1">Simple</span></span></span>
<span class="ltx_tr" id="A1.T11.1.1.1.7.1.2.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A1.T11.1.1.1.7.1.2.1.2.1" style="padding:0.75pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="A1.T11.1.1.1.7.1.2.1.2.1.1">SafetyTests</span></span></span>
</span></span> <span class="ltx_text" id="A1.T11.1.1.1.7.1.3"></span></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T11.1.1.1.8" style="padding:0.75pt 3.0pt;"><span class="ltx_text" id="A1.T11.1.1.1.8.1"><span class="ltx_text" id="A1.T11.1.1.1.8.1.1"></span> <span class="ltx_text" id="A1.T11.1.1.1.8.1.2">
<span class="ltx_tabular ltx_align_middle" id="A1.T11.1.1.1.8.1.2.1">
<span class="ltx_tr" id="A1.T11.1.1.1.8.1.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A1.T11.1.1.1.8.1.2.1.1.1" style="padding:0.75pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="A1.T11.1.1.1.8.1.2.1.1.1.1">WildGuard</span></span></span>
<span class="ltx_tr" id="A1.T11.1.1.1.8.1.2.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A1.T11.1.1.1.8.1.2.1.2.1" style="padding:0.75pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="A1.T11.1.1.1.8.1.2.1.2.1.1">Test</span></span></span>
</span></span> <span class="ltx_text" id="A1.T11.1.1.1.8.1.3"></span></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T11.1.1.1.9" style="padding:0.75pt 3.0pt;"><span class="ltx_text" id="A1.T11.1.1.1.9.1"><span class="ltx_text" id="A1.T11.1.1.1.9.1.1"></span> <span class="ltx_text" id="A1.T11.1.1.1.9.1.2">
<span class="ltx_tabular ltx_align_middle" id="A1.T11.1.1.1.9.1.2.1">
<span class="ltx_tr" id="A1.T11.1.1.1.9.1.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A1.T11.1.1.1.9.1.2.1.1.1" style="padding:0.75pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="A1.T11.1.1.1.9.1.2.1.1.1.1">Weighted</span></span></span>
<span class="ltx_tr" id="A1.T11.1.1.1.9.1.2.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A1.T11.1.1.1.9.1.2.1.2.1" style="padding:0.75pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="A1.T11.1.1.1.9.1.2.1.2.1.1">Average</span></span></span>
</span></span> <span class="ltx_text" id="A1.T11.1.1.1.9.1.3"></span></span></td>
</tr>
<tr class="ltx_tr" id="A1.T11.1.1.2">
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T11.1.1.2.1" style="padding:0.75pt 3.0pt;">GPT-4o+CoT</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T11.1.1.2.2" style="padding:0.75pt 3.0pt;">Original</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T11.1.1.2.3" style="padding:0.75pt 3.0pt;">73.43</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T11.1.1.2.4" style="padding:0.75pt 3.0pt;">81.98</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T11.1.1.2.5" style="padding:0.75pt 3.0pt;">76.78</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T11.1.1.2.6" style="padding:0.75pt 3.0pt;">88.24</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T11.1.1.2.7" style="padding:0.75pt 3.0pt;">98.99</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T11.1.1.2.8" style="padding:0.75pt 3.0pt;">82.75</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T11.1.1.2.9" style="padding:0.75pt 3.0pt;">78.00</td>
</tr>
<tr class="ltx_tr" id="A1.T11.1.1.3">
<td class="ltx_td ltx_align_center" id="A1.T11.1.1.3.1" style="padding:0.75pt 3.0pt;">GPT-4o+CoT</td>
<td class="ltx_td ltx_align_center" id="A1.T11.1.1.3.2" style="padding:0.75pt 3.0pt;">Corrected</td>
<td class="ltx_td ltx_align_center" id="A1.T11.1.1.3.3" style="padding:0.75pt 3.0pt;">77.91</td>
<td class="ltx_td ltx_align_center" id="A1.T11.1.1.3.4" style="padding:0.75pt 3.0pt;">81.98</td>
<td class="ltx_td ltx_align_center" id="A1.T11.1.1.3.5" style="padding:0.75pt 3.0pt;">77.78</td>
<td class="ltx_td ltx_align_center" id="A1.T11.1.1.3.6" style="padding:0.75pt 3.0pt;">89.56</td>
<td class="ltx_td ltx_align_center" id="A1.T11.1.1.3.7" style="padding:0.75pt 3.0pt;">99.50</td>
<td class="ltx_td ltx_align_center" id="A1.T11.1.1.3.8" style="padding:0.75pt 3.0pt;">87.27</td>
<td class="ltx_td ltx_align_center" id="A1.T11.1.1.3.9" style="padding:0.75pt 3.0pt;">81.28</td>
</tr>
<tr class="ltx_tr" id="A1.T11.1.1.4">
<td class="ltx_td ltx_align_center" id="A1.T11.1.1.4.1" style="padding:0.75pt 3.0pt;">LLaMA Guard 3 8B</td>
<td class="ltx_td ltx_align_center" id="A1.T11.1.1.4.2" style="padding:0.75pt 3.0pt;">Original</td>
<td class="ltx_td ltx_align_center" id="A1.T11.1.1.4.3" style="padding:0.75pt 3.0pt;">53.12</td>
<td class="ltx_td ltx_align_center" id="A1.T11.1.1.4.4" style="padding:0.75pt 3.0pt;">98.94</td>
<td class="ltx_td ltx_align_center" id="A1.T11.1.1.4.5" style="padding:0.75pt 3.0pt;">79.69</td>
<td class="ltx_td ltx_align_center" id="A1.T11.1.1.4.6" style="padding:0.75pt 3.0pt;">71.39</td>
<td class="ltx_td ltx_align_center" id="A1.T11.1.1.4.7" style="padding:0.75pt 3.0pt;">99.50</td>
<td class="ltx_td ltx_align_center" id="A1.T11.1.1.4.8" style="padding:0.75pt 3.0pt;">76.18</td>
<td class="ltx_td ltx_align_center" id="A1.T11.1.1.4.9" style="padding:0.75pt 3.0pt;">68.47</td>
</tr>
<tr class="ltx_tr" id="A1.T11.1.1.5">
<td class="ltx_td ltx_align_center" id="A1.T11.1.1.5.1" style="padding:0.75pt 3.0pt;">LLaMA Guard 3 8B</td>
<td class="ltx_td ltx_align_center" id="A1.T11.1.1.5.2" style="padding:0.75pt 3.0pt;">Corrected</td>
<td class="ltx_td ltx_align_center" id="A1.T11.1.1.5.3" style="padding:0.75pt 3.0pt;">54.74</td>
<td class="ltx_td ltx_align_center" id="A1.T11.1.1.5.4" style="padding:0.75pt 3.0pt;">98.94</td>
<td class="ltx_td ltx_align_center" id="A1.T11.1.1.5.5" style="padding:0.75pt 3.0pt;">77.66</td>
<td class="ltx_td ltx_align_center" id="A1.T11.1.1.5.6" style="padding:0.75pt 3.0pt;">73.60</td>
<td class="ltx_td ltx_align_center" id="A1.T11.1.1.5.7" style="padding:0.75pt 3.0pt;">100.00</td>
<td class="ltx_td ltx_align_center" id="A1.T11.1.1.5.8" style="padding:0.75pt 3.0pt;">78.59</td>
<td class="ltx_td ltx_align_center" id="A1.T11.1.1.5.9" style="padding:0.75pt 3.0pt;">69.37</td>
</tr>
<tr class="ltx_tr" id="A1.T11.1.1.6">
<td class="ltx_td ltx_align_center" id="A1.T11.1.1.6.1" style="padding:0.75pt 3.0pt;">GuardReasoner 1B</td>
<td class="ltx_td ltx_align_center" id="A1.T11.1.1.6.2" style="padding:0.75pt 3.0pt;">Original</td>
<td class="ltx_td ltx_align_center" id="A1.T11.1.1.6.3" style="padding:0.75pt 3.0pt;">72.43</td>
<td class="ltx_td ltx_align_center" id="A1.T11.1.1.6.4" style="padding:0.75pt 3.0pt;">96.31</td>
<td class="ltx_td ltx_align_center" id="A1.T11.1.1.6.5" style="padding:0.75pt 3.0pt;">70.06</td>
<td class="ltx_td ltx_align_center" id="A1.T11.1.1.6.6" style="padding:0.75pt 3.0pt;">89.34</td>
<td class="ltx_td ltx_align_center" id="A1.T11.1.1.6.7" style="padding:0.75pt 3.0pt;">98.99</td>
<td class="ltx_td ltx_align_center" id="A1.T11.1.1.6.8" style="padding:0.75pt 3.0pt;">87.37</td>
<td class="ltx_td ltx_align_center" id="A1.T11.1.1.6.9" style="padding:0.75pt 3.0pt;">77.68</td>
</tr>
<tr class="ltx_tr" id="A1.T11.1.1.7">
<td class="ltx_td ltx_align_center" id="A1.T11.1.1.7.1" style="padding:0.75pt 3.0pt;">GuardReasoner 1B</td>
<td class="ltx_td ltx_align_center" id="A1.T11.1.1.7.2" style="padding:0.75pt 3.0pt;">Corrected</td>
<td class="ltx_td ltx_align_center" id="A1.T11.1.1.7.3" style="padding:0.75pt 3.0pt;">85.46</td>
<td class="ltx_td ltx_align_center" id="A1.T11.1.1.7.4" style="padding:0.75pt 3.0pt;">89.10</td>
<td class="ltx_td ltx_align_center" id="A1.T11.1.1.7.5" style="padding:0.75pt 3.0pt;">80.51</td>
<td class="ltx_td ltx_align_center" id="A1.T11.1.1.7.6" style="padding:0.75pt 3.0pt;">94.57</td>
<td class="ltx_td ltx_align_center" id="A1.T11.1.1.7.7" style="padding:0.75pt 3.0pt;">99.50</td>
<td class="ltx_td ltx_align_center" id="A1.T11.1.1.7.8" style="padding:0.75pt 3.0pt;">92.79</td>
<td class="ltx_td ltx_align_center" id="A1.T11.1.1.7.9" style="padding:0.75pt 3.0pt;">83.80</td>
</tr>
<tr class="ltx_tr" id="A1.T11.1.1.8">
<td class="ltx_td ltx_align_center" id="A1.T11.1.1.8.1" style="padding:0.75pt 3.0pt;">GuardReasoner 3B</td>
<td class="ltx_td ltx_align_center" id="A1.T11.1.1.8.2" style="padding:0.75pt 3.0pt;">Original</td>
<td class="ltx_td ltx_align_center" id="A1.T11.1.1.8.3" style="padding:0.75pt 3.0pt;">78.20</td>
<td class="ltx_td ltx_align_center" id="A1.T11.1.1.8.4" style="padding:0.75pt 3.0pt;">89.10</td>
<td class="ltx_td ltx_align_center" id="A1.T11.1.1.8.5" style="padding:0.75pt 3.0pt;">71.87</td>
<td class="ltx_td ltx_align_center" id="A1.T11.1.1.8.6" style="padding:0.75pt 3.0pt;">91.39</td>
<td class="ltx_td ltx_align_center" id="A1.T11.1.1.8.7" style="padding:0.75pt 3.0pt;">100.00</td>
<td class="ltx_td ltx_align_center" id="A1.T11.1.1.8.8" style="padding:0.75pt 3.0pt;">89.01</td>
<td class="ltx_td ltx_align_center" id="A1.T11.1.1.8.9" style="padding:0.75pt 3.0pt;">80.76</td>
</tr>
<tr class="ltx_tr" id="A1.T11.1.1.9">
<td class="ltx_td ltx_align_center" id="A1.T11.1.1.9.1" style="padding:0.75pt 3.0pt;">GuardReasoner 3B</td>
<td class="ltx_td ltx_align_center" id="A1.T11.1.1.9.2" style="padding:0.75pt 3.0pt;">Corrected</td>
<td class="ltx_td ltx_align_center" id="A1.T11.1.1.9.3" style="padding:0.75pt 3.0pt;">79.27</td>
<td class="ltx_td ltx_align_center" id="A1.T11.1.1.9.4" style="padding:0.75pt 3.0pt;">96.31</td>
<td class="ltx_td ltx_align_center" id="A1.T11.1.1.9.5" style="padding:0.75pt 3.0pt;">79.14</td>
<td class="ltx_td ltx_align_center" id="A1.T11.1.1.9.6" style="padding:0.75pt 3.0pt;">91.92</td>
<td class="ltx_td ltx_align_center" id="A1.T11.1.1.9.7" style="padding:0.75pt 3.0pt;">99.49</td>
<td class="ltx_td ltx_align_center" id="A1.T11.1.1.9.8" style="padding:0.75pt 3.0pt;">91.37</td>
<td class="ltx_td ltx_align_center" id="A1.T11.1.1.9.9" style="padding:0.75pt 3.0pt;">86.91</td>
</tr>
<tr class="ltx_tr" id="A1.T11.1.1.10">
<td class="ltx_td ltx_align_center" id="A1.T11.1.1.10.1" style="padding:0.75pt 3.0pt;">GuardReasoner 8B</td>
<td class="ltx_td ltx_align_center" id="A1.T11.1.1.10.2" style="padding:0.75pt 3.0pt;">Original</td>
<td class="ltx_td ltx_align_center" id="A1.T11.1.1.10.3" style="padding:0.75pt 3.0pt;">78.79</td>
<td class="ltx_td ltx_align_center" id="A1.T11.1.1.10.4" style="padding:0.75pt 3.0pt;">91.86</td>
<td class="ltx_td ltx_align_center" id="A1.T11.1.1.10.5" style="padding:0.75pt 3.0pt;">72.00</td>
<td class="ltx_td ltx_align_center" id="A1.T11.1.1.10.6" style="padding:0.75pt 3.0pt;">90.18</td>
<td class="ltx_td ltx_align_center" id="A1.T11.1.1.10.7" style="padding:0.75pt 3.0pt;">99.50</td>
<td class="ltx_td ltx_align_center" id="A1.T11.1.1.10.8" style="padding:0.75pt 3.0pt;">89.17</td>
<td class="ltx_td ltx_align_center" id="A1.T11.1.1.10.9" style="padding:0.75pt 3.0pt;">81.09</td>
</tr>
<tr class="ltx_tr" id="A1.T11.1.1.11">
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T11.1.1.11.1" style="padding:0.75pt 3.0pt;">GuardReasoner 8B</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T11.1.1.11.2" style="padding:0.75pt 3.0pt;">Corrected</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T11.1.1.11.3" style="padding:0.75pt 3.0pt;">89.99</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T11.1.1.11.4" style="padding:0.75pt 3.0pt;">91.86</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T11.1.1.11.5" style="padding:0.75pt 3.0pt;">83.36</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T11.1.1.11.6" style="padding:0.75pt 3.0pt;">94.74</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T11.1.1.11.7" style="padding:0.75pt 3.0pt;">100.00</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T11.1.1.11.8" style="padding:0.75pt 3.0pt;">94.24</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T11.1.1.11.9" style="padding:0.75pt 3.0pt;">89.92</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the improvement in F1 scores achieved by GuardReasoner and several baseline models after correcting mislabeled data in the prompt harmfulness detection task.  It shows the performance gain (in percentage points) after human annotators reviewed and corrected labels, illustrating the effectiveness of the GuardReasoner model in handling ambiguous or difficult cases where initial labels were inaccurate.
> <details>
> <summary>read the caption</summary>
> Table 11: Improvement (F1 score %) of GuardReasoner and baselines after label correction on the prompt harmfulness detection task.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="A1.T12.1.1">
<tr class="ltx_tr" id="A1.T12.1.1.1">
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T12.1.1.1.1" style="padding:0.5pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="A1.T12.1.1.1.1.1">Method</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T12.1.1.1.2" style="padding:0.5pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="A1.T12.1.1.1.2.1">Used Label</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T12.1.1.1.3" style="padding:0.5pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="A1.T12.1.1.1.3.1">HarmBench</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T12.1.1.1.4" style="padding:0.5pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="A1.T12.1.1.1.4.1">SafeRLHF</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T12.1.1.1.5" style="padding:0.5pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="A1.T12.1.1.1.5.1">BeaverTails</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T12.1.1.1.6" style="padding:0.5pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="A1.T12.1.1.1.6.1">XSTestReponse</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T12.1.1.1.7" style="padding:0.5pt 3.0pt;"><span class="ltx_text" id="A1.T12.1.1.1.7.1"><span class="ltx_text" id="A1.T12.1.1.1.7.1.1"></span> <span class="ltx_text" id="A1.T12.1.1.1.7.1.2">
<span class="ltx_tabular ltx_align_middle" id="A1.T12.1.1.1.7.1.2.1">
<span class="ltx_tr" id="A1.T12.1.1.1.7.1.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A1.T12.1.1.1.7.1.2.1.1.1" style="padding:0.5pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="A1.T12.1.1.1.7.1.2.1.1.1.1">WildGuard</span></span></span>
<span class="ltx_tr" id="A1.T12.1.1.1.7.1.2.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A1.T12.1.1.1.7.1.2.1.2.1" style="padding:0.5pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="A1.T12.1.1.1.7.1.2.1.2.1.1">Test</span></span></span>
</span></span> <span class="ltx_text" id="A1.T12.1.1.1.7.1.3"></span></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T12.1.1.1.8" style="padding:0.5pt 3.0pt;"><span class="ltx_text" id="A1.T12.1.1.1.8.1"><span class="ltx_text" id="A1.T12.1.1.1.8.1.1"></span> <span class="ltx_text" id="A1.T12.1.1.1.8.1.2">
<span class="ltx_tabular ltx_align_middle" id="A1.T12.1.1.1.8.1.2.1">
<span class="ltx_tr" id="A1.T12.1.1.1.8.1.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A1.T12.1.1.1.8.1.2.1.1.1" style="padding:0.5pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="A1.T12.1.1.1.8.1.2.1.1.1.1">Weighted</span></span></span>
<span class="ltx_tr" id="A1.T12.1.1.1.8.1.2.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A1.T12.1.1.1.8.1.2.1.2.1" style="padding:0.5pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="A1.T12.1.1.1.8.1.2.1.2.1.1">Average</span></span></span>
</span></span> <span class="ltx_text" id="A1.T12.1.1.1.8.1.3"></span></span></td>
</tr>
<tr class="ltx_tr" id="A1.T12.1.1.2">
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T12.1.1.2.1" style="padding:0.5pt 3.0pt;">Gemini 1.5 Pro</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T12.1.1.2.2" style="padding:0.5pt 3.0pt;">Original</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T12.1.1.2.3" style="padding:0.5pt 3.0pt;">84.39</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T12.1.1.2.4" style="padding:0.5pt 3.0pt;">62.01</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T12.1.1.2.5" style="padding:0.5pt 3.0pt;">83.91</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T12.1.1.2.6" style="padding:0.5pt 3.0pt;">90.24</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T12.1.1.2.7" style="padding:0.5pt 3.0pt;">76.47</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T12.1.1.2.8" style="padding:0.5pt 3.0pt;">77.04</td>
</tr>
<tr class="ltx_tr" id="A1.T12.1.1.3">
<td class="ltx_td ltx_align_center" id="A1.T12.1.1.3.1" style="padding:0.5pt 3.0pt;">Gemini 1.5 Pro</td>
<td class="ltx_td ltx_align_center" id="A1.T12.1.1.3.2" style="padding:0.5pt 3.0pt;">Corrected</td>
<td class="ltx_td ltx_align_center" id="A1.T12.1.1.3.3" style="padding:0.5pt 3.0pt;">87.69</td>
<td class="ltx_td ltx_align_center" id="A1.T12.1.1.3.4" style="padding:0.5pt 3.0pt;">69.44</td>
<td class="ltx_td ltx_align_center" id="A1.T12.1.1.3.5" style="padding:0.5pt 3.0pt;">86.52</td>
<td class="ltx_td ltx_align_center" id="A1.T12.1.1.3.6" style="padding:0.5pt 3.0pt;">91.57</td>
<td class="ltx_td ltx_align_center" id="A1.T12.1.1.3.7" style="padding:0.5pt 3.0pt;">77.51</td>
<td class="ltx_td ltx_align_center" id="A1.T12.1.1.3.8" style="padding:0.5pt 3.0pt;">80.51</td>
</tr>
<tr class="ltx_tr" id="A1.T12.1.1.4">
<td class="ltx_td ltx_align_center" id="A1.T12.1.1.4.1" style="padding:0.5pt 3.0pt;">LLaMA Guard 3 8B</td>
<td class="ltx_td ltx_align_center" id="A1.T12.1.1.4.2" style="padding:0.5pt 3.0pt;">Original</td>
<td class="ltx_td ltx_align_center" id="A1.T12.1.1.4.3" style="padding:0.5pt 3.0pt;">85.07</td>
<td class="ltx_td ltx_align_center" id="A1.T12.1.1.4.4" style="padding:0.5pt 3.0pt;">44.36</td>
<td class="ltx_td ltx_align_center" id="A1.T12.1.1.4.5" style="padding:0.5pt 3.0pt;">67.84</td>
<td class="ltx_td ltx_align_center" id="A1.T12.1.1.4.6" style="padding:0.5pt 3.0pt;">87.67</td>
<td class="ltx_td ltx_align_center" id="A1.T12.1.1.4.7" style="padding:0.5pt 3.0pt;">70.80</td>
<td class="ltx_td ltx_align_center" id="A1.T12.1.1.4.8" style="padding:0.5pt 3.0pt;">64.97</td>
</tr>
<tr class="ltx_tr" id="A1.T12.1.1.5">
<td class="ltx_td ltx_align_center" id="A1.T12.1.1.5.1" style="padding:0.5pt 3.0pt;">LLaMA Guard 3 8B</td>
<td class="ltx_td ltx_align_center" id="A1.T12.1.1.5.2" style="padding:0.5pt 3.0pt;">Corrected</td>
<td class="ltx_td ltx_align_center" id="A1.T12.1.1.5.3" style="padding:0.5pt 3.0pt;">87.71</td>
<td class="ltx_td ltx_align_center" id="A1.T12.1.1.5.4" style="padding:0.5pt 3.0pt;">47.46</td>
<td class="ltx_td ltx_align_center" id="A1.T12.1.1.5.5" style="padding:0.5pt 3.0pt;">69.50</td>
<td class="ltx_td ltx_align_center" id="A1.T12.1.1.5.6" style="padding:0.5pt 3.0pt;">87.84</td>
<td class="ltx_td ltx_align_center" id="A1.T12.1.1.5.7" style="padding:0.5pt 3.0pt;">72.00</td>
<td class="ltx_td ltx_align_center" id="A1.T12.1.1.5.8" style="padding:0.5pt 3.0pt;">66.88</td>
</tr>
<tr class="ltx_tr" id="A1.T12.1.1.6">
<td class="ltx_td ltx_align_center" id="A1.T12.1.1.6.1" style="padding:0.5pt 3.0pt;">GuardReasoner 1B</td>
<td class="ltx_td ltx_align_center" id="A1.T12.1.1.6.2" style="padding:0.5pt 3.0pt;">Original</td>
<td class="ltx_td ltx_align_center" id="A1.T12.1.1.6.3" style="padding:0.5pt 3.0pt;">84.75</td>
<td class="ltx_td ltx_align_center" id="A1.T12.1.1.6.4" style="padding:0.5pt 3.0pt;">68.39</td>
<td class="ltx_td ltx_align_center" id="A1.T12.1.1.6.5" style="padding:0.5pt 3.0pt;">85.84</td>
<td class="ltx_td ltx_align_center" id="A1.T12.1.1.6.6" style="padding:0.5pt 3.0pt;">90.12</td>
<td class="ltx_td ltx_align_center" id="A1.T12.1.1.6.7" style="padding:0.5pt 3.0pt;">74.81</td>
<td class="ltx_td ltx_align_center" id="A1.T12.1.1.6.8" style="padding:0.5pt 3.0pt;">79.06</td>
</tr>
<tr class="ltx_tr" id="A1.T12.1.1.7">
<td class="ltx_td ltx_align_center" id="A1.T12.1.1.7.1" style="padding:0.5pt 3.0pt;">GuardReasoner 1B</td>
<td class="ltx_td ltx_align_center" id="A1.T12.1.1.7.2" style="padding:0.5pt 3.0pt;">Corrected</td>
<td class="ltx_td ltx_align_center" id="A1.T12.1.1.7.3" style="padding:0.5pt 3.0pt;">88.67</td>
<td class="ltx_td ltx_align_center" id="A1.T12.1.1.7.4" style="padding:0.5pt 3.0pt;">76.49</td>
<td class="ltx_td ltx_align_center" id="A1.T12.1.1.7.5" style="padding:0.5pt 3.0pt;">88.76</td>
<td class="ltx_td ltx_align_center" id="A1.T12.1.1.7.6" style="padding:0.5pt 3.0pt;">90.24</td>
<td class="ltx_td ltx_align_center" id="A1.T12.1.1.7.7" style="padding:0.5pt 3.0pt;">79.63</td>
<td class="ltx_td ltx_align_center" id="A1.T12.1.1.7.8" style="padding:0.5pt 3.0pt;">83.65</td>
</tr>
<tr class="ltx_tr" id="A1.T12.1.1.8">
<td class="ltx_td ltx_align_center" id="A1.T12.1.1.8.1" style="padding:0.5pt 3.0pt;">GuardReasoner 3B</td>
<td class="ltx_td ltx_align_center" id="A1.T12.1.1.8.2" style="padding:0.5pt 3.0pt;">Original</td>
<td class="ltx_td ltx_align_center" id="A1.T12.1.1.8.3" style="padding:0.5pt 3.0pt;">85.66</td>
<td class="ltx_td ltx_align_center" id="A1.T12.1.1.8.4" style="padding:0.5pt 3.0pt;">69.02</td>
<td class="ltx_td ltx_align_center" id="A1.T12.1.1.8.5" style="padding:0.5pt 3.0pt;">86.72</td>
<td class="ltx_td ltx_align_center" id="A1.T12.1.1.8.6" style="padding:0.5pt 3.0pt;">91.36</td>
<td class="ltx_td ltx_align_center" id="A1.T12.1.1.8.7" style="padding:0.5pt 3.0pt;">79.70</td>
<td class="ltx_td ltx_align_center" id="A1.T12.1.1.8.8" style="padding:0.5pt 3.0pt;">80.80</td>
</tr>
<tr class="ltx_tr" id="A1.T12.1.1.9">
<td class="ltx_td ltx_align_center" id="A1.T12.1.1.9.1" style="padding:0.5pt 3.0pt;">GuardReasoner 3B</td>
<td class="ltx_td ltx_align_center" id="A1.T12.1.1.9.2" style="padding:0.5pt 3.0pt;">Corrected</td>
<td class="ltx_td ltx_align_center" id="A1.T12.1.1.9.3" style="padding:0.5pt 3.0pt;">89.64</td>
<td class="ltx_td ltx_align_center" id="A1.T12.1.1.9.4" style="padding:0.5pt 3.0pt;">77.32</td>
<td class="ltx_td ltx_align_center" id="A1.T12.1.1.9.5" style="padding:0.5pt 3.0pt;">89.66</td>
<td class="ltx_td ltx_align_center" id="A1.T12.1.1.9.6" style="padding:0.5pt 3.0pt;">92.68</td>
<td class="ltx_td ltx_align_center" id="A1.T12.1.1.9.7" style="padding:0.5pt 3.0pt;">84.17</td>
<td class="ltx_td ltx_align_center" id="A1.T12.1.1.9.8" style="padding:0.5pt 3.0pt;">85.44</td>
</tr>
<tr class="ltx_tr" id="A1.T12.1.1.10">
<td class="ltx_td ltx_align_center" id="A1.T12.1.1.10.1" style="padding:0.5pt 3.0pt;">GuardReasoner 8B</td>
<td class="ltx_td ltx_align_center" id="A1.T12.1.1.10.2" style="padding:0.5pt 3.0pt;">Original</td>
<td class="ltx_td ltx_align_center" id="A1.T12.1.1.10.3" style="padding:0.5pt 3.0pt;">85.47</td>
<td class="ltx_td ltx_align_center" id="A1.T12.1.1.10.4" style="padding:0.5pt 3.0pt;">70.04</td>
<td class="ltx_td ltx_align_center" id="A1.T12.1.1.10.5" style="padding:0.5pt 3.0pt;">87.60</td>
<td class="ltx_td ltx_align_center" id="A1.T12.1.1.10.6" style="padding:0.5pt 3.0pt;">94.34</td>
<td class="ltx_td ltx_align_center" id="A1.T12.1.1.10.7" style="padding:0.5pt 3.0pt;">78.20</td>
<td class="ltx_td ltx_align_center" id="A1.T12.1.1.10.8" style="padding:0.5pt 3.0pt;">81.22</td>
</tr>
<tr class="ltx_tr" id="A1.T12.1.1.11">
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T12.1.1.11.1" style="padding:0.5pt 3.0pt;">GuardReasoner 8B</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T12.1.1.11.2" style="padding:0.5pt 3.0pt;">Corrected</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T12.1.1.11.3" style="padding:0.5pt 3.0pt;">91.16</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T12.1.1.11.4" style="padding:0.5pt 3.0pt;">80.16</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T12.1.1.11.5" style="padding:0.5pt 3.0pt;">91.01</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T12.1.1.11.6" style="padding:0.5pt 3.0pt;">95.65</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T12.1.1.11.7" style="padding:0.5pt 3.0pt;">84.21</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T12.1.1.11.8" style="padding:0.5pt 3.0pt;">86.98</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the improvement in F1 score achieved by GuardReasoner and several baseline models after correcting mislabeled data in the response harmfulness detection task.  It shows the performance gains (in percentage points) after correcting the labels of  the HarmBench, SafeRLHF, BeaverTails, XSTestResponse, and WildGuard datasets. The improvements reflect the effectiveness of the models in correctly classifying harmful and unharmful responses.
> <details>
> <summary>read the caption</summary>
> Table 12: Improvement (F1 score %) of GuardReasoner and baselines after label correction on the response harmfulness detection task.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="A1.T13.1.1">
<tr class="ltx_tr" id="A1.T13.1.1.1">
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T13.1.1.1.1" style="padding:1pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="A1.T13.1.1.1.1.1">Method</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T13.1.1.1.2" style="padding:1pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="A1.T13.1.1.1.2.1">Model Size</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T13.1.1.1.3" style="padding:1pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="A1.T13.1.1.1.3.1">XSTestResponse</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T13.1.1.1.4" style="padding:1pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="A1.T13.1.1.1.4.1">WildGuardTest</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T13.1.1.1.5" style="padding:1pt 3.0pt;"><span class="ltx_text" id="A1.T13.1.1.1.5.1"><span class="ltx_text" id="A1.T13.1.1.1.5.1.1"></span> <span class="ltx_text" id="A1.T13.1.1.1.5.1.2">
<span class="ltx_tabular ltx_align_middle" id="A1.T13.1.1.1.5.1.2.1">
<span class="ltx_tr" id="A1.T13.1.1.1.5.1.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A1.T13.1.1.1.5.1.2.1.1.1" style="padding:1pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="A1.T13.1.1.1.5.1.2.1.1.1.1">Weighted</span></span></span>
<span class="ltx_tr" id="A1.T13.1.1.1.5.1.2.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="A1.T13.1.1.1.5.1.2.1.2.1" style="padding:1pt 3.0pt;"><span class="ltx_text ltx_font_bold" id="A1.T13.1.1.1.5.1.2.1.2.1.1">Average</span></span></span>
</span></span> <span class="ltx_text" id="A1.T13.1.1.1.5.1.3"></span></span></td>
</tr>
<tr class="ltx_tr" id="A1.T13.1.1.2">
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T13.1.1.2.1" style="padding:1pt 3.0pt;">GPT-4</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T13.1.1.2.2" style="padding:1pt 3.0pt;">Original</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T13.1.1.2.3" style="padding:1pt 3.0pt;">91.16</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T13.1.1.2.4" style="padding:1pt 3.0pt;">90.02</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T13.1.1.2.5" style="padding:1pt 3.0pt;">90.27</td>
</tr>
<tr class="ltx_tr" id="A1.T13.1.1.3">
<td class="ltx_td ltx_align_center" id="A1.T13.1.1.3.1" style="padding:1pt 3.0pt;">GPT-4</td>
<td class="ltx_td ltx_align_center" id="A1.T13.1.1.3.2" style="padding:1pt 3.0pt;">Corrected</td>
<td class="ltx_td ltx_align_center" id="A1.T13.1.1.3.3" style="padding:1pt 3.0pt;">92.35</td>
<td class="ltx_td ltx_align_center" id="A1.T13.1.1.3.4" style="padding:1pt 3.0pt;">90.02</td>
<td class="ltx_td ltx_align_center" id="A1.T13.1.1.3.5" style="padding:1pt 3.0pt;">90.53</td>
</tr>
<tr class="ltx_tr" id="A1.T13.1.1.4">
<td class="ltx_td ltx_align_center" id="A1.T13.1.1.4.1" style="padding:1pt 3.0pt;">LLaMA Guard 3 8B</td>
<td class="ltx_td ltx_align_center" id="A1.T13.1.1.4.2" style="padding:1pt 3.0pt;">Original</td>
<td class="ltx_td ltx_align_center" id="A1.T13.1.1.4.3" style="padding:1pt 3.0pt;">63.55</td>
<td class="ltx_td ltx_align_center" id="A1.T13.1.1.4.4" style="padding:1pt 3.0pt;">54.29</td>
<td class="ltx_td ltx_align_center" id="A1.T13.1.1.4.5" style="padding:1pt 3.0pt;">56.32</td>
</tr>
<tr class="ltx_tr" id="A1.T13.1.1.5">
<td class="ltx_td ltx_align_center" id="A1.T13.1.1.5.1" style="padding:1pt 3.0pt;">LLaMA Guard 3 8B</td>
<td class="ltx_td ltx_align_center" id="A1.T13.1.1.5.2" style="padding:1pt 3.0pt;">Corrected</td>
<td class="ltx_td ltx_align_center" id="A1.T13.1.1.5.3" style="padding:1pt 3.0pt;">67.60</td>
<td class="ltx_td ltx_align_center" id="A1.T13.1.1.5.4" style="padding:1pt 3.0pt;">58.92</td>
<td class="ltx_td ltx_align_center" id="A1.T13.1.1.5.5" style="padding:1pt 3.0pt;">60.82</td>
</tr>
<tr class="ltx_tr" id="A1.T13.1.1.6">
<td class="ltx_td ltx_align_center" id="A1.T13.1.1.6.1" style="padding:1pt 3.0pt;">GuardReasoner 1B</td>
<td class="ltx_td ltx_align_center" id="A1.T13.1.1.6.2" style="padding:1pt 3.0pt;">Original</td>
<td class="ltx_td ltx_align_center" id="A1.T13.1.1.6.3" style="padding:1pt 3.0pt;">91.34</td>
<td class="ltx_td ltx_align_center" id="A1.T13.1.1.6.4" style="padding:1pt 3.0pt;">87.71</td>
<td class="ltx_td ltx_align_center" id="A1.T13.1.1.6.5" style="padding:1pt 3.0pt;">88.51</td>
</tr>
<tr class="ltx_tr" id="A1.T13.1.1.7">
<td class="ltx_td ltx_align_center" id="A1.T13.1.1.7.1" style="padding:1pt 3.0pt;">GuardReasoner 1B</td>
<td class="ltx_td ltx_align_center" id="A1.T13.1.1.7.2" style="padding:1pt 3.0pt;">Corrected</td>
<td class="ltx_td ltx_align_center" id="A1.T13.1.1.7.3" style="padding:1pt 3.0pt;">93.97</td>
<td class="ltx_td ltx_align_center" id="A1.T13.1.1.7.4" style="padding:1pt 3.0pt;">92.87</td>
<td class="ltx_td ltx_align_center" id="A1.T13.1.1.7.5" style="padding:1pt 3.0pt;">93.11</td>
</tr>
<tr class="ltx_tr" id="A1.T13.1.1.8">
<td class="ltx_td ltx_align_center" id="A1.T13.1.1.8.1" style="padding:1pt 3.0pt;">GuardReasoner 3B</td>
<td class="ltx_td ltx_align_center" id="A1.T13.1.1.8.2" style="padding:1pt 3.0pt;">Original</td>
<td class="ltx_td ltx_align_center" id="A1.T13.1.1.8.3" style="padding:1pt 3.0pt;">80.31</td>
<td class="ltx_td ltx_align_center" id="A1.T13.1.1.8.4" style="padding:1pt 3.0pt;">87.54</td>
<td class="ltx_td ltx_align_center" id="A1.T13.1.1.8.5" style="padding:1pt 3.0pt;">85.95</td>
</tr>
<tr class="ltx_tr" id="A1.T13.1.1.9">
<td class="ltx_td ltx_align_center" id="A1.T13.1.1.9.1" style="padding:1pt 3.0pt;">GuardReasoner 3B</td>
<td class="ltx_td ltx_align_center" id="A1.T13.1.1.9.2" style="padding:1pt 3.0pt;">Corrected</td>
<td class="ltx_td ltx_align_center" id="A1.T13.1.1.9.3" style="padding:1pt 3.0pt;">83.33</td>
<td class="ltx_td ltx_align_center" id="A1.T13.1.1.9.4" style="padding:1pt 3.0pt;">92.99</td>
<td class="ltx_td ltx_align_center" id="A1.T13.1.1.9.5" style="padding:1pt 3.0pt;">90.87</td>
</tr>
<tr class="ltx_tr" id="A1.T13.1.1.10">
<td class="ltx_td ltx_align_center" id="A1.T13.1.1.10.1" style="padding:1pt 3.0pt;">GuardReasoner 8B</td>
<td class="ltx_td ltx_align_center" id="A1.T13.1.1.10.2" style="padding:1pt 3.0pt;">Original</td>
<td class="ltx_td ltx_align_center" id="A1.T13.1.1.10.3" style="padding:1pt 3.0pt;">93.68</td>
<td class="ltx_td ltx_align_center" id="A1.T13.1.1.10.4" style="padding:1pt 3.0pt;">88.91</td>
<td class="ltx_td ltx_align_center" id="A1.T13.1.1.10.5" style="padding:1pt 3.0pt;">89.96</td>
</tr>
<tr class="ltx_tr" id="A1.T13.1.1.11">
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T13.1.1.11.1" style="padding:1pt 3.0pt;">GuardReasoner 8B</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T13.1.1.11.2" style="padding:1pt 3.0pt;">Corrected</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T13.1.1.11.3" style="padding:1pt 3.0pt;">98.24</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T13.1.1.11.4" style="padding:1pt 3.0pt;">95.44</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T13.1.1.11.5" style="padding:1pt 3.0pt;">96.05</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the performance improvement in F1 score achieved by GuardReasoner and several baseline models after correcting mislabeled data in the refusal detection task.  It shows the percentage increase in F1 score for each model after the label correction, highlighting the impact of accurate labeling on model performance. The table helps illustrate the robustness and accuracy of GuardReasoner, especially when compared to other models after addressing data inaccuracies.
> <details>
> <summary>read the caption</summary>
> Table 13: Improvement (F1 score %) of GuardReasoner and baselines after label correction on the refusal detection task.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2501.18492/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.18492/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.18492/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.18492/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.18492/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.18492/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.18492/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.18492/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.18492/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.18492/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.18492/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.18492/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.18492/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.18492/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.18492/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.18492/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.18492/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.18492/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.18492/19.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.18492/20.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}