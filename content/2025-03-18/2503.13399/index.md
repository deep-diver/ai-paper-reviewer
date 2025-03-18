---
title: "MicroVQA: A Multimodal Reasoning Benchmark for Microscopy-Based Scientific Research"
summary: "MicroVQA: A new benchmark to test visual-question-answering in microscopy-based research."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Multimodal Learning", "Multimodal Reasoning", "🏢 Stanford University",]
showSummary: true
date: 2025-03-17
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2503.13399 {{< /keyword >}}
{{< keyword icon="writer" >}} James Burgess et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-03-18 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2503.13399" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2503.13399" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2503.13399/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Scientific discovery needs AI that reasons over multimodal data, which is a challenge, especially in biology. Current multimodal reasoning benchmarks do not target the complexity of research-level tasks. Existing research-level benchmarks lack the complex multimodal reasoning required for scientific discovery, emphasizing lower-level perception. Thus, there is a gap to bridge to achieve more complex reasoning for scientific discovery.



To address this, a new visual question answering (VQA) benchmark is introduced. The **MicroVQA** assesses three key reasoning skills crucial for research: expert image understanding, hypothesis generation, and experiment proposal. It features 1,042 expert-created multiple-choice questions across diverse microscopy modalities, mirroring real scientific practice. This benchmark exposes limitations in state-of-the-art MLLMs, suggesting areas for improvement such as multimodal reasoning skills.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} MicroVQA, a novel benchmark, assesses expert image understanding, hypothesis generation, and experiment proposal in biological microscopy. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} A two-stage MCQ generation pipeline, featuring an agent-based RefineBot, mitigates language shortcuts and enhances question difficulty. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Benchmarking of state-of-the-art MLLMs reveals a performance gap, highlighting challenges in multimodal scientific reasoning and the need for enhanced perception capabilities. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This research propels scientific AI by introducing a specialized VQA benchmark, revealing MLLM challenges in expert-level microscopy analysis and paving the way for more sophisticated, AI-driven research tools.

------
#### Visual Insights



![](https://arxiv.org/html/2503.13399/x2.png)

> 🔼 The figure illustrates the three main reasoning tasks involved in scientific experimentation using biological microscopy images: expert image understanding, hypothesis generation, and experimental proposal.  Each task is represented with an example image and question, highlighting how MicroVQA uses visual question answering to evaluate these reasoning capabilities.  The benchmark comprises 1042 multiple-choice questions, each created by a biology expert, to test the ability to understand, interpret, and reason using microscopy-based data.
> <details>
> <summary>read the caption</summary>
> Figure 1: A scientific experimentation workflow drives discovery: researchers analyze experiments, develop hypotheses, and design further experiments to test their ideas. We release MicroVQA, a visual question answering (VQA) benchmark to test these three tasks in the context of biological microscopy. Each of the 1,042 samples is created by a biology expert, and transformed into a multiple choice question (MCQ).
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S3.T1.6">
<tr class="ltx_tr" id="S3.T1.6.1">
<td class="ltx_td ltx_align_left ltx_border_tt" id="S3.T1.6.1.1"><span class="ltx_text ltx_font_bold" id="S3.T1.6.1.1.1" style="font-size:80%;">Dataset feature</span></td>
<td class="ltx_td ltx_align_right ltx_border_tt" id="S3.T1.6.1.2"><span class="ltx_text ltx_font_bold" id="S3.T1.6.1.2.1" style="font-size:80%;">Value</span></td>
<td class="ltx_td ltx_border_tt" id="S3.T1.6.1.3"></td>
</tr>
<tr class="ltx_tr" id="S3.T1.6.2">
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T1.6.2.1"><span class="ltx_text" id="S3.T1.6.2.1.1" style="font-size:80%;">Total questions</span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S3.T1.6.2.2"><span class="ltx_text" id="S3.T1.6.2.2.1" style="font-size:80%;">1,042</span></td>
<td class="ltx_td ltx_border_t" id="S3.T1.6.2.3"></td>
</tr>
<tr class="ltx_tr" id="S3.T1.6.3">
<td class="ltx_td ltx_align_left" id="S3.T1.6.3.1"><span class="ltx_text" id="S3.T1.6.3.1.1" style="font-size:80%;">Multi-image questions</span></td>
<td class="ltx_td ltx_align_right" id="S3.T1.6.3.2"><span class="ltx_text" id="S3.T1.6.3.2.1" style="font-size:80%;">423</span></td>
<td class="ltx_td" id="S3.T1.6.3.3"></td>
</tr>
<tr class="ltx_tr" id="S3.T1.6.4">
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T1.6.4.1"><span class="ltx_text" id="S3.T1.6.4.1.1" style="font-size:80%;">Avg. MCQ question length</span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S3.T1.6.4.2"><span class="ltx_text" id="S3.T1.6.4.2.1" style="font-size:80%;">66</span></td>
<td class="ltx_td ltx_border_t" id="S3.T1.6.4.3"></td>
</tr>
<tr class="ltx_tr" id="S3.T1.6.5">
<td class="ltx_td ltx_align_left" id="S3.T1.6.5.1"><span class="ltx_text" id="S3.T1.6.5.1.1" style="font-size:80%;">Avg. MCQ answer length</span></td>
<td class="ltx_td ltx_align_right" id="S3.T1.6.5.2"><span class="ltx_text" id="S3.T1.6.5.2.1" style="font-size:80%;">15</span></td>
<td class="ltx_td" id="S3.T1.6.5.3"></td>
</tr>
<tr class="ltx_tr" id="S3.T1.6.6">
<td class="ltx_td ltx_align_left" id="S3.T1.6.6.1"><span class="ltx_text" id="S3.T1.6.6.1.1" style="font-size:80%;">Avg. raw question length</span></td>
<td class="ltx_td ltx_align_right" id="S3.T1.6.6.2"><span class="ltx_text" id="S3.T1.6.6.2.1" style="font-size:80%;">158</span></td>
<td class="ltx_td" id="S3.T1.6.6.3"></td>
</tr>
<tr class="ltx_tr" id="S3.T1.6.7">
<td class="ltx_td ltx_align_left" id="S3.T1.6.7.1"><span class="ltx_text" id="S3.T1.6.7.1.1" style="font-size:80%;">Avg. raw answer length</span></td>
<td class="ltx_td ltx_align_right" id="S3.T1.6.7.2"><span class="ltx_text" id="S3.T1.6.7.2.1" style="font-size:80%;">52</span></td>
<td class="ltx_td" id="S3.T1.6.7.3"></td>
</tr>
<tr class="ltx_tr" id="S3.T1.6.8">
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T1.6.8.1"><span class="ltx_text" id="S3.T1.6.8.1.1" style="font-size:80%;">Unique image sets</span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S3.T1.6.8.2"><span class="ltx_text" id="S3.T1.6.8.2.1" style="font-size:80%;">255</span></td>
<td class="ltx_td ltx_border_t" id="S3.T1.6.8.3"></td>
</tr>
<tr class="ltx_tr" id="S3.T1.6.9">
<td class="ltx_td ltx_align_left" id="S3.T1.6.9.1"><span class="ltx_text" id="S3.T1.6.9.1.1" style="font-size:80%;">Image Modalities</span></td>
<td class="ltx_td ltx_align_right" id="S3.T1.6.9.2"><span class="ltx_text" id="S3.T1.6.9.2.1" style="font-size:80%;">Light, Fluoro, Electron</span></td>
<td class="ltx_td" id="S3.T1.6.9.3"></td>
</tr>
<tr class="ltx_tr" id="S3.T1.6.10">
<td class="ltx_td ltx_align_left" id="S3.T1.6.10.1"><span class="ltx_text" id="S3.T1.6.10.1.1" style="font-size:80%;">Image Scales</span></td>
<td class="ltx_td ltx_align_right" id="S3.T1.6.10.2"><span class="ltx_text" id="S3.T1.6.10.2.1" style="font-size:80%;">Tissue, Cell, Subcell, Atomic</span></td>
<td class="ltx_td" id="S3.T1.6.10.3"></td>
</tr>
<tr class="ltx_tr" id="S3.T1.6.11">
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T1.6.11.1"><span class="ltx_text" id="S3.T1.6.11.1.1" style="font-size:80%;">Organisms</span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S3.T1.6.11.2"><span class="ltx_text" id="S3.T1.6.11.2.1" style="font-size:80%;">31</span></td>
<td class="ltx_td ltx_border_t" id="S3.T1.6.11.3"></td>
</tr>
<tr class="ltx_tr" id="S3.T1.6.12">
<td class="ltx_td ltx_align_left" id="S3.T1.6.12.1"><span class="ltx_text" id="S3.T1.6.12.1.1" style="font-size:80%;">Research areas</span></td>
<td class="ltx_td ltx_align_right" id="S3.T1.6.12.2"><span class="ltx_text" id="S3.T1.6.12.2.1" style="font-size:80%;">33</span></td>
<td class="ltx_td" id="S3.T1.6.12.3"></td>
</tr>
<tr class="ltx_tr" id="S3.T1.6.13">
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T1.6.13.1"><span class="ltx_text" id="S3.T1.6.13.1.1" style="font-size:80%;">Expert question creators</span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S3.T1.6.13.2"><span class="ltx_text" id="S3.T1.6.13.2.1" style="font-size:80%;">12</span></td>
<td class="ltx_td ltx_border_t" id="S3.T1.6.13.3"></td>
</tr>
<tr class="ltx_tr" id="S3.T1.6.14">
<td class="ltx_td ltx_align_left" id="S3.T1.6.14.1"><span class="ltx_text" id="S3.T1.6.14.1.1" style="font-size:80%;">Time to create 1 question</span></td>
<td class="ltx_td ltx_align_right" id="S3.T1.6.14.2"><span class="ltx_text" id="S3.T1.6.14.2.1" style="font-size:80%;">30-40 mins</span></td>
<td class="ltx_td" id="S3.T1.6.14.3"></td>
</tr>
<tr class="ltx_tr" id="S3.T1.6.15">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S3.T1.6.15.1"><span class="ltx_text" id="S3.T1.6.15.1.1" style="font-size:80%;">Time to quality check 1 MCQ</span></td>
<td class="ltx_td ltx_align_right ltx_border_bb" id="S3.T1.6.15.2"><span class="ltx_text" id="S3.T1.6.15.2.1" style="font-size:80%;">5 mins</span></td>
<td class="ltx_td ltx_border_bb" id="S3.T1.6.15.3"></td>
</tr>
</table>{{< /table-caption >}}

> 🔼 This table presents a comprehensive overview of the key characteristics and attributes of the MicroVQA benchmark dataset. It details the dataset's size, question types, image features, and other relevant aspects to provide a clear understanding of its scope and composition.
> <details>
> <summary>read the caption</summary>
> Table 1: MicroVQA benchmark attributes.
> </details>





### In-depth insights


#### Multi-VQA task
The concept of a 'Multi-VQA task,' though not explicitly defined in this research paper, is crucial for advancing AI's understanding of complex scientific data. A Multi-VQA task would involve **reasoning across multiple Visual Question Answering scenarios**, requiring a model to synthesize information from diverse image modalities and biological contexts. This is particularly relevant in microscopy, where understanding often relies on comparing images, generating hypotheses, and proposing experiments. Such a task necessitates **robust multimodal reasoning, integrating expert knowledge, and addressing challenges like language shortcuts and biases**. A true Multi-VQA task assesses a model's ability to **generalize scientific principles** across different experimental settings, a critical step toward AI-driven scientific discovery.

#### Microscopy focus
The paper's focus on microscopy is evident in the creation of MicroVQA, a **VQA benchmark using microscopy images**. This choice **fills a gap** by demanding more than pattern recognition and factual recall as common in existing benchmarks. It compels models to synthesize visual data with experimental context to formulate hypotheses. This focus highlights the unique challenges presented by microscopy, demanding both abductive and deductive reasoning, bridging the gap between college level tasks and research-level scientific investigation. This emphasis makes it a **valuable resource** for AI-driven biomedical research by pushing for sophisticated multimodal reasoning capabilities.

#### Expert reasoning
**Expert reasoning** is central to the study, as it tests the model's capacity to go beyond mere image recognition, and delve into hypothesis generation & experiment proposals. The paper assesses three vital capabilities: **expert image understanding, hypothesis generation, & experiment proposal**, all vital for scientific research. This assessment is done via a dataset with 1,042 questions, crafted by biology experts, transformed into a multiple-choice format. The questions represent true-to-life scientific situations. This analysis method, coupled with expert-created scenarios, highlights the capacity of AI in sophisticated scientific thought beyond basic object identification.

#### MCQ generation
The research paper delves into the intricacies of Multiple-Choice Question (MCQ) generation, highlighting its inadequacy with naive methods. **Standard approaches fail to truly test multimodal abilities**, often resulting in language shortcuts that allow models to answer without genuine understanding. To combat this, the paper introduces a two-stage pipeline. **Initial LLM prompts structure question-answer pairs, followed by an agent-based refinement bot** to remove shortcuts and enhance difficulty. This innovative approach ensures questions are vision-centric, promoting a more accurate assessment of multimodal reasoning. The development and application of RefineBot represents a significant step toward creating robust and reliable MCQs that effectively evaluate model capabilities. **A key factor is creating quality distractors, making sure that generated distractors are vision-centric**. By testing state-of-the-art MLLMs (Multimodal Large Language Models) on the generated data-set it ensures question qualities and difficulties, and at the same time, makes the models more robust.

#### No shortcuts
The research paper addresses the challenge of **language shortcuts** in visual question answering (VQA), where models can answer correctly without truly understanding the image. The authors acknowledge that standard methods for generating multiple-choice questions (MCQs) often fail to adequately test multimodal reasoning, as models can exploit language-based cues instead of relying on visual information. To address this, they introduce a **two-stage pipeline for MCQ generation**: First, they use an optimized LLM prompt to structure question-answer pairs into well-formatted MCQs. Second, they employ an agent-based 'RefineBot' to rewrite questions and distractors, aiming to remove language shortcuts and increase the difficulty of the MCQs. The effectiveness of RefineBot is evaluated in the experiments section, which highlights the significant drop in performance by the models after it is used, demonstrating that the models can perform only if the prompt **lacks shortcuts**.

#### Visual key
The document leverages visual keys like microscopy images to drive scientific research. Visual keys encompass expert understanding of images, hypothesis generation based on observations, and experimental proposals for validation. **MicroVQA benchmark** curated by experts targets these skills, ensuring high scientific relevance. The goal is to assesses model's reasoning vital in research workflows like image understanding, hypothesis generation, and proposing experiments for better analysis in science.

#### Domain limits
The discussion of domain limits acknowledges that while MicroVQA strives for broad coverage within microscopy, practical constraints exist due to expert specialization. This means certain modalities, like Raman spectroscopy, are less represented. **Focus on human-relevant samples** (human, mouse) further defines the domain, with fewer examples from other organisms. This trade-off between **breadth and depth** is recognized, and the framework's adaptability to other biomedical imaging fields or even ecology is suggested, highlighting the potential for future expansion while also showcasing current constraint.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2503.13399/x3.png)

> 🔼 This figure presents a taxonomy that organizes the subtasks within the MicroVQA benchmark into three main categories: expert visual understanding, hypothesis generation, and experimental proposal. Each category is further divided into more specific subtasks to comprehensively evaluate the different aspects of scientific reasoning involved in microscopy-based biological research.  Expert visual understanding tasks include comparing image sets, identifying abnormalities, and more. Hypothesis generation tasks involve exploring causal mechanisms and functional implications. Finally, experimental proposal tasks focus on suggesting new experiments or addressing technical issues.
> <details>
> <summary>read the caption</summary>
> Figure 2: MicroVQA taxonomy of sub-tasks.
> </details>



![](https://arxiv.org/html/2503.13399/x4.png)

> 🔼 Figure 3 is a bar chart comparing the distribution of Bloom's taxonomy levels across several scientific multimodal large language model (MLLM) benchmarks.  Bloom's taxonomy categorizes cognitive skills from simple recall to complex evaluation.  The chart shows that MicroVQA, the benchmark introduced in this paper, has a higher proportion of questions at the higher cognitive levels (analysis, application, evaluation) compared to other benchmarks like MMMU and ScienceQA.  These other benchmarks tend to have a greater proportion of questions at the lower levels (recall, comprehension), reflecting a focus on simpler tasks. Benchmarks focusing primarily on perception, such as OmniMedVQA, also show a concentration of questions at the lower levels. This figure highlights that MicroVQA is designed to assess more advanced reasoning capabilities than many existing benchmarks.
> <details>
> <summary>read the caption</summary>
> Figure 3:  Composition of scientific MLLM benchmarks regarding estimated Bloom’s taxonomy [11]. Higher levels are more cognitively challenging. MicroVQA has more questions at higher levels compared to other benchmarks, for example, MMMU [87] and ScienceQA [53], while perception-driven medical benchmarks like OmniMedVQA are at lower levels.
> </details>



![](https://arxiv.org/html/2503.13399/x5.png)

> 🔼 This figure illustrates the three-stage process of generating multiple-choice questions (MCQs) for the MicroVQA benchmark.  Stage 0 involves defining the tasks and creating 1061 raw visual question answering (VQA) samples with the help of biology experts. In Stage 1, these raw VQA samples are transformed into exam-style MCQs.  This is done by manually converting a subset of samples and then optimizing an LLM prompt to automatically convert the remaining samples. Finally, in Stage 2, the MCQs are further refined using the RefineBot, an iterative method that increases question difficulty and removes language shortcuts that could allow models to answer without true multi-modal reasoning.  The lower panel provides a detailed example illustrating the changes made during the refinement process, highlighting improvements (green) and issues (red) that are further discussed in Section E.2 of the paper.
> <details>
> <summary>read the caption</summary>
> Figure 4: Constructing the MicroVQA multiple choice questions. (0) We defined tasks with domain biological scientists and created 1,061 raw VQA samples. (1) The raw samples were aligned to an exam-style MCQ by manually transforming a small set and optimizing an LLM prompt to match that alignment. (2) MCQs are further improved using RefineBot, a new iterative method to make MCQs more challenging. The lower panel shows an example MCQ from raw VQA to final: the annotations highlight key changes that we further explore in Sec. E.2, where red indicates issues, and  green  indicates good attributes.
> </details>



![](https://arxiv.org/html/2503.13399/extracted/6287634/figures/language-shortcuts.png)

> 🔼 This figure presents a detailed breakdown of the performance of three state-of-the-art large language models (LLMs) across various subtasks and Bloom's taxonomy levels within the MicroVQA benchmark.  The subtasks, representing different aspects of scientific reasoning, include comparing image sets, identifying abnormalities, proposing causal mechanisms, exploring functional implications, suggesting new experiments, and addressing technical issues.  The Bloom's taxonomy levels reflect the cognitive complexity of each task, ranging from simple recall to complex evaluation.  The models analyzed are Gemini-1.5-Pro (closed-source), VILA1.5-40B (open-source), and LlaVA-Med-Mistral-7B (a medical-specialized model). By visualizing performance across these dimensions, Figure 5 provides key insights into the strengths and weaknesses of each model in tackling various aspects of multimodal scientific reasoning.
> <details>
> <summary>read the caption</summary>
> Figure 5: Performance by sub-task and Bloom’s level for best models: Gemini-1.5-Pro (closed source), VILA1.5-40B (open-source), and LlaVA-Med-Mistral-7B (medical).
> </details>



![](https://arxiv.org/html/2503.13399/x6.png)

> 🔼 The figure displays the schema of the MicroVQA dataset.  It shows the various fields and data types associated with each data point.  The fields include identifiers (image_id), the image data itself, labels, label names, domain and subdomain information, imaging modalities and submodalities, stain type, microns per pixel resolution, and the questions and answers associated with the image. This provides a comprehensive overview of the structure of the dataset, illustrating how diverse data (images, text, metadata) is organized to capture the multifaceted nature of scientific visual question answering.
> <details>
> <summary>read the caption</summary>
> Figure 6: Example data schema.
> </details>



![](https://arxiv.org/html/2503.13399/x7.png)

> 🔼 This figure displays an example of the data schema used in the MicroVQA benchmark.  The schema includes fields such as image ID, image data, label, label name (e.g., pathology), domain, subdomain (e.g., gastrointestinal pathology), modality (e.g., light microscopy), submodality (e.g., brightfield microscopy), stain type (e.g., H&E), microns per pixel, question text, and the correct answer. The question text includes the prompt to be answered and the multiple choice options, along with the correct answer.
> <details>
> <summary>read the caption</summary>
> Figure 7: Example data instance.
> </details>



![](https://arxiv.org/html/2503.13399/x8.png)

> 🔼 Figure 8 shows examples of how taxonomy classes are used as context for LLMs to assign organisms to questions in the MicroVQA benchmark.  The full taxonomy, in YAML format, will be made available with the code release.  This is important because it provides additional context for the LLMs to understand the questions and select the correct answer, which is particularly important in the scientific domain where specialized knowledge is needed.
> <details>
> <summary>read the caption</summary>
> Figure 8: Examples of taxonomy classes used as context to LLM to assign an organism to a question. A YAML file with the full taxonomy will be released with the code.
> </details>



![](https://arxiv.org/html/2503.13399/x9.png)

> 🔼 This figure shows examples of the taxonomy classes used to provide context to a large language model (LLM) when assigning a research subject to a question within the MicroVQA benchmark.  The full taxonomy, in YAML format, will be available alongside the code release.  The taxonomy helps ensure that the LLMs receive sufficient contextual information for accurate and nuanced reasoning in scientific contexts.  Each example shows a category within the taxonomy (e.g., 'Anatomy,' 'Biochemistry') and then lists some relevant keywords.
> <details>
> <summary>read the caption</summary>
> Figure 9: Examples of taxonomy classes used as context to LLM to assign a research subject to a question. A YAML file with the full taxonomy will be released with the code.
> </details>



![](https://arxiv.org/html/2503.13399/x10.png)

> 🔼 Figure 10 illustrates three common ways that large language models (LLMs) can 'cheat' on visual question answering (VQA) tasks by relying on textual information rather than visual reasoning.  The example questions all relate to a fluorescence microscopy image stained with TOMM20, a marker for mitochondria.  Shortcut 1 demonstrates a 'visual giveaway,' where the question itself provides enough information to answer the question without needing to analyze the image. Shortcut 2 shows 'weak distractors,' where the incorrect answer options are implausible or easily eliminated based on general knowledge.  Finally, shortcut 3 highlights 'language bias,' where the question wording or context makes one answer more likely than others, irrespective of the visual data.
> <details>
> <summary>read the caption</summary>
> Figure 10: Three types of language shortcut relevant to MicroVQA. The target VQA has an image that is fluorescence microscopy stained with TOMM20 which would show a pattern consistent with visualizing mitochondria.
> </details>



![](https://arxiv.org/html/2503.13399/x11.png)

> 🔼 This figure showcases examples of how the two-stage MCQ generation process refines questions and answer options. Stage 1 focuses on creating well-structured MCQs from the original raw data; whereas, stage 2 uses RefineBot to improve the questions by making them more challenging and removing language shortcuts.  The image highlights specific modifications made during the refinement process. Red indicates elements that were improved, while green highlights the improvements themselves.
> <details>
> <summary>read the caption</summary>
> Figure 11: Examples of changes to questions and options between stage 1 and stage 2 (RefineBot) of our MCQ generation method. In red elements that need to be improved and in  green  improvements.
> </details>



![](https://arxiv.org/html/2503.13399/x12.png)

> 🔼 This figure shows a bar chart comparing the performance of three different large language models (LLMs) across three different microscopy image modalities: light microscopy, fluorescence microscopy, and electron microscopy.  The performance metric is likely accuracy or a similar measure of correct responses to questions about the images. The models compared are Gemini-1.5-Pro, VILA1.5-40B, and LlaVA-Med-Mistral-7B, representing closed-source, open-source, and medical-specialized models, respectively. The chart visually demonstrates how each model's performance varies across the different image modalities, highlighting which modality is most challenging for each model and revealing potential differences in model capabilities for handling diverse visual data types in microscopy image analysis.
> <details>
> <summary>read the caption</summary>
> Figure 12: Performance by image modality type for the best models: Gemini-1.5-Pro (closed source), VILA1.5-40B (open-source), and LlaVA-Med-Mistral-7B (medical).
> </details>



![](https://arxiv.org/html/2503.13399/x13.png)

> 🔼 This figure shows a cryo-electron tomography (cryoET) image of mammalian cells, highlighting dark circular structures within an organelle. The image was acquired at a resolution of 1.3 Å and binned by 4, resulting in a 5.3 Å per pixel resolution. The figure is accompanied by a multiple-choice question asking about the likely identity of these structures, with options including ribosomes, phase-separated condensates, lysosomes, and peroxisomes. The correct answer is stress granules. The reasoning process for identifying the structures is also shown. A key component of the analysis is assessing the size, shape, electron density, and the context of the organelle in which the structures are located. This figure illustrates an error of perception; the model misidentifies the granules.
> <details>
> <summary>read the caption</summary>
> Figure 13:
> </details>



![](https://arxiv.org/html/2503.13399/x14.png)

> 🔼 This figure shows examples of how the two-stage MCQ generation process improves the quality of questions.  The left column shows the original questions and options generated in stage 1 (exam-style alignment). The right column shows the refined questions and options after the RefineBot process (stage 2).  The improvements highlight the RefineBot's effectiveness in removing language shortcuts, making the questions more challenging, and improving the distractors' quality by ensuring they're biologically plausible and not easily ruled out by superficial knowledge.
> <details>
> <summary>read the caption</summary>
> Figure 14:
> </details>



![](https://arxiv.org/html/2503.13399/x15.png)

> 🔼 This figure displays two H&E-stained images of schwannoma tissue, showing marked cellular changes and unique tissue structures. The images highlight a cystic change that can be seen in chronic, longstanding schwannomas, and fascicular growth with Verocay bodies. The model incorrectly interprets this as rapid cellular proliferation.
> <details>
> <summary>read the caption</summary>
> Figure 15:
> </details>



![](https://arxiv.org/html/2503.13399/x16.png)

> 🔼 This figure shows a fluorescence microscopy image comparing wounded and unwounded mouse liver tissue.  The tissue is stained with markers for immune response: neutrophil-derived migrasomes (Ly6G, yellow) and platelets (CD41, magenta). The image illustrates the distribution of these markers in both wounded and unwounded tissue, highlighting differences in immune cell localization and activation in response to tissue injury.
> <details>
> <summary>read the caption</summary>
> Figure 16:
> </details>



![](https://arxiv.org/html/2503.13399/x17.png)

> 🔼 This figure displays the results of a double immunofluorescence experiment conducted on nerve cells to visualize Sema4B (red marker) and Sox9 (an astrocyte marker, green).  Sema4B's primary localization is surrounding the nuclear area, dispersed in the cytoplasm.  The figure shows three images: one each for Sema4B, Sox9 and a merged image. The question is what potential role Sema4B may play in these cells, based on its observed distribution. The model's response and error analysis are also provided.
> <details>
> <summary>read the caption</summary>
> Figure 17:
> </details>



![](https://arxiv.org/html/2503.13399/x18.png)

> 🔼 This figure shows a cryo-electron tomography image of fibroblasts from a 70-year-old Alzheimer's patient, highlighting three mitochondria clustered together.  The question associated with this image in the MicroVQA benchmark asks about the most likely reason for this mitochondrial clustering. The various response options provided to the large language model reflect potential causes related to mitochondrial biogenesis, fusion, fission, mitophagy, or other cellular processes. The correct answer is impaired mitophagy (the failure of the cell to properly remove damaged mitochondria), but the model's answer is incorrect because its understanding of mitophagy is shallow.  The analysis of this incorrect answer in the paper reveals the challenges of correctly interpreting complex biological phenomena from microscopic images and applying scientific knowledge appropriately.
> <details>
> <summary>read the caption</summary>
> Figure 18:
> </details>



![](https://arxiv.org/html/2503.13399/x19.png)

> 🔼 This figure shows an H&E-stained image and a vimentin-stained image of a tissue sample from a patient with recurrent seizures.  The vimentin stain highlights cells that are larger than surrounding cells.  The question associated with this figure asks for the identity of the enlarged, vimentin-expressing cells. This image is used in the error analysis to illustrate a knowledge error, where the model fails to correctly identify the cells as reactive astrocytes due to a lack of understanding of the specific cellular changes associated with seizures and brain injury. The image highlights the challenges of multi-modal reasoning in biological microscopy.
> <details>
> <summary>read the caption</summary>
> Figure 19:
> </details>



![](https://arxiv.org/html/2503.13399/extracted/6287634/figures/collage_1.jpg)

> 🔼 This figure shows a microscopic analysis of a tissue sample from an individual with recurrent seizures, using hematoxylin and eosin stain alongside a vimentin stain. The figure highlights cells with stronger vimentin expression, which are significantly larger than their surrounding counterparts. The question associated with this figure in the paper asks to identify the most probable identity of these prominent vimentin-expressing cells.
> <details>
> <summary>read the caption</summary>
> Figure 20:
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S3.T2.1.1">
<tr class="ltx_tr" id="S3.T2.1.1.2">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_tt" id="S3.T2.1.1.2.1">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.1.1.2.1.1">
<span class="ltx_p" id="S3.T2.1.1.2.1.1.1" style="width:76.8pt;">Benchmark</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_tt" id="S3.T2.1.1.2.2">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.1.1.2.2.1">
<span class="ltx_p" id="S3.T2.1.1.2.2.1.1" style="width:56.9pt;">
<span class="ltx_inline-block" id="S3.T2.1.1.2.2.1.1.1">
<span class="ltx_p" id="S3.T2.1.1.2.2.1.1.1.1">Difficulty</span>
<span class="ltx_p" id="S3.T2.1.1.2.2.1.1.1.2">level</span>
</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_tt" id="S3.T2.1.1.2.3">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.1.1.2.3.1">
<span class="ltx_p" id="S3.T2.1.1.2.3.1.1" style="width:56.9pt;">Domain</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_tt" id="S3.T2.1.1.2.4">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.1.1.2.4.1">
<span class="ltx_p" id="S3.T2.1.1.2.4.1.1" style="width:82.5pt;">Source</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_tt" id="S3.T2.1.1.2.5">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.1.1.2.5.1">
<span class="ltx_p" id="S3.T2.1.1.2.5.1.1" style="width:28.5pt;">Size</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S3.T2.1.1.3">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S3.T2.1.1.3.1">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.1.1.3.1.1">
<span class="ltx_p" id="S3.T2.1.1.3.1.1.1" style="width:76.8pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.1.1.3.1.1.1.1">MicroVQA</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S3.T2.1.1.3.2">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.1.1.3.2.1">
<span class="ltx_p" id="S3.T2.1.1.3.2.1.1" style="width:56.9pt;">research</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S3.T2.1.1.3.3">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.1.1.3.3.1">
<span class="ltx_p" id="S3.T2.1.1.3.3.1.1" style="width:56.9pt;">microscopy</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S3.T2.1.1.3.4">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.1.1.3.4.1">
<span class="ltx_p" id="S3.T2.1.1.3.4.1.1" style="width:82.5pt;">expert-curated</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S3.T2.1.1.3.5">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.1.1.3.5.1">
<span class="ltx_p" id="S3.T2.1.1.3.5.1.1" style="width:28.5pt;">1,042</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S3.T2.1.1.4">
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T2.1.1.4.1">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.1.1.4.1.1">
<span class="ltx_p" id="S3.T2.1.1.4.1.1.1" style="width:76.8pt;">MMSci <cite class="ltx_cite ltx_align_left ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.13399v1#bib.bib47" title=""><span class="ltx_text" style="font-size:90%;">47</span></a>]</cite></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T2.1.1.4.2">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.1.1.4.2.1">
<span class="ltx_p" id="S3.T2.1.1.4.2.1.1" style="width:56.9pt;">research</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T2.1.1.4.3">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.1.1.4.3.1">
<span class="ltx_p" id="S3.T2.1.1.4.3.1.1" style="width:56.9pt;">science</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T2.1.1.4.4">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.1.1.4.4.1">
<span class="ltx_p" id="S3.T2.1.1.4.4.1.1" style="width:82.5pt;">paper figures</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T2.1.1.4.5">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.1.1.4.5.1">
<span class="ltx_p" id="S3.T2.1.1.4.5.1.1" style="width:28.5pt;">7132</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S3.T2.1.1.5">
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T2.1.1.5.1">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.1.1.5.1.1">
<span class="ltx_p" id="S3.T2.1.1.5.1.1.1" style="width:76.8pt;">LabBench <cite class="ltx_cite ltx_align_left ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.13399v1#bib.bib41" title=""><span class="ltx_text" style="font-size:90%;">41</span></a>]</cite></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T2.1.1.5.2">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.1.1.5.2.1">
<span class="ltx_p" id="S3.T2.1.1.5.2.1.1" style="width:56.9pt;">research</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T2.1.1.5.3">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.1.1.5.3.1">
<span class="ltx_p" id="S3.T2.1.1.5.3.1.1" style="width:56.9pt;">biology</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T2.1.1.5.4">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.1.1.5.4.1">
<span class="ltx_p" id="S3.T2.1.1.5.4.1.1" style="width:82.5pt;">webQA</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T2.1.1.5.5">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.1.1.5.5.1">
<span class="ltx_p" id="S3.T2.1.1.5.5.1.1" style="width:28.5pt;">181</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S3.T2.1.1.6">
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T2.1.1.6.1">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.1.1.6.1.1">
<span class="ltx_p" id="S3.T2.1.1.6.1.1.1" style="width:76.8pt;">PathVQA <cite class="ltx_cite ltx_align_left ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.13399v1#bib.bib30" title=""><span class="ltx_text" style="font-size:90%;">30</span></a>]</cite></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T2.1.1.6.2">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.1.1.6.2.1">
<span class="ltx_p" id="S3.T2.1.1.6.2.1.1" style="width:56.9pt;">graduate</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T2.1.1.6.3">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.1.1.6.3.1">
<span class="ltx_p" id="S3.T2.1.1.6.3.1.1" style="width:56.9pt;">pathology</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T2.1.1.6.4">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.1.1.6.4.1">
<span class="ltx_p" id="S3.T2.1.1.6.4.1.1" style="width:82.5pt;">texbooks</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T2.1.1.6.5">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.1.1.6.5.1">
<span class="ltx_p" id="S3.T2.1.1.6.5.1.1" style="width:28.5pt;">16.3k</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S3.T2.1.1.1">
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T2.1.1.1.1">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.1.1.1.1.1">
<span class="ltx_p" id="S3.T2.1.1.1.1.1.1" style="width:76.8pt;">OmnimedVQA<sup class="ltx_sup" id="S3.T2.1.1.1.1.1.1.1"><span class="ltx_text ltx_font_italic" id="S3.T2.1.1.1.1.1.1.1.1">∗</span></sup> <cite class="ltx_cite ltx_align_left ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.13399v1#bib.bib34" title=""><span class="ltx_text" style="font-size:90%;">34</span></a>]</cite></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T2.1.1.1.2">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.1.1.1.2.1">
<span class="ltx_p" id="S3.T2.1.1.1.2.1.1" style="width:56.9pt;">graduate</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T2.1.1.1.3">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.1.1.1.3.1">
<span class="ltx_p" id="S3.T2.1.1.1.3.1.1" style="width:56.9pt;">medical</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T2.1.1.1.4">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.1.1.1.4.1">
<span class="ltx_p" id="S3.T2.1.1.1.4.1.1" style="width:82.5pt;">classification dataset</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T2.1.1.1.5">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.1.1.1.5.1">
<span class="ltx_p" id="S3.T2.1.1.1.5.1.1" style="width:28.5pt;">127.9k</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S3.T2.1.1.7">
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T2.1.1.7.1">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.1.1.7.1.1">
<span class="ltx_p" id="S3.T2.1.1.7.1.1.1" style="width:76.8pt;">Microbench <cite class="ltx_cite ltx_align_left ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.13399v1#bib.bib50" title=""><span class="ltx_text" style="font-size:90%;">50</span></a>]</cite></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T2.1.1.7.2">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.1.1.7.2.1">
<span class="ltx_p" id="S3.T2.1.1.7.2.1.1" style="width:56.9pt;">graduate</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T2.1.1.7.3">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.1.1.7.3.1">
<span class="ltx_p" id="S3.T2.1.1.7.3.1.1" style="width:56.9pt;">microscopy</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T2.1.1.7.4">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.1.1.7.4.1">
<span class="ltx_p" id="S3.T2.1.1.7.4.1.1" style="width:82.5pt;">classification dataset</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T2.1.1.7.5">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.1.1.7.5.1">
<span class="ltx_p" id="S3.T2.1.1.7.5.1.1" style="width:28.5pt;">17.2k</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S3.T2.1.1.8">
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T2.1.1.8.1">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.1.1.8.1.1">
<span class="ltx_p" id="S3.T2.1.1.8.1.1.1" style="width:76.8pt;">MMMU <cite class="ltx_cite ltx_align_left ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.13399v1#bib.bib87" title=""><span class="ltx_text" style="font-size:90%;">87</span></a>]</cite></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T2.1.1.8.2">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.1.1.8.2.1">
<span class="ltx_p" id="S3.T2.1.1.8.2.1.1" style="width:56.9pt;">undergraduate</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T2.1.1.8.3">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.1.1.8.3.1">
<span class="ltx_p" id="S3.T2.1.1.8.3.1.1" style="width:56.9pt;">general</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T2.1.1.8.4">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.1.1.8.4.1">
<span class="ltx_p" id="S3.T2.1.1.8.4.1.1" style="width:82.5pt;">textbooks, webQA</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T2.1.1.8.5">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.1.1.8.5.1">
<span class="ltx_p" id="S3.T2.1.1.8.5.1.1" style="width:28.5pt;">11k</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S3.T2.1.1.9">
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T2.1.1.9.1">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.1.1.9.1.1">
<span class="ltx_p" id="S3.T2.1.1.9.1.1.1" style="width:76.8pt;">MMMU Pro <cite class="ltx_cite ltx_align_left ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.13399v1#bib.bib88" title=""><span class="ltx_text" style="font-size:90%;">88</span></a>]</cite></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T2.1.1.9.2">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.1.1.9.2.1">
<span class="ltx_p" id="S3.T2.1.1.9.2.1.1" style="width:56.9pt;">undergraduate</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T2.1.1.9.3">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.1.1.9.3.1">
<span class="ltx_p" id="S3.T2.1.1.9.3.1.1" style="width:56.9pt;">general</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T2.1.1.9.4">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.1.1.9.4.1">
<span class="ltx_p" id="S3.T2.1.1.9.4.1.1" style="width:82.5pt;">MCQ dataset</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T2.1.1.9.5">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.1.1.9.5.1">
<span class="ltx_p" id="S3.T2.1.1.9.5.1.1" style="width:28.5pt;">1,730</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S3.T2.1.1.10">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb" id="S3.T2.1.1.10.1">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.1.1.10.1.1">
<span class="ltx_p" id="S3.T2.1.1.10.1.1.1" style="width:76.8pt;">Science QA <cite class="ltx_cite ltx_align_left ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.13399v1#bib.bib53" title=""><span class="ltx_text" style="font-size:90%;">53</span></a>]</cite></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb" id="S3.T2.1.1.10.2">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.1.1.10.2.1">
<span class="ltx_p" id="S3.T2.1.1.10.2.1.1" style="width:56.9pt;">grade-school</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb" id="S3.T2.1.1.10.3">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.1.1.10.3.1">
<span class="ltx_p" id="S3.T2.1.1.10.3.1.1" style="width:56.9pt;">science</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb" id="S3.T2.1.1.10.4">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.1.1.10.4.1">
<span class="ltx_p" id="S3.T2.1.1.10.4.1.1" style="width:82.5pt;">exams</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb" id="S3.T2.1.1.10.5">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.1.1.10.5.1">
<span class="ltx_p" id="S3.T2.1.1.10.5.1.1" style="width:28.5pt;">16.8k</span>
</span>
</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table compares MicroVQA with other scientific multimodal benchmarks, focusing on reasoning level and difficulty beyond college level.  It shows each benchmark's difficulty level, scientific domain, dataset source (how the questions were obtained), and size (number of questions). MicroVQA stands out because it has a higher difficulty level than most existing benchmarks, and also a higher reasoning level (as demonstrated in Figure 3).  Among benchmarks with similar reasoning levels, MicroVQA has a dataset size comparable to MMMU-Pro.
> <details>
> <summary>read the caption</summary>
> Table 2: Comparing scientific multimodal benchmarks close to MicroVQA for in terms of reasoning level or difficulty beyond college level. We show difficulty level, scientific domain, dataset source, and size. Compared to others, MicroVQA either has higher difficulty level, or it has higher reasoning level (which is established in Fig. 3). Compared to others at the same reasoning level, namely MMMU-Pro, it has similar size.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S5.T3.7.3">
<tr class="ltx_tr" id="S5.T3.7.3.4">
<td class="ltx_td ltx_align_top ltx_border_tt" id="S5.T3.7.3.4.1"></td>
<td class="ltx_td ltx_align_left ltx_border_tt" id="S5.T3.7.3.4.2"><span class="ltx_text ltx_font_bold" id="S5.T3.7.3.4.2.1">Model</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T3.7.3.4.3">
<span class="ltx_inline-block" id="S5.T3.7.3.4.3.1">
<span class="ltx_p" id="S5.T3.7.3.4.3.1.1"><span class="ltx_text ltx_font_bold" id="S5.T3.7.3.4.3.1.1.1">Overall</span></span>
</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T3.7.3.4.4">
<span class="ltx_inline-block" id="S5.T3.7.3.4.4.1">
<span class="ltx_p" id="S5.T3.7.3.4.4.1.1"><span class="ltx_text ltx_font_bold" id="S5.T3.7.3.4.4.1.1.1">V</span></span>
</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T3.7.3.4.5">
<span class="ltx_inline-block" id="S5.T3.7.3.4.5.1">
<span class="ltx_p" id="S5.T3.7.3.4.5.1.1"><span class="ltx_text ltx_font_bold" id="S5.T3.7.3.4.5.1.1.1">H</span></span>
</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T3.7.3.4.6"><span class="ltx_text ltx_font_bold" id="S5.T3.7.3.4.6.1">E</span></td>
</tr>
<tr class="ltx_tr" id="S5.T3.7.3.5">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S5.T3.7.3.5.1">
<span class="ltx_inline-block ltx_align_top" id="S5.T3.7.3.5.1.1">
<span class="ltx_p" id="S5.T3.7.3.5.1.1.1" style="width:10.0pt;"><span class="ltx_text" id="S5.T3.7.3.5.1.1.1.1">
<span class="ltx_inline-block ltx_transformed_outer" id="S5.T3.7.3.5.1.1.1.1.1" style="width:18.0pt;height:15.8pt;vertical-align:1.1pt;"><span class="ltx_transformed_inner" style="width:15.8pt;transform:translate(1.09pt,0pt) rotate(-90deg) ;">
<span class="ltx_p" id="S5.T3.7.3.5.1.1.1.1.1.1"><span class="ltx_text" id="S5.T3.7.3.5.1.1.1.1.1.1.1"></span><span class="ltx_text" id="S5.T3.7.3.5.1.1.1.1.1.1.2" style="font-size:70%;"> <span class="ltx_text" id="S5.T3.7.3.5.1.1.1.1.1.1.2.1">
<span class="ltx_tabular ltx_align_middle" id="S5.T3.7.3.5.1.1.1.1.1.1.2.1.1">
<span class="ltx_tr" id="S5.T3.7.3.5.1.1.1.1.1.1.2.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T3.7.3.5.1.1.1.1.1.1.2.1.1.1.1">R</span></span>
</span></span> <span class="ltx_text" id="S5.T3.7.3.5.1.1.1.1.1.1.2.2"></span></span></span>
</span></span></span></span>
</span>
</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S5.T3.7.3.5.2">o1 <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.13399v1#bib.bib36" title=""><span class="ltx_text" style="font-size:90%;">36</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.7.3.5.3"><span class="ltx_text ltx_font_bold" id="S5.T3.7.3.5.3.1">52.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.7.3.5.4"><span class="ltx_text ltx_ulem_uline" id="S5.T3.7.3.5.4.1">55.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.7.3.5.5"><span class="ltx_text ltx_font_bold" id="S5.T3.7.3.5.5.1">50.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.7.3.5.6"><span class="ltx_text ltx_font_bold" id="S5.T3.7.3.5.6.1">53.0</span></td>
</tr>
<tr class="ltx_tr" id="S5.T3.5.1.1">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S5.T3.5.1.1.2" rowspan="9">
<span class="ltx_inline-block ltx_align_top" id="S5.T3.5.1.1.2.1">
<span class="ltx_p" id="S5.T3.5.1.1.2.1.1" style="width:10.0pt;"><span class="ltx_text" id="S5.T3.5.1.1.2.1.1.1">
<span class="ltx_inline-block ltx_transformed_outer" id="S5.T3.5.1.1.2.1.1.1.1" style="width:18.0pt;height:49pt;vertical-align:-15.5pt;"><span class="ltx_transformed_inner" style="width:49.0pt;transform:translate(-15.52pt,0pt) rotate(-90deg) ;">
<span class="ltx_p" id="S5.T3.5.1.1.2.1.1.1.1.1"><span class="ltx_text" id="S5.T3.5.1.1.2.1.1.1.1.1.1"></span><span class="ltx_text" id="S5.T3.5.1.1.2.1.1.1.1.1.2" style="font-size:70%;"> <span class="ltx_text" id="S5.T3.5.1.1.2.1.1.1.1.1.2.1">
<span class="ltx_tabular ltx_align_middle" id="S5.T3.5.1.1.2.1.1.1.1.1.2.1.1">
<span class="ltx_tr" id="S5.T3.5.1.1.2.1.1.1.1.1.2.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T3.5.1.1.2.1.1.1.1.1.2.1.1.1.1">large models</span></span>
</span></span> <span class="ltx_text" id="S5.T3.5.1.1.2.1.1.1.1.1.2.2"></span></span></span>
</span></span></span></span>
</span>
</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S5.T3.5.1.1.1">
<sup class="ltx_sup" id="S5.T3.5.1.1.1.1">∗</sup>Claude-3.5-Sonnet <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.13399v1#bib.bib6" title=""><span class="ltx_text" style="font-size:90%;">6</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.5.1.1.3"><span class="ltx_text ltx_ulem_uline" id="S5.T3.5.1.1.3.1">51.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.5.1.1.4">54.1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.5.1.1.5"><span class="ltx_text ltx_font_bold" id="S5.T3.5.1.1.5.1">50.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.5.1.1.6">50.4</td>
</tr>
<tr class="ltx_tr" id="S5.T3.7.3.6">
<td class="ltx_td ltx_align_left" id="S5.T3.7.3.6.1">Gemini-Pro-1.5 <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.13399v1#bib.bib69" title=""><span class="ltx_text" style="font-size:90%;">69</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S5.T3.7.3.6.2">51.1</td>
<td class="ltx_td ltx_align_center" id="S5.T3.7.3.6.3">52.0</td>
<td class="ltx_td ltx_align_center" id="S5.T3.7.3.6.4"><span class="ltx_text ltx_font_bold" id="S5.T3.7.3.6.4.1">50.2</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.7.3.6.5">50.9</td>
</tr>
<tr class="ltx_tr" id="S5.T3.7.3.7">
<td class="ltx_td ltx_align_left" id="S5.T3.7.3.7.1">Pixtral-Large <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.13399v1#bib.bib2" title=""><span class="ltx_text" style="font-size:90%;">2</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S5.T3.7.3.7.2">49.8</td>
<td class="ltx_td ltx_align_center" id="S5.T3.7.3.7.3">50.8</td>
<td class="ltx_td ltx_align_center" id="S5.T3.7.3.7.4">49.5</td>
<td class="ltx_td ltx_align_center" id="S5.T3.7.3.7.5">48.7</td>
</tr>
<tr class="ltx_tr" id="S5.T3.7.3.8">
<td class="ltx_td ltx_align_left" id="S5.T3.7.3.8.1">Grok-2-Vision <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.13399v1#bib.bib84" title=""><span class="ltx_text" style="font-size:90%;">84</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S5.T3.7.3.8.2">48.4</td>
<td class="ltx_td ltx_align_center" id="S5.T3.7.3.8.3">50.3</td>
<td class="ltx_td ltx_align_center" id="S5.T3.7.3.8.4">46.4</td>
<td class="ltx_td ltx_align_center" id="S5.T3.7.3.8.5">48.7</td>
</tr>
<tr class="ltx_tr" id="S5.T3.7.3.9">
<td class="ltx_td ltx_align_left" id="S5.T3.7.3.9.1">Qwen-2-vl-72b-Instruct <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.13399v1#bib.bib79" title=""><span class="ltx_text" style="font-size:90%;">79</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S5.T3.7.3.9.2">47.5</td>
<td class="ltx_td ltx_align_center" id="S5.T3.7.3.9.3">49.2</td>
<td class="ltx_td ltx_align_center" id="S5.T3.7.3.9.4">45.7</td>
<td class="ltx_td ltx_align_center" id="S5.T3.7.3.9.5">47.8</td>
</tr>
<tr class="ltx_tr" id="S5.T3.7.3.10">
<td class="ltx_td ltx_align_left" id="S5.T3.7.3.10.1">VILA1.5-40b <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.13399v1#bib.bib48" title=""><span class="ltx_text" style="font-size:90%;">48</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S5.T3.7.3.10.2">47.5</td>
<td class="ltx_td ltx_align_center" id="S5.T3.7.3.10.3">47.2</td>
<td class="ltx_td ltx_align_center" id="S5.T3.7.3.10.4">47.9</td>
<td class="ltx_td ltx_align_center" id="S5.T3.7.3.10.5">47.4</td>
</tr>
<tr class="ltx_tr" id="S5.T3.6.2.2">
<td class="ltx_td ltx_align_left" id="S5.T3.6.2.2.1">
<sup class="ltx_sup" id="S5.T3.6.2.2.1.1">∗</sup>GPT-4o <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.13399v1#bib.bib1" title=""><span class="ltx_text" style="font-size:90%;">1</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S5.T3.6.2.2.2">45.6</td>
<td class="ltx_td ltx_align_center" id="S5.T3.6.2.2.3">48.7</td>
<td class="ltx_td ltx_align_center" id="S5.T3.6.2.2.4">43.1</td>
<td class="ltx_td ltx_align_center" id="S5.T3.6.2.2.5">44.8</td>
</tr>
<tr class="ltx_tr" id="S5.T3.7.3.11">
<td class="ltx_td ltx_align_left" id="S5.T3.7.3.11.1">Llama-3.1-Nemotron-70b-Instruct <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.13399v1#bib.bib83" title=""><span class="ltx_text" style="font-size:90%;">83</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S5.T3.7.3.11.2">44.2</td>
<td class="ltx_td ltx_align_center" id="S5.T3.7.3.11.3">44.9</td>
<td class="ltx_td ltx_align_center" id="S5.T3.7.3.11.4">43.3</td>
<td class="ltx_td ltx_align_center" id="S5.T3.7.3.11.5">44.8</td>
</tr>
<tr class="ltx_tr" id="S5.T3.7.3.12">
<td class="ltx_td ltx_align_left" id="S5.T3.7.3.12.1">Llama-3.2-90b-Vision-Instruct <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.13399v1#bib.bib21" title=""><span class="ltx_text" style="font-size:90%;">21</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S5.T3.7.3.12.2">42.4</td>
<td class="ltx_td ltx_align_center" id="S5.T3.7.3.12.3">44.9</td>
<td class="ltx_td ltx_align_center" id="S5.T3.7.3.12.4">42.1</td>
<td class="ltx_td ltx_align_center" id="S5.T3.7.3.12.5">38.7</td>
</tr>
<tr class="ltx_tr" id="S5.T3.7.3.13">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S5.T3.7.3.13.1" rowspan="7">
<span class="ltx_inline-block ltx_align_top" id="S5.T3.7.3.13.1.1">
<span class="ltx_p" id="S5.T3.7.3.13.1.1.1" style="width:10.0pt;"><span class="ltx_text" id="S5.T3.7.3.13.1.1.1.1">
<span class="ltx_inline-block ltx_transformed_outer" id="S5.T3.7.3.13.1.1.1.1.1" style="width:18.0pt;height:50.2pt;vertical-align:-16.1pt;"><span class="ltx_transformed_inner" style="width:50.2pt;transform:translate(-16.11pt,0pt) rotate(-90deg) ;">
<span class="ltx_p" id="S5.T3.7.3.13.1.1.1.1.1.1"><span class="ltx_text" id="S5.T3.7.3.13.1.1.1.1.1.1.1"></span><span class="ltx_text" id="S5.T3.7.3.13.1.1.1.1.1.1.2" style="font-size:70%;"> <span class="ltx_text" id="S5.T3.7.3.13.1.1.1.1.1.1.2.1">
<span class="ltx_tabular ltx_align_middle" id="S5.T3.7.3.13.1.1.1.1.1.1.2.1.1">
<span class="ltx_tr" id="S5.T3.7.3.13.1.1.1.1.1.1.2.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T3.7.3.13.1.1.1.1.1.1.2.1.1.1.1">small models</span></span>
</span></span> <span class="ltx_text" id="S5.T3.7.3.13.1.1.1.1.1.1.2.2"></span></span></span>
</span></span></span></span>
</span>
</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S5.T3.7.3.13.2">Qwen-2-VL-7b <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.13399v1#bib.bib79" title=""><span class="ltx_text" style="font-size:90%;">79</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.7.3.13.3">48.8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.7.3.13.4">54.1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.7.3.13.5">43.3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.7.3.13.6">49.6</td>
</tr>
<tr class="ltx_tr" id="S5.T3.7.3.14">
<td class="ltx_td ltx_align_left" id="S5.T3.7.3.14.1">Claude-3.5-Haiku <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.13399v1#bib.bib6" title=""><span class="ltx_text" style="font-size:90%;">6</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S5.T3.7.3.14.2">47.1</td>
<td class="ltx_td ltx_align_center" id="S5.T3.7.3.14.3">48.0</td>
<td class="ltx_td ltx_align_center" id="S5.T3.7.3.14.4">43.8</td>
<td class="ltx_td ltx_align_center" id="S5.T3.7.3.14.5"><span class="ltx_text ltx_ulem_uline" id="S5.T3.7.3.14.5.1">51.7</span></td>
</tr>
<tr class="ltx_tr" id="S5.T3.7.3.15">
<td class="ltx_td ltx_align_left" id="S5.T3.7.3.15.1">Gemini-Flash-1.5-8b <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.13399v1#bib.bib69" title=""><span class="ltx_text" style="font-size:90%;">69</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S5.T3.7.3.15.2">46.7</td>
<td class="ltx_td ltx_align_center" id="S5.T3.7.3.15.3">48.7</td>
<td class="ltx_td ltx_align_center" id="S5.T3.7.3.15.4">43.6</td>
<td class="ltx_td ltx_align_center" id="S5.T3.7.3.15.5">49.1</td>
</tr>
<tr class="ltx_tr" id="S5.T3.7.3.16">
<td class="ltx_td ltx_align_left" id="S5.T3.7.3.16.1">GPT-4o-mini <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.13399v1#bib.bib1" title=""><span class="ltx_text" style="font-size:90%;">1</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S5.T3.7.3.16.2">46.2</td>
<td class="ltx_td ltx_align_center" id="S5.T3.7.3.16.3">48.5</td>
<td class="ltx_td ltx_align_center" id="S5.T3.7.3.16.4">43.6</td>
<td class="ltx_td ltx_align_center" id="S5.T3.7.3.16.5">47.0</td>
</tr>
<tr class="ltx_tr" id="S5.T3.7.3.17">
<td class="ltx_td ltx_align_left" id="S5.T3.7.3.17.1">Pixtral-12b <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.13399v1#bib.bib2" title=""><span class="ltx_text" style="font-size:90%;">2</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S5.T3.7.3.17.2">45.6</td>
<td class="ltx_td ltx_align_center" id="S5.T3.7.3.17.3">46.9</td>
<td class="ltx_td ltx_align_center" id="S5.T3.7.3.17.4">44.8</td>
<td class="ltx_td ltx_align_center" id="S5.T3.7.3.17.5">44.8</td>
</tr>
<tr class="ltx_tr" id="S5.T3.7.3.18">
<td class="ltx_td ltx_align_left" id="S5.T3.7.3.18.1">VILA1.5-13b <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.13399v1#bib.bib48" title=""><span class="ltx_text" style="font-size:90%;">48</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S5.T3.7.3.18.2">41.8</td>
<td class="ltx_td ltx_align_center" id="S5.T3.7.3.18.3">41.8</td>
<td class="ltx_td ltx_align_center" id="S5.T3.7.3.18.4">47.5</td>
<td class="ltx_td ltx_align_center" id="S5.T3.7.3.18.5">40.9</td>
</tr>
<tr class="ltx_tr" id="S5.T3.7.3.19">
<td class="ltx_td ltx_align_left" id="S5.T3.7.3.19.1">Llama-3.2-11b-vision-instruct <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.13399v1#bib.bib21" title=""><span class="ltx_text" style="font-size:90%;">21</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S5.T3.7.3.19.2">30.3</td>
<td class="ltx_td ltx_align_center" id="S5.T3.7.3.19.3">32.4</td>
<td class="ltx_td ltx_align_center" id="S5.T3.7.3.19.4">29.3</td>
<td class="ltx_td ltx_align_center" id="S5.T3.7.3.19.5">28.7</td>
</tr>
<tr class="ltx_tr" id="S5.T3.7.3.20">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S5.T3.7.3.20.1" rowspan="2">
<span class="ltx_inline-block ltx_align_top" id="S5.T3.7.3.20.1.1">
<span class="ltx_p" id="S5.T3.7.3.20.1.1.1" style="width:10.0pt;"><span class="ltx_text" id="S5.T3.7.3.20.1.1.1.1">
<span class="ltx_inline-block ltx_transformed_outer" id="S5.T3.7.3.20.1.1.1.1.1" style="width:18.0pt;height:34pt;vertical-align:-8.0pt;"><span class="ltx_transformed_inner" style="width:34.0pt;transform:translate(-8pt,0pt) rotate(-90deg) ;">
<span class="ltx_p" id="S5.T3.7.3.20.1.1.1.1.1.1"><span class="ltx_text" id="S5.T3.7.3.20.1.1.1.1.1.1.1"></span><span class="ltx_text" id="S5.T3.7.3.20.1.1.1.1.1.1.2" style="font-size:70%;"> <span class="ltx_text" id="S5.T3.7.3.20.1.1.1.1.1.1.2.1">
<span class="ltx_tabular ltx_align_middle" id="S5.T3.7.3.20.1.1.1.1.1.1.2.1.1">
<span class="ltx_tr" id="S5.T3.7.3.20.1.1.1.1.1.1.2.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T3.7.3.20.1.1.1.1.1.1.2.1.1.1.1">medical</span></span>
</span></span> <span class="ltx_text" id="S5.T3.7.3.20.1.1.1.1.1.1.2.2"></span></span></span>
</span></span></span></span>
</span>
</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S5.T3.7.3.20.2">LLaVA-Med-Mistral-7B <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.13399v1#bib.bib42" title=""><span class="ltx_text" style="font-size:90%;">42</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.7.3.20.3">43.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.7.3.20.4">37.3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.7.3.20.5">47.1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.7.3.20.6">41.6</td>
</tr>
<tr class="ltx_tr" id="S5.T3.7.3.3">
<td class="ltx_td ltx_align_left" id="S5.T3.7.3.3.1">
<sup class="ltx_sup" id="S5.T3.7.3.3.1.1"><span class="ltx_text ltx_font_italic" id="S5.T3.7.3.3.1.1.1">†</span></sup>LLaVA-Mistral-7B <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.13399v1#bib.bib49" title=""><span class="ltx_text" style="font-size:90%;">49</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S5.T3.7.3.3.2">39.8</td>
<td class="ltx_td ltx_align_center" id="S5.T3.7.3.3.3">31.6</td>
<td class="ltx_td ltx_align_center" id="S5.T3.7.3.3.4">43.1</td>
<td class="ltx_td ltx_align_center" id="S5.T3.7.3.3.5">37.1</td>
</tr>
<tr class="ltx_tr" id="S5.T3.7.3.21">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb ltx_border_t" id="S5.T3.7.3.21.1" rowspan="2">
<span class="ltx_inline-block ltx_align_top" id="S5.T3.7.3.21.1.1">
<span class="ltx_p" id="S5.T3.7.3.21.1.1.1" style="width:10.0pt;"><span class="ltx_text" id="S5.T3.7.3.21.1.1.1.1">
<span class="ltx_inline-block ltx_transformed_outer" id="S5.T3.7.3.21.1.1.1.1.1" style="width:0.0pt;height:4.6pt;vertical-align:-2.3pt;"><span class="ltx_transformed_inner" style="width:4.7pt;transform:translate(-2.33pt,0pt) rotate(-90deg) ;">
<span class="ltx_p" id="S5.T3.7.3.21.1.1.1.1.1.1"><span class="ltx_text" id="S5.T3.7.3.21.1.1.1.1.1.1.1"></span><span class="ltx_text" id="S5.T3.7.3.21.1.1.1.1.1.1.2" style="font-size:70%;"> <span class="ltx_text" id="S5.T3.7.3.21.1.1.1.1.1.1.2.1"></span> <span class="ltx_text" id="S5.T3.7.3.21.1.1.1.1.1.1.2.2"></span></span></span>
</span></span></span></span>
</span>
</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S5.T3.7.3.21.2">Random</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.7.3.21.3">22.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.7.3.21.4">21.9</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.7.3.21.5">21.8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.7.3.21.6">21.9</td>
</tr>
<tr class="ltx_tr" id="S5.T3.7.3.22">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S5.T3.7.3.22.1">Human</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T3.7.3.22.2">50.3</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T3.7.3.22.3">52.7</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T3.7.3.22.4">47.5</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T3.7.3.22.5">51.4</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the performance of various Multimodal Large Language Models (MLLMs) on the MicroVQA benchmark.  The benchmark tests three key reasoning capabilities: expert image understanding (V), hypothesis generation (H), and experiment proposal (E).  The table shows the accuracy of each model on each of these tasks.  Note that some models were used in the creation of the multiple-choice questions (MCQs) themselves and may therefore show inflated scores.  Also, one model's performance is given relative to its base model. The highest accuracy for each task is highlighted in bold.
> <details>
> <summary>read the caption</summary>
> Table 3: VQA accuracy on MicroVQA by task: expert visual understanding (V), hypothesis generation (H), experiment proposal (E). Models marked ∗ were used in MCQ generation, which may affect comparative performance (see Sec. 5.1). The model † is the base LlaVA for LLaVA-Med. Best values are bolded.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S5.T4.8">
<tr class="ltx_tr" id="S5.T4.8.5">
<td class="ltx_td ltx_border_tt" id="S5.T4.8.5.1"></td>
<td class="ltx_td ltx_align_left ltx_border_tt" id="S5.T4.8.5.2"><span class="ltx_text ltx_font_bold" id="S5.T4.8.5.2.1" style="font-size:80%;">Stage 1</span></td>
<td class="ltx_td ltx_align_left ltx_border_tt" id="S5.T4.8.5.3"><span class="ltx_text ltx_font_bold" id="S5.T4.8.5.3.1" style="font-size:80%;">Stage 2</span></td>
<td class="ltx_td ltx_align_left ltx_border_tt" id="S5.T4.8.5.4"><span class="ltx_text ltx_font_bold" id="S5.T4.8.5.4.1" style="font-size:80%;">Relative drop</span></td>
</tr>
<tr class="ltx_tr" id="S5.T4.5.1">
<td class="ltx_td ltx_align_left ltx_border_t" id="S5.T4.5.1.1">
<sup class="ltx_sup" id="S5.T4.5.1.1.1"><span class="ltx_text" id="S5.T4.5.1.1.1.1" style="font-size:80%;">∗</span></sup><span class="ltx_text" id="S5.T4.5.1.1.2" style="font-size:80%;">GPT-4o</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.5.1.2"><span class="ltx_text" id="S5.T4.5.1.2.1" style="font-size:80%;">79.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.5.1.3"><span class="ltx_text" id="S5.T4.5.1.3.1" style="font-size:80%;">46.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.5.1.4"><span class="ltx_text" id="S5.T4.5.1.4.1" style="font-size:80%;">-41.2</span></td>
</tr>
<tr class="ltx_tr" id="S5.T4.6.2">
<td class="ltx_td ltx_align_left" id="S5.T4.6.2.1">
<sup class="ltx_sup" id="S5.T4.6.2.1.1"><span class="ltx_text ltx_font_italic" id="S5.T4.6.2.1.1.1" style="font-size:80%;">∗∗</span></sup><span class="ltx_text" id="S5.T4.6.2.1.2" style="font-size:80%;">GPT-4o-mini</span>
</td>
<td class="ltx_td ltx_align_center" id="S5.T4.6.2.2"><span class="ltx_text" id="S5.T4.6.2.2.1" style="font-size:80%;">75.6</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.6.2.3"><span class="ltx_text" id="S5.T4.6.2.3.1" style="font-size:80%;">46.2</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.6.2.4"><span class="ltx_text" id="S5.T4.6.2.4.1" style="font-size:80%;">-39.0</span></td>
</tr>
<tr class="ltx_tr" id="S5.T4.7.3">
<td class="ltx_td ltx_align_left" id="S5.T4.7.3.1">
<sup class="ltx_sup" id="S5.T4.7.3.1.1"><span class="ltx_text" id="S5.T4.7.3.1.1.1" style="font-size:80%;">∗</span></sup><span class="ltx_text" id="S5.T4.7.3.1.2" style="font-size:80%;">Claude-3.5-Sonnet</span>
</td>
<td class="ltx_td ltx_align_center" id="S5.T4.7.3.2"><span class="ltx_text" id="S5.T4.7.3.2.1" style="font-size:80%;">82.2</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.7.3.3"><span class="ltx_text" id="S5.T4.7.3.3.1" style="font-size:80%;">51.7</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.7.3.4"><span class="ltx_text" id="S5.T4.7.3.4.1" style="font-size:80%;">-37.1</span></td>
</tr>
<tr class="ltx_tr" id="S5.T4.8.4">
<td class="ltx_td ltx_align_left" id="S5.T4.8.4.1">
<sup class="ltx_sup" id="S5.T4.8.4.1.1"><span class="ltx_text ltx_font_italic" id="S5.T4.8.4.1.1.1" style="font-size:80%;">∗∗</span></sup><span class="ltx_text" id="S5.T4.8.4.1.2" style="font-size:80%;">Claude-3.5-Haiku</span>
</td>
<td class="ltx_td ltx_align_center" id="S5.T4.8.4.2"><span class="ltx_text" id="S5.T4.8.4.2.1" style="font-size:80%;">77.3</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.8.4.3"><span class="ltx_text" id="S5.T4.8.4.3.1" style="font-size:80%;">47.1</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.8.4.4"><span class="ltx_text" id="S5.T4.8.4.4.1" style="font-size:80%;">-39.0</span></td>
</tr>
<tr class="ltx_tr" id="S5.T4.8.6">
<td class="ltx_td ltx_align_left ltx_border_t" id="S5.T4.8.6.1"><span class="ltx_text" id="S5.T4.8.6.1.1" style="font-size:80%;">o1</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.8.6.2"><span class="ltx_text" id="S5.T4.8.6.2.1" style="font-size:80%;">81.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.8.6.3"><span class="ltx_text" id="S5.T4.8.6.3.1" style="font-size:80%;">52.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.8.6.4"><span class="ltx_text" id="S5.T4.8.6.4.1" style="font-size:80%;">-35.3</span></td>
</tr>
<tr class="ltx_tr" id="S5.T4.8.7">
<td class="ltx_td ltx_align_left" id="S5.T4.8.7.1"><span class="ltx_text" id="S5.T4.8.7.1.1" style="font-size:80%;">Pixtral-Large</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.8.7.2"><span class="ltx_text" id="S5.T4.8.7.2.1" style="font-size:80%;">80.1</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.8.7.3"><span class="ltx_text" id="S5.T4.8.7.3.1" style="font-size:80%;">49.8</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.8.7.4"><span class="ltx_text" id="S5.T4.8.7.4.1" style="font-size:80%;">-37.8</span></td>
</tr>
<tr class="ltx_tr" id="S5.T4.8.8">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S5.T4.8.8.1"><span class="ltx_text" id="S5.T4.8.8.1.1" style="font-size:80%;">Gemini-Pro-1.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T4.8.8.2"><span class="ltx_text" id="S5.T4.8.8.2.1" style="font-size:80%;">79.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T4.8.8.3"><span class="ltx_text" id="S5.T4.8.8.3.1" style="font-size:80%;">51.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T4.8.8.4"><span class="ltx_text" id="S5.T4.8.8.4.1" style="font-size:80%;">-35.4</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This ablation study analyzes the impact of each stage in the MicroVQA MCQ generation pipeline (shown in Figure 4).  Stage 1 aligns raw VQA samples to exam-style MCQs, while Stage 2 uses RefineBot to refine these MCQs and increase difficulty by removing language shortcuts. The table shows that accuracy is initially high due to these shortcuts after Stage 1, but decreases significantly after incorporating RefineBot in Stage 2. The models used in the Stage 2 refinement show the largest drops in accuracy after refinement.  Models from the same provider are grouped together for better comparison.
> <details>
> <summary>read the caption</summary>
> Table 4: Ablation study on MicroVQA MCQ generation stages (shown in Fig. 4). Accuracy is high because MCQs have shortcuts (Sec. 4.1) after ‘Stage 1’ exam alignment, but is lower after ‘Stage 2’. Final column is the relative decrease in accuracy. Models with ∗ were used in Stage 2 generation and have the biggest accuracy drops (bolded). They are grouped with different models from the same provider in ∗∗.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="A5.T5.6">
<tr class="ltx_tr" id="A5.T5.6.1">
<td class="ltx_td ltx_border_tt" id="A5.T5.6.1.1"></td>
<td class="ltx_td ltx_align_left ltx_border_tt" id="A5.T5.6.1.2"><span class="ltx_text ltx_font_bold" id="A5.T5.6.1.2.1" style="font-size:80%;">VQA</span></td>
<td class="ltx_td ltx_align_left ltx_border_tt" id="A5.T5.6.1.3"><span class="ltx_text ltx_font_bold" id="A5.T5.6.1.3.1" style="font-size:80%;">VQA-no-image</span></td>
</tr>
<tr class="ltx_tr" id="A5.T5.6.2">
<td class="ltx_td ltx_align_left ltx_border_t" id="A5.T5.6.2.1"><span class="ltx_text" id="A5.T5.6.2.1.1" style="font-size:80%;">GPT-4o</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T5.6.2.2"><span class="ltx_text" id="A5.T5.6.2.2.1" style="font-size:80%;">85.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A5.T5.6.2.3"><span class="ltx_text" id="A5.T5.6.2.3.1" style="font-size:80%;">82.7</span></td>
</tr>
<tr class="ltx_tr" id="A5.T5.6.3">
<td class="ltx_td ltx_align_left" id="A5.T5.6.3.1"><span class="ltx_text" id="A5.T5.6.3.1.1" style="font-size:80%;">Claude-3.5-Sonnet</span></td>
<td class="ltx_td ltx_align_center" id="A5.T5.6.3.2"><span class="ltx_text" id="A5.T5.6.3.2.1" style="font-size:80%;">91.4</span></td>
<td class="ltx_td ltx_align_center" id="A5.T5.6.3.3"><span class="ltx_text" id="A5.T5.6.3.3.1" style="font-size:80%;">88.4</span></td>
</tr>
<tr class="ltx_tr" id="A5.T5.6.4">
<td class="ltx_td ltx_align_left ltx_border_bb" id="A5.T5.6.4.1"><span class="ltx_text" id="A5.T5.6.4.1.1" style="font-size:80%;">Gemini-1.5-Pro</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A5.T5.6.4.2"><span class="ltx_text" id="A5.T5.6.4.2.1" style="font-size:80%;">88.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A5.T5.6.4.3"><span class="ltx_text" id="A5.T5.6.4.3.1" style="font-size:80%;">82.4</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of evaluating various large language models (LLMs) on a naive version of the MicroVQA benchmark. The naive version uses a simple, zero-shot prompting method for generating multiple-choice questions (MCQs) directly from the raw visual question answering (VQA) pairs, without any optimization or refinement. The table shows the overall performance of each LLM on the benchmark, along with their performance when the image is excluded from the input. This comparison helps to assess the models' reliance on visual information versus language-only reasoning.
> <details>
> <summary>read the caption</summary>
> Table 5: Performance on MicroVQA MCQs with naive MCQ generation. We report overall VQA and VQA without the image.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="A6.T6.2">
<tr class="ltx_tr" id="A6.T6.2.1">
<td class="ltx_td ltx_align_left ltx_border_t" id="A6.T6.2.1.1"><span class="ltx_text ltx_font_bold" id="A6.T6.2.1.1.1" style="font-size:80%;">Model Name</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A6.T6.2.1.2"><span class="ltx_text ltx_font_bold" id="A6.T6.2.1.2.1" style="font-size:80%;">API Endpoint</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A6.T6.2.1.3"><span class="ltx_text ltx_font_bold" id="A6.T6.2.1.3.1" style="font-size:80%;">Source &amp; Details</span></td>
</tr>
<tr class="ltx_tr" id="A6.T6.2.2">
<td class="ltx_td ltx_align_left ltx_border_t" id="A6.T6.2.2.1"><span class="ltx_text" id="A6.T6.2.2.1.1" style="font-size:80%;">o1</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A6.T6.2.2.2"><span class="ltx_text ltx_font_typewriter" id="A6.T6.2.2.2.1" style="font-size:80%;">o1-2024-12-17</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A6.T6.2.2.3"><span class="ltx_text" id="A6.T6.2.2.3.1" style="font-size:80%;">OpenAI API</span></td>
</tr>
<tr class="ltx_tr" id="A6.T6.2.3">
<td class="ltx_td ltx_align_left" id="A6.T6.2.3.1"><span class="ltx_text" id="A6.T6.2.3.1.1" style="font-size:80%;">Claude-3.5-Sonnet</span></td>
<td class="ltx_td ltx_align_left" id="A6.T6.2.3.2"><span class="ltx_text ltx_font_typewriter" id="A6.T6.2.3.2.1" style="font-size:80%;">*anthropic/claude-3.5-sonnet-20240620</span></td>
<td class="ltx_td ltx_align_left" id="A6.T6.2.3.3"><span class="ltx_text" id="A6.T6.2.3.3.1" style="font-size:80%;">Openrouter API</span></td>
</tr>
<tr class="ltx_tr" id="A6.T6.2.4">
<td class="ltx_td ltx_align_left" id="A6.T6.2.4.1"><span class="ltx_text" id="A6.T6.2.4.1.1" style="font-size:80%;">Gemini-Pro-1.5</span></td>
<td class="ltx_td ltx_align_left" id="A6.T6.2.4.2"><span class="ltx_text ltx_font_typewriter" id="A6.T6.2.4.2.1" style="font-size:80%;">google/gemini-pro-1.5</span></td>
<td class="ltx_td ltx_align_left" id="A6.T6.2.4.3"><span class="ltx_text" id="A6.T6.2.4.3.1" style="font-size:80%;">Openrouter API</span></td>
</tr>
<tr class="ltx_tr" id="A6.T6.2.5">
<td class="ltx_td ltx_align_left" id="A6.T6.2.5.1"><span class="ltx_text" id="A6.T6.2.5.1.1" style="font-size:80%;">Pixtral-Large</span></td>
<td class="ltx_td ltx_align_left" id="A6.T6.2.5.2"><span class="ltx_text ltx_font_typewriter" id="A6.T6.2.5.2.1" style="font-size:80%;">mistralai/pixtral-large-2411</span></td>
<td class="ltx_td ltx_align_left" id="A6.T6.2.5.3"><span class="ltx_text" id="A6.T6.2.5.3.1" style="font-size:80%;">Openrouter API</span></td>
</tr>
<tr class="ltx_tr" id="A6.T6.2.6">
<td class="ltx_td ltx_align_left" id="A6.T6.2.6.1"><span class="ltx_text" id="A6.T6.2.6.1.1" style="font-size:80%;">Grok-2-Vision</span></td>
<td class="ltx_td ltx_align_left" id="A6.T6.2.6.2"><span class="ltx_text ltx_font_typewriter" id="A6.T6.2.6.2.1" style="font-size:80%;">x-ai/grok-2-vision-1212</span></td>
<td class="ltx_td ltx_align_left" id="A6.T6.2.6.3"><span class="ltx_text" id="A6.T6.2.6.3.1" style="font-size:80%;">Openrouter API</span></td>
</tr>
<tr class="ltx_tr" id="A6.T6.2.7">
<td class="ltx_td ltx_align_left" id="A6.T6.2.7.1"><span class="ltx_text" id="A6.T6.2.7.1.1" style="font-size:80%;">Qwen-2-vl-72b-Instruct</span></td>
<td class="ltx_td ltx_align_left" id="A6.T6.2.7.2"><span class="ltx_text ltx_font_typewriter" id="A6.T6.2.7.2.1" style="font-size:80%;">qwen/qwen-2-vl-72b-instruct</span></td>
<td class="ltx_td ltx_align_left" id="A6.T6.2.7.3"><span class="ltx_text" id="A6.T6.2.7.3.1" style="font-size:80%;">Openrouter API</span></td>
</tr>
<tr class="ltx_tr" id="A6.T6.2.8">
<td class="ltx_td ltx_align_left" id="A6.T6.2.8.1"><span class="ltx_text" id="A6.T6.2.8.1.1" style="font-size:80%;">VILA1.5-40b</span></td>
<td class="ltx_td ltx_align_left" id="A6.T6.2.8.2"><span class="ltx_text ltx_font_typewriter" id="A6.T6.2.8.2.1" style="font-size:80%;">VILA1.5-40b</span></td>
<td class="ltx_td ltx_align_left" id="A6.T6.2.8.3"><span class="ltx_text" id="A6.T6.2.8.3.1" style="font-size:80%;">HuggingFace, local inference</span></td>
</tr>
<tr class="ltx_tr" id="A6.T6.2.9">
<td class="ltx_td ltx_align_left" id="A6.T6.2.9.1"><span class="ltx_text" id="A6.T6.2.9.1.1" style="font-size:80%;">GPT-4o</span></td>
<td class="ltx_td ltx_align_left" id="A6.T6.2.9.2"><span class="ltx_text ltx_font_typewriter" id="A6.T6.2.9.2.1" style="font-size:80%;">gpt-4o-2024-08-06</span></td>
<td class="ltx_td ltx_align_left" id="A6.T6.2.9.3"><span class="ltx_text" id="A6.T6.2.9.3.1" style="font-size:80%;">OpenAI API</span></td>
</tr>
<tr class="ltx_tr" id="A6.T6.2.10">
<td class="ltx_td ltx_align_left" id="A6.T6.2.10.1"><span class="ltx_text" id="A6.T6.2.10.1.1" style="font-size:80%;">Llama-3.1-Nemotron-70b-Instruct</span></td>
<td class="ltx_td ltx_align_left" id="A6.T6.2.10.2"><span class="ltx_text ltx_font_typewriter" id="A6.T6.2.10.2.1" style="font-size:80%;">nvidia/llama-3.1-nemotron-70b-instruct</span></td>
<td class="ltx_td ltx_align_left" id="A6.T6.2.10.3"><span class="ltx_text" id="A6.T6.2.10.3.1" style="font-size:80%;">Openrouter API</span></td>
</tr>
<tr class="ltx_tr" id="A6.T6.2.11">
<td class="ltx_td ltx_align_left" id="A6.T6.2.11.1"><span class="ltx_text" id="A6.T6.2.11.1.1" style="font-size:80%;">Llama-3.2-90b-Vision-Instruct</span></td>
<td class="ltx_td ltx_align_left" id="A6.T6.2.11.2"><span class="ltx_text ltx_font_typewriter" id="A6.T6.2.11.2.1" style="font-size:80%;">meta-llama/llama-3.2-90b-vision-instruct</span></td>
<td class="ltx_td ltx_align_left" id="A6.T6.2.11.3"><span class="ltx_text" id="A6.T6.2.11.3.1" style="font-size:80%;">Openrouter API</span></td>
</tr>
<tr class="ltx_tr" id="A6.T6.2.12">
<td class="ltx_td ltx_align_left" id="A6.T6.2.12.1"><span class="ltx_text" id="A6.T6.2.12.1.1" style="font-size:80%;">Qwen-2-VL-7b</span></td>
<td class="ltx_td ltx_align_left" id="A6.T6.2.12.2"><span class="ltx_text ltx_font_typewriter" id="A6.T6.2.12.2.1" style="font-size:80%;">qwen/qwen-2-vl-7b-instruct</span></td>
<td class="ltx_td ltx_align_left" id="A6.T6.2.12.3"><span class="ltx_text" id="A6.T6.2.12.3.1" style="font-size:80%;">Openrouter API</span></td>
</tr>
<tr class="ltx_tr" id="A6.T6.2.13">
<td class="ltx_td ltx_align_left" id="A6.T6.2.13.1"><span class="ltx_text" id="A6.T6.2.13.1.1" style="font-size:80%;">Claude-3.5-Haiku</span></td>
<td class="ltx_td ltx_align_left" id="A6.T6.2.13.2"><span class="ltx_text ltx_font_typewriter" id="A6.T6.2.13.2.1" style="font-size:80%;">anthropic/claude-3.5-haiku</span></td>
<td class="ltx_td ltx_align_left" id="A6.T6.2.13.3"><span class="ltx_text" id="A6.T6.2.13.3.1" style="font-size:80%;">Openrouter API</span></td>
</tr>
<tr class="ltx_tr" id="A6.T6.2.14">
<td class="ltx_td ltx_align_left" id="A6.T6.2.14.1"><span class="ltx_text" id="A6.T6.2.14.1.1" style="font-size:80%;">Gemini-Flash-1.5-8b</span></td>
<td class="ltx_td ltx_align_left" id="A6.T6.2.14.2"><span class="ltx_text ltx_font_typewriter" id="A6.T6.2.14.2.1" style="font-size:80%;">google/gemini-flash-1.5-8b</span></td>
<td class="ltx_td ltx_align_left" id="A6.T6.2.14.3"><span class="ltx_text" id="A6.T6.2.14.3.1" style="font-size:80%;">Openrouter API</span></td>
</tr>
<tr class="ltx_tr" id="A6.T6.2.15">
<td class="ltx_td ltx_align_left" id="A6.T6.2.15.1"><span class="ltx_text" id="A6.T6.2.15.1.1" style="font-size:80%;">GPT-4o-mini</span></td>
<td class="ltx_td ltx_align_left" id="A6.T6.2.15.2"><span class="ltx_text ltx_font_typewriter" id="A6.T6.2.15.2.1" style="font-size:80%;">gpt-4o-mini-2024-07-18</span></td>
<td class="ltx_td ltx_align_left" id="A6.T6.2.15.3"><span class="ltx_text" id="A6.T6.2.15.3.1" style="font-size:80%;">OpenAI API</span></td>
</tr>
<tr class="ltx_tr" id="A6.T6.2.16">
<td class="ltx_td ltx_align_left" id="A6.T6.2.16.1"><span class="ltx_text" id="A6.T6.2.16.1.1" style="font-size:80%;">Pixtral-12b</span></td>
<td class="ltx_td ltx_align_left" id="A6.T6.2.16.2"><span class="ltx_text ltx_font_typewriter" id="A6.T6.2.16.2.1" style="font-size:80%;">mistralai/pixtral-12b</span></td>
<td class="ltx_td ltx_align_left" id="A6.T6.2.16.3"><span class="ltx_text" id="A6.T6.2.16.3.1" style="font-size:80%;">Openrouter API</span></td>
</tr>
<tr class="ltx_tr" id="A6.T6.2.17">
<td class="ltx_td ltx_align_left" id="A6.T6.2.17.1"><span class="ltx_text" id="A6.T6.2.17.1.1" style="font-size:80%;">VILA1.5-13b</span></td>
<td class="ltx_td ltx_align_left" id="A6.T6.2.17.2"><span class="ltx_text ltx_font_typewriter" id="A6.T6.2.17.2.1" style="font-size:80%;">VILA1.5-13b</span></td>
<td class="ltx_td ltx_align_left" id="A6.T6.2.17.3"><span class="ltx_text" id="A6.T6.2.17.3.1" style="font-size:80%;">HuggingFace, local inference</span></td>
</tr>
<tr class="ltx_tr" id="A6.T6.2.18">
<td class="ltx_td ltx_align_left" id="A6.T6.2.18.1"><span class="ltx_text" id="A6.T6.2.18.1.1" style="font-size:80%;">Llama-3.2-11b-vision-instruct</span></td>
<td class="ltx_td ltx_align_left" id="A6.T6.2.18.2"><span class="ltx_text ltx_font_typewriter" id="A6.T6.2.18.2.1" style="font-size:80%;">meta-llama/llama-3.2-11b-vision-instruct</span></td>
<td class="ltx_td ltx_align_left" id="A6.T6.2.18.3"><span class="ltx_text" id="A6.T6.2.18.3.1" style="font-size:80%;">Openrouter API</span></td>
</tr>
<tr class="ltx_tr" id="A6.T6.2.19">
<td class="ltx_td ltx_align_left" id="A6.T6.2.19.1"><span class="ltx_text" id="A6.T6.2.19.1.1" style="font-size:80%;">LLaVA-Med-Mistral-7B</span></td>
<td class="ltx_td ltx_align_left" id="A6.T6.2.19.2"><span class="ltx_text ltx_font_typewriter" id="A6.T6.2.19.2.1" style="font-size:80%;">LLaVA-Med-Mistral-7B</span></td>
<td class="ltx_td ltx_align_left" id="A6.T6.2.19.3"><span class="ltx_text" id="A6.T6.2.19.3.1" style="font-size:80%;">HuggingFace, local inference</span></td>
</tr>
<tr class="ltx_tr" id="A6.T6.2.20">
<td class="ltx_td ltx_align_left ltx_border_b" id="A6.T6.2.20.1"><span class="ltx_text" id="A6.T6.2.20.1.1" style="font-size:80%;">LLaVA-Mistral-7B</span></td>
<td class="ltx_td ltx_align_left ltx_border_b" id="A6.T6.2.20.2"><span class="ltx_text ltx_font_typewriter" id="A6.T6.2.20.2.1" style="font-size:80%;">LLaVA-Mistral-7B</span></td>
<td class="ltx_td ltx_align_left ltx_border_b" id="A6.T6.2.20.3"><span class="ltx_text" id="A6.T6.2.20.3.1" style="font-size:80%;">HuggingFace, local inference</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table lists the specific versions of the large language models (LLMs) used in the experiments section of the paper.  It provides the API endpoint used to access each model, along with the source and details about where the endpoint is hosted (e.g., OpenAI API, HuggingFace, local inference).  This information is crucial for reproducibility, allowing researchers to easily replicate the experiments using the same model versions.
> <details>
> <summary>read the caption</summary>
> Table 6: AI model API endpoints and their sources
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="A6.T7.4">
<tr class="ltx_tr" id="A6.T7.4.1">
<td class="ltx_td ltx_border_tt" id="A6.T7.4.1.1"></td>
<td class="ltx_td ltx_border_r ltx_border_tt" id="A6.T7.4.1.2"></td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_tt" colspan="2" id="A6.T7.4.1.3">No-image ablation</td>
<td class="ltx_td ltx_align_left ltx_border_tt" colspan="2" id="A6.T7.4.1.4">Choices-only ablation</td>
</tr>
<tr class="ltx_tr" id="A6.T7.4.2">
<td class="ltx_td" id="A6.T7.4.2.1"></td>
<td class="ltx_td ltx_align_left ltx_border_r" id="A6.T7.4.2.2">Accuracy</td>
<td class="ltx_td ltx_align_left" id="A6.T7.4.2.3">Accuracy</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="A6.T7.4.2.4">Drop</td>
<td class="ltx_td ltx_align_left" id="A6.T7.4.2.5">Accuracy</td>
<td class="ltx_td ltx_align_left" id="A6.T7.4.2.6">diff</td>
</tr>
<tr class="ltx_tr" id="A6.T7.4.3">
<td class="ltx_td ltx_align_left ltx_border_t" id="A6.T7.4.3.1">o1</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A6.T7.4.3.2">52.8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A6.T7.4.3.3">49.2</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A6.T7.4.3.4">-3.6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A6.T7.4.3.5">37.7</td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_t" id="A6.T7.4.3.6">-15.1</td>
</tr>
<tr class="ltx_tr" id="A6.T7.4.4">
<td class="ltx_td ltx_align_left" id="A6.T7.4.4.1">Claude-3.5-Sonnet</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A6.T7.4.4.2">51.7</td>
<td class="ltx_td ltx_align_center" id="A6.T7.4.4.3">46.0</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A6.T7.4.4.4">-5.8</td>
<td class="ltx_td ltx_align_center" id="A6.T7.4.4.5">44.0</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="A6.T7.4.4.6">-7.7</td>
</tr>
<tr class="ltx_tr" id="A6.T7.4.5">
<td class="ltx_td ltx_align_left" id="A6.T7.4.5.1">Gemini-Pro-1.5</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A6.T7.4.5.2">51.1</td>
<td class="ltx_td ltx_align_center" id="A6.T7.4.5.3">47.2</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A6.T7.4.5.4">-3.8</td>
<td class="ltx_td ltx_align_center" id="A6.T7.4.5.5">36.8</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="A6.T7.4.5.6">-14.3</td>
</tr>
<tr class="ltx_tr" id="A6.T7.4.6">
<td class="ltx_td ltx_align_left" id="A6.T7.4.6.1">Pixtral-Large</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A6.T7.4.6.2">49.8</td>
<td class="ltx_td ltx_align_center" id="A6.T7.4.6.3">46.3</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A6.T7.4.6.4">-3.6</td>
<td class="ltx_td ltx_align_center" id="A6.T7.4.6.5">36.7</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="A6.T7.4.6.6">-13.1</td>
</tr>
<tr class="ltx_tr" id="A6.T7.4.7">
<td class="ltx_td ltx_align_left" id="A6.T7.4.7.1">Grok-2-Vision</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A6.T7.4.7.2">48.4</td>
<td class="ltx_td ltx_align_center" id="A6.T7.4.7.3">46.3</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A6.T7.4.7.4">-2.1</td>
<td class="ltx_td ltx_align_center" id="A6.T7.4.7.5">40.5</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="A6.T7.4.7.6">-7.9</td>
</tr>
<tr class="ltx_tr" id="A6.T7.4.8">
<td class="ltx_td ltx_align_left" id="A6.T7.4.8.1">GPT-4o-mini</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A6.T7.4.8.2">46.2</td>
<td class="ltx_td ltx_align_center" id="A6.T7.4.8.3">44.2</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A6.T7.4.8.4">-1.9</td>
<td class="ltx_td ltx_align_center" id="A6.T7.4.8.5">34.3</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="A6.T7.4.8.6">-11.9</td>
</tr>
<tr class="ltx_tr" id="A6.T7.4.9">
<td class="ltx_td ltx_align_left" id="A6.T7.4.9.1">Pixtral-12b</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A6.T7.4.9.2">45.6</td>
<td class="ltx_td ltx_align_center" id="A6.T7.4.9.3">43.7</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A6.T7.4.9.4">-1.9</td>
<td class="ltx_td ltx_align_center" id="A6.T7.4.9.5">31.8</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="A6.T7.4.9.6">-13.8</td>
</tr>
<tr class="ltx_tr" id="A6.T7.4.10">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_t" id="A6.T7.4.10.1">Random</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r ltx_border_t" id="A6.T7.4.10.2">22.0</td>
<td class="ltx_td ltx_border_bb ltx_border_t" id="A6.T7.4.10.3"></td>
<td class="ltx_td ltx_border_bb ltx_border_r ltx_border_t" id="A6.T7.4.10.4"></td>
<td class="ltx_td ltx_border_bb ltx_border_t" id="A6.T7.4.10.5"></td>
<td class="ltx_td ltx_nopad_r ltx_border_bb ltx_border_t" id="A6.T7.4.10.6"></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This ablation study analyzes the impact of removing visual and textual information from the MicroVQA benchmark on model performance.  The table shows the overall accuracy of various models, along with their accuracy when either the image is removed (no-image ablation), or both the image and question text are removed (choices-only ablation). The 'drop' columns show the reduction in accuracy compared to the overall performance, highlighting the relative importance of visual and textual information in solving the MicroVQA tasks.
> <details>
> <summary>read the caption</summary>
> Table 7: Ablation study on MicroVQA MCQs. Column 2 is overall accuracy. Cols 3-4 are the no-image ablation accuracy and drop compared to overall accuracy. Cols 5-6 are the choices-only ablation accuracy and drop compared to overall accuracy. See the text for discussion.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2503.13399/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.13399/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.13399/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.13399/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.13399/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.13399/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.13399/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.13399/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.13399/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.13399/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.13399/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.13399/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.13399/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.13399/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.13399/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.13399/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.13399/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.13399/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.13399/19.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.13399/20.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}