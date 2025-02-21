---
title: "Unstructured Evidence Attribution for Long Context Query Focused Summarization"
summary: "LLMs struggle with positional bias and lack transparency when summarizing long contexts. This paper introduces SUnsET dataset and fine-tuning methods to improve unstructured evidence citation and summ..."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Natural Language Processing", "Text Summarization", "🏢 University of Copenhagen",]
showSummary: true
date: 2025-02-20
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2502.14409 {{< /keyword >}}
{{< keyword icon="writer" >}} Dustin Wright et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-02-21 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2502.14409" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2502.14409" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2502.14409/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Large language models (LLMs) can generate summaries, but struggle citing evidence due to positional biases, affecting transparency and reliability. Previous work focuses on evidence citation with fixed granularity. This paper tackles **long-context query focused summarization with unstructured evidence citation**, where models extract text spans. Existing systems struggle citing evidence and are affected by the "lost-in-the-middle" problem.



To address this, the authors introduce **SUnsET, a dataset for fine-tuning LLMs to cite unstructured evidence**. Experiments across models and datasets show LLMs adapted with SUnsET generate more relevant evidence, extract evidence from diverse context locations, and generate better summaries. The study explores position-aware and position-agnostic training, showing shuffled training mitigates positional bias.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} LLMs struggle to cite unstructured evidence and are affected by positional bias. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} Fine-tuning on SUnsET data improves evidence citation accuracy, coverage, and summary quality. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Shuffling context order can mitigate positional bias during fine-tuning. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper introduces **a novel method for LLMs to generate query-focused summaries with unstructured evidence attribution**. It addresses the problem of positional bias in LLMs, enhancing the reliability & transparency of generated summaries, & paving the way for future research on mitigating bias in long-context summarization.

------
#### Visual Insights



![](https://arxiv.org/html/2502.14409/x1.png)

> 🔼 This figure illustrates the core task of the paper: query-focused summarization with unstructured evidence citation from lengthy source texts.  It shows an example of a user query alongside a long excerpt from a document and highlights the challenge of generating a summary that accurately reflects the document's information while also citing the specific parts of the document that support the summary's claims. The unstructured nature emphasizes that the cited evidence doesn't need to adhere to any pre-defined structure (like sentences or paragraphs), making the task more complex and flexible.
> <details>
> <summary>read the caption</summary>
> Figure 1: We study query focused summarization with unstructured evidence citation from long contexts
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S3.T1.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S3.T1.1.1.1">
<th class="ltx_td ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S3.T1.1.1.1.1" style="padding:0.5pt 2.0pt;"></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" colspan="4" id="S3.T1.1.1.1.2" style="padding:0.5pt 2.0pt;">SUnsET</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" colspan="4" id="S3.T1.1.1.1.3" style="padding:0.5pt 2.0pt;">Base</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="4" id="S3.T1.1.1.1.4" style="padding:0.5pt 2.0pt;">Base w/ Titles</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S3.T1.1.2.1">
<th class="ltx_td ltx_align_right ltx_th ltx_th_row ltx_border_t" id="S3.T1.1.2.1.1" style="padding:0.5pt 2.0pt;">Method</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.2.1.2" style="padding:0.5pt 2.0pt;">Titles</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.2.1.3" style="padding:0.5pt 2.0pt;">Questions</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.2.1.4" style="padding:0.5pt 2.0pt;">Summaries</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T1.1.2.1.5" style="padding:0.5pt 2.0pt;">Documents</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.2.1.6" style="padding:0.5pt 2.0pt;">Titles</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.2.1.7" style="padding:0.5pt 2.0pt;">Questions</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.2.1.8" style="padding:0.5pt 2.0pt;">Summaries</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T1.1.2.1.9" style="padding:0.5pt 2.0pt;">Documents</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.2.1.10" style="padding:0.5pt 2.0pt;">Titles</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.2.1.11" style="padding:0.5pt 2.0pt;">Questions</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.2.1.12" style="padding:0.5pt 2.0pt;">Summaries</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.2.1.13" style="padding:0.5pt 2.0pt;">Documents</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.3.2">
<th class="ltx_td ltx_align_right ltx_th ltx_th_row" id="S3.T1.1.3.2.1" style="padding:0.5pt 2.0pt;">Moving Avg. TTR</th>
<td class="ltx_td ltx_align_center" id="S3.T1.1.3.2.2" style="padding:0.5pt 2.0pt;">0.816</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.3.2.3" style="padding:0.5pt 2.0pt;">0.751</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.3.2.4" style="padding:0.5pt 2.0pt;">0.836</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.1.3.2.5" style="padding:0.5pt 2.0pt;">0.820</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.3.2.6" style="padding:0.5pt 2.0pt;">0.387</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.3.2.7" style="padding:0.5pt 2.0pt;">0.670</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.3.2.8" style="padding:0.5pt 2.0pt;">0.797</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.1.3.2.9" style="padding:0.5pt 2.0pt;">0.350</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.3.2.10" style="padding:0.5pt 2.0pt;">0.588</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.3.2.11" style="padding:0.5pt 2.0pt;">0.631</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.3.2.12" style="padding:0.5pt 2.0pt;">0.778</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.3.2.13" style="padding:0.5pt 2.0pt;">0.352</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.4.3">
<th class="ltx_td ltx_align_right ltx_th ltx_th_row" id="S3.T1.1.4.3.1" style="padding:0.5pt 2.0pt;">Avg. Cosinse Dist.</th>
<td class="ltx_td ltx_align_center" id="S3.T1.1.4.3.2" style="padding:0.5pt 2.0pt;">0.780</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.4.3.3" style="padding:0.5pt 2.0pt;">0.806</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.4.3.4" style="padding:0.5pt 2.0pt;">0.733</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.1.4.3.5" style="padding:0.5pt 2.0pt;">0.682</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.4.3.6" style="padding:0.5pt 2.0pt;">0.425</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.4.3.7" style="padding:0.5pt 2.0pt;">0.725</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.4.3.8" style="padding:0.5pt 2.0pt;">0.716</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.1.4.3.9" style="padding:0.5pt 2.0pt;">0.042</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.4.3.10" style="padding:0.5pt 2.0pt;">0.607</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.4.3.11" style="padding:0.5pt 2.0pt;">0.660</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.4.3.12" style="padding:0.5pt 2.0pt;">0.610</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.4.3.13" style="padding:0.5pt 2.0pt;">0.040</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.5.4">
<th class="ltx_td ltx_align_right ltx_th ltx_th_row ltx_border_bb" id="S3.T1.1.5.4.1" style="padding:0.5pt 2.0pt;">Avg. Length (in words)</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.1.5.4.2" style="padding:0.5pt 2.0pt;">5.44</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.1.5.4.3" style="padding:0.5pt 2.0pt;">13.45</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.1.5.4.4" style="padding:0.5pt 2.0pt;">226.5</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S3.T1.1.5.4.5" style="padding:0.5pt 2.0pt;">3767.4</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.1.5.4.6" style="padding:0.5pt 2.0pt;">6.65</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.1.5.4.7" style="padding:0.5pt 2.0pt;">9.85</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.1.5.4.8" style="padding:0.5pt 2.0pt;">23.79</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S3.T1.1.5.4.9" style="padding:0.5pt 2.0pt;">474.8</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.1.5.4.10" style="padding:0.5pt 2.0pt;">5.76</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.1.5.4.11" style="padding:0.5pt 2.0pt;">10.21</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.1.5.4.12" style="padding:0.5pt 2.0pt;">24.45</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.1.5.4.13" style="padding:0.5pt 2.0pt;">433.8</td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 This table presents a statistical overview of the synthetic dataset generated for the study, focusing on the diversity and quality of the generated data.  It includes metrics such as the average type-token ratio (TTR), average cosine distance between generated items, and the average lengths (in words) of titles, questions, summaries, and documents.  The data are broken down by different generation methods to highlight the impact of the generation pipeline on data quality and diversity. 
> <details>
> <summary>read the caption</summary>
> Table 1: Statistics and diversity metrics of synthetically generated data.
> </details>





### In-depth insights


#### Unstruct. Cite.
I do not see a heading called 'Unstruct. Cite.' in this document. However, based on the context of the paper which is 'Unstructured Evidence Attribution for Long Context Query Focused Summarization', it appears the work would involve unstructured citation of data from within long documents. **Models adapted to this task generate more relevant and factually consistent evidence**. **They extract evidence from diverse context locations and generate more relevant and consistent summaries**. The results show improvements in transparency and reliability of summaries. **Positional biases (lost in the middle) may be mitigated by using the new synthetic dataset generation SUnsET**.

#### Lost in Middle
**Lost in the Middle** refers to a common challenge in processing long sequences, where models struggle to effectively utilize information present in the middle segments. This often happens because attention mechanisms, which are crucial for capturing relationships between different parts of the input, may prioritize the beginning and end of the sequence, leading to a diminished focus on the intermediate content. The result is that relevant details or crucial context from the middle sections are overlooked, hindering the model's ability to fully understand and generate coherent summaries or responses. Mitigating this requires techniques such as position-aware training, data shuffling, or architectural modifications to ensure more uniform attention distribution across the entire input sequence, thereby improving overall performance and reducing bias.

#### SUnsET Dataset
The **SUnsET dataset** is a novel, synthetically generated resource designed to train language models for unstructured evidence citation in long-context summarization. It addresses the challenges of **positional bias** and the need for large, specialized datasets. The dataset's construction employs a domain-agnostic, inductive pipeline, focusing on flexibility and explainability. Its modular design, with documents broken into discrete sections, enables data augmentation through shuffling, mitigating positional biases. The pipeline involves multiple stages including title generation, document outlining, query/summary creation, section generation, refinement, and validation. **Fine-tuning models** on SUnsET enhances their ability to extract relevant evidence, improve summary quality, and mitigate the "lost-in-the-middle" issue by providing better citations.

#### Adapter Tuning
Adapter tuning, particularly using techniques like LoRA, emerges as a **cost-effective strategy** for adapting LLMs to specialized tasks, such as unstructured evidence attribution. This approach is more parameter-efficient than full fine-tuning. Adapters work by inserting new layers into the original model to extract better results, thus reducing computational resources. Additionally, adapters can mitigate the **lost-in-the-middle problem**, helping models use unstructured evidence. Different adapter training regimes, such as **position-aware** and **position-agnostic** training, can impact performance, with position-aware training potentially enhancing evidence quality and position-agnostic training mitigating positional biases. The success depends on data quality and domain relevance. It also allows for a dynamic trade-off between **resource efficiency** and **high performance**.

#### Reduce Bias
While the paper doesn't explicitly have a section titled "Reduce Bias," the concept is woven throughout. The core contribution—**unstructured evidence attribution**—aims to increase transparency, which inherently combats bias by revealing the source of information. By citing specific text spans, the model's reasoning becomes more auditable, reducing the risk of it presenting biased summaries based on selectively chosen or misinterpreted evidence. The paper acknowledges **positional bias in LLMs**, where they favor information at the beginning or end of the context.  Their proposed SUnsET dataset and shuffling strategies are direct attempts to mitigate this bias. The paper also touches on **ethical considerations** related to plagiarism and copyright, underscoring the need for careful attention to potential biases introduced during synthetic data generation. The paper argues that careful tuning with data augmentation can further reduce evidence bias.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2502.14409/x2.png)

> 🔼 This figure illustrates the six-stage pipeline used to generate the Summaries with Unstructured Evidence Text (SUnsET) dataset.  Each stage involves a different prompt to a large language model (LLM), generating various components of the dataset. The process begins with generating unique titles for fictional and non-fiction documents (P1). An outline of each document is then created (P2), followed by the generation of queries, summaries, and supporting evidence passages (P3).  The evidence passages are then incorporated into the actual document sections (P4).  Subsequently, the summaries and evidence are refined based on the completed document (P5). Finally, the generated data is validated to ensure that the summaries are accurate and the evidence is properly cited (P6).  The prompts used in each of these six stages are detailed in Appendix A (Figures 8-16).
> <details>
> <summary>read the caption</summary>
> Figure 2: Six stage inductive data generation pipeline. The full prompts for each stage are given in Appendix A Figure 8 - Figure 16.
> </details>



![](https://arxiv.org/html/2502.14409/x3.png)

> 🔼 This figure shows example snippets from a document in the SUnsET dataset.  It illustrates the structure of a SUnsET document, including the title, a section of the document text, an example query related to the document's content, a snippet of a generated summary that answers the query, and a snippet of the evidence used to support the summary. The snippets highlight the unstructured nature of the evidence citation within the SUnsET dataset.
> <details>
> <summary>read the caption</summary>
> Figure 3: Snippets from a SUnsET document.
> </details>



![](https://arxiv.org/html/2502.14409/x4.png)

> 🔼 This figure shows the distribution of extracted evidence locations within the source document for the Llama 3.2 1B model using three different methods: standard training, shuffled training, and the base model without fine-tuning. The x-axis represents the relative location of the extracted evidence within the document (0.0 being the beginning and 1.0 being the end), and the y-axis represents the count of extracted evidence at each location. The figure helps visualize the impact of training methods on the positional bias of the model, showing whether the model tends to extract evidence from specific parts of the document (e.g., the beginning or end) or distributes evidence extraction more evenly across the document.
> <details>
> <summary>read the caption</summary>
> (a) Llama 3.2 1B
> </details>



![](https://arxiv.org/html/2502.14409/x5.png)

> 🔼 This histogram displays the distribution of extracted evidence locations within the source document for the Llama 3.2 3B model.  The x-axis represents the relative location of the evidence within the document (0.0 being the beginning and 1.0 being the end), and the y-axis shows the frequency or count of extracted evidence at each location. Three sets of results are shown:  the base model (without fine-tuning on the SUnsET dataset), the model fine-tuned with standard context, and the model fine-tuned with shuffled context. The figure helps visualize the model's tendency to focus on specific locations within the document when extracting evidence (positional bias), and the effect of different fine-tuning methods on this bias.  Comparing this to the distribution of ground truth evidence in Figure 5 allows for a more direct assessment of the model's performance.
> <details>
> <summary>read the caption</summary>
> (b) Llama 3.2 3B
> </details>



![](https://arxiv.org/html/2502.14409/x6.png)

> 🔼 This figure is a histogram showing the distribution of extracted evidence locations within the provided source context for the Llama 3.1 8B model.  The x-axis represents the relative location of the extracted evidence (0.0 being the beginning and 1.0 being the end of the document), and the y-axis represents the count of evidence instances found at each location. The histogram compares three different methods: the base model, a model fine-tuned with standard context, and a model fine-tuned with shuffled context.  This visualization helps to understand the model's positional bias and the effectiveness of different fine-tuning methods in mitigating this bias.
> <details>
> <summary>read the caption</summary>
> (c) Llama 3.1 8B
> </details>



![](https://arxiv.org/html/2502.14409/x7.png)

> 🔼 This figure is a histogram showing the distribution of extracted evidence locations within the provided source context for the Mistral Nemo 2407 model.  The x-axis represents the location of the extracted evidence (normalized to the range [0, 1]), with 0 representing the beginning of the document and 1 representing the end. The y-axis shows the count of evidence instances at each location.  The histogram allows for a visual comparison of the distribution of evidence across different extraction methods (standard, shuffled, and baseline).  This aids in assessing the impact of the training method on the positioning of extracted evidence within the document, particularly relating to the 'lost-in-the-middle' phenomenon discussed in the paper.
> <details>
> <summary>read the caption</summary>
> (d) Mistral Nemo 2407
> </details>



![](https://arxiv.org/html/2502.14409/x8.png)

> 🔼 This histogram displays the distribution of extracted evidence locations within the source document for the Mixtral 8x7B model.  The x-axis represents the relative location of the evidence within the document (0.0 being the beginning and 1.0 being the end), and the y-axis represents the count of evidence snippets found at each location.  The bars are grouped into three categories: 'Base', representing the baseline model without fine-tuning; 'Standard', representing the model fine-tuned with the standard SUnsET dataset; and 'Shuffled', representing the model fine-tuned with the shuffled SUnsET dataset. This visualization helps to understand whether the model's evidence selection exhibits positional bias (favoring evidence from the beginning or end of the document) and how fine-tuning with SUnsET data, with and without shuffling, affects this bias.
> <details>
> <summary>read the caption</summary>
> (e) Mixtral 8x7B
> </details>



![](https://arxiv.org/html/2502.14409/x9.png)

> 🔼 This figure shows the distribution of extracted evidence locations within the source document for the GPT-40 mini model.  The x-axis represents the location of evidence within the document, ranging from 0.0 (beginning) to 1.0 (end). The y-axis represents the count of extracted evidence spans found at each location. The bars show the distribution for three different methods: Base (the original, unadapted model), Standard (fine-tuned with SUnsET data), and Shuffled (fine-tuned with SUnsET data with shuffled document sections). This visualization helps illustrate the presence of positional bias (lost-in-the-middle) in language models and the effect of the proposed fine-tuning method on mitigating this bias.
> <details>
> <summary>read the caption</summary>
> (f) GPT 4o Mini
> </details>



![](https://arxiv.org/html/2502.14409/x10.png)

> 🔼 This figure displays histograms showing the distribution of extracted evidence locations within source documents for various methods.  Each histogram represents a different large language model (LLM) and shows the relative frequency of evidence extracted from different positions (beginning, middle, or end) within the document.  The comparison allows for analysis of how different LLMs and processing techniques (such as standard vs. shuffled fine-tuning) affect where evidence is selected from within a given document context.
> <details>
> <summary>read the caption</summary>
> Figure 4: Location of extracted evidence in the provided source context for different methods.
> </details>



![](https://arxiv.org/html/2502.14409/x11.png)

> 🔼 This figure shows the distribution of ground truth evidence locations within the SQuALITY dataset.  The x-axis represents the relative location of the evidence within the document, ranging from 0.0 (beginning) to 1.0 (end). The y-axis shows the count of evidence instances at each location. The figure helps visualize the distribution of evidence across different sections of the documents in this dataset, indicating whether there's a bias toward the beginning, middle, or end of the documents.
> <details>
> <summary>read the caption</summary>
> (a) SQuALITY
> </details>



![](https://arxiv.org/html/2502.14409/x12.png)

> 🔼 Figure 5(b) shows the distribution of ground truth evidence locations in the LexAbSumm dataset.  LexAbSumm consists of long legal documents, focusing on the location of evidence within those documents. The x-axis represents the relative location of evidence within the document (from 0.0 to 1.0), and the y-axis represents the count of evidence at each location. This visualization helps illustrate the distribution of evidence throughout the documents and can be used to understand any positional biases present in the data or in models trained on this data.  The graph shows a relatively uniform distribution of evidence across the documents, suggesting there is no strong positional bias towards either the beginning or end of the documents within this dataset.
> <details>
> <summary>read the caption</summary>
> (b) LexAbSumm
> </details>



![](https://arxiv.org/html/2502.14409/x13.png)

> 🔼 The figure shows the distribution of ground truth evidence locations in the SummHay dataset.  The x-axis represents the relative location of evidence within the document (0.0 being the beginning and 1.0 being the end). The y-axis represents the count of evidence instances at each location. The distribution illustrates where the actual evidence is present in the documents, helping to understand any inherent biases in evidence placement within the dataset.
> <details>
> <summary>read the caption</summary>
> (c) SummHay
> </details>



![](https://arxiv.org/html/2502.14409/x14.png)

> 🔼 Figure 5(d) presents the distribution of ground truth evidence locations within the ScholarQABench dataset.  ScholarQABench is a multi-document dataset consisting of computer science research papers. The x-axis represents the relative location of evidence within a document (0.0 being the beginning, 1.0 being the end), and the y-axis represents the count of evidence instances at each location. This visualization helps to understand the distribution of evidence within the documents of this specific dataset, allowing for a comparison with the distribution of evidence extracted by different LLMs (as shown in other subfigures of Figure 5 and Figure 4).
> <details>
> <summary>read the caption</summary>
> (d) ScholarQABench
> </details>



![](https://arxiv.org/html/2502.14409/x15.png)

> 🔼 This figure presents four histograms, one for each of the datasets used in the study (SQUALITY, LexAbSumm, SummHay, and ScholarQABench). Each histogram visualizes the distribution of ground truth evidence locations within the documents of the corresponding dataset.  The x-axis represents the relative location of the evidence within the document (0.0 being the beginning and 1.0 being the end), and the y-axis represents the count of evidence instances at each location.  This figure helps illustrate whether there's a bias in the location of evidence within documents, which is related to the 'lost-in-the-middle' phenomenon discussed in the paper.
> <details>
> <summary>read the caption</summary>
> Figure 5: Location of ground truth evidence in each dataset.
> </details>



![](https://arxiv.org/html/2502.14409/x16.png)

> 🔼 This figure shows the location of extracted evidence within the source document for the Llama 3.2 1B model.  The x-axis represents the relative location of the evidence in the document (0.0 being the beginning and 1.0 being the end). The y-axis shows the count of evidence extracted at each location. Three bars are shown for each model: 'Base' (the unembellished model), 'Standard' (fine-tuned with SUnsET data in its original order), and 'Shuffled' (fine-tuned with SUnsET data with sections randomly shuffled).  This visualization helps illustrate the effect of fine-tuning and shuffled training on the tendency of the model to extract evidence primarily from the beginning or end of the document ('lost-in-the-middle' effect).
> <details>
> <summary>read the caption</summary>
> (a) Llama 3.2 1B
> </details>



![](https://arxiv.org/html/2502.14409/x17.png)

> 🔼 This figure is a histogram showing the location of extracted evidence within the source document for the Llama 3.1 8B language model.  The x-axis represents the relative location of evidence in the document (0.0 being the beginning, 1.0 being the end), and the y-axis represents the count of evidence instances found at each location. The histogram compares the distribution of evidence extracted by three different methods: the base model, the model fine-tuned with standard context, and the model fine-tuned with shuffled context.  The purpose is to visualize the impact of different fine-tuning methods on the positional bias of the model in evidence extraction. 
> <details>
> <summary>read the caption</summary>
> (b) Llama 3.1 8B
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S3.T2.1">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S3.T2.1.1.1">
<td class="ltx_td ltx_align_right ltx_border_tt" id="S3.T2.1.1.1.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">Method</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T2.1.1.1.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">Exact Match</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T2.1.1.1.3" style="padding-top:0.5pt;padding-bottom:0.5pt;">50% Match</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T2.1.1.1.4" style="padding-top:0.5pt;padding-bottom:0.5pt;"># Evidence</td>
</tr>
<tr class="ltx_tr" id="S3.T2.1.2.2">
<td class="ltx_td ltx_align_right ltx_border_t" id="S3.T2.1.2.2.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">Llama 3.2 1B</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.1.2.2.2" style="padding-top:0.5pt;padding-bottom:0.5pt;"> 0.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.1.2.2.3" style="padding-top:0.5pt;padding-bottom:0.5pt;">35.71</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.1.2.2.4" style="padding-top:0.5pt;padding-bottom:0.5pt;">    14</td>
</tr>
<tr class="ltx_tr" id="S3.T2.1.3.3">
<td class="ltx_td ltx_align_right" id="S3.T2.1.3.3.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">   + Standard</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.3.3.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">  <span class="ltx_text ltx_font_bold" id="S3.T2.1.3.3.2.1">7.69</span>
</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.3.3.3" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.1.3.3.3.1">43.26</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.3.3.4" style="padding-top:0.5pt;padding-bottom:0.5pt;">  208</td>
</tr>
<tr class="ltx_tr" id="S3.T2.1.4.4">
<td class="ltx_td ltx_align_right" id="S3.T2.1.4.4.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">   + Shuffled</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.4.4.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">  5.15</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.4.4.3" style="padding-top:0.5pt;padding-bottom:0.5pt;">22.68</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.4.4.4" style="padding-top:0.5pt;padding-bottom:0.5pt;">    97</td>
</tr>
<tr class="ltx_tr" id="S3.T2.1.5.5">
<td class="ltx_td ltx_align_right ltx_border_t" id="S3.T2.1.5.5.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">Llama 3.2 3B</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.1.5.5.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">25.57</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.1.5.5.3" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.1.5.5.3.1">90.11</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.1.5.5.4" style="padding-top:0.5pt;padding-bottom:0.5pt;">1345</td>
</tr>
<tr class="ltx_tr" id="S3.T2.1.6.6">
<td class="ltx_td ltx_align_right" id="S3.T2.1.6.6.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">   + Standard</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.6.6.2" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.1.6.6.2.1">52.77</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.6.6.3" style="padding-top:0.5pt;padding-bottom:0.5pt;">85.62</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.6.6.4" style="padding-top:0.5pt;padding-bottom:0.5pt;">3720</td>
</tr>
<tr class="ltx_tr" id="S3.T2.1.7.7">
<td class="ltx_td ltx_align_right" id="S3.T2.1.7.7.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">   + Shuffled</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.7.7.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">32.99</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.7.7.3" style="padding-top:0.5pt;padding-bottom:0.5pt;">74.07</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.7.7.4" style="padding-top:0.5pt;padding-bottom:0.5pt;">2337</td>
</tr>
<tr class="ltx_tr" id="S3.T2.1.8.8">
<td class="ltx_td ltx_align_right ltx_border_t" id="S3.T2.1.8.8.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">Llama 3.1 8B</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.1.8.8.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">43.93</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.1.8.8.3" style="padding-top:0.5pt;padding-bottom:0.5pt;">83.12</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.1.8.8.4" style="padding-top:0.5pt;padding-bottom:0.5pt;">3412</td>
</tr>
<tr class="ltx_tr" id="S3.T2.1.9.9">
<td class="ltx_td ltx_align_right" id="S3.T2.1.9.9.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">   + Standard</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.9.9.2" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.1.9.9.2.1">78.36</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.9.9.3" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.1.9.9.3.1">97.21</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.9.9.4" style="padding-top:0.5pt;padding-bottom:0.5pt;">4690</td>
</tr>
<tr class="ltx_tr" id="S3.T2.1.10.10">
<td class="ltx_td ltx_align_right" id="S3.T2.1.10.10.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">   + Shuffled</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.10.10.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">54.53</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.10.10.3" style="padding-top:0.5pt;padding-bottom:0.5pt;">88.51</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.10.10.4" style="padding-top:0.5pt;padding-bottom:0.5pt;">4684</td>
</tr>
<tr class="ltx_tr" id="S3.T2.1.11.11">
<td class="ltx_td ltx_align_right ltx_border_t" id="S3.T2.1.11.11.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">Mistral Nemo 2407</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.1.11.11.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">  5.48</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.1.11.11.3" style="padding-top:0.5pt;padding-bottom:0.5pt;">66.13</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.1.11.11.4" style="padding-top:0.5pt;padding-bottom:0.5pt;">  310</td>
</tr>
<tr class="ltx_tr" id="S3.T2.1.12.12">
<td class="ltx_td ltx_align_right" id="S3.T2.1.12.12.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">   + Standard</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.12.12.2" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.1.12.12.2.1">82.20</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.12.12.3" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.1.12.12.3.1">97.29</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.12.12.4" style="padding-top:0.5pt;padding-bottom:0.5pt;">2107</td>
</tr>
<tr class="ltx_tr" id="S3.T2.1.13.13">
<td class="ltx_td ltx_align_right" id="S3.T2.1.13.13.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">   + Shuffled</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.13.13.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">72.38</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.13.13.3" style="padding-top:0.5pt;padding-bottom:0.5pt;">95.76</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.13.13.4" style="padding-top:0.5pt;padding-bottom:0.5pt;">1959</td>
</tr>
<tr class="ltx_tr" id="S3.T2.1.14.14">
<td class="ltx_td ltx_align_right ltx_border_t" id="S3.T2.1.14.14.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">Mixtral 8x7B</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.1.14.14.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">  5.79</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.1.14.14.3" style="padding-top:0.5pt;padding-bottom:0.5pt;">91.25</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.1.14.14.4" style="padding-top:0.5pt;padding-bottom:0.5pt;">3452</td>
</tr>
<tr class="ltx_tr" id="S3.T2.1.15.15">
<td class="ltx_td ltx_align_right" id="S3.T2.1.15.15.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">   + Standard</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.15.15.2" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.1.15.15.2.1">33.82</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.15.15.3" style="padding-top:0.5pt;padding-bottom:0.5pt;">90.47</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.15.15.4" style="padding-top:0.5pt;padding-bottom:0.5pt;">4208</td>
</tr>
<tr class="ltx_tr" id="S3.T2.1.16.16">
<td class="ltx_td ltx_align_right" id="S3.T2.1.16.16.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">   + Shuffled</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.16.16.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">29.29</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.16.16.3" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.1.16.16.3.1">90.74</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.16.16.4" style="padding-top:0.5pt;padding-bottom:0.5pt;">4288</td>
</tr>
<tr class="ltx_tr" id="S3.T2.1.17.17">
<td class="ltx_td ltx_align_right ltx_border_bb ltx_border_bb ltx_border_tt" id="S3.T2.1.17.17.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">GPT-4o-mini</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_bb ltx_border_tt" id="S3.T2.1.17.17.2" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text ltx_font_italic" id="S3.T2.1.17.17.2.1">11.06</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_bb ltx_border_tt" id="S3.T2.1.17.17.3" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text ltx_font_italic" id="S3.T2.1.17.17.3.1">96.32</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_bb ltx_border_tt" id="S3.T2.1.17.17.4" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text ltx_font_italic" id="S3.T2.1.17.17.4.1">8159</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 Table 2 presents the hallucination rates of evidence extraction performed by different LLMs.  It measures the accuracy of evidence extraction in two ways: exact string match (where the extracted evidence is identical to a sentence in the source text) and 50% overlap (where the extracted evidence has at least a 50% overlap with the longest common substring in the source text). This provides a comprehensive evaluation of how well the models accurately extract evidence from the source documents, helping to identify cases of hallucination (where the model generates evidence not present in the source).
> <details>
> <summary>read the caption</summary>
> Table 2:  Hallucination rates for evidence extraction. We directly measure exact string match (i.e. when the evidence sentence exactly appears in the context) as well as 50% overlap between the extracted evidence and the longest common substring in the context.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S3.T3.1">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S3.T3.1.1.1">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_th ltx_th_row ltx_border_tt" id="S3.T3.1.1.1.1" style="padding:0.5pt 1.5pt;"></th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r ltx_border_tt" colspan="2" id="S3.T3.1.1.1.2" style="padding:0.5pt 1.5pt;">SLT<sup class="ltx_sup" id="S3.T3.1.1.1.2.1">S</sup>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r ltx_border_tt" colspan="2" id="S3.T3.1.1.1.3" style="padding:0.5pt 1.5pt;">LAS<sup class="ltx_sup" id="S3.T3.1.1.1.3.1">S</sup>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r ltx_border_tt" colspan="2" id="S3.T3.1.1.1.4" style="padding:0.5pt 1.5pt;">SMH<sup class="ltx_sup" id="S3.T3.1.1.1.4.1">M</sup>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt" colspan="2" id="S3.T3.1.1.1.5" style="padding:0.5pt 1.5pt;">SQB<sup class="ltx_sup" id="S3.T3.1.1.1.5.1">M</sup>
</td>
</tr>
<tr class="ltx_tr" id="S3.T3.1.2.2">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S3.T3.1.2.2.1" style="padding:0.5pt 1.5pt;">Method</th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T3.1.2.2.2" style="padding:0.5pt 1.5pt;">Rel<sub class="ltx_sub" id="S3.T3.1.2.2.2.1">F1</sub>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r ltx_border_t" id="S3.T3.1.2.2.3" style="padding:0.5pt 1.5pt;">Con<sub class="ltx_sub" id="S3.T3.1.2.2.3.1">F1</sub>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T3.1.2.2.4" style="padding:0.5pt 1.5pt;">Rel<sub class="ltx_sub" id="S3.T3.1.2.2.4.1">F1</sub>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r ltx_border_t" id="S3.T3.1.2.2.5" style="padding:0.5pt 1.5pt;">Con<sub class="ltx_sub" id="S3.T3.1.2.2.5.1">F1</sub>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T3.1.2.2.6" style="padding:0.5pt 1.5pt;">Rel<sub class="ltx_sub" id="S3.T3.1.2.2.6.1">F1</sub>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r ltx_border_t" id="S3.T3.1.2.2.7" style="padding:0.5pt 1.5pt;">Con<sub class="ltx_sub" id="S3.T3.1.2.2.7.1">F1</sub>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T3.1.2.2.8" style="padding:0.5pt 1.5pt;">Rel<sub class="ltx_sub" id="S3.T3.1.2.2.8.1">F1</sub>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T3.1.2.2.9" style="padding:0.5pt 1.5pt;">Con<sub class="ltx_sub" id="S3.T3.1.2.2.9.1">F1</sub>
</td>
</tr>
<tr class="ltx_tr" id="S3.T3.1.3.3">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S3.T3.1.3.3.1" style="padding:0.5pt 1.5pt;">Llama 3.2 1B</th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T3.1.3.3.2" style="padding:0.5pt 1.5pt;">0.00</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r ltx_border_t" id="S3.T3.1.3.3.3" style="padding:0.5pt 1.5pt;">0.00</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T3.1.3.3.4" style="padding:0.5pt 1.5pt;">0.94</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r ltx_border_t" id="S3.T3.1.3.3.5" style="padding:0.5pt 1.5pt;">1.06</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T3.1.3.3.6" style="padding:0.5pt 1.5pt;"><span class="ltx_text ltx_font_bold" id="S3.T3.1.3.3.6.1">0.00</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r ltx_border_t" id="S3.T3.1.3.3.7" style="padding:0.5pt 1.5pt;"><span class="ltx_text ltx_font_bold" id="S3.T3.1.3.3.7.1">0.00</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T3.1.3.3.8" style="padding:0.5pt 1.5pt;">0.23</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T3.1.3.3.9" style="padding:0.5pt 1.5pt;">0.18</td>
</tr>
<tr class="ltx_tr" id="S3.T3.1.4.4">
<th class="ltx_td ltx_nopad_r ltx_align_left ltx_th ltx_th_row" id="S3.T3.1.4.4.1" style="padding:0.5pt 1.5pt;">+ Standard</th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.1.4.4.2" style="padding:0.5pt 1.5pt;"><span class="ltx_text ltx_font_bold" id="S3.T3.1.4.4.2.1">0.63</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S3.T3.1.4.4.3" style="padding:0.5pt 1.5pt;"><span class="ltx_text ltx_font_bold" id="S3.T3.1.4.4.3.1">0.53</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.1.4.4.4" style="padding:0.5pt 1.5pt;"><span class="ltx_text ltx_font_bold" id="S3.T3.1.4.4.4.1">4.80</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S3.T3.1.4.4.5" style="padding:0.5pt 1.5pt;"><span class="ltx_text ltx_font_bold" id="S3.T3.1.4.4.5.1">4.56</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.1.4.4.6" style="padding:0.5pt 1.5pt;"><span class="ltx_text ltx_font_bold" id="S3.T3.1.4.4.6.1">0.00</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S3.T3.1.4.4.7" style="padding:0.5pt 1.5pt;"><span class="ltx_text ltx_font_bold" id="S3.T3.1.4.4.7.1">0.00</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.1.4.4.8" style="padding:0.5pt 1.5pt;"><span class="ltx_text ltx_font_bold" id="S3.T3.1.4.4.8.1">1.84</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.1.4.4.9" style="padding:0.5pt 1.5pt;"><span class="ltx_text ltx_font_bold" id="S3.T3.1.4.4.9.1">1.68</span></td>
</tr>
<tr class="ltx_tr" id="S3.T3.1.5.5">
<th class="ltx_td ltx_nopad_r ltx_align_left ltx_th ltx_th_row" id="S3.T3.1.5.5.1" style="padding:0.5pt 1.5pt;">+ Shuffled</th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.1.5.5.2" style="padding:0.5pt 1.5pt;">0.48</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S3.T3.1.5.5.3" style="padding:0.5pt 1.5pt;">0.26</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.1.5.5.4" style="padding:0.5pt 1.5pt;">2.83</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S3.T3.1.5.5.5" style="padding:0.5pt 1.5pt;">2.84</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.1.5.5.6" style="padding:0.5pt 1.5pt;"><span class="ltx_text ltx_font_bold" id="S3.T3.1.5.5.6.1">0.00</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S3.T3.1.5.5.7" style="padding:0.5pt 1.5pt;"><span class="ltx_text ltx_font_bold" id="S3.T3.1.5.5.7.1">0.00</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.1.5.5.8" style="padding:0.5pt 1.5pt;">0.00</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.1.5.5.9" style="padding:0.5pt 1.5pt;">0.00</td>
</tr>
<tr class="ltx_tr" id="S3.T3.1.6.6">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S3.T3.1.6.6.1" style="padding:0.5pt 1.5pt;">Llama 3.2 3B</th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T3.1.6.6.2" style="padding:0.5pt 1.5pt;">11.21</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r ltx_border_t" id="S3.T3.1.6.6.3" style="padding:0.5pt 1.5pt;">10.16</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T3.1.6.6.4" style="padding:0.5pt 1.5pt;">15.08</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r ltx_border_t" id="S3.T3.1.6.6.5" style="padding:0.5pt 1.5pt;">14.64</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T3.1.6.6.6" style="padding:0.5pt 1.5pt;">8.64</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r ltx_border_t" id="S3.T3.1.6.6.7" style="padding:0.5pt 1.5pt;">8.75</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T3.1.6.6.8" style="padding:0.5pt 1.5pt;">12.37</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T3.1.6.6.9" style="padding:0.5pt 1.5pt;">12.99</td>
</tr>
<tr class="ltx_tr" id="S3.T3.1.7.7">
<th class="ltx_td ltx_nopad_r ltx_align_left ltx_th ltx_th_row" id="S3.T3.1.7.7.1" style="padding:0.5pt 1.5pt;">+ Standard</th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.1.7.7.2" style="padding:0.5pt 1.5pt;"><span class="ltx_text ltx_font_bold" id="S3.T3.1.7.7.2.1">36.19</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S3.T3.1.7.7.3" style="padding:0.5pt 1.5pt;"><span class="ltx_text ltx_font_bold" id="S3.T3.1.7.7.3.1">25.12</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.1.7.7.4" style="padding:0.5pt 1.5pt;"><span class="ltx_text ltx_font_bold" id="S3.T3.1.7.7.4.1">43.98</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S3.T3.1.7.7.5" style="padding:0.5pt 1.5pt;"><span class="ltx_text ltx_font_bold" id="S3.T3.1.7.7.5.1">40.64</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.1.7.7.6" style="padding:0.5pt 1.5pt;"><span class="ltx_text ltx_font_bold" id="S3.T3.1.7.7.6.1">37.73</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S3.T3.1.7.7.7" style="padding:0.5pt 1.5pt;"><span class="ltx_text ltx_font_bold" id="S3.T3.1.7.7.7.1">39.03</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.1.7.7.8" style="padding:0.5pt 1.5pt;"><span class="ltx_text ltx_font_bold" id="S3.T3.1.7.7.8.1">37.16</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.1.7.7.9" style="padding:0.5pt 1.5pt;"><span class="ltx_text ltx_font_bold" id="S3.T3.1.7.7.9.1">34.39</span></td>
</tr>
<tr class="ltx_tr" id="S3.T3.1.8.8">
<th class="ltx_td ltx_nopad_r ltx_align_left ltx_th ltx_th_row" id="S3.T3.1.8.8.1" style="padding:0.5pt 1.5pt;">+ Shuffled</th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.1.8.8.2" style="padding:0.5pt 1.5pt;">23.38</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S3.T3.1.8.8.3" style="padding:0.5pt 1.5pt;">15.33</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.1.8.8.4" style="padding:0.5pt 1.5pt;">36.19</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S3.T3.1.8.8.5" style="padding:0.5pt 1.5pt;">31.26</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.1.8.8.6" style="padding:0.5pt 1.5pt;">32.73</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S3.T3.1.8.8.7" style="padding:0.5pt 1.5pt;">33.46</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.1.8.8.8" style="padding:0.5pt 1.5pt;">31.36</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.1.8.8.9" style="padding:0.5pt 1.5pt;">26.73</td>
</tr>
<tr class="ltx_tr" id="S3.T3.1.9.9">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S3.T3.1.9.9.1" style="padding:0.5pt 1.5pt;">Llama 3.1 8B</th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T3.1.9.9.2" style="padding:0.5pt 1.5pt;">17.21</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r ltx_border_t" id="S3.T3.1.9.9.3" style="padding:0.5pt 1.5pt;">15.15</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T3.1.9.9.4" style="padding:0.5pt 1.5pt;">31.17</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r ltx_border_t" id="S3.T3.1.9.9.5" style="padding:0.5pt 1.5pt;">30.65</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T3.1.9.9.6" style="padding:0.5pt 1.5pt;">34.18</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r ltx_border_t" id="S3.T3.1.9.9.7" style="padding:0.5pt 1.5pt;">37.96</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T3.1.9.9.8" style="padding:0.5pt 1.5pt;">32.08</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T3.1.9.9.9" style="padding:0.5pt 1.5pt;">32.85</td>
</tr>
<tr class="ltx_tr" id="S3.T3.1.10.10">
<th class="ltx_td ltx_nopad_r ltx_align_left ltx_th ltx_th_row" id="S3.T3.1.10.10.1" style="padding:0.5pt 1.5pt;">+ Standard</th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.1.10.10.2" style="padding:0.5pt 1.5pt;"><span class="ltx_text ltx_font_bold" id="S3.T3.1.10.10.2.1">35.21</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S3.T3.1.10.10.3" style="padding:0.5pt 1.5pt;"><span class="ltx_text ltx_font_bold" id="S3.T3.1.10.10.3.1">25.34</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.1.10.10.4" style="padding:0.5pt 1.5pt;"><span class="ltx_text ltx_font_bold" id="S3.T3.1.10.10.4.1">52.64</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S3.T3.1.10.10.5" style="padding:0.5pt 1.5pt;"><span class="ltx_text ltx_font_bold" id="S3.T3.1.10.10.5.1">47.79</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.1.10.10.6" style="padding:0.5pt 1.5pt;"><span class="ltx_text ltx_font_bold" id="S3.T3.1.10.10.6.1">56.82</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S3.T3.1.10.10.7" style="padding:0.5pt 1.5pt;"><span class="ltx_text ltx_font_bold" id="S3.T3.1.10.10.7.1">57.50</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.1.10.10.8" style="padding:0.5pt 1.5pt;"><span class="ltx_text ltx_font_bold" id="S3.T3.1.10.10.8.1">45.26</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.1.10.10.9" style="padding:0.5pt 1.5pt;"><span class="ltx_text ltx_font_bold" id="S3.T3.1.10.10.9.1">41.13</span></td>
</tr>
<tr class="ltx_tr" id="S3.T3.1.11.11">
<th class="ltx_td ltx_nopad_r ltx_align_left ltx_th ltx_th_row" id="S3.T3.1.11.11.1" style="padding:0.5pt 1.5pt;">+ Shuffled</th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.1.11.11.2" style="padding:0.5pt 1.5pt;">29.36</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S3.T3.1.11.11.3" style="padding:0.5pt 1.5pt;">20.65</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.1.11.11.4" style="padding:0.5pt 1.5pt;">49.90</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S3.T3.1.11.11.5" style="padding:0.5pt 1.5pt;">44.19</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.1.11.11.6" style="padding:0.5pt 1.5pt;">54.79</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S3.T3.1.11.11.7" style="padding:0.5pt 1.5pt;">54.27</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.1.11.11.8" style="padding:0.5pt 1.5pt;">39.53</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.1.11.11.9" style="padding:0.5pt 1.5pt;">36.17</td>
</tr>
<tr class="ltx_tr" id="S3.T3.1.12.12">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S3.T3.1.12.12.1" style="padding:0.5pt 1.5pt;">Mistral Nemo 2407</th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T3.1.12.12.2" style="padding:0.5pt 1.5pt;">2.75</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r ltx_border_t" id="S3.T3.1.12.12.3" style="padding:0.5pt 1.5pt;">2.37</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T3.1.12.12.4" style="padding:0.5pt 1.5pt;">5.34</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r ltx_border_t" id="S3.T3.1.12.12.5" style="padding:0.5pt 1.5pt;">4.58</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T3.1.12.12.6" style="padding:0.5pt 1.5pt;">10.37</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r ltx_border_t" id="S3.T3.1.12.12.7" style="padding:0.5pt 1.5pt;">10.25</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T3.1.12.12.8" style="padding:0.5pt 1.5pt;">5.67</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T3.1.12.12.9" style="padding:0.5pt 1.5pt;">5.36</td>
</tr>
<tr class="ltx_tr" id="S3.T3.1.13.13">
<th class="ltx_td ltx_nopad_r ltx_align_left ltx_th ltx_th_row" id="S3.T3.1.13.13.1" style="padding:0.5pt 1.5pt;">+ Standard</th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.1.13.13.2" style="padding:0.5pt 1.5pt;"><span class="ltx_text ltx_font_bold" id="S3.T3.1.13.13.2.1">34.24</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S3.T3.1.13.13.3" style="padding:0.5pt 1.5pt;"><span class="ltx_text ltx_font_bold" id="S3.T3.1.13.13.3.1">24.45</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.1.13.13.4" style="padding:0.5pt 1.5pt;">38.21</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S3.T3.1.13.13.5" style="padding:0.5pt 1.5pt;">36.88</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.1.13.13.6" style="padding:0.5pt 1.5pt;"><span class="ltx_text ltx_font_bold" id="S3.T3.1.13.13.6.1">23.54</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S3.T3.1.13.13.7" style="padding:0.5pt 1.5pt;"><span class="ltx_text ltx_font_bold" id="S3.T3.1.13.13.7.1">25.13</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.1.13.13.8" style="padding:0.5pt 1.5pt;"><span class="ltx_text ltx_font_bold" id="S3.T3.1.13.13.8.1">7.15</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.1.13.13.9" style="padding:0.5pt 1.5pt;"><span class="ltx_text ltx_font_bold" id="S3.T3.1.13.13.9.1">7.56</span></td>
</tr>
<tr class="ltx_tr" id="S3.T3.1.14.14">
<th class="ltx_td ltx_nopad_r ltx_align_left ltx_th ltx_th_row" id="S3.T3.1.14.14.1" style="padding:0.5pt 1.5pt;">+ Shuffled</th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.1.14.14.2" style="padding:0.5pt 1.5pt;">32.52</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S3.T3.1.14.14.3" style="padding:0.5pt 1.5pt;">22.84</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.1.14.14.4" style="padding:0.5pt 1.5pt;"><span class="ltx_text ltx_font_bold" id="S3.T3.1.14.14.4.1">39.94</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S3.T3.1.14.14.5" style="padding:0.5pt 1.5pt;"><span class="ltx_text ltx_font_bold" id="S3.T3.1.14.14.5.1">38.57</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.1.14.14.6" style="padding:0.5pt 1.5pt;">21.58</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S3.T3.1.14.14.7" style="padding:0.5pt 1.5pt;">23.23</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.1.14.14.8" style="padding:0.5pt 1.5pt;">4.65</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.1.14.14.9" style="padding:0.5pt 1.5pt;">4.08</td>
</tr>
<tr class="ltx_tr" id="S3.T3.1.15.15">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S3.T3.1.15.15.1" style="padding:0.5pt 1.5pt;">Mixtral 8x7B</th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T3.1.15.15.2" style="padding:0.5pt 1.5pt;">24.45</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r ltx_border_t" id="S3.T3.1.15.15.3" style="padding:0.5pt 1.5pt;">19.15</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T3.1.15.15.4" style="padding:0.5pt 1.5pt;">39.48</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r ltx_border_t" id="S3.T3.1.15.15.5" style="padding:0.5pt 1.5pt;">40.08</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T3.1.15.15.6" style="padding:0.5pt 1.5pt;">44.01</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r ltx_border_t" id="S3.T3.1.15.15.7" style="padding:0.5pt 1.5pt;">43.44</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T3.1.15.15.8" style="padding:0.5pt 1.5pt;">25.97</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T3.1.15.15.9" style="padding:0.5pt 1.5pt;">25.61</td>
</tr>
<tr class="ltx_tr" id="S3.T3.1.16.16">
<th class="ltx_td ltx_nopad_r ltx_align_left ltx_th ltx_th_row" id="S3.T3.1.16.16.1" style="padding:0.5pt 1.5pt;">+ Standard</th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.1.16.16.2" style="padding:0.5pt 1.5pt;">30.54</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S3.T3.1.16.16.3" style="padding:0.5pt 1.5pt;">25.11</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.1.16.16.4" style="padding:0.5pt 1.5pt;">38.27</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S3.T3.1.16.16.5" style="padding:0.5pt 1.5pt;">38.08</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.1.16.16.6" style="padding:0.5pt 1.5pt;"><span class="ltx_text ltx_font_bold" id="S3.T3.1.16.16.6.1">48.71</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S3.T3.1.16.16.7" style="padding:0.5pt 1.5pt;"><span class="ltx_text ltx_font_bold" id="S3.T3.1.16.16.7.1">51.85</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.1.16.16.8" style="padding:0.5pt 1.5pt;">38.37</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.1.16.16.9" style="padding:0.5pt 1.5pt;">38.59</td>
</tr>
<tr class="ltx_tr" id="S3.T3.1.17.17">
<th class="ltx_td ltx_nopad_r ltx_align_left ltx_th ltx_th_row" id="S3.T3.1.17.17.1" style="padding:0.5pt 1.5pt;">+ Shuffled</th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.1.17.17.2" style="padding:0.5pt 1.5pt;"><span class="ltx_text ltx_font_bold" id="S3.T3.1.17.17.2.1">32.87</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S3.T3.1.17.17.3" style="padding:0.5pt 1.5pt;"><span class="ltx_text ltx_font_bold" id="S3.T3.1.17.17.3.1">25.86</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.1.17.17.4" style="padding:0.5pt 1.5pt;"><span class="ltx_text ltx_font_bold" id="S3.T3.1.17.17.4.1">44.13</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S3.T3.1.17.17.5" style="padding:0.5pt 1.5pt;"><span class="ltx_text ltx_font_bold" id="S3.T3.1.17.17.5.1">44.48</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.1.17.17.6" style="padding:0.5pt 1.5pt;">46.67</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S3.T3.1.17.17.7" style="padding:0.5pt 1.5pt;">49.09</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.1.17.17.8" style="padding:0.5pt 1.5pt;"><span class="ltx_text ltx_font_bold" id="S3.T3.1.17.17.8.1">39.65</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.1.17.17.9" style="padding:0.5pt 1.5pt;"><span class="ltx_text ltx_font_bold" id="S3.T3.1.17.17.9.1">41.89</span></td>
</tr>
<tr class="ltx_tr" id="S3.T3.1.18.18">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_tt" id="S3.T3.1.18.18.1" style="padding:0.5pt 1.5pt;">GPT 4o Mini</th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb ltx_border_tt" id="S3.T3.1.18.18.2" style="padding:0.5pt 1.5pt;"><span class="ltx_text ltx_font_italic" id="S3.T3.1.18.18.2.1">42.62</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb ltx_border_r ltx_border_tt" id="S3.T3.1.18.18.3" style="padding:0.5pt 1.5pt;"><span class="ltx_text ltx_font_italic" id="S3.T3.1.18.18.3.1">36.23</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb ltx_border_tt" id="S3.T3.1.18.18.4" style="padding:0.5pt 1.5pt;"><span class="ltx_text ltx_font_italic" id="S3.T3.1.18.18.4.1">59.48</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb ltx_border_r ltx_border_tt" id="S3.T3.1.18.18.5" style="padding:0.5pt 1.5pt;"><span class="ltx_text ltx_font_italic" id="S3.T3.1.18.18.5.1">53.96</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb ltx_border_tt" id="S3.T3.1.18.18.6" style="padding:0.5pt 1.5pt;"><span class="ltx_text ltx_font_italic" id="S3.T3.1.18.18.6.1">64.99</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb ltx_border_r ltx_border_tt" id="S3.T3.1.18.18.7" style="padding:0.5pt 1.5pt;"><span class="ltx_text ltx_font_italic" id="S3.T3.1.18.18.7.1">60.14</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb ltx_border_tt" id="S3.T3.1.18.18.8" style="padding:0.5pt 1.5pt;"><span class="ltx_text ltx_font_italic" id="S3.T3.1.18.18.8.1">37.65</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb ltx_border_tt" id="S3.T3.1.18.18.9" style="padding:0.5pt 1.5pt;"><span class="ltx_text ltx_font_italic" id="S3.T3.1.18.18.9.1">33.11</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of evaluating the relevance and consistency of evidence sentences generated by different models in relation to their corresponding citations.  The evaluation uses an automated system (GPT-40-mini) and employs previously validated prompts. The methodology aligns with similar studies by Laban et al. (2024) and Asai et al. (2024), calculating F1 scores (combining precision and recall) for both relevance and consistency of the citations. The table also specifies whether the task involved single or multiple documents and uses abbreviations to identify the datasets used (SQuALITY, LexAbSumm, SummHay, and ScholarQABench).
> <details>
> <summary>read the caption</summary>
> Table 3: Relevance and consistency of evidence sentences with respect to their citances. Relevance and consistency are measured using an autorater (GPT-4o-mini) Liu et al. (2023) based on previously validated prompts Liu et al. (2024b). We follow a similar setup to Laban et al. (2024); Asai et al. (2024) where we measure citation precision and recall in order to calculate an overall F1 score for both relevance and consistency. S indicates single document tasks, M indicates multi-document. SQ is SQuALITY, LAS is LexAbSumm, SMH is SummHay, and SQB is ScholarQABench
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S4.T4.1">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T4.1.1.1">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_border_tt" id="S4.T4.1.1.1.1" style="padding:0.5pt 1.5pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r ltx_border_tt" colspan="2" id="S4.T4.1.1.1.2" style="padding:0.5pt 1.5pt;">SLT<sup class="ltx_sup" id="S4.T4.1.1.1.2.1">S</sup>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r ltx_border_tt" colspan="2" id="S4.T4.1.1.1.3" style="padding:0.5pt 1.5pt;">LAS<sup class="ltx_sup" id="S4.T4.1.1.1.3.1">S</sup>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r ltx_border_tt" colspan="2" id="S4.T4.1.1.1.4" style="padding:0.5pt 1.5pt;">SMH<sup class="ltx_sup" id="S4.T4.1.1.1.4.1">M</sup>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt" colspan="2" id="S4.T4.1.1.1.5" style="padding:0.5pt 1.5pt;">SQB<sup class="ltx_sup" id="S4.T4.1.1.1.5.1">M</sup>
</td>
</tr>
<tr class="ltx_tr" id="S4.T4.1.2.2">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_t" id="S4.T4.1.2.2.1" style="padding:0.5pt 1.5pt;">Method</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T4.1.2.2.2" style="padding:0.5pt 1.5pt;">Rel</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r ltx_border_t" id="S4.T4.1.2.2.3" style="padding:0.5pt 1.5pt;">Con</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T4.1.2.2.4" style="padding:0.5pt 1.5pt;">Rel</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r ltx_border_t" id="S4.T4.1.2.2.5" style="padding:0.5pt 1.5pt;">Con</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T4.1.2.2.6" style="padding:0.5pt 1.5pt;">Rel</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r ltx_border_t" id="S4.T4.1.2.2.7" style="padding:0.5pt 1.5pt;">Con</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T4.1.2.2.8" style="padding:0.5pt 1.5pt;">Rel</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T4.1.2.2.9" style="padding:0.5pt 1.5pt;">Con</td>
</tr>
<tr class="ltx_tr" id="S4.T4.1.3.3">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_t" id="S4.T4.1.3.3.1" style="padding:0.5pt 1.5pt;">Llama 3.2 1B</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T4.1.3.3.2" style="padding:0.5pt 1.5pt;">2.68</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r ltx_border_t" id="S4.T4.1.3.3.3" style="padding:0.5pt 1.5pt;">2.15</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T4.1.3.3.4" style="padding:0.5pt 1.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.1.3.3.4.1">3.68</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r ltx_border_t" id="S4.T4.1.3.3.5" style="padding:0.5pt 1.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.1.3.3.5.1">3.38</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T4.1.3.3.6" style="padding:0.5pt 1.5pt;">4.53</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r ltx_border_t" id="S4.T4.1.3.3.7" style="padding:0.5pt 1.5pt;">4.40</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T4.1.3.3.8" style="padding:0.5pt 1.5pt;">3.80</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T4.1.3.3.9" style="padding:0.5pt 1.5pt;">3.61</td>
</tr>
<tr class="ltx_tr" id="S4.T4.1.4.4">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="S4.T4.1.4.4.1" style="padding:0.5pt 1.5pt;">+ Standard</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T4.1.4.4.2" style="padding:0.5pt 1.5pt;">2.73<sup class="ltx_sup" id="S4.T4.1.4.4.2.1">=</sup>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S4.T4.1.4.4.3" style="padding:0.5pt 1.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.1.4.4.3.1">2.17<sup class="ltx_sup" id="S4.T4.1.4.4.3.1.1"><span class="ltx_text ltx_font_medium" id="S4.T4.1.4.4.3.1.1.1">=</span></sup></span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T4.1.4.4.4" style="padding:0.5pt 1.5pt;">3.25</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S4.T4.1.4.4.5" style="padding:0.5pt 1.5pt;">2.93</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T4.1.4.4.6" style="padding:0.5pt 1.5pt;">4.53<sup class="ltx_sup" id="S4.T4.1.4.4.6.1">=</sup>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S4.T4.1.4.4.7" style="padding:0.5pt 1.5pt;">4.44<sup class="ltx_sup" id="S4.T4.1.4.4.7.1">=</sup>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T4.1.4.4.8" style="padding:0.5pt 1.5pt;">3.81<sup class="ltx_sup" id="S4.T4.1.4.4.8.1">=</sup>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T4.1.4.4.9" style="padding:0.5pt 1.5pt;">3.59<sup class="ltx_sup" id="S4.T4.1.4.4.9.1">=</sup>
</td>
</tr>
<tr class="ltx_tr" id="S4.T4.1.5.5">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="S4.T4.1.5.5.1" style="padding:0.5pt 1.5pt;">+ Shuffled</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T4.1.5.5.2" style="padding:0.5pt 1.5pt;">
<span class="ltx_text ltx_font_bold" id="S4.T4.1.5.5.2.1">2.79</span>*</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S4.T4.1.5.5.3" style="padding:0.5pt 1.5pt;">2.15<sup class="ltx_sup" id="S4.T4.1.5.5.3.1">=</sup>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T4.1.5.5.4" style="padding:0.5pt 1.5pt;">3.41</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S4.T4.1.5.5.5" style="padding:0.5pt 1.5pt;">3.03</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T4.1.5.5.6" style="padding:0.5pt 1.5pt;">
<span class="ltx_text ltx_font_bold" id="S4.T4.1.5.5.6.1">4.66</span>*</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S4.T4.1.5.5.7" style="padding:0.5pt 1.5pt;">
<span class="ltx_text ltx_font_bold" id="S4.T4.1.5.5.7.1">4.55</span>*</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T4.1.5.5.8" style="padding:0.5pt 1.5pt;">
<span class="ltx_text ltx_font_bold" id="S4.T4.1.5.5.8.1">3.97</span>*</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T4.1.5.5.9" style="padding:0.5pt 1.5pt;">
<span class="ltx_text ltx_font_bold" id="S4.T4.1.5.5.9.1">3.69</span>*</td>
</tr>
<tr class="ltx_tr" id="S4.T4.1.6.6">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_t" id="S4.T4.1.6.6.1" style="padding:0.5pt 1.5pt;">Llama 3.2 3B</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T4.1.6.6.2" style="padding:0.5pt 1.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.1.6.6.2.1">4.39</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r ltx_border_t" id="S4.T4.1.6.6.3" style="padding:0.5pt 1.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.1.6.6.3.1">4.05</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T4.1.6.6.4" style="padding:0.5pt 1.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.1.6.6.4.1">4.40</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r ltx_border_t" id="S4.T4.1.6.6.5" style="padding:0.5pt 1.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.1.6.6.5.1">4.19</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T4.1.6.6.6" style="padding:0.5pt 1.5pt;">4.82</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r ltx_border_t" id="S4.T4.1.6.6.7" style="padding:0.5pt 1.5pt;">4.74</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T4.1.6.6.8" style="padding:0.5pt 1.5pt;">4.28</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T4.1.6.6.9" style="padding:0.5pt 1.5pt;">4.11</td>
</tr>
<tr class="ltx_tr" id="S4.T4.1.7.7">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="S4.T4.1.7.7.1" style="padding:0.5pt 1.5pt;">+ Standard</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T4.1.7.7.2" style="padding:0.5pt 1.5pt;">4.22</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S4.T4.1.7.7.3" style="padding:0.5pt 1.5pt;">3.80</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T4.1.7.7.4" style="padding:0.5pt 1.5pt;">4.19</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S4.T4.1.7.7.5" style="padding:0.5pt 1.5pt;">4.02</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T4.1.7.7.6" style="padding:0.5pt 1.5pt;">
<span class="ltx_text ltx_font_bold" id="S4.T4.1.7.7.6.1">4.90</span>*</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S4.T4.1.7.7.7" style="padding:0.5pt 1.5pt;">
<span class="ltx_text ltx_font_bold" id="S4.T4.1.7.7.7.1">4.85</span>*</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T4.1.7.7.8" style="padding:0.5pt 1.5pt;">4.41*</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T4.1.7.7.9" style="padding:0.5pt 1.5pt;">4.21*</td>
</tr>
<tr class="ltx_tr" id="S4.T4.1.8.8">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="S4.T4.1.8.8.1" style="padding:0.5pt 1.5pt;">+ Shuffled</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T4.1.8.8.2" style="padding:0.5pt 1.5pt;">3.84</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S4.T4.1.8.8.3" style="padding:0.5pt 1.5pt;">3.38</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T4.1.8.8.4" style="padding:0.5pt 1.5pt;">4.25</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S4.T4.1.8.8.5" style="padding:0.5pt 1.5pt;">4.02</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T4.1.8.8.6" style="padding:0.5pt 1.5pt;">4.89*</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S4.T4.1.8.8.7" style="padding:0.5pt 1.5pt;">4.84*</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T4.1.8.8.8" style="padding:0.5pt 1.5pt;">
<span class="ltx_text ltx_font_bold" id="S4.T4.1.8.8.8.1">4.49</span>*</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T4.1.8.8.9" style="padding:0.5pt 1.5pt;">
<span class="ltx_text ltx_font_bold" id="S4.T4.1.8.8.9.1">4.23</span>*</td>
</tr>
<tr class="ltx_tr" id="S4.T4.1.9.9">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_t" id="S4.T4.1.9.9.1" style="padding:0.5pt 1.5pt;">Llama 3.1 8B</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T4.1.9.9.2" style="padding:0.5pt 1.5pt;">4.55</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r ltx_border_t" id="S4.T4.1.9.9.3" style="padding:0.5pt 1.5pt;">4.34</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T4.1.9.9.4" style="padding:0.5pt 1.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.1.9.9.4.1">4.64</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r ltx_border_t" id="S4.T4.1.9.9.5" style="padding:0.5pt 1.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.1.9.9.5.1">4.52</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T4.1.9.9.6" style="padding:0.5pt 1.5pt;">4.88</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r ltx_border_t" id="S4.T4.1.9.9.7" style="padding:0.5pt 1.5pt;">4.78</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T4.1.9.9.8" style="padding:0.5pt 1.5pt;">4.18</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T4.1.9.9.9" style="padding:0.5pt 1.5pt;">4.06</td>
</tr>
<tr class="ltx_tr" id="S4.T4.1.10.10">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="S4.T4.1.10.10.1" style="padding:0.5pt 1.5pt;">+ Standard</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T4.1.10.10.2" style="padding:0.5pt 1.5pt;">
<span class="ltx_text ltx_font_bold" id="S4.T4.1.10.10.2.1">4.63</span>*</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S4.T4.1.10.10.3" style="padding:0.5pt 1.5pt;">
<span class="ltx_text ltx_font_bold" id="S4.T4.1.10.10.3.1">4.41</span>*</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T4.1.10.10.4" style="padding:0.5pt 1.5pt;">4.53</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S4.T4.1.10.10.5" style="padding:0.5pt 1.5pt;">4.44</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T4.1.10.10.6" style="padding:0.5pt 1.5pt;">4.94*</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S4.T4.1.10.10.7" style="padding:0.5pt 1.5pt;">
<span class="ltx_text ltx_font_bold" id="S4.T4.1.10.10.7.1">4.93</span>*</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T4.1.10.10.8" style="padding:0.5pt 1.5pt;">4.64*</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T4.1.10.10.9" style="padding:0.5pt 1.5pt;">
<span class="ltx_text ltx_font_bold" id="S4.T4.1.10.10.9.1">4.42</span>*</td>
</tr>
<tr class="ltx_tr" id="S4.T4.1.11.11">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="S4.T4.1.11.11.1" style="padding:0.5pt 1.5pt;">+ Shuffled</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T4.1.11.11.2" style="padding:0.5pt 1.5pt;">4.59*</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S4.T4.1.11.11.3" style="padding:0.5pt 1.5pt;">4.34<sup class="ltx_sup" id="S4.T4.1.11.11.3.1">=</sup>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T4.1.11.11.4" style="padding:0.5pt 1.5pt;">4.55</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S4.T4.1.11.11.5" style="padding:0.5pt 1.5pt;">4.44</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T4.1.11.11.6" style="padding:0.5pt 1.5pt;">
<span class="ltx_text ltx_font_bold" id="S4.T4.1.11.11.6.1">4.97</span>*</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S4.T4.1.11.11.7" style="padding:0.5pt 1.5pt;">4.92*</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T4.1.11.11.8" style="padding:0.5pt 1.5pt;">
<span class="ltx_text ltx_font_bold" id="S4.T4.1.11.11.8.1">4.68</span>*</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T4.1.11.11.9" style="padding:0.5pt 1.5pt;">4.41*</td>
</tr>
<tr class="ltx_tr" id="S4.T4.1.12.12">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_t" id="S4.T4.1.12.12.1" style="padding:0.5pt 1.5pt;">Mistral Nemo 2407</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T4.1.12.12.2" style="padding:0.5pt 1.5pt;">4.27</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r ltx_border_t" id="S4.T4.1.12.12.3" style="padding:0.5pt 1.5pt;">4.09</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T4.1.12.12.4" style="padding:0.5pt 1.5pt;">3.83</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r ltx_border_t" id="S4.T4.1.12.12.5" style="padding:0.5pt 1.5pt;">3.85</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T4.1.12.12.6" style="padding:0.5pt 1.5pt;">4.27</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r ltx_border_t" id="S4.T4.1.12.12.7" style="padding:0.5pt 1.5pt;">4.15</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T4.1.12.12.8" style="padding:0.5pt 1.5pt;">3.15</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T4.1.12.12.9" style="padding:0.5pt 1.5pt;">3.23</td>
</tr>
<tr class="ltx_tr" id="S4.T4.1.13.13">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="S4.T4.1.13.13.1" style="padding:0.5pt 1.5pt;">+ Standard</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T4.1.13.13.2" style="padding:0.5pt 1.5pt;">4.43*</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S4.T4.1.13.13.3" style="padding:0.5pt 1.5pt;">4.24*</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T4.1.13.13.4" style="padding:0.5pt 1.5pt;">4.03*</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S4.T4.1.13.13.5" style="padding:0.5pt 1.5pt;">4.04*</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T4.1.13.13.6" style="padding:0.5pt 1.5pt;">4.54*</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S4.T4.1.13.13.7" style="padding:0.5pt 1.5pt;">4.47*</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T4.1.13.13.8" style="padding:0.5pt 1.5pt;">
<span class="ltx_text ltx_font_bold" id="S4.T4.1.13.13.8.1">3.79</span>*</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T4.1.13.13.9" style="padding:0.5pt 1.5pt;">
<span class="ltx_text ltx_font_bold" id="S4.T4.1.13.13.9.1">3.75</span>*</td>
</tr>
<tr class="ltx_tr" id="S4.T4.1.14.14">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="S4.T4.1.14.14.1" style="padding:0.5pt 1.5pt;">+ Shuffled</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T4.1.14.14.2" style="padding:0.5pt 1.5pt;">
<span class="ltx_text ltx_font_bold" id="S4.T4.1.14.14.2.1">4.53</span>*</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S4.T4.1.14.14.3" style="padding:0.5pt 1.5pt;">
<span class="ltx_text ltx_font_bold" id="S4.T4.1.14.14.3.1">4.35</span>*</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T4.1.14.14.4" style="padding:0.5pt 1.5pt;">
<span class="ltx_text ltx_font_bold" id="S4.T4.1.14.14.4.1">4.18</span>*</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S4.T4.1.14.14.5" style="padding:0.5pt 1.5pt;">
<span class="ltx_text ltx_font_bold" id="S4.T4.1.14.14.5.1">4.12</span>*</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T4.1.14.14.6" style="padding:0.5pt 1.5pt;">
<span class="ltx_text ltx_font_bold" id="S4.T4.1.14.14.6.1">4.65</span>*</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S4.T4.1.14.14.7" style="padding:0.5pt 1.5pt;">
<span class="ltx_text ltx_font_bold" id="S4.T4.1.14.14.7.1">4.49</span>*</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T4.1.14.14.8" style="padding:0.5pt 1.5pt;">3.49*</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T4.1.14.14.9" style="padding:0.5pt 1.5pt;">3.41*</td>
</tr>
<tr class="ltx_tr" id="S4.T4.1.15.15">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_t" id="S4.T4.1.15.15.1" style="padding:0.5pt 1.5pt;">Mixtral 8x7B</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T4.1.15.15.2" style="padding:0.5pt 1.5pt;">4.02</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r ltx_border_t" id="S4.T4.1.15.15.3" style="padding:0.5pt 1.5pt;">3.99</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T4.1.15.15.4" style="padding:0.5pt 1.5pt;">4.28</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r ltx_border_t" id="S4.T4.1.15.15.5" style="padding:0.5pt 1.5pt;">4.22</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T4.1.15.15.6" style="padding:0.5pt 1.5pt;">4.78</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r ltx_border_t" id="S4.T4.1.15.15.7" style="padding:0.5pt 1.5pt;">4.68</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T4.1.15.15.8" style="padding:0.5pt 1.5pt;">3.95</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T4.1.15.15.9" style="padding:0.5pt 1.5pt;">3.89</td>
</tr>
<tr class="ltx_tr" id="S4.T4.1.16.16">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="S4.T4.1.16.16.1" style="padding:0.5pt 1.5pt;">+ Standard</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T4.1.16.16.2" style="padding:0.5pt 1.5pt;">
<span class="ltx_text ltx_font_bold" id="S4.T4.1.16.16.2.1">4.52</span>*</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S4.T4.1.16.16.3" style="padding:0.5pt 1.5pt;">4.35*</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T4.1.16.16.4" style="padding:0.5pt 1.5pt;">
<span class="ltx_text ltx_font_bold" id="S4.T4.1.16.16.4.1">4.45</span>*</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S4.T4.1.16.16.5" style="padding:0.5pt 1.5pt;">
<span class="ltx_text ltx_font_bold" id="S4.T4.1.16.16.5.1">4.40</span>*</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T4.1.16.16.6" style="padding:0.5pt 1.5pt;">
<span class="ltx_text ltx_font_bold" id="S4.T4.1.16.16.6.1">4.84</span>*</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S4.T4.1.16.16.7" style="padding:0.5pt 1.5pt;">
<span class="ltx_text ltx_font_bold" id="S4.T4.1.16.16.7.1">4.72</span>*</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T4.1.16.16.8" style="padding:0.5pt 1.5pt;">4.26*</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T4.1.16.16.9" style="padding:0.5pt 1.5pt;">4.13*</td>
</tr>
<tr class="ltx_tr" id="S4.T4.1.17.17">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="S4.T4.1.17.17.1" style="padding:0.5pt 1.5pt;">+ Shuffled</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T4.1.17.17.2" style="padding:0.5pt 1.5pt;">4.51*</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S4.T4.1.17.17.3" style="padding:0.5pt 1.5pt;">
<span class="ltx_text ltx_font_bold" id="S4.T4.1.17.17.3.1">4.40</span>*</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T4.1.17.17.4" style="padding:0.5pt 1.5pt;">4.44*</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S4.T4.1.17.17.5" style="padding:0.5pt 1.5pt;">4.38*</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T4.1.17.17.6" style="padding:0.5pt 1.5pt;">4.79<sup class="ltx_sup" id="S4.T4.1.17.17.6.1">=</sup>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S4.T4.1.17.17.7" style="padding:0.5pt 1.5pt;">4.68<sup class="ltx_sup" id="S4.T4.1.17.17.7.1">=</sup>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T4.1.17.17.8" style="padding:0.5pt 1.5pt;">
<span class="ltx_text ltx_font_bold" id="S4.T4.1.17.17.8.1">4.33</span>*</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T4.1.17.17.9" style="padding:0.5pt 1.5pt;">
<span class="ltx_text ltx_font_bold" id="S4.T4.1.17.17.9.1">4.18</span>*</td>
</tr>
<tr class="ltx_tr" id="S4.T4.1.18.18">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_bb ltx_border_tt" id="S4.T4.1.18.18.1" style="padding:0.5pt 1.5pt;">GPT 4o Mini</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb ltx_border_tt" id="S4.T4.1.18.18.2" style="padding:0.5pt 1.5pt;"><span class="ltx_text ltx_font_italic" id="S4.T4.1.18.18.2.1">4.98</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb ltx_border_r ltx_border_tt" id="S4.T4.1.18.18.3" style="padding:0.5pt 1.5pt;"><span class="ltx_text ltx_font_italic" id="S4.T4.1.18.18.3.1">4.92</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb ltx_border_tt" id="S4.T4.1.18.18.4" style="padding:0.5pt 1.5pt;"><span class="ltx_text ltx_font_italic" id="S4.T4.1.18.18.4.1">4.93</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb ltx_border_r ltx_border_tt" id="S4.T4.1.18.18.5" style="padding:0.5pt 1.5pt;"><span class="ltx_text ltx_font_italic" id="S4.T4.1.18.18.5.1">4.77</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb ltx_border_tt" id="S4.T4.1.18.18.6" style="padding:0.5pt 1.5pt;"><span class="ltx_text ltx_font_italic" id="S4.T4.1.18.18.6.1">4.99</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb ltx_border_r ltx_border_tt" id="S4.T4.1.18.18.7" style="padding:0.5pt 1.5pt;"><span class="ltx_text ltx_font_italic" id="S4.T4.1.18.18.7.1">4.98</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb ltx_border_tt" id="S4.T4.1.18.18.8" style="padding:0.5pt 1.5pt;"><span class="ltx_text ltx_font_italic" id="S4.T4.1.18.18.8.1">4.94</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb ltx_border_tt" id="S4.T4.1.18.18.9" style="padding:0.5pt 1.5pt;"><span class="ltx_text ltx_font_italic" id="S4.T4.1.18.18.9.1">4.76</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 Table 4 presents the results of evaluating the relevance and consistency of summaries generated by different LLMs.  Relevance and consistency were assessed using an automatic evaluator (GPT-4o-mini) and previously validated prompts.  Statistical significance was determined using non-overlapping bootstrapped confidence intervals. The table includes results for four datasets, categorized as single-document or multi-document tasks.  Abbreviations for the datasets are provided.
> <details>
> <summary>read the caption</summary>
> Table 4: Relevance and consistency of generated summaries. Relevance and consistency are measured using an autorater (GPT-4o-mini) Liu et al. (2023) based on previously validated prompts Liu et al. (2024b). * indicates significance as measured by non-overlapping bootstrapped confidence intervals with the baseline. = indicates no significant difference from baseline. S indicates single document tasks, M indicates multi-document. SLT is SQuALITY, LAS is LexAbSumm, SH is SummHay, and SQB is ScholarQABench.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="A4.T5.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A4.T5.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_r ltx_border_tt" id="A4.T5.1.1.1.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">Model</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A4.T5.1.1.1.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">Huggingface Identifier</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A4.T5.1.2.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="A4.T5.1.2.1.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">Llama 3.2 1B</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T5.1.2.1.2" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text ltx_font_typewriter" id="A4.T5.1.2.1.2.1">meta-llama/Llama-3.2-1B-Instruct</span></td>
</tr>
<tr class="ltx_tr" id="A4.T5.1.3.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A4.T5.1.3.2.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">Llama 3.2 3B</th>
<td class="ltx_td ltx_align_center" id="A4.T5.1.3.2.2" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text ltx_font_typewriter" id="A4.T5.1.3.2.2.1">meta-llama/Llama-3.2-3B-Instruct</span></td>
</tr>
<tr class="ltx_tr" id="A4.T5.1.4.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A4.T5.1.4.3.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">Llama 3.1 8B</th>
<td class="ltx_td ltx_align_center" id="A4.T5.1.4.3.2" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text ltx_font_typewriter" id="A4.T5.1.4.3.2.1">meta-llama/Meta-Llama-3.1-8B-Instruct</span></td>
</tr>
<tr class="ltx_tr" id="A4.T5.1.5.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A4.T5.1.5.4.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">Mistral Nemo 2407</th>
<td class="ltx_td ltx_align_center" id="A4.T5.1.5.4.2" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text ltx_font_typewriter" id="A4.T5.1.5.4.2.1">mistralai/Mistral-Nemo-Instruct-2407</span></td>
</tr>
<tr class="ltx_tr" id="A4.T5.1.6.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_r" id="A4.T5.1.6.5.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">Mixtral 8x7B</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T5.1.6.5.2" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text ltx_font_typewriter" id="A4.T5.1.6.5.2.1">mistralai/Mixtral-8x7B-Instruct-v0.1</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table lists the Hugging Face model identifiers used in the paper's experiments.  For each model, the identifier is provided, allowing researchers to easily locate and access the specific model version used for reproducibility.  The models represent a range of sizes and architectures, offering a comprehensive comparison across different LLMs.
> <details>
> <summary>read the caption</summary>
> Table 5: Huggingface identifiers for models used in our experiments.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2502.14409/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.14409/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.14409/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.14409/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.14409/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.14409/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.14409/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.14409/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.14409/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.14409/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.14409/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.14409/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.14409/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.14409/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.14409/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.14409/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.14409/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.14409/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.14409/19.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.14409/20.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}