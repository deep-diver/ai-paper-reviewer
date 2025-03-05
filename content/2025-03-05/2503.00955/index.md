---
title: "SemViQA: A Semantic Question Answering System for Vietnamese Information Fact-Checking"
summary: "SemViQA: A new approach to boost Vietnamese fact-checking with semantic understanding and efficient evidence retrieval."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Natural Language Processing", "Question Answering", "🏢 FPT Software AI Center, Viet Nam",]
showSummary: true
date: 2025-03-02
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2503.00955 {{< /keyword >}}
{{< keyword icon="writer" >}} Nam V. Nguyen et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-03-05 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2503.00955" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2503.00955" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2503.00955/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

The paper addresses the growing issue of misinformation, particularly in low-resource languages like Vietnamese, where existing fact-checking methods struggle with semantic nuances and complex linguistic structures. Current systems often trade accuracy for efficiency. To solve the problems, **the authors introduces SemViQA**, a novel Vietnamese fact-checking framework designed to improve both accuracy and speed. **SemViQA addresses semantic ambiguity, homonyms, and complex linguistic structures**, achieving state-of-the-art results on standard datasets. 



SemViQA integrates Semantic-based Evidence Retrieval (SER) and Two-step Verdict Classification (TVC). SER combines TF-IDF for speed with a Question Answering Token Classifier (QATC) for semantic understanding. TVC uses a hierarchical approach with Focal Loss and Cross-Entropy Loss for robust classification. **Two versions are presented: SemViQA Standard prioritizes accuracy, while SemViQA Faster emphasizes speed**. Experiments on ISE-DSC01 and ViWikiFC datasets show SemViQA outperforms existing methods, with SemViQA Faster achieving a 7x speedup.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} SemViQA achieves state-of-the-art results in Vietnamese fact verification, outperforming existing baselines on ISE-DSC01 and ViWikiFC datasets. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} The framework combines Semantic-based Evidence Retrieval (SER) and Two-step Verdict Classification (TVC) to balance precision and speed. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} SemViQA Faster improves inference speed significantly while maintaining competitive accuracy, making it suitable for real-world applications. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
SemViQA sets a new benchmark in Vietnamese fact verification, offering a strong baseline for future research. Its component SER and TVC, offer insights for improving fact-checking systems, especially for low-resource languages. **This work can inspire development of more accurate and efficient misinformation detection tools.**

------
#### Visual Insights



![](https://arxiv.org/html/2503.00955/x1.png)

> 🔼 SemViQA is a three-stage fact-checking framework.  The first stage preprocesses the input data. The second stage retrieves evidence using a hybrid approach combining TF-IDF and a Question Answering Token Classifier (QATC). TF-IDF is used for efficient keyword matching, while QATC refines evidence selection for complex cases. The third stage classifies the claim using a two-step approach: first, a three-class classification (supported, refuted, not enough information), and then a binary classification (supported, refuted) for cases that weren't classified as 'not enough information'.  P<sub>2</sub> and P<sub>3</sub> represent the probabilities from the two-class and three-class classifications respectively.  ŷ<sub>2</sub> and ŷ<sub>3</sub> represent the corresponding predictions.
> <details>
> <summary>read the caption</summary>
> Figure 1: SemViQA: A Three-Stage Method for semantic-based evidence retrieval and two-step verdict classification, where P2subscript𝑃2P_{2}italic_P start_POSTSUBSCRIPT 2 end_POSTSUBSCRIPT and P3subscript𝑃3P_{3}italic_P start_POSTSUBSCRIPT 3 end_POSTSUBSCRIPT represent the probabilities of the two-class and three-class classifications, respectively, and y^2subscript^𝑦2\hat{y}_{\text{2}}over^ start_ARG italic_y end_ARG start_POSTSUBSCRIPT 2 end_POSTSUBSCRIPT and y^3subscript^𝑦3\hat{y}_{\text{3}}over^ start_ARG italic_y end_ARG start_POSTSUBSCRIPT 3 end_POSTSUBSCRIPT denote their corresponding predictions.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S4.T1.1.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T1.1.1.1.1">
<th class="ltx_td ltx_th ltx_th_row ltx_border_t" id="S4.T1.1.1.1.1.1"></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T1.1.1.1.1.2"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.1.1.2.1">ISE-DSC01</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T1.1.1.1.1.3"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.1.1.3.1">ViWikiFC</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T1.1.1.2.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T1.1.1.2.1.1"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.2.1.1.1">Train</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.2.1.2">37,967</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.2.1.3">16,738</td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.1.3.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T1.1.1.3.2.1"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.3.2.1.1">Dev</span></th>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.3.2.2">4,794</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.3.2.3">2,090</td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.1.4.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_b" id="S4.T1.1.1.4.3.1"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.4.3.1.1">Test</span></th>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T1.1.1.4.3.2">5,396</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T1.1.1.4.3.3">2,091</td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 This table presents a summary of the datasets used in the experiments conducted in the paper.  It shows the number of training, development, and test samples for each dataset. The datasets are ISE-DSC01 and ViWikiFC, both used for Vietnamese fact verification.  The table provides context for understanding the scale and characteristics of the data used to evaluate the proposed SemViQA model.
> <details>
> <summary>read the caption</summary>
> Table 1: Overview of the datasets used in our experiments
> </details>





### In-depth insights


#### SemViQA: A New Approach
While the exact phrase "SemViQA: A New Approach" isn't present, the paper indeed introduces SemViQA as a novel framework. It's positioned as a solution to **overcome limitations in Vietnamese fact-checking**, particularly concerning semantic ambiguity and long-context handling. The core innovation seems to be the integration of **Semantic-based Evidence Retrieval (SER) and Two-step Verdict Classification (TVC)**. This hybrid approach aims to strike a balance between speed and accuracy, a common trade-off in existing methods. The use of TF-IDF for efficiency coupled with a Question Answering Token Classifier (QATC) for semantic understanding suggests a **strategic focus on nuanced evidence selection**. The TVC, with its hierarchical classification using Focal Loss and Cross-Entropy Loss, indicates an attempt to **enhance the robustness and precision of claim verification**. Ultimately, SemViQA represents a new benchmark, especially concerning the **unique challenges posed by the Vietnamese language and its low-resource nature**.

#### Semantic Retrieval
Semantic retrieval represents a paradigm shift from keyword-based searches to understanding the meaning behind queries and documents. It leverages techniques like **embedding models** and **knowledge graphs** to capture relationships between words and concepts, overcoming limitations of lexical matching. A key advantage is the ability to retrieve relevant information even when the query doesn't contain exact keywords present in the document. This is crucial for handling semantic ambiguity, homonyms, and complex linguistic structures, improving precision. Challenges include the computational cost of processing and storing embeddings, as well as the need for robust methods to handle noisy or incomplete data. Successfully implementing semantic retrieval requires careful consideration of the trade-off between **accuracy, efficiency, and scalability**, but the potential for enhanced information access is significant.

#### Two-Step Verdict
A two-step verdict classification process offers a nuanced approach to fact verification. First, a **three-class classifier** determines if a claim is Supported, Refuted, or requires Not Enough Information (NEI). This initial stage filters out straightforward cases. Subsequently, for claims not categorized as NEI, a **binary classifier** refines the decision between Supported and Refuted, addressing ambiguous or complex scenarios. This hierarchical structure enhances accuracy by sequentially narrowing down possibilities, improving the robustness of the fact-checking system. Using focal loss can help balance the classes.

#### Faster Inference
The 'Faster Inference' capability highlights a crucial aspect of real-world deployment for fact-checking systems. **Efficiency in processing speed is paramount**, especially when dealing with large volumes of information and the need for timely responses. The authors likely optimized their model architecture, potentially through **quantization or knowledge distillation**, to reduce computational overhead without sacrificing accuracy. Techniques like **batch processing** can significantly improve throughput, while model pruning can minimize the number of parameters, thereby speeding up inference. A trade-off between accuracy and speed often exists; finding the right balance is essential for practical applications. Furthermore, **hardware acceleration** using GPUs or specialized inference chips can lead to substantial performance gains. The benefits of faster inference include reduced latency, enabling real-time fact verification, and the ability to scale the system to handle increased demand. These improvements are critical for deploying fact-checking solutions in dynamic environments, such as social media platforms or news aggregators.

#### LLM Limitations
LLMs, despite their advancements, have limitations in Vietnamese fact verification. **Reliance on TF-IDF restricts deep semantic capture**, needing adaptive retrieval strategies. The Two-step Verdict Classification framework **increases inference time** due to multiple stages, significantly impacting three-class tasks. **Optimizing efficiency without compromising accuracy remains crucial** for real-world use.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2503.00955/x2.png)

> 🔼 This figure is a graph showing the distribution of context lengths in tokens for two Vietnamese fact-checking datasets: ISE-DSC01 and ViWikiFC. The x-axis represents the dataset, and the y-axis represents the number of tokens.  The graph visually demonstrates that the ViWikiFC dataset has shorter contexts (maximum around 598 tokens), whereas the ISE-DSC01 dataset contains significantly longer contexts, with a maximum exceeding 4800 tokens. This highlights a key challenge in processing the ISE-DSC01 data due to length limitations of standard transformer models.
> <details>
> <summary>read the caption</summary>
> Figure 2: Graph representing the lengths of contexts.
> </details>



![](https://arxiv.org/html/2503.00955/x3.png)

> 🔼 This figure illustrates the solution implemented in SemViQA to handle long contexts exceeding the token limits of Vietnamese BERT models. The process involves splitting the long context into smaller segments (subcontexts) of under 400 tokens and checking for the presence of the evidence sentence within each subcontext.  If the evidence sentence is found, the subcontext is kept. If it is not present, an empty string is assigned for that subcontext.  The resulting subcontexts are then used for further processing, ensuring that no information is lost due to the token length constraint.
> <details>
> <summary>read the caption</summary>
> Figure 3: Long context processing solution.
> </details>



![](https://arxiv.org/html/2503.00955/x4.png)

> 🔼 Figure 4 presents a comparison of different fact-checking methods' performance, focusing on both accuracy and inference time.  It displays the average strict accuracy and total inference time (across the ViWikiFC and ISE-DSC01 datasets) for various methods. This visualization helps to understand the trade-offs between accuracy and speed, allowing readers to assess the efficiency and overall effectiveness of each approach. Detailed performance metrics (including Evidence Retrieval Accuracy and Veracity Classification Accuracy) are presented in Table 2.
> <details>
> <summary>read the caption</summary>
> Figure 4: Comparison of method performance, balancing accuracy and inference time. Each retrieval method is evaluated based on its highest achieved score, while the total inference time across both datasets is reported to highlight efficiency. Further details can be found in Table 2.
> </details>



![](https://arxiv.org/html/2503.00955/x5.png)

> 🔼 This figure shows how changing the confidence threshold in SemViQA affects the accuracy of evidence retrieval.  The x-axis represents the confidence threshold, ranging from 0 to 1. The y-axis displays the evidence retrieval accuracy for both the ViWikiFC and ISE-DSC01 datasets. The graph visually demonstrates the trade-off between retrieval accuracy and computational efficiency.  A higher threshold increases accuracy by filtering out less relevant evidence but may reduce efficiency by processing fewer pieces of information.  The optimal threshold represents a balance between accuracy and efficiency.
> <details>
> <summary>read the caption</summary>
> Figure 5: Impact of confidence threshold on evidence retrieval accuracy in SemViQA.
> </details>



![](https://arxiv.org/html/2503.00955/x6.png)

> 🔼 Figure 6 presents the training curves for two Vietnamese Question Answering models, ViMRClarge and InfoXLMlarge, during the training phase of the Question Answering Token Classifier (QATC).  The plots show the loss values over training steps for each model on two separate datasets: ViWikiFC and ISE-DSC01.  This visualization allows for assessment of model training convergence, stability, and comparative performance across the two models and datasets.  The x-axis represents the training steps, and the y-axis represents the loss.
> <details>
> <summary>read the caption</summary>
> Figure 6: Training progress of the ViMRClargelarge{}_{\text{large}}start_FLOATSUBSCRIPT large end_FLOATSUBSCRIPT and InfoXLMlargelarge{}_{\text{large}}start_FLOATSUBSCRIPT large end_FLOATSUBSCRIPT models.
> </details>



![](https://arxiv.org/html/2503.00955/x7.png)

> 🔼 This figure displays the training loss curves for the Qwen 1.5B and Qwen 3B language models across two datasets, ViWikiFC and ISE-DSC01.  The x-axis represents the training epochs, while the y-axis shows the loss value.  Separate plots are shown for each dataset.  The plots illustrate the convergence behavior of the models during training, offering insights into the training stability and efficiency of the two different sized models.
> <details>
> <summary>read the caption</summary>
> Figure 7: Training progress of the Qwen 1.5B and Qwen 3B models.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S4.T2.34.34">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T2.34.34.35.1">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" colspan="2" id="S4.T2.34.34.35.1.1" style="padding-top:1pt;padding-bottom:1pt;">Method</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.34.34.35.1.2" rowspan="2" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S4.T2.34.34.35.1.2.1">Parameter</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" colspan="4" id="S4.T2.34.34.35.1.3" style="padding-top:1pt;padding-bottom:1pt;">ViWikiFC</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" colspan="4" id="S4.T2.34.34.35.1.4" style="padding-top:1pt;padding-bottom:1pt;">ISE-DSC01</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.34.34.35.1.5" rowspan="2" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S4.T2.34.34.35.1.5.1">Avg Strict Acc</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.34.34.36.2">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S4.T2.34.34.36.2.1" style="padding-top:1pt;padding-bottom:1pt;">ER</td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S4.T2.34.34.36.2.2" style="padding-top:1pt;padding-bottom:1pt;">VC</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.34.34.36.2.3" style="padding-top:1pt;padding-bottom:1pt;">Strict Acc</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.34.34.36.2.4" style="padding-top:1pt;padding-bottom:1pt;">VC Acc</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.34.34.36.2.5" style="padding-top:1pt;padding-bottom:1pt;">ER Acc</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.34.34.36.2.6" style="padding-top:1pt;padding-bottom:1pt;">Time (s)</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.34.34.36.2.7" style="padding-top:1pt;padding-bottom:1pt;">Strict Acc</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.34.34.36.2.8" style="padding-top:1pt;padding-bottom:1pt;">VC Acc</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.34.34.36.2.9" style="padding-top:1pt;padding-bottom:1pt;">ER Acc</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.34.34.36.2.10" style="padding-top:1pt;padding-bottom:1pt;">Time (s)</td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.1.1">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S4.T2.1.1.1.2" rowspan="3" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S4.T2.1.1.1.2.1">TF-IDF</span></td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S4.T2.1.1.1.1" style="padding-top:1pt;padding-bottom:1pt;">InfoXLM<sub class="ltx_sub" id="S4.T2.1.1.1.1.1"><span class="ltx_text ltx_font_italic" id="S4.T2.1.1.1.1.1.1">large</span></sub>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.1.1.1.3" style="padding-top:1pt;padding-bottom:1pt;">560M</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.1.4" style="padding-top:1pt;padding-bottom:1pt;">75.56</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.1.5" style="padding-top:1pt;padding-bottom:1pt;">82.21</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.1.1.1.6" style="padding-top:1pt;padding-bottom:1pt;">90.15</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.1.1.1.7" style="padding-top:1pt;padding-bottom:1pt;">131</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.1.8" style="padding-top:1pt;padding-bottom:1pt;">73.59</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.1.9" style="padding-top:1pt;padding-bottom:1pt;">78.08</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.1.1.1.10" style="padding-top:1pt;padding-bottom:1pt;">76.61</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.1.1.1.11" style="padding-top:1pt;padding-bottom:1pt;">378</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.1.12" style="padding-top:1pt;padding-bottom:1pt;">74.58</td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.2.2">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T2.2.2.2.1" style="padding-top:1pt;padding-bottom:1pt;">XLM-R<sub class="ltx_sub" id="S4.T2.2.2.2.1.1"><span class="ltx_text ltx_font_italic" id="S4.T2.2.2.2.1.1.1">large</span></sub>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.2.2.2.2" style="padding-top:1pt;padding-bottom:1pt;">560M</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.2.3" style="padding-top:1pt;padding-bottom:1pt;">76.47</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.2.4" style="padding-top:1pt;padding-bottom:1pt;">82.78</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.2.2.2.5" style="padding-top:1pt;padding-bottom:1pt;">90.15</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.2.2.2.6" style="padding-top:1pt;padding-bottom:1pt;">134</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.2.7" style="padding-top:1pt;padding-bottom:1pt;">75.61</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.2.8" style="padding-top:1pt;padding-bottom:1pt;">80.50</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.2.2.2.9" style="padding-top:1pt;padding-bottom:1pt;">78.58</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.2.2.2.10" style="padding-top:1pt;padding-bottom:1pt;">366</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.2.11" style="padding-top:1pt;padding-bottom:1pt;">76.04</td>
</tr>
<tr class="ltx_tr" id="S4.T2.3.3.3">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T2.3.3.3.1" style="padding-top:1pt;padding-bottom:1pt;">Ernie-M<sub class="ltx_sub" id="S4.T2.3.3.3.1.1"><span class="ltx_text ltx_font_italic" id="S4.T2.3.3.3.1.1.1">large</span></sub>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.3.3.3.2" style="padding-top:1pt;padding-bottom:1pt;">560M</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.3.3.3" style="padding-top:1pt;padding-bottom:1pt;">75.56</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.3.3.4" style="padding-top:1pt;padding-bottom:1pt;">81.83</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.3.3.3.5" style="padding-top:1pt;padding-bottom:1pt;">90.15</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.3.3.3.6" style="padding-top:1pt;padding-bottom:1pt;">144</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.3.3.7" style="padding-top:1pt;padding-bottom:1pt;">78.19</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.3.3.8" style="padding-top:1pt;padding-bottom:1pt;">81.69</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.3.3.3.9" style="padding-top:1pt;padding-bottom:1pt;">80.65</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.3.3.3.10" style="padding-top:1pt;padding-bottom:1pt;">403</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.3.3.11" style="padding-top:1pt;padding-bottom:1pt;">76.88</td>
</tr>
<tr class="ltx_tr" id="S4.T2.4.4.4">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S4.T2.4.4.4.2" rowspan="3" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S4.T2.4.4.4.2.1">BM25</span></td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S4.T2.4.4.4.1" style="padding-top:1pt;padding-bottom:1pt;">InfoXLM<sub class="ltx_sub" id="S4.T2.4.4.4.1.1"><span class="ltx_text ltx_font_italic" id="S4.T2.4.4.4.1.1.1">large</span></sub>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.4.4.4.3" style="padding-top:1pt;padding-bottom:1pt;">560M</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.4.4.4.4" style="padding-top:1pt;padding-bottom:1pt;">70.44</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.4.4.4.5" style="padding-top:1pt;padding-bottom:1pt;">79.01</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.4.4.4.6" style="padding-top:1pt;padding-bottom:1pt;">83.50</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.4.4.4.7" style="padding-top:1pt;padding-bottom:1pt;">130</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.4.4.4.8" style="padding-top:1pt;padding-bottom:1pt;">72.09</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.4.4.4.9" style="padding-top:1pt;padding-bottom:1pt;">77.37</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.4.4.4.10" style="padding-top:1pt;padding-bottom:1pt;">75.04</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.4.4.4.11" style="padding-top:1pt;padding-bottom:1pt;">320</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.4.4.4.12" style="padding-top:1pt;padding-bottom:1pt;">71.27</td>
</tr>
<tr class="ltx_tr" id="S4.T2.5.5.5">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T2.5.5.5.1" style="padding-top:1pt;padding-bottom:1pt;">XLM-R<sub class="ltx_sub" id="S4.T2.5.5.5.1.1"><span class="ltx_text ltx_font_italic" id="S4.T2.5.5.5.1.1.1">large</span></sub>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.5.5.5.2" style="padding-top:1pt;padding-bottom:1pt;">560M</td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.5.5.3" style="padding-top:1pt;padding-bottom:1pt;">70.97</td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.5.5.4" style="padding-top:1pt;padding-bottom:1pt;">78.91</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.5.5.5.5" style="padding-top:1pt;padding-bottom:1pt;">83.50</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.5.5.5.6" style="padding-top:1pt;padding-bottom:1pt;">132</td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.5.5.7" style="padding-top:1pt;padding-bottom:1pt;">73.94</td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.5.5.8" style="padding-top:1pt;padding-bottom:1pt;">79.37</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.5.5.5.9" style="padding-top:1pt;padding-bottom:1pt;">76.95</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.5.5.5.10" style="padding-top:1pt;padding-bottom:1pt;">333</td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.5.5.11" style="padding-top:1pt;padding-bottom:1pt;">72.46</td>
</tr>
<tr class="ltx_tr" id="S4.T2.6.6.6">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T2.6.6.6.1" style="padding-top:1pt;padding-bottom:1pt;">Ernie-M<sub class="ltx_sub" id="S4.T2.6.6.6.1.1"><span class="ltx_text ltx_font_italic" id="S4.T2.6.6.6.1.1.1">large</span></sub>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.6.6.6.2" style="padding-top:1pt;padding-bottom:1pt;">560M</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.6.3" style="padding-top:1pt;padding-bottom:1pt;">70.21</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.6.4" style="padding-top:1pt;padding-bottom:1pt;">78.29</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.6.6.6.5" style="padding-top:1pt;padding-bottom:1pt;">83.50</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.6.6.6.6" style="padding-top:1pt;padding-bottom:1pt;">141</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.6.7" style="padding-top:1pt;padding-bottom:1pt;">76.58</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.6.8" style="padding-top:1pt;padding-bottom:1pt;">80.76</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.6.6.6.9" style="padding-top:1pt;padding-bottom:1pt;">79.02</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.6.6.6.10" style="padding-top:1pt;padding-bottom:1pt;">381</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.6.11" style="padding-top:1pt;padding-bottom:1pt;">73.40</td>
</tr>
<tr class="ltx_tr" id="S4.T2.7.7.7">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S4.T2.7.7.7.2" rowspan="3" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S4.T2.7.7.7.2.1">SBert</span></td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S4.T2.7.7.7.1" style="padding-top:1pt;padding-bottom:1pt;">InfoXLM<sub class="ltx_sub" id="S4.T2.7.7.7.1.1"><span class="ltx_text ltx_font_italic" id="S4.T2.7.7.7.1.1.1">large</span></sub>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.7.7.7.3" style="padding-top:1pt;padding-bottom:1pt;">838M</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.7.7.7.4" style="padding-top:1pt;padding-bottom:1pt;">74.99</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.7.7.7.5" style="padding-top:1pt;padding-bottom:1pt;">81.59</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.7.7.7.6" style="padding-top:1pt;padding-bottom:1pt;">89.72</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.7.7.7.7" style="padding-top:1pt;padding-bottom:1pt;">195</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.7.7.7.8" style="padding-top:1pt;padding-bottom:1pt;">71.20</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.7.7.7.9" style="padding-top:1pt;padding-bottom:1pt;">76.59</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.7.7.7.10" style="padding-top:1pt;padding-bottom:1pt;">74.15</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.7.7.7.11" style="padding-top:1pt;padding-bottom:1pt;">915</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.7.7.7.12" style="padding-top:1pt;padding-bottom:1pt;">73.10</td>
</tr>
<tr class="ltx_tr" id="S4.T2.8.8.8">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T2.8.8.8.1" style="padding-top:1pt;padding-bottom:1pt;">XLM-R<sub class="ltx_sub" id="S4.T2.8.8.8.1.1"><span class="ltx_text ltx_font_italic" id="S4.T2.8.8.8.1.1.1">large</span></sub>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.8.8.8.2" style="padding-top:1pt;padding-bottom:1pt;">838M</td>
<td class="ltx_td ltx_align_center" id="S4.T2.8.8.8.3" style="padding-top:1pt;padding-bottom:1pt;">75.80</td>
<td class="ltx_td ltx_align_center" id="S4.T2.8.8.8.4" style="padding-top:1pt;padding-bottom:1pt;">82.35</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.8.8.8.5" style="padding-top:1pt;padding-bottom:1pt;">89.72</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.8.8.8.6" style="padding-top:1pt;padding-bottom:1pt;">194</td>
<td class="ltx_td ltx_align_center" id="S4.T2.8.8.8.7" style="padding-top:1pt;padding-bottom:1pt;">72.85</td>
<td class="ltx_td ltx_align_center" id="S4.T2.8.8.8.8" style="padding-top:1pt;padding-bottom:1pt;">78.78</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.8.8.8.9" style="padding-top:1pt;padding-bottom:1pt;">75.89</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.8.8.8.10" style="padding-top:1pt;padding-bottom:1pt;">835</td>
<td class="ltx_td ltx_align_center" id="S4.T2.8.8.8.11" style="padding-top:1pt;padding-bottom:1pt;">74.33</td>
</tr>
<tr class="ltx_tr" id="S4.T2.9.9.9">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T2.9.9.9.1" style="padding-top:1pt;padding-bottom:1pt;">Ernie-M<sub class="ltx_sub" id="S4.T2.9.9.9.1.1"><span class="ltx_text ltx_font_italic" id="S4.T2.9.9.9.1.1.1">large</span></sub>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.9.9.9.2" style="padding-top:1pt;padding-bottom:1pt;">838M</td>
<td class="ltx_td ltx_align_center" id="S4.T2.9.9.9.3" style="padding-top:1pt;padding-bottom:1pt;">75.13</td>
<td class="ltx_td ltx_align_center" id="S4.T2.9.9.9.4" style="padding-top:1pt;padding-bottom:1pt;">81.44</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.9.9.9.5" style="padding-top:1pt;padding-bottom:1pt;">89.72</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.9.9.9.6" style="padding-top:1pt;padding-bottom:1pt;">203</td>
<td class="ltx_td ltx_align_center" id="S4.T2.9.9.9.7" style="padding-top:1pt;padding-bottom:1pt;">75.46</td>
<td class="ltx_td ltx_align_center" id="S4.T2.9.9.9.8" style="padding-top:1pt;padding-bottom:1pt;">79.89</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.9.9.9.9" style="padding-top:1pt;padding-bottom:1pt;">77.91</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.9.9.9.10" style="padding-top:1pt;padding-bottom:1pt;">920</td>
<td class="ltx_td ltx_align_center" id="S4.T2.9.9.9.11" style="padding-top:1pt;padding-bottom:1pt;">75.30</td>
</tr>
<tr class="ltx_tr" id="S4.T2.34.34.37.3">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S4.T2.34.34.37.3.1" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.34.34.37.3.1.1">QA-based approaches</span></td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S4.T2.34.34.37.3.2" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.34.34.37.3.2.1">VC<span class="ltx_text" id="S4.T2.34.34.37.3.2.1.1"></span></span></td>
<td class="ltx_td ltx_border_t" id="S4.T2.34.34.37.3.3" style="padding-top:1pt;padding-bottom:1pt;"></td>
<td class="ltx_td ltx_border_t" id="S4.T2.34.34.37.3.4" style="padding-top:1pt;padding-bottom:1pt;"></td>
<td class="ltx_td ltx_border_t" id="S4.T2.34.34.37.3.5" style="padding-top:1pt;padding-bottom:1pt;"></td>
<td class="ltx_td ltx_border_t" id="S4.T2.34.34.37.3.6" style="padding-top:1pt;padding-bottom:1pt;"></td>
<td class="ltx_td ltx_border_t" id="S4.T2.34.34.37.3.7" style="padding-top:1pt;padding-bottom:1pt;"></td>
<td class="ltx_td ltx_border_t" id="S4.T2.34.34.37.3.8" style="padding-top:1pt;padding-bottom:1pt;"></td>
<td class="ltx_td ltx_border_t" id="S4.T2.34.34.37.3.9" style="padding-top:1pt;padding-bottom:1pt;"></td>
<td class="ltx_td ltx_border_t" id="S4.T2.34.34.37.3.10" style="padding-top:1pt;padding-bottom:1pt;"></td>
<td class="ltx_td ltx_border_t" id="S4.T2.34.34.37.3.11" style="padding-top:1pt;padding-bottom:1pt;"></td>
<td class="ltx_td ltx_border_t" id="S4.T2.34.34.37.3.12" style="padding-top:1pt;padding-bottom:1pt;"></td>
</tr>
<tr class="ltx_tr" id="S4.T2.11.11.11">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S4.T2.10.10.10.1" rowspan="3" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S4.T2.10.10.10.1.1">ViMRC<sub class="ltx_sub" id="S4.T2.10.10.10.1.1.1"><span class="ltx_text ltx_font_italic" id="S4.T2.10.10.10.1.1.1.1">large</span></sub></span></td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S4.T2.11.11.11.2" style="padding-top:1pt;padding-bottom:1pt;">InfoXLM<sub class="ltx_sub" id="S4.T2.11.11.11.2.1"><span class="ltx_text ltx_font_italic" id="S4.T2.11.11.11.2.1.1">large</span></sub>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.11.11.11.3" style="padding-top:1pt;padding-bottom:1pt;">1120M</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.11.11.11.4" style="padding-top:1pt;padding-bottom:1pt;">77.28</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.11.11.11.5" style="padding-top:1pt;padding-bottom:1pt;">81.97</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.11.11.11.6" style="padding-top:1pt;padding-bottom:1pt;">92.49</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.11.11.11.7" style="padding-top:1pt;padding-bottom:1pt;">3778</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.11.11.11.8" style="padding-top:1pt;padding-bottom:1pt;">54.36</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.11.11.11.9" style="padding-top:1pt;padding-bottom:1pt;">64.14</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.11.11.11.10" style="padding-top:1pt;padding-bottom:1pt;">56.84</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.11.11.11.11" style="padding-top:1pt;padding-bottom:1pt;">9798</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.11.11.11.12" style="padding-top:1pt;padding-bottom:1pt;">65.82</td>
</tr>
<tr class="ltx_tr" id="S4.T2.12.12.12">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T2.12.12.12.1" style="padding-top:1pt;padding-bottom:1pt;">XLM-R<sub class="ltx_sub" id="S4.T2.12.12.12.1.1"><span class="ltx_text ltx_font_italic" id="S4.T2.12.12.12.1.1.1">large</span></sub>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.12.12.12.2" style="padding-top:1pt;padding-bottom:1pt;">1120M</td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.12.12.3" style="padding-top:1pt;padding-bottom:1pt;">78.29</td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.12.12.4" style="padding-top:1pt;padding-bottom:1pt;">82.83</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.12.12.12.5" style="padding-top:1pt;padding-bottom:1pt;">92.49</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.12.12.12.6" style="padding-top:1pt;padding-bottom:1pt;">3824</td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.12.12.7" style="padding-top:1pt;padding-bottom:1pt;">53.98</td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.12.12.8" style="padding-top:1pt;padding-bottom:1pt;">66.70</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.12.12.12.9" style="padding-top:1pt;padding-bottom:1pt;">57.77</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.12.12.12.10" style="padding-top:1pt;padding-bottom:1pt;">9809</td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.12.12.11" style="padding-top:1pt;padding-bottom:1pt;">66.14</td>
</tr>
<tr class="ltx_tr" id="S4.T2.13.13.13">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T2.13.13.13.1" style="padding-top:1pt;padding-bottom:1pt;">Ernie-M<sub class="ltx_sub" id="S4.T2.13.13.13.1.1"><span class="ltx_text ltx_font_italic" id="S4.T2.13.13.13.1.1.1">large</span></sub>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.13.13.13.2" style="padding-top:1pt;padding-bottom:1pt;">1120M</td>
<td class="ltx_td ltx_align_center" id="S4.T2.13.13.13.3" style="padding-top:1pt;padding-bottom:1pt;">77.38</td>
<td class="ltx_td ltx_align_center" id="S4.T2.13.13.13.4" style="padding-top:1pt;padding-bottom:1pt;">81.92</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.13.13.13.5" style="padding-top:1pt;padding-bottom:1pt;">92.49</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.13.13.13.6" style="padding-top:1pt;padding-bottom:1pt;">3785</td>
<td class="ltx_td ltx_align_center" id="S4.T2.13.13.13.7" style="padding-top:1pt;padding-bottom:1pt;">56.62</td>
<td class="ltx_td ltx_align_center" id="S4.T2.13.13.13.8" style="padding-top:1pt;padding-bottom:1pt;">62.19</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.13.13.13.9" style="padding-top:1pt;padding-bottom:1pt;">58.91</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.13.13.13.10" style="padding-top:1pt;padding-bottom:1pt;">9833</td>
<td class="ltx_td ltx_align_center" id="S4.T2.13.13.13.11" style="padding-top:1pt;padding-bottom:1pt;">67.00</td>
</tr>
<tr class="ltx_tr" id="S4.T2.15.15.15">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S4.T2.14.14.14.1" rowspan="3" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S4.T2.14.14.14.1.1">InfoXLM<sub class="ltx_sub" id="S4.T2.14.14.14.1.1.1"><span class="ltx_text ltx_font_italic" id="S4.T2.14.14.14.1.1.1.1">large</span></sub></span></td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S4.T2.15.15.15.2" style="padding-top:1pt;padding-bottom:1pt;">InfoXLM<sub class="ltx_sub" id="S4.T2.15.15.15.2.1"><span class="ltx_text ltx_font_italic" id="S4.T2.15.15.15.2.1.1">large</span></sub>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.15.15.15.3" style="padding-top:1pt;padding-bottom:1pt;">1120M</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.15.15.15.4" style="padding-top:1pt;padding-bottom:1pt;">78.14</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.15.15.15.5" style="padding-top:1pt;padding-bottom:1pt;">82.07</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.15.15.15.6" style="padding-top:1pt;padding-bottom:1pt;">93.45</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.15.15.15.7" style="padding-top:1pt;padding-bottom:1pt;">4092</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.15.15.15.8" style="padding-top:1pt;padding-bottom:1pt;">53.50</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.15.15.15.9" style="padding-top:1pt;padding-bottom:1pt;">63.83</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.15.15.15.10" style="padding-top:1pt;padding-bottom:1pt;">56.17</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.15.15.15.11" style="padding-top:1pt;padding-bottom:1pt;">10057</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.15.15.15.12" style="padding-top:1pt;padding-bottom:1pt;">65.82</td>
</tr>
<tr class="ltx_tr" id="S4.T2.16.16.16">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T2.16.16.16.1" style="padding-top:1pt;padding-bottom:1pt;">XLM-R<sub class="ltx_sub" id="S4.T2.16.16.16.1.1"><span class="ltx_text ltx_font_italic" id="S4.T2.16.16.16.1.1.1">large</span></sub>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.16.16.16.2" style="padding-top:1pt;padding-bottom:1pt;">1120M</td>
<td class="ltx_td ltx_align_center" id="S4.T2.16.16.16.3" style="padding-top:1pt;padding-bottom:1pt;">79.20</td>
<td class="ltx_td ltx_align_center" id="S4.T2.16.16.16.4" style="padding-top:1pt;padding-bottom:1pt;">83.07</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.16.16.16.5" style="padding-top:1pt;padding-bottom:1pt;">93.45</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.16.16.16.6" style="padding-top:1pt;padding-bottom:1pt;">4096</td>
<td class="ltx_td ltx_align_center" id="S4.T2.16.16.16.7" style="padding-top:1pt;padding-bottom:1pt;">53.32</td>
<td class="ltx_td ltx_align_center" id="S4.T2.16.16.16.8" style="padding-top:1pt;padding-bottom:1pt;">66.70</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.16.16.16.9" style="padding-top:1pt;padding-bottom:1pt;">57.25</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.16.16.16.10" style="padding-top:1pt;padding-bottom:1pt;">10066</td>
<td class="ltx_td ltx_align_center" id="S4.T2.16.16.16.11" style="padding-top:1pt;padding-bottom:1pt;">66.26</td>
</tr>
<tr class="ltx_tr" id="S4.T2.17.17.17">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T2.17.17.17.1" style="padding-top:1pt;padding-bottom:1pt;">Ernie-M<sub class="ltx_sub" id="S4.T2.17.17.17.1.1"><span class="ltx_text ltx_font_italic" id="S4.T2.17.17.17.1.1.1">large</span></sub>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.17.17.17.2" style="padding-top:1pt;padding-bottom:1pt;">1120M</td>
<td class="ltx_td ltx_align_center" id="S4.T2.17.17.17.3" style="padding-top:1pt;padding-bottom:1pt;">78.24</td>
<td class="ltx_td ltx_align_center" id="S4.T2.17.17.17.4" style="padding-top:1pt;padding-bottom:1pt;">82.21</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.17.17.17.5" style="padding-top:1pt;padding-bottom:1pt;">93.45</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.17.17.17.6" style="padding-top:1pt;padding-bottom:1pt;">4102</td>
<td class="ltx_td ltx_align_center" id="S4.T2.17.17.17.7" style="padding-top:1pt;padding-bottom:1pt;">56.34</td>
<td class="ltx_td ltx_align_center" id="S4.T2.17.17.17.8" style="padding-top:1pt;padding-bottom:1pt;">62.36</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.17.17.17.9" style="padding-top:1pt;padding-bottom:1pt;">58.69</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.17.17.17.10" style="padding-top:1pt;padding-bottom:1pt;">10078</td>
<td class="ltx_td ltx_align_center" id="S4.T2.17.17.17.11" style="padding-top:1pt;padding-bottom:1pt;">67.29</td>
</tr>
<tr class="ltx_tr" id="S4.T2.34.34.38.4">
<td class="ltx_td ltx_nopad_r ltx_align_right ltx_border_t" colspan="2" id="S4.T2.34.34.38.4.1" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_text ltx_font_bold" id="S4.T2.34.34.38.4.1.1">LLM</span>     <span class="ltx_text" id="S4.T2.34.34.38.4.1.2"></span>
</td>
<td class="ltx_td ltx_border_t" id="S4.T2.34.34.38.4.2" style="padding-top:1pt;padding-bottom:1pt;"></td>
<td class="ltx_td ltx_border_t" id="S4.T2.34.34.38.4.3" style="padding-top:1pt;padding-bottom:1pt;"></td>
<td class="ltx_td ltx_border_t" id="S4.T2.34.34.38.4.4" style="padding-top:1pt;padding-bottom:1pt;"></td>
<td class="ltx_td ltx_border_t" id="S4.T2.34.34.38.4.5" style="padding-top:1pt;padding-bottom:1pt;"></td>
<td class="ltx_td ltx_border_t" id="S4.T2.34.34.38.4.6" style="padding-top:1pt;padding-bottom:1pt;"></td>
<td class="ltx_td ltx_border_t" id="S4.T2.34.34.38.4.7" style="padding-top:1pt;padding-bottom:1pt;"></td>
<td class="ltx_td ltx_border_t" id="S4.T2.34.34.38.4.8" style="padding-top:1pt;padding-bottom:1pt;"></td>
<td class="ltx_td ltx_border_t" id="S4.T2.34.34.38.4.9" style="padding-top:1pt;padding-bottom:1pt;"></td>
<td class="ltx_td ltx_border_t" id="S4.T2.34.34.38.4.10" style="padding-top:1pt;padding-bottom:1pt;"></td>
<td class="ltx_td ltx_border_t" id="S4.T2.34.34.38.4.11" style="padding-top:1pt;padding-bottom:1pt;"></td>
</tr>
<tr class="ltx_tr" id="S4.T2.34.34.39.5">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" colspan="2" id="S4.T2.34.34.39.5.1" style="padding-top:1pt;padding-bottom:1pt;">Qwen2.5-1.5B-Instruct</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.34.34.39.5.2" style="padding-top:1pt;padding-bottom:1pt;">1.5B</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.34.34.39.5.3" style="padding-top:1pt;padding-bottom:1pt;">51.03</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.34.34.39.5.4" style="padding-top:1pt;padding-bottom:1pt;">65.18</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.34.34.39.5.5" style="padding-top:1pt;padding-bottom:1pt;">78.96</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.34.34.39.5.6" style="padding-top:1pt;padding-bottom:1pt;">7665</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.34.34.39.5.7" style="padding-top:1pt;padding-bottom:1pt;">59.23</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.34.34.39.5.8" style="padding-top:1pt;padding-bottom:1pt;">66.68</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.34.34.39.5.9" style="padding-top:1pt;padding-bottom:1pt;">65.51</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.34.34.39.5.10" style="padding-top:1pt;padding-bottom:1pt;">19780</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.34.34.39.5.11" style="padding-top:1pt;padding-bottom:1pt;">55.13</td>
</tr>
<tr class="ltx_tr" id="S4.T2.34.34.40.6">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" colspan="2" id="S4.T2.34.34.40.6.1" style="padding-top:1pt;padding-bottom:1pt;">Qwen2.5-3B-Instruct</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.34.34.40.6.2" style="padding-top:1pt;padding-bottom:1pt;">3B</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.34.34.40.6.3" style="padding-top:1pt;padding-bottom:1pt;">44.38</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.34.34.40.6.4" style="padding-top:1pt;padding-bottom:1pt;">62.31</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.34.34.40.6.5" style="padding-top:1pt;padding-bottom:1pt;">71.35</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.34.34.40.6.6" style="padding-top:1pt;padding-bottom:1pt;">12123</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.34.34.40.6.7" style="padding-top:1pt;padding-bottom:1pt;">60.87</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.34.34.40.6.8" style="padding-top:1pt;padding-bottom:1pt;">66.92</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.34.34.40.6.9" style="padding-top:1pt;padding-bottom:1pt;">66.10</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.34.34.40.6.10" style="padding-top:1pt;padding-bottom:1pt;">31284</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.34.34.40.6.11" style="padding-top:1pt;padding-bottom:1pt;">52.63</td>
</tr>
<tr class="ltx_tr" id="S4.T2.34.34.41.7">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S4.T2.34.34.41.7.1" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.34.34.41.7.1.1">LLM</span></td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S4.T2.34.34.41.7.2" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.34.34.41.7.2.1">VC<span class="ltx_text" id="S4.T2.34.34.41.7.2.1.1"></span></span></td>
<td class="ltx_td ltx_border_t" id="S4.T2.34.34.41.7.3" style="padding-top:1pt;padding-bottom:1pt;"></td>
<td class="ltx_td ltx_border_t" id="S4.T2.34.34.41.7.4" style="padding-top:1pt;padding-bottom:1pt;"></td>
<td class="ltx_td ltx_border_t" id="S4.T2.34.34.41.7.5" style="padding-top:1pt;padding-bottom:1pt;"></td>
<td class="ltx_td ltx_border_t" id="S4.T2.34.34.41.7.6" style="padding-top:1pt;padding-bottom:1pt;"></td>
<td class="ltx_td ltx_border_t" id="S4.T2.34.34.41.7.7" style="padding-top:1pt;padding-bottom:1pt;"></td>
<td class="ltx_td ltx_border_t" id="S4.T2.34.34.41.7.8" style="padding-top:1pt;padding-bottom:1pt;"></td>
<td class="ltx_td ltx_border_t" id="S4.T2.34.34.41.7.9" style="padding-top:1pt;padding-bottom:1pt;"></td>
<td class="ltx_td ltx_border_t" id="S4.T2.34.34.41.7.10" style="padding-top:1pt;padding-bottom:1pt;"></td>
<td class="ltx_td ltx_border_t" id="S4.T2.34.34.41.7.11" style="padding-top:1pt;padding-bottom:1pt;"></td>
<td class="ltx_td ltx_border_t" id="S4.T2.34.34.41.7.12" style="padding-top:1pt;padding-bottom:1pt;"></td>
</tr>
<tr class="ltx_tr" id="S4.T2.18.18.18">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S4.T2.18.18.18.2" rowspan="3" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S4.T2.18.18.18.2.1">
Qwen2.5-1.5B-Instruct</span></td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S4.T2.18.18.18.1" style="padding-top:1pt;padding-bottom:1pt;">InfoXLM<sub class="ltx_sub" id="S4.T2.18.18.18.1.1"><span class="ltx_text ltx_font_italic" id="S4.T2.18.18.18.1.1.1">large</span></sub>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.18.18.18.3" style="padding-top:1pt;padding-bottom:1pt;">2B</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.18.18.18.4" style="padding-top:1pt;padding-bottom:1pt;">66.14</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.18.18.18.5" style="padding-top:1pt;padding-bottom:1pt;">76.47</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.18.18.18.6" style="padding-top:1pt;padding-bottom:1pt;">78.96</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.18.18.18.7" style="padding-top:1pt;padding-bottom:1pt;">7788</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.18.18.18.8" style="padding-top:1pt;padding-bottom:1pt;">64.40</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.18.18.18.9" style="padding-top:1pt;padding-bottom:1pt;">68.37</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.18.18.18.10" style="padding-top:1pt;padding-bottom:1pt;">66.49</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.18.18.18.11" style="padding-top:1pt;padding-bottom:1pt;">19970</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.18.18.18.12" style="padding-top:1pt;padding-bottom:1pt;">65.27</td>
</tr>
<tr class="ltx_tr" id="S4.T2.19.19.19">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T2.19.19.19.1" style="padding-top:1pt;padding-bottom:1pt;">XLM-R<sub class="ltx_sub" id="S4.T2.19.19.19.1.1"><span class="ltx_text ltx_font_italic" id="S4.T2.19.19.19.1.1.1">large</span></sub>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.19.19.19.2" style="padding-top:1pt;padding-bottom:1pt;">2B</td>
<td class="ltx_td ltx_align_center" id="S4.T2.19.19.19.3" style="padding-top:1pt;padding-bottom:1pt;">67.67</td>
<td class="ltx_td ltx_align_center" id="S4.T2.19.19.19.4" style="padding-top:1pt;padding-bottom:1pt;">78.10</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.19.19.19.5" style="padding-top:1pt;padding-bottom:1pt;">78.96</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.19.19.19.6" style="padding-top:1pt;padding-bottom:1pt;">7789</td>
<td class="ltx_td ltx_align_center" id="S4.T2.19.19.19.7" style="padding-top:1pt;padding-bottom:1pt;">64.66</td>
<td class="ltx_td ltx_align_center" id="S4.T2.19.19.19.8" style="padding-top:1pt;padding-bottom:1pt;">69.63</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.19.19.19.9" style="padding-top:1pt;padding-bottom:1pt;">66.72</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.19.19.19.10" style="padding-top:1pt;padding-bottom:1pt;">19976</td>
<td class="ltx_td ltx_align_center" id="S4.T2.19.19.19.11" style="padding-top:1pt;padding-bottom:1pt;">66.17</td>
</tr>
<tr class="ltx_tr" id="S4.T2.20.20.20">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T2.20.20.20.1" style="padding-top:1pt;padding-bottom:1pt;">Ernie-M<sub class="ltx_sub" id="S4.T2.20.20.20.1.1"><span class="ltx_text ltx_font_italic" id="S4.T2.20.20.20.1.1.1">large</span></sub>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.20.20.20.2" style="padding-top:1pt;padding-bottom:1pt;">2B</td>
<td class="ltx_td ltx_align_center" id="S4.T2.20.20.20.3" style="padding-top:1pt;padding-bottom:1pt;">66.52</td>
<td class="ltx_td ltx_align_center" id="S4.T2.20.20.20.4" style="padding-top:1pt;padding-bottom:1pt;">76.52</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.20.20.20.5" style="padding-top:1pt;padding-bottom:1pt;">78.96</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.20.20.20.6" style="padding-top:1pt;padding-bottom:1pt;">7794</td>
<td class="ltx_td ltx_align_center" id="S4.T2.20.20.20.7" style="padding-top:1pt;padding-bottom:1pt;">65.70</td>
<td class="ltx_td ltx_align_center" id="S4.T2.20.20.20.8" style="padding-top:1pt;padding-bottom:1pt;">68.37</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.20.20.20.9" style="padding-top:1pt;padding-bottom:1pt;">67.33</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.20.20.20.10" style="padding-top:1pt;padding-bottom:1pt;">20003</td>
<td class="ltx_td ltx_align_center" id="S4.T2.20.20.20.11" style="padding-top:1pt;padding-bottom:1pt;">66.11</td>
</tr>
<tr class="ltx_tr" id="S4.T2.21.21.21">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S4.T2.21.21.21.2" rowspan="3" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S4.T2.21.21.21.2.1">
Qwen2.5-3B-Instruct</span></td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S4.T2.21.21.21.1" style="padding-top:1pt;padding-bottom:1pt;">InfoXLM<sub class="ltx_sub" id="S4.T2.21.21.21.1.1"><span class="ltx_text ltx_font_italic" id="S4.T2.21.21.21.1.1.1">large</span></sub>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.21.21.21.3" style="padding-top:1pt;padding-bottom:1pt;">3.5B</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.21.21.21.4" style="padding-top:1pt;padding-bottom:1pt;">59.88</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.21.21.21.5" style="padding-top:1pt;padding-bottom:1pt;">72.50</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.21.21.21.6" style="padding-top:1pt;padding-bottom:1pt;">71.35</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.21.21.21.7" style="padding-top:1pt;padding-bottom:1pt;">12246</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.21.21.21.8" style="padding-top:1pt;padding-bottom:1pt;">65.72</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.21.21.21.9" style="padding-top:1pt;padding-bottom:1pt;">69.66</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.21.21.21.10" style="padding-top:1pt;padding-bottom:1pt;">67.51</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.21.21.21.11" style="padding-top:1pt;padding-bottom:1pt;">31477</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.21.21.21.12" style="padding-top:1pt;padding-bottom:1pt;">62.80</td>
</tr>
<tr class="ltx_tr" id="S4.T2.22.22.22">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T2.22.22.22.1" style="padding-top:1pt;padding-bottom:1pt;">XLM-R<sub class="ltx_sub" id="S4.T2.22.22.22.1.1"><span class="ltx_text ltx_font_italic" id="S4.T2.22.22.22.1.1.1">large</span></sub>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.22.22.22.2" style="padding-top:1pt;padding-bottom:1pt;">3.5B</td>
<td class="ltx_td ltx_align_center" id="S4.T2.22.22.22.3" style="padding-top:1pt;padding-bottom:1pt;">60.74</td>
<td class="ltx_td ltx_align_center" id="S4.T2.22.22.22.4" style="padding-top:1pt;padding-bottom:1pt;">73.08</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.22.22.22.5" style="padding-top:1pt;padding-bottom:1pt;">71.35</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.22.22.22.6" style="padding-top:1pt;padding-bottom:1pt;">12246</td>
<td class="ltx_td ltx_align_center" id="S4.T2.22.22.22.7" style="padding-top:1pt;padding-bottom:1pt;">66.12</td>
<td class="ltx_td ltx_align_center" id="S4.T2.22.22.22.8" style="padding-top:1pt;padding-bottom:1pt;">70.44</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.22.22.22.9" style="padding-top:1pt;padding-bottom:1pt;">67.83</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.22.22.22.10" style="padding-top:1pt;padding-bottom:1pt;">31483</td>
<td class="ltx_td ltx_align_center" id="S4.T2.22.22.22.11" style="padding-top:1pt;padding-bottom:1pt;">63.43</td>
</tr>
<tr class="ltx_tr" id="S4.T2.23.23.23">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T2.23.23.23.1" style="padding-top:1pt;padding-bottom:1pt;">Ernie-M<sub class="ltx_sub" id="S4.T2.23.23.23.1.1"><span class="ltx_text ltx_font_italic" id="S4.T2.23.23.23.1.1.1">large</span></sub>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.23.23.23.2" style="padding-top:1pt;padding-bottom:1pt;">3.5B</td>
<td class="ltx_td ltx_align_center" id="S4.T2.23.23.23.3" style="padding-top:1pt;padding-bottom:1pt;">60.02</td>
<td class="ltx_td ltx_align_center" id="S4.T2.23.23.23.4" style="padding-top:1pt;padding-bottom:1pt;">72.21</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.23.23.23.5" style="padding-top:1pt;padding-bottom:1pt;">71.35</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.23.23.23.6" style="padding-top:1pt;padding-bottom:1pt;">12251</td>
<td class="ltx_td ltx_align_center" id="S4.T2.23.23.23.7" style="padding-top:1pt;padding-bottom:1pt;">67.48</td>
<td class="ltx_td ltx_align_center" id="S4.T2.23.23.23.8" style="padding-top:1pt;padding-bottom:1pt;">70.77</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.23.23.23.9" style="padding-top:1pt;padding-bottom:1pt;">68.75</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.23.23.23.10" style="padding-top:1pt;padding-bottom:1pt;">31512</td>
<td class="ltx_td ltx_align_center" id="S4.T2.23.23.23.11" style="padding-top:1pt;padding-bottom:1pt;">63.80</td>
</tr>
<tr class="ltx_tr" id="S4.T2.34.34.42.8">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S4.T2.34.34.42.8.1" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.34.34.42.8.1.1">SER Faster (ours)</span></td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S4.T2.34.34.42.8.2" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.34.34.42.8.2.1">TVC (ours)<span class="ltx_text" id="S4.T2.34.34.42.8.2.1.1"></span></span></td>
<td class="ltx_td ltx_border_t" id="S4.T2.34.34.42.8.3" style="padding-top:1pt;padding-bottom:1pt;"></td>
<td class="ltx_td ltx_border_t" id="S4.T2.34.34.42.8.4" style="padding-top:1pt;padding-bottom:1pt;"></td>
<td class="ltx_td ltx_border_t" id="S4.T2.34.34.42.8.5" style="padding-top:1pt;padding-bottom:1pt;"></td>
<td class="ltx_td ltx_border_t" id="S4.T2.34.34.42.8.6" style="padding-top:1pt;padding-bottom:1pt;"></td>
<td class="ltx_td ltx_border_t" id="S4.T2.34.34.42.8.7" style="padding-top:1pt;padding-bottom:1pt;"></td>
<td class="ltx_td ltx_border_t" id="S4.T2.34.34.42.8.8" style="padding-top:1pt;padding-bottom:1pt;"></td>
<td class="ltx_td ltx_border_t" id="S4.T2.34.34.42.8.9" style="padding-top:1pt;padding-bottom:1pt;"></td>
<td class="ltx_td ltx_border_t" id="S4.T2.34.34.42.8.10" style="padding-top:1pt;padding-bottom:1pt;"></td>
<td class="ltx_td ltx_border_t" id="S4.T2.34.34.42.8.11" style="padding-top:1pt;padding-bottom:1pt;"></td>
<td class="ltx_td ltx_border_t" id="S4.T2.34.34.42.8.12" style="padding-top:1pt;padding-bottom:1pt;"></td>
</tr>
<tr class="ltx_tr" id="S4.T2.25.25.25">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S4.T2.24.24.24.1" style="padding-top:1pt;padding-bottom:1pt;">TF-IDF + ViMRC<sub class="ltx_sub" id="S4.T2.24.24.24.1.1"><span class="ltx_text ltx_font_italic" id="S4.T2.24.24.24.1.1.1">large</span></sub>
</td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S4.T2.25.25.25.2" rowspan="2" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S4.T2.25.25.25.2.1">Ernie-M<sub class="ltx_sub" id="S4.T2.25.25.25.2.1.1"><span class="ltx_text ltx_font_italic" id="S4.T2.25.25.25.2.1.1.1">large</span></sub></span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.25.25.25.3" style="padding-top:1pt;padding-bottom:1pt;">1680M</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.25.25.25.4" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S4.T2.25.25.25.4.1" style="color:#0000FF;">79.44</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.25.25.25.5" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S4.T2.25.25.25.5.1" style="color:#0000FF;">82.93</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.25.25.25.6" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S4.T2.25.25.25.6.1" style="color:#0000FF;">94.60</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.25.25.25.7" style="padding-top:1pt;padding-bottom:1pt;">410</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.25.25.25.8" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S4.T2.25.25.25.8.1" style="color:#0000FF;">78.32</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.25.25.25.9" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S4.T2.25.25.25.9.1" style="color:#0000FF;">81.91</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.25.25.25.10" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S4.T2.25.25.25.10.1" style="color:#0000FF;">80.26</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.25.25.25.11" style="padding-top:1pt;padding-bottom:1pt;">995</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.25.25.25.12" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S4.T2.25.25.25.12.1" style="color:#0000FF;">78.88</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.26.26.26">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S4.T2.26.26.26.1" style="padding-top:1pt;padding-bottom:1pt;">TF-IDF + InfoXLM<sub class="ltx_sub" id="S4.T2.26.26.26.1.1"><span class="ltx_text ltx_font_italic" id="S4.T2.26.26.26.1.1.1">large</span></sub>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.26.26.26.2" style="padding-top:1pt;padding-bottom:1pt;">1680M</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.26.26.26.3" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S4.T2.26.26.26.3.1" style="color:#0000FF;">79.77</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.26.26.26.4" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S4.T2.26.26.26.4.1" style="color:#0000FF;">83.07</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.26.26.26.5" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S4.T2.26.26.26.5.1" style="color:#0000FF;">95.03</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.26.26.26.6" style="padding-top:1pt;padding-bottom:1pt;">487</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.26.26.26.7" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S4.T2.26.26.26.7.1" style="color:#0000FF;">78.37</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.26.26.26.8" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S4.T2.26.26.26.8.1" style="color:#0000FF;">81.91</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.26.26.26.9" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S4.T2.26.26.26.9.1" style="color:#0000FF;">80.32</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.26.26.26.10" style="padding-top:1pt;padding-bottom:1pt;">925</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.26.26.26.11" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S4.T2.26.26.26.11.1" style="color:#0000FF;">79.07</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.34.34.43.9">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S4.T2.34.34.43.9.1" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.34.34.43.9.1.1">SER (ours)</span></td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S4.T2.34.34.43.9.2" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.34.34.43.9.2.1">TVC (ours)<span class="ltx_text" id="S4.T2.34.34.43.9.2.1.1"></span></span></td>
<td class="ltx_td ltx_border_t" id="S4.T2.34.34.43.9.3" style="padding-top:1pt;padding-bottom:1pt;"></td>
<td class="ltx_td ltx_border_t" id="S4.T2.34.34.43.9.4" style="padding-top:1pt;padding-bottom:1pt;"></td>
<td class="ltx_td ltx_border_t" id="S4.T2.34.34.43.9.5" style="padding-top:1pt;padding-bottom:1pt;"></td>
<td class="ltx_td ltx_border_t" id="S4.T2.34.34.43.9.6" style="padding-top:1pt;padding-bottom:1pt;"></td>
<td class="ltx_td ltx_border_t" id="S4.T2.34.34.43.9.7" style="padding-top:1pt;padding-bottom:1pt;"></td>
<td class="ltx_td ltx_border_t" id="S4.T2.34.34.43.9.8" style="padding-top:1pt;padding-bottom:1pt;"></td>
<td class="ltx_td ltx_border_t" id="S4.T2.34.34.43.9.9" style="padding-top:1pt;padding-bottom:1pt;"></td>
<td class="ltx_td ltx_border_t" id="S4.T2.34.34.43.9.10" style="padding-top:1pt;padding-bottom:1pt;"></td>
<td class="ltx_td ltx_border_t" id="S4.T2.34.34.43.9.11" style="padding-top:1pt;padding-bottom:1pt;"></td>
<td class="ltx_td ltx_border_t" id="S4.T2.34.34.43.9.12" style="padding-top:1pt;padding-bottom:1pt;"></td>
</tr>
<tr class="ltx_tr" id="S4.T2.28.28.28">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S4.T2.27.27.27.1" rowspan="3" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S4.T2.27.27.27.1.1">TF-IDF + ViMRC<sub class="ltx_sub" id="S4.T2.27.27.27.1.1.1"><span class="ltx_text ltx_font_italic" id="S4.T2.27.27.27.1.1.1.1">large</span></sub></span></td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S4.T2.28.28.28.2" style="padding-top:1pt;padding-bottom:1pt;">InfoXLM<sub class="ltx_sub" id="S4.T2.28.28.28.2.1"><span class="ltx_text ltx_font_italic" id="S4.T2.28.28.28.2.1.1">large</span></sub>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.28.28.28.3" style="padding-top:1pt;padding-bottom:1pt;">1680M</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.28.28.28.4" style="padding-top:1pt;padding-bottom:1pt;">80.25</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.28.28.28.5" style="padding-top:1pt;padding-bottom:1pt;">83.84</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.28.28.28.6" style="padding-top:1pt;padding-bottom:1pt;">94.69</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.28.28.28.7" style="padding-top:1pt;padding-bottom:1pt;">2731</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.28.28.28.8" style="padding-top:1pt;padding-bottom:1pt;">75.13</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.28.28.28.9" style="padding-top:1pt;padding-bottom:1pt;">79.54</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.28.28.28.10" style="padding-top:1pt;padding-bottom:1pt;">76.87</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.28.28.28.11" style="padding-top:1pt;padding-bottom:1pt;">5191</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.28.28.28.12" style="padding-top:1pt;padding-bottom:1pt;">77.69</td>
</tr>
<tr class="ltx_tr" id="S4.T2.29.29.29">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T2.29.29.29.1" style="padding-top:1pt;padding-bottom:1pt;">XLM-R<sub class="ltx_sub" id="S4.T2.29.29.29.1.1"><span class="ltx_text ltx_font_italic" id="S4.T2.29.29.29.1.1.1">large</span></sub>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.29.29.29.2" style="padding-top:1pt;padding-bottom:1pt;">1680M</td>
<td class="ltx_td ltx_align_center" id="S4.T2.29.29.29.3" style="padding-top:1pt;padding-bottom:1pt;">80.34</td>
<td class="ltx_td ltx_align_center" id="S4.T2.29.29.29.4" style="padding-top:1pt;padding-bottom:1pt;">83.64</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.29.29.29.5" style="padding-top:1pt;padding-bottom:1pt;">94.69</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.29.29.29.6" style="padding-top:1pt;padding-bottom:1pt;">2733</td>
<td class="ltx_td ltx_align_center" id="S4.T2.29.29.29.7" style="padding-top:1pt;padding-bottom:1pt;">76.71</td>
<td class="ltx_td ltx_align_center" id="S4.T2.29.29.29.8" style="padding-top:1pt;padding-bottom:1pt;">81.65</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.29.29.29.9" style="padding-top:1pt;padding-bottom:1pt;">78.91</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.29.29.29.10" style="padding-top:1pt;padding-bottom:1pt;">5219</td>
<td class="ltx_td ltx_align_center" id="S4.T2.29.29.29.11" style="padding-top:1pt;padding-bottom:1pt;">78.53</td>
</tr>
<tr class="ltx_tr" id="S4.T2.30.30.30">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T2.30.30.30.1" style="padding-top:1pt;padding-bottom:1pt;">Ernie-M<sub class="ltx_sub" id="S4.T2.30.30.30.1.1"><span class="ltx_text ltx_font_italic" id="S4.T2.30.30.30.1.1.1">large</span></sub>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.30.30.30.2" style="padding-top:1pt;padding-bottom:1pt;">1680M</td>
<td class="ltx_td ltx_align_center" id="S4.T2.30.30.30.3" style="padding-top:1pt;padding-bottom:1pt;">79.53</td>
<td class="ltx_td ltx_align_center" id="S4.T2.30.30.30.4" style="padding-top:1pt;padding-bottom:1pt;">82.97</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.30.30.30.5" style="padding-top:1pt;padding-bottom:1pt;">94.69</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.30.30.30.6" style="padding-top:1pt;padding-bottom:1pt;">2733</td>
<td class="ltx_td ltx_align_center" id="S4.T2.30.30.30.7" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.30.30.30.7.1">78.97</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.30.30.30.8" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.30.30.30.8.1">82.54</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.30.30.30.9" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.30.30.30.9.1">80.91</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.30.30.30.10" style="padding-top:1pt;padding-bottom:1pt;">5225</td>
<td class="ltx_td ltx_align_center" id="S4.T2.30.30.30.11" style="padding-top:1pt;padding-bottom:1pt;">79.25</td>
</tr>
<tr class="ltx_tr" id="S4.T2.32.32.32">
<td class="ltx_td ltx_align_left ltx_border_b ltx_border_r ltx_border_t" id="S4.T2.31.31.31.1" rowspan="3" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S4.T2.31.31.31.1.1">TF-IDF + InfoXLM<sub class="ltx_sub" id="S4.T2.31.31.31.1.1.1"><span class="ltx_text ltx_font_italic" id="S4.T2.31.31.31.1.1.1.1">large</span></sub></span></td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S4.T2.32.32.32.2" style="padding-top:1pt;padding-bottom:1pt;">InfoXLM<sub class="ltx_sub" id="S4.T2.32.32.32.2.1"><span class="ltx_text ltx_font_italic" id="S4.T2.32.32.32.2.1.1">large</span></sub>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.32.32.32.3" style="padding-top:1pt;padding-bottom:1pt;">1680M</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.32.32.32.4" style="padding-top:1pt;padding-bottom:1pt;">80.68</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.32.32.32.5" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.32.32.32.5.1">83.98</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.32.32.32.6" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.32.32.32.6.1">95.31</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.32.32.32.7" style="padding-top:1pt;padding-bottom:1pt;">3860</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.32.32.32.8" style="padding-top:1pt;padding-bottom:1pt;">75.13</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.32.32.32.9" style="padding-top:1pt;padding-bottom:1pt;">79.60</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.32.32.32.10" style="padding-top:1pt;padding-bottom:1pt;">76.87</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.32.32.32.11" style="padding-top:1pt;padding-bottom:1pt;">5175</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.32.32.32.12" style="padding-top:1pt;padding-bottom:1pt;">77.91</td>
</tr>
<tr class="ltx_tr" id="S4.T2.33.33.33">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T2.33.33.33.1" style="padding-top:1pt;padding-bottom:1pt;">XLM-R<sub class="ltx_sub" id="S4.T2.33.33.33.1.1"><span class="ltx_text ltx_font_italic" id="S4.T2.33.33.33.1.1.1">large</span></sub>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.33.33.33.2" style="padding-top:1pt;padding-bottom:1pt;">1680M</td>
<td class="ltx_td ltx_align_center" id="S4.T2.33.33.33.3" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.33.33.33.3.1">80.82</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.33.33.33.4" style="padding-top:1pt;padding-bottom:1pt;">83.88</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.33.33.33.5" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.33.33.33.5.1">95.31</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.33.33.33.6" style="padding-top:1pt;padding-bottom:1pt;">3843</td>
<td class="ltx_td ltx_align_center" id="S4.T2.33.33.33.7" style="padding-top:1pt;padding-bottom:1pt;">76.74</td>
<td class="ltx_td ltx_align_center" id="S4.T2.33.33.33.8" style="padding-top:1pt;padding-bottom:1pt;">81.71</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.33.33.33.9" style="padding-top:1pt;padding-bottom:1pt;">78.95</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.33.33.33.10" style="padding-top:1pt;padding-bottom:1pt;">5200</td>
<td class="ltx_td ltx_align_center" id="S4.T2.33.33.33.11" style="padding-top:1pt;padding-bottom:1pt;">78.78</td>
</tr>
<tr class="ltx_tr" id="S4.T2.34.34.34">
<td class="ltx_td ltx_align_left ltx_border_b ltx_border_r" id="S4.T2.34.34.34.1" style="padding-top:1pt;padding-bottom:1pt;">Ernie-M<sub class="ltx_sub" id="S4.T2.34.34.34.1.1"><span class="ltx_text ltx_font_italic" id="S4.T2.34.34.34.1.1.1">large</span></sub>
</td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r" id="S4.T2.34.34.34.2" style="padding-top:1pt;padding-bottom:1pt;">1680M</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T2.34.34.34.3" style="padding-top:1pt;padding-bottom:1pt;">80.06</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T2.34.34.34.4" style="padding-top:1pt;padding-bottom:1pt;">83.17</td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r" id="S4.T2.34.34.34.5" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.34.34.34.5.1">95.31</span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r" id="S4.T2.34.34.34.6" style="padding-top:1pt;padding-bottom:1pt;">3891</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T2.34.34.34.7" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.34.34.34.7.1">78.97</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T2.34.34.34.8" style="padding-top:1pt;padding-bottom:1pt;">82.49</td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r" id="S4.T2.34.34.34.9" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.34.34.34.9.1">80.91</span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r" id="S4.T2.34.34.34.10" style="padding-top:1pt;padding-bottom:1pt;">5297</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T2.34.34.34.11" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.34.34.34.11.1">79.52</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 Table 2 presents a comprehensive comparison of various fact-checking models' performance on two Vietnamese datasets: ViWikiFC and ISE-DSC01.  The comparison uses four key metrics: Strict Accuracy (considers both correct verdict and evidence), Veracity Classification Accuracy (correct verdict prediction), Evidence Retrieval Accuracy (correct evidence selection), and Inference Time.  The number of parameters in each model is also provided.  The table highlights that the proposed 'SER Faster' method generally outperforms other approaches in terms of accuracy, except when compared to the standard 'SER' method which it is a faster version of.
> <details>
> <summary>read the caption</summary>
> Table 2: Performance comparison on the ViWikiFC test set and the ISE-DSC01 private-test dataset. The results highlight differences among models based on several criteria: Strict Accuracy (Strict Acc), Veracity Classification Accuracy (VC Acc), and Evidence Retrieval Accuracy (ER Acc). Time represents the total inference time required to generate the complete results. Parameter indicates the total number of parameters used in each task. The results highlighted in blue indicate that our SER Faster method achieves the highest performance among all methods, except for the standard SER method.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S4.T3.1.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T3.1.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_t" id="S4.T3.1.1.1.1.1"><span class="ltx_text ltx_font_bold" id="S4.T3.1.1.1.1.1.1">Methods</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T3.1.1.1.1.2"><span class="ltx_text ltx_font_bold" id="S4.T3.1.1.1.1.2.1">Strict Acc</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T3.1.1.1.1.3"><span class="ltx_text ltx_font_bold" id="S4.T3.1.1.1.1.3.1">VC Acc</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T3.1.1.1.1.4"><span class="ltx_text ltx_font_bold" id="S4.T3.1.1.1.1.4.1">ER Acc</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T3.1.1.2.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T3.1.1.2.1.1"><span class="ltx_text ltx_font_bold" id="S4.T3.1.1.2.1.1.1">SemViQA</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.1.2.1.2"><span class="ltx_text ltx_font_bold" id="S4.T3.1.1.2.1.2.1">78.97</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.1.2.1.3">82.54</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.1.2.1.4"><span class="ltx_text ltx_font_bold" id="S4.T3.1.1.2.1.4.1">80.91</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.1.3.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T3.1.1.3.2.1">DS@UIT Dynasty</th>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.3.2.2">78.05</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.3.2.3"><span class="ltx_text ltx_font_bold" id="S4.T3.1.1.3.2.3.1">84.76</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.3.2.4">80.13</td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.1.4.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T3.1.1.4.3.1">URA_FNU</th>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.4.3.2">77.87</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.4.3.3">83.71</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.4.3.4">79.96</td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.1.5.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T3.1.1.5.4.1">Plain Sailing</th>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.5.4.2">77.09</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.5.4.3">82.33</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.5.4.4">78.31</td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.1.6.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_b" id="S4.T3.1.1.6.5.1">ViNSV</th>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T3.1.1.6.5.2">76.33</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T3.1.1.6.5.3">81.67</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T3.1.1.6.5.4">78.11</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a comparison of the SemViQA model's performance against the top 5 teams in a fact-checking competition.  It shows the strict accuracy, veracity classification accuracy, and evidence retrieval accuracy achieved by each of the top 6 systems (including SemViQA). This comparison highlights SemViQA's competitive performance and the effectiveness of its approach in Vietnamese fact-checking.
> <details>
> <summary>read the caption</summary>
> Table 3: Comparison of results with the top 5 teams in the competition
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="A2.T4.4.4">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A2.T4.4.4.5.1">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A2.T4.4.4.5.1.1"><span class="ltx_text ltx_font_bold" id="A2.T4.4.4.5.1.1.1">Hyperparameter</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T4.4.4.5.1.2"><span class="ltx_text ltx_font_bold" id="A2.T4.4.4.5.1.2.1">BC</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T4.4.4.5.1.3"><span class="ltx_text ltx_font_bold" id="A2.T4.4.4.5.1.3.1">TC</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T4.4.4.5.1.4"><span class="ltx_text ltx_font_bold" id="A2.T4.4.4.5.1.4.1">QATC</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T4.4.4.5.1.5"><span class="ltx_text ltx_font_bold" id="A2.T4.4.4.5.1.5.1">LLM</span></td>
</tr>
<tr class="ltx_tr" id="A2.T4.4.4.6.2">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A2.T4.4.4.6.2.1">Epochs</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T4.4.4.6.2.2">20</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T4.4.4.6.2.3">20</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T4.4.4.6.2.4">20</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T4.4.4.6.2.5">1</td>
</tr>
<tr class="ltx_tr" id="A2.T4.4.4.7.3">
<td class="ltx_td ltx_align_left ltx_border_r" id="A2.T4.4.4.7.3.1">RT Loss</td>
<td class="ltx_td ltx_align_center" id="A2.T4.4.4.7.3.2">-</td>
<td class="ltx_td ltx_align_center" id="A2.T4.4.4.7.3.3">-</td>
<td class="ltx_td ltx_align_center" id="A2.T4.4.4.7.3.4">✓</td>
<td class="ltx_td ltx_align_center" id="A2.T4.4.4.7.3.5">-</td>
</tr>
<tr class="ltx_tr" id="A2.T4.4.4.8.4">
<td class="ltx_td ltx_align_left ltx_border_r" id="A2.T4.4.4.8.4.1">Cross-Entropy Loss</td>
<td class="ltx_td ltx_align_center" id="A2.T4.4.4.8.4.2">-</td>
<td class="ltx_td ltx_align_center" id="A2.T4.4.4.8.4.3">✓</td>
<td class="ltx_td ltx_align_center" id="A2.T4.4.4.8.4.4">✓</td>
<td class="ltx_td ltx_align_center" id="A2.T4.4.4.8.4.5">-</td>
</tr>
<tr class="ltx_tr" id="A2.T4.4.4.9.5">
<td class="ltx_td ltx_align_left ltx_border_r" id="A2.T4.4.4.9.5.1">Focal Loss</td>
<td class="ltx_td ltx_align_center" id="A2.T4.4.4.9.5.2">✓</td>
<td class="ltx_td ltx_align_center" id="A2.T4.4.4.9.5.3">-</td>
<td class="ltx_td ltx_align_center" id="A2.T4.4.4.9.5.4">-</td>
<td class="ltx_td ltx_align_center" id="A2.T4.4.4.9.5.5">-</td>
</tr>
<tr class="ltx_tr" id="A2.T4.4.4.4">
<td class="ltx_td ltx_align_left ltx_border_r" id="A2.T4.4.4.4.5">Learning Rate</td>
<td class="ltx_td ltx_align_center" id="A2.T4.1.1.1.1"><math alttext="1e^{-5}" class="ltx_Math" display="inline" id="A2.T4.1.1.1.1.m1.1"><semantics id="A2.T4.1.1.1.1.m1.1a"><mrow id="A2.T4.1.1.1.1.m1.1.1" xref="A2.T4.1.1.1.1.m1.1.1.cmml"><mn id="A2.T4.1.1.1.1.m1.1.1.2" xref="A2.T4.1.1.1.1.m1.1.1.2.cmml">1</mn><mo id="A2.T4.1.1.1.1.m1.1.1.1" xref="A2.T4.1.1.1.1.m1.1.1.1.cmml">⁢</mo><msup id="A2.T4.1.1.1.1.m1.1.1.3" xref="A2.T4.1.1.1.1.m1.1.1.3.cmml"><mi id="A2.T4.1.1.1.1.m1.1.1.3.2" xref="A2.T4.1.1.1.1.m1.1.1.3.2.cmml">e</mi><mrow id="A2.T4.1.1.1.1.m1.1.1.3.3" xref="A2.T4.1.1.1.1.m1.1.1.3.3.cmml"><mo id="A2.T4.1.1.1.1.m1.1.1.3.3a" xref="A2.T4.1.1.1.1.m1.1.1.3.3.cmml">−</mo><mn id="A2.T4.1.1.1.1.m1.1.1.3.3.2" xref="A2.T4.1.1.1.1.m1.1.1.3.3.2.cmml">5</mn></mrow></msup></mrow><annotation-xml encoding="MathML-Content" id="A2.T4.1.1.1.1.m1.1b"><apply id="A2.T4.1.1.1.1.m1.1.1.cmml" xref="A2.T4.1.1.1.1.m1.1.1"><times id="A2.T4.1.1.1.1.m1.1.1.1.cmml" xref="A2.T4.1.1.1.1.m1.1.1.1"></times><cn id="A2.T4.1.1.1.1.m1.1.1.2.cmml" type="integer" xref="A2.T4.1.1.1.1.m1.1.1.2">1</cn><apply id="A2.T4.1.1.1.1.m1.1.1.3.cmml" xref="A2.T4.1.1.1.1.m1.1.1.3"><csymbol cd="ambiguous" id="A2.T4.1.1.1.1.m1.1.1.3.1.cmml" xref="A2.T4.1.1.1.1.m1.1.1.3">superscript</csymbol><ci id="A2.T4.1.1.1.1.m1.1.1.3.2.cmml" xref="A2.T4.1.1.1.1.m1.1.1.3.2">𝑒</ci><apply id="A2.T4.1.1.1.1.m1.1.1.3.3.cmml" xref="A2.T4.1.1.1.1.m1.1.1.3.3"><minus id="A2.T4.1.1.1.1.m1.1.1.3.3.1.cmml" xref="A2.T4.1.1.1.1.m1.1.1.3.3"></minus><cn id="A2.T4.1.1.1.1.m1.1.1.3.3.2.cmml" type="integer" xref="A2.T4.1.1.1.1.m1.1.1.3.3.2">5</cn></apply></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="A2.T4.1.1.1.1.m1.1c">1e^{-5}</annotation><annotation encoding="application/x-llamapun" id="A2.T4.1.1.1.1.m1.1d">1 italic_e start_POSTSUPERSCRIPT - 5 end_POSTSUPERSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="A2.T4.2.2.2.2"><math alttext="1e^{-5}" class="ltx_Math" display="inline" id="A2.T4.2.2.2.2.m1.1"><semantics id="A2.T4.2.2.2.2.m1.1a"><mrow id="A2.T4.2.2.2.2.m1.1.1" xref="A2.T4.2.2.2.2.m1.1.1.cmml"><mn id="A2.T4.2.2.2.2.m1.1.1.2" xref="A2.T4.2.2.2.2.m1.1.1.2.cmml">1</mn><mo id="A2.T4.2.2.2.2.m1.1.1.1" xref="A2.T4.2.2.2.2.m1.1.1.1.cmml">⁢</mo><msup id="A2.T4.2.2.2.2.m1.1.1.3" xref="A2.T4.2.2.2.2.m1.1.1.3.cmml"><mi id="A2.T4.2.2.2.2.m1.1.1.3.2" xref="A2.T4.2.2.2.2.m1.1.1.3.2.cmml">e</mi><mrow id="A2.T4.2.2.2.2.m1.1.1.3.3" xref="A2.T4.2.2.2.2.m1.1.1.3.3.cmml"><mo id="A2.T4.2.2.2.2.m1.1.1.3.3a" xref="A2.T4.2.2.2.2.m1.1.1.3.3.cmml">−</mo><mn id="A2.T4.2.2.2.2.m1.1.1.3.3.2" xref="A2.T4.2.2.2.2.m1.1.1.3.3.2.cmml">5</mn></mrow></msup></mrow><annotation-xml encoding="MathML-Content" id="A2.T4.2.2.2.2.m1.1b"><apply id="A2.T4.2.2.2.2.m1.1.1.cmml" xref="A2.T4.2.2.2.2.m1.1.1"><times id="A2.T4.2.2.2.2.m1.1.1.1.cmml" xref="A2.T4.2.2.2.2.m1.1.1.1"></times><cn id="A2.T4.2.2.2.2.m1.1.1.2.cmml" type="integer" xref="A2.T4.2.2.2.2.m1.1.1.2">1</cn><apply id="A2.T4.2.2.2.2.m1.1.1.3.cmml" xref="A2.T4.2.2.2.2.m1.1.1.3"><csymbol cd="ambiguous" id="A2.T4.2.2.2.2.m1.1.1.3.1.cmml" xref="A2.T4.2.2.2.2.m1.1.1.3">superscript</csymbol><ci id="A2.T4.2.2.2.2.m1.1.1.3.2.cmml" xref="A2.T4.2.2.2.2.m1.1.1.3.2">𝑒</ci><apply id="A2.T4.2.2.2.2.m1.1.1.3.3.cmml" xref="A2.T4.2.2.2.2.m1.1.1.3.3"><minus id="A2.T4.2.2.2.2.m1.1.1.3.3.1.cmml" xref="A2.T4.2.2.2.2.m1.1.1.3.3"></minus><cn id="A2.T4.2.2.2.2.m1.1.1.3.3.2.cmml" type="integer" xref="A2.T4.2.2.2.2.m1.1.1.3.3.2">5</cn></apply></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="A2.T4.2.2.2.2.m1.1c">1e^{-5}</annotation><annotation encoding="application/x-llamapun" id="A2.T4.2.2.2.2.m1.1d">1 italic_e start_POSTSUPERSCRIPT - 5 end_POSTSUPERSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="A2.T4.3.3.3.3"><math alttext="2e^{-6}" class="ltx_Math" display="inline" id="A2.T4.3.3.3.3.m1.1"><semantics id="A2.T4.3.3.3.3.m1.1a"><mrow id="A2.T4.3.3.3.3.m1.1.1" xref="A2.T4.3.3.3.3.m1.1.1.cmml"><mn id="A2.T4.3.3.3.3.m1.1.1.2" xref="A2.T4.3.3.3.3.m1.1.1.2.cmml">2</mn><mo id="A2.T4.3.3.3.3.m1.1.1.1" xref="A2.T4.3.3.3.3.m1.1.1.1.cmml">⁢</mo><msup id="A2.T4.3.3.3.3.m1.1.1.3" xref="A2.T4.3.3.3.3.m1.1.1.3.cmml"><mi id="A2.T4.3.3.3.3.m1.1.1.3.2" xref="A2.T4.3.3.3.3.m1.1.1.3.2.cmml">e</mi><mrow id="A2.T4.3.3.3.3.m1.1.1.3.3" xref="A2.T4.3.3.3.3.m1.1.1.3.3.cmml"><mo id="A2.T4.3.3.3.3.m1.1.1.3.3a" xref="A2.T4.3.3.3.3.m1.1.1.3.3.cmml">−</mo><mn id="A2.T4.3.3.3.3.m1.1.1.3.3.2" xref="A2.T4.3.3.3.3.m1.1.1.3.3.2.cmml">6</mn></mrow></msup></mrow><annotation-xml encoding="MathML-Content" id="A2.T4.3.3.3.3.m1.1b"><apply id="A2.T4.3.3.3.3.m1.1.1.cmml" xref="A2.T4.3.3.3.3.m1.1.1"><times id="A2.T4.3.3.3.3.m1.1.1.1.cmml" xref="A2.T4.3.3.3.3.m1.1.1.1"></times><cn id="A2.T4.3.3.3.3.m1.1.1.2.cmml" type="integer" xref="A2.T4.3.3.3.3.m1.1.1.2">2</cn><apply id="A2.T4.3.3.3.3.m1.1.1.3.cmml" xref="A2.T4.3.3.3.3.m1.1.1.3"><csymbol cd="ambiguous" id="A2.T4.3.3.3.3.m1.1.1.3.1.cmml" xref="A2.T4.3.3.3.3.m1.1.1.3">superscript</csymbol><ci id="A2.T4.3.3.3.3.m1.1.1.3.2.cmml" xref="A2.T4.3.3.3.3.m1.1.1.3.2">𝑒</ci><apply id="A2.T4.3.3.3.3.m1.1.1.3.3.cmml" xref="A2.T4.3.3.3.3.m1.1.1.3.3"><minus id="A2.T4.3.3.3.3.m1.1.1.3.3.1.cmml" xref="A2.T4.3.3.3.3.m1.1.1.3.3"></minus><cn id="A2.T4.3.3.3.3.m1.1.1.3.3.2.cmml" type="integer" xref="A2.T4.3.3.3.3.m1.1.1.3.3.2">6</cn></apply></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="A2.T4.3.3.3.3.m1.1c">2e^{-6}</annotation><annotation encoding="application/x-llamapun" id="A2.T4.3.3.3.3.m1.1d">2 italic_e start_POSTSUPERSCRIPT - 6 end_POSTSUPERSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="A2.T4.4.4.4.4"><math alttext="5e^{-5}" class="ltx_Math" display="inline" id="A2.T4.4.4.4.4.m1.1"><semantics id="A2.T4.4.4.4.4.m1.1a"><mrow id="A2.T4.4.4.4.4.m1.1.1" xref="A2.T4.4.4.4.4.m1.1.1.cmml"><mn id="A2.T4.4.4.4.4.m1.1.1.2" xref="A2.T4.4.4.4.4.m1.1.1.2.cmml">5</mn><mo id="A2.T4.4.4.4.4.m1.1.1.1" xref="A2.T4.4.4.4.4.m1.1.1.1.cmml">⁢</mo><msup id="A2.T4.4.4.4.4.m1.1.1.3" xref="A2.T4.4.4.4.4.m1.1.1.3.cmml"><mi id="A2.T4.4.4.4.4.m1.1.1.3.2" xref="A2.T4.4.4.4.4.m1.1.1.3.2.cmml">e</mi><mrow id="A2.T4.4.4.4.4.m1.1.1.3.3" xref="A2.T4.4.4.4.4.m1.1.1.3.3.cmml"><mo id="A2.T4.4.4.4.4.m1.1.1.3.3a" xref="A2.T4.4.4.4.4.m1.1.1.3.3.cmml">−</mo><mn id="A2.T4.4.4.4.4.m1.1.1.3.3.2" xref="A2.T4.4.4.4.4.m1.1.1.3.3.2.cmml">5</mn></mrow></msup></mrow><annotation-xml encoding="MathML-Content" id="A2.T4.4.4.4.4.m1.1b"><apply id="A2.T4.4.4.4.4.m1.1.1.cmml" xref="A2.T4.4.4.4.4.m1.1.1"><times id="A2.T4.4.4.4.4.m1.1.1.1.cmml" xref="A2.T4.4.4.4.4.m1.1.1.1"></times><cn id="A2.T4.4.4.4.4.m1.1.1.2.cmml" type="integer" xref="A2.T4.4.4.4.4.m1.1.1.2">5</cn><apply id="A2.T4.4.4.4.4.m1.1.1.3.cmml" xref="A2.T4.4.4.4.4.m1.1.1.3"><csymbol cd="ambiguous" id="A2.T4.4.4.4.4.m1.1.1.3.1.cmml" xref="A2.T4.4.4.4.4.m1.1.1.3">superscript</csymbol><ci id="A2.T4.4.4.4.4.m1.1.1.3.2.cmml" xref="A2.T4.4.4.4.4.m1.1.1.3.2">𝑒</ci><apply id="A2.T4.4.4.4.4.m1.1.1.3.3.cmml" xref="A2.T4.4.4.4.4.m1.1.1.3.3"><minus id="A2.T4.4.4.4.4.m1.1.1.3.3.1.cmml" xref="A2.T4.4.4.4.4.m1.1.1.3.3"></minus><cn id="A2.T4.4.4.4.4.m1.1.1.3.3.2.cmml" type="integer" xref="A2.T4.4.4.4.4.m1.1.1.3.3.2">5</cn></apply></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="A2.T4.4.4.4.4.m1.1c">5e^{-5}</annotation><annotation encoding="application/x-llamapun" id="A2.T4.4.4.4.4.m1.1d">5 italic_e start_POSTSUPERSCRIPT - 5 end_POSTSUPERSCRIPT</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="A2.T4.4.4.10.6">
<td class="ltx_td ltx_align_left ltx_border_r" id="A2.T4.4.4.10.6.1">Batch Size</td>
<td class="ltx_td ltx_align_center" id="A2.T4.4.4.10.6.2">104</td>
<td class="ltx_td ltx_align_center" id="A2.T4.4.4.10.6.3">104</td>
<td class="ltx_td ltx_align_center" id="A2.T4.4.4.10.6.4">36</td>
<td class="ltx_td ltx_align_center" id="A2.T4.4.4.10.6.5">2</td>
</tr>
<tr class="ltx_tr" id="A2.T4.4.4.11.7">
<td class="ltx_td ltx_align_left ltx_border_r" id="A2.T4.4.4.11.7.1">Gradient Accumulation</td>
<td class="ltx_td ltx_align_center" id="A2.T4.4.4.11.7.2">1</td>
<td class="ltx_td ltx_align_center" id="A2.T4.4.4.11.7.3">1</td>
<td class="ltx_td ltx_align_center" id="A2.T4.4.4.11.7.4">2</td>
<td class="ltx_td ltx_align_center" id="A2.T4.4.4.11.7.5">1</td>
</tr>
<tr class="ltx_tr" id="A2.T4.4.4.12.8">
<td class="ltx_td ltx_align_left ltx_border_r" id="A2.T4.4.4.12.8.1">Optimizer (AdamW)</td>
<td class="ltx_td ltx_align_center" id="A2.T4.4.4.12.8.2">✓</td>
<td class="ltx_td ltx_align_center" id="A2.T4.4.4.12.8.3">✓</td>
<td class="ltx_td ltx_align_center" id="A2.T4.4.4.12.8.4">✓</td>
<td class="ltx_td ltx_align_center" id="A2.T4.4.4.12.8.5">✓</td>
</tr>
<tr class="ltx_tr" id="A2.T4.4.4.13.9">
<td class="ltx_td ltx_align_left ltx_border_r" id="A2.T4.4.4.13.9.1">Max Token Length</td>
<td class="ltx_td ltx_align_center" id="A2.T4.4.4.13.9.2">256</td>
<td class="ltx_td ltx_align_center" id="A2.T4.4.4.13.9.3">256</td>
<td class="ltx_td ltx_align_center" id="A2.T4.4.4.13.9.4">512</td>
<td class="ltx_td ltx_align_center" id="A2.T4.4.4.13.9.5">4096</td>
</tr>
<tr class="ltx_tr" id="A2.T4.4.4.14.10">
<td class="ltx_td ltx_align_left ltx_border_r" id="A2.T4.4.4.14.10.1">GPUs</td>
<td class="ltx_td ltx_align_center" id="A2.T4.4.4.14.10.2">A100</td>
<td class="ltx_td ltx_align_center" id="A2.T4.4.4.14.10.3">A100</td>
<td class="ltx_td ltx_align_center" id="A2.T4.4.4.14.10.4">A100</td>
<td class="ltx_td ltx_align_center" id="A2.T4.4.4.14.10.5">4 × H100</td>
</tr>
<tr class="ltx_tr" id="A2.T4.4.4.15.11">
<td class="ltx_td ltx_align_left ltx_border_r" id="A2.T4.4.4.15.11.1">Zero</td>
<td class="ltx_td ltx_align_center" id="A2.T4.4.4.15.11.2">-</td>
<td class="ltx_td ltx_align_center" id="A2.T4.4.4.15.11.3">-</td>
<td class="ltx_td ltx_align_center" id="A2.T4.4.4.15.11.4">-</td>
<td class="ltx_td ltx_align_center" id="A2.T4.4.4.15.11.5">Zero3</td>
</tr>
<tr class="ltx_tr" id="A2.T4.4.4.16.12">
<td class="ltx_td ltx_align_left ltx_border_r" id="A2.T4.4.4.16.12.1">LR Schedule</td>
<td class="ltx_td ltx_align_center" id="A2.T4.4.4.16.12.2">Linear</td>
<td class="ltx_td ltx_align_center" id="A2.T4.4.4.16.12.3">Linear</td>
<td class="ltx_td ltx_align_center" id="A2.T4.4.4.16.12.4">Cyclic</td>
<td class="ltx_td ltx_align_center" id="A2.T4.4.4.16.12.5">Cosine</td>
</tr>
<tr class="ltx_tr" id="A2.T4.4.4.17.13">
<td class="ltx_td ltx_align_left ltx_border_b ltx_border_r" id="A2.T4.4.4.17.13.1">Mixed Precision</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A2.T4.4.4.17.13.2">-</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A2.T4.4.4.17.13.3">-</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A2.T4.4.4.17.13.4">-</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A2.T4.4.4.17.13.5">bf16</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table details the hyperparameters and training configurations used for the SemViQA models and the large language model (LLM) fine-tuning process.  It includes settings for binary and three-class classification, the question-answering token classifier (QATC), and the LLM itself, covering various aspects such as epochs, loss functions, learning rates, batch size, optimizers, and hardware used.
> <details>
> <summary>read the caption</summary>
> Table 4: Consolidated hyperparameter and training configuration for SemViQA models and LLM fine-tuning.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="A3.T6.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A3.T6.1.1.1">
<th class="ltx_td ltx_align_justify ltx_th ltx_th_column ltx_border_l ltx_border_r ltx_border_t" id="A3.T6.1.1.1.1">
<span class="ltx_inline-block ltx_align_top" id="A3.T6.1.1.1.1.1">
<span class="ltx_p" id="A3.T6.1.1.1.1.1.1"><span class="ltx_text ltx_font_bold" id="A3.T6.1.1.1.1.1.1.1">Claim</span></span>
</span>
</th>
<th class="ltx_td ltx_align_justify ltx_th ltx_th_column ltx_border_r ltx_border_t" id="A3.T6.1.1.1.2">
<span class="ltx_inline-block ltx_align_top" id="A3.T6.1.1.1.2.1">
<span class="ltx_p" id="A3.T6.1.1.1.2.1.1"><span class="ltx_text ltx_font_bold" id="A3.T6.1.1.1.2.1.1.1">Evidence</span></span>
</span>
</th>
<th class="ltx_td ltx_align_justify ltx_th ltx_th_column ltx_border_r ltx_border_t" id="A3.T6.1.1.1.3">
<span class="ltx_inline-block ltx_align_top" id="A3.T6.1.1.1.3.1">
<span class="ltx_p" id="A3.T6.1.1.1.3.1.1"><span class="ltx_text ltx_font_bold" id="A3.T6.1.1.1.3.1.1.1">TF-IDF</span></span>
</span>
</th>
<th class="ltx_td ltx_align_justify ltx_th ltx_th_column ltx_border_r ltx_border_t" id="A3.T6.1.1.1.4">
<span class="ltx_inline-block ltx_align_top" id="A3.T6.1.1.1.4.1">
<span class="ltx_p" id="A3.T6.1.1.1.4.1.1"><span class="ltx_text ltx_font_bold" id="A3.T6.1.1.1.4.1.1.1">QATC</span></span>
</span>
</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A3.T6.1.2.1">
<td class="ltx_td ltx_align_justify ltx_border_l ltx_border_r ltx_border_t" id="A3.T6.1.2.1.1">
<span class="ltx_inline-block ltx_align_top" id="A3.T6.1.2.1.1.1">
<span class="ltx_p" id="A3.T6.1.2.1.1.1.1">Du lịch Triều Tiên là điều mà chỉ có một số người được đi đến.

<br class="ltx_break"/><span class="ltx_text" id="A3.T6.1.2.1.1.1.1.1" style="color:#8080FF;">(Traveling to North Korea is something only a few people can do.)</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_r ltx_border_t" id="A3.T6.1.2.1.2">
<span class="ltx_inline-block ltx_align_top" id="A3.T6.1.2.1.2.1">
<span class="ltx_p" id="A3.T6.1.2.1.2.1.1">Theo nguyên tắc, bất kỳ ai cũng được phép du lịch tới Triều Tiên, và những ai có thể hoàn thành quá trình làm thủ tục thì đều không bị Triều Tiên từ chối cho nhập cảnh.

<br class="ltx_break"/><span class="ltx_text" id="A3.T6.1.2.1.2.1.1.1" style="color:#8080FF;">(In principle, anyone is allowed to travel to North Korea, and those who complete the process are not denied entry.)</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_r ltx_border_t" id="A3.T6.1.2.1.3">
<span class="ltx_inline-block ltx_align_top" id="A3.T6.1.2.1.3.1">
<span class="ltx_p" id="A3.T6.1.2.1.3.1.1">Khách du lịch không được đi thăm thú bên ngoài vùng đã được cho phép trước mà không được hướng dẫn viên người Triều Tiên cho phép nhằm tránh các điệp viên nằm vùng.

<br class="ltx_break"/><span class="ltx_text" id="A3.T6.1.2.1.3.1.1.1" style="color:#8080FF;">(Tourists are not allowed to visit areas outside of the designated zones without a North Korean guide to prevent undercover spies.)</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_r ltx_border_t" id="A3.T6.1.2.1.4">
<span class="ltx_inline-block ltx_align_top" id="A3.T6.1.2.1.4.1">
<span class="ltx_p" id="A3.T6.1.2.1.4.1.1">Theo nguyên tắc, bất kỳ ai cũng được phép du lịch tới Triều Tiên, và những ai có thể hoàn thành quá trình làm thủ tục thì đều không bị Triều Tiên từ chối cho nhập cảnh.

<br class="ltx_break"/><span class="ltx_text" id="A3.T6.1.2.1.4.1.1.1" style="color:#8080FF;">(In principle, anyone is allowed to travel to North Korea, and those who complete the process are not denied entry.)</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T6.1.3.2">
<td class="ltx_td ltx_align_justify ltx_border_b ltx_border_l ltx_border_r ltx_border_t" id="A3.T6.1.3.2.1">
<span class="ltx_inline-block ltx_align_top" id="A3.T6.1.3.2.1.1">
<span class="ltx_p" id="A3.T6.1.3.2.1.1.1">Nó có độ nóng chảy ở mức gần 30 độ C.

<br class="ltx_break"/><span class="ltx_text" id="A3.T6.1.3.2.1.1.1.1" style="color:#8080FF;">(It has a melting point of about 30°C.)</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_b ltx_border_r ltx_border_t" id="A3.T6.1.3.2.2">
<span class="ltx_inline-block ltx_align_top" id="A3.T6.1.3.2.2.1">
<span class="ltx_p" id="A3.T6.1.3.2.2.1.1">Nó là một kim loại kiềm mềm, màu bạc, và với điểm nóng chảy là 28 °C (83 °F) khiến cho nó trở thành một trong các kim loại ở dạng lỏng tại hay gần nhiệt độ phòng.

<br class="ltx_break"/><span class="ltx_text" id="A3.T6.1.3.2.2.1.1.1" style="color:#8080FF;">(It is a soft, silvery alkali metal with a melting point of 28°C (83°F), making it one of the metals that is liquid at or near room temperature.)</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_b ltx_border_r ltx_border_t" id="A3.T6.1.3.2.3">
<span class="ltx_inline-block ltx_align_top" id="A3.T6.1.3.2.3.1">
<span class="ltx_p" id="A3.T6.1.3.2.3.1.1">Nó là nguyên tố có độ âm điện thấp thứ hai sau franci, và chỉ có một đồng vị bền là caesi-133.

<br class="ltx_break"/><span class="ltx_text" id="A3.T6.1.3.2.3.1.1.1" style="color:#8080FF;">(It is the second least electronegative element after francium, and has only one stable isotope, cesium-133.)</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_b ltx_border_r ltx_border_t" id="A3.T6.1.3.2.4">
<span class="ltx_inline-block ltx_align_top" id="A3.T6.1.3.2.4.1">
<span class="ltx_p" id="A3.T6.1.3.2.4.1.1">Nó là một kim loại kiềm mềm, màu bạc, và với điểm nóng chảy là 28 °C (83 °F) khiến cho nó trở thành một trong các kim loại ở dạng lỏng tại hay gần nhiệt độ phòng.

<br class="ltx_break"/><span class="ltx_text" id="A3.T6.1.3.2.4.1.1.1" style="color:#8080FF;">(It is a soft, silvery alkali metal with a melting point of 28°C (83°F), making it one of the metals that is liquid at or near room temperature.)</span></span>
</span>
</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents an example of a fact-checking task prompt used for training large language models (LLMs).  It showcases a claim, its supporting context, and the expected output, which includes a classification label (SUPPORTED, REFUTED, or NEI) and the relevant evidence sentence from the context.  Note that the original claim and context were in Vietnamese, but have been translated into English for clarity in this paper.  Sentences that represent the evidence are highlighted in blue.
> <details>
> <summary>read the caption</summary>
> Table 5: Example of a fact-checking task prompt used for LLM training. Note: Some parts of the Context and Claim were originally in Vietnamese. In this paper, we have translated them into English for better readability. Sentences highlighted in blue indicate the evidence.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2503.00955/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.00955/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.00955/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.00955/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.00955/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.00955/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.00955/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.00955/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.00955/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.00955/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.00955/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.00955/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.00955/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.00955/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.00955/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.00955/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.00955/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.00955/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}