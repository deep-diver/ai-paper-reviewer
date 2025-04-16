---
title: "LazyReview A Dataset for Uncovering Lazy Thinking in NLP Peer Reviews"
summary: "LAZYREVIEW: New dataset to reveal lazy thinking in NLP peer reviews, enhancing detection & quality!"
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Natural Language Processing", "Text Classification", "🏢 Ubiquitous Knowledge Processing Lab, Department of Computer Science and Hessian Center for AI (hessian.AI), Technical University of Darmstadt",]
showSummary: true
date: 2025-04-15
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2504.11042 {{< /keyword >}}
{{< keyword icon="writer" >}} Sukannya Purkayastha et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-04-16 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2504.11042" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2504.11042" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2504.11042/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Peer review in scientific publishing is crucial for quality control. But 'quick' heuristics, or **lazy thinking**, can compromise review quality due to increasing workload. Automating the detection of such heuristics can help improve the peer-reviewing process. This work introduces **LAZYREVIEW, a peer-review dataset** with fine-grained lazy thinking categories annotated, filling the gap of existing NLP research limitations on the issue. 



LAZYREVIEW is a dataset of peer-review sentences annotated with lazy thinking categories. **Large Language Models(LLMs) struggle in a zero-shot setting**, but instruction-based fine-tuning significantly boosts performance, highlighting the importance of high-quality training data.  Reviews revised with LAZYREVIEW feedback are more actionable. Releasing this dataset and enhanced guidelines can help in the community to train junior reviewers.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} LAZYREVIEW dataset is introduced for detecting lazy thinking instances in NLP peer reviews. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} The annotation guidelines are enhanced to improve annotation quality. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Instruction tuning on the dataset significantly improves LLM performance in detecting lazy thinking. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper is important because it addresses the critical issue of **lazy thinking in peer reviews**, contributing to the improvement of scientific publication quality. By providing a **high-quality annotated dataset**, it enables further research into automated detection methods.  It can also be used to **train junior reviewers** in the community. It also **opens avenues for exploring the impact of AI-generated reviews**.

------
#### Visual Insights



![](https://arxiv.org/html/2504.11042/x1.png)

> 🔼 The figure showcases examples of 'lazy thinking' in peer reviews, a phenomenon where reviewers dismiss papers based on superficial heuristics rather than thorough analysis.  It presents two review segments from the ACL Rolling Review (ARR) dataset (sourced from the NLPeer dataset). The first segment exemplifies the 'results are not novel' category of lazy thinking, while the second highlights the 'approach is only tested on non-English data' category.  These examples illustrate how reviewers might use shortcuts in their evaluations, potentially leading to unfair or inaccurate assessments.
> <details>
> <summary>read the caption</summary>
> Figure 1: Illustration of lazy thinking in ARR-22 reviews sourced from NLPeer Dycke et al. (2023). The first review segment belongs to the class ‘The results are not novel.’ The last segment pertains to, ‘The approach is tested only on [not English], so unclear if it will generalize to other languages.’ as per ARR-22 guidelines.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S2.T1.1">
<tr class="ltx_tr" id="S2.T1.1.1">
<td class="ltx_td ltx_align_justify ltx_border_tt" id="S2.T1.1.1.1">
<span class="ltx_inline-block ltx_align_top" id="S2.T1.1.1.1.1">
<span class="ltx_p" id="S2.T1.1.1.1.1.1"><span class="ltx_text ltx_font_bold" id="S2.T1.1.1.1.1.1.1" style="background-color:#CED5DA;">Heuristics</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_tt" id="S2.T1.1.1.2">
<span class="ltx_inline-block ltx_align_top" id="S2.T1.1.1.2.1">
<span class="ltx_p" id="S2.T1.1.1.2.1.1"><span class="ltx_text ltx_font_bold" id="S2.T1.1.1.2.1.1.1" style="background-color:#CED5DA;">Description</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_tt" id="S2.T1.1.1.3">
<span class="ltx_inline-block ltx_align_top" id="S2.T1.1.1.3.1">
<span class="ltx_p" id="S2.T1.1.1.3.1.1"><span class="ltx_text ltx_font_bold" id="S2.T1.1.1.3.1.1.1" style="background-color:#CED5DA;">Example review segments</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S2.T1.1.2">
<td class="ltx_td ltx_align_justify ltx_border_t" id="S2.T1.1.2.1">
<span class="ltx_inline-block ltx_align_top" id="S2.T1.1.2.1.1">
<span class="ltx_p" id="S2.T1.1.2.1.1.1"><em class="ltx_emph ltx_font_italic" id="S2.T1.1.2.1.1.1.1">The results are not surprising</em></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="S2.T1.1.2.2">
<span class="ltx_inline-block ltx_align_top" id="S2.T1.1.2.2.1">
<span class="ltx_p" id="S2.T1.1.2.2.1.1">Many findings seem obvious in retrospect, but this does not mean that the community is already aware of them and can use them as building blocks for future work.</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="S2.T1.1.2.3">
<span class="ltx_inline-block ltx_align_top" id="S2.T1.1.2.3.1">
<span class="ltx_p" id="S2.T1.1.2.3.1.1">Transfer learning does not look to bring significant improvements. Looking at the variance, the results with and without transfer learning overlap. This is not surprising.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S2.T1.1.3">
<td class="ltx_td ltx_align_justify ltx_border_t" id="S2.T1.1.3.1">
<span class="ltx_inline-block ltx_align_top" id="S2.T1.1.3.1.1">
<span class="ltx_p" id="S2.T1.1.3.1.1.1"><em class="ltx_emph ltx_font_italic" id="S2.T1.1.3.1.1.1.1">The results are not novel</em></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="S2.T1.1.3.2">
<span class="ltx_inline-block ltx_align_top" id="S2.T1.1.3.2.1">
<span class="ltx_p" id="S2.T1.1.3.2.1.1">Such broad claims need to be backed up with references.</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="S2.T1.1.3.3">
<span class="ltx_inline-block ltx_align_top" id="S2.T1.1.3.3.1">
<span class="ltx_p" id="S2.T1.1.3.3.1.1">The approach the authors propose is still useful but not very novel.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S2.T1.1.4">
<td class="ltx_td ltx_align_justify ltx_border_b ltx_border_t" id="S2.T1.1.4.1">
<span class="ltx_inline-block ltx_align_top" id="S2.T1.1.4.1.1">
<span class="ltx_p" id="S2.T1.1.4.1.1.1"><em class="ltx_emph ltx_font_italic" id="S2.T1.1.4.1.1.1.1">The paper has language errors</em></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_b ltx_border_t" id="S2.T1.1.4.2">
<span class="ltx_inline-block ltx_align_top" id="S2.T1.1.4.2.1">
<span class="ltx_p" id="S2.T1.1.4.2.1.1">As long as the writing is clear enough, better scientific content should be more valuable than better journalistic skills.</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_b ltx_border_t" id="S2.T1.1.4.3">
<span class="ltx_inline-block ltx_align_top" id="S2.T1.1.4.3.1">
<span class="ltx_p" id="S2.T1.1.4.3.1.1">The paper would be easy to follow with English proofreading even though the overall idea is understandable.</span>
</span>
</td>
</tr>
</table>{{< /table-caption >}}

> 🔼 This table presents a subset of the lazy thinking categories defined in the ACL Rolling Review (ARR) 2022 guidelines by Rogers and Augenstein (2021).  For each category, it provides a description and example sentences extracted from the LAZYREVIEW dataset to illustrate the characteristics of that category. The examples showcase the nuances of lazy thinking in actual peer review comments.
> <details>
> <summary>read the caption</summary>
> Table 1: Descriptions for some of the lazy thinking classes sourced from ARR 2022 guidelines Rogers and Augenstein (2021). We present some examples corresponding to these classes from our dataset, LazyReview.
> </details>





### In-depth insights


#### Lazy Thinking Def.
The concept of 'Lazy Thinking', in this NLP paper, is crucial for understanding biases in peer reviews. It refers to the **tendency of reviewers to rely on superficial heuristics or preconceived notions instead of thorough analysis**. This can lead to unfair evaluations and hinder scientific progress. The authors emphasize the importance of addressing 'Lazy Thinking' to improve the quality and fairness of the peer-review process, promoting more **constructive and justified feedback**. The ultimate goal is to enhance the overall rigor and reliability of scientific publishing by minimizing biased assessments based on lack of effort or quick judgements which would lead to **suboptimal decisions in the peer review process**.

#### LAZYREVIEW Data
The description of the LAZYREVIEW dataset, the methodology, or any analysis connected to it offers critical insights. It is **the first annotated dataset specifically designed for detecting lazy thinking** in NLP peer reviews. The **fine-grained lazy thinking categories** based on Rogers and Augenstein (2021) adds complexity to this area. Furthermore, by building this data, it addresses a critical gap since **no real-world dataset existed** to support the detection of tools. Analyzing this part will also yield key information about the composition, scale, annotation process and limitations of the resource, all crucial for future research.

#### LLM's Fine-Tuning
LLM fine-tuning emerges as a vital technique for adapting general-purpose language models to specific tasks and datasets, improving performance and efficiency. **Instruction-based fine-tuning aligns LLMs with particular guidelines, notably enhancing outputs**, this method is effective at aligning models with new tasks. It improves performance, making models more accurate. **Low-Rank Adaptation (LoRa)** enables parameter-efficient fine-tuning, optimizing limited resources by training a fraction of the parameters. **This work reveals instruction tuning significantly improves** results for both detailed and general categorization using the model with enhanced instruction-based fine-tuning and positive feedback. Also, LoRa with SciRiff is shown to boost efficiency.

#### ICL & Data-Mix
The paper explores the impact of varying **data mixes** during instruction tuning to improve LLM performance in detecting lazy thinking. By combining datasets like SCIRIFF, TÜLU, and LAZYREVIEW, the study aims to optimize model accuracy and data efficiency. The use of instruction tuning with the proposed **mixed data** aims to enhance LLMs' ability to identify nuanced instances of lazy thinking, and the study experiments with different proportions of data from each source to find the ideal mix, thereby optimizing model comprehension and classification performance in the context of NLP peer reviews. This highlights the significance of well-curated data mixes in achieving optimal model results.

#### Improve Rewrites
Improving rewrites is crucial for enhancing the quality of NLP peer reviews by addressing **lazy thinking**. By explicitly signaling lazy thinking, reviewers can produce more actionable feedback. A controlled experiment, where reviewers rewrite reports with and without lazy thinking annotations, shows that annotations lead to significantly more adherence to guidelines, and greater constructiveness, showcasing that **targeted guidance enhances review quality**. Bradley-Terry preference ranking confirms the annotations' effectiveness, leading to constructive and justified feedback. Using annotation, lazy thinking decreases in paper reviewing.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2504.11042/x2.png)

> 🔼 This bar chart presents the frequency distribution of the 18 different lazy thinking categories in the LAZYREVIEW dataset.  The x-axis lists each lazy thinking category and the y-axis shows their counts.  It provides a visual representation of the class imbalance within the dataset, highlighting which lazy thinking categories are most and least prevalent in the NLP peer review sentences.
> <details>
> <summary>read the caption</summary>
> Figure 2: Distribution of lazy thinking labels in our dataset, LazyReview.
> </details>



![](https://arxiv.org/html/2504.11042/x4.png)

> 🔼 This figure is a part of the experimental results. It shows the performance of Gemma 7B model, one of the LLMs used in the study, during the in-context learning experiment of round 3. The x-axis represents the number of exemplars (1, 2, or 3), and the y-axis represents the accuracy. Different colors represent different methods used for selecting exemplars (BM25, Random, TopK, VoteK, Static). Error bars indicate the use of only the target segment (T) as the information source, and accuracy refers to the use of GPT-based accuracy.
> <details>
> <summary>read the caption</summary>
> (a) Gemma 7B
> </details>



![](https://arxiv.org/html/2504.11042/x5.png)

> 🔼 The figure shows the performance of the LLaMa 7B model in detecting lazy thinking in NLP peer reviews.  The x-axis represents different methods for selecting in-context learning (ICL) examples, while the y-axis shows the accuracy. The graph displays the performance for both fine-grained and coarse-grained classification tasks. Error bars represent the accuracy using only the target segment (T) as the information source.  The figure demonstrates the impact of different ICL example selection techniques on the model's ability to correctly identify instances of lazy thinking, comparing methods like BM25, Random, TopK, VoteK, and Static selection.
> <details>
> <summary>read the caption</summary>
> (b) LLaMa 7B
> </details>



![](https://arxiv.org/html/2504.11042/x6.png)

> 🔼 This figure displays the performance of the LLaMa 13B model across various experimental setups.  It showcases the model's accuracy in detecting lazy thinking in peer reviews, broken down by fine-grained and coarse-grained classification. Different data mixes and prompting methods (target segment only (T) or target segment and full review (RT)) are used, highlighting the model's behavior across varied conditions and showing the impact of in-context learning, positive examples, and instruction tuning.
> <details>
> <summary>read the caption</summary>
> (c) LLaMa 13B
> </details>



![](https://arxiv.org/html/2504.11042/x7.png)

> 🔼 The figure shows the performance of Mistral 7B, a large language model, on the task of identifying 'lazy thinking' in peer reviews.  It displays the model's accuracy across different rounds of annotation, which involved refining the guidelines used to label lazy thinking behaviors in reviews.  Specifically, it highlights the impact of improved guidelines on the model's ability to accurately classify instances of lazy thinking.
> <details>
> <summary>read the caption</summary>
> (d) Mistral 7B
> </details>



![](https://arxiv.org/html/2504.11042/x8.png)

> 🔼 This figure displays the performance of the SciTülu 7B language model on a specific task.  It likely shows the model's accuracy or other relevant metrics across different experimental conditions, such as different input methods or data sets.  The specific metrics and conditions would need to be determined from the surrounding text within the paper.  The graph's visual representation (bars, lines, etc.) would also aid in interpreting the results more precisely.
> <details>
> <summary>read the caption</summary>
> (e) SciTülu 7B
> </details>



![](https://arxiv.org/html/2504.11042/x9.png)

> 🔼 This figure shows the performance of the Qwen 7B model in the experiment on detecting lazy thinking in peer reviews.  Specifically, it displays the model's accuracy in a multi-class classification task, where each class represents a different type of lazy thinking.  The x-axis likely represents different methods or variations used for in-context learning, and the y-axis depicts the model's performance (likely accuracy).  Different colored bars may show performance results based on using different numbers of examples in in-context learning. This data helps to assess the effectiveness of different in-context learning strategies for improving the model's ability to identify various forms of lazy thinking.
> <details>
> <summary>read the caption</summary>
> (f) Qwen 7B
> </details>



![](https://arxiv.org/html/2504.11042/x11.png)

> 🔼 This figure displays the performance of various Large Language Models (LLMs) on a fine-grained classification task during the third round of the annotation process for the LAZYREVIEW dataset.  The models were evaluated using different in-context learning (ICL) methods.  The results are shown as accuracy scores using GPT-based evaluation. Error bars represent the performance when only the target segment (T), not the full review context, was used as input.
> <details>
> <summary>read the caption</summary>
> Figure 3: Performance of LLMs on using different In Context learning (ICL) methods for Round 3 of our annotation study for fine-grained classification. Error bars indicate using only the target segment (T) as the information source. Acc refers to using GPT-based accuracy
> </details>



![](https://arxiv.org/html/2504.11042/x12.png)

> 🔼 This figure displays the performance of the Gemma 7B large language model (LLM) in the context of in-context learning (ICL) using different methods for Round 3 of an annotation study.  The graph shows accuracy across different methods of selecting in-context examples for both fine-grained and coarse-grained classification tasks. Error bars represent using only the target segment ('T') as information, while the accuracy scores are based on GPT evaluations.
> <details>
> <summary>read the caption</summary>
> (a) Gemma 7B
> </details>



![](https://arxiv.org/html/2504.11042/x13.png)

> 🔼 The figure shows the performance of the LLaMa 7B model on the fine-grained classification task during Round 3 of the annotation study.  The x-axis represents the number of in-context learning (ICL) examples used (1, 2, or 3), and the y-axis shows the accuracy. Different ICL selection methods are compared: BM25, Random, TopK, Votek, and Static. The error bars indicate the accuracy when only the target segment (T) is used as the information source.  GPT-based accuracy is reported.
> <details>
> <summary>read the caption</summary>
> (b) LLaMa 7B
> </details>



![](https://arxiv.org/html/2504.11042/x14.png)

> 🔼 The figure displays the performance of the LLaMa 13B model across different experimental setups for fine-grained classification.  The x-axis represents the percentage of dataset mixes used in training, and the y-axis represents the accuracy achieved.  Different colored lines show the performance for various combinations of in-context learning techniques and prompt types (target segment only or target segment combined with full review). The graph visualizes how the model's accuracy changes in response to different training data proportions and input variations.
> <details>
> <summary>read the caption</summary>
> (c) LLaMa 13B
> </details>



![](https://arxiv.org/html/2504.11042/x15.png)

> 🔼 The figure shows the performance of Mistral 7B model in detecting lazy thinking in NLP peer reviews. It presents the accuracy of the model across different annotation rounds, comparing its performance in fine-grained and coarse-grained classification tasks, with and without using the combination of review and target segment (RT).
> <details>
> <summary>read the caption</summary>
> (d) Mistral 7B
> </details>



![](https://arxiv.org/html/2504.11042/x16.png)

> 🔼 This figure presents the performance of the SciTülu 7B language model on a fine-grained classification task, specifically for identifying lazy thinking in peer reviews.  The results are part of a study evaluating various Large Language Models (LLMs) on their ability to detect and classify instances of lazy thinking, a phenomenon where reviewers dismiss or criticize papers based on superficial heuristics or preconceived notions rather than thorough analysis.  This specific figure likely shows the model's performance across different experimental setups or parameters, possibly comparing its performance with and without in-context learning or different datasets.
> <details>
> <summary>read the caption</summary>
> (e) SciTülu 7B
> </details>



![](https://arxiv.org/html/2504.11042/x17.png)

> 🔼 The figure shows the performance of the Qwen 7B model in detecting lazy thinking in peer reviews.  The x-axis represents different in-context learning (ICL) methods used to enhance model comprehension of lazy thinking, including BM25, Random, TopK, Votek, and Static. The y-axis represents the accuracy of the model in classifying review segments. Error bars show the standard deviation across multiple runs.  The plot demonstrates how different ICL approaches affect the model's accuracy in this task.
> <details>
> <summary>read the caption</summary>
> (f) Qwen 7B
> </details>



![](https://arxiv.org/html/2504.11042/x18.png)

> 🔼 This figure displays the performance of various Large Language Models (LLMs) on a coarse-grained classification task during the third round of the annotation study.  The models were evaluated using different in-context learning (ICL) methods to determine the presence of lazy thinking in peer reviews.  The accuracy of the LLMs was measured using a GPT-based evaluator. Error bars in the chart illustrate the performance variations when only the target segment (T) of the review text is used as input, rather than the full review text.
> <details>
> <summary>read the caption</summary>
> Figure 4: Performance of LLMs on using different In Context learning (ICL) methods for Round 3 of our annotation study for the coarse classification task. Error bars indicate using only the target segment (T) as the information source. Acc refers to using GPT-based evaluator accuracy.
> </details>



![](https://arxiv.org/html/2504.11042/x19.png)

> 🔼 This figure shows the prompt used to instruct GPT-4 to extract review segments from the 'Summary of Weaknesses' section of NLP peer reviews that are relevant to the task of identifying lazy thinking.  The prompt provides a definition of lazy thinking and lists examples of different categories of lazy thinking.  It instructs the model to only extract segments relevant to those categories.
> <details>
> <summary>read the caption</summary>
> Figure 5: Prompt for GPT based review segment extraction
> </details>



![](https://arxiv.org/html/2504.11042/x20.png)

> 🔼 This figure shows the prompt template used for defining lazy thinking in the LAZYREVIEW dataset.  The prompt begins by establishing the context of peer review, its growing workload, and the phenomenon of 'lazy thinking.' It then presents a dictionary defining several categories of lazy thinking, each with a detailed explanation. This comprehensive prompt ensures annotators have a clear understanding of the different types of lazy thinking before they begin their annotation task.  Each lazy thinking category provided serves as a guide for identifying and labeling instances within the review dataset.
> <details>
> <summary>read the caption</summary>
> Figure 6: Fixed Prompt for defining lazy thinking
> </details>



![](https://arxiv.org/html/2504.11042/x21.png)

> 🔼 This figure shows the prompt template used for the fine-grained classification task in the LAZYREVIEW dataset experiment.  The prompt instructs the language model to classify a given target sentence from a review into one of several predefined lazy thinking categories. The prompt includes the full review text and the target segment to provide context for the classification.
> <details>
> <summary>read the caption</summary>
> Figure 7: Prompt for fine-grained classification
> </details>



![](https://arxiv.org/html/2504.11042/x22.png)

> 🔼 This figure shows the prompt template used for the coarse-grained classification task in the LAZYREVIEW dataset creation.  The task is to classify a given review segment as either containing lazy thinking or not. The prompt provides context by defining lazy thinking in the context of NLP peer review, and includes instructions on how to perform the classification task.  The model is given both the full review and the target review segment for context.
> <details>
> <summary>read the caption</summary>
> Figure 8: Prompt for coarse-grained classification
> </details>



![](https://arxiv.org/html/2504.11042/x23.png)

> 🔼 This figure displays the prompt template used for the fine-grained classification task in Round 3 of the LAZYREVIEW dataset creation.  The prompt provides instructions to the annotators, including a full review text, a highlighted target segment from the review, and a request to classify the target segment into one of the predefined 'lazy thinking' categories. An example is shown to illustrate the annotation process. This approach uses in-context learning, where the model learns to classify based on examples shown within the prompt.
> <details>
> <summary>read the caption</summary>
> Figure 9: Prompt for fine-grained classification based on In-Context Learning (ICL) as used in Round 3 of our study
> </details>



![](https://arxiv.org/html/2504.11042/x24.png)

> 🔼 This figure displays the prompt template used for the coarse-grained classification task in Round 3 of the LAZYREVIEW dataset creation.  The prompt guides the language model to classify review segments as either exhibiting 'lazy thinking' or not.  It provides context, instructions, and an example to aid the model's comprehension of the task. The prompt leverages in-context learning by including an example of a review segment and its corresponding classification, helping the model learn the task more effectively.
> <details>
> <summary>read the caption</summary>
> Figure 10: Prompt for coarse-grained classification based on In-Context Learning (ICL) as used in Round 3 of our study
> </details>



![](https://arxiv.org/html/2504.11042/x25.png)

> 🔼 This figure displays the performance of the Gemma 7B language model across different in-context learning methods used in Round 3 of the annotation study for fine-grained classification.  The x-axis represents the number of exemplars (1, 2, or 3), and the y-axis represents accuracy.  Each bar represents the accuracy achieved using a specific in-context learning method (BM25, Random, TopK, VoteK, Static). Error bars are included to show variability, and only the target segment (T) is used as the information source.
> <details>
> <summary>read the caption</summary>
> (a) Gemma 7B
> </details>



![](https://arxiv.org/html/2504.11042/x26.png)

> 🔼 The figure shows the performance of the LLaMa 7B model in detecting lazy thinking in peer reviews.  Specifically, it illustrates the model's performance across different annotation rounds.  The x-axis likely represents the annotation round (e.g., indicating improvements in guidelines over time), and the y-axis shows performance metrics, likely accuracy.  Different colored bars may represent different variations of the task (e.g., using only the target segment, or using the full review and the target segment).  The figure likely aims to demonstrate how model performance changes as the annotation guidelines and training data improve.
> <details>
> <summary>read the caption</summary>
> (b) LLaMa 7B
> </details>



![](https://arxiv.org/html/2504.11042/x27.png)

> 🔼 The figure shows the performance of the LLaMa 13B model in the fine-grained classification task.  The x-axis represents the different data mixes used for training, ranging from ‘No Mix’ (using only the LAZYREVIEW dataset) to ‘Tülu Mix’, ‘SciRiFF Mix’, and ‘Full Mix’ (combinations of LAZYREVIEW with other datasets). The y-axis represents the accuracy of the model.  Different colored lines and shaded areas represent different input types (target sentence only (T), target sentence and review (RT), etc.) and different annotation rounds. The figure illustrates how the model's performance changes with different amounts and types of training data.
> <details>
> <summary>read the caption</summary>
> (c) LLaMa 13B
> </details>



![](https://arxiv.org/html/2504.11042/x28.png)

> 🔼 This figure shows the performance of Mistral 7B, a large language model, in detecting lazy thinking in peer reviews.  The x-axis represents different methods used for in-context learning (ICL) during the third round of annotation, and the y-axis shows the accuracy.  The results indicate how effective each ICL method is in improving the model's ability to identify lazy thinking instances.
> <details>
> <summary>read the caption</summary>
> (d) Mistral 7B
> </details>



![](https://arxiv.org/html/2504.11042/x29.png)

> 🔼 This figure presents the performance of the SciTülu 7B language model on the task of detecting lazy thinking in peer reviews.  The x-axis represents different in-context learning methods (BM25, Random, TopK, VoteK, Static) used for selecting examples to aid the model's understanding. The y-axis shows the accuracy achieved.  The graph helps evaluate how different example selection techniques impact the model's ability to classify review segments correctly.
> <details>
> <summary>read the caption</summary>
> (e) SciTülu 7B
> </details>



![](https://arxiv.org/html/2504.11042/x30.png)

> 🔼 The figure shows the performance of the Qwen 7B model in the in-context learning experiment for the fine-grained classification task of the LAZYREVIEW dataset.  It compares different methods for selecting in-context examples (BM25, Random, TopK, VoteK, Static) and shows the accuracy achieved using only the target segment (T) as the information source. Error bars represent variations in accuracy across multiple runs.
> <details>
> <summary>read the caption</summary>
> (f) Qwen 7B
> </details>



![](https://arxiv.org/html/2504.11042/x31.png)

> 🔼 This figure (Figure 12(g)) presents the performance of the instruction-tuned Yi 6B model on the fine-grained classification task.  It showcases the model's accuracy across various datasets (No Mix, Tülu Mix, SciRiFF Mix, Full Mix) and different proportions of those datasets. The x-axis represents the percentage of the dataset used for training, and the y-axis shows the accuracy achieved by the model. Error bars illustrate the variability in performance. The graph allows for a visual comparison of how the model's performance changes with different dataset sizes and compositions.
> <details>
> <summary>read the caption</summary>
> (g) Yi 6B
> </details>



![](https://arxiv.org/html/2504.11042/x32.png)

> 🔼 This figure displays the performance of various instruction-tuned Large Language Models (LLMs) on a fine-grained classification task. The models were evaluated using different proportions of dataset mixes, with only the target segment (T) of each review used as input to the model.  The performance is measured and shown for each LLM across different dataset mixes.
> <details>
> <summary>read the caption</summary>
> Figure 11: Performance of instruction-tuned LLMs for fine-grained classification on the dev set with multiple percentages of dataset mixes using target segment (T) as the source of information in the prompt.
> </details>



![](https://arxiv.org/html/2504.11042/x33.png)

> 🔼 This figure presents the performance of the Gemma 7B language model on a fine-grained classification task, as part of an experiment to detect lazy thinking in NLP peer reviews.  It shows the accuracy (vertical axis) achieved using different in-context learning methods for selecting examples (BM25, Random, TopK, VoteK, and Static)  across three annotation rounds (horizontal axis). The results illustrate how the choice of example selection and the annotation round impact the model's performance in identifying subtle nuances in text indicating lazy thinking.
> <details>
> <summary>read the caption</summary>
> (a) Gemma 7B
> </details>



![](https://arxiv.org/html/2504.11042/x34.png)

> 🔼 The figure shows the performance of the LLaMa 7B model on the fine-grained classification task during Round 3 of the annotation study.  Different in-context learning (ICL) methods were used, and the performance is shown for different numbers of examples.  Error bars indicate whether the target segment alone (T) or a combination of the review and the target segment (RT) was used as the information source.  Accuracy is assessed using GPT-based methods.
> <details>
> <summary>read the caption</summary>
> (b) LLaMa 7B
> </details>



![](https://arxiv.org/html/2504.11042/x35.png)

> 🔼 This figure shows the performance of the LLaMa 13B model on the fine-grained classification task during Round 3 of the annotation study.  The graph displays the model's accuracy using various in-context learning methods, specifically: BM25, Random, TopK, VoteK, and Static. Different color bars represent different methods, with error bars indicating the use of only the target segment (T) as the information source.  The x-axis represents the number of exemplars used (1, 2, or 3), and the y-axis represents accuracy.
> <details>
> <summary>read the caption</summary>
> (c) LLaMa 13B
> </details>



![](https://arxiv.org/html/2504.11042/x36.png)

> 🔼 This figure shows the performance of Mistral 7B, a 7-billion parameter instruction-tuned large language model, in the task of detecting lazy thinking in NLP peer reviews.  The x-axis represents the different methods used for selecting in-context learning examples, while the y-axis represents the accuracy.  The different colored bars represent the accuracy achieved using different methods for example selection. The figure illustrates how the choice of in-context learning example selection impacts the performance of the model in this specific NLP task. 
> <details>
> <summary>read the caption</summary>
> (d) Mistral 7B
> </details>



![](https://arxiv.org/html/2504.11042/x37.png)

> 🔼 This figure shows the performance of the SciTülu 7B model on the fine-grained classification task.  It displays the model's accuracy using different in-context learning (ICL) methods.  Specifically, it illustrates the impact of using BM25, Random, TopK, Votek, and Static methods for selecting examples during the annotation process of Round 3. Error bars indicate using only the target segment (T) as the information source; accuracy is determined using GPT-based evaluation.
> <details>
> <summary>read the caption</summary>
> (e) SciTülu 7B
> </details>



![](https://arxiv.org/html/2504.11042/x38.png)

> 🔼 The figure shows the performance of the Qwen 7B model on the fine-grained classification task during Round 3 of the annotation study.  It illustrates the model's accuracy using different in-context learning (ICL) methods. The accuracy is shown as a function of the number of exemplars used, and error bars are included to show variability.  The information source for the model's input is only the target segment (T).
> <details>
> <summary>read the caption</summary>
> (f) Qwen 7B
> </details>



![](https://arxiv.org/html/2504.11042/x39.png)

> 🔼 The figure shows the performance of the Yi 6B instruction-tuned LLM on the fine-grained classification task.  It displays the accuracy scores across multiple data mixes (No Mix, Tülu Mix, SciRiFF Mix, Full Mix) and varying percentages of the data used for training.  The x-axis represents the percentage of data, and the y-axis represents the accuracy. Error bars show the variation in performance across different runs. The model's accuracy is evaluated using two different metrics: string matching (S.A.) and a GPT-based semantic evaluation (G.A.). Both metrics are displayed on the graph, illustrating the differences between exact string matches and semantic similarity.
> <details>
> <summary>read the caption</summary>
> (g) Yi 6B
> </details>



![](https://arxiv.org/html/2504.11042/x40.png)

> 🔼 This figure displays the performance of various instruction-tuned Large Language Models (LLMs) on a fine-grained classification task.  The models were evaluated on a development set using different proportions of training data mixes. The input to the models consisted of both the review text and the target segment (RT).  The graph likely shows the accuracy or F1-score of the models across varying dataset mix percentages, allowing for an analysis of how effective the instruction tuning was and how the model's performance changes with the amount of training data provided.
> <details>
> <summary>read the caption</summary>
> Figure 12: Performance of instruction-tuned LLMs for fine-grained classification on the dev set with multiple percentages of dataset mixes using the combination of review and target segment (RT) as the source of information in the prompt.
> </details>



![](https://arxiv.org/html/2504.11042/x41.png)

> 🔼 This figure presents the performance of the Gemma 7B language model in detecting lazy thinking in peer reviews.  It showcases the model's accuracy across different methods for selecting in-context learning examples (BM25, Random, TopK, VoteK, Static), during Round 3 of the annotation study for the fine-grained classification task.  Error bars represent the use of only the target segment (T) as the information source, and accuracy is measured using a GPT-based approach.
> <details>
> <summary>read the caption</summary>
> (a) Gemma 7B
> </details>



![](https://arxiv.org/html/2504.11042/x42.png)

> 🔼 This figure presents the results of the instruction-tuned LLaMa 7B model for the fine-grained classification task. It displays the model's performance across different data mixes (No Mix, Tülu Mix, SciRiFF Mix, Full Mix), varying the proportion of the data used for training.  The x-axis represents the percentage of the data mix used, and the y-axis represents the accuracy. Error bars indicate using only the target segment (T) as the information source.
> <details>
> <summary>read the caption</summary>
> (b) LLaMa 7B
> </details>



![](https://arxiv.org/html/2504.11042/x43.png)

> 🔼 This figure displays the performance of the LLaMa 13B model across different experimental setups.  The x-axis shows different methods of in-context learning (BM25, Random, TopK, VoteK, Static), and the y-axis shows accuracy.  The different colored bars represent the performance on different rounds of annotation in the LAZYREVIEW dataset.
> <details>
> <summary>read the caption</summary>
> (c) LLaMa 13B
> </details>



![](https://arxiv.org/html/2504.11042/x44.png)

> 🔼 This figure is a bar chart showing the performance of Mistral 7B model in detecting lazy thinking in peer reviews. The chart displays the model's performance on different tasks, including fine-grained classification and coarse-grained classification using two types of input: target segment (T) and a combination of review and target segment (RT). The results are presented for three rounds of annotation in the study.  The performance is measured in terms of accuracy and F1 scores calculated using string matching (SA) and GPT-based methods (GA).
> <details>
> <summary>read the caption</summary>
> (d) Mistral 7B
> </details>



![](https://arxiv.org/html/2504.11042/x45.png)

> 🔼 This figure displays the performance of the SciTülu 7B language model on a fine-grained classification task.  It shows the model's accuracy using different in-context learning (ICL) methods during Round 3 of the annotation study.  The chart visualizes the accuracy using GPT-based evaluation, considering only the target segment (T) as the information source. Error bars represent the variance.
> <details>
> <summary>read the caption</summary>
> (e) SciTülu 7B
> </details>



![](https://arxiv.org/html/2504.11042/x46.png)

> 🔼 This figure displays the performance of the Qwen 7B model across different in-context learning methods in round 3 of the annotation study.  The x-axis shows the number of exemplars (1, 2, or 3), while the y-axis represents accuracy.  The various bars represent different methods for selecting examples (BM25, Random, TopK, Votek, Static). The top half of the figure shows results for fine-grained classification, and the bottom half displays results for coarse-grained classification. Error bars indicate the variation based on using only the target segment (T) as the information source.  Accuracy is calculated using the GPT-based method.
> <details>
> <summary>read the caption</summary>
> (f) Qwen 7B
> </details>



![](https://arxiv.org/html/2504.11042/x47.png)

> 🔼 The figure shows the performance of the Yi 6B instruction-tuned large language model (LLM) on a fine-grained classification task.  The x-axis represents the percentage of different data mixes used for training the model (No Mix, Tülu Mix, SciRiFF Mix, Full Mix), while the y-axis represents the accuracy of the model.  The graph displays accuracy values for three rounds of annotation (R1, R2, R3) and two input methods: target sentence (T) and review + target sentence (RT).  The graph shows how the model's performance changes based on different data training scenarios and annotation rounds.
> <details>
> <summary>read the caption</summary>
> (g) Yi 6B
> </details>



![](https://arxiv.org/html/2504.11042/x48.png)

> 🔼 This figure displays the performance of various instruction-tuned Large Language Models (LLMs) on a coarse-grained classification task. The models were evaluated on a development set, using different proportions of data mixes.  Each LLM's accuracy is shown for various data mix percentages. The 'target segment (T)' method, which uses only the target sentence as input, was employed in this experiment.
> <details>
> <summary>read the caption</summary>
> Figure 13: Performance of instruction-tuned LLMs for coarse-grained classification on the dev set with multiple percentages of dataset mixes using target segment (T) as the source of information in the prompt.
> </details>



![](https://arxiv.org/html/2504.11042/x49.png)

> 🔼 This figure displays the performance of the Gemma 7B language model on the task of detecting lazy thinking in peer reviews.  It shows the model's accuracy using different in-context learning methods (BM25, Random, TopK, Votek, Static) for different numbers of examples. The x-axis represents the number of examples used, and the y-axis represents the accuracy. The figure helps evaluate how effectively different strategies for providing example sentences influence the model's performance.
> <details>
> <summary>read the caption</summary>
> (a) Gemma 7B
> </details>



![](https://arxiv.org/html/2504.11042/x50.png)

> 🔼 This figure shows the performance of the LLaMa 7B model during Round 3 of the annotation study.  Specifically, it illustrates the model's performance in fine-grained classification using different in-context learning (ICL) methods.  The x-axis likely represents the number of in-context examples used, while the y-axis displays accuracy. Different colored bars show results from various ICL strategies (BM25, Random, TopK, VoteK, Static).  The figure helps to analyze the impact of these different ICL methods on the LLaMa 7B model's ability to accurately classify lazy thinking instances.
> <details>
> <summary>read the caption</summary>
> (b) LLaMa 7B
> </details>



![](https://arxiv.org/html/2504.11042/x51.png)

> 🔼 The figure shows the performance of the LLaMa 13B model on the fine-grained classification task in Round 3 of the annotation study.  It displays the accuracy of the model using different in-context learning (ICL) methods,  with error bars indicating the usage of only the target segment (T) as the information source.  The accuracy is measured using GPT-based accuracy.
> <details>
> <summary>read the caption</summary>
> (c) LLaMa 13B
> </details>



![](https://arxiv.org/html/2504.11042/x52.png)

> 🔼 The figure shows the performance of Mistral 7B model in detecting lazy thinking in NLP peer reviews.  It presents results for two tasks: coarse-grained (binary classification of lazy thinking vs. not lazy thinking) and fine-grained (classifying into specific lazy thinking categories).  The results are shown for various experimental setups (different annotation rounds, different input types—target segment only vs. review + target segment), illustrating how model performance varies with the quality and context of the input data and the granularity of the classification task.
> <details>
> <summary>read the caption</summary>
> (d) Mistral 7B
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S3.T2.1.1">
<tr class="ltx_tr" id="S3.T2.1.1.1">
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T2.1.1.1.1" rowspan="3"><span class="ltx_text ltx_font_bold" id="S3.T2.1.1.1.1.1">Models</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" colspan="4" id="S3.T2.1.1.1.2"><span class="ltx_text ltx_font_bold" id="S3.T2.1.1.1.2.1">Fine-gr.</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" colspan="4" id="S3.T2.1.1.1.3"><span class="ltx_text ltx_font_bold" id="S3.T2.1.1.1.3.1">Coarse-gr.</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.1.1.2">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="2" id="S3.T2.1.1.2.1"><span class="ltx_text ltx_font_bold" id="S3.T2.1.1.2.1.1">R1</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" colspan="2" id="S3.T2.1.1.2.2"><span class="ltx_text ltx_font_bold" id="S3.T2.1.1.2.2.1">R2</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" colspan="2" id="S3.T2.1.1.2.3"><span class="ltx_text ltx_font_bold" id="S3.T2.1.1.2.3.1">R1</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" colspan="2" id="S3.T2.1.1.2.4"><span class="ltx_text ltx_font_bold" id="S3.T2.1.1.2.4.1">R2</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.1.1.3">
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T2.1.1.3.1"><span class="ltx_text ltx_font_bold" id="S3.T2.1.1.3.1.1">S.A</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T2.1.1.3.2"><span class="ltx_text ltx_font_bold" id="S3.T2.1.1.3.2.1">G.A</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T2.1.1.3.3"><span class="ltx_text ltx_font_bold" id="S3.T2.1.1.3.3.1">S.A</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T2.1.1.3.4"><span class="ltx_text ltx_font_bold" id="S3.T2.1.1.3.4.1">G.A</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T2.1.1.3.5"><span class="ltx_text ltx_font_bold" id="S3.T2.1.1.3.5.1">S.A</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T2.1.1.3.6"><span class="ltx_text ltx_font_bold" id="S3.T2.1.1.3.6.1">G.A</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T2.1.1.3.7"><span class="ltx_text ltx_font_bold" id="S3.T2.1.1.3.7.1">S.A</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T2.1.1.3.8"><span class="ltx_text ltx_font_bold" id="S3.T2.1.1.3.8.1">G.A</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.1.1.4">
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T2.1.1.4.1"><span class="ltx_text ltx_font_smallcaps" id="S3.T2.1.1.4.1.1">Random</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T2.1.1.4.2">7.11</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T2.1.1.4.3">-</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T2.1.1.4.4"><span class="ltx_text" id="S3.T2.1.1.4.4.1" style="background-color:#CED5DA;">4.34</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T2.1.1.4.5">-</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T2.1.1.4.6">40.7</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T2.1.1.4.7">-</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T2.1.1.4.8">40.7</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T2.1.1.4.9">-</td>
</tr>
<tr class="ltx_tr" id="S3.T2.1.1.5">
<td class="ltx_td ltx_align_left" id="S3.T2.1.1.5.1"><span class="ltx_text ltx_font_smallcaps" id="S3.T2.1.1.5.1.1">Majority</span></td>
<td class="ltx_td ltx_align_left" id="S3.T2.1.1.5.2">11.1</td>
<td class="ltx_td ltx_align_left" id="S3.T2.1.1.5.3">-</td>
<td class="ltx_td ltx_align_left" id="S3.T2.1.1.5.4"><span class="ltx_text" id="S3.T2.1.1.5.4.1" style="background-color:#CED5DA;">7.34</span></td>
<td class="ltx_td ltx_align_left" id="S3.T2.1.1.5.5">-</td>
<td class="ltx_td ltx_align_left" id="S3.T2.1.1.5.6">51.4</td>
<td class="ltx_td ltx_align_left" id="S3.T2.1.1.5.7">-</td>
<td class="ltx_td ltx_align_left" id="S3.T2.1.1.5.8">51.4</td>
<td class="ltx_td ltx_align_left" id="S3.T2.1.1.5.9">-</td>
</tr>
<tr class="ltx_tr" id="S3.T2.1.1.6">
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T2.1.1.6.1">Gemma + <span class="ltx_text ltx_font_smallcaps" id="S3.T2.1.1.6.1.1">T</span>
</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T2.1.1.6.2">22.2</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T2.1.1.6.3">52.2</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T2.1.1.6.4"><span class="ltx_text" id="S3.T2.1.1.6.4.1" style="background-color:#FFBFBF;">26.7</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T2.1.1.6.5"><span class="ltx_text" id="S3.T2.1.1.6.5.1" style="background-color:#FFBFBF;">58.1</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T2.1.1.6.6">44.3</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T2.1.1.6.7">51.1</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T2.1.1.6.8"><span class="ltx_text" id="S3.T2.1.1.6.8.1" style="background-color:#FFBFBF;">46.1</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T2.1.1.6.9"><span class="ltx_text" id="S3.T2.1.1.6.9.1" style="background-color:#FFBFBF;">54.4</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.1.1.7">
<td class="ltx_td ltx_align_left" id="S3.T2.1.1.7.1">Gemma + <span class="ltx_text ltx_font_smallcaps" id="S3.T2.1.1.7.1.1">RT</span>
</td>
<td class="ltx_td ltx_align_left" id="S3.T2.1.1.7.2">12.2</td>
<td class="ltx_td ltx_align_left" id="S3.T2.1.1.7.3">46.7</td>
<td class="ltx_td ltx_align_left" id="S3.T2.1.1.7.4"><span class="ltx_text" id="S3.T2.1.1.7.4.1" style="background-color:#CED5DA;">11.6</span></td>
<td class="ltx_td ltx_align_left" id="S3.T2.1.1.7.5"><span class="ltx_text" id="S3.T2.1.1.7.5.1" style="background-color:#FFBFBF;">51.1</span></td>
<td class="ltx_td ltx_align_left" id="S3.T2.1.1.7.6">48.1</td>
<td class="ltx_td ltx_align_left" id="S3.T2.1.1.7.7">47.4</td>
<td class="ltx_td ltx_align_left" id="S3.T2.1.1.7.8"><span class="ltx_text" id="S3.T2.1.1.7.8.1" style="background-color:#FFBFBF;">50.4</span></td>
<td class="ltx_td ltx_align_left" id="S3.T2.1.1.7.9"><span class="ltx_text" id="S3.T2.1.1.7.9.1" style="background-color:#FFBFBF;">49.1</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.1.1.8">
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T2.1.1.8.1">LLaMa + <span class="ltx_text ltx_font_smallcaps" id="S3.T2.1.1.8.1.1">T</span>
</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T2.1.1.8.2">12.2</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T2.1.1.8.3">15.6</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T2.1.1.8.4"><span class="ltx_text" id="S3.T2.1.1.8.4.1" style="background-color:#FFBFBF;">22.2</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T2.1.1.8.5"><span class="ltx_text" id="S3.T2.1.1.8.5.1" style="background-color:#FFBFBF;">30.6</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T2.1.1.8.6">57.7</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T2.1.1.8.7">70.0</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T2.1.1.8.8"><span class="ltx_text" id="S3.T2.1.1.8.8.1" style="background-color:#FFBFBF;">60.0</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T2.1.1.8.9"><span class="ltx_text" id="S3.T2.1.1.8.9.1" style="background-color:#FFBFBF;">75.0</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.1.1.9">
<td class="ltx_td ltx_align_left" id="S3.T2.1.1.9.1">LLaMa + <span class="ltx_text ltx_font_smallcaps" id="S3.T2.1.1.9.1.1">RT</span>
</td>
<td class="ltx_td ltx_align_left" id="S3.T2.1.1.9.2">12.2</td>
<td class="ltx_td ltx_align_left" id="S3.T2.1.1.9.3">25.6</td>
<td class="ltx_td ltx_align_left" id="S3.T2.1.1.9.4"><span class="ltx_text" id="S3.T2.1.1.9.4.1" style="background-color:#FFBFBF;">13.2</span></td>
<td class="ltx_td ltx_align_left" id="S3.T2.1.1.9.5"><span class="ltx_text" id="S3.T2.1.1.9.5.1" style="background-color:#FFBFBF;">33.7</span></td>
<td class="ltx_td ltx_align_left" id="S3.T2.1.1.9.6">53.3</td>
<td class="ltx_td ltx_align_left" id="S3.T2.1.1.9.7">55.1</td>
<td class="ltx_td ltx_align_left" id="S3.T2.1.1.9.8"><span class="ltx_text" id="S3.T2.1.1.9.8.1" style="background-color:#FFBFBF;">60.0</span></td>
<td class="ltx_td ltx_align_left" id="S3.T2.1.1.9.9"><span class="ltx_text" id="S3.T2.1.1.9.9.1" style="background-color:#FFBFBF;">67.7</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.1.1.10">
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T2.1.1.10.1">LLaMa<sub class="ltx_sub" id="S3.T2.1.1.10.1.1">L</sub> + <span class="ltx_text ltx_font_smallcaps" id="S3.T2.1.1.10.1.2">T</span>
</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T2.1.1.10.2">26.7</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T2.1.1.10.3">44.4</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T2.1.1.10.4"><span class="ltx_text" id="S3.T2.1.1.10.4.1" style="background-color:#CED5DA;">26.7</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T2.1.1.10.5"><span class="ltx_text" id="S3.T2.1.1.10.5.1" style="background-color:#FFBFBF;">45.3</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T2.1.1.10.6">60.2</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T2.1.1.10.7">73.1</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T2.1.1.10.8"><span class="ltx_text" id="S3.T2.1.1.10.8.1" style="background-color:#FFBFBF;">62.2</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T2.1.1.10.9"><span class="ltx_text" id="S3.T2.1.1.10.9.1" style="background-color:#FFBFBF;">75.4</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.1.1.11">
<td class="ltx_td ltx_align_left" id="S3.T2.1.1.11.1">LLaMa<sub class="ltx_sub" id="S3.T2.1.1.11.1.1">L</sub> + <span class="ltx_text ltx_font_smallcaps" id="S3.T2.1.1.11.1.2">RT</span>
</td>
<td class="ltx_td ltx_align_left" id="S3.T2.1.1.11.2">15.6</td>
<td class="ltx_td ltx_align_left" id="S3.T2.1.1.11.3">41.1</td>
<td class="ltx_td ltx_align_left" id="S3.T2.1.1.11.4"><span class="ltx_text" id="S3.T2.1.1.11.4.1" style="background-color:#FFBFBF;">17.6</span></td>
<td class="ltx_td ltx_align_left" id="S3.T2.1.1.11.5"><span class="ltx_text" id="S3.T2.1.1.11.5.1" style="background-color:#CED5DA;">40.4</span></td>
<td class="ltx_td ltx_align_left" id="S3.T2.1.1.11.6">68.6</td>
<td class="ltx_td ltx_align_left" id="S3.T2.1.1.11.7">69.4</td>
<td class="ltx_td ltx_align_left" id="S3.T2.1.1.11.8"><span class="ltx_text" id="S3.T2.1.1.11.8.1" style="background-color:#FFBFBF;">70.2</span></td>
<td class="ltx_td ltx_align_left" id="S3.T2.1.1.11.9"><span class="ltx_text" id="S3.T2.1.1.11.9.1" style="background-color:#FFBFBF;">70.2</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.1.1.12">
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T2.1.1.12.1">Mistral + <span class="ltx_text ltx_font_smallcaps" id="S3.T2.1.1.12.1.1">T</span>
</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T2.1.1.12.2">27.8</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T2.1.1.12.3">47.8</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T2.1.1.12.4"><span class="ltx_text" id="S3.T2.1.1.12.4.1" style="background-color:#FFBFBF;">28.8</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T2.1.1.12.5"><span class="ltx_text" id="S3.T2.1.1.12.5.1" style="background-color:#FFBFBF;">51.1</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T2.1.1.12.6">57.8</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T2.1.1.12.7">64.8</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T2.1.1.12.8"><span class="ltx_text" id="S3.T2.1.1.12.8.1" style="background-color:#FFBFBF;">58.8</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T2.1.1.12.9"><span class="ltx_text" id="S3.T2.1.1.12.9.1" style="background-color:#FFBFBF;">66.3</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.1.1.13">
<td class="ltx_td ltx_align_left" id="S3.T2.1.1.13.1">Mistral + <span class="ltx_text ltx_font_smallcaps" id="S3.T2.1.1.13.1.1">RT</span>
</td>
<td class="ltx_td ltx_align_left" id="S3.T2.1.1.13.2">12.2</td>
<td class="ltx_td ltx_align_left" id="S3.T2.1.1.13.3">28.9</td>
<td class="ltx_td ltx_align_left" id="S3.T2.1.1.13.4"><span class="ltx_text" id="S3.T2.1.1.13.4.1" style="background-color:#FFBFBF;">16.6</span></td>
<td class="ltx_td ltx_align_left" id="S3.T2.1.1.13.5"><span class="ltx_text" id="S3.T2.1.1.13.5.1" style="background-color:#FFBFBF;">35.9</span></td>
<td class="ltx_td ltx_align_left" id="S3.T2.1.1.13.6">55.4</td>
<td class="ltx_td ltx_align_left" id="S3.T2.1.1.13.7">53.8</td>
<td class="ltx_td ltx_align_left" id="S3.T2.1.1.13.8"><span class="ltx_text" id="S3.T2.1.1.13.8.1" style="background-color:#FFBFBF;">57.4</span></td>
<td class="ltx_td ltx_align_left" id="S3.T2.1.1.13.9"><span class="ltx_text" id="S3.T2.1.1.13.9.1" style="background-color:#FFBFBF;">56.0</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.1.1.14">
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T2.1.1.14.1">Qwen + <span class="ltx_text ltx_font_smallcaps" id="S3.T2.1.1.14.1.1">T</span>
</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T2.1.1.14.2">21.1</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T2.1.1.14.3">46.7</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T2.1.1.14.4"><span class="ltx_text" id="S3.T2.1.1.14.4.1" style="background-color:#FFBFBF;">22.7</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T2.1.1.14.5"><span class="ltx_text" id="S3.T2.1.1.14.5.1" style="background-color:#FFBFBF;">50.0</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T2.1.1.14.6"><span class="ltx_text ltx_font_bold" id="S3.T2.1.1.14.6.1">68.9</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T2.1.1.14.7"><span class="ltx_text ltx_font_bold" id="S3.T2.1.1.14.7.1">74.1</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T2.1.1.14.8"><span class="ltx_text ltx_font_bold" id="S3.T2.1.1.14.8.1" style="background-color:#FFBFBF;">70.4</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T2.1.1.14.9"><span class="ltx_text ltx_font_bold" id="S3.T2.1.1.14.9.1" style="background-color:#FFBFBF;">76.1</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.1.1.15">
<td class="ltx_td ltx_align_left" id="S3.T2.1.1.15.1">Qwen + <span class="ltx_text ltx_font_smallcaps" id="S3.T2.1.1.15.1.1">RT</span>
</td>
<td class="ltx_td ltx_align_left" id="S3.T2.1.1.15.2">12.2</td>
<td class="ltx_td ltx_align_left" id="S3.T2.1.1.15.3">43.3</td>
<td class="ltx_td ltx_align_left" id="S3.T2.1.1.15.4"><span class="ltx_text" id="S3.T2.1.1.15.4.1" style="background-color:#FFBFBF;">13.3</span></td>
<td class="ltx_td ltx_align_left" id="S3.T2.1.1.15.5"><span class="ltx_text" id="S3.T2.1.1.15.5.1" style="background-color:#CED5DA;">42.6</span></td>
<td class="ltx_td ltx_align_left" id="S3.T2.1.1.15.6">53.3</td>
<td class="ltx_td ltx_align_left" id="S3.T2.1.1.15.7">53.3</td>
<td class="ltx_td ltx_align_left" id="S3.T2.1.1.15.8"><span class="ltx_text" id="S3.T2.1.1.15.8.1" style="background-color:#FFBFBF;">56.5</span></td>
<td class="ltx_td ltx_align_left" id="S3.T2.1.1.15.9"><span class="ltx_text" id="S3.T2.1.1.15.9.1" style="background-color:#FFBFBF;">56.5</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.1.1.16">
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T2.1.1.16.1">Yi-1.5 + <span class="ltx_text ltx_font_smallcaps" id="S3.T2.1.1.16.1.1">T</span>
</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T2.1.1.16.2"><span class="ltx_text ltx_font_bold" id="S3.T2.1.1.16.2.1">35.3</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T2.1.1.16.3"><span class="ltx_text ltx_font_bold" id="S3.T2.1.1.16.3.1">56.7</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T2.1.1.16.4"><span class="ltx_text ltx_font_bold" id="S3.T2.1.1.16.4.1" style="background-color:#FFBFBF;">37.6</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T2.1.1.16.5"><span class="ltx_text ltx_font_bold" id="S3.T2.1.1.16.5.1" style="background-color:#FFBFBF;">60.0</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T2.1.1.16.6">64.4</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T2.1.1.16.7">71.1</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T2.1.1.16.8"><span class="ltx_text" id="S3.T2.1.1.16.8.1" style="background-color:#FFBFBF;">68.7</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T2.1.1.16.9"><span class="ltx_text" id="S3.T2.1.1.16.9.1" style="background-color:#FFBFBF;">73.4</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.1.1.17">
<td class="ltx_td ltx_align_left" id="S3.T2.1.1.17.1">Yi-1.5 + <span class="ltx_text ltx_font_smallcaps" id="S3.T2.1.1.17.1.1">RT</span>
</td>
<td class="ltx_td ltx_align_left" id="S3.T2.1.1.17.2">34.4</td>
<td class="ltx_td ltx_align_left" id="S3.T2.1.1.17.3">51.1</td>
<td class="ltx_td ltx_align_left" id="S3.T2.1.1.17.4"><span class="ltx_text" id="S3.T2.1.1.17.4.1" style="background-color:#CED5DA;">32.8</span></td>
<td class="ltx_td ltx_align_left" id="S3.T2.1.1.17.5"><span class="ltx_text" id="S3.T2.1.1.17.5.1" style="background-color:#FFBFBF;">52.2</span></td>
<td class="ltx_td ltx_align_left" id="S3.T2.1.1.17.6">63.3</td>
<td class="ltx_td ltx_align_left" id="S3.T2.1.1.17.7">65.1</td>
<td class="ltx_td ltx_align_left" id="S3.T2.1.1.17.8"><span class="ltx_text" id="S3.T2.1.1.17.8.1" style="background-color:#FFBFBF;">68.3</span></td>
<td class="ltx_td ltx_align_left" id="S3.T2.1.1.17.9"><span class="ltx_text" id="S3.T2.1.1.17.9.1" style="background-color:#FFBFBF;">70.4</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.1.1.18">
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T2.1.1.18.1">SciTülu + <span class="ltx_text ltx_font_smallcaps" id="S3.T2.1.1.18.1.1">T</span>
</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T2.1.1.18.2">14.4</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T2.1.1.18.3">18.1</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T2.1.1.18.4"><span class="ltx_text" id="S3.T2.1.1.18.4.1" style="background-color:#FFBFBF;">25.3</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T2.1.1.18.5"><span class="ltx_text" id="S3.T2.1.1.18.5.1" style="background-color:#FFBFBF;">29.4</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T2.1.1.18.6">57.8</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T2.1.1.18.7">57.8</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T2.1.1.18.8"><span class="ltx_text" id="S3.T2.1.1.18.8.1" style="background-color:#FFBFBF;">58.3</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T2.1.1.18.9"><span class="ltx_text" id="S3.T2.1.1.18.9.1" style="background-color:#FFBFBF;">58.3</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.1.1.19">
<td class="ltx_td ltx_align_left ltx_border_b" id="S3.T2.1.1.19.1">SciTülu + <span class="ltx_text ltx_font_smallcaps" id="S3.T2.1.1.19.1.1">RT</span>
</td>
<td class="ltx_td ltx_align_left ltx_border_b" id="S3.T2.1.1.19.2">15.6</td>
<td class="ltx_td ltx_align_left ltx_border_b" id="S3.T2.1.1.19.3">17.3</td>
<td class="ltx_td ltx_align_left ltx_border_b" id="S3.T2.1.1.19.4"><span class="ltx_text" id="S3.T2.1.1.19.4.1" style="background-color:#FFBFBF;">18.3</span></td>
<td class="ltx_td ltx_align_left ltx_border_b" id="S3.T2.1.1.19.5"><span class="ltx_text" id="S3.T2.1.1.19.5.1" style="background-color:#FFBFBF;">23.7</span></td>
<td class="ltx_td ltx_align_left ltx_border_b" id="S3.T2.1.1.19.6">55.6</td>
<td class="ltx_td ltx_align_left ltx_border_b" id="S3.T2.1.1.19.7">55.6</td>
<td class="ltx_td ltx_align_left ltx_border_b" id="S3.T2.1.1.19.8"><span class="ltx_text" id="S3.T2.1.1.19.8.1" style="background-color:#FFBFBF;">58.7</span></td>
<td class="ltx_td ltx_align_left ltx_border_b" id="S3.T2.1.1.19.9"><span class="ltx_text" id="S3.T2.1.1.19.9.1" style="background-color:#FFBFBF;">58.7</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the performance of various Large Language Models (LLMs) on a fine-grained and coarse-grained classification task of detecting 'lazy thinking' in NLP peer reviews.  The performance is evaluated using two metrics: string-matching accuracy (S.A.) and GPT-based accuracy (G.A.). The LLMs are tested across two annotation rounds (R1 and R2). The input to the LLMs varied: either only the target review sentence ('T') or both the target review sentence and the full review ('RT').  The table highlights in red the performance improvements from round 1 to round 2, and in gray the decrements or no changes.
> <details>
> <summary>read the caption</summary>
> Table 2: LLM performance across annotation rounds in terms of string-matching (S.A) and GPT-based (G.A) accuracy for fine-grained (Fine-gr.) and coarse-grained (Coarse-gr.) tasks. ‘T’ uses only the target sentence, ‘RT’ combines review and target. R1 and R2 represent ‘Round 1’ and ‘Round 2’. Increments from R1 to R2 are highlighted in red; decreases or no change in gray.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S3.T3.56.56">
<tr class="ltx_tr" id="S3.T3.56.56.57">
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T3.56.56.57.1" rowspan="2"><span class="ltx_text ltx_font_bold" id="S3.T3.56.56.57.1.1">Models</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" colspan="2" id="S3.T3.56.56.57.2"><span class="ltx_text ltx_font_bold" id="S3.T3.56.56.57.2.1">Fine-gr.</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" colspan="2" id="S3.T3.56.56.57.3"><span class="ltx_text ltx_font_bold" id="S3.T3.56.56.57.3.1">Coarse-gr.</span></td>
</tr>
<tr class="ltx_tr" id="S3.T3.56.56.58">
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T3.56.56.58.1"><span class="ltx_text ltx_font_bold" id="S3.T3.56.56.58.1.1">S.A</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T3.56.56.58.2"><span class="ltx_text ltx_font_bold" id="S3.T3.56.56.58.2.1">G.A</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T3.56.56.58.3"><span class="ltx_text ltx_font_bold" id="S3.T3.56.56.58.3.1">S.A</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T3.56.56.58.4"><span class="ltx_text ltx_font_bold" id="S3.T3.56.56.58.4.1">G.A</span></td>
</tr>
<tr class="ltx_tr" id="S3.T3.56.56.59">
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T3.56.56.59.1"><span class="ltx_text ltx_font_smallcaps" id="S3.T3.56.56.59.1.1">Random</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T3.56.56.59.2">2.46</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T3.56.56.59.3">-</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T3.56.56.59.4">43.3</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T3.56.56.59.5">-</td>
</tr>
<tr class="ltx_tr" id="S3.T3.56.56.60">
<td class="ltx_td ltx_align_left" id="S3.T3.56.56.60.1"><span class="ltx_text ltx_font_smallcaps" id="S3.T3.56.56.60.1.1">Majority</span></td>
<td class="ltx_td ltx_align_left" id="S3.T3.56.56.60.2">5.11</td>
<td class="ltx_td ltx_align_left" id="S3.T3.56.56.60.3">-</td>
<td class="ltx_td ltx_align_left" id="S3.T3.56.56.60.4">52.3</td>
<td class="ltx_td ltx_align_left" id="S3.T3.56.56.60.5">-</td>
</tr>
<tr class="ltx_tr" id="S3.T3.4.4.4">
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T3.4.4.4.5">Gemma + <span class="ltx_text ltx_font_smallcaps" id="S3.T3.4.4.4.5.1">TE</span>
</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T3.1.1.1.1">
<span class="ltx_text" id="S3.T3.1.1.1.1.1" style="background-color:#FFBFBF;">24.4</span><sub class="ltx_sub" id="S3.T3.1.1.1.1.2"><span class="ltx_text ltx_font_italic" id="S3.T3.1.1.1.1.2.1">5.5</span></sub>
</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T3.2.2.2.2">
<span class="ltx_text" id="S3.T3.2.2.2.2.1" style="background-color:#FFBFBF;">41.1</span><sub class="ltx_sub" id="S3.T3.2.2.2.2.2"><span class="ltx_text ltx_font_italic" id="S3.T3.2.2.2.2.2.1">8.9</span></sub>
</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T3.3.3.3.3">
<span class="ltx_text" id="S3.T3.3.3.3.3.1" style="background-color:#FFBFBF;">75.6</span><sub class="ltx_sub" id="S3.T3.3.3.3.3.2"><span class="ltx_text ltx_font_italic" id="S3.T3.3.3.3.3.2.1">20.0</span></sub>
</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T3.4.4.4.4">
<span class="ltx_text" id="S3.T3.4.4.4.4.1" style="background-color:#FFBFBF;">88.9</span><sub class="ltx_sub" id="S3.T3.4.4.4.4.2"><span class="ltx_text ltx_font_italic" id="S3.T3.4.4.4.4.2.1">31.7</span></sub>
</td>
</tr>
<tr class="ltx_tr" id="S3.T3.8.8.8">
<td class="ltx_td ltx_align_left" id="S3.T3.8.8.8.5">
<span class="ltx_ERROR undefined" id="S3.T3.8.8.8.5.1">\hdashline</span>Gemma + <span class="ltx_text ltx_font_smallcaps" id="S3.T3.8.8.8.5.2">RTE</span>
</td>
<td class="ltx_td ltx_align_left" id="S3.T3.5.5.5.1">
<span class="ltx_text" id="S3.T3.5.5.5.1.1" style="background-color:#FFBFBF;">17.3</span><sub class="ltx_sub" id="S3.T3.5.5.5.1.2"><span class="ltx_text ltx_font_italic" id="S3.T3.5.5.5.1.2.1">2.9</span></sub>
</td>
<td class="ltx_td ltx_align_left" id="S3.T3.6.6.6.2">
<span class="ltx_text" id="S3.T3.6.6.6.2.1" style="background-color:#FFBFBF;">32.8</span><sub class="ltx_sub" id="S3.T3.6.6.6.2.2"><span class="ltx_text ltx_font_italic" id="S3.T3.6.6.6.2.2.1">0.2</span></sub>
</td>
<td class="ltx_td ltx_align_left" id="S3.T3.7.7.7.3">
<span class="ltx_text" id="S3.T3.7.7.7.3.1" style="background-color:#FFBFBF;">71.1</span><sub class="ltx_sub" id="S3.T3.7.7.7.3.2"><span class="ltx_text ltx_font_italic" id="S3.T3.7.7.7.3.2.1">5.5</span></sub>
</td>
<td class="ltx_td ltx_align_left" id="S3.T3.8.8.8.4">
<span class="ltx_text" id="S3.T3.8.8.8.4.1" style="background-color:#FFBFBF;">82.2</span><sub class="ltx_sub" id="S3.T3.8.8.8.4.2"><span class="ltx_text ltx_font_italic" id="S3.T3.8.8.8.4.2.1">16.6</span></sub>
</td>
</tr>
<tr class="ltx_tr" id="S3.T3.12.12.12">
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T3.12.12.12.5">LLaMa + <span class="ltx_text ltx_font_smallcaps" id="S3.T3.12.12.12.5.1">TE</span>
</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T3.9.9.9.1">
<span class="ltx_text" id="S3.T3.9.9.9.1.1" style="background-color:#FFBFBF;">15.6</span><sub class="ltx_sub" id="S3.T3.9.9.9.1.2"><span class="ltx_text ltx_font_italic" id="S3.T3.9.9.9.1.2.1">4.5</span></sub>
</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T3.10.10.10.2">
<span class="ltx_text" id="S3.T3.10.10.10.2.1" style="background-color:#FFBFBF;">38.9</span><sub class="ltx_sub" id="S3.T3.10.10.10.2.2"><span class="ltx_text ltx_font_italic" id="S3.T3.10.10.10.2.2.1">3.3</span></sub>
</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T3.11.11.11.3">
<span class="ltx_text" id="S3.T3.11.11.11.3.1" style="background-color:#FFBFBF;">84.4</span><sub class="ltx_sub" id="S3.T3.11.11.11.3.2"><span class="ltx_text ltx_font_italic" id="S3.T3.11.11.11.3.2.1">4.4</span></sub>
</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T3.12.12.12.4">
<span class="ltx_text" id="S3.T3.12.12.12.4.1" style="background-color:#FFBFBF;">89.1</span><sub class="ltx_sub" id="S3.T3.12.12.12.4.2"><span class="ltx_text ltx_font_italic" id="S3.T3.12.12.12.4.2.1">3.0</span></sub>
</td>
</tr>
<tr class="ltx_tr" id="S3.T3.16.16.16">
<td class="ltx_td ltx_align_left" id="S3.T3.16.16.16.5">
<span class="ltx_ERROR undefined" id="S3.T3.16.16.16.5.1">\hdashline</span>LLaMa + <span class="ltx_text ltx_font_smallcaps" id="S3.T3.16.16.16.5.2">RTE</span>
</td>
<td class="ltx_td ltx_align_left" id="S3.T3.13.13.13.1">
<span class="ltx_text" id="S3.T3.13.13.13.1.1" style="background-color:#FFBFBF;">14.2</span><sub class="ltx_sub" id="S3.T3.13.13.13.1.2"><span class="ltx_text ltx_font_italic" id="S3.T3.13.13.13.1.2.1">2.0</span></sub>
</td>
<td class="ltx_td ltx_align_left" id="S3.T3.14.14.14.2">
<span class="ltx_text" id="S3.T3.14.14.14.2.1" style="background-color:#FFBFBF;">30.8</span><sub class="ltx_sub" id="S3.T3.14.14.14.2.2"><span class="ltx_text ltx_font_italic" id="S3.T3.14.14.14.2.2.1">1.9</span></sub>
</td>
<td class="ltx_td ltx_align_left" id="S3.T3.15.15.15.3">
<span class="ltx_text" id="S3.T3.15.15.15.3.1" style="background-color:#FFBFBF;">75.3</span><sub class="ltx_sub" id="S3.T3.15.15.15.3.2"><span class="ltx_text ltx_font_italic" id="S3.T3.15.15.15.3.2.1">2.0</span></sub>
</td>
<td class="ltx_td ltx_align_left" id="S3.T3.16.16.16.4">
<span class="ltx_text" id="S3.T3.16.16.16.4.1" style="background-color:#FFBFBF;">81.1</span><sub class="ltx_sub" id="S3.T3.16.16.16.4.2"><span class="ltx_text ltx_font_italic" id="S3.T3.16.16.16.4.2.1">4.4</span></sub>
</td>
</tr>
<tr class="ltx_tr" id="S3.T3.20.20.20">
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T3.20.20.20.5">LLaMa<sub class="ltx_sub" id="S3.T3.20.20.20.5.1">L</sub> + <span class="ltx_text ltx_font_smallcaps" id="S3.T3.20.20.20.5.2">TE</span>
</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T3.17.17.17.1">
<span class="ltx_text" id="S3.T3.17.17.17.1.1" style="background-color:#FFBFBF;">24.4</span><sub class="ltx_sub" id="S3.T3.17.17.17.1.2"><span class="ltx_text ltx_font_italic" id="S3.T3.17.17.17.1.2.1">13.3</span></sub>
</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T3.18.18.18.2">
<span class="ltx_text" id="S3.T3.18.18.18.2.1" style="background-color:#FFBFBF;">41.1</span><sub class="ltx_sub" id="S3.T3.18.18.18.2.2"><span class="ltx_text ltx_font_italic" id="S3.T3.18.18.18.2.2.1">5.5</span></sub>
</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T3.19.19.19.3">
<span class="ltx_text" id="S3.T3.19.19.19.3.1" style="background-color:#FFBFBF;">73.1</span><sub class="ltx_sub" id="S3.T3.19.19.19.3.2"><span class="ltx_text ltx_font_italic" id="S3.T3.19.19.19.3.2.1">1.9</span></sub>
</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T3.20.20.20.4">
<span class="ltx_text" id="S3.T3.20.20.20.4.1" style="background-color:#FFBFBF;">71.1</span><sub class="ltx_sub" id="S3.T3.20.20.20.4.2"><span class="ltx_text ltx_font_italic" id="S3.T3.20.20.20.4.2.1">10.0</span></sub>
</td>
</tr>
<tr class="ltx_tr" id="S3.T3.24.24.24">
<td class="ltx_td ltx_align_left" id="S3.T3.24.24.24.5">
<span class="ltx_ERROR undefined" id="S3.T3.24.24.24.5.1">\hdashline</span>LLaMa<sub class="ltx_sub" id="S3.T3.24.24.24.5.2">L</sub> + <span class="ltx_text ltx_font_smallcaps" id="S3.T3.24.24.24.5.3">RTE</span>
</td>
<td class="ltx_td ltx_align_left" id="S3.T3.21.21.21.1">
<span class="ltx_text" id="S3.T3.21.21.21.1.1" style="background-color:#FFBFBF;">18.8</span><sub class="ltx_sub" id="S3.T3.21.21.21.1.2"><span class="ltx_text ltx_font_italic" id="S3.T3.21.21.21.1.2.1">8.1</span></sub>
</td>
<td class="ltx_td ltx_align_left" id="S3.T3.22.22.22.2">
<span class="ltx_text" id="S3.T3.22.22.22.2.1" style="background-color:#FFBFBF;">34.4</span><sub class="ltx_sub" id="S3.T3.22.22.22.2.2"><span class="ltx_text ltx_font_italic" id="S3.T3.22.22.22.2.2.1">2.2</span></sub>
</td>
<td class="ltx_td ltx_align_left" id="S3.T3.23.23.23.3">
<span class="ltx_text" id="S3.T3.23.23.23.3.1" style="background-color:#FFBFBF;">70.3</span><sub class="ltx_sub" id="S3.T3.23.23.23.3.2"><span class="ltx_text ltx_font_italic" id="S3.T3.23.23.23.3.2.1">1.5</span></sub>
</td>
<td class="ltx_td ltx_align_left" id="S3.T3.24.24.24.4">
<span class="ltx_text" id="S3.T3.24.24.24.4.1" style="background-color:#FFBFBF;">61.1</span><sub class="ltx_sub" id="S3.T3.24.24.24.4.2"><span class="ltx_text ltx_font_italic" id="S3.T3.24.24.24.4.2.1">9.9</span></sub>
</td>
</tr>
<tr class="ltx_tr" id="S3.T3.28.28.28">
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T3.28.28.28.5">Mistral + <span class="ltx_text ltx_font_smallcaps" id="S3.T3.28.28.28.5.1">TE</span>
</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T3.25.25.25.1">
<span class="ltx_text" id="S3.T3.25.25.25.1.1" style="background-color:#FFBFBF;">30.0</span><sub class="ltx_sub" id="S3.T3.25.25.25.1.2"><span class="ltx_text ltx_font_italic" id="S3.T3.25.25.25.1.2.1">1.8</span></sub>
</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T3.26.26.26.2">
<span class="ltx_text" id="S3.T3.26.26.26.2.1" style="background-color:#FFBFBF;">55.6</span><sub class="ltx_sub" id="S3.T3.26.26.26.2.2"><span class="ltx_text ltx_font_italic" id="S3.T3.26.26.26.2.2.1">1.2</span></sub>
</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T3.27.27.27.3">
<span class="ltx_text" id="S3.T3.27.27.27.3.1" style="background-color:#FFBFBF;">86.7</span><sub class="ltx_sub" id="S3.T3.27.27.27.3.2"><span class="ltx_text ltx_font_italic" id="S3.T3.27.27.27.3.2.1">12.3</span></sub>
</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T3.28.28.28.4">
<span class="ltx_text" id="S3.T3.28.28.28.4.1" style="background-color:#FFBFBF;">86.7</span><sub class="ltx_sub" id="S3.T3.28.28.28.4.2"><span class="ltx_text ltx_font_italic" id="S3.T3.28.28.28.4.2.1">11.5</span></sub>
</td>
</tr>
<tr class="ltx_tr" id="S3.T3.32.32.32">
<td class="ltx_td ltx_align_left" id="S3.T3.32.32.32.5">
<span class="ltx_ERROR undefined" id="S3.T3.32.32.32.5.1">\hdashline</span>Mistral + <span class="ltx_text ltx_font_smallcaps" id="S3.T3.32.32.32.5.2">RTE</span>
</td>
<td class="ltx_td ltx_align_left" id="S3.T3.29.29.29.1">
<span class="ltx_text" id="S3.T3.29.29.29.1.1" style="background-color:#FFBFBF;">27.8</span><sub class="ltx_sub" id="S3.T3.29.29.29.1.2"><span class="ltx_text ltx_font_italic" id="S3.T3.29.29.29.1.2.1">5.6</span></sub>
</td>
<td class="ltx_td ltx_align_left" id="S3.T3.30.30.30.2">
<span class="ltx_text" id="S3.T3.30.30.30.2.1" style="background-color:#FFBFBF;">52.2</span><sub class="ltx_sub" id="S3.T3.30.30.30.2.2"><span class="ltx_text ltx_font_italic" id="S3.T3.30.30.30.2.2.1">1.1</span></sub>
</td>
<td class="ltx_td ltx_align_left" id="S3.T3.31.31.31.3">
<span class="ltx_text" id="S3.T3.31.31.31.3.1" style="background-color:#FFBFBF;">68.8</span><sub class="ltx_sub" id="S3.T3.31.31.31.3.2"><span class="ltx_text ltx_font_italic" id="S3.T3.31.31.31.3.2.1">6.6</span></sub>
</td>
<td class="ltx_td ltx_align_left" id="S3.T3.32.32.32.4">
<span class="ltx_text" id="S3.T3.32.32.32.4.1" style="background-color:#FFBFBF;">68.8</span><sub class="ltx_sub" id="S3.T3.32.32.32.4.2"><span class="ltx_text ltx_font_italic" id="S3.T3.32.32.32.4.2.1">6.6</span></sub>
</td>
</tr>
<tr class="ltx_tr" id="S3.T3.36.36.36">
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T3.36.36.36.5">Qwen + <span class="ltx_text ltx_font_smallcaps" id="S3.T3.36.36.36.5.1">TE</span>
</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T3.33.33.33.1">
<span class="ltx_text ltx_font_bold" id="S3.T3.33.33.33.1.1" style="background-color:#FFBFBF;">31.1</span><sub class="ltx_sub" id="S3.T3.33.33.33.1.2"><span class="ltx_text ltx_font_italic" id="S3.T3.33.33.33.1.2.1">2.2</span></sub>
</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T3.34.34.34.2">
<span class="ltx_text ltx_font_bold" id="S3.T3.34.34.34.2.1" style="background-color:#FFBFBF;">56.4</span><sub class="ltx_sub" id="S3.T3.34.34.34.2.2"><span class="ltx_text ltx_font_italic" id="S3.T3.34.34.34.2.2.1">12.0</span></sub>
</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T3.35.35.35.3">
<span class="ltx_text" id="S3.T3.35.35.35.3.1" style="background-color:#FFBFBF;">86.7</span><sub class="ltx_sub" id="S3.T3.35.35.35.3.2"><span class="ltx_text ltx_font_italic" id="S3.T3.35.35.35.3.2.1">4.0</span></sub>
</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T3.36.36.36.4">
<span class="ltx_text" id="S3.T3.36.36.36.4.1" style="background-color:#FFBFBF;">86.7</span><sub class="ltx_sub" id="S3.T3.36.36.36.4.2"><span class="ltx_text ltx_font_italic" id="S3.T3.36.36.36.4.2.1">4.0</span></sub>
</td>
</tr>
<tr class="ltx_tr" id="S3.T3.40.40.40">
<td class="ltx_td ltx_align_left" id="S3.T3.40.40.40.5">
<span class="ltx_ERROR undefined" id="S3.T3.40.40.40.5.1">\hdashline</span>Qwen + <span class="ltx_text ltx_font_smallcaps" id="S3.T3.40.40.40.5.2">RTE</span>
</td>
<td class="ltx_td ltx_align_left" id="S3.T3.37.37.37.1">
<span class="ltx_text" id="S3.T3.37.37.37.1.1" style="background-color:#FFBFBF;">27.8</span><sub class="ltx_sub" id="S3.T3.37.37.37.1.2"><span class="ltx_text ltx_font_italic" id="S3.T3.37.37.37.1.2.1">1.1</span></sub>
</td>
<td class="ltx_td ltx_align_left" id="S3.T3.38.38.38.2">
<span class="ltx_text" id="S3.T3.38.38.38.2.1" style="background-color:#FFBFBF;">44.2</span><sub class="ltx_sub" id="S3.T3.38.38.38.2.2"><span class="ltx_text ltx_font_italic" id="S3.T3.38.38.38.2.2.1">0.9</span></sub>
</td>
<td class="ltx_td ltx_align_left" id="S3.T3.39.39.39.3">
<span class="ltx_text" id="S3.T3.39.39.39.3.1" style="background-color:#FFBFBF;">62.2</span><sub class="ltx_sub" id="S3.T3.39.39.39.3.2"><span class="ltx_text ltx_font_italic" id="S3.T3.39.39.39.3.2.1">2.0</span></sub>
</td>
<td class="ltx_td ltx_align_left" id="S3.T3.40.40.40.4">
<span class="ltx_text" id="S3.T3.40.40.40.4.1" style="background-color:#FFBFBF;">62.2</span><sub class="ltx_sub" id="S3.T3.40.40.40.4.2"><span class="ltx_text ltx_font_italic" id="S3.T3.40.40.40.4.2.1">2.0</span></sub>
</td>
</tr>
<tr class="ltx_tr" id="S3.T3.44.44.44">
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T3.44.44.44.5">Yi-1.5 + <span class="ltx_text ltx_font_smallcaps" id="S3.T3.44.44.44.5.1">TE</span>
</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T3.41.41.41.1">
<span class="ltx_text" id="S3.T3.41.41.41.1.1" style="background-color:#FFBFBF;">30.0</span><sub class="ltx_sub" id="S3.T3.41.41.41.1.2"><span class="ltx_text ltx_font_italic" id="S3.T3.41.41.41.1.2.1">3.3</span></sub>
</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T3.42.42.42.2">
<span class="ltx_text" id="S3.T3.42.42.42.2.1" style="background-color:#FFBFBF;">54.9</span><sub class="ltx_sub" id="S3.T3.42.42.42.2.2"><span class="ltx_text ltx_font_italic" id="S3.T3.42.42.42.2.2.1">1.1</span></sub>
</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T3.43.43.43.3">
<span class="ltx_text" id="S3.T3.43.43.43.3.1" style="background-color:#FFBFBF;">74.5</span><sub class="ltx_sub" id="S3.T3.43.43.43.3.2"><span class="ltx_text ltx_font_italic" id="S3.T3.43.43.43.3.2.1">3.2</span></sub>
</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T3.44.44.44.4">
<span class="ltx_text" id="S3.T3.44.44.44.4.1" style="background-color:#FFBFBF;">73.8</span><sub class="ltx_sub" id="S3.T3.44.44.44.4.2"><span class="ltx_text ltx_font_italic" id="S3.T3.44.44.44.4.2.1">1.5</span></sub>
</td>
</tr>
<tr class="ltx_tr" id="S3.T3.48.48.48">
<td class="ltx_td ltx_align_left" id="S3.T3.48.48.48.5">
<span class="ltx_ERROR undefined" id="S3.T3.48.48.48.5.1">\hdashline</span>Yi-1.5 + <span class="ltx_text ltx_font_smallcaps" id="S3.T3.48.48.48.5.2">RTE</span>
</td>
<td class="ltx_td ltx_align_left" id="S3.T3.45.45.45.1">
<span class="ltx_text" id="S3.T3.45.45.45.1.1" style="background-color:#FFBFBF;">24.4</span><sub class="ltx_sub" id="S3.T3.45.45.45.1.2"><span class="ltx_text ltx_font_italic" id="S3.T3.45.45.45.1.2.1">3.2</span></sub>
</td>
<td class="ltx_td ltx_align_left" id="S3.T3.46.46.46.2">
<span class="ltx_text" id="S3.T3.46.46.46.2.1" style="background-color:#FFBFBF;">52.7</span><sub class="ltx_sub" id="S3.T3.46.46.46.2.2"><span class="ltx_text ltx_font_italic" id="S3.T3.46.46.46.2.2.1">1.4</span></sub>
</td>
<td class="ltx_td ltx_align_left" id="S3.T3.47.47.47.3">
<span class="ltx_text" id="S3.T3.47.47.47.3.1" style="background-color:#FFBFBF;">70.1</span><sub class="ltx_sub" id="S3.T3.47.47.47.3.2"><span class="ltx_text ltx_font_italic" id="S3.T3.47.47.47.3.2.1">2.0</span></sub>
</td>
<td class="ltx_td ltx_align_left" id="S3.T3.48.48.48.4">
<span class="ltx_text" id="S3.T3.48.48.48.4.1" style="background-color:#FFBFBF;">72.4</span><sub class="ltx_sub" id="S3.T3.48.48.48.4.2"><span class="ltx_text ltx_font_italic" id="S3.T3.48.48.48.4.2.1">2.3</span></sub>
</td>
</tr>
<tr class="ltx_tr" id="S3.T3.52.52.52">
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T3.52.52.52.5">SciTülu + <span class="ltx_text ltx_font_smallcaps" id="S3.T3.52.52.52.5.1">TE</span>
</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T3.49.49.49.1">
<span class="ltx_text" id="S3.T3.49.49.49.1.1" style="background-color:#FFBFBF;">23.3</span><sub class="ltx_sub" id="S3.T3.49.49.49.1.2"><span class="ltx_text ltx_font_italic" id="S3.T3.49.49.49.1.2.1">1.1</span></sub>
</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T3.50.50.50.2">
<span class="ltx_text" id="S3.T3.50.50.50.2.1" style="background-color:#FFBFBF;">44.8</span><sub class="ltx_sub" id="S3.T3.50.50.50.2.2"><span class="ltx_text ltx_font_italic" id="S3.T3.50.50.50.2.2.1">2.6</span></sub>
</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T3.51.51.51.3">
<span class="ltx_text" id="S3.T3.51.51.51.3.1" style="background-color:#FFBFBF;">72.2</span><sub class="ltx_sub" id="S3.T3.51.51.51.3.2"><span class="ltx_text ltx_font_italic" id="S3.T3.51.51.51.3.2.1">21.1</span></sub>
</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T3.52.52.52.4">
<span class="ltx_text" id="S3.T3.52.52.52.4.1" style="background-color:#FFBFBF;">72.2</span><sub class="ltx_sub" id="S3.T3.52.52.52.4.2"><span class="ltx_text ltx_font_italic" id="S3.T3.52.52.52.4.2.1">20.0</span></sub>
</td>
</tr>
<tr class="ltx_tr" id="S3.T3.56.56.56">
<td class="ltx_td ltx_align_left ltx_border_b" id="S3.T3.56.56.56.5">
<span class="ltx_ERROR undefined" id="S3.T3.56.56.56.5.1">\hdashline</span>SciTülu + <span class="ltx_text ltx_font_smallcaps" id="S3.T3.56.56.56.5.2">RTE</span>
</td>
<td class="ltx_td ltx_align_left ltx_border_b" id="S3.T3.53.53.53.1">
<span class="ltx_text" id="S3.T3.53.53.53.1.1" style="background-color:#FFBFBF;">19.7</span><sub class="ltx_sub" id="S3.T3.53.53.53.1.2"><span class="ltx_text ltx_font_italic" id="S3.T3.53.53.53.1.2.1">0.8</span></sub>
</td>
<td class="ltx_td ltx_align_left ltx_border_b" id="S3.T3.54.54.54.2">
<span class="ltx_text" id="S3.T3.54.54.54.2.1" style="background-color:#FFBFBF;">41.1</span><sub class="ltx_sub" id="S3.T3.54.54.54.2.2"><span class="ltx_text ltx_font_italic" id="S3.T3.54.54.54.2.2.1">2.2</span></sub>
</td>
<td class="ltx_td ltx_align_left ltx_border_b" id="S3.T3.55.55.55.3">
<span class="ltx_text ltx_font_bold" id="S3.T3.55.55.55.3.1" style="background-color:#FFBFBF;">88.8</span><sub class="ltx_sub" id="S3.T3.55.55.55.3.2"><span class="ltx_text ltx_font_italic" id="S3.T3.55.55.55.3.2.1">17.7</span></sub>
</td>
<td class="ltx_td ltx_align_left ltx_border_b" id="S3.T3.56.56.56.4">
<span class="ltx_text ltx_font_bold" id="S3.T3.56.56.56.4.1" style="background-color:#FFBFBF;">91.1</span><sub class="ltx_sub" id="S3.T3.56.56.56.4.2"><span class="ltx_text ltx_font_italic" id="S3.T3.56.56.56.4.2.1">22.3</span></sub>
</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the performance of several Large Language Models (LLMs) on a fine-grained and coarse-grained classification task related to detecting 'lazy thinking' in peer reviews.  The models are evaluated using two metrics: string-matching accuracy and GPT-based semantic accuracy. The experiment is conducted using data from round 3 of an annotation study.  The results show the impact of adding in-context exemplars on model performance using two input types: the target sentence alone and the target sentence along with the full review.  Red numbers highlight improvements achieved through the use of in-context examples. The subscripts show how much the scores improved in comparison to the zero-shot performance.
> <details>
> <summary>read the caption</summary>
> Table 3: Performance of LLMs for round 3 in terms of the metrics used in Table 2 for fine-grained (Fine-gr.) and coarse-grained (Coarse-gr.) tasks. ‘E’ denotes adding in-context exemplars to input types: ‘T’ (target sentence) and ‘RT’ (review + target sentence). Red: Increments with exemplars. Subscripts represent increments as compared to the zero-short versions.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S3.T4.98.98">
<tr class="ltx_tr" id="S3.T4.98.98.99">
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T4.98.98.99.1" rowspan="2"><span class="ltx_text ltx_font_bold" id="S3.T4.98.98.99.1.1">Models</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" colspan="3" id="S3.T4.98.98.99.2"><span class="ltx_text ltx_font_bold" id="S3.T4.98.98.99.2.1">Fine-gr.</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" colspan="3" id="S3.T4.98.98.99.3"><span class="ltx_text ltx_font_bold" id="S3.T4.98.98.99.3.1">Coarse-gr.</span></td>
</tr>
<tr class="ltx_tr" id="S3.T4.98.98.100">
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T4.98.98.100.1"><span class="ltx_text ltx_font_bold" id="S3.T4.98.98.100.1.1">R1</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T4.98.98.100.2"><span class="ltx_text ltx_font_bold" id="S3.T4.98.98.100.2.1">R2</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T4.98.98.100.3"><span class="ltx_text ltx_font_bold" id="S3.T4.98.98.100.3.1">R3</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T4.98.98.100.4"><span class="ltx_text ltx_font_bold" id="S3.T4.98.98.100.4.1">R1</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T4.98.98.100.5"><span class="ltx_text ltx_font_bold" id="S3.T4.98.98.100.5.1">R2</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T4.98.98.100.6"><span class="ltx_text ltx_font_bold" id="S3.T4.98.98.100.6.1">R3</span></td>
</tr>
<tr class="ltx_tr" id="S3.T4.98.98.101">
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T4.98.98.101.1"><span class="ltx_text ltx_font_smallcaps" id="S3.T4.98.98.101.1.1">Rand.</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T4.98.98.101.2">7.11</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T4.98.98.101.3">4.34</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T4.98.98.101.4">2.46</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T4.98.98.101.5">40.7</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T4.98.98.101.6">40.7</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T4.98.98.101.7">43.3</td>
</tr>
<tr class="ltx_tr" id="S3.T4.98.98.102">
<td class="ltx_td ltx_align_left" id="S3.T4.98.98.102.1"><span class="ltx_text ltx_font_smallcaps" id="S3.T4.98.98.102.1.1">Maj.</span></td>
<td class="ltx_td ltx_align_left" id="S3.T4.98.98.102.2">11.1</td>
<td class="ltx_td ltx_align_left" id="S3.T4.98.98.102.3">7.34</td>
<td class="ltx_td ltx_align_left" id="S3.T4.98.98.102.4">5.11</td>
<td class="ltx_td ltx_align_left" id="S3.T4.98.98.102.5">51.4</td>
<td class="ltx_td ltx_align_left" id="S3.T4.98.98.102.6">51.4</td>
<td class="ltx_td ltx_align_left" id="S3.T4.98.98.102.7">52.3</td>
</tr>
<tr class="ltx_tr" id="S3.T4.98.98.103">
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T4.98.98.103.1">Gemma</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T4.98.98.103.2">22.2</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T4.98.98.103.3">26.7</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T4.98.98.103.4">24.4</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T4.98.98.103.5">48.1</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T4.98.98.103.6">50.4</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T4.98.98.103.7">75.6</td>
</tr>
<tr class="ltx_tr" id="S3.T4.7.7.7">
<td class="ltx_td ltx_align_left" id="S3.T4.1.1.1.1">   <math alttext="it" class="ltx_Math" display="inline" id="S3.T4.1.1.1.1.m1.1"><semantics id="S3.T4.1.1.1.1.m1.1a"><mrow id="S3.T4.1.1.1.1.m1.1.1" xref="S3.T4.1.1.1.1.m1.1.1.cmml"><mi id="S3.T4.1.1.1.1.m1.1.1.2" xref="S3.T4.1.1.1.1.m1.1.1.2.cmml">i</mi><mo id="S3.T4.1.1.1.1.m1.1.1.1" xref="S3.T4.1.1.1.1.m1.1.1.1.cmml">⁢</mo><mi id="S3.T4.1.1.1.1.m1.1.1.3" xref="S3.T4.1.1.1.1.m1.1.1.3.cmml">t</mi></mrow><annotation-xml encoding="MathML-Content" id="S3.T4.1.1.1.1.m1.1b"><apply id="S3.T4.1.1.1.1.m1.1.1.cmml" xref="S3.T4.1.1.1.1.m1.1.1"><times id="S3.T4.1.1.1.1.m1.1.1.1.cmml" xref="S3.T4.1.1.1.1.m1.1.1.1"></times><ci id="S3.T4.1.1.1.1.m1.1.1.2.cmml" xref="S3.T4.1.1.1.1.m1.1.1.2">𝑖</ci><ci id="S3.T4.1.1.1.1.m1.1.1.3.cmml" xref="S3.T4.1.1.1.1.m1.1.1.3">𝑡</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T4.1.1.1.1.m1.1c">it</annotation><annotation encoding="application/x-llamapun" id="S3.T4.1.1.1.1.m1.1d">italic_i italic_t</annotation></semantics></math> + <span class="ltx_text ltx_font_smallcaps" id="S3.T4.1.1.1.1.1">T</span>
</td>
<td class="ltx_td ltx_align_left" id="S3.T4.2.2.2.2">
<span class="ltx_text" id="S3.T4.2.2.2.2.1" style="background-color:#FFBFBF;">31.4</span><sub class="ltx_sub" id="S3.T4.2.2.2.2.2"><span class="ltx_text ltx_font_italic" id="S3.T4.2.2.2.2.2.1">9.2</span></sub>
</td>
<td class="ltx_td ltx_align_left" id="S3.T4.3.3.3.3">
<span class="ltx_text" id="S3.T4.3.3.3.3.1" style="background-color:#FFBFBF;">38.8</span><sub class="ltx_sub" id="S3.T4.3.3.3.3.2"><span class="ltx_text ltx_font_italic" id="S3.T4.3.3.3.3.2.1">12.1</span></sub>
</td>
<td class="ltx_td ltx_align_left" id="S3.T4.4.4.4.4">
<span class="ltx_text" id="S3.T4.4.4.4.4.1" style="background-color:#FFBFBF;">34.6</span><sub class="ltx_sub" id="S3.T4.4.4.4.4.2"><span class="ltx_text ltx_font_italic" id="S3.T4.4.4.4.4.2.1">10.2</span></sub>
</td>
<td class="ltx_td ltx_align_left" id="S3.T4.5.5.5.5">
<span class="ltx_text" id="S3.T4.5.5.5.5.1" style="background-color:#FFBFBF;">57.8</span><sub class="ltx_sub" id="S3.T4.5.5.5.5.2"><span class="ltx_text ltx_font_italic" id="S3.T4.5.5.5.5.2.1">9.7</span></sub>
</td>
<td class="ltx_td ltx_align_left" id="S3.T4.6.6.6.6">
<span class="ltx_text" id="S3.T4.6.6.6.6.1" style="background-color:#FFBFBF;">61.4</span><sub class="ltx_sub" id="S3.T4.6.6.6.6.2"><span class="ltx_text ltx_font_italic" id="S3.T4.6.6.6.6.2.1">10.0</span></sub>
</td>
<td class="ltx_td ltx_align_left" id="S3.T4.7.7.7.7">
<span class="ltx_text" id="S3.T4.7.7.7.7.1" style="background-color:#FFBFBF;">81.2</span><sub class="ltx_sub" id="S3.T4.7.7.7.7.2"><span class="ltx_text ltx_font_italic" id="S3.T4.7.7.7.7.2.1">5.6</span></sub>
</td>
</tr>
<tr class="ltx_tr" id="S3.T4.14.14.14">
<td class="ltx_td ltx_align_left" id="S3.T4.8.8.8.1">   <math alttext="it" class="ltx_Math" display="inline" id="S3.T4.8.8.8.1.m1.1"><semantics id="S3.T4.8.8.8.1.m1.1a"><mrow id="S3.T4.8.8.8.1.m1.1.1" xref="S3.T4.8.8.8.1.m1.1.1.cmml"><mi id="S3.T4.8.8.8.1.m1.1.1.2" xref="S3.T4.8.8.8.1.m1.1.1.2.cmml">i</mi><mo id="S3.T4.8.8.8.1.m1.1.1.1" xref="S3.T4.8.8.8.1.m1.1.1.1.cmml">⁢</mo><mi id="S3.T4.8.8.8.1.m1.1.1.3" xref="S3.T4.8.8.8.1.m1.1.1.3.cmml">t</mi></mrow><annotation-xml encoding="MathML-Content" id="S3.T4.8.8.8.1.m1.1b"><apply id="S3.T4.8.8.8.1.m1.1.1.cmml" xref="S3.T4.8.8.8.1.m1.1.1"><times id="S3.T4.8.8.8.1.m1.1.1.1.cmml" xref="S3.T4.8.8.8.1.m1.1.1.1"></times><ci id="S3.T4.8.8.8.1.m1.1.1.2.cmml" xref="S3.T4.8.8.8.1.m1.1.1.2">𝑖</ci><ci id="S3.T4.8.8.8.1.m1.1.1.3.cmml" xref="S3.T4.8.8.8.1.m1.1.1.3">𝑡</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T4.8.8.8.1.m1.1c">it</annotation><annotation encoding="application/x-llamapun" id="S3.T4.8.8.8.1.m1.1d">italic_i italic_t</annotation></semantics></math> + <span class="ltx_text ltx_font_smallcaps" id="S3.T4.8.8.8.1.1">RT</span>
</td>
<td class="ltx_td ltx_align_left" id="S3.T4.9.9.9.2">
<span class="ltx_text" id="S3.T4.9.9.9.2.1" style="background-color:#FFBFBF;">28.2</span><sub class="ltx_sub" id="S3.T4.9.9.9.2.2"><span class="ltx_text ltx_font_italic" id="S3.T4.9.9.9.2.2.1">6.0</span></sub>
</td>
<td class="ltx_td ltx_align_left" id="S3.T4.10.10.10.3">
<span class="ltx_text" id="S3.T4.10.10.10.3.1" style="background-color:#FFBFBF;">35.7</span><sub class="ltx_sub" id="S3.T4.10.10.10.3.2"><span class="ltx_text ltx_font_italic" id="S3.T4.10.10.10.3.2.1">9.0</span></sub>
</td>
<td class="ltx_td ltx_align_left" id="S3.T4.11.11.11.4">
<span class="ltx_text" id="S3.T4.11.11.11.4.1" style="background-color:#FFBFBF;">32.8</span><sub class="ltx_sub" id="S3.T4.11.11.11.4.2"><span class="ltx_text ltx_font_italic" id="S3.T4.11.11.11.4.2.1">8.4</span></sub>
</td>
<td class="ltx_td ltx_align_left" id="S3.T4.12.12.12.5">
<span class="ltx_text" id="S3.T4.12.12.12.5.1" style="background-color:#FFBFBF;">55.6</span><sub class="ltx_sub" id="S3.T4.12.12.12.5.2"><span class="ltx_text ltx_font_italic" id="S3.T4.12.12.12.5.2.1">7.5</span></sub>
</td>
<td class="ltx_td ltx_align_left" id="S3.T4.13.13.13.6">
<span class="ltx_text" id="S3.T4.13.13.13.6.1" style="background-color:#FFBFBF;">59.4</span><sub class="ltx_sub" id="S3.T4.13.13.13.6.2"><span class="ltx_text ltx_font_italic" id="S3.T4.13.13.13.6.2.1">9.0</span></sub>
</td>
<td class="ltx_td ltx_align_left" id="S3.T4.14.14.14.7">
<span class="ltx_text" id="S3.T4.14.14.14.7.1" style="background-color:#FFBFBF;">78.8</span><sub class="ltx_sub" id="S3.T4.14.14.14.7.2"><span class="ltx_text ltx_font_italic" id="S3.T4.14.14.14.7.2.1">3.2</span></sub>
</td>
</tr>
<tr class="ltx_tr" id="S3.T4.98.98.104">
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T4.98.98.104.1">LLaMa</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T4.98.98.104.2">12.2</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T4.98.98.104.3">22.2</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T4.98.98.104.4">15.6</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T4.98.98.104.5">57.7</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T4.98.98.104.6">60.0</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T4.98.98.104.7">84.4</td>
</tr>
<tr class="ltx_tr" id="S3.T4.21.21.21">
<td class="ltx_td ltx_align_left" id="S3.T4.15.15.15.1">   <math alttext="it" class="ltx_Math" display="inline" id="S3.T4.15.15.15.1.m1.1"><semantics id="S3.T4.15.15.15.1.m1.1a"><mrow id="S3.T4.15.15.15.1.m1.1.1" xref="S3.T4.15.15.15.1.m1.1.1.cmml"><mi id="S3.T4.15.15.15.1.m1.1.1.2" xref="S3.T4.15.15.15.1.m1.1.1.2.cmml">i</mi><mo id="S3.T4.15.15.15.1.m1.1.1.1" xref="S3.T4.15.15.15.1.m1.1.1.1.cmml">⁢</mo><mi id="S3.T4.15.15.15.1.m1.1.1.3" xref="S3.T4.15.15.15.1.m1.1.1.3.cmml">t</mi></mrow><annotation-xml encoding="MathML-Content" id="S3.T4.15.15.15.1.m1.1b"><apply id="S3.T4.15.15.15.1.m1.1.1.cmml" xref="S3.T4.15.15.15.1.m1.1.1"><times id="S3.T4.15.15.15.1.m1.1.1.1.cmml" xref="S3.T4.15.15.15.1.m1.1.1.1"></times><ci id="S3.T4.15.15.15.1.m1.1.1.2.cmml" xref="S3.T4.15.15.15.1.m1.1.1.2">𝑖</ci><ci id="S3.T4.15.15.15.1.m1.1.1.3.cmml" xref="S3.T4.15.15.15.1.m1.1.1.3">𝑡</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T4.15.15.15.1.m1.1c">it</annotation><annotation encoding="application/x-llamapun" id="S3.T4.15.15.15.1.m1.1d">italic_i italic_t</annotation></semantics></math> + <span class="ltx_text ltx_font_smallcaps" id="S3.T4.15.15.15.1.1">T</span>
</td>
<td class="ltx_td ltx_align_left" id="S3.T4.16.16.16.2">
<span class="ltx_text" id="S3.T4.16.16.16.2.1" style="background-color:#FFBFBF;">43.8</span><sub class="ltx_sub" id="S3.T4.16.16.16.2.2"><span class="ltx_text ltx_font_italic" id="S3.T4.16.16.16.2.2.1">31.6</span></sub>
</td>
<td class="ltx_td ltx_align_left" id="S3.T4.17.17.17.3">
<span class="ltx_text" id="S3.T4.17.17.17.3.1" style="background-color:#FFBFBF;">47.8</span><sub class="ltx_sub" id="S3.T4.17.17.17.3.2"><span class="ltx_text ltx_font_italic" id="S3.T4.17.17.17.3.2.1">25.6</span></sub>
</td>
<td class="ltx_td ltx_align_left" id="S3.T4.18.18.18.4">
<span class="ltx_text" id="S3.T4.18.18.18.4.1" style="background-color:#FFBFBF;">44.7</span><sub class="ltx_sub" id="S3.T4.18.18.18.4.2"><span class="ltx_text ltx_font_italic" id="S3.T4.18.18.18.4.2.1">29.1</span></sub>
</td>
<td class="ltx_td ltx_align_left" id="S3.T4.19.19.19.5">
<span class="ltx_text" id="S3.T4.19.19.19.5.1" style="background-color:#FFBFBF;">62.7</span><sub class="ltx_sub" id="S3.T4.19.19.19.5.2"><span class="ltx_text ltx_font_italic" id="S3.T4.19.19.19.5.2.1">5.0</span></sub>
</td>
<td class="ltx_td ltx_align_left" id="S3.T4.20.20.20.6">
<span class="ltx_text" id="S3.T4.20.20.20.6.1" style="background-color:#FFBFBF;">65.4</span><sub class="ltx_sub" id="S3.T4.20.20.20.6.2"><span class="ltx_text ltx_font_italic" id="S3.T4.20.20.20.6.2.1">5.0</span></sub>
</td>
<td class="ltx_td ltx_align_left" id="S3.T4.21.21.21.7">
<span class="ltx_text" id="S3.T4.21.21.21.7.1" style="background-color:#FFBFBF;">85.4</span><sub class="ltx_sub" id="S3.T4.21.21.21.7.2"><span class="ltx_text ltx_font_italic" id="S3.T4.21.21.21.7.2.1">1.0</span></sub>
</td>
</tr>
<tr class="ltx_tr" id="S3.T4.28.28.28">
<td class="ltx_td ltx_align_left" id="S3.T4.22.22.22.1">   <math alttext="it" class="ltx_Math" display="inline" id="S3.T4.22.22.22.1.m1.1"><semantics id="S3.T4.22.22.22.1.m1.1a"><mrow id="S3.T4.22.22.22.1.m1.1.1" xref="S3.T4.22.22.22.1.m1.1.1.cmml"><mi id="S3.T4.22.22.22.1.m1.1.1.2" xref="S3.T4.22.22.22.1.m1.1.1.2.cmml">i</mi><mo id="S3.T4.22.22.22.1.m1.1.1.1" xref="S3.T4.22.22.22.1.m1.1.1.1.cmml">⁢</mo><mi id="S3.T4.22.22.22.1.m1.1.1.3" xref="S3.T4.22.22.22.1.m1.1.1.3.cmml">t</mi></mrow><annotation-xml encoding="MathML-Content" id="S3.T4.22.22.22.1.m1.1b"><apply id="S3.T4.22.22.22.1.m1.1.1.cmml" xref="S3.T4.22.22.22.1.m1.1.1"><times id="S3.T4.22.22.22.1.m1.1.1.1.cmml" xref="S3.T4.22.22.22.1.m1.1.1.1"></times><ci id="S3.T4.22.22.22.1.m1.1.1.2.cmml" xref="S3.T4.22.22.22.1.m1.1.1.2">𝑖</ci><ci id="S3.T4.22.22.22.1.m1.1.1.3.cmml" xref="S3.T4.22.22.22.1.m1.1.1.3">𝑡</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T4.22.22.22.1.m1.1c">it</annotation><annotation encoding="application/x-llamapun" id="S3.T4.22.22.22.1.m1.1d">italic_i italic_t</annotation></semantics></math> + <span class="ltx_text ltx_font_smallcaps" id="S3.T4.22.22.22.1.1">RT</span>
</td>
<td class="ltx_td ltx_align_left" id="S3.T4.23.23.23.2">
<span class="ltx_text" id="S3.T4.23.23.23.2.1" style="background-color:#FFBFBF;">43.2</span><sub class="ltx_sub" id="S3.T4.23.23.23.2.2"><span class="ltx_text ltx_font_italic" id="S3.T4.23.23.23.2.2.1">31.0</span></sub>
</td>
<td class="ltx_td ltx_align_left" id="S3.T4.24.24.24.3">
<span class="ltx_text" id="S3.T4.24.24.24.3.1" style="background-color:#FFBFBF;">45.3</span><sub class="ltx_sub" id="S3.T4.24.24.24.3.2"><span class="ltx_text ltx_font_italic" id="S3.T4.24.24.24.3.2.1">23.1</span></sub>
</td>
<td class="ltx_td ltx_align_left" id="S3.T4.25.25.25.4">
<span class="ltx_text" id="S3.T4.25.25.25.4.1" style="background-color:#FFBFBF;">41.8</span><sub class="ltx_sub" id="S3.T4.25.25.25.4.2"><span class="ltx_text ltx_font_italic" id="S3.T4.25.25.25.4.2.1">26.2</span></sub>
</td>
<td class="ltx_td ltx_align_left" id="S3.T4.26.26.26.5">
<span class="ltx_text" id="S3.T4.26.26.26.5.1" style="background-color:#FFBFBF;">61.2</span><sub class="ltx_sub" id="S3.T4.26.26.26.5.2"><span class="ltx_text ltx_font_italic" id="S3.T4.26.26.26.5.2.1">3.5</span></sub>
</td>
<td class="ltx_td ltx_align_left" id="S3.T4.27.27.27.6">
<span class="ltx_text" id="S3.T4.27.27.27.6.1" style="background-color:#FFBFBF;">63.1</span><sub class="ltx_sub" id="S3.T4.27.27.27.6.2"><span class="ltx_text ltx_font_italic" id="S3.T4.27.27.27.6.2.1">3.1</span></sub>
</td>
<td class="ltx_td ltx_align_left" id="S3.T4.28.28.28.7">
<span class="ltx_text" id="S3.T4.28.28.28.7.1" style="background-color:#CED5DA;">81.3</span><sub class="ltx_sub" id="S3.T4.28.28.28.7.2"><span class="ltx_text ltx_font_italic" id="S3.T4.28.28.28.7.2.1">3.1</span></sub>
</td>
</tr>
<tr class="ltx_tr" id="S3.T4.98.98.105">
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T4.98.98.105.1">LLaMa<sub class="ltx_sub" id="S3.T4.98.98.105.1.1">L</sub>
</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T4.98.98.105.2">26.7</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T4.98.98.105.3">26.7</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T4.98.98.105.4">24.4</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T4.98.98.105.5">68.6</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T4.98.98.105.6">70.2</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T4.98.98.105.7">73.1</td>
</tr>
<tr class="ltx_tr" id="S3.T4.35.35.35">
<td class="ltx_td ltx_align_left" id="S3.T4.29.29.29.1">   <math alttext="it" class="ltx_Math" display="inline" id="S3.T4.29.29.29.1.m1.1"><semantics id="S3.T4.29.29.29.1.m1.1a"><mrow id="S3.T4.29.29.29.1.m1.1.1" xref="S3.T4.29.29.29.1.m1.1.1.cmml"><mi id="S3.T4.29.29.29.1.m1.1.1.2" xref="S3.T4.29.29.29.1.m1.1.1.2.cmml">i</mi><mo id="S3.T4.29.29.29.1.m1.1.1.1" xref="S3.T4.29.29.29.1.m1.1.1.1.cmml">⁢</mo><mi id="S3.T4.29.29.29.1.m1.1.1.3" xref="S3.T4.29.29.29.1.m1.1.1.3.cmml">t</mi></mrow><annotation-xml encoding="MathML-Content" id="S3.T4.29.29.29.1.m1.1b"><apply id="S3.T4.29.29.29.1.m1.1.1.cmml" xref="S3.T4.29.29.29.1.m1.1.1"><times id="S3.T4.29.29.29.1.m1.1.1.1.cmml" xref="S3.T4.29.29.29.1.m1.1.1.1"></times><ci id="S3.T4.29.29.29.1.m1.1.1.2.cmml" xref="S3.T4.29.29.29.1.m1.1.1.2">𝑖</ci><ci id="S3.T4.29.29.29.1.m1.1.1.3.cmml" xref="S3.T4.29.29.29.1.m1.1.1.3">𝑡</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T4.29.29.29.1.m1.1c">it</annotation><annotation encoding="application/x-llamapun" id="S3.T4.29.29.29.1.m1.1d">italic_i italic_t</annotation></semantics></math> + <span class="ltx_text ltx_font_smallcaps" id="S3.T4.29.29.29.1.1">T</span>
</td>
<td class="ltx_td ltx_align_left" id="S3.T4.30.30.30.2">
<span class="ltx_text" id="S3.T4.30.30.30.2.1" style="background-color:#FFBFBF;">45.8</span><sub class="ltx_sub" id="S3.T4.30.30.30.2.2"><span class="ltx_text ltx_font_italic" id="S3.T4.30.30.30.2.2.1">19.1</span></sub>
</td>
<td class="ltx_td ltx_align_left" id="S3.T4.31.31.31.3">
<span class="ltx_text" id="S3.T4.31.31.31.3.1" style="background-color:#FFBFBF;">47.8</span><sub class="ltx_sub" id="S3.T4.31.31.31.3.2"><span class="ltx_text ltx_font_italic" id="S3.T4.31.31.31.3.2.1">21.1</span></sub>
</td>
<td class="ltx_td ltx_align_left" id="S3.T4.32.32.32.4">
<span class="ltx_text" id="S3.T4.32.32.32.4.1" style="background-color:#FFBFBF;">50.5</span><sub class="ltx_sub" id="S3.T4.32.32.32.4.2"><span class="ltx_text ltx_font_italic" id="S3.T4.32.32.32.4.2.1">26.1</span></sub>
</td>
<td class="ltx_td ltx_align_left" id="S3.T4.33.33.33.5">
<span class="ltx_text" id="S3.T4.33.33.33.5.1" style="background-color:#FFBFBF;">74.3</span><sub class="ltx_sub" id="S3.T4.33.33.33.5.2"><span class="ltx_text ltx_font_italic" id="S3.T4.33.33.33.5.2.1">5.7</span></sub>
</td>
<td class="ltx_td ltx_align_left" id="S3.T4.34.34.34.6">
<span class="ltx_text" id="S3.T4.34.34.34.6.1" style="background-color:#FFBFBF;">74.6</span><sub class="ltx_sub" id="S3.T4.34.34.34.6.2"><span class="ltx_text ltx_font_italic" id="S3.T4.34.34.34.6.2.1">4.4</span></sub>
</td>
<td class="ltx_td ltx_align_left" id="S3.T4.35.35.35.7">
<span class="ltx_text" id="S3.T4.35.35.35.7.1" style="background-color:#FFBFBF;">75.3</span><sub class="ltx_sub" id="S3.T4.35.35.35.7.2"><span class="ltx_text ltx_font_italic" id="S3.T4.35.35.35.7.2.1">2.2</span></sub>
</td>
</tr>
<tr class="ltx_tr" id="S3.T4.42.42.42">
<td class="ltx_td ltx_align_left" id="S3.T4.36.36.36.1">   <math alttext="it" class="ltx_Math" display="inline" id="S3.T4.36.36.36.1.m1.1"><semantics id="S3.T4.36.36.36.1.m1.1a"><mrow id="S3.T4.36.36.36.1.m1.1.1" xref="S3.T4.36.36.36.1.m1.1.1.cmml"><mi id="S3.T4.36.36.36.1.m1.1.1.2" xref="S3.T4.36.36.36.1.m1.1.1.2.cmml">i</mi><mo id="S3.T4.36.36.36.1.m1.1.1.1" xref="S3.T4.36.36.36.1.m1.1.1.1.cmml">⁢</mo><mi id="S3.T4.36.36.36.1.m1.1.1.3" xref="S3.T4.36.36.36.1.m1.1.1.3.cmml">t</mi></mrow><annotation-xml encoding="MathML-Content" id="S3.T4.36.36.36.1.m1.1b"><apply id="S3.T4.36.36.36.1.m1.1.1.cmml" xref="S3.T4.36.36.36.1.m1.1.1"><times id="S3.T4.36.36.36.1.m1.1.1.1.cmml" xref="S3.T4.36.36.36.1.m1.1.1.1"></times><ci id="S3.T4.36.36.36.1.m1.1.1.2.cmml" xref="S3.T4.36.36.36.1.m1.1.1.2">𝑖</ci><ci id="S3.T4.36.36.36.1.m1.1.1.3.cmml" xref="S3.T4.36.36.36.1.m1.1.1.3">𝑡</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T4.36.36.36.1.m1.1c">it</annotation><annotation encoding="application/x-llamapun" id="S3.T4.36.36.36.1.m1.1d">italic_i italic_t</annotation></semantics></math> + <span class="ltx_text ltx_font_smallcaps" id="S3.T4.36.36.36.1.1">RT</span>
</td>
<td class="ltx_td ltx_align_left" id="S3.T4.37.37.37.2">
<span class="ltx_text" id="S3.T4.37.37.37.2.1" style="background-color:#FFBFBF;">41.2</span><sub class="ltx_sub" id="S3.T4.37.37.37.2.2"><span class="ltx_text ltx_font_italic" id="S3.T4.37.37.37.2.2.1">14.5</span></sub>
</td>
<td class="ltx_td ltx_align_left" id="S3.T4.38.38.38.3">
<span class="ltx_text" id="S3.T4.38.38.38.3.1" style="background-color:#FFBFBF;">45.2</span><sub class="ltx_sub" id="S3.T4.38.38.38.3.2"><span class="ltx_text ltx_font_italic" id="S3.T4.38.38.38.3.2.1">18.5</span></sub>
</td>
<td class="ltx_td ltx_align_left" id="S3.T4.39.39.39.4">
<span class="ltx_text" id="S3.T4.39.39.39.4.1" style="background-color:#FFBFBF;">47.3</span><sub class="ltx_sub" id="S3.T4.39.39.39.4.2"><span class="ltx_text ltx_font_italic" id="S3.T4.39.39.39.4.2.1">22.9</span></sub>
</td>
<td class="ltx_td ltx_align_left" id="S3.T4.40.40.40.5">
<span class="ltx_text" id="S3.T4.40.40.40.5.1" style="background-color:#FFBFBF;">70.2</span><sub class="ltx_sub" id="S3.T4.40.40.40.5.2"><span class="ltx_text ltx_font_italic" id="S3.T4.40.40.40.5.2.1">1.6</span></sub>
</td>
<td class="ltx_td ltx_align_left" id="S3.T4.41.41.41.6">
<span class="ltx_text" id="S3.T4.41.41.41.6.1" style="background-color:#FFBFBF;">71.8</span><sub class="ltx_sub" id="S3.T4.41.41.41.6.2"><span class="ltx_text ltx_font_italic" id="S3.T4.41.41.41.6.2.1">1.8</span></sub>
</td>
<td class="ltx_td ltx_align_left" id="S3.T4.42.42.42.7">
<span class="ltx_text" id="S3.T4.42.42.42.7.1" style="background-color:#FFBFBF;">73.3</span><sub class="ltx_sub" id="S3.T4.42.42.42.7.2"><span class="ltx_text ltx_font_italic" id="S3.T4.42.42.42.7.2.1">0.2</span></sub>
</td>
</tr>
<tr class="ltx_tr" id="S3.T4.98.98.106">
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T4.98.98.106.1">Mistral</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T4.98.98.106.2">27.8</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T4.98.98.106.3">28.8</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T4.98.98.106.4">30.0</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T4.98.98.106.5">57.8</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T4.98.98.106.6">58.8</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T4.98.98.106.7">86.7</td>
</tr>
<tr class="ltx_tr" id="S3.T4.49.49.49">
<td class="ltx_td ltx_align_left" id="S3.T4.43.43.43.1">   <math alttext="it" class="ltx_Math" display="inline" id="S3.T4.43.43.43.1.m1.1"><semantics id="S3.T4.43.43.43.1.m1.1a"><mrow id="S3.T4.43.43.43.1.m1.1.1" xref="S3.T4.43.43.43.1.m1.1.1.cmml"><mi id="S3.T4.43.43.43.1.m1.1.1.2" xref="S3.T4.43.43.43.1.m1.1.1.2.cmml">i</mi><mo id="S3.T4.43.43.43.1.m1.1.1.1" xref="S3.T4.43.43.43.1.m1.1.1.1.cmml">⁢</mo><mi id="S3.T4.43.43.43.1.m1.1.1.3" xref="S3.T4.43.43.43.1.m1.1.1.3.cmml">t</mi></mrow><annotation-xml encoding="MathML-Content" id="S3.T4.43.43.43.1.m1.1b"><apply id="S3.T4.43.43.43.1.m1.1.1.cmml" xref="S3.T4.43.43.43.1.m1.1.1"><times id="S3.T4.43.43.43.1.m1.1.1.1.cmml" xref="S3.T4.43.43.43.1.m1.1.1.1"></times><ci id="S3.T4.43.43.43.1.m1.1.1.2.cmml" xref="S3.T4.43.43.43.1.m1.1.1.2">𝑖</ci><ci id="S3.T4.43.43.43.1.m1.1.1.3.cmml" xref="S3.T4.43.43.43.1.m1.1.1.3">𝑡</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T4.43.43.43.1.m1.1c">it</annotation><annotation encoding="application/x-llamapun" id="S3.T4.43.43.43.1.m1.1d">italic_i italic_t</annotation></semantics></math> + <span class="ltx_text ltx_font_smallcaps" id="S3.T4.43.43.43.1.1">T</span>
</td>
<td class="ltx_td ltx_align_left" id="S3.T4.44.44.44.2">
<span class="ltx_text" id="S3.T4.44.44.44.2.1" style="background-color:#FFBFBF;">35.4</span><sub class="ltx_sub" id="S3.T4.44.44.44.2.2"><span class="ltx_text ltx_font_italic" id="S3.T4.44.44.44.2.2.1">7.6</span></sub>
</td>
<td class="ltx_td ltx_align_left" id="S3.T4.45.45.45.3">
<span class="ltx_text" id="S3.T4.45.45.45.3.1" style="background-color:#FFBFBF;">37.4</span><sub class="ltx_sub" id="S3.T4.45.45.45.3.2"><span class="ltx_text ltx_font_italic" id="S3.T4.45.45.45.3.2.1">8.6</span></sub>
</td>
<td class="ltx_td ltx_align_left" id="S3.T4.46.46.46.4">
<span class="ltx_text" id="S3.T4.46.46.46.4.1" style="background-color:#FFBFBF;">42.4</span><sub class="ltx_sub" id="S3.T4.46.46.46.4.2"><span class="ltx_text ltx_font_italic" id="S3.T4.46.46.46.4.2.1">12.4</span></sub>
</td>
<td class="ltx_td ltx_align_left" id="S3.T4.47.47.47.5">
<span class="ltx_text" id="S3.T4.47.47.47.5.1" style="background-color:#FFBFBF;">60.2</span><sub class="ltx_sub" id="S3.T4.47.47.47.5.2"><span class="ltx_text ltx_font_italic" id="S3.T4.47.47.47.5.2.1">2.4</span></sub>
</td>
<td class="ltx_td ltx_align_left" id="S3.T4.48.48.48.6">
<span class="ltx_text" id="S3.T4.48.48.48.6.1" style="background-color:#FFBFBF;">62.2</span><sub class="ltx_sub" id="S3.T4.48.48.48.6.2"><span class="ltx_text ltx_font_italic" id="S3.T4.48.48.48.6.2.1">3.4</span></sub>
</td>
<td class="ltx_td ltx_align_left" id="S3.T4.49.49.49.7">
<span class="ltx_text" id="S3.T4.49.49.49.7.1" style="background-color:#CED5DA;">86.4</span><sub class="ltx_sub" id="S3.T4.49.49.49.7.2"><span class="ltx_text ltx_font_italic" id="S3.T4.49.49.49.7.2.1">0.3</span></sub>
</td>
</tr>
<tr class="ltx_tr" id="S3.T4.56.56.56">
<td class="ltx_td ltx_align_left" id="S3.T4.50.50.50.1">   <math alttext="it" class="ltx_Math" display="inline" id="S3.T4.50.50.50.1.m1.1"><semantics id="S3.T4.50.50.50.1.m1.1a"><mrow id="S3.T4.50.50.50.1.m1.1.1" xref="S3.T4.50.50.50.1.m1.1.1.cmml"><mi id="S3.T4.50.50.50.1.m1.1.1.2" xref="S3.T4.50.50.50.1.m1.1.1.2.cmml">i</mi><mo id="S3.T4.50.50.50.1.m1.1.1.1" xref="S3.T4.50.50.50.1.m1.1.1.1.cmml">⁢</mo><mi id="S3.T4.50.50.50.1.m1.1.1.3" xref="S3.T4.50.50.50.1.m1.1.1.3.cmml">t</mi></mrow><annotation-xml encoding="MathML-Content" id="S3.T4.50.50.50.1.m1.1b"><apply id="S3.T4.50.50.50.1.m1.1.1.cmml" xref="S3.T4.50.50.50.1.m1.1.1"><times id="S3.T4.50.50.50.1.m1.1.1.1.cmml" xref="S3.T4.50.50.50.1.m1.1.1.1"></times><ci id="S3.T4.50.50.50.1.m1.1.1.2.cmml" xref="S3.T4.50.50.50.1.m1.1.1.2">𝑖</ci><ci id="S3.T4.50.50.50.1.m1.1.1.3.cmml" xref="S3.T4.50.50.50.1.m1.1.1.3">𝑡</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T4.50.50.50.1.m1.1c">it</annotation><annotation encoding="application/x-llamapun" id="S3.T4.50.50.50.1.m1.1d">italic_i italic_t</annotation></semantics></math> + <span class="ltx_text ltx_font_smallcaps" id="S3.T4.50.50.50.1.1">RT</span>
</td>
<td class="ltx_td ltx_align_left" id="S3.T4.51.51.51.2">
<span class="ltx_text" id="S3.T4.51.51.51.2.1" style="background-color:#FFBFBF;">31.2</span><sub class="ltx_sub" id="S3.T4.51.51.51.2.2"><span class="ltx_text ltx_font_italic" id="S3.T4.51.51.51.2.2.1">3.4</span></sub>
</td>
<td class="ltx_td ltx_align_left" id="S3.T4.52.52.52.3">
<span class="ltx_text" id="S3.T4.52.52.52.3.1" style="background-color:#FFBFBF;">35.2</span><sub class="ltx_sub" id="S3.T4.52.52.52.3.2"><span class="ltx_text ltx_font_italic" id="S3.T4.52.52.52.3.2.1">6.4</span></sub>
</td>
<td class="ltx_td ltx_align_left" id="S3.T4.53.53.53.4">
<span class="ltx_text" id="S3.T4.53.53.53.4.1" style="background-color:#FFBFBF;">37.8</span><sub class="ltx_sub" id="S3.T4.53.53.53.4.2"><span class="ltx_text ltx_font_italic" id="S3.T4.53.53.53.4.2.1">7.8</span></sub>
</td>
<td class="ltx_td ltx_align_left" id="S3.T4.54.54.54.5">
<span class="ltx_text" id="S3.T4.54.54.54.5.1" style="background-color:#FFBFBF;">65.3</span><sub class="ltx_sub" id="S3.T4.54.54.54.5.2"><span class="ltx_text ltx_font_italic" id="S3.T4.54.54.54.5.2.1">7.5</span></sub>
</td>
<td class="ltx_td ltx_align_left" id="S3.T4.55.55.55.6">
<span class="ltx_text" id="S3.T4.55.55.55.6.1" style="background-color:#FFBFBF;">68.2</span><sub class="ltx_sub" id="S3.T4.55.55.55.6.2"><span class="ltx_text ltx_font_italic" id="S3.T4.55.55.55.6.2.1">9.4</span></sub>
</td>
<td class="ltx_td ltx_align_left" id="S3.T4.56.56.56.7">
<span class="ltx_text" id="S3.T4.56.56.56.7.1" style="background-color:#FFBFBF;">88.2</span><sub class="ltx_sub" id="S3.T4.56.56.56.7.2"><span class="ltx_text ltx_font_italic" id="S3.T4.56.56.56.7.2.1">1.5</span></sub>
</td>
</tr>
<tr class="ltx_tr" id="S3.T4.98.98.107">
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T4.98.98.107.1">Qwen</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T4.98.98.107.2">21.1</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T4.98.98.107.3">22.7</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T4.98.98.107.4">31.1</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T4.98.98.107.5">68.9</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T4.98.98.107.6">70.4</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T4.98.98.107.7">86.7</td>
</tr>
<tr class="ltx_tr" id="S3.T4.63.63.63">
<td class="ltx_td ltx_align_left" id="S3.T4.57.57.57.1">   <math alttext="it" class="ltx_Math" display="inline" id="S3.T4.57.57.57.1.m1.1"><semantics id="S3.T4.57.57.57.1.m1.1a"><mrow id="S3.T4.57.57.57.1.m1.1.1" xref="S3.T4.57.57.57.1.m1.1.1.cmml"><mi id="S3.T4.57.57.57.1.m1.1.1.2" xref="S3.T4.57.57.57.1.m1.1.1.2.cmml">i</mi><mo id="S3.T4.57.57.57.1.m1.1.1.1" xref="S3.T4.57.57.57.1.m1.1.1.1.cmml">⁢</mo><mi id="S3.T4.57.57.57.1.m1.1.1.3" xref="S3.T4.57.57.57.1.m1.1.1.3.cmml">t</mi></mrow><annotation-xml encoding="MathML-Content" id="S3.T4.57.57.57.1.m1.1b"><apply id="S3.T4.57.57.57.1.m1.1.1.cmml" xref="S3.T4.57.57.57.1.m1.1.1"><times id="S3.T4.57.57.57.1.m1.1.1.1.cmml" xref="S3.T4.57.57.57.1.m1.1.1.1"></times><ci id="S3.T4.57.57.57.1.m1.1.1.2.cmml" xref="S3.T4.57.57.57.1.m1.1.1.2">𝑖</ci><ci id="S3.T4.57.57.57.1.m1.1.1.3.cmml" xref="S3.T4.57.57.57.1.m1.1.1.3">𝑡</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T4.57.57.57.1.m1.1c">it</annotation><annotation encoding="application/x-llamapun" id="S3.T4.57.57.57.1.m1.1d">italic_i italic_t</annotation></semantics></math> + <span class="ltx_text ltx_font_smallcaps" id="S3.T4.57.57.57.1.1">T</span>
</td>
<td class="ltx_td ltx_align_left" id="S3.T4.58.58.58.2">
<span class="ltx_text" id="S3.T4.58.58.58.2.1" style="background-color:#FFBFBF;">45.9</span><sub class="ltx_sub" id="S3.T4.58.58.58.2.2"><span class="ltx_text ltx_font_italic" id="S3.T4.58.58.58.2.2.1">24.8</span></sub>
</td>
<td class="ltx_td ltx_align_left" id="S3.T4.59.59.59.3">
<span class="ltx_text" id="S3.T4.59.59.59.3.1" style="background-color:#FFBFBF;">48.4</span><sub class="ltx_sub" id="S3.T4.59.59.59.3.2"><span class="ltx_text ltx_font_italic" id="S3.T4.59.59.59.3.2.1">25.7</span></sub>
</td>
<td class="ltx_td ltx_align_left" id="S3.T4.60.60.60.4">
<span class="ltx_text" id="S3.T4.60.60.60.4.1" style="background-color:#FFBFBF;">59.4</span><sub class="ltx_sub" id="S3.T4.60.60.60.4.2"><span class="ltx_text ltx_font_italic" id="S3.T4.60.60.60.4.2.1">28.3</span></sub>
</td>
<td class="ltx_td ltx_align_left" id="S3.T4.61.61.61.5">
<span class="ltx_text" id="S3.T4.61.61.61.5.1" style="background-color:#FFBFBF;">75.4</span><sub class="ltx_sub" id="S3.T4.61.61.61.5.2"><span class="ltx_text ltx_font_italic" id="S3.T4.61.61.61.5.2.1">6.5</span></sub>
</td>
<td class="ltx_td ltx_align_left" id="S3.T4.62.62.62.6">
<span class="ltx_text" id="S3.T4.62.62.62.6.1" style="background-color:#FFBFBF;">76.3</span><sub class="ltx_sub" id="S3.T4.62.62.62.6.2"><span class="ltx_text ltx_font_italic" id="S3.T4.62.62.62.6.2.1">5.9</span></sub>
</td>
<td class="ltx_td ltx_align_left" id="S3.T4.63.63.63.7">
<span class="ltx_text" id="S3.T4.63.63.63.7.1" style="background-color:#CED5DA;">88.4</span><sub class="ltx_sub" id="S3.T4.63.63.63.7.2"><span class="ltx_text ltx_font_italic" id="S3.T4.63.63.63.7.2.1">1.7</span></sub>
</td>
</tr>
<tr class="ltx_tr" id="S3.T4.70.70.70">
<td class="ltx_td ltx_align_left" id="S3.T4.64.64.64.1">   <math alttext="it" class="ltx_Math" display="inline" id="S3.T4.64.64.64.1.m1.1"><semantics id="S3.T4.64.64.64.1.m1.1a"><mrow id="S3.T4.64.64.64.1.m1.1.1" xref="S3.T4.64.64.64.1.m1.1.1.cmml"><mi id="S3.T4.64.64.64.1.m1.1.1.2" xref="S3.T4.64.64.64.1.m1.1.1.2.cmml">i</mi><mo id="S3.T4.64.64.64.1.m1.1.1.1" xref="S3.T4.64.64.64.1.m1.1.1.1.cmml">⁢</mo><mi id="S3.T4.64.64.64.1.m1.1.1.3" xref="S3.T4.64.64.64.1.m1.1.1.3.cmml">t</mi></mrow><annotation-xml encoding="MathML-Content" id="S3.T4.64.64.64.1.m1.1b"><apply id="S3.T4.64.64.64.1.m1.1.1.cmml" xref="S3.T4.64.64.64.1.m1.1.1"><times id="S3.T4.64.64.64.1.m1.1.1.1.cmml" xref="S3.T4.64.64.64.1.m1.1.1.1"></times><ci id="S3.T4.64.64.64.1.m1.1.1.2.cmml" xref="S3.T4.64.64.64.1.m1.1.1.2">𝑖</ci><ci id="S3.T4.64.64.64.1.m1.1.1.3.cmml" xref="S3.T4.64.64.64.1.m1.1.1.3">𝑡</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T4.64.64.64.1.m1.1c">it</annotation><annotation encoding="application/x-llamapun" id="S3.T4.64.64.64.1.m1.1d">italic_i italic_t</annotation></semantics></math> + <span class="ltx_text ltx_font_smallcaps" id="S3.T4.64.64.64.1.1">RT</span>
</td>
<td class="ltx_td ltx_align_left" id="S3.T4.65.65.65.2">
<span class="ltx_text" id="S3.T4.65.65.65.2.1" style="background-color:#FFBFBF;">41.2</span><sub class="ltx_sub" id="S3.T4.65.65.65.2.2"><span class="ltx_text ltx_font_italic" id="S3.T4.65.65.65.2.2.1">20.1</span></sub>
</td>
<td class="ltx_td ltx_align_left" id="S3.T4.66.66.66.3">
<span class="ltx_text" id="S3.T4.66.66.66.3.1" style="background-color:#FFBFBF;">42.4</span><sub class="ltx_sub" id="S3.T4.66.66.66.3.2"><span class="ltx_text ltx_font_italic" id="S3.T4.66.66.66.3.2.1">19.7</span></sub>
</td>
<td class="ltx_td ltx_align_left" id="S3.T4.67.67.67.4">
<span class="ltx_text" id="S3.T4.67.67.67.4.1" style="background-color:#FFBFBF;">47.8</span><sub class="ltx_sub" id="S3.T4.67.67.67.4.2"><span class="ltx_text ltx_font_italic" id="S3.T4.67.67.67.4.2.1">16.7</span></sub>
</td>
<td class="ltx_td ltx_align_left" id="S3.T4.68.68.68.5">
<span class="ltx_text" id="S3.T4.68.68.68.5.1" style="background-color:#FFBFBF;">73.2</span><sub class="ltx_sub" id="S3.T4.68.68.68.5.2"><span class="ltx_text ltx_font_italic" id="S3.T4.68.68.68.5.2.1">4.3</span></sub>
</td>
<td class="ltx_td ltx_align_left" id="S3.T4.69.69.69.6">
<span class="ltx_text" id="S3.T4.69.69.69.6.1" style="background-color:#FFBFBF;">74.1</span><sub class="ltx_sub" id="S3.T4.69.69.69.6.2"><span class="ltx_text ltx_font_italic" id="S3.T4.69.69.69.6.2.1">3.7</span></sub>
</td>
<td class="ltx_td ltx_align_left" id="S3.T4.70.70.70.7">
<span class="ltx_text" id="S3.T4.70.70.70.7.1" style="background-color:#FFBFBF;">86.3</span><sub class="ltx_sub" id="S3.T4.70.70.70.7.2"><span class="ltx_text ltx_font_italic" id="S3.T4.70.70.70.7.2.1">0.4</span></sub>
</td>
</tr>
<tr class="ltx_tr" id="S3.T4.98.98.108">
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T4.98.98.108.1">Yi-1.5</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T4.98.98.108.2">35.3</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T4.98.98.108.3">37.6</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T4.98.98.108.4">30.0</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T4.98.98.108.5">64.4</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T4.98.98.108.6">68.7</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T4.98.98.108.7">74.5</td>
</tr>
<tr class="ltx_tr" id="S3.T4.77.77.77">
<td class="ltx_td ltx_align_left" id="S3.T4.71.71.71.1">   <math alttext="it" class="ltx_Math" display="inline" id="S3.T4.71.71.71.1.m1.1"><semantics id="S3.T4.71.71.71.1.m1.1a"><mrow id="S3.T4.71.71.71.1.m1.1.1" xref="S3.T4.71.71.71.1.m1.1.1.cmml"><mi id="S3.T4.71.71.71.1.m1.1.1.2" xref="S3.T4.71.71.71.1.m1.1.1.2.cmml">i</mi><mo id="S3.T4.71.71.71.1.m1.1.1.1" xref="S3.T4.71.71.71.1.m1.1.1.1.cmml">⁢</mo><mi id="S3.T4.71.71.71.1.m1.1.1.3" xref="S3.T4.71.71.71.1.m1.1.1.3.cmml">t</mi></mrow><annotation-xml encoding="MathML-Content" id="S3.T4.71.71.71.1.m1.1b"><apply id="S3.T4.71.71.71.1.m1.1.1.cmml" xref="S3.T4.71.71.71.1.m1.1.1"><times id="S3.T4.71.71.71.1.m1.1.1.1.cmml" xref="S3.T4.71.71.71.1.m1.1.1.1"></times><ci id="S3.T4.71.71.71.1.m1.1.1.2.cmml" xref="S3.T4.71.71.71.1.m1.1.1.2">𝑖</ci><ci id="S3.T4.71.71.71.1.m1.1.1.3.cmml" xref="S3.T4.71.71.71.1.m1.1.1.3">𝑡</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T4.71.71.71.1.m1.1c">it</annotation><annotation encoding="application/x-llamapun" id="S3.T4.71.71.71.1.m1.1d">italic_i italic_t</annotation></semantics></math> + <span class="ltx_text ltx_font_smallcaps" id="S3.T4.71.71.71.1.1">T</span>
</td>
<td class="ltx_td ltx_align_left" id="S3.T4.72.72.72.2">
<span class="ltx_text" id="S3.T4.72.72.72.2.1" style="background-color:#FFBFBF;">45.1</span><sub class="ltx_sub" id="S3.T4.72.72.72.2.2"><span class="ltx_text ltx_font_italic" id="S3.T4.72.72.72.2.2.1">9.8</span></sub>
</td>
<td class="ltx_td ltx_align_left" id="S3.T4.73.73.73.3">
<span class="ltx_text" id="S3.T4.73.73.73.3.1" style="background-color:#FFBFBF;">47.8</span><sub class="ltx_sub" id="S3.T4.73.73.73.3.2"><span class="ltx_text ltx_font_italic" id="S3.T4.73.73.73.3.2.1">10.2</span></sub>
</td>
<td class="ltx_td ltx_align_left" id="S3.T4.74.74.74.4">
<span class="ltx_text" id="S3.T4.74.74.74.4.1" style="background-color:#FFBFBF;">47.9</span><sub class="ltx_sub" id="S3.T4.74.74.74.4.2"><span class="ltx_text ltx_font_italic" id="S3.T4.74.74.74.4.2.1">17.9</span></sub>
</td>
<td class="ltx_td ltx_align_left" id="S3.T4.75.75.75.5">
<span class="ltx_text" id="S3.T4.75.75.75.5.1" style="background-color:#FFBFBF;">69.5</span><sub class="ltx_sub" id="S3.T4.75.75.75.5.2"><span class="ltx_text ltx_font_italic" id="S3.T4.75.75.75.5.2.1">5.1</span></sub>
</td>
<td class="ltx_td ltx_align_left" id="S3.T4.76.76.76.6">
<span class="ltx_text" id="S3.T4.76.76.76.6.1" style="background-color:#FFBFBF;">74.2</span><sub class="ltx_sub" id="S3.T4.76.76.76.6.2"><span class="ltx_text ltx_font_italic" id="S3.T4.76.76.76.6.2.1">5.5</span></sub>
</td>
<td class="ltx_td ltx_align_left" id="S3.T4.77.77.77.7">
<span class="ltx_text" id="S3.T4.77.77.77.7.1" style="background-color:#CED5DA;">78.4</span><sub class="ltx_sub" id="S3.T4.77.77.77.7.2"><span class="ltx_text ltx_font_italic" id="S3.T4.77.77.77.7.2.1">3.9</span></sub>
</td>
</tr>
<tr class="ltx_tr" id="S3.T4.84.84.84">
<td class="ltx_td ltx_align_left" id="S3.T4.78.78.78.1">   <math alttext="it" class="ltx_Math" display="inline" id="S3.T4.78.78.78.1.m1.1"><semantics id="S3.T4.78.78.78.1.m1.1a"><mrow id="S3.T4.78.78.78.1.m1.1.1" xref="S3.T4.78.78.78.1.m1.1.1.cmml"><mi id="S3.T4.78.78.78.1.m1.1.1.2" xref="S3.T4.78.78.78.1.m1.1.1.2.cmml">i</mi><mo id="S3.T4.78.78.78.1.m1.1.1.1" xref="S3.T4.78.78.78.1.m1.1.1.1.cmml">⁢</mo><mi id="S3.T4.78.78.78.1.m1.1.1.3" xref="S3.T4.78.78.78.1.m1.1.1.3.cmml">t</mi></mrow><annotation-xml encoding="MathML-Content" id="S3.T4.78.78.78.1.m1.1b"><apply id="S3.T4.78.78.78.1.m1.1.1.cmml" xref="S3.T4.78.78.78.1.m1.1.1"><times id="S3.T4.78.78.78.1.m1.1.1.1.cmml" xref="S3.T4.78.78.78.1.m1.1.1.1"></times><ci id="S3.T4.78.78.78.1.m1.1.1.2.cmml" xref="S3.T4.78.78.78.1.m1.1.1.2">𝑖</ci><ci id="S3.T4.78.78.78.1.m1.1.1.3.cmml" xref="S3.T4.78.78.78.1.m1.1.1.3">𝑡</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T4.78.78.78.1.m1.1c">it</annotation><annotation encoding="application/x-llamapun" id="S3.T4.78.78.78.1.m1.1d">italic_i italic_t</annotation></semantics></math> + <span class="ltx_text ltx_font_smallcaps" id="S3.T4.78.78.78.1.1">RT</span>
</td>
<td class="ltx_td ltx_align_left" id="S3.T4.79.79.79.2">
<span class="ltx_text" id="S3.T4.79.79.79.2.1" style="background-color:#FFBFBF;">43.2</span><sub class="ltx_sub" id="S3.T4.79.79.79.2.2"><span class="ltx_text ltx_font_italic" id="S3.T4.79.79.79.2.2.1">7.9</span></sub>
</td>
<td class="ltx_td ltx_align_left" id="S3.T4.80.80.80.3">
<span class="ltx_text" id="S3.T4.80.80.80.3.1" style="background-color:#FFBFBF;">45.3</span><sub class="ltx_sub" id="S3.T4.80.80.80.3.2"><span class="ltx_text ltx_font_italic" id="S3.T4.80.80.80.3.2.1">7.7</span></sub>
</td>
<td class="ltx_td ltx_align_left" id="S3.T4.81.81.81.4">
<span class="ltx_text" id="S3.T4.81.81.81.4.1" style="background-color:#FFBFBF;">46.3</span><sub class="ltx_sub" id="S3.T4.81.81.81.4.2"><span class="ltx_text ltx_font_italic" id="S3.T4.81.81.81.4.2.1">16.3</span></sub>
</td>
<td class="ltx_td ltx_align_left" id="S3.T4.82.82.82.5">
<span class="ltx_text" id="S3.T4.82.82.82.5.1" style="background-color:#FFBFBF;">67.2</span><sub class="ltx_sub" id="S3.T4.82.82.82.5.2"><span class="ltx_text ltx_font_italic" id="S3.T4.82.82.82.5.2.1">2.8</span></sub>
</td>
<td class="ltx_td ltx_align_left" id="S3.T4.83.83.83.6">
<span class="ltx_text" id="S3.T4.83.83.83.6.1" style="background-color:#FFBFBF;">69.4</span><sub class="ltx_sub" id="S3.T4.83.83.83.6.2"><span class="ltx_text ltx_font_italic" id="S3.T4.83.83.83.6.2.1">0.7</span></sub>
</td>
<td class="ltx_td ltx_align_left" id="S3.T4.84.84.84.7">
<span class="ltx_text" id="S3.T4.84.84.84.7.1" style="background-color:#FFBFBF;">73.2</span><sub class="ltx_sub" id="S3.T4.84.84.84.7.2"><span class="ltx_text ltx_font_italic" id="S3.T4.84.84.84.7.2.1">1.3</span></sub>
</td>
</tr>
<tr class="ltx_tr" id="S3.T4.98.98.109">
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T4.98.98.109.1">SciTülu</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T4.98.98.109.2">15.6</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T4.98.98.109.3">25.3</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T4.98.98.109.4">23.3</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T4.98.98.109.5">57.8</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T4.98.98.109.6">58.3</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T4.98.98.109.7">88.8</td>
</tr>
<tr class="ltx_tr" id="S3.T4.91.91.91">
<td class="ltx_td ltx_align_left" id="S3.T4.85.85.85.1">   <math alttext="it" class="ltx_Math" display="inline" id="S3.T4.85.85.85.1.m1.1"><semantics id="S3.T4.85.85.85.1.m1.1a"><mrow id="S3.T4.85.85.85.1.m1.1.1" xref="S3.T4.85.85.85.1.m1.1.1.cmml"><mi id="S3.T4.85.85.85.1.m1.1.1.2" xref="S3.T4.85.85.85.1.m1.1.1.2.cmml">i</mi><mo id="S3.T4.85.85.85.1.m1.1.1.1" xref="S3.T4.85.85.85.1.m1.1.1.1.cmml">⁢</mo><mi id="S3.T4.85.85.85.1.m1.1.1.3" xref="S3.T4.85.85.85.1.m1.1.1.3.cmml">t</mi></mrow><annotation-xml encoding="MathML-Content" id="S3.T4.85.85.85.1.m1.1b"><apply id="S3.T4.85.85.85.1.m1.1.1.cmml" xref="S3.T4.85.85.85.1.m1.1.1"><times id="S3.T4.85.85.85.1.m1.1.1.1.cmml" xref="S3.T4.85.85.85.1.m1.1.1.1"></times><ci id="S3.T4.85.85.85.1.m1.1.1.2.cmml" xref="S3.T4.85.85.85.1.m1.1.1.2">𝑖</ci><ci id="S3.T4.85.85.85.1.m1.1.1.3.cmml" xref="S3.T4.85.85.85.1.m1.1.1.3">𝑡</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T4.85.85.85.1.m1.1c">it</annotation><annotation encoding="application/x-llamapun" id="S3.T4.85.85.85.1.m1.1d">italic_i italic_t</annotation></semantics></math> + <span class="ltx_text ltx_font_smallcaps" id="S3.T4.85.85.85.1.1">T</span>
</td>
<td class="ltx_td ltx_align_left" id="S3.T4.86.86.86.2">
<span class="ltx_text" id="S3.T4.86.86.86.2.1" style="background-color:#FFBFBF;">45.7</span><sub class="ltx_sub" id="S3.T4.86.86.86.2.2"><span class="ltx_text ltx_font_italic" id="S3.T4.86.86.86.2.2.1">30.1</span></sub>
</td>
<td class="ltx_td ltx_align_left" id="S3.T4.87.87.87.3">
<span class="ltx_text" id="S3.T4.87.87.87.3.1" style="background-color:#FFBFBF;">48.6</span><sub class="ltx_sub" id="S3.T4.87.87.87.3.2"><span class="ltx_text ltx_font_italic" id="S3.T4.87.87.87.3.2.1">23.3</span></sub>
</td>
<td class="ltx_td ltx_align_left" id="S3.T4.88.88.88.4">
<span class="ltx_text" id="S3.T4.88.88.88.4.1" style="background-color:#FFBFBF;">54.3</span><sub class="ltx_sub" id="S3.T4.88.88.88.4.2"><span class="ltx_text ltx_font_italic" id="S3.T4.88.88.88.4.2.1">31.0</span></sub>
</td>
<td class="ltx_td ltx_align_left" id="S3.T4.89.89.89.5">
<span class="ltx_text" id="S3.T4.89.89.89.5.1" style="background-color:#FFBFBF;">66.3</span><sub class="ltx_sub" id="S3.T4.89.89.89.5.2"><span class="ltx_text ltx_font_italic" id="S3.T4.89.89.89.5.2.1">8.5</span></sub>
</td>
<td class="ltx_td ltx_align_left" id="S3.T4.90.90.90.6">
<span class="ltx_text" id="S3.T4.90.90.90.6.1" style="background-color:#FFBFBF;">68.4</span><sub class="ltx_sub" id="S3.T4.90.90.90.6.2"><span class="ltx_text ltx_font_italic" id="S3.T4.90.90.90.6.2.1">10.1</span></sub>
</td>
<td class="ltx_td ltx_align_left" id="S3.T4.91.91.91.7">
<span class="ltx_text" id="S3.T4.91.91.91.7.1" style="background-color:#CED5DA;">91.2</span><sub class="ltx_sub" id="S3.T4.91.91.91.7.2"><span class="ltx_text ltx_font_italic" id="S3.T4.91.91.91.7.2.1">2.4</span></sub>
</td>
</tr>
<tr class="ltx_tr" id="S3.T4.98.98.98">
<td class="ltx_td ltx_align_left ltx_border_b" id="S3.T4.92.92.92.1">   <math alttext="it" class="ltx_Math" display="inline" id="S3.T4.92.92.92.1.m1.1"><semantics id="S3.T4.92.92.92.1.m1.1a"><mrow id="S3.T4.92.92.92.1.m1.1.1" xref="S3.T4.92.92.92.1.m1.1.1.cmml"><mi id="S3.T4.92.92.92.1.m1.1.1.2" xref="S3.T4.92.92.92.1.m1.1.1.2.cmml">i</mi><mo id="S3.T4.92.92.92.1.m1.1.1.1" xref="S3.T4.92.92.92.1.m1.1.1.1.cmml">⁢</mo><mi id="S3.T4.92.92.92.1.m1.1.1.3" xref="S3.T4.92.92.92.1.m1.1.1.3.cmml">t</mi></mrow><annotation-xml encoding="MathML-Content" id="S3.T4.92.92.92.1.m1.1b"><apply id="S3.T4.92.92.92.1.m1.1.1.cmml" xref="S3.T4.92.92.92.1.m1.1.1"><times id="S3.T4.92.92.92.1.m1.1.1.1.cmml" xref="S3.T4.92.92.92.1.m1.1.1.1"></times><ci id="S3.T4.92.92.92.1.m1.1.1.2.cmml" xref="S3.T4.92.92.92.1.m1.1.1.2">𝑖</ci><ci id="S3.T4.92.92.92.1.m1.1.1.3.cmml" xref="S3.T4.92.92.92.1.m1.1.1.3">𝑡</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T4.92.92.92.1.m1.1c">it</annotation><annotation encoding="application/x-llamapun" id="S3.T4.92.92.92.1.m1.1d">italic_i italic_t</annotation></semantics></math> + <span class="ltx_text ltx_font_smallcaps" id="S3.T4.92.92.92.1.1">RT</span>
</td>
<td class="ltx_td ltx_align_left ltx_border_b" id="S3.T4.93.93.93.2">
<span class="ltx_text" id="S3.T4.93.93.93.2.1" style="background-color:#FFBFBF;">41.4</span><sub class="ltx_sub" id="S3.T4.93.93.93.2.2"><span class="ltx_text ltx_font_italic" id="S3.T4.93.93.93.2.2.1">25.8</span></sub>
</td>
<td class="ltx_td ltx_align_left ltx_border_b" id="S3.T4.94.94.94.3">
<span class="ltx_text" id="S3.T4.94.94.94.3.1" style="background-color:#FFBFBF;">42.6</span><sub class="ltx_sub" id="S3.T4.94.94.94.3.2"><span class="ltx_text ltx_font_italic" id="S3.T4.94.94.94.3.2.1">17.3</span></sub>
</td>
<td class="ltx_td ltx_align_left ltx_border_b" id="S3.T4.95.95.95.4">
<span class="ltx_text" id="S3.T4.95.95.95.4.1" style="background-color:#FFBFBF;">51.4</span><sub class="ltx_sub" id="S3.T4.95.95.95.4.2"><span class="ltx_text ltx_font_italic" id="S3.T4.95.95.95.4.2.1">28.1</span></sub>
</td>
<td class="ltx_td ltx_align_left ltx_border_b" id="S3.T4.96.96.96.5">
<span class="ltx_text" id="S3.T4.96.96.96.5.1" style="background-color:#FFBFBF;">62.4</span><sub class="ltx_sub" id="S3.T4.96.96.96.5.2"><span class="ltx_text ltx_font_italic" id="S3.T4.96.96.96.5.2.1">4.6</span></sub>
</td>
<td class="ltx_td ltx_align_left ltx_border_b" id="S3.T4.97.97.97.6">
<span class="ltx_text" id="S3.T4.97.97.97.6.1" style="background-color:#FFBFBF;">65.6</span><sub class="ltx_sub" id="S3.T4.97.97.97.6.2"><span class="ltx_text ltx_font_italic" id="S3.T4.97.97.97.6.2.1">7.3</span></sub>
</td>
<td class="ltx_td ltx_align_left ltx_border_b" id="S3.T4.98.98.98.7">
<span class="ltx_text" id="S3.T4.98.98.98.7.1" style="background-color:#FFBFBF;">87.2</span><sub class="ltx_sub" id="S3.T4.98.98.98.7.2"><span class="ltx_text ltx_font_italic" id="S3.T4.98.98.98.7.2.1">1.6</span></sub>
</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the performance of various Large Language Models (LLMs) on a fine-grained text classification task after undergoing instruction tuning.  The models are evaluated using two metrics: string-matching accuracy (St.(Acc)) and a GPT-based semantic accuracy. Results are shown for two input scenarios: using only the target segment of text (T) or using a combination of the review and target segment (RT). For each LLM and input type, the table shows the performance before instruction tuning (from Tables 2 and 3 in the paper) and after instruction tuning.  The differences in performance (increments or decrements) compared to the pre-instruction-tuned results are indicated via subscripts.
> <details>
> <summary>read the caption</summary>
> Table 4: Performance of LLMs after instruction tuning (i⁢t𝑖𝑡ititalic_i italic_t) for fine-grained classification using target segment (T) and the combination of review and target segment (RT) in terms of string-matching accuracy (St. (Acc)). The first row of each model states the best results obtained previously as detailed in Tables 2 and 3 respectively. Subscripts represent increment or decrement compared to the non-instruction tuned versions.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S3.T5.1.1">
<tr class="ltx_tr" id="S3.T5.1.1.2">
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T5.1.1.2.1" rowspan="2"><span class="ltx_text" id="S3.T5.1.1.2.1.1">Type</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T5.1.1.2.2">Constr.</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T5.1.1.2.3">Justi.</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T5.1.1.2.4">Adh.</td>
</tr>
<tr class="ltx_tr" id="S3.T5.1.1.3">
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T5.1.1.3.1">W/T/L</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T5.1.1.3.2">W/T/L</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T5.1.1.3.3">W/T/L</td>
</tr>
<tr class="ltx_tr" id="S3.T5.1.1.4">
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T5.1.1.4.1">Orig. vs <em class="ltx_emph ltx_font_italic" id="S3.T5.1.1.4.1.1">lazy</em>
</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T5.1.1.4.2">85/5/10</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T5.1.1.4.3">85/10/5</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T5.1.1.4.4">90/5/5</td>
</tr>
<tr class="ltx_tr" id="S3.T5.1.1.1">
<td class="ltx_td ltx_align_left ltx_border_b" id="S3.T5.1.1.1.1">Orig <math alttext="w." class="ltx_Math" display="inline" id="S3.T5.1.1.1.1.m1.1"><semantics id="S3.T5.1.1.1.1.m1.1a"><mrow id="S3.T5.1.1.1.1.m1.1.2.2"><mi id="S3.T5.1.1.1.1.m1.1.1" xref="S3.T5.1.1.1.1.m1.1.1.cmml">w</mi><mo id="S3.T5.1.1.1.1.m1.1.2.2.1" lspace="0em">.</mo></mrow><annotation-xml encoding="MathML-Content" id="S3.T5.1.1.1.1.m1.1b"><ci id="S3.T5.1.1.1.1.m1.1.1.cmml" xref="S3.T5.1.1.1.1.m1.1.1">𝑤</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T5.1.1.1.1.m1.1c">w.</annotation><annotation encoding="application/x-llamapun" id="S3.T5.1.1.1.1.m1.1d">italic_w .</annotation></semantics></math> gdl vs <em class="ltx_emph ltx_font_italic" id="S3.T5.1.1.1.1.1">lazy</em>
</td>
<td class="ltx_td ltx_align_left ltx_border_b" id="S3.T5.1.1.1.2">70/5/25</td>
<td class="ltx_td ltx_align_left ltx_border_b" id="S3.T5.1.1.1.3">70/5/25</td>
<td class="ltx_td ltx_align_left ltx_border_b" id="S3.T5.1.1.1.4">75/5/20</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of a pairwise comparison of three sets of peer reviews: original reviews, reviews rewritten using only the standard ARR guidelines, and reviews rewritten using the ARR guidelines and lazy thinking annotations.  The comparison is based on three metrics: constructiveness (how actionable the feedback is), justification (how clear the reasoning is), and adherence (how well the reviews follow the guidelines). The table shows the number of wins, ties, and losses for each pairwise comparison, indicating the relative effectiveness of including lazy thinking annotations in the rewriting process.
> <details>
> <summary>read the caption</summary>
> Table 5: Pair-wise comparison of rewrites based on Win (W), Tie (T), and Loss (L) rates across metrics. The first row compares lazy thinking rewrites (lazy) with original reviews (Orig), while the second compares lazy rewrites with guideline-based rewrites (Orig w.𝑤w.italic_w . gdl).
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="A1.T6.1.1">
<tr class="ltx_tr" id="A1.T6.1.1.1">
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T6.1.1.1.1"><span class="ltx_text ltx_font_bold" id="A1.T6.1.1.1.1.1">Model</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T6.1.1.1.2"><span class="ltx_text ltx_font_bold" id="A1.T6.1.1.1.2.1">Size</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T6.1.1.1.3"><span class="ltx_text ltx_font_bold" id="A1.T6.1.1.1.3.1">Link</span></td>
</tr>
<tr class="ltx_tr" id="A1.T6.1.1.2">
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T6.1.1.2.1">LLaMa 2 <cite class="ltx_cite ltx_citemacro_cite">Touvron et al. (<a class="ltx_ref" href="https://arxiv.org/html/2504.11042v1#bib.bib46" title="">2023</a>)</cite>
</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T6.1.1.2.2">7B</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T6.1.1.2.3"><a class="ltx_ref ltx_url ltx_font_typewriter" href="meta-llama/Llama-2-7b-chat-hf" title="">meta-llama/Llama-2-7b-chat-hf</a></td>
</tr>
<tr class="ltx_tr" id="A1.T6.1.1.3">
<td class="ltx_td ltx_align_left" id="A1.T6.1.1.3.1">LLaMa 2 <cite class="ltx_cite ltx_citemacro_cite">Touvron et al. (<a class="ltx_ref" href="https://arxiv.org/html/2504.11042v1#bib.bib46" title="">2023</a>)</cite>
</td>
<td class="ltx_td ltx_align_left" id="A1.T6.1.1.3.2">13B</td>
<td class="ltx_td ltx_align_left" id="A1.T6.1.1.3.3"><a class="ltx_ref ltx_url ltx_font_typewriter" href="meta-llama/Llama-2-13b-chat" title="">meta-llama/Llama-2-13b-chat</a></td>
</tr>
<tr class="ltx_tr" id="A1.T6.1.1.4">
<td class="ltx_td ltx_align_left" id="A1.T6.1.1.4.1">Gemma 1.1 <cite class="ltx_cite ltx_citemacro_cite">Team et al. (<a class="ltx_ref" href="https://arxiv.org/html/2504.11042v1#bib.bib45" title="">2024</a>)</cite>
</td>
<td class="ltx_td ltx_align_left" id="A1.T6.1.1.4.2">7B</td>
<td class="ltx_td ltx_align_left" id="A1.T6.1.1.4.3"><a class="ltx_ref ltx_url ltx_font_typewriter" href="google/gemma-1.1-7b-it" title="">google/gemma-1.1-7b-it</a></td>
</tr>
<tr class="ltx_tr" id="A1.T6.1.1.5">
<td class="ltx_td ltx_align_left" id="A1.T6.1.1.5.1">Mistral v0.1 <cite class="ltx_cite ltx_citemacro_cite">Jiang et al. (<a class="ltx_ref" href="https://arxiv.org/html/2504.11042v1#bib.bib21" title="">2023</a>)</cite>
</td>
<td class="ltx_td ltx_align_left" id="A1.T6.1.1.5.2">7B</td>
<td class="ltx_td ltx_align_left" id="A1.T6.1.1.5.3"><a class="ltx_ref ltx_url ltx_font_typewriter" href="mistralai/Mistral-7B-Instruct-v0.1" title="">mistralai/Mistral-7B-Instruct-v0.1</a></td>
</tr>
<tr class="ltx_tr" id="A1.T6.1.1.6">
<td class="ltx_td ltx_align_left" id="A1.T6.1.1.6.1">Qwen-1.5 <cite class="ltx_cite ltx_citemacro_cite">Bai et al. (<a class="ltx_ref" href="https://arxiv.org/html/2504.11042v1#bib.bib3" title="">2023</a>)</cite>
</td>
<td class="ltx_td ltx_align_left" id="A1.T6.1.1.6.2">7B</td>
<td class="ltx_td ltx_align_left" id="A1.T6.1.1.6.3"><a class="ltx_ref ltx_url ltx_font_typewriter" href="Qwen/Qwen-7B-Chat" title="">Qwen/Qwen-7B-Chat</a></td>
</tr>
<tr class="ltx_tr" id="A1.T6.1.1.7">
<td class="ltx_td ltx_align_left" id="A1.T6.1.1.7.1">Yi-1.5 <cite class="ltx_cite ltx_citemacro_cite">AI et al. (<a class="ltx_ref" href="https://arxiv.org/html/2504.11042v1#bib.bib1" title="">2024</a>)</cite>
</td>
<td class="ltx_td ltx_align_left" id="A1.T6.1.1.7.2">6B</td>
<td class="ltx_td ltx_align_left" id="A1.T6.1.1.7.3"><a class="ltx_ref ltx_url ltx_font_typewriter" href="01-ai/Yi-6B-Chat" title="">01-ai/Yi-6B-Chat</a></td>
</tr>
<tr class="ltx_tr" id="A1.T6.1.1.8">
<td class="ltx_td ltx_align_left ltx_border_b" id="A1.T6.1.1.8.1">SciTülu <cite class="ltx_cite ltx_citemacro_cite">Wadden et al. (<a class="ltx_ref" href="https://arxiv.org/html/2504.11042v1#bib.bib48" title="">2024</a>)</cite>
</td>
<td class="ltx_td ltx_align_left ltx_border_b" id="A1.T6.1.1.8.2">7B</td>
<td class="ltx_td ltx_align_left ltx_border_b" id="A1.T6.1.1.8.3"><a class="ltx_ref ltx_url ltx_font_typewriter" href="allenai/scitulu-7b" title="">allenai/scitulu-7b</a></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table lists the Large Language Models (LLMs) used in the paper's experiments.  For each model, it provides the model size (in billions of parameters) and a hyperlink to its location on Hugging Face.  This information is crucial for reproducibility, allowing readers to easily access and utilize the same models in their own research.
> <details>
> <summary>read the caption</summary>
> Table 6: Overview of models used in our work along with their sizes and links.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="A1.T7.1">
<tr class="ltx_tr" id="A1.T7.1.1">
<td class="ltx_td ltx_align_justify ltx_border_tt" id="A1.T7.1.1.1">
<span class="ltx_inline-block ltx_align_top" id="A1.T7.1.1.1.1">
<span class="ltx_p" id="A1.T7.1.1.1.1.1"><span class="ltx_text ltx_font_bold" id="A1.T7.1.1.1.1.1.1">Heuristics</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_tt" id="A1.T7.1.1.2">
<span class="ltx_inline-block ltx_align_top" id="A1.T7.1.1.2.1">
<span class="ltx_p" id="A1.T7.1.1.2.1.1"><span class="ltx_text ltx_font_bold" id="A1.T7.1.1.2.1.1.1">Description</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T7.1.2">
<td class="ltx_td ltx_align_justify ltx_border_t" id="A1.T7.1.2.1">
<span class="ltx_inline-block ltx_align_top" id="A1.T7.1.2.1.1">
<span class="ltx_p" id="A1.T7.1.2.1.1.1"><em class="ltx_emph ltx_font_italic" id="A1.T7.1.2.1.1.1.1">The results are not surprising</em></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="A1.T7.1.2.2">
<span class="ltx_inline-block ltx_align_top" id="A1.T7.1.2.2.1">
<span class="ltx_p" id="A1.T7.1.2.2.1.1">Many findings seem obvious in retrospect, but this does not mean that the community is already aware of them and can use them as building blocks for future work.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T7.1.3">
<td class="ltx_td ltx_align_justify ltx_border_t" id="A1.T7.1.3.1">
<span class="ltx_inline-block ltx_align_top" id="A1.T7.1.3.1.1">
<span class="ltx_p" id="A1.T7.1.3.1.1.1"><em class="ltx_emph ltx_font_italic" id="A1.T7.1.3.1.1.1.1">The results contradict what I would expect</em></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="A1.T7.1.3.2">
<span class="ltx_inline-block ltx_align_top" id="A1.T7.1.3.2.1">
<span class="ltx_p" id="A1.T7.1.3.2.1.1">You may be a victim of confirmation bias, and be unwilling to accept data contradicting your prior beliefs.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T7.1.4">
<td class="ltx_td ltx_align_justify ltx_border_t" id="A1.T7.1.4.1">
<span class="ltx_inline-block ltx_align_top" id="A1.T7.1.4.1.1">
<span class="ltx_p" id="A1.T7.1.4.1.1.1"><em class="ltx_emph ltx_font_italic" id="A1.T7.1.4.1.1.1.1">The results are not novel</em></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="A1.T7.1.4.2">
<span class="ltx_inline-block ltx_align_top" id="A1.T7.1.4.2.1">
<span class="ltx_p" id="A1.T7.1.4.2.1.1">Such broad claims need to be backed up with references.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T7.1.5">
<td class="ltx_td ltx_align_justify ltx_border_t" id="A1.T7.1.5.1">
<span class="ltx_inline-block ltx_align_top" id="A1.T7.1.5.1.1">
<span class="ltx_p" id="A1.T7.1.5.1.1.1"><em class="ltx_emph ltx_font_italic" id="A1.T7.1.5.1.1.1.1">This has no precedent in existing literature</em></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="A1.T7.1.5.2">
<span class="ltx_inline-block ltx_align_top" id="A1.T7.1.5.2.1">
<span class="ltx_p" id="A1.T7.1.5.2.1.1">Believe it or not: papers that are more novel tend to be harder to publish. Reviewers may be unnecessarily conservative.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T7.1.6">
<td class="ltx_td ltx_align_justify ltx_border_t" id="A1.T7.1.6.1">
<span class="ltx_inline-block ltx_align_top" id="A1.T7.1.6.1.1">
<span class="ltx_p" id="A1.T7.1.6.1.1.1"><em class="ltx_emph ltx_font_italic" id="A1.T7.1.6.1.1.1.1">The results do not surpass the latest SOTA</em></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="A1.T7.1.6.2">
<span class="ltx_inline-block ltx_align_top" id="A1.T7.1.6.2.1">
<span class="ltx_p" id="A1.T7.1.6.2.1.1">SOTA results are neither necessary nor sufficient for a scientific contribution. An engineering paper could also offer improvements on other dimensions (efficiency, generalizability, interpretability, fairness, etc.)</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T7.1.7">
<td class="ltx_td ltx_align_justify ltx_border_t" id="A1.T7.1.7.1">
<span class="ltx_inline-block ltx_align_top" id="A1.T7.1.7.1.1">
<span class="ltx_p" id="A1.T7.1.7.1.1.1"><em class="ltx_emph ltx_font_italic" id="A1.T7.1.7.1.1.1.1">The results are negative</em></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="A1.T7.1.7.2">
<span class="ltx_inline-block ltx_align_top" id="A1.T7.1.7.2.1">
<span class="ltx_p" id="A1.T7.1.7.2.1.1">The bias towards publishing only positive results is a known problem in many fields, and contributes to hype and overclaiming. If something systematically does not work where it could be expected to, the community does need to know about it.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T7.1.8">
<td class="ltx_td ltx_align_justify ltx_border_t" id="A1.T7.1.8.1">
<span class="ltx_inline-block ltx_align_top" id="A1.T7.1.8.1.1">
<span class="ltx_p" id="A1.T7.1.8.1.1.1"><em class="ltx_emph ltx_font_italic" id="A1.T7.1.8.1.1.1.1">This method is too simple</em></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="A1.T7.1.8.2">
<span class="ltx_inline-block ltx_align_top" id="A1.T7.1.8.2.1">
<span class="ltx_p" id="A1.T7.1.8.2.1.1">The goal is to solve the problem, not to solve it in a complex way. Simpler solutions are in fact preferable, as they are less brittle and easier to deploy in real-world settings.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T7.1.9">
<td class="ltx_td ltx_align_justify ltx_border_t" id="A1.T7.1.9.1">
<span class="ltx_inline-block ltx_align_top" id="A1.T7.1.9.1.1">
<span class="ltx_p" id="A1.T7.1.9.1.1.1"><em class="ltx_emph ltx_font_italic" id="A1.T7.1.9.1.1.1.1">The paper doesn’t use [my preferred methodology], e.g., deep learning</em></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="A1.T7.1.9.2">
<span class="ltx_inline-block ltx_align_top" id="A1.T7.1.9.2.1">
<span class="ltx_p" id="A1.T7.1.9.2.1.1">NLP is an interdisciplinary field, relying on many kinds of contributions: models, resource, survey, data/linguistic/social analysis, position, and theory.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T7.1.10">
<td class="ltx_td ltx_align_justify ltx_border_t" id="A1.T7.1.10.1">
<span class="ltx_inline-block ltx_align_top" id="A1.T7.1.10.1.1">
<span class="ltx_p" id="A1.T7.1.10.1.1.1"><em class="ltx_emph ltx_font_italic" id="A1.T7.1.10.1.1.1.1">The topic is too niche</em></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="A1.T7.1.10.2">
<span class="ltx_inline-block ltx_align_top" id="A1.T7.1.10.2.1">
<span class="ltx_p" id="A1.T7.1.10.2.1.1">A main track paper may well make a big contribution to a narrow subfield.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T7.1.11">
<td class="ltx_td ltx_align_justify ltx_border_t" id="A1.T7.1.11.1">
<span class="ltx_inline-block ltx_align_top" id="A1.T7.1.11.1.1">
<span class="ltx_p" id="A1.T7.1.11.1.1.1"><em class="ltx_emph ltx_font_italic" id="A1.T7.1.11.1.1.1.1">The approach is tested only on [not English], so unclear if it will generalize to other languages</em></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="A1.T7.1.11.2">
<span class="ltx_inline-block ltx_align_top" id="A1.T7.1.11.2.1">
<span class="ltx_p" id="A1.T7.1.11.2.1.1">The same is true of NLP research that tests only on English. Monolingual work on any language is important both practically (methods and resources for that language) and theoretically (potentially contributing to deeper understanding of language in general).</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T7.1.12">
<td class="ltx_td ltx_align_justify ltx_border_t" id="A1.T7.1.12.1">
<span class="ltx_inline-block ltx_align_top" id="A1.T7.1.12.1.1">
<span class="ltx_p" id="A1.T7.1.12.1.1.1"><em class="ltx_emph ltx_font_italic" id="A1.T7.1.12.1.1.1.1">The paper has language errors</em></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="A1.T7.1.12.2">
<span class="ltx_inline-block ltx_align_top" id="A1.T7.1.12.2.1">
<span class="ltx_p" id="A1.T7.1.12.2.1.1">As long as the writing is clear enough, better scientific content should be more valuable than better journalistic skills.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T7.1.13">
<td class="ltx_td ltx_align_justify ltx_border_t" id="A1.T7.1.13.1">
<span class="ltx_inline-block ltx_align_top" id="A1.T7.1.13.1.1">
<span class="ltx_p" id="A1.T7.1.13.1.1.1"><em class="ltx_emph ltx_font_italic" id="A1.T7.1.13.1.1.1.1">The paper is missing the comparison to the [latest X]</em></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="A1.T7.1.13.2">
<span class="ltx_inline-block ltx_align_top" id="A1.T7.1.13.2.1">
<span class="ltx_p" id="A1.T7.1.13.2.1.1">Per ACL policy, the authors are not obliged to draw comparisons with contemporaneous work, i.e., work published within three months before the submission (or three months before a re-submission).</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T7.1.14">
<td class="ltx_td ltx_align_justify ltx_border_t" id="A1.T7.1.14.1">
<span class="ltx_inline-block ltx_align_top" id="A1.T7.1.14.1.1">
<span class="ltx_p" id="A1.T7.1.14.1.1.1"><em class="ltx_emph ltx_font_italic" id="A1.T7.1.14.1.1.1.1">The authors could also do [extra experiment X]</em></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="A1.T7.1.14.2">
<span class="ltx_inline-block ltx_align_top" id="A1.T7.1.14.2.1">
<span class="ltx_p" id="A1.T7.1.14.2.1.1">It is always possible to come up with extra experiments and follow-up work. This is fair if the experiments that are already presented are insufficient for the claim that the authors are making. But any other extra experiments are in the “nice-to-have” category, and belong in the “suggestions” section rather than “weaknesses.”</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T7.1.15">
<td class="ltx_td ltx_align_justify ltx_border_b ltx_border_t" id="A1.T7.1.15.1">
<span class="ltx_inline-block ltx_align_top" id="A1.T7.1.15.1.1">
<span class="ltx_p" id="A1.T7.1.15.1.1.1"><em class="ltx_emph ltx_font_italic" id="A1.T7.1.15.1.1.1.1">The authors should have done [X] instead</em></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_b ltx_border_t" id="A1.T7.1.15.2">
<span class="ltx_inline-block ltx_align_top" id="A1.T7.1.15.2.1">
<span class="ltx_p" id="A1.T7.1.15.2.1.1">A.k.a. “I would have written a different paper.” There are often several valid approaches to a problem. This criticism applies only if the authors’ choices prevent them from answering their research question, their framing is misleading, or the question is not worth asking. If not, then [X] is a comment or a suggestion, but not a “weakness.”</span>
</span>
</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table lists the 14 heuristics considered as 'lazy thinking' in the ACL Rolling Review (ARR) 2022 guidelines.  For each heuristic, a description is given, explaining why it is considered lazy thinking and providing examples of review segments demonstrating such biases.  The table aims to provide a comprehensive overview of the types of shortcuts or superficial judgments that can undermine the quality of peer review in NLP.
> <details>
> <summary>read the caption</summary>
> Table 7: Full ARR 2022 guidelines on lazy thinking sourced from Rogers and Augenstein (2021).
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="A1.T8.1">
<tr class="ltx_tr" id="A1.T8.1.1">
<td class="ltx_td ltx_align_justify ltx_border_tt" id="A1.T8.1.1.1">
<span class="ltx_inline-block ltx_align_top" id="A1.T8.1.1.1.1">
<span class="ltx_p" id="A1.T8.1.1.1.1.1"><span class="ltx_text ltx_font_bold" id="A1.T8.1.1.1.1.1.1">Heuristics</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_tt" id="A1.T8.1.1.2">
<span class="ltx_inline-block ltx_align_top" id="A1.T8.1.1.2.1">
<span class="ltx_p" id="A1.T8.1.1.2.1.1"><span class="ltx_text ltx_font_bold" id="A1.T8.1.1.2.1.1.1">Description</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T8.1.2">
<td class="ltx_td ltx_align_justify ltx_border_t" id="A1.T8.1.2.1">
<span class="ltx_inline-block ltx_align_top" id="A1.T8.1.2.1.1">
<span class="ltx_p" id="A1.T8.1.2.1.1.1"><em class="ltx_emph ltx_font_italic" id="A1.T8.1.2.1.1.1.1" style="background-color:#FFBFBF;">This has no precedent in existing literature</em></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="A1.T8.1.2.2">
<span class="ltx_inline-block ltx_align_top" id="A1.T8.1.2.2.1">
<span class="ltx_p" id="A1.T8.1.2.2.1.1">The paper’s topic is completely new, such that there’s no prior art or all the prior art has been done in another field. We are interested in papers that tread new ground. Believe it or not: papers that are more novel tend to be harder to publish. Reviewers may be unnecessarily conservative.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T8.1.3">
<td class="ltx_td ltx_align_justify ltx_border_t" id="A1.T8.1.3.1">
<span class="ltx_inline-block ltx_align_top" id="A1.T8.1.3.1.1">
<span class="ltx_p" id="A1.T8.1.3.1.1.1"><em class="ltx_emph ltx_font_italic" id="A1.T8.1.3.1.1.1.1" style="background-color:#FFBFBF;">This method is too simple</em></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="A1.T8.1.3.2">
<span class="ltx_inline-block ltx_align_top" id="A1.T8.1.3.2.1">
<span class="ltx_p" id="A1.T8.1.3.2.1.1">The paper’s method is too simple. Our goal is not to design the most complex method. Again, think what the paper’s contributions and findings are. Often the papers with the simplest methods are the most cited. If a simple method outperforms more complex methods from prior work, then this is often an important finding. The goal is to solve the problem, not to solve it in a complex way. Simpler solutions are in fact preferable, as they are less brittle and easier to deploy in real-world settings.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T8.1.4">
<td class="ltx_td ltx_align_justify ltx_border_t" id="A1.T8.1.4.1">
<span class="ltx_inline-block ltx_align_top" id="A1.T8.1.4.1.1">
<span class="ltx_p" id="A1.T8.1.4.1.1.1"><em class="ltx_emph ltx_font_italic" id="A1.T8.1.4.1.1.1.1" style="background-color:#FFBFBF;">The paper doesn’t use [my preferred methodology], e.g., deep learning</em></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="A1.T8.1.4.2">
<span class="ltx_inline-block ltx_align_top" id="A1.T8.1.4.2.1">
<span class="ltx_p" id="A1.T8.1.4.2.1.1">The paper does not use a particular method (e.g., deep learning). No one particular method is a requirement for good work. Please justify why that method is needed. Think about what the paper’s contributions are, and bear in mind that having a diversity of methods used is not a bad thing. NLP is an interdisciplinary field, relying on many kinds of contributions: models, resource, survey, data/linguistic/social analysis, position, and theory.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T8.1.5">
<td class="ltx_td ltx_align_justify ltx_border_t" id="A1.T8.1.5.1">
<span class="ltx_inline-block ltx_align_top" id="A1.T8.1.5.1.1">
<span class="ltx_p" id="A1.T8.1.5.1.1.1"><em class="ltx_emph ltx_font_italic" id="A1.T8.1.5.1.1.1.1" style="background-color:#E6F2FF;">The topic is too niche / Narrow Topics</em></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="A1.T8.1.5.2">
<span class="ltx_inline-block ltx_align_top" id="A1.T8.1.5.2.1">
<span class="ltx_p" id="A1.T8.1.5.2.1.1">The paper’s topic is narrow or outdated. Please be open minded. We do not want the whole community to chase a trendy topic. Look at the paper’s contributions and consider what impact it may have on our community. It is easier to publish on trendy,
‘scientifically sexy’ topics (Smith, 2010). In the
last two years, there has been little talk of anything other than large pretrained Transformers,
with BERT alone becoming the target of over 150
studies proposing analysis and various modifications (Rogers et al., 2020). The ‘hot trend’ forms the prototype for the kind of paper that should be
recommended for acceptance. Niche topics such as
historical text normalization are downvoted (unless,
of course, BERT could somehow be used for that).</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T8.1.6">
<td class="ltx_td ltx_align_justify ltx_border_t" id="A1.T8.1.6.1">
<span class="ltx_inline-block ltx_align_top" id="A1.T8.1.6.1.1">
<span class="ltx_p" id="A1.T8.1.6.1.1.1"><em class="ltx_emph ltx_font_italic" id="A1.T8.1.6.1.1.1.1" style="background-color:#FFBFBF;">The approach is tested only on [not English], so unclear if it will generalize to other languages</em></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="A1.T8.1.6.2">
<span class="ltx_inline-block ltx_align_top" id="A1.T8.1.6.2.1">
<span class="ltx_p" id="A1.T8.1.6.2.1.1">The paper’s work is on a language other than English. We care about NLP for any language. The same is true of NLP research that tests only on English. Monolingual work on any language is important both practically (methods and resources for that language) and theoretically (potentially contributing to deeper understanding of language in general).</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T8.1.7">
<td class="ltx_td ltx_align_justify ltx_border_t" id="A1.T8.1.7.1">
<span class="ltx_inline-block ltx_align_top" id="A1.T8.1.7.1.1">
<span class="ltx_p" id="A1.T8.1.7.1.1.1"><em class="ltx_emph ltx_font_italic" id="A1.T8.1.7.1.1.1.1" style="background-color:#E6F2FF;">The paper has language errors / Writing Style</em></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="A1.T8.1.7.2">
<span class="ltx_inline-block ltx_align_top" id="A1.T8.1.7.2.1">
<span class="ltx_p" id="A1.T8.1.7.2.1.1">As long as the writing is clear enough, better scientific content should be more valuable than better journalistic skills.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T8.1.8">
<td class="ltx_td ltx_align_justify ltx_border_t" id="A1.T8.1.8.1">
<span class="ltx_inline-block ltx_align_top" id="A1.T8.1.8.1.1">
<span class="ltx_p" id="A1.T8.1.8.1.1.1"><em class="ltx_emph ltx_font_italic" id="A1.T8.1.8.1.1.1.1" style="background-color:#CED5DA;">Non-mainstream approaches</em></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="A1.T8.1.8.2">
<span class="ltx_inline-block ltx_align_top" id="A1.T8.1.8.2.1">
<span class="ltx_p" id="A1.T8.1.8.2.1.1">Since a ‘mainstream’ *ACL paper currently uses DL-based methods, anything else might look like it does not really
belong in the main track - even though ACL stands for ‘Association for Computational Linguistics’.
That puts interdisciplinary efforts at a disadvantage, and continues the trend for intellectual segregation
of NLP (Reiter, 2007). E.g., theoretical papers
and linguistic resources should not be a priori at a disadvantage just because they do not contain DL
experiments.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T8.1.9">
<td class="ltx_td ltx_align_justify ltx_border_b ltx_border_t" id="A1.T8.1.9.1">
<span class="ltx_inline-block ltx_align_top" id="A1.T8.1.9.1.1">
<span class="ltx_p" id="A1.T8.1.9.1.1.1"><em class="ltx_emph ltx_font_italic" id="A1.T8.1.9.1.1.1.1" style="background-color:#CED5DA;">Resource paper</em></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_b ltx_border_t" id="A1.T8.1.9.2">
<span class="ltx_inline-block ltx_align_top" id="A1.T8.1.9.2.1">
<span class="ltx_p" id="A1.T8.1.9.2.1.1">The paper is a resource paper. In a field that relies on supervised machine learning as much as NLP, development of datasets is as important as modeling work.</span>
</span>
</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the categories of 'lazy thinking' used to annotate sentences in the LAZYREVIEW dataset.  It shows the 14 heuristics identified by Rogers and Augenstein (2021) in their work on lazy thinking in NLP peer reviews, but with some extended names and descriptions added for clarity.  The table provides a detailed description of each heuristic, helping annotators to better understand and consistently apply these categories.  The updates shown reflect refinements made in Round 2 of the annotation process.
> <details>
> <summary>read the caption</summary>
> Table 8: Lazy thinking classes with extended names, extended descriptions and new additions used in Round 2 of our annotations. The rest of the class names and descriptions are the same as in Round 1 of our annotation sourced from Rogers and Augenstein (2021).
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="A1.T9.1">
<tr class="ltx_tr" id="A1.T9.1.2">
<td class="ltx_td ltx_align_justify ltx_border_tt" id="A1.T9.1.2.1">
<span class="ltx_inline-block ltx_align_top" id="A1.T9.1.2.1.1">
<span class="ltx_p" id="A1.T9.1.2.1.1.1"><span class="ltx_text ltx_font_bold" id="A1.T9.1.2.1.1.1.1">Heuristics</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_tt" id="A1.T9.1.2.2">
<span class="ltx_inline-block ltx_align_top" id="A1.T9.1.2.2.1">
<span class="ltx_p" id="A1.T9.1.2.2.1.1"><span class="ltx_text ltx_font_bold" id="A1.T9.1.2.2.1.1.1">Positive examples</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T9.1.3">
<td class="ltx_td ltx_align_justify ltx_border_t" id="A1.T9.1.3.1">
<span class="ltx_inline-block ltx_align_top" id="A1.T9.1.3.1.1">
<span class="ltx_p" id="A1.T9.1.3.1.1.1"><em class="ltx_emph ltx_font_italic" id="A1.T9.1.3.1.1.1.1">The results are not surprising</em></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="A1.T9.1.3.2">
<span class="ltx_inline-block ltx_align_top" id="A1.T9.1.3.2.1">
<span class="ltx_p" id="A1.T9.1.3.2.1.1">Although the experiments are very comprehensive, this paper lacks technical novelty. <span class="ltx_text" id="A1.T9.1.3.2.1.1.1" style="background-color:#E6F2FF;">The optimal data selection strategy also seems to offer limited improvement over random data selection</span>.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T9.1.4">
<td class="ltx_td ltx_align_justify ltx_border_t" id="A1.T9.1.4.1">
<span class="ltx_inline-block ltx_align_top" id="A1.T9.1.4.1.1">
<span class="ltx_p" id="A1.T9.1.4.1.1.1"><em class="ltx_emph ltx_font_italic" id="A1.T9.1.4.1.1.1.1">The results contradict what I would expect</em></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="A1.T9.1.4.2">
<span class="ltx_inline-block ltx_align_top" id="A1.T9.1.4.2.1">
<span class="ltx_p" id="A1.T9.1.4.2.1.1"><span class="ltx_text" id="A1.T9.1.4.2.1.1.1" style="background-color:#E6F2FF;">Although the paper empirically shows that the baseline is not as effective as the proposed method, - I expect more discussion on why using activation values is not a good idea, this contradicts my prior assumption</span>.-One limitation of this study is that the paper only focuses on single-word cloze queries (as discussed in the paper)</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T9.1.5">
<td class="ltx_td ltx_align_justify ltx_border_t" id="A1.T9.1.5.1">
<span class="ltx_inline-block ltx_align_top" id="A1.T9.1.5.1.1">
<span class="ltx_p" id="A1.T9.1.5.1.1.1"><em class="ltx_emph ltx_font_italic" id="A1.T9.1.5.1.1.1.1">The results are not novel</em></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="A1.T9.1.5.2">
<span class="ltx_inline-block ltx_align_top" id="A1.T9.1.5.2.1">
<span class="ltx_p" id="A1.T9.1.5.2.1.1"><span class="ltx_text" id="A1.T9.1.5.2.1.1.1" style="background-color:#E6F2FF;">The novelty of the approach is limited. The attempt to train the document retrieval and outcome prediction jointly is unsuccessful.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T9.1.6">
<td class="ltx_td ltx_align_justify ltx_border_t" id="A1.T9.1.6.1">
<span class="ltx_inline-block ltx_align_top" id="A1.T9.1.6.1.1">
<span class="ltx_p" id="A1.T9.1.6.1.1.1"><em class="ltx_emph ltx_font_italic" id="A1.T9.1.6.1.1.1.1">This has no precedent in existing literature</em></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="A1.T9.1.6.2">
<span class="ltx_inline-block ltx_align_top" id="A1.T9.1.6.2.1">
<span class="ltx_p" id="A1.T9.1.6.2.1.1">There are a lot of problems that I can imagine for real-world large scale models such as GPT3. To mention a few: (1) <span class="ltx_text" id="A1.T9.1.6.2.1.1.1" style="background-color:#E6F2FF;">Recent works have shown it is possible to continue training language models for either language understanding [1] or additional applications such as code synthesis [2]. Therefore, perhaps these simple approaches are sufficient enough for good generalization.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T9.1.1">
<td class="ltx_td ltx_align_justify ltx_border_t" id="A1.T9.1.1.2">
<span class="ltx_inline-block ltx_align_top" id="A1.T9.1.1.2.1">
<span class="ltx_p" id="A1.T9.1.1.2.1.1"><em class="ltx_emph ltx_font_italic" id="A1.T9.1.1.2.1.1.1">The results are negative</em></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="A1.T9.1.1.1">
<span class="ltx_inline-block ltx_align_top" id="A1.T9.1.1.1.1">
<span class="ltx_p" id="A1.T9.1.1.1.1.1">I have two concerns about the experimental results. 1. In the few-shot learning, when the samples are increased from 24 to 1K, the attribute relevance drops by 2 points for positive class as shown in Table 1, and the toxicity metric becomes worse for the detoxification task as shown in Table 2. Please give some explanations. 2. <span class="ltx_text" id="A1.T9.1.1.1.1.1.1" style="background-color:#E6F2FF;">In human evaluation, the inter-annotator agreement on the sentiment task and the AGNews 482 task is only 0.39 and 0.30 in Fleiss’ <math alttext="\kappa" class="ltx_Math" display="inline" id="A1.T9.1.1.1.1.1.1.m1.1"><semantics id="A1.T9.1.1.1.1.1.1.m1.1a"><mi id="A1.T9.1.1.1.1.1.1.m1.1.1" mathbackground="#E6F2FF" xref="A1.T9.1.1.1.1.1.1.m1.1.1.cmml">κ</mi><annotation-xml encoding="MathML-Content" id="A1.T9.1.1.1.1.1.1.m1.1b"><ci id="A1.T9.1.1.1.1.1.1.m1.1.1.cmml" xref="A1.T9.1.1.1.1.1.1.m1.1.1">𝜅</ci></annotation-xml><annotation encoding="application/x-tex" id="A1.T9.1.1.1.1.1.1.m1.1c">\kappa</annotation><annotation encoding="application/x-llamapun" id="A1.T9.1.1.1.1.1.1.m1.1d">italic_κ</annotation></semantics></math>, which is low to guarantee a high quality of the evaluation data.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T9.1.7">
<td class="ltx_td ltx_align_justify ltx_border_t" id="A1.T9.1.7.1">
<span class="ltx_inline-block ltx_align_top" id="A1.T9.1.7.1.1">
<span class="ltx_p" id="A1.T9.1.7.1.1.1"><em class="ltx_emph ltx_font_italic" id="A1.T9.1.7.1.1.1.1">This method is too simple</em></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="A1.T9.1.7.2">
<span class="ltx_inline-block ltx_align_top" id="A1.T9.1.7.2.1">
<span class="ltx_p" id="A1.T9.1.7.2.1.1"><span class="ltx_text" id="A1.T9.1.7.2.1.1.1" style="background-color:#E6F2FF;">There is unfortunately not a whole lot of new content in this paper. The proposed method really just boils down to playing with the temperature settings for the attention of the teacher model; something that is usually just considered a hyperparameter. While I have no problem with what is currently in the paper, I am just not sure that this is enough to form a long paper proposing a new method.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T9.1.8">
<td class="ltx_td ltx_align_justify ltx_border_t" id="A1.T9.1.8.1">
<span class="ltx_inline-block ltx_align_top" id="A1.T9.1.8.1.1">
<span class="ltx_p" id="A1.T9.1.8.1.1.1"><em class="ltx_emph ltx_font_italic" id="A1.T9.1.8.1.1.1.1">The topic is too niche / Narrow Topics</em></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="A1.T9.1.8.2">
<span class="ltx_inline-block ltx_align_top" id="A1.T9.1.8.2.1">
<span class="ltx_p" id="A1.T9.1.8.2.1.1">1- It is not clear how this task and the approach will perform for new information (updates) about an event (even if it is contradictory to what is known about an event) 2- <span class="ltx_text" id="A1.T9.1.8.2.1.1.1" style="background-color:#E6F2FF;">The approach operates on clusters. New events may not have clusters</span>.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T9.1.9">
<td class="ltx_td ltx_align_justify ltx_border_b ltx_border_t" id="A1.T9.1.9.1">
<span class="ltx_inline-block ltx_align_top" id="A1.T9.1.9.1.1">
<span class="ltx_p" id="A1.T9.1.9.1.1.1"><em class="ltx_emph ltx_font_italic" id="A1.T9.1.9.1.1.1.1">The authors could also do [extra experiment X]</em></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_b ltx_border_t" id="A1.T9.1.9.2">
<span class="ltx_inline-block ltx_align_top" id="A1.T9.1.9.2.1">
<span class="ltx_p" id="A1.T9.1.9.2.1.1">1. According to Table 3, the performance of BARTword and BARTspan on SST-2 degrades a lot after incorporating text smoothing, why? 2. <span class="ltx_text" id="A1.T9.1.9.2.1.1.1" style="background-color:#E6F2FF;">Lack of experimental results on more datasets: I suggest conducting experiments on more datasets to make a more comprehensive evaluation of the proposed method. The experiments on the full dataset instead of that in the low-resource regime are also encouraged.</span></span>
</span>
</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents positive examples used in the third round of annotation for the LAZYREVIEW dataset.  Each row shows an example of a review segment categorized as exhibiting lazy thinking, with the specific lazy thinking class indicated and the portion of the segment exhibiting that bias highlighted. Due to space limitations, only the 'weaknesses' sections of the reviews are shown, rather than the entire reviews.
> <details>
> <summary>read the caption</summary>
> Table 9: Positive examples used during Round 3 of our annotations. The review segment that corresponds to lazy thinking is highlighted. We display only the weakness section of the reviews rather than the full review due to space constraints.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="A1.T10.3.3">
<tr class="ltx_tr" id="A1.T10.3.3.4">
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T10.3.3.4.1" rowspan="4"><span class="ltx_text ltx_font_bold" id="A1.T10.3.3.4.1.1">Method</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T10.3.3.4.2" rowspan="4"><span class="ltx_text ltx_font_bold" id="A1.T10.3.3.4.2.1">Models</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" colspan="9" id="A1.T10.3.3.4.3"><span class="ltx_text ltx_font_bold" id="A1.T10.3.3.4.3.1">Fine-grained</span></td>
</tr>
<tr class="ltx_tr" id="A1.T10.3.3.5">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" colspan="6" id="A1.T10.3.3.5.1"><span class="ltx_text ltx_font_bold" id="A1.T10.3.3.5.1.1">S.A</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" colspan="3" id="A1.T10.3.3.5.2"><span class="ltx_text ltx_font_bold" id="A1.T10.3.3.5.2.1">G.A</span></td>
</tr>
<tr class="ltx_tr" id="A1.T10.3.3.6">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="3" id="A1.T10.3.3.6.1"><span class="ltx_text ltx_font_bold" id="A1.T10.3.3.6.1.1">Acc</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" colspan="3" id="A1.T10.3.3.6.2"><span class="ltx_text ltx_font_bold" id="A1.T10.3.3.6.2.1">F1</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" colspan="3" id="A1.T10.3.3.6.3"><span class="ltx_text ltx_font_bold" id="A1.T10.3.3.6.3.1">Acc</span></td>
</tr>
<tr class="ltx_tr" id="A1.T10.3.3.3">
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T10.3.3.3.4"><span class="ltx_text ltx_font_bold" id="A1.T10.3.3.3.4.1">R1</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T10.1.1.1.1"><span class="ltx_text ltx_font_bold" id="A1.T10.1.1.1.1.1">R2 (<math alttext="\Delta_{R1}" class="ltx_Math" display="inline" id="A1.T10.1.1.1.1.1.m1.1"><semantics id="A1.T10.1.1.1.1.1.m1.1a"><msub id="A1.T10.1.1.1.1.1.m1.1.1" xref="A1.T10.1.1.1.1.1.m1.1.1.cmml"><mi id="A1.T10.1.1.1.1.1.m1.1.1.2" mathvariant="normal" xref="A1.T10.1.1.1.1.1.m1.1.1.2.cmml">Δ</mi><mrow id="A1.T10.1.1.1.1.1.m1.1.1.3" xref="A1.T10.1.1.1.1.1.m1.1.1.3.cmml"><mi id="A1.T10.1.1.1.1.1.m1.1.1.3.2" xref="A1.T10.1.1.1.1.1.m1.1.1.3.2.cmml">R</mi><mo id="A1.T10.1.1.1.1.1.m1.1.1.3.1" xref="A1.T10.1.1.1.1.1.m1.1.1.3.1.cmml">⁢</mo><mn id="A1.T10.1.1.1.1.1.m1.1.1.3.3" xref="A1.T10.1.1.1.1.1.m1.1.1.3.3.cmml">1</mn></mrow></msub><annotation-xml encoding="MathML-Content" id="A1.T10.1.1.1.1.1.m1.1b"><apply id="A1.T10.1.1.1.1.1.m1.1.1.cmml" xref="A1.T10.1.1.1.1.1.m1.1.1"><csymbol cd="ambiguous" id="A1.T10.1.1.1.1.1.m1.1.1.1.cmml" xref="A1.T10.1.1.1.1.1.m1.1.1">subscript</csymbol><ci id="A1.T10.1.1.1.1.1.m1.1.1.2.cmml" xref="A1.T10.1.1.1.1.1.m1.1.1.2">Δ</ci><apply id="A1.T10.1.1.1.1.1.m1.1.1.3.cmml" xref="A1.T10.1.1.1.1.1.m1.1.1.3"><times id="A1.T10.1.1.1.1.1.m1.1.1.3.1.cmml" xref="A1.T10.1.1.1.1.1.m1.1.1.3.1"></times><ci id="A1.T10.1.1.1.1.1.m1.1.1.3.2.cmml" xref="A1.T10.1.1.1.1.1.m1.1.1.3.2">𝑅</ci><cn id="A1.T10.1.1.1.1.1.m1.1.1.3.3.cmml" type="integer" xref="A1.T10.1.1.1.1.1.m1.1.1.3.3">1</cn></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="A1.T10.1.1.1.1.1.m1.1c">\Delta_{R1}</annotation><annotation encoding="application/x-llamapun" id="A1.T10.1.1.1.1.1.m1.1d">roman_Δ start_POSTSUBSCRIPT italic_R 1 end_POSTSUBSCRIPT</annotation></semantics></math>)</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A1.T10.3.3.3.5"><span class="ltx_text ltx_font_bold" id="A1.T10.3.3.3.5.1">R3</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T10.3.3.3.6"><span class="ltx_text ltx_font_bold" id="A1.T10.3.3.3.6.1">R1</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T10.2.2.2.2"><span class="ltx_text ltx_font_bold" id="A1.T10.2.2.2.2.1">R2 (<math alttext="\Delta_{R1}" class="ltx_Math" display="inline" id="A1.T10.2.2.2.2.1.m1.1"><semantics id="A1.T10.2.2.2.2.1.m1.1a"><msub id="A1.T10.2.2.2.2.1.m1.1.1" xref="A1.T10.2.2.2.2.1.m1.1.1.cmml"><mi id="A1.T10.2.2.2.2.1.m1.1.1.2" mathvariant="normal" xref="A1.T10.2.2.2.2.1.m1.1.1.2.cmml">Δ</mi><mrow id="A1.T10.2.2.2.2.1.m1.1.1.3" xref="A1.T10.2.2.2.2.1.m1.1.1.3.cmml"><mi id="A1.T10.2.2.2.2.1.m1.1.1.3.2" xref="A1.T10.2.2.2.2.1.m1.1.1.3.2.cmml">R</mi><mo id="A1.T10.2.2.2.2.1.m1.1.1.3.1" xref="A1.T10.2.2.2.2.1.m1.1.1.3.1.cmml">⁢</mo><mn id="A1.T10.2.2.2.2.1.m1.1.1.3.3" xref="A1.T10.2.2.2.2.1.m1.1.1.3.3.cmml">1</mn></mrow></msub><annotation-xml encoding="MathML-Content" id="A1.T10.2.2.2.2.1.m1.1b"><apply id="A1.T10.2.2.2.2.1.m1.1.1.cmml" xref="A1.T10.2.2.2.2.1.m1.1.1"><csymbol cd="ambiguous" id="A1.T10.2.2.2.2.1.m1.1.1.1.cmml" xref="A1.T10.2.2.2.2.1.m1.1.1">subscript</csymbol><ci id="A1.T10.2.2.2.2.1.m1.1.1.2.cmml" xref="A1.T10.2.2.2.2.1.m1.1.1.2">Δ</ci><apply id="A1.T10.2.2.2.2.1.m1.1.1.3.cmml" xref="A1.T10.2.2.2.2.1.m1.1.1.3"><times id="A1.T10.2.2.2.2.1.m1.1.1.3.1.cmml" xref="A1.T10.2.2.2.2.1.m1.1.1.3.1"></times><ci id="A1.T10.2.2.2.2.1.m1.1.1.3.2.cmml" xref="A1.T10.2.2.2.2.1.m1.1.1.3.2">𝑅</ci><cn id="A1.T10.2.2.2.2.1.m1.1.1.3.3.cmml" type="integer" xref="A1.T10.2.2.2.2.1.m1.1.1.3.3">1</cn></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="A1.T10.2.2.2.2.1.m1.1c">\Delta_{R1}</annotation><annotation encoding="application/x-llamapun" id="A1.T10.2.2.2.2.1.m1.1d">roman_Δ start_POSTSUBSCRIPT italic_R 1 end_POSTSUBSCRIPT</annotation></semantics></math>)</span></td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T10.3.3.3.7"><span class="ltx_text ltx_font_bold" id="A1.T10.3.3.3.7.1">R3</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T10.3.3.3.8"><span class="ltx_text ltx_font_bold" id="A1.T10.3.3.3.8.1">R1</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T10.3.3.3.3"><span class="ltx_text ltx_font_bold" id="A1.T10.3.3.3.3.1">R2 (<math alttext="\Delta_{R1}" class="ltx_Math" display="inline" id="A1.T10.3.3.3.3.1.m1.1"><semantics id="A1.T10.3.3.3.3.1.m1.1a"><msub id="A1.T10.3.3.3.3.1.m1.1.1" xref="A1.T10.3.3.3.3.1.m1.1.1.cmml"><mi id="A1.T10.3.3.3.3.1.m1.1.1.2" mathvariant="normal" xref="A1.T10.3.3.3.3.1.m1.1.1.2.cmml">Δ</mi><mrow id="A1.T10.3.3.3.3.1.m1.1.1.3" xref="A1.T10.3.3.3.3.1.m1.1.1.3.cmml"><mi id="A1.T10.3.3.3.3.1.m1.1.1.3.2" xref="A1.T10.3.3.3.3.1.m1.1.1.3.2.cmml">R</mi><mo id="A1.T10.3.3.3.3.1.m1.1.1.3.1" xref="A1.T10.3.3.3.3.1.m1.1.1.3.1.cmml">⁢</mo><mn id="A1.T10.3.3.3.3.1.m1.1.1.3.3" xref="A1.T10.3.3.3.3.1.m1.1.1.3.3.cmml">1</mn></mrow></msub><annotation-xml encoding="MathML-Content" id="A1.T10.3.3.3.3.1.m1.1b"><apply id="A1.T10.3.3.3.3.1.m1.1.1.cmml" xref="A1.T10.3.3.3.3.1.m1.1.1"><csymbol cd="ambiguous" id="A1.T10.3.3.3.3.1.m1.1.1.1.cmml" xref="A1.T10.3.3.3.3.1.m1.1.1">subscript</csymbol><ci id="A1.T10.3.3.3.3.1.m1.1.1.2.cmml" xref="A1.T10.3.3.3.3.1.m1.1.1.2">Δ</ci><apply id="A1.T10.3.3.3.3.1.m1.1.1.3.cmml" xref="A1.T10.3.3.3.3.1.m1.1.1.3"><times id="A1.T10.3.3.3.3.1.m1.1.1.3.1.cmml" xref="A1.T10.3.3.3.3.1.m1.1.1.3.1"></times><ci id="A1.T10.3.3.3.3.1.m1.1.1.3.2.cmml" xref="A1.T10.3.3.3.3.1.m1.1.1.3.2">𝑅</ci><cn id="A1.T10.3.3.3.3.1.m1.1.1.3.3.cmml" type="integer" xref="A1.T10.3.3.3.3.1.m1.1.1.3.3">1</cn></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="A1.T10.3.3.3.3.1.m1.1c">\Delta_{R1}</annotation><annotation encoding="application/x-llamapun" id="A1.T10.3.3.3.3.1.m1.1d">roman_Δ start_POSTSUBSCRIPT italic_R 1 end_POSTSUBSCRIPT</annotation></semantics></math>)</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T10.3.3.3.9"><span class="ltx_text ltx_font_bold" id="A1.T10.3.3.3.9.1">R3</span></td>
</tr>
<tr class="ltx_tr" id="A1.T10.3.3.7">
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T10.3.3.7.1">
<span class="ltx_text" id="A1.T10.3.3.7.1.1"></span> <span class="ltx_text ltx_font_smallcaps" id="A1.T10.3.3.7.1.2">Random</span>
</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T10.3.3.7.2">-</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T10.3.3.7.3">7.11</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T10.3.3.7.4">4.34 <span class="ltx_text" id="A1.T10.3.3.7.4.1" style="color:#0000FF;">(-2.77)</span>
</td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T10.3.3.7.5">2.46 <span class="ltx_text" id="A1.T10.3.3.7.5.1" style="color:#0000FF;">(-1.88)</span>
</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T10.3.3.7.6">7.15</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T10.3.3.7.7">2.39 <span class="ltx_text" id="A1.T10.3.3.7.7.1" style="color:#0000FF;">(-4.76)</span>
</td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T10.3.3.7.8">1.28</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T10.3.3.7.9">-</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T10.3.3.7.10">-</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T10.3.3.7.11">-</td>
</tr>
<tr class="ltx_tr" id="A1.T10.3.3.8">
<td class="ltx_td ltx_align_left" id="A1.T10.3.3.8.1"><span class="ltx_text ltx_font_smallcaps" id="A1.T10.3.3.8.1.1">Majority</span></td>
<td class="ltx_td ltx_align_left" id="A1.T10.3.3.8.2">-</td>
<td class="ltx_td ltx_align_left" id="A1.T10.3.3.8.3">11.1</td>
<td class="ltx_td ltx_align_left" id="A1.T10.3.3.8.4">7.34 <span class="ltx_text" id="A1.T10.3.3.8.4.1" style="color:#FF0000;">(+3.00)</span>
</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T10.3.3.8.5">5.11 <span class="ltx_text" id="A1.T10.3.3.8.5.1" style="color:#0000FF;">(-2.23)</span>
</td>
<td class="ltx_td ltx_align_left" id="A1.T10.3.3.8.6">9.05</td>
<td class="ltx_td ltx_align_left" id="A1.T10.3.3.8.7">7.17 <span class="ltx_text" id="A1.T10.3.3.8.7.1" style="color:#0000FF;">(-1.88)</span>
</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T10.3.3.8.8">3.45</td>
<td class="ltx_td ltx_align_left" id="A1.T10.3.3.8.9">-</td>
<td class="ltx_td ltx_align_left" id="A1.T10.3.3.8.10">-</td>
<td class="ltx_td ltx_align_left" id="A1.T10.3.3.8.11">-</td>
</tr>
<tr class="ltx_tr" id="A1.T10.3.3.9">
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T10.3.3.9.1" rowspan="28"><span class="ltx_text" id="A1.T10.3.3.9.1.1">Zero-Shot</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T10.3.3.9.2">Gemma-1.1 7B (T)</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T10.3.3.9.3">22.2</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T10.3.3.9.4">26.7 <span class="ltx_text" id="A1.T10.3.3.9.4.1" style="color:#FF0000;">(+<span class="ltx_text ltx_font_bold" id="A1.T10.3.3.9.4.1.1">4.50</span>)</span>
</td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T10.3.3.9.5">18.9</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T10.3.3.9.6">23.1</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T10.3.3.9.7">24.8 <span class="ltx_text" id="A1.T10.3.3.9.7.1" style="color:#FF0000;">(+1.7)</span>
</td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T10.3.3.9.8">16.7</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T10.3.3.9.9">52.2</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T10.3.3.9.10">58.1 <span class="ltx_text" id="A1.T10.3.3.9.10.1" style="color:#FF0000;">(+5.90)</span>
</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T10.3.3.9.11">32.2</td>
</tr>
<tr class="ltx_tr" id="A1.T10.3.3.10">
<td class="ltx_td ltx_align_left" id="A1.T10.3.3.10.1">Gemma-1.1 7B (TE)</td>
<td class="ltx_td ltx_align_left" id="A1.T10.3.3.10.2">-</td>
<td class="ltx_td ltx_align_left" id="A1.T10.3.3.10.3">-</td>
<td class="ltx_td ltx_align_left" id="A1.T10.3.3.10.4">24.4      <span class="ltx_text" id="A1.T10.3.3.10.4.1" style="color:#FF0000;">(+5.5)</span>
</td>
<td class="ltx_td ltx_align_left" id="A1.T10.3.3.10.5">-</td>
<td class="ltx_td ltx_align_left" id="A1.T10.3.3.10.6">-</td>
<td class="ltx_td ltx_align_left" id="A1.T10.3.3.10.7">19.4      <span class="ltx_text" id="A1.T10.3.3.10.7.1" style="color:#FF0000;">(+2.7)</span>
</td>
<td class="ltx_td ltx_align_left" id="A1.T10.3.3.10.8">-</td>
<td class="ltx_td ltx_align_left" id="A1.T10.3.3.10.9">-</td>
<td class="ltx_td ltx_align_left" id="A1.T10.3.3.10.10">41.1 <span class="ltx_text" id="A1.T10.3.3.10.10.1" style="color:#FF0000;">(+8.9)</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T10.3.3.11">
<td class="ltx_td ltx_align_left" id="A1.T10.3.3.11.1">Gemma-1.1 7B (RT)</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T10.3.3.11.2">12.2</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T10.3.3.11.3">11.6 <span class="ltx_text" id="A1.T10.3.3.11.3.1" style="color:#0000FF;">(-0.60)</span>
</td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T10.3.3.11.4">14.4</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T10.3.3.11.5">9.51</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T10.3.3.11.6">10.4 <span class="ltx_text" id="A1.T10.3.3.11.6.1" style="color:#FF0000;">(+0.89)</span>
</td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T10.3.3.11.7">10.8</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T10.3.3.11.8">46.7</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T10.3.3.11.9">51.1 <span class="ltx_text" id="A1.T10.3.3.11.9.1" style="color:#FF0000;">(+4.40)</span>
</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T10.3.3.11.10">32.2</td>
</tr>
<tr class="ltx_tr" id="A1.T10.3.3.12">
<td class="ltx_td ltx_align_left" id="A1.T10.3.3.12.1">Gemma-1.1 7B (RTE)</td>
<td class="ltx_td ltx_align_left" id="A1.T10.3.3.12.2">-</td>
<td class="ltx_td ltx_align_left" id="A1.T10.3.3.12.3">-</td>
<td class="ltx_td ltx_align_left" id="A1.T10.3.3.12.4">17.3      <span class="ltx_text" id="A1.T10.3.3.12.4.1" style="color:#FF0000;">(+2.9)</span>
</td>
<td class="ltx_td ltx_align_left" id="A1.T10.3.3.12.5">-</td>
<td class="ltx_td ltx_align_left" id="A1.T10.3.3.12.6">-</td>
<td class="ltx_td ltx_align_left" id="A1.T10.3.3.12.7">12.8      <span class="ltx_text" id="A1.T10.3.3.12.7.1" style="color:#FF0000;">(+2.0)</span>
</td>
<td class="ltx_td ltx_align_left" id="A1.T10.3.3.12.8">-</td>
<td class="ltx_td ltx_align_left" id="A1.T10.3.3.12.9">-</td>
<td class="ltx_td ltx_align_left" id="A1.T10.3.3.12.10">32.8 <span class="ltx_text" id="A1.T10.3.3.12.10.1" style="color:#FF0000;">(+0.6)</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T10.3.3.13">
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T10.3.3.13.1">LLaMa 7B (T)</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T10.3.3.13.2">12.2</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T10.3.3.13.3">22.2 <span class="ltx_text" id="A1.T10.3.3.13.3.1" style="color:#FF0000;">(+10.0)</span>
</td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T10.3.3.13.4">11.1</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T10.3.3.13.5">9.51</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T10.3.3.13.6">20.3 <span class="ltx_text" id="A1.T10.3.3.13.6.1" style="color:#FF0000;">(+10.79)</span>
</td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T10.3.3.13.7">9.12</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T10.3.3.13.8">15.6</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T10.3.3.13.9">30.6 <span class="ltx_text" id="A1.T10.3.3.13.9.1" style="color:#FF0000;">(+15.0)</span>
</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T10.3.3.13.10">35.6</td>
</tr>
<tr class="ltx_tr" id="A1.T10.3.3.14">
<td class="ltx_td ltx_align_left" id="A1.T10.3.3.14.1">LLaMa 7B (TE)</td>
<td class="ltx_td ltx_align_left" id="A1.T10.3.3.14.2">-</td>
<td class="ltx_td ltx_align_left" id="A1.T10.3.3.14.3">-</td>
<td class="ltx_td ltx_align_left" id="A1.T10.3.3.14.4">15.6      <span class="ltx_text" id="A1.T10.3.3.14.4.1" style="color:#FF0000;">(+4.5)</span>
</td>
<td class="ltx_td ltx_align_left" id="A1.T10.3.3.14.5">-</td>
<td class="ltx_td ltx_align_left" id="A1.T10.3.3.14.6">-</td>
<td class="ltx_td ltx_align_left" id="A1.T10.3.3.14.7">12.4     <span class="ltx_text" id="A1.T10.3.3.14.7.1" style="color:#FF0000;">(+3.28)</span>
</td>
<td class="ltx_td ltx_align_left" id="A1.T10.3.3.14.8">-</td>
<td class="ltx_td ltx_align_left" id="A1.T10.3.3.14.9">-</td>
<td class="ltx_td ltx_align_left" id="A1.T10.3.3.14.10">38.9 <span class="ltx_text" id="A1.T10.3.3.14.10.1" style="color:#FF0000;">(+3.3)</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T10.3.3.15">
<td class="ltx_td ltx_align_left" id="A1.T10.3.3.15.1">LLaMa 7B (RT)</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T10.3.3.15.2">12.2</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T10.3.3.15.3">13.2 <span class="ltx_text" id="A1.T10.3.3.15.3.1" style="color:#FF0000;">(+1.00)</span>
</td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T10.3.3.15.4">12.2</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T10.3.3.15.5">9.51</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T10.3.3.15.6">9.89 <span class="ltx_text" id="A1.T10.3.3.15.6.1" style="color:#FF0000;">(+0.38)</span>
</td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T10.3.3.15.7">10.1</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T10.3.3.15.8">25.6</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T10.3.3.15.9">33.7 <span class="ltx_text" id="A1.T10.3.3.15.9.1" style="color:#FF0000;">(+7.90)</span>
</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T10.3.3.15.10">28.9</td>
</tr>
<tr class="ltx_tr" id="A1.T10.3.3.16">
<td class="ltx_td ltx_align_left" id="A1.T10.3.3.16.1">LLaMa 7B (RTE)</td>
<td class="ltx_td ltx_align_left" id="A1.T10.3.3.16.2">-</td>
<td class="ltx_td ltx_align_left" id="A1.T10.3.3.16.3">-</td>
<td class="ltx_td ltx_align_left" id="A1.T10.3.3.16.4">14.2      <span class="ltx_text" id="A1.T10.3.3.16.4.1" style="color:#FF0000;">(+2.0)</span>
</td>
<td class="ltx_td ltx_align_left" id="A1.T10.3.3.16.5">-</td>
<td class="ltx_td ltx_align_left" id="A1.T10.3.3.16.6">-</td>
<td class="ltx_td ltx_align_left" id="A1.T10.3.3.16.7">11.5      <span class="ltx_text" id="A1.T10.3.3.16.7.1" style="color:#FF0000;">(+1.4)</span>
</td>
<td class="ltx_td ltx_align_left" id="A1.T10.3.3.16.8">-</td>
<td class="ltx_td ltx_align_left" id="A1.T10.3.3.16.9">-</td>
<td class="ltx_td ltx_align_left" id="A1.T10.3.3.16.10">30.8 <span class="ltx_text" id="A1.T10.3.3.16.10.1" style="color:#FF0000;">(+1.9)</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T10.3.3.17">
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T10.3.3.17.1">LLaMa 13B (T)</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T10.3.3.17.2">26.7</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T10.3.3.17.3">26.7 <span class="ltx_text" id="A1.T10.3.3.17.3.1" style="color:#FF0000;">(+0.00)</span>
</td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T10.3.3.17.4">11.1</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T10.3.3.17.5">20.4</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T10.3.3.17.6">23.8 <span class="ltx_text" id="A1.T10.3.3.17.6.1" style="color:#FF0000;">(+3.4)</span>
</td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T10.3.3.17.7">9.11</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T10.3.3.17.8">44.4</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T10.3.3.17.9">45.3 <span class="ltx_text" id="A1.T10.3.3.17.9.1" style="color:#FF0000;">(+0.90)</span>
</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T10.3.3.17.10">35.6</td>
</tr>
<tr class="ltx_tr" id="A1.T10.3.3.18">
<td class="ltx_td ltx_align_left" id="A1.T10.3.3.18.1">LLaMa 13B (TE)</td>
<td class="ltx_td ltx_align_left" id="A1.T10.3.3.18.2">-</td>
<td class="ltx_td ltx_align_left" id="A1.T10.3.3.18.3">-</td>
<td class="ltx_td ltx_align_left" id="A1.T10.3.3.18.4">24.4      <span class="ltx_text" id="A1.T10.3.3.18.4.1" style="color:#FF0000;">(+13.3)</span>
</td>
<td class="ltx_td ltx_align_left" id="A1.T10.3.3.18.5">-</td>
<td class="ltx_td ltx_align_left" id="A1.T10.3.3.18.6">-</td>
<td class="ltx_td ltx_align_left" id="A1.T10.3.3.18.7">20.8      <span class="ltx_text" id="A1.T10.3.3.18.7.1" style="color:#FF0000;">(+11.7)</span>
</td>
<td class="ltx_td ltx_align_left" id="A1.T10.3.3.18.8">-</td>
<td class="ltx_td ltx_align_left" id="A1.T10.3.3.18.9">-</td>
<td class="ltx_td ltx_align_left" id="A1.T10.3.3.18.10">41.1 <span class="ltx_text" id="A1.T10.3.3.18.10.1" style="color:#FF0000;">(+5.5)</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T10.3.3.19">
<td class="ltx_td ltx_align_left" id="A1.T10.3.3.19.1">LLaMa 13B (RT)</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T10.3.3.19.2">15.6</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T10.3.3.19.3">17.6 <span class="ltx_text" id="A1.T10.3.3.19.3.1" style="color:#FF0000;">(+3.00)</span>
</td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T10.3.3.19.4">10.7</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T10.3.3.19.5">11.7</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T10.3.3.19.6">13.8 <span class="ltx_text" id="A1.T10.3.3.19.6.1" style="color:#FF0000;">(+2.1)</span>
</td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T10.3.3.19.7">8.89</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T10.3.3.19.8">41.1</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T10.3.3.19.9">40.4 <span class="ltx_text" id="A1.T10.3.3.19.9.1" style="color:#0000FF;">(-1.10)</span>
</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T10.3.3.19.10">32.2</td>
</tr>
<tr class="ltx_tr" id="A1.T10.3.3.20">
<td class="ltx_td ltx_align_left" id="A1.T10.3.3.20.1">LLaMa 13B (RTE)</td>
<td class="ltx_td ltx_align_left" id="A1.T10.3.3.20.2">-</td>
<td class="ltx_td ltx_align_left" id="A1.T10.3.3.20.3">-</td>
<td class="ltx_td ltx_align_left" id="A1.T10.3.3.20.4">18.8      <span class="ltx_text" id="A1.T10.3.3.20.4.1" style="color:#FF0000;">(+8.1)</span>
</td>
<td class="ltx_td ltx_align_left" id="A1.T10.3.3.20.5">-</td>
<td class="ltx_td ltx_align_left" id="A1.T10.3.3.20.6">-</td>
<td class="ltx_td ltx_align_left" id="A1.T10.3.3.20.7">17.5      <span class="ltx_text" id="A1.T10.3.3.20.7.1" style="color:#FF0000;">(+8.61)</span>
</td>
<td class="ltx_td ltx_align_left" id="A1.T10.3.3.20.8">-</td>
<td class="ltx_td ltx_align_left" id="A1.T10.3.3.20.9">-</td>
<td class="ltx_td ltx_align_left" id="A1.T10.3.3.20.10">34.4 <span class="ltx_text" id="A1.T10.3.3.20.10.1" style="color:#FF0000;">(+2.2)</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T10.3.3.21">
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T10.3.3.21.1">Mistral 7B (T)</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T10.3.3.21.2">27.8</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T10.3.3.21.3">28.8 <span class="ltx_text" id="A1.T10.3.3.21.3.1" style="color:#FF0000;">(+1.10)</span>
</td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T10.3.3.21.4">28.2</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T10.3.3.21.5">17.5</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T10.3.3.21.6">19.7 <span class="ltx_text" id="A1.T10.3.3.21.6.1" style="color:#FF0000;">(+2.2)</span>
</td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T10.3.3.21.7">24.3</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T10.3.3.21.8">47.8</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T10.3.3.21.9">51.1 <span class="ltx_text" id="A1.T10.3.3.21.9.1" style="color:#FF0000;">(+3.30)</span>
</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T10.3.3.21.10">54.4</td>
</tr>
<tr class="ltx_tr" id="A1.T10.3.3.22">
<td class="ltx_td ltx_align_left" id="A1.T10.3.3.22.1">Mistral 7B (TE)</td>
<td class="ltx_td ltx_align_left" id="A1.T10.3.3.22.2">-</td>
<td class="ltx_td ltx_align_left" id="A1.T10.3.3.22.3">-</td>
<td class="ltx_td ltx_align_left" id="A1.T10.3.3.22.4">30.0      <span class="ltx_text" id="A1.T10.3.3.22.4.1" style="color:#FF0000;">(+1.8)</span>
</td>
<td class="ltx_td ltx_align_left" id="A1.T10.3.3.22.5">-</td>
<td class="ltx_td ltx_align_left" id="A1.T10.3.3.22.6">-</td>
<td class="ltx_td ltx_align_left" id="A1.T10.3.3.22.7">26.1      <span class="ltx_text" id="A1.T10.3.3.22.7.1" style="color:#FF0000;">(+1.8 )</span>
</td>
<td class="ltx_td ltx_align_left" id="A1.T10.3.3.22.8">-</td>
<td class="ltx_td ltx_align_left" id="A1.T10.3.3.22.9">-</td>
<td class="ltx_td ltx_align_left" id="A1.T10.3.3.22.10">55.6 <span class="ltx_text" id="A1.T10.3.3.22.10.1" style="color:#FF0000;">(+1.2)</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T10.3.3.23">
<td class="ltx_td ltx_align_left" id="A1.T10.3.3.23.1">Mistral 7B (RT)</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T10.3.3.23.2">12.2</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T10.3.3.23.3">16.6 <span class="ltx_text" id="A1.T10.3.3.23.3.1" style="color:#FF0000;">(+4.40)</span>
</td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T10.3.3.23.4">22.2</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T10.3.3.23.5">9.51</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T10.3.3.23.6">12.8 <span class="ltx_text" id="A1.T10.3.3.23.6.1" style="color:#FF0000;">(+3.29)</span>
</td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T10.3.3.23.7">19.4</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T10.3.3.23.8">28.9</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T10.3.3.23.9">35.9 <span class="ltx_text" id="A1.T10.3.3.23.9.1" style="color:#FF0000;">(+6.90)</span>
</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T10.3.3.23.10">51.1</td>
</tr>
<tr class="ltx_tr" id="A1.T10.3.3.24">
<td class="ltx_td ltx_align_left" id="A1.T10.3.3.24.1">Mistral 7B (RTE)</td>
<td class="ltx_td ltx_align_left" id="A1.T10.3.3.24.2">-</td>
<td class="ltx_td ltx_align_left" id="A1.T10.3.3.24.3">-</td>
<td class="ltx_td ltx_align_left" id="A1.T10.3.3.24.4">27.8      <span class="ltx_text" id="A1.T10.3.3.24.4.1" style="color:#FF0000;">(+5.6)</span>
</td>
<td class="ltx_td ltx_align_left" id="A1.T10.3.3.24.5">-</td>
<td class="ltx_td ltx_align_left" id="A1.T10.3.3.24.6">-</td>
<td class="ltx_td ltx_align_left" id="A1.T10.3.3.24.7">23.2      <span class="ltx_text" id="A1.T10.3.3.24.7.1" style="color:#FF0000;">(+3.8)</span>
</td>
<td class="ltx_td ltx_align_left" id="A1.T10.3.3.24.8">-</td>
<td class="ltx_td ltx_align_left" id="A1.T10.3.3.24.9">-</td>
<td class="ltx_td ltx_align_left" id="A1.T10.3.3.24.10">52.2 <span class="ltx_text" id="A1.T10.3.3.24.10.1" style="color:#FF0000;">(+1.1)</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T10.3.3.25">
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T10.3.3.25.1">Qwen 7B (T)</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T10.3.3.25.2">21.1</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T10.3.3.25.3">22.7 <span class="ltx_text" id="A1.T10.3.3.25.3.1" style="color:#FF0000;">(+1.60)</span>
</td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T10.3.3.25.4">28.9</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T10.3.3.25.5">17.8</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T10.3.3.25.6">19.8 <span class="ltx_text" id="A1.T10.3.3.25.6.1" style="color:#FF0000;">(+2.0)</span>
</td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T10.3.3.25.7">24.5</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T10.3.3.25.8">46.7</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T10.3.3.25.9">50.0 <span class="ltx_text" id="A1.T10.3.3.25.9.1" style="color:#FF0000;">(+3.30)</span>
</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T10.3.3.25.10">44.4</td>
</tr>
<tr class="ltx_tr" id="A1.T10.3.3.26">
<td class="ltx_td ltx_align_left" id="A1.T10.3.3.26.1">Qwen 7B (TE)</td>
<td class="ltx_td ltx_align_left" id="A1.T10.3.3.26.2">-</td>
<td class="ltx_td ltx_align_left" id="A1.T10.3.3.26.3">-</td>
<td class="ltx_td ltx_align_left" id="A1.T10.3.3.26.4">
<span class="ltx_text ltx_font_bold" id="A1.T10.3.3.26.4.1">31.1</span>      <span class="ltx_text" id="A1.T10.3.3.26.4.2" style="color:#FF0000;">(+2.2)</span>
</td>
<td class="ltx_td ltx_align_left" id="A1.T10.3.3.26.5">-</td>
<td class="ltx_td ltx_align_left" id="A1.T10.3.3.26.6">-</td>
<td class="ltx_td ltx_align_left" id="A1.T10.3.3.26.7">
<span class="ltx_text ltx_font_bold" id="A1.T10.3.3.26.7.1">26.8</span>      <span class="ltx_text" id="A1.T10.3.3.26.7.2" style="color:#FF0000;">(+2.3)</span>
</td>
<td class="ltx_td ltx_align_left" id="A1.T10.3.3.26.8">-</td>
<td class="ltx_td ltx_align_left" id="A1.T10.3.3.26.9">-</td>
<td class="ltx_td ltx_align_left" id="A1.T10.3.3.26.10">
<span class="ltx_text ltx_font_bold" id="A1.T10.3.3.26.10.1">56.4</span> <span class="ltx_text" id="A1.T10.3.3.26.10.2" style="color:#FF0000;">(+12.0)</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T10.3.3.27">
<td class="ltx_td ltx_align_left" id="A1.T10.3.3.27.1">Qwen 7B (RT)</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T10.3.3.27.2">12.2</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T10.3.3.27.3">13.3 <span class="ltx_text" id="A1.T10.3.3.27.3.1" style="color:#FF0000;">(+1.10)</span>
</td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T10.3.3.27.4">26.7</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T10.3.3.27.5">9.51</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T10.3.3.27.6">13.4 <span class="ltx_text" id="A1.T10.3.3.27.6.1" style="color:#FF0000;">(+3.89)</span>
</td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T10.3.3.27.7">22.8</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T10.3.3.27.8">43.3</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T10.3.3.27.9">42.6 <span class="ltx_text" id="A1.T10.3.3.27.9.1" style="color:#0000FF;">(-1.60)</span>
</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T10.3.3.27.10">43.3</td>
</tr>
<tr class="ltx_tr" id="A1.T10.3.3.28">
<td class="ltx_td ltx_align_left" id="A1.T10.3.3.28.1">Qwen 7B (RTE)</td>
<td class="ltx_td ltx_align_left" id="A1.T10.3.3.28.2">-</td>
<td class="ltx_td ltx_align_left" id="A1.T10.3.3.28.3">-</td>
<td class="ltx_td ltx_align_left" id="A1.T10.3.3.28.4">27.8      <span class="ltx_text" id="A1.T10.3.3.28.4.1" style="color:#FF0000;">(+1.1)</span>
</td>
<td class="ltx_td ltx_align_left" id="A1.T10.3.3.28.5">-</td>
<td class="ltx_td ltx_align_left" id="A1.T10.3.3.28.6">-</td>
<td class="ltx_td ltx_align_left" id="A1.T10.3.3.28.7">24.7      <span class="ltx_text" id="A1.T10.3.3.28.7.1" style="color:#FF0000;">(+1.9)</span>
</td>
<td class="ltx_td ltx_align_left" id="A1.T10.3.3.28.8">-</td>
<td class="ltx_td ltx_align_left" id="A1.T10.3.3.28.9">-</td>
<td class="ltx_td ltx_align_left" id="A1.T10.3.3.28.10">44.2 <span class="ltx_text" id="A1.T10.3.3.28.10.1" style="color:#FF0000;">(+0.9)</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T10.3.3.29">
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T10.3.3.29.1">Yi-1.5 6B (T)</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T10.3.3.29.2"><span class="ltx_text ltx_font_bold" id="A1.T10.3.3.29.2.1">35.3</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T10.3.3.29.3">
<span class="ltx_text ltx_font_bold" id="A1.T10.3.3.29.3.1">37.6</span> <span class="ltx_text" id="A1.T10.3.3.29.3.2" style="color:#FF0000;">(+2.3)</span>
</td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T10.3.3.29.4">26.7</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T10.3.3.29.5"><span class="ltx_text ltx_font_bold" id="A1.T10.3.3.29.5.1">23.5</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T10.3.3.29.6">
<span class="ltx_text ltx_font_bold" id="A1.T10.3.3.29.6.1">29.7</span> <span class="ltx_text" id="A1.T10.3.3.29.6.2" style="color:#FF0000;">(+6.2)</span>
</td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T10.3.3.29.7">22.1</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T10.3.3.29.8"><span class="ltx_text ltx_font_bold" id="A1.T10.3.3.29.8.1">56.7</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T10.3.3.29.9">
<span class="ltx_text ltx_font_bold" id="A1.T10.3.3.29.9.1">60.0</span> <span class="ltx_text" id="A1.T10.3.3.29.9.2" style="color:#FF0000;">(+3.30)</span>
</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T10.3.3.29.10">53.8</td>
</tr>
<tr class="ltx_tr" id="A1.T10.3.3.30">
<td class="ltx_td ltx_align_left" id="A1.T10.3.3.30.1">Yi-1.5 6B (TE)</td>
<td class="ltx_td ltx_align_left" id="A1.T10.3.3.30.2">-</td>
<td class="ltx_td ltx_align_left" id="A1.T10.3.3.30.3">-</td>
<td class="ltx_td ltx_align_left" id="A1.T10.3.3.30.4">30.0      <span class="ltx_text" id="A1.T10.3.3.30.4.1" style="color:#FF0000;">(+3.3)</span>
</td>
<td class="ltx_td ltx_align_left" id="A1.T10.3.3.30.5">-</td>
<td class="ltx_td ltx_align_left" id="A1.T10.3.3.30.6">-</td>
<td class="ltx_td ltx_align_left" id="A1.T10.3.3.30.7">24.8      <span class="ltx_text" id="A1.T10.3.3.30.7.1" style="color:#FF0000;">(+2.7)</span>
</td>
<td class="ltx_td ltx_align_left" id="A1.T10.3.3.30.8">-</td>
<td class="ltx_td ltx_align_left" id="A1.T10.3.3.30.9">-</td>
<td class="ltx_td ltx_align_left" id="A1.T10.3.3.30.10">54.9 <span class="ltx_text" id="A1.T10.3.3.30.10.1" style="color:#FF0000;">(+1.1)</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T10.3.3.31">
<td class="ltx_td ltx_align_left" id="A1.T10.3.3.31.1">Yi-1.5 6B (RT)</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T10.3.3.31.2">34.4</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T10.3.3.31.3">32.8 <span class="ltx_text" id="A1.T10.3.3.31.3.1" style="color:#0000FF;">(-1.60)</span>
</td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T10.3.3.31.4">21.2</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T10.3.3.31.5">22.7</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T10.3.3.31.6">27.8 <span class="ltx_text" id="A1.T10.3.3.31.6.1" style="color:#FF0000;">(+5.1)</span>
</td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T10.3.3.31.7">19.4</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T10.3.3.31.8">51.1</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T10.3.3.31.9">52.2 <span class="ltx_text" id="A1.T10.3.3.31.9.1" style="color:#FF0000;">(+1.20)</span>
</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T10.3.3.31.10">51.3</td>
</tr>
<tr class="ltx_tr" id="A1.T10.3.3.32">
<td class="ltx_td ltx_align_left" id="A1.T10.3.3.32.1">Yi-1.5 6B (RTE)</td>
<td class="ltx_td ltx_align_left" id="A1.T10.3.3.32.2">-</td>
<td class="ltx_td ltx_align_left" id="A1.T10.3.3.32.3">-</td>
<td class="ltx_td ltx_align_left" id="A1.T10.3.3.32.4">24.4      <span class="ltx_text" id="A1.T10.3.3.32.4.1" style="color:#FF0000;">(+2.2)</span>
</td>
<td class="ltx_td ltx_align_left" id="A1.T10.3.3.32.5">-</td>
<td class="ltx_td ltx_align_left" id="A1.T10.3.3.32.6">-</td>
<td class="ltx_td ltx_align_left" id="A1.T10.3.3.32.7">20.6      <span class="ltx_text" id="A1.T10.3.3.32.7.1" style="color:#FF0000;">(+1.2)</span>
</td>
<td class="ltx_td ltx_align_left" id="A1.T10.3.3.32.8">-</td>
<td class="ltx_td ltx_align_left" id="A1.T10.3.3.32.9">-</td>
<td class="ltx_td ltx_align_left" id="A1.T10.3.3.32.10">52.7 <span class="ltx_text" id="A1.T10.3.3.32.10.1" style="color:#FF0000;">(+0.6)</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T10.3.3.33">
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T10.3.3.33.1">SciTülu 7B (T)</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T10.3.3.33.2">14.4</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T10.3.3.33.3">25.3 <span class="ltx_text" id="A1.T10.3.3.33.3.1" style="color:#FF0000;">(+10.9)</span>
</td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T10.3.3.33.4">22.2</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T10.3.3.33.5">10.5</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T10.3.3.33.6">22.5 <span class="ltx_text" id="A1.T10.3.3.33.6.1" style="color:#FF0000;">(+12.0)</span>
</td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T10.3.3.33.7">16.2</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T10.3.3.33.8">18.1</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T10.3.3.33.9">29.4 <span class="ltx_text" id="A1.T10.3.3.33.9.1" style="color:#FF0000;">(+<span class="ltx_text ltx_font_bold" id="A1.T10.3.3.33.9.1.1">11.3</span>)</span>
</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T10.3.3.33.10">42.2</td>
</tr>
<tr class="ltx_tr" id="A1.T10.3.3.34">
<td class="ltx_td ltx_align_left" id="A1.T10.3.3.34.1">SciTülu 7B (TE)</td>
<td class="ltx_td ltx_align_left" id="A1.T10.3.3.34.2">-</td>
<td class="ltx_td ltx_align_left" id="A1.T10.3.3.34.3">-</td>
<td class="ltx_td ltx_align_left" id="A1.T10.3.3.34.4">23.3      <span class="ltx_text" id="A1.T10.3.3.34.4.1" style="color:#FF0000;">(+1.1)</span>
</td>
<td class="ltx_td ltx_align_left" id="A1.T10.3.3.34.5">-</td>
<td class="ltx_td ltx_align_left" id="A1.T10.3.3.34.6">-</td>
<td class="ltx_td ltx_align_left" id="A1.T10.3.3.34.7">17.8      <span class="ltx_text" id="A1.T10.3.3.34.7.1" style="color:#FF0000;">(+1.6)</span>
</td>
<td class="ltx_td ltx_align_left" id="A1.T10.3.3.34.8">-</td>
<td class="ltx_td ltx_align_left" id="A1.T10.3.3.34.9">-</td>
<td class="ltx_td ltx_align_left" id="A1.T10.3.3.34.10">44.8 <span class="ltx_text" id="A1.T10.3.3.34.10.1" style="color:#FF0000;">(+2.6)</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T10.3.3.35">
<td class="ltx_td ltx_align_left" id="A1.T10.3.3.35.1">SciTülu 7B (RT)</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T10.3.3.35.2">15.6</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T10.3.3.35.3">18.3 <span class="ltx_text" id="A1.T10.3.3.35.3.1" style="color:#FF0000;">(+2.70)</span>
</td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T10.3.3.35.4">18.9</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T10.3.3.35.5">12.8</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T10.3.3.35.6">16.7 <span class="ltx_text" id="A1.T10.3.3.35.6.1" style="color:#FF0000;">(+3.9)</span>
</td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T10.3.3.35.7">14.9</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T10.3.3.35.8">17.3</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T10.3.3.35.9">23.7 <span class="ltx_text" id="A1.T10.3.3.35.9.1" style="color:#FF0000;">(+6.4)</span>
</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T10.3.3.35.10">38.9</td>
</tr>
<tr class="ltx_tr" id="A1.T10.3.3.36">
<td class="ltx_td ltx_align_left" id="A1.T10.3.3.36.1">SciTülu 7B (RTE)</td>
<td class="ltx_td ltx_align_left" id="A1.T10.3.3.36.2">-</td>
<td class="ltx_td ltx_align_left" id="A1.T10.3.3.36.3">-</td>
<td class="ltx_td ltx_align_left" id="A1.T10.3.3.36.4">19.7      <span class="ltx_text" id="A1.T10.3.3.36.4.1" style="color:#FF0000;">(+0.8)</span>
</td>
<td class="ltx_td ltx_align_left" id="A1.T10.3.3.36.5">-</td>
<td class="ltx_td ltx_align_left" id="A1.T10.3.3.36.6">-</td>
<td class="ltx_td ltx_align_left" id="A1.T10.3.3.36.7">15.5      <span class="ltx_text" id="A1.T10.3.3.36.7.1" style="color:#FF0000;">(+0.6)</span>
</td>
<td class="ltx_td ltx_align_left" id="A1.T10.3.3.36.8">-</td>
<td class="ltx_td ltx_align_left" id="A1.T10.3.3.36.9">-</td>
<td class="ltx_td ltx_align_left" id="A1.T10.3.3.36.10">41.1 <span class="ltx_text" id="A1.T10.3.3.36.10.1" style="color:#FF0000;">(+2.2)</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T10.3.3.37">
<td class="ltx_td ltx_align_left ltx_border_b ltx_border_t" id="A1.T10.3.3.37.1" rowspan="14"><span class="ltx_text" id="A1.T10.3.3.37.1.1">Instruction Tuned</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T10.3.3.37.2">Gemma-1.1 7B (T)</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T10.3.3.37.3">31.4</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T10.3.3.37.4">38.8 <span class="ltx_text" id="A1.T10.3.3.37.4.1" style="color:#FF0000;">(+7.40)</span>
</td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T10.3.3.37.5">34.6</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T10.3.3.37.6">29.8</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T10.3.3.37.7">31.6 <span class="ltx_text" id="A1.T10.3.3.37.7.1" style="color:#FF0000;">(+1.8)</span>
</td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T10.3.3.37.8">28.1</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T10.3.3.37.9">49.6</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T10.3.3.37.10">53.4 <span class="ltx_text" id="A1.T10.3.3.37.10.1" style="color:#FF0000;">(+3.80)</span>
</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T10.3.3.37.11">46.9</td>
</tr>
<tr class="ltx_tr" id="A1.T10.3.3.38">
<td class="ltx_td ltx_align_left" id="A1.T10.3.3.38.1">Gemma-1.1 7B (RT)</td>
<td class="ltx_td ltx_align_left" id="A1.T10.3.3.38.2">28.2</td>
<td class="ltx_td ltx_align_left" id="A1.T10.3.3.38.3">35.7 <span class="ltx_text" id="A1.T10.3.3.38.3.1" style="color:#FF0000;">(+7.50)</span>
</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T10.3.3.38.4">32.8</td>
<td class="ltx_td ltx_align_left" id="A1.T10.3.3.38.5">26.8</td>
<td class="ltx_td ltx_align_left" id="A1.T10.3.3.38.6">33.7 <span class="ltx_text" id="A1.T10.3.3.38.6.1" style="color:#FF0000;">(+6.9)</span>
</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T10.3.3.38.7">24.3</td>
<td class="ltx_td ltx_align_left" id="A1.T10.3.3.38.8">44.7</td>
<td class="ltx_td ltx_align_left" id="A1.T10.3.3.38.9">51.2 <span class="ltx_text" id="A1.T10.3.3.38.9.1" style="color:#FF0000;">(+6.50)</span>
</td>
<td class="ltx_td ltx_align_left" id="A1.T10.3.3.38.10">42.8</td>
</tr>
<tr class="ltx_tr" id="A1.T10.3.3.39">
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T10.3.3.39.1">LLaMa 7B (T)</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T10.3.3.39.2">43.8</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T10.3.3.39.3">47.8 <span class="ltx_text" id="A1.T10.3.3.39.3.1" style="color:#FF0000;">(+2.00)</span>
</td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T10.3.3.39.4">44.7</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T10.3.3.39.5">36.8</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T10.3.3.39.6">37.2 <span class="ltx_text" id="A1.T10.3.3.39.6.1" style="color:#FF0000;">(+0.4)</span>
</td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T10.3.3.39.7">37.2</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T10.3.3.39.8">60.8</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T10.3.3.39.9">65.4 <span class="ltx_text" id="A1.T10.3.3.39.9.1" style="color:#FF0000;">(+4.60)</span>
</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T10.3.3.39.10">48.9</td>
</tr>
<tr class="ltx_tr" id="A1.T10.3.3.40">
<td class="ltx_td ltx_align_left" id="A1.T10.3.3.40.1">LLaMa 7B (RT)</td>
<td class="ltx_td ltx_align_left" id="A1.T10.3.3.40.2">43.2</td>
<td class="ltx_td ltx_align_left" id="A1.T10.3.3.40.3">45.3 <span class="ltx_text" id="A1.T10.3.3.40.3.1" style="color:#FF0000;">(+2.10)</span>
</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T10.3.3.40.4">41.8</td>
<td class="ltx_td ltx_align_left" id="A1.T10.3.3.40.5">32.1</td>
<td class="ltx_td ltx_align_left" id="A1.T10.3.3.40.6">33.8 <span class="ltx_text" id="A1.T10.3.3.40.6.1" style="color:#FF0000;">(+0.7)</span>
</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T10.3.3.40.7">32.3</td>
<td class="ltx_td ltx_align_left" id="A1.T10.3.3.40.8">58.4</td>
<td class="ltx_td ltx_align_left" id="A1.T10.3.3.40.9">61.3 <span class="ltx_text" id="A1.T10.3.3.40.9.1" style="color:#FF0000;">(+2.90)</span>
</td>
<td class="ltx_td ltx_align_left" id="A1.T10.3.3.40.10">45.4</td>
</tr>
<tr class="ltx_tr" id="A1.T10.3.3.41">
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T10.3.3.41.1">LLaMa 13B (T)</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T10.3.3.41.2">45.8</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T10.3.3.41.3">47.8 <span class="ltx_text" id="A1.T10.3.3.41.3.1" style="color:#FF0000;">(+2.00)</span>
</td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T10.3.3.41.4">50.5</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T10.3.3.41.5">37.5</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T10.3.3.41.6">38.2 <span class="ltx_text" id="A1.T10.3.3.41.6.1" style="color:#FF0000;">(+0.7)</span>
</td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T10.3.3.41.7">40.1</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T10.3.3.41.8">50.3</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T10.3.3.41.9">51.2 <span class="ltx_text" id="A1.T10.3.3.41.9.1" style="color:#FF0000;">(+0.90)</span>
</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T10.3.3.41.10">54.2</td>
</tr>
<tr class="ltx_tr" id="A1.T10.3.3.42">
<td class="ltx_td ltx_align_left" id="A1.T10.3.3.42.1">LLaMa 13B (RT)</td>
<td class="ltx_td ltx_align_left" id="A1.T10.3.3.42.2">41.2</td>
<td class="ltx_td ltx_align_left" id="A1.T10.3.3.42.3">45.2 <span class="ltx_text" id="A1.T10.3.3.42.3.1" style="color:#FF0000;">(+4.00)</span>
</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T10.3.3.42.4">47.3</td>
<td class="ltx_td ltx_align_left" id="A1.T10.3.3.42.5">32.4</td>
<td class="ltx_td ltx_align_left" id="A1.T10.3.3.42.6">36.7 <span class="ltx_text" id="A1.T10.3.3.42.6.1" style="color:#FF0000;">(+3.3)</span>
</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T10.3.3.42.7">42.6</td>
<td class="ltx_td ltx_align_left" id="A1.T10.3.3.42.8">48.2</td>
<td class="ltx_td ltx_align_left" id="A1.T10.3.3.42.9">48.8 <span class="ltx_text" id="A1.T10.3.3.42.9.1" style="color:#FF0000;">(+0.60)</span>
</td>
<td class="ltx_td ltx_align_left" id="A1.T10.3.3.42.10">52.2</td>
</tr>
<tr class="ltx_tr" id="A1.T10.3.3.43">
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T10.3.3.43.1">Mistral 7B (T)</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T10.3.3.43.2">35.4</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T10.3.3.43.3">37.4 <span class="ltx_text" id="A1.T10.3.3.43.3.1" style="color:#FF0000;">(+2.00)</span>
</td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T10.3.3.43.4">42.4</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T10.3.3.43.5">28.8</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T10.3.3.43.6">30.4 <span class="ltx_text" id="A1.T10.3.3.43.6.1" style="color:#FF0000;">(+1.6)</span>
</td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T10.3.3.43.7">36.4</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T10.3.3.43.8">49.2</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T10.3.3.43.9">54.3 <span class="ltx_text" id="A1.T10.3.3.43.9.1" style="color:#FF0000;">(+5.10)</span>
</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T10.3.3.43.10">58.3</td>
</tr>
<tr class="ltx_tr" id="A1.T10.3.3.44">
<td class="ltx_td ltx_align_left" id="A1.T10.3.3.44.1">Mistral 7B (RT)</td>
<td class="ltx_td ltx_align_left" id="A1.T10.3.3.44.2">31.2</td>
<td class="ltx_td ltx_align_left" id="A1.T10.3.3.44.3">35.2 <span class="ltx_text" id="A1.T10.3.3.44.3.1" style="color:#FF0000;">(+4.00)</span>
</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T10.3.3.44.4">37.8</td>
<td class="ltx_td ltx_align_left" id="A1.T10.3.3.44.5">24.5</td>
<td class="ltx_td ltx_align_left" id="A1.T10.3.3.44.6">27.4 <span class="ltx_text" id="A1.T10.3.3.44.6.1" style="color:#FF0000;">(+2.9)</span>
</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T10.3.3.44.7">32.5</td>
<td class="ltx_td ltx_align_left" id="A1.T10.3.3.44.8">44.2</td>
<td class="ltx_td ltx_align_left" id="A1.T10.3.3.44.9">50.4 <span class="ltx_text" id="A1.T10.3.3.44.9.1" style="color:#FF0000;">(+6.20)</span>
</td>
<td class="ltx_td ltx_align_left" id="A1.T10.3.3.44.10">56.3</td>
</tr>
<tr class="ltx_tr" id="A1.T10.3.3.45">
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T10.3.3.45.1">Qwen 7B (T)</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T10.3.3.45.2"><span class="ltx_text ltx_font_bold" id="A1.T10.3.3.45.2.1">45.9</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T10.3.3.45.3">
<span class="ltx_text ltx_font_bold" id="A1.T10.3.3.45.3.1">48.4</span> <span class="ltx_text" id="A1.T10.3.3.45.3.2" style="color:#FF0000;">(+2.50)</span>
</td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T10.3.3.45.4">59.4</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T10.3.3.45.5">38.6</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T10.3.3.45.6">40.2 <span class="ltx_text" id="A1.T10.3.3.45.6.1" style="color:#FF0000;">(+1.6)</span>
</td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T10.3.3.45.7">57.2</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T10.3.3.45.8">51.2</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T10.3.3.45.9">55.8 <span class="ltx_text" id="A1.T10.3.3.45.9.1" style="color:#FF0000;">(+4.60)</span>
</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T10.3.3.45.10">62.3</td>
</tr>
<tr class="ltx_tr" id="A1.T10.3.3.46">
<td class="ltx_td ltx_align_left" id="A1.T10.3.3.46.1">Qwen 7B (RT)</td>
<td class="ltx_td ltx_align_left" id="A1.T10.3.3.46.2">41.2</td>
<td class="ltx_td ltx_align_left" id="A1.T10.3.3.46.3">42.4 <span class="ltx_text" id="A1.T10.3.3.46.3.1" style="color:#FF0000;">(+1.20)</span>
</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T10.3.3.46.4">47.8</td>
<td class="ltx_td ltx_align_left" id="A1.T10.3.3.46.5">34.3</td>
<td class="ltx_td ltx_align_left" id="A1.T10.3.3.46.6">36.4 <span class="ltx_text" id="A1.T10.3.3.46.6.1" style="color:#FF0000;">(+2.1)</span>
</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T10.3.3.46.7">35.3</td>
<td class="ltx_td ltx_align_left" id="A1.T10.3.3.46.8">49.3</td>
<td class="ltx_td ltx_align_left" id="A1.T10.3.3.46.9">50.4 <span class="ltx_text" id="A1.T10.3.3.46.9.1" style="color:#FF0000;">(+1.10)</span>
</td>
<td class="ltx_td ltx_align_left" id="A1.T10.3.3.46.10">47.3</td>
</tr>
<tr class="ltx_tr" id="A1.T10.3.3.47">
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T10.3.3.47.1">Yi-1.5 6B (T)</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T10.3.3.47.2">45.1</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T10.3.3.47.3">47.8 <span class="ltx_text" id="A1.T10.3.3.47.3.1" style="color:#FF0000;">(+2.70)</span>
</td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T10.3.3.47.4">47.9</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T10.3.3.47.5">36.4</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T10.3.3.47.6">38.2 <span class="ltx_text" id="A1.T10.3.3.47.6.1" style="color:#FF0000;">(+1.8)</span>
</td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T10.3.3.47.7">38.2</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T10.3.3.47.8">51.2</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T10.3.3.47.9">53.8 <span class="ltx_text" id="A1.T10.3.3.47.9.1" style="color:#FF0000;">(+2.60)</span>
</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T10.3.3.47.10">52.2</td>
</tr>
<tr class="ltx_tr" id="A1.T10.3.3.48">
<td class="ltx_td ltx_align_left" id="A1.T10.3.3.48.1">Yi-1.5 6B (RT)</td>
<td class="ltx_td ltx_align_left" id="A1.T10.3.3.48.2">43.2</td>
<td class="ltx_td ltx_align_left" id="A1.T10.3.3.48.3">45.3 <span class="ltx_text" id="A1.T10.3.3.48.3.1" style="color:#FF0000;">(+2.10)</span>
</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T10.3.3.48.4">46.3</td>
<td class="ltx_td ltx_align_left" id="A1.T10.3.3.48.5">31.7</td>
<td class="ltx_td ltx_align_left" id="A1.T10.3.3.48.6">33.5 <span class="ltx_text" id="A1.T10.3.3.48.6.1" style="color:#FF0000;">(+1.8)</span>
</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T10.3.3.48.7">34.6</td>
<td class="ltx_td ltx_align_left" id="A1.T10.3.3.48.8">59.4</td>
<td class="ltx_td ltx_align_left" id="A1.T10.3.3.48.9">61.2 <span class="ltx_text" id="A1.T10.3.3.48.9.1" style="color:#FF0000;">(+1.80)</span>
</td>
<td class="ltx_td ltx_align_left" id="A1.T10.3.3.48.10">58.4</td>
</tr>
<tr class="ltx_tr" id="A1.T10.3.3.49">
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T10.3.3.49.1">SciTülu 7B (T)</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T10.3.3.49.2">45.7</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T10.3.3.49.3">48.6 <span class="ltx_text" id="A1.T10.3.3.49.3.1" style="color:#FF0000;">(+2.90)</span>
</td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T10.3.3.49.4">54.3</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T10.3.3.49.5">38.6</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T10.3.3.49.6">40.2 <span class="ltx_text" id="A1.T10.3.3.49.6.1" style="color:#FF0000;">(+1.6)</span>
</td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T10.3.3.49.7">48.5</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T10.3.3.49.8">51.3</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T10.3.3.49.9">52.6 <span class="ltx_text" id="A1.T10.3.3.49.9.1" style="color:#FF0000;">(+1.30)</span>
</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T10.3.3.49.10">54.8</td>
</tr>
<tr class="ltx_tr" id="A1.T10.3.3.50">
<td class="ltx_td ltx_align_left ltx_border_b" id="A1.T10.3.3.50.1">SciTülu 7B (RT)</td>
<td class="ltx_td ltx_align_left ltx_border_b" id="A1.T10.3.3.50.2">41.4</td>
<td class="ltx_td ltx_align_left ltx_border_b" id="A1.T10.3.3.50.3">42.6 <span class="ltx_text" id="A1.T10.3.3.50.3.1" style="color:#FF0000;">(+1.20)</span>
</td>
<td class="ltx_td ltx_align_left ltx_border_b ltx_border_r" id="A1.T10.3.3.50.4">51.4</td>
<td class="ltx_td ltx_align_left ltx_border_b" id="A1.T10.3.3.50.5">34.3</td>
<td class="ltx_td ltx_align_left ltx_border_b" id="A1.T10.3.3.50.6">35.6 <span class="ltx_text" id="A1.T10.3.3.50.6.1" style="color:#FF0000;">(+1.3)</span>
</td>
<td class="ltx_td ltx_align_left ltx_border_b ltx_border_r" id="A1.T10.3.3.50.7">42.3</td>
<td class="ltx_td ltx_align_left ltx_border_b" id="A1.T10.3.3.50.8">49.4</td>
<td class="ltx_td ltx_align_left ltx_border_b" id="A1.T10.3.3.50.9">50.2 <span class="ltx_text" id="A1.T10.3.3.50.9.1" style="color:#FF0000;">(+0.80)</span>
</td>
<td class="ltx_td ltx_align_left ltx_border_b" id="A1.T10.3.3.50.10">51.3</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the performance of different Large Language Models (LLMs) in a fine-grained and coarse-grained classification task of identifying 'lazy thinking' in peer reviews.  The performance is evaluated across three annotation rounds (R1, R2, R3), each using different methodologies. The models' responses were evaluated using two methods: string matching (S.A.) and a GPT-based semantic comparison (G.A.). The table shows the accuracy (Acc) and F1 scores, separating results based on whether the model was provided with only the target sentence ('T'), the target sentence and the review ('RT'), or additional in-context examples ('E').  The results highlight how model performance changes with different approaches and additional training data.
> <details>
> <summary>read the caption</summary>
> Table 10: Performance of LLMs on different rounds of annotation. S.A represents the string-matching evaluator, and G.A represents the GPT-based evaluator. ‘T’ represents prompting with only the target sentence, RT represents the combination of the review and the target sentence. Adding demonstrations to the prompt is represented by ‘E’. R1 represents ‘Round 1’, R2 represents ‘Round 2’, and R3 represents ‘Round 3’ respectively.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="A1.T11.3.3">
<tr class="ltx_tr" id="A1.T11.3.3.4">
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T11.3.3.4.1" rowspan="4"><span class="ltx_text ltx_font_bold" id="A1.T11.3.3.4.1.1">Method</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T11.3.3.4.2" rowspan="4"><span class="ltx_text ltx_font_bold" id="A1.T11.3.3.4.2.1">Models</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" colspan="9" id="A1.T11.3.3.4.3"><span class="ltx_text ltx_font_bold" id="A1.T11.3.3.4.3.1">Coarse-grained</span></td>
</tr>
<tr class="ltx_tr" id="A1.T11.3.3.5">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" colspan="6" id="A1.T11.3.3.5.1"><span class="ltx_text ltx_font_bold" id="A1.T11.3.3.5.1.1">S.A</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" colspan="3" id="A1.T11.3.3.5.2"><span class="ltx_text ltx_font_bold" id="A1.T11.3.3.5.2.1">G.A</span></td>
</tr>
<tr class="ltx_tr" id="A1.T11.3.3.6">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="3" id="A1.T11.3.3.6.1"><span class="ltx_text ltx_font_bold" id="A1.T11.3.3.6.1.1">Acc</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" colspan="3" id="A1.T11.3.3.6.2"><span class="ltx_text ltx_font_bold" id="A1.T11.3.3.6.2.1">F1</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" colspan="3" id="A1.T11.3.3.6.3"><span class="ltx_text ltx_font_bold" id="A1.T11.3.3.6.3.1">Acc</span></td>
</tr>
<tr class="ltx_tr" id="A1.T11.3.3.3">
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T11.3.3.3.4"><span class="ltx_text ltx_font_bold" id="A1.T11.3.3.3.4.1">R1</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T11.1.1.1.1"><span class="ltx_text ltx_font_bold" id="A1.T11.1.1.1.1.1">R2 (<math alttext="\Delta_{R1}" class="ltx_Math" display="inline" id="A1.T11.1.1.1.1.1.m1.1"><semantics id="A1.T11.1.1.1.1.1.m1.1a"><msub id="A1.T11.1.1.1.1.1.m1.1.1" xref="A1.T11.1.1.1.1.1.m1.1.1.cmml"><mi id="A1.T11.1.1.1.1.1.m1.1.1.2" mathvariant="normal" xref="A1.T11.1.1.1.1.1.m1.1.1.2.cmml">Δ</mi><mrow id="A1.T11.1.1.1.1.1.m1.1.1.3" xref="A1.T11.1.1.1.1.1.m1.1.1.3.cmml"><mi id="A1.T11.1.1.1.1.1.m1.1.1.3.2" xref="A1.T11.1.1.1.1.1.m1.1.1.3.2.cmml">R</mi><mo id="A1.T11.1.1.1.1.1.m1.1.1.3.1" xref="A1.T11.1.1.1.1.1.m1.1.1.3.1.cmml">⁢</mo><mn id="A1.T11.1.1.1.1.1.m1.1.1.3.3" xref="A1.T11.1.1.1.1.1.m1.1.1.3.3.cmml">1</mn></mrow></msub><annotation-xml encoding="MathML-Content" id="A1.T11.1.1.1.1.1.m1.1b"><apply id="A1.T11.1.1.1.1.1.m1.1.1.cmml" xref="A1.T11.1.1.1.1.1.m1.1.1"><csymbol cd="ambiguous" id="A1.T11.1.1.1.1.1.m1.1.1.1.cmml" xref="A1.T11.1.1.1.1.1.m1.1.1">subscript</csymbol><ci id="A1.T11.1.1.1.1.1.m1.1.1.2.cmml" xref="A1.T11.1.1.1.1.1.m1.1.1.2">Δ</ci><apply id="A1.T11.1.1.1.1.1.m1.1.1.3.cmml" xref="A1.T11.1.1.1.1.1.m1.1.1.3"><times id="A1.T11.1.1.1.1.1.m1.1.1.3.1.cmml" xref="A1.T11.1.1.1.1.1.m1.1.1.3.1"></times><ci id="A1.T11.1.1.1.1.1.m1.1.1.3.2.cmml" xref="A1.T11.1.1.1.1.1.m1.1.1.3.2">𝑅</ci><cn id="A1.T11.1.1.1.1.1.m1.1.1.3.3.cmml" type="integer" xref="A1.T11.1.1.1.1.1.m1.1.1.3.3">1</cn></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="A1.T11.1.1.1.1.1.m1.1c">\Delta_{R1}</annotation><annotation encoding="application/x-llamapun" id="A1.T11.1.1.1.1.1.m1.1d">roman_Δ start_POSTSUBSCRIPT italic_R 1 end_POSTSUBSCRIPT</annotation></semantics></math>)</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A1.T11.3.3.3.5"><span class="ltx_text ltx_font_bold" id="A1.T11.3.3.3.5.1">R3</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T11.3.3.3.6"><span class="ltx_text ltx_font_bold" id="A1.T11.3.3.3.6.1">R1</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T11.2.2.2.2"><span class="ltx_text ltx_font_bold" id="A1.T11.2.2.2.2.1">R2 (<math alttext="\Delta_{R1}" class="ltx_Math" display="inline" id="A1.T11.2.2.2.2.1.m1.1"><semantics id="A1.T11.2.2.2.2.1.m1.1a"><msub id="A1.T11.2.2.2.2.1.m1.1.1" xref="A1.T11.2.2.2.2.1.m1.1.1.cmml"><mi id="A1.T11.2.2.2.2.1.m1.1.1.2" mathvariant="normal" xref="A1.T11.2.2.2.2.1.m1.1.1.2.cmml">Δ</mi><mrow id="A1.T11.2.2.2.2.1.m1.1.1.3" xref="A1.T11.2.2.2.2.1.m1.1.1.3.cmml"><mi id="A1.T11.2.2.2.2.1.m1.1.1.3.2" xref="A1.T11.2.2.2.2.1.m1.1.1.3.2.cmml">R</mi><mo id="A1.T11.2.2.2.2.1.m1.1.1.3.1" xref="A1.T11.2.2.2.2.1.m1.1.1.3.1.cmml">⁢</mo><mn id="A1.T11.2.2.2.2.1.m1.1.1.3.3" xref="A1.T11.2.2.2.2.1.m1.1.1.3.3.cmml">1</mn></mrow></msub><annotation-xml encoding="MathML-Content" id="A1.T11.2.2.2.2.1.m1.1b"><apply id="A1.T11.2.2.2.2.1.m1.1.1.cmml" xref="A1.T11.2.2.2.2.1.m1.1.1"><csymbol cd="ambiguous" id="A1.T11.2.2.2.2.1.m1.1.1.1.cmml" xref="A1.T11.2.2.2.2.1.m1.1.1">subscript</csymbol><ci id="A1.T11.2.2.2.2.1.m1.1.1.2.cmml" xref="A1.T11.2.2.2.2.1.m1.1.1.2">Δ</ci><apply id="A1.T11.2.2.2.2.1.m1.1.1.3.cmml" xref="A1.T11.2.2.2.2.1.m1.1.1.3"><times id="A1.T11.2.2.2.2.1.m1.1.1.3.1.cmml" xref="A1.T11.2.2.2.2.1.m1.1.1.3.1"></times><ci id="A1.T11.2.2.2.2.1.m1.1.1.3.2.cmml" xref="A1.T11.2.2.2.2.1.m1.1.1.3.2">𝑅</ci><cn id="A1.T11.2.2.2.2.1.m1.1.1.3.3.cmml" type="integer" xref="A1.T11.2.2.2.2.1.m1.1.1.3.3">1</cn></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="A1.T11.2.2.2.2.1.m1.1c">\Delta_{R1}</annotation><annotation encoding="application/x-llamapun" id="A1.T11.2.2.2.2.1.m1.1d">roman_Δ start_POSTSUBSCRIPT italic_R 1 end_POSTSUBSCRIPT</annotation></semantics></math>)</span></td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T11.3.3.3.7"><span class="ltx_text ltx_font_bold" id="A1.T11.3.3.3.7.1">R3</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T11.3.3.3.8"><span class="ltx_text ltx_font_bold" id="A1.T11.3.3.3.8.1">R1</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T11.3.3.3.3"><span class="ltx_text ltx_font_bold" id="A1.T11.3.3.3.3.1">R2 (<math alttext="\Delta_{R1}" class="ltx_Math" display="inline" id="A1.T11.3.3.3.3.1.m1.1"><semantics id="A1.T11.3.3.3.3.1.m1.1a"><msub id="A1.T11.3.3.3.3.1.m1.1.1" xref="A1.T11.3.3.3.3.1.m1.1.1.cmml"><mi id="A1.T11.3.3.3.3.1.m1.1.1.2" mathvariant="normal" xref="A1.T11.3.3.3.3.1.m1.1.1.2.cmml">Δ</mi><mrow id="A1.T11.3.3.3.3.1.m1.1.1.3" xref="A1.T11.3.3.3.3.1.m1.1.1.3.cmml"><mi id="A1.T11.3.3.3.3.1.m1.1.1.3.2" xref="A1.T11.3.3.3.3.1.m1.1.1.3.2.cmml">R</mi><mo id="A1.T11.3.3.3.3.1.m1.1.1.3.1" xref="A1.T11.3.3.3.3.1.m1.1.1.3.1.cmml">⁢</mo><mn id="A1.T11.3.3.3.3.1.m1.1.1.3.3" xref="A1.T11.3.3.3.3.1.m1.1.1.3.3.cmml">1</mn></mrow></msub><annotation-xml encoding="MathML-Content" id="A1.T11.3.3.3.3.1.m1.1b"><apply id="A1.T11.3.3.3.3.1.m1.1.1.cmml" xref="A1.T11.3.3.3.3.1.m1.1.1"><csymbol cd="ambiguous" id="A1.T11.3.3.3.3.1.m1.1.1.1.cmml" xref="A1.T11.3.3.3.3.1.m1.1.1">subscript</csymbol><ci id="A1.T11.3.3.3.3.1.m1.1.1.2.cmml" xref="A1.T11.3.3.3.3.1.m1.1.1.2">Δ</ci><apply id="A1.T11.3.3.3.3.1.m1.1.1.3.cmml" xref="A1.T11.3.3.3.3.1.m1.1.1.3"><times id="A1.T11.3.3.3.3.1.m1.1.1.3.1.cmml" xref="A1.T11.3.3.3.3.1.m1.1.1.3.1"></times><ci id="A1.T11.3.3.3.3.1.m1.1.1.3.2.cmml" xref="A1.T11.3.3.3.3.1.m1.1.1.3.2">𝑅</ci><cn id="A1.T11.3.3.3.3.1.m1.1.1.3.3.cmml" type="integer" xref="A1.T11.3.3.3.3.1.m1.1.1.3.3">1</cn></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="A1.T11.3.3.3.3.1.m1.1c">\Delta_{R1}</annotation><annotation encoding="application/x-llamapun" id="A1.T11.3.3.3.3.1.m1.1d">roman_Δ start_POSTSUBSCRIPT italic_R 1 end_POSTSUBSCRIPT</annotation></semantics></math>)</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T11.3.3.3.9"><span class="ltx_text ltx_font_bold" id="A1.T11.3.3.3.9.1">R3</span></td>
</tr>
<tr class="ltx_tr" id="A1.T11.3.3.7">
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T11.3.3.7.1"><span class="ltx_text ltx_font_smallcaps" id="A1.T11.3.3.7.1.1">Random</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T11.3.3.7.2">-</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T11.3.3.7.3">40.7</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T11.3.3.7.4">40.7 <span class="ltx_text" id="A1.T11.3.3.7.4.1" style="color:#FF0000;">(+0.00)</span>
</td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T11.3.3.7.5">43.3</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T11.3.3.7.6">35.6</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T11.3.3.7.7">35.6 <span class="ltx_text" id="A1.T11.3.3.7.7.1" style="color:#FF0000;">(+0.0)</span>
</td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T11.3.3.7.8">38.2</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T11.3.3.7.9">-</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T11.3.3.7.10">-</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T11.3.3.7.11">-</td>
</tr>
<tr class="ltx_tr" id="A1.T11.3.3.8">
<td class="ltx_td ltx_align_left" id="A1.T11.3.3.8.1"><span class="ltx_text ltx_font_smallcaps" id="A1.T11.3.3.8.1.1">Majority</span></td>
<td class="ltx_td ltx_align_left" id="A1.T11.3.3.8.2">-</td>
<td class="ltx_td ltx_align_left" id="A1.T11.3.3.8.3">51.4</td>
<td class="ltx_td ltx_align_left" id="A1.T11.3.3.8.4">51.4 <span class="ltx_text" id="A1.T11.3.3.8.4.1" style="color:#FF0000;">(+0.00)</span>
</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T11.3.3.8.5">52.3</td>
<td class="ltx_td ltx_align_left" id="A1.T11.3.3.8.6">44.4</td>
<td class="ltx_td ltx_align_left" id="A1.T11.3.3.8.7">48.2 <span class="ltx_text" id="A1.T11.3.3.8.7.1" style="color:#FF0000;">(+3.8)</span>
</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T11.3.3.8.8">49.3</td>
<td class="ltx_td ltx_align_left" id="A1.T11.3.3.8.9">-</td>
<td class="ltx_td ltx_align_left" id="A1.T11.3.3.8.10">-</td>
<td class="ltx_td ltx_align_left" id="A1.T11.3.3.8.11">-</td>
</tr>
<tr class="ltx_tr" id="A1.T11.3.3.9">
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T11.3.3.9.1" rowspan="28"><span class="ltx_text" id="A1.T11.3.3.9.1.1">Zero-Shot</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T11.3.3.9.2">Gemma-1.1 7B (T)</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T11.3.3.9.3">44.3</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T11.3.3.9.4">46.1 <span class="ltx_text" id="A1.T11.3.3.9.4.1" style="color:#FF0000;">(+1.8)</span>
</td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T11.3.3.9.5">55.6</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T11.3.3.9.6">38.7</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T11.3.3.9.7">40.2 <span class="ltx_text" id="A1.T11.3.3.9.7.1" style="color:#FF0000;">(+1.5)</span>
</td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T11.3.3.9.8">45.3</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T11.3.3.9.9">51.1</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T11.3.3.9.10">54.4 <span class="ltx_text" id="A1.T11.3.3.9.10.1" style="color:#FF0000;">(+3.30)</span>
</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T11.3.3.9.11">57.8</td>
</tr>
<tr class="ltx_tr" id="A1.T11.3.3.10">
<td class="ltx_td ltx_align_left" id="A1.T11.3.3.10.1">Gemma-1.1 7B (TE)</td>
<td class="ltx_td ltx_align_left" id="A1.T11.3.3.10.2">-</td>
<td class="ltx_td ltx_align_left" id="A1.T11.3.3.10.3">-</td>
<td class="ltx_td ltx_align_left" id="A1.T11.3.3.10.4">75.6      <span class="ltx_text" id="A1.T11.3.3.10.4.1" style="color:#FF0000;">(+20.0)</span>
</td>
<td class="ltx_td ltx_align_left" id="A1.T11.3.3.10.5">-</td>
<td class="ltx_td ltx_align_left" id="A1.T11.3.3.10.6">-</td>
<td class="ltx_td ltx_align_left" id="A1.T11.3.3.10.7">67.8      <span class="ltx_text" id="A1.T11.3.3.10.7.1" style="color:#FF0000;">(+12.5)</span>
</td>
<td class="ltx_td ltx_align_left" id="A1.T11.3.3.10.8">-</td>
<td class="ltx_td ltx_align_left" id="A1.T11.3.3.10.9">-</td>
<td class="ltx_td ltx_align_left" id="A1.T11.3.3.10.10">88.9 <span class="ltx_text" id="A1.T11.3.3.10.10.1" style="color:#FF0000;">(+31.1)</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T11.3.3.11">
<td class="ltx_td ltx_align_left" id="A1.T11.3.3.11.1">Gemma-1.1 7B (RT)</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T11.3.3.11.2">48.1</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T11.3.3.11.3">50.4 <span class="ltx_text" id="A1.T11.3.3.11.3.1" style="color:#FF0000;">(+2.30)</span>
</td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T11.3.3.11.4">65.6</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T11.3.3.11.5">42.2</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T11.3.3.11.6">45.3 <span class="ltx_text" id="A1.T11.3.3.11.6.1" style="color:#FF0000;">(+3.1)</span>
</td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T11.3.3.11.7">54.2</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T11.3.3.11.8">47.4</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T11.3.3.11.9">49.1 <span class="ltx_text" id="A1.T11.3.3.11.9.1" style="color:#FF0000;">(+1.70)</span>
</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T11.3.3.11.10">65.6</td>
</tr>
<tr class="ltx_tr" id="A1.T11.3.3.12">
<td class="ltx_td ltx_align_left" id="A1.T11.3.3.12.1">Gemma-1.1 7B (RTE)</td>
<td class="ltx_td ltx_align_left" id="A1.T11.3.3.12.2">-</td>
<td class="ltx_td ltx_align_left" id="A1.T11.3.3.12.3">-</td>
<td class="ltx_td ltx_align_left" id="A1.T11.3.3.12.4">71.1      <span class="ltx_text" id="A1.T11.3.3.12.4.1" style="color:#FF0000;">(+5.5)</span>
</td>
<td class="ltx_td ltx_align_left" id="A1.T11.3.3.12.5">-</td>
<td class="ltx_td ltx_align_left" id="A1.T11.3.3.12.6">-</td>
<td class="ltx_td ltx_align_left" id="A1.T11.3.3.12.7">65.4      <span class="ltx_text" id="A1.T11.3.3.12.7.1" style="color:#FF0000;">(+11.2)</span>
</td>
<td class="ltx_td ltx_align_left" id="A1.T11.3.3.12.8">-</td>
<td class="ltx_td ltx_align_left" id="A1.T11.3.3.12.9">-</td>
<td class="ltx_td ltx_align_left" id="A1.T11.3.3.12.10">82.2 <span class="ltx_text" id="A1.T11.3.3.12.10.1" style="color:#FF0000;">(+16.6)</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T11.3.3.13">
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T11.3.3.13.1">LLaMa 7B (T)</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T11.3.3.13.2">57.7</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T11.3.3.13.3">60.0 <span class="ltx_text" id="A1.T11.3.3.13.3.1" style="color:#FF0000;">(+2.30)</span>
</td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T11.3.3.13.4">80.0</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T11.3.3.13.5">52.4</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T11.3.3.13.6">55.3 <span class="ltx_text" id="A1.T11.3.3.13.6.1" style="color:#FF0000;">(+0.9)</span>
</td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T11.3.3.13.7">67.2</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T11.3.3.13.8">70.0</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T11.3.3.13.9">75.0 <span class="ltx_text" id="A1.T11.3.3.13.9.1" style="color:#FF0000;">(+5.00)</span>
</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T11.3.3.13.10">86.1</td>
</tr>
<tr class="ltx_tr" id="A1.T11.3.3.14">
<td class="ltx_td ltx_align_left" id="A1.T11.3.3.14.1">LLaMa 7B (TE)</td>
<td class="ltx_td ltx_align_left" id="A1.T11.3.3.14.2">-</td>
<td class="ltx_td ltx_align_left" id="A1.T11.3.3.14.3">-</td>
<td class="ltx_td ltx_align_left" id="A1.T11.3.3.14.4">84.4      <span class="ltx_text" id="A1.T11.3.3.14.4.1" style="color:#FF0000;">(+4.4)</span>
</td>
<td class="ltx_td ltx_align_left" id="A1.T11.3.3.14.5">-</td>
<td class="ltx_td ltx_align_left" id="A1.T11.3.3.14.6">-</td>
<td class="ltx_td ltx_align_left" id="A1.T11.3.3.14.7">70.3      <span class="ltx_text" id="A1.T11.3.3.14.7.1" style="color:#FF0000;">(+3.1)</span>
</td>
<td class="ltx_td ltx_align_left" id="A1.T11.3.3.14.8">-</td>
<td class="ltx_td ltx_align_left" id="A1.T11.3.3.14.9">-</td>
<td class="ltx_td ltx_align_left" id="A1.T11.3.3.14.10">89.1 <span class="ltx_text" id="A1.T11.3.3.14.10.1" style="color:#FF0000;">(+3.0)</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T11.3.3.15">
<td class="ltx_td ltx_align_left" id="A1.T11.3.3.15.1">LLaMa 7B (RT)</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T11.3.3.15.2">53.3</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T11.3.3.15.3">60.0 <span class="ltx_text" id="A1.T11.3.3.15.3.1" style="color:#FF0000;">(+6.70)</span>
</td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T11.3.3.15.4">73.3</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T11.3.3.15.5">48.4</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T11.3.3.15.6">51.6 <span class="ltx_text" id="A1.T11.3.3.15.6.1" style="color:#FF0000;">(+3.2)</span>
</td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T11.3.3.15.7">58.3</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T11.3.3.15.8">55.1</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T11.3.3.15.9">67.7 <span class="ltx_text" id="A1.T11.3.3.15.9.1" style="color:#FF0000;">(+12.6)</span>
</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T11.3.3.15.10">76.7</td>
</tr>
<tr class="ltx_tr" id="A1.T11.3.3.16">
<td class="ltx_td ltx_align_left" id="A1.T11.3.3.16.1">LLaMa 7B (RTE)</td>
<td class="ltx_td ltx_align_left" id="A1.T11.3.3.16.2">-</td>
<td class="ltx_td ltx_align_left" id="A1.T11.3.3.16.3">-</td>
<td class="ltx_td ltx_align_left" id="A1.T11.3.3.16.4">75.3      <span class="ltx_text" id="A1.T11.3.3.16.4.1" style="color:#FF0000;">(+2.0)</span>
</td>
<td class="ltx_td ltx_align_left" id="A1.T11.3.3.16.5">-</td>
<td class="ltx_td ltx_align_left" id="A1.T11.3.3.16.6">-</td>
<td class="ltx_td ltx_align_left" id="A1.T11.3.3.16.7">60.2      <span class="ltx_text" id="A1.T11.3.3.16.7.1" style="color:#FF0000;">(+1.9)</span>
</td>
<td class="ltx_td ltx_align_left" id="A1.T11.3.3.16.8">-</td>
<td class="ltx_td ltx_align_left" id="A1.T11.3.3.16.9">-</td>
<td class="ltx_td ltx_align_left" id="A1.T11.3.3.16.10">81.1 <span class="ltx_text" id="A1.T11.3.3.16.10.1" style="color:#FF0000;">(+4.4)</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T11.3.3.17">
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T11.3.3.17.1">LLaMa 13B (T)</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T11.3.3.17.2">60.2</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T11.3.3.17.3">62.2 <span class="ltx_text" id="A1.T11.3.3.17.3.1" style="color:#FF0000;">(+2.00)</span>
</td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T11.3.3.17.4">71.2</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T11.3.3.17.5">53.4</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T11.3.3.17.6">55.7</td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T11.3.3.17.7">64.3</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T11.3.3.17.8">73.1</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T11.3.3.17.9">75.4 <span class="ltx_text" id="A1.T11.3.3.17.9.1" style="color:#FF0000;">(+2.30)</span>
</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T11.3.3.17.10">61.1</td>
</tr>
<tr class="ltx_tr" id="A1.T11.3.3.18">
<td class="ltx_td ltx_align_left" id="A1.T11.3.3.18.1">LLaMa 13B (TE)</td>
<td class="ltx_td ltx_align_left" id="A1.T11.3.3.18.2">-</td>
<td class="ltx_td ltx_align_left" id="A1.T11.3.3.18.3">-</td>
<td class="ltx_td ltx_align_left" id="A1.T11.3.3.18.4">73.1      <span class="ltx_text" id="A1.T11.3.3.18.4.1" style="color:#FF0000;">(+1.9)</span>
</td>
<td class="ltx_td ltx_align_left" id="A1.T11.3.3.18.5">-</td>
<td class="ltx_td ltx_align_left" id="A1.T11.3.3.18.6">-</td>
<td class="ltx_td ltx_align_left" id="A1.T11.3.3.18.7">67.2      <span class="ltx_text" id="A1.T11.3.3.18.7.1" style="color:#FF0000;">(+2.9)</span>
</td>
<td class="ltx_td ltx_align_left" id="A1.T11.3.3.18.8">-</td>
<td class="ltx_td ltx_align_left" id="A1.T11.3.3.18.9">-</td>
<td class="ltx_td ltx_align_left" id="A1.T11.3.3.18.10">71.1 <span class="ltx_text" id="A1.T11.3.3.18.10.1" style="color:#FF0000;">(+10.0)</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T11.3.3.19">
<td class="ltx_td ltx_align_left" id="A1.T11.3.3.19.1">LLaMa 13B (RT)</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T11.3.3.19.2">68.6</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T11.3.3.19.3">
<span class="ltx_text ltx_font_bold" id="A1.T11.3.3.19.3.1">70.2</span> <span class="ltx_text" id="A1.T11.3.3.19.3.2" style="color:#FF0000;">(+1.60)</span>
</td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T11.3.3.19.4">68.8</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T11.3.3.19.5">60.2</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T11.3.3.19.6">65.7 <span class="ltx_text" id="A1.T11.3.3.19.6.1" style="color:#FF0000;">(+5.5)</span>
</td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T11.3.3.19.7">58.1</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T11.3.3.19.8">69.4</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T11.3.3.19.9">70.2 <span class="ltx_text" id="A1.T11.3.3.19.9.1" style="color:#FF0000;">(+0.80)</span>
</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T11.3.3.19.10">51.2</td>
</tr>
<tr class="ltx_tr" id="A1.T11.3.3.20">
<td class="ltx_td ltx_align_left" id="A1.T11.3.3.20.1">LLaMa 13B (RTE)</td>
<td class="ltx_td ltx_align_left" id="A1.T11.3.3.20.2">-</td>
<td class="ltx_td ltx_align_left" id="A1.T11.3.3.20.3">-</td>
<td class="ltx_td ltx_align_left" id="A1.T11.3.3.20.4">70.3      <span class="ltx_text" id="A1.T11.3.3.20.4.1" style="color:#FF0000;">(+1.5)</span>
</td>
<td class="ltx_td ltx_align_left" id="A1.T11.3.3.20.5">-</td>
<td class="ltx_td ltx_align_left" id="A1.T11.3.3.20.6">-</td>
<td class="ltx_td ltx_align_left" id="A1.T11.3.3.20.7">62.2      <span class="ltx_text" id="A1.T11.3.3.20.7.1" style="color:#FF0000;">(+4.1)</span>
</td>
<td class="ltx_td ltx_align_left" id="A1.T11.3.3.20.8">-</td>
<td class="ltx_td ltx_align_left" id="A1.T11.3.3.20.9">-</td>
<td class="ltx_td ltx_align_left" id="A1.T11.3.3.20.10">61.1 <span class="ltx_text" id="A1.T11.3.3.20.10.1" style="color:#FF0000;">(+9.9)</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T11.3.3.21">
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T11.3.3.21.1">Mistral 7B (T)</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T11.3.3.21.2">57.8</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T11.3.3.21.3">58.8 <span class="ltx_text" id="A1.T11.3.3.21.3.1" style="color:#FF0000;">(+1.00)</span>
</td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T11.3.3.21.4">74.4</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T11.3.3.21.5">51.2</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T11.3.3.21.6">53.2 <span class="ltx_text" id="A1.T11.3.3.21.6.1" style="color:#FF0000;">(+2.0)</span>
</td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T11.3.3.21.7">65.2</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T11.3.3.21.8">64.8</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T11.3.3.21.9">66.3 <span class="ltx_text" id="A1.T11.3.3.21.9.1" style="color:#FF0000;">(+1.50)</span>
</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T11.3.3.21.10">75.2</td>
</tr>
<tr class="ltx_tr" id="A1.T11.3.3.22">
<td class="ltx_td ltx_align_left" id="A1.T11.3.3.22.1">Mistral 7B (TE)</td>
<td class="ltx_td ltx_align_left" id="A1.T11.3.3.22.2">-</td>
<td class="ltx_td ltx_align_left" id="A1.T11.3.3.22.3">-</td>
<td class="ltx_td ltx_align_left" id="A1.T11.3.3.22.4">86.7      <span class="ltx_text" id="A1.T11.3.3.22.4.1" style="color:#FF0000;">(+4.0)</span>
</td>
<td class="ltx_td ltx_align_left" id="A1.T11.3.3.22.5">-</td>
<td class="ltx_td ltx_align_left" id="A1.T11.3.3.22.6">-</td>
<td class="ltx_td ltx_align_left" id="A1.T11.3.3.22.7">70.2      <span class="ltx_text" id="A1.T11.3.3.22.7.1" style="color:#FF0000;">(+5.0)</span>
</td>
<td class="ltx_td ltx_align_left" id="A1.T11.3.3.22.8">-</td>
<td class="ltx_td ltx_align_left" id="A1.T11.3.3.22.9">-</td>
<td class="ltx_td ltx_align_left" id="A1.T11.3.3.22.10">86.7 <span class="ltx_text" id="A1.T11.3.3.22.10.1" style="color:#FF0000;">(+11.5)</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T11.3.3.23">
<td class="ltx_td ltx_align_left" id="A1.T11.3.3.23.1">Mistral 7B (RT)</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T11.3.3.23.2">55.4</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T11.3.3.23.3">57.4 <span class="ltx_text" id="A1.T11.3.3.23.3.1" style="color:#FF0000;">(+2.00)</span>
</td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T11.3.3.23.4">62.2</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T11.3.3.23.5">48.4</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T11.3.3.23.6">50.2 <span class="ltx_text" id="A1.T11.3.3.23.6.1" style="color:#FF0000;">(+1.8)</span>
</td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T11.3.3.23.7">54.3</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T11.3.3.23.8">53.8</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T11.3.3.23.9">56.0 <span class="ltx_text" id="A1.T11.3.3.23.9.1" style="color:#FF0000;">(+2.20)</span>
</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T11.3.3.23.10">62.2</td>
</tr>
<tr class="ltx_tr" id="A1.T11.3.3.24">
<td class="ltx_td ltx_align_left" id="A1.T11.3.3.24.1">Mistral 7B (RTE)</td>
<td class="ltx_td ltx_align_left" id="A1.T11.3.3.24.2">-</td>
<td class="ltx_td ltx_align_left" id="A1.T11.3.3.24.3">-</td>
<td class="ltx_td ltx_align_left" id="A1.T11.3.3.24.4">68.8      <span class="ltx_text" id="A1.T11.3.3.24.4.1" style="color:#FF0000;">(+6.6)</span>
</td>
<td class="ltx_td ltx_align_left" id="A1.T11.3.3.24.5">-</td>
<td class="ltx_td ltx_align_left" id="A1.T11.3.3.24.6">-</td>
<td class="ltx_td ltx_align_left" id="A1.T11.3.3.24.7">58.4      <span class="ltx_text" id="A1.T11.3.3.24.7.1" style="color:#FF0000;">(+4.1)</span>
</td>
<td class="ltx_td ltx_align_left" id="A1.T11.3.3.24.8">-</td>
<td class="ltx_td ltx_align_left" id="A1.T11.3.3.24.9">-</td>
<td class="ltx_td ltx_align_left" id="A1.T11.3.3.24.10">68.8 <span class="ltx_text" id="A1.T11.3.3.24.10.1" style="color:#FF0000;">(+6.6)</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T11.3.3.25">
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T11.3.3.25.1">Qwen 7B (T)</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T11.3.3.25.2"><span class="ltx_text ltx_font_bold" id="A1.T11.3.3.25.2.1">68.9</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T11.3.3.25.3">
<span class="ltx_text ltx_font_bold" id="A1.T11.3.3.25.3.1">70.4</span> <span class="ltx_text" id="A1.T11.3.3.25.3.2" style="color:#FF0000;">(+1.40)</span>
</td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T11.3.3.25.4">82.7</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T11.3.3.25.5">61.2</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T11.3.3.25.6">63.4 <span class="ltx_text" id="A1.T11.3.3.25.6.1" style="color:#FF0000;">(+2.2)</span>
</td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T11.3.3.25.7">73.2</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T11.3.3.25.8">74.1</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T11.3.3.25.9">76.1 <span class="ltx_text" id="A1.T11.3.3.25.9.1" style="color:#FF0000;">(+1.20)</span>
</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T11.3.3.25.10">82.7</td>
</tr>
<tr class="ltx_tr" id="A1.T11.3.3.26">
<td class="ltx_td ltx_align_left" id="A1.T11.3.3.26.1">Qwen 7B (TE)</td>
<td class="ltx_td ltx_align_left" id="A1.T11.3.3.26.2">-</td>
<td class="ltx_td ltx_align_left" id="A1.T11.3.3.26.3">-</td>
<td class="ltx_td ltx_align_left" id="A1.T11.3.3.26.4">86.7      <span class="ltx_text" id="A1.T11.3.3.26.4.1" style="color:#FF0000;">(+4.0)</span>
</td>
<td class="ltx_td ltx_align_left" id="A1.T11.3.3.26.5">-</td>
<td class="ltx_td ltx_align_left" id="A1.T11.3.3.26.6">-</td>
<td class="ltx_td ltx_align_left" id="A1.T11.3.3.26.7">74.4      <span class="ltx_text" id="A1.T11.3.3.26.7.1" style="color:#FF0000;">(+1.2)</span>
</td>
<td class="ltx_td ltx_align_left" id="A1.T11.3.3.26.8">-</td>
<td class="ltx_td ltx_align_left" id="A1.T11.3.3.26.9">-</td>
<td class="ltx_td ltx_align_left" id="A1.T11.3.3.26.10">86.7 <span class="ltx_text" id="A1.T11.3.3.26.10.1" style="color:#FF0000;">(+4.0)</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T11.3.3.27">
<td class="ltx_td ltx_align_left" id="A1.T11.3.3.27.1">Qwen 7B (RT)</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T11.3.3.27.2">53.3</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T11.3.3.27.3">56.5 <span class="ltx_text" id="A1.T11.3.3.27.3.1" style="color:#FF0000;">(+3.20)</span>
</td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T11.3.3.27.4">60.2</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T11.3.3.27.5">47.1</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T11.3.3.27.6">49.2 <span class="ltx_text" id="A1.T11.3.3.27.6.1" style="color:#FF0000;">(+2.1)</span>
</td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T11.3.3.27.7">51.2</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T11.3.3.27.8">53.3</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T11.3.3.27.9">56.5 <span class="ltx_text" id="A1.T11.3.3.27.9.1" style="color:#FF0000;">(+3.20)</span>
</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T11.3.3.27.10">60.2</td>
</tr>
<tr class="ltx_tr" id="A1.T11.3.3.28">
<td class="ltx_td ltx_align_left" id="A1.T11.3.3.28.1">Qwen 7B (RTE)</td>
<td class="ltx_td ltx_align_left" id="A1.T11.3.3.28.2">-</td>
<td class="ltx_td ltx_align_left" id="A1.T11.3.3.28.3">-</td>
<td class="ltx_td ltx_align_left" id="A1.T11.3.3.28.4">62.2      <span class="ltx_text" id="A1.T11.3.3.28.4.1" style="color:#FF0000;">(+2.0)</span>
</td>
<td class="ltx_td ltx_align_left" id="A1.T11.3.3.28.5">-</td>
<td class="ltx_td ltx_align_left" id="A1.T11.3.3.28.6">-</td>
<td class="ltx_td ltx_align_left" id="A1.T11.3.3.28.7">55.4      <span class="ltx_text" id="A1.T11.3.3.28.7.1" style="color:#FF0000;">(+4.2)</span>
</td>
<td class="ltx_td ltx_align_left" id="A1.T11.3.3.28.8">-</td>
<td class="ltx_td ltx_align_left" id="A1.T11.3.3.28.9">-</td>
<td class="ltx_td ltx_align_left" id="A1.T11.3.3.28.10">62.2 <span class="ltx_text" id="A1.T11.3.3.28.10.1" style="color:#FF0000;">(+2.0)</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T11.3.3.29">
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T11.3.3.29.1">Yi-1.5 6B (T)</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T11.3.3.29.2">64.4</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T11.3.3.29.3">68.7 <span class="ltx_text" id="A1.T11.3.3.29.3.1" style="color:#FF0000;">(+4.3)</span>
</td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T11.3.3.29.4">71.3</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T11.3.3.29.5">62.2</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T11.3.3.29.6">66.6 <span class="ltx_text" id="A1.T11.3.3.29.6.1" style="color:#FF0000;">(+4.4)</span>
</td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T11.3.3.29.7">68.3</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T11.3.3.29.8">71.1</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T11.3.3.29.9">73.4 <span class="ltx_text" id="A1.T11.3.3.29.9.1" style="color:#FF0000;">(+2.3)</span>
</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T11.3.3.29.10">72.3</td>
</tr>
<tr class="ltx_tr" id="A1.T11.3.3.30">
<td class="ltx_td ltx_align_left" id="A1.T11.3.3.30.1">Yi-1.5 6B (TE)</td>
<td class="ltx_td ltx_align_left" id="A1.T11.3.3.30.2">-</td>
<td class="ltx_td ltx_align_left" id="A1.T11.3.3.30.3">-</td>
<td class="ltx_td ltx_align_left" id="A1.T11.3.3.30.4">74.5      <span class="ltx_text" id="A1.T11.3.3.30.4.1" style="color:#FF0000;">(+3.2)</span>
</td>
<td class="ltx_td ltx_align_left" id="A1.T11.3.3.30.5">-</td>
<td class="ltx_td ltx_align_left" id="A1.T11.3.3.30.6">-</td>
<td class="ltx_td ltx_align_left" id="A1.T11.3.3.30.7">72.8      <span class="ltx_text" id="A1.T11.3.3.30.7.1" style="color:#FF0000;">(+4.5)</span>
</td>
<td class="ltx_td ltx_align_left" id="A1.T11.3.3.30.8">-</td>
<td class="ltx_td ltx_align_left" id="A1.T11.3.3.30.9">-</td>
<td class="ltx_td ltx_align_left" id="A1.T11.3.3.30.10">73.8 <span class="ltx_text" id="A1.T11.3.3.30.10.1" style="color:#FF0000;">(+1.5)</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T11.3.3.31">
<td class="ltx_td ltx_align_left" id="A1.T11.3.3.31.1">Yi-1.5 6B (RT)</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T11.3.3.31.2">63.3</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T11.3.3.31.3">68.3 <span class="ltx_text" id="A1.T11.3.3.31.3.1" style="color:#FF0000;">(+5.0)</span>
</td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T11.3.3.31.4">68.1</td>
<td class="ltx_td ltx_border_t" id="A1.T11.3.3.31.5"></td>
<td class="ltx_td ltx_border_t" id="A1.T11.3.3.31.6"></td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T11.3.3.31.7">69.2</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T11.3.3.31.8">65.1</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T11.3.3.31.9">70.4 <span class="ltx_text" id="A1.T11.3.3.31.9.1" style="color:#FF0000;">(+5.30)</span>
</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T11.3.3.31.10">70.1</td>
</tr>
<tr class="ltx_tr" id="A1.T11.3.3.32">
<td class="ltx_td ltx_align_left" id="A1.T11.3.3.32.1">Yi-1.5 6B (RTE)</td>
<td class="ltx_td ltx_align_left" id="A1.T11.3.3.32.2">-</td>
<td class="ltx_td ltx_align_left" id="A1.T11.3.3.32.3">-</td>
<td class="ltx_td ltx_align_left" id="A1.T11.3.3.32.4">70.1      <span class="ltx_text" id="A1.T11.3.3.32.4.1" style="color:#FF0000;">(+2.0)</span>
</td>
<td class="ltx_td ltx_align_left" id="A1.T11.3.3.32.5">-</td>
<td class="ltx_td ltx_align_left" id="A1.T11.3.3.32.6">-</td>
<td class="ltx_td ltx_align_left" id="A1.T11.3.3.32.7">71.6      <span class="ltx_text" id="A1.T11.3.3.32.7.1" style="color:#FF0000;">(+2.4)</span>
</td>
<td class="ltx_td ltx_align_left" id="A1.T11.3.3.32.8">-</td>
<td class="ltx_td ltx_align_left" id="A1.T11.3.3.32.9">-</td>
<td class="ltx_td ltx_align_left" id="A1.T11.3.3.32.10">72.4 <span class="ltx_text" id="A1.T11.3.3.32.10.1" style="color:#FF0000;">(+2.3)</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T11.3.3.33">
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T11.3.3.33.1">SciTülu 7B (T)</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T11.3.3.33.2">57.8</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T11.3.3.33.3">58.3 <span class="ltx_text" id="A1.T11.3.3.33.3.1" style="color:#FF0000;">(+0.50)</span>
</td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T11.3.3.33.4">51.1</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T11.3.3.33.5">51.2</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T11.3.3.33.6">52.6<span class="ltx_text" id="A1.T11.3.3.33.6.1" style="color:#FF0000;">(+1.4)</span>
</td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T11.3.3.33.7">45.3</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T11.3.3.33.8">57.8</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T11.3.3.33.9">58.3 <span class="ltx_text" id="A1.T11.3.3.33.9.1" style="color:#FF0000;">(+0.50)</span>
</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T11.3.3.33.10">52.2</td>
</tr>
<tr class="ltx_tr" id="A1.T11.3.3.34">
<td class="ltx_td ltx_align_left" id="A1.T11.3.3.34.1">SciTülu 7B (TE)</td>
<td class="ltx_td ltx_align_left" id="A1.T11.3.3.34.2">-</td>
<td class="ltx_td ltx_align_left" id="A1.T11.3.3.34.3">-</td>
<td class="ltx_td ltx_align_left" id="A1.T11.3.3.34.4">72.2      <span class="ltx_text" id="A1.T11.3.3.34.4.1" style="color:#FF0000;">(+21.1)</span>
</td>
<td class="ltx_td ltx_align_left" id="A1.T11.3.3.34.5">-</td>
<td class="ltx_td ltx_align_left" id="A1.T11.3.3.34.6">-</td>
<td class="ltx_td ltx_align_left" id="A1.T11.3.3.34.7">64.3      <span class="ltx_text" id="A1.T11.3.3.34.7.1" style="color:#FF0000;">(+19.0)</span>
</td>
<td class="ltx_td ltx_align_left" id="A1.T11.3.3.34.8">-</td>
<td class="ltx_td ltx_align_left" id="A1.T11.3.3.34.9">-</td>
<td class="ltx_td ltx_align_left" id="A1.T11.3.3.34.10">72.2 <span class="ltx_text" id="A1.T11.3.3.34.10.1" style="color:#FF0000;">(+20.0)</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T11.3.3.35">
<td class="ltx_td ltx_align_left" id="A1.T11.3.3.35.1">SciTülu 7B (RT)</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T11.3.3.35.2">55.6</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T11.3.3.35.3">58.7 <span class="ltx_text" id="A1.T11.3.3.35.3.1" style="color:#FF0000;">(+3.10)</span>
</td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T11.3.3.35.4">71.1</td>
<td class="ltx_td ltx_border_t" id="A1.T11.3.3.35.5"></td>
<td class="ltx_td ltx_border_t" id="A1.T11.3.3.35.6"></td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T11.3.3.35.7">65.2</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T11.3.3.35.8">55.6</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T11.3.3.35.9">58.7 <span class="ltx_text" id="A1.T11.3.3.35.9.1" style="color:#FF0000;">(+3.10)</span>
</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T11.3.3.35.10">68.8</td>
</tr>
<tr class="ltx_tr" id="A1.T11.3.3.36">
<td class="ltx_td ltx_align_left" id="A1.T11.3.3.36.1">SciTülu 7B (RTE)</td>
<td class="ltx_td ltx_align_left" id="A1.T11.3.3.36.2">-</td>
<td class="ltx_td ltx_align_left" id="A1.T11.3.3.36.3">-</td>
<td class="ltx_td ltx_nopad_r ltx_align_left" id="A1.T11.3.3.36.4">
<span class="ltx_text ltx_font_bold" id="A1.T11.3.3.36.4.1">88.8</span>      <span class="ltx_text" id="A1.T11.3.3.36.4.2" style="color:#FF0000;">(+17.7)</span>
</td>
<td class="ltx_td ltx_align_left" id="A1.T11.3.3.36.5">-</td>
<td class="ltx_td ltx_align_left" id="A1.T11.3.3.36.6">-</td>
<td class="ltx_td ltx_align_left" id="A1.T11.3.3.36.7">76.4      <span class="ltx_text" id="A1.T11.3.3.36.7.1" style="color:#FF0000;">(+11.2)</span>
</td>
<td class="ltx_td ltx_align_left" id="A1.T11.3.3.36.8">-</td>
<td class="ltx_td ltx_align_left" id="A1.T11.3.3.36.9">-</td>
<td class="ltx_td ltx_align_left" id="A1.T11.3.3.36.10">
<span class="ltx_text ltx_font_bold" id="A1.T11.3.3.36.10.1">91.1</span> <span class="ltx_text" id="A1.T11.3.3.36.10.2" style="color:#FF0000;">(+22.3)</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T11.3.3.37">
<td class="ltx_td ltx_align_left ltx_border_b ltx_border_t" id="A1.T11.3.3.37.1" rowspan="14"><span class="ltx_text" id="A1.T11.3.3.37.1.1">Instruction Tuned</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T11.3.3.37.2">Gemma-1.1 7B (T)</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T11.3.3.37.3">57.8</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T11.3.3.37.4">61.4 <span class="ltx_text" id="A1.T11.3.3.37.4.1" style="color:#FF0000;">(+3.60)</span>
</td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T11.3.3.37.5">81.2</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T11.3.3.37.6">50.2</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T11.3.3.37.7">54.6 <span class="ltx_text" id="A1.T11.3.3.37.7.1" style="color:#FF0000;">(+4.4)</span>
</td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T11.3.3.37.8">75.3</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T11.3.3.37.9">55.7</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T11.3.3.37.10">58.8 <span class="ltx_text" id="A1.T11.3.3.37.10.1" style="color:#FF0000;">(+3.10)</span>
</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T11.3.3.37.11">91.2</td>
</tr>
<tr class="ltx_tr" id="A1.T11.3.3.38">
<td class="ltx_td ltx_align_left" id="A1.T11.3.3.38.1">Gemma-1.1 7B (RT)</td>
<td class="ltx_td ltx_align_left" id="A1.T11.3.3.38.2">55.6</td>
<td class="ltx_td ltx_align_left" id="A1.T11.3.3.38.3">59.4 <span class="ltx_text" id="A1.T11.3.3.38.3.1" style="color:#FF0000;">(+3.80)</span>
</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T11.3.3.38.4">78.8</td>
<td class="ltx_td ltx_align_left" id="A1.T11.3.3.38.5">53.2</td>
<td class="ltx_td ltx_align_left" id="A1.T11.3.3.38.6">52.5 <span class="ltx_text" id="A1.T11.3.3.38.6.1" style="color:#0000FF;">(-0.7)</span>
</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T11.3.3.38.7">71.5</td>
<td class="ltx_td ltx_align_left" id="A1.T11.3.3.38.8">54.9</td>
<td class="ltx_td ltx_align_left" id="A1.T11.3.3.38.9">56.6 <span class="ltx_text" id="A1.T11.3.3.38.9.1" style="color:#FF0000;">(+1.70)</span>
</td>
<td class="ltx_td ltx_align_left" id="A1.T11.3.3.38.10">89.2</td>
</tr>
<tr class="ltx_tr" id="A1.T11.3.3.39">
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T11.3.3.39.1">LLaMa 7B (T)</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T11.3.3.39.2">62.7</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T11.3.3.39.3">65.4 <span class="ltx_text" id="A1.T11.3.3.39.3.1" style="color:#FF0000;">(+2.70)</span>
</td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T11.3.3.39.4">85.4</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T11.3.3.39.5">52.1</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T11.3.3.39.6">56.3 <span class="ltx_text" id="A1.T11.3.3.39.6.1" style="color:#FF0000;">(+4.2)</span>
</td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T11.3.3.39.7">68.3</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T11.3.3.39.8">75.4</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T11.3.3.39.9">79.3 <span class="ltx_text" id="A1.T11.3.3.39.9.1" style="color:#FF0000;">(+3.90)</span>
</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T11.3.3.39.10">91.1</td>
</tr>
<tr class="ltx_tr" id="A1.T11.3.3.40">
<td class="ltx_td ltx_align_left" id="A1.T11.3.3.40.1">LLaMa 7B (RT)</td>
<td class="ltx_td ltx_align_left" id="A1.T11.3.3.40.2">61.2</td>
<td class="ltx_td ltx_align_left" id="A1.T11.3.3.40.3">63.1 <span class="ltx_text" id="A1.T11.3.3.40.3.1" style="color:#FF0000;">(+1.90)</span>
</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T11.3.3.40.4">81.3</td>
<td class="ltx_td ltx_align_left" id="A1.T11.3.3.40.5">55.4</td>
<td class="ltx_td ltx_align_left" id="A1.T11.3.3.40.6">57.4 <span class="ltx_text" id="A1.T11.3.3.40.6.1" style="color:#FF0000;">(+2.0)</span>
</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T11.3.3.40.7">65.2</td>
<td class="ltx_td ltx_align_left" id="A1.T11.3.3.40.8">71.3</td>
<td class="ltx_td ltx_align_left" id="A1.T11.3.3.40.9">77.2 <span class="ltx_text" id="A1.T11.3.3.40.9.1" style="color:#FF0000;">(+5.90)</span>
</td>
<td class="ltx_td ltx_align_left" id="A1.T11.3.3.40.10">88.6</td>
</tr>
<tr class="ltx_tr" id="A1.T11.3.3.41">
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T11.3.3.41.1">LLaMa 13B (T)</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T11.3.3.41.2">74.3</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T11.3.3.41.3">74.6 <span class="ltx_text" id="A1.T11.3.3.41.3.1" style="color:#FF0000;">(+0.30)</span>
</td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T11.3.3.41.4">75.3</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T11.3.3.41.5">65.3</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T11.3.3.41.6">67.2 <span class="ltx_text" id="A1.T11.3.3.41.6.1" style="color:#FF0000;">(+1.9)</span>
</td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T11.3.3.41.7">69.1</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T11.3.3.41.8">75.2</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T11.3.3.41.9">77.8 <span class="ltx_text" id="A1.T11.3.3.41.9.1" style="color:#FF0000;">(+2.60)</span>
</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T11.3.3.41.10">75.2</td>
</tr>
<tr class="ltx_tr" id="A1.T11.3.3.42">
<td class="ltx_td ltx_align_left" id="A1.T11.3.3.42.1">LLaMa 13B (RT)</td>
<td class="ltx_td ltx_align_left" id="A1.T11.3.3.42.2">70.2</td>
<td class="ltx_td ltx_align_left" id="A1.T11.3.3.42.3">71.8 <span class="ltx_text" id="A1.T11.3.3.42.3.1" style="color:#FF0000;">(+1.60)</span>
</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T11.3.3.42.4">73.3</td>
<td class="ltx_td ltx_align_left" id="A1.T11.3.3.42.5">62.4</td>
<td class="ltx_td ltx_align_left" id="A1.T11.3.3.42.6">63.7 <span class="ltx_text" id="A1.T11.3.3.42.6.1" style="color:#FF0000;">(+1.3)</span>
</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T11.3.3.42.7">65.9</td>
<td class="ltx_td ltx_align_left" id="A1.T11.3.3.42.8">71.2</td>
<td class="ltx_td ltx_align_left" id="A1.T11.3.3.42.9">72.3 <span class="ltx_text" id="A1.T11.3.3.42.9.1" style="color:#FF0000;">(+1.10)</span>
</td>
<td class="ltx_td ltx_align_left" id="A1.T11.3.3.42.10">74.2</td>
</tr>
<tr class="ltx_tr" id="A1.T11.3.3.43">
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T11.3.3.43.1">Mistral 7B (T)</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T11.3.3.43.2">60.2</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T11.3.3.43.3">62.2 <span class="ltx_text" id="A1.T11.3.3.43.3.1" style="color:#FF0000;">(+2.00)</span>
</td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T11.3.3.43.4">86.4</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T11.3.3.43.5">54.6</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T11.3.3.43.6">56.9 <span class="ltx_text" id="A1.T11.3.3.43.6.1" style="color:#FF0000;">(+2.3)</span>
</td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T11.3.3.43.7">68.4</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T11.3.3.43.8">70.2</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T11.3.3.43.9">74.3 <span class="ltx_text" id="A1.T11.3.3.43.9.1" style="color:#FF0000;">(+4.10)</span>
</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T11.3.3.43.10">88.1</td>
</tr>
<tr class="ltx_tr" id="A1.T11.3.3.44">
<td class="ltx_td ltx_align_left" id="A1.T11.3.3.44.1">Mistral 7B (RT)</td>
<td class="ltx_td ltx_align_left" id="A1.T11.3.3.44.2">65.3</td>
<td class="ltx_td ltx_align_left" id="A1.T11.3.3.44.3">68.2 <span class="ltx_text" id="A1.T11.3.3.44.3.1" style="color:#FF0000;">(+2.90)</span>
</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T11.3.3.44.4">88.2</td>
<td class="ltx_td ltx_align_left" id="A1.T11.3.3.44.5">57.2</td>
<td class="ltx_td ltx_align_left" id="A1.T11.3.3.44.6">59.4 <span class="ltx_text" id="A1.T11.3.3.44.6.1" style="color:#FF0000;">(+2.2)</span>
</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T11.3.3.44.7">75.3</td>
<td class="ltx_td ltx_align_left" id="A1.T11.3.3.44.8">68.2</td>
<td class="ltx_td ltx_align_left" id="A1.T11.3.3.44.9">70.2 <span class="ltx_text" id="A1.T11.3.3.44.9.1" style="color:#FF0000;">(+2.00)</span>
</td>
<td class="ltx_td ltx_align_left" id="A1.T11.3.3.44.10">89.2</td>
</tr>
<tr class="ltx_tr" id="A1.T11.3.3.45">
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T11.3.3.45.1">Qwen 7B (T)</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T11.3.3.45.2"><span class="ltx_text ltx_font_bold" id="A1.T11.3.3.45.2.1">75.4</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T11.3.3.45.3">
<span class="ltx_text ltx_font_bold" id="A1.T11.3.3.45.3.1">76.3</span> <span class="ltx_text" id="A1.T11.3.3.45.3.2" style="color:#FF0000;">(+0.90)</span>
</td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T11.3.3.45.4">88.4</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T11.3.3.45.5">68.2</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T11.3.3.45.6">69.0 <span class="ltx_text" id="A1.T11.3.3.45.6.1" style="color:#FF0000;">(+0.8)</span>
</td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T11.3.3.45.7">76.2</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T11.3.3.45.8">74.8</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T11.3.3.45.9">76.2 <span class="ltx_text" id="A1.T11.3.3.45.9.1" style="color:#FF0000;">(+1.40)</span>
</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T11.3.3.45.10">89.4</td>
</tr>
<tr class="ltx_tr" id="A1.T11.3.3.46">
<td class="ltx_td ltx_align_left" id="A1.T11.3.3.46.1">Qwen 7B (RT)</td>
<td class="ltx_td ltx_align_left" id="A1.T11.3.3.46.2">73.2</td>
<td class="ltx_td ltx_align_left" id="A1.T11.3.3.46.3">74.1 <span class="ltx_text" id="A1.T11.3.3.46.3.1" style="color:#FF0000;">(+0.90)</span>
</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T11.3.3.46.4">86.3</td>
<td class="ltx_td ltx_align_left" id="A1.T11.3.3.46.5">65.1</td>
<td class="ltx_td ltx_align_left" id="A1.T11.3.3.46.6">68.2 <span class="ltx_text" id="A1.T11.3.3.46.6.1" style="color:#FF0000;">(+3.1)</span>
</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T11.3.3.46.7">74.2</td>
<td class="ltx_td ltx_align_left" id="A1.T11.3.3.46.8">72.8</td>
<td class="ltx_td ltx_align_left" id="A1.T11.3.3.46.9">74.0 <span class="ltx_text" id="A1.T11.3.3.46.9.1" style="color:#FF0000;">(+1.20)</span>
</td>
<td class="ltx_td ltx_align_left" id="A1.T11.3.3.46.10">86.2</td>
</tr>
<tr class="ltx_tr" id="A1.T11.3.3.47">
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T11.3.3.47.1">Yi-1.5 6B (T)</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T11.3.3.47.2">69.5</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T11.3.3.47.3">74.2 <span class="ltx_text" id="A1.T11.3.3.47.3.1" style="color:#FF0000;">(+5.30)</span>
</td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T11.3.3.47.4">78.4</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T11.3.3.47.5">68.2</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T11.3.3.47.6">72.1 <span class="ltx_text" id="A1.T11.3.3.47.6.1" style="color:#FF0000;">(+3.9)</span>
</td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T11.3.3.47.7">74.1</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T11.3.3.47.8">72.3</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T11.3.3.47.9">75.8 <span class="ltx_text" id="A1.T11.3.3.47.9.1" style="color:#FF0000;">(+3.50)</span>
</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T11.3.3.47.10">79.3</td>
</tr>
<tr class="ltx_tr" id="A1.T11.3.3.48">
<td class="ltx_td ltx_align_left" id="A1.T11.3.3.48.1">Yi-1.5 6B (RT)</td>
<td class="ltx_td ltx_align_left" id="A1.T11.3.3.48.2">67.2</td>
<td class="ltx_td ltx_align_left" id="A1.T11.3.3.48.3">69.4 <span class="ltx_text" id="A1.T11.3.3.48.3.1" style="color:#FF0000;">(+2.20)</span>
</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T11.3.3.48.4">73.2</td>
<td class="ltx_td ltx_align_left" id="A1.T11.3.3.48.5">66.2</td>
<td class="ltx_td ltx_align_left" id="A1.T11.3.3.48.6">70.1 <span class="ltx_text" id="A1.T11.3.3.48.6.1" style="color:#FF0000;">(+3.9)</span>
</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T11.3.3.48.7">74.1</td>
<td class="ltx_td ltx_align_left" id="A1.T11.3.3.48.8">69.3</td>
<td class="ltx_td ltx_align_left" id="A1.T11.3.3.48.9">72.2 <span class="ltx_text" id="A1.T11.3.3.48.9.1" style="color:#FF0000;">(+2.90)</span>
</td>
<td class="ltx_td ltx_align_left" id="A1.T11.3.3.48.10">75.2</td>
</tr>
<tr class="ltx_tr" id="A1.T11.3.3.49">
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T11.3.3.49.1">SciTülu 7B (T)</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T11.3.3.49.2">66.3</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T11.3.3.49.3">68.4 <span class="ltx_text" id="A1.T11.3.3.49.3.1" style="color:#FF0000;">(+2.10)</span>
</td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T11.3.3.49.4"><span class="ltx_text ltx_font_bold" id="A1.T11.3.3.49.4.1">91.2</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T11.3.3.49.5">58.1</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T11.3.3.49.6">60.2 <span class="ltx_text" id="A1.T11.3.3.49.6.1" style="color:#FF0000;">(+2.1)</span>
</td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T11.3.3.49.7">80.3</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T11.3.3.49.8"><span class="ltx_text ltx_font_bold" id="A1.T11.3.3.49.8.1">76.8</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T11.3.3.49.9">
<span class="ltx_text ltx_font_bold" id="A1.T11.3.3.49.9.1">78.8</span> <span class="ltx_text" id="A1.T11.3.3.49.9.2" style="color:#FF0000;">(+2.00)</span>
</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T11.3.3.49.10"><span class="ltx_text ltx_font_bold" id="A1.T11.3.3.49.10.1">92.3</span></td>
</tr>
<tr class="ltx_tr" id="A1.T11.3.3.50">
<td class="ltx_td ltx_align_left ltx_border_b" id="A1.T11.3.3.50.1">SciTülu 7B (RT)</td>
<td class="ltx_td ltx_align_left ltx_border_b" id="A1.T11.3.3.50.2">62.4</td>
<td class="ltx_td ltx_align_left ltx_border_b" id="A1.T11.3.3.50.3">65.6 <span class="ltx_text" id="A1.T11.3.3.50.3.1" style="color:#FF0000;">(+3.20)</span>
</td>
<td class="ltx_td ltx_align_left ltx_border_b ltx_border_r" id="A1.T11.3.3.50.4">87.2</td>
<td class="ltx_td ltx_align_left ltx_border_b" id="A1.T11.3.3.50.5">56.1</td>
<td class="ltx_td ltx_align_left ltx_border_b" id="A1.T11.3.3.50.6">58.1 <span class="ltx_text" id="A1.T11.3.3.50.6.1" style="color:#FF0000;">(+2.0)</span>
</td>
<td class="ltx_td ltx_align_left ltx_border_b ltx_border_r" id="A1.T11.3.3.50.7">76.1</td>
<td class="ltx_td ltx_align_left ltx_border_b" id="A1.T11.3.3.50.8">72.3</td>
<td class="ltx_td ltx_align_left ltx_border_b" id="A1.T11.3.3.50.9">73.3 <span class="ltx_text" id="A1.T11.3.3.50.9.1" style="color:#FF0000;">(+1.00)</span>
</td>
<td class="ltx_td ltx_align_left ltx_border_b" id="A1.T11.3.3.50.10">89.9</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the performance of various Large Language Models (LLMs) on a coarse-grained classification task of detecting lazy thinking in peer reviews.  The models were evaluated across three annotation rounds (R1, R2, R3), using two different prompting methods:  using only the target sentence ('T') or using both the target sentence and the full review ('RT').  For each round and prompting method, the performance is measured by both a string-matching evaluator (S.A.) and a GPT-based evaluator (G.A.).  The inclusion of demonstrations ('E') in the prompt is also examined.  The table allows for comparison of model performance across different rounds, prompting strategies, and evaluation methods, highlighting the impact of these factors on the accuracy of lazy thinking detection.
> <details>
> <summary>read the caption</summary>
> Table 11: Performance of LLMs on different rounds of annotation for the coarse classification task. S.A represents the string-matching evaluator, and G.A represents the GPT-based evaluator. ‘T’ represents prompting with only the target sentence, RT represents the combination of the review and the target sentence. Adding demonstrations to the prompt is represented by ‘E’. R1, R2 and R3 represent ‘Round 1’, ‘Round 2’, and ‘Round 3’ respectively.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="A1.T12.167.167">
<tr class="ltx_tr" id="A1.T12.167.167.168">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T12.167.167.168.1" rowspan="2"><span class="ltx_text ltx_font_bold" id="A1.T12.167.167.168.1.1">Method</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A1.T12.167.167.168.2" rowspan="2"><span class="ltx_text ltx_font_bold" id="A1.T12.167.167.168.2.1">Mode</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A1.T12.167.167.168.3" rowspan="2"><span class="ltx_text ltx_font_bold" id="A1.T12.167.167.168.3.1">Mix</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" colspan="2" id="A1.T12.167.167.168.4"><span class="ltx_text ltx_font_bold" id="A1.T12.167.167.168.4.1">Gemma-1.1 7B</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" colspan="2" id="A1.T12.167.167.168.5"><span class="ltx_text ltx_font_bold" id="A1.T12.167.167.168.5.1">LLaMa 7B</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" colspan="2" id="A1.T12.167.167.168.6"><span class="ltx_text ltx_font_bold" id="A1.T12.167.167.168.6.1">LLaMa 13B</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" colspan="2" id="A1.T12.167.167.168.7"><span class="ltx_text ltx_font_bold" id="A1.T12.167.167.168.7.1">Mistral 7B</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" colspan="2" id="A1.T12.167.167.168.8"><span class="ltx_text ltx_font_bold" id="A1.T12.167.167.168.8.1">Qwen 7B</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" colspan="2" id="A1.T12.167.167.168.9"><span class="ltx_text ltx_font_bold" id="A1.T12.167.167.168.9.1">Yi-1.5 6B</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" colspan="2" id="A1.T12.167.167.168.10"><span class="ltx_text ltx_font_bold" id="A1.T12.167.167.168.10.1">SciTülü 7B</span></td>
</tr>
<tr class="ltx_tr" id="A1.T12.167.167.169">
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T12.167.167.169.1">S</td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T12.167.167.169.2">G</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T12.167.167.169.3">S</td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T12.167.167.169.4">G</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T12.167.167.169.5">S</td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T12.167.167.169.6">G</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T12.167.167.169.7">S</td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T12.167.167.169.8">G</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T12.167.167.169.9">S</td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T12.167.167.169.10">G</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T12.167.167.169.11">S</td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T12.167.167.169.12">G</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T12.167.167.169.13">S</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T12.167.167.169.14">G</td>
</tr>
<tr class="ltx_tr" id="A1.T12.14.14.14">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T12.14.14.14.15" rowspan="2"><span class="ltx_text" id="A1.T12.14.14.14.15.1">Zero-shot</span></td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T12.14.14.14.16">T</td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T12.14.14.14.17">-</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T12.1.1.1.1">18.1<sub class="ltx_sub" id="A1.T12.1.1.1.1.1"><span class="ltx_text ltx_font_italic" id="A1.T12.1.1.1.1.1.1">3.2</span></sub>
</td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T12.2.2.2.2">23.0<sub class="ltx_sub" id="A1.T12.2.2.2.2.1"><span class="ltx_text ltx_font_italic" id="A1.T12.2.2.2.2.1.1">4.6</span></sub>
</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T12.3.3.3.3">14.2<sub class="ltx_sub" id="A1.T12.3.3.3.3.1"><span class="ltx_text ltx_font_italic" id="A1.T12.3.3.3.3.1.1">4.5</span></sub>
</td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T12.4.4.4.4">24.5<sub class="ltx_sub" id="A1.T12.4.4.4.4.1"><span class="ltx_text ltx_font_italic" id="A1.T12.4.4.4.4.1.1">5.6</span></sub>
</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T12.5.5.5.5">17.8<sub class="ltx_sub" id="A1.T12.5.5.5.5.1"><span class="ltx_text ltx_font_italic" id="A1.T12.5.5.5.5.1.1">2.9</span></sub>
</td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T12.6.6.6.6">26.5<sub class="ltx_sub" id="A1.T12.6.6.6.6.1"><span class="ltx_text ltx_font_italic" id="A1.T12.6.6.6.6.1.1">3.4</span></sub>
</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T12.7.7.7.7">21.0<sub class="ltx_sub" id="A1.T12.7.7.7.7.1"><span class="ltx_text ltx_font_italic" id="A1.T12.7.7.7.7.1.1">4.6</span></sub>
</td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T12.8.8.8.8">23.0<sub class="ltx_sub" id="A1.T12.8.8.8.8.1"><span class="ltx_text ltx_font_italic" id="A1.T12.8.8.8.8.1.1">3.8</span></sub>
</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T12.9.9.9.9">21.1<sub class="ltx_sub" id="A1.T12.9.9.9.9.1"><span class="ltx_text ltx_font_italic" id="A1.T12.9.9.9.9.1.1">1.1</span></sub>
</td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T12.10.10.10.10">24.5<sub class="ltx_sub" id="A1.T12.10.10.10.10.1"><span class="ltx_text ltx_font_italic" id="A1.T12.10.10.10.10.1.1">1.1</span></sub>
</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T12.11.11.11.11">24.2<sub class="ltx_sub" id="A1.T12.11.11.11.11.1"><span class="ltx_text ltx_font_italic" id="A1.T12.11.11.11.11.1.1">1.1</span></sub>
</td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T12.12.12.12.12">30.5<sub class="ltx_sub" id="A1.T12.12.12.12.12.1"><span class="ltx_text ltx_font_italic" id="A1.T12.12.12.12.12.1.1">1.2</span></sub>
</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T12.13.13.13.13">11.1<sub class="ltx_sub" id="A1.T12.13.13.13.13.1"><span class="ltx_text ltx_font_italic" id="A1.T12.13.13.13.13.1.1">2.2</span></sub>
</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T12.14.14.14.14">14.0<sub class="ltx_sub" id="A1.T12.14.14.14.14.1"><span class="ltx_text ltx_font_italic" id="A1.T12.14.14.14.14.1.1">2.4</span></sub>
</td>
</tr>
<tr class="ltx_tr" id="A1.T12.28.28.28">
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T12.28.28.28.15">TE</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T12.28.28.28.16">-</td>
<td class="ltx_td ltx_align_left" id="A1.T12.15.15.15.1">22.2<sub class="ltx_sub" id="A1.T12.15.15.15.1.1"><span class="ltx_text ltx_font_italic" id="A1.T12.15.15.15.1.1.1">3.4</span></sub>
</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T12.16.16.16.2">27.1<sub class="ltx_sub" id="A1.T12.16.16.16.2.1"><span class="ltx_text ltx_font_italic" id="A1.T12.16.16.16.2.1.1">3.4</span></sub>
</td>
<td class="ltx_td ltx_align_left" id="A1.T12.17.17.17.3">22.2<sub class="ltx_sub" id="A1.T12.17.17.17.3.1"><span class="ltx_text ltx_font_italic" id="A1.T12.17.17.17.3.1.1">5.4</span></sub>
</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T12.18.18.18.4">28.4<sub class="ltx_sub" id="A1.T12.18.18.18.4.1"><span class="ltx_text ltx_font_italic" id="A1.T12.18.18.18.4.1.1">5.8</span></sub>
</td>
<td class="ltx_td ltx_align_left" id="A1.T12.19.19.19.5">21.4<sub class="ltx_sub" id="A1.T12.19.19.19.5.1"><span class="ltx_text ltx_font_italic" id="A1.T12.19.19.19.5.1.1">2.2</span></sub>
</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T12.20.20.20.6">29.3<sub class="ltx_sub" id="A1.T12.20.20.20.6.1"><span class="ltx_text ltx_font_italic" id="A1.T12.20.20.20.6.1.1">2.4</span></sub>
</td>
<td class="ltx_td ltx_align_left" id="A1.T12.21.21.21.7">18.6<sub class="ltx_sub" id="A1.T12.21.21.21.7.1"><span class="ltx_text ltx_font_italic" id="A1.T12.21.21.21.7.1.1">4.7</span></sub>
</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T12.22.22.22.8">25.5<sub class="ltx_sub" id="A1.T12.22.22.22.8.1"><span class="ltx_text ltx_font_italic" id="A1.T12.22.22.22.8.1.1">4.9</span></sub>
</td>
<td class="ltx_td ltx_align_left" id="A1.T12.23.23.23.9">22.2<sub class="ltx_sub" id="A1.T12.23.23.23.9.1"><span class="ltx_text ltx_font_italic" id="A1.T12.23.23.23.9.1.1">1.1</span></sub>
</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T12.24.24.24.10">28.2<sub class="ltx_sub" id="A1.T12.24.24.24.10.1"><span class="ltx_text ltx_font_italic" id="A1.T12.24.24.24.10.1.1">1.5</span></sub>
</td>
<td class="ltx_td ltx_align_left" id="A1.T12.25.25.25.11">29.1<sub class="ltx_sub" id="A1.T12.25.25.25.11.1"><span class="ltx_text ltx_font_italic" id="A1.T12.25.25.25.11.1.1">1.8</span></sub>
</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T12.26.26.26.12">36.5<sub class="ltx_sub" id="A1.T12.26.26.26.12.1"><span class="ltx_text ltx_font_italic" id="A1.T12.26.26.26.12.1.1">2.0</span></sub>
</td>
<td class="ltx_td ltx_align_left" id="A1.T12.27.27.27.13">11.2<sub class="ltx_sub" id="A1.T12.27.27.27.13.1"><span class="ltx_text ltx_font_italic" id="A1.T12.27.27.27.13.1.1">2.4</span></sub>
</td>
<td class="ltx_td ltx_align_left" id="A1.T12.28.28.28.14">20.6<sub class="ltx_sub" id="A1.T12.28.28.28.14.1"><span class="ltx_text ltx_font_italic" id="A1.T12.28.28.28.14.1.1">2.6</span></sub>
</td>
</tr>
<tr class="ltx_tr" id="A1.T12.167.167.170">
<td class="ltx_td ltx_border_r" id="A1.T12.167.167.170.1"></td>
<td class="ltx_td ltx_border_r" id="A1.T12.167.167.170.2"></td>
<td class="ltx_td ltx_border_r" id="A1.T12.167.167.170.3"></td>
<td class="ltx_td ltx_align_left" id="A1.T12.167.167.170.4"><span class="ltx_text" id="A1.T12.167.167.170.4.1" style="color:#FF0000;">(+4.1)</span></td>
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T12.167.167.170.5"><span class="ltx_text" id="A1.T12.167.167.170.5.1" style="color:#FF0000;">(+4.1)</span></td>
<td class="ltx_td ltx_align_left" id="A1.T12.167.167.170.6"><span class="ltx_text" id="A1.T12.167.167.170.6.1" style="color:#FF0000;">(+8.0)</span></td>
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T12.167.167.170.7"><span class="ltx_text" id="A1.T12.167.167.170.7.1" style="color:#FF0000;">(+3.9)</span></td>
<td class="ltx_td ltx_align_left" id="A1.T12.167.167.170.8"><span class="ltx_text" id="A1.T12.167.167.170.8.1" style="color:#FF0000;">(+3.6)</span></td>
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T12.167.167.170.9"><span class="ltx_text" id="A1.T12.167.167.170.9.1" style="color:#FF0000;">(+2.8)</span></td>
<td class="ltx_td ltx_align_left" id="A1.T12.167.167.170.10"><span class="ltx_text" id="A1.T12.167.167.170.10.1" style="color:#FF0000;">(+2.4)</span></td>
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T12.167.167.170.11"><span class="ltx_text" id="A1.T12.167.167.170.11.1" style="color:#FF0000;">(+2.5)</span></td>
<td class="ltx_td ltx_align_left" id="A1.T12.167.167.170.12"><span class="ltx_text" id="A1.T12.167.167.170.12.1" style="color:#FF0000;">(+1.1)</span></td>
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T12.167.167.170.13"><span class="ltx_text" id="A1.T12.167.167.170.13.1" style="color:#FF0000;">(+3.7)</span></td>
<td class="ltx_td ltx_align_left" id="A1.T12.167.167.170.14"><span class="ltx_text" id="A1.T12.167.167.170.14.1" style="color:#FF0000;">(+5.9)</span></td>
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T12.167.167.170.15"><span class="ltx_text" id="A1.T12.167.167.170.15.1" style="color:#FF0000;">(+6.0)</span></td>
<td class="ltx_td ltx_align_left" id="A1.T12.167.167.170.16"><span class="ltx_text" id="A1.T12.167.167.170.16.1" style="color:#FF0000;">(+0.1)</span></td>
<td class="ltx_td ltx_align_left" id="A1.T12.167.167.170.17"><span class="ltx_text" id="A1.T12.167.167.170.17.1" style="color:#FF0000;">(+6.6)</span></td>
</tr>
<tr class="ltx_tr" id="A1.T12.42.42.42">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T12.42.42.42.15" rowspan="8"><span class="ltx_text" id="A1.T12.42.42.42.15.1">
<span class="ltx_tabular ltx_align_middle" id="A1.T12.42.42.42.15.1.1">
<span class="ltx_tr" id="A1.T12.42.42.42.15.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_left" id="A1.T12.42.42.42.15.1.1.1.1">Instruction</span></span>
<span class="ltx_tr" id="A1.T12.42.42.42.15.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_left" id="A1.T12.42.42.42.15.1.1.2.1">Tuned</span></span>
</span></span></td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T12.42.42.42.16" rowspan="8"><span class="ltx_text" id="A1.T12.42.42.42.16.1">T</span></td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T12.42.42.42.17">No Mix</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T12.29.29.29.1">29.5<sub class="ltx_sub" id="A1.T12.29.29.29.1.1"><span class="ltx_text ltx_font_italic" id="A1.T12.29.29.29.1.1.1">3.4</span></sub>
</td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T12.30.30.30.2">36.5<sub class="ltx_sub" id="A1.T12.30.30.30.2.1"><span class="ltx_text ltx_font_italic" id="A1.T12.30.30.30.2.1.1">3.4</span></sub>
</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T12.31.31.31.3">25.4<sub class="ltx_sub" id="A1.T12.31.31.31.3.1"><span class="ltx_text ltx_font_italic" id="A1.T12.31.31.31.3.1.1">4.8</span></sub>
</td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T12.32.32.32.4">30.5<sub class="ltx_sub" id="A1.T12.32.32.32.4.1"><span class="ltx_text ltx_font_italic" id="A1.T12.32.32.32.4.1.1">4.6</span></sub>
</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T12.33.33.33.5">29.7<sub class="ltx_sub" id="A1.T12.33.33.33.5.1"><span class="ltx_text ltx_font_italic" id="A1.T12.33.33.33.5.1.1">3.3</span></sub>
</td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T12.34.34.34.6">35.5<sub class="ltx_sub" id="A1.T12.34.34.34.6.1"><span class="ltx_text ltx_font_italic" id="A1.T12.34.34.34.6.1.1">3.6</span></sub>
</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T12.35.35.35.7">27.1<sub class="ltx_sub" id="A1.T12.35.35.35.7.1"><span class="ltx_text ltx_font_italic" id="A1.T12.35.35.35.7.1.1">4.4</span></sub>
</td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T12.36.36.36.8">30.5<sub class="ltx_sub" id="A1.T12.36.36.36.8.1"><span class="ltx_text ltx_font_italic" id="A1.T12.36.36.36.8.1.1">4.4</span></sub>
</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T12.37.37.37.9">27.9<sub class="ltx_sub" id="A1.T12.37.37.37.9.1"><span class="ltx_text ltx_font_italic" id="A1.T12.37.37.37.9.1.1">1.4</span></sub>
</td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T12.38.38.38.10">30.5<sub class="ltx_sub" id="A1.T12.38.38.38.10.1"><span class="ltx_text ltx_font_italic" id="A1.T12.38.38.38.10.1.1">1.4</span></sub>
</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T12.39.39.39.11">44.8<sub class="ltx_sub" id="A1.T12.39.39.39.11.1"><span class="ltx_text ltx_font_italic" id="A1.T12.39.39.39.11.1.1">0.8</span></sub>
</td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T12.40.40.40.12">50.5<sub class="ltx_sub" id="A1.T12.40.40.40.12.1"><span class="ltx_text ltx_font_italic" id="A1.T12.40.40.40.12.1.1">1.4</span></sub>
</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T12.41.41.41.13">15.2<sub class="ltx_sub" id="A1.T12.41.41.41.13.1"><span class="ltx_text ltx_font_italic" id="A1.T12.41.41.41.13.1.1">2.4</span></sub>
</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T12.42.42.42.14">23.0<sub class="ltx_sub" id="A1.T12.42.42.42.14.1"><span class="ltx_text ltx_font_italic" id="A1.T12.42.42.42.14.1.1">2.6</span></sub>
</td>
</tr>
<tr class="ltx_tr" id="A1.T12.167.167.171">
<td class="ltx_td ltx_border_r" id="A1.T12.167.167.171.1"></td>
<td class="ltx_td ltx_align_left" id="A1.T12.167.167.171.2"><span class="ltx_text" id="A1.T12.167.167.171.2.1" style="color:#FF0000;">(+11.4)</span></td>
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T12.167.167.171.3"><span class="ltx_text" id="A1.T12.167.167.171.3.1" style="color:#FF0000;">(+13.5)</span></td>
<td class="ltx_td ltx_align_left" id="A1.T12.167.167.171.4"><span class="ltx_text" id="A1.T12.167.167.171.4.1" style="color:#FF0000;">(+11.2)</span></td>
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T12.167.167.171.5"><span class="ltx_text" id="A1.T12.167.167.171.5.1" style="color:#FF0000;">(+6.0)</span></td>
<td class="ltx_td ltx_align_left" id="A1.T12.167.167.171.6"><span class="ltx_text" id="A1.T12.167.167.171.6.1" style="color:#FF0000;">(+11.9)</span></td>
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T12.167.167.171.7"><span class="ltx_text" id="A1.T12.167.167.171.7.1" style="color:#FF0000;">(+11.0)</span></td>
<td class="ltx_td ltx_align_left" id="A1.T12.167.167.171.8"><span class="ltx_text" id="A1.T12.167.167.171.8.1" style="color:#FF0000;">(+6.1)</span></td>
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T12.167.167.171.9"><span class="ltx_text" id="A1.T12.167.167.171.9.1" style="color:#FF0000;">(+7.5)</span></td>
<td class="ltx_td ltx_align_left" id="A1.T12.167.167.171.10"><span class="ltx_text" id="A1.T12.167.167.171.10.1" style="color:#FF0000;">(+6.8)</span></td>
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T12.167.167.171.11"><span class="ltx_text" id="A1.T12.167.167.171.11.1" style="color:#FF0000;">(+6.0)</span></td>
<td class="ltx_td ltx_align_left" id="A1.T12.167.167.171.12"><span class="ltx_text" id="A1.T12.167.167.171.12.1" style="color:#FF0000;">(+20.6)</span></td>
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T12.167.167.171.13"><span class="ltx_text" id="A1.T12.167.167.171.13.1" style="color:#FF0000;">(+20.0)</span></td>
<td class="ltx_td ltx_align_left" id="A1.T12.167.167.171.14"><span class="ltx_text" id="A1.T12.167.167.171.14.1" style="color:#FF0000;">(+4.1)</span></td>
<td class="ltx_td ltx_align_left" id="A1.T12.167.167.171.15"><span class="ltx_text" id="A1.T12.167.167.171.15.1" style="color:#FF0000;">(+9.0)</span></td>
</tr>
<tr class="ltx_tr" id="A1.T12.56.56.56">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T12.56.56.56.15">SciRiff Mix</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T12.43.43.43.1">23.5<sub class="ltx_sub" id="A1.T12.43.43.43.1.1"><span class="ltx_text ltx_font_italic" id="A1.T12.43.43.43.1.1.1">3.4</span></sub>
</td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T12.44.44.44.2">29.5<sub class="ltx_sub" id="A1.T12.44.44.44.2.1"><span class="ltx_text ltx_font_italic" id="A1.T12.44.44.44.2.1.1">3.3</span></sub>
</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T12.45.45.45.3">
<span class="ltx_text ltx_framed ltx_framed_underline" id="A1.T12.45.45.45.3.1">38.6</span><sub class="ltx_sub" id="A1.T12.45.45.45.3.2"><span class="ltx_text ltx_font_italic" id="A1.T12.45.45.45.3.2.1">4.1</span></sub>
</td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T12.46.46.46.4">
<span class="ltx_text ltx_framed ltx_framed_underline" id="A1.T12.46.46.46.4.1">46.3</span><sub class="ltx_sub" id="A1.T12.46.46.46.4.2"><span class="ltx_text ltx_font_italic" id="A1.T12.46.46.46.4.2.1">4.6</span></sub>
</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T12.47.47.47.5">
<span class="ltx_text ltx_framed ltx_framed_underline" id="A1.T12.47.47.47.5.1">32.0</span><sub class="ltx_sub" id="A1.T12.47.47.47.5.2"><span class="ltx_text ltx_font_italic" id="A1.T12.47.47.47.5.2.1">3.4</span></sub>
</td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T12.48.48.48.6">36.0<sub class="ltx_sub" id="A1.T12.48.48.48.6.1"><span class="ltx_text ltx_font_italic" id="A1.T12.48.48.48.6.1.1">3.2</span></sub>
</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T12.49.49.49.7">24.0<sub class="ltx_sub" id="A1.T12.49.49.49.7.1"><span class="ltx_text ltx_font_italic" id="A1.T12.49.49.49.7.1.1">4.2</span></sub>
</td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T12.50.50.50.8">26.5<sub class="ltx_sub" id="A1.T12.50.50.50.8.1"><span class="ltx_text ltx_font_italic" id="A1.T12.50.50.50.8.1.1">4.2</span></sub>
</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T12.51.51.51.9">27.6<sub class="ltx_sub" id="A1.T12.51.51.51.9.1"><span class="ltx_text ltx_font_italic" id="A1.T12.51.51.51.9.1.1">1.4</span></sub>
</td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T12.52.52.52.10">31.5<sub class="ltx_sub" id="A1.T12.52.52.52.10.1"><span class="ltx_text ltx_font_italic" id="A1.T12.52.52.52.10.1.1">1.6</span></sub>
</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T12.53.53.53.11">45.4<sub class="ltx_sub" id="A1.T12.53.53.53.11.1"><span class="ltx_text ltx_font_italic" id="A1.T12.53.53.53.11.1.1">1.2</span></sub>
</td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T12.54.54.54.12">51.5<sub class="ltx_sub" id="A1.T12.54.54.54.12.1"><span class="ltx_text ltx_font_italic" id="A1.T12.54.54.54.12.1.1">1.7</span></sub>
</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T12.55.55.55.13">
<span class="ltx_text ltx_framed ltx_framed_underline" id="A1.T12.55.55.55.13.1">28.8</span><sub class="ltx_sub" id="A1.T12.55.55.55.13.2"><span class="ltx_text ltx_font_italic" id="A1.T12.55.55.55.13.2.1">2.4</span></sub>
</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T12.56.56.56.14">
<span class="ltx_text ltx_framed ltx_framed_underline" id="A1.T12.56.56.56.14.1">36.3</span><sub class="ltx_sub" id="A1.T12.56.56.56.14.2"><span class="ltx_text ltx_font_italic" id="A1.T12.56.56.56.14.2.1">2.4</span></sub>
</td>
</tr>
<tr class="ltx_tr" id="A1.T12.167.167.172">
<td class="ltx_td ltx_border_r" id="A1.T12.167.167.172.1"></td>
<td class="ltx_td ltx_align_left" id="A1.T12.167.167.172.2"><span class="ltx_text" id="A1.T12.167.167.172.2.1" style="color:#FF0000;">(+5.4)</span></td>
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T12.167.167.172.3"><span class="ltx_text" id="A1.T12.167.167.172.3.1" style="color:#FF0000;">(+6.5)</span></td>
<td class="ltx_td ltx_align_left" id="A1.T12.167.167.172.4"><span class="ltx_text" id="A1.T12.167.167.172.4.1" style="color:#FF0000;">(+10.6)</span></td>
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T12.167.167.172.5"><span class="ltx_text" id="A1.T12.167.167.172.5.1" style="color:#FF0000;">(+6.0)</span></td>
<td class="ltx_td ltx_align_left" id="A1.T12.167.167.172.6"><span class="ltx_text" id="A1.T12.167.167.172.6.1" style="color:#FF0000;">(+14.2)</span></td>
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T12.167.167.172.7"><span class="ltx_text" id="A1.T12.167.167.172.7.1" style="color:#FF0000;">(+10.5)</span></td>
<td class="ltx_td ltx_align_left" id="A1.T12.167.167.172.8"><span class="ltx_text" id="A1.T12.167.167.172.8.1" style="color:#FF0000;">(+3.0)</span></td>
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T12.167.167.172.9"><span class="ltx_text" id="A1.T12.167.167.172.9.1" style="color:#FF0000;">(+3.5)</span></td>
<td class="ltx_td ltx_align_left" id="A1.T12.167.167.172.10"><span class="ltx_text" id="A1.T12.167.167.172.10.1" style="color:#FF0000;">(+6.5)</span></td>
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T12.167.167.172.11"><span class="ltx_text" id="A1.T12.167.167.172.11.1" style="color:#FF0000;">(+7.0)</span></td>
<td class="ltx_td ltx_align_left" id="A1.T12.167.167.172.12"><span class="ltx_text" id="A1.T12.167.167.172.12.1" style="color:#FF0000;">(+21.2)</span></td>
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T12.167.167.172.13"><span class="ltx_text" id="A1.T12.167.167.172.13.1" style="color:#FF0000;">(+21.0)</span></td>
<td class="ltx_td ltx_align_left" id="A1.T12.167.167.172.14"><span class="ltx_text" id="A1.T12.167.167.172.14.1" style="color:#FF0000;">(+17.7)</span></td>
<td class="ltx_td ltx_align_left" id="A1.T12.167.167.172.15"><span class="ltx_text" id="A1.T12.167.167.172.15.1" style="color:#FF0000;">(+22.3)</span></td>
</tr>
<tr class="ltx_tr" id="A1.T12.70.70.70">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T12.70.70.70.15">Tülu Mix</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T12.57.57.57.1">
<span class="ltx_text ltx_framed ltx_framed_underline" id="A1.T12.57.57.57.1.1">31.6</span><sub class="ltx_sub" id="A1.T12.57.57.57.1.2"><span class="ltx_text ltx_font_italic" id="A1.T12.57.57.57.1.2.1">3.0</span></sub>
</td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T12.58.58.58.2">
<span class="ltx_text ltx_framed ltx_framed_underline" id="A1.T12.58.58.58.2.1">39.5</span><sub class="ltx_sub" id="A1.T12.58.58.58.2.2"><span class="ltx_text ltx_font_italic" id="A1.T12.58.58.58.2.2.1">3.1</span></sub>
</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T12.59.59.59.3">21.7<sub class="ltx_sub" id="A1.T12.59.59.59.3.1"><span class="ltx_text ltx_font_italic" id="A1.T12.59.59.59.3.1.1">4.2</span></sub>
</td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T12.60.60.60.4">26.5<sub class="ltx_sub" id="A1.T12.60.60.60.4.1"><span class="ltx_text ltx_font_italic" id="A1.T12.60.60.60.4.1.1">4.4</span></sub>
</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T12.61.61.61.5">28.4<sub class="ltx_sub" id="A1.T12.61.61.61.5.1"><span class="ltx_text ltx_font_italic" id="A1.T12.61.61.61.5.1.1">2.9</span></sub>
</td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T12.62.62.62.6">33.0<sub class="ltx_sub" id="A1.T12.62.62.62.6.1"><span class="ltx_text ltx_font_italic" id="A1.T12.62.62.62.6.1.1">3.0</span></sub>
</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T12.63.63.63.7">25.7<sub class="ltx_sub" id="A1.T12.63.63.63.7.1"><span class="ltx_text ltx_font_italic" id="A1.T12.63.63.63.7.1.1">4.4</span></sub>
</td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T12.64.64.64.8">26.5<sub class="ltx_sub" id="A1.T12.64.64.64.8.1"><span class="ltx_text ltx_font_italic" id="A1.T12.64.64.64.8.1.1">4.4</span></sub>
</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T12.65.65.65.9">
<span class="ltx_text ltx_framed ltx_framed_underline" id="A1.T12.65.65.65.9.1">45.5</span><sub class="ltx_sub" id="A1.T12.65.65.65.9.2"><span class="ltx_text ltx_font_italic" id="A1.T12.65.65.65.9.2.1">1.1</span></sub>
</td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T12.66.66.66.10">
<span class="ltx_text ltx_font_bold ltx_framed ltx_framed_underline" id="A1.T12.66.66.66.10.1" style="color:#00FFFF;">51.0</span><sub class="ltx_sub" id="A1.T12.66.66.66.10.2"><span class="ltx_text ltx_font_italic" id="A1.T12.66.66.66.10.2.1" style="color:#00FFFF;">1.3</span></sub>
</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T12.67.67.67.11">27.2<sub class="ltx_sub" id="A1.T12.67.67.67.11.1"><span class="ltx_text ltx_font_italic" id="A1.T12.67.67.67.11.1.1">1.0</span></sub>
</td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T12.68.68.68.12">31.0<sub class="ltx_sub" id="A1.T12.68.68.68.12.1"><span class="ltx_text ltx_font_italic" id="A1.T12.68.68.68.12.1.1">1.0</span></sub>
</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T12.69.69.69.13">16.5<sub class="ltx_sub" id="A1.T12.69.69.69.13.1"><span class="ltx_text ltx_font_italic" id="A1.T12.69.69.69.13.1.1">2.2</span></sub>
</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T12.70.70.70.14">21.5<sub class="ltx_sub" id="A1.T12.70.70.70.14.1"><span class="ltx_text ltx_font_italic" id="A1.T12.70.70.70.14.1.1">2.4</span></sub>
</td>
</tr>
<tr class="ltx_tr" id="A1.T12.167.167.173">
<td class="ltx_td ltx_border_r" id="A1.T12.167.167.173.1"></td>
<td class="ltx_td ltx_align_left" id="A1.T12.167.167.173.2"><span class="ltx_text" id="A1.T12.167.167.173.2.1" style="color:#FF0000;">(+13.5)</span></td>
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T12.167.167.173.3"><span class="ltx_text" id="A1.T12.167.167.173.3.1" style="color:#FF0000;">(+16.5)</span></td>
<td class="ltx_td ltx_align_left" id="A1.T12.167.167.173.4"><span class="ltx_text" id="A1.T12.167.167.173.4.1" style="color:#FF0000;">(+7.5)</span></td>
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T12.167.167.173.5"><span class="ltx_text" id="A1.T12.167.167.173.5.1" style="color:#FF0000;">(+2.0)</span></td>
<td class="ltx_td ltx_align_left" id="A1.T12.167.167.173.6"><span class="ltx_text" id="A1.T12.167.167.173.6.1" style="color:#FF0000;">(+10.6)</span></td>
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T12.167.167.173.7"><span class="ltx_text" id="A1.T12.167.167.173.7.1" style="color:#FF0000;">(+6.5)</span></td>
<td class="ltx_td ltx_align_left" id="A1.T12.167.167.173.8"><span class="ltx_text" id="A1.T12.167.167.173.8.1" style="color:#FF0000;">(+4.7)</span></td>
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T12.167.167.173.9"><span class="ltx_text" id="A1.T12.167.167.173.9.1" style="color:#FF0000;">(+3.5)</span></td>
<td class="ltx_td ltx_align_left" id="A1.T12.167.167.173.10"><span class="ltx_text" id="A1.T12.167.167.173.10.1" style="color:#FF0000;">(+24.4)</span></td>
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T12.167.167.173.11"><span class="ltx_text" id="A1.T12.167.167.173.11.1" style="color:#FF0000;">(+26.5)</span></td>
<td class="ltx_td ltx_align_left" id="A1.T12.167.167.173.12"><span class="ltx_text" id="A1.T12.167.167.173.12.1" style="color:#FF0000;">(+3.0)</span></td>
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T12.167.167.173.13"><span class="ltx_text" id="A1.T12.167.167.173.13.1" style="color:#FF0000;">(+1.5)</span></td>
<td class="ltx_td ltx_align_left" id="A1.T12.167.167.173.14"><span class="ltx_text" id="A1.T12.167.167.173.14.1" style="color:#FF0000;">(+5.4)</span></td>
<td class="ltx_td ltx_align_left" id="A1.T12.167.167.173.15"><span class="ltx_text" id="A1.T12.167.167.173.15.1" style="color:#FF0000;">(+7.5)</span></td>
</tr>
<tr class="ltx_tr" id="A1.T12.84.84.84">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T12.84.84.84.15">Full Mix</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T12.71.71.71.1">25.4<sub class="ltx_sub" id="A1.T12.71.71.71.1.1"><span class="ltx_text ltx_font_italic" id="A1.T12.71.71.71.1.1.1">3.0</span></sub>
</td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T12.72.72.72.2">30.0<sub class="ltx_sub" id="A1.T12.72.72.72.2.1"><span class="ltx_text ltx_font_italic" id="A1.T12.72.72.72.2.1.1">3.0</span></sub>
</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T12.73.73.73.3">28.3<sub class="ltx_sub" id="A1.T12.73.73.73.3.1"><span class="ltx_text ltx_font_italic" id="A1.T12.73.73.73.3.1.1">4.2</span></sub>
</td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T12.74.74.74.4">35.5<sub class="ltx_sub" id="A1.T12.74.74.74.4.1"><span class="ltx_text ltx_font_italic" id="A1.T12.74.74.74.4.1.1">4.0</span></sub>
</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T12.75.75.75.5">31.5<sub class="ltx_sub" id="A1.T12.75.75.75.5.1"><span class="ltx_text ltx_font_italic" id="A1.T12.75.75.75.5.1.1">3.1</span></sub>
</td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T12.76.76.76.6">37.0<sub class="ltx_sub" id="A1.T12.76.76.76.6.1"><span class="ltx_text ltx_font_italic" id="A1.T12.76.76.76.6.1.1">3.2</span></sub>
</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T12.77.77.77.7">
<span class="ltx_text ltx_framed ltx_framed_underline" id="A1.T12.77.77.77.7.1">28.6</span><sub class="ltx_sub" id="A1.T12.77.77.77.7.2"><span class="ltx_text ltx_font_italic" id="A1.T12.77.77.77.7.2.1">4.2</span></sub>
</td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T12.78.78.78.8">
<span class="ltx_text ltx_framed ltx_framed_underline" id="A1.T12.78.78.78.8.1">32.3</span><sub class="ltx_sub" id="A1.T12.78.78.78.8.2"><span class="ltx_text ltx_font_italic" id="A1.T12.78.78.78.8.2.1">4.4</span></sub>
</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T12.79.79.79.9">31.9<sub class="ltx_sub" id="A1.T12.79.79.79.9.1"><span class="ltx_text ltx_font_italic" id="A1.T12.79.79.79.9.1.1">1.0</span></sub>
</td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T12.80.80.80.10">35.5<sub class="ltx_sub" id="A1.T12.80.80.80.10.1"><span class="ltx_text ltx_font_italic" id="A1.T12.80.80.80.10.1.1">1.0</span></sub>
</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T12.81.81.81.11">
<span class="ltx_text ltx_font_bold ltx_framed ltx_framed_underline" id="A1.T12.81.81.81.11.1" style="color:#00FFFF;">45.7</span><sub class="ltx_sub" id="A1.T12.81.81.81.11.2"><span class="ltx_text ltx_font_italic" id="A1.T12.81.81.81.11.2.1" style="color:#00FFFF;">0.8</span></sub>
</td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T12.82.82.82.12">
<span class="ltx_text ltx_framed ltx_framed_underline" id="A1.T12.82.82.82.12.1">50.0</span><sub class="ltx_sub" id="A1.T12.82.82.82.12.2"><span class="ltx_text ltx_font_italic" id="A1.T12.82.82.82.12.2.1">0.9</span></sub>
</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T12.83.83.83.13">20.4<sub class="ltx_sub" id="A1.T12.83.83.83.13.1"><span class="ltx_text ltx_font_italic" id="A1.T12.83.83.83.13.1.1">2.0</span></sub>
</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T12.84.84.84.14">26.5<sub class="ltx_sub" id="A1.T12.84.84.84.14.1"><span class="ltx_text ltx_font_italic" id="A1.T12.84.84.84.14.1.1">2.2</span></sub>
</td>
</tr>
<tr class="ltx_tr" id="A1.T12.167.167.174">
<td class="ltx_td ltx_border_r" id="A1.T12.167.167.174.1"></td>
<td class="ltx_td ltx_align_left" id="A1.T12.167.167.174.2"><span class="ltx_text" id="A1.T12.167.167.174.2.1" style="color:#FF0000;">(+7.3)</span></td>
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T12.167.167.174.3"><span class="ltx_text" id="A1.T12.167.167.174.3.1" style="color:#FF0000;">(+7.0)</span></td>
<td class="ltx_td ltx_align_left" id="A1.T12.167.167.174.4"><span class="ltx_text" id="A1.T12.167.167.174.4.1" style="color:#FF0000;">(+14.1)</span></td>
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T12.167.167.174.5"><span class="ltx_text" id="A1.T12.167.167.174.5.1" style="color:#FF0000;">(+11.0)</span></td>
<td class="ltx_td ltx_align_left" id="A1.T12.167.167.174.6"><span class="ltx_text" id="A1.T12.167.167.174.6.1" style="color:#FF0000;">(+13.7)</span></td>
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T12.167.167.174.7"><span class="ltx_text" id="A1.T12.167.167.174.7.1" style="color:#FF0000;">(+10.5)</span></td>
<td class="ltx_td ltx_align_left" id="A1.T12.167.167.174.8"><span class="ltx_text" id="A1.T12.167.167.174.8.1" style="color:#FF0000;">(+7.6)</span></td>
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T12.167.167.174.9"><span class="ltx_text" id="A1.T12.167.167.174.9.1" style="color:#FF0000;">(+9.3)</span></td>
<td class="ltx_td ltx_align_left" id="A1.T12.167.167.174.10"><span class="ltx_text" id="A1.T12.167.167.174.10.1" style="color:#FF0000;">(+10.8)</span></td>
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T12.167.167.174.11"><span class="ltx_text" id="A1.T12.167.167.174.11.1" style="color:#FF0000;">(+11.0)</span></td>
<td class="ltx_td ltx_align_left" id="A1.T12.167.167.174.12"><span class="ltx_text" id="A1.T12.167.167.174.12.1" style="color:#FF0000;">(+11.5)</span></td>
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T12.167.167.174.13"><span class="ltx_text" id="A1.T12.167.167.174.13.1" style="color:#FF0000;">(+19.5)</span></td>
<td class="ltx_td ltx_align_left" id="A1.T12.167.167.174.14"><span class="ltx_text" id="A1.T12.167.167.174.14.1" style="color:#FF0000;">(+9.3)</span></td>
<td class="ltx_td ltx_align_left" id="A1.T12.167.167.174.15"><span class="ltx_text" id="A1.T12.167.167.174.15.1" style="color:#FF0000;">(+12.5)</span></td>
</tr>
<tr class="ltx_tr" id="A1.T12.98.98.98">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T12.98.98.98.15" rowspan="2"><span class="ltx_text" id="A1.T12.98.98.98.15.1">Zero-shot</span></td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T12.98.98.98.16">RT</td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T12.98.98.98.17">-</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T12.85.85.85.1">17.2<sub class="ltx_sub" id="A1.T12.85.85.85.1.1"><span class="ltx_text ltx_font_italic" id="A1.T12.85.85.85.1.1.1">4.1</span></sub>
</td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T12.86.86.86.2">21.8<sub class="ltx_sub" id="A1.T12.86.86.86.2.1"><span class="ltx_text ltx_font_italic" id="A1.T12.86.86.86.2.1.1">4.6</span></sub>
</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T12.87.87.87.3">10.1<sub class="ltx_sub" id="A1.T12.87.87.87.3.1"><span class="ltx_text ltx_font_italic" id="A1.T12.87.87.87.3.1.1">5.2</span></sub>
</td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T12.88.88.88.4">16.3<sub class="ltx_sub" id="A1.T12.88.88.88.4.1"><span class="ltx_text ltx_font_italic" id="A1.T12.88.88.88.4.1.1">6.1</span></sub>
</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T12.89.89.89.5">14.5<sub class="ltx_sub" id="A1.T12.89.89.89.5.1"><span class="ltx_text ltx_font_italic" id="A1.T12.89.89.89.5.1.1">3.1</span></sub>
</td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T12.90.90.90.6">28.1<sub class="ltx_sub" id="A1.T12.90.90.90.6.1"><span class="ltx_text ltx_font_italic" id="A1.T12.90.90.90.6.1.1">3.1</span></sub>
</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T12.91.91.91.7">17.8<sub class="ltx_sub" id="A1.T12.91.91.91.7.1"><span class="ltx_text ltx_font_italic" id="A1.T12.91.91.91.7.1.1">4.1</span></sub>
</td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T12.92.92.92.8">22.0<sub class="ltx_sub" id="A1.T12.92.92.92.8.1"><span class="ltx_text ltx_font_italic" id="A1.T12.92.92.92.8.1.1">4.9</span></sub>
</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T12.93.93.93.9">18.0<sub class="ltx_sub" id="A1.T12.93.93.93.9.1"><span class="ltx_text ltx_font_italic" id="A1.T12.93.93.93.9.1.1">1.1</span></sub>
</td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T12.94.94.94.10">22.8<sub class="ltx_sub" id="A1.T12.94.94.94.10.1"><span class="ltx_text ltx_font_italic" id="A1.T12.94.94.94.10.1.1">1.9</span></sub>
</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T12.95.95.95.11">21.6<sub class="ltx_sub" id="A1.T12.95.95.95.11.1"><span class="ltx_text ltx_font_italic" id="A1.T12.95.95.95.11.1.1">1.1</span></sub>
</td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T12.96.96.96.12">29.8<sub class="ltx_sub" id="A1.T12.96.96.96.12.1"><span class="ltx_text ltx_font_italic" id="A1.T12.96.96.96.12.1.1">1.1</span></sub>
</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T12.97.97.97.13">08.2<sub class="ltx_sub" id="A1.T12.97.97.97.13.1"><span class="ltx_text ltx_font_italic" id="A1.T12.97.97.97.13.1.1">2.1</span></sub>
</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T12.98.98.98.14">14.4<sub class="ltx_sub" id="A1.T12.98.98.98.14.1"><span class="ltx_text ltx_font_italic" id="A1.T12.98.98.98.14.1.1">2.1</span></sub>
</td>
</tr>
<tr class="ltx_tr" id="A1.T12.112.112.112">
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T12.112.112.112.15">RTE</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T12.112.112.112.16">-</td>
<td class="ltx_td ltx_align_left" id="A1.T12.99.99.99.1">18.7<sub class="ltx_sub" id="A1.T12.99.99.99.1.1"><span class="ltx_text ltx_font_italic" id="A1.T12.99.99.99.1.1.1">3.4</span></sub>
</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T12.100.100.100.2">25.8<sub class="ltx_sub" id="A1.T12.100.100.100.2.1"><span class="ltx_text ltx_font_italic" id="A1.T12.100.100.100.2.1.1">3.6</span></sub>
</td>
<td class="ltx_td ltx_align_left" id="A1.T12.101.101.101.3">12.4<sub class="ltx_sub" id="A1.T12.101.101.101.3.1"><span class="ltx_text ltx_font_italic" id="A1.T12.101.101.101.3.1.1">5.4</span></sub>
</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T12.102.102.102.4">20.4<sub class="ltx_sub" id="A1.T12.102.102.102.4.1"><span class="ltx_text ltx_font_italic" id="A1.T12.102.102.102.4.1.1">5.1</span></sub>
</td>
<td class="ltx_td ltx_align_left" id="A1.T12.103.103.103.5">21.5<sub class="ltx_sub" id="A1.T12.103.103.103.5.1"><span class="ltx_text ltx_font_italic" id="A1.T12.103.103.103.5.1.1">2.1</span></sub>
</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T12.104.104.104.6">29.1<sub class="ltx_sub" id="A1.T12.104.104.104.6.1"><span class="ltx_text ltx_font_italic" id="A1.T12.104.104.104.6.1.1">2.9</span></sub>
</td>
<td class="ltx_td ltx_align_left" id="A1.T12.105.105.105.7">18.4<sub class="ltx_sub" id="A1.T12.105.105.105.7.1"><span class="ltx_text ltx_font_italic" id="A1.T12.105.105.105.7.1.1">4.1</span></sub>
</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T12.106.106.106.8">23.3<sub class="ltx_sub" id="A1.T12.106.106.106.8.1"><span class="ltx_text ltx_font_italic" id="A1.T12.106.106.106.8.1.1">4.6</span></sub>
</td>
<td class="ltx_td ltx_align_left" id="A1.T12.107.107.107.9">19.3<sub class="ltx_sub" id="A1.T12.107.107.107.9.1"><span class="ltx_text ltx_font_italic" id="A1.T12.107.107.107.9.1.1">1.1</span></sub>
</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T12.108.108.108.10">26.6<sub class="ltx_sub" id="A1.T12.108.108.108.10.1"><span class="ltx_text ltx_font_italic" id="A1.T12.108.108.108.10.1.1">1.1</span></sub>
</td>
<td class="ltx_td ltx_align_left" id="A1.T12.109.109.109.11">25.4<sub class="ltx_sub" id="A1.T12.109.109.109.11.1"><span class="ltx_text ltx_font_italic" id="A1.T12.109.109.109.11.1.1">0.8</span></sub>
</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T12.110.110.110.12">31.1<sub class="ltx_sub" id="A1.T12.110.110.110.12.1"><span class="ltx_text ltx_font_italic" id="A1.T12.110.110.110.12.1.1">0.6</span></sub>
</td>
<td class="ltx_td ltx_align_left" id="A1.T12.111.111.111.13">12.7<sub class="ltx_sub" id="A1.T12.111.111.111.13.1"><span class="ltx_text ltx_font_italic" id="A1.T12.111.111.111.13.1.1">2.1</span></sub>
</td>
<td class="ltx_td ltx_align_left" id="A1.T12.112.112.112.14">18.8<sub class="ltx_sub" id="A1.T12.112.112.112.14.1"><span class="ltx_text ltx_font_italic" id="A1.T12.112.112.112.14.1.1">2.2</span></sub>
</td>
</tr>
<tr class="ltx_tr" id="A1.T12.167.167.175">
<td class="ltx_td ltx_border_r" id="A1.T12.167.167.175.1"></td>
<td class="ltx_td ltx_border_r" id="A1.T12.167.167.175.2"></td>
<td class="ltx_td ltx_border_r" id="A1.T12.167.167.175.3"></td>
<td class="ltx_td ltx_align_left" id="A1.T12.167.167.175.4"><span class="ltx_text" id="A1.T12.167.167.175.4.1" style="color:#FF0000;">(+1.5)</span></td>
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T12.167.167.175.5"><span class="ltx_text" id="A1.T12.167.167.175.5.1" style="color:#FF0000;">(+4.0)</span></td>
<td class="ltx_td ltx_align_left" id="A1.T12.167.167.175.6"><span class="ltx_text" id="A1.T12.167.167.175.6.1" style="color:#FF0000;">(+2.3)</span></td>
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T12.167.167.175.7"><span class="ltx_text" id="A1.T12.167.167.175.7.1" style="color:#FF0000;">(+4.1)</span></td>
<td class="ltx_td ltx_align_left" id="A1.T12.167.167.175.8"><span class="ltx_text" id="A1.T12.167.167.175.8.1" style="color:#FF0000;">(+7.0)</span></td>
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T12.167.167.175.9"><span class="ltx_text" id="A1.T12.167.167.175.9.1" style="color:#FF0000;">(+1.0)</span></td>
<td class="ltx_td ltx_align_left" id="A1.T12.167.167.175.10"><span class="ltx_text" id="A1.T12.167.167.175.10.1" style="color:#FF0000;">(+0.6)</span></td>
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T12.167.167.175.11"><span class="ltx_text" id="A1.T12.167.167.175.11.1" style="color:#FF0000;">(+1.3)</span></td>
<td class="ltx_td ltx_align_left" id="A1.T12.167.167.175.12"><span class="ltx_text" id="A1.T12.167.167.175.12.1" style="color:#FF0000;">(+1.3)</span></td>
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T12.167.167.175.13"><span class="ltx_text" id="A1.T12.167.167.175.13.1" style="color:#FF0000;">(+3.8)</span></td>
<td class="ltx_td ltx_align_left" id="A1.T12.167.167.175.14"><span class="ltx_text" id="A1.T12.167.167.175.14.1" style="color:#FF0000;">(+3.8)</span></td>
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T12.167.167.175.15"><span class="ltx_text" id="A1.T12.167.167.175.15.1" style="color:#FF0000;">(+1.3)</span></td>
<td class="ltx_td ltx_align_left" id="A1.T12.167.167.175.16"><span class="ltx_text" id="A1.T12.167.167.175.16.1" style="color:#FF0000;">(+4.5)</span></td>
<td class="ltx_td ltx_align_left" id="A1.T12.167.167.175.17"><span class="ltx_text" id="A1.T12.167.167.175.17.1" style="color:#FF0000;">(+4.4)</span></td>
</tr>
<tr class="ltx_tr" id="A1.T12.125.125.125">
<td class="ltx_td ltx_align_left ltx_border_b ltx_border_r ltx_border_t" id="A1.T12.125.125.125.14" rowspan="8"><span class="ltx_text" id="A1.T12.125.125.125.14.1">
<span class="ltx_tabular ltx_align_middle" id="A1.T12.125.125.125.14.1.1">
<span class="ltx_tr" id="A1.T12.125.125.125.14.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_left" id="A1.T12.125.125.125.14.1.1.1.1">Instruction</span></span>
<span class="ltx_tr" id="A1.T12.125.125.125.14.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_left" id="A1.T12.125.125.125.14.1.1.2.1">Tuned</span></span>
</span></span></td>
<td class="ltx_td ltx_align_left ltx_border_b ltx_border_r ltx_border_t" id="A1.T12.125.125.125.15" rowspan="8"><span class="ltx_text" id="A1.T12.125.125.125.15.1">RT</span></td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T12.125.125.125.16">No Mix</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T12.113.113.113.1">26.8<sub class="ltx_sub" id="A1.T12.113.113.113.1.1"><span class="ltx_text ltx_font_italic" id="A1.T12.113.113.113.1.1.1">3.1</span></sub>
</td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T12.114.114.114.2">28.8<sub class="ltx_sub" id="A1.T12.114.114.114.2.1"><span class="ltx_text ltx_font_italic" id="A1.T12.114.114.114.2.1.1">3.2</span></sub>
</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T12.115.115.115.3">22.9<sub class="ltx_sub" id="A1.T12.115.115.115.3.1"><span class="ltx_text ltx_font_italic" id="A1.T12.115.115.115.3.1.1">4.4</span></sub>
</td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T12.116.116.116.4">28.8<sub class="ltx_sub" id="A1.T12.116.116.116.4.1"><span class="ltx_text ltx_font_italic" id="A1.T12.116.116.116.4.1.1">4.4</span></sub>
</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T12.117.117.117.5">28.4<sub class="ltx_sub" id="A1.T12.117.117.117.5.1"><span class="ltx_text ltx_font_italic" id="A1.T12.117.117.117.5.1.1">1.4</span></sub>
</td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T12.118.118.118.6">30.6<sub class="ltx_sub" id="A1.T12.118.118.118.6.1"><span class="ltx_text ltx_font_italic" id="A1.T12.118.118.118.6.1.1">1.6</span></sub>
</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T12.119.119.119.7">24.1<sub class="ltx_sub" id="A1.T12.119.119.119.7.1"><span class="ltx_text ltx_font_italic" id="A1.T12.119.119.119.7.1.1">4.4</span></sub>
</td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T12.120.120.120.8">27.6<sub class="ltx_sub" id="A1.T12.120.120.120.8.1"><span class="ltx_text ltx_font_italic" id="A1.T12.120.120.120.8.1.1">4.4</span></sub>
</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T12.121.121.121.9">22.6<sub class="ltx_sub" id="A1.T12.121.121.121.9.1"><span class="ltx_text ltx_font_italic" id="A1.T12.121.121.121.9.1.1">1.4</span></sub>
</td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T12.122.122.122.10">29.6<sub class="ltx_sub" id="A1.T12.122.122.122.10.1"><span class="ltx_text ltx_font_italic" id="A1.T12.122.122.122.10.1.1">1.1</span></sub>
</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T12.123.123.123.11">28.7<sub class="ltx_sub" id="A1.T12.123.123.123.11.1"><span class="ltx_text ltx_font_italic" id="A1.T12.123.123.123.11.1.1">0.4</span></sub>
</td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T12.124.124.124.12">36.9<sub class="ltx_sub" id="A1.T12.124.124.124.12.1"><span class="ltx_text ltx_font_italic" id="A1.T12.124.124.124.12.1.1">0.4</span></sub>
</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T12.125.125.125.13">31.5<sub class="ltx_sub" id="A1.T12.125.125.125.13.1"><span class="ltx_text ltx_font_italic" id="A1.T12.125.125.125.13.1.1">3.4</span></sub>
</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T12.125.125.125.17">34.4</td>
</tr>
<tr class="ltx_tr" id="A1.T12.167.167.176">
<td class="ltx_td ltx_border_r" id="A1.T12.167.167.176.1"></td>
<td class="ltx_td ltx_align_left" id="A1.T12.167.167.176.2"><span class="ltx_text" id="A1.T12.167.167.176.2.1" style="color:#FF0000;">(+9.6)</span></td>
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T12.167.167.176.3"><span class="ltx_text" id="A1.T12.167.167.176.3.1" style="color:#FF0000;">(+7.0)</span></td>
<td class="ltx_td ltx_align_left" id="A1.T12.167.167.176.4"><span class="ltx_text" id="A1.T12.167.167.176.4.1" style="color:#FF0000;">(+12.8)</span></td>
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T12.167.167.176.5"><span class="ltx_text" id="A1.T12.167.167.176.5.1" style="color:#FF0000;">(+12.5)</span></td>
<td class="ltx_td ltx_align_left" id="A1.T12.167.167.176.6"><span class="ltx_text" id="A1.T12.167.167.176.6.1" style="color:#FF0000;">(+13.9)</span></td>
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T12.167.167.176.7"><span class="ltx_text" id="A1.T12.167.167.176.7.1" style="color:#FF0000;">(+12.5)</span></td>
<td class="ltx_td ltx_align_left" id="A1.T12.167.167.176.8"><span class="ltx_text" id="A1.T12.167.167.176.8.1" style="color:#FF0000;">(+6.3)</span></td>
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T12.167.167.176.9"><span class="ltx_text" id="A1.T12.167.167.176.9.1" style="color:#FF0000;">(+5.6)</span></td>
<td class="ltx_td ltx_align_left" id="A1.T12.167.167.176.10"><span class="ltx_text" id="A1.T12.167.167.176.10.1" style="color:#FF0000;">(+4.6)</span></td>
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T12.167.167.176.11"><span class="ltx_text" id="A1.T12.167.167.176.11.1" style="color:#FF0000;">(+6.8)</span></td>
<td class="ltx_td ltx_align_left" id="A1.T12.167.167.176.12"><span class="ltx_text" id="A1.T12.167.167.176.12.1" style="color:#FF0000;">(+7.1)</span></td>
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T12.167.167.176.13"><span class="ltx_text" id="A1.T12.167.167.176.13.1" style="color:#FF0000;">(+7.1)</span></td>
<td class="ltx_td ltx_align_left" id="A1.T12.167.167.176.14"><span class="ltx_text" id="A1.T12.167.167.176.14.1" style="color:#FF0000;">(+23.3)</span></td>
<td class="ltx_td ltx_align_left" id="A1.T12.167.167.176.15"><span class="ltx_text" id="A1.T12.167.167.176.15.1" style="color:#FF0000;">(+20.0)</span></td>
</tr>
<tr class="ltx_tr" id="A1.T12.139.139.139">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T12.139.139.139.15">SciRiff Mix</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T12.126.126.126.1">22.2<sub class="ltx_sub" id="A1.T12.126.126.126.1.1"><span class="ltx_text ltx_font_italic" id="A1.T12.126.126.126.1.1.1">3.2</span></sub>
</td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T12.127.127.127.2">26.0<sub class="ltx_sub" id="A1.T12.127.127.127.2.1"><span class="ltx_text ltx_font_italic" id="A1.T12.127.127.127.2.1.1">3.2</span></sub>
</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T12.128.128.128.3">33.6<sub class="ltx_sub" id="A1.T12.128.128.128.3.1"><span class="ltx_text ltx_font_italic" id="A1.T12.128.128.128.3.1.1">4.1</span></sub>
</td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T12.129.129.129.4">42.3<sub class="ltx_sub" id="A1.T12.129.129.129.4.1"><span class="ltx_text ltx_font_italic" id="A1.T12.129.129.129.4.1.1">4.6</span></sub>
</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T12.130.130.130.5">31.5<sub class="ltx_sub" id="A1.T12.130.130.130.5.1"><span class="ltx_text ltx_font_italic" id="A1.T12.130.130.130.5.1.1">3.9</span></sub>
</td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T12.131.131.131.6">
<span class="ltx_text ltx_framed ltx_framed_underline" id="A1.T12.131.131.131.6.1">37.3</span><sub class="ltx_sub" id="A1.T12.131.131.131.6.2"><span class="ltx_text ltx_font_italic" id="A1.T12.131.131.131.6.2.1">3.6</span></sub>
</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T12.132.132.132.7">18.6<sub class="ltx_sub" id="A1.T12.132.132.132.7.1"><span class="ltx_text ltx_font_italic" id="A1.T12.132.132.132.7.1.1">4.4</span></sub>
</td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T12.133.133.133.8">24.4<sub class="ltx_sub" id="A1.T12.133.133.133.8.1"><span class="ltx_text ltx_font_italic" id="A1.T12.133.133.133.8.1.1">4.2</span></sub>
</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T12.134.134.134.9">22.5<sub class="ltx_sub" id="A1.T12.134.134.134.9.1"><span class="ltx_text ltx_font_italic" id="A1.T12.134.134.134.9.1.1">0.4</span></sub>
</td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T12.135.135.135.10">26.4<sub class="ltx_sub" id="A1.T12.135.135.135.10.1"><span class="ltx_text ltx_font_italic" id="A1.T12.135.135.135.10.1.1">0.6</span></sub>
</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T12.136.136.136.11">38.5<sub class="ltx_sub" id="A1.T12.136.136.136.11.1"><span class="ltx_text ltx_font_italic" id="A1.T12.136.136.136.11.1.1">1.4</span></sub>
</td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T12.137.137.137.12">41.3<sub class="ltx_sub" id="A1.T12.137.137.137.12.1"><span class="ltx_text ltx_font_italic" id="A1.T12.137.137.137.12.1.1">1.7</span></sub>
</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T12.138.138.138.13">24.8<sub class="ltx_sub" id="A1.T12.138.138.138.13.1"><span class="ltx_text ltx_font_italic" id="A1.T12.138.138.138.13.1.1">2.4</span></sub>
</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T12.139.139.139.14">32.3<sub class="ltx_sub" id="A1.T12.139.139.139.14.1"><span class="ltx_text ltx_font_italic" id="A1.T12.139.139.139.14.1.1">2.4</span></sub>
</td>
</tr>
<tr class="ltx_tr" id="A1.T12.167.167.177">
<td class="ltx_td ltx_border_r" id="A1.T12.167.167.177.1"></td>
<td class="ltx_td ltx_align_left" id="A1.T12.167.167.177.2"><span class="ltx_text" id="A1.T12.167.167.177.2.1" style="color:#FF0000;">(+5.0)</span></td>
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T12.167.167.177.3"><span class="ltx_text" id="A1.T12.167.167.177.3.1" style="color:#FF0000;">(+4.2)</span></td>
<td class="ltx_td ltx_align_left" id="A1.T12.167.167.177.4"><span class="ltx_text" id="A1.T12.167.167.177.4.1" style="color:#FF0000;">(+28.5)</span></td>
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T12.167.167.177.5"><span class="ltx_text" id="A1.T12.167.167.177.5.1" style="color:#FF0000;">(+30.0)</span></td>
<td class="ltx_td ltx_align_left" id="A1.T12.167.167.177.6"><span class="ltx_text" id="A1.T12.167.167.177.6.1" style="color:#FF0000;">(+17.0)</span></td>
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T12.167.167.177.7"><span class="ltx_text" id="A1.T12.167.167.177.7.1" style="color:#FF0000;">(+11.2)</span></td>
<td class="ltx_td ltx_align_left" id="A1.T12.167.167.177.8"><span class="ltx_text" id="A1.T12.167.167.177.8.1" style="color:#FF0000;">(+0.8)</span></td>
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T12.167.167.177.9"><span class="ltx_text" id="A1.T12.167.167.177.9.1" style="color:#FF0000;">(+2.4)</span></td>
<td class="ltx_td ltx_align_left" id="A1.T12.167.167.177.10"><span class="ltx_text" id="A1.T12.167.167.177.10.1" style="color:#FF0000;">(+4.5)</span></td>
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T12.167.167.177.11"><span class="ltx_text" id="A1.T12.167.167.177.11.1" style="color:#FF0000;">(+3.6)</span></td>
<td class="ltx_td ltx_align_left" id="A1.T12.167.167.177.12"><span class="ltx_text" id="A1.T12.167.167.177.12.1" style="color:#FF0000;">(+16.9)</span></td>
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T12.167.167.177.13"><span class="ltx_text" id="A1.T12.167.167.177.13.1" style="color:#FF0000;">(+11.5)</span></td>
<td class="ltx_td ltx_align_left" id="A1.T12.167.167.177.14"><span class="ltx_text" id="A1.T12.167.167.177.14.1" style="color:#FF0000;">(+16.6)</span></td>
<td class="ltx_td ltx_align_left" id="A1.T12.167.167.177.15"><span class="ltx_text" id="A1.T12.167.167.177.15.1" style="color:#FF0000;">(+17.9)</span></td>
</tr>
<tr class="ltx_tr" id="A1.T12.153.153.153">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T12.153.153.153.15">Tülu Mix</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T12.140.140.140.1">25.7<sub class="ltx_sub" id="A1.T12.140.140.140.1.1"><span class="ltx_text ltx_font_italic" id="A1.T12.140.140.140.1.1.1">3.0</span></sub>
</td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T12.141.141.141.2">30.6<sub class="ltx_sub" id="A1.T12.141.141.141.2.1"><span class="ltx_text ltx_font_italic" id="A1.T12.141.141.141.2.1.1">3.0</span></sub>
</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T12.142.142.142.3">28.6<sub class="ltx_sub" id="A1.T12.142.142.142.3.1"><span class="ltx_text ltx_font_italic" id="A1.T12.142.142.142.3.1.1">4.2</span></sub>
</td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T12.143.143.143.4">33.1<sub class="ltx_sub" id="A1.T12.143.143.143.4.1"><span class="ltx_text ltx_font_italic" id="A1.T12.143.143.143.4.1.1">4.0</span></sub>
</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T12.144.144.144.5">27.2<sub class="ltx_sub" id="A1.T12.144.144.144.5.1"><span class="ltx_text ltx_font_italic" id="A1.T12.144.144.144.5.1.1">3.0</span></sub>
</td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T12.145.145.145.6">33.1<sub class="ltx_sub" id="A1.T12.145.145.145.6.1"><span class="ltx_text ltx_font_italic" id="A1.T12.145.145.145.6.1.1">3.0</span></sub>
</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T12.146.146.146.7">21.0<sub class="ltx_sub" id="A1.T12.146.146.146.7.1"><span class="ltx_text ltx_font_italic" id="A1.T12.146.146.146.7.1.1">3.8</span></sub>
</td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T12.147.147.147.8">25.0<sub class="ltx_sub" id="A1.T12.147.147.147.8.1"><span class="ltx_text ltx_font_italic" id="A1.T12.147.147.147.8.1.1">3.8</span></sub>
</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T12.148.148.148.9">25.1<sub class="ltx_sub" id="A1.T12.148.148.148.9.1"><span class="ltx_text ltx_font_italic" id="A1.T12.148.148.148.9.1.1">1.2</span></sub>
</td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T12.149.149.149.10">31.3<sub class="ltx_sub" id="A1.T12.149.149.149.10.1"><span class="ltx_text ltx_font_italic" id="A1.T12.149.149.149.10.1.1">1.6</span></sub>
</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T12.150.150.150.11">35.8<sub class="ltx_sub" id="A1.T12.150.150.150.11.1"><span class="ltx_text ltx_font_italic" id="A1.T12.150.150.150.11.1.1">0.8</span></sub>
</td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T12.151.151.151.12">40.6<sub class="ltx_sub" id="A1.T12.151.151.151.12.1"><span class="ltx_text ltx_font_italic" id="A1.T12.151.151.151.12.1.1">0.9</span></sub>
</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T12.152.152.152.13">28.7<sub class="ltx_sub" id="A1.T12.152.152.152.13.1"><span class="ltx_text ltx_font_italic" id="A1.T12.152.152.152.13.1.1">2.0</span></sub>
</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T12.153.153.153.14">35.6<sub class="ltx_sub" id="A1.T12.153.153.153.14.1"><span class="ltx_text ltx_font_italic" id="A1.T12.153.153.153.14.1.1">2.2</span></sub>
</td>
</tr>
<tr class="ltx_tr" id="A1.T12.167.167.178">
<td class="ltx_td ltx_border_r" id="A1.T12.167.167.178.1"></td>
<td class="ltx_td ltx_align_left" id="A1.T12.167.167.178.2"><span class="ltx_text" id="A1.T12.167.167.178.2.1" style="color:#FF0000;">(+8.5)</span></td>
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T12.167.167.178.3"><span class="ltx_text" id="A1.T12.167.167.178.3.1" style="color:#FF0000;">(+8.8)</span></td>
<td class="ltx_td ltx_align_left" id="A1.T12.167.167.178.4"><span class="ltx_text" id="A1.T12.167.167.178.4.1" style="color:#FF0000;">(+18.5)</span></td>
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T12.167.167.178.5"><span class="ltx_text" id="A1.T12.167.167.178.5.1" style="color:#FF0000;">(+16.8)</span></td>
<td class="ltx_td ltx_align_left" id="A1.T12.167.167.178.6"><span class="ltx_text" id="A1.T12.167.167.178.6.1" style="color:#FF0000;">(+12.7)</span></td>
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T12.167.167.178.7"><span class="ltx_text" id="A1.T12.167.167.178.7.1" style="color:#FF0000;">(+5.0)</span></td>
<td class="ltx_td ltx_align_left" id="A1.T12.167.167.178.8"><span class="ltx_text" id="A1.T12.167.167.178.8.1" style="color:#FF0000;">(+3.2)</span></td>
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T12.167.167.178.9"><span class="ltx_text" id="A1.T12.167.167.178.9.1" style="color:#FF0000;">(+3.0)</span></td>
<td class="ltx_td ltx_align_left" id="A1.T12.167.167.178.10"><span class="ltx_text" id="A1.T12.167.167.178.10.1" style="color:#FF0000;">(+7.1)</span></td>
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T12.167.167.178.11"><span class="ltx_text" id="A1.T12.167.167.178.11.1" style="color:#FF0000;">(+8.5)</span></td>
<td class="ltx_td ltx_align_left" id="A1.T12.167.167.178.12"><span class="ltx_text" id="A1.T12.167.167.178.12.1" style="color:#FF0000;">(+14.2)</span></td>
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T12.167.167.178.13"><span class="ltx_text" id="A1.T12.167.167.178.13.1" style="color:#FF0000;">(+10.8)</span></td>
<td class="ltx_td ltx_align_left" id="A1.T12.167.167.178.14"><span class="ltx_text" id="A1.T12.167.167.178.14.1" style="color:#FF0000;">(+20.5)</span></td>
<td class="ltx_td ltx_align_left" id="A1.T12.167.167.178.15"><span class="ltx_text" id="A1.T12.167.167.178.15.1" style="color:#FF0000;">(+21.2)</span></td>
</tr>
<tr class="ltx_tr" id="A1.T12.167.167.167">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T12.167.167.167.15">Full Mix</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T12.154.154.154.1">21.4<sub class="ltx_sub" id="A1.T12.154.154.154.1.1"><span class="ltx_text ltx_font_italic" id="A1.T12.154.154.154.1.1.1">3.2</span></sub>
</td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T12.155.155.155.2">27.0<sub class="ltx_sub" id="A1.T12.155.155.155.2.1"><span class="ltx_text ltx_font_italic" id="A1.T12.155.155.155.2.1.1">3.1</span></sub>
</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T12.156.156.156.3">22.8<sub class="ltx_sub" id="A1.T12.156.156.156.3.1"><span class="ltx_text ltx_font_italic" id="A1.T12.156.156.156.3.1.1">4.0</span></sub>
</td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T12.157.157.157.4">29.0<sub class="ltx_sub" id="A1.T12.157.157.157.4.1"><span class="ltx_text ltx_font_italic" id="A1.T12.157.157.157.4.1.1">4.0</span></sub>
</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T12.158.158.158.5">25.4<sub class="ltx_sub" id="A1.T12.158.158.158.5.1"><span class="ltx_text ltx_font_italic" id="A1.T12.158.158.158.5.1.1">3.0</span></sub>
</td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T12.159.159.159.6">29.0<sub class="ltx_sub" id="A1.T12.159.159.159.6.1"><span class="ltx_text ltx_font_italic" id="A1.T12.159.159.159.6.1.1">2.9</span></sub>
</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T12.160.160.160.7">27.6<sub class="ltx_sub" id="A1.T12.160.160.160.7.1"><span class="ltx_text ltx_font_italic" id="A1.T12.160.160.160.7.1.1">4.2</span></sub>
</td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T12.161.161.161.8">28.3<sub class="ltx_sub" id="A1.T12.161.161.161.8.1"><span class="ltx_text ltx_font_italic" id="A1.T12.161.161.161.8.1.1">4.4</span></sub>
</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T12.162.162.162.9">22.7<sub class="ltx_sub" id="A1.T12.162.162.162.9.1"><span class="ltx_text ltx_font_italic" id="A1.T12.162.162.162.9.1.1">1.1</span></sub>
</td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T12.163.163.163.10">28.0<sub class="ltx_sub" id="A1.T12.163.163.163.10.1"><span class="ltx_text ltx_font_italic" id="A1.T12.163.163.163.10.1.1">1.2</span></sub>
</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T12.164.164.164.11">25.4<sub class="ltx_sub" id="A1.T12.164.164.164.11.1"><span class="ltx_text ltx_font_italic" id="A1.T12.164.164.164.11.1.1">0.8</span></sub>
</td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T12.165.165.165.12">32.2<sub class="ltx_sub" id="A1.T12.165.165.165.12.1"><span class="ltx_text ltx_font_italic" id="A1.T12.165.165.165.12.1.1">0.9</span></sub>
</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T12.166.166.166.13">26.8<sub class="ltx_sub" id="A1.T12.166.166.166.13.1"><span class="ltx_text ltx_font_italic" id="A1.T12.166.166.166.13.1.1">2.2</span></sub>
</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T12.167.167.167.14">31.4<sub class="ltx_sub" id="A1.T12.167.167.167.14.1"><span class="ltx_text ltx_font_italic" id="A1.T12.167.167.167.14.1.1">2.4</span></sub>
</td>
</tr>
<tr class="ltx_tr" id="A1.T12.167.167.179">
<td class="ltx_td ltx_border_b ltx_border_r" id="A1.T12.167.167.179.1"></td>
<td class="ltx_td ltx_align_left ltx_border_b" id="A1.T12.167.167.179.2"><span class="ltx_text" id="A1.T12.167.167.179.2.1" style="color:#FF0000;">(+4.2)</span></td>
<td class="ltx_td ltx_align_left ltx_border_b ltx_border_r" id="A1.T12.167.167.179.3"><span class="ltx_text" id="A1.T12.167.167.179.3.1" style="color:#FF0000;">(+5.2)</span></td>
<td class="ltx_td ltx_align_left ltx_border_b" id="A1.T12.167.167.179.4"><span class="ltx_text" id="A1.T12.167.167.179.4.1" style="color:#FF0000;">(+11.7)</span></td>
<td class="ltx_td ltx_align_left ltx_border_b ltx_border_r" id="A1.T12.167.167.179.5"><span class="ltx_text" id="A1.T12.167.167.179.5.1" style="color:#FF0000;">(+12.7)</span></td>
<td class="ltx_td ltx_align_left ltx_border_b" id="A1.T12.167.167.179.6"><span class="ltx_text" id="A1.T12.167.167.179.6.1" style="color:#FF0000;">(+10.9)</span></td>
<td class="ltx_td ltx_align_left ltx_border_b ltx_border_r" id="A1.T12.167.167.179.7"><span class="ltx_text" id="A1.T12.167.167.179.7.1" style="color:#FF0000;">(+0.9)</span></td>
<td class="ltx_td ltx_align_left ltx_border_b" id="A1.T12.167.167.179.8"><span class="ltx_text" id="A1.T12.167.167.179.8.1" style="color:#FF0000;">(+9.8)</span></td>
<td class="ltx_td ltx_align_left ltx_border_b ltx_border_r" id="A1.T12.167.167.179.9"><span class="ltx_text" id="A1.T12.167.167.179.9.1" style="color:#FF0000;">(+6.3)</span></td>
<td class="ltx_td ltx_align_left ltx_border_b" id="A1.T12.167.167.179.10"><span class="ltx_text" id="A1.T12.167.167.179.10.1" style="color:#FF0000;">(+4.7)</span></td>
<td class="ltx_td ltx_align_left ltx_border_b ltx_border_r" id="A1.T12.167.167.179.11"><span class="ltx_text" id="A1.T12.167.167.179.11.1" style="color:#FF0000;">(+5.2)</span></td>
<td class="ltx_td ltx_align_left ltx_border_b" id="A1.T12.167.167.179.12"><span class="ltx_text" id="A1.T12.167.167.179.12.1" style="color:#FF0000;">(+3.8)</span></td>
<td class="ltx_td ltx_align_left ltx_border_b ltx_border_r" id="A1.T12.167.167.179.13"><span class="ltx_text" id="A1.T12.167.167.179.13.1" style="color:#FF0000;">(+1.4)</span></td>
<td class="ltx_td ltx_align_left ltx_border_b" id="A1.T12.167.167.179.14"><span class="ltx_text" id="A1.T12.167.167.179.14.1" style="color:#FF0000;">(+18.6)</span></td>
<td class="ltx_td ltx_align_left ltx_border_b" id="A1.T12.167.167.179.15"><span class="ltx_text" id="A1.T12.167.167.179.15.1" style="color:#FF0000;">(+17.0)</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the performance of various Large Language Models (LLMs) on a fine-grained classification task using the LazyReview dataset.  The models are evaluated using two metrics: string-matching accuracy (S) and GPT-based semantic accuracy (G).  Results are shown for different prompting strategies: using only the target sentence (T), using both the review and target sentence (RT), and incorporating in-context examples (E).  The table highlights the best-performing model for each setup.  Performance differences between various setups are indicated, facilitating comparison of zero-shot and few-shot learning approaches and the impact of in-context learning.
> <details>
> <summary>read the caption</summary>
> Table 12: Performance of LLMs for fine-grained classification with 3-fold cross-validation on LazyReview test sets. ‘S’ represents the string-matching evaluator, and ‘G’ represents the GPT-based evaluator reporting accuracies. ‘T’ represents prompting with only the target sentence, RT represents the combination of the review and the target sentence. Adding demonstrations to the prompt is represented by ‘E’. The best results for this task is highlighted in cyan. Increments are shown with the classic zero-shot setup without exemplars (first row for zero-shots) with T or RT.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="A1.T13.168.168">
<tr class="ltx_tr" id="A1.T13.168.168.169">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T13.168.168.169.1" rowspan="2"><span class="ltx_text ltx_font_bold" id="A1.T13.168.168.169.1.1">Task</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A1.T13.168.168.169.2" rowspan="2"><span class="ltx_text ltx_font_bold" id="A1.T13.168.168.169.2.1">Mode</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A1.T13.168.168.169.3" rowspan="2"><span class="ltx_text ltx_font_bold" id="A1.T13.168.168.169.3.1">Mix</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="A1.T13.168.168.169.4"><span class="ltx_text ltx_font_bold" id="A1.T13.168.168.169.4.1">Gemma-1.1 7B</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="A1.T13.168.168.169.5"><span class="ltx_text ltx_font_bold" id="A1.T13.168.168.169.5.1">LLaMa 7B</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="A1.T13.168.168.169.6"><span class="ltx_text ltx_font_bold" id="A1.T13.168.168.169.6.1">LLaMa 13B</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="A1.T13.168.168.169.7"><span class="ltx_text ltx_font_bold" id="A1.T13.168.168.169.7.1">Mistral 7B</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="A1.T13.168.168.169.8"><span class="ltx_text ltx_font_bold" id="A1.T13.168.168.169.8.1">Qwen 7B</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="A1.T13.168.168.169.9"><span class="ltx_text ltx_font_bold" id="A1.T13.168.168.169.9.1">Yi-1.5 6B</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="A1.T13.168.168.169.10"><span class="ltx_text ltx_font_bold" id="A1.T13.168.168.169.10.1">SciTülü 7B</span></td>
</tr>
<tr class="ltx_tr" id="A1.T13.168.168.170">
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T13.168.168.170.1">S</td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T13.168.168.170.2">G</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T13.168.168.170.3">S</td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T13.168.168.170.4">G</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T13.168.168.170.5">S</td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T13.168.168.170.6">G</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T13.168.168.170.7">S</td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T13.168.168.170.8">G</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T13.168.168.170.9">S</td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T13.168.168.170.10">G</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T13.168.168.170.11">S</td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T13.168.168.170.12">G</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T13.168.168.170.13">S</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T13.168.168.170.14">G</td>
</tr>
<tr class="ltx_tr" id="A1.T13.14.14.14">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T13.14.14.14.15" rowspan="2"><span class="ltx_text" id="A1.T13.14.14.14.15.1">Zero-Shot</span></td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T13.14.14.14.16">T</td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T13.14.14.14.17">-</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T13.1.1.1.1">57.0<sub class="ltx_sub" id="A1.T13.1.1.1.1.1"><span class="ltx_text ltx_font_italic" id="A1.T13.1.1.1.1.1.1">2.9</span></sub>
</td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T13.2.2.2.2">66.0<sub class="ltx_sub" id="A1.T13.2.2.2.2.1"><span class="ltx_text ltx_font_italic" id="A1.T13.2.2.2.2.1.1">2.8</span></sub>
</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T13.3.3.3.3">52.2<sub class="ltx_sub" id="A1.T13.3.3.3.3.1"><span class="ltx_text ltx_font_italic" id="A1.T13.3.3.3.3.1.1">3.9</span></sub>
</td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T13.4.4.4.4">57.8<sub class="ltx_sub" id="A1.T13.4.4.4.4.1"><span class="ltx_text ltx_font_italic" id="A1.T13.4.4.4.4.1.1">3.9</span></sub>
</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T13.5.5.5.5">51.8<sub class="ltx_sub" id="A1.T13.5.5.5.5.1"><span class="ltx_text ltx_font_italic" id="A1.T13.5.5.5.5.1.1">2.6</span></sub>
</td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T13.6.6.6.6">58.6<sub class="ltx_sub" id="A1.T13.6.6.6.6.1"><span class="ltx_text ltx_font_italic" id="A1.T13.6.6.6.6.1.1">2.8</span></sub>
</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T13.7.7.7.7">51.1<sub class="ltx_sub" id="A1.T13.7.7.7.7.1"><span class="ltx_text ltx_font_italic" id="A1.T13.7.7.7.7.1.1">3.8</span></sub>
</td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T13.8.8.8.8">61.1<sub class="ltx_sub" id="A1.T13.8.8.8.8.1"><span class="ltx_text ltx_font_italic" id="A1.T13.8.8.8.8.1.1">3.6</span></sub>
</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T13.9.9.9.9">53.4<sub class="ltx_sub" id="A1.T13.9.9.9.9.1"><span class="ltx_text ltx_font_italic" id="A1.T13.9.9.9.9.1.1">1.0</span></sub>
</td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T13.10.10.10.10">63.5<sub class="ltx_sub" id="A1.T13.10.10.10.10.1"><span class="ltx_text ltx_font_italic" id="A1.T13.10.10.10.10.1.1">1.0</span></sub>
</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T13.11.11.11.11">57.2<sub class="ltx_sub" id="A1.T13.11.11.11.11.1"><span class="ltx_text ltx_font_italic" id="A1.T13.11.11.11.11.1.1">1.2</span></sub>
</td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T13.12.12.12.12">65.5<sub class="ltx_sub" id="A1.T13.12.12.12.12.1"><span class="ltx_text ltx_font_italic" id="A1.T13.12.12.12.12.1.1">1.4</span></sub>
</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T13.13.13.13.13">27.3<sub class="ltx_sub" id="A1.T13.13.13.13.13.1"><span class="ltx_text ltx_font_italic" id="A1.T13.13.13.13.13.1.1">2.6</span></sub>
</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T13.14.14.14.14">32.0<sub class="ltx_sub" id="A1.T13.14.14.14.14.1"><span class="ltx_text ltx_font_italic" id="A1.T13.14.14.14.14.1.1">2.8</span></sub>
</td>
</tr>
<tr class="ltx_tr" id="A1.T13.28.28.28">
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T13.28.28.28.15">TE</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T13.28.28.28.16">-</td>
<td class="ltx_td ltx_align_left" id="A1.T13.15.15.15.1">63.1<sub class="ltx_sub" id="A1.T13.15.15.15.1.1"><span class="ltx_text ltx_font_italic" id="A1.T13.15.15.15.1.1.1">3.1</span></sub>
</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T13.16.16.16.2">65.2<sub class="ltx_sub" id="A1.T13.16.16.16.2.1"><span class="ltx_text ltx_font_italic" id="A1.T13.16.16.16.2.1.1">3.2</span></sub>
</td>
<td class="ltx_td ltx_align_left" id="A1.T13.17.17.17.3">58.2<sub class="ltx_sub" id="A1.T13.17.17.17.3.1"><span class="ltx_text ltx_font_italic" id="A1.T13.17.17.17.3.1.1">4.2</span></sub>
</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T13.18.18.18.4">60.2<sub class="ltx_sub" id="A1.T13.18.18.18.4.1"><span class="ltx_text ltx_font_italic" id="A1.T13.18.18.18.4.1.1">4.4</span></sub>
</td>
<td class="ltx_td ltx_align_left" id="A1.T13.19.19.19.5">59.4<sub class="ltx_sub" id="A1.T13.19.19.19.5.1"><span class="ltx_text ltx_font_italic" id="A1.T13.19.19.19.5.1.1">3.2</span></sub>
</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T13.20.20.20.6">61.1<sub class="ltx_sub" id="A1.T13.20.20.20.6.1"><span class="ltx_text ltx_font_italic" id="A1.T13.20.20.20.6.1.1">3.0</span></sub>
</td>
<td class="ltx_td ltx_align_left" id="A1.T13.21.21.21.7">59.1<sub class="ltx_sub" id="A1.T13.21.21.21.7.1"><span class="ltx_text ltx_font_italic" id="A1.T13.21.21.21.7.1.1">4.0</span></sub>
</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T13.22.22.22.8">63.4<sub class="ltx_sub" id="A1.T13.22.22.22.8.1"><span class="ltx_text ltx_font_italic" id="A1.T13.22.22.22.8.1.1">4.2</span></sub>
</td>
<td class="ltx_td ltx_align_left" id="A1.T13.23.23.23.9">61.6<sub class="ltx_sub" id="A1.T13.23.23.23.9.1"><span class="ltx_text ltx_font_italic" id="A1.T13.23.23.23.9.1.1">0.8</span></sub>
</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T13.24.24.24.10">65.7<sub class="ltx_sub" id="A1.T13.24.24.24.10.1"><span class="ltx_text ltx_font_italic" id="A1.T13.24.24.24.10.1.1">0.7</span></sub>
</td>
<td class="ltx_td ltx_align_left" id="A1.T13.25.25.25.11">62.2<sub class="ltx_sub" id="A1.T13.25.25.25.11.1"><span class="ltx_text ltx_font_italic" id="A1.T13.25.25.25.11.1.1">1.4</span></sub>
</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T13.26.26.26.12">67.8<sub class="ltx_sub" id="A1.T13.26.26.26.12.1"><span class="ltx_text ltx_font_italic" id="A1.T13.26.26.26.12.1.1">1.6</span></sub>
</td>
<td class="ltx_td ltx_align_left" id="A1.T13.27.27.27.13">29.1<sub class="ltx_sub" id="A1.T13.27.27.27.13.1"><span class="ltx_text ltx_font_italic" id="A1.T13.27.27.27.13.1.1">2.6</span></sub>
</td>
<td class="ltx_td ltx_align_left" id="A1.T13.28.28.28.14">34.8<sub class="ltx_sub" id="A1.T13.28.28.28.14.1"><span class="ltx_text ltx_font_italic" id="A1.T13.28.28.28.14.1.1">2.9</span></sub>
</td>
</tr>
<tr class="ltx_tr" id="A1.T13.168.168.171">
<td class="ltx_td ltx_border_r" id="A1.T13.168.168.171.1"></td>
<td class="ltx_td ltx_border_r" id="A1.T13.168.168.171.2"></td>
<td class="ltx_td ltx_border_r" id="A1.T13.168.168.171.3"></td>
<td class="ltx_td ltx_align_left" id="A1.T13.168.168.171.4"><span class="ltx_text" id="A1.T13.168.168.171.4.1" style="color:#FF0000;">(+6.0)</span></td>
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T13.168.168.171.5"><span class="ltx_text" id="A1.T13.168.168.171.5.1" style="color:#0000FF;">(-0.8)</span></td>
<td class="ltx_td ltx_align_left" id="A1.T13.168.168.171.6"><span class="ltx_text" id="A1.T13.168.168.171.6.1" style="color:#FF0000;">(+6.0)</span></td>
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T13.168.168.171.7"><span class="ltx_text" id="A1.T13.168.168.171.7.1" style="color:#FF0000;">(+2.4)</span></td>
<td class="ltx_td ltx_align_left" id="A1.T13.168.168.171.8"><span class="ltx_text" id="A1.T13.168.168.171.8.1" style="color:#FF0000;">(+7.6)</span></td>
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T13.168.168.171.9"><span class="ltx_text" id="A1.T13.168.168.171.9.1" style="color:#FF0000;">(+2.5)</span></td>
<td class="ltx_td ltx_align_left" id="A1.T13.168.168.171.10"><span class="ltx_text" id="A1.T13.168.168.171.10.1" style="color:#FF0000;">(+8.0)</span></td>
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T13.168.168.171.11"><span class="ltx_text" id="A1.T13.168.168.171.11.1" style="color:#FF0000;">(+2.3)</span></td>
<td class="ltx_td ltx_align_left" id="A1.T13.168.168.171.12"><span class="ltx_text" id="A1.T13.168.168.171.12.1" style="color:#FF0000;">(+8.2)</span></td>
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T13.168.168.171.13"><span class="ltx_text" id="A1.T13.168.168.171.13.1" style="color:#FF0000;">(+2.2)</span></td>
<td class="ltx_td ltx_align_left" id="A1.T13.168.168.171.14"><span class="ltx_text" id="A1.T13.168.168.171.14.1" style="color:#FF0000;">(+5.0)</span></td>
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T13.168.168.171.15"><span class="ltx_text" id="A1.T13.168.168.171.15.1" style="color:#FF0000;">(+2.3)</span></td>
<td class="ltx_td ltx_align_left" id="A1.T13.168.168.171.16"><span class="ltx_text" id="A1.T13.168.168.171.16.1" style="color:#FF0000;">(+1.8)</span></td>
<td class="ltx_td ltx_align_left" id="A1.T13.168.168.171.17"><span class="ltx_text" id="A1.T13.168.168.171.17.1" style="color:#FF0000;">(+2.8)</span></td>
</tr>
<tr class="ltx_tr" id="A1.T13.42.42.42">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T13.42.42.42.15" rowspan="8"><span class="ltx_text" id="A1.T13.42.42.42.15.1">
<span class="ltx_tabular ltx_align_middle" id="A1.T13.42.42.42.15.1.1">
<span class="ltx_tr" id="A1.T13.42.42.42.15.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_left" id="A1.T13.42.42.42.15.1.1.1.1">Instruction</span></span>
<span class="ltx_tr" id="A1.T13.42.42.42.15.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_left" id="A1.T13.42.42.42.15.1.1.2.1">Tuned</span></span>
</span></span></td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T13.42.42.42.16" rowspan="8"><span class="ltx_text" id="A1.T13.42.42.42.16.1">T</span></td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T13.42.42.42.17">No Mix</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T13.29.29.29.1">69.3<sub class="ltx_sub" id="A1.T13.29.29.29.1.1"><span class="ltx_text ltx_font_italic" id="A1.T13.29.29.29.1.1.1">3.2</span></sub>
</td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T13.30.30.30.2">71.5<sub class="ltx_sub" id="A1.T13.30.30.30.2.1"><span class="ltx_text ltx_font_italic" id="A1.T13.30.30.30.2.1.1">3.2</span></sub>
</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T13.31.31.31.3">69.2<sub class="ltx_sub" id="A1.T13.31.31.31.3.1"><span class="ltx_text ltx_font_italic" id="A1.T13.31.31.31.3.1.1">4.3</span></sub>
</td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T13.32.32.32.4">71.5<sub class="ltx_sub" id="A1.T13.32.32.32.4.1"><span class="ltx_text ltx_font_italic" id="A1.T13.32.32.32.4.1.1">4.1</span></sub>
</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T13.33.33.33.5">60.4<sub class="ltx_sub" id="A1.T13.33.33.33.5.1"><span class="ltx_text ltx_font_italic" id="A1.T13.33.33.33.5.1.1">2.9</span></sub>
</td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T13.34.34.34.6">65.0<sub class="ltx_sub" id="A1.T13.34.34.34.6.1"><span class="ltx_text ltx_font_italic" id="A1.T13.34.34.34.6.1.1">3.0</span></sub>
</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T13.35.35.35.7">61.0<sub class="ltx_sub" id="A1.T13.35.35.35.7.1"><span class="ltx_text ltx_font_italic" id="A1.T13.35.35.35.7.1.1">4.2</span></sub>
</td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T13.36.36.36.8">65.2<sub class="ltx_sub" id="A1.T13.36.36.36.8.1"><span class="ltx_text ltx_font_italic" id="A1.T13.36.36.36.8.1.1">4.0</span></sub>
</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T13.37.37.37.9">63.3<sub class="ltx_sub" id="A1.T13.37.37.37.9.1"><span class="ltx_text ltx_font_italic" id="A1.T13.37.37.37.9.1.1">0.8</span></sub>
</td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T13.38.38.38.10">64.0<sub class="ltx_sub" id="A1.T13.38.38.38.10.1"><span class="ltx_text ltx_font_italic" id="A1.T13.38.38.38.10.1.1">1.0</span></sub>
</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T13.39.39.39.11">68.2<sub class="ltx_sub" id="A1.T13.39.39.39.11.1"><span class="ltx_text ltx_font_italic" id="A1.T13.39.39.39.11.1.1">1.0</span></sub>
</td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T13.40.40.40.12">71.5<sub class="ltx_sub" id="A1.T13.40.40.40.12.1"><span class="ltx_text ltx_font_italic" id="A1.T13.40.40.40.12.1.1">1.2</span></sub>
</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T13.41.41.41.13">69.6<sub class="ltx_sub" id="A1.T13.41.41.41.13.1"><span class="ltx_text ltx_font_italic" id="A1.T13.41.41.41.13.1.1">2.8</span></sub>
</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T13.42.42.42.14">71.5<sub class="ltx_sub" id="A1.T13.42.42.42.14.1"><span class="ltx_text ltx_font_italic" id="A1.T13.42.42.42.14.1.1">2.9</span></sub>
</td>
</tr>
<tr class="ltx_tr" id="A1.T13.168.168.172">
<td class="ltx_td ltx_border_r" id="A1.T13.168.168.172.1"></td>
<td class="ltx_td ltx_align_left" id="A1.T13.168.168.172.2"><span class="ltx_text" id="A1.T13.168.168.172.2.1" style="color:#FF0000;">(+12.3)</span></td>
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T13.168.168.172.3"><span class="ltx_text" id="A1.T13.168.168.172.3.1" style="color:#FF0000;">(+5.5)</span></td>
<td class="ltx_td ltx_align_left" id="A1.T13.168.168.172.4"><span class="ltx_text" id="A1.T13.168.168.172.4.1" style="color:#FF0000;">(+12.0)</span></td>
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T13.168.168.172.5"><span class="ltx_text" id="A1.T13.168.168.172.5.1" style="color:#FF0000;">(+13.8)</span></td>
<td class="ltx_td ltx_align_left" id="A1.T13.168.168.172.6"><span class="ltx_text" id="A1.T13.168.168.172.6.1" style="color:#FF0000;">(+8.6)</span></td>
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T13.168.168.172.7"><span class="ltx_text" id="A1.T13.168.168.172.7.1" style="color:#FF0000;">(+6.4)</span></td>
<td class="ltx_td ltx_align_left" id="A1.T13.168.168.172.8"><span class="ltx_text" id="A1.T13.168.168.172.8.1" style="color:#FF0000;">(+9.9)</span></td>
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T13.168.168.172.9"><span class="ltx_text" id="A1.T13.168.168.172.9.1" style="color:#FF0000;">(+4.1)</span></td>
<td class="ltx_td ltx_align_left" id="A1.T13.168.168.172.10"><span class="ltx_text" id="A1.T13.168.168.172.10.1" style="color:#FF0000;">(+15.9)</span></td>
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T13.168.168.172.11"><span class="ltx_text" id="A1.T13.168.168.172.11.1" style="color:#FF0000;">(+0.5)</span></td>
<td class="ltx_td ltx_align_left" id="A1.T13.168.168.172.12"><span class="ltx_text" id="A1.T13.168.168.172.12.1" style="color:#FF0000;">(+11.0)</span></td>
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T13.168.168.172.13"><span class="ltx_text" id="A1.T13.168.168.172.13.1" style="color:#FF0000;">(+6.0)</span></td>
<td class="ltx_td ltx_align_left" id="A1.T13.168.168.172.14"><span class="ltx_text" id="A1.T13.168.168.172.14.1" style="color:#FF0000;">(+42.0)</span></td>
<td class="ltx_td ltx_align_left" id="A1.T13.168.168.172.15"><span class="ltx_text" id="A1.T13.168.168.172.15.1" style="color:#FF0000;">(+39.5)</span></td>
</tr>
<tr class="ltx_tr" id="A1.T13.56.56.56">
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T13.56.56.56.15">SciRiFF Mix</td>
<td class="ltx_td ltx_align_left" id="A1.T13.43.43.43.1">69.4<sub class="ltx_sub" id="A1.T13.43.43.43.1.1"><span class="ltx_text ltx_font_italic" id="A1.T13.43.43.43.1.1.1">3.0</span></sub>
</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T13.44.44.44.2">71.5<sub class="ltx_sub" id="A1.T13.44.44.44.2.1"><span class="ltx_text ltx_font_italic" id="A1.T13.44.44.44.2.1.1">3.0</span></sub>
</td>
<td class="ltx_td ltx_align_left" id="A1.T13.45.45.45.3">
<span class="ltx_text ltx_framed ltx_framed_underline" id="A1.T13.45.45.45.3.1">69.8</span><sub class="ltx_sub" id="A1.T13.45.45.45.3.2"><span class="ltx_text ltx_font_italic" id="A1.T13.45.45.45.3.2.1">3.0</span></sub>
</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T13.46.46.46.4">
<span class="ltx_text ltx_framed ltx_framed_underline" id="A1.T13.46.46.46.4.1">72.5</span><sub class="ltx_sub" id="A1.T13.46.46.46.4.2"><span class="ltx_text ltx_font_italic" id="A1.T13.46.46.46.4.2.1">3.0</span></sub>
</td>
<td class="ltx_td ltx_align_left" id="A1.T13.47.47.47.5">
<span class="ltx_text ltx_framed ltx_framed_underline" id="A1.T13.47.47.47.5.1">68.4</span><sub class="ltx_sub" id="A1.T13.47.47.47.5.2"><span class="ltx_text ltx_font_italic" id="A1.T13.47.47.47.5.2.1">2.9</span></sub>
</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T13.48.48.48.6">
<span class="ltx_text ltx_framed ltx_framed_underline" id="A1.T13.48.48.48.6.1">72.0</span><sub class="ltx_sub" id="A1.T13.48.48.48.6.2"><span class="ltx_text ltx_font_italic" id="A1.T13.48.48.48.6.2.1">3.0</span></sub>
</td>
<td class="ltx_td ltx_align_left" id="A1.T13.49.49.49.7">68.4<sub class="ltx_sub" id="A1.T13.49.49.49.7.1"><span class="ltx_text ltx_font_italic" id="A1.T13.49.49.49.7.1.1">3.0</span></sub>
</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T13.50.50.50.8">70.5<sub class="ltx_sub" id="A1.T13.50.50.50.8.1"><span class="ltx_text ltx_font_italic" id="A1.T13.50.50.50.8.1.1">3.0</span></sub>
</td>
<td class="ltx_td ltx_align_left" id="A1.T13.51.51.51.9">60.4<sub class="ltx_sub" id="A1.T13.51.51.51.9.1"><span class="ltx_text ltx_font_italic" id="A1.T13.51.51.51.9.1.1">3.0</span></sub>
</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T13.52.52.52.10">64.5<sub class="ltx_sub" id="A1.T13.52.52.52.10.1"><span class="ltx_text ltx_font_italic" id="A1.T13.52.52.52.10.1.1">3.0</span></sub>
</td>
<td class="ltx_td ltx_align_left" id="A1.T13.53.53.53.11">69.4<sub class="ltx_sub" id="A1.T13.53.53.53.11.1"><span class="ltx_text ltx_font_italic" id="A1.T13.53.53.53.11.1.1">3.0</span></sub>
</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T13.54.54.54.12">71.5<sub class="ltx_sub" id="A1.T13.54.54.54.12.1"><span class="ltx_text ltx_font_italic" id="A1.T13.54.54.54.12.1.1">3.0</span></sub>
</td>
<td class="ltx_td ltx_align_left" id="A1.T13.55.55.55.13"><span class="ltx_text ltx_font_bold ltx_framed ltx_framed_underline" id="A1.T13.55.55.55.13.1" style="color:#0000FF;">69.8<sub class="ltx_sub" id="A1.T13.55.55.55.13.1.2"><span class="ltx_text ltx_font_medium ltx_font_italic" id="A1.T13.55.55.55.13.1.2.1">3.0</span></sub></span></td>
<td class="ltx_td ltx_align_left" id="A1.T13.56.56.56.14"><span class="ltx_text ltx_font_bold ltx_framed ltx_framed_underline" id="A1.T13.56.56.56.14.1" style="color:#0000FF;">73.5<sub class="ltx_sub" id="A1.T13.56.56.56.14.1.2"><span class="ltx_text ltx_font_medium ltx_font_italic" id="A1.T13.56.56.56.14.1.2.1">3.0</span></sub></span></td>
</tr>
<tr class="ltx_tr" id="A1.T13.168.168.173">
<td class="ltx_td ltx_border_r" id="A1.T13.168.168.173.1"></td>
<td class="ltx_td ltx_align_left" id="A1.T13.168.168.173.2"><span class="ltx_text" id="A1.T13.168.168.173.2.1" style="color:#FF0000;">(+12.4)</span></td>
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T13.168.168.173.3"><span class="ltx_text" id="A1.T13.168.168.173.3.1" style="color:#FF0000;">(+5.5)</span></td>
<td class="ltx_td ltx_align_left" id="A1.T13.168.168.173.4"><span class="ltx_text" id="A1.T13.168.168.173.4.1" style="color:#FF0000;">(+17.6)</span></td>
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T13.168.168.173.5"><span class="ltx_text" id="A1.T13.168.168.173.5.1" style="color:#FF0000;">(+14.7)</span></td>
<td class="ltx_td ltx_align_left" id="A1.T13.168.168.173.6"><span class="ltx_text" id="A1.T13.168.168.173.6.1" style="color:#FF0000;">(+16.6)</span></td>
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T13.168.168.173.7"><span class="ltx_text" id="A1.T13.168.168.173.7.1" style="color:#FF0000;">(+13.4)</span></td>
<td class="ltx_td ltx_align_left" id="A1.T13.168.168.173.8"><span class="ltx_text" id="A1.T13.168.168.173.8.1" style="color:#FF0000;">(+17.3)</span></td>
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T13.168.168.173.9"><span class="ltx_text" id="A1.T13.168.168.173.9.1" style="color:#FF0000;">(+9.4)</span></td>
<td class="ltx_td ltx_align_left" id="A1.T13.168.168.173.10"><span class="ltx_text" id="A1.T13.168.168.173.10.1" style="color:#FF0000;">(+7.0)</span></td>
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T13.168.168.173.11"><span class="ltx_text" id="A1.T13.168.168.173.11.1" style="color:#FF0000;">(+1.0)</span></td>
<td class="ltx_td ltx_align_left" id="A1.T13.168.168.173.12"><span class="ltx_text" id="A1.T13.168.168.173.12.1" style="color:#FF0000;">(+12.2)</span></td>
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T13.168.168.173.13"><span class="ltx_text" id="A1.T13.168.168.173.13.1" style="color:#FF0000;">(+6.0)</span></td>
<td class="ltx_td ltx_align_left" id="A1.T13.168.168.173.14"><span class="ltx_text" id="A1.T13.168.168.173.14.1" style="color:#FF0000;">(+42.5)</span></td>
<td class="ltx_td ltx_align_left" id="A1.T13.168.168.173.15"><span class="ltx_text" id="A1.T13.168.168.173.15.1" style="color:#FF0000;">(+41.5)</span></td>
</tr>
<tr class="ltx_tr" id="A1.T13.70.70.70">
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T13.70.70.70.15">Tülu Mix</td>
<td class="ltx_td ltx_align_left" id="A1.T13.57.57.57.1">
<span class="ltx_text ltx_framed ltx_framed_underline" id="A1.T13.57.57.57.1.1">69.6</span><sub class="ltx_sub" id="A1.T13.57.57.57.1.2"><span class="ltx_text ltx_font_italic" id="A1.T13.57.57.57.1.2.1">3.2</span></sub>
</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T13.58.58.58.2">
<span class="ltx_text ltx_framed ltx_framed_underline" id="A1.T13.58.58.58.2.1">72.4</span><sub class="ltx_sub" id="A1.T13.58.58.58.2.2"><span class="ltx_text ltx_font_italic" id="A1.T13.58.58.58.2.2.1">3.2</span></sub>
</td>
<td class="ltx_td ltx_align_left" id="A1.T13.59.59.59.3">65.4<sub class="ltx_sub" id="A1.T13.59.59.59.3.1"><span class="ltx_text ltx_font_italic" id="A1.T13.59.59.59.3.1.1">3.8</span></sub>
</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T13.60.60.60.4">67.0<sub class="ltx_sub" id="A1.T13.60.60.60.4.1"><span class="ltx_text ltx_font_italic" id="A1.T13.60.60.60.4.1.1">3.8</span></sub>
</td>
<td class="ltx_td ltx_align_left" id="A1.T13.61.61.61.5">65.3<sub class="ltx_sub" id="A1.T13.61.61.61.5.1"><span class="ltx_text ltx_font_italic" id="A1.T13.61.61.61.5.1.1">2.8</span></sub>
</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T13.62.62.62.6">67.3<sub class="ltx_sub" id="A1.T13.62.62.62.6.1"><span class="ltx_text ltx_font_italic" id="A1.T13.62.62.62.6.1.1">2.8</span></sub>
</td>
<td class="ltx_td ltx_align_left" id="A1.T13.63.63.63.7">56.2<sub class="ltx_sub" id="A1.T13.63.63.63.7.1"><span class="ltx_text ltx_font_italic" id="A1.T13.63.63.63.7.1.1">3.8</span></sub>
</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T13.64.64.64.8">62.5<sub class="ltx_sub" id="A1.T13.64.64.64.8.1"><span class="ltx_text ltx_font_italic" id="A1.T13.64.64.64.8.1.1">3.8</span></sub>
</td>
<td class="ltx_td ltx_align_left" id="A1.T13.65.65.65.9">
<span class="ltx_text ltx_framed ltx_framed_underline" id="A1.T13.65.65.65.9.1">69.3</span><sub class="ltx_sub" id="A1.T13.65.65.65.9.2"><span class="ltx_text ltx_font_italic" id="A1.T13.65.65.65.9.2.1">0.8</span></sub>
</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T13.66.66.66.10">
<span class="ltx_text ltx_framed ltx_framed_underline" id="A1.T13.66.66.66.10.1">72.0</span><sub class="ltx_sub" id="A1.T13.66.66.66.10.2"><span class="ltx_text ltx_font_italic" id="A1.T13.66.66.66.10.2.1">1.0</span></sub>
</td>
<td class="ltx_td ltx_align_left" id="A1.T13.67.67.67.11">66.3<sub class="ltx_sub" id="A1.T13.67.67.67.11.1"><span class="ltx_text ltx_font_italic" id="A1.T13.67.67.67.11.1.1">1.5</span></sub>
</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T13.68.68.68.12">68.0<sub class="ltx_sub" id="A1.T13.68.68.68.12.1"><span class="ltx_text ltx_font_italic" id="A1.T13.68.68.68.12.1.1">1.7</span></sub>
</td>
<td class="ltx_td ltx_align_left" id="A1.T13.69.69.69.13">65.2<sub class="ltx_sub" id="A1.T13.69.69.69.13.1"><span class="ltx_text ltx_font_italic" id="A1.T13.69.69.69.13.1.1">2.8</span></sub>
</td>
<td class="ltx_td ltx_align_left" id="A1.T13.70.70.70.14">67.0<sub class="ltx_sub" id="A1.T13.70.70.70.14.1"><span class="ltx_text ltx_font_italic" id="A1.T13.70.70.70.14.1.1">2.8</span></sub>
</td>
</tr>
<tr class="ltx_tr" id="A1.T13.168.168.174">
<td class="ltx_td ltx_border_r" id="A1.T13.168.168.174.1"></td>
<td class="ltx_td ltx_align_left" id="A1.T13.168.168.174.2"><span class="ltx_text" id="A1.T13.168.168.174.2.1" style="color:#FF0000;">(+12.6)</span></td>
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T13.168.168.174.3"><span class="ltx_text" id="A1.T13.168.168.174.3.1" style="color:#FF0000;">(+6.4)</span></td>
<td class="ltx_td ltx_align_left" id="A1.T13.168.168.174.4"><span class="ltx_text" id="A1.T13.168.168.174.4.1" style="color:#FF0000;">(+13.2)</span></td>
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T13.168.168.174.5"><span class="ltx_text" id="A1.T13.168.168.174.5.1" style="color:#FF0000;">(+9.2)</span></td>
<td class="ltx_td ltx_align_left" id="A1.T13.168.168.174.6"><span class="ltx_text" id="A1.T13.168.168.174.6.1" style="color:#FF0000;">(+13.5)</span></td>
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T13.168.168.174.7"><span class="ltx_text" id="A1.T13.168.168.174.7.1" style="color:#FF0000;">(+8.7)</span></td>
<td class="ltx_td ltx_align_left" id="A1.T13.168.168.174.8"><span class="ltx_text" id="A1.T13.168.168.174.8.1" style="color:#FF0000;">(+5.1)</span></td>
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T13.168.168.174.9"><span class="ltx_text" id="A1.T13.168.168.174.9.1" style="color:#FF0000;">(+1.4)</span></td>
<td class="ltx_td ltx_align_left" id="A1.T13.168.168.174.10"><span class="ltx_text" id="A1.T13.168.168.174.10.1" style="color:#FF0000;">(+15.9)</span></td>
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T13.168.168.174.11"><span class="ltx_text" id="A1.T13.168.168.174.11.1" style="color:#FF0000;">(+8.5)</span></td>
<td class="ltx_td ltx_align_left" id="A1.T13.168.168.174.12"><span class="ltx_text" id="A1.T13.168.168.174.12.1" style="color:#FF0000;">(+9.1)</span></td>
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T13.168.168.174.13"><span class="ltx_text" id="A1.T13.168.168.174.13.1" style="color:#FF0000;">(+2.5)</span></td>
<td class="ltx_td ltx_align_left" id="A1.T13.168.168.174.14"><span class="ltx_text" id="A1.T13.168.168.174.14.1" style="color:#FF0000;">(+37.9)</span></td>
<td class="ltx_td ltx_align_left" id="A1.T13.168.168.174.15"><span class="ltx_text" id="A1.T13.168.168.174.15.1" style="color:#FF0000;">(+35.0)</span></td>
</tr>
<tr class="ltx_tr" id="A1.T13.84.84.84">
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T13.84.84.84.15">Full Mix</td>
<td class="ltx_td ltx_align_left" id="A1.T13.71.71.71.1">69.4<sub class="ltx_sub" id="A1.T13.71.71.71.1.1"><span class="ltx_text ltx_font_italic" id="A1.T13.71.71.71.1.1.1">3.3</span></sub>
</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T13.72.72.72.2">71.5<sub class="ltx_sub" id="A1.T13.72.72.72.2.1"><span class="ltx_text ltx_font_italic" id="A1.T13.72.72.72.2.1.1">3.4</span></sub>
</td>
<td class="ltx_td ltx_align_left" id="A1.T13.73.73.73.3">69.8<sub class="ltx_sub" id="A1.T13.73.73.73.3.1"><span class="ltx_text ltx_font_italic" id="A1.T13.73.73.73.3.1.1">4.1</span></sub>
</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T13.74.74.74.4">71.5<sub class="ltx_sub" id="A1.T13.74.74.74.4.1"><span class="ltx_text ltx_font_italic" id="A1.T13.74.74.74.4.1.1">4.4</span></sub>
</td>
<td class="ltx_td ltx_align_left" id="A1.T13.75.75.75.5">68.4<sub class="ltx_sub" id="A1.T13.75.75.75.5.1"><span class="ltx_text ltx_font_italic" id="A1.T13.75.75.75.5.1.1">3.4</span></sub>
</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T13.76.76.76.6">68.2<sub class="ltx_sub" id="A1.T13.76.76.76.6.1"><span class="ltx_text ltx_font_italic" id="A1.T13.76.76.76.6.1.1">3.6</span></sub>
</td>
<td class="ltx_td ltx_align_left" id="A1.T13.77.77.77.7">
<span class="ltx_text ltx_framed ltx_framed_underline" id="A1.T13.77.77.77.7.1">71.3</span><sub class="ltx_sub" id="A1.T13.77.77.77.7.2"><span class="ltx_text ltx_font_italic" id="A1.T13.77.77.77.7.2.1">4.0</span></sub>
</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T13.78.78.78.8">
<span class="ltx_text ltx_framed ltx_framed_underline" id="A1.T13.78.78.78.8.1">72.0</span><sub class="ltx_sub" id="A1.T13.78.78.78.8.2"><span class="ltx_text ltx_font_italic" id="A1.T13.78.78.78.8.2.1">4.2</span></sub>
</td>
<td class="ltx_td ltx_align_left" id="A1.T13.79.79.79.9">63.8<sub class="ltx_sub" id="A1.T13.79.79.79.9.1"><span class="ltx_text ltx_font_italic" id="A1.T13.79.79.79.9.1.1">0.8</span></sub>
</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T13.80.80.80.10">64.0<sub class="ltx_sub" id="A1.T13.80.80.80.10.1"><span class="ltx_text ltx_font_italic" id="A1.T13.80.80.80.10.1.1">0.6</span></sub>
</td>
<td class="ltx_td ltx_align_left" id="A1.T13.81.81.81.11">
<span class="ltx_text ltx_framed ltx_framed_underline" id="A1.T13.81.81.81.11.1">69.8</span><sub class="ltx_sub" id="A1.T13.81.81.81.11.2"><span class="ltx_text ltx_font_italic" id="A1.T13.81.81.81.11.2.1">1.8</span></sub>
</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T13.82.82.82.12">
<span class="ltx_text ltx_framed ltx_framed_underline" id="A1.T13.82.82.82.12.1">72.0</span><sub class="ltx_sub" id="A1.T13.82.82.82.12.2"><span class="ltx_text ltx_font_italic" id="A1.T13.82.82.82.12.2.1">1.2</span></sub>
</td>
<td class="ltx_td ltx_align_left" id="A1.T13.83.83.83.13">60.8<sub class="ltx_sub" id="A1.T13.83.83.83.13.1"><span class="ltx_text ltx_font_italic" id="A1.T13.83.83.83.13.1.1">2.8</span></sub>
</td>
<td class="ltx_td ltx_align_left" id="A1.T13.84.84.84.14">68.5<sub class="ltx_sub" id="A1.T13.84.84.84.14.1"><span class="ltx_text ltx_font_italic" id="A1.T13.84.84.84.14.1.1">2.7</span></sub>
</td>
</tr>
<tr class="ltx_tr" id="A1.T13.168.168.175">
<td class="ltx_td ltx_border_r" id="A1.T13.168.168.175.1"></td>
<td class="ltx_td ltx_align_left" id="A1.T13.168.168.175.2"><span class="ltx_text" id="A1.T13.168.168.175.2.1" style="color:#FF0000;">(+12.4)</span></td>
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T13.168.168.175.3"><span class="ltx_text" id="A1.T13.168.168.175.3.1" style="color:#FF0000;">(+5.5)</span></td>
<td class="ltx_td ltx_align_left" id="A1.T13.168.168.175.4"><span class="ltx_text" id="A1.T13.168.168.175.4.1" style="color:#FF0000;">(+17.6)</span></td>
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T13.168.168.175.5"><span class="ltx_text" id="A1.T13.168.168.175.5.1" style="color:#FF0000;">(+13.7)</span></td>
<td class="ltx_td ltx_align_left" id="A1.T13.168.168.175.6"><span class="ltx_text" id="A1.T13.168.168.175.6.1" style="color:#FF0000;">(+16.6)</span></td>
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T13.168.168.175.7"><span class="ltx_text" id="A1.T13.168.168.175.7.1" style="color:#FF0000;">(+9.6)</span></td>
<td class="ltx_td ltx_align_left" id="A1.T13.168.168.175.8"><span class="ltx_text" id="A1.T13.168.168.175.8.1" style="color:#FF0000;">(+20.2)</span></td>
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T13.168.168.175.9"><span class="ltx_text" id="A1.T13.168.168.175.9.1" style="color:#FF0000;">(+10.9)</span></td>
<td class="ltx_td ltx_align_left" id="A1.T13.168.168.175.10"><span class="ltx_text" id="A1.T13.168.168.175.10.1" style="color:#FF0000;">(+10.4)</span></td>
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T13.168.168.175.11"><span class="ltx_text" id="A1.T13.168.168.175.11.1" style="color:#FF0000;">(+0.5)</span></td>
<td class="ltx_td ltx_align_left" id="A1.T13.168.168.175.12"><span class="ltx_text" id="A1.T13.168.168.175.12.1" style="color:#FF0000;">(+12.6)</span></td>
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T13.168.168.175.13"><span class="ltx_text" id="A1.T13.168.168.175.13.1" style="color:#FF0000;">(+6.5)</span></td>
<td class="ltx_td ltx_align_left" id="A1.T13.168.168.175.14"><span class="ltx_text" id="A1.T13.168.168.175.14.1" style="color:#FF0000;">(+33.5)</span></td>
<td class="ltx_td ltx_align_left" id="A1.T13.168.168.175.15"><span class="ltx_text" id="A1.T13.168.168.175.15.1" style="color:#FF0000;">(+36.5)</span></td>
</tr>
<tr class="ltx_tr" id="A1.T13.98.98.98">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T13.98.98.98.15" rowspan="2"><span class="ltx_text" id="A1.T13.98.98.98.15.1">Zero-Shot</span></td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T13.98.98.98.16">RT</td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T13.98.98.98.17">-</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T13.85.85.85.1">58.2<sub class="ltx_sub" id="A1.T13.85.85.85.1.1"><span class="ltx_text ltx_font_italic" id="A1.T13.85.85.85.1.1.1">3.1</span></sub>
</td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T13.86.86.86.2">61.3<sub class="ltx_sub" id="A1.T13.86.86.86.2.1"><span class="ltx_text ltx_font_italic" id="A1.T13.86.86.86.2.1.1">3.1</span></sub>
</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T13.87.87.87.3">51.5<sub class="ltx_sub" id="A1.T13.87.87.87.3.1"><span class="ltx_text ltx_font_italic" id="A1.T13.87.87.87.3.1.1">4.2</span></sub>
</td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T13.88.88.88.4">55.6<sub class="ltx_sub" id="A1.T13.88.88.88.4.1"><span class="ltx_text ltx_font_italic" id="A1.T13.88.88.88.4.1.1">4.2</span></sub>
</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T13.89.89.89.5">54.8<sub class="ltx_sub" id="A1.T13.89.89.89.5.1"><span class="ltx_text ltx_font_italic" id="A1.T13.89.89.89.5.1.1">3.6</span></sub>
</td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T13.90.90.90.6">57.6<sub class="ltx_sub" id="A1.T13.90.90.90.6.1"><span class="ltx_text ltx_font_italic" id="A1.T13.90.90.90.6.1.1">3.4</span></sub>
</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T13.91.91.91.7">58.8<sub class="ltx_sub" id="A1.T13.91.91.91.7.1"><span class="ltx_text ltx_font_italic" id="A1.T13.91.91.91.7.1.1">4.2</span></sub>
</td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T13.92.92.92.8">60.0<sub class="ltx_sub" id="A1.T13.92.92.92.8.1"><span class="ltx_text ltx_font_italic" id="A1.T13.92.92.92.8.1.1">4.0</span></sub>
</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T13.93.93.93.9">51.0<sub class="ltx_sub" id="A1.T13.93.93.93.9.1"><span class="ltx_text ltx_font_italic" id="A1.T13.93.93.93.9.1.1">0.8</span></sub>
</td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T13.94.94.94.10">55.0<sub class="ltx_sub" id="A1.T13.94.94.94.10.1"><span class="ltx_text ltx_font_italic" id="A1.T13.94.94.94.10.1.1">0.7</span></sub>
</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T13.95.95.95.11">50.4<sub class="ltx_sub" id="A1.T13.95.95.95.11.1"><span class="ltx_text ltx_font_italic" id="A1.T13.95.95.95.11.1.1">1.0</span></sub>
</td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T13.96.96.96.12">52.5<sub class="ltx_sub" id="A1.T13.96.96.96.12.1"><span class="ltx_text ltx_font_italic" id="A1.T13.96.96.96.12.1.1">1.1</span></sub>
</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T13.97.97.97.13">27.8<sub class="ltx_sub" id="A1.T13.97.97.97.13.1"><span class="ltx_text ltx_font_italic" id="A1.T13.97.97.97.13.1.1">2.4</span></sub>
</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T13.98.98.98.14">31.8<sub class="ltx_sub" id="A1.T13.98.98.98.14.1"><span class="ltx_text ltx_font_italic" id="A1.T13.98.98.98.14.1.1">2.6</span></sub>
</td>
</tr>
<tr class="ltx_tr" id="A1.T13.112.112.112">
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T13.112.112.112.15">RTE</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T13.112.112.112.16">-</td>
<td class="ltx_td ltx_align_left" id="A1.T13.99.99.99.1">59.9<sub class="ltx_sub" id="A1.T13.99.99.99.1.1"><span class="ltx_text ltx_font_italic" id="A1.T13.99.99.99.1.1.1">3.0</span></sub>
</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T13.100.100.100.2">63.4<sub class="ltx_sub" id="A1.T13.100.100.100.2.1"><span class="ltx_text ltx_font_italic" id="A1.T13.100.100.100.2.1.1">3.0</span></sub>
</td>
<td class="ltx_td ltx_align_left" id="A1.T13.101.101.101.3">56.1<sub class="ltx_sub" id="A1.T13.101.101.101.3.1"><span class="ltx_text ltx_font_italic" id="A1.T13.101.101.101.3.1.1">4.0</span></sub>
</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T13.102.102.102.4">58.2<sub class="ltx_sub" id="A1.T13.102.102.102.4.1"><span class="ltx_text ltx_font_italic" id="A1.T13.102.102.102.4.1.1">4.1</span></sub>
</td>
<td class="ltx_td ltx_align_left" id="A1.T13.103.103.103.5">58.4<sub class="ltx_sub" id="A1.T13.103.103.103.5.1"><span class="ltx_text ltx_font_italic" id="A1.T13.103.103.103.5.1.1">3.8</span></sub>
</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T13.104.104.104.6">61.3<sub class="ltx_sub" id="A1.T13.104.104.104.6.1"><span class="ltx_text ltx_font_italic" id="A1.T13.104.104.104.6.1.1">3.6</span></sub>
</td>
<td class="ltx_td ltx_align_left" id="A1.T13.105.105.105.7">57.4<sub class="ltx_sub" id="A1.T13.105.105.105.7.1"><span class="ltx_text ltx_font_italic" id="A1.T13.105.105.105.7.1.1">4.0</span></sub>
</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T13.106.106.106.8">61.1<sub class="ltx_sub" id="A1.T13.106.106.106.8.1"><span class="ltx_text ltx_font_italic" id="A1.T13.106.106.106.8.1.1">4.1</span></sub>
</td>
<td class="ltx_td ltx_align_left" id="A1.T13.107.107.107.9">54.5<sub class="ltx_sub" id="A1.T13.107.107.107.9.1"><span class="ltx_text ltx_font_italic" id="A1.T13.107.107.107.9.1.1">0.7</span></sub>
</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T13.108.108.108.10">57.8<sub class="ltx_sub" id="A1.T13.108.108.108.10.1"><span class="ltx_text ltx_font_italic" id="A1.T13.108.108.108.10.1.1">0.8</span></sub>
</td>
<td class="ltx_td ltx_align_left" id="A1.T13.109.109.109.11">51.8<sub class="ltx_sub" id="A1.T13.109.109.109.11.1"><span class="ltx_text ltx_font_italic" id="A1.T13.109.109.109.11.1.1">1.2</span></sub>
</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T13.110.110.110.12">54.5<sub class="ltx_sub" id="A1.T13.110.110.110.12.1"><span class="ltx_text ltx_font_italic" id="A1.T13.110.110.110.12.1.1">1.4</span></sub>
</td>
<td class="ltx_td ltx_align_left" id="A1.T13.111.111.111.13">32.8<sub class="ltx_sub" id="A1.T13.111.111.111.13.1"><span class="ltx_text ltx_font_italic" id="A1.T13.111.111.111.13.1.1">2.8</span></sub>
</td>
<td class="ltx_td ltx_align_left" id="A1.T13.112.112.112.14">36.9<sub class="ltx_sub" id="A1.T13.112.112.112.14.1"><span class="ltx_text ltx_font_italic" id="A1.T13.112.112.112.14.1.1">2.9</span></sub>
</td>
</tr>
<tr class="ltx_tr" id="A1.T13.168.168.176">
<td class="ltx_td ltx_border_r" id="A1.T13.168.168.176.1"></td>
<td class="ltx_td ltx_border_r" id="A1.T13.168.168.176.2"></td>
<td class="ltx_td ltx_border_r" id="A1.T13.168.168.176.3"></td>
<td class="ltx_td ltx_align_left" id="A1.T13.168.168.176.4"><span class="ltx_text" id="A1.T13.168.168.176.4.1" style="color:#FF0000;">(+1.7)</span></td>
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T13.168.168.176.5"><span class="ltx_text" id="A1.T13.168.168.176.5.1" style="color:#FF0000;">(+2.1)</span></td>
<td class="ltx_td ltx_align_left" id="A1.T13.168.168.176.6"><span class="ltx_text" id="A1.T13.168.168.176.6.1" style="color:#FF0000;">(+13.3)</span></td>
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T13.168.168.176.7"><span class="ltx_text" id="A1.T13.168.168.176.7.1" style="color:#FF0000;">(+11.3)</span></td>
<td class="ltx_td ltx_align_left" id="A1.T13.168.168.176.8"><span class="ltx_text" id="A1.T13.168.168.176.8.1" style="color:#FF0000;">(+3.6)</span></td>
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T13.168.168.176.9"><span class="ltx_text" id="A1.T13.168.168.176.9.1" style="color:#FF0000;">(+3.7)</span></td>
<td class="ltx_td ltx_align_left" id="A1.T13.168.168.176.10"><span class="ltx_text" id="A1.T13.168.168.176.10.1" style="color:#0000FF;">(-1.4)</span></td>
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T13.168.168.176.11"><span class="ltx_text" id="A1.T13.168.168.176.11.1" style="color:#FF0000;">(+1.1)</span></td>
<td class="ltx_td ltx_align_left" id="A1.T13.168.168.176.12"><span class="ltx_text" id="A1.T13.168.168.176.12.1" style="color:#FF0000;">(+3.5)</span></td>
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T13.168.168.176.13"><span class="ltx_text" id="A1.T13.168.168.176.13.1" style="color:#FF0000;">(+2.8)</span></td>
<td class="ltx_td ltx_align_left" id="A1.T13.168.168.176.14"><span class="ltx_text" id="A1.T13.168.168.176.14.1" style="color:#FF0000;">(+1.4)</span></td>
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T13.168.168.176.15"><span class="ltx_text" id="A1.T13.168.168.176.15.1" style="color:#FF0000;">(+2.0)</span></td>
<td class="ltx_td ltx_align_left" id="A1.T13.168.168.176.16"><span class="ltx_text" id="A1.T13.168.168.176.16.1" style="color:#FF0000;">(+5.0)</span></td>
<td class="ltx_td ltx_align_left" id="A1.T13.168.168.176.17"><span class="ltx_text" id="A1.T13.168.168.176.17.1" style="color:#FF0000;">(+5.1)</span></td>
</tr>
<tr class="ltx_tr" id="A1.T13.126.126.126">
<td class="ltx_td ltx_align_left ltx_border_b ltx_border_r ltx_border_t" id="A1.T13.126.126.126.15" rowspan="8"><span class="ltx_text" id="A1.T13.126.126.126.15.1">
<span class="ltx_tabular ltx_align_middle" id="A1.T13.126.126.126.15.1.1">
<span class="ltx_tr" id="A1.T13.126.126.126.15.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_left" id="A1.T13.126.126.126.15.1.1.1.1">Instruction</span></span>
<span class="ltx_tr" id="A1.T13.126.126.126.15.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_left" id="A1.T13.126.126.126.15.1.1.2.1">Tuned</span></span>
</span></span></td>
<td class="ltx_td ltx_align_left ltx_border_b ltx_border_r ltx_border_t" id="A1.T13.126.126.126.16" rowspan="8"><span class="ltx_text" id="A1.T13.126.126.126.16.1">RT</span></td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T13.126.126.126.17">No Mix</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T13.113.113.113.1">62.8<sub class="ltx_sub" id="A1.T13.113.113.113.1.1"><span class="ltx_text ltx_font_italic" id="A1.T13.113.113.113.1.1.1">3.2</span></sub>
</td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T13.114.114.114.2">65.9<sub class="ltx_sub" id="A1.T13.114.114.114.2.1"><span class="ltx_text ltx_font_italic" id="A1.T13.114.114.114.2.1.1">3.1</span></sub>
</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T13.115.115.115.3">64.8<sub class="ltx_sub" id="A1.T13.115.115.115.3.1"><span class="ltx_text ltx_font_italic" id="A1.T13.115.115.115.3.1.1">4.0</span></sub>
</td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T13.116.116.116.4">66.9<sub class="ltx_sub" id="A1.T13.116.116.116.4.1"><span class="ltx_text ltx_font_italic" id="A1.T13.116.116.116.4.1.1">4.2</span></sub>
</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T13.117.117.117.5">60.2<sub class="ltx_sub" id="A1.T13.117.117.117.5.1"><span class="ltx_text ltx_font_italic" id="A1.T13.117.117.117.5.1.1">2.7</span></sub>
</td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T13.118.118.118.6">62.6<sub class="ltx_sub" id="A1.T13.118.118.118.6.1"><span class="ltx_text ltx_font_italic" id="A1.T13.118.118.118.6.1.1">3.0</span></sub>
</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T13.119.119.119.7">65.4<sub class="ltx_sub" id="A1.T13.119.119.119.7.1"><span class="ltx_text ltx_font_italic" id="A1.T13.119.119.119.7.1.1">4.0</span></sub>
</td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T13.120.120.120.8">67.5<sub class="ltx_sub" id="A1.T13.120.120.120.8.1"><span class="ltx_text ltx_font_italic" id="A1.T13.120.120.120.8.1.1">4.0</span></sub>
</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T13.121.121.121.9">59.2<sub class="ltx_sub" id="A1.T13.121.121.121.9.1"><span class="ltx_text ltx_font_italic" id="A1.T13.121.121.121.9.1.1">1.0</span></sub>
</td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T13.122.122.122.10">61.9<sub class="ltx_sub" id="A1.T13.122.122.122.10.1"><span class="ltx_text ltx_font_italic" id="A1.T13.122.122.122.10.1.1">0.8</span></sub>
</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T13.123.123.123.11">63.8<sub class="ltx_sub" id="A1.T13.123.123.123.11.1"><span class="ltx_text ltx_font_italic" id="A1.T13.123.123.123.11.1.1">1.1</span></sub>
</td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T13.124.124.124.12">65.0<sub class="ltx_sub" id="A1.T13.124.124.124.12.1"><span class="ltx_text ltx_font_italic" id="A1.T13.124.124.124.12.1.1">1.2</span></sub>
</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T13.125.125.125.13">64.6<sub class="ltx_sub" id="A1.T13.125.125.125.13.1"><span class="ltx_text ltx_font_italic" id="A1.T13.125.125.125.13.1.1">2.4</span></sub>
</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T13.126.126.126.14">66.9<sub class="ltx_sub" id="A1.T13.126.126.126.14.1"><span class="ltx_text ltx_font_italic" id="A1.T13.126.126.126.14.1.1">2.4</span></sub>
</td>
</tr>
<tr class="ltx_tr" id="A1.T13.168.168.177">
<td class="ltx_td ltx_border_r" id="A1.T13.168.168.177.1"></td>
<td class="ltx_td ltx_align_left" id="A1.T13.168.168.177.2"><span class="ltx_text" id="A1.T13.168.168.177.2.1" style="color:#FF0000;">(+4.6)</span></td>
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T13.168.168.177.3"><span class="ltx_text" id="A1.T13.168.168.177.3.1" style="color:#FF0000;">(+4.6)</span></td>
<td class="ltx_td ltx_align_left" id="A1.T13.168.168.177.4"><span class="ltx_text" id="A1.T13.168.168.177.4.1" style="color:#FF0000;">(+13.3)</span></td>
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T13.168.168.177.5"><span class="ltx_text" id="A1.T13.168.168.177.5.1" style="color:#FF0000;">(+11.3)</span></td>
<td class="ltx_td ltx_align_left" id="A1.T13.168.168.177.6"><span class="ltx_text" id="A1.T13.168.168.177.6.1" style="color:#FF0000;">(+5.4)</span></td>
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T13.168.168.177.7"><span class="ltx_text" id="A1.T13.168.168.177.7.1" style="color:#FF0000;">(+5.0)</span></td>
<td class="ltx_td ltx_align_left" id="A1.T13.168.168.177.8"><span class="ltx_text" id="A1.T13.168.168.177.8.1" style="color:#FF0000;">(+6.6)</span></td>
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T13.168.168.177.9"><span class="ltx_text" id="A1.T13.168.168.177.9.1" style="color:#FF0000;">(+7.5)</span></td>
<td class="ltx_td ltx_align_left" id="A1.T13.168.168.177.10"><span class="ltx_text" id="A1.T13.168.168.177.10.1" style="color:#FF0000;">(+8.2)</span></td>
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T13.168.168.177.11"><span class="ltx_text" id="A1.T13.168.168.177.11.1" style="color:#FF0000;">(+6.9)</span></td>
<td class="ltx_td ltx_align_left" id="A1.T13.168.168.177.12"><span class="ltx_text" id="A1.T13.168.168.177.12.1" style="color:#FF0000;">(+13.4)</span></td>
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T13.168.168.177.13"><span class="ltx_text" id="A1.T13.168.168.177.13.1" style="color:#FF0000;">(+12.5)</span></td>
<td class="ltx_td ltx_align_left" id="A1.T13.168.168.177.14"><span class="ltx_text" id="A1.T13.168.168.177.14.1" style="color:#FF0000;">(+36.8)</span></td>
<td class="ltx_td ltx_align_left" id="A1.T13.168.168.177.15"><span class="ltx_text" id="A1.T13.168.168.177.15.1" style="color:#FF0000;">(+35.1)</span></td>
</tr>
<tr class="ltx_tr" id="A1.T13.140.140.140">
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T13.140.140.140.15">SciRiFF Mix</td>
<td class="ltx_td ltx_align_left" id="A1.T13.127.127.127.1">63.4<sub class="ltx_sub" id="A1.T13.127.127.127.1.1"><span class="ltx_text ltx_font_italic" id="A1.T13.127.127.127.1.1.1">3.2</span></sub>
</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T13.128.128.128.2">66.3<sub class="ltx_sub" id="A1.T13.128.128.128.2.1"><span class="ltx_text ltx_font_italic" id="A1.T13.128.128.128.2.1.1">3.0</span></sub>
</td>
<td class="ltx_td ltx_align_left" id="A1.T13.129.129.129.3">66.5<sub class="ltx_sub" id="A1.T13.129.129.129.3.1"><span class="ltx_text ltx_font_italic" id="A1.T13.129.129.129.3.1.1">3.8</span></sub>
</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T13.130.130.130.4">66.9<sub class="ltx_sub" id="A1.T13.130.130.130.4.1"><span class="ltx_text ltx_font_italic" id="A1.T13.130.130.130.4.1.1">3.9</span></sub>
</td>
<td class="ltx_td ltx_align_left" id="A1.T13.131.131.131.5">58.2<sub class="ltx_sub" id="A1.T13.131.131.131.5.1"><span class="ltx_text ltx_font_italic" id="A1.T13.131.131.131.5.1.1">3.0</span></sub>
</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T13.132.132.132.6">60.6<sub class="ltx_sub" id="A1.T13.132.132.132.6.1"><span class="ltx_text ltx_font_italic" id="A1.T13.132.132.132.6.1.1">2.8</span></sub>
</td>
<td class="ltx_td ltx_align_left" id="A1.T13.133.133.133.7">66.4<sub class="ltx_sub" id="A1.T13.133.133.133.7.1"><span class="ltx_text ltx_font_italic" id="A1.T13.133.133.133.7.1.1">3.4</span></sub>
</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T13.134.134.134.8">68.1<sub class="ltx_sub" id="A1.T13.134.134.134.8.1"><span class="ltx_text ltx_font_italic" id="A1.T13.134.134.134.8.1.1">3.3</span></sub>
</td>
<td class="ltx_td ltx_align_left" id="A1.T13.135.135.135.9">58.5<sub class="ltx_sub" id="A1.T13.135.135.135.9.1"><span class="ltx_text ltx_font_italic" id="A1.T13.135.135.135.9.1.1">1.0</span></sub>
</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T13.136.136.136.10">60.6<sub class="ltx_sub" id="A1.T13.136.136.136.10.1"><span class="ltx_text ltx_font_italic" id="A1.T13.136.136.136.10.1.1">0.8</span></sub>
</td>
<td class="ltx_td ltx_align_left" id="A1.T13.137.137.137.11">64.3<sub class="ltx_sub" id="A1.T13.137.137.137.11.1"><span class="ltx_text ltx_font_italic" id="A1.T13.137.137.137.11.1.1">1.2</span></sub>
</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T13.138.138.138.12">66.2<sub class="ltx_sub" id="A1.T13.138.138.138.12.1"><span class="ltx_text ltx_font_italic" id="A1.T13.138.138.138.12.1.1">1.4</span></sub>
</td>
<td class="ltx_td ltx_align_left" id="A1.T13.139.139.139.13">64.3<sub class="ltx_sub" id="A1.T13.139.139.139.13.1"><span class="ltx_text ltx_font_italic" id="A1.T13.139.139.139.13.1.1">2.6</span></sub>
</td>
<td class="ltx_td ltx_align_left" id="A1.T13.140.140.140.14">66.9<sub class="ltx_sub" id="A1.T13.140.140.140.14.1"><span class="ltx_text ltx_font_italic" id="A1.T13.140.140.140.14.1.1">2.8</span></sub>
</td>
</tr>
<tr class="ltx_tr" id="A1.T13.168.168.178">
<td class="ltx_td ltx_border_r" id="A1.T13.168.168.178.1"></td>
<td class="ltx_td ltx_align_left" id="A1.T13.168.168.178.2"><span class="ltx_text" id="A1.T13.168.168.178.2.1" style="color:#FF0000;">(+5.2)</span></td>
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T13.168.168.178.3"><span class="ltx_text" id="A1.T13.168.168.178.3.1" style="color:#FF0000;">(+5.0)</span></td>
<td class="ltx_td ltx_align_left" id="A1.T13.168.168.178.4"><span class="ltx_text" id="A1.T13.168.168.178.4.1" style="color:#FF0000;">(+1.7)</span></td>
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T13.168.168.178.5"><span class="ltx_text" id="A1.T13.168.168.178.5.1" style="color:#FF0000;">(+11.3)</span></td>
<td class="ltx_td ltx_align_left" id="A1.T13.168.168.178.6"><span class="ltx_text" id="A1.T13.168.168.178.6.1" style="color:#FF0000;">(+3.4)</span></td>
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T13.168.168.178.7"><span class="ltx_text" id="A1.T13.168.168.178.7.1" style="color:#FF0000;">(+3.0)</span></td>
<td class="ltx_td ltx_align_left" id="A1.T13.168.168.178.8"><span class="ltx_text" id="A1.T13.168.168.178.8.1" style="color:#FF0000;">(+7.6)</span></td>
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T13.168.168.178.9"><span class="ltx_text" id="A1.T13.168.168.178.9.1" style="color:#FF0000;">(+8.1)</span></td>
<td class="ltx_td ltx_align_left" id="A1.T13.168.168.178.10"><span class="ltx_text" id="A1.T13.168.168.178.10.1" style="color:#FF0000;">(+7.5)</span></td>
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T13.168.168.178.11"><span class="ltx_text" id="A1.T13.168.168.178.11.1" style="color:#FF0000;">(+5.6)</span></td>
<td class="ltx_td ltx_align_left" id="A1.T13.168.168.178.12"><span class="ltx_text" id="A1.T13.168.168.178.12.1" style="color:#FF0000;">(+13.9)</span></td>
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T13.168.168.178.13"><span class="ltx_text" id="A1.T13.168.168.178.13.1" style="color:#FF0000;">(+13.7)</span></td>
<td class="ltx_td ltx_align_left" id="A1.T13.168.168.178.14"><span class="ltx_text" id="A1.T13.168.168.178.14.1" style="color:#FF0000;">(+36.5)</span></td>
<td class="ltx_td ltx_align_left" id="A1.T13.168.168.178.15"><span class="ltx_text" id="A1.T13.168.168.178.15.1" style="color:#FF0000;">(+35.1)</span></td>
</tr>
<tr class="ltx_tr" id="A1.T13.154.154.154">
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T13.154.154.154.15">Tülu Mix</td>
<td class="ltx_td ltx_align_left" id="A1.T13.141.141.141.1">64.3<sub class="ltx_sub" id="A1.T13.141.141.141.1.1"><span class="ltx_text ltx_font_italic" id="A1.T13.141.141.141.1.1.1">3.1</span></sub>
</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T13.142.142.142.2">66.3<sub class="ltx_sub" id="A1.T13.142.142.142.2.1"><span class="ltx_text ltx_font_italic" id="A1.T13.142.142.142.2.1.1">3.2</span></sub>
</td>
<td class="ltx_td ltx_align_left" id="A1.T13.143.143.143.3">65.4<sub class="ltx_sub" id="A1.T13.143.143.143.3.1"><span class="ltx_text ltx_font_italic" id="A1.T13.143.143.143.3.1.1">4.2</span></sub>
</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T13.144.144.144.4">67.5<sub class="ltx_sub" id="A1.T13.144.144.144.4.1"><span class="ltx_text ltx_font_italic" id="A1.T13.144.144.144.4.1.1">4.3</span></sub>
</td>
<td class="ltx_td ltx_align_left" id="A1.T13.145.145.145.5">62.8<sub class="ltx_sub" id="A1.T13.145.145.145.5.1"><span class="ltx_text ltx_font_italic" id="A1.T13.145.145.145.5.1.1">2.8</span></sub>
</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T13.146.146.146.6">66.9<sub class="ltx_sub" id="A1.T13.146.146.146.6.1"><span class="ltx_text ltx_font_italic" id="A1.T13.146.146.146.6.1.1">2.8</span></sub>
</td>
<td class="ltx_td ltx_align_left" id="A1.T13.147.147.147.7">63.9<sub class="ltx_sub" id="A1.T13.147.147.147.7.1"><span class="ltx_text ltx_font_italic" id="A1.T13.147.147.147.7.1.1">2.8</span></sub>
</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T13.148.148.148.8">66.9<sub class="ltx_sub" id="A1.T13.148.148.148.8.1"><span class="ltx_text ltx_font_italic" id="A1.T13.148.148.148.8.1.1">2.8</span></sub>
</td>
<td class="ltx_td ltx_align_left" id="A1.T13.149.149.149.9">59.2<sub class="ltx_sub" id="A1.T13.149.149.149.9.1"><span class="ltx_text ltx_font_italic" id="A1.T13.149.149.149.9.1.1">2.8</span></sub>
</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T13.150.150.150.10">61.0<sub class="ltx_sub" id="A1.T13.150.150.150.10.1"><span class="ltx_text ltx_font_italic" id="A1.T13.150.150.150.10.1.1">2.8</span></sub>
</td>
<td class="ltx_td ltx_align_left" id="A1.T13.151.151.151.11">62.4<sub class="ltx_sub" id="A1.T13.151.151.151.11.1"><span class="ltx_text ltx_font_italic" id="A1.T13.151.151.151.11.1.1">2.8</span></sub>
</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T13.152.152.152.12">66.3<sub class="ltx_sub" id="A1.T13.152.152.152.12.1"><span class="ltx_text ltx_font_italic" id="A1.T13.152.152.152.12.1.1">2.8</span></sub>
</td>
<td class="ltx_td ltx_align_left" id="A1.T13.153.153.153.13">63.8<sub class="ltx_sub" id="A1.T13.153.153.153.13.1"><span class="ltx_text ltx_font_italic" id="A1.T13.153.153.153.13.1.1">2.8</span></sub>
</td>
<td class="ltx_td ltx_align_left" id="A1.T13.154.154.154.14">66.9<sub class="ltx_sub" id="A1.T13.154.154.154.14.1"><span class="ltx_text ltx_font_italic" id="A1.T13.154.154.154.14.1.1">2.8</span></sub>
</td>
</tr>
<tr class="ltx_tr" id="A1.T13.168.168.179">
<td class="ltx_td ltx_border_r" id="A1.T13.168.168.179.1"></td>
<td class="ltx_td ltx_align_left" id="A1.T13.168.168.179.2"><span class="ltx_text" id="A1.T13.168.168.179.2.1" style="color:#FF0000;">(+6.1)</span></td>
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T13.168.168.179.3"><span class="ltx_text" id="A1.T13.168.168.179.3.1" style="color:#FF0000;">(+5.0)</span></td>
<td class="ltx_td ltx_align_left" id="A1.T13.168.168.179.4"><span class="ltx_text" id="A1.T13.168.168.179.4.1" style="color:#FF0000;">(+13.9)</span></td>
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T13.168.168.179.5"><span class="ltx_text" id="A1.T13.168.168.179.5.1" style="color:#FF0000;">(+11.9)</span></td>
<td class="ltx_td ltx_align_left" id="A1.T13.168.168.179.6"><span class="ltx_text" id="A1.T13.168.168.179.6.1" style="color:#FF0000;">(+8.0)</span></td>
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T13.168.168.179.7"><span class="ltx_text" id="A1.T13.168.168.179.7.1" style="color:#FF0000;">(+9.3)</span></td>
<td class="ltx_td ltx_align_left" id="A1.T13.168.168.179.8"><span class="ltx_text" id="A1.T13.168.168.179.8.1" style="color:#FF0000;">(+5.1)</span></td>
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T13.168.168.179.9"><span class="ltx_text" id="A1.T13.168.168.179.9.1" style="color:#FF0000;">(+6.9)</span></td>
<td class="ltx_td ltx_align_left" id="A1.T13.168.168.179.10"><span class="ltx_text" id="A1.T13.168.168.179.10.1" style="color:#FF0000;">(+8.2)</span></td>
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T13.168.168.179.11"><span class="ltx_text" id="A1.T13.168.168.179.11.1" style="color:#FF0000;">(+6.0)</span></td>
<td class="ltx_td ltx_align_left" id="A1.T13.168.168.179.12"><span class="ltx_text" id="A1.T13.168.168.179.12.1" style="color:#FF0000;">(+12.0)</span></td>
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T13.168.168.179.13"><span class="ltx_text" id="A1.T13.168.168.179.13.1" style="color:#FF0000;">(+13.8)</span></td>
<td class="ltx_td ltx_align_left" id="A1.T13.168.168.179.14"><span class="ltx_text" id="A1.T13.168.168.179.14.1" style="color:#FF0000;">(+36)</span></td>
<td class="ltx_td ltx_align_left" id="A1.T13.168.168.179.15"><span class="ltx_text" id="A1.T13.168.168.179.15.1" style="color:#FF0000;">(+35.1)</span></td>
</tr>
<tr class="ltx_tr" id="A1.T13.168.168.168">
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T13.168.168.168.15">Full Mix</td>
<td class="ltx_td ltx_align_left" id="A1.T13.155.155.155.1">64.3<sub class="ltx_sub" id="A1.T13.155.155.155.1.1"><span class="ltx_text ltx_font_italic" id="A1.T13.155.155.155.1.1.1">3.3</span></sub>
</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T13.156.156.156.2">66.9<sub class="ltx_sub" id="A1.T13.156.156.156.2.1"><span class="ltx_text ltx_font_italic" id="A1.T13.156.156.156.2.1.1">3.5</span></sub>
</td>
<td class="ltx_td ltx_align_left" id="A1.T13.157.157.157.3">65.3<sub class="ltx_sub" id="A1.T13.157.157.157.3.1"><span class="ltx_text ltx_font_italic" id="A1.T13.157.157.157.3.1.1">4.2</span></sub>
</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T13.158.158.158.4">66.9<sub class="ltx_sub" id="A1.T13.158.158.158.4.1"><span class="ltx_text ltx_font_italic" id="A1.T13.158.158.158.4.1.1">4.3</span></sub>
</td>
<td class="ltx_td ltx_align_left" id="A1.T13.159.159.159.5">65.4<sub class="ltx_sub" id="A1.T13.159.159.159.5.1"><span class="ltx_text ltx_font_italic" id="A1.T13.159.159.159.5.1.1">3.2</span></sub>
</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T13.160.160.160.6">66.9<sub class="ltx_sub" id="A1.T13.160.160.160.6.1"><span class="ltx_text ltx_font_italic" id="A1.T13.160.160.160.6.1.1">3.4</span></sub>
</td>
<td class="ltx_td ltx_align_left" id="A1.T13.161.161.161.7">64.8<sub class="ltx_sub" id="A1.T13.161.161.161.7.1"><span class="ltx_text ltx_font_italic" id="A1.T13.161.161.161.7.1.1">4.3</span></sub>
</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T13.162.162.162.8">66.9<sub class="ltx_sub" id="A1.T13.162.162.162.8.1"><span class="ltx_text ltx_font_italic" id="A1.T13.162.162.162.8.1.1">4.4</span></sub>
</td>
<td class="ltx_td ltx_align_left" id="A1.T13.163.163.163.9">56.4<sub class="ltx_sub" id="A1.T13.163.163.163.9.1"><span class="ltx_text ltx_font_italic" id="A1.T13.163.163.163.9.1.1">0.4</span></sub>
</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T13.164.164.164.10">58.1<sub class="ltx_sub" id="A1.T13.164.164.164.10.1"><span class="ltx_text ltx_font_italic" id="A1.T13.164.164.164.10.1.1">0.8</span></sub>
</td>
<td class="ltx_td ltx_align_left" id="A1.T13.165.165.165.11">62.8<sub class="ltx_sub" id="A1.T13.165.165.165.11.1"><span class="ltx_text ltx_font_italic" id="A1.T13.165.165.165.11.1.1">1.8</span></sub>
</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T13.166.166.166.12">65.6<sub class="ltx_sub" id="A1.T13.166.166.166.12.1"><span class="ltx_text ltx_font_italic" id="A1.T13.166.166.166.12.1.1">1.6</span></sub>
</td>
<td class="ltx_td ltx_align_left" id="A1.T13.167.167.167.13">64.5<sub class="ltx_sub" id="A1.T13.167.167.167.13.1"><span class="ltx_text ltx_font_italic" id="A1.T13.167.167.167.13.1.1">2.4</span></sub>
</td>
<td class="ltx_td ltx_align_left" id="A1.T13.168.168.168.14">66.9<sub class="ltx_sub" id="A1.T13.168.168.168.14.1"><span class="ltx_text ltx_font_italic" id="A1.T13.168.168.168.14.1.1">2.6</span></sub>
</td>
</tr>
<tr class="ltx_tr" id="A1.T13.168.168.180">
<td class="ltx_td ltx_border_b ltx_border_r" id="A1.T13.168.168.180.1"></td>
<td class="ltx_td ltx_align_left ltx_border_b" id="A1.T13.168.168.180.2"><span class="ltx_text" id="A1.T13.168.168.180.2.1" style="color:#FF0000;">(+6.1)</span></td>
<td class="ltx_td ltx_align_left ltx_border_b ltx_border_r" id="A1.T13.168.168.180.3"><span class="ltx_text" id="A1.T13.168.168.180.3.1" style="color:#FF0000;">(+5.6)</span></td>
<td class="ltx_td ltx_align_left ltx_border_b" id="A1.T13.168.168.180.4"><span class="ltx_text" id="A1.T13.168.168.180.4.1" style="color:#FF0000;">(+13.8)</span></td>
<td class="ltx_td ltx_align_left ltx_border_b ltx_border_r" id="A1.T13.168.168.180.5"><span class="ltx_text" id="A1.T13.168.168.180.5.1" style="color:#FF0000;">(+11.3)</span></td>
<td class="ltx_td ltx_align_left ltx_border_b" id="A1.T13.168.168.180.6"><span class="ltx_text" id="A1.T13.168.168.180.6.1" style="color:#FF0000;">(+9.6)</span></td>
<td class="ltx_td ltx_align_left ltx_border_b ltx_border_r" id="A1.T13.168.168.180.7"><span class="ltx_text" id="A1.T13.168.168.180.7.1" style="color:#FF0000;">(+9.3)</span></td>
<td class="ltx_td ltx_align_left ltx_border_b" id="A1.T13.168.168.180.8"><span class="ltx_text" id="A1.T13.168.168.180.8.1" style="color:#FF0000;">(+6.0)</span></td>
<td class="ltx_td ltx_align_left ltx_border_b ltx_border_r" id="A1.T13.168.168.180.9"><span class="ltx_text" id="A1.T13.168.168.180.9.1" style="color:#FF0000;">(+6.9)</span></td>
<td class="ltx_td ltx_align_left ltx_border_b" id="A1.T13.168.168.180.10"><span class="ltx_text" id="A1.T13.168.168.180.10.1" style="color:#FF0000;">(+5.0)</span></td>
<td class="ltx_td ltx_align_left ltx_border_b ltx_border_r" id="A1.T13.168.168.180.11"><span class="ltx_text" id="A1.T13.168.168.180.11.1" style="color:#FF0000;">(+3.1)</span></td>
<td class="ltx_td ltx_align_left ltx_border_b" id="A1.T13.168.168.180.12"><span class="ltx_text" id="A1.T13.168.168.180.12.1" style="color:#FF0000;">(+12.4)</span></td>
<td class="ltx_td ltx_align_left ltx_border_b ltx_border_r" id="A1.T13.168.168.180.13"><span class="ltx_text" id="A1.T13.168.168.180.13.1" style="color:#FF0000;">(+13.1)</span></td>
<td class="ltx_td ltx_align_left ltx_border_b" id="A1.T13.168.168.180.14"><span class="ltx_text" id="A1.T13.168.168.180.14.1" style="color:#FF0000;">(+36.7)</span></td>
<td class="ltx_td ltx_align_left ltx_border_b" id="A1.T13.168.168.180.15"><span class="ltx_text" id="A1.T13.168.168.180.15.1" style="color:#FF0000;">(+35.1)</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the performance of different Large Language Models (LLMs) on a coarse-grained classification task using the LazyReview dataset.  The models were evaluated using two metrics: string matching (S) and GPT-based (G) accuracy. The table shows results for different prompting methods: using only the target sentence (T), and using both the review and target sentence (RT).  It also includes results with and without adding in-context examples (E). The best performance for each scenario is highlighted in blue, and improvements over the basic zero-shot method are shown.
> <details>
> <summary>read the caption</summary>
> Table 13: Performance of LLMs on 3-fold cross-validation on LazyReview test sets for coarse-grained classification. S represents the string-matching evaluator, and G represents the GPT-based evaluator reporting accuracies. ‘T’ represents prompting with only the target sentence, RT represents the combination of the review and the target sentence. Adding demonstrations to the prompt is represented by ‘E’. The best results for this task is highlighted in blue. Increments are shown with the classic zero-shot setup without exemplars (first row for zero-shots) with T or RT.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="A1.T14.1.1">
<tr class="ltx_tr" id="A1.T14.1.1.1">
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T14.1.1.1.1" rowspan="2"><span class="ltx_text ltx_font_bold" id="A1.T14.1.1.1.1.1">Model</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T14.1.1.1.2" rowspan="2"><span class="ltx_text ltx_font_bold" id="A1.T14.1.1.1.2.1">Class</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" colspan="3" id="A1.T14.1.1.1.3"><span class="ltx_text ltx_font_bold" id="A1.T14.1.1.1.3.1">Fine-grained</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" colspan="3" id="A1.T14.1.1.1.4"><span class="ltx_text ltx_font_bold" id="A1.T14.1.1.1.4.1">Coarse-grained</span></td>
</tr>
<tr class="ltx_tr" id="A1.T14.1.1.2">
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T14.1.1.2.1"><span class="ltx_text ltx_font_bold" id="A1.T14.1.1.2.1.1">P</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T14.1.1.2.2"><span class="ltx_text ltx_font_bold" id="A1.T14.1.1.2.2.1">R</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T14.1.1.2.3"><span class="ltx_text ltx_font_bold" id="A1.T14.1.1.2.3.1">F1</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T14.1.1.2.4"><span class="ltx_text ltx_font_bold" id="A1.T14.1.1.2.4.1">P</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T14.1.1.2.5"><span class="ltx_text ltx_font_bold" id="A1.T14.1.1.2.5.1">R</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T14.1.1.2.6"><span class="ltx_text ltx_font_bold" id="A1.T14.1.1.2.6.1">F1</span></td>
</tr>
<tr class="ltx_tr" id="A1.T14.1.1.3">
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T14.1.1.3.1" rowspan="2"><span class="ltx_text" id="A1.T14.1.1.3.1.1">gemma-1.1-7b-it</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T14.1.1.3.2">Correct</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T14.1.1.3.3">0.56</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T14.1.1.3.4">1.00</td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T14.1.1.3.5">0.71</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T14.1.1.3.6">0.95</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T14.1.1.3.7">0.92</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T14.1.1.3.8">0.93</td>
</tr>
<tr class="ltx_tr" id="A1.T14.1.1.4">
<td class="ltx_td ltx_align_left" id="A1.T14.1.1.4.1">Incorrect</td>
<td class="ltx_td ltx_align_left" id="A1.T14.1.1.4.2">1.00</td>
<td class="ltx_td ltx_align_left" id="A1.T14.1.1.4.3">0.91</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T14.1.1.4.4">0.95</td>
<td class="ltx_td ltx_align_left" id="A1.T14.1.1.4.5">1.00</td>
<td class="ltx_td ltx_align_left" id="A1.T14.1.1.4.6">0.92</td>
<td class="ltx_td ltx_align_left" id="A1.T14.1.1.4.7">0.95</td>
</tr>
<tr class="ltx_tr" id="A1.T14.1.1.5">
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T14.1.1.5.1" rowspan="2"><span class="ltx_text" id="A1.T14.1.1.5.1.1">Llama-7B-chat</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T14.1.1.5.2">Correct</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T14.1.1.5.3">1.00</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T14.1.1.5.4">1.00</td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T14.1.1.5.5">1.00</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T14.1.1.5.6">0.95</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T14.1.1.5.7">0.98</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T14.1.1.5.8">0.97</td>
</tr>
<tr class="ltx_tr" id="A1.T14.1.1.6">
<td class="ltx_td ltx_align_left" id="A1.T14.1.1.6.1">Incorrect</td>
<td class="ltx_td ltx_align_left" id="A1.T14.1.1.6.2">1.00</td>
<td class="ltx_td ltx_align_left" id="A1.T14.1.1.6.3">1.00</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T14.1.1.6.4">1.00</td>
<td class="ltx_td ltx_align_left" id="A1.T14.1.1.6.5">1.00</td>
<td class="ltx_td ltx_align_left" id="A1.T14.1.1.6.6">1.00</td>
<td class="ltx_td ltx_align_left" id="A1.T14.1.1.6.7">1.00</td>
</tr>
<tr class="ltx_tr" id="A1.T14.1.1.7">
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T14.1.1.7.1" rowspan="2"><span class="ltx_text" id="A1.T14.1.1.7.1.1">Llama-13b-chat</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T14.1.1.7.2">Correct</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T14.1.1.7.3">0.88</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T14.1.1.7.4">1.00</td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T14.1.1.7.5">0.93</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T14.1.1.7.6">0.95</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T14.1.1.7.7">0.96</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T14.1.1.7.8">0.96</td>
</tr>
<tr class="ltx_tr" id="A1.T14.1.1.8">
<td class="ltx_td ltx_align_left" id="A1.T14.1.1.8.1">Incorrect</td>
<td class="ltx_td ltx_align_left" id="A1.T14.1.1.8.2">1.00</td>
<td class="ltx_td ltx_align_left" id="A1.T14.1.1.8.3">0.97</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T14.1.1.8.4">0.99</td>
<td class="ltx_td ltx_align_left" id="A1.T14.1.1.8.5">1.00</td>
<td class="ltx_td ltx_align_left" id="A1.T14.1.1.8.6">1.00</td>
<td class="ltx_td ltx_align_left" id="A1.T14.1.1.8.7">1.00</td>
</tr>
<tr class="ltx_tr" id="A1.T14.1.1.9">
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T14.1.1.9.1" rowspan="2"><span class="ltx_text" id="A1.T14.1.1.9.1.1">Mistral-7B-instruct</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T14.1.1.9.2">Correct</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T14.1.1.9.3">0.83</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T14.1.1.9.4">1.00</td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T14.1.1.9.5">0.91</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T14.1.1.9.6">0.92</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T14.1.1.9.7">0.98</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T14.1.1.9.8">0.95</td>
</tr>
<tr class="ltx_tr" id="A1.T14.1.1.10">
<td class="ltx_td ltx_align_left" id="A1.T14.1.1.10.1">Incorrect</td>
<td class="ltx_td ltx_align_left" id="A1.T14.1.1.10.2">1.00</td>
<td class="ltx_td ltx_align_left" id="A1.T14.1.1.10.3">0.97</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T14.1.1.10.4">0.91</td>
<td class="ltx_td ltx_align_left" id="A1.T14.1.1.10.5">1.00</td>
<td class="ltx_td ltx_align_left" id="A1.T14.1.1.10.6">1.00</td>
<td class="ltx_td ltx_align_left" id="A1.T14.1.1.10.7">1.00</td>
</tr>
<tr class="ltx_tr" id="A1.T14.1.1.11">
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T14.1.1.11.1" rowspan="2"><span class="ltx_text" id="A1.T14.1.1.11.1.1">Qwen-7B-chat</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T14.1.1.11.2">Correct</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T14.1.1.11.3">0.86</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T14.1.1.11.4">1.00</td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T14.1.1.11.5">0.92</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T14.1.1.11.6">1.00</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T14.1.1.11.7">1.00</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T14.1.1.11.8">1.00</td>
</tr>
<tr class="ltx_tr" id="A1.T14.1.1.12">
<td class="ltx_td ltx_align_left" id="A1.T14.1.1.12.1">Incorrect</td>
<td class="ltx_td ltx_align_left" id="A1.T14.1.1.12.2">1.00</td>
<td class="ltx_td ltx_align_left" id="A1.T14.1.1.12.3">0.97</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T14.1.1.12.4">0.99</td>
<td class="ltx_td ltx_align_left" id="A1.T14.1.1.12.5">1.00</td>
<td class="ltx_td ltx_align_left" id="A1.T14.1.1.12.6">1.00</td>
<td class="ltx_td ltx_align_left" id="A1.T14.1.1.12.7">1.00</td>
</tr>
<tr class="ltx_tr" id="A1.T14.1.1.13">
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T14.1.1.13.1" rowspan="2"><span class="ltx_text" id="A1.T14.1.1.13.1.1">Yi-6B-chat</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T14.1.1.13.2">Correct</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T14.1.1.13.3">1.00</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T14.1.1.13.4">0.92</td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T14.1.1.13.5">0.96</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T14.1.1.13.6">1.00</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T14.1.1.13.7">1.00</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T14.1.1.13.8">1.00</td>
</tr>
<tr class="ltx_tr" id="A1.T14.1.1.14">
<td class="ltx_td ltx_align_left" id="A1.T14.1.1.14.1">Incorrect</td>
<td class="ltx_td ltx_align_left" id="A1.T14.1.1.14.2">0.97</td>
<td class="ltx_td ltx_align_left" id="A1.T14.1.1.14.3">1.00</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T14.1.1.14.4">0.98</td>
<td class="ltx_td ltx_align_left" id="A1.T14.1.1.14.5">1.00</td>
<td class="ltx_td ltx_align_left" id="A1.T14.1.1.14.6">1.00</td>
<td class="ltx_td ltx_align_left" id="A1.T14.1.1.14.7">1.00</td>
</tr>
<tr class="ltx_tr" id="A1.T14.1.1.15">
<td class="ltx_td ltx_align_left ltx_border_b ltx_border_t" id="A1.T14.1.1.15.1" rowspan="2"><span class="ltx_text" id="A1.T14.1.1.15.1.1">SciTülu 7B</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T14.1.1.15.2">Correct</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T14.1.1.15.3">1.00</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T14.1.1.15.4">0.95</td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T14.1.1.15.5">0.98</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T14.1.1.15.6">0.91</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T14.1.1.15.7">0.94</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T14.1.1.15.8">0.98</td>
</tr>
<tr class="ltx_tr" id="A1.T14.1.1.16">
<td class="ltx_td ltx_align_left ltx_border_b" id="A1.T14.1.1.16.1">Incorrect</td>
<td class="ltx_td ltx_align_left ltx_border_b" id="A1.T14.1.1.16.2">1.00</td>
<td class="ltx_td ltx_align_left ltx_border_b" id="A1.T14.1.1.16.3">1.00</td>
<td class="ltx_td ltx_align_left ltx_border_b ltx_border_r" id="A1.T14.1.1.16.4">0.98</td>
<td class="ltx_td ltx_align_left ltx_border_b" id="A1.T14.1.1.16.5">1.00</td>
<td class="ltx_td ltx_align_left ltx_border_b" id="A1.T14.1.1.16.6">1.00</td>
<td class="ltx_td ltx_align_left ltx_border_b" id="A1.T14.1.1.16.7">1.00</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents a manual evaluation of the string-matching method used to assess the performance of different Large Language Models (LLMs) in a fine-grained and coarse-grained classification task.  For each LLM, the precision, recall, and F1-score are reported for both correctly and incorrectly classified instances. This manual evaluation serves as a ground truth comparison to evaluate the reliability of the automated string-matching metric against human judgment.
> <details>
> <summary>read the caption</summary>
> Table 14: Manual evaluation of the string-based evaluator for each model in terms of Precision (P), Recall (R), and F1 scores.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="A1.T15.1.1">
<tr class="ltx_tr" id="A1.T15.1.1.1">
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T15.1.1.1.1" rowspan="2"><span class="ltx_text ltx_font_bold" id="A1.T15.1.1.1.1.1">Model</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T15.1.1.1.2" rowspan="2"><span class="ltx_text ltx_font_bold" id="A1.T15.1.1.1.2.1">Class</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" colspan="3" id="A1.T15.1.1.1.3"><span class="ltx_text ltx_font_bold" id="A1.T15.1.1.1.3.1">Fine-grained</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" colspan="3" id="A1.T15.1.1.1.4"><span class="ltx_text ltx_font_bold" id="A1.T15.1.1.1.4.1">Coarse-grained</span></td>
</tr>
<tr class="ltx_tr" id="A1.T15.1.1.2">
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T15.1.1.2.1"><span class="ltx_text ltx_font_bold" id="A1.T15.1.1.2.1.1">P</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T15.1.1.2.2"><span class="ltx_text ltx_font_bold" id="A1.T15.1.1.2.2.1">R</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T15.1.1.2.3"><span class="ltx_text ltx_font_bold" id="A1.T15.1.1.2.3.1">F1</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T15.1.1.2.4"><span class="ltx_text ltx_font_bold" id="A1.T15.1.1.2.4.1">P</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T15.1.1.2.5"><span class="ltx_text ltx_font_bold" id="A1.T15.1.1.2.5.1">R</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T15.1.1.2.6"><span class="ltx_text ltx_font_bold" id="A1.T15.1.1.2.6.1">F1</span></td>
</tr>
<tr class="ltx_tr" id="A1.T15.1.1.3">
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T15.1.1.3.1" rowspan="2"><span class="ltx_text" id="A1.T15.1.1.3.1.1">Gemma-1.1-7b-it</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T15.1.1.3.2">Correct</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T15.1.1.3.3">0.69</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T15.1.1.3.4">0.96</td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T15.1.1.3.5">0.81</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T15.1.1.3.6">1.00</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T15.1.1.3.7">1.00</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T15.1.1.3.8">1.00</td>
</tr>
<tr class="ltx_tr" id="A1.T15.1.1.4">
<td class="ltx_td ltx_align_left" id="A1.T15.1.1.4.1">Incorrect</td>
<td class="ltx_td ltx_align_left" id="A1.T15.1.1.4.2">0.89</td>
<td class="ltx_td ltx_align_left" id="A1.T15.1.1.4.3">0.42</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T15.1.1.4.4">0.57</td>
<td class="ltx_td ltx_align_left" id="A1.T15.1.1.4.5">1.00</td>
<td class="ltx_td ltx_align_left" id="A1.T15.1.1.4.6">1.00</td>
<td class="ltx_td ltx_align_left" id="A1.T15.1.1.4.7">1.00</td>
</tr>
<tr class="ltx_tr" id="A1.T15.1.1.5">
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T15.1.1.5.1" rowspan="2"><span class="ltx_text" id="A1.T15.1.1.5.1.1">LlaMa-7B-chat</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T15.1.1.5.2">Correct</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T15.1.1.5.3">0.76</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T15.1.1.5.4">1.00</td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T15.1.1.5.5">0.87</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T15.1.1.5.6">1.00</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T15.1.1.5.7">1.00</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T15.1.1.5.8">1.00</td>
</tr>
<tr class="ltx_tr" id="A1.T15.1.1.6">
<td class="ltx_td ltx_align_left" id="A1.T15.1.1.6.1">Incorrect</td>
<td class="ltx_td ltx_align_left" id="A1.T15.1.1.6.2">0.89</td>
<td class="ltx_td ltx_align_left" id="A1.T15.1.1.6.3">0.42</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T15.1.1.6.4">0.57</td>
<td class="ltx_td ltx_align_left" id="A1.T15.1.1.6.5">1.00</td>
<td class="ltx_td ltx_align_left" id="A1.T15.1.1.6.6">1.00</td>
<td class="ltx_td ltx_align_left" id="A1.T15.1.1.6.7">1.00</td>
</tr>
<tr class="ltx_tr" id="A1.T15.1.1.7">
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T15.1.1.7.1" rowspan="2"><span class="ltx_text" id="A1.T15.1.1.7.1.1">LlaMa-13b-chat</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T15.1.1.7.2">Correct</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T15.1.1.7.3">0.76</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T15.1.1.7.4">1.00</td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T15.1.1.7.5">0.87</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T15.1.1.7.6">1.00</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T15.1.1.7.7">1.00</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T15.1.1.7.8">1.00</td>
</tr>
<tr class="ltx_tr" id="A1.T15.1.1.8">
<td class="ltx_td ltx_align_left" id="A1.T15.1.1.8.1">Incorrect</td>
<td class="ltx_td ltx_align_left" id="A1.T15.1.1.8.2">1.00</td>
<td class="ltx_td ltx_align_left" id="A1.T15.1.1.8.3">0.44</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T15.1.1.8.4">0.61</td>
<td class="ltx_td ltx_align_left" id="A1.T15.1.1.8.5">1.00</td>
<td class="ltx_td ltx_align_left" id="A1.T15.1.1.8.6">1.00</td>
<td class="ltx_td ltx_align_left" id="A1.T15.1.1.8.7">1.00</td>
</tr>
<tr class="ltx_tr" id="A1.T15.1.1.9">
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T15.1.1.9.1" rowspan="2"><span class="ltx_text" id="A1.T15.1.1.9.1.1">Mistral-7B-instruct</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T15.1.1.9.2">Correct</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T15.1.1.9.3">0.82</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T15.1.1.9.4">1.00</td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T15.1.1.9.5">0.90</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T15.1.1.9.6">1.00</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T15.1.1.9.7">1.00</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T15.1.1.9.8">1.00</td>
</tr>
<tr class="ltx_tr" id="A1.T15.1.1.10">
<td class="ltx_td ltx_align_left" id="A1.T15.1.1.10.1">Incorrect</td>
<td class="ltx_td ltx_align_left" id="A1.T15.1.1.10.2">1.00</td>
<td class="ltx_td ltx_align_left" id="A1.T15.1.1.10.3">0.36</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T15.1.1.10.4">0.53</td>
<td class="ltx_td ltx_align_left" id="A1.T15.1.1.10.5">1.00</td>
<td class="ltx_td ltx_align_left" id="A1.T15.1.1.10.6">1.00</td>
<td class="ltx_td ltx_align_left" id="A1.T15.1.1.10.7">1.00</td>
</tr>
<tr class="ltx_tr" id="A1.T15.1.1.11">
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T15.1.1.11.1" rowspan="2"><span class="ltx_text" id="A1.T15.1.1.11.1.1">Qwen-7B-chat</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T15.1.1.11.2">Correct</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T15.1.1.11.3">0.89</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T15.1.1.11.4">1.00</td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T15.1.1.11.5">0.94</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T15.1.1.11.6">1.00</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T15.1.1.11.7">1.00</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T15.1.1.11.8">1.00</td>
</tr>
<tr class="ltx_tr" id="A1.T15.1.1.12">
<td class="ltx_td ltx_align_left" id="A1.T15.1.1.12.1">Incorrect</td>
<td class="ltx_td ltx_align_left" id="A1.T15.1.1.12.2">1.00</td>
<td class="ltx_td ltx_align_left" id="A1.T15.1.1.12.3">0.42</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T15.1.1.12.4">0.59</td>
<td class="ltx_td ltx_align_left" id="A1.T15.1.1.12.5">1.00</td>
<td class="ltx_td ltx_align_left" id="A1.T15.1.1.12.6">1.00</td>
<td class="ltx_td ltx_align_left" id="A1.T15.1.1.12.7">1.00</td>
</tr>
<tr class="ltx_tr" id="A1.T15.1.1.13">
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T15.1.1.13.1" rowspan="2"><span class="ltx_text" id="A1.T15.1.1.13.1.1">Yi-6B-chat</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T15.1.1.13.2">Correct</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T15.1.1.13.3">0.88</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T15.1.1.13.4">1.00</td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T15.1.1.13.5">0.93</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T15.1.1.13.6">1.00</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T15.1.1.13.7">1.00</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T15.1.1.13.8">1.00</td>
</tr>
<tr class="ltx_tr" id="A1.T15.1.1.14">
<td class="ltx_td ltx_align_left" id="A1.T15.1.1.14.1">Incorrect</td>
<td class="ltx_td ltx_align_left" id="A1.T15.1.1.14.2">1.00</td>
<td class="ltx_td ltx_align_left" id="A1.T15.1.1.14.3">0.76</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T15.1.1.14.4">0.87</td>
<td class="ltx_td ltx_align_left" id="A1.T15.1.1.14.5">1.00</td>
<td class="ltx_td ltx_align_left" id="A1.T15.1.1.14.6">1.00</td>
<td class="ltx_td ltx_align_left" id="A1.T15.1.1.14.7">1.00</td>
</tr>
<tr class="ltx_tr" id="A1.T15.1.1.15">
<td class="ltx_td ltx_align_left ltx_border_b ltx_border_t" id="A1.T15.1.1.15.1" rowspan="2"><span class="ltx_text" id="A1.T15.1.1.15.1.1">SciTülu 7B</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T15.1.1.15.2">Correct</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T15.1.1.15.3">0.83</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T15.1.1.15.4">1.00</td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T15.1.1.15.5">0.94</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T15.1.1.15.6">1.00</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T15.1.1.15.7">1.00</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T15.1.1.15.8">1.00</td>
</tr>
<tr class="ltx_tr" id="A1.T15.1.1.16">
<td class="ltx_td ltx_align_left ltx_border_b" id="A1.T15.1.1.16.1">Incorrect</td>
<td class="ltx_td ltx_align_left ltx_border_b" id="A1.T15.1.1.16.2">1.00</td>
<td class="ltx_td ltx_align_left ltx_border_b" id="A1.T15.1.1.16.3">0.86</td>
<td class="ltx_td ltx_align_left ltx_border_b ltx_border_r" id="A1.T15.1.1.16.4">0.88</td>
<td class="ltx_td ltx_align_left ltx_border_b" id="A1.T15.1.1.16.5">1.00</td>
<td class="ltx_td ltx_align_left ltx_border_b" id="A1.T15.1.1.16.6">1.00</td>
<td class="ltx_td ltx_align_left ltx_border_b" id="A1.T15.1.1.16.7">1.00</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents a manual evaluation of the GPT-3.5 evaluator's performance.  For each language model (LLaMa 7B, LLaMa 13B, etc.), it shows the precision, recall, and F1 score for both fine-grained and coarse-grained classification tasks.  The evaluation assesses the evaluator's ability to correctly identify lazy thinking in peer reviews.
> <details>
> <summary>read the caption</summary>
> Table 15: Manual evaluation of the GPT-3.5 evaluator for each model in terms of Precision (P), Recall (R), and F1 scores.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2504.11042/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.11042/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.11042/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.11042/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.11042/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.11042/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.11042/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.11042/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.11042/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.11042/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.11042/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.11042/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.11042/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.11042/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.11042/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.11042/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.11042/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.11042/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.11042/19.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.11042/20.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}