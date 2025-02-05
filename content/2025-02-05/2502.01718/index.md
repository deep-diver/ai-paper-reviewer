---
title: "ACECODER: Acing Coder RL via Automated Test-Case Synthesis"
summary: "AceCoder uses automated test-case synthesis to create a large-scale dataset for training reward models, enabling effective reinforcement learning to significantly boost code generation model performan..."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Machine Learning", "Reinforcement Learning", "🏢 University of Waterloo",]
showSummary: true
date: 2025-02-03
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2502.01718 {{< /keyword >}}
{{< keyword icon="writer" >}} Huaye Zeng et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-02-05 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2502.01718" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2502.01718" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2502.01718/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Current advancements in code generation models heavily rely on supervised fine-tuning, but the potential of reinforcement learning (RL) remains largely unexplored due to the scarcity of reliable reward signals and large-scale datasets. This paper introduces AceCoder, a novel approach that leverages automated large-scale test-case synthesis to construct preference pairs from existing code data, thereby training reward models with a Bradley-Terry loss.  These reward models, along with test-case pass rates, are used to conduct RL, resulting in consistent performance improvements across multiple coding benchmarks.

AceCoder demonstrates significant performance gains, particularly for smaller models (7B), achieving results comparable to larger models (236B).  The RL training significantly boosts performance on HumanEval and MBPP.  The paper also highlights the importance of using well-formed questions and well-filtered test cases. The introduced ACECODE-89K dataset, containing 89K coding questions and 300K test cases, is a significant contribution to the field, fostering future research in RL for code generation.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Automated test-case synthesis is successfully applied to create reliable reward signals for RL in code generation. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} ACECODE-89K, a large-scale dataset of coding problems with test cases, is generated and used for training. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Reinforcement learning with the generated reward model significantly improves code generation models, achieving performance comparable to much larger models trained solely with supervised fine-tuning. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper is important because it addresses the critical challenge of reliable reward signal generation for reinforcement learning in code generation models. By introducing a novel automated test-case synthesis pipeline and a large-scale dataset (ACECODE-89K), it opens new avenues for applying RL to improve code generation models significantly, potentially surpassing the performance of solely SFT-based models.  This work is highly relevant to the current trend of enhancing large language models with RL, and its findings and dataset are valuable resources for future research in this area.

------
#### Visual Insights



![](https://arxiv.org/html/2502.01718/x1.png)

> 🔼 The figure illustrates the workflow of the ACECODER model.  It begins with a seed code dataset, which is processed to generate well-formed coding questions and their corresponding test cases. A filtering step then removes noisy or unreliable test cases. The remaining, high-quality test cases are used to create positive and negative program pairs based on their pass/fail rates. These pairs are then used to train reward models, which are subsequently employed in reinforcement learning (RL) to improve the code generation model's performance.
> <details>
> <summary>read the caption</summary>
> Figure 1: Overall Workflow of our model: We start from the seed code dataset to create well-formatted questions and corresponding test cases. Then we adopt strong models like filter the noisy test cases. Finally, we adopt these test cases to harvest positive and negative program pairs for reward model training and RL.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S3.T1.1.1">
<tr class="ltx_tr" id="S3.T1.1.1.1">
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T1.1.1.1.1">Subset</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T1.1.1.1.2">Evol</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T1.1.1.1.3">OSS</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T1.1.1.1.4">Stack Python</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T1.1.1.1.5">Overall</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.1.2">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="5" id="S3.T1.1.1.2.1">Before Filtering</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.1.3">
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.3.1"># Examples</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.3.2">36,256</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.3.3">37,750</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.3.4">50,000</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.3.5">124,006</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.1.4">
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.4.1"># Avg Test Cases</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.4.2">19.33</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.4.3">17.21</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.4.4">18.27</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.4.5">18.27</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.1.5">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="5" id="S3.T1.1.1.5.1">After Filtering</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.1.6">
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.6.1"># Examples</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.6.2">27,853</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.6.3">26,346</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.6.4">35,223</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.6.5">89,422</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.1.7">
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.7.1"># Avg Test Cases</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.7.2">14.77</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.7.3">16.11</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.7.4">15.79</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.7.5">15.56</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.1.8">
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.1.1.8.1"># Pairs</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.1.1.8.2">89,089</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.1.1.8.3">91,636</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.1.1.8.4">126,784</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.1.1.8.5">307,509</td>
</tr>
</table>{{< /table-caption >}}

> 🔼 This table presents a statistical overview of the ACECODE-89K dataset, both before and after the application of a filtering process on its test cases.  It shows the number of examples, the average number of test cases per example, and the number of positive and negative program pairs created for training. The 'before filtering' section displays the initial dataset statistics, while the 'after filtering' section highlights the characteristics of the dataset after removing noisy or unreliable test cases. This filtered dataset is the one used in the subsequent experiments.
> <details>
> <summary>read the caption</summary>
> Table 1: Dataset statistics of AceCode-89K before and after test-case filtering.
> </details>





### In-depth insights


#### RL in Code Generation
Reinforcement learning (RL) presents a powerful paradigm for advancing code generation, offering a potential solution to the limitations of supervised fine-tuning.  **RL's ability to learn from interactions and optimize for complex reward functions is particularly well-suited to the nuanced and multifaceted nature of code evaluation.** Unlike supervised methods which rely heavily on large, correctly labeled datasets, RL can learn from less structured feedback, such as pass/fail test results.  **This makes RL particularly attractive for scenarios where comprehensive labelled data is scarce or expensive to obtain**, a frequent challenge in code generation.  A key challenge, however, lies in designing effective reward functions that accurately capture code quality.  **Reward functions must balance multiple criteria, such as correctness, efficiency, and readability**, and ideally adapt to different coding tasks and problem complexities.  Furthermore, the computational cost of RL training remains a significant hurdle.  The development of efficient RL algorithms and reward shaping techniques are crucial for making RL a practical tool for large-scale code generation.  **Ultimately, the successful integration of RL in code generation hinges on the careful design of reward functions and the development of efficient training methodologies.**

#### Test-Case Synthesis
The concept of automated test-case synthesis is a crucial aspect of the research paper, significantly enhancing the training process of code generation models.  **Instead of relying on manually created test cases, which are often costly and time-consuming to produce**, the proposed method automatically generates a large number of test cases. This is achieved by leveraging a large language model (LLM) to rewrite coding problems into a standardized format.  **The LLM also generates multiple test cases for each rewritten problem, effectively augmenting the training data.** This automated approach addresses the limitations of traditional supervised fine-tuning methods by providing a more extensive and reliable dataset for model training, thereby **improving the robustness and generalizability of the resulting code generation models**. The generated test-cases, further filtered for quality and accuracy, form a core component of a new dataset (ACECODE-89K) that facilitates the training of both reward models and the code generation models themselves, demonstrating the effectiveness of this automated synthesis technique.

#### Reward Model Training
The core of reward model training in this research lies in **leveraging automatically generated, large-scale test cases to create a reliable reward signal for reinforcement learning in code generation models.**  Instead of relying on costly human evaluation, the authors synthesize test cases from existing code datasets, then use a Bradley-Terry model to train a reward model.  This innovative approach addresses a major limitation in existing code-generation RL research: the scarcity of high-quality reward data. The use of Bradley-Terry loss for preference learning is particularly insightful, enabling effective training from pairwise comparisons of program pass rates.  The resulting reward model guides subsequent reinforcement learning stages, **significantly improving the performance of the base coding models on standard benchmarks.** This method's strength hinges on its automated pipeline for creating robust and scalable training data, pushing the boundaries of RL applications in the code generation domain.

#### Reinforcement Learning
The research paper explores the use of reinforcement learning (RL) in enhancing code generation models.  A key challenge addressed is the **lack of reliable reward signals** in the code domain, traditionally hindering RL's effectiveness. The proposed solution leverages **automated large-scale test-case synthesis**. This approach generates extensive (question, test-cases) pairs, enabling the construction of robust reward models using pass rates as feedback signals. The study demonstrates **significant improvements** in model performance on various coding benchmarks (HumanEval, MBPP, etc.) by integrating this RL method.  **Best-of-N sampling** techniques further enhance efficiency. Interestingly, starting RL training directly from a base model (without supervised fine-tuning) yields impressive results, highlighting the method's potential for effective model optimization. Overall, the findings suggest that integrating automated test-case synthesis with RL offers a powerful strategy to advance code generation models, overcoming limitations of traditional supervised fine-tuning methods.

#### Future of Coder LLMs
The future of Coder LLMs hinges on addressing current limitations and leveraging emerging technologies. **Improved reward models** are crucial for effective reinforcement learning, enabling more sophisticated code generation and debugging capabilities.  **Larger, more diverse datasets** are needed to enhance generalization and reduce biases. **Advanced techniques** like program synthesis and automated test-case generation will play a key role in creating more robust and reliable models. **Integration with development tools** and seamless incorporation into existing workflows will be essential for broader adoption.  The future also includes **focus on specific coding tasks**, such as program repair, optimization, and code documentation, creating specialized, highly efficient LLMs.  **Addressing ethical concerns**, including bias mitigation and security vulnerabilities, will be paramount. Ultimately, Coder LLMs will become indispensable tools for software development, drastically increasing productivity and accessibility, making advanced programming techniques available to a broader range of users.


### More visual insights




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S4.T2.6.6">
<tr class="ltx_tr" id="S4.T2.6.6.7">
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.6.6.7.1" rowspan="2"><span class="ltx_text" id="S4.T2.6.6.7.1.1">Mehod</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.6.6.7.2" rowspan="2"><span class="ltx_text" id="S4.T2.6.6.7.2.1"># N</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="S4.T2.6.6.7.3">HumanEval</td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="S4.T2.6.6.7.4">MBPP</td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="S4.T2.6.6.7.5">BigCodeBench-C</td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="S4.T2.6.6.7.6">BigCodeBench-I</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.6.6.7.7">LiveCodeBench</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.6.6.7.8" rowspan="2"><span class="ltx_text ltx_font_bold" id="S4.T2.6.6.7.8.1">Average</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.6.6.8">
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.8.1">-</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.8.2">Plus</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.8.3">-</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.8.4">Plus</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.8.5">Full</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.8.6">Hard</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.8.7">Full</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.8.8">Hard</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.8.9">V4</td>
</tr>
<tr class="ltx_tr" id="S4.T2.6.6.9">
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.6.6.9.1">GPT-4o (0806)</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.6.6.9.2">1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.6.6.9.3">92.7</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.6.6.9.4">87.2</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.6.6.9.5">87.6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.6.6.9.6">72.2</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.6.6.9.7">58.9</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.6.6.9.8">36.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.6.6.9.9">48.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.6.6.9.10">25.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.6.6.9.11">43.6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.6.6.9.12">61.3</td>
</tr>
<tr class="ltx_tr" id="S4.T2.6.6.10">
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.10.1">DeepSeek-V2.5</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.10.2">1</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.10.3">90.2</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.10.4">83.5</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.10.5">87.6</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.10.6">74.1</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.10.7">53.2</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.10.8">29.1</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.10.9">48.9</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.10.10">27.0</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.10.11">41.8</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.10.12">59.5</td>
</tr>
<tr class="ltx_tr" id="S4.T2.6.6.11">
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.11.1">DeepSeek-V3</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.11.2">1</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.11.3">91.5</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.11.4">86.6</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.11.5">87.6</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.11.6">73.0</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.11.7">62.2</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.11.8">39.9</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.11.9">50.0</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.11.10">27.7</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.11.11">63.5</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.11.12">64.6</td>
</tr>
<tr class="ltx_tr" id="S4.T2.6.6.12">
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.12.1">Qwen2.5-Coder-32B</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.12.2">1</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.12.3">92.1</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.12.4">87.2</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.12.5">90.5</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.12.6">77.0</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.12.7">58.0</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.12.8">33.8</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.12.9">49.0</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.12.10">27.7</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.12.11">48.3</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.12.12">62.6</td>
</tr>
<tr class="ltx_tr" id="S4.T2.6.6.13">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="12" id="S4.T2.6.6.13.1">Inference Model = Mistral-7B-Instruct-V0.3</td>
</tr>
<tr class="ltx_tr" id="S4.T2.6.6.14">
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.6.6.14.1">Greedy</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.6.6.14.2">1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.6.6.14.3">36.6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.6.6.14.4">31.1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.6.6.14.5">49.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.6.6.14.6">41.3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.6.6.14.7">25.9</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.6.6.14.8">6.1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.6.6.14.9">20.1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.6.6.14.10">5.4</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.6.6.14.11">7.3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.6.6.14.12">24.8</td>
</tr>
<tr class="ltx_tr" id="S4.T2.6.6.15">
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.15.1">Average</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.15.2">64</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.15.3">37.1</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.15.4">30.8</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.15.5">45.1</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.15.6">38.0</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.15.7">21.7</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.15.8">4.2</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.15.9">17.6</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.15.10">3.0</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.15.11">4.0</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.15.12">22.4</td>
</tr>
<tr class="ltx_tr" id="S4.T2.6.6.16">
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.16.1">Oracle</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.16.2">64</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.16.3">87.2</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.16.4">78.0</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.16.5">83.9</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.16.6">73.5</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.16.7">68.4</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.16.8">37.8</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.16.9">58.5</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.16.10">31.1</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.16.11">24.3</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.16.12">60.3</td>
</tr>
<tr class="ltx_tr" id="S4.T2.6.6.17">
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.6.6.17.1" rowspan="3"><span class="ltx_text" id="S4.T2.6.6.17.1.1">AceCodeRM-7B</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.6.6.17.2">16</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.6.6.17.3">65.9</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.6.6.17.4">56.7</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.6.6.17.5">59.3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.6.6.17.6"><span class="ltx_text ltx_font_bold" id="S4.T2.6.6.17.6.1">52.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.6.6.17.7">35.1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.6.6.17.8">10.1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.6.6.17.9">29.3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.6.6.17.10">8.8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.6.6.17.11">11.9</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.6.6.17.12">36.6</td>
</tr>
<tr class="ltx_tr" id="S4.T2.6.6.18">
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.18.1">32</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.18.2">68.3</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.18.3">58.5</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.18.4">59.8</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.18.5">51.6</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.18.6">37.4</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.18.7">8.8</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.18.8">30.7</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.18.9">10.8</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.18.10">14.6</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.18.11">37.8</td>
</tr>
<tr class="ltx_tr" id="S4.T2.6.6.19">
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.19.1">64</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.19.2">71.3</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.19.3">61.6</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.19.4">59.8</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.19.5">51.6</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.19.6">39.4</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.19.7">6.8</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.19.8">31.8</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.19.9">9.5</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.19.10">15.4</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.19.11">38.6</td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.1.1" style="background-color:#E0FFFF;">
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.1.1">
<math alttext="\Delta" class="ltx_Math" display="inline" id="S4.T2.1.1.1.1.m1.1" style="background-color:#E0FFFF;"><semantics id="S4.T2.1.1.1.1.m1.1a"><mi id="S4.T2.1.1.1.1.m1.1.1" mathbackground="#E0FFFF" mathvariant="normal" xref="S4.T2.1.1.1.1.m1.1.1.cmml">Δ</mi><annotation-xml encoding="MathML-Content" id="S4.T2.1.1.1.1.m1.1b"><ci id="S4.T2.1.1.1.1.m1.1.1.cmml" xref="S4.T2.1.1.1.1.m1.1.1">Δ</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.1.1.1.1.m1.1c">\Delta</annotation><annotation encoding="application/x-llamapun" id="S4.T2.1.1.1.1.m1.1d">roman_Δ</annotation></semantics></math><span class="ltx_text" id="S4.T2.1.1.1.1.1" style="background-color:#E0FFFF;"> (RM-greedy)</span>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.1.2"><span class="ltx_text" id="S4.T2.1.1.1.2.1" style="background-color:#E0FFFF;">-</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.1.3"><span class="ltx_text" id="S4.T2.1.1.1.3.1" style="background-color:#E0FFFF;">+34.8</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.1.4"><span class="ltx_text" id="S4.T2.1.1.1.4.1" style="background-color:#E0FFFF;">+30.5</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.1.5"><span class="ltx_text" id="S4.T2.1.1.1.5.1" style="background-color:#E0FFFF;">+10.3</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.1.6"><span class="ltx_text" id="S4.T2.1.1.1.6.1" style="background-color:#E0FFFF;">+11.1</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.1.7"><span class="ltx_text" id="S4.T2.1.1.1.7.1" style="background-color:#E0FFFF;">+13.5</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.1.8"><span class="ltx_text" id="S4.T2.1.1.1.8.1" style="background-color:#E0FFFF;">+4.1</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.1.9"><span class="ltx_text" id="S4.T2.1.1.1.9.1" style="background-color:#E0FFFF;">+11.7</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.1.10"><span class="ltx_text" id="S4.T2.1.1.1.10.1" style="background-color:#E0FFFF;">+5.4</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.1.11"><span class="ltx_text" id="S4.T2.1.1.1.11.1" style="background-color:#E0FFFF;">+8.1</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.1.12"><span class="ltx_text" id="S4.T2.1.1.1.12.1" style="background-color:#E0FFFF;">+13.8</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.6.6.20">
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.6.6.20.1" rowspan="3"><span class="ltx_text" id="S4.T2.6.6.20.1.1">AceCodeRM-32B</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.6.6.20.2">16</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.6.6.20.3">68.3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.6.6.20.4">61.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.6.6.20.5">58.7</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.6.6.20.6">49.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.6.6.20.7">37.7</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.6.6.20.8">11.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.6.6.20.9">30.9</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.6.6.20.10">10.1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.6.6.20.11">12.9</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.6.6.20.12">37.8</td>
</tr>
<tr class="ltx_tr" id="S4.T2.6.6.21">
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.21.1">32</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.21.2">72.6</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.21.3"><span class="ltx_text ltx_font_bold" id="S4.T2.6.6.21.3.1">65.9</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.21.4"><span class="ltx_text ltx_font_bold" id="S4.T2.6.6.21.4.1">61.6</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.21.5">51.6</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.21.6">40.5</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.21.7">9.5</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.21.8">33.9</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.21.9">13.5</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.21.10">16.1</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.21.11">40.6</td>
</tr>
<tr class="ltx_tr" id="S4.T2.6.6.22">
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.22.1">64</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.22.2"><span class="ltx_text ltx_font_bold" id="S4.T2.6.6.22.2.1">75.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.22.3">64.6</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.22.4">60.6</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.22.5">50.0</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.22.6"><span class="ltx_text ltx_font_bold" id="S4.T2.6.6.22.6.1">42.7</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.22.7"><span class="ltx_text ltx_font_bold" id="S4.T2.6.6.22.7.1">15.5</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.22.8"><span class="ltx_text ltx_font_bold" id="S4.T2.6.6.22.8.1">35.6</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.22.9"><span class="ltx_text ltx_font_bold" id="S4.T2.6.6.22.9.1">13.5</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.22.10"><span class="ltx_text ltx_font_bold" id="S4.T2.6.6.22.10.1">17.4</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.22.11"><span class="ltx_text ltx_font_bold" id="S4.T2.6.6.22.11.1">41.7</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.2.2" style="background-color:#E0FFFF;">
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.2.1">
<math alttext="\Delta" class="ltx_Math" display="inline" id="S4.T2.2.2.2.1.m1.1" style="background-color:#E0FFFF;"><semantics id="S4.T2.2.2.2.1.m1.1a"><mi id="S4.T2.2.2.2.1.m1.1.1" mathbackground="#E0FFFF" mathvariant="normal" xref="S4.T2.2.2.2.1.m1.1.1.cmml">Δ</mi><annotation-xml encoding="MathML-Content" id="S4.T2.2.2.2.1.m1.1b"><ci id="S4.T2.2.2.2.1.m1.1.1.cmml" xref="S4.T2.2.2.2.1.m1.1.1">Δ</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.2.2.2.1.m1.1c">\Delta</annotation><annotation encoding="application/x-llamapun" id="S4.T2.2.2.2.1.m1.1d">roman_Δ</annotation></semantics></math><span class="ltx_text" id="S4.T2.2.2.2.1.1" style="background-color:#E0FFFF;"> (RM-greedy)</span>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.2.2"><span class="ltx_text" id="S4.T2.2.2.2.2.1" style="background-color:#E0FFFF;">-</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.2.3"><span class="ltx_text" id="S4.T2.2.2.2.3.1" style="background-color:#E0FFFF;">+38.4</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.2.4"><span class="ltx_text" id="S4.T2.2.2.2.4.1" style="background-color:#E0FFFF;">+34.8</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.2.5"><span class="ltx_text" id="S4.T2.2.2.2.5.1" style="background-color:#E0FFFF;">+12.2</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.2.6"><span class="ltx_text" id="S4.T2.2.2.2.6.1" style="background-color:#E0FFFF;">+11.1</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.2.7"><span class="ltx_text" id="S4.T2.2.2.2.7.1" style="background-color:#E0FFFF;">+16.8</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.2.8"><span class="ltx_text" id="S4.T2.2.2.2.8.1" style="background-color:#E0FFFF;">+9.5</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.2.9"><span class="ltx_text" id="S4.T2.2.2.2.9.1" style="background-color:#E0FFFF;">+15.5</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.2.10"><span class="ltx_text" id="S4.T2.2.2.2.10.1" style="background-color:#E0FFFF;">+8.1</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.2.11"><span class="ltx_text" id="S4.T2.2.2.2.11.1" style="background-color:#E0FFFF;">+10.1</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.2.12"><span class="ltx_text" id="S4.T2.2.2.2.12.1" style="background-color:#E0FFFF;">+17.4</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.6.6.23">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="12" id="S4.T2.6.6.23.1">Inference Model = Llama-3.1-8B-Instruct</td>
</tr>
<tr class="ltx_tr" id="S4.T2.6.6.24">
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.6.6.24.1">Greedy</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.6.6.24.2">1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.6.6.24.3">68.9</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.6.6.24.4">62.2</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.6.6.24.5">67.2</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.6.6.24.6">54.8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.6.6.24.7">38.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.6.6.24.8">12.8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.6.6.24.9">31.8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.6.6.24.10">13.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.6.6.24.11">18.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.6.6.24.12">40.9</td>
</tr>
<tr class="ltx_tr" id="S4.T2.6.6.25">
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.25.1">Average</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.25.2">64</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.25.3">61.7</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.25.4">54.9</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.25.5">64.5</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.25.6">54.5</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.25.7">32.8</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.25.8">10.1</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.25.9">26.6</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.25.10">9.0</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.25.11">13.8</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.25.12">36.4</td>
</tr>
<tr class="ltx_tr" id="S4.T2.6.6.26">
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.26.1">Oracle</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.26.2">64</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.26.3">93.9</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.26.4">90.2</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.26.5">92.1</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.26.6">82.3</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.26.7">80.0</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.26.8">54.7</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.26.9">67.9</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.26.10">48.6</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.26.11">40.8</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.26.12">72.3</td>
</tr>
<tr class="ltx_tr" id="S4.T2.6.6.27">
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.6.6.27.1" rowspan="3"><span class="ltx_text" id="S4.T2.6.6.27.1.1">AceCodeRM-7B</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.6.6.27.2">16</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.6.6.27.3">77.4</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.6.6.27.4">70.7</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.6.6.27.5"><span class="ltx_text ltx_font_bold" id="S4.T2.6.6.27.5.1">76.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.6.6.27.6"><span class="ltx_text ltx_font_bold" id="S4.T2.6.6.27.6.1">64.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.6.6.27.7">45.8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.6.6.27.8">20.3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.6.6.27.9">36.4</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.6.6.27.10">12.2</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.6.6.27.11">26.1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.6.6.27.12">47.7</td>
</tr>
<tr class="ltx_tr" id="S4.T2.6.6.28">
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.28.1">32</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.28.2">79.9</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.28.3">72.6</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.28.4">76.2</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.28.5">62.4</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.28.6">47.6</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.28.7">23.0</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.28.8">37.3</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.28.9">13.5</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.28.10">27.3</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.28.11">48.9</td>
</tr>
<tr class="ltx_tr" id="S4.T2.6.6.29">
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.29.1">64</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.29.2">81.7</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.29.3">74.4</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.29.4">74.6</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.29.5">61.9</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.29.6">47.8</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.29.7"><span class="ltx_text ltx_font_bold" id="S4.T2.6.6.29.7.1">23.6</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.29.8">38.1</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.29.9">13.5</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.29.10">27.6</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.29.11">49.3</td>
</tr>
<tr class="ltx_tr" id="S4.T2.3.3.3" style="background-color:#E0FFFF;">
<td class="ltx_td ltx_align_center" id="S4.T2.3.3.3.1">
<math alttext="\Delta" class="ltx_Math" display="inline" id="S4.T2.3.3.3.1.m1.1" style="background-color:#E0FFFF;"><semantics id="S4.T2.3.3.3.1.m1.1a"><mi id="S4.T2.3.3.3.1.m1.1.1" mathbackground="#E0FFFF" mathvariant="normal" xref="S4.T2.3.3.3.1.m1.1.1.cmml">Δ</mi><annotation-xml encoding="MathML-Content" id="S4.T2.3.3.3.1.m1.1b"><ci id="S4.T2.3.3.3.1.m1.1.1.cmml" xref="S4.T2.3.3.3.1.m1.1.1">Δ</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.3.3.3.1.m1.1c">\Delta</annotation><annotation encoding="application/x-llamapun" id="S4.T2.3.3.3.1.m1.1d">roman_Δ</annotation></semantics></math><span class="ltx_text" id="S4.T2.3.3.3.1.1" style="background-color:#E0FFFF;"> (RM-greedy)</span>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.3.3.2"><span class="ltx_text" id="S4.T2.3.3.3.2.1" style="background-color:#E0FFFF;">-</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.3.3.3"><span class="ltx_text" id="S4.T2.3.3.3.3.1" style="background-color:#E0FFFF;">+12.8</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.3.3.4"><span class="ltx_text" id="S4.T2.3.3.3.4.1" style="background-color:#E0FFFF;">+12.2</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.3.3.5"><span class="ltx_text" id="S4.T2.3.3.3.5.1" style="background-color:#E0FFFF;">+9.3</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.3.3.6"><span class="ltx_text" id="S4.T2.3.3.3.6.1" style="background-color:#E0FFFF;">+9.5</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.3.3.7"><span class="ltx_text" id="S4.T2.3.3.3.7.1" style="background-color:#E0FFFF;">+9.3</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.3.3.8"><span class="ltx_text" id="S4.T2.3.3.3.8.1" style="background-color:#E0FFFF;">+10.8</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.3.3.9"><span class="ltx_text" id="S4.T2.3.3.3.9.1" style="background-color:#E0FFFF;">+6.2</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.3.3.10"><span class="ltx_text" id="S4.T2.3.3.3.10.1" style="background-color:#E0FFFF;">0.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.3.3.11"><span class="ltx_text" id="S4.T2.3.3.3.11.1" style="background-color:#E0FFFF;">+9.6</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.3.3.12"><span class="ltx_text" id="S4.T2.3.3.3.12.1" style="background-color:#E0FFFF;">+8.4</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.6.6.30">
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.6.6.30.1" rowspan="3"><span class="ltx_text" id="S4.T2.6.6.30.1.1">AceCodeRM-32B</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.6.6.30.2">16</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.6.6.30.3">82.3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.6.6.30.4">74.4</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.6.6.30.5">72.8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.6.6.30.6">60.6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.6.6.30.7">49.8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.6.6.30.8">20.3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.6.6.30.9">38.4</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.6.6.30.10">13.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.6.6.30.11">27.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.6.6.30.12">48.8</td>
</tr>
<tr class="ltx_tr" id="S4.T2.6.6.31">
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.31.1">32</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.31.2">81.7</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.31.3">76.2</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.31.4">72.8</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.31.5">60.6</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.31.6"><span class="ltx_text ltx_font_bold" id="S4.T2.6.6.31.6.1">50.4</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.31.7">22.3</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.31.8">39.1</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.31.9">13.5</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.31.10">30.3</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.31.11">49.6</td>
</tr>
<tr class="ltx_tr" id="S4.T2.6.6.32">
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.32.1">64</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.32.2"><span class="ltx_text ltx_font_bold" id="S4.T2.6.6.32.2.1">85.4</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.32.3"><span class="ltx_text ltx_font_bold" id="S4.T2.6.6.32.3.1">79.3</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.32.4">72.0</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.32.5">59.0</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.32.6">48.5</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.32.7">19.6</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.32.8"><span class="ltx_text ltx_font_bold" id="S4.T2.6.6.32.8.1">40.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.32.9"><span class="ltx_text ltx_font_bold" id="S4.T2.6.6.32.9.1">13.5</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.32.10"><span class="ltx_text ltx_font_bold" id="S4.T2.6.6.32.10.1">31.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.32.11"><span class="ltx_text ltx_font_bold" id="S4.T2.6.6.32.11.1">49.8</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.4.4.4" style="background-color:#E0FFFF;">
<td class="ltx_td ltx_align_center" id="S4.T2.4.4.4.1">
<math alttext="\Delta" class="ltx_Math" display="inline" id="S4.T2.4.4.4.1.m1.1" style="background-color:#E0FFFF;"><semantics id="S4.T2.4.4.4.1.m1.1a"><mi id="S4.T2.4.4.4.1.m1.1.1" mathbackground="#E0FFFF" mathvariant="normal" xref="S4.T2.4.4.4.1.m1.1.1.cmml">Δ</mi><annotation-xml encoding="MathML-Content" id="S4.T2.4.4.4.1.m1.1b"><ci id="S4.T2.4.4.4.1.m1.1.1.cmml" xref="S4.T2.4.4.4.1.m1.1.1">Δ</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.4.4.4.1.m1.1c">\Delta</annotation><annotation encoding="application/x-llamapun" id="S4.T2.4.4.4.1.m1.1d">roman_Δ</annotation></semantics></math><span class="ltx_text" id="S4.T2.4.4.4.1.1" style="background-color:#E0FFFF;"> (RM-greedy)</span>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.4.4.4.2"><span class="ltx_text" id="S4.T2.4.4.4.2.1" style="background-color:#E0FFFF;">-</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.4.4.4.3"><span class="ltx_text" id="S4.T2.4.4.4.3.1" style="background-color:#E0FFFF;">+16.5</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.4.4.4.4"><span class="ltx_text" id="S4.T2.4.4.4.4.1" style="background-color:#E0FFFF;">+17.1</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.4.4.4.5"><span class="ltx_text" id="S4.T2.4.4.4.5.1" style="background-color:#E0FFFF;">+9.3</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.4.4.4.6"><span class="ltx_text" id="S4.T2.4.4.4.6.1" style="background-color:#E0FFFF;">+9.5</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.4.4.4.7"><span class="ltx_text" id="S4.T2.4.4.4.7.1" style="background-color:#E0FFFF;">+11.8</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.4.4.4.8"><span class="ltx_text" id="S4.T2.4.4.4.8.1" style="background-color:#E0FFFF;">+10.8</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.4.4.4.9"><span class="ltx_text" id="S4.T2.4.4.4.9.1" style="background-color:#E0FFFF;">+8.2</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.4.4.4.10"><span class="ltx_text" id="S4.T2.4.4.4.10.1" style="background-color:#E0FFFF;">+0.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.4.4.4.11"><span class="ltx_text" id="S4.T2.4.4.4.11.1" style="background-color:#E0FFFF;">+13.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.4.4.4.12"><span class="ltx_text" id="S4.T2.4.4.4.12.1" style="background-color:#E0FFFF;">+10.7</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.6.6.33">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="12" id="S4.T2.6.6.33.1">Inference Model = Qwen2.5-Coder-7B-Instruct</td>
</tr>
<tr class="ltx_tr" id="S4.T2.6.6.34">
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.6.6.34.1">Greedy</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.6.6.34.2">1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.6.6.34.3"><span class="ltx_text ltx_font_bold" id="S4.T2.6.6.34.3.1">91.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.6.6.34.4">86.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.6.6.34.5">82.8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.6.6.34.6">71.4</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.6.6.34.7">49.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.6.6.34.8">19.6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.6.6.34.9">41.8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.6.6.34.10">20.3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.6.6.34.11">34.2</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.6.6.34.12">55.2</td>
</tr>
<tr class="ltx_tr" id="S4.T2.6.6.35">
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.35.1">Average</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.35.2">64</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.35.3">86.0</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.35.4">80.1</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.35.5">77.9</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.35.6">65.6</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.35.7">45.3</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.35.8">18.6</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.35.9">37.3</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.35.10">16.2</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.35.11">31.8</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.35.12">51.0</td>
</tr>
<tr class="ltx_tr" id="S4.T2.6.6.36">
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.36.1">Oracle</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.36.2">64</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.36.3">98.2</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.36.4">95.7</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.36.5">97.4</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.36.6">90.7</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.36.7">80.9</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.36.8">62.8</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.36.9">73.5</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.36.10">53.4</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.36.11">57.4</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.36.12">78.9</td>
</tr>
<tr class="ltx_tr" id="S4.T2.6.6.37">
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.6.6.37.1" rowspan="3"><span class="ltx_text" id="S4.T2.6.6.37.1.1">AceCodeRM-7B</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.6.6.37.2">16</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.6.6.37.3">90.2</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.6.6.37.4">82.9</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.6.6.37.5"><span class="ltx_text ltx_font_bold" id="S4.T2.6.6.37.5.1">88.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.6.6.37.6">74.9</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.6.6.37.7">53.8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.6.6.37.8">20.9</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.6.6.37.9">45.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.6.6.37.10">21.6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.6.6.37.11">40.1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.6.6.37.12">57.6</td>
</tr>
<tr class="ltx_tr" id="S4.T2.6.6.38">
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.38.1">32</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.38.2">90.9</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.38.3">86.0</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.38.4">87.8</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.38.5">74.1</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.38.6">53.4</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.38.7">25.0</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.38.8">43.9</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.38.9">19.6</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.38.10">39.8</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.38.11">57.8</td>
</tr>
<tr class="ltx_tr" id="S4.T2.6.6.39">
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.39.1">64</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.39.2">90.9</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.39.3">85.4</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.39.4">87.6</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.39.5">73.8</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.39.6">52.9</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.39.7">24.3</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.39.8">43.5</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.39.9">21.6</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.39.10">40.1</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.39.11">57.8</td>
</tr>
<tr class="ltx_tr" id="S4.T2.5.5.5" style="background-color:#E0FFFF;">
<td class="ltx_td ltx_align_center" id="S4.T2.5.5.5.1">
<math alttext="\Delta" class="ltx_Math" display="inline" id="S4.T2.5.5.5.1.m1.1" style="background-color:#E0FFFF;"><semantics id="S4.T2.5.5.5.1.m1.1a"><mi id="S4.T2.5.5.5.1.m1.1.1" mathbackground="#E0FFFF" mathvariant="normal" xref="S4.T2.5.5.5.1.m1.1.1.cmml">Δ</mi><annotation-xml encoding="MathML-Content" id="S4.T2.5.5.5.1.m1.1b"><ci id="S4.T2.5.5.5.1.m1.1.1.cmml" xref="S4.T2.5.5.5.1.m1.1.1">Δ</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.5.5.5.1.m1.1c">\Delta</annotation><annotation encoding="application/x-llamapun" id="S4.T2.5.5.5.1.m1.1d">roman_Δ</annotation></semantics></math><span class="ltx_text" id="S4.T2.5.5.5.1.1" style="background-color:#E0FFFF;"> (RM-greedy)</span>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.5.5.2"><span class="ltx_text" id="S4.T2.5.5.5.2.1" style="background-color:#E0FFFF;">-</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.5.5.3"><span class="ltx_text" id="S4.T2.5.5.5.3.1" style="background-color:#E0FFFF;">-0.6</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.5.5.4"><span class="ltx_text" id="S4.T2.5.5.5.4.1" style="background-color:#E0FFFF;">0.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.5.5.5"><span class="ltx_text" id="S4.T2.5.5.5.5.1" style="background-color:#E0FFFF;">+5.8</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.5.5.6"><span class="ltx_text" id="S4.T2.5.5.5.6.1" style="background-color:#E0FFFF;">+3.4</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.5.5.7"><span class="ltx_text" id="S4.T2.5.5.5.7.1" style="background-color:#E0FFFF;">+4.3</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.5.5.8"><span class="ltx_text" id="S4.T2.5.5.5.8.1" style="background-color:#E0FFFF;">+5.4</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.5.5.9"><span class="ltx_text" id="S4.T2.5.5.5.9.1" style="background-color:#E0FFFF;">+3.2</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.5.5.10"><span class="ltx_text" id="S4.T2.5.5.5.10.1" style="background-color:#E0FFFF;">+1.4</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.5.5.11"><span class="ltx_text" id="S4.T2.5.5.5.11.1" style="background-color:#E0FFFF;">+5.9</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.5.5.12"><span class="ltx_text" id="S4.T2.5.5.5.12.1" style="background-color:#E0FFFF;">+2.6</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.6.6.40">
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.6.6.40.1" rowspan="3"><span class="ltx_text" id="S4.T2.6.6.40.1.1">AceCodeRM-32B</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.6.6.40.2">16</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.6.6.40.3">90.2</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.6.6.40.4">86.6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.6.6.40.5">88.4</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.6.6.40.6">74.9</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.6.6.40.7">53.9</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.6.6.40.8">25.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.6.6.40.9">45.4</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.6.6.40.10">19.6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.6.6.40.11">44.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.6.6.40.12">58.7</td>
</tr>
<tr class="ltx_tr" id="S4.T2.6.6.41">
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.41.1">32</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.41.2">90.2</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.41.3"><span class="ltx_text ltx_font_bold" id="S4.T2.6.6.41.3.1">86.6</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.41.4">88.4</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.41.5"><span class="ltx_text ltx_font_bold" id="S4.T2.6.6.41.5.1">75.4</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.41.6"><span class="ltx_text ltx_font_bold" id="S4.T2.6.6.41.6.1">55.4</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.41.7"><span class="ltx_text ltx_font_bold" id="S4.T2.6.6.41.7.1">29.7</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.41.8">45.6</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.41.9">21.6</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.41.10">43.5</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.41.11"><span class="ltx_text ltx_font_bold" id="S4.T2.6.6.41.11.1">59.6</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.6.6.42">
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.42.1">64</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.42.2">89.6</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.42.3">86.0</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.42.4">87.8</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.42.5">75.1</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.42.6">55.0</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.42.7">26.4</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.42.8"><span class="ltx_text ltx_font_bold" id="S4.T2.6.6.42.8.1">46.1</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.42.9"><span class="ltx_text ltx_font_bold" id="S4.T2.6.6.42.9.1">22.3</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.42.10"><span class="ltx_text ltx_font_bold" id="S4.T2.6.6.42.10.1">44.5</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.42.11">59.2</td>
</tr>
<tr class="ltx_tr" id="S4.T2.6.6.6" style="background-color:#E0FFFF;">
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.6.6.6.1">
<math alttext="\Delta" class="ltx_Math" display="inline" id="S4.T2.6.6.6.1.m1.1" style="background-color:#E0FFFF;"><semantics id="S4.T2.6.6.6.1.m1.1a"><mi id="S4.T2.6.6.6.1.m1.1.1" mathbackground="#E0FFFF" mathvariant="normal" xref="S4.T2.6.6.6.1.m1.1.1.cmml">Δ</mi><annotation-xml encoding="MathML-Content" id="S4.T2.6.6.6.1.m1.1b"><ci id="S4.T2.6.6.6.1.m1.1.1.cmml" xref="S4.T2.6.6.6.1.m1.1.1">Δ</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.6.6.6.1.m1.1c">\Delta</annotation><annotation encoding="application/x-llamapun" id="S4.T2.6.6.6.1.m1.1d">roman_Δ</annotation></semantics></math><span class="ltx_text" id="S4.T2.6.6.6.1.1" style="background-color:#E0FFFF;"> (RM-greedy)</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.6.6.6.2"><span class="ltx_text" id="S4.T2.6.6.6.2.1" style="background-color:#E0FFFF;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.6.6.6.3"><span class="ltx_text" id="S4.T2.6.6.6.3.1" style="background-color:#E0FFFF;">-0.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.6.6.6.4"><span class="ltx_text" id="S4.T2.6.6.6.4.1" style="background-color:#E0FFFF;">+0.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.6.6.6.5"><span class="ltx_text" id="S4.T2.6.6.6.5.1" style="background-color:#E0FFFF;">+5.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.6.6.6.6"><span class="ltx_text" id="S4.T2.6.6.6.6.1" style="background-color:#E0FFFF;">+4.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.6.6.6.7"><span class="ltx_text" id="S4.T2.6.6.6.7.1" style="background-color:#E0FFFF;">+6.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.6.6.6.8"><span class="ltx_text" id="S4.T2.6.6.6.8.1" style="background-color:#E0FFFF;">+10.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.6.6.6.9"><span class="ltx_text" id="S4.T2.6.6.6.9.1" style="background-color:#E0FFFF;">+4.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.6.6.6.10"><span class="ltx_text" id="S4.T2.6.6.6.10.1" style="background-color:#E0FFFF;">+2.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.6.6.6.11"><span class="ltx_text" id="S4.T2.6.6.6.11.1" style="background-color:#E0FFFF;">+10.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.6.6.6.12"><span class="ltx_text" id="S4.T2.6.6.6.12.1" style="background-color:#E0FFFF;">+4.7</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 Table 2 presents the performance of the AceCode-RM reward model using best-of-n sampling on four code generation benchmarks: HumanEval, MBPP, BigCodeBench (both completion and instruction splits), and LiveCodeBench.  The table shows the model's performance across various difficulty levels, including 'Plus,' 'Full,' and 'Hard' variations for some benchmarks.  The results are compared against a greedy baseline and, in some cases, against oracle performance for context.
> <details>
> <summary>read the caption</summary>
> Table 2: AceCode-RM’s best-of-n results. We evaluated the model on HumanEval, MBPP, BigCodeBench, and LiveCodeBench. Specifically, -C means completion split and -I means instruct split.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S4.T3.13.9">
<tr class="ltx_tr" id="S4.T3.13.9.10">
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T3.13.9.10.1" rowspan="2"><span class="ltx_text" id="S4.T3.13.9.10.1.1">Model</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="S4.T3.13.9.10.2">HumanEval</td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="S4.T3.13.9.10.3">MBPP</td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="S4.T3.13.9.10.4">BigCodeBench (C)</td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="S4.T3.13.9.10.5">BigCodeBench (I)</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T3.13.9.10.6">LiveCodeBench</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T3.13.9.10.7" rowspan="2"><span class="ltx_text" id="S4.T3.13.9.10.7.1">Average</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.13.9.11">
<td class="ltx_td ltx_align_center" id="S4.T3.13.9.11.1">-</td>
<td class="ltx_td ltx_align_center" id="S4.T3.13.9.11.2">Plus</td>
<td class="ltx_td ltx_align_center" id="S4.T3.13.9.11.3">-</td>
<td class="ltx_td ltx_align_center" id="S4.T3.13.9.11.4">Plus</td>
<td class="ltx_td ltx_align_center" id="S4.T3.13.9.11.5">Full</td>
<td class="ltx_td ltx_align_center" id="S4.T3.13.9.11.6">Hard</td>
<td class="ltx_td ltx_align_center" id="S4.T3.13.9.11.7">Full</td>
<td class="ltx_td ltx_align_center" id="S4.T3.13.9.11.8">Hard</td>
<td class="ltx_td ltx_align_center" id="S4.T3.13.9.11.9">V4</td>
</tr>
<tr class="ltx_tr" id="S4.T3.13.9.12">
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.13.9.12.1">DeepSeek-V2.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.13.9.12.2">90.2</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.13.9.12.3">83.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.13.9.12.4">87.6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.13.9.12.5">74.1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.13.9.12.6">53.2</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.13.9.12.7">29.1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.13.9.12.8">48.9</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.13.9.12.9">27.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.13.9.12.10">41.8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.13.9.12.11">59.5</td>
</tr>
<tr class="ltx_tr" id="S4.T3.13.9.13">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="11" id="S4.T3.13.9.13.1">Baseline = Qwen2.5-7B-Instruct</td>
</tr>
<tr class="ltx_tr" id="S4.T3.13.9.14">
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.13.9.14.1">Baseline</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.13.9.14.2">81.7</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.13.9.14.3">73.2</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.13.9.14.4">79.4</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.13.9.14.5">67.7</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.13.9.14.6">45.6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.13.9.14.7">16.9</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.13.9.14.8">38.4</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.13.9.14.9">14.2</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.13.9.14.10">29.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.13.9.14.11">49.6</td>
</tr>
<tr class="ltx_tr" id="S4.T3.5.1.1">
<td class="ltx_td ltx_align_center" id="S4.T3.5.1.1.1">AceCoder<sub class="ltx_sub" id="S4.T3.5.1.1.1.1"><span class="ltx_text ltx_font_italic" id="S4.T3.5.1.1.1.1.1">RM</span></sub>
</td>
<td class="ltx_td ltx_align_center" id="S4.T3.5.1.1.2">83.5</td>
<td class="ltx_td ltx_align_center" id="S4.T3.5.1.1.3"><span class="ltx_text ltx_font_bold" id="S4.T3.5.1.1.3.1">77.4</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.5.1.1.4"><span class="ltx_text ltx_font_bold" id="S4.T3.5.1.1.4.1">83.1</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.5.1.1.5"><span class="ltx_text ltx_font_bold" id="S4.T3.5.1.1.5.1">71.2</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.5.1.1.6"><span class="ltx_text ltx_font_bold" id="S4.T3.5.1.1.6.1">46.8</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.5.1.1.7"><span class="ltx_text ltx_font_bold" id="S4.T3.5.1.1.7.1">16.9</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.5.1.1.8">39.0</td>
<td class="ltx_td ltx_align_center" id="S4.T3.5.1.1.9">14.9</td>
<td class="ltx_td ltx_align_center" id="S4.T3.5.1.1.10"><span class="ltx_text ltx_font_bold" id="S4.T3.5.1.1.10.1">30.3</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.5.1.1.11"><span class="ltx_text ltx_font_bold" id="S4.T3.5.1.1.11.1">51.5</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.6.2.2">
<td class="ltx_td ltx_align_center" id="S4.T3.6.2.2.1">AceCoder<sub class="ltx_sub" id="S4.T3.6.2.2.1.1"><span class="ltx_text ltx_font_italic" id="S4.T3.6.2.2.1.1.1">Rule</span></sub>
</td>
<td class="ltx_td ltx_align_center" id="S4.T3.6.2.2.2"><span class="ltx_text ltx_font_bold" id="S4.T3.6.2.2.2.1">84.1</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.6.2.2.3">77.4</td>
<td class="ltx_td ltx_align_center" id="S4.T3.6.2.2.4">80.2</td>
<td class="ltx_td ltx_align_center" id="S4.T3.6.2.2.5">68.3</td>
<td class="ltx_td ltx_align_center" id="S4.T3.6.2.2.6">46.8</td>
<td class="ltx_td ltx_align_center" id="S4.T3.6.2.2.7">15.5</td>
<td class="ltx_td ltx_align_center" id="S4.T3.6.2.2.8"><span class="ltx_text ltx_font_bold" id="S4.T3.6.2.2.8.1">40.2</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.6.2.2.9"><span class="ltx_text ltx_font_bold" id="S4.T3.6.2.2.9.1">15.5</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.6.2.2.10">30.1</td>
<td class="ltx_td ltx_align_center" id="S4.T3.6.2.2.11">50.9</td>
</tr>
<tr class="ltx_tr" id="S4.T3.7.3.3" style="background-color:#E0FFFF;">
<td class="ltx_td ltx_align_center" id="S4.T3.7.3.3.1">
<math alttext="\Delta" class="ltx_Math" display="inline" id="S4.T3.7.3.3.1.m1.1" style="background-color:#E0FFFF;"><semantics id="S4.T3.7.3.3.1.m1.1a"><mi id="S4.T3.7.3.3.1.m1.1.1" mathbackground="#E0FFFF" mathvariant="normal" xref="S4.T3.7.3.3.1.m1.1.1.cmml">Δ</mi><annotation-xml encoding="MathML-Content" id="S4.T3.7.3.3.1.m1.1b"><ci id="S4.T3.7.3.3.1.m1.1.1.cmml" xref="S4.T3.7.3.3.1.m1.1.1">Δ</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.7.3.3.1.m1.1c">\Delta</annotation><annotation encoding="application/x-llamapun" id="S4.T3.7.3.3.1.m1.1d">roman_Δ</annotation></semantics></math><span class="ltx_text" id="S4.T3.7.3.3.1.1" style="background-color:#E0FFFF;"> (RL-baseline)</span>
</td>
<td class="ltx_td ltx_align_center" id="S4.T3.7.3.3.2"><span class="ltx_text" id="S4.T3.7.3.3.2.1" style="background-color:#E0FFFF;">+2.4</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.7.3.3.3"><span class="ltx_text" id="S4.T3.7.3.3.3.1" style="background-color:#E0FFFF;">+4.3</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.7.3.3.4"><span class="ltx_text" id="S4.T3.7.3.3.4.1" style="background-color:#E0FFFF;">+3.7</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.7.3.3.5"><span class="ltx_text" id="S4.T3.7.3.3.5.1" style="background-color:#E0FFFF;">+3.4</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.7.3.3.6"><span class="ltx_text" id="S4.T3.7.3.3.6.1" style="background-color:#E0FFFF;">+1.2</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.7.3.3.7"><span class="ltx_text" id="S4.T3.7.3.3.7.1" style="background-color:#E0FFFF;">0.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.7.3.3.8"><span class="ltx_text" id="S4.T3.7.3.3.8.1" style="background-color:#E0FFFF;">+1.8</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.7.3.3.9"><span class="ltx_text" id="S4.T3.7.3.3.9.1" style="background-color:#E0FFFF;">+1.4</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.7.3.3.10"><span class="ltx_text" id="S4.T3.7.3.3.10.1" style="background-color:#E0FFFF;">+1.3</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.7.3.3.11"><span class="ltx_text" id="S4.T3.7.3.3.11.1" style="background-color:#E0FFFF;">+2.1</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.13.9.15">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="11" id="S4.T3.13.9.15.1">Baseline = Qwen2.5-Coder-7B-Base</td>
</tr>
<tr class="ltx_tr" id="S4.T3.13.9.16">
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.13.9.16.1">Baseline</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.13.9.16.2">61.6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.13.9.16.3">53.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.13.9.16.4">76.9</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.13.9.16.5">62.9</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.13.9.16.6">45.8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.13.9.16.7">16.2</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.13.9.16.8">40.2</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.13.9.16.9">14.2</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.13.9.16.10"><span class="ltx_text ltx_font_bold" id="S4.T3.13.9.16.10.1">28.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.13.9.16.11">44.4</td>
</tr>
<tr class="ltx_tr" id="S4.T3.8.4.4">
<td class="ltx_td ltx_align_center" id="S4.T3.8.4.4.1">AceCoder<sub class="ltx_sub" id="S4.T3.8.4.4.1.1"><span class="ltx_text ltx_font_italic" id="S4.T3.8.4.4.1.1.1">RM</span></sub>
</td>
<td class="ltx_td ltx_align_center" id="S4.T3.8.4.4.2">83.5</td>
<td class="ltx_td ltx_align_center" id="S4.T3.8.4.4.3">75.6</td>
<td class="ltx_td ltx_align_center" id="S4.T3.8.4.4.4">80.2</td>
<td class="ltx_td ltx_align_center" id="S4.T3.8.4.4.5">67.2</td>
<td class="ltx_td ltx_align_center" id="S4.T3.8.4.4.6">41.9</td>
<td class="ltx_td ltx_align_center" id="S4.T3.8.4.4.7">14.9</td>
<td class="ltx_td ltx_align_center" id="S4.T3.8.4.4.8">36.8</td>
<td class="ltx_td ltx_align_center" id="S4.T3.8.4.4.9">16.2</td>
<td class="ltx_td ltx_align_center" id="S4.T3.8.4.4.10">25.7</td>
<td class="ltx_td ltx_align_center" id="S4.T3.8.4.4.11">49.1</td>
</tr>
<tr class="ltx_tr" id="S4.T3.9.5.5">
<td class="ltx_td ltx_align_center" id="S4.T3.9.5.5.1">AceCoder<sub class="ltx_sub" id="S4.T3.9.5.5.1.1"><span class="ltx_text ltx_font_italic" id="S4.T3.9.5.5.1.1.1">Rule</span></sub>
</td>
<td class="ltx_td ltx_align_center" id="S4.T3.9.5.5.2"><span class="ltx_text ltx_font_bold" id="S4.T3.9.5.5.2.1">84.1</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.9.5.5.3"><span class="ltx_text ltx_font_bold" id="S4.T3.9.5.5.3.1">78.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.9.5.5.4"><span class="ltx_text ltx_font_bold" id="S4.T3.9.5.5.4.1">82.3</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.9.5.5.5"><span class="ltx_text ltx_font_bold" id="S4.T3.9.5.5.5.1">69.3</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.9.5.5.6"><span class="ltx_text ltx_font_bold" id="S4.T3.9.5.5.6.1">48.6</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.9.5.5.7"><span class="ltx_text ltx_font_bold" id="S4.T3.9.5.5.7.1">18.2</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.9.5.5.8"><span class="ltx_text ltx_font_bold" id="S4.T3.9.5.5.8.1">43.2</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.9.5.5.9"><span class="ltx_text ltx_font_bold" id="S4.T3.9.5.5.9.1">18.2</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.9.5.5.10">28.5</td>
<td class="ltx_td ltx_align_center" id="S4.T3.9.5.5.11"><span class="ltx_text ltx_font_bold" id="S4.T3.9.5.5.11.1">52.3</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.10.6.6" style="background-color:#E0FFFF;">
<td class="ltx_td ltx_align_center" id="S4.T3.10.6.6.1">
<math alttext="\Delta" class="ltx_Math" display="inline" id="S4.T3.10.6.6.1.m1.1" style="background-color:#E0FFFF;"><semantics id="S4.T3.10.6.6.1.m1.1a"><mi id="S4.T3.10.6.6.1.m1.1.1" mathbackground="#E0FFFF" mathvariant="normal" xref="S4.T3.10.6.6.1.m1.1.1.cmml">Δ</mi><annotation-xml encoding="MathML-Content" id="S4.T3.10.6.6.1.m1.1b"><ci id="S4.T3.10.6.6.1.m1.1.1.cmml" xref="S4.T3.10.6.6.1.m1.1.1">Δ</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.10.6.6.1.m1.1c">\Delta</annotation><annotation encoding="application/x-llamapun" id="S4.T3.10.6.6.1.m1.1d">roman_Δ</annotation></semantics></math><span class="ltx_text" id="S4.T3.10.6.6.1.1" style="background-color:#E0FFFF;"> (RL-baseline)</span>
</td>
<td class="ltx_td ltx_align_center" id="S4.T3.10.6.6.2"><span class="ltx_text" id="S4.T3.10.6.6.2.1" style="background-color:#E0FFFF;">+22.5</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.10.6.6.3"><span class="ltx_text" id="S4.T3.10.6.6.3.1" style="background-color:#E0FFFF;">+25.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.10.6.6.4"><span class="ltx_text" id="S4.T3.10.6.6.4.1" style="background-color:#E0FFFF;">+5.4</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.10.6.6.5"><span class="ltx_text" id="S4.T3.10.6.6.5.1" style="background-color:#E0FFFF;">+6.4</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.10.6.6.6"><span class="ltx_text" id="S4.T3.10.6.6.6.1" style="background-color:#E0FFFF;">+2.8</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.10.6.6.7"><span class="ltx_text" id="S4.T3.10.6.6.7.1" style="background-color:#E0FFFF;">+2.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.10.6.6.8"><span class="ltx_text" id="S4.T3.10.6.6.8.1" style="background-color:#E0FFFF;">+3.1</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.10.6.6.9"><span class="ltx_text" id="S4.T3.10.6.6.9.1" style="background-color:#E0FFFF;">+4.1</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.10.6.6.10"><span class="ltx_text" id="S4.T3.10.6.6.10.1" style="background-color:#E0FFFF;">-0.2</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.10.6.6.11"><span class="ltx_text" id="S4.T3.10.6.6.11.1" style="background-color:#E0FFFF;">+7.9</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.13.9.17">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="11" id="S4.T3.13.9.17.1">Baseline = Qwen2.5-Coder-7B-Instruct</td>
</tr>
<tr class="ltx_tr" id="S4.T3.13.9.18">
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.13.9.18.1">Baseline</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.13.9.18.2"><span class="ltx_text ltx_font_bold" id="S4.T3.13.9.18.2.1">91.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.13.9.18.3"><span class="ltx_text ltx_font_bold" id="S4.T3.13.9.18.3.1">86.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.13.9.18.4">82.8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.13.9.18.5">71.4</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.13.9.18.6">49.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.13.9.18.7">19.6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.13.9.18.8">41.8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.13.9.18.9"><span class="ltx_text ltx_font_bold" id="S4.T3.13.9.18.9.1">20.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.13.9.18.10">34.2</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.13.9.18.11">55.2</td>
</tr>
<tr class="ltx_tr" id="S4.T3.11.7.7">
<td class="ltx_td ltx_align_center" id="S4.T3.11.7.7.1">AceCoder<sub class="ltx_sub" id="S4.T3.11.7.7.1.1"><span class="ltx_text ltx_font_italic" id="S4.T3.11.7.7.1.1.1">RM</span></sub>
</td>
<td class="ltx_td ltx_align_center" id="S4.T3.11.7.7.2">89.0</td>
<td class="ltx_td ltx_align_center" id="S4.T3.11.7.7.3">84.1</td>
<td class="ltx_td ltx_align_center" id="S4.T3.11.7.7.4"><span class="ltx_text ltx_font_bold" id="S4.T3.11.7.7.4.1">86.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.11.7.7.5"><span class="ltx_text ltx_font_bold" id="S4.T3.11.7.7.5.1">72.8</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.11.7.7.6">50.4</td>
<td class="ltx_td ltx_align_center" id="S4.T3.11.7.7.7">18.9</td>
<td class="ltx_td ltx_align_center" id="S4.T3.11.7.7.8">42.0</td>
<td class="ltx_td ltx_align_center" id="S4.T3.11.7.7.9">19.6</td>
<td class="ltx_td ltx_align_center" id="S4.T3.11.7.7.10"><span class="ltx_text ltx_font_bold" id="S4.T3.11.7.7.10.1">35.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.11.7.7.11">55.3</td>
</tr>
<tr class="ltx_tr" id="S4.T3.12.8.8">
<td class="ltx_td ltx_align_center" id="S4.T3.12.8.8.1">AceCoder<sub class="ltx_sub" id="S4.T3.12.8.8.1.1"><span class="ltx_text ltx_font_italic" id="S4.T3.12.8.8.1.1.1">Rule</span></sub>
</td>
<td class="ltx_td ltx_align_center" id="S4.T3.12.8.8.2">90.9</td>
<td class="ltx_td ltx_align_center" id="S4.T3.12.8.8.3">84.8</td>
<td class="ltx_td ltx_align_center" id="S4.T3.12.8.8.4">84.1</td>
<td class="ltx_td ltx_align_center" id="S4.T3.12.8.8.5">71.7</td>
<td class="ltx_td ltx_align_center" id="S4.T3.12.8.8.6"><span class="ltx_text ltx_font_bold" id="S4.T3.12.8.8.6.1">50.9</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.12.8.8.7"><span class="ltx_text ltx_font_bold" id="S4.T3.12.8.8.7.1">23.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.12.8.8.8"><span class="ltx_text ltx_font_bold" id="S4.T3.12.8.8.8.1">43.3</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.12.8.8.9">19.6</td>
<td class="ltx_td ltx_align_center" id="S4.T3.12.8.8.10">34.9</td>
<td class="ltx_td ltx_align_center" id="S4.T3.12.8.8.11"><span class="ltx_text ltx_font_bold" id="S4.T3.12.8.8.11.1">55.9</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.13.9.9" style="background-color:#E0FFFF;">
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.13.9.9.1">
<math alttext="\Delta" class="ltx_Math" display="inline" id="S4.T3.13.9.9.1.m1.1" style="background-color:#E0FFFF;"><semantics id="S4.T3.13.9.9.1.m1.1a"><mi id="S4.T3.13.9.9.1.m1.1.1" mathbackground="#E0FFFF" mathvariant="normal" xref="S4.T3.13.9.9.1.m1.1.1.cmml">Δ</mi><annotation-xml encoding="MathML-Content" id="S4.T3.13.9.9.1.m1.1b"><ci id="S4.T3.13.9.9.1.m1.1.1.cmml" xref="S4.T3.13.9.9.1.m1.1.1">Δ</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.13.9.9.1.m1.1c">\Delta</annotation><annotation encoding="application/x-llamapun" id="S4.T3.13.9.9.1.m1.1d">roman_Δ</annotation></semantics></math><span class="ltx_text" id="S4.T3.13.9.9.1.1" style="background-color:#E0FFFF;"> (RL-baseline)</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.13.9.9.2"><span class="ltx_text" id="S4.T3.13.9.9.2.1" style="background-color:#E0FFFF;">-0.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.13.9.9.3"><span class="ltx_text" id="S4.T3.13.9.9.3.1" style="background-color:#E0FFFF;">-1.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.13.9.9.4"><span class="ltx_text" id="S4.T3.13.9.9.4.1" style="background-color:#E0FFFF;">+3.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.13.9.9.5"><span class="ltx_text" id="S4.T3.13.9.9.5.1" style="background-color:#E0FFFF;">+1.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.13.9.9.6"><span class="ltx_text" id="S4.T3.13.9.9.6.1" style="background-color:#E0FFFF;">+1.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.13.9.9.7"><span class="ltx_text" id="S4.T3.13.9.9.7.1" style="background-color:#E0FFFF;">+3.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.13.9.9.8"><span class="ltx_text" id="S4.T3.13.9.9.8.1" style="background-color:#E0FFFF;">+1.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.13.9.9.9"><span class="ltx_text" id="S4.T3.13.9.9.9.1" style="background-color:#E0FFFF;">-0.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.13.9.9.10"><span class="ltx_text" id="S4.T3.13.9.9.10.1" style="background-color:#E0FFFF;">+0.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.13.9.9.11"><span class="ltx_text" id="S4.T3.13.9.9.11.1" style="background-color:#E0FFFF;">+0.7</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the performance of the AceCoder model after reinforcement learning (RL) fine-tuning using the Reinforcement++ algorithm.  The experiment starts with three different pre-trained language models (LLMs) as baselines. For each baseline, two reward methods were used for RL training:  AceCode-RM (a custom reward model trained by the authors) and Rule (a simple binary reward based on whether the generated code passes the test cases). The table shows the performance improvements achieved across four benchmarks (HumanEval, MBPP, BigCodeBench-C, BigCodeBench-I, and LiveCodeBench) for each combination of baseline LLM and reward method.  The 'Average' column provides a mean score across all benchmarks, allowing for an overall comparison of the different RL training setups.
> <details>
> <summary>read the caption</summary>
> Table 3: AceCoder’s Performance after RL tuning using Reinforcement++ algorithm. We start with 3 different initial policy models and 2 kind of reward types, where R⁢M𝑅𝑀RMitalic_R italic_M means using our trained AceCode-RM and R⁢u⁢l⁢e𝑅𝑢𝑙𝑒Ruleitalic_R italic_u italic_l italic_e means using the binary pass rate. Results show consistent improvement across various benchmarks.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S4.T4.2.2">
<tr class="ltx_tr" id="S4.T4.2.2.3">
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T4.2.2.3.1">Method &amp; RM</td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="S4.T4.2.2.3.2">HumanEval</td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="S4.T4.2.2.3.3">MBPP</td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="S4.T4.2.2.3.4">BigCodeBench-C</td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="S4.T4.2.2.3.5">BigCodeBench-I</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T4.2.2.3.6">LiveCodeBench</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T4.2.2.3.7">Average</td>
</tr>
<tr class="ltx_tr" id="S4.T4.2.2.4">
<td class="ltx_td" id="S4.T4.2.2.4.1"></td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.2.4.2">-</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.2.4.3">Plus</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.2.4.4">-</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.2.4.5">Plus</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.2.4.6">Full</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.2.4.7">Hard</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.2.4.8">Full</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.2.4.9">Hard</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.2.4.10">V4</td>
<td class="ltx_td" id="S4.T4.2.2.4.11"></td>
</tr>
<tr class="ltx_tr" id="S4.T4.2.2.5">
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.2.2.5.1">Greedy</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.2.2.5.2">68.9</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.2.2.5.3">62.2</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.2.2.5.4">67.2</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.2.2.5.5">54.8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.2.2.5.6">38.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.2.2.5.7">12.8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.2.2.5.8">31.8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.2.2.5.9"><span class="ltx_text ltx_font_bold" id="S4.T4.2.2.5.9.1">13.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.2.2.5.10">18.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.2.2.5.11">40.9</td>
</tr>
<tr class="ltx_tr" id="S4.T4.2.2.6">
<td class="ltx_td ltx_align_center" id="S4.T4.2.2.6.1">Average</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.2.6.2">50.1</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.2.6.3">42.2</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.2.6.4">57.9</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.2.6.5">47.2</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.2.6.6">22.0</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.2.6.7">10.6</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.2.6.8">18.2</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.2.6.9">12.0</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.2.6.10">14.9</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.2.6.11">30.6</td>
</tr>
<tr class="ltx_tr" id="S4.T4.2.2.7">
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.2.2.7.1">InternLM2-RM-8B</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.2.2.7.2">57.9</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.2.2.7.3">55.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.2.2.7.4">66.7</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.2.2.7.5">54.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.2.2.7.6">38.7</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.2.2.7.7">8.8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.2.2.7.8">29.8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.2.2.7.9">8.8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.2.2.7.10">15.1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.2.2.7.11">37.3</td>
</tr>
<tr class="ltx_tr" id="S4.T4.2.2.8">
<td class="ltx_td ltx_align_center" id="S4.T4.2.2.8.1">Skywork-Gemma-27B</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.2.8.2">73.8</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.2.8.3">67.1</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.2.8.4">64.3</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.2.8.5">53.4</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.2.8.6">40.1</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.2.8.7">14.9</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.2.8.8">32.5</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.2.8.9">12.8</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.2.8.10">23.6</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.2.8.11">42.5</td>
</tr>
<tr class="ltx_tr" id="S4.T4.2.2.9">
<td class="ltx_td ltx_align_center" id="S4.T4.2.2.9.1">Skywork-Llama-3.1-8B</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.2.9.2">67.7</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.2.9.3">61.6</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.2.9.4">69.6</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.2.9.5">56.9</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.2.9.6">40.6</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.2.9.7">10.8</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.2.9.8">31.8</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.2.9.9">12.2</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.2.9.10">18.8</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.2.9.11">41.1</td>
</tr>
<tr class="ltx_tr" id="S4.T4.1.1.1" style="background-color:#E0FFFF;">
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.1.1">
<math alttext="\Delta" class="ltx_Math" display="inline" id="S4.T4.1.1.1.1.m1.1" style="background-color:#E0FFFF;"><semantics id="S4.T4.1.1.1.1.m1.1a"><mi id="S4.T4.1.1.1.1.m1.1.1" mathbackground="#E0FFFF" mathvariant="normal" xref="S4.T4.1.1.1.1.m1.1.1.cmml">Δ</mi><annotation-xml encoding="MathML-Content" id="S4.T4.1.1.1.1.m1.1b"><ci id="S4.T4.1.1.1.1.m1.1.1.cmml" xref="S4.T4.1.1.1.1.m1.1.1">Δ</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.1.1.1.1.m1.1c">\Delta</annotation><annotation encoding="application/x-llamapun" id="S4.T4.1.1.1.1.m1.1d">roman_Δ</annotation></semantics></math><span class="ltx_text" id="S4.T4.1.1.1.1.1" style="background-color:#E0FFFF;"> (max(other RM)-greedy)</span>
</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.1.2"><span class="ltx_text" id="S4.T4.1.1.1.2.1" style="background-color:#E0FFFF;">+4.9</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.1.3"><span class="ltx_text" id="S4.T4.1.1.1.3.1" style="background-color:#E0FFFF;">+4.9</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.1.4"><span class="ltx_text" id="S4.T4.1.1.1.4.1" style="background-color:#E0FFFF;">+2.4</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.1.5"><span class="ltx_text" id="S4.T4.1.1.1.5.1" style="background-color:#E0FFFF;">+2.1</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.1.6"><span class="ltx_text" id="S4.T4.1.1.1.6.1" style="background-color:#E0FFFF;">+2.1</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.1.7"><span class="ltx_text" id="S4.T4.1.1.1.7.1" style="background-color:#E0FFFF;">+2.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.1.8"><span class="ltx_text" id="S4.T4.1.1.1.8.1" style="background-color:#E0FFFF;">+0.6</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.1.9"><span class="ltx_text" id="S4.T4.1.1.1.9.1" style="background-color:#E0FFFF;">-0.7</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.1.10"><span class="ltx_text" id="S4.T4.1.1.1.10.1" style="background-color:#E0FFFF;">+5.6</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.1.11"><span class="ltx_text" id="S4.T4.1.1.1.11.1" style="background-color:#E0FFFF;">+2.7</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.2.2.10">
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.2.2.10.1">
<span class="ltx_text ltx_font_smallcaps" id="S4.T4.2.2.10.1.1">AceCode-RM</span>-7B</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.2.2.10.2"><span class="ltx_text ltx_font_bold" id="S4.T4.2.2.10.2.1">77.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.2.2.10.3"><span class="ltx_text ltx_font_bold" id="S4.T4.2.2.10.3.1">70.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.2.2.10.4"><span class="ltx_text ltx_font_bold" id="S4.T4.2.2.10.4.1">76.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.2.2.10.5"><span class="ltx_text ltx_font_bold" id="S4.T4.2.2.10.5.1">64.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.2.2.10.6"><span class="ltx_text ltx_font_bold" id="S4.T4.2.2.10.6.1">45.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.2.2.10.7"><span class="ltx_text ltx_font_bold" id="S4.T4.2.2.10.7.1">20.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.2.2.10.8"><span class="ltx_text ltx_font_bold" id="S4.T4.2.2.10.8.1">36.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.2.2.10.9">12.2</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.2.2.10.10"><span class="ltx_text ltx_font_bold" id="S4.T4.2.2.10.10.1">26.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.2.2.10.11"><span class="ltx_text ltx_font_bold" id="S4.T4.2.2.10.11.1">47.7</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.2.2.2" style="background-color:#E0FFFF;">
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.2.2.2.1">
<math alttext="\Delta" class="ltx_Math" display="inline" id="S4.T4.2.2.2.1.m1.1" style="background-color:#E0FFFF;"><semantics id="S4.T4.2.2.2.1.m1.1a"><mi id="S4.T4.2.2.2.1.m1.1.1" mathbackground="#E0FFFF" mathvariant="normal" xref="S4.T4.2.2.2.1.m1.1.1.cmml">Δ</mi><annotation-xml encoding="MathML-Content" id="S4.T4.2.2.2.1.m1.1b"><ci id="S4.T4.2.2.2.1.m1.1.1.cmml" xref="S4.T4.2.2.2.1.m1.1.1">Δ</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.2.2.2.1.m1.1c">\Delta</annotation><annotation encoding="application/x-llamapun" id="S4.T4.2.2.2.1.m1.1d">roman_Δ</annotation></semantics></math><span class="ltx_text" id="S4.T4.2.2.2.1.1" style="background-color:#E0FFFF;"> (RM-greedy)</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.2.2.2.2"><span class="ltx_text" id="S4.T4.2.2.2.2.1" style="background-color:#E0FFFF;">+8.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.2.2.2.3"><span class="ltx_text" id="S4.T4.2.2.2.3.1" style="background-color:#E0FFFF;">+8.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.2.2.2.4"><span class="ltx_text" id="S4.T4.2.2.2.4.1" style="background-color:#E0FFFF;">+9.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.2.2.2.5"><span class="ltx_text" id="S4.T4.2.2.2.5.1" style="background-color:#E0FFFF;">+9.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.2.2.2.6"><span class="ltx_text" id="S4.T4.2.2.2.6.1" style="background-color:#E0FFFF;">+7.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.2.2.2.7"><span class="ltx_text" id="S4.T4.2.2.2.7.1" style="background-color:#E0FFFF;">+7.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.2.2.2.8"><span class="ltx_text" id="S4.T4.2.2.2.8.1" style="background-color:#E0FFFF;">+4.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.2.2.2.9"><span class="ltx_text" id="S4.T4.2.2.2.9.1" style="background-color:#E0FFFF;">-1.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.2.2.2.10"><span class="ltx_text" id="S4.T4.2.2.2.10.1" style="background-color:#E0FFFF;">+8.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.2.2.2.11"><span class="ltx_text" id="S4.T4.2.2.2.11.1" style="background-color:#E0FFFF;">+6.9</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table compares the performance of AceCode-RM, a reward model for code generation, to other existing open-source reward models. The comparison is done using the Llama-3.1-8B-Inst model and the Best-of-16 sampling method on several benchmarks (HumanEval, MBPP, BigCodeBench-C, BigCodeBench-I, LiveCodeBench). The results show that AceCode-RM significantly outperforms the other reward models, achieving substantial improvements over greedy decoding in various benchmarks.  The table highlights AceCode-RM's effectiveness in identifying and selecting high-quality code generation outputs.
> <details>
> <summary>read the caption</summary>
> Table 4: AceCode-RM’s performance against other open-sourced reward models in terms of Best-of-16 sampling for Llama-3.1-8B-Inst. We can see the top-ranked RM on Reward Bench get little improvements compared to ours.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S4.T5.2.2">
<tr class="ltx_tr" id="S4.T5.2.2.3">
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T5.2.2.3.1" rowspan="2"><span class="ltx_text" id="S4.T5.2.2.3.1.1">Method</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="S4.T5.2.2.3.2">HumanEval</td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="S4.T5.2.2.3.3">MBPP</td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="S4.T5.2.2.3.4">BigCodeBench-C</td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="S4.T5.2.2.3.5">BigCodeBench-I</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T5.2.2.3.6">LiveCodeBench</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T5.2.2.3.7">Average</td>
</tr>
<tr class="ltx_tr" id="S4.T5.2.2.4">
<td class="ltx_td ltx_align_center" id="S4.T5.2.2.4.1">-</td>
<td class="ltx_td ltx_align_center" id="S4.T5.2.2.4.2">Plus</td>
<td class="ltx_td ltx_align_center" id="S4.T5.2.2.4.3">-</td>
<td class="ltx_td ltx_align_center" id="S4.T5.2.2.4.4">Plus</td>
<td class="ltx_td ltx_align_center" id="S4.T5.2.2.4.5">Full</td>
<td class="ltx_td ltx_align_center" id="S4.T5.2.2.4.6">Hard</td>
<td class="ltx_td ltx_align_center" id="S4.T5.2.2.4.7">Full</td>
<td class="ltx_td ltx_align_center" id="S4.T5.2.2.4.8">Hard</td>
<td class="ltx_td ltx_align_center" id="S4.T5.2.2.4.9">V4</td>
<td class="ltx_td" id="S4.T5.2.2.4.10"></td>
</tr>
<tr class="ltx_tr" id="S4.T5.2.2.5">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="10" id="S4.T5.2.2.5.1">Inference Model = Llama-3.1-8B-Instruct</td>
<td class="ltx_td ltx_border_t" id="S4.T5.2.2.5.2"></td>
</tr>
<tr class="ltx_tr" id="S4.T5.2.2.6">
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.2.2.6.1">RM w/o Test Case Filter</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.2.2.6.2">73.8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.2.2.6.3">65.9</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.2.2.6.4">73.3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.2.2.6.5">61.4</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.2.2.6.6">44.6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.2.2.6.7">17.6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.2.2.6.8">35.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.2.2.6.9">9.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.2.2.6.10">25.1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.2.2.6.11">45.2</td>
</tr>
<tr class="ltx_tr" id="S4.T5.2.2.7">
<td class="ltx_td ltx_align_center" id="S4.T5.2.2.7.1">RM w/ Test Filter</td>
<td class="ltx_td ltx_align_center" id="S4.T5.2.2.7.2"><span class="ltx_text ltx_font_bold" id="S4.T5.2.2.7.2.1">77.4</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.2.2.7.3"><span class="ltx_text ltx_font_bold" id="S4.T5.2.2.7.3.1">70.7</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.2.2.7.4"><span class="ltx_text ltx_font_bold" id="S4.T5.2.2.7.4.1">76.5</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.2.2.7.5"><span class="ltx_text ltx_font_bold" id="S4.T5.2.2.7.5.1">64.3</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.2.2.7.6"><span class="ltx_text ltx_font_bold" id="S4.T5.2.2.7.6.1">45.8</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.2.2.7.7"><span class="ltx_text ltx_font_bold" id="S4.T5.2.2.7.7.1">20.3</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.2.2.7.8"><span class="ltx_text ltx_font_bold" id="S4.T5.2.2.7.8.1">36.4</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.2.2.7.9"><span class="ltx_text ltx_font_bold" id="S4.T5.2.2.7.9.1">12.2</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.2.2.7.10"><span class="ltx_text ltx_font_bold" id="S4.T5.2.2.7.10.1">26.1</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.2.2.7.11"><span class="ltx_text ltx_font_bold" id="S4.T5.2.2.7.11.1">47.7</span></td>
</tr>
<tr class="ltx_tr" id="S4.T5.1.1.1" style="background-color:#E0FFFF;">
<td class="ltx_td ltx_align_center" id="S4.T5.1.1.1.1">
<math alttext="\Delta" class="ltx_Math" display="inline" id="S4.T5.1.1.1.1.m1.1" style="background-color:#E0FFFF;"><semantics id="S4.T5.1.1.1.1.m1.1a"><mi id="S4.T5.1.1.1.1.m1.1.1" mathbackground="#E0FFFF" mathvariant="normal" xref="S4.T5.1.1.1.1.m1.1.1.cmml">Δ</mi><annotation-xml encoding="MathML-Content" id="S4.T5.1.1.1.1.m1.1b"><ci id="S4.T5.1.1.1.1.m1.1.1.cmml" xref="S4.T5.1.1.1.1.m1.1.1">Δ</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T5.1.1.1.1.m1.1c">\Delta</annotation><annotation encoding="application/x-llamapun" id="S4.T5.1.1.1.1.m1.1d">roman_Δ</annotation></semantics></math><span class="ltx_text" id="S4.T5.1.1.1.1.1" style="background-color:#E0FFFF;"> (w/ Filter - w/o Filter)</span>
</td>
<td class="ltx_td ltx_align_center" id="S4.T5.1.1.1.2"><span class="ltx_text" id="S4.T5.1.1.1.2.1" style="background-color:#E0FFFF;">+3.7</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.1.1.1.3"><span class="ltx_text" id="S4.T5.1.1.1.3.1" style="background-color:#E0FFFF;">+4.9</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.1.1.1.4"><span class="ltx_text" id="S4.T5.1.1.1.4.1" style="background-color:#E0FFFF;">+3.2</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.1.1.1.5"><span class="ltx_text" id="S4.T5.1.1.1.5.1" style="background-color:#E0FFFF;">+2.9</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.1.1.1.6"><span class="ltx_text" id="S4.T5.1.1.1.6.1" style="background-color:#E0FFFF;">+1.2</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.1.1.1.7"><span class="ltx_text" id="S4.T5.1.1.1.7.1" style="background-color:#E0FFFF;">+2.7</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.1.1.1.8"><span class="ltx_text" id="S4.T5.1.1.1.8.1" style="background-color:#E0FFFF;">+0.9</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.1.1.1.9"><span class="ltx_text" id="S4.T5.1.1.1.9.1" style="background-color:#E0FFFF;">+2.7</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.1.1.1.10"><span class="ltx_text" id="S4.T5.1.1.1.10.1" style="background-color:#E0FFFF;">+1.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.1.1.1.11"><span class="ltx_text" id="S4.T5.1.1.1.11.1" style="background-color:#E0FFFF;">+2.6</span></td>
</tr>
<tr class="ltx_tr" id="S4.T5.2.2.8">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="10" id="S4.T5.2.2.8.1">Inference Model = Qwen2.5-Coder-7B-Instruct</td>
<td class="ltx_td ltx_border_t" id="S4.T5.2.2.8.2"></td>
</tr>
<tr class="ltx_tr" id="S4.T5.2.2.9">
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.2.2.9.1">RM w/o Test Case Filter</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.2.2.9.2"><span class="ltx_text ltx_font_bold" id="S4.T5.2.2.9.2.1">91.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.2.2.9.3"><span class="ltx_text ltx_font_bold" id="S4.T5.2.2.9.3.1">86.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.2.2.9.4">86.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.2.2.9.5">72.2</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.2.2.9.6">52.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.2.2.9.7"><span class="ltx_text ltx_font_bold" id="S4.T5.2.2.9.7.1">21.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.2.2.9.8">43.4</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.2.2.9.9">19.6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.2.2.9.10">36.9</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.2.2.9.11">56.6</td>
</tr>
<tr class="ltx_tr" id="S4.T5.2.2.10">
<td class="ltx_td ltx_align_center" id="S4.T5.2.2.10.1">RM w/ Test Filter</td>
<td class="ltx_td ltx_align_center" id="S4.T5.2.2.10.2">90.2</td>
<td class="ltx_td ltx_align_center" id="S4.T5.2.2.10.3">82.9</td>
<td class="ltx_td ltx_align_center" id="S4.T5.2.2.10.4"><span class="ltx_text ltx_font_bold" id="S4.T5.2.2.10.4.1">88.6</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.2.2.10.5"><span class="ltx_text ltx_font_bold" id="S4.T5.2.2.10.5.1">74.9</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.2.2.10.6"><span class="ltx_text ltx_font_bold" id="S4.T5.2.2.10.6.1">53.8</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.2.2.10.7">20.9</td>
<td class="ltx_td ltx_align_center" id="S4.T5.2.2.10.8"><span class="ltx_text ltx_font_bold" id="S4.T5.2.2.10.8.1">45.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.2.2.10.9"><span class="ltx_text ltx_font_bold" id="S4.T5.2.2.10.9.1">21.6</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.2.2.10.10"><span class="ltx_text ltx_font_bold" id="S4.T5.2.2.10.10.1">40.1</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.2.2.10.11"><span class="ltx_text ltx_font_bold" id="S4.T5.2.2.10.11.1">57.6</span></td>
</tr>
<tr class="ltx_tr" id="S4.T5.2.2.2" style="background-color:#E0FFFF;">
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T5.2.2.2.1">
<math alttext="\Delta" class="ltx_Math" display="inline" id="S4.T5.2.2.2.1.m1.1" style="background-color:#E0FFFF;"><semantics id="S4.T5.2.2.2.1.m1.1a"><mi id="S4.T5.2.2.2.1.m1.1.1" mathbackground="#E0FFFF" mathvariant="normal" xref="S4.T5.2.2.2.1.m1.1.1.cmml">Δ</mi><annotation-xml encoding="MathML-Content" id="S4.T5.2.2.2.1.m1.1b"><ci id="S4.T5.2.2.2.1.m1.1.1.cmml" xref="S4.T5.2.2.2.1.m1.1.1">Δ</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T5.2.2.2.1.m1.1c">\Delta</annotation><annotation encoding="application/x-llamapun" id="S4.T5.2.2.2.1.m1.1d">roman_Δ</annotation></semantics></math><span class="ltx_text" id="S4.T5.2.2.2.1.1" style="background-color:#E0FFFF;"> (w/ Filter - w/o Filter)</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T5.2.2.2.2"><span class="ltx_text" id="S4.T5.2.2.2.2.1" style="background-color:#E0FFFF;">-1.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T5.2.2.2.3"><span class="ltx_text" id="S4.T5.2.2.2.3.1" style="background-color:#E0FFFF;">-3.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T5.2.2.2.4"><span class="ltx_text" id="S4.T5.2.2.2.4.1" style="background-color:#E0FFFF;">+2.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T5.2.2.2.5"><span class="ltx_text" id="S4.T5.2.2.2.5.1" style="background-color:#E0FFFF;">+2.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T5.2.2.2.6"><span class="ltx_text" id="S4.T5.2.2.2.6.1" style="background-color:#E0FFFF;">+1.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T5.2.2.2.7"><span class="ltx_text" id="S4.T5.2.2.2.7.1" style="background-color:#E0FFFF;">-0.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T5.2.2.2.8"><span class="ltx_text" id="S4.T5.2.2.2.8.1" style="background-color:#E0FFFF;">+1.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T5.2.2.2.9"><span class="ltx_text" id="S4.T5.2.2.2.9.1" style="background-color:#E0FFFF;">+2.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T5.2.2.2.10"><span class="ltx_text" id="S4.T5.2.2.2.10.1" style="background-color:#E0FFFF;">+3.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T5.2.2.2.11"><span class="ltx_text" id="S4.T5.2.2.2.11.1" style="background-color:#E0FFFF;">+0.9</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of an ablation study investigating the impact of test-case filtering on the performance of reward models.  It compares the performance (measured using Best-of-16 sampling) of reward models trained with and without a filtering step that removes unreliable test cases generated by a large language model. The comparison is shown across multiple code generation benchmarks (HumanEval, MBPP, BigCodeBench-C, BigCodeBench-I, and LiveCodeBench), evaluating performance on both the 'Plus' (more challenging problems) and 'Full' versions of the datasets where applicable.  The table highlights the improvement in reward model performance achieved by incorporating the test-case filtering process.
> <details>
> <summary>read the caption</summary>
> Table 5: Ablation study on test-case filtering. Results are Best-of-16 sampling performance.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S4.T6.2.2">
<tr class="ltx_tr" id="S4.T6.2.2.3">
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T6.2.2.3.1" rowspan="2"><span class="ltx_text" id="S4.T6.2.2.3.1.1">Method</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="S4.T6.2.2.3.2">HumanEval</td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="S4.T6.2.2.3.3">MBPP</td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="S4.T6.2.2.3.4">BigCodeBench-C</td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="S4.T6.2.2.3.5">BigCodeBench-I</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T6.2.2.3.6">LiveCodeBench</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T6.2.2.3.7">Average</td>
</tr>
<tr class="ltx_tr" id="S4.T6.2.2.4">
<td class="ltx_td ltx_align_center" id="S4.T6.2.2.4.1">-</td>
<td class="ltx_td ltx_align_center" id="S4.T6.2.2.4.2">Plus</td>
<td class="ltx_td ltx_align_center" id="S4.T6.2.2.4.3">-</td>
<td class="ltx_td ltx_align_center" id="S4.T6.2.2.4.4">Plus</td>
<td class="ltx_td ltx_align_center" id="S4.T6.2.2.4.5">Full</td>
<td class="ltx_td ltx_align_center" id="S4.T6.2.2.4.6">Hard</td>
<td class="ltx_td ltx_align_center" id="S4.T6.2.2.4.7">Full</td>
<td class="ltx_td ltx_align_center" id="S4.T6.2.2.4.8">Hard</td>
<td class="ltx_td ltx_align_center" id="S4.T6.2.2.4.9">V4</td>
<td class="ltx_td" id="S4.T6.2.2.4.10"></td>
</tr>
<tr class="ltx_tr" id="S4.T6.2.2.5">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="11" id="S4.T6.2.2.5.1">Inference Model = Llama-3.1-8B-Instruct</td>
</tr>
<tr class="ltx_tr" id="S4.T6.2.2.6">
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.2.2.6.1">
<span class="ltx_text ltx_font_smallcaps" id="S4.T6.2.2.6.1.1">AceCode-RM</span> (LLama)</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.2.2.6.2">65.9</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.2.2.6.3">59.1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.2.2.6.4">69.6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.2.2.6.5">57.9</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.2.2.6.6">42.7</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.2.2.6.7">12.8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.2.2.6.8">32.9</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.2.2.6.9"><span class="ltx_text ltx_font_bold" id="S4.T6.2.2.6.9.1">13.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.2.2.6.10">19.9</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.2.2.6.11">41.6</td>
</tr>
<tr class="ltx_tr" id="S4.T6.2.2.7">
<td class="ltx_td ltx_align_center" id="S4.T6.2.2.7.1">
<span class="ltx_text ltx_font_smallcaps" id="S4.T6.2.2.7.1.1">AceCode-RM</span> (Qwen)</td>
<td class="ltx_td ltx_align_center" id="S4.T6.2.2.7.2"><span class="ltx_text ltx_font_bold" id="S4.T6.2.2.7.2.1">77.4</span></td>
<td class="ltx_td ltx_align_center" id="S4.T6.2.2.7.3"><span class="ltx_text ltx_font_bold" id="S4.T6.2.2.7.3.1">70.7</span></td>
<td class="ltx_td ltx_align_center" id="S4.T6.2.2.7.4"><span class="ltx_text ltx_font_bold" id="S4.T6.2.2.7.4.1">76.5</span></td>
<td class="ltx_td ltx_align_center" id="S4.T6.2.2.7.5"><span class="ltx_text ltx_font_bold" id="S4.T6.2.2.7.5.1">64.3</span></td>
<td class="ltx_td ltx_align_center" id="S4.T6.2.2.7.6"><span class="ltx_text ltx_font_bold" id="S4.T6.2.2.7.6.1">45.8</span></td>
<td class="ltx_td ltx_align_center" id="S4.T6.2.2.7.7"><span class="ltx_text ltx_font_bold" id="S4.T6.2.2.7.7.1">20.3</span></td>
<td class="ltx_td ltx_align_center" id="S4.T6.2.2.7.8"><span class="ltx_text ltx_font_bold" id="S4.T6.2.2.7.8.1">36.4</span></td>
<td class="ltx_td ltx_align_center" id="S4.T6.2.2.7.9">12.2</td>
<td class="ltx_td ltx_align_center" id="S4.T6.2.2.7.10"><span class="ltx_text ltx_font_bold" id="S4.T6.2.2.7.10.1">26.1</span></td>
<td class="ltx_td ltx_align_center" id="S4.T6.2.2.7.11"><span class="ltx_text ltx_font_bold" id="S4.T6.2.2.7.11.1">47.7</span></td>
</tr>
<tr class="ltx_tr" id="S4.T6.1.1.1" style="background-color:#E0FFFF;">
<td class="ltx_td ltx_align_center" id="S4.T6.1.1.1.1">
<math alttext="\Delta" class="ltx_Math" display="inline" id="S4.T6.1.1.1.1.m1.1" style="background-color:#E0FFFF;"><semantics id="S4.T6.1.1.1.1.m1.1a"><mi id="S4.T6.1.1.1.1.m1.1.1" mathbackground="#E0FFFF" mathvariant="normal" xref="S4.T6.1.1.1.1.m1.1.1.cmml">Δ</mi><annotation-xml encoding="MathML-Content" id="S4.T6.1.1.1.1.m1.1b"><ci id="S4.T6.1.1.1.1.m1.1.1.cmml" xref="S4.T6.1.1.1.1.m1.1.1">Δ</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T6.1.1.1.1.m1.1c">\Delta</annotation><annotation encoding="application/x-llamapun" id="S4.T6.1.1.1.1.m1.1d">roman_Δ</annotation></semantics></math><span class="ltx_text" id="S4.T6.1.1.1.1.1" style="background-color:#E0FFFF;"> (Qwen-Llama)</span>
</td>
<td class="ltx_td ltx_align_center" id="S4.T6.1.1.1.2"><span class="ltx_text" id="S4.T6.1.1.1.2.1" style="background-color:#E0FFFF;">+11.6</span></td>
<td class="ltx_td ltx_align_center" id="S4.T6.1.1.1.3"><span class="ltx_text" id="S4.T6.1.1.1.3.1" style="background-color:#E0FFFF;">+11.6</span></td>
<td class="ltx_td ltx_align_center" id="S4.T6.1.1.1.4"><span class="ltx_text" id="S4.T6.1.1.1.4.1" style="background-color:#E0FFFF;">+6.9</span></td>
<td class="ltx_td ltx_align_center" id="S4.T6.1.1.1.5"><span class="ltx_text" id="S4.T6.1.1.1.5.1" style="background-color:#E0FFFF;">+6.3</span></td>
<td class="ltx_td ltx_align_center" id="S4.T6.1.1.1.6"><span class="ltx_text" id="S4.T6.1.1.1.6.1" style="background-color:#E0FFFF;">+3.1</span></td>
<td class="ltx_td ltx_align_center" id="S4.T6.1.1.1.7"><span class="ltx_text" id="S4.T6.1.1.1.7.1" style="background-color:#E0FFFF;">+7.4</span></td>
<td class="ltx_td ltx_align_center" id="S4.T6.1.1.1.8"><span class="ltx_text" id="S4.T6.1.1.1.8.1" style="background-color:#E0FFFF;">+3.5</span></td>
<td class="ltx_td ltx_align_center" id="S4.T6.1.1.1.9"><span class="ltx_text" id="S4.T6.1.1.1.9.1" style="background-color:#E0FFFF;">-1.4</span></td>
<td class="ltx_td ltx_align_center" id="S4.T6.1.1.1.10"><span class="ltx_text" id="S4.T6.1.1.1.10.1" style="background-color:#E0FFFF;">+6.2</span></td>
<td class="ltx_td ltx_align_center" id="S4.T6.1.1.1.11"><span class="ltx_text" id="S4.T6.1.1.1.11.1" style="background-color:#E0FFFF;">+6.1</span></td>
</tr>
<tr class="ltx_tr" id="S4.T6.2.2.8">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="11" id="S4.T6.2.2.8.1">Inference Model = Qwen2.5-Coder-7B-Instruct</td>
</tr>
<tr class="ltx_tr" id="S4.T6.2.2.9">
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.2.2.9.1">
<span class="ltx_text ltx_font_smallcaps" id="S4.T6.2.2.9.1.1">AceCode-RM</span> (LLama)</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.2.2.9.2">87.8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.2.2.9.3">81.7</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.2.2.9.4">82.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.2.2.9.5">67.7</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.2.2.9.6">50.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.2.2.9.7"><span class="ltx_text ltx_font_bold" id="S4.T6.2.2.9.7.1">25.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.2.2.9.8">39.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.2.2.9.9">19.6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.2.2.9.10">32.4</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.2.2.9.11">54.0</td>
</tr>
<tr class="ltx_tr" id="S4.T6.2.2.10">
<td class="ltx_td ltx_align_center" id="S4.T6.2.2.10.1">
<span class="ltx_text ltx_font_smallcaps" id="S4.T6.2.2.10.1.1">AceCode-RM</span> (Qwen)</td>
<td class="ltx_td ltx_align_center" id="S4.T6.2.2.10.2"><span class="ltx_text ltx_font_bold" id="S4.T6.2.2.10.2.1">90.2</span></td>
<td class="ltx_td ltx_align_center" id="S4.T6.2.2.10.3"><span class="ltx_text ltx_font_bold" id="S4.T6.2.2.10.3.1">82.9</span></td>
<td class="ltx_td ltx_align_center" id="S4.T6.2.2.10.4"><span class="ltx_text ltx_font_bold" id="S4.T6.2.2.10.4.1">88.6</span></td>
<td class="ltx_td ltx_align_center" id="S4.T6.2.2.10.5"><span class="ltx_text ltx_font_bold" id="S4.T6.2.2.10.5.1">74.9</span></td>
<td class="ltx_td ltx_align_center" id="S4.T6.2.2.10.6"><span class="ltx_text ltx_font_bold" id="S4.T6.2.2.10.6.1">53.8</span></td>
<td class="ltx_td ltx_align_center" id="S4.T6.2.2.10.7">20.9</td>
<td class="ltx_td ltx_align_center" id="S4.T6.2.2.10.8"><span class="ltx_text ltx_font_bold" id="S4.T6.2.2.10.8.1">45.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T6.2.2.10.9"><span class="ltx_text ltx_font_bold" id="S4.T6.2.2.10.9.1">21.6</span></td>
<td class="ltx_td ltx_align_center" id="S4.T6.2.2.10.10"><span class="ltx_text ltx_font_bold" id="S4.T6.2.2.10.10.1">40.1</span></td>
<td class="ltx_td ltx_align_center" id="S4.T6.2.2.10.11"><span class="ltx_text ltx_font_bold" id="S4.T6.2.2.10.11.1">57.6</span></td>
</tr>
<tr class="ltx_tr" id="S4.T6.2.2.2" style="background-color:#E0FFFF;">
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T6.2.2.2.1">
<math alttext="\Delta" class="ltx_Math" display="inline" id="S4.T6.2.2.2.1.m1.1" style="background-color:#E0FFFF;"><semantics id="S4.T6.2.2.2.1.m1.1a"><mi id="S4.T6.2.2.2.1.m1.1.1" mathbackground="#E0FFFF" mathvariant="normal" xref="S4.T6.2.2.2.1.m1.1.1.cmml">Δ</mi><annotation-xml encoding="MathML-Content" id="S4.T6.2.2.2.1.m1.1b"><ci id="S4.T6.2.2.2.1.m1.1.1.cmml" xref="S4.T6.2.2.2.1.m1.1.1">Δ</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T6.2.2.2.1.m1.1c">\Delta</annotation><annotation encoding="application/x-llamapun" id="S4.T6.2.2.2.1.m1.1d">roman_Δ</annotation></semantics></math><span class="ltx_text" id="S4.T6.2.2.2.1.1" style="background-color:#E0FFFF;"> (Qwen-Llama)</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T6.2.2.2.2"><span class="ltx_text" id="S4.T6.2.2.2.2.1" style="background-color:#E0FFFF;">+2.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T6.2.2.2.3"><span class="ltx_text" id="S4.T6.2.2.2.3.1" style="background-color:#E0FFFF;">+1.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T6.2.2.2.4"><span class="ltx_text" id="S4.T6.2.2.2.4.1" style="background-color:#E0FFFF;">+6.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T6.2.2.2.5"><span class="ltx_text" id="S4.T6.2.2.2.5.1" style="background-color:#E0FFFF;">+7.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T6.2.2.2.6"><span class="ltx_text" id="S4.T6.2.2.2.6.1" style="background-color:#E0FFFF;">+3.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T6.2.2.2.7"><span class="ltx_text" id="S4.T6.2.2.2.7.1" style="background-color:#E0FFFF;">-4.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T6.2.2.2.8"><span class="ltx_text" id="S4.T6.2.2.2.8.1" style="background-color:#E0FFFF;">+6.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T6.2.2.2.9"><span class="ltx_text" id="S4.T6.2.2.2.9.1" style="background-color:#E0FFFF;">+2.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T6.2.2.2.10"><span class="ltx_text" id="S4.T6.2.2.2.10.1" style="background-color:#E0FFFF;">+7.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T6.2.2.2.11"><span class="ltx_text" id="S4.T6.2.2.2.11.1" style="background-color:#E0FFFF;">+3.6</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table compares the performance of two versions of the AceCode-RM reward model.  One version is trained using the Llama-3.1-Inst-8B base model (AceCode-RM (Llama)), and the other is trained using the Qwen-Coder-2.5-7B-Inst base model (AceCode-RM (Qwen)). The table shows the performance of each model across different benchmarks and metrics (HumanEval Plus, MBPP Plus, BigCodeBench-C Full/Hard, BigCodeBench-I Full/Hard, and LiveCodeBench V4) using best-of-16 sampling. This allows for a direct comparison of the impact of the base model choice on the reward model's effectiveness.
> <details>
> <summary>read the caption</summary>
> Table 6: Comparison of AceCode-RM’s performance trained on different base model, where AceCode-RM (Llama) is based on Llama-3.1-Inst-8B and AceCode-RM (Qwen) is based on Qwen-Coder-2.5-7B-Inst. Results are Best-of-16 sampling performance.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="A1.T7.1">
<tr class="ltx_tr" id="A1.T7.1.1">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_l ltx_border_r ltx_border_t" id="A1.T7.1.1.1">
<span class="ltx_inline-block ltx_align_top" id="A1.T7.1.1.1.1">
<span class="ltx_p" id="A1.T7.1.1.1.1.1" style="width:390.3pt;"><span class="ltx_text ltx_font_bold" id="A1.T7.1.1.1.1.1.1">system:</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T7.1.2">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_l ltx_border_r" id="A1.T7.1.2.1">
<span class="ltx_inline-block ltx_align_top" id="A1.T7.1.2.1.1">
<span class="ltx_p" id="A1.T7.1.2.1.1.1" style="width:390.3pt;">You are an AI assistant that helps people with python coding tasks.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T7.1.3">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_l ltx_border_r ltx_border_t" id="A1.T7.1.3.1">
<span class="ltx_inline-block ltx_align_top" id="A1.T7.1.3.1.1">
<span class="ltx_p" id="A1.T7.1.3.1.1.1" style="width:390.3pt;"><span class="ltx_text ltx_font_bold" id="A1.T7.1.3.1.1.1.1">user:</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T7.1.4">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_l ltx_border_r" id="A1.T7.1.4.1">
<span class="ltx_inline-block ltx_align_top" id="A1.T7.1.4.1.1">
<span class="ltx_p" id="A1.T7.1.4.1.1.1" style="width:390.3pt;">You are the latest and best bot aimed at transforming some code snippet into a leetcode style question. You will be provided with a prompt for writing code, along with a reference program that answers the question. Please complete the following for me:</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T7.1.5">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_l ltx_border_r" id="A1.T7.1.5.1">
<span class="ltx_inline-block ltx_align_top" id="A1.T7.1.5.1.1">
<span class="ltx_p" id="A1.T7.1.5.1.1.1" style="width:390.3pt;">1. Come up with a leetcode style question which consists of a well-defined problem. The generated question should meet the following criteria:</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T7.1.6">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_l ltx_border_r" id="A1.T7.1.6.1">
<span class="ltx_inline-block ltx_align_top" id="A1.T7.1.6.1.1">
<span class="ltx_p" id="A1.T7.1.6.1.1.1" style="width:390.3pt;"> a. The question is clear and understandable, with enough details to describe what the input and output are.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T7.1.7">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_l ltx_border_r" id="A1.T7.1.7.1">
<span class="ltx_inline-block ltx_align_top" id="A1.T7.1.7.1.1">
<span class="ltx_p" id="A1.T7.1.7.1.1.1" style="width:390.3pt;"> b. The question should be solvable by only implementing 1 function instead of multiple functions or a class. Therefore, please avoid questions which require complicated pipelines.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T7.1.8">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_l ltx_border_r" id="A1.T7.1.8.1">
<span class="ltx_inline-block ltx_align_top" id="A1.T7.1.8.1.1">
<span class="ltx_p" id="A1.T7.1.8.1.1.1" style="width:390.3pt;"> c. The question itself should not require any access to external resource or database.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T7.1.9">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_l ltx_border_r" id="A1.T7.1.9.1">
<span class="ltx_inline-block ltx_align_top" id="A1.T7.1.9.1.1">
<span class="ltx_p" id="A1.T7.1.9.1.1.1" style="width:390.3pt;"> d. Feel free to use part of the original question if necessary. Moreover, please do not ask for runtime and space complexity analysis or any test cases in your response.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T7.1.10">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_l ltx_border_r" id="A1.T7.1.10.1">
<span class="ltx_inline-block ltx_align_top" id="A1.T7.1.10.1.1">
<span class="ltx_p" id="A1.T7.1.10.1.1.1" style="width:390.3pt;">2. Based on the modified question that you generated in part 1, you need to create around 20 test cases for this modified question. Each test case should be independent assert clauses. The parameters and expected output of each test case should all be constants, **without accessing any external resources**.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T7.1.11">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_l ltx_border_r" id="A1.T7.1.11.1">
<span class="ltx_inline-block ltx_align_top" id="A1.T7.1.11.1.1">
<span class="ltx_p" id="A1.T7.1.11.1.1.1" style="width:390.3pt;">Here is the original question:</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T7.1.12">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_l ltx_border_r" id="A1.T7.1.12.1">
<span class="ltx_inline-block ltx_align_top" id="A1.T7.1.12.1.1">
<span class="ltx_p" id="A1.T7.1.12.1.1.1" style="width:390.3pt;">{instruction}</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T7.1.13">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_l ltx_border_r" id="A1.T7.1.13.1">
<span class="ltx_inline-block ltx_align_top" id="A1.T7.1.13.1.1">
<span class="ltx_p" id="A1.T7.1.13.1.1.1" style="width:390.3pt;">Here is the reference program that answers the question:</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T7.1.14">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_l ltx_border_r" id="A1.T7.1.14.1">
<span class="ltx_inline-block ltx_align_top" id="A1.T7.1.14.1.1">
<span class="ltx_p" id="A1.T7.1.14.1.1.1" style="width:390.3pt;">“‘python</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T7.1.15">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_l ltx_border_r" id="A1.T7.1.15.1">
<span class="ltx_inline-block ltx_align_top" id="A1.T7.1.15.1.1">
<span class="ltx_p" id="A1.T7.1.15.1.1.1" style="width:390.3pt;">{program}</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T7.1.16">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_l ltx_border_r" id="A1.T7.1.16.1">
<span class="ltx_inline-block ltx_align_top" id="A1.T7.1.16.1.1">
<span class="ltx_p" id="A1.T7.1.16.1.1.1" style="width:390.3pt;">“‘</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T7.1.17">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_l ltx_border_r" id="A1.T7.1.17.1">
<span class="ltx_inline-block ltx_align_top" id="A1.T7.1.17.1.1">
<span class="ltx_p" id="A1.T7.1.17.1.1.1" style="width:390.3pt;">Now give your modified question and generated test cases in the following json format:</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T7.1.18">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_b ltx_border_l ltx_border_r" id="A1.T7.1.18.1">
<span class="ltx_inline-block ltx_align_top" id="A1.T7.1.18.1.1">
<span class="ltx_p" id="A1.T7.1.18.1.1.1" style="width:390.3pt;">{"question": …, "tests":["assert …", "assert …"]}.</span>
</span>
</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table details the prompt engineering used to convert existing code examples into LeetCode-style questions and their corresponding test cases.  The prompt instructs an AI assistant to create a well-defined coding problem (LeetCode style), which includes a clear description of inputs and outputs, can be solved with a single function, avoids needing external resources, and provides a set of around 20 independent test cases (assert statements) with constant inputs and outputs.
> <details>
> <summary>read the caption</summary>
> Table 7: Prompt Used for Converting Seed Code Dataset into LeetCode-style Questions and Test Cases
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2502.01718/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.01718/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.01718/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.01718/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.01718/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.01718/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.01718/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.01718/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.01718/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.01718/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.01718/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.01718/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}