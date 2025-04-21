---
title: "AI-University: An LLM-based platform for instructional alignment to scientific classrooms"
summary: "AI-University (AI-U): LLM-based platform for instructional alignment to scientific classrooms"
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["AI Applications", "Education", "🏢 University of Southern California",]
showSummary: true
date: 2025-04-11
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2504.08846 {{< /keyword >}}
{{< keyword icon="writer" >}} Mostafa Faghih Shojaei et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-04-16 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2504.08846" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2504.08846" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2504.08846/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

The study addresses the increasing need for AI tools in classrooms. Current **Large Language Models (LLMs)** struggle with specialized knowledge and distinct instructional styles, causing generic educational support. To counter these issues, the paper proposes a structured framework adaptable to various teaching preferences and course specifics, ensuring content is accurate and tailored. 



The study introduces **AI-University (AI-U)**, which fine-tunes an LLM with Retrieval-Augmented Generation (RAG) to create expert-aligned answers from course materials. Focusing on a graduate FEM course, it systematically builds training data, optimizes LLM responses, and provides a web app, increasing AI-assisted education in STEM fields.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} AI-U enhances instruction by customizing content delivery with Large Language Models. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} The method uses expert-aligned responses from fine-tuned models and RAG-based synthesis. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} The prototype web application is available for broader adoption in higher education. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper is important for researchers by presenting **AI-U**, offering a scalable method for AI-assisted education that is especially relevant for STEM disciplines.  It enhances personalized learning, reduces resource demands, and promotes wider adoption of AI in higher education.

------
#### Visual Insights



![](https://arxiv.org/html/2504.08846/x1.png)

> 🔼 This figure presents a high-level overview of the AI-University framework's architecture, illustrating the flow of information and the steps involved in answering user queries.  The process starts with a user query which is processed using an expert model (a fine-tuned LLM) and then passed to a synthesis model which then uses Retrieval Augmented Generation (RAG) to integrate relevant information from the course materials (lecture transcripts, textbook, and notes) before generating a comprehensive response.  The dashed lines highlight steps in the process that are performed only once at the beginning of the system's setup.
> <details>
> <summary>read the caption</summary>
> Figure 1: Overview of the AI-University framework. Sections marked with a dashed line are performed once, at the beginning.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S4.T1.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T1.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_t" id="S4.T1.1.1.1.1">Model</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_t" id="S4.T1.1.1.1.2">
<table class="ltx_tabular ltx_align_middle" id="S4.T1.1.1.1.2.1">
<tr class="ltx_tr" id="S4.T1.1.1.1.2.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="S4.T1.1.1.1.2.1.1.1">Avg. Cos.</td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.1.1.2.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="S4.T1.1.1.1.2.1.2.1">Sim.</td>
</tr>
</table>
</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_t" id="S4.T1.1.1.1.3">
<table class="ltx_tabular ltx_align_middle" id="S4.T1.1.1.1.3.1">
<tr class="ltx_tr" id="S4.T1.1.1.1.3.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="S4.T1.1.1.1.3.1.1.1">Winner</td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.1.1.3.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="S4.T1.1.1.1.3.1.2.1">Cos. Sim.</td>
</tr>
</table>
</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_t" id="S4.T1.1.1.1.4">
<table class="ltx_tabular ltx_align_middle" id="S4.T1.1.1.1.4.1">
<tr class="ltx_tr" id="S4.T1.1.1.1.4.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="S4.T1.1.1.1.4.1.1.1">Judge</td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.1.1.4.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="S4.T1.1.1.1.4.1.2.1">#1</td>
</tr>
</table>
</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_t" id="S4.T1.1.1.1.5">
<table class="ltx_tabular ltx_align_middle" id="S4.T1.1.1.1.5.1">
<tr class="ltx_tr" id="S4.T1.1.1.1.5.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="S4.T1.1.1.1.5.1.1.1">Judge</td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.1.1.5.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="S4.T1.1.1.1.5.1.2.1">#2</td>
</tr>
</table>
</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T1.1.2.1">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T1.1.2.1.1">LLaMA 3.2 base model</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T1.1.2.1.2">0.818</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T1.1.2.1.3">13.97%</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T1.1.2.1.4">8.39%</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T1.1.2.1.5">26.88%</td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.3.2">
<td class="ltx_td ltx_align_left" id="S4.T1.1.3.2.1">LLaMA-TOMMI-1.0</td>
<td class="ltx_td ltx_align_left" id="S4.T1.1.3.2.2">0.879</td>
<td class="ltx_td ltx_align_left" id="S4.T1.1.3.2.3">86.02%</td>
<td class="ltx_td ltx_align_left" id="S4.T1.1.3.2.4">43.44%</td>
<td class="ltx_td ltx_align_left" id="S4.T1.1.3.2.5">43.23%</td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.4.3">
<td class="ltx_td ltx_align_left" id="S4.T1.1.4.3.1">Both models</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.4.3.2">-</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.4.3.3">-</td>
<td class="ltx_td ltx_align_left" id="S4.T1.1.4.3.4">2.80%</td>
<td class="ltx_td ltx_align_left" id="S4.T1.1.4.3.5">9.03%</td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.5.4">
<td class="ltx_td ltx_align_left ltx_border_b" id="S4.T1.1.5.4.1">Neither model</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T1.1.5.4.2">-</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T1.1.5.4.3">-</td>
<td class="ltx_td ltx_align_left ltx_border_b" id="S4.T1.1.5.4.4">45.38%</td>
<td class="ltx_td ltx_align_left ltx_border_b" id="S4.T1.1.5.4.5">20.86%</td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 This table presents a quantitative evaluation of the effectiveness of fine-tuning a large language model (LLM) for a specific domain.  It compares the performance of a fine-tuned model (LLaMA-TOMMI-1.0) against a base model (Llama-3.2). The evaluation uses two metrics: cosine similarity, measuring the semantic closeness of the model's response to the ground truth, and LLM-as-a-Judge, where another LLM assesses the quality of responses based on criteria like lexical matching, structural similarity, and example consistency.  Cosine similarity is calculated using OpenAI's text-embedding-3-large model.  The results demonstrate a significant improvement in performance for the fine-tuned LLaMA-TOMMI-1.0 model.
> <details>
> <summary>read the caption</summary>
> Table 1: Fine-tuning effectiveness, as evaluated using cosine similarity and LLM-as-a-Judge. For cosine similarity, both the ground truth label and the model response are embedded using OpenAI’s best vector embedding model (text-embedding-3-large) and used to calculate the average cosine similarity across all results (“Avg. Cos. Sim.”). When choosing which answer is best aligned using cosine similarity (“Winner Cos. Sim.”), the results show an overwhelming preference for the LLaMA-TOMMI-1.0 model. Two prompts were provided for LLM-as-a-Judge rating, see A.8.
> </details>





### In-depth insights


#### AI-U: Overview
AI-U, as an LLM-based platform, marks a significant shift in instructional alignment for scientific classrooms. Its core strength lies in the **adaptive AI-driven content delivery**, fine-tuning large language models to mirror instructors' styles. This framework combines **retrieval-augmented generation (RAG)** to draw from diverse materials like lectures, notes, and texts, ensuring responses are contextually rich and tailored. A crucial aspect of AI-U is its emphasis on **scalability and systematic data construction**, demonstrated through a graduate-level finite-element-method (FEM) course case study, achieving instructor-aligned outputs via optimized RAG-based synthesis, with superior performance compared to base models. The developed prototype with enhanced traceability and its integration capacity in higher education broadens **AI adoption and research content creation**.

#### LoRA Fine-tuning
**LoRA fine-tuning** emerges as a pivotal technique for adapting large language models to specific tasks. Its parameter-efficient nature is highly advantageous, particularly when computational resources are constrained. LoRA's ability to add low-rank matrices to pre-trained models allows for targeted knowledge injection without altering the original weights, preserving pre-trained knowledge while specializing in the task. Key hyperparameters such as rank, alpha and dropout control the adaptation process and require careful optimization. This is especially important as LoRA provides a scalable and efficient way to adapt LLMs for domain-specific tasks, making it very attractive.

#### RAG + Synthesis
The RAG + Synthesis agent is a **crucial innovation** for enhancing LLM performance in specialized domains like education. It overcomes the limitations of standard RAG pipelines by ensuring that the response aligns with the course style. By embedding user queries, relevant content chunks are identified based on similarity. This method allows the model to supplement existing info. Additionally, the system prompt is significant because it is able to maintain the courses style. It also allows user exploration. This adaptive strategy is a **notable improvement** over traditional RAG pipelines as it enhances the responses **contextual relevance** and also improves the traceability.

#### Accuracy Metrics
When evaluating the performance of a model, it's **crucial to select appropriate accuracy metrics** that align with the task. Common metrics include **precision, recall, F1-score**, especially for classification problems, reflecting the trade-off between false positives and false negatives. **Cosine similarity** measures the semantic similarity between generated and reference text, useful in NLP tasks. LLM-as-a-judge uses a separate large language model (LLM) to evaluate generated content. This method leverages the reasoning capabilities of LLMs to assess **coherence, relevance, and fluency**. Human evaluations are always welcome as a ground truth.

#### Future AI-U Goals
Future AI-U goals could involve **expanding the knowledge base** to include broader technical literature, recorded research talks, and simulations, creating a multi-modal learning environment. Enhanced RAG systems with **reasoning and multi-agentic inferencing** are crucial for more sophisticated question answering. The system should **adapt to various academic fields**, not just FEM, making it a universal tool. A key aspect is the **integration of continuous learning**, where the AI updates its knowledge dynamically. It will improve responses. Ensuring that the AI assistant continues generating **scientifically accurate information** is paramount for fostering trust and facilitating in-depth learning experiences.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2504.08846/x2.png)

> 🔼 This figure details the data generation pipeline used to create the training data for the AI model. It starts by dividing course materials (textbook, lecture notes, etc.) into smaller text chunks. These chunks are then embedded into a vector space using an embedding model.  A similarity search retrieves relevant context for each question.  Finally, an LLM generates question-answer pairs using the selected context and a prompt.  The dashed lines indicate steps that are performed only once at the beginning of the process, such as the initial embedding of the course material.
> <details>
> <summary>read the caption</summary>
> Figure 2: Overview of the data generation framework. Sections marked with a dashed line are performed once, at the beginning.
> </details>



![](https://arxiv.org/html/2504.08846/extracted/6329323/Images/demo1.png)

> 🔼 This figure shows a screenshot of the AI-University web application's interface.  The application allows users to query a course on the Finite Element Method (FEM), with the option to use different LLMs for response generation.  Users can specify parameters like the number of context tokens retrieved and the specific LLM to be used, and view relevant video lecture segments. The screenshot displays a sample query about assumptions related to matrices in the semidiscrete heat equation, along with the AI-generated response which references specific timestamped sections of the relevant course video.
> <details>
> <summary>read the caption</summary>
> Figure 3: Demonstration of the web application, available at https://my-ai-university.com
> </details>



</details>






### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2504.08846/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.08846/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.08846/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.08846/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.08846/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.08846/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.08846/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.08846/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.08846/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.08846/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.08846/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.08846/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.08846/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.08846/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.08846/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.08846/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.08846/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.08846/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.08846/19.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.08846/20.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}