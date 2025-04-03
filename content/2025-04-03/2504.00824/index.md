---
title: "ScholarCopilot: Training Large Language Models for Academic Writing with Accurate Citations"
summary: "ScholarCopilot: Accurate citations for academic writing with LLMs."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Natural Language Processing", "Text Generation", "🏢 University of Waterloo",]
showSummary: true
date: 2025-04-01
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2504.00824 {{< /keyword >}}
{{< keyword icon="writer" >}} Yubo Wang et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-04-03 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2504.00824" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2504.00824" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2504.00824/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Academic writing demands accurate citations, but existing Retrieval-Augmented Generation (RAG) systems fall short in this area. Traditional RAG systems use a **first-retrieve-then-generate pipeline**, which doesn't adapt to the evolving context of the writing. This leads to issues like misalignment of retrieval and generation models, inflexible retrieval decisions, and limited user control. 



This paper introduces **ScholarCopilot, a new RAG framework designed for academic writing**. It dynamically determines when to retrieve citations by generating a special retrieval token during text generation. The retrieved references are then integrated into the text. The model is trained on a large dataset of arXiv papers and outperforms existing methods in retrieval accuracy and generation quality. User studies validate its effectiveness in improving citation accuracy and writing efficiency.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} ScholarCopilot dynamically retrieves and integrates citations during text generation, improving accuracy and relevance. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} The model achieves state-of-the-art retrieval accuracy and surpasses larger models in generation quality on academic writing tasks. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} User studies confirm ScholarCopilot's effectiveness in citation recall, writing efficiency, and overall user experience. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper introduces a novel RAG framework for academic writing, advancing AI-assisted research by enhancing citation accuracy and writing quality. It opens new research directions in integrating retrieval and generation for specialized domains.

------
#### Visual Insights



![](https://arxiv.org/html/2504.00824/x1.png)

> 🔼 This figure compares traditional Retrieval-Augmented Generation (RAG) systems with the ScholarCopilot system. Traditional RAG systems perform retrieval and generation as separate steps, which can lead to inconsistencies. In contrast, ScholarCopilot integrates these processes by dynamically generating retrieval tokens within the generation process, leading to more contextually relevant and accurate citations.
> <details>
> <summary>read the caption</summary>
> Figure 1: Comparison of traditional Retrieval-Augmented Generation (RAG) systems and our proposed ScholarCopilot. Traditional RAG systems (left) separately perform retrieval and generation, leading to representation misalignment. In contrast, ScholarCopilot (right) dynamically generates retrieval tokens ([RET]) during text generation for integrated and context-aware reference retrieval.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S4.T1.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T1.1.2.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_r ltx_border_tt" id="S4.T1.1.2.1.1"><span class="ltx_text ltx_font_bold" id="S4.T1.1.2.1.1.1">Model</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T1.1.2.1.2"><span class="ltx_text ltx_font_bold" id="S4.T1.1.2.1.2.1">Relevance</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T1.1.2.1.3"><span class="ltx_text ltx_font_bold" id="S4.T1.1.2.1.3.1">Coherence</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T1.1.2.1.4"><span class="ltx_text ltx_font_bold" id="S4.T1.1.2.1.4.1">Academic</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T1.1.2.1.5"><span class="ltx_text ltx_font_bold" id="S4.T1.1.2.1.5.1">Completeness</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="S4.T1.1.2.1.6"><span class="ltx_text ltx_font_bold" id="S4.T1.1.2.1.6.1">Innovation</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T1.1.2.1.7"><span class="ltx_text ltx_font_bold" id="S4.T1.1.2.1.7.1">Total</span></th>
</tr>
<tr class="ltx_tr" id="S4.T1.1.3.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_th_row ltx_border_t" colspan="7" id="S4.T1.1.3.2.1">Groundtruth Citations</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T1.1.4.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S4.T1.1.4.1.1">Qwen-2.5-7B-gt</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.4.1.2">3.27</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.4.1.3">3.07</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.4.1.4">2.52</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.4.1.5">2.77</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.1.4.1.6">2.82</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.4.1.7">14.44</td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.5.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T1.1.5.2.1">Qwen-2.5-72B-gt</th>
<td class="ltx_td ltx_align_center" id="S4.T1.1.5.2.2">3.73</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.5.2.3">3.71</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.5.2.4">3.00</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.5.2.5">3.11</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.1.5.2.6">3.28</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.5.2.7">16.82</td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.6.3">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" colspan="7" id="S4.T1.1.6.3.1">Retrieved Citations</th>
</tr>
<tr class="ltx_tr" id="S4.T1.1.7.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S4.T1.1.7.4.1">Qwen-2.5-7B-re</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.7.4.2">3.16</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.7.4.3">3.30</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.7.4.4">2.26</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.7.4.5">2.41</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.1.7.4.6">2.80</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.7.4.7">13.94</td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.8.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T1.1.8.5.1">Qwen-2.5-72B-re</th>
<td class="ltx_td ltx_align_center" id="S4.T1.1.8.5.2">3.56</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.8.5.3">3.61</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.8.5.4">2.68</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.8.5.5">2.84</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.1.8.5.6">3.12</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.8.5.7">15.81</td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.9.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S4.T1.1.9.6.1">ScholarCopilot</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.9.6.2">3.63</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.9.6.3">3.66</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.9.6.4">2.87</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.9.6.5">2.89</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.1.9.6.6">3.17</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.9.6.7">16.21</td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_r" id="S4.T1.1.1.1">
<math alttext="\Delta" class="ltx_Math" display="inline" id="S4.T1.1.1.1.m1.1"><semantics id="S4.T1.1.1.1.m1.1a"><mi id="S4.T1.1.1.1.m1.1.1" mathvariant="normal" xref="S4.T1.1.1.1.m1.1.1.cmml">Δ</mi><annotation-xml encoding="MathML-Content" id="S4.T1.1.1.1.m1.1b"><ci id="S4.T1.1.1.1.m1.1.1.cmml" xref="S4.T1.1.1.1.m1.1.1">Δ</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.1.1.1.m1.1c">\Delta</annotation><annotation encoding="application/x-llamapun" id="S4.T1.1.1.1.m1.1d">roman_Δ</annotation></semantics></math> (Ours - 72B)</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.1.1.2">+0.07</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.1.1.3">+0.05</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.1.1.4">+0.09</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.1.1.5">+ 0.04</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S4.T1.1.1.6">+0.05</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.1.1.7">+0.4</td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 This table presents the results of a GPT-4 evaluation of generated text quality across five dimensions: Relevance, Coherence, Academic rigor, Completeness, and Innovation.  Each dimension is rated on a scale of 1 to 5, with higher scores indicating better quality. The 'Total' score represents the sum of the five individual dimension scores, with a maximum possible score of 25.  The table compares the performance of ScholarCopilot to several baseline models, including those with and without ground truth citations, to highlight ScholarCopilot's performance relative to different retrieval and generation capabilities.
> <details>
> <summary>read the caption</summary>
> Table 1: Generation quality evaluation results by GPT-4o. All scores are on a scale of 1-5, except for Total which is the sum (max 25).
> </details>





### In-depth insights


#### Citation Accuracy
Based on the research paper provided, citation accuracy is a crucial aspect. The study revealed that ScholarCopilot notably **improved citation accuracy**. One major factor contributing to this is its design to dynamically retrieve citations based on evolving generation contexts, rather than relying on a static, predetermined retrieval process. This ensures more **relevant and context-aware citations**. Results showed superior performance to baselines like E5-Mistral-7B-Instruct and BM25. Human evaluations further substantiated this, with **perfect positive ratings for citation accuracy**. This suggests that ScholarCopilot's architecture, facilitates a significant advancement in producing scholarly content with accurate references.

#### Iterative RAG
Iterative RAG, as opposed to the traditional 'retrieve-then-generate' approach, represents a significant advancement in retrieval-augmented generation. **By interleaving retrieval and generation**, it allows the model to dynamically adjust its retrieval strategy based on the evolving context. **This adaptability is crucial** for tasks requiring nuanced understanding, where the information needs shift throughout the generation process. Models like FLARE and SelfRAG have shown promising results in improving factual accuracy through iterative retrieval. **The key is to refine retrieval queries** using the context generated so far, leading to more relevant and coherent content. However, effectively managing the increased complexity and computational cost associated with repeated retrieval remains a key challenge.

#### Unified Model
While the paper does not have a section explictly titled 'Unified Model,' the concept is central to ScholarCopilot. It pioneers a unified framework for **dynamic retrieval** and generation, adaptively retrieving citations based on evolving contexts unlike static RAG. This **joint optimization** of retrieval token learning and text generation ensures efficient citation and maintains generation quality. By dynamically determining when to retrieve references, ScholarCopilot enables context-aware citation, achieving improved citation accuracy and overall writing quality while overcoming limitations such as misalignment. The result is a more coherent and accurate academic writing process, outperforming larger models.

#### Human Feedback
**Human feedback is crucial** in evaluating AI systems like ScholarCopilot. By involving users in the loop, we can gain valuable insights into the system's strengths and weaknesses. User studies with academic writers are essential to understand how ScholarCopilot impacts their workflow, citation accuracy, and overall writing quality.  Feedback on ease of use, response time, and interface clarity is also important to improve user experience. Comparative analysis against existing tools like ChatGPT provides a benchmark for evaluating ScholarCopilot's effectiveness. Qualitative data from open-ended questions can reveal specific areas for improvement and new feature suggestions.  A mixed-methods approach combining quantitative ratings and qualitative feedback offers a comprehensive understanding of user perceptions and helps to identify potential biases. Analyzing content generation records can help to determine the system's performance across different academic subjects and identify areas where it may struggle. Continuous human feedback is vital for iterative development and refinement, ensuring that ScholarCopilot aligns with the needs and expectations of academic writers.

#### ArXiv Dataset
The paper details the construction of a large-scale dataset from arXiv, comprising **670K computer science papers**, which are used to train and evaluate ScholarCopilot. The dataset creation involved several key stages: **paper collection, structure parsing, citation extraction, reference matching, and dataset integration**. A significant effort was dedicated to extracting citation information from bibliographic entries, leveraging the Qwen-2.5-3B-Instruct model to robustly extract paper titles. This comprehensive dataset, with an average of **33 matched citations per paper**, facilitates robust learning of academic writing patterns and citation-aware scholarly practices. The meticulous curation and large scale are essential for training a model capable of accurately generating academic text with appropriate citations.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2504.00824/x2.png)

> 🔼 This figure illustrates the key difference between traditional Retrieval Augmented Generation (RAG) and the ScholarCopilot method. Traditional RAG systems perform retrieval and generation as two separate steps.  First, a query is submitted to a retriever to obtain relevant documents. Then, these documents are fed into a language model generator to create the output text. This separation limits the dynamic adaptation to the evolving context during text generation. In contrast, ScholarCopilot integrates both retrieval and generation iteratively. It dynamically generates special tokens ([RET]) during the text generation process. These tokens act as triggers for the retrieval process, which then integrates the retrieved information into the ongoing text generation in a context-aware manner. This iterative process allows for a more flexible and refined approach to both content generation and citation insertion, enhancing the accuracy and relevance of citations.
> <details>
> <summary>read the caption</summary>
> Figure 2: Comparison between traditional Retrieval-Augmented Generation (RAG) methods (left) and ScholarCopilot (right). Traditional RAG follows a static retrieval-then-generation pipeline, retrieving references independently before generation. ScholarCopilot dynamically interleaves retrieval and generation by producing retrieval tokens ([RET]) based on current context, enabling context-aware citation retrieval and optional user refinement.
> </details>



![](https://arxiv.org/html/2504.00824/x3.png)

> 🔼 The figure illustrates the process of building the ScholarCopilot dataset.  It starts with collecting 670,000 computer science papers from arXiv. These papers are then parsed to extract structured information and bibliographic entries, resulting in 501,000 papers. The citations from these papers are matched against citations in both the arXiv and Semantic Scholar databases. The resulting dataset contains 10 million citations from arXiv and 6.8 million from Semantic Scholar.  Importantly, although the training data incorporates citations from both sources, at inference time only the 670,000 arXiv papers are used to ensure reference quality.
> <details>
> <summary>read the caption</summary>
> Figure 3: The pipeline for creating the ScholarCopilot dataset. Our final dataset includes 10M citations matched from arXiv and 6.8M citations matched from Semantic Scholar (one paper may be cited by multiple articles). However, at inference time, to ensure reference quality, we only use the 670K articles from arXiv as the corpus.
> </details>



![](https://arxiv.org/html/2504.00824/x4.png)

> 🔼 This figure illustrates the unified training framework of ScholarCopilot, which simultaneously optimizes text generation and citation retrieval.  The model uses retrieval tokens ([RET]) to dynamically trigger the retrieval of relevant citations from a database. These tokens act as signals for when to pause the text generation process and consult the database.  The system uses contrastive learning; the model learns to distinguish between positive (relevant) citation-query pairs (<q,d+>) and negative (irrelevant) citation-query pairs (<q,d->). Notably, the generation and retrieval models share parameters, making the system more efficient.  The example in the figure shows how two papers (Paper 1 and Paper 2) can be considered hard negatives during training, meaning they are highly similar yet represent different relevant citations.
> <details>
> <summary>read the caption</summary>
> Figure 4: Unified training framework of ScholarCopilot. The architecture jointly optimizes the next token prediction loss for text generation and the contrastive loss for citation retrieval. Retrieval tokens ([RET]) dynamically trigger retrieval. <q,d+><q,d^{+}>< italic_q , italic_d start_POSTSUPERSCRIPT + end_POSTSUPERSCRIPT > indicates the positive pair of query and document during contrastive learning, and <q,d−><q,d^{-}>< italic_q , italic_d start_POSTSUPERSCRIPT - end_POSTSUPERSCRIPT > indicates the negative pair. The generation model and retrieval model share parameters. In this figure, Paper 1 and Paper 2 can be considered as hard negatives for each other.
> </details>



![](https://arxiv.org/html/2504.00824/x5.png)

> 🔼 Figure 5 presents a detailed comparison of the citation retrieval performance achieved by ScholarCopilot against two established baseline methods: BM25 and E5-Mistral-7B-Instruct.  The graph displays Recall@k values for k = 1 to 10. Recall@k indicates the percentage of times the correct citation was found among the top k retrieved results. This visualization effectively showcases ScholarCopilot's superior performance across all recall levels, highlighting a substantial improvement over both BM25 and E5-Mistral-7B-Instruct.
> <details>
> <summary>read the caption</summary>
> Figure 5: Comparison of citation retrieval performance (Recall@k) between ScholarCopilot and baseline retrieval methods (BM25 and E5-Mistral-7B-Instruct).
> </details>



![](https://arxiv.org/html/2504.00824/x6.png)

> 🔼 This figure presents a bar chart summarizing the results of a user study evaluating ScholarCopilot.  Three main categories are evaluated: citation quality, user experience, and content quality.  Each category is further broken down into several sub-metrics which are shown as individual bars within each category.  The height of each bar represents the average rating (on a scale of 1-5, presumably) given by the 10 participants (N=10) in the study. The color coding helps distinguish between the three main categories of evaluation.
> <details>
> <summary>read the caption</summary>
> (a) Average ratings for ScholarCopilot across evaluation dimensions: citation quality (yellow), user experience (green), and content quality (purple), from user study (N=10).
> </details>



![](https://arxiv.org/html/2504.00824/x7.png)

> 🔼 This figure displays a comparative analysis of ScholarCopilot and ChatGPT across five key aspects: Citation Quality, Writing Quality, Ease of Use, Time Efficiency, and Overall Usefulness.  Each aspect is represented by a bar graph, with the height of the bar representing the percentage of participants who rated ScholarCopilot more favorably than ChatGPT. The use of darker shades of blue indicates a higher percentage of positive ratings for ScholarCopilot in each category, allowing for a visual comparison of user preferences between the two tools.
> <details>
> <summary>read the caption</summary>
> (b) Comparative analysis of ScholarCopilot vs. ChatGPT across five dimensions: Citation Quality, Writing Quality, Ease of Use, Time Efficiency, and Overall Usefulness. Darker blue indicates higher percentages of ratings.
> </details>



![](https://arxiv.org/html/2504.00824/x8.png)

> 🔼 This figure presents the results of a human evaluation study comparing ScholarCopilot and ChatGPT.  The left subplot (6a) shows the average ratings across several dimensions, including citation quality, user experience, and content quality. Each dimension was rated on a 5-point Likert scale, and the bars represent the mean ratings for ScholarCopilot across multiple user tasks. The right subplot (6b) presents a comparative analysis of ScholarCopilot and ChatGPT across various aspects (citation quality, writing quality, ease of use, time efficiency, and overall usefulness). Each bar graph within this subplot indicates the percentage of participants who rated ScholarCopilot as better, similar, or worse than ChatGPT on each specific aspect. This allows for a direct comparison of user perception regarding the performance and utility of both systems. 
> <details>
> <summary>read the caption</summary>
> Figure 6: Human evaluation of ScholarCopilot and comparative analysis with ChatGPT
> </details>



![](https://arxiv.org/html/2504.00824/x9.png)

> 🔼 This page shows the first page of the questionnaire used in a user study evaluating ScholarCopilot.  It gathers demographic information about participants (name, education level, experience with academic writing and ChatGPT). It also collects information about the academic topics participants wrote about using ScholarCopilot, and asks for ratings on a 1-5 Likert scale for various metrics related to citation quality, user experience, and content quality.
> <details>
> <summary>read the caption</summary>
> Figure 7: Human Study Questionnaire Page 1
> </details>



![](https://arxiv.org/html/2504.00824/x10.png)

> 🔼 This questionnaire page gathers user feedback on ScholarCopilot, focusing on citation quality, user experience, and content quality.  Users rate various aspects on a 5-point Likert scale, providing both quantitative and qualitative feedback.  They also compare ScholarCopilot to ChatGPT across multiple criteria and provide open-ended responses about their experience and suggestions for improvement.
> <details>
> <summary>read the caption</summary>
> Figure 8: Human Study Questionnaire Page 2
> </details>



![](https://arxiv.org/html/2504.00824/x11.png)

> 🔼 This page of the human study questionnaire collects final comments from participants and records of the content generated by ScholarCopilot for three different topics.  For each topic, participants provide the topic title, the section of the paper generated (e.g., introduction, related work), the generated content itself, and a list of citations suggested by the tool.
> <details>
> <summary>read the caption</summary>
> Figure 9: Human Study Questionnaire Page 3
> </details>



</details>






### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2504.00824/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.00824/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.00824/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.00824/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.00824/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.00824/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.00824/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.00824/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.00824/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.00824/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.00824/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.00824/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.00824/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.00824/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.00824/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.00824/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.00824/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.00824/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.00824/19.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.00824/20.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}