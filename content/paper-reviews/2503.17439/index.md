---
title: "LEMMA: Learning from Errors for MatheMatical Advancement in LLMs"
summary: "LEMMA: LLMs learn math via mistake analysis and correction, boosting performance without external critics."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Natural Language Processing", "Large Language Models", "🏢 Tsinghua University",]
showSummary: true
date: 2025-03-21
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2503.17439 {{< /keyword >}}
{{< keyword icon="writer" >}} Zhuoshi Pan et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-03-25 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2503.17439" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2503.17439" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2503.17439/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Large Language Models (LLMs) are facing the challenge of solving mathematical problems. Current approaches focus on refining correct training data, overlooking the valuable insights within error data. This omission limits LLMs' reflective reasoning ability. Moreover, existing methods for leveraging error data often involve complex mechanisms like Monte Carlo Tree Search, adding to the computational overhead and complexity.



To solve the problems above, LEMMA is proposed, a novel method to systematically enhance LLMs' reasoning. It involves constructing and learning from error-corrective trajectories using two complementary mechanisms, Fix & Continue, and Fresh & Restart Trajectories. Experiments show LEMMA achieves state-of-the-art performance in benchmarks like GSM8K and MATH. LEMMA also reduces the occurrence of representative error types consistently.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} LEMMA enhances LLMs' reasoning by learning from error-corrective trajectories. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} Error-type grounded augmentation and smooth reflection improve self-correction. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} LEMMA achieves SOTA performance on math reasoning benchmarks. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper is important because it addresses the **critical issue of error correction in LLMs**, a key area for improving their reliability. It aligns with the trend of **enhancing reasoning through learning from mistakes** and opens new avenues for researchers by demonstrating a structured approach to error analysis and correction, which can be **applied to other complex tasks**.

------
#### Visual Insights



![](https://arxiv.org/html/2503.17439/x3.png)

> 🔼 The figure illustrates the LEMMA framework, which enhances LLMs' mathematical reasoning abilities by learning from errors.  It shows how LEMMA constructs a dataset of incorrect solutions paired with their corresponding corrections.  These pairs consist of an incorrect solution with an erroneous step and a reflection connecting it to the correct solution. The process involves systematically analyzing model-generated errors, augmenting errors using a model-aware approach, and then creating paired correct solutions either by directly fixing the errors or starting anew.  The resulting data is used to fine-tune the LLM, enabling it to self-correct errors autonomously during inference.
> <details>
> <summary>read the caption</summary>
> Figure 1: Overview of LEMMA.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S3.T1.1.1">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S3.T1.1.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_tt" id="S3.T1.1.1.1.1.1"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.1.1.1.1">Error Type</span></th>
<td class="ltx_td ltx_align_left ltx_border_tt" id="S3.T1.1.1.1.1.2"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.1.1.2.1">Definition</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.1.2.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S3.T1.1.1.2.2.1"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.2.2.1.1">Calculation Error (CA)</span></th>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T1.1.1.2.2.2">Error appears during the calculation process.</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.1.3.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S3.T1.1.1.3.3.1"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.3.3.1.1">Counting Error (CO)</span></th>
<td class="ltx_td ltx_align_left" id="S3.T1.1.1.3.3.2">Error occurs during the counting process.</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.1.4.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S3.T1.1.1.4.4.1"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.4.4.1.1">Formula Confusion Error (FC)</span></th>
<td class="ltx_td ltx_align_left" id="S3.T1.1.1.4.4.2">Error appears when applying formula in inappropriate scenario.</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.1.5.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S3.T1.1.1.5.5.1"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.5.5.1.1">Question Misinterpretation Error(QM)</span></th>
<td class="ltx_td ltx_align_left" id="S3.T1.1.1.5.5.2">Error appears because the <span class="ltx_text ltx_font_bold" id="S3.T1.1.1.5.5.2.1">question</span> is misunderstood, such as ignoring specific constraints in the question.</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.1.6.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S3.T1.1.1.6.6.1"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.6.6.1.1">Missing Step (MS)</span></th>
<td class="ltx_td ltx_align_left" id="S3.T1.1.1.6.6.2">Error entails an incomplete generation of reasoning process, lacking a necessary step.</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.1.7.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S3.T1.1.1.7.7.1"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.7.7.1.1">Confusing Concept Error (CC)</span></th>
<td class="ltx_td ltx_align_left" id="S3.T1.1.1.7.7.2">Error occurs because two similar but actually different concepts are mistakenly confused.</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.1.8.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_r" id="S3.T1.1.1.8.8.1"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.8.8.1.1">Nonsensical Output (NO)</span></th>
<td class="ltx_td ltx_align_left ltx_border_bb" id="S3.T1.1.1.8.8.2">Inconceivable, illogical, or question-irrelevant output.</td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 This table presents a taxonomy of error types commonly made by large language models (LLMs) when solving mathematical problems.  The taxonomy is adapted from Li et al. (2024e) and categorizes errors into several main types, such as calculation errors, counting errors, formula confusion errors, question misinterpretation errors, missing steps, confusing concept errors, and nonsensical outputs.  For each error type, a brief description is provided.  The table also notes that some infrequent error types have been omitted for brevity, and directs readers to Appendix A.2 (Figure 12) for illustrative examples and Appendix A (Table 10) for the complete taxonomy.
> <details>
> <summary>read the caption</summary>
> Table 1: Error taxonomy modified from Li et al. (2024e). Corresponding examples are in Fig.12 of appendix A.2. Some infrequent error types are omitted to save space. For the full taxonomy, please check Tab.10 in the appendix.
> </details>





### In-depth insights


#### Error-Aware LLMs
While "Error-Aware LLMs" isn't a direct heading, the core idea revolves around improving reasoning by explicitly addressing and learning from errors. The paper champions a move beyond solely optimizing for correct data, which neglects the rich information contained in mistakes. The current SOTA methods focus on improving the quality of CoT reasoning data by distilling high-quality solutions from advanced models, overlooking potential value within error data. **Error data holds significant potential for fostering reflective reasoning**. A key argument is that LLMs often propagate errors during inference due to a lack of autonomous correction. Recent research acknowledges this gap and proposes methods to integrate error data, such as employing external critique models or MCTS. However, the paper contends that these approaches can be computationally expensive or rely on overly simplistic correction strategies. A **more effective solution involves building error-corrective trajectories** that teach the model to identify, analyze, and rectify errors autonomously. The ability to reflect – **identifying, analyzing, and rectifying errors – is a critical component of human problem-solving**. Thus, to truly advance LLMs, we must enable them to learn from both successes and failures through error-aware training paradigms.

#### Type-Grounded Aug
**Type-grounded augmentation** seems to be a powerful strategy for enhancing LLMs by leveraging error analysis. By **systematically categorizing errors**, the model identifies areas for improvement, such as question misinterpretation or calculation mistakes. The **error-type grounded augmentation** strategy then targets these specific weak points, guiding the model to generate diverse and representative errors. This helps mitigate the issues of both computational overhead from techniques like MCTS and the inefficiency of naive self-correction methods. By strategically introducing errors mirroring those the student model itself is prone to, and using a teacher model to generate representative errors, a more balanced dataset is generated which assists in mitigating error accumulation issues. The **targeted augmentation** based on the observed error distributions leads to more effective fine-tuning and, therefore, improved reflective reasoning, reducing the reliance on external critique models for autonomous error correction.

#### Smooth Transfer
The concept of a 'smooth transfer' likely alludes to seamlessly transitioning between incorrect and correct reasoning paths in LLMs. **This is crucial for enabling effective self-correction**. It suggests a method that avoids abrupt shifts, potentially by leveraging model-aware reflection links and annotations. A smooth transfer mechanism could facilitate learning by ensuring coherent training examples, minimizing the risk of introducing inconsistencies that would hinder the model's learning process. **This ensures that error correction is not just a fix but a part of a learning trajectory.** By guiding models through error-corrective transitions, a smooth transfer mechanism can enhance mathematical reasoning.

#### Reduces Errors
The paper's focus on "Reduces Errors" is a crucial aspect of enhancing Large Language Models (LLMs) for mathematical reasoning. The innovative framework strategically constructs self-correction data by categorizing error types and employing mistake augmentation. This directly combats the limitations of existing methods that primarily focus on improving correct training data while neglecting the value of learning from mistakes. **By fine-tuning LLMs with error-corrective trajectories (Fix & Continue and Fresh & Restart), the model becomes capable of autonomously detecting and correcting errors during generation**. This targeted approach to error reduction leads to more robust and reliable mathematical reasoning capabilities, representing a significant advancement over methods relying on external critique models or inefficient self-correction techniques. **LEMMA's ability to consistently reduce the occurrence of common error types** validates the systematic analysis and structured learning as a powerful means for advancing LLMs.

#### Teacher Choice
**Teacher choice** plays a crucial role in this research. The selection of teachers, whether models or humans, to guide LLMs in self-correction signifies a deliberate strategy. A superior teacher model like GPT-4o would enhance error identification and correction, while open-source options allow community involvement and research reproducibility. The effectiveness of LEMMA isn't solely based on teacher quality, it highlights the systematic error introduction and correction strategy. Therefore, LEMMA's success isn't solely attributable to the teacher model but its intrinsic mechanism. If a weaker teacher is used, the performance would potentially decrease due to the student-model interactions and complexity.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2503.17439/x4.png)

> 🔼 The LEMMA framework is shown in Figure 2.  It consists of three main components: 1) an error-type grounded mistake augmentation module that generates diverse and representative errors for a variety of mathematical reasoning problems; 2) two error correction strategies, 'Fix & Continue' and 'Fresh & Restart', which correct the errors through different approaches; and 3) a training corpus of paired incorrect and correct solutions that are seamlessly connected through model-aware reflection links. These links, annotations that explain the error's origin and justify its correction, provide coherence to the training data, ultimately improving LLMs' ability to reflect on and self-correct their mathematical reasoning processes.
> <details>
> <summary>read the caption</summary>
> Figure 2: The LEMMA framework. LEMMA uses an error-type grounded mistake augmentation module, and explores two error correction strategies to construct the incorrect-correct revision trajectory as training corpus.
> </details>



![](https://arxiv.org/html/2503.17439/x5.png)

> 🔼 The figure shows the distribution of different error types in the LLaMA3-8B model.  The chart visually represents the percentage of each error category (like Calculation Error, Question Misinterpretation Error, etc.) found in the model's mathematical reasoning outputs.  This allows for a comparison of the relative frequency of different error types within the model's responses.
> <details>
> <summary>read the caption</summary>
> (a) LLaMA3-8B
> </details>



![](https://arxiv.org/html/2503.17439/x6.png)

> 🔼 This figure shows the distribution of error types for the Mistral-7B model when solving mathematical problems.  The chart visually represents the percentage of each error type in a dataset of model-generated solutions. The different error types (such as Question Misinterpretation (QM), Calculation Error (CA), etc.) are displayed as segments within a circle, with the size of each segment corresponding to its relative frequency. This provides a visual breakdown of the most common types of mistakes made by this model, offering insights into its strengths and weaknesses in mathematical reasoning.
> <details>
> <summary>read the caption</summary>
> (b) Mistral-7B
> </details>



![](https://arxiv.org/html/2503.17439/x7.png)

> 🔼 This figure shows the distribution of different error types made by the DeepSeekMath-7B model on the MATH dataset.  The error types are categorized using a taxonomy established in the paper, including categories like Question Misinterpretation, Formula Confusion, Calculation Errors, and others. The chart visually represents the proportion of each error type within the model's output, offering insights into the model's strengths and weaknesses in mathematical reasoning.  This allows for targeted improvements and focused data augmentation strategies.
> <details>
> <summary>read the caption</summary>
> (c) DeepSeekMath-7B
> </details>



![](https://arxiv.org/html/2503.17439/x8.png)

> 🔼 This figure shows the distribution of different error types made by the Qwen2-Math-7B model when solving mathematical problems.  The figure displays the percentage of each error type relative to the total number of errors.  Error types include Question Misinterpretation, Formula Confusion, Calculation Errors, Missing Steps, Confusing Concepts, and Nonsensical Output. This visualization helps to understand the common mistakes made by this specific language model, which is useful for developing techniques to improve its performance and to design targeted training data.
> <details>
> <summary>read the caption</summary>
> (d) Qwen2-Math-7B
> </details>



![](https://arxiv.org/html/2503.17439/x9.png)

> 🔼 This figure presents a comparison of error types across four different large language models (LLMs) when solving mathematical problems from the MATH dataset.  The error types are categorized into six main groups (Question Misinterpretation, Formula Confusion, Calculation, Counting, Missing Steps, and Confusing Concepts) using GPT-4 as a classifier.  The bar chart visually shows the proportion of each error type for each LLM, providing insights into the relative strengths and weaknesses of the models in different aspects of mathematical reasoning.  Error types with less than 1% prevalence are excluded for clarity.
> <details>
> <summary>read the caption</summary>
> Figure 3: Error type distribution of the different models on the MATH test set, with GPT-4o as the error classification model. Error types that account for less than 1% are omitted to avoid text overlap.
> </details>



![](https://arxiv.org/html/2503.17439/x10.png)

> 🔼 This figure shows the distribution of different error types made by language models when solving mathematical problems in the MATH dataset. The error types are categorized and their frequencies are displayed. This helps to understand the types of mistakes the models are most prone to make, informing the design of strategies to improve their mathematical reasoning capabilities.  The x-axis represents the different error types while the y-axis represents the count of errors.
> <details>
> <summary>read the caption</summary>
> Figure 3: (a) Error type distribution on MATH.
> </details>



![](https://arxiv.org/html/2503.17439/x11.png)

> 🔼 This figure demonstrates the negative impact of using higher sampling temperatures to generate erroneous reasoning trajectories for training LLMs.  Increasing the temperature significantly increases the number of nonsensical or incoherent responses, making them unsuitable for training. The figure compares examples generated at lower versus higher temperatures, highlighting the substantial difference in the quality of generated text.  These results emphasize the importance of using alternative methods to create training data containing meaningful errors.
> <details>
> <summary>read the caption</summary>
> Figure 4: The shortcoming of sampling erroneous trajectories via increasing temerature: Using higher temperatue produces a substantial amount of nonsensical text, which is not observed in normal generation. Solutions are generated by LLaMA3-8B.
> </details>



![](https://arxiv.org/html/2503.17439/x12.png)

> 🔼 The figure shows a graph plotting the Pass@1 metric on the MATH dataset against different data sizes.  The x-axis represents the size of the training data in multiples of 10,000, and the y-axis shows the Pass@1 score, which is a metric used to evaluate model performance. The graph compares the performance of several different methods including LEMMA, SFT, RefAug, RefAug-90k, and ISC.  The graph demonstrates LEMMA's consistent performance and improvement as the data size increases, while other methods may plateau or even show a decrease in performance.
> <details>
> <summary>read the caption</summary>
> (a) Pass@1 on MATH.
> </details>



![](https://arxiv.org/html/2503.17439/x13.png)

> 🔼 The figure shows a graph plotting the Pass@1 accuracy on the Mathematics dataset against the size of training data. This illustrates how the model's performance improves as the amount of training data increases.  It is part of an experimental evaluation to show the effects of different training data sizes on model accuracy.
> <details>
> <summary>read the caption</summary>
> (b) Pass@1 on Mathematics.
> </details>



![](https://arxiv.org/html/2503.17439/x14.png)

> 🔼 This figure displays the performance of LEMMA and several baseline methods on in-distribution and out-of-distribution datasets at different training data sizes.  The results clearly indicate that LEMMA's performance shows consistent improvement as the training data size increases, maintaining a significant lead over the baseline methods.  Conversely, several of the baseline methods show performance plateaus or even declines in accuracy on the out-of-distribution datasets, highlighting LEMMA's superior generalization capabilities.
> <details>
> <summary>read the caption</summary>
> Figure 5: Performance comparison with varying data size on LLaMA3-8B. LEMMA consistently demonstrates robust performance improvements in both in-distribution and out-of-distribution tasks, while baseline methods (e.g., ISC and RefAug) tend to plateau or even decline on out-of-distribution datasets.
> </details>



![](https://arxiv.org/html/2503.17439/x15.png)

> 🔼 This figure shows the distribution of different error types made by the LLaMA3 model on the MATH dataset.  The chart visually represents the frequency of various error categories, such as Calculation Errors (CA), Question Misinterpretation Errors (QM), Formula Confusion Errors (FC), Missing Steps (MS), and others.  It provides a quantitative overview of the model's performance shortcomings, highlighting the areas where the model most frequently makes mistakes during mathematical problem-solving.
> <details>
> <summary>read the caption</summary>
> (a) LLaMA3-MATH
> </details>



![](https://arxiv.org/html/2503.17439/x16.png)

> 🔼 Figure 3(b) shows the distribution of different error types in the MATH dataset, specifically for the DeepSeekMath-7B model.  The figure is a bar chart visualizing the frequency of each error type as categorized in Table 1 of the paper.  The error categories include Question Misinterpretation, Formula Confusion, Calculation, Missing Step, and Confusing Concept errors.  This data highlights the types of mistakes that the DeepSeekMath model frequently makes while solving mathematical problems, providing insights into the model's weaknesses.
> <details>
> <summary>read the caption</summary>
> (b) DeepSeekMath-MATH
> </details>



![](https://arxiv.org/html/2503.17439/x17.png)

> 🔼 This figure displays the distribution of different error types before and after fine-tuning using two methods: LEMMA and standard Supervised Fine-Tuning (SFT).  It shows that before fine-tuning, various error types are present at different rates.  After fine-tuning with LEMMA, the frequency of all error types is consistently reduced.  In contrast, SFT improves overall accuracy, but leads to an increase in certain specific error types. This illustrates that LEMMA's structured approach to learning from errors effectively mitigates various errors, while SFT may cause an increase in specific error types despite improving overall accuracy. The graphs use bar charts to visually compare the error type distributions in the before, SFT, and LEMMA scenarios for two different datasets.
> <details>
> <summary>read the caption</summary>
> Figure 6: Error type changes after fine-tuning. LEMMA consistently decreases the prevalence of all types of errors, while SFT results in an increase of specific error.
> </details>



![](https://arxiv.org/html/2503.17439/x18.png)

> 🔼 This figure shows the distribution of different error types in model-generated solutions for the LLaMA3-8B model.  It displays a breakdown of the percentage of errors attributed to different categories, providing insights into the types of mistakes the model is most prone to making. This is a key finding used in the error analysis section of the paper to understand model-generated errors.
> <details>
> <summary>read the caption</summary>
> (a) LLaMA3-8B
> </details>



![](https://arxiv.org/html/2503.17439/x19.png)

> 🔼 Figure 3 presents a breakdown of error types identified in various LLMs while solving mathematical problems.  Panel (b) specifically shows the distribution of these error types within the Mistral-7B language model.  It visually represents the percentage of each error category (such as Question Misinterpretation, Formula Confusion, Calculation Error, etc.) that the Mistral-7B model made. This allows for a comparison of error types across different models, helping to understand the strengths and weaknesses of each model in mathematical reasoning.
> <details>
> <summary>read the caption</summary>
> (b) Mistral-7B
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S4.T2.6.4">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T2.6.4.5.1">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_tt" id="S4.T2.6.4.5.1.1" rowspan="2" style="padding-top:-0.25pt;padding-bottom:-0.25pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.6.4.5.1.1.1">Model</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S4.T2.6.4.5.1.2" rowspan="2" style="padding-top:-0.25pt;padding-bottom:-0.25pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.6.4.5.1.2.1"># Samples</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" colspan="2" id="S4.T2.6.4.5.1.3" style="padding-top:-0.25pt;padding-bottom:-0.25pt;"><span class="ltx_text ltx_font_italic" id="S4.T2.6.4.5.1.3.1">In-Distribution</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" colspan="5" id="S4.T2.6.4.5.1.4" style="padding-top:-0.25pt;padding-bottom:-0.25pt;"><span class="ltx_text ltx_font_italic" id="S4.T2.6.4.5.1.4.1">Out-Of-Distribution</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.6.4.5.1.5" rowspan="2" style="padding-top:-0.25pt;padding-bottom:-0.25pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.6.4.5.1.5.1">Avg.</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.6.4.6.2">
<td class="ltx_td ltx_align_center" id="S4.T2.6.4.6.2.1" style="padding-top:-0.25pt;padding-bottom:-0.25pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.6.4.6.2.1.1">GSM8K</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.6.4.6.2.2" style="padding-top:-0.25pt;padding-bottom:-0.25pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.6.4.6.2.2.1">MATH</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.4.6.2.3" style="padding-top:-0.25pt;padding-bottom:-0.25pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.6.4.6.2.3.1">ASDIV</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.4.6.2.4" style="padding-top:-0.25pt;padding-bottom:-0.25pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.6.4.6.2.4.1">Mathematics</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.4.6.2.5" style="padding-top:-0.25pt;padding-bottom:-0.25pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.6.4.6.2.5.1">MAWPS</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.4.6.2.6" style="padding-top:-0.25pt;padding-bottom:-0.25pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.6.4.6.2.6.1">SVAMP</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.6.4.6.2.7" style="padding-top:-0.25pt;padding-bottom:-0.25pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.6.4.6.2.7.1">College-Math</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.6.4.7.3">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="9" id="S4.T2.6.4.7.3.1" style="padding-top:-0.25pt;padding-bottom:-0.25pt;"><span class="ltx_text ltx_font_italic" id="S4.T2.6.4.7.3.1.1"> <span class="ltx_text ltx_font_bold" id="S4.T2.6.4.7.3.1.1.1">LLaMA3-8B</span></span>
</td>
<td class="ltx_td ltx_border_t" id="S4.T2.6.4.7.3.2" style="padding-top:-0.25pt;padding-bottom:-0.25pt;"></td>
</tr>
<tr class="ltx_tr" id="S4.T2.6.4.8.4">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S4.T2.6.4.8.4.1" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">SFT</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.6.4.8.4.2" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">14.97k</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.6.4.8.4.3" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">65.5</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.6.4.8.4.4" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">19.3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.6.4.8.4.5" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">72.1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.6.4.8.4.6" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">23.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.6.4.8.4.7" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">83.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.6.4.8.4.8" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">67.1</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.6.4.8.4.9" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">13.3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.6.4.8.4.10" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">49.1</td>
</tr>
<tr class="ltx_tr" id="S4.T2.6.4.9.5">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T2.6.4.9.5.1" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">RFT</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.6.4.9.5.2" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">86.52k</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.4.9.5.3" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">67.3</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.6.4.9.5.4" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">21.1</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.4.9.5.5" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">74.8</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.4.9.5.6" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">24.9</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.4.9.5.7" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">81.8</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.4.9.5.8" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">69.9</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.6.4.9.5.9" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">16.7</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.4.9.5.10" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">50.9</td>
</tr>
<tr class="ltx_tr" id="S4.T2.6.4.10.6">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T2.6.4.10.6.1" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">MetaMath</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.6.4.10.6.2" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">394.99k</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.4.10.6.3" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">79.2</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.6.4.10.6.4" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">34.1</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.4.10.6.5" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">81.9</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.4.10.6.6" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">35.3</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.4.10.6.7" style="padding-top:-0.25pt;padding-bottom:-0.25pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.6.4.10.6.7.1">88.9</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.4.10.6.8" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">76.1</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.6.4.10.6.9" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">20.5</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.4.10.6.10" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">59.4</td>
</tr>
<tr class="ltx_tr" id="S4.T2.6.4.11.7">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T2.6.4.11.7.1" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">GPTAug</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.6.4.11.7.2" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">88.62k</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.4.11.7.3" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">72.1</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.6.4.11.7.4" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">31.8</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.4.11.7.5" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">81.2</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.4.11.7.6" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">36.5</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.4.11.7.7" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">85.9</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.4.11.7.8" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">79.7</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.6.4.11.7.9" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">21.2</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.4.11.7.10" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">58.3</td>
</tr>
<tr class="ltx_tr" id="S4.T2.6.4.12.8">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S4.T2.6.4.12.8.1" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">ISC</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.6.4.12.8.2" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">86.78k</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.6.4.12.8.3" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">70.8</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.6.4.12.8.4" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">33.4</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.6.4.12.8.5" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">81.1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.6.4.12.8.6" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">31.8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.6.4.12.8.7" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">82.3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.6.4.12.8.8" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">79.7</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.6.4.12.8.9" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">20.2</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.6.4.12.8.10" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">57.0</td>
</tr>
<tr class="ltx_tr" id="S4.T2.4.2.2">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T2.4.2.2.2" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">S<sup class="ltx_sup" id="S4.T2.4.2.2.2.1">3</sup>C-Math<sup class="ltx_sup" id="S4.T2.4.2.2.2.2"><span class="ltx_text ltx_font_italic" id="S4.T2.4.2.2.2.2.1">†</span></sup> (w/ MetaMath)</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.4.2.2.3" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">927k</td>
<td class="ltx_td ltx_align_center" id="S4.T2.4.2.2.4" style="padding-top:-0.25pt;padding-bottom:-0.25pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.4.2.2.4.1">82.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.4.2.2.5" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">33.1</td>
<td class="ltx_td ltx_align_center" id="S4.T2.4.2.2.6" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">-</td>
<td class="ltx_td ltx_align_center" id="S4.T2.4.2.2.7" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">-</td>
<td class="ltx_td ltx_align_center" id="S4.T2.4.2.2.8" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">-</td>
<td class="ltx_td ltx_align_center" id="S4.T2.4.2.2.9" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">81.8</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.4.2.2.10" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">-</td>
<td class="ltx_td ltx_align_center" id="S4.T2.4.2.2.11" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">-</td>
</tr>
<tr class="ltx_tr" id="S4.T2.6.4.13.9">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T2.6.4.13.9.1" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">RefAug</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.6.4.13.9.2" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">29.94k</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.4.13.9.3" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">75.9</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.6.4.13.9.4" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">32.6</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.4.13.9.5" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">82.3</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.4.13.9.6" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">35.5</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.4.13.9.7" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">88.4</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.4.13.9.8" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">81.5</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.6.4.13.9.9" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">21.0</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.4.13.9.10" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">59.6</td>
</tr>
<tr class="ltx_tr" id="S4.T2.6.4.14.10">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T2.6.4.14.10.1" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">RefAug-90k</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.6.4.14.10.2" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">89.92k</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.4.14.10.3" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">77.4</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.6.4.14.10.4" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">34.2</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.4.14.10.5" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">82.1</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.4.14.10.6" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">35.7</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.4.14.10.7" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">87.7</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.4.14.10.8" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">81.8</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.6.4.14.10.9" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">21.9</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.4.14.10.10" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">60.1</td>
</tr>
<tr class="ltx_tr" id="S4.T2.6.4.15.11" style="background-color:#E6E6E6;">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S4.T2.6.4.15.11.1" style="padding-top:-0.25pt;padding-bottom:-0.25pt;"><span class="ltx_text" id="S4.T2.6.4.15.11.1.1" style="background-color:#E6E6E6;">LEMMA</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.6.4.15.11.2" style="padding-top:-0.25pt;padding-bottom:-0.25pt;"><span class="ltx_text" id="S4.T2.6.4.15.11.2.1" style="background-color:#E6E6E6;">88.90k</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.6.4.15.11.3" style="padding-top:-0.25pt;padding-bottom:-0.25pt;"><span class="ltx_text" id="S4.T2.6.4.15.11.3.1" style="background-color:#E6E6E6;">79.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.6.4.15.11.4" style="padding-top:-0.25pt;padding-bottom:-0.25pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.6.4.15.11.4.1" style="background-color:#E6E6E6;">38.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.6.4.15.11.5" style="padding-top:-0.25pt;padding-bottom:-0.25pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.6.4.15.11.5.1" style="background-color:#E6E6E6;">84.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.6.4.15.11.6" style="padding-top:-0.25pt;padding-bottom:-0.25pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.6.4.15.11.6.1" style="background-color:#E6E6E6;">39.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.6.4.15.11.7" style="padding-top:-0.25pt;padding-bottom:-0.25pt;"><span class="ltx_text" id="S4.T2.6.4.15.11.7.1" style="background-color:#E6E6E6;">88.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.6.4.15.11.8" style="padding-top:-0.25pt;padding-bottom:-0.25pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.6.4.15.11.8.1" style="background-color:#E6E6E6;">82.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.6.4.15.11.9" style="padding-top:-0.25pt;padding-bottom:-0.25pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.6.4.15.11.9.1" style="background-color:#E6E6E6;">24.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.6.4.15.11.10" style="padding-top:-0.25pt;padding-bottom:-0.25pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.6.4.15.11.10.1" style="background-color:#E6E6E6;">62.4</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.6.4.16.12" style="background-color:#E6E6E6;">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T2.6.4.16.12.1" style="padding-top:-0.25pt;padding-bottom:-0.25pt;"><span class="ltx_text" id="S4.T2.6.4.16.12.1.1" style="background-color:#E6E6E6;">LEMMA (w/ MetaMath)</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.6.4.16.12.2" style="padding-top:-0.25pt;padding-bottom:-0.25pt;"><span class="ltx_text" id="S4.T2.6.4.16.12.2.1" style="background-color:#E6E6E6;">403.59k</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.4.16.12.3" style="padding-top:-0.25pt;padding-bottom:-0.25pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.6.4.16.12.3.1" style="background-color:#E6E6E6;">86.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.6.4.16.12.4" style="padding-top:-0.25pt;padding-bottom:-0.25pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.6.4.16.12.4.1" style="background-color:#E6E6E6;">42.3</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.4.16.12.5" style="padding-top:-0.25pt;padding-bottom:-0.25pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.6.4.16.12.5.1" style="background-color:#E6E6E6;">87.1</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.4.16.12.6" style="padding-top:-0.25pt;padding-bottom:-0.25pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.6.4.16.12.6.1" style="background-color:#E6E6E6;">45.8</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.4.16.12.7" style="padding-top:-0.25pt;padding-bottom:-0.25pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.6.4.16.12.7.1" style="background-color:#E6E6E6;">89.5</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.4.16.12.8" style="padding-top:-0.25pt;padding-bottom:-0.25pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.6.4.16.12.8.1" style="background-color:#E6E6E6;">82.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.6.4.16.12.9" style="padding-top:-0.25pt;padding-bottom:-0.25pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.6.4.16.12.9.1" style="background-color:#E6E6E6;">24.3</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.4.16.12.10" style="padding-top:-0.25pt;padding-bottom:-0.25pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.6.4.16.12.10.1" style="background-color:#E6E6E6;">65.5</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.6.4.17.13">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="9" id="S4.T2.6.4.17.13.1" style="padding-top:-0.25pt;padding-bottom:-0.25pt;"><span class="ltx_text ltx_font_italic" id="S4.T2.6.4.17.13.1.1"> <span class="ltx_text ltx_font_bold" id="S4.T2.6.4.17.13.1.1.1">DeepSeekMath-7B</span></span>
</td>
<td class="ltx_td ltx_border_t" id="S4.T2.6.4.17.13.2" style="padding-top:-0.25pt;padding-bottom:-0.25pt;"></td>
</tr>
<tr class="ltx_tr" id="S4.T2.6.4.18.14">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S4.T2.6.4.18.14.1" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">SFT</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.6.4.18.14.2" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">14.97k</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.6.4.18.14.3" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">68.1</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.6.4.18.14.4" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">35.2</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.6.4.18.14.5" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">80.9</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.6.4.18.14.6" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">39.6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.6.4.18.14.7" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">88.1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.6.4.18.14.8" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">68.1</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.6.4.18.14.9" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">28.8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.6.4.18.14.10" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">58.4</td>
</tr>
<tr class="ltx_tr" id="S4.T2.6.4.19.15">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T2.6.4.19.15.1" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">RFT</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.6.4.19.15.2" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">86.52k</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.4.19.15.3" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">73.3</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.6.4.19.15.4" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">39.3</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.4.19.15.5" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">85.2</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.4.19.15.6" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">46.2</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.4.19.15.7" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">89.3</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.4.19.15.8" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">70.9</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.6.4.19.15.9" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">31.7</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.4.19.15.10" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">62.3</td>
</tr>
<tr class="ltx_tr" id="S4.T2.6.4.20.16">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T2.6.4.20.16.1" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">MetaMath</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.6.4.20.16.2" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">394.99k</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.4.20.16.3" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">79.4</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.6.4.20.16.4" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">42.0</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.4.20.16.5" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">87.8</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.4.20.16.6" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">49.0</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.4.20.16.7" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">90.2</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.4.20.16.8" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">79.4</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.6.4.20.16.9" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">31.6</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.4.20.16.10" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">65.6</td>
</tr>
<tr class="ltx_tr" id="S4.T2.6.4.21.17">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T2.6.4.21.17.1" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">GPTAug</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.6.4.21.17.2" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">88.62k</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.4.21.17.3" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">77.8</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.6.4.21.17.4" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">45.5</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.4.21.17.5" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">88.7</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.4.21.17.6" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">52.6</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.4.21.17.7" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">89.6</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.4.21.17.8" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">71.0</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.6.4.21.17.9" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">31.0</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.4.21.17.10" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">65.2</td>
</tr>
<tr class="ltx_tr" id="S4.T2.6.4.22.18">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S4.T2.6.4.22.18.1" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">ISC</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.6.4.22.18.2" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">86.78k</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.6.4.22.18.3" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">66.3</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.6.4.22.18.4" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">36.8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.6.4.22.18.5" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">82.2</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.6.4.22.18.6" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">43.1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.6.4.22.18.7" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">89.3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.6.4.22.18.8" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">71.2</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.6.4.22.18.9" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">32.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.6.4.22.18.10" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">60.1</td>
</tr>
<tr class="ltx_tr" id="S4.T2.6.4.4">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T2.6.4.4.2" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">S<sup class="ltx_sup" id="S4.T2.6.4.4.2.1">3</sup>C-Math<sup class="ltx_sup" id="S4.T2.6.4.4.2.2"><span class="ltx_text ltx_font_italic" id="S4.T2.6.4.4.2.2.1">†</span></sup> (w/ MetaMath)</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.6.4.4.3" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">927k</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.4.4.4" style="padding-top:-0.25pt;padding-bottom:-0.25pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.6.4.4.4.1">82.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.6.4.4.5" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">41.4</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.4.4.6" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">-</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.4.4.7" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">-</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.4.4.8" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">-</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.4.4.9" style="padding-top:-0.25pt;padding-bottom:-0.25pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.6.4.4.9.1">82.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.6.4.4.10" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">-</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.4.4.11" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">-</td>
</tr>
<tr class="ltx_tr" id="S4.T2.6.4.23.19">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T2.6.4.23.19.1" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">RefAug</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.6.4.23.19.2" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">29.94k</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.4.23.19.3" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">75.5</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.6.4.23.19.4" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">39.5</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.4.23.19.5" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">81.2</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.4.23.19.6" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">56.9</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.4.23.19.7" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">82.1</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.4.23.19.8" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">72.8</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.6.4.23.19.9" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">30.4</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.4.23.19.10" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">62.6</td>
</tr>
<tr class="ltx_tr" id="S4.T2.6.4.24.20">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T2.6.4.24.20.1" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">RefAug-90k</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.6.4.24.20.2" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">89.92k</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.4.24.20.3" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">76.7</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.6.4.24.20.4" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">42.5</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.4.24.20.5" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">82.4</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.4.24.20.6" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">57.5</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.4.24.20.7" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">83.1</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.4.24.20.8" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">74.1</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.6.4.24.20.9" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">30.6</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.4.24.20.10" style="padding-top:-0.25pt;padding-bottom:-0.25pt;">63.8</td>
</tr>
<tr class="ltx_tr" id="S4.T2.6.4.25.21" style="background-color:#E6E6E6;">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S4.T2.6.4.25.21.1" style="padding-top:-0.25pt;padding-bottom:-0.25pt;"><span class="ltx_text" id="S4.T2.6.4.25.21.1.1" style="background-color:#E6E6E6;">LEMMA</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.6.4.25.21.2" style="padding-top:-0.25pt;padding-bottom:-0.25pt;"><span class="ltx_text" id="S4.T2.6.4.25.21.2.1" style="background-color:#E6E6E6;">88.90k</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.6.4.25.21.3" style="padding-top:-0.25pt;padding-bottom:-0.25pt;"><span class="ltx_text" id="S4.T2.6.4.25.21.3.1" style="background-color:#E6E6E6;">80.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.6.4.25.21.4" style="padding-top:-0.25pt;padding-bottom:-0.25pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.6.4.25.21.4.1" style="background-color:#E6E6E6;">50.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.6.4.25.21.5" style="padding-top:-0.25pt;padding-bottom:-0.25pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.6.4.25.21.5.1" style="background-color:#E6E6E6;">89.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.6.4.25.21.6" style="padding-top:-0.25pt;padding-bottom:-0.25pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.6.4.25.21.6.1" style="background-color:#E6E6E6;">61.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.6.4.25.21.7" style="padding-top:-0.25pt;padding-bottom:-0.25pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.6.4.25.21.7.1" style="background-color:#E6E6E6;">90.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.6.4.25.21.8" style="padding-top:-0.25pt;padding-bottom:-0.25pt;"><span class="ltx_text" id="S4.T2.6.4.25.21.8.1" style="background-color:#E6E6E6;">81.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.6.4.25.21.9" style="padding-top:-0.25pt;padding-bottom:-0.25pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.6.4.25.21.9.1" style="background-color:#E6E6E6;">35.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.6.4.25.21.10" style="padding-top:-0.25pt;padding-bottom:-0.25pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.6.4.25.21.10.1" style="background-color:#E6E6E6;">70.1</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.6.4.26.22" style="background-color:#E6E6E6;">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_r" id="S4.T2.6.4.26.22.1" style="padding-top:-0.25pt;padding-bottom:-0.25pt;"><span class="ltx_text" id="S4.T2.6.4.26.22.1.1" style="background-color:#E6E6E6;">LEMMA (w/ MetaMath)</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S4.T2.6.4.26.22.2" style="padding-top:-0.25pt;padding-bottom:-0.25pt;"><span class="ltx_text" id="S4.T2.6.4.26.22.2.1" style="background-color:#E6E6E6;">403.59k</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.6.4.26.22.3" style="padding-top:-0.25pt;padding-bottom:-0.25pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.6.4.26.22.3.1" style="background-color:#E6E6E6;">83.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S4.T2.6.4.26.22.4" style="padding-top:-0.25pt;padding-bottom:-0.25pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.6.4.26.22.4.1" style="background-color:#E6E6E6;">51.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.6.4.26.22.5" style="padding-top:-0.25pt;padding-bottom:-0.25pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.6.4.26.22.5.1" style="background-color:#E6E6E6;">90.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.6.4.26.22.6" style="padding-top:-0.25pt;padding-bottom:-0.25pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.6.4.26.22.6.1" style="background-color:#E6E6E6;">65.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.6.4.26.22.7" style="padding-top:-0.25pt;padding-bottom:-0.25pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.6.4.26.22.7.1" style="background-color:#E6E6E6;">91.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.6.4.26.22.8" style="padding-top:-0.25pt;padding-bottom:-0.25pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.6.4.26.22.8.1" style="background-color:#E6E6E6;">82.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S4.T2.6.4.26.22.9" style="padding-top:-0.25pt;padding-bottom:-0.25pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.6.4.26.22.9.1" style="background-color:#E6E6E6;">35.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.6.4.26.22.10" style="padding-top:-0.25pt;padding-bottom:-0.25pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.6.4.26.22.10.1" style="background-color:#E6E6E6;">71.4</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a performance comparison of various large language models (LLMs) on a range of mathematical reasoning tasks.  It compares the accuracy of different models on three in-distribution datasets (GSM8K, MATH, and ASDIV) and five out-of-distribution datasets (Mathematics, MAWPS, SVAMP, and College-Math). The results are shown in terms of average accuracy across all datasets. The table also includes the number of training samples used for each model.  Note that some numbers are taken from another research paper (Yan et al., 2024), as indicated by a dagger symbol.  The best performing model for each dataset is shown in bold, while the second-best performing model is underlined.
> <details>
> <summary>read the caption</summary>
> Table 2: Performance comparison on GSM8K, MATH and out-of-distribution datasets. †: numbers reported in Yan et al. (2024). The best result is highlighted in bold, and the second best is underlined.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S4.T3.5.1">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T3.5.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_tt" id="S4.T3.5.1.1.1.1" rowspan="2" style="padding-top:-0.5pt;padding-bottom:-0.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.5.1.1.1.1.1">Method</span></th>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" colspan="3" id="S4.T3.5.1.1.1.2" style="padding-top:-0.5pt;padding-bottom:-0.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.5.1.1.1.2.1">MathChat-FQA</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T3.5.1.1.1.3" rowspan="2" style="padding-top:-0.5pt;padding-bottom:-0.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.5.1.1.1.3.1">MathChat-EC</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.5.1.2.2">
<td class="ltx_td ltx_align_center" id="S4.T3.5.1.2.2.1" style="padding-top:-0.5pt;padding-bottom:-0.5pt;"><span class="ltx_text ltx_font_italic" id="S4.T3.5.1.2.2.1.1">1st</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.5.1.2.2.2" style="padding-top:-0.5pt;padding-bottom:-0.5pt;"><span class="ltx_text ltx_font_italic" id="S4.T3.5.1.2.2.2.1">2nd</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.5.1.2.2.3" style="padding-top:-0.5pt;padding-bottom:-0.5pt;"><span class="ltx_text ltx_font_italic" id="S4.T3.5.1.2.2.3.1">3rd</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.5.1.3.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S4.T3.5.1.3.3.1" style="padding-top:-0.5pt;padding-bottom:-0.5pt;">SFT</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.5.1.3.3.2" style="padding-top:-0.5pt;padding-bottom:-0.5pt;">63.2</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.5.1.3.3.3" style="padding-top:-0.5pt;padding-bottom:-0.5pt;">37.2</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T3.5.1.3.3.4" style="padding-top:-0.5pt;padding-bottom:-0.5pt;">28.3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.5.1.3.3.5" style="padding-top:-0.5pt;padding-bottom:-0.5pt;">66.1</td>
</tr>
<tr class="ltx_tr" id="S4.T3.5.1.4.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T3.5.1.4.4.1" style="padding-top:-0.5pt;padding-bottom:-0.5pt;">RFT</th>
<td class="ltx_td ltx_align_center" id="S4.T3.5.1.4.4.2" style="padding-top:-0.5pt;padding-bottom:-0.5pt;">64.0</td>
<td class="ltx_td ltx_align_center" id="S4.T3.5.1.4.4.3" style="padding-top:-0.5pt;padding-bottom:-0.5pt;">40.8</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.5.1.4.4.4" style="padding-top:-0.5pt;padding-bottom:-0.5pt;">29.1</td>
<td class="ltx_td ltx_align_center" id="S4.T3.5.1.4.4.5" style="padding-top:-0.5pt;padding-bottom:-0.5pt;">62.6</td>
</tr>
<tr class="ltx_tr" id="S4.T3.5.1.5.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T3.5.1.5.5.1" style="padding-top:-0.5pt;padding-bottom:-0.5pt;">MetaMath</th>
<td class="ltx_td ltx_align_center" id="S4.T3.5.1.5.5.2" style="padding-top:-0.5pt;padding-bottom:-0.5pt;">80.3</td>
<td class="ltx_td ltx_align_center" id="S4.T3.5.1.5.5.3" style="padding-top:-0.5pt;padding-bottom:-0.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.5.1.5.5.3.1">49.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.5.1.5.5.4" style="padding-top:-0.5pt;padding-bottom:-0.5pt;">40.1</td>
<td class="ltx_td ltx_align_center" id="S4.T3.5.1.5.5.5" style="padding-top:-0.5pt;padding-bottom:-0.5pt;">66.6</td>
</tr>
<tr class="ltx_tr" id="S4.T3.5.1.6.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T3.5.1.6.6.1" style="padding-top:-0.5pt;padding-bottom:-0.5pt;">GPTAug</th>
<td class="ltx_td ltx_align_center" id="S4.T3.5.1.6.6.2" style="padding-top:-0.5pt;padding-bottom:-0.5pt;">78.8</td>
<td class="ltx_td ltx_align_center" id="S4.T3.5.1.6.6.3" style="padding-top:-0.5pt;padding-bottom:-0.5pt;">45.6</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.5.1.6.6.4" style="padding-top:-0.5pt;padding-bottom:-0.5pt;">37.9</td>
<td class="ltx_td ltx_align_center" id="S4.T3.5.1.6.6.5" style="padding-top:-0.5pt;padding-bottom:-0.5pt;">80.0</td>
</tr>
<tr class="ltx_tr" id="S4.T3.5.1.7.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S4.T3.5.1.7.7.1" style="padding-top:-0.5pt;padding-bottom:-0.5pt;">ISC</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.5.1.7.7.2" style="padding-top:-0.5pt;padding-bottom:-0.5pt;">78.4</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.5.1.7.7.3" style="padding-top:-0.5pt;padding-bottom:-0.5pt;">46.8</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T3.5.1.7.7.4" style="padding-top:-0.5pt;padding-bottom:-0.5pt;">39.3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.5.1.7.7.5" style="padding-top:-0.5pt;padding-bottom:-0.5pt;">78.5</td>
</tr>
<tr class="ltx_tr" id="S4.T3.5.1.8.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T3.5.1.8.8.1" style="padding-top:-0.5pt;padding-bottom:-0.5pt;">RefAug</th>
<td class="ltx_td ltx_align_center" id="S4.T3.5.1.8.8.2" style="padding-top:-0.5pt;padding-bottom:-0.5pt;">69.3</td>
<td class="ltx_td ltx_align_center" id="S4.T3.5.1.8.8.3" style="padding-top:-0.5pt;padding-bottom:-0.5pt;">45.0</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.5.1.8.8.4" style="padding-top:-0.5pt;padding-bottom:-0.5pt;">36.5</td>
<td class="ltx_td ltx_align_center" id="S4.T3.5.1.8.8.5" style="padding-top:-0.5pt;padding-bottom:-0.5pt;">82.7</td>
</tr>
<tr class="ltx_tr" id="S4.T3.5.1.9.9">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T3.5.1.9.9.1" style="padding-top:-0.5pt;padding-bottom:-0.5pt;">RefAug-90k</th>
<td class="ltx_td ltx_align_center" id="S4.T3.5.1.9.9.2" style="padding-top:-0.5pt;padding-bottom:-0.5pt;">71.7</td>
<td class="ltx_td ltx_align_center" id="S4.T3.5.1.9.9.3" style="padding-top:-0.5pt;padding-bottom:-0.5pt;">47.0</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.5.1.9.9.4" style="padding-top:-0.5pt;padding-bottom:-0.5pt;">38.6</td>
<td class="ltx_td ltx_align_center" id="S4.T3.5.1.9.9.5" style="padding-top:-0.5pt;padding-bottom:-0.5pt;">83.8</td>
</tr>
<tr class="ltx_tr" id="S4.T3.5.1.10.10" style="background-color:#E6E6E6;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_r ltx_border_t" id="S4.T3.5.1.10.10.1" style="padding-top:-0.5pt;padding-bottom:-0.5pt;"><span class="ltx_text" id="S4.T3.5.1.10.10.1.1" style="background-color:#E6E6E6;">LEMMA</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T3.5.1.10.10.2" style="padding-top:-0.5pt;padding-bottom:-0.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.5.1.10.10.2.1" style="background-color:#E6E6E6;">83.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T3.5.1.10.10.3" style="padding-top:-0.5pt;padding-bottom:-0.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.5.1.10.10.3.1" style="background-color:#E6E6E6;">49.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r ltx_border_t" id="S4.T3.5.1.10.10.4" style="padding-top:-0.5pt;padding-bottom:-0.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.5.1.10.10.4.1" style="background-color:#E6E6E6;">43.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T3.5.1.10.10.5" style="padding-top:-0.5pt;padding-bottom:-0.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.5.1.10.10.5.1" style="background-color:#E6E6E6;">84.7</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the performance of different LLMs on reflective mathematical reasoning tasks using the LLaMA3-8B model.  The tasks evaluate the models' ability to not only solve math problems but also to identify and correct their own errors during the problem-solving process. The table shows the accuracy of various models on three subtasks of MathChat (MathChat-FQA, MathChat-FQA-3rd, and MathChat-EC), demonstrating the effectiveness of different methods in fostering reflective mathematical reasoning capabilities in LLMs.
> <details>
> <summary>read the caption</summary>
> Table 3: Evaluation on reflective math reasoning using LLaMA3-8B. Best result is highlighted in bold.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S5.T4.1.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S5.T4.1.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_r ltx_border_tt" id="S5.T4.1.1.1.1.1" style="padding-top:-0.5pt;padding-bottom:-0.5pt;">Method</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T4.1.1.1.1.2" style="padding-top:-0.5pt;padding-bottom:-0.5pt;">GSM8K</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T4.1.1.1.1.3" style="padding-top:-0.5pt;padding-bottom:-0.5pt;">MATH</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S5.T4.1.1.2.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S5.T4.1.1.2.1.1" style="padding-top:-0.5pt;padding-bottom:-0.5pt;">LEMMA</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.1.1.2.1.2" style="padding-top:-0.5pt;padding-bottom:-0.5pt;"><span class="ltx_text ltx_font_bold" id="S5.T4.1.1.2.1.2.1">79.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.1.1.2.1.3" style="padding-top:-0.5pt;padding-bottom:-0.5pt;"><span class="ltx_text ltx_font_bold" id="S5.T4.1.1.2.1.3.1">38.3</span></td>
</tr>
<tr class="ltx_tr" id="S5.T4.1.1.3.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S5.T4.1.1.3.2.1" style="padding-top:-0.5pt;padding-bottom:-0.5pt;">w/o Error Aug.</th>
<td class="ltx_td ltx_align_center" id="S5.T4.1.1.3.2.2" style="padding-top:-0.5pt;padding-bottom:-0.5pt;">72.8</td>
<td class="ltx_td ltx_align_center" id="S5.T4.1.1.3.2.3" style="padding-top:-0.5pt;padding-bottom:-0.5pt;">28.8</td>
</tr>
<tr class="ltx_tr" id="S5.T4.1.1.4.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S5.T4.1.1.4.3.1" style="padding-top:-0.5pt;padding-bottom:-0.5pt;">w/o Error Aug. (90k)</th>
<td class="ltx_td ltx_align_center" id="S5.T4.1.1.4.3.2" style="padding-top:-0.5pt;padding-bottom:-0.5pt;">74.3</td>
<td class="ltx_td ltx_align_center" id="S5.T4.1.1.4.3.3" style="padding-top:-0.5pt;padding-bottom:-0.5pt;">32.1</td>
</tr>
<tr class="ltx_tr" id="S5.T4.1.1.5.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S5.T4.1.1.5.4.1" style="padding-top:-0.5pt;padding-bottom:-0.5pt;">w/o Fresh &amp; Restart</th>
<td class="ltx_td ltx_align_center" id="S5.T4.1.1.5.4.2" style="padding-top:-0.5pt;padding-bottom:-0.5pt;">75.2</td>
<td class="ltx_td ltx_align_center" id="S5.T4.1.1.5.4.3" style="padding-top:-0.5pt;padding-bottom:-0.5pt;">34.4</td>
</tr>
<tr class="ltx_tr" id="S5.T4.1.1.6.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_r" id="S5.T4.1.1.6.5.1" style="padding-top:-0.5pt;padding-bottom:-0.5pt;">w/o Fresh &amp; Restart (90k)</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T4.1.1.6.5.2" style="padding-top:-0.5pt;padding-bottom:-0.5pt;">75.7</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T4.1.1.6.5.3" style="padding-top:-0.5pt;padding-bottom:-0.5pt;">34.1</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of an ablation study conducted to evaluate the individual contributions of different components within the LEMMA framework.  It shows the performance of LEMMA models when specific components, such as the error augmentation module or the Fresh & Restart correction strategy, are removed. This analysis helps to understand the impact of each component on the overall performance and identify the key elements responsible for LEMMA's success in improving the mathematical reasoning capabilities of LLMs.
> <details>
> <summary>read the caption</summary>
> Table 4: Ablation study on each component of LEMMA.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="A1.T5.7.3">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A1.T5.7.3.4.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_tt" id="A1.T5.7.3.4.1.1"><span class="ltx_text ltx_font_bold" id="A1.T5.7.3.4.1.1.1">Method</span></th>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A1.T5.7.3.4.1.2"><span class="ltx_text ltx_font_bold" id="A1.T5.7.3.4.1.2.1"># Solution</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A1.T5.7.3.4.1.3"><span class="ltx_text ltx_font_bold" id="A1.T5.7.3.4.1.3.1"># Avg. Token</span></td>
</tr>
<tr class="ltx_tr" id="A1.T5.7.3.5.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="A1.T5.7.3.5.2.1">SFT</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T5.7.3.5.2.2">14.97k</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T5.7.3.5.2.3">242.85</td>
</tr>
<tr class="ltx_tr" id="A1.T5.5.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A1.T5.5.1.1.1">RFT<sup class="ltx_sup" id="A1.T5.5.1.1.1.1"><span class="ltx_text ltx_font_italic" id="A1.T5.5.1.1.1.1.1">†</span></sup> <cite class="ltx_cite ltx_citemacro_cite">Yuan et al. (<a class="ltx_ref" href="https://arxiv.org/html/2503.17439v1#bib.bib57" title="">2023</a>)</cite>
</th>
<td class="ltx_td ltx_align_center" id="A1.T5.5.1.1.2">86.52k</td>
<td class="ltx_td ltx_align_center" id="A1.T5.5.1.1.3">172.96</td>
</tr>
<tr class="ltx_tr" id="A1.T5.7.3.6.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A1.T5.7.3.6.3.1">MetaMath <cite class="ltx_cite ltx_citemacro_cite">Yu et al. (<a class="ltx_ref" href="https://arxiv.org/html/2503.17439v1#bib.bib55" title="">2024a</a>)</cite>
</th>
<td class="ltx_td ltx_align_center" id="A1.T5.7.3.6.3.2">394.99k</td>
<td class="ltx_td ltx_align_center" id="A1.T5.7.3.6.3.3">231.08</td>
</tr>
<tr class="ltx_tr" id="A1.T5.7.3.7.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A1.T5.7.3.7.4.1">GPTAug <cite class="ltx_cite ltx_citemacro_cite">Achiam et al. (<a class="ltx_ref" href="https://arxiv.org/html/2503.17439v1#bib.bib1" title="">2023</a>)</cite>
</th>
<td class="ltx_td ltx_align_center" id="A1.T5.7.3.7.4.2">88.62k</td>
<td class="ltx_td ltx_align_center" id="A1.T5.7.3.7.4.3">619.54</td>
</tr>
<tr class="ltx_tr" id="A1.T5.7.3.8.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="A1.T5.7.3.8.5.1">ISC <cite class="ltx_cite ltx_citemacro_cite">Han et al. (<a class="ltx_ref" href="https://arxiv.org/html/2503.17439v1#bib.bib8" title="">2024</a>)</cite>
</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T5.7.3.8.5.2">86.78k</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T5.7.3.8.5.3">746.71</td>
</tr>
<tr class="ltx_tr" id="A1.T5.7.3.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A1.T5.6.2.2.1">S<sup class="ltx_sup" id="A1.T5.6.2.2.1.1">3</sup>C-Math <cite class="ltx_cite ltx_citemacro_cite">Yan et al. (<a class="ltx_ref" href="https://arxiv.org/html/2503.17439v1#bib.bib53" title="">2024</a>)</cite> (w/ MetaMath)</th>
<td class="ltx_td ltx_align_center" id="A1.T5.7.3.3.2">927k<sup class="ltx_sup" id="A1.T5.7.3.3.2.1">⋆</sup>
</td>
<td class="ltx_td ltx_align_center" id="A1.T5.7.3.3.3">-</td>
</tr>
<tr class="ltx_tr" id="A1.T5.7.3.9.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A1.T5.7.3.9.6.1">RefAug <cite class="ltx_cite ltx_citemacro_cite">Zhang et al. (<a class="ltx_ref" href="https://arxiv.org/html/2503.17439v1#bib.bib62" title="">2024b</a>)</cite>
</th>
<td class="ltx_td ltx_align_center" id="A1.T5.7.3.9.6.2">29.94k</td>
<td class="ltx_td ltx_align_center" id="A1.T5.7.3.9.6.3">737.94</td>
</tr>
<tr class="ltx_tr" id="A1.T5.7.3.10.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A1.T5.7.3.10.7.1">RefAug++ <cite class="ltx_cite ltx_citemacro_cite">Zhang et al. (<a class="ltx_ref" href="https://arxiv.org/html/2503.17439v1#bib.bib62" title="">2024b</a>)</cite>
</th>
<td class="ltx_td ltx_align_center" id="A1.T5.7.3.10.7.2">89.82k</td>
<td class="ltx_td ltx_align_center" id="A1.T5.7.3.10.7.3">770.38</td>
</tr>
<tr class="ltx_tr" id="A1.T5.7.3.11.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="A1.T5.7.3.11.8.1">LEMMA</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T5.7.3.11.8.2">88.90k</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T5.7.3.11.8.3">623.38</td>
</tr>
<tr class="ltx_tr" id="A1.T5.7.3.12.9">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_r" id="A1.T5.7.3.12.9.1">LEMMA (w/ MetaMath)</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T5.7.3.12.9.2">403.59k</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T5.7.3.12.9.3">544.14</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a statistical overview of the datasets used in the paper's experiments. It compares different methods for generating and augmenting training data for mathematical reasoning models. The table shows the number of solutions generated by each method, along with the average number of tokens per solution. It is important to note that the solutions generated by LLaMA3 are explicitly indicated, and the numbers reported in Yan et al. (2024) are also marked.
> <details>
> <summary>read the caption</summary>
> Table 5: Data statistics of the different methods. †: solutions generated by LLaMA3, ⋆: numbers reported in Yan et al. (2024).
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="A1.T6.3.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A1.T6.3.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_r ltx_border_tt" id="A1.T6.3.1.1.1.1" rowspan="2"><span class="ltx_text ltx_font_bold" id="A1.T6.3.1.1.1.1.1">Model</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" colspan="2" id="A1.T6.3.1.1.1.2"><span class="ltx_text ltx_font_italic" id="A1.T6.3.1.1.1.2.1">In-Distribution</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" colspan="5" id="A1.T6.3.1.1.1.3"><span class="ltx_text ltx_font_italic" id="A1.T6.3.1.1.1.3.1">Out-Of-Distribution</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A1.T6.3.1.1.1.4" rowspan="2"><span class="ltx_text ltx_font_bold" id="A1.T6.3.1.1.1.4.1">Avg.</span></th>
</tr>
<tr class="ltx_tr" id="A1.T6.3.1.2.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="A1.T6.3.1.2.2.1"><span class="ltx_text ltx_font_bold" id="A1.T6.3.1.2.2.1.1">GSM8K</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r" id="A1.T6.3.1.2.2.2"><span class="ltx_text ltx_font_bold" id="A1.T6.3.1.2.2.2.1">MATH</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="A1.T6.3.1.2.2.3"><span class="ltx_text ltx_font_bold" id="A1.T6.3.1.2.2.3.1">ASDIV</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="A1.T6.3.1.2.2.4"><span class="ltx_text ltx_font_bold" id="A1.T6.3.1.2.2.4.1">Mathematics</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="A1.T6.3.1.2.2.5"><span class="ltx_text ltx_font_bold" id="A1.T6.3.1.2.2.5.1">MAWPS</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="A1.T6.3.1.2.2.6"><span class="ltx_text ltx_font_bold" id="A1.T6.3.1.2.2.6.1">SVAMP</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r" id="A1.T6.3.1.2.2.7"><span class="ltx_text ltx_font_bold" id="A1.T6.3.1.2.2.7.1">College-Math</span></th>
</tr>
<tr class="ltx_tr" id="A1.T6.3.1.3.3">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_th_row ltx_border_t" colspan="9" id="A1.T6.3.1.3.3.1"><span class="ltx_text ltx_font_italic" id="A1.T6.3.1.3.3.1.1"> <span class="ltx_text ltx_font_bold" id="A1.T6.3.1.3.3.1.1.1">LLaMA-3-8B</span></span>
</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A1.T6.3.1.4.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="A1.T6.3.1.4.1.1">GPTAug</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T6.3.1.4.1.2">72.1</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A1.T6.3.1.4.1.3">31.8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T6.3.1.4.1.4">81.2</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T6.3.1.4.1.5">36.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T6.3.1.4.1.6">85.9</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T6.3.1.4.1.7">79.7</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A1.T6.3.1.4.1.8">21.2</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T6.3.1.4.1.9">58.3</td>
</tr>
<tr class="ltx_tr" id="A1.T6.3.1.5.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A1.T6.3.1.5.2.1">LEMMA (GPT-4o)</th>
<td class="ltx_td ltx_align_center" id="A1.T6.3.1.5.2.2">79.2</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T6.3.1.5.2.3">38.3</td>
<td class="ltx_td ltx_align_center" id="A1.T6.3.1.5.2.4">84.2</td>
<td class="ltx_td ltx_align_center" id="A1.T6.3.1.5.2.5">39.2</td>
<td class="ltx_td ltx_align_center" id="A1.T6.3.1.5.2.6">88.8</td>
<td class="ltx_td ltx_align_center" id="A1.T6.3.1.5.2.7">82.6</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T6.3.1.5.2.8">24.7</td>
<td class="ltx_td ltx_align_center" id="A1.T6.3.1.5.2.9">62.4</td>
</tr>
<tr class="ltx_tr" id="A1.T6.3.1.6.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A1.T6.3.1.6.3.1">LEMMA (LLaMA3)</th>
<td class="ltx_td ltx_align_center" id="A1.T6.3.1.6.3.2">77.3</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T6.3.1.6.3.3">36.4</td>
<td class="ltx_td ltx_align_center" id="A1.T6.3.1.6.3.4">84.1</td>
<td class="ltx_td ltx_align_center" id="A1.T6.3.1.6.3.5">37.9</td>
<td class="ltx_td ltx_align_center" id="A1.T6.3.1.6.3.6">87.7</td>
<td class="ltx_td ltx_align_center" id="A1.T6.3.1.6.3.7">82.7</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T6.3.1.6.3.8">23.1</td>
<td class="ltx_td ltx_align_center" id="A1.T6.3.1.6.3.9">61.3</td>
</tr>
<tr class="ltx_tr" id="A1.T6.3.1.7.4">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" colspan="9" id="A1.T6.3.1.7.4.1"><span class="ltx_text ltx_font_italic" id="A1.T6.3.1.7.4.1.1"> <span class="ltx_text ltx_font_bold" id="A1.T6.3.1.7.4.1.1.1">DeepSeekMath-7B</span></span>
</th>
</tr>
<tr class="ltx_tr" id="A1.T6.3.1.8.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="A1.T6.3.1.8.5.1">GPTAug</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T6.3.1.8.5.2">77.8</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A1.T6.3.1.8.5.3">45.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T6.3.1.8.5.4">88.7</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T6.3.1.8.5.5">52.6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T6.3.1.8.5.6">89.6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T6.3.1.8.5.7">71.0</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A1.T6.3.1.8.5.8">31.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T6.3.1.8.5.9">65.2</td>
</tr>
<tr class="ltx_tr" id="A1.T6.3.1.9.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A1.T6.3.1.9.6.1">LEMMA (GPT-4o)</th>
<td class="ltx_td ltx_align_center" id="A1.T6.3.1.9.6.2">80.4</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T6.3.1.9.6.3">50.6</td>
<td class="ltx_td ltx_align_center" id="A1.T6.3.1.9.6.4">89.8</td>
<td class="ltx_td ltx_align_center" id="A1.T6.3.1.9.6.5">61.6</td>
<td class="ltx_td ltx_align_center" id="A1.T6.3.1.9.6.6">90.9</td>
<td class="ltx_td ltx_align_center" id="A1.T6.3.1.9.6.7">81.6</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T6.3.1.9.6.8">35.6</td>
<td class="ltx_td ltx_align_center" id="A1.T6.3.1.9.6.9">70.1</td>
</tr>
<tr class="ltx_tr" id="A1.T6.3.1.10.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_r" id="A1.T6.3.1.10.7.1">LEMMA (LLaMA3)</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T6.3.1.10.7.2">78.4</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="A1.T6.3.1.10.7.3">48.8</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T6.3.1.10.7.4">88.8</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T6.3.1.10.7.5">60.7</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T6.3.1.10.7.6">88.0</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T6.3.1.10.7.7">76.1</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="A1.T6.3.1.10.7.8">34.7</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T6.3.1.10.7.9">67.9</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table compares the performance of different LLMs on various mathematical reasoning benchmarks, including GSM8K and MATH, as well as several out-of-distribution datasets.  The models are evaluated using two different methods: standard supervised fine-tuning (SFT) and the proposed LEMMA method.  The key finding is that LEMMA's performance is robust even when using a different teacher model (LLaMA-3.1-Nemotron-70B instead of GPT-4), demonstrating its effectiveness regardless of the specific teacher model used.
> <details>
> <summary>read the caption</summary>
> Table 6: Performance comparison on GSM8K, MATH, and out-of-distribution datasets uses LLaMA-3.1-Nemotron-70B as the teacher model. LEMMA demonstrates robustness to the choice of teacher model.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="A1.T7.4.2">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A1.T7.4.2.3.1">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_tt" id="A1.T7.4.2.3.1.1" rowspan="2"><span class="ltx_text ltx_font_bold" id="A1.T7.4.2.3.1.1.1">Model</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="A1.T7.4.2.3.1.2" rowspan="2"><span class="ltx_text ltx_font_bold" id="A1.T7.4.2.3.1.2.1"># Samples</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" colspan="2" id="A1.T7.4.2.3.1.3"><span class="ltx_text ltx_font_italic" id="A1.T7.4.2.3.1.3.1">In-Distribution</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" colspan="5" id="A1.T7.4.2.3.1.4"><span class="ltx_text ltx_font_italic" id="A1.T7.4.2.3.1.4.1">Out-Of-Distribution</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A1.T7.4.2.3.1.5" rowspan="2"><span class="ltx_text ltx_font_bold" id="A1.T7.4.2.3.1.5.1">Avg.</span></td>
</tr>
<tr class="ltx_tr" id="A1.T7.4.2.4.2">
<td class="ltx_td ltx_align_center" id="A1.T7.4.2.4.2.1"><span class="ltx_text ltx_font_bold" id="A1.T7.4.2.4.2.1.1">GSM8K</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T7.4.2.4.2.2"><span class="ltx_text ltx_font_bold" id="A1.T7.4.2.4.2.2.1">MATH</span></td>
<td class="ltx_td ltx_align_center" id="A1.T7.4.2.4.2.3"><span class="ltx_text ltx_font_bold" id="A1.T7.4.2.4.2.3.1">ASDIV</span></td>
<td class="ltx_td ltx_align_center" id="A1.T7.4.2.4.2.4"><span class="ltx_text ltx_font_bold" id="A1.T7.4.2.4.2.4.1">Mathematics</span></td>
<td class="ltx_td ltx_align_center" id="A1.T7.4.2.4.2.5"><span class="ltx_text ltx_font_bold" id="A1.T7.4.2.4.2.5.1">MAWPS</span></td>
<td class="ltx_td ltx_align_center" id="A1.T7.4.2.4.2.6"><span class="ltx_text ltx_font_bold" id="A1.T7.4.2.4.2.6.1">SVAMP</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T7.4.2.4.2.7"><span class="ltx_text ltx_font_bold" id="A1.T7.4.2.4.2.7.1">College-Math</span></td>
</tr>
<tr class="ltx_tr" id="A1.T7.4.2.5.3">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="9" id="A1.T7.4.2.5.3.1"><span class="ltx_text ltx_font_italic" id="A1.T7.4.2.5.3.1.1"> Mistral-7B-v0.1</span>
</td>
<td class="ltx_td ltx_border_t" id="A1.T7.4.2.5.3.2"></td>
</tr>
<tr class="ltx_tr" id="A1.T7.4.2.6.4">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T7.4.2.6.4.1">SFT</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A1.T7.4.2.6.4.2">14.97k</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T7.4.2.6.4.3">56.4</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A1.T7.4.2.6.4.4">14.1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T7.4.2.6.4.5">62.2</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T7.4.2.6.4.6">16.6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T7.4.2.6.4.7">72.6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T7.4.2.6.4.8">52.6</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A1.T7.4.2.6.4.9">9.2</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T7.4.2.6.4.10">40.5</td>
</tr>
<tr class="ltx_tr" id="A1.T7.4.2.7.5">
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T7.4.2.7.5.1">RFT</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T7.4.2.7.5.2">86.52k</td>
<td class="ltx_td ltx_align_center" id="A1.T7.4.2.7.5.3">55.6</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T7.4.2.7.5.4">12.7</td>
<td class="ltx_td ltx_align_center" id="A1.T7.4.2.7.5.5">65.5</td>
<td class="ltx_td ltx_align_center" id="A1.T7.4.2.7.5.6">16.6</td>
<td class="ltx_td ltx_align_center" id="A1.T7.4.2.7.5.7">73.8</td>
<td class="ltx_td ltx_align_center" id="A1.T7.4.2.7.5.8">57.4</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T7.4.2.7.5.9">9.5</td>
<td class="ltx_td ltx_align_center" id="A1.T7.4.2.7.5.10">41.6</td>
</tr>
<tr class="ltx_tr" id="A1.T7.4.2.8.6">
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T7.4.2.8.6.1">MetaMath</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T7.4.2.8.6.2">394.99k</td>
<td class="ltx_td ltx_align_center" id="A1.T7.4.2.8.6.3">72.6</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T7.4.2.8.6.4">28.1</td>
<td class="ltx_td ltx_align_center" id="A1.T7.4.2.8.6.5">75.9</td>
<td class="ltx_td ltx_align_center" id="A1.T7.4.2.8.6.6">26.6</td>
<td class="ltx_td ltx_align_center" id="A1.T7.4.2.8.6.7">85.0</td>
<td class="ltx_td ltx_align_center" id="A1.T7.4.2.8.6.8">69.4</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T7.4.2.8.6.9">15.4</td>
<td class="ltx_td ltx_align_center" id="A1.T7.4.2.8.6.10">53.3</td>
</tr>
<tr class="ltx_tr" id="A1.T7.4.2.9.7">
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T7.4.2.9.7.1">GPTAug</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T7.4.2.9.7.2">88.62k</td>
<td class="ltx_td ltx_align_center" id="A1.T7.4.2.9.7.3">69.0</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T7.4.2.9.7.4">30.9</td>
<td class="ltx_td ltx_align_center" id="A1.T7.4.2.9.7.5">77.6</td>
<td class="ltx_td ltx_align_center" id="A1.T7.4.2.9.7.6">34.6</td>
<td class="ltx_td ltx_align_center" id="A1.T7.4.2.9.7.7">82.2</td>
<td class="ltx_td ltx_align_center" id="A1.T7.4.2.9.7.8">71.6</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T7.4.2.9.7.9">16.7</td>
<td class="ltx_td ltx_align_center" id="A1.T7.4.2.9.7.10">54.7</td>
</tr>
<tr class="ltx_tr" id="A1.T7.4.2.10.8">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T7.4.2.10.8.1">ISC</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A1.T7.4.2.10.8.2">86.78k</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T7.4.2.10.8.3">54.1</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A1.T7.4.2.10.8.4">24.6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T7.4.2.10.8.5">18.1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T7.4.2.10.8.6">27.4</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T7.4.2.10.8.7">19.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T7.4.2.10.8.8">12.2</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A1.T7.4.2.10.8.9">14.3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T7.4.2.10.8.10">24.3</td>
</tr>
<tr class="ltx_tr" id="A1.T7.4.2.11.9">
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T7.4.2.11.9.1">RefAug</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T7.4.2.11.9.2">29.94k</td>
<td class="ltx_td ltx_align_center" id="A1.T7.4.2.11.9.3">71.9</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T7.4.2.11.9.4">30.7</td>
<td class="ltx_td ltx_align_center" id="A1.T7.4.2.11.9.5">78.4</td>
<td class="ltx_td ltx_align_center" id="A1.T7.4.2.11.9.6">33.7</td>
<td class="ltx_td ltx_align_center" id="A1.T7.4.2.11.9.7">83.7</td>
<td class="ltx_td ltx_align_center" id="A1.T7.4.2.11.9.8">74.7</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T7.4.2.11.9.9">17.7</td>
<td class="ltx_td ltx_align_center" id="A1.T7.4.2.11.9.10">55.8</td>
</tr>
<tr class="ltx_tr" id="A1.T7.4.2.12.10">
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T7.4.2.12.10.1">RefAug-90k</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T7.4.2.12.10.2">89.92k</td>
<td class="ltx_td ltx_align_center" id="A1.T7.4.2.12.10.3">73.0</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T7.4.2.12.10.4">31.4</td>
<td class="ltx_td ltx_align_center" id="A1.T7.4.2.12.10.5">79.9</td>
<td class="ltx_td ltx_align_center" id="A1.T7.4.2.12.10.6">34.8</td>
<td class="ltx_td ltx_align_center" id="A1.T7.4.2.12.10.7"><span class="ltx_text ltx_font_bold" id="A1.T7.4.2.12.10.7.1">86.1</span></td>
<td class="ltx_td ltx_align_center" id="A1.T7.4.2.12.10.8">78.1</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T7.4.2.12.10.9">17.5</td>
<td class="ltx_td ltx_align_center" id="A1.T7.4.2.12.10.10">57.3</td>
</tr>
<tr class="ltx_tr" id="A1.T7.4.2.13.11" style="background-color:#E6E6E6;">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T7.4.2.13.11.1"><span class="ltx_text" id="A1.T7.4.2.13.11.1.1" style="background-color:#E6E6E6;">LEMMA</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A1.T7.4.2.13.11.2"><span class="ltx_text" id="A1.T7.4.2.13.11.2.1" style="background-color:#E6E6E6;">88.90k</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T7.4.2.13.11.3"><span class="ltx_text ltx_font_bold" id="A1.T7.4.2.13.11.3.1" style="background-color:#E6E6E6;">80.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A1.T7.4.2.13.11.4"><span class="ltx_text ltx_font_bold" id="A1.T7.4.2.13.11.4.1" style="background-color:#E6E6E6;">34.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T7.4.2.13.11.5"><span class="ltx_text ltx_font_bold" id="A1.T7.4.2.13.11.5.1" style="background-color:#E6E6E6;">81.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T7.4.2.13.11.6"><span class="ltx_text ltx_font_bold" id="A1.T7.4.2.13.11.6.1" style="background-color:#E6E6E6;">40.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T7.4.2.13.11.7"><span class="ltx_text" id="A1.T7.4.2.13.11.7.1" style="background-color:#E6E6E6;">85.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T7.4.2.13.11.8"><span class="ltx_text ltx_font_bold" id="A1.T7.4.2.13.11.8.1" style="background-color:#E6E6E6;">78.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A1.T7.4.2.13.11.9"><span class="ltx_text ltx_font_bold" id="A1.T7.4.2.13.11.9.1" style="background-color:#E6E6E6;">20.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T7.4.2.13.11.10"><span class="ltx_text ltx_font_bold" id="A1.T7.4.2.13.11.10.1" style="background-color:#E6E6E6;">60.2</span></td>
</tr>
<tr class="ltx_tr" id="A1.T7.4.2.14.12">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="9" id="A1.T7.4.2.14.12.1"><span class="ltx_text ltx_font_italic" id="A1.T7.4.2.14.12.1.1"> Qwen2-Math-7B</span>
</td>
<td class="ltx_td ltx_border_t" id="A1.T7.4.2.14.12.2"></td>
</tr>
<tr class="ltx_tr" id="A1.T7.4.2.15.13">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T7.4.2.15.13.1">SFT</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A1.T7.4.2.15.13.2">14.97k</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T7.4.2.15.13.3">78.7</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A1.T7.4.2.15.13.4">50.9</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T7.4.2.15.13.5">88.1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T7.4.2.15.13.6">50.3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T7.4.2.15.13.7">92.4</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T7.4.2.15.13.8">78.9</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A1.T7.4.2.15.13.9">37.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T7.4.2.15.13.10">68.0</td>
</tr>
<tr class="ltx_tr" id="A1.T7.4.2.16.14">
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T7.4.2.16.14.1">RFT</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T7.4.2.16.14.2">86.52k</td>
<td class="ltx_td ltx_align_center" id="A1.T7.4.2.16.14.3">83.5</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T7.4.2.16.14.4">54.4</td>
<td class="ltx_td ltx_align_center" id="A1.T7.4.2.16.14.5">90.7</td>
<td class="ltx_td ltx_align_center" id="A1.T7.4.2.16.14.6">57.4</td>
<td class="ltx_td ltx_align_center" id="A1.T7.4.2.16.14.7">92.7</td>
<td class="ltx_td ltx_align_center" id="A1.T7.4.2.16.14.8">80.0</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T7.4.2.16.14.9">38.5</td>
<td class="ltx_td ltx_align_center" id="A1.T7.4.2.16.14.10">71.0</td>
</tr>
<tr class="ltx_tr" id="A1.T7.4.2.17.15">
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T7.4.2.17.15.1">MetaMath</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T7.4.2.17.15.2">394.99k</td>
<td class="ltx_td ltx_align_center" id="A1.T7.4.2.17.15.3">84.2</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T7.4.2.17.15.4">51.8</td>
<td class="ltx_td ltx_align_center" id="A1.T7.4.2.17.15.5">90.4</td>
<td class="ltx_td ltx_align_center" id="A1.T7.4.2.17.15.6">60.7</td>
<td class="ltx_td ltx_align_center" id="A1.T7.4.2.17.15.7">92.6</td>
<td class="ltx_td ltx_align_center" id="A1.T7.4.2.17.15.8">81.9</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T7.4.2.17.15.9">34.4</td>
<td class="ltx_td ltx_align_center" id="A1.T7.4.2.17.15.10">70.9</td>
</tr>
<tr class="ltx_tr" id="A1.T7.4.2.18.16">
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T7.4.2.18.16.1">GPTAug</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T7.4.2.18.16.2">88.62k</td>
<td class="ltx_td ltx_align_center" id="A1.T7.4.2.18.16.3">83.8</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T7.4.2.18.16.4">53.6</td>
<td class="ltx_td ltx_align_center" id="A1.T7.4.2.18.16.5">92.3</td>
<td class="ltx_td ltx_align_center" id="A1.T7.4.2.18.16.6">64.9</td>
<td class="ltx_td ltx_align_center" id="A1.T7.4.2.18.16.7"><span class="ltx_text ltx_font_bold" id="A1.T7.4.2.18.16.7.1">95.2</span></td>
<td class="ltx_td ltx_align_center" id="A1.T7.4.2.18.16.8"><span class="ltx_text ltx_font_bold" id="A1.T7.4.2.18.16.8.1">89.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T7.4.2.18.16.9">36.6</td>
<td class="ltx_td ltx_align_center" id="A1.T7.4.2.18.16.10">73.7</td>
</tr>
<tr class="ltx_tr" id="A1.T7.4.2.19.17">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T7.4.2.19.17.1">ISC</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A1.T7.4.2.19.17.2">86.78k</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T7.4.2.19.17.3">77.1</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A1.T7.4.2.19.17.4">48.9</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T7.4.2.19.17.5">89.4</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T7.4.2.19.17.6">51.9</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T7.4.2.19.17.7">92.1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T7.4.2.19.17.8">78.3</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A1.T7.4.2.19.17.9">31.6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T7.4.2.19.17.10">67.0</td>
</tr>
<tr class="ltx_tr" id="A1.T7.4.2.2">
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T7.4.2.2.2">S<sup class="ltx_sup" id="A1.T7.4.2.2.2.1">3</sup>C-Math<sup class="ltx_sup" id="A1.T7.4.2.2.2.2"><span class="ltx_text ltx_font_italic" id="A1.T7.4.2.2.2.2.1">†</span></sup> (w/ MetaMath)</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T7.4.2.2.3">927k</td>
<td class="ltx_td ltx_align_center" id="A1.T7.4.2.2.4">84.7</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T7.4.2.2.5">51.7</td>
<td class="ltx_td ltx_align_center" id="A1.T7.4.2.2.6">-</td>
<td class="ltx_td ltx_align_center" id="A1.T7.4.2.2.7">-</td>
<td class="ltx_td ltx_align_center" id="A1.T7.4.2.2.8">-</td>
<td class="ltx_td ltx_align_center" id="A1.T7.4.2.2.9">87.4</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T7.4.2.2.10">-</td>
<td class="ltx_td ltx_align_center" id="A1.T7.4.2.2.11">-</td>
</tr>
<tr class="ltx_tr" id="A1.T7.4.2.20.18">
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T7.4.2.20.18.1">RefAug</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T7.4.2.20.18.2">29.94k</td>
<td class="ltx_td ltx_align_center" id="A1.T7.4.2.20.18.3">80.1</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T7.4.2.20.18.4">53.5</td>
<td class="ltx_td ltx_align_center" id="A1.T7.4.2.20.18.5">92.0</td>
<td class="ltx_td ltx_align_center" id="A1.T7.4.2.20.18.6">62.7</td>
<td class="ltx_td ltx_align_center" id="A1.T7.4.2.20.18.7">92.9</td>
<td class="ltx_td ltx_align_center" id="A1.T7.4.2.20.18.8">80.5</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T7.4.2.20.18.9">35.1</td>
<td class="ltx_td ltx_align_center" id="A1.T7.4.2.20.18.10">71.0</td>
</tr>
<tr class="ltx_tr" id="A1.T7.4.2.21.19">
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T7.4.2.21.19.1">RefAug-90k</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T7.4.2.21.19.2">89.92k</td>
<td class="ltx_td ltx_align_center" id="A1.T7.4.2.21.19.3">84.1</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T7.4.2.21.19.4">56.4</td>
<td class="ltx_td ltx_align_center" id="A1.T7.4.2.21.19.5">92.4</td>
<td class="ltx_td ltx_align_center" id="A1.T7.4.2.21.19.6">68.7</td>
<td class="ltx_td ltx_align_center" id="A1.T7.4.2.21.19.7">93.2</td>
<td class="ltx_td ltx_align_center" id="A1.T7.4.2.21.19.8">84.3</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T7.4.2.21.19.9">36.2</td>
<td class="ltx_td ltx_align_center" id="A1.T7.4.2.21.19.10">73.6</td>
</tr>
<tr class="ltx_tr" id="A1.T7.4.2.22.20" style="background-color:#E6E6E6;">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_r ltx_border_t" id="A1.T7.4.2.22.20.1"><span class="ltx_text" id="A1.T7.4.2.22.20.1.1" style="background-color:#E6E6E6;">LEMMA</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r ltx_border_t" id="A1.T7.4.2.22.20.2"><span class="ltx_text" id="A1.T7.4.2.22.20.2.1" style="background-color:#E6E6E6;">88.90k</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A1.T7.4.2.22.20.3"><span class="ltx_text ltx_font_bold" id="A1.T7.4.2.22.20.3.1" style="background-color:#E6E6E6;">87.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r ltx_border_t" id="A1.T7.4.2.22.20.4"><span class="ltx_text ltx_font_bold" id="A1.T7.4.2.22.20.4.1" style="background-color:#E6E6E6;">62.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A1.T7.4.2.22.20.5"><span class="ltx_text ltx_font_bold" id="A1.T7.4.2.22.20.5.1" style="background-color:#E6E6E6;">93.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A1.T7.4.2.22.20.6"><span class="ltx_text ltx_font_bold" id="A1.T7.4.2.22.20.6.1" style="background-color:#E6E6E6;">74.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A1.T7.4.2.22.20.7"><span class="ltx_text" id="A1.T7.4.2.22.20.7.1" style="background-color:#E6E6E6;">94.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A1.T7.4.2.22.20.8"><span class="ltx_text" id="A1.T7.4.2.22.20.8.1" style="background-color:#E6E6E6;">88.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r ltx_border_t" id="A1.T7.4.2.22.20.9"><span class="ltx_text ltx_font_bold" id="A1.T7.4.2.22.20.9.1" style="background-color:#E6E6E6;">39.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A1.T7.4.2.22.20.10"><span class="ltx_text ltx_font_bold" id="A1.T7.4.2.22.20.10.1" style="background-color:#E6E6E6;">77.2</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 Table 7 presents the performance comparison results on various mathematical reasoning benchmarks, including GSM8K and MATH, as well as several out-of-distribution datasets.  The models evaluated are fine-tuned using the LEMMA approach, and the results are compared against several baseline methods.  The table specifically shows results obtained using the Mistral-7B-v0.1 and Qwen2-Math-7B language models.  Results from a previous study by Yan et al. (2024) are also included for comparison purposes.
> <details>
> <summary>read the caption</summary>
> Table 7: Additional results on GSM8K, MATH and out-of-distribution datasets using Mistral-7B-v0.1 and Qwen2-Math-7B. †: numbers reported in Yan et al. (2024).
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="A1.T8.6.4">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A1.T8.6.4.5.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_tt" id="A1.T8.6.4.5.1.1" rowspan="2"><span class="ltx_text ltx_font_bold" id="A1.T8.6.4.5.1.1.1">Model</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_tt" id="A1.T8.6.4.5.1.2" rowspan="2"><span class="ltx_text ltx_font_bold" id="A1.T8.6.4.5.1.2.1"># Samples</span></th>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" colspan="2" id="A1.T8.6.4.5.1.3">GSM8K</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" colspan="2" id="A1.T8.6.4.5.1.4">MATH</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" colspan="2" id="A1.T8.6.4.5.1.5">ASDIV</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" colspan="2" id="A1.T8.6.4.5.1.6">Mathematics</td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="A1.T8.6.4.5.1.7">College-Math</td>
</tr>
<tr class="ltx_tr" id="A1.T8.6.4.6.2">
<td class="ltx_td ltx_align_center" id="A1.T8.6.4.6.2.1"><span class="ltx_text ltx_font_italic" id="A1.T8.6.4.6.2.1.1">Pass@1</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T8.6.4.6.2.2"><span class="ltx_text ltx_font_italic" id="A1.T8.6.4.6.2.2.1">Maj@32</span></td>
<td class="ltx_td ltx_align_center" id="A1.T8.6.4.6.2.3"><span class="ltx_text ltx_font_italic" id="A1.T8.6.4.6.2.3.1">Pass@1</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T8.6.4.6.2.4"><span class="ltx_text ltx_font_italic" id="A1.T8.6.4.6.2.4.1">Maj@32</span></td>
<td class="ltx_td ltx_align_center" id="A1.T8.6.4.6.2.5"><span class="ltx_text ltx_font_italic" id="A1.T8.6.4.6.2.5.1">Pass@1</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T8.6.4.6.2.6"><span class="ltx_text ltx_font_italic" id="A1.T8.6.4.6.2.6.1">Maj@32</span></td>
<td class="ltx_td ltx_align_center" id="A1.T8.6.4.6.2.7"><span class="ltx_text ltx_font_italic" id="A1.T8.6.4.6.2.7.1">Pass@1</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T8.6.4.6.2.8"><span class="ltx_text ltx_font_italic" id="A1.T8.6.4.6.2.8.1">Maj@32</span></td>
<td class="ltx_td ltx_align_center" id="A1.T8.6.4.6.2.9"><span class="ltx_text ltx_font_italic" id="A1.T8.6.4.6.2.9.1">Pass@1</span></td>
<td class="ltx_td ltx_align_center" id="A1.T8.6.4.6.2.10"><span class="ltx_text ltx_font_italic" id="A1.T8.6.4.6.2.10.1">Maj@32</span></td>
</tr>
<tr class="ltx_tr" id="A1.T8.6.4.7.3">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" colspan="12" id="A1.T8.6.4.7.3.1"><span class="ltx_text ltx_font_italic" id="A1.T8.6.4.7.3.1.1"> <span class="ltx_text ltx_font_bold" id="A1.T8.6.4.7.3.1.1.1">LLaMA3-8B</span></span>
</th>
</tr>
<tr class="ltx_tr" id="A1.T8.6.4.8.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="A1.T8.6.4.8.4.1">SFT</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_t" id="A1.T8.6.4.8.4.2">14.97k</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T8.6.4.8.4.3">65.5</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A1.T8.6.4.8.4.4">80.3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T8.6.4.8.4.5">19.3</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A1.T8.6.4.8.4.6">30.8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T8.6.4.8.4.7">72.1</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A1.T8.6.4.8.4.8">82.3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T8.6.4.8.4.9">23.5</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A1.T8.6.4.8.4.10">35.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T8.6.4.8.4.11">13.3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T8.6.4.8.4.12">20.2</td>
</tr>
<tr class="ltx_tr" id="A1.T8.6.4.9.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A1.T8.6.4.9.5.1">RFT</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="A1.T8.6.4.9.5.2">86.52k</th>
<td class="ltx_td ltx_align_center" id="A1.T8.6.4.9.5.3">67.3</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T8.6.4.9.5.4">79.3</td>
<td class="ltx_td ltx_align_center" id="A1.T8.6.4.9.5.5">21.1</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T8.6.4.9.5.6">29.4</td>
<td class="ltx_td ltx_align_center" id="A1.T8.6.4.9.5.7">74.8</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T8.6.4.9.5.8">84.5</td>
<td class="ltx_td ltx_align_center" id="A1.T8.6.4.9.5.9">24.9</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T8.6.4.9.5.10">37.2</td>
<td class="ltx_td ltx_align_center" id="A1.T8.6.4.9.5.11">16.7</td>
<td class="ltx_td ltx_align_center" id="A1.T8.6.4.9.5.12">22.3</td>
</tr>
<tr class="ltx_tr" id="A1.T8.6.4.10.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A1.T8.6.4.10.6.1">MetaMath</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="A1.T8.6.4.10.6.2">394.99k</th>
<td class="ltx_td ltx_align_center" id="A1.T8.6.4.10.6.3">79.2</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T8.6.4.10.6.4">85.7</td>
<td class="ltx_td ltx_align_center" id="A1.T8.6.4.10.6.5">34.1</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T8.6.4.10.6.6">42.2</td>
<td class="ltx_td ltx_align_center" id="A1.T8.6.4.10.6.7">81.9</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T8.6.4.10.6.8">87.9</td>
<td class="ltx_td ltx_align_center" id="A1.T8.6.4.10.6.9">35.3</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T8.6.4.10.6.10">47.3</td>
<td class="ltx_td ltx_align_center" id="A1.T8.6.4.10.6.11">20.5</td>
<td class="ltx_td ltx_align_center" id="A1.T8.6.4.10.6.12">25.1</td>
</tr>
<tr class="ltx_tr" id="A1.T8.6.4.11.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A1.T8.6.4.11.7.1">GPTAug</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="A1.T8.6.4.11.7.2">88.62k</th>
<td class="ltx_td ltx_align_center" id="A1.T8.6.4.11.7.3">72.1</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T8.6.4.11.7.4">81.1</td>
<td class="ltx_td ltx_align_center" id="A1.T8.6.4.11.7.5">31.8</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T8.6.4.11.7.6">38.8</td>
<td class="ltx_td ltx_align_center" id="A1.T8.6.4.11.7.7">81.2</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T8.6.4.11.7.8"><span class="ltx_text ltx_font_bold" id="A1.T8.6.4.11.7.8.1">90.4</span></td>
<td class="ltx_td ltx_align_center" id="A1.T8.6.4.11.7.9">36.5</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T8.6.4.11.7.10">47.5</td>
<td class="ltx_td ltx_align_center" id="A1.T8.6.4.11.7.11">21.2</td>
<td class="ltx_td ltx_align_center" id="A1.T8.6.4.11.7.12">25.0</td>
</tr>
<tr class="ltx_tr" id="A1.T8.6.4.12.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="A1.T8.6.4.12.8.1">ISC</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_t" id="A1.T8.6.4.12.8.2">86.78k</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T8.6.4.12.8.3">70.8</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A1.T8.6.4.12.8.4">85.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T8.6.4.12.8.5">33.4</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A1.T8.6.4.12.8.6">48.4</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T8.6.4.12.8.7">81.1</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A1.T8.6.4.12.8.8">87.4</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T8.6.4.12.8.9">31.8</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A1.T8.6.4.12.8.10">47.8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T8.6.4.12.8.11">20.2</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T8.6.4.12.8.12">27.4</td>
</tr>
<tr class="ltx_tr" id="A1.T8.4.2.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A1.T8.4.2.2.2">S<sup class="ltx_sup" id="A1.T8.4.2.2.2.1">3</sup>C-Math<sup class="ltx_sup" id="A1.T8.4.2.2.2.2"><span class="ltx_text ltx_font_italic" id="A1.T8.4.2.2.2.2.1">†</span></sup> (w/ MetaMath)</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="A1.T8.4.2.2.3">927k</th>
<td class="ltx_td ltx_align_center" id="A1.T8.4.2.2.4"><span class="ltx_text ltx_font_bold" id="A1.T8.4.2.2.4.1">82.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T8.4.2.2.5">87.3</td>
<td class="ltx_td ltx_align_center" id="A1.T8.4.2.2.6">33.1</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T8.4.2.2.7">41.6</td>
<td class="ltx_td ltx_align_center" id="A1.T8.4.2.2.8">-</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T8.4.2.2.9">-</td>
<td class="ltx_td ltx_align_center" id="A1.T8.4.2.2.10">-</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T8.4.2.2.11">-</td>
<td class="ltx_td ltx_align_center" id="A1.T8.4.2.2.12">-</td>
<td class="ltx_td ltx_align_center" id="A1.T8.4.2.2.13">-</td>
</tr>
<tr class="ltx_tr" id="A1.T8.6.4.13.9">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A1.T8.6.4.13.9.1">RefAug</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="A1.T8.6.4.13.9.2">29.94k</th>
<td class="ltx_td ltx_align_center" id="A1.T8.6.4.13.9.3">75.9</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T8.6.4.13.9.4">83.5</td>
<td class="ltx_td ltx_align_center" id="A1.T8.6.4.13.9.5">32.6</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T8.6.4.13.9.6">42.7</td>
<td class="ltx_td ltx_align_center" id="A1.T8.6.4.13.9.7">82.3</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T8.6.4.13.9.8">90.0</td>
<td class="ltx_td ltx_align_center" id="A1.T8.6.4.13.9.9">35.5</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T8.6.4.13.9.10">46.6</td>
<td class="ltx_td ltx_align_center" id="A1.T8.6.4.13.9.11">21.0</td>
<td class="ltx_td ltx_align_center" id="A1.T8.6.4.13.9.12">25.8</td>
</tr>
<tr class="ltx_tr" id="A1.T8.6.4.14.10">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A1.T8.6.4.14.10.1">RefAug-90k</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="A1.T8.6.4.14.10.2">89.92k</th>
<td class="ltx_td ltx_align_center" id="A1.T8.6.4.14.10.3">77.4</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T8.6.4.14.10.4">85.3</td>
<td class="ltx_td ltx_align_center" id="A1.T8.6.4.14.10.5">34.2</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T8.6.4.14.10.6">41.8</td>
<td class="ltx_td ltx_align_center" id="A1.T8.6.4.14.10.7">82.1</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T8.6.4.14.10.8">90.3</td>
<td class="ltx_td ltx_align_center" id="A1.T8.6.4.14.10.9">35.7</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T8.6.4.14.10.10">49.3</td>
<td class="ltx_td ltx_align_center" id="A1.T8.6.4.14.10.11">21.9</td>
<td class="ltx_td ltx_align_center" id="A1.T8.6.4.14.10.12">25.6</td>
</tr>
<tr class="ltx_tr" id="A1.T8.6.4.15.11" style="background-color:#E6E6E6;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="A1.T8.6.4.15.11.1"><span class="ltx_text" id="A1.T8.6.4.15.11.1.1" style="background-color:#E6E6E6;">LEMMA</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_t" id="A1.T8.6.4.15.11.2"><span class="ltx_text" id="A1.T8.6.4.15.11.2.1" style="background-color:#E6E6E6;">88.90k</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T8.6.4.15.11.3"><span class="ltx_text" id="A1.T8.6.4.15.11.3.1" style="background-color:#E6E6E6;">79.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A1.T8.6.4.15.11.4"><span class="ltx_text ltx_font_bold" id="A1.T8.6.4.15.11.4.1" style="background-color:#E6E6E6;">90.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T8.6.4.15.11.5"><span class="ltx_text ltx_font_bold" id="A1.T8.6.4.15.11.5.1" style="background-color:#E6E6E6;">38.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A1.T8.6.4.15.11.6"><span class="ltx_text ltx_font_bold" id="A1.T8.6.4.15.11.6.1" style="background-color:#E6E6E6;">53.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T8.6.4.15.11.7"><span class="ltx_text ltx_font_bold" id="A1.T8.6.4.15.11.7.1" style="background-color:#E6E6E6;">84.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A1.T8.6.4.15.11.8"><span class="ltx_text" id="A1.T8.6.4.15.11.8.1" style="background-color:#E6E6E6;">90.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T8.6.4.15.11.9"><span class="ltx_text ltx_font_bold" id="A1.T8.6.4.15.11.9.1" style="background-color:#E6E6E6;">39.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A1.T8.6.4.15.11.10"><span class="ltx_text ltx_font_bold" id="A1.T8.6.4.15.11.10.1" style="background-color:#E6E6E6;">53.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T8.6.4.15.11.11"><span class="ltx_text ltx_font_bold" id="A1.T8.6.4.15.11.11.1" style="background-color:#E6E6E6;">24.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T8.6.4.15.11.12"><span class="ltx_text ltx_font_bold" id="A1.T8.6.4.15.11.12.1" style="background-color:#E6E6E6;">32.1</span></td>
</tr>
<tr class="ltx_tr" id="A1.T8.6.4.16.12">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" colspan="12" id="A1.T8.6.4.16.12.1"><span class="ltx_text ltx_font_italic" id="A1.T8.6.4.16.12.1.1"> <span class="ltx_text ltx_font_bold" id="A1.T8.6.4.16.12.1.1.1">DeepSeekMath-7B</span></span>
</th>
</tr>
<tr class="ltx_tr" id="A1.T8.6.4.17.13">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="A1.T8.6.4.17.13.1">SFT</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_t" id="A1.T8.6.4.17.13.2">14.97k</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T8.6.4.17.13.3">68.1</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A1.T8.6.4.17.13.4">81.7</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T8.6.4.17.13.5">35.2</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A1.T8.6.4.17.13.6">48.6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T8.6.4.17.13.7">80.9</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A1.T8.6.4.17.13.8">90.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T8.6.4.17.13.9">39.6</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A1.T8.6.4.17.13.10">55.1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T8.6.4.17.13.11">28.8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T8.6.4.17.13.12">32.6</td>
</tr>
<tr class="ltx_tr" id="A1.T8.6.4.18.14">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A1.T8.6.4.18.14.1">RFT</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="A1.T8.6.4.18.14.2">86.52k</th>
<td class="ltx_td ltx_align_center" id="A1.T8.6.4.18.14.3">73.3</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T8.6.4.18.14.4">84.5</td>
<td class="ltx_td ltx_align_center" id="A1.T8.6.4.18.14.5">39.3</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T8.6.4.18.14.6">50.7</td>
<td class="ltx_td ltx_align_center" id="A1.T8.6.4.18.14.7">85.2</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T8.6.4.18.14.8">91.6</td>
<td class="ltx_td ltx_align_center" id="A1.T8.6.4.18.14.9">46.2</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T8.6.4.18.14.10">62.9</td>
<td class="ltx_td ltx_align_center" id="A1.T8.6.4.18.14.11">31.7</td>
<td class="ltx_td ltx_align_center" id="A1.T8.6.4.18.14.12"><span class="ltx_text ltx_font_bold" id="A1.T8.6.4.18.14.12.1">38.4</span></td>
</tr>
<tr class="ltx_tr" id="A1.T8.6.4.19.15">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A1.T8.6.4.19.15.1">MetaMath</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="A1.T8.6.4.19.15.2">394.99k</th>
<td class="ltx_td ltx_align_center" id="A1.T8.6.4.19.15.3">79.4</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T8.6.4.19.15.4">84.8</td>
<td class="ltx_td ltx_align_center" id="A1.T8.6.4.19.15.5">42.0</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T8.6.4.19.15.6">52.5</td>
<td class="ltx_td ltx_align_center" id="A1.T8.6.4.19.15.7">87.8</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T8.6.4.19.15.8">93.1</td>
<td class="ltx_td ltx_align_center" id="A1.T8.6.4.19.15.9">49.0</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T8.6.4.19.15.10">64.2</td>
<td class="ltx_td ltx_align_center" id="A1.T8.6.4.19.15.11">31.6</td>
<td class="ltx_td ltx_align_center" id="A1.T8.6.4.19.15.12">37.4</td>
</tr>
<tr class="ltx_tr" id="A1.T8.6.4.20.16">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A1.T8.6.4.20.16.1">GPTAug</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="A1.T8.6.4.20.16.2">88.62k</th>
<td class="ltx_td ltx_align_center" id="A1.T8.6.4.20.16.3">77.8</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T8.6.4.20.16.4">87.2</td>
<td class="ltx_td ltx_align_center" id="A1.T8.6.4.20.16.5">45.5</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T8.6.4.20.16.6">55.2</td>
<td class="ltx_td ltx_align_center" id="A1.T8.6.4.20.16.7">88.7</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T8.6.4.20.16.8">93.7</td>
<td class="ltx_td ltx_align_center" id="A1.T8.6.4.20.16.9">52.6</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T8.6.4.20.16.10">75.6</td>
<td class="ltx_td ltx_align_center" id="A1.T8.6.4.20.16.11">31.0</td>
<td class="ltx_td ltx_align_center" id="A1.T8.6.4.20.16.12">35.1</td>
</tr>
<tr class="ltx_tr" id="A1.T8.6.4.21.17">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="A1.T8.6.4.21.17.1">ISC</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_t" id="A1.T8.6.4.21.17.2">86.78k</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T8.6.4.21.17.3">66.3</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A1.T8.6.4.21.17.4">82.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T8.6.4.21.17.5">36.8</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A1.T8.6.4.21.17.6">51.4</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T8.6.4.21.17.7">82.2</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A1.T8.6.4.21.17.8">91.4</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T8.6.4.21.17.9">43.1</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A1.T8.6.4.21.17.10">61.6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T8.6.4.21.17.11">32.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T8.6.4.21.17.12">38.1</td>
</tr>
<tr class="ltx_tr" id="A1.T8.6.4.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A1.T8.6.4.4.2">S<sup class="ltx_sup" id="A1.T8.6.4.4.2.1">3</sup>C-Math<sup class="ltx_sup" id="A1.T8.6.4.4.2.2"><span class="ltx_text ltx_font_italic" id="A1.T8.6.4.4.2.2.1">†</span></sup> (w/ MetaMath)</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="A1.T8.6.4.4.3">927k</th>
<td class="ltx_td ltx_align_center" id="A1.T8.6.4.4.4"><span class="ltx_text ltx_font_bold" id="A1.T8.6.4.4.4.1">82.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T8.6.4.4.5">88.2</td>
<td class="ltx_td ltx_align_center" id="A1.T8.6.4.4.6">41.4</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T8.6.4.4.7">52.1</td>
<td class="ltx_td ltx_align_center" id="A1.T8.6.4.4.8">-</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T8.6.4.4.9">-</td>
<td class="ltx_td ltx_align_center" id="A1.T8.6.4.4.10">-</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T8.6.4.4.11">-</td>
<td class="ltx_td ltx_align_center" id="A1.T8.6.4.4.12">-</td>
<td class="ltx_td ltx_align_center" id="A1.T8.6.4.4.13">-</td>
</tr>
<tr class="ltx_tr" id="A1.T8.6.4.22.18">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A1.T8.6.4.22.18.1">RefAug</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="A1.T8.6.4.22.18.2">29.94k</th>
<td class="ltx_td ltx_align_center" id="A1.T8.6.4.22.18.3">75.5</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T8.6.4.22.18.4">86.5</td>
<td class="ltx_td ltx_align_center" id="A1.T8.6.4.22.18.5">39.5</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T8.6.4.22.18.6">49.5</td>
<td class="ltx_td ltx_align_center" id="A1.T8.6.4.22.18.7">81.2</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T8.6.4.22.18.8">94.1</td>
<td class="ltx_td ltx_align_center" id="A1.T8.6.4.22.18.9">56.9</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T8.6.4.22.18.10">70.1</td>
<td class="ltx_td ltx_align_center" id="A1.T8.6.4.22.18.11">30.4</td>
<td class="ltx_td ltx_align_center" id="A1.T8.6.4.22.18.12">31.4</td>
</tr>
<tr class="ltx_tr" id="A1.T8.6.4.23.19">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A1.T8.6.4.23.19.1">RefAug-90k</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="A1.T8.6.4.23.19.2">89.92k</th>
<td class="ltx_td ltx_align_center" id="A1.T8.6.4.23.19.3">76.7</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T8.6.4.23.19.4">86.7</td>
<td class="ltx_td ltx_align_center" id="A1.T8.6.4.23.19.5">42.5</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T8.6.4.23.19.6">50.6</td>
<td class="ltx_td ltx_align_center" id="A1.T8.6.4.23.19.7">82.4</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T8.6.4.23.19.8"><span class="ltx_text ltx_font_bold" id="A1.T8.6.4.23.19.8.1">94.3</span></td>
<td class="ltx_td ltx_align_center" id="A1.T8.6.4.23.19.9">57.5</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T8.6.4.23.19.10">73.1</td>
<td class="ltx_td ltx_align_center" id="A1.T8.6.4.23.19.11">30.6</td>
<td class="ltx_td ltx_align_center" id="A1.T8.6.4.23.19.12">31.9</td>
</tr>
<tr class="ltx_tr" id="A1.T8.6.4.24.20" style="background-color:#E6E6E6;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_r ltx_border_t" id="A1.T8.6.4.24.20.1"><span class="ltx_text" id="A1.T8.6.4.24.20.1.1" style="background-color:#E6E6E6;">LEMMA</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_bb ltx_border_r ltx_border_t" id="A1.T8.6.4.24.20.2"><span class="ltx_text" id="A1.T8.6.4.24.20.2.1" style="background-color:#E6E6E6;">88.90k</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A1.T8.6.4.24.20.3"><span class="ltx_text" id="A1.T8.6.4.24.20.3.1" style="background-color:#E6E6E6;">80.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r ltx_border_t" id="A1.T8.6.4.24.20.4"><span class="ltx_text ltx_font_bold" id="A1.T8.6.4.24.20.4.1" style="background-color:#E6E6E6;">89.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A1.T8.6.4.24.20.5"><span class="ltx_text ltx_font_bold" id="A1.T8.6.4.24.20.5.1" style="background-color:#E6E6E6;">50.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r ltx_border_t" id="A1.T8.6.4.24.20.6"><span class="ltx_text ltx_font_bold" id="A1.T8.6.4.24.20.6.1" style="background-color:#E6E6E6;">63.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A1.T8.6.4.24.20.7"><span class="ltx_text ltx_font_bold" id="A1.T8.6.4.24.20.7.1" style="background-color:#E6E6E6;">89.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r ltx_border_t" id="A1.T8.6.4.24.20.8"><span class="ltx_text" id="A1.T8.6.4.24.20.8.1" style="background-color:#E6E6E6;">93.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A1.T8.6.4.24.20.9"><span class="ltx_text ltx_font_bold" id="A1.T8.6.4.24.20.9.1" style="background-color:#E6E6E6;">61.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r ltx_border_t" id="A1.T8.6.4.24.20.10"><span class="ltx_text ltx_font_bold" id="A1.T8.6.4.24.20.10.1" style="background-color:#E6E6E6;">77.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A1.T8.6.4.24.20.11"><span class="ltx_text ltx_font_bold" id="A1.T8.6.4.24.20.11.1" style="background-color:#E6E6E6;">35.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A1.T8.6.4.24.20.12"><span class="ltx_text" id="A1.T8.6.4.24.20.12.1" style="background-color:#E6E6E6;">36.8</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table compares the performance of various methods on solving mathematical reasoning problems, using two evaluation metrics: Pass@1 (the percentage of correct answers in the first attempt) and Majority@32 (the percentage of correct answers after considering the top 32 answers).  The datasets used include GSM8K, MATH, and several out-of-distribution datasets.  The results show the accuracy of each method on each dataset and metric, allowing for a comparison of their effectiveness.  Results from a previous study by Yan et al. (2024) are included for comparison.
> <details>
> <summary>read the caption</summary>
> Table 8: Performance comparison on GSM8K, MATH and out-of-distribution datasets under Pass@1 and Majority@32 (Maj@32) settings. †: numbers reported in Yan et al. (2024). The best result is highlighted in bold. For Maj@32 evaluation, temperature is 0.7.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="A1.T9.5.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A1.T9.5.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_r ltx_border_tt" id="A1.T9.5.1.1.1.1"><span class="ltx_text ltx_font_bold" id="A1.T9.5.1.1.1.1.1">Method</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A1.T9.5.1.1.1.2"><span class="ltx_text ltx_font_bold" id="A1.T9.5.1.1.1.2.1">GSM8K</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="A1.T9.5.1.1.1.3"><span class="ltx_text ltx_font_bold" id="A1.T9.5.1.1.1.3.1">MATH</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A1.T9.5.1.1.1.4"><span class="ltx_text ltx_font_bold" id="A1.T9.5.1.1.1.4.1">ASDIV</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A1.T9.5.1.1.1.5"><span class="ltx_text ltx_font_bold" id="A1.T9.5.1.1.1.5.1">Mathematics</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A1.T9.5.1.1.1.6"><span class="ltx_text ltx_font_bold" id="A1.T9.5.1.1.1.6.1">MAWPS</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A1.T9.5.1.1.1.7"><span class="ltx_text ltx_font_bold" id="A1.T9.5.1.1.1.7.1">SVAMP</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="A1.T9.5.1.1.1.8"><span class="ltx_text ltx_font_bold" id="A1.T9.5.1.1.1.8.1">College-Math</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A1.T9.5.1.1.1.9"><span class="ltx_text ltx_font_bold" id="A1.T9.5.1.1.1.9.1">Avg.</span></th>
</tr>
<tr class="ltx_tr" id="A1.T9.5.1.2.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_r ltx_border_t" id="A1.T9.5.1.2.2.1">LEMMA</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A1.T9.5.1.2.2.2"><span class="ltx_text ltx_font_bold" id="A1.T9.5.1.2.2.2.1">79.2</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_t" id="A1.T9.5.1.2.2.3"><span class="ltx_text ltx_font_bold" id="A1.T9.5.1.2.2.3.1">38.3</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A1.T9.5.1.2.2.4"><span class="ltx_text ltx_font_bold" id="A1.T9.5.1.2.2.4.1">84.2</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A1.T9.5.1.2.2.5"><span class="ltx_text ltx_font_bold" id="A1.T9.5.1.2.2.5.1">39.2</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A1.T9.5.1.2.2.6"><span class="ltx_text ltx_font_bold" id="A1.T9.5.1.2.2.6.1">88.8</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A1.T9.5.1.2.2.7"><span class="ltx_text ltx_font_bold" id="A1.T9.5.1.2.2.7.1">82.6</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_t" id="A1.T9.5.1.2.2.8"><span class="ltx_text ltx_font_bold" id="A1.T9.5.1.2.2.8.1">24.7</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A1.T9.5.1.2.2.9"><span class="ltx_text ltx_font_bold" id="A1.T9.5.1.2.2.9.1">62.4</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A1.T9.5.1.3.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="A1.T9.5.1.3.1.1">w/o Error Aug.</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T9.5.1.3.1.2">72.8</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A1.T9.5.1.3.1.3">28.8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T9.5.1.3.1.4">81.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T9.5.1.3.1.5">32.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T9.5.1.3.1.6">85.1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T9.5.1.3.1.7">75.6</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A1.T9.5.1.3.1.8">21.7</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T9.5.1.3.1.9">56.7</td>
</tr>
<tr class="ltx_tr" id="A1.T9.5.1.4.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A1.T9.5.1.4.2.1">w/o Error Aug. (90k)</th>
<td class="ltx_td ltx_align_center" id="A1.T9.5.1.4.2.2">74.3</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T9.5.1.4.2.3">32.1</td>
<td class="ltx_td ltx_align_center" id="A1.T9.5.1.4.2.4">81.2</td>
<td class="ltx_td ltx_align_center" id="A1.T9.5.1.4.2.5">35.8</td>
<td class="ltx_td ltx_align_center" id="A1.T9.5.1.4.2.6">86.5</td>
<td class="ltx_td ltx_align_center" id="A1.T9.5.1.4.2.7">78.5</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T9.5.1.4.2.8">21.8</td>
<td class="ltx_td ltx_align_center" id="A1.T9.5.1.4.2.9">58.6</td>
</tr>
<tr class="ltx_tr" id="A1.T9.5.1.5.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A1.T9.5.1.5.3.1">w/o Fresh &amp; Restart</th>
<td class="ltx_td ltx_align_center" id="A1.T9.5.1.5.3.2">75.2</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T9.5.1.5.3.3">34.4</td>
<td class="ltx_td ltx_align_center" id="A1.T9.5.1.5.3.4">82.7</td>
<td class="ltx_td ltx_align_center" id="A1.T9.5.1.5.3.5">37.1</td>
<td class="ltx_td ltx_align_center" id="A1.T9.5.1.5.3.6">87.7</td>
<td class="ltx_td ltx_align_center" id="A1.T9.5.1.5.3.7">79.6</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T9.5.1.5.3.8">22.2</td>
<td class="ltx_td ltx_align_center" id="A1.T9.5.1.5.3.9">59.8</td>
</tr>
<tr class="ltx_tr" id="A1.T9.5.1.6.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_r" id="A1.T9.5.1.6.4.1">w/o Fresh &amp; Restart (90k)</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T9.5.1.6.4.2">75.7</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="A1.T9.5.1.6.4.3">34.1</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T9.5.1.6.4.4">82.3</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T9.5.1.6.4.5">37.6</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T9.5.1.6.4.6">87.0</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T9.5.1.6.4.7">80.2</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="A1.T9.5.1.6.4.8">22.1</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T9.5.1.6.4.9">59.9</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This ablation study analyzes the impact of removing key components from the LEMMA framework on its performance.  Specifically, it evaluates the model's performance when either the error augmentation module (which introduces diverse errors for training) or the 'fresh & restart' correction strategy (which allows the model to generate a completely new solution from scratch after detecting an error) are removed. The results show a significant decrease in performance when either component is excluded, highlighting their critical roles in LEMMA's effectiveness.
> <details>
> <summary>read the caption</summary>
> Table 9: Ablation study on each component of LEMMA. Removing either the mistake augmentation module or the fresh & restart module results in a dramatic decline in performance.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="A1.T10.1.1">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A1.T10.1.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_tt" id="A1.T10.1.1.1.1.1"><span class="ltx_text ltx_font_bold" id="A1.T10.1.1.1.1.1.1">Error Type</span></th>
<td class="ltx_td ltx_align_left ltx_border_tt" id="A1.T10.1.1.1.1.2"><span class="ltx_text ltx_font_bold" id="A1.T10.1.1.1.1.2.1">Definition</span></td>
</tr>
<tr class="ltx_tr" id="A1.T10.1.1.2.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="A1.T10.1.1.2.2.1"><span class="ltx_text ltx_font_bold" id="A1.T10.1.1.2.2.1.1">Calculation Error (CA)</span></th>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T10.1.1.2.2.2">Error appears during the calculation process.</td>
</tr>
<tr class="ltx_tr" id="A1.T10.1.1.3.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A1.T10.1.1.3.3.1"><span class="ltx_text ltx_font_bold" id="A1.T10.1.1.3.3.1.1">Counting Error (CO)</span></th>
<td class="ltx_td ltx_align_left" id="A1.T10.1.1.3.3.2">Error occurs during the counting process.</td>
</tr>
<tr class="ltx_tr" id="A1.T10.1.1.4.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A1.T10.1.1.4.4.1"><span class="ltx_text ltx_font_bold" id="A1.T10.1.1.4.4.1.1">Context Value Error (CV)</span></th>
<td class="ltx_td ltx_align_left" id="A1.T10.1.1.4.4.2">Error arises when attributes of named entities do not align with the information provided.</td>
</tr>
<tr class="ltx_tr" id="A1.T10.1.1.5.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A1.T10.1.1.5.5.1"><span class="ltx_text ltx_font_bold" id="A1.T10.1.1.5.5.1.1">Hallucination (HA)</span></th>
<td class="ltx_td ltx_align_left" id="A1.T10.1.1.5.5.2">Error involves adding fictitious unrelated statements contradictory to the question.</td>
</tr>
<tr class="ltx_tr" id="A1.T10.1.1.6.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A1.T10.1.1.6.6.1"><span class="ltx_text ltx_font_bold" id="A1.T10.1.1.6.6.1.1">Unit Conversion Error (UC)</span></th>
<td class="ltx_td ltx_align_left" id="A1.T10.1.1.6.6.2">Error occurs during unit conversion process.</td>
</tr>
<tr class="ltx_tr" id="A1.T10.1.1.7.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A1.T10.1.1.7.7.1"><span class="ltx_text ltx_font_bold" id="A1.T10.1.1.7.7.1.1">Operator Error (OP)</span></th>
<td class="ltx_td ltx_align_left" id="A1.T10.1.1.7.7.2">Error involves a single operator being erroneously applied within the expression.</td>
</tr>
<tr class="ltx_tr" id="A1.T10.1.1.8.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A1.T10.1.1.8.8.1"><span class="ltx_text ltx_font_bold" id="A1.T10.1.1.8.8.1.1">Formula Confusion Error (FC)</span></th>
<td class="ltx_td ltx_align_left" id="A1.T10.1.1.8.8.2">Error appears when applying formula in inappropriate scenario.</td>
</tr>
<tr class="ltx_tr" id="A1.T10.1.1.9.9">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A1.T10.1.1.9.9.1"><span class="ltx_text ltx_font_bold" id="A1.T10.1.1.9.9.1.1">Missing Step (MS)</span></th>
<td class="ltx_td ltx_align_left" id="A1.T10.1.1.9.9.2">Error entails an incomplete generation of reasoning process, lacking a necessary step.</td>
</tr>
<tr class="ltx_tr" id="A1.T10.1.1.10.10">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A1.T10.1.1.10.10.1"><span class="ltx_text ltx_font_bold" id="A1.T10.1.1.10.10.1.1">Contradictory Step (CS)</span></th>
<td class="ltx_td ltx_align_left" id="A1.T10.1.1.10.10.2">Error manifests inconsistency between preceding and subsequent reasoning steps.</td>
</tr>
<tr class="ltx_tr" id="A1.T10.1.1.11.11">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="A1.T10.1.1.11.11.1"><span class="ltx_text ltx_font_bold" id="A1.T10.1.1.11.11.1.1">Question Misinterpretation Error(QM)</span></th>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T10.1.1.11.11.2">Error appears because the <span class="ltx_text ltx_font_bold" id="A1.T10.1.1.11.11.2.1">question</span> is misunderstood, such as ignoring specific constraints in the question.</td>
</tr>
<tr class="ltx_tr" id="A1.T10.1.1.12.12">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A1.T10.1.1.12.12.1"><span class="ltx_text ltx_font_bold" id="A1.T10.1.1.12.12.1.1">Confusing Concept Error (CC)</span></th>
<td class="ltx_td ltx_align_left" id="A1.T10.1.1.12.12.2">Error occurs because two similar but actually different concepts are mistakenly confused.</td>
</tr>
<tr class="ltx_tr" id="A1.T10.1.1.13.13">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_r" id="A1.T10.1.1.13.13.1"><span class="ltx_text ltx_font_bold" id="A1.T10.1.1.13.13.1.1">Nonsensical Output (NO)</span></th>
<td class="ltx_td ltx_align_left ltx_border_bb" id="A1.T10.1.1.13.13.2">Inconceivable, illogical, or question-irrelevant output.</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a taxonomy of error types encountered in mathematical reasoning by large language models (LLMs).  It expands on a previous taxonomy by Li et al. (2024e) to include more fine-grained categories.  Specifically, it adds 'Question Misinterpretation Error,' 'Confusing Concept Error,' and 'Nonsensical Output' to better classify the diverse range of errors observed in LLM responses. Figure 12 in the paper provides examples of each error type to illustrate the taxonomy.
> <details>
> <summary>read the caption</summary>
> Table 10: Error taxonomy adapted from Li et al. (2024e). We add “Question Misinterpretation Error (QM)”, “Confusing Concept Error (CC)”, and “Nonsensical Output (NO)” to allow for a more fine-grained identification of error types. Corresponding examples are provided in Figure 12.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2503.17439/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.17439/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.17439/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.17439/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.17439/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.17439/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.17439/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.17439/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.17439/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.17439/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.17439/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.17439/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.17439/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.17439/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.17439/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.17439/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.17439/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.17439/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.17439/19.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.17439/20.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}