---
title: "Evaluating and Aligning CodeLLMs on Human Preference"
summary: "CodeArena, a novel benchmark, evaluates code LLMs based on human preferences, revealing performance gaps between open-source and proprietary models, and a large-scale synthetic instruction corpus impr..."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Natural Language Processing", "Large Language Models", "🏢 Alibaba Group",]
showSummary: true
date: 2024-12-06
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2412.05210 {{< /keyword >}}
{{< keyword icon="writer" >}} Jian Yang et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2024-12-11 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2412.05210" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2412.05210" target="_self" >}}
↗ Hugging Face
{{< /button >}}
{{< button href="https://paperswithcode.com/paper/evaluating-and-aligning-codellms-on-human" target="_self" >}}
↗ Papers with Code
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2412.05210/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Current code LLM evaluation focuses on code correctness, ignoring human preferences in practical coding tasks. This leads to a mismatch between model outputs and user expectations. Existing benchmarks like HumanEval and MBPP mainly assess code correctness through unit testing and lack diversity in programming languages and task types.

To bridge this gap, researchers introduce CodeArena, a comprehensive human-curated benchmark with 397 high-quality samples, and SynCode-Instruct, a large-scale synthetic instruction dataset. They systematically evaluate 40+ LLMs on CodeArena, revealing performance differences based on human preferences.  **CodeArena** effectively measures the alignment of model outputs with user preferences, while **SynCode-Instruct** improves the alignment of open-source code LLMs. This approach highlights the importance of considering human preference for code generation.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} CodeArena benchmark effectively measures alignment between model-generated code and human preference. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} Significant performance differences exist between open-source and proprietary code LLMs regarding human preference. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Large-scale synthetic instruction data (SynCode-Instruct) improves code LLM performance and alignment. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper is crucial because it addresses the critical gap between existing code evaluation benchmarks and real-world human preferences.  By introducing **CodeArena**, a human-curated benchmark, and **SynCode-Instruct**, a large-scale synthetic instruction corpus, it provides researchers with valuable tools to improve the alignment of code LLMs with user expectations. This work has implications for building better, more user-friendly code generation tools, as well as for evaluating existing models.

------
#### Visual Insights



![](https://arxiv.org/html/2412.05210/x1.png)

> 🔼 Figure 1 compares the responses of two code large language models (LLMs) to a user query.  GPT-4 offers a response with a detailed explanation, algorithm breakdown, and instructions on how to use the code, demonstrating a strong alignment with human preferences. In contrast, Qwen2.5-Coder-7B-Instruct provides only the code snippet without any additional context or explanation.
> <details>
> <summary>read the caption</summary>
> Figure 1: A comparison between the GPT4o with better human preference and Qwen2.5-Coder-7B-Instruct. Qwen2.5-Coder-7B-Instruct solves the user question by simply replying with the code snippet without details.
> </details>





{{< table-caption >}}
| Statistics | Number |
|---|---| 
| **Problems** | 397 |
| User Interface&Experience | 45 |
| Development&Programming | 131 |
| Specialized Computing | 91 |
| Tools, Environments, and Application | 39 |
| Miscellaneous and General Inquiry | 62 |
| Databases&Data Handling | 22 |
| Miscellaneous and General Inquiry | 7 |
| **#Difficulty Level** |  |
| - Easy/Medium/Hard | 97/173/132 |
| **Length** |  |
| Question |  |
|  - _maximum length_ | 6736 tokens |
|  - _minimum length_ | 5 tokens |
|  - _avg length_ | 291 tokens |
| Baseline Answer |  |
|  - _maximum length_ | 5913 tokens |
|  - _minimum length_ | 7 tokens |
|  - _avg length_ | 4517 tokens |{{< /table-caption >}}

> 🔼 This table presents a statistical overview of the CodeArena dataset, detailing the number of problems, their distribution across various categories (e.g., User Interface & Experience, Development & Programming), the difficulty levels (Easy, Medium, Hard), and the length (in tokens) of both the questions and the corresponding baseline answers.
> <details>
> <summary>read the caption</summary>
> Table 1: CodeArena dataset statistics.
> </details>





### In-depth insights


#### CodeLLM Preferences
CodeLLM preferences represent a crucial, yet often overlooked, aspect of large language model evaluation.  While accuracy in code generation is paramount, **the user experience and the alignment between model outputs and human expectations are equally important**.  A code-generating LLM might produce technically correct code, but if it lacks clear explanations, readable formatting, or helpful comments, it is less useful to the average programmer.  Focusing solely on code execution metrics fails to capture these nuanced preferences.  Therefore, comprehensive evaluation requires benchmarks that incorporate human judgments of code quality beyond mere functionality, considering factors such as readability, understandability, and overall user satisfaction. **Future research should prioritize developing robust methods to capture and quantify these preferences**, moving beyond pass/fail metrics toward a more holistic evaluation of CodeLLMs that recognizes the human element in software development.

#### CodeArena Benchmark
The CodeArena benchmark is presented as a novel approach to evaluating code large language models (CodeLLMs). Unlike traditional benchmarks that primarily focus on code correctness, **CodeArena emphasizes the alignment between model-generated responses and human preferences**.  This is a critical distinction, as it moves beyond simple pass/fail assessments to consider the quality, usability, and overall helpfulness of the generated code. The benchmark comprises a comprehensive dataset of real-world coding tasks, curated to encompass a wide range of complexities, programming languages, and task types.  This focus on practical scenarios offers a more realistic and nuanced evaluation than existing methods, enabling a more robust assessment of the CodeLLMs capabilities. The integration of human evaluation, using a scoring system based on human judgment of response quality, further strengthens the benchmark's validity and provides a more accurate reflection of actual user experience.  By explicitly measuring human preference, **CodeArena helps identify areas where CodeLLMs need improvement beyond purely functional correctness**, thereby leading to the development of more useful and user-friendly AI coding assistants.

#### Synthetic Instruction
The concept of 'Synthetic Instruction' in the context of large language models (LLMs) for code generation is a crucial innovation.  It addresses the **limited availability of high-quality, real-world coding instructions** needed to effectively train and align these models with human preferences.  By generating a vast corpus of synthetic instructions, researchers overcome this data scarcity.  **Scaling this synthetic data** allows for the training of powerful LLMs, such as Qwen2.5-SynCoder, which demonstrates top-tier performance among open-source models. However, the reliance on synthetic data raises concerns.  The method used to create these instructions needs to be thoroughly scrutinized.  There's a risk that **bias from the original source material or the synthetic generation process** could be amplified, leading to undesirable behaviors in the resulting LLMs. The effectiveness of this approach is contingent upon the quality of the synthetic data; **robust evaluation** on diverse benchmarks, comparing the models trained on synthetic data against those trained on real data, is crucial for determining the true value and limitations of this technique.

#### LLM Performance Gap
Analysis of the LLM performance gap reveals **significant discrepancies between open-source and proprietary models**, particularly concerning human preference alignment in code generation tasks.  This gap highlights the **importance of comprehensive evaluation benchmarks** that move beyond simple code execution accuracy, focusing instead on aspects like code readability, clarity of explanations, and overall user experience.  **The lack of high-quality, human-curated datasets** for fine-tuning LLMs is a major contributing factor. The creation of such datasets is crucial in mitigating this performance gap and improving the alignment between model outputs and user expectations.  Moreover, this gap underscores the **need for larger-scale, diverse synthetic instruction corpora**, as these can aid in building strong baselines for open-source models, thereby potentially reducing the performance differential with closed-source counterparts.  Future research should address the challenges of data scarcity and develop more effective methods for evaluating and enhancing human preference alignment in code generation, paving the way for more robust and user-friendly open-source LLMs.

#### Future Research
Future research directions stemming from this work on aligning CodeLLMs with human preferences could explore several key areas.  **Expanding CodeArena** is crucial; increasing the diversity of programming languages, tasks, and difficulty levels would enhance its robustness and generalizability.  **Investigating the impact of different instruction tuning methods** on human preference alignment is vital, comparing the effectiveness of synthetic instruction corpora versus other techniques.  Further, a **deeper analysis of the performance gap between open-source and proprietary LLMs** is warranted, potentially by examining specific architectural differences or training strategies.  Finally, research should address the **challenges of efficiently scaling high-quality human evaluations**,  perhaps by exploring advanced techniques like active learning or more efficient LLM-based judging methods.  Addressing these points would substantially improve our understanding of how to create code generation models that better meet human needs and expectations.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2412.05210/x2.png)

> 🔼 This figure shows a hierarchical breakdown of the task categories present in the CodeArena benchmark dataset.  The top level shows seven major categories of coding tasks. Each major category is further divided into multiple subcategories, offering a detailed view of the diverse coding problems included in the benchmark. This visualization helps to understand the breadth and depth of coding scenarios covered by CodeArena, ensuring comprehensive evaluation of code language models.
> <details>
> <summary>read the caption</summary>
> Figure 2: Task types of CodeArena.
> </details>



![](https://arxiv.org/html/2412.05210/x3.png)

> 🔼 This figure shows the distribution of various programming languages used within the CodeArena dataset.  It provides a visual representation of the frequency or number of samples involving each language, illustrating the diversity of programming languages covered in the benchmark.
> <details>
> <summary>read the caption</summary>
> Figure 3: Statistics of programming languages in CodeArena.
> </details>



![](https://arxiv.org/html/2412.05210/x4.png)

> 🔼 This bar chart visualizes the distribution of task difficulty levels (Easy, Medium, Hard) across various categories within the CodeArena benchmark dataset.  Each bar represents a category of coding tasks, and the height of each bar segment indicates the number of samples belonging to that category and difficulty level.  The chart provides insight into the balance of difficulty levels within CodeArena, allowing researchers to assess whether the benchmark adequately covers the range of skill levels that might be present in a real-world coding context.
> <details>
> <summary>read the caption</summary>
> Figure 4: Number of samples of different difficulties (Easy/Medium/Hard) across categories in CodeArena.
> </details>



![](https://arxiv.org/html/2412.05210/x5.png)

> 🔼 Figure 5 illustrates the process of creating the CodeArena benchmark dataset.  It starts by gathering code-related questions and answers from online Q&A websites.  These data are then processed using a large language model (LLM) to cluster similar questions and classify them into various categories.  Finally, a representative sample of questions from each category is selected for manual annotation to ensure high quality and relevance.
> <details>
> <summary>read the caption</summary>
> Figure 5: Overview of the CodeArena creation benchmark. We first collect the online code Q&A and code-related raw text from the website. We cluster the code-related data and classify them into different categories using LLM. We uniformly sample the samples from different subtasks as the seed data for manual annotation.
> </details>



![](https://arxiv.org/html/2412.05210/x6.png)

> 🔼 This figure displays the prompt template used to generate a large-scale, synthetic dataset of code instructions.  The prompt guides annotators to create self-contained programming questions based on given text excerpts, ensuring the questions are clear, solvable, and relevant to real-world scenarios.  It includes guidelines specifying the desired language, difficulty level, and overall quality of the generated question.
> <details>
> <summary>read the caption</summary>
> Figure 6: Prompt of generating large-scale self-contained synthetic instruction data.
> </details>



![](https://arxiv.org/html/2412.05210/x7.png)

> 🔼 Figure 7 showcases six diverse examples from the CodeArena benchmark, illustrating the range of coding tasks and programming languages involved.  Each example includes a user's query, two model-generated responses (one acting as a baseline, the other from a tested model), and the final judgment of a GPT-4 Large Language Model (LLM) acting as a 'judger', indicating which response was superior. This highlights CodeArena's ability to assess model performance across various aspects of code generation beyond simple execution correctness, encompassing factors like comprehensiveness, clarity, and practical utility.
> <details>
> <summary>read the caption</summary>
> Figure 7: Examples of CodeArena. The LLM judger decides which response is better.
> </details>



![](https://arxiv.org/html/2412.05210/x8.png)

> 🔼 Figure 8 is a scatter plot visualizing the performance of various Large Language Models (LLMs) on two different code-related benchmarks: MultiPL-E and CodeArena.  Each point represents an LLM, with its x-coordinate showing its performance on MultiPL-E and its y-coordinate showing its performance on CodeArena. LLMs clustered closely together indicate similar performance on both benchmarks.  The points inside the blue circle highlight models that show a significant difference in performance between MultiPL-E and CodeArena, suggesting inconsistencies in their capabilities across different evaluation methods. This indicates a potential mismatch between the evaluation criteria of these two benchmarks and highlights the limitations of relying on a single benchmark for evaluating LLMs.
> <details>
> <summary>read the caption</summary>
> Figure 8: Comparison between MultiPL-E and CodeArena. LLMs in the blue circle present relatively mismatched performances on two benchmarks.
> </details>



![](https://arxiv.org/html/2412.05210/x9.png)

> 🔼 Figure 9 illustrates the performance of the Qwen2.5-SynCoder model on both the MultiPL-E and CodeArena benchmarks when trained with varying amounts of synthetic instruction data.  The x-axis represents the size of the instruction tuning dataset (in billions of tokens), and the y-axis shows the model's performance, expressed as the win rate on CodeArena and Pass@1 score on MultiPL-E. The graph shows how the model's performance improves as the size of the training data increases, highlighting the impact of large-scale synthetic instruction data on model performance across different benchmarks.  Noteworthy is the two-stage fine-tuning strategy's superior performance compared to single-stage training. This comparison demonstrates the influence of high-quality, human-generated data on overall effectiveness.
> <details>
> <summary>read the caption</summary>
> Figure 9: Results of CodeArena with different data size on MultiPL-E and CodeArena.
> </details>



![](https://arxiv.org/html/2412.05210/x10.png)

> 🔼 This figure visualizes the distribution of programming language queries in the CodeArena and MultiPL-E datasets using t-SNE dimensionality reduction.  CodeArena exhibits a broader, more dispersed distribution, reflecting its diverse range of real-world coding tasks and user queries. Conversely, MultiPL-E shows more clustered representations for each language, indicating a more focused scope. This visualization highlights CodeArena's greater coverage of diverse, practical coding scenarios compared to MultiPL-E.
> <details>
> <summary>read the caption</summary>
> Figure 10: Distribution of CodeArena and MultiPL-E of different languages.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
| Benchmark | #Programming Languages | #Task | Source | #Languages | Evaluation | Human Annotation |
|---|---|---|---|---|---|---|
| HumanEval [Chen et al., 2021a] | 1 | 1 | Human Creation | 1 | Execution | ✓ |
| MBPP [Austin et al., 2021] | 1 | 1 | Human Creation | 1 | Execution | ✓ |
| LiveCodeBench [Jain et al., 2024] | 1 | 4 | Scraped from Code Contest Website | 1 | Execution | ✓ |
| MultiPl-E [Cassano et al., 2023] | 24 | 1 | Translated from HumanEval & MBPP | 1 | Execution | ✗ |
| McEval [Chai et al., 2024] | 40 | 3 | Human Creation | 1 | Execution | ✓ |
| MdEval [Liu et al., 2024b] | 18 | 3 | Human Creation | 1 | Execution | ✓ |
| CruxEval [Gu et al., 2024] | 1 | 2 | LLM Generation | 1 | Execution | ✗ |
| NaturalCodeBench [Zhang et al., 2024] | 2 | 6 | Scrape & LLM Generation & Human Filtered | 1 | Execution | ✗ |
| DebugBench [Tian et al., 2024] | 3 | 18 | Scrape & LLM Generation & Human Filtered | 1 | Execution | ✗ |
| CodeEditorBench [Guo et al., 2024b] | 3 | 4 | Scrape & LLM Generation & Human Filtered | 1 | Execution | ✗ |
| CodeArena (Ours) | 44 | 40 | Online Q&A | 2 | Human Preference | ✓ |{{< /table-caption >}}
> 🔼 Table 2 compares CodeArena with other code-related benchmarks, highlighting its unique features. Unlike existing benchmarks that primarily focus on code correctness through limited test cases, CodeArena emphasizes human preference alignment. It achieves this by using diverse, real-world user prompts to evaluate code LLMs, providing a more comprehensive assessment that goes beyond simple code execution.
> <details>
> <summary>read the caption</summary>
> Table 2: Comparison between CodeArena and other benchmarks. CodeArena provides a comprehensive view by creating diverse user prompts to evaluation alignment between the model-generated response and human preference.
> </details>

{{< table-caption >}}
| Model| Size| UI&UX| Development & Programming| Specialized Computing| Tools, Environs, & Practices| Emerging Techs & Apps| Miscellaneous & General Inquiry| Databases & Data Handling| Avg.| 
|---|---|---|---|---|---|---|---|---|---| 
| **Proprietary LLMs and 200B+ LLMs**| | | | | | | | | | 
| Claude-3.5-Sonnet-20240620| """<span class="ltx_ERROR undefined">""">| 88.9/2.2| 77.3/13.6| 74.2/18.0| 81.4/11.9| 78.9/10.5| 71.4/28.6| 63.6/4.5| 77.8/12.5| 
| Claude-3.5-Sonnet-20241022| """<span class="ltx_ERROR undefined">""">| 82.2/6.7| 75.8/12.9| 76.4/16.9| 84.7/10.2| 84.2/13.2| 57.1/28.6| 68.2/22.7| 78.1/13.5| 
| GPT-3.5-turbo-0125| """<span class="ltx_ERROR undefined">""">| 17.8/24.4| 11.4/20.5| 4.5/19.1| 11.9/18.6| 10.5/21.1| 13.6/9.1| 0.0/14.3| 10.5/19.6| 
| GPT-4o-mini-2024-07-18| """<span class="ltx_ERROR undefined">""">| 71.1/13.3| 62.1/17.4| 50.0/13.6| 65.2/14.6| 72.9/13.6| 71.1/18.4| 71.4/14.3| 65.8/15.6| 
| GPT-4o-2024-08-06| """<span class="ltx_ERROR undefined">""">| 66.7/17.8| 72.7/19.7| 62.9/19.1| 69.5/15.3| 76.3/13.2| 85.7/14.3| 59.1/22.7| 69.1/18.1| 
| o1-mini| """<span class="ltx_ERROR undefined">""">| <span class="ltx_text ltx_framed ltx_framed_underline">93.3/4.4</span>| <span class="ltx_text ltx_framed ltx_framed_underline">94.7/2.6</span>| 84.1/7.6| <span class="ltx_text ltx_framed ltx_framed_underline">91.0/5.6</span>| 88.1/3.4| <span class="ltx_text ltx_framed ltx_framed_underline">95.5/0.0</span>| <span class="ltx_text ltx_framed ltx_framed_underline">100.0/0.0</span>| <span class="ltx_text ltx_framed ltx_framed_underline">89.3/5.1</span>| 
| o1-preview| """<span class="ltx_ERROR undefined">""">| 93.3/2.2| 81.8/7.6| <span class="ltx_text ltx_framed ltx_framed_underline">85.4/7.9</span>| 78.0/6.8| <span class="ltx_text ltx_framed ltx_framed_underline">92.1/2.6</span>| 77.3/4.5| 71.4/28.6| 83.9/6.6| 
| Yi-lightning| """<span class="ltx_ERROR undefined">""">| 62.2/15.6| 60.0/11.5| 57.9/5.3| 49.4/16.9| 71.2/11.9| 54.5/13.6| 85.7/0.0| 59.5/12.6| 
| Doubao-Pro| """<span class="ltx_ERROR undefined">""">| 51.1/20.0| 40.8/18.5| 55.3/26.3| 38.2/19.1| 47.5/22.0| 36.4/31.8| 42.9/57.1| 43.6/21.5| 
| Qwen-Max| """<span class="ltx_ERROR undefined">""">| 75.6/17.8| 74.2/13.6| 59.6/24.7| 78.0/6.8| 68.4/23.7| 100.0/0.0| 81.8/4.5| 71.9/15.8| 
| **0.5B+ Open-source LLMs**| | | | | | | | | | 
| Qwen2.5-0.5B-Instruct| 0.5B| <span class="ltx_text ltx_framed ltx_framed_underline">2.2/4.4</span>| 4.6/4.6| <span class="ltx_text ltx_framed ltx_framed_underline">5.3/10.5</span>| 2.2/4.5| <span class="ltx_text ltx_framed ltx_framed_underline">3.4/5.1</span>| <span class="ltx_text ltx_framed ltx_framed_underline">4.5/9.1</span>| 0.0/14.3| 3.6/5.6| 
| Qwen2.5-Coder-0.5B-Instruct| 0.5B| 2.2/2.2| <span class="ltx_text ltx_framed ltx_framed_underline">4.6/6.9</span>| 2.6/5.3| <span class="ltx_text ltx_framed ltx_framed_underline">4.5/2.2</span>| <span class="ltx_text ltx_framed ltx_framed_underline">3.4/5.1</span>| 4.5/0.0| <span class="ltx_text ltx_framed ltx_framed_underline">28.6/14.3</span>| <span class="ltx_text ltx_framed ltx_framed_underline">4.4/4.6</span>| 
| **1B+ Open-source LLMs**| | | | | | | | | | 
| DS-Coder-1.3B-Instruct| 1.3B| <span class="ltx_text ltx_framed ltx_framed_underline">66.7/2.2</span>| 2.3/5.4| 2.6/10.5| 1.7/6.8| 0.0/9.1| 2.2/3.4| 0.0/14.3| 2.6/5.6| 
| Yi-Coder-1.5B-Chat| 1.5B| 11.1/2.2| 5.1/3.4| 5.4/4.6| 2.6/5.3| 2.2/5.6| 4.5/4.5| 14.3/14.3| 7.4/5.1| 
| Qwen2.5-Coder-1.5B-Instruct| 1.5B| 11.1/4.4| <span class="ltx_text ltx_framed ltx_framed_underline">15.9/9.1</span>| <span class="ltx_text ltx_framed ltx_framed_underline">9.0/16.9</span>| <span class="ltx_text ltx_framed ltx_framed_underline">13.6/11.9</span>| <span class="ltx_text ltx_framed ltx_framed_underline">13.2/5.3</span>| <span class="ltx_text ltx_framed ltx_framed_underline">14.3/42.9</span>| <span class="ltx_text ltx_framed ltx_framed_underline">18.2/4.5</span>| <span class="ltx_text ltx_framed ltx_framed_underline">13.2/10.7</span>| 
| OpenCoder-1.5B-Instruct| 1.5B| 11.1/4.4| 3.8/5.4| 0.0/5.3| 2.2/4.5| 3.4/8.5| 4.5/9.1| 0.0/0.0| 6.7/3.8| 
| **3B+ Open-source LLMs**| | | | | | | | | | 
| Qwen2.5-Coder-3B-Instruct| 3B| <span class="ltx_text ltx_framed ltx_framed_underline">35.6/11.1</span>| <span class="ltx_text ltx_framed ltx_framed_underline">29.5/10.6</span>| <span class="ltx_text ltx_framed ltx_framed_underline">27.0/15.7</span>| <span class="ltx_text ltx_framed ltx_framed_underline">20.3/18.6</span>| <span class="ltx_text ltx_framed ltx_framed_underline">28.9/10.5</span>| <span class="ltx_text ltx_framed ltx_framed_underline">42.9/14.3</span>| <span class="ltx_text ltx_framed ltx_framed_underline">27.3/13.6</span>| <span class="ltx_text ltx_framed ltx_framed_underline">28.3/13.3</span>| 
| **6B+ Open-source Models**| | | | | | | | | | 
| CodeLlama-7B-Instruct| 7B| 33.3/8.9| 28.8/18.6| 23.8/13.8| 18.2/9.1| 31.6/5.3| 29.2/14.6| <span class="ltx_text ltx_framed ltx_framed_underline">71.4/0.0</span>| 28.2/12.8| 
| Llama3-8B-Instruct| 7B| 20.0/17.8| 14.6/11.5| 15.8/2.6| 13.5/9.0| 16.9/11.9| 22.7/0.0| 57.1/14.3| 16.7/10.3| 
| Llama3.1-8B-Instruct| 7B| 2.2/8.9| 4.5/10.1| 3.8/6.2| 3.4/6.8| 5.3/2.6| 9.1/9.1| 14.3/0.0| 7.9/4.4| 
| DS-Coder-6.7B-Instruct| 6.7B| 11.1/17.8| 13.1/13.8| 13.6/8.5| 13.2/7.9| 9.0/7.9| 13.6/4.5| 28.6/0.0| 12.3/10.8| 
| CodeQwen1.5-7B-Chat| 7B| 17.8/15.6| 13.8/12.3| 15.8/0.0| 15.7/9.0| 15.3/15.3| 18.2/13.6| 14.3/42.9| 15.4/11.8| 
| Yi-Coder-9B-Chat| 9B| 15.6/17.8| 15.4/9.2| 15.8/7.9| 13.5/13.5| 10.2/20.3| 18.2/13.6| 28.6/28.6| 14.6/13.3| 
| DS-Coder-V2-Lite-Instruct| 2.4/16B| <span class="ltx_text ltx_framed ltx_framed_underline">42.2/20.0</span>| 33.3/17.4| 31.5/16.9| 35.6/20.3| <span class="ltx_text ltx_framed ltx_framed_underline">39.5/21.1</span>| <span class="ltx_text ltx_framed ltx_framed_underline">71.4/14.3</span>| 31.8/22.7| 35.5/18.6| 
| Qwen2.5-Coder-7B-Instruct| 7B| 40.0/22.2| <span class="ltx_text ltx_framed ltx_framed_underline">46.2/19.7</span>| <span class="ltx_text ltx_framed ltx_framed_underline">43.8/15.7</span>| <span class="ltx_text ltx_framed ltx_framed_underline">40.7/20.3</span>| 34.2/15.8| 71.4/0.0| 40.9/22.7| <span class="ltx_text ltx_framed ltx_framed_underline">43.1/18.6</span>| 
| OpenCoder-8B-Instruct| 8B| 24.4/8.9| 14.6/8.5| 10.5/7.9| 9.0/4.5| 13.6/6.8| 18.2/9.1| 14.3/0.0| 14.1/7.1| 
| **13B+ Models**| | | | | | | | | | 
| CodeLlama-13B-Instruct| 13B| 13.3/4.4| 7.9/6.7| 6.8/8.5| 7.7/6.2| 4.5/4.5| 5.3/5.3| 14.3/14.3| 11.2/7.9| 
| Starcoder2-15B-Instruct-v0.1| 15B| 6.7/6.7| 6.8/12.9| 4.5/15.7| 6.8/6.8| 5.3/13.2| 13.6/13.6| 0.0/14.3| 6.4/12.0| 
| Qwen2.5-Coder-14B-Instruct| 14B| <span class="ltx_text ltx_framed ltx_framed_underline">51.1/24.4</span>| <span class="ltx_text ltx_framed ltx_framed_underline">53.0/17.4</span>| <span class="ltx_text ltx_framed ltx_framed_underline">52.8/16.9</span>| <span class="ltx_text ltx_framed ltx_framed_underline">50.8/18.6</span>| <span class="ltx_text ltx_framed ltx_framed_underline">57.9/7.9</span>| <span class="ltx_text ltx_framed ltx_framed_underline">28.6/28.6</span>| <span class="ltx_text ltx_framed ltx_framed_underline">36.4/27.3</span>| <span class="ltx_text ltx_framed ltx_framed_underline">60.6/51.5</span>| 
| **20B+ Models**| | | | | | | | | | 
| CodeLlama-34B-Instruct| 34B| 11.1/6.7| 2.6/2.6| 6.9/2.3| 8.5/6.8| 7.9/10.1| 9.1/9.1| 14.3/0.0| 7.7/5.6| 
| CodeStral-22B-v0.1| 22B| 17.8/22.2| 27.3/13.6| 14.6/14.6| 25.4/10.2| 18.4/10.5| 14.3/42.9| 22.7/22.7| 21.7/15.8| 
| DS-Coder-33B-Instruct| 33B| 13.3/11.1| 22.0/9.8| 12.4/12.4| 13.6/6.8| 13.2/18.4| 28.6/42.9| 22.7/18.2| 16.8/12.0| 
| CodeLlama-70B-Instruct| 70B| 11.1/22.2| 9.2/10.0| 10.5/5.3| 9.0/6.7| 16.9/8.5| 9.1/13.6| 0.0/0.0| 15.5/10.5| 
| DS-Coder-V2-Instruct| 21/236B| 55.6/11.1| 62.1/18.2| 60.7/14.6| 50.8/18.6| 52.6/21.1| 71.4/14.3| 40.9/31.8| 57.4/17.6| 
| DS-V2.5| 21/236B| 77.8/11.1| <span class="ltx_text ltx_framed ltx_framed_underline">72.0/12.9</span>| 71.9/13.5| 71.2/8.5| 73.7/10.5| 100.0/0.0| 68.2/13.6| 73.0/11.7| 
| Llama3-70B-Instruct| 7B| 35.6/20.0| 26.2/26.2| 25.4/22.0| 34.2/15.8| 23.6/14.6| 36.4/4.5| 14.3/57.1| 27.7/20.5| 
| Llama3.1-70B-Instruct| 7B| 48.9/24.4| 43.8/20.0| 34.2/26.3| 40.4/22.5| 54.2/20.3| 45.5/9.1| 71.4/14.3| 44.9/21.0| 
| Qwen2.5-Coder-32B-Instruct| 32B| 71.1/13.3| 66.7/15.9| 67.4/16.9| 74.6/13.6| 65.8/18.4| <span class="ltx_text ltx_framed ltx_framed_underline">100.0/0.0</span>| 63.6/18.2| 68.9/15.6| 
| Qwen2.5-32B-Instruct| 32B| 62.2/15.6| 52.3/15.4| 57.9/18.4| 50.6/23.6| 54.2/13.6| 50.0/13.6| 71.4/14.3| 54.1/17.1| 
| QwQ-32B-Preview| 32B| 53.3/15.6| 56.8/16.7| 50.6/16.9| 64.4/5.1| 52.6/21.1| 85.7/0.0| 63.6/9.1| 56.6/14.5| 
| Qwen2.5-72B-Instruct| 72B| <span class="ltx_text ltx_framed ltx_framed_underline">82.2/6.7</span>| 71.5/14.6| <span class="ltx_text ltx_framed ltx_framed_underline">76.3/13.2</span>| <span class="ltx_text ltx_framed ltx_framed_underline">75.3/15.7</span>| <span class="ltx_text ltx_framed ltx_framed_underline">71.2/18.6</span>| 63.6/13.6| <span class="ltx_text ltx_framed ltx_framed_underline">85.7/14.3</span>| <span class="ltx_text ltx_framed ltx_framed_underline">73.8/14.4</span>| 
| <span style="background-color:#D9FFD9;">Qwen2.5-SynCoder</span>| <span style="background-color:#D9FFD9;">32B</span>| <span style="background-color:#D9FFD9;">55.6/26.7</span>| <span style="background-color:#D9FFD9;">49.2/20.8</span>| <span style="background-color:#D9FFD9;">36.8/36.8</span>| <span style="background-color:#D9FFD9;">50.6/20.2</span>| <span style="background-color:#D9FFD9;">52.5/20.3</span>| <span style="background-color:#D9FFD9;">40.9/18.2</span>| <span style="background-color:#D9FFD9;">57.1/0.0</span>| <span style="background-color:#D9FFD9;">49.2/22.3</span>| {{< /table-caption >}}
> 🔼 This table presents the win/tie rates achieved by various instruction-tuned large language models (LLMs) on the CodeArena benchmark.  The win/tie rate reflects the model's performance compared to a baseline model (gpt-4-turbo-2024-04-09) in generating responses preferred by human evaluators. Models are categorized by size (in terms of parameters), and the underlined numbers highlight the top-performing model in each size category.  The table provides a comparative analysis of different LLMs' abilities to generate human-preferred code, considering various model architectures and sizes.
> <details>
> <summary>read the caption</summary>
> Table 3: The win/tie rate of different instruction LLMs on CodeArena. The underlined numbers represent the best scores within the same model size range.
> </details>

{{< table-caption >}}
| Model | Size | HE | HE+ | MBPP | MBPP+ | Python | Java | C++ | C# | TS | JS | PHP | Bash | Avg. |
|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|
| **Closed-APIs** |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Claude-3.5-Sonnet-20240620 | """\faLock""" | 89.0 | 81.1 | 87.6 | 72.0 | 89.6 | 86.1 | 82.6 | 85.4 | 84.3 | 84.5 | 80.7 | 48.1 | 80.2 |
| Claude-3.5-Sonnet-20241022 | """\faLock""" | 92.1 | 86.0 | 91.0 | 74.6 | 93.9 | 86.7 | 88.2 | 87.3 | 88.1 | 91.3 | 82.6 | 52.5 | 83.8 |
| GPT-4o-mini-2024-07-18 | """\faLock""" | 87.8 | 84.8 | 86.0 | 72.2 | 87.2 | 75.9 | 77.6 | 79.7 | 79.2 | 81.4 | 75.2 | 43.7 | 79.1 |
| GPT-4o-2024-08-06 | """\faLock""" | 92.1 | 86.0 | 86.8 | 72.5 | 90.9 | 83.5 | 76.4 | 81.0 | 83.6 | 90.1 | 78.9 | 48.1 | 79.1 |
| o1-mini | """\faLock""" | 97.6 | 90.2 | 93.9 | 78.3 | 95.7 | 90.5 | 93.8 | 77.2 | 91.2 | 92.5 | 84.5 | 55.1 | 85.1 |
| o1-preview | """\faLock""" | 95.1 | 88.4 | 93.4 | 77.8 | 96.3 | 88.0 | 91.9 | 84.2 | 90.6 | 93.8 | 90.1 | 47.5 | 85.3 |
| **0.5B+ Models** |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Qwen2.5-Coder-0.5B-Instruct | 0.5B | 61.6 | 57.3 | 52.4 | 43.7 | 61.6 | 57.3 | 52.4 | 43.7 | 50.3 | 50.3 | 52.8 | 27.8 | 49.6 |
| **1B+ Models** |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| DS-Coder-1.3B-Instruct | 1.3B | 65.9 | 60.4 | 65.3 | 54.8 | 65.2 | 51.9 | 45.3 | 55.1 | 59.7 | 52.2 | 45.3 | 12.7 | 48.4 |
| Yi-Coder-1.5B-Chat | 1.5B | 69.5 | 64.0 | 65.9 | 57.7 | 67.7 | 51.9 | 49.1 | 57.6 | 57.9 | 59.6 | 52.2 | 19.0 | 51.9 |
| Qwen2.5-Coder-1.5B-Instruct | 1.5B | 70.7 | 66.5 | 69.2 | 59.4 | 71.2 | 55.7 | 50.9 | 64.6 | 61.0 | 62.1 | 59.0 | 29.1 | 56.7 |
| **3B+ Models** |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| Qwen2.5-Coder-3B-Instruct | 3B | 84.1 | 80.5 | 73.6 | 62.4 | 83.5 | 74.7 | 68.3 | 78.5 | 79.9 | 75.2 | 73.3 | 43.0 | 72.1 |
| **6B+ Models** |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| CodeLlama-7B-Instruct | 7B | 40.9 | 33.5 | 54.0 | 44.4 | 34.8 | 30.4 | 31.1 | 21.6 | 32.7 | - | 28.6 | 10.1 | - |
| DS-Coder-6.7B-Instruct | 6.7B | 74.4 | 71.3 | 74.9 | 65.6 | 78.6 | 68.4 | 63.4 | 72.8 | 67.2 | 72.7 | 68.9 | 36.7 | 66.1 |
| CodeQwen1.5-7B-Chat | 7B | 83.5 | 78.7 | 77.7 | 67.2 | 84.1 | 73.4 | 74.5 | 77.8 | 71.7 | 75.2 | 70.8 | 39.2 | 70.8 |
| Yi-Coder-9B-Chat | 9B | 82.3 | 74.4 | 82.0 | 69.0 | 85.4 | 76.0 | 67.7 | 76.6 | 72.3 | 78.9 | 72.1 | 45.6 | 71.8 |
| DS-Coder-V2-Lite-Instruct | 2.4/16B | 81.1 | 75.6 | 82.8 | 70.4 | 81.1 | 76.6 | 75.8 | 76.6 | 80.5 | 77.6 | 74.5 | 43.0 | 73.2 |
| Qwen2.5-Coder-7B-Instruct | 7B | 88.4 | 84.1 | 83.5 | 71.7 | 87.8 | 76.5 | 75.6 | 80.3 | 81.8 | 83.2 | 78.3 | 48.7 | 76.5 |
| OpenCoder-8B-Instruct | 8B | 83.5 | 78.7 | 79.1 | 69.0 | 83.5 | 72.2 | 61.5 | 75.9 | 78.0 | 79.5 | 73.3 | 44.3 | 71.0 |
| **13B+ Models** |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| CodeLlama-13B-Instruct | 13B | 40.2 | 32.3 | 60.3 | 51.1 | 42.7 | 40.5 | 42.2 | 24.0 | 39.0 | - | 32.3 | 13.9 | - |
| Starcoder2-15B-Instruct-v0.1 | 15B | 67.7 | 60.4 | 78.0 | 65.1 | 68.9 | 53.8 | 50.9 | 62.7 | 57.9 | 59.6 | 53.4 | 24.7 | 54.0 |
| Qwen2.5-Coder-14B-Instruct | 14B | 89.6 | 87.2 | 86.2 | 72.8 | 89.0 | 79.7 | 85.1 | 84.2 | 86.8 | 84.5 | 80.1 | 47.5 | 79.6 |
| **20B+ Models** |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
| CodeLlama-34B-Instruct | 34B | 48.2 | 40.2 | 61.1 | 50.5 | 41.5 | 43.7 | 45.3 | 31.0 | 40.3 | - | 36.6 | 19.6 | - |
| CodeStral-22B-v0.1 | 22B | 81.1 | 73.2 | 78.2 | 62.2 | 81.1 | 63.3 | 65.2 | 43.7 | 68.6 | - | 68.9 | 42.4 | - |
| DS-Coder-33B-Instruct | 33B | 81.1 | 75.0 | 80.4 | 70.1 | 79.3 | 73.4 | 68.9 | 74.1 | 67.9 | 73.9 | 72.7 | 43.0 | 69.2 |
| CodeLlama-70B-Instruct | 70B | 72.0 | 65.9 | 77.8 | 64.6 | 67.8 | 58.2 | 53.4 | 36.7 | 39.0 | - | 58.4 | 29.7 | - |
| DS-Coder-V2-Instruct | 21/236B | 85.4 | 82.3 | 89.4 | 75.1 | 90.2 | 82.3 | 84.8 | 82.3 | 83.0 | 84.5 | 79.5 | 52.5 | 79.9 |
| Qwen2.5-Coder-32B-Instruct | 32B | 92.7 | 87.2 | 90.2 | 75.1 | 92.7 | 80.4 | 79.5 | 82.9 | 86.8 | 85.7 | 78.9 | 48.1 | 79.4 |
| Qwen2.5-32B-Instruct | 32B | 87.8 | 82.9 | 86.8 | 70.9 | 88.4 | 80.4 | 81.0 | 74.5 | 83.5 | 82.4 | 78.3 | 46.8 | 76.9 |
| Qwen2.5-72B-Instruct | 32B | 85.4 | 79.3 | 90.5 | 77.0 | 82.9 | 81.0 | 80.7 | 81.6 | 81.1 | 82.0 | 77.0 | 48.7 | 75.1 |
| Qwen2.5-SynCoder | 32B | 92.7 | 87.8 | 86.2 | 74.7 | 92.1 | 80.4 | 80.7 | 81.6 | 83.0 | 85.7 | 77.6 | 49.4 | 78.8 |{{< /table-caption >}}
> 🔼 This table presents a comprehensive evaluation of various instruction-tuned Large Language Models (LLMs) on two established code generation benchmarks: EvalPlus and MultiPL-E.  EvalPlus is an enhanced version of HumanEval and MBPP, while MultiPL-E extends HumanEval to multiple programming languages.  The table details the performance of each LLM across different metrics, including HumanEval (HE), its extended version with more test cases (HE+), MBPP, its extended version (MBPP+), and individual scores for several programming languages (Python, Java, C++, C#, TypeScript, JavaScript, PHP, Bash). The results offer a comparative analysis of the LLMs' code generation capabilities across various tasks and languages, highlighting strengths and weaknesses of different models.
> <details>
> <summary>read the caption</summary>
> Table 4: The performance of different instruction LLMs on EvalPlus and MultiPL-E. “HE” denotes the HumanEval, “HE+” denotes the plus version with more test cases, and “MBPP+” denotes the plus version with more test cases.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2412.05210/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.05210/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.05210/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.05210/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.05210/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.05210/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.05210/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.05210/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.05210/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.05210/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.05210/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.05210/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}