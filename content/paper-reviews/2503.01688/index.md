---
title: "When an LLM is apprehensive about its answers -- and when its uncertainty is justified"
summary: "This paper investigates when LLMs are apprehensive and when their uncertainty is justified."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Natural Language Processing", "Large Language Models", "🏢 Skolkovo Institute of Science and Technology (Skoltech)",]
showSummary: true
date: 2025-03-03
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2503.01688 {{< /keyword >}}
{{< keyword icon="writer" >}} Petr Sychev et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-03-04 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2503.01688" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2503.01688" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2503.01688/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Large Language Models(LLMs) must be uncertainty aware, but current methods focus on specific uncertainties while ignoring others. This study explores token-wise entropy and model-as-judge to assess multiple-choice questions across different topics. The experiments use Phi-4, Mistral and Qwen with sizes from 1.5B to 72B and 14 topics to estimate uncertainty.



The paper finds that response entropy predicts errors in knowledge-dependent domains and indicates question difficulty.  The correlation vanishes for reasoning-dependent domains. Data-related entropy is important for uncertainty estimates while model-as-judge needs refining. Existing MMLU-Pro samples are biased and should balance reasoning for fair LLM assessment. Thus this paper facilitates a reliable deployment of LLMs.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Entropy is an effective indicator of question difficulty in knowledge-dependent domains. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} The Model-as-Judge approach needs refinement to accurately assess uncertainty. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Existing MMLU-Pro samples are biased and require balancing the amount of reasoning for a fair assessment. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper advances **LLM evaluation** by pinpointing the conditions where uncertainty estimates are reliable. It also emphasizes the need for enhanced datasets that consider reasoning complexity and topic balance, guiding the creation of **more robust and trustworthy LLMs**.

------
#### Visual Insights



![](https://arxiv.org/html/2503.01688/x1.png)

> 🔼 This figure illustrates the pipeline used to evaluate the uncertainty estimation of large language models (LLMs) in a multiple-choice question answering setting.  It starts with a set of multiple-choice questions from the MMLU-Pro dataset, which are then processed by various LLMs.  The pipeline then uses several techniques to estimate uncertainty, including token-wise entropy and model-as-judge (MASJ), and employs a separate model to assess various aspects of question complexity (reasoning requirements, knowledge requirements, and number of steps). The results, including correctness labels, are finally used to calculate ROC-AUC scores which are used to evaluate the effectiveness of the uncertainty estimation methods. 
> <details>
> <summary>read the caption</summary>
> Figure 1. Question complexity evaluation pipeline. See more details in the methods section
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_figure_panel ltx_guessed_headers ltx_align_middle" id="S4.SS1.SSS1.Px1.fig1.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.SS1.SSS1.Px1.fig1.1.1.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_th_row ltx_border_l ltx_border_r ltx_border_t" id="S4.SS1.SSS1.Px1.fig1.1.1.1.1" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text" id="S4.SS1.SSS1.Px1.fig1.1.1.1.1.1" style="font-size:80%;">Category</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_t" id="S4.SS1.SSS1.Px1.fig1.1.1.1.2" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text" id="S4.SS1.SSS1.Px1.fig1.1.1.1.2.1" style="font-size:80%;">Sample Count</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.SS1.SSS1.Px1.fig1.1.2.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_l ltx_border_r ltx_border_t" id="S4.SS1.SSS1.Px1.fig1.1.2.1.1" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text" id="S4.SS1.SSS1.Px1.fig1.1.2.1.1.1" style="font-size:80%;">Mathematics</span></th>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.SS1.SSS1.Px1.fig1.1.2.1.2" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text" id="S4.SS1.SSS1.Px1.fig1.1.2.1.2.1" style="font-size:80%;">1351</span></td>
</tr>
<tr class="ltx_tr" id="S4.SS1.SSS1.Px1.fig1.1.3.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_l ltx_border_r" id="S4.SS1.SSS1.Px1.fig1.1.3.2.1" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text" id="S4.SS1.SSS1.Px1.fig1.1.3.2.1.1" style="font-size:80%;">Physics</span></th>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.SS1.SSS1.Px1.fig1.1.3.2.2" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text" id="S4.SS1.SSS1.Px1.fig1.1.3.2.2.1" style="font-size:80%;">1299</span></td>
</tr>
<tr class="ltx_tr" id="S4.SS1.SSS1.Px1.fig1.1.4.3">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_l ltx_border_r" id="S4.SS1.SSS1.Px1.fig1.1.4.3.1" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text" id="S4.SS1.SSS1.Px1.fig1.1.4.3.1.1" style="font-size:80%;">Chemistry</span></th>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.SS1.SSS1.Px1.fig1.1.4.3.2" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text" id="S4.SS1.SSS1.Px1.fig1.1.4.3.2.1" style="font-size:80%;">1132</span></td>
</tr>
<tr class="ltx_tr" id="S4.SS1.SSS1.Px1.fig1.1.5.4">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_l ltx_border_r" id="S4.SS1.SSS1.Px1.fig1.1.5.4.1" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text" id="S4.SS1.SSS1.Px1.fig1.1.5.4.1.1" style="font-size:80%;">Law</span></th>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.SS1.SSS1.Px1.fig1.1.5.4.2" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text" id="S4.SS1.SSS1.Px1.fig1.1.5.4.2.1" style="font-size:80%;">1101</span></td>
</tr>
<tr class="ltx_tr" id="S4.SS1.SSS1.Px1.fig1.1.6.5">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_l ltx_border_r" id="S4.SS1.SSS1.Px1.fig1.1.6.5.1" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text" id="S4.SS1.SSS1.Px1.fig1.1.6.5.1.1" style="font-size:80%;">Engineering</span></th>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.SS1.SSS1.Px1.fig1.1.6.5.2" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text" id="S4.SS1.SSS1.Px1.fig1.1.6.5.2.1" style="font-size:80%;">969</span></td>
</tr>
<tr class="ltx_tr" id="S4.SS1.SSS1.Px1.fig1.1.7.6">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_l ltx_border_r" id="S4.SS1.SSS1.Px1.fig1.1.7.6.1" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text" id="S4.SS1.SSS1.Px1.fig1.1.7.6.1.1" style="font-size:80%;">Economics</span></th>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.SS1.SSS1.Px1.fig1.1.7.6.2" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text" id="S4.SS1.SSS1.Px1.fig1.1.7.6.2.1" style="font-size:80%;">844</span></td>
</tr>
<tr class="ltx_tr" id="S4.SS1.SSS1.Px1.fig1.1.8.7">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_l ltx_border_r" id="S4.SS1.SSS1.Px1.fig1.1.8.7.1" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text" id="S4.SS1.SSS1.Px1.fig1.1.8.7.1.1" style="font-size:80%;">Health</span></th>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.SS1.SSS1.Px1.fig1.1.8.7.2" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text" id="S4.SS1.SSS1.Px1.fig1.1.8.7.2.1" style="font-size:80%;">818</span></td>
</tr>
<tr class="ltx_tr" id="S4.SS1.SSS1.Px1.fig1.1.9.8">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_l ltx_border_r" id="S4.SS1.SSS1.Px1.fig1.1.9.8.1" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text" id="S4.SS1.SSS1.Px1.fig1.1.9.8.1.1" style="font-size:80%;">Psychology</span></th>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.SS1.SSS1.Px1.fig1.1.9.8.2" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text" id="S4.SS1.SSS1.Px1.fig1.1.9.8.2.1" style="font-size:80%;">798</span></td>
</tr>
<tr class="ltx_tr" id="S4.SS1.SSS1.Px1.fig1.1.10.9">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_l ltx_border_r" id="S4.SS1.SSS1.Px1.fig1.1.10.9.1" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text" id="S4.SS1.SSS1.Px1.fig1.1.10.9.1.1" style="font-size:80%;">Business</span></th>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.SS1.SSS1.Px1.fig1.1.10.9.2" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text" id="S4.SS1.SSS1.Px1.fig1.1.10.9.2.1" style="font-size:80%;">789</span></td>
</tr>
<tr class="ltx_tr" id="S4.SS1.SSS1.Px1.fig1.1.11.10">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_l ltx_border_r" id="S4.SS1.SSS1.Px1.fig1.1.11.10.1" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text" id="S4.SS1.SSS1.Px1.fig1.1.11.10.1.1" style="font-size:80%;">Biology</span></th>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.SS1.SSS1.Px1.fig1.1.11.10.2" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text" id="S4.SS1.SSS1.Px1.fig1.1.11.10.2.1" style="font-size:80%;">717</span></td>
</tr>
<tr class="ltx_tr" id="S4.SS1.SSS1.Px1.fig1.1.12.11">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_l ltx_border_r" id="S4.SS1.SSS1.Px1.fig1.1.12.11.1" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text" id="S4.SS1.SSS1.Px1.fig1.1.12.11.1.1" style="font-size:80%;">Philosophy</span></th>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.SS1.SSS1.Px1.fig1.1.12.11.2" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text" id="S4.SS1.SSS1.Px1.fig1.1.12.11.2.1" style="font-size:80%;">499</span></td>
</tr>
<tr class="ltx_tr" id="S4.SS1.SSS1.Px1.fig1.1.13.12">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_l ltx_border_r" id="S4.SS1.SSS1.Px1.fig1.1.13.12.1" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text" id="S4.SS1.SSS1.Px1.fig1.1.13.12.1.1" style="font-size:80%;">Computer Science</span></th>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.SS1.SSS1.Px1.fig1.1.13.12.2" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text" id="S4.SS1.SSS1.Px1.fig1.1.13.12.2.1" style="font-size:80%;">410</span></td>
</tr>
<tr class="ltx_tr" id="S4.SS1.SSS1.Px1.fig1.1.14.13">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_l ltx_border_r" id="S4.SS1.SSS1.Px1.fig1.1.14.13.1" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text" id="S4.SS1.SSS1.Px1.fig1.1.14.13.1.1" style="font-size:80%;">History</span></th>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.SS1.SSS1.Px1.fig1.1.14.13.2" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text" id="S4.SS1.SSS1.Px1.fig1.1.14.13.2.1" style="font-size:80%;">381</span></td>
</tr>
<tr class="ltx_tr" id="S4.SS1.SSS1.Px1.fig1.1.15.14">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_b ltx_border_l ltx_border_r" id="S4.SS1.SSS1.Px1.fig1.1.15.14.1" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text" id="S4.SS1.SSS1.Px1.fig1.1.15.14.1.1" style="font-size:80%;">Other</span></th>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r" id="S4.SS1.SSS1.Px1.fig1.1.15.14.2" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text" id="S4.SS1.SSS1.Px1.fig1.1.15.14.2.1" style="font-size:80%;">924</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 This table shows the distribution of questions across different categories in the MMLU-Pro dataset.  It lists 14 scientific categories (Mathematics, Physics, Chemistry, Law, Engineering, Economics, Health, Psychology, Business, Biology, Philosophy, Computer Science, History, and Other) and the number of questions in the MMLU-Pro dataset belonging to each category.  This provides context on the size and diversity of the dataset used for evaluating the performance of large language models (LLMs).
> <details>
> <summary>read the caption</summary>
> Table 1. MMLU-Pro Category Distribution
> </details>





### In-depth insights


#### LLM Uncertainty
LLM uncertainty is a critical area, especially with their increasing use in high-stakes applications. It arises from multiple sources: the model itself (epistemic uncertainty due to lack of knowledge) and the data (aleatoric uncertainty stemming from noise or complexity). **Addressing this requires more than just improving overall accuracy; it demands a deeper understanding of *when* and *why* a model is uncertain.** Methods like entropy-based measures and model-as-judge approaches offer insights, but their effectiveness varies across different tasks and domains. For instance, a model might be confident but wrong due to format overfitting, highlighting the need for better calibration. Also, certain issues like hallucinations need to be addressed to ensure the model works smoothly.

#### Entropy vs. MASJ
**Entropy** and **MASJ (Model-as-Judge)** represent distinct approaches to gauging LLM uncertainty. **Entropy** measures the randomness of token predictions, reflecting the model's confidence in its output, where lower entropy suggests greater certainty. Conversely, **MASJ** utilizes another LLM to evaluate the generated response quality. The paper contrasts their effectiveness across diverse question domains. **Entropy** may excel in knowledge-dependent areas by indicating information retrieval certainty, while **MASJ's** performance might vary based on the evaluator model's capabilities. The paper likely investigates scenarios where one method surpasses the other, examining their correlation with question complexity and reasoning demands to pinpoint the most suitable technique for specific uncertainty assessment tasks. The trade-offs between computation cost & reliability could be discussed. Ultimately, the research aims to provide a nuanced understanding of these methods and their application, aiming to improve the reliability of LLMs, especially in critical domains.

#### MMLU-Pro Biases
While the paper doesn't explicitly have a section titled "MMLU-Pro Biases," the research uncovers crucial biases within the dataset. The finding that **existing MMLU-Pro samples are biased** points towards a potential imbalance in the complexity of questions. The paper suggests **balancing the amount of reasoning** required for different subdomains. There is a similar kind of problem for the topic itself. The presence of biases directly affects the **fairness of LLM performance** assessment. Furthermore, the discovery of varying reasoning demands depending on the topic underscores the need for a more nuanced evaluation approach that accounts for these inherent differences. By directly addressing these dataset flaws, the research advocates for a more rigorous and equitable evaluation landscape in the field of large language models.

#### Reasoning Steps
**Reasoning steps** are a key element in understanding how LLMs approach complex tasks. This refers to the number of **sequential logical operations** a model undertakes to arrive at an answer. A higher number of steps often indicates a more challenging problem, demanding intricate analysis. Determining the **nature and quantity** of reasoning involved unveils the LLM's cognitive pathways, showing **knowledge application** and intricate problem-solving skills. A detailed examination of reasoning sequences gives insights on LLM strength and shortcomings, informing strategies for performance enhancement. Accurately mapping **reasoning depth** helps tailor models to tasks, improve outputs and enhance their performance in diverse problem-solving domains.

#### Model Size Matters
Model size significantly impacts LLM performance, especially in complex tasks. Larger models, with more parameters, tend to capture intricate patterns and relationships in data, leading to better accuracy and generalization. **Increased capacity** allows for a more nuanced understanding of context, enabling more coherent and relevant responses. However, the benefits of larger models come at a cost: they require **substantial computational resources** for training and inference, potentially limiting accessibility. Furthermore, simply increasing model size does not guarantee improved performance; architectural innovations, training data quality, and optimization techniques also play crucial roles. The optimal model size is therefore a trade-off between desired accuracy, available resources, and the specific demands of the task at hand. Additionally, **entropy separation tends to correlate with model scale**, meaning the divergence between correct and incorrect results is clearer in larger models.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2503.01688/x2.png)

> 🔼 This figure shows the distribution of questions across different topics that require complex reasoning, as determined by a model-as-judge (MASJ) approach.  The x-axis represents the different subject areas (e.g., Computer Science, Economics, Biology, etc.), while the y-axis represents the percentage of questions within each subject that required complex reasoning according to the MASJ.  This visualization helps illustrate the variation in reasoning demands across different domains within the MMLU-Pro dataset.
> <details>
> <summary>read the caption</summary>
> ((a)) Distribution of questions that require complex reasoning
> </details>



![](https://arxiv.org/html/2503.01688/x3.png)

> 🔼 This bar chart visualizes the distribution of questions across different levels of required reasoning steps, as determined by a model-as-judge (MASJ) approach.  Each bar represents a category (e.g., Biology, Economics, etc.) from the MMLU-Pro dataset, and its height corresponds to the number of questions in that category. The bars are further segmented into sub-sections representing three levels of reasoning complexity: low, medium, and high.  This visualization reveals how the distribution of reasoning requirements varies across different subject areas within the dataset.
> <details>
> <summary>read the caption</summary>
> ((b)) Distribution of the required number of reasoning steps
> </details>



![](https://arxiv.org/html/2503.01688/x4.png)

> 🔼 This figure shows the results of using a Model-as-Judge (MASJ) approach to estimate the reasoning requirement and the number of reasoning steps needed for different questions in the MMLU-Pro dataset.  The left subplot displays the distribution of questions categorized as requiring complex reasoning versus those that do not. The right subplot illustrates the distribution of the estimated number of reasoning steps required for each question.  The distribution varies considerably across different subject areas, with some topics like engineering requiring substantially more reasoning than others like philosophy.
> <details>
> <summary>read the caption</summary>
> Figure 2. Estimation by MASJ of the required reasoning amount. Better to view in zoom
> </details>



![](https://arxiv.org/html/2503.01688/x5.png)

> 🔼 This figure shows the distribution of entropy values for the Phi-4 language model.  The x-axis represents the entropy values, while the y-axis represents the frequency or count of answers with those entropy values.  The figure is separated into two bars for each entropy value, representing the number of correct and incorrect answers at that entropy level. This visualization helps to understand the relationship between entropy (a measure of uncertainty) and the accuracy of the model's predictions.
> <details>
> <summary>read the caption</summary>
> ((a)) Phi-4 model
> </details>



![](https://arxiv.org/html/2503.01688/x6.png)

> 🔼 This figure shows the distribution of entropy values for the Qwen-72B language model's answers, categorized by whether the answer is correct or incorrect.  The x-axis represents the entropy values, and the y-axis represents the count of answers.  The distribution for correct answers is skewed towards lower entropy values, while incorrect answers have a flatter and more spread out distribution across entropy levels, indicating higher uncertainty in incorrect responses.  This visualization supports the paper's findings regarding the correlation between entropy and model prediction accuracy.
> <details>
> <summary>read the caption</summary>
> ((b)) Qwen-72B model
> </details>



![](https://arxiv.org/html/2503.01688/x7.png)

> 🔼 This figure shows the distribution of entropy values for the Qwen-1.5B language model. The x-axis represents the entropy values, and the y-axis represents the count of answers with that specific entropy.  The bars are separated into correct and incorrect answers, allowing for a visual comparison of entropy levels in relation to answer accuracy.  This visualization helps to understand how well the entropy metric captures model uncertainty for this specific model.
> <details>
> <summary>read the caption</summary>
> ((c)) Qwen-1.5B model
> </details>



![](https://arxiv.org/html/2503.01688/x8.png)

> 🔼 This figure displays the distribution of entropy values for answers generated by different language models.  It shows separate distributions for correct and incorrect answers, allowing for a visual comparison of entropy levels across various response types.  The distributions reveal insights into the relationship between model confidence (as reflected in entropy) and the accuracy of the generated answers.  It helps in understanding how well the entropy measure correlates with the models’ ability to accurately assess its uncertainty.
> <details>
> <summary>read the caption</summary>
> Figure 3. Entropy distribution of answers. Best viewed when zoomed in
> </details>



![](https://arxiv.org/html/2503.01688/x9.png)

> 🔼 This figure displays the area under the ROC curve (ROC-AUC) for four different large language models (LLMs): Phi-4, Mistral, Qwen 1.5B, and Qwen 72B.  The ROC-AUC values are presented for each LLM's ability to predict errors in answering questions categorized by subject. Higher ROC-AUC values indicate better performance in error prediction.  The subjects appear to represent diverse academic fields, and the bars show the ROC-AUC score for each model within each subject.
> <details>
> <summary>read the caption</summary>
> Figure 4. ROC-AUC for error prediction by subject for four different LLMs
> </details>



![](https://arxiv.org/html/2503.01688/x10.png)

> 🔼 This figure shows the area under the ROC curve (ROC-AUC) for four different large language models (LLMs): Qwen 72B, Qwen 1.5B, Phi-4 14B, and Mistral 24B.  The ROC-AUC values are displayed for different levels of reasoning required to answer the questions in the MMLU-Pro dataset.  The x-axis categorizes the questions based on their reasoning requirements: 'no reasoning required', 'reasoning required', 'reasoning (low)', 'reasoning (medium)', and 'reasoning (high)'.  The y-axis represents the ROC-AUC score, indicating the model's performance in predicting whether an answer is correct or incorrect based on its associated entropy value. Higher ROC-AUC values suggest better performance.
> <details>
> <summary>read the caption</summary>
> Figure 5. ROC-AUC by reasoning for four different LLMs
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S4.T2.2">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T2.2.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T2.2.1.1.1" style="padding-top:1pt;padding-bottom:1pt;">Category</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.2.1.1.2" style="padding-top:1pt;padding-bottom:1pt;">Phi-4</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.2.1.1.3" style="padding-top:1pt;padding-bottom:1pt;">Mistral</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.2.1.1.4" style="padding-top:1pt;padding-bottom:1pt;">Qwen 1.5B</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.2.1.1.5" style="padding-top:1pt;padding-bottom:1pt;">Qwen 72B</td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.2.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T2.2.2.2.1" style="padding-top:1pt;padding-bottom:1pt;">Biology</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.2.2.2.2" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.2.2.2.2.1">0.73</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.2.2.2.3" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.2.2.2.3.1">0.65</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.2.2.2.4" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.2.2.2.4.1">0.79</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.2.2.2.5" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.2.2.2.5.1">0.83</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.3.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.2.3.3.1" style="padding-top:1pt;padding-bottom:1pt;">Economics</th>
<td class="ltx_td ltx_align_center" id="S4.T2.2.3.3.2" style="padding-top:1pt;padding-bottom:1pt;">0.65</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.3.3.3" style="padding-top:1pt;padding-bottom:1pt;">0.58</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.3.3.4" style="padding-top:1pt;padding-bottom:1pt;">0.73</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.3.3.5" style="padding-top:1pt;padding-bottom:1pt;">0.80</td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.4.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.2.4.4.1" style="padding-top:1pt;padding-bottom:1pt;">Philosophy</th>
<td class="ltx_td ltx_align_center" id="S4.T2.2.4.4.2" style="padding-top:1pt;padding-bottom:1pt;">0.65</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.4.4.3" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_italic" id="S4.T2.2.4.4.3.1">0.49</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.4.4.4" style="padding-top:1pt;padding-bottom:1pt;">0.61</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.4.4.5" style="padding-top:1pt;padding-bottom:1pt;">0.74</td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.5.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.2.5.5.1" style="padding-top:1pt;padding-bottom:1pt;">Physics</th>
<td class="ltx_td ltx_align_center" id="S4.T2.2.5.5.2" style="padding-top:1pt;padding-bottom:1pt;">0.63</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.5.5.3" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.2.5.5.3.1">0.44</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.5.5.4" style="padding-top:1pt;padding-bottom:1pt;">0.64</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.5.5.5" style="padding-top:1pt;padding-bottom:1pt;">0.74</td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.6.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.2.6.6.1" style="padding-top:1pt;padding-bottom:1pt;">Computer Science</th>
<td class="ltx_td ltx_align_center" id="S4.T2.2.6.6.2" style="padding-top:1pt;padding-bottom:1pt;">0.61</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.6.6.3" style="padding-top:1pt;padding-bottom:1pt;">0.56</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.6.6.4" style="padding-top:1pt;padding-bottom:1pt;">0.69</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.6.6.5" style="padding-top:1pt;padding-bottom:1pt;">0.78</td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.7.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.2.7.7.1" style="padding-top:1pt;padding-bottom:1pt;">Psychology</th>
<td class="ltx_td ltx_align_center" id="S4.T2.2.7.7.2" style="padding-top:1pt;padding-bottom:1pt;">0.61</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.7.7.3" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.2.7.7.3.1">0.65</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.7.7.4" style="padding-top:1pt;padding-bottom:1pt;">0.77</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.7.7.5" style="padding-top:1pt;padding-bottom:1pt;">0.77</td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.8.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.2.8.8.1" style="padding-top:1pt;padding-bottom:1pt;">Chemistry</th>
<td class="ltx_td ltx_align_center" id="S4.T2.2.8.8.2" style="padding-top:1pt;padding-bottom:1pt;">0.61</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.8.8.3" style="padding-top:1pt;padding-bottom:1pt;">0.44</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.8.8.4" style="padding-top:1pt;padding-bottom:1pt;">0.64</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.8.8.5" style="padding-top:1pt;padding-bottom:1pt;">0.70</td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.9.9">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.2.9.9.1" style="padding-top:1pt;padding-bottom:1pt;">Health</th>
<td class="ltx_td ltx_align_center" id="S4.T2.2.9.9.2" style="padding-top:1pt;padding-bottom:1pt;">0.60</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.9.9.3" style="padding-top:1pt;padding-bottom:1pt;">0.55</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.9.9.4" style="padding-top:1pt;padding-bottom:1pt;">0.67</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.9.9.5" style="padding-top:1pt;padding-bottom:1pt;">0.77</td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.10.10">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.2.10.10.1" style="padding-top:1pt;padding-bottom:1pt;">Business</th>
<td class="ltx_td ltx_align_center" id="S4.T2.2.10.10.2" style="padding-top:1pt;padding-bottom:1pt;">0.58</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.10.10.3" style="padding-top:1pt;padding-bottom:1pt;">0.52</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.10.10.4" style="padding-top:1pt;padding-bottom:1pt;">0.64</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.10.10.5" style="padding-top:1pt;padding-bottom:1pt;">0.74</td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.11.11">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.2.11.11.1" style="padding-top:1pt;padding-bottom:1pt;">History</th>
<td class="ltx_td ltx_align_center" id="S4.T2.2.11.11.2" style="padding-top:1pt;padding-bottom:1pt;">0.58</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.11.11.3" style="padding-top:1pt;padding-bottom:1pt;">0.58</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.11.11.4" style="padding-top:1pt;padding-bottom:1pt;">0.65</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.11.11.5" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_italic" id="S4.T2.2.11.11.5.1">0.67</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.12.12">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.2.12.12.1" style="padding-top:1pt;padding-bottom:1pt;">Engineering</th>
<td class="ltx_td ltx_align_center" id="S4.T2.2.12.12.2" style="padding-top:1pt;padding-bottom:1pt;">0.58</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.12.12.3" style="padding-top:1pt;padding-bottom:1pt;">0.44</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.12.12.4" style="padding-top:1pt;padding-bottom:1pt;">0.64</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.12.12.5" style="padding-top:1pt;padding-bottom:1pt;">0.73</td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.13.13">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.2.13.13.1" style="padding-top:1pt;padding-bottom:1pt;">Other</th>
<td class="ltx_td ltx_align_center" id="S4.T2.2.13.13.2" style="padding-top:1pt;padding-bottom:1pt;">0.56</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.13.13.3" style="padding-top:1pt;padding-bottom:1pt;">0.53</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.13.13.4" style="padding-top:1pt;padding-bottom:1pt;">0.66</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.13.13.5" style="padding-top:1pt;padding-bottom:1pt;">0.78</td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.14.14">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.2.14.14.1" style="padding-top:1pt;padding-bottom:1pt;">Math</th>
<td class="ltx_td ltx_align_center" id="S4.T2.2.14.14.2" style="padding-top:1pt;padding-bottom:1pt;">0.55</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.14.14.3" style="padding-top:1pt;padding-bottom:1pt;">0.54</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.14.14.4" style="padding-top:1pt;padding-bottom:1pt;">0.63</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.14.14.5" style="padding-top:1pt;padding-bottom:1pt;">0.73</td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.15.15">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.2.15.15.1" style="padding-top:1pt;padding-bottom:1pt;">Law</th>
<td class="ltx_td ltx_align_center" id="S4.T2.2.15.15.2" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_italic" id="S4.T2.2.15.15.2.1">0.50</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.15.15.3" style="padding-top:1pt;padding-bottom:1pt;">0.57</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.15.15.4" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_italic" id="S4.T2.2.15.15.4.1">0.58</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.15.15.5" style="padding-top:1pt;padding-bottom:1pt;">0.69</td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.16.16">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T2.2.16.16.1" style="padding-top:1pt;padding-bottom:1pt;">No Reasoning</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.2.16.16.2" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.2.16.16.2.1">0.59</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.2.16.16.3" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.2.16.16.3.1">0.59</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.2.16.16.4" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.2.16.16.4.1">0.72</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.2.16.16.5" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.2.16.16.5.1">0.79</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.17.17">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.2.17.17.1" style="padding-top:1pt;padding-bottom:1pt;">Yes Reasoning</th>
<td class="ltx_td ltx_align_center" id="S4.T2.2.17.17.2" style="padding-top:1pt;padding-bottom:1pt;">0.56</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.17.17.3" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_italic" id="S4.T2.2.17.17.3.1">0.52</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.17.17.4" style="padding-top:1pt;padding-bottom:1pt;">0.68</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.17.17.5" style="padding-top:1pt;padding-bottom:1pt;">0.76</td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.18.18">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.2.18.18.1" style="padding-top:1pt;padding-bottom:1pt;">Reasoning (Low)</th>
<td class="ltx_td ltx_align_center" id="S4.T2.2.18.18.2" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.2.18.18.2.1">0.59</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.18.18.3" style="padding-top:1pt;padding-bottom:1pt;">0.58</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.18.18.4" style="padding-top:1pt;padding-bottom:1pt;">0.71</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.18.18.5" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.2.18.18.5.1">0.79</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.19.19">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.2.19.19.1" style="padding-top:1pt;padding-bottom:1pt;">Reasoning (Med)</th>
<td class="ltx_td ltx_align_center" id="S4.T2.2.19.19.2" style="padding-top:1pt;padding-bottom:1pt;">0.57</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.19.19.3" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_italic" id="S4.T2.2.19.19.3.1">0.52</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.19.19.4" style="padding-top:1pt;padding-bottom:1pt;">0.69</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.19.19.5" style="padding-top:1pt;padding-bottom:1pt;">0.76</td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.20.20">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.2.20.20.1" style="padding-top:1pt;padding-bottom:1pt;">Reasoning (High)</th>
<td class="ltx_td ltx_align_center" id="S4.T2.2.20.20.2" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_italic" id="S4.T2.2.20.20.2.1">0.53</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.20.20.3" style="padding-top:1pt;padding-bottom:1pt;">0.53</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.20.20.4" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_italic" id="S4.T2.2.20.20.4.1">0.61</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.20.20.5" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_italic" id="S4.T2.2.20.20.5.1">0.73</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.21.21">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_b ltx_border_t" id="S4.T2.2.21.21.1" style="padding-top:1pt;padding-bottom:1pt;">Overall</th>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_t" id="S4.T2.2.21.21.2" style="padding-top:1pt;padding-bottom:1pt;">0.58</td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_t" id="S4.T2.2.21.21.3" style="padding-top:1pt;padding-bottom:1pt;">0.52</td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_t" id="S4.T2.2.21.21.4" style="padding-top:1pt;padding-bottom:1pt;">0.70</td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_t" id="S4.T2.2.21.21.5" style="padding-top:1pt;padding-bottom:1pt;">0.77</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the Area Under the ROC Curve (AUC) values, a measure of a model's performance in distinguishing between correct and incorrect answers, for four different Large Language Models (LLMs): Phi-4, Mistral, Qwen-1.5B, and Qwen-72B.  The AUC values are broken down by category (e.g., Biology, Economics, Psychology) and by reasoning requirement (No Reasoning, Yes Reasoning, and three levels of reasoning difficulty: Low, Medium, High).  A higher AUC value indicates better performance.
> <details>
> <summary>read the caption</summary>
> Table 2. ROC AUC performance comparison across categories and models
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="A1.T3.4">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A1.T3.4.1.1">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A1.T3.4.1.1.1">
<span class="ltx_inline-block ltx_align_top" id="A1.T3.4.1.1.1.1">
<span class="ltx_p" id="A1.T3.4.1.1.1.1.1" style="width:313.0pt;"><span class="ltx_text" id="A1.T3.4.1.1.1.1.1.1" style="font-size:90%;">You are an expert in the topic of the question. Please act as an impartial judge and evaluate the complexity of the multiple-choice question with options below. Begin your evaluation by providing a short explanation. Be as objective as possible. After providing your explanation, you must not answer the question. You must rate the question complexity as a number from 0 to 1 following the following scale as a reference:</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T3.4.2.2">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A1.T3.4.2.2.1">
<span class="ltx_inline-block ltx_align_top" id="A1.T3.4.2.2.1.1">
<span class="ltx_p" id="A1.T3.4.2.2.1.1.1" style="width:313.0pt;"><span class="ltx_text" id="A1.T3.4.2.2.1.1.1.1" style="font-size:90%;">high_school_and_ easier - 0.0-0.22,</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T3.4.3.3">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A1.T3.4.3.3.1">
<span class="ltx_inline-block ltx_align_top" id="A1.T3.4.3.3.1.1">
<span class="ltx_p" id="A1.T3.4.3.3.1.1.1" style="width:313.0pt;"><span class="ltx_text" id="A1.T3.4.3.3.1.1.1.1" style="font-size:90%;">undergraduate_easy - 0.2-0.4,</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T3.4.4.4">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A1.T3.4.4.4.1">
<span class="ltx_inline-block ltx_align_top" id="A1.T3.4.4.4.1.1">
<span class="ltx_p" id="A1.T3.4.4.4.1.1.1" style="width:313.0pt;"><span class="ltx_text" id="A1.T3.4.4.4.1.1.1.1" style="font-size:90%;">undergraduate_hard - 0.4-0.6,</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T3.4.5.5">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A1.T3.4.5.5.1">
<span class="ltx_inline-block ltx_align_top" id="A1.T3.4.5.5.1.1">
<span class="ltx_p" id="A1.T3.4.5.5.1.1.1" style="width:313.0pt;"><span class="ltx_text" id="A1.T3.4.5.5.1.1.1.1" style="font-size:90%;">graduate - 0.6-0.8,</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T3.4.6.6">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A1.T3.4.6.6.1">
<span class="ltx_inline-block ltx_align_top" id="A1.T3.4.6.6.1.1">
<span class="ltx_p" id="A1.T3.4.6.6.1.1.1" style="width:313.0pt;"><span class="ltx_text" id="A1.T3.4.6.6.1.1.1.1" style="font-size:90%;">postgraduate - 0.8-1.0.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T3.4.7.7">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A1.T3.4.7.7.1">
<span class="ltx_inline-block ltx_align_top" id="A1.T3.4.7.7.1.1">
<span class="ltx_p" id="A1.T3.4.7.7.1.1.1" style="width:313.0pt;"><span class="ltx_text" id="A1.T3.4.7.7.1.1.1.1" style="font-size:90%;">You must return the complexity by strictly following this format: "
[[complexity]]",</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T3.4.8.8">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_b" id="A1.T3.4.8.8.1">
<span class="ltx_inline-block ltx_align_top" id="A1.T3.4.8.8.1.1">
<span class="ltx_p" id="A1.T3.4.8.8.1.1.1" style="width:313.0pt;"><span class="ltx_text" id="A1.T3.4.8.8.1.1.1.1" style="font-size:90%;">for example: "Your explanation… Complexity: [[0.55]]", which corresponds to a hard question at the undergraduate level.</span></span>
</span>
</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the prompt used for the numerical model-as-judge in the study. The prompt instructs the model to act as an impartial judge and evaluate the complexity of a multiple-choice question.  The model should provide a short explanation of its evaluation, but should not answer the question itself. The model is given a scale for rating the question's complexity ranging from 0.0 to 1.0, corresponding to different educational levels, from high school to postgraduate studies. The prompt specifies the format for returning the complexity score, which must follow the pattern: '[[complexity]]:' where the value should be a number between 0.0 and 1.0. 
> <details>
> <summary>read the caption</summary>
> Table 3. Prompt for Numerical model-as-judge
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="A1.T4.4">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A1.T4.4.1.1">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A1.T4.4.1.1.1">
<span class="ltx_inline-block ltx_align_top" id="A1.T4.4.1.1.1.1">
<span class="ltx_p" id="A1.T4.4.1.1.1.1.1" style="width:313.0pt;"><span class="ltx_text" id="A1.T4.4.1.1.1.1.1.1" style="font-size:90%;">You are an expert in the topic of the question. Please act as an impartial judge and evaluate the complexity of the multiple-choice question with options below. Begin your evaluation by providing a short explanation. Be as objective as possible. After providing your explanation, you must not answer the question. You must rate the question complexity by strictly following the scale:</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T4.4.2.2">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A1.T4.4.2.2.1">
<span class="ltx_inline-block ltx_align_top" id="A1.T4.4.2.2.1.1">
<span class="ltx_p" id="A1.T4.4.2.2.1.1.1" style="width:313.0pt;"><span class="ltx_text" id="A1.T4.4.2.2.1.1.1.1" style="font-size:90%;">high_school_and_easier,</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T4.4.3.3">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A1.T4.4.3.3.1">
<span class="ltx_inline-block ltx_align_top" id="A1.T4.4.3.3.1.1">
<span class="ltx_p" id="A1.T4.4.3.3.1.1.1" style="width:313.0pt;"><span class="ltx_text" id="A1.T4.4.3.3.1.1.1.1" style="font-size:90%;">undergraduate_easy,</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T4.4.4.4">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A1.T4.4.4.4.1">
<span class="ltx_inline-block ltx_align_top" id="A1.T4.4.4.4.1.1">
<span class="ltx_p" id="A1.T4.4.4.4.1.1.1" style="width:313.0pt;"><span class="ltx_text" id="A1.T4.4.4.4.1.1.1.1" style="font-size:90%;">undergraduate_hard,</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T4.4.5.5">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A1.T4.4.5.5.1">
<span class="ltx_inline-block ltx_align_top" id="A1.T4.4.5.5.1.1">
<span class="ltx_p" id="A1.T4.4.5.5.1.1.1" style="width:313.0pt;"><span class="ltx_text" id="A1.T4.4.5.5.1.1.1.1" style="font-size:90%;">graduate,</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T4.4.6.6">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A1.T4.4.6.6.1">
<span class="ltx_inline-block ltx_align_top" id="A1.T4.4.6.6.1.1">
<span class="ltx_p" id="A1.T4.4.6.6.1.1.1" style="width:313.0pt;"><span class="ltx_text" id="A1.T4.4.6.6.1.1.1.1" style="font-size:90%;">postgraduate.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T4.4.7.7">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A1.T4.4.7.7.1">
<span class="ltx_inline-block ltx_align_top" id="A1.T4.4.7.7.1.1">
<span class="ltx_p" id="A1.T4.4.7.7.1.1.1" style="width:313.0pt;"><span class="ltx_text" id="A1.T4.4.7.7.1.1.1.1" style="font-size:90%;">You must return the complexity by strictly following this format: "[[complexity]]",</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T4.4.8.8">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_b" id="A1.T4.4.8.8.1">
<span class="ltx_inline-block ltx_align_top" id="A1.T4.4.8.8.1.1">
<span class="ltx_p" id="A1.T4.4.8.8.1.1.1" style="width:313.0pt;"><span class="ltx_text" id="A1.T4.4.8.8.1.1.1.1" style="font-size:90%;">for example: "Your explanation… Complexity: [[undergraduate]]", which corresponds to the undergraduate level.</span></span>
</span>
</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the prompt used for the nominal Model-as-Judge (MASJ) approach in the paper.  The MASJ approach uses a large language model to evaluate the complexity of a multiple-choice question.  This specific prompt instructs the model to act as an impartial judge, providing a short explanation of its evaluation before assigning a complexity label.  The labels are categorical and range from high school and easier to postgraduate, allowing for a qualitative assessment of the question's difficulty.
> <details>
> <summary>read the caption</summary>
> Table 4. Prompt for Nominal model-as-judge
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="A1.T5.4">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A1.T5.4.1.1">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A1.T5.4.1.1.1">
<span class="ltx_inline-block ltx_align_top" id="A1.T5.4.1.1.1.1">
<span class="ltx_p" id="A1.T5.4.1.1.1.1.1" style="width:313.0pt;"><span class="ltx_text" id="A1.T5.4.1.1.1.1.1.1" style="font-size:90%;">You are an expert in the topic of the question. Please act as an impartial judge and evaluate the complexity of the multiple-choice question with options below.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T5.4.2.2">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A1.T5.4.2.2.1">
<span class="ltx_inline-block ltx_align_top" id="A1.T5.4.2.2.1.1">
<span class="ltx_p" id="A1.T5.4.2.2.1.1.1" style="width:313.0pt;"><span class="ltx_text" id="A1.T5.4.2.2.1.1.1.1" style="font-size:90%;">Begin your evaluation by providing a short explanation. Be as objective as possible. After providing your explanation, you must not answer the question.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T5.4.3.3">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A1.T5.4.3.3.1">
<span class="ltx_inline-block ltx_align_top" id="A1.T5.4.3.3.1.1">
<span class="ltx_p" id="A1.T5.4.3.3.1.1.1" style="width:313.0pt;"><span class="ltx_text" id="A1.T5.4.3.3.1.1.1.1" style="font-size:90%;">You must rate the question complexity by strictly following the criteria:</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T5.4.4.4">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A1.T5.4.4.4.1">
<span class="ltx_inline-block ltx_align_top" id="A1.T5.4.4.4.1.1">
<span class="ltx_p" id="A1.T5.4.4.4.1.1.1" style="width:313.0pt;"><span class="ltx_text" id="A1.T5.4.4.4.1.1.1.1" style="font-size:90%;">1) [[Requires knowledge]] - do we need highly specific knowledge from the domain to answer this question? Valid answers: yes, no;</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T5.4.5.5">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A1.T5.4.5.5.1">
<span class="ltx_inline-block ltx_align_top" id="A1.T5.4.5.5.1.1">
<span class="ltx_p" id="A1.T5.4.5.5.1.1.1" style="width:313.0pt;"><span class="ltx_text" id="A1.T5.4.5.5.1.1.1.1" style="font-size:90%;">2) [[Requires reasoning]] - do we need complex reasoning with multiple logical steps to answer this question? Valid answers: yes, no;</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T5.4.6.6">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A1.T5.4.6.6.1">
<span class="ltx_inline-block ltx_align_top" id="A1.T5.4.6.6.1.1">
<span class="ltx_p" id="A1.T5.4.6.6.1.1.1" style="width:313.0pt;"><span class="ltx_text" id="A1.T5.4.6.6.1.1.1.1" style="font-size:90%;">3) [[Number of reasoning steps]] - how many reasoning steps do you need to answer this question? Valid answers: low, medium, high.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T5.4.7.7">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A1.T5.4.7.7.1">
<span class="ltx_inline-block ltx_align_top" id="A1.T5.4.7.7.1.1">
<span class="ltx_p" id="A1.T5.4.7.7.1.1.1" style="width:313.0pt;"><span class="ltx_text" id="A1.T5.4.7.7.1.1.1.1" style="font-size:90%;">Your answer must strictly follow this format:
"[[Requires knowledge: answer]] [[Requires reasoning: answer]] [[Number of reasoning steps: answer]]".</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T5.4.8.8">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A1.T5.4.8.8.1">
<span class="ltx_inline-block ltx_align_top" id="A1.T5.4.8.8.1.1">
<span class="ltx_p" id="A1.T5.4.8.8.1.1.1" style="width:313.0pt;"><span class="ltx_text" id="A1.T5.4.8.8.1.1.1.1" style="font-size:90%;">Example 1: "Your explanation… [[Requires knowledge: yes]] [[Requires reasoning: no]] [[Number of reasoning steps: low]]".</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T5.4.9.9">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A1.T5.4.9.9.1">
<span class="ltx_inline-block ltx_align_top" id="A1.T5.4.9.9.1.1">
<span class="ltx_p" id="A1.T5.4.9.9.1.1.1" style="width:313.0pt;"><span class="ltx_text" id="A1.T5.4.9.9.1.1.1.1" style="font-size:90%;">Example 2: "Your explanation… [[Requires knowledge: no]] [[Requires reasoning: yes]] [[Number of reasoning steps: high]]".</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T5.4.10.10">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A1.T5.4.10.10.1">
<span class="ltx_inline-block ltx_align_top" id="A1.T5.4.10.10.1.1">
<span class="ltx_p" id="A1.T5.4.10.10.1.1.1" style="width:313.0pt;"><span class="ltx_text" id="A1.T5.4.10.10.1.1.1.1" style="font-size:90%;">Example 3: "Your explanation… [[Requires knowledge: yes]] [[Requires reasoning: yes]] [[Number of reasoning steps: medium]]".</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T5.4.11.11">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_b" id="A1.T5.4.11.11.1">
<span class="ltx_inline-block ltx_align_top" id="A1.T5.4.11.11.1.1">
<span class="ltx_p" id="A1.T5.4.11.11.1.1.1" style="width:313.0pt;"><span class="ltx_text" id="A1.T5.4.11.11.1.1.1.1" style="font-size:90%;">Example 4: "Your explanation… [[Requires knowledge: no]] [[Requires reasoning: no]] [[Number of reasoning steps: low]]".</span></span>
</span>
</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the prompt used to elicit reasoning level information from a model-as-judge.  The prompt instructs the model to act as an expert, evaluating the complexity of a multiple-choice question. It requests an explanation of the assessment and then prompts the model to classify the question based on its reasoning requirements (yes/no), and the number of reasoning steps involved (low, medium, high).  The format of the output response is specified to ensure consistent data collection.
> <details>
> <summary>read the caption</summary>
> Table 5. Prompt for Reasoning level estimate
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="A2.T6.4">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A2.T6.4.1.1">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A2.T6.4.1.1.1">
<span class="ltx_inline-block ltx_align_top" id="A2.T6.4.1.1.1.1">
<span class="ltx_p" id="A2.T6.4.1.1.1.1.1" style="width:313.0pt;"><span class="ltx_text" id="A2.T6.4.1.1.1.1.1.1" style="font-size:90%;">Which of the following criticisms of Llewellyn’s distinction between the grand and formal styles of legal reasoning is the most compelling?</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T6.4.2.2">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A2.T6.4.2.2.1">
<span class="ltx_inline-block ltx_align_top" id="A2.T6.4.2.2.1.1">
<span class="ltx_p" id="A2.T6.4.2.2.1.1.1" style="width:313.0pt;"><span class="ltx_text" id="A2.T6.4.2.2.1.1.1.1" style="font-size:90%;">1. There is no distinction between the two forms of legal reasoning.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T6.4.3.3">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A2.T6.4.3.3.1">
<span class="ltx_inline-block ltx_align_top" id="A2.T6.4.3.3.1.1">
<span class="ltx_p" id="A2.T6.4.3.3.1.1.1" style="width:313.0pt;"><span class="ltx_text" id="A2.T6.4.3.3.1.1.1.1" style="font-size:90%;">2. Judges are appointed to interpret the law, not to make it.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T6.4.4.4">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A2.T6.4.4.4.1">
<span class="ltx_inline-block ltx_align_top" id="A2.T6.4.4.4.1.1">
<span class="ltx_p" id="A2.T6.4.4.4.1.1.1" style="width:313.0pt;"><span class="ltx_text" id="A2.T6.4.4.4.1.1.1.1" style="font-size:90%;">3. It is misleading to pigeon-hole judges in this way.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T6.4.5.5">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_b" id="A2.T6.4.5.5.1">
<span class="ltx_inline-block ltx_align_top" id="A2.T6.4.5.5.1.1">
<span class="ltx_p" id="A2.T6.4.5.5.1.1.1" style="width:313.0pt;"><span class="ltx_text" id="A2.T6.4.5.5.1.1.1.1" style="font-size:90%;">4. Judicial reasoning is always formal.</span></span>
</span>
</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents an example of a multiple-choice question from the Law category within the MMLU-Pro dataset. The question assesses understanding of legal reasoning styles, specifically Llewellyn's distinction between grand and formal styles.  It demonstrates the type of complex reasoning and legal knowledge required to answer questions in this category of the dataset. The four options provided are intended to evaluate the test-taker's grasp of the nuances of legal argumentation.
> <details>
> <summary>read the caption</summary>
> Table 6. Example of a question from Law category
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="A2.T7.4">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A2.T7.4.1.1">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A2.T7.4.1.1.1">
<span class="ltx_inline-block ltx_align_top" id="A2.T7.4.1.1.1.1">
<span class="ltx_p" id="A2.T7.4.1.1.1.1.1" style="width:313.0pt;"><span class="ltx_text" id="A2.T7.4.1.1.1.1.1.1" style="font-size:90%;">A 66-year-old client who is depressed, has rhythmic hand movements, and has a flattened affect is probably suffering from:</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T7.4.2.2">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A2.T7.4.2.2.1">
<span class="ltx_inline-block ltx_align_top" id="A2.T7.4.2.2.1.1">
<span class="ltx_p" id="A2.T7.4.2.2.1.1.1" style="width:313.0pt;"><span class="ltx_text" id="A2.T7.4.2.2.1.1.1.1" style="font-size:90%;">1. Huntington’s disease</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T7.4.3.3">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A2.T7.4.3.3.1">
<span class="ltx_inline-block ltx_align_top" id="A2.T7.4.3.3.1.1">
<span class="ltx_p" id="A2.T7.4.3.3.1.1.1" style="width:313.0pt;"><span class="ltx_text" id="A2.T7.4.3.3.1.1.1.1" style="font-size:90%;">2. Creutzfeldt-Jakob disease</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T7.4.4.4">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A2.T7.4.4.4.1">
<span class="ltx_inline-block ltx_align_top" id="A2.T7.4.4.4.1.1">
<span class="ltx_p" id="A2.T7.4.4.4.1.1.1" style="width:313.0pt;"><span class="ltx_text" id="A2.T7.4.4.4.1.1.1.1" style="font-size:90%;">3. Multiple Sclerosis</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T7.4.5.5">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A2.T7.4.5.5.1">
<span class="ltx_inline-block ltx_align_top" id="A2.T7.4.5.5.1.1">
<span class="ltx_p" id="A2.T7.4.5.5.1.1.1" style="width:313.0pt;"><span class="ltx_text" id="A2.T7.4.5.5.1.1.1.1" style="font-size:90%;">4. Alzheimer’s disease</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T7.4.6.6">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A2.T7.4.6.6.1">
<span class="ltx_inline-block ltx_align_top" id="A2.T7.4.6.6.1.1">
<span class="ltx_p" id="A2.T7.4.6.6.1.1.1" style="width:313.0pt;"><span class="ltx_text" id="A2.T7.4.6.6.1.1.1.1" style="font-size:90%;">5. Parkinson’s disease</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T7.4.7.7">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A2.T7.4.7.7.1">
<span class="ltx_inline-block ltx_align_top" id="A2.T7.4.7.7.1.1">
<span class="ltx_p" id="A2.T7.4.7.7.1.1.1" style="width:313.0pt;"><span class="ltx_text" id="A2.T7.4.7.7.1.1.1.1" style="font-size:90%;">6. Vascular Dementia</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T7.4.8.8">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A2.T7.4.8.8.1">
<span class="ltx_inline-block ltx_align_top" id="A2.T7.4.8.8.1.1">
<span class="ltx_p" id="A2.T7.4.8.8.1.1.1" style="width:313.0pt;"><span class="ltx_text" id="A2.T7.4.8.8.1.1.1.1" style="font-size:90%;">7. Frontotemporal Dementia</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T7.4.9.9">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A2.T7.4.9.9.1">
<span class="ltx_inline-block ltx_align_top" id="A2.T7.4.9.9.1.1">
<span class="ltx_p" id="A2.T7.4.9.9.1.1.1" style="width:313.0pt;"><span class="ltx_text" id="A2.T7.4.9.9.1.1.1.1" style="font-size:90%;">8. Schizophrenia</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T7.4.10.10">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A2.T7.4.10.10.1">
<span class="ltx_inline-block ltx_align_top" id="A2.T7.4.10.10.1.1">
<span class="ltx_p" id="A2.T7.4.10.10.1.1.1" style="width:313.0pt;"><span class="ltx_text" id="A2.T7.4.10.10.1.1.1.1" style="font-size:90%;">9. A right frontal lobe tumor</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T7.4.11.11">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_b" id="A2.T7.4.11.11.1">
<span class="ltx_inline-block ltx_align_top" id="A2.T7.4.11.11.1.1">
<span class="ltx_p" id="A2.T7.4.11.11.1.1.1" style="width:313.0pt;"><span class="ltx_text" id="A2.T7.4.11.11.1.1.1.1" style="font-size:90%;">10. Bipolar Disorder</span></span>
</span>
</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table shows an example of a multiple choice question from the Psychology category of the MMLU-Pro dataset used in the study.  The question presents a case study of a 66-year-old patient with specific symptoms and asks the reader to identify the most likely diagnosis from a list of ten neurological and psychiatric disorders. This illustrates the type of questions included in the Psychology section of the dataset and the level of detail and reasoning required.
> <details>
> <summary>read the caption</summary>
> Table 7. Example of a question from Psychology category
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="A2.T8.4">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A2.T8.4.1.1">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A2.T8.4.1.1.1">
<span class="ltx_inline-block ltx_align_top" id="A2.T8.4.1.1.1.1">
<span class="ltx_p" id="A2.T8.4.1.1.1.1.1" style="width:313.0pt;"><span class="ltx_text" id="A2.T8.4.1.1.1.1.1.1" style="font-size:90%;">A cumulative compound motor has a varying load upon it which requires a variation in armature current from 50 amp to 100 amp.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T8.4.2.2">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A2.T8.4.2.2.1">
<span class="ltx_inline-block ltx_align_top" id="A2.T8.4.2.2.1.1">
<span class="ltx_p" id="A2.T8.4.2.2.1.1.1" style="width:313.0pt;"><span class="ltx_text" id="A2.T8.4.2.2.1.1.1.1" style="font-size:90%;">If the series-field current causes the air-gap flux to change by 3 percent for each 10 amp of armature current, find the ratio of torques developed for the two values of armature current.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T8.4.3.3">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A2.T8.4.3.3.1">
<span class="ltx_inline-block ltx_align_top" id="A2.T8.4.3.3.1.1">
<span class="ltx_p" id="A2.T8.4.3.3.1.1.1" style="width:313.0pt;"><span class="ltx_text" id="A2.T8.4.3.3.1.1.1.1" style="font-size:90%;">1. 2.26</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T8.4.4.4">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A2.T8.4.4.4.1">
<span class="ltx_inline-block ltx_align_top" id="A2.T8.4.4.4.1.1">
<span class="ltx_p" id="A2.T8.4.4.4.1.1.1" style="width:313.0pt;"><span class="ltx_text" id="A2.T8.4.4.4.1.1.1.1" style="font-size:90%;">2. 0.66</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T8.4.5.5">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A2.T8.4.5.5.1">
<span class="ltx_inline-block ltx_align_top" id="A2.T8.4.5.5.1.1">
<span class="ltx_p" id="A2.T8.4.5.5.1.1.1" style="width:313.0pt;"><span class="ltx_text" id="A2.T8.4.5.5.1.1.1.1" style="font-size:90%;">3. 3.95</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T8.4.6.6">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A2.T8.4.6.6.1">
<span class="ltx_inline-block ltx_align_top" id="A2.T8.4.6.6.1.1">
<span class="ltx_p" id="A2.T8.4.6.6.1.1.1" style="width:313.0pt;"><span class="ltx_text" id="A2.T8.4.6.6.1.1.1.1" style="font-size:90%;">4. 1.00</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T8.4.7.7">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A2.T8.4.7.7.1">
<span class="ltx_inline-block ltx_align_top" id="A2.T8.4.7.7.1.1">
<span class="ltx_p" id="A2.T8.4.7.7.1.1.1" style="width:313.0pt;"><span class="ltx_text" id="A2.T8.4.7.7.1.1.1.1" style="font-size:90%;">5. 2.89</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T8.4.8.8">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A2.T8.4.8.8.1">
<span class="ltx_inline-block ltx_align_top" id="A2.T8.4.8.8.1.1">
<span class="ltx_p" id="A2.T8.4.8.8.1.1.1" style="width:313.0pt;"><span class="ltx_text" id="A2.T8.4.8.8.1.1.1.1" style="font-size:90%;">6. 1.75</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T8.4.9.9">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A2.T8.4.9.9.1">
<span class="ltx_inline-block ltx_align_top" id="A2.T8.4.9.9.1.1">
<span class="ltx_p" id="A2.T8.4.9.9.1.1.1" style="width:313.0pt;"><span class="ltx_text" id="A2.T8.4.9.9.1.1.1.1" style="font-size:90%;">7. 4.12</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T8.4.10.10">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A2.T8.4.10.10.1">
<span class="ltx_inline-block ltx_align_top" id="A2.T8.4.10.10.1.1">
<span class="ltx_p" id="A2.T8.4.10.10.1.1.1" style="width:313.0pt;"><span class="ltx_text" id="A2.T8.4.10.10.1.1.1.1" style="font-size:90%;">8. 1.15</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T8.4.11.11">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A2.T8.4.11.11.1">
<span class="ltx_inline-block ltx_align_top" id="A2.T8.4.11.11.1.1">
<span class="ltx_p" id="A2.T8.4.11.11.1.1.1" style="width:313.0pt;"><span class="ltx_text" id="A2.T8.4.11.11.1.1.1.1" style="font-size:90%;">9. 0.87</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T8.4.12.12">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_b" id="A2.T8.4.12.12.1">
<span class="ltx_inline-block ltx_align_top" id="A2.T8.4.12.12.1.1">
<span class="ltx_p" id="A2.T8.4.12.12.1.1.1" style="width:313.0pt;"><span class="ltx_text" id="A2.T8.4.12.12.1.1.1.1" style="font-size:90%;">10. 3.40</span></span>
</span>
</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a sample multiple-choice question from the Engineering category of the MMLU-Pro dataset.  The question involves a cumulative compound motor with a varying load, requiring a change in armature current. The task is to calculate the ratio of torques developed for two given armature current values, testing the examinee's understanding of electrical machine principles and their ability to solve related engineering problems.
> <details>
> <summary>read the caption</summary>
> Table 8. Example of a question from Engineering category
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2503.01688/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.01688/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.01688/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.01688/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.01688/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.01688/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.01688/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.01688/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.01688/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.01688/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.01688/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.01688/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.01688/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.01688/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.01688/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.01688/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.01688/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.01688/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.01688/19.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.01688/20.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}