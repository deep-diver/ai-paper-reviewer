---
title: "In Case You Missed It: ARC 'Challenge' Is Not That Challenging"
summary: "LLM evaluation on multiple-choice questions is flawed; considering all options simultaneously, not individually, reveals much higher accuracy and challenges existing benchmark rankings."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Natural Language Processing", "Large Language Models", "🏢 Snowflake AI Research",]
showSummary: true
date: 2024-12-23
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2412.17758 {{< /keyword >}}
{{< keyword icon="writer" >}} Łukasz Borchmann et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2024-12-25 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2412.17758" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2412.17758" target="_self" >}}
↗ Hugging Face
{{< /button >}}
{{< button href="https://paperswithcode.com/paper/in-case-you-missed-it-arc-challenge-is-not" target="_self" >}}
↗ Papers with Code
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2412.17758/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Many Large Language Model (LLM) benchmarks use multiple-choice questions, often evaluating each answer choice separately. This paper reveals that this "separation" method is problematic. It argues that the standard method creates an artificial difficulty, obscuring the true capabilities of the model and distorting benchmark rankings.  The core issue stems from a lack of contextual understanding when answer choices are evaluated independently, thus preventing the model from leveraging comparative reasoning. 

This research proposes an alternative evaluation approach, called the "options" method, where LLMs are evaluated by considering all the answer choices simultaneously.  Experiments demonstrate that this method dramatically increases model accuracy and significantly reduces perceived performance gaps between models.  Specifically, the study demonstrates this on established benchmarks like ARC, OpenBookQA, and SIQA, showing that the observed difficulty wasn't inherent to the tasks, but rather an evaluation artifact.  The paper concludes with recommendations to adopt the 'options' method for more accurate and reliable evaluations.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Current LLM evaluation methods on multiple-choice questions are often inaccurate due to a flawed setup. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} Considering all answer choices simultaneously during evaluation significantly improves LLM performance and reduces performance gaps. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Researchers should adopt a more accurate evaluation method, using the 'options' approach, for a fairer assessment of LLM capabilities. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper is crucial because **it challenges the common practice of evaluating LLMs on multiple-choice questions by considering each answer in isolation**. This practice can significantly skew the results and create a false impression of the model's capabilities. The findings highlight the need for a more accurate and fair evaluation methodology in the field, prompting researchers to reconsider current benchmarking practices and potentially **re-evaluate existing LLM performance on various benchmarks.**  The proposed “options” approach offers a fairer evaluation method, opening avenues for future research into improving LLM evaluation and development.

------
#### Visual Insights



![](https://arxiv.org/html/2412.17758/x1.png)

> 🔼 The figure shows the accuracy difference between ARC Challenge and ARC Easy when using two different evaluation setups: one considering answers separately and the other showing all options together. The results reveal a significant reduction in the accuracy gap between the two datasets when the model can see all options, thus highlighting the impact of evaluation setup on model performance.
> <details>
> <summary>read the caption</summary>
> Figure 1: Difference between ARC Challenge and ARC Easy accuracies when considering each answer separately compared to seeing all options. The gap is vastly reduced, up to six times in this comparison.
> </details>





{{< table-caption >}}
| Model | Reported | Measured \(s\) / \(o\) | Assessment |
|---|---|---|---|
| Llama 65B <cite class="ltx_cite ltx_citemacro_cite">Touvron et al. (<a class="ltx_ref" href="https://arxiv.org/html/2412.17758v1#bib.bib26" title="">2023a</a>)</cite> | 56.0 | 55.6 / 70.2 | <span class="ltx_text" style="background-color:#E6F4FB;">&#8194;<span class="ltx_text ltx_phantom"><span style="visibility:hidden">Ay</span></span>separation</span> |
| Llama 2 70B <cite class="ltx_cite ltx_citemacro_cite">Touvron et al. (<a class="ltx_ref" href="https://arxiv.org/html/2412.17758v1#bib.bib27" title="">2023b</a>)</cite> | 57.4 | 57.4 / 79.6 | <span class="ltx_text" style="background-color:#E6F4FB;">&#8194;<span class="ltx_text ltx_phantom"><span style="visibility:hidden">Ay</span></span>separation</span> |
| Llama 3 70B <cite class="ltx_cite ltx_citemacro_cite">Grattafiori et al. (<a class="ltx_ref" href="https://arxiv.org/html/2412.17758v1#bib.bib14" title="">2024</a>)</cite> | 92.9 | 64.2 / 91.3 | <span class="ltx_text" style="background-color:#E1F2DB;">&#8194;<span class="ltx_text ltx_phantom"><span style="visibility:hidden">Ay</span></span>options</span> |
| Mistral 7B <cite class="ltx_cite ltx_citemacro_cite">Jiang et al. (<a class="ltx_ref" href="https://arxiv.org/html/2412.17758v1#bib.bib16" title="">2023</a>)</cite> | 55.5 | 54.1 / 74.6 | <span class="ltx_text" style="background-color:#E6F4FB;">&#8194;<span class="ltx_text ltx_phantom"><span style="visibility:hidden">Ay</span></span>separation</span> |
| Mixtral 8x7B <cite class="ltx_cite ltx_citemacro_cite">Jiang et al. (<a class="ltx_ref" href="https://arxiv.org/html/2412.17758v1#bib.bib17" title="">2024</a>)</cite> | 59.7 | 59.9 / 83.3 | <span class="ltx_text" style="background-color:#E6F4FB;">&#8194;<span class="ltx_text ltx_phantom"><span style="visibility:hidden">Ay</span></span>separation</span> |
| Mixtral 8x22B <cite class="ltx_cite ltx_citemacro_cite">Mistral AI (<a class="ltx_ref" href="https://arxiv.org/html/2412.17758v1#bib.bib20" title="">2024</a>)</cite> | 91.3<sup class="ltx_sup">†</sup> | 70.7 / 91.8 | <span class="ltx_text" style="background-color:#E1F2DB;">&#8194;<span class="ltx_text ltx_phantom"><span style="visibility:hidden">Ay</span></span>options</span> |
| DeepSeek 67B <cite class="ltx_cite ltx_citemacro_cite">DeepSeek AI et al. (<a class="ltx_ref" href="https://arxiv.org/html/2412.17758v1#bib.bib7" title="">2024a</a>)</cite> | 59.0 | 60.1 / 84.6 | <span class="ltx_text" style="background-color:#E1F2DB;">&#8194;<span class="ltx_text ltx_phantom"><span style="visibility:hidden">Ay</span></span>options</span> |
| DeepSeek V2 <cite class="ltx_cite ltx_citemacro_cite">DeepSeek AI et al. (<a class="ltx_ref" href="https://arxiv.org/html/2412.17758v1#bib.bib8" title="">2024b</a>)</cite> | 92.4<sup class="ltx_sup">†</sup> | 70.3 / 92.2 | <span class="ltx_text" style="background-color:#E1F2DB;">&#8194;<span class="ltx_text ltx_phantom"><span style="visibility:hidden">Ay</span></span>options</span> |
| Qwen 14B <cite class="ltx_cite ltx_citemacro_cite">Bai et al. (<a class="ltx_ref" href="https://arxiv.org/html/2412.17758v1#bib.bib2" title="">2023</a>)</cite> | 84.4 | 47.3 / 86.6 | <span class="ltx_text" style="background-color:#E1F2DB;">&#8194;<span class="ltx_text ltx_phantom"><span style="visibility:hidden">Ay</span></span>options</span> |
| Yi 6B <cite class="ltx_cite ltx_citemacro_cite">01. AI et al. (<a class="ltx_ref" href="https://arxiv.org/html/2412.17758v1#bib.bib1" title="">2024</a>)</cite> | 50.3<sup class="ltx_sup">†</sup> | 55.7 / 80.5 | <span class="ltx_text" style="background-color:#E6F4FB;">&#8194;<span class="ltx_text ltx_phantom"><span style="visibility:hidden">Ay</span></span>separation</span> |
| Gemma 7B <cite class="ltx_cite ltx_citemacro_cite">Gemma Team et al. (<a class="ltx_ref" href="https://arxiv.org/html/2412.17758v1#bib.bib12" title="">2024b</a>)</cite> | 53.2 | 53.2 / 79.0 | <span class="ltx_text" style="background-color:#E6F4FB;">&#8194;<span class="ltx_text ltx_phantom"><span style="visibility:hidden">Ay</span></span>separation</span> |
| Gemma 2 27B <cite class="ltx_cite ltx_citemacro_cite">Gemma Team et al. (<a class="ltx_ref" href="https://arxiv.org/html/2412.17758v1#bib.bib11" title="">2024a</a>)</cite> | 71.4 | 65.8 / 90.0 | <span class="ltx_text" style="background-color:#E6F4FB;">&#8194;<span class="ltx_text ltx_phantom"><span style="visibility:hidden">Ay</span></span>separation</span> |{{< /table-caption >}}

> 🔼 This table presents the measured and reported ARC Challenge scores from various sources, along with the author's evaluation setup (separation or options).  It compares the reported scores with the scores obtained using both 'separation' and 'options' evaluation methods. A dagger symbol ( † ) indicates that 25-shot prompting was used instead of 0-shot prompting.
> <details>
> <summary>read the caption</summary>
> Table 1: Measured and reported ARC Challenge scores with our assessment of the setup used by authors. The 25-shot prompting used in contrast to the 0-shot is denoted by ††\dagger† (in the case authors use such a setup in their report).
> </details>





### In-depth insights


#### Eval Setup Bias
The concept of 'Eval Setup Bias' highlights how seemingly minor variations in evaluation methodology can significantly skew the results and interpretations of large language model (LLM) performance.  The paper reveals a critical bias stemming from how multiple-choice question answers are presented to the model: **in isolation versus alongside other options.**  This seemingly small difference dramatically impacts accuracy, exposing a flaw in many benchmark evaluations which assess LLMs in a manner that does not mirror typical human reasoning.  **The isolated approach significantly underestimates the true capabilities of LLMs**, especially in questions requiring comparison across alternatives.  The research powerfully demonstrates that fairer evaluation methods, presenting all options simultaneously, lead to considerable performance improvements, sometimes even surpassing human-level accuracy. This underscores the importance of carefully considering evaluation design and its potential to introduce biases that affect conclusions about model performance.  **The implications extend beyond the specific benchmarks studied, suggesting a need for broader reform in LLM evaluation practices.**

#### LLM Reasoning
LLM reasoning capabilities are a complex and evolving area of research.  Current benchmarks often **misrepresent** actual model abilities due to flawed evaluation methodologies.  The paper highlights the significance of presenting multiple-choice question options simultaneously, instead of in isolation, revealing a **substantial performance improvement** in several datasets.  This adjustment better mirrors how humans approach such problems, thus providing more accurate insights into actual model reasoning prowess. The findings underscore the importance of **carefully designing evaluation protocols** to avoid artificially inflating or deflating perceived model capabilities.  **Bias introduced by evaluation setups** can lead to inaccurate conclusions about LLM reasoning abilities, and therefore, the community should prioritize fairness and accuracy in benchmarking.

#### Benchmark Reform
The concept of "Benchmark Reform" in evaluating large language models (LLMs) centers on **re-evaluating existing benchmarks** to better reflect true model capabilities.  The paper highlights how current evaluation setups, particularly the isolated scoring of multiple-choice answers, can **misrepresent model performance**.  By proposing a reformed approach where models consider all options simultaneously, the authors demonstrate a significant improvement in scores.  This shift reveals that previously observed performance gaps might not reflect inherent limitations in reasoning abilities but rather flaws in the evaluation methodology. **Fairer evaluation methods**, as advocated by the paper, are crucial for accurately assessing LLMs' progress and avoiding misleading conclusions about their strengths and weaknesses.  This approach emphasizes the importance of aligning evaluation with the natural reasoning process that humans employ when encountering such multiple-choice questions, thus leading to a more accurate assessment of the capabilities of LLMs.

#### Beyond ARC
The heading "Beyond ARC" suggests a discussion moving past the limitations of the AI Reasoning Challenge (ARC) dataset.  ARC, while initially impactful, may now be considered insufficient for evaluating advanced LLMs.  The paper likely explores newer, more complex benchmarks that necessitate higher-order reasoning capabilities beyond what ARC tests, **possibly focusing on challenges that involve commonsense reasoning, multi-step inference, or real-world knowledge integration.**  A key point would be **comparing and contrasting the newer benchmarks with ARC** in terms of task complexity, evaluation methodology, and the insights they offer regarding LLM performance.  This section might also discuss **the limitations inherent in current multiple-choice question evaluation setups** and propose novel approaches to assess LLM reasoning more effectively.  Finally, "Beyond ARC" could **propose future research directions** for developing even more sophisticated reasoning tests to truly gauge the progress of LLMs and identify their remaining shortcomings.

#### Future of QA
The future of Question Answering (QA) systems hinges on addressing current limitations and exploiting emerging technologies.  **Moving beyond simple keyword matching** towards genuine comprehension will be crucial, requiring advancements in natural language understanding and reasoning capabilities.  **Contextual awareness** is also key; future QA systems must be able to accurately interpret nuanced questions and utilize relevant external knowledge sources.  The integration of **multimedia data** (images, video, audio) will expand the scope of QA, enabling more complex and realistic interactions.  Furthermore, the development of **robust and explainable systems** is vital for increased trust and transparency.  **Ethical considerations**, such as mitigating bias and preventing misuse, will also be paramount in shaping the future of QA.  Finally,  **focus on human-computer collaboration** will pave the way for more effective and intuitive QA interfaces.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2412.17758/x2.png)

> 🔼 Figure 2 illustrates the 'separation' evaluation setup in multi-choice question answering.  The model is presented with a single answer choice and asked to assess its correctness without being shown the other options.  This is contrasted with the 'options' setup (Figure 3) which provides all choices simultaneously. This setup is discussed as commonly overused and potentially misleading, as it doesn't reflect natural reasoning where comparing options is integral. The caption also notes that when answer choices vary in length, normalization (as suggested by Gao, 2021) is a good practice to ensure fair comparison.
> <details>
> <summary>read the caption</summary>
> Figure 2: Model considers particular choices in   Ayseparation  without knowing the alternative (prompt includes only the question). Because options may vary in length, it is a good practice to normalize them Gao (2021).
> </details>



![](https://arxiv.org/html/2412.17758/x3.png)

> 🔼 This figure illustrates an improved method for evaluating model performance in multiple-choice question answering. Unlike Figure 2, where the model assesses each answer choice in isolation, Figure 3 presents all choices simultaneously within the prompt. This contextual approach is considered more natural and fairer because it reflects how humans approach such problems. The simplicity of using single-letter options eliminates the need for score normalization, a common issue when dealing with various option lengths.
> <details>
> <summary>read the caption</summary>
> Figure 3: Model sees the context of all possible   Ayoptions  in the prompt. Because all of the options are single letters (likely single tokens), scores require no normalization.
> </details>



![](https://arxiv.org/html/2412.17758/x4.png)

> 🔼 This figure displays the results of the ARC Challenge evaluation conducted using two different setups: one where the model considers each answer choice in isolation ('separation'), and another where the model is presented with all answer choices at once ('options'). The bar chart visually represents the accuracy scores achieved by several different large language models (LLMs) under each setup.  The key takeaway is the significant difference in accuracy scores between the two setups, with differences reaching up to 35%. This demonstrates that the evaluation setup significantly impacts the perceived difficulty of the task and the resulting model rankings. The 'options' setup generally leads to substantially higher accuracy scores.
> <details>
> <summary>read the caption</summary>
> Figure 4: ARC Challenge evaluation results depending on whether the model sees other options or considers each answer separately. Differences reach up to 35%, and assumed setup impacts model rankings.
> </details>



![](https://arxiv.org/html/2412.17758/x5.png)

> 🔼 This figure displays the OpenBookQA evaluation results, comparing model performance when evaluating answers individually (separation) versus evaluating them within the context of all answer choices (options). The results show that, when considering all options simultaneously, current large language models surpass human performance on this benchmark, highlighting the impact of evaluation methodology on perceived model capabilities.
> <details>
> <summary>read the caption</summary>
> Figure 5: OpenBookQA evaluation results depending on whether the model sees other options or considers each answer separately. In a setup with options, current models outperform human test takers.
> </details>



![](https://arxiv.org/html/2412.17758/x6.png)

> 🔼 This figure displays the results of evaluating the SIQA benchmark using two different multiple-choice question evaluation setups.  The 'separation' setup evaluates each answer choice independently of the others, while the 'options' setup provides all choices to the model simultaneously.  The graph compares the accuracy of various large language models (LLMs) under each condition.  The key finding is that presenting all options together ('options' setup) leads to a substantial improvement in accuracy (up to 24%), suggesting the previous evaluation methodology underestimated LLM capabilities on this benchmark.
> <details>
> <summary>read the caption</summary>
> Figure 6: SIQA evaluation results depending on whether the model sees other options or considers each answer separately. Reformulation leads to up to 24% improvement.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
| Model | Reported | Measured  s / o | Assessment |
|---|---|---|---| 
| Llama 65B Touvron et al. (2023a) | 52.3 | 50.3 / 60.1 |  separation |
| Llama 2 70B Touvron et al. (2023b) | 50.7 | 50.8 / 66.9 |  separation |
| Llama 3 70B Grattafiori et al. (2024) | 52.2 | 51.2 / 72.9 |  separation |
| Mistral 7B Jiang et al. (2023) | —<sup>⋄</sup> | 50.9 / 62.4 | — |
| Mixtral 8x7B Jiang et al. (2024) | —<sup>⋄</sup> | 49.4 / 65.1 | — |
| Mixtral 8x22B Mistral AI (2024) | — | 51.1 / 67.3 | — |
| DeepSeek 67B DeepSeek AI et al. (2024a) | — | 51.6 / 61.6 | — |
| DeepSeek V2 DeepSeek AI et al. (2024b) | — | 52.2 / 70.0 | — |
| Qwen 14B Bai et al. (2023) | 77.9 | 56.2 / 78.6 |  options |
| Yi 6B 01. AI et al. (2024) | — | 52.5 / 71.0 | — |
| Gemma 7B Gemma Team et al. (2024b) | 51.8 | 51.8 / 60.0 |  separation |
| Gemma 2 27B Gemma Team et al. (2024a) | 53.7 | 58.3 / 70.0 |  separation |{{< /table-caption >}}
> 🔼 This table presents the measured and reported SIQA scores from various studies.  It also includes an assessment of the evaluation setup used by each study (separation or options), indicating whether the model evaluated answer choices individually or in the context of all choices. Note that some authors don't report raw SIQA scores; they average them with other datasets, leading to less certain assessment of the setup in those cases (indicated by a ⋄ symbol).
> <details>
> <summary>read the caption</summary>
> Table 2: Measured and reported SIQA scores with our assessment of the setup used by authors. Some authors do not directly report scores but average them with other commonsense reasoning problems (denoted by ⋄), making our assessment unlikely to succeed.
> </details>

{{< table-caption >}}
| Model | Reported | Measured  s / o / s<sub>b</sub> / o<sub>b</sub> | Assessment |
|---|---|---|---| 
| Llama 65B [Touvron et al. (2023a)](https://arxiv.org/html/2412.17758/bib26.png) | 60.2 | 47.0 / 59.0 / 60.2 / 56.2 | s<sub>b</sub> separation |
| Llama 2 70B [Touvron et al. (2023b)](https://arxiv.org/html/2412.17758/bib27.png) | 60.2 | 48.8 / 73.0 / 60.0 / 65.8 | s<sub>b</sub> separation |
| Llama 3 70B [Grattafiori et al. (2024)](https://arxiv.org/html/2412.17758/bib14.png) | 47.6 | 48.6 / 88.4 / 59.4 / 88.5 | separation |
| Mistral 7B [Jiang et al. (2023)](https://arxiv.org/html/2412.17758/bib16.png) | —<sup>⋄</sup> | 44.2 / 71.6 / 55.0 / 57.8 | — |
| Mixtral 8x7B [Jiang et al. (2024)](https://arxiv.org/html/2412.17758/bib17.png) | —<sup>⋄</sup> | 47.0 / 80.2 / 55.2 / 78.0 | — |
| Mixtral 8x22B [Mistral AI (2024)](https://arxiv.org/html/2412.17758/bib20.png) | — | 49.6 / 81.6 / 61.2 / 78.4 | — |
| DeepSeek 67B [DeepSeek AI et al. (2024a)](https://arxiv.org/html/2412.17758/bib7.png) | 60.2 | 47.6 / 76.6 / 62.0 / 76.2 | s<sub>b</sub> separation |
| DeepSeek V2 [DeepSeek AI et al. (2024b)](https://arxiv.org/html/2412.17758/bib8.png) | — | 38.6 / 82.8 / 62.4 / 84.2 | — |
| Qwen 14B [Bai et al. (2023)](https://arxiv.org/html/2412.17758/bib2.png) | — | 43.8 / 87.0 / 54.6 / 79.8 | — |
| Yi 6B [01. AI et al. (2024)](https://arxiv.org/html/2412.17758/bib1.png) | —<sup>⋄</sup> | 40.4 / 68.2 / 53.6 / 67.6 | — |
| Gemma 7B [Gemma Team et al. (2024b)](https://arxiv.org/html/2412.17758/bib12.png) | — | 44.8 / 65.2 / 58.2 / 65.8 | — |
| Gemma 2 27B [Gemma Team et al. (2024a)](https://arxiv.org/html/2412.17758/bib11.png) | — | 47.6 / 83.0 / 59.8 / 81.4 | — |{{< /table-caption >}}
> 🔼 This table presents the OpenBookQA scores reported by various authors, along with the authors' evaluation setup (separation or options) and the scores measured by the authors of this paper. The table highlights discrepancies between reported and measured scores.  A '⋄' symbol indicates cases where authors averaged OpenBookQA scores with other commonsense reasoning tasks, making it difficult to accurately assess their evaluation setup.
> <details>
> <summary>read the caption</summary>
> Table 3: Measured and reported OpenBookQA scores with our assessment of the setup used by authors. Some authors do not directly report scores but average them with other commonsense reasoning problems (denoted by ⋄).
> </details>

{{< table-caption >}}
| Model |
|---|---| 
| `huggyllama/llama-65b` |
| `meta-llama/Llama-2-70b-hf` |
| `meta-llama/Meta-Llama-3-70B` |
| `mistralai/Mistral-7B-v0.1` |
| `mistralai/Mixtral-8x7B-v0.1` |
| `mistralai/Mixtral-8x22B-v0.1` |
| `deepseek-ai/deepseek-llm-67b-base` |
| `deepseek-ai/DeepSeek-V2` |
| `Qwen/Qwen-14B` |
| `01-ai/Yi-6B` |
| `google/gemma-7b` |
| `google/gemma-2-27b` |{{< /table-caption >}}
> 🔼 This table lists the specific model variants used in the experiments for evaluating the impact of different evaluation setups on various benchmarks.  For each benchmark (ARC, OpenBookQA, SIQA), the authors used various large language models (LLMs) from different sources (e.g., Meta, Mistral, DeepSeek, Google) and versions, ensuring consistency in the comparison of experimental results across models.
> <details>
> <summary>read the caption</summary>
> Table 4: Exact variants of models used for evaluation.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2412.17758/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.17758/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.17758/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.17758/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.17758/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.17758/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.17758/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.17758/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}