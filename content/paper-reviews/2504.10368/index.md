---
title: "S1-Bench: A Simple Benchmark for Evaluating System 1 Thinking Capability of Large Reasoning Models"
summary: "S1-Bench: A new benchmark reveals that Large Reasoning Models (LRMs) exhibit inefficiency in simple tasks, favoring System 1 thinking."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Natural Language Processing", "Large Language Models", "🏢 Institute of Information Engineering, Chinese Academy of Sciences",]
showSummary: true
date: 2025-04-14
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2504.10368 {{< /keyword >}}
{{< keyword icon="writer" >}} Wenyuan Zhang et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-04-15 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2504.10368" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2504.10368" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2504.10368/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Large Reasoning Models (LRMs) excel at complex tasks using deliberate System 2 thinking, but a research gap exists in understanding their System 1 thinking abilities for simple, intuitive tasks. Current benchmarks are often adversarial or require reasoning, not aligning with intuitive processing. Thus, a benchmark to evaluate LRMS system 1 thinking is still lacking. 



To address this, the paper introduces **S1-Bench**, a novel benchmark to evaluate LRM's performance on simple tasks. It reveals that LRMs exhibit lower efficiency, with longer outputs than small LLMs. LRMs often find correct answers early but continue unnecessary reasoning, leading to accuracy degradation on simple questions. The research highlights the need to achieve balanced dual-system thinking in LRMs.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Current LRMs are inefficient and lack System 1 thinking capabilities, requiring significantly longer outputs than smaller models. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} LRMs often identify correct answers early but continue unnecessary reasoning, increasing content similarity without improving accuracy. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} LRMs demonstrate an ability to prejudge question simplicity, yet still exhibit inefficiencies, highlighting a need for dual-system compatibility. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper offers insights into **LRMs' cognitive limitations** in simple tasks, urging researchers to develop models with **balanced dual-system thinking**. It opens new avenues for exploring LRM efficiency and adaptability, crucial for real-world applications. 

------
#### Visual Insights



![](https://arxiv.org/html/2504.10368/x1.png)

> 🔼 Figure 1 displays the accuracy and response length of various Large Reasoning Models (LRMs) when answering simple questions from the S1-Bench benchmark.  Each point represents a specific LRM, with the x-axis showing the average number of tokens in the model's response (a measure of 'overthinking'), and the y-axis showing the accuracy.  The shapes of the points represent the organization that developed the model, while the colors represent the base model family. Darker colors within a family indicate larger models. Connecting lines between points show the relationship between models from the same family, illustrating how accuracy and response length change with model size and training.
> <details>
> <summary>read the caption</summary>
> Figure 1: LRMs exhibit under-accuracy and overthinking on simple problems. Shapes represent organizations, colors represent base model families, with darker colors indicating larger models, and connecting lines represent the relationships between model families and training.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S3.T1.1">
<tr class="ltx_tr" id="S3.T1.1.1">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_tt" id="S3.T1.1.1.1">Model</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T1.1.1.2">t=0.0</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T1.1.1.3">t=0.2</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S3.T1.1.1.4">t=0.4</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T1.1.1.5">Tokens</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.2">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S3.T1.1.2.1">Gemma2-9B</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.2.2">100.00</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.2.3">100.00</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T1.1.2.4">100.00</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.2.5">38.77</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.3">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T1.1.3.1">Llama3.1-8B</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.3.2">100.00</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.3.3">100.00</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.1.3.4">100.00</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.3.5">42.00</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.4">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T1.1.4.1">Mistral-8B</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.4.2">100.00</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.4.3">100.00</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.1.4.4">100.00</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.4.5">44.38</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.5">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T1.1.5.1">Qwen2.5-7B</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.5.2">100.00</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.5.3">100.00</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.1.5.4">100.00</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.5.5">42.81</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.6">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S3.T1.1.6.1">Qwen2.5-14B</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.6.2">99.74</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.6.3">99.76</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T1.1.6.4">99.76</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.6.5">40.00</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.7">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T1.1.7.1">Qwen2.5-32B</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.7.2">99.98</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.7.3">99.98</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.1.7.4">99.98</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.7.5">43.17</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.8">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T1.1.8.1">Qwen2.5-72B</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.8.2">100.00</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.8.3">100.00</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.1.8.4">100.00</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.8.5">44.61</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.9">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T1.1.9.1">Llama3.3-70B</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.9.2">100.00</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.9.3">99.76</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.1.9.4">99.76</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.9.5">53.71</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.10">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_r" id="S3.T1.1.10.1">DeepSeek-v3</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.1.10.2">100.00</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.1.10.3">100.00</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S3.T1.1.10.4">100.00</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.1.10.5">79.53</td>
</tr>
</table>{{< /table-caption >}}

> 🔼 This table presents the accuracy and response length of several Large Language Models (LLMs) on simple tasks.  Each model was tested ten times at three different temperature settings (0.0, 0.2, and 0.4) to evaluate the robustness of their performance.  The response length, measured in tokens, indicates the efficiency of the model's reasoning process.
> <details>
> <summary>read the caption</summary>
> Table 1: Average accuracy and response token count of different LLMs, each sampled 10 times at three temperature settings.
> </details>





### In-depth insights


#### S1-Bench: Intro
The paper introduces **S1-Bench**, designed to evaluate **intuitive reasoning** in Large Reasoning Models (LRMs), contrasting with their strength in deliberative System 2 thinking. It addresses a gap in evaluating LRMs on tasks needing **fast, intuitive processing**, unlike existing benchmarks that focus on complex reasoning. S1-Bench comprises simple, diverse questions across multiple domains and languages, aiming to reveal whether LRM's reliance on analytical thinking hinders **System 1 capabilities**. Initial findings show LRMs exhibit lower efficiency, prolonged deliberation even after correct answers, and accuracy degradation compared to smaller models, highlighting a need for balanced dual-system thinking. This underlines a need to bridge the gap between current LRMs and balanced cognitive models **adaptable to task complexity**.

#### Overthinking LRMs
**Overthinking** in Large Reasoning Models (LRMs) is a key challenge.  While LRMs excel at complex tasks via deliberate 'System 2' thinking, they often **struggle with simple questions**, exhibiting **inefficiency and under-accuracy**. They generate verbose, unnecessary reasoning chains, leading to longer response times compared to smaller Language Models. This stems from a **rigid reliance on System 2**, where they struggle to balance intuition and analysis. LRMs often correctly identify the answer early but continue deliberating, demonstrating a **lack of cognitive flexibility**. This is especially pronounced in instruction-following tasks where the models get trapped in a vast search space, exploring numerous alternatives. It highlights a key area for development, to allow for balanced, efficient dual-system processing adapting appropriately to task complexity.

#### Simple Q's Fail
While perhaps not an explicit heading, the idea of 'Simple Q's Fail' encapsulates a key issue: **LRMs, despite their power, struggle with tasks humans find trivially easy.** This reveals a mismatch. LRMs are trained for complex reasoning. This can hinder performance on intuitive tasks. Their reliance on System 2 thinking leads to overthinking. The paper's findings on inefficiency and under-accuracy emphasize this point. **Even with correct initial insights, the models continue to process unnecessarily**, indicating a fundamental rigidity. It also suggest further study is needed for the potential for a better dual-system models.

#### Efficiency Deficit
**Efficiency deficits** in large reasoning models (LRMs) are a significant concern, particularly when dealing with simple tasks. Despite their sophisticated architectures and training, LRMs often exhibit **overthinking**, generating verbose responses that far exceed those of smaller models. This suggests a disconnect between reasoning capability and task complexity, where the models fail to recognize and adapt to simpler demands. The resource-intensive nature of LRMs raises questions about their practical applicability and calls for strategies to mitigate this inefficiency. Such strategies may involve **optimizing model architectures, refining training methodologies**, or incorporating mechanisms for dynamic task complexity assessment to enable adaptive reasoning.

#### Format Struggles
**Format struggles** highlight the difficulties LRMs encounter in adhering to specific output structures. Unlike traditional LLMs, LRMs often deviate from expected formats, indicating vulnerabilities in reasoning processes. These struggles appear as varying structural errors, causing challenges in output interpretation. These errors suggest that LRMs may prioritize generating content over maintaining consistent formatting, showing a need for refined training methods. Recognizing these format deficiencies is crucial for advancing reliability and interpretability, and addressing format issues is necessary for dual-system compatibility.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2504.10368/x2.png)

> 🔼 This figure illustrates the construction workflow of the S1-Bench benchmark dataset.  The workflow involves multiple stages: generating questions and answers, having annotators and discriminators evaluate the simplicity and quality, iteratively refining questions until they meet simplicity criteria, and finally validating the dataset. The figure also provides a sample question-answer pair for each of the four main categories within S1-Bench: reasoning, knowledge, instruction following, and analysis.  Each example showcases the simplicity and clarity characteristic of questions included in the benchmark.
> <details>
> <summary>read the caption</summary>
> Figure 2: Construction workflow for S1-Bench and an illustrative example from each major category.
> </details>



![](https://arxiv.org/html/2504.10368/x3.png)

> 🔼 This histogram displays the distribution of the number of tokens in each question from the S1-Bench dataset.  The x-axis represents the range of token counts, and the y-axis represents the frequency of questions falling within each range. This visualization helps to understand the length of questions in the benchmark, showing whether they are generally short or long.
> <details>
> <summary>read the caption</summary>
> Figure 3: Statistical distribution of token counts for S1-Bench questions.
> </details>



![](https://arxiv.org/html/2504.10368/x4.png)

> 🔼 Figure 4 presents a dual analysis of Large Reasoning Models (LRMs) efficiency on simple tasks.  Panel (a) compares the token count for the initial phase of the thinking process (the initial steps leading to a correct answer) against the subsequent 'additional thinking' (the extra steps taken after finding the correct answer). This highlights the extent of LRMs' overthinking. Panel (b) shows the distribution of 'solution rounds', which represents the number of times the LRM arrives at a conclusion (correct or incorrect) before producing the final answer. This illustrates the variability in how many intermediate steps LRMs take before committing to an answer, again emphasizing the issue of overthinking.
> <details>
> <summary>read the caption</summary>
> Figure 4: (a) Comparison of Initial and Additional Thinking Costs for Each LRM. (b) Distribution of Solution Rounds for Each LRM.
> </details>



![](https://arxiv.org/html/2504.10368/x5.png)

> 🔼 This figure visualizes information redundancy within the reasoning processes of Large Reasoning Models (LRMs).  It plots the maximum cosine similarity between each segment of an LRM's reasoning process and all preceding segments for four different question categories. Higher similarity indicates greater redundancy, suggesting that the model is repeating or reiterating information unnecessarily. The x-axis represents the segment number, and the y-axis represents the maximum cosine similarity score.
> <details>
> <summary>read the caption</summary>
> Figure 5: Maximum similarity between each segment and all preceding segments for LRMs across four categories.
> </details>



![](https://arxiv.org/html/2504.10368/x6.png)

> 🔼 Figure 6 shows the distribution of correct and incorrect final answers for different Large Language Models (LLMs) across four question categories (Reasoning, Knowledge, Instruction Following, and Analysis) in the S1-Bench benchmark.  The green bars represent instances where the LLM produced a correct final answer, and the red bars represent instances where the LLM's final answer was incorrect.  The lengths of the bars visually represent the proportions of correct and incorrect answers within each category. This figure helps to illustrate the performance of the different LLMs in terms of both accuracy and the overall thinking process involved in arriving at their answers. 
> <details>
> <summary>read the caption</summary>
> Figure 6: Distribution of the thinking process across four categories. FA and TP refer to Final Answer and Thinking Process, respectively. Green bars indicate cases where the final answer is correct, while red bars indicate cases where it is incorrect.
> </details>



![](https://arxiv.org/html/2504.10368/x7.png)

> 🔼 This figure visualizes two key findings about Large Reasoning Models (LRMs) handling simple questions. The left bar chart displays the number of times each LRM exhibits 'prejudgment' behavior (i.e., explicitly identifying the question's simplicity) across English and Chinese simple questions from the S1-Bench benchmark.  The right bar chart shows the Average Response Tokens (ART) for each LRM, comparing the ART when prejudgment is present versus when it is absent. This comparison highlights the impact of prejudgment on the efficiency of LRMs when dealing with simple questions.
> <details>
> <summary>read the caption</summary>
> Figure 7: Counting instances of prejudgment generated by LRMs for simple questions and 𝙰𝚁𝚃𝙰𝚁𝚃\mathtt{ART}typewriter_ART.
> </details>



![](https://arxiv.org/html/2504.10368/x8.png)

> 🔼 This figure shows a hierarchical display of the S1-Bench benchmark's structure. The inner circle depicts the four main categories of questions: Reasoning, Knowledge, Instruction Following, and Analysis.  The outer ring expands on these categories by illustrating the 28 subcategories that encompass a broader range of question types within each main category.  The visualization helps to understand the diverse and granular nature of the benchmark, highlighting its comprehensive coverage of simple reasoning tasks.
> <details>
> <summary>read the caption</summary>
> Figure 8: S1-Bench Category Display. The inner circle represents four major categories, and the outer circle includes 28 subcategories.
> </details>



![](https://arxiv.org/html/2504.10368/x9.png)

> 🔼 Figure 9 is a heatmap showing the average response token (ART) counts for each of the 28 subcategories in the S1-Bench benchmark.  The ART values represent the average length of the model's reasoning process before generating a final answer.  The data shown is the average of five generations using the top-p sampling method with the loose format setting.  This figure helps to illustrate the efficiency of different Large Reasoning Models (LRMs) across various types of simple reasoning tasks and to reveal which categories tend to cause the most overthinking.
> <details>
> <summary>read the caption</summary>
> Figure 9: 𝙰𝚁𝚃𝙰𝚁𝚃\mathtt{ART}typewriter_ART on the 28 subcategories, which is the average result of five generations under top-p sampling with Loose Format setting.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S3.T2.7">
<tr class="ltx_tr" id="S3.T2.3.3">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_tt" id="S3.T2.3.3.4" rowspan="2" style="padding:0.5pt 5.0pt;"><span class="ltx_text" id="S3.T2.3.3.4.1" style="position:relative; bottom:-0.2pt;">Model ID</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S3.T2.3.3.5" rowspan="2" style="padding:0.5pt 5.0pt;"><span class="ltx_text" id="S3.T2.3.3.5.1" style="position:relative; bottom:-0.2pt;">Size</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" colspan="2" id="S3.T2.3.3.6" style="padding:0.5pt 5.0pt;">Loose Format</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" colspan="2" id="S3.T2.3.3.7" style="padding:0.5pt 5.0pt;">Strict Format</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T2.1.1.1" rowspan="2" style="padding:0.5pt 5.0pt;"><span class="ltx_text" id="S3.T2.1.1.1.1" style="position:relative; bottom:-0.2pt;">L-Corr <math alttext="\uparrow" class="ltx_Math" display="inline" id="S3.T2.1.1.1.1.1.m1.1"><semantics id="S3.T2.1.1.1.1.1.m1.1a"><mo id="S3.T2.1.1.1.1.1.m1.1.1" stretchy="false" xref="S3.T2.1.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S3.T2.1.1.1.1.1.m1.1b"><ci id="S3.T2.1.1.1.1.1.m1.1.1.cmml" xref="S3.T2.1.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.1.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S3.T2.1.1.1.1.1.m1.1d">↑</annotation></semantics></math></span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T2.2.2.2" rowspan="2" style="padding:0.5pt 5.0pt;"><span class="ltx_text" id="S3.T2.2.2.2.1" style="position:relative; bottom:-0.2pt;">S-Corr <math alttext="\uparrow" class="ltx_Math" display="inline" id="S3.T2.2.2.2.1.1.m1.1"><semantics id="S3.T2.2.2.2.1.1.m1.1a"><mo id="S3.T2.2.2.2.1.1.m1.1.1" stretchy="false" xref="S3.T2.2.2.2.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S3.T2.2.2.2.1.1.m1.1b"><ci id="S3.T2.2.2.2.1.1.m1.1.1.cmml" xref="S3.T2.2.2.2.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.2.2.2.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S3.T2.2.2.2.1.1.m1.1d">↑</annotation></semantics></math></span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T2.3.3.3" rowspan="2" style="padding:0.5pt 5.0pt;"><span class="ltx_text" id="S3.T2.3.3.3.1" style="position:relative; bottom:-0.2pt;"><math alttext="\mathtt{ART}\downarrow" class="ltx_Math" display="inline" id="S3.T2.3.3.3.1.1.m1.1"><semantics id="S3.T2.3.3.3.1.1.m1.1a"><mrow id="S3.T2.3.3.3.1.1.m1.1.1" xref="S3.T2.3.3.3.1.1.m1.1.1.cmml"><mi id="S3.T2.3.3.3.1.1.m1.1.1.2" xref="S3.T2.3.3.3.1.1.m1.1.1.2.cmml">𝙰𝚁𝚃</mi><mo id="S3.T2.3.3.3.1.1.m1.1.1.1" stretchy="false" xref="S3.T2.3.3.3.1.1.m1.1.1.1.cmml">↓</mo><mi id="S3.T2.3.3.3.1.1.m1.1.1.3" xref="S3.T2.3.3.3.1.1.m1.1.1.3.cmml"></mi></mrow><annotation-xml encoding="MathML-Content" id="S3.T2.3.3.3.1.1.m1.1b"><apply id="S3.T2.3.3.3.1.1.m1.1.1.cmml" xref="S3.T2.3.3.3.1.1.m1.1.1"><ci id="S3.T2.3.3.3.1.1.m1.1.1.1.cmml" xref="S3.T2.3.3.3.1.1.m1.1.1.1">↓</ci><ci id="S3.T2.3.3.3.1.1.m1.1.1.2.cmml" xref="S3.T2.3.3.3.1.1.m1.1.1.2">𝙰𝚁𝚃</ci><csymbol cd="latexml" id="S3.T2.3.3.3.1.1.m1.1.1.3.cmml" xref="S3.T2.3.3.3.1.1.m1.1.1.3">absent</csymbol></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.3.3.3.1.1.m1.1c">\mathtt{ART}\downarrow</annotation><annotation encoding="application/x-llamapun" id="S3.T2.3.3.3.1.1.m1.1d">typewriter_ART ↓</annotation></semantics></math></span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.7.7">
<td class="ltx_td ltx_align_center" id="S3.T2.4.4.1" style="padding:0.5pt 5.0pt;">pass@1<math alttext="\uparrow" class="ltx_Math" display="inline" id="S3.T2.4.4.1.m1.1"><semantics id="S3.T2.4.4.1.m1.1a"><mo id="S3.T2.4.4.1.m1.1.1" stretchy="false" xref="S3.T2.4.4.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S3.T2.4.4.1.m1.1b"><ci id="S3.T2.4.4.1.m1.1.1.cmml" xref="S3.T2.4.4.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.4.4.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S3.T2.4.4.1.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.5.5.2" style="padding:0.5pt 5.0pt;">acc@k<math alttext="\uparrow" class="ltx_Math" display="inline" id="S3.T2.5.5.2.m1.1"><semantics id="S3.T2.5.5.2.m1.1a"><mo id="S3.T2.5.5.2.m1.1.1" stretchy="false" xref="S3.T2.5.5.2.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S3.T2.5.5.2.m1.1b"><ci id="S3.T2.5.5.2.m1.1.1.cmml" xref="S3.T2.5.5.2.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.5.5.2.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S3.T2.5.5.2.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center" id="S3.T2.6.6.3" style="padding:0.5pt 5.0pt;">pass@1<math alttext="\uparrow" class="ltx_Math" display="inline" id="S3.T2.6.6.3.m1.1"><semantics id="S3.T2.6.6.3.m1.1a"><mo id="S3.T2.6.6.3.m1.1.1" stretchy="false" xref="S3.T2.6.6.3.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S3.T2.6.6.3.m1.1b"><ci id="S3.T2.6.6.3.m1.1.1.cmml" xref="S3.T2.6.6.3.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.6.6.3.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S3.T2.6.6.3.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.7.7.4" style="padding:0.5pt 5.0pt;">acc@k<math alttext="\uparrow" class="ltx_Math" display="inline" id="S3.T2.7.7.4.m1.1"><semantics id="S3.T2.7.7.4.m1.1a"><mo id="S3.T2.7.7.4.m1.1.1" stretchy="false" xref="S3.T2.7.7.4.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S3.T2.7.7.4.m1.1b"><ci id="S3.T2.7.7.4.m1.1.1.cmml" xref="S3.T2.7.7.4.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.7.7.4.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S3.T2.7.7.4.m1.1d">↑</annotation></semantics></math>
</td>
</tr>
<tr class="ltx_tr" id="S3.T2.7.8">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S3.T2.7.8.1" style="padding:0.5pt 5.0pt;">Validator LLMs</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T2.7.8.2" style="padding:0.5pt 5.0pt;">7-9B</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.7.8.3" style="padding:0.5pt 5.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.7.8.3.1">100.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T2.7.8.4" style="padding:0.5pt 5.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.7.8.4.1">100.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.7.8.5" style="padding:0.5pt 5.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.7.8.5.1">100.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T2.7.8.6" style="padding:0.5pt 5.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.7.8.6.1">100.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.7.8.7" style="padding:0.5pt 5.0pt;">–</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.7.8.8" style="padding:0.5pt 5.0pt;">–</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.7.8.9" style="padding:0.5pt 5.0pt;">42.00</td>
</tr>
<tr class="ltx_tr" id="S3.T2.7.9">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S3.T2.7.9.1" style="padding:0.5pt 5.0pt;">QwQ-32B</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T2.7.9.2" style="padding:0.5pt 5.0pt;">32B</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.7.9.3" style="padding:0.5pt 5.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.7.9.3.1" style="color:#008080;">100.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T2.7.9.4" style="padding:0.5pt 5.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.7.9.4.1" style="color:#008080;">100.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.7.9.5" style="padding:0.5pt 5.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.7.9.5.1" style="color:#008080;">100.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T2.7.9.6" style="padding:0.5pt 5.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.7.9.6.1" style="color:#008080;">100.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.7.9.7" style="padding:0.5pt 5.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.7.9.7.1" style="color:#008080;">100.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.7.9.8" style="padding:0.5pt 5.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.7.9.8.1" style="color:#008080;">100.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.7.9.9" style="padding:0.5pt 5.0pt;">720.10</td>
</tr>
<tr class="ltx_tr" id="S3.T2.7.10">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T2.7.10.1" style="padding:0.5pt 5.0pt;">Hunyuan-T1</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.7.10.2" style="padding:0.5pt 5.0pt;">–</td>
<td class="ltx_td ltx_align_center" id="S3.T2.7.10.3" style="padding:0.5pt 5.0pt;"><span class="ltx_text" id="S3.T2.7.10.3.1" style="color:#008080;">99.91</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.7.10.4" style="padding:0.5pt 5.0pt;"><span class="ltx_text" id="S3.T2.7.10.4.1" style="color:#008080;">99.53</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.7.10.5" style="padding:0.5pt 5.0pt;"><span class="ltx_text" id="S3.T2.7.10.5.1" style="color:#008080;">99.91</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.7.10.6" style="padding:0.5pt 5.0pt;"><span class="ltx_text" id="S3.T2.7.10.6.1" style="color:#008080;">99.53</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.7.10.7" style="padding:0.5pt 5.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.7.10.7.1" style="color:#008080;">100.00</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.7.10.8" style="padding:0.5pt 5.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.7.10.8.1" style="color:#008080;">100.00</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.7.10.9" style="padding:0.5pt 5.0pt;">542.31</td>
</tr>
<tr class="ltx_tr" id="S3.T2.7.11">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T2.7.11.1" style="padding:0.5pt 5.0pt;">Sky-T1-32B</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.7.11.2" style="padding:0.5pt 5.0pt;">32B</td>
<td class="ltx_td ltx_align_center" id="S3.T2.7.11.3" style="padding:0.5pt 5.0pt;">98.82</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.7.11.4" style="padding:0.5pt 5.0pt;">94.79</td>
<td class="ltx_td ltx_align_center" id="S3.T2.7.11.5" style="padding:0.5pt 5.0pt;">94.88</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.7.11.6" style="padding:0.5pt 5.0pt;">79.62</td>
<td class="ltx_td ltx_align_center" id="S3.T2.7.11.7" style="padding:0.5pt 5.0pt;">99.48</td>
<td class="ltx_td ltx_align_center" id="S3.T2.7.11.8" style="padding:0.5pt 5.0pt;">95.26</td>
<td class="ltx_td ltx_align_center" id="S3.T2.7.11.9" style="padding:0.5pt 5.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.7.11.9.1" style="color:#008080;">163.00</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.7.12">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T2.7.12.1" style="padding:0.5pt 5.0pt;">DS-R1</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.7.12.2" style="padding:0.5pt 5.0pt;">671B</td>
<td class="ltx_td ltx_align_center" id="S3.T2.7.12.3" style="padding:0.5pt 5.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.7.12.3.1" style="color:#008080;">100.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.7.12.4" style="padding:0.5pt 5.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.7.12.4.1" style="color:#008080;">100.00</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.7.12.5" style="padding:0.5pt 5.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.7.12.5.1" style="color:#008080;">100.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.7.12.6" style="padding:0.5pt 5.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.7.12.6.1" style="color:#008080;">100.00</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.7.12.7" style="padding:0.5pt 5.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.7.12.7.1" style="color:#008080;">100.00</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.7.12.8" style="padding:0.5pt 5.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.7.12.8.1" style="color:#008080;">100.00</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.7.12.9" style="padding:0.5pt 5.0pt;">646.40</td>
</tr>
<tr class="ltx_tr" id="S3.T2.7.13">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T2.7.13.1" style="padding:0.5pt 5.0pt;">DS-R1-70B</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.7.13.2" style="padding:0.5pt 5.0pt;">70B</td>
<td class="ltx_td ltx_align_center" id="S3.T2.7.13.3" style="padding:0.5pt 5.0pt;">99.48</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.7.13.4" style="padding:0.5pt 5.0pt;">97.39</td>
<td class="ltx_td ltx_align_center" id="S3.T2.7.13.5" style="padding:0.5pt 5.0pt;">99.38</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.7.13.6" style="padding:0.5pt 5.0pt;">96.92</td>
<td class="ltx_td ltx_align_center" id="S3.T2.7.13.7" style="padding:0.5pt 5.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.7.13.7.1" style="color:#008080;">100.00</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.7.13.8" style="padding:0.5pt 5.0pt;"><span class="ltx_text" id="S3.T2.7.13.8.1" style="color:#008080;">99.91</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.7.13.9" style="padding:0.5pt 5.0pt;">453.81</td>
</tr>
<tr class="ltx_tr" id="S3.T2.7.14">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T2.7.14.1" style="padding:0.5pt 5.0pt;">DS-R1-32B</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.7.14.2" style="padding:0.5pt 5.0pt;">32B</td>
<td class="ltx_td ltx_align_center" id="S3.T2.7.14.3" style="padding:0.5pt 5.0pt;">99.72</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.7.14.4" style="padding:0.5pt 5.0pt;">98.82</td>
<td class="ltx_td ltx_align_center" id="S3.T2.7.14.5" style="padding:0.5pt 5.0pt;">99.72</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.7.14.6" style="padding:0.5pt 5.0pt;">98.82</td>
<td class="ltx_td ltx_align_center" id="S3.T2.7.14.7" style="padding:0.5pt 5.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.7.14.7.1" style="color:#008080;">100.00</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.7.14.8" style="padding:0.5pt 5.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.7.14.8.1" style="color:#008080;">100.00</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.7.14.9" style="padding:0.5pt 5.0pt;">429.91</td>
</tr>
<tr class="ltx_tr" id="S3.T2.7.15">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T2.7.15.1" style="padding:0.5pt 5.0pt;">DS-R1-14B</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.7.15.2" style="padding:0.5pt 5.0pt;">14B</td>
<td class="ltx_td ltx_align_center" id="S3.T2.7.15.3" style="padding:0.5pt 5.0pt;">99.57</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.7.15.4" style="padding:0.5pt 5.0pt;">97.87</td>
<td class="ltx_td ltx_align_center" id="S3.T2.7.15.5" style="padding:0.5pt 5.0pt;">99.57</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.7.15.6" style="padding:0.5pt 5.0pt;">97.87</td>
<td class="ltx_td ltx_align_center" id="S3.T2.7.15.7" style="padding:0.5pt 5.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.7.15.7.1" style="color:#008080;">100.00</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.7.15.8" style="padding:0.5pt 5.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.7.15.8.1" style="color:#008080;">100.00</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.7.15.9" style="padding:0.5pt 5.0pt;">475.46</td>
</tr>
<tr class="ltx_tr" id="S3.T2.7.16">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T2.7.16.1" style="padding:0.5pt 5.0pt;">DS-R1-8B</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.7.16.2" style="padding:0.5pt 5.0pt;">8B</td>
<td class="ltx_td ltx_align_center" id="S3.T2.7.16.3" style="padding:0.5pt 5.0pt;">97.44</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.7.16.4" style="padding:0.5pt 5.0pt;">97.16</td>
<td class="ltx_td ltx_align_center" id="S3.T2.7.16.5" style="padding:0.5pt 5.0pt;">97.39</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.7.16.6" style="padding:0.5pt 5.0pt;">97.16</td>
<td class="ltx_td ltx_align_center" id="S3.T2.7.16.7" style="padding:0.5pt 5.0pt;">99.76</td>
<td class="ltx_td ltx_align_center" id="S3.T2.7.16.8" style="padding:0.5pt 5.0pt;">99.53</td>
<td class="ltx_td ltx_align_center" id="S3.T2.7.16.9" style="padding:0.5pt 5.0pt;">452.11</td>
</tr>
<tr class="ltx_tr" id="S3.T2.7.17">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T2.7.17.1" style="padding:0.5pt 5.0pt;">DS-R1-7B</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.7.17.2" style="padding:0.5pt 5.0pt;">7B</td>
<td class="ltx_td ltx_align_center" id="S3.T2.7.17.3" style="padding:0.5pt 5.0pt;">95.21</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.7.17.4" style="padding:0.5pt 5.0pt;">85.78</td>
<td class="ltx_td ltx_align_center" id="S3.T2.7.17.5" style="padding:0.5pt 5.0pt;">95.21</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.7.17.6" style="padding:0.5pt 5.0pt;">85.78</td>
<td class="ltx_td ltx_align_center" id="S3.T2.7.17.7" style="padding:0.5pt 5.0pt;">99.24</td>
<td class="ltx_td ltx_align_center" id="S3.T2.7.17.8" style="padding:0.5pt 5.0pt;">99.24</td>
<td class="ltx_td ltx_align_center" id="S3.T2.7.17.9" style="padding:0.5pt 5.0pt;">454.55</td>
</tr>
<tr class="ltx_tr" id="S3.T2.7.18">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T2.7.18.1" style="padding:0.5pt 5.0pt;">DS-R1-1.5B</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.7.18.2" style="padding:0.5pt 5.0pt;">1.5B</td>
<td class="ltx_td ltx_align_center" id="S3.T2.7.18.3" style="padding:0.5pt 5.0pt;"><span class="ltx_text" id="S3.T2.7.18.3.1" style="color:#A80032;">81.47</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.7.18.4" style="padding:0.5pt 5.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.7.18.4.1" style="color:#A80032;">54.50</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.7.18.5" style="padding:0.5pt 5.0pt;">81.47</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.7.18.6" style="padding:0.5pt 5.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.7.18.6.1" style="color:#A80032;">54.50</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.7.18.7" style="padding:0.5pt 5.0pt;">97.58</td>
<td class="ltx_td ltx_align_center" id="S3.T2.7.18.8" style="padding:0.5pt 5.0pt;">97.58</td>
<td class="ltx_td ltx_align_center" id="S3.T2.7.18.9" style="padding:0.5pt 5.0pt;">489.54</td>
</tr>
<tr class="ltx_tr" id="S3.T2.7.19">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T2.7.19.1" style="padding:0.5pt 5.0pt;">Nemotron-49B</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.7.19.2" style="padding:0.5pt 5.0pt;">49B</td>
<td class="ltx_td ltx_align_center" id="S3.T2.7.19.3" style="padding:0.5pt 5.0pt;">99.15</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.7.19.4" style="padding:0.5pt 5.0pt;">97.39</td>
<td class="ltx_td ltx_align_center" id="S3.T2.7.19.5" style="padding:0.5pt 5.0pt;">99.15</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.7.19.6" style="padding:0.5pt 5.0pt;">97.39</td>
<td class="ltx_td ltx_align_center" id="S3.T2.7.19.7" style="padding:0.5pt 5.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.7.19.7.1" style="color:#008080;">100.00</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.7.19.8" style="padding:0.5pt 5.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.7.19.8.1" style="color:#008080;">100.00</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.7.19.9" style="padding:0.5pt 5.0pt;"><span class="ltx_text" id="S3.T2.7.19.9.1" style="color:#008080;">362.54</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.7.20">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T2.7.20.1" style="padding:0.5pt 5.0pt;">Nemotron-8B</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.7.20.2" style="padding:0.5pt 5.0pt;">8B</td>
<td class="ltx_td ltx_align_center" id="S3.T2.7.20.3" style="padding:0.5pt 5.0pt;">86.16</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.7.20.4" style="padding:0.5pt 5.0pt;">69.91</td>
<td class="ltx_td ltx_align_center" id="S3.T2.7.20.5" style="padding:0.5pt 5.0pt;"><span class="ltx_text" id="S3.T2.7.20.5.1" style="color:#A80032;">79.81</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.7.20.6" style="padding:0.5pt 5.0pt;">59.00</td>
<td class="ltx_td ltx_align_center" id="S3.T2.7.20.7" style="padding:0.5pt 5.0pt;">99.43</td>
<td class="ltx_td ltx_align_center" id="S3.T2.7.20.8" style="padding:0.5pt 5.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.7.20.8.1" style="color:#A80032;">84.31</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.7.20.9" style="padding:0.5pt 5.0pt;">372.57</td>
</tr>
<tr class="ltx_tr" id="S3.T2.7.21">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T2.7.21.1" style="padding:0.5pt 5.0pt;">L-R1-32B</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.7.21.2" style="padding:0.5pt 5.0pt;">32B</td>
<td class="ltx_td ltx_align_center" id="S3.T2.7.21.3" style="padding:0.5pt 5.0pt;">97.87</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.7.21.4" style="padding:0.5pt 5.0pt;">91.00</td>
<td class="ltx_td ltx_align_center" id="S3.T2.7.21.5" style="padding:0.5pt 5.0pt;">94.74</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.7.21.6" style="padding:0.5pt 5.0pt;">79.62</td>
<td class="ltx_td ltx_align_center" id="S3.T2.7.21.7" style="padding:0.5pt 5.0pt;">98.91</td>
<td class="ltx_td ltx_align_center" id="S3.T2.7.21.8" style="padding:0.5pt 5.0pt;">95.07</td>
<td class="ltx_td ltx_align_center" id="S3.T2.7.21.9" style="padding:0.5pt 5.0pt;"><span class="ltx_text" id="S3.T2.7.21.9.1" style="color:#A80032;">1095.36</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.7.22">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T2.7.22.1" style="padding:0.5pt 5.0pt;">L-R1-32B-DS</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.7.22.2" style="padding:0.5pt 5.0pt;">32B</td>
<td class="ltx_td ltx_align_center" id="S3.T2.7.22.3" style="padding:0.5pt 5.0pt;">99.57</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.7.22.4" style="padding:0.5pt 5.0pt;">98.10</td>
<td class="ltx_td ltx_align_center" id="S3.T2.7.22.5" style="padding:0.5pt 5.0pt;">99.57</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.7.22.6" style="padding:0.5pt 5.0pt;">98.10</td>
<td class="ltx_td ltx_align_center" id="S3.T2.7.22.7" style="padding:0.5pt 5.0pt;"><span class="ltx_text" id="S3.T2.7.22.7.1" style="color:#008080;">99.81</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.7.22.8" style="padding:0.5pt 5.0pt;">99.81</td>
<td class="ltx_td ltx_align_center" id="S3.T2.7.22.9" style="padding:0.5pt 5.0pt;">524.12</td>
</tr>
<tr class="ltx_tr" id="S3.T2.7.23">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T2.7.23.1" style="padding:0.5pt 5.0pt;">L-R1-14B-DS</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.7.23.2" style="padding:0.5pt 5.0pt;">14B</td>
<td class="ltx_td ltx_align_center" id="S3.T2.7.23.3" style="padding:0.5pt 5.0pt;">99.05</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.7.23.4" style="padding:0.5pt 5.0pt;">95.97</td>
<td class="ltx_td ltx_align_center" id="S3.T2.7.23.5" style="padding:0.5pt 5.0pt;">99.05</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.7.23.6" style="padding:0.5pt 5.0pt;">95.97</td>
<td class="ltx_td ltx_align_center" id="S3.T2.7.23.7" style="padding:0.5pt 5.0pt;">99.19</td>
<td class="ltx_td ltx_align_center" id="S3.T2.7.23.8" style="padding:0.5pt 5.0pt;">99.19</td>
<td class="ltx_td ltx_align_center" id="S3.T2.7.23.9" style="padding:0.5pt 5.0pt;">693.19</td>
</tr>
<tr class="ltx_tr" id="S3.T2.7.24">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T2.7.24.1" style="padding:0.5pt 5.0pt;">L-R1-7B-DS</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.7.24.2" style="padding:0.5pt 5.0pt;">7B</td>
<td class="ltx_td ltx_align_center" id="S3.T2.7.24.3" style="padding:0.5pt 5.0pt;">94.64</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.7.24.4" style="padding:0.5pt 5.0pt;">83.65</td>
<td class="ltx_td ltx_align_center" id="S3.T2.7.24.5" style="padding:0.5pt 5.0pt;">94.64</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.7.24.6" style="padding:0.5pt 5.0pt;">83.65</td>
<td class="ltx_td ltx_align_center" id="S3.T2.7.24.7" style="padding:0.5pt 5.0pt;">99.76</td>
<td class="ltx_td ltx_align_center" id="S3.T2.7.24.8" style="padding:0.5pt 5.0pt;">99.67</td>
<td class="ltx_td ltx_align_center" id="S3.T2.7.24.9" style="padding:0.5pt 5.0pt;">496.47</td>
</tr>
<tr class="ltx_tr" id="S3.T2.7.25">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T2.7.25.1" style="padding:0.5pt 5.0pt;">s1.1-32B</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.7.25.2" style="padding:0.5pt 5.0pt;">32B</td>
<td class="ltx_td ltx_align_center" id="S3.T2.7.25.3" style="padding:0.5pt 5.0pt;">99.53</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.7.25.4" style="padding:0.5pt 5.0pt;">98.34</td>
<td class="ltx_td ltx_align_center" id="S3.T2.7.25.5" style="padding:0.5pt 5.0pt;">99.48</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.7.25.6" style="padding:0.5pt 5.0pt;">98.10</td>
<td class="ltx_td ltx_align_center" id="S3.T2.7.25.7" style="padding:0.5pt 5.0pt;">99.57</td>
<td class="ltx_td ltx_align_center" id="S3.T2.7.25.8" style="padding:0.5pt 5.0pt;">99.53</td>
<td class="ltx_td ltx_align_center" id="S3.T2.7.25.9" style="padding:0.5pt 5.0pt;">998.00</td>
</tr>
<tr class="ltx_tr" id="S3.T2.7.26">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T2.7.26.1" style="padding:0.5pt 5.0pt;">s1.1-14B</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.7.26.2" style="padding:0.5pt 5.0pt;">14B</td>
<td class="ltx_td ltx_align_center" id="S3.T2.7.26.3" style="padding:0.5pt 5.0pt;">97.63</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.7.26.4" style="padding:0.5pt 5.0pt;">93.60</td>
<td class="ltx_td ltx_align_center" id="S3.T2.7.26.5" style="padding:0.5pt 5.0pt;">97.25</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.7.26.6" style="padding:0.5pt 5.0pt;">91.94</td>
<td class="ltx_td ltx_align_center" id="S3.T2.7.26.7" style="padding:0.5pt 5.0pt;">97.77</td>
<td class="ltx_td ltx_align_center" id="S3.T2.7.26.8" style="padding:0.5pt 5.0pt;">97.39</td>
<td class="ltx_td ltx_align_center" id="S3.T2.7.26.9" style="padding:0.5pt 5.0pt;">839.86</td>
</tr>
<tr class="ltx_tr" id="S3.T2.7.27">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T2.7.27.1" style="padding:0.5pt 5.0pt;">s1.1-7B</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.7.27.2" style="padding:0.5pt 5.0pt;">7B</td>
<td class="ltx_td ltx_align_center" id="S3.T2.7.27.3" style="padding:0.5pt 5.0pt;">96.68</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.7.27.4" style="padding:0.5pt 5.0pt;">88.39</td>
<td class="ltx_td ltx_align_center" id="S3.T2.7.27.5" style="padding:0.5pt 5.0pt;">88.58</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.7.27.6" style="padding:0.5pt 5.0pt;">63.98</td>
<td class="ltx_td ltx_align_center" id="S3.T2.7.27.7" style="padding:0.5pt 5.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.7.27.7.1" style="color:#A80032;">97.11</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.7.27.8" style="padding:0.5pt 5.0pt;"><span class="ltx_text" id="S3.T2.7.27.8.1" style="color:#A80032;">88.96</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.7.27.9" style="padding:0.5pt 5.0pt;">711.49</td>
</tr>
<tr class="ltx_tr" id="S3.T2.7.28">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T2.7.28.1" style="padding:0.5pt 5.0pt;">EXAONE-32B</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.7.28.2" style="padding:0.5pt 5.0pt;">32B</td>
<td class="ltx_td ltx_align_center" id="S3.T2.7.28.3" style="padding:0.5pt 5.0pt;">97.06</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.7.28.4" style="padding:0.5pt 5.0pt;">94.08</td>
<td class="ltx_td ltx_align_center" id="S3.T2.7.28.5" style="padding:0.5pt 5.0pt;">97.06</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.7.28.6" style="padding:0.5pt 5.0pt;">94.08</td>
<td class="ltx_td ltx_align_center" id="S3.T2.7.28.7" style="padding:0.5pt 5.0pt;"><span class="ltx_text" id="S3.T2.7.28.7.1" style="color:#008080;">99.81</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.7.28.8" style="padding:0.5pt 5.0pt;">99.81</td>
<td class="ltx_td ltx_align_center" id="S3.T2.7.28.9" style="padding:0.5pt 5.0pt;">800.56</td>
</tr>
<tr class="ltx_tr" id="S3.T2.7.29">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T2.7.29.1" style="padding:0.5pt 5.0pt;">EXAONE-7.8B</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.7.29.2" style="padding:0.5pt 5.0pt;">7.8B</td>
<td class="ltx_td ltx_align_center" id="S3.T2.7.29.3" style="padding:0.5pt 5.0pt;">88.15</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.7.29.4" style="padding:0.5pt 5.0pt;">75.12</td>
<td class="ltx_td ltx_align_center" id="S3.T2.7.29.5" style="padding:0.5pt 5.0pt;">87.82</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.7.29.6" style="padding:0.5pt 5.0pt;">74.41</td>
<td class="ltx_td ltx_align_center" id="S3.T2.7.29.7" style="padding:0.5pt 5.0pt;">98.72</td>
<td class="ltx_td ltx_align_center" id="S3.T2.7.29.8" style="padding:0.5pt 5.0pt;">98.06</td>
<td class="ltx_td ltx_align_center" id="S3.T2.7.29.9" style="padding:0.5pt 5.0pt;">1046.87</td>
</tr>
<tr class="ltx_tr" id="S3.T2.7.30">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_r" id="S3.T2.7.30.1" style="padding:0.5pt 5.0pt;">EXAONE-2.4B</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S3.T2.7.30.2" style="padding:0.5pt 5.0pt;">2.4B</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.7.30.3" style="padding:0.5pt 5.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.7.30.3.1" style="color:#A80032;">72.42</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S3.T2.7.30.4" style="padding:0.5pt 5.0pt;"><span class="ltx_text" id="S3.T2.7.30.4.1" style="color:#A80032;">56.16</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.7.30.5" style="padding:0.5pt 5.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.7.30.5.1" style="color:#A80032;">72.32</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S3.T2.7.30.6" style="padding:0.5pt 5.0pt;"><span class="ltx_text" id="S3.T2.7.30.6.1" style="color:#A80032;">56.16</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.7.30.7" style="padding:0.5pt 5.0pt;"><span class="ltx_text" id="S3.T2.7.30.7.1" style="color:#A80032;">97.44</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.7.30.8" style="padding:0.5pt 5.0pt;">97.25</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.7.30.9" style="padding:0.5pt 5.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.7.30.9.1" style="color:#A80032;">1593.96</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the performance of 22 Large Reasoning Models (LRMs) on the S1-Bench benchmark, categorized by model family.  The metrics evaluated are accuracy (pass@1 and acc@k), strict and loose format correctness rates (S-Corr and L-Corr), and average response tokens (ART).  The color-coding helps quickly identify the top and bottom performers for each metric.  Bold teal indicates the best performance within a family, teal the second best, bold burgundy the worst, and burgundy the second worst.
> <details>
> <summary>read the caption</summary>
> Table 2: Main results in the top-p sampling setting on the S1-Bench, sorted by model family. Bold teal marks best performance, teal second best, bold burgundy worst, and burgundy second worst.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S4.T3.13">
<tr class="ltx_tr" id="S4.T3.2.2">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_tt" id="S4.T3.2.2.3" rowspan="2" style="padding:1pt 3.5pt;"><span class="ltx_text" id="S4.T3.2.2.3.1" style="position:relative; bottom:-0.2pt;">Model ID</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S4.T3.2.2.4" rowspan="2" style="padding:1pt 3.5pt;"><span class="ltx_text" id="S4.T3.2.2.4.1" style="position:relative; bottom:-0.2pt;">Size</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" colspan="5" id="S4.T3.1.1.1" style="padding:1pt 3.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.1.1.1.1">S1-Bench-<math alttext="\mathtt{EN}" class="ltx_Math" display="inline" id="S4.T3.1.1.1.1.m1.1"><semantics id="S4.T3.1.1.1.1.m1.1a"><mi id="S4.T3.1.1.1.1.m1.1.1" xref="S4.T3.1.1.1.1.m1.1.1.cmml">𝙴𝙽</mi><annotation-xml encoding="MathML-Content" id="S4.T3.1.1.1.1.m1.1b"><ci id="S4.T3.1.1.1.1.m1.1.1.cmml" xref="S4.T3.1.1.1.1.m1.1.1">𝙴𝙽</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.1.1.1.1.m1.1c">\mathtt{EN}</annotation><annotation encoding="application/x-llamapun" id="S4.T3.1.1.1.1.m1.1d">typewriter_EN</annotation></semantics></math></span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" colspan="5" id="S4.T3.2.2.2" style="padding:1pt 3.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.2.2.2.1">S1-Bench-<math alttext="\mathtt{ZH}" class="ltx_Math" display="inline" id="S4.T3.2.2.2.1.m1.1"><semantics id="S4.T3.2.2.2.1.m1.1a"><mi id="S4.T3.2.2.2.1.m1.1.1" xref="S4.T3.2.2.2.1.m1.1.1.cmml">𝚉𝙷</mi><annotation-xml encoding="MathML-Content" id="S4.T3.2.2.2.1.m1.1b"><ci id="S4.T3.2.2.2.1.m1.1.1.cmml" xref="S4.T3.2.2.2.1.m1.1.1">𝚉𝙷</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.2.2.2.1.m1.1c">\mathtt{ZH}</annotation><annotation encoding="application/x-llamapun" id="S4.T3.2.2.2.1.m1.1d">typewriter_ZH</annotation></semantics></math></span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T3.2.2.5" rowspan="2" style="padding:1pt 3.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.2.2.5.1" style="position:relative; bottom:-0.2pt;">Avg</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.13.14">
<td class="ltx_td ltx_align_center" id="S4.T3.13.14.1" style="padding:1pt 3.5pt;"><span class="ltx_text ltx_font_smallcaps" id="S4.T3.13.14.1.1">Rsn</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.13.14.2" style="padding:1pt 3.5pt;"><span class="ltx_text ltx_font_smallcaps" id="S4.T3.13.14.2.1">Kno</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.13.14.3" style="padding:1pt 3.5pt;"><span class="ltx_text ltx_font_smallcaps" id="S4.T3.13.14.3.1">If</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.13.14.4" style="padding:1pt 3.5pt;"><span class="ltx_text ltx_font_smallcaps" id="S4.T3.13.14.4.1">Ana</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.13.14.5" style="padding:1pt 3.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.13.14.5.1">Avg</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.13.14.6" style="padding:1pt 3.5pt;"><span class="ltx_text ltx_font_smallcaps" id="S4.T3.13.14.6.1">Rsn</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.13.14.7" style="padding:1pt 3.5pt;"><span class="ltx_text ltx_font_smallcaps" id="S4.T3.13.14.7.1">Kno</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.13.14.8" style="padding:1pt 3.5pt;"><span class="ltx_text ltx_font_smallcaps" id="S4.T3.13.14.8.1">If</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.13.14.9" style="padding:1pt 3.5pt;"><span class="ltx_text ltx_font_smallcaps" id="S4.T3.13.14.9.1">Ana</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.13.14.10" style="padding:1pt 3.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.13.14.10.1">Avg</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.13.15">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S4.T3.13.15.1" style="padding:1pt 3.5pt;">Gemma2-9B</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T3.13.15.2" style="padding:1pt 3.5pt;">9B</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.13.15.3" style="padding:1pt 3.5pt;">74.8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.13.15.4" style="padding:1pt 3.5pt;">29.4</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.13.15.5" style="padding:1pt 3.5pt;">5.3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.13.15.6" style="padding:1pt 3.5pt;">52.4</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T3.13.15.7" style="padding:1pt 3.5pt;">45.9</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.13.15.8" style="padding:1pt 3.5pt;">51.6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.13.15.9" style="padding:1pt 3.5pt;">19.8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.13.15.10" style="padding:1pt 3.5pt;">7.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.13.15.11" style="padding:1pt 3.5pt;">35.1</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T3.13.15.12" style="padding:1pt 3.5pt;">31.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.13.15.13" style="padding:1pt 3.5pt;">38.8</td>
</tr>
<tr class="ltx_tr" id="S4.T3.13.16">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T3.13.16.1" style="padding:1pt 3.5pt;">Llama3.1-8B</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.13.16.2" style="padding:1pt 3.5pt;">8B</td>
<td class="ltx_td ltx_align_center" id="S4.T3.13.16.3" style="padding:1pt 3.5pt;">91.0</td>
<td class="ltx_td ltx_align_center" id="S4.T3.13.16.4" style="padding:1pt 3.5pt;">35.4</td>
<td class="ltx_td ltx_align_center" id="S4.T3.13.16.5" style="padding:1pt 3.5pt;">12.4</td>
<td class="ltx_td ltx_align_center" id="S4.T3.13.16.6" style="padding:1pt 3.5pt;">61.9</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.13.16.7" style="padding:1pt 3.5pt;">56.0</td>
<td class="ltx_td ltx_align_center" id="S4.T3.13.16.8" style="padding:1pt 3.5pt;">44.0</td>
<td class="ltx_td ltx_align_center" id="S4.T3.13.16.9" style="padding:1pt 3.5pt;">28.3</td>
<td class="ltx_td ltx_align_center" id="S4.T3.13.16.10" style="padding:1pt 3.5pt;">15.2</td>
<td class="ltx_td ltx_align_center" id="S4.T3.13.16.11" style="padding:1pt 3.5pt;">18.7</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.13.16.12" style="padding:1pt 3.5pt;">26.7</td>
<td class="ltx_td ltx_align_center" id="S4.T3.13.16.13" style="padding:1pt 3.5pt;">42.0</td>
</tr>
<tr class="ltx_tr" id="S4.T3.13.17">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T3.13.17.1" style="padding:1pt 3.5pt;">Qwen2.5-7B</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.13.17.2" style="padding:1pt 3.5pt;">7B</td>
<td class="ltx_td ltx_align_center" id="S4.T3.13.17.3" style="padding:1pt 3.5pt;">65.5</td>
<td class="ltx_td ltx_align_center" id="S4.T3.13.17.4" style="padding:1pt 3.5pt;">46.3</td>
<td class="ltx_td ltx_align_center" id="S4.T3.13.17.5" style="padding:1pt 3.5pt;">6.4</td>
<td class="ltx_td ltx_align_center" id="S4.T3.13.17.6" style="padding:1pt 3.5pt;">49.6</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.13.17.7" style="padding:1pt 3.5pt;">46.5</td>
<td class="ltx_td ltx_align_center" id="S4.T3.13.17.8" style="padding:1pt 3.5pt;">50.5</td>
<td class="ltx_td ltx_align_center" id="S4.T3.13.17.9" style="padding:1pt 3.5pt;">46.6</td>
<td class="ltx_td ltx_align_center" id="S4.T3.13.17.10" style="padding:1pt 3.5pt;">9.8</td>
<td class="ltx_td ltx_align_center" id="S4.T3.13.17.11" style="padding:1pt 3.5pt;">36.9</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.13.17.12" style="padding:1pt 3.5pt;">38.8</td>
<td class="ltx_td ltx_align_center" id="S4.T3.13.17.13" style="padding:1pt 3.5pt;">42.8</td>
</tr>
<tr class="ltx_tr" id="S4.T3.13.18">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T3.13.18.1" style="padding:1pt 3.5pt;">Mistral-8B</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.13.18.2" style="padding:1pt 3.5pt;">8B</td>
<td class="ltx_td ltx_align_center" id="S4.T3.13.18.3" style="padding:1pt 3.5pt;">67.2</td>
<td class="ltx_td ltx_align_center" id="S4.T3.13.18.4" style="padding:1pt 3.5pt;">55.5</td>
<td class="ltx_td ltx_align_center" id="S4.T3.13.18.5" style="padding:1pt 3.5pt;">8.6</td>
<td class="ltx_td ltx_align_center" id="S4.T3.13.18.6" style="padding:1pt 3.5pt;">50.1</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.13.18.7" style="padding:1pt 3.5pt;">49.6</td>
<td class="ltx_td ltx_align_center" id="S4.T3.13.18.8" style="padding:1pt 3.5pt;">47.3</td>
<td class="ltx_td ltx_align_center" id="S4.T3.13.18.9" style="padding:1pt 3.5pt;">56.1</td>
<td class="ltx_td ltx_align_center" id="S4.T3.13.18.10" style="padding:1pt 3.5pt;">14.8</td>
<td class="ltx_td ltx_align_center" id="S4.T3.13.18.11" style="padding:1pt 3.5pt;">29.7</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.13.18.12" style="padding:1pt 3.5pt;">38.7</td>
<td class="ltx_td ltx_align_center" id="S4.T3.13.18.13" style="padding:1pt 3.5pt;">44.4</td>
</tr>
<tr class="ltx_tr" id="S4.T3.13.19">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S4.T3.13.19.1" style="padding:1pt 3.5pt;">Column Avg</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T3.13.19.2" style="padding:1pt 3.5pt;">-</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.13.19.3" style="padding:1pt 3.5pt;">74.6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.13.19.4" style="padding:1pt 3.5pt;">41.6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.13.19.5" style="padding:1pt 3.5pt;">8.2</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.13.19.6" style="padding:1pt 3.5pt;">53.5</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T3.13.19.7" style="padding:1pt 3.5pt;">49.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.13.19.8" style="padding:1pt 3.5pt;">48.3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.13.19.9" style="padding:1pt 3.5pt;">37.7</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.13.19.10" style="padding:1pt 3.5pt;">11.8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.13.19.11" style="padding:1pt 3.5pt;">30.1</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T3.13.19.12" style="padding:1pt 3.5pt;">33.8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.13.19.13" style="padding:1pt 3.5pt;">42.0</td>
</tr>
<tr class="ltx_tr" id="S4.T3.13.20">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S4.T3.13.20.1" style="padding:1pt 3.5pt;">Sky-T1-32B</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T3.13.20.2" style="padding:1pt 3.5pt;">32B</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.13.20.3" style="padding:1pt 3.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.13.20.3.1" style="color:#008080;">215.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.13.20.4" style="padding:1pt 3.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.13.20.4.1" style="color:#008080;">174.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.13.20.5" style="padding:1pt 3.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.13.20.5.1" style="color:#008080;">98.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.13.20.6" style="padding:1pt 3.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.13.20.6.1" style="color:#008080;">233.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T3.13.20.7" style="padding:1pt 3.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.13.20.7.1" style="color:#008080;">194.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.13.20.8" style="padding:1pt 3.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.13.20.8.1" style="color:#008080;">125.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.13.20.9" style="padding:1pt 3.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.13.20.9.1" style="color:#008080;">125.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.13.20.10" style="padding:1pt 3.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.13.20.10.1" style="color:#008080;">99.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.13.20.11" style="padding:1pt 3.5pt;">145.5</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T3.13.20.12" style="padding:1pt 3.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.13.20.12.1" style="color:#008080;">128.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.13.20.13" style="padding:1pt 3.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.13.20.13.1" style="color:#008080;">163.0</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.13.21">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T3.13.21.1" style="padding:1pt 3.5pt;">Nemotron-49B</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.13.21.2" style="padding:1pt 3.5pt;">49B</td>
<td class="ltx_td ltx_align_center" id="S4.T3.13.21.3" style="padding:1pt 3.5pt;">599.7</td>
<td class="ltx_td ltx_align_center" id="S4.T3.13.21.4" style="padding:1pt 3.5pt;">587.6</td>
<td class="ltx_td ltx_align_center" id="S4.T3.13.21.5" style="padding:1pt 3.5pt;">396.5</td>
<td class="ltx_td ltx_align_center" id="S4.T3.13.21.6" style="padding:1pt 3.5pt;">526.1</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.13.21.7" style="padding:1pt 3.5pt;">540.4</td>
<td class="ltx_td ltx_align_center" id="S4.T3.13.21.8" style="padding:1pt 3.5pt;"><span class="ltx_text" id="S4.T3.13.21.8.1" style="color:#008080;">232.9</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.13.21.9" style="padding:1pt 3.5pt;"><span class="ltx_text" id="S4.T3.13.21.9.1" style="color:#008080;">157.3</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.13.21.10" style="padding:1pt 3.5pt;"><span class="ltx_text" id="S4.T3.13.21.10.1" style="color:#008080;">235.5</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.13.21.11" style="padding:1pt 3.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.13.21.11.1" style="color:#008080;">107.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.13.21.12" style="padding:1pt 3.5pt;"><span class="ltx_text" id="S4.T3.13.21.12.1" style="color:#008080;">168.8</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.13.21.13" style="padding:1pt 3.5pt;"><span class="ltx_text" id="S4.T3.13.21.13.1" style="color:#008080;">362.5</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.13.22">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T3.13.22.1" style="padding:1pt 3.5pt;">Nemotron-8B</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.13.22.2" style="padding:1pt 3.5pt;">8B</td>
<td class="ltx_td ltx_align_center" id="S4.T3.13.22.3" style="padding:1pt 3.5pt;">561.0</td>
<td class="ltx_td ltx_align_center" id="S4.T3.13.22.4" style="padding:1pt 3.5pt;">585.1</td>
<td class="ltx_td ltx_align_center" id="S4.T3.13.22.5" style="padding:1pt 3.5pt;">458.0</td>
<td class="ltx_td ltx_align_center" id="S4.T3.13.22.6" style="padding:1pt 3.5pt;"><span class="ltx_text" id="S4.T3.13.22.6.1" style="color:#008080;">303.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.13.22.7" style="padding:1pt 3.5pt;"><span class="ltx_text" id="S4.T3.13.22.7.1" style="color:#008080;">462.6</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.13.22.8" style="padding:1pt 3.5pt;">369.5</td>
<td class="ltx_td ltx_align_center" id="S4.T3.13.22.9" style="padding:1pt 3.5pt;">326.0</td>
<td class="ltx_td ltx_align_center" id="S4.T3.13.22.10" style="padding:1pt 3.5pt;">288.1</td>
<td class="ltx_td ltx_align_center" id="S4.T3.13.22.11" style="padding:1pt 3.5pt;">166.7</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.13.22.12" style="padding:1pt 3.5pt;">273.5</td>
<td class="ltx_td ltx_align_center" id="S4.T3.13.22.13" style="padding:1pt 3.5pt;">372.6</td>
</tr>
<tr class="ltx_tr" id="S4.T3.13.23">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T3.13.23.1" style="padding:1pt 3.5pt;">DS-R1-32B</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.13.23.2" style="padding:1pt 3.5pt;">32B</td>
<td class="ltx_td ltx_align_center" id="S4.T3.13.23.3" style="padding:1pt 3.5pt;"><span class="ltx_text" id="S4.T3.13.23.3.1" style="color:#008080;">421.8</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.13.23.4" style="padding:1pt 3.5pt;">504.4</td>
<td class="ltx_td ltx_align_center" id="S4.T3.13.23.5" style="padding:1pt 3.5pt;">414.7</td>
<td class="ltx_td ltx_align_center" id="S4.T3.13.23.6" style="padding:1pt 3.5pt;">521.1</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.13.23.7" style="padding:1pt 3.5pt;">473.7</td>
<td class="ltx_td ltx_align_center" id="S4.T3.13.23.8" style="padding:1pt 3.5pt;">362.2</td>
<td class="ltx_td ltx_align_center" id="S4.T3.13.23.9" style="padding:1pt 3.5pt;">385.6</td>
<td class="ltx_td ltx_align_center" id="S4.T3.13.23.10" style="padding:1pt 3.5pt;">343.1</td>
<td class="ltx_td ltx_align_center" id="S4.T3.13.23.11" style="padding:1pt 3.5pt;">408.8</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.13.23.12" style="padding:1pt 3.5pt;">382.2</td>
<td class="ltx_td ltx_align_center" id="S4.T3.13.23.13" style="padding:1pt 3.5pt;">429.9</td>
</tr>
<tr class="ltx_tr" id="S4.T3.13.24">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T3.13.24.1" style="padding:1pt 3.5pt;">DS-R1-8B</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.13.24.2" style="padding:1pt 3.5pt;">8B</td>
<td class="ltx_td ltx_align_center" id="S4.T3.13.24.3" style="padding:1pt 3.5pt;">472.2</td>
<td class="ltx_td ltx_align_center" id="S4.T3.13.24.4" style="padding:1pt 3.5pt;">528.9</td>
<td class="ltx_td ltx_align_center" id="S4.T3.13.24.5" style="padding:1pt 3.5pt;">530.7</td>
<td class="ltx_td ltx_align_center" id="S4.T3.13.24.6" style="padding:1pt 3.5pt;">462.7</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.13.24.7" style="padding:1pt 3.5pt;">491.2</td>
<td class="ltx_td ltx_align_center" id="S4.T3.13.24.8" style="padding:1pt 3.5pt;">521.9</td>
<td class="ltx_td ltx_align_center" id="S4.T3.13.24.9" style="padding:1pt 3.5pt;">404.4</td>
<td class="ltx_td ltx_align_center" id="S4.T3.13.24.10" style="padding:1pt 3.5pt;">266.2</td>
<td class="ltx_td ltx_align_center" id="S4.T3.13.24.11" style="padding:1pt 3.5pt;">395.5</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.13.24.12" style="padding:1pt 3.5pt;">409.4</td>
<td class="ltx_td ltx_align_center" id="S4.T3.13.24.13" style="padding:1pt 3.5pt;">452.1</td>
</tr>
<tr class="ltx_tr" id="S4.T3.13.25">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T3.13.25.1" style="padding:1pt 3.5pt;">DS-R1-70B</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.13.25.2" style="padding:1pt 3.5pt;">70B</td>
<td class="ltx_td ltx_align_center" id="S4.T3.13.25.3" style="padding:1pt 3.5pt;">464.1</td>
<td class="ltx_td ltx_align_center" id="S4.T3.13.25.4" style="padding:1pt 3.5pt;"><span class="ltx_text" id="S4.T3.13.25.4.1" style="color:#008080;">501.3</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.13.25.5" style="padding:1pt 3.5pt;">378.5</td>
<td class="ltx_td ltx_align_center" id="S4.T3.13.25.6" style="padding:1pt 3.5pt;">536.1</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.13.25.7" style="padding:1pt 3.5pt;">484.0</td>
<td class="ltx_td ltx_align_center" id="S4.T3.13.25.8" style="padding:1pt 3.5pt;">450.8</td>
<td class="ltx_td ltx_align_center" id="S4.T3.13.25.9" style="padding:1pt 3.5pt;">450.2</td>
<td class="ltx_td ltx_align_center" id="S4.T3.13.25.10" style="padding:1pt 3.5pt;">328.4</td>
<td class="ltx_td ltx_align_center" id="S4.T3.13.25.11" style="padding:1pt 3.5pt;">416.7</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.13.25.12" style="padding:1pt 3.5pt;">420.9</td>
<td class="ltx_td ltx_align_center" id="S4.T3.13.25.13" style="padding:1pt 3.5pt;">453.8</td>
</tr>
<tr class="ltx_tr" id="S4.T3.13.26">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T3.13.26.1" style="padding:1pt 3.5pt;">DS-R1-7B</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.13.26.2" style="padding:1pt 3.5pt;">7B</td>
<td class="ltx_td ltx_align_center" id="S4.T3.13.26.3" style="padding:1pt 3.5pt;">447.5</td>
<td class="ltx_td ltx_align_center" id="S4.T3.13.26.4" style="padding:1pt 3.5pt;">623.9</td>
<td class="ltx_td ltx_align_center" id="S4.T3.13.26.5" style="padding:1pt 3.5pt;"><span class="ltx_text" id="S4.T3.13.26.5.1" style="color:#008080;">353.8</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.13.26.6" style="padding:1pt 3.5pt;">510.0</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.13.26.7" style="padding:1pt 3.5pt;">495.5</td>
<td class="ltx_td ltx_align_center" id="S4.T3.13.26.8" style="padding:1pt 3.5pt;">446.5</td>
<td class="ltx_td ltx_align_center" id="S4.T3.13.26.9" style="padding:1pt 3.5pt;">463.2</td>
<td class="ltx_td ltx_align_center" id="S4.T3.13.26.10" style="padding:1pt 3.5pt;">339.5</td>
<td class="ltx_td ltx_align_center" id="S4.T3.13.26.11" style="padding:1pt 3.5pt;">373.0</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.13.26.12" style="padding:1pt 3.5pt;">409.4</td>
<td class="ltx_td ltx_align_center" id="S4.T3.13.26.13" style="padding:1pt 3.5pt;">454.5</td>
</tr>
<tr class="ltx_tr" id="S4.T3.13.27">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T3.13.27.1" style="padding:1pt 3.5pt;">DS-R1-14B</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.13.27.2" style="padding:1pt 3.5pt;">14B</td>
<td class="ltx_td ltx_align_center" id="S4.T3.13.27.3" style="padding:1pt 3.5pt;">503.7</td>
<td class="ltx_td ltx_align_center" id="S4.T3.13.27.4" style="padding:1pt 3.5pt;">674.7</td>
<td class="ltx_td ltx_align_center" id="S4.T3.13.27.5" style="padding:1pt 3.5pt;">367.3</td>
<td class="ltx_td ltx_align_center" id="S4.T3.13.27.6" style="padding:1pt 3.5pt;">494.2</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.13.27.7" style="padding:1pt 3.5pt;">519.0</td>
<td class="ltx_td ltx_align_center" id="S4.T3.13.27.8" style="padding:1pt 3.5pt;">452.0</td>
<td class="ltx_td ltx_align_center" id="S4.T3.13.27.9" style="padding:1pt 3.5pt;">465.4</td>
<td class="ltx_td ltx_align_center" id="S4.T3.13.27.10" style="padding:1pt 3.5pt;">375.3</td>
<td class="ltx_td ltx_align_center" id="S4.T3.13.27.11" style="padding:1pt 3.5pt;">405.8</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.13.27.12" style="padding:1pt 3.5pt;">428.0</td>
<td class="ltx_td ltx_align_center" id="S4.T3.13.27.13" style="padding:1pt 3.5pt;">475.5</td>
</tr>
<tr class="ltx_tr" id="S4.T3.13.28">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T3.13.28.1" style="padding:1pt 3.5pt;">DS-R1-1.5B</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.13.28.2" style="padding:1pt 3.5pt;">1.5B</td>
<td class="ltx_td ltx_align_center" id="S4.T3.13.28.3" style="padding:1pt 3.5pt;">480.8</td>
<td class="ltx_td ltx_align_center" id="S4.T3.13.28.4" style="padding:1pt 3.5pt;">584.7</td>
<td class="ltx_td ltx_align_center" id="S4.T3.13.28.5" style="padding:1pt 3.5pt;">417.4</td>
<td class="ltx_td ltx_align_center" id="S4.T3.13.28.6" style="padding:1pt 3.5pt;">577.2</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.13.28.7" style="padding:1pt 3.5pt;">529.1</td>
<td class="ltx_td ltx_align_center" id="S4.T3.13.28.8" style="padding:1pt 3.5pt;">493.0</td>
<td class="ltx_td ltx_align_center" id="S4.T3.13.28.9" style="padding:1pt 3.5pt;">497.4</td>
<td class="ltx_td ltx_align_center" id="S4.T3.13.28.10" style="padding:1pt 3.5pt;">329.8</td>
<td class="ltx_td ltx_align_center" id="S4.T3.13.28.11" style="padding:1pt 3.5pt;">423.1</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.13.28.12" style="padding:1pt 3.5pt;">446.0</td>
<td class="ltx_td ltx_align_center" id="S4.T3.13.28.13" style="padding:1pt 3.5pt;">489.5</td>
</tr>
<tr class="ltx_tr" id="S4.T3.13.29">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T3.13.29.1" style="padding:1pt 3.5pt;">L-R1-7B-DS</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.13.29.2" style="padding:1pt 3.5pt;">7B</td>
<td class="ltx_td ltx_align_center" id="S4.T3.13.29.3" style="padding:1pt 3.5pt;">568.1</td>
<td class="ltx_td ltx_align_center" id="S4.T3.13.29.4" style="padding:1pt 3.5pt;">667.1</td>
<td class="ltx_td ltx_align_center" id="S4.T3.13.29.5" style="padding:1pt 3.5pt;">501.7</td>
<td class="ltx_td ltx_align_center" id="S4.T3.13.29.6" style="padding:1pt 3.5pt;">566.3</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.13.29.7" style="padding:1pt 3.5pt;">580.3</td>
<td class="ltx_td ltx_align_center" id="S4.T3.13.29.8" style="padding:1pt 3.5pt;">444.8</td>
<td class="ltx_td ltx_align_center" id="S4.T3.13.29.9" style="padding:1pt 3.5pt;">454.6</td>
<td class="ltx_td ltx_align_center" id="S4.T3.13.29.10" style="padding:1pt 3.5pt;">344.1</td>
<td class="ltx_td ltx_align_center" id="S4.T3.13.29.11" style="padding:1pt 3.5pt;">366.4</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.13.29.12" style="padding:1pt 3.5pt;">405.0</td>
<td class="ltx_td ltx_align_center" id="S4.T3.13.29.13" style="padding:1pt 3.5pt;">496.5</td>
</tr>
<tr class="ltx_tr" id="S4.T3.13.30">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T3.13.30.1" style="padding:1pt 3.5pt;">L-R1-32B-DS</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.13.30.2" style="padding:1pt 3.5pt;">32B</td>
<td class="ltx_td ltx_align_center" id="S4.T3.13.30.3" style="padding:1pt 3.5pt;">574.5</td>
<td class="ltx_td ltx_align_center" id="S4.T3.13.30.4" style="padding:1pt 3.5pt;">706.6</td>
<td class="ltx_td ltx_align_center" id="S4.T3.13.30.5" style="padding:1pt 3.5pt;">647.6</td>
<td class="ltx_td ltx_align_center" id="S4.T3.13.30.6" style="padding:1pt 3.5pt;">632.8</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.13.30.7" style="padding:1pt 3.5pt;">636.3</td>
<td class="ltx_td ltx_align_center" id="S4.T3.13.30.8" style="padding:1pt 3.5pt;">431.2</td>
<td class="ltx_td ltx_align_center" id="S4.T3.13.30.9" style="padding:1pt 3.5pt;">367.0</td>
<td class="ltx_td ltx_align_center" id="S4.T3.13.30.10" style="padding:1pt 3.5pt;">377.1</td>
<td class="ltx_td ltx_align_center" id="S4.T3.13.30.11" style="padding:1pt 3.5pt;">418.7</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.13.30.12" style="padding:1pt 3.5pt;">402.2</td>
<td class="ltx_td ltx_align_center" id="S4.T3.13.30.13" style="padding:1pt 3.5pt;">524.1</td>
</tr>
<tr class="ltx_tr" id="S4.T3.13.31">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T3.13.31.1" style="padding:1pt 3.5pt;">Hunyuan-T1</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.13.31.2" style="padding:1pt 3.5pt;">–</td>
<td class="ltx_td ltx_align_center" id="S4.T3.13.31.3" style="padding:1pt 3.5pt;">561.6</td>
<td class="ltx_td ltx_align_center" id="S4.T3.13.31.4" style="padding:1pt 3.5pt;">693.8</td>
<td class="ltx_td ltx_align_center" id="S4.T3.13.31.5" style="padding:1pt 3.5pt;">380.9</td>
<td class="ltx_td ltx_align_center" id="S4.T3.13.31.6" style="padding:1pt 3.5pt;">435.0</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.13.31.7" style="padding:1pt 3.5pt;">521.2</td>
<td class="ltx_td ltx_align_center" id="S4.T3.13.31.8" style="padding:1pt 3.5pt;">676.8</td>
<td class="ltx_td ltx_align_center" id="S4.T3.13.31.9" style="padding:1pt 3.5pt;">553.8</td>
<td class="ltx_td ltx_align_center" id="S4.T3.13.31.10" style="padding:1pt 3.5pt;">505.1</td>
<td class="ltx_td ltx_align_center" id="S4.T3.13.31.11" style="padding:1pt 3.5pt;">523.8</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.13.31.12" style="padding:1pt 3.5pt;">565.3</td>
<td class="ltx_td ltx_align_center" id="S4.T3.13.31.13" style="padding:1pt 3.5pt;">542.3</td>
</tr>
<tr class="ltx_tr" id="S4.T3.13.32">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T3.13.32.1" style="padding:1pt 3.5pt;">DS-R1</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.13.32.2" style="padding:1pt 3.5pt;">671B</td>
<td class="ltx_td ltx_align_center" id="S4.T3.13.32.3" style="padding:1pt 3.5pt;">786.1</td>
<td class="ltx_td ltx_align_center" id="S4.T3.13.32.4" style="padding:1pt 3.5pt;">723.8</td>
<td class="ltx_td ltx_align_center" id="S4.T3.13.32.5" style="padding:1pt 3.5pt;">711.4</td>
<td class="ltx_td ltx_align_center" id="S4.T3.13.32.6" style="padding:1pt 3.5pt;">529.2</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.13.32.7" style="padding:1pt 3.5pt;">672.5</td>
<td class="ltx_td ltx_align_center" id="S4.T3.13.32.8" style="padding:1pt 3.5pt;">727.3</td>
<td class="ltx_td ltx_align_center" id="S4.T3.13.32.9" style="padding:1pt 3.5pt;">638.5</td>
<td class="ltx_td ltx_align_center" id="S4.T3.13.32.10" style="padding:1pt 3.5pt;">607.9</td>
<td class="ltx_td ltx_align_center" id="S4.T3.13.32.11" style="padding:1pt 3.5pt;">533.9</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.13.32.12" style="padding:1pt 3.5pt;">617.9</td>
<td class="ltx_td ltx_align_center" id="S4.T3.13.32.13" style="padding:1pt 3.5pt;">646.4</td>
</tr>
<tr class="ltx_tr" id="S4.T3.13.33">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T3.13.33.1" style="padding:1pt 3.5pt;">L-R1-14B-DS</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.13.33.2" style="padding:1pt 3.5pt;">14B</td>
<td class="ltx_td ltx_align_center" id="S4.T3.13.33.3" style="padding:1pt 3.5pt;">951.0</td>
<td class="ltx_td ltx_align_center" id="S4.T3.13.33.4" style="padding:1pt 3.5pt;">1026.0</td>
<td class="ltx_td ltx_align_center" id="S4.T3.13.33.5" style="padding:1pt 3.5pt;">829.8</td>
<td class="ltx_td ltx_align_center" id="S4.T3.13.33.6" style="padding:1pt 3.5pt;">653.5</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.13.33.7" style="padding:1pt 3.5pt;">848.2</td>
<td class="ltx_td ltx_align_center" id="S4.T3.13.33.8" style="padding:1pt 3.5pt;">594.7</td>
<td class="ltx_td ltx_align_center" id="S4.T3.13.33.9" style="padding:1pt 3.5pt;">610.1</td>
<td class="ltx_td ltx_align_center" id="S4.T3.13.33.10" style="padding:1pt 3.5pt;">442.2</td>
<td class="ltx_td ltx_align_center" id="S4.T3.13.33.11" style="padding:1pt 3.5pt;">451.7</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.13.33.12" style="padding:1pt 3.5pt;">525.7</td>
<td class="ltx_td ltx_align_center" id="S4.T3.13.33.13" style="padding:1pt 3.5pt;">693.2</td>
</tr>
<tr class="ltx_tr" id="S4.T3.13.34">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T3.13.34.1" style="padding:1pt 3.5pt;">s1.1-7B</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.13.34.2" style="padding:1pt 3.5pt;">7B</td>
<td class="ltx_td ltx_align_center" id="S4.T3.13.34.3" style="padding:1pt 3.5pt;">1039.5</td>
<td class="ltx_td ltx_align_center" id="S4.T3.13.34.4" style="padding:1pt 3.5pt;">840.8</td>
<td class="ltx_td ltx_align_center" id="S4.T3.13.34.5" style="padding:1pt 3.5pt;">1923.2</td>
<td class="ltx_td ltx_align_center" id="S4.T3.13.34.6" style="padding:1pt 3.5pt;">529.4</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.13.34.7" style="padding:1pt 3.5pt;">929.9</td>
<td class="ltx_td ltx_align_center" id="S4.T3.13.34.8" style="padding:1pt 3.5pt;">489.6</td>
<td class="ltx_td ltx_align_center" id="S4.T3.13.34.9" style="padding:1pt 3.5pt;">351.3</td>
<td class="ltx_td ltx_align_center" id="S4.T3.13.34.10" style="padding:1pt 3.5pt;">1034.3</td>
<td class="ltx_td ltx_align_center" id="S4.T3.13.34.11" style="padding:1pt 3.5pt;">332.4</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.13.34.12" style="padding:1pt 3.5pt;">475.6</td>
<td class="ltx_td ltx_align_center" id="S4.T3.13.34.13" style="padding:1pt 3.5pt;">711.5</td>
</tr>
<tr class="ltx_tr" id="S4.T3.13.35">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T3.13.35.1" style="padding:1pt 3.5pt;">QwQ-32B</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.13.35.2" style="padding:1pt 3.5pt;">32B</td>
<td class="ltx_td ltx_align_center" id="S4.T3.13.35.3" style="padding:1pt 3.5pt;">873.3</td>
<td class="ltx_td ltx_align_center" id="S4.T3.13.35.4" style="padding:1pt 3.5pt;">808.1</td>
<td class="ltx_td ltx_align_center" id="S4.T3.13.35.5" style="padding:1pt 3.5pt;">520.8</td>
<td class="ltx_td ltx_align_center" id="S4.T3.13.35.6" style="padding:1pt 3.5pt;">634.7</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.13.35.7" style="padding:1pt 3.5pt;">722.4</td>
<td class="ltx_td ltx_align_center" id="S4.T3.13.35.8" style="padding:1pt 3.5pt;">866.9</td>
<td class="ltx_td ltx_align_center" id="S4.T3.13.35.9" style="padding:1pt 3.5pt;">707.3</td>
<td class="ltx_td ltx_align_center" id="S4.T3.13.35.10" style="padding:1pt 3.5pt;">613.3</td>
<td class="ltx_td ltx_align_center" id="S4.T3.13.35.11" style="padding:1pt 3.5pt;"><span class="ltx_text" id="S4.T3.13.35.11.1" style="color:#A80032;">667.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.13.35.12" style="padding:1pt 3.5pt;">717.6</td>
<td class="ltx_td ltx_align_center" id="S4.T3.13.35.13" style="padding:1pt 3.5pt;">720.1</td>
</tr>
<tr class="ltx_tr" id="S4.T3.13.36">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T3.13.36.1" style="padding:1pt 3.5pt;">EXAONE-32B</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.13.36.2" style="padding:1pt 3.5pt;">32B</td>
<td class="ltx_td ltx_align_center" id="S4.T3.13.36.3" style="padding:1pt 3.5pt;">1323.7</td>
<td class="ltx_td ltx_align_center" id="S4.T3.13.36.4" style="padding:1pt 3.5pt;">1057.6</td>
<td class="ltx_td ltx_align_center" id="S4.T3.13.36.5" style="padding:1pt 3.5pt;">1537.0</td>
<td class="ltx_td ltx_align_center" id="S4.T3.13.36.6" style="padding:1pt 3.5pt;">711.6</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.13.36.7" style="padding:1pt 3.5pt;">1086.4</td>
<td class="ltx_td ltx_align_center" id="S4.T3.13.36.8" style="padding:1pt 3.5pt;">703.2</td>
<td class="ltx_td ltx_align_center" id="S4.T3.13.36.9" style="padding:1pt 3.5pt;">348.6</td>
<td class="ltx_td ltx_align_center" id="S4.T3.13.36.10" style="padding:1pt 3.5pt;">1302.9</td>
<td class="ltx_td ltx_align_center" id="S4.T3.13.36.11" style="padding:1pt 3.5pt;"><span class="ltx_text" id="S4.T3.13.36.11.1" style="color:#008080;">125.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.13.36.12" style="padding:1pt 3.5pt;">490.3</td>
<td class="ltx_td ltx_align_center" id="S4.T3.13.36.13" style="padding:1pt 3.5pt;">800.6</td>
</tr>
<tr class="ltx_tr" id="S4.T3.13.37">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T3.13.37.1" style="padding:1pt 3.5pt;">s1.1-14B</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.13.37.2" style="padding:1pt 3.5pt;">14B</td>
<td class="ltx_td ltx_align_center" id="S4.T3.13.37.3" style="padding:1pt 3.5pt;">871.8</td>
<td class="ltx_td ltx_align_center" id="S4.T3.13.37.4" style="padding:1pt 3.5pt;">746.2</td>
<td class="ltx_td ltx_align_center" id="S4.T3.13.37.5" style="padding:1pt 3.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.13.37.5.1" style="color:#A80032;">2233.1</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.13.37.6" style="padding:1pt 3.5pt;">708.1</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.13.37.7" style="padding:1pt 3.5pt;">960.2</td>
<td class="ltx_td ltx_align_center" id="S4.T3.13.37.8" style="padding:1pt 3.5pt;">654.6</td>
<td class="ltx_td ltx_align_center" id="S4.T3.13.37.9" style="padding:1pt 3.5pt;">546.0</td>
<td class="ltx_td ltx_align_center" id="S4.T3.13.37.10" style="padding:1pt 3.5pt;">1512.6</td>
<td class="ltx_td ltx_align_center" id="S4.T3.13.37.11" style="padding:1pt 3.5pt;">579.7</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.13.37.12" style="padding:1pt 3.5pt;">710.7</td>
<td class="ltx_td ltx_align_center" id="S4.T3.13.37.13" style="padding:1pt 3.5pt;">839.9</td>
</tr>
<tr class="ltx_tr" id="S4.T3.13.38">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T3.13.38.1" style="padding:1pt 3.5pt;">s1.1-32B</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.13.38.2" style="padding:1pt 3.5pt;">32B</td>
<td class="ltx_td ltx_align_center" id="S4.T3.13.38.3" style="padding:1pt 3.5pt;">1077.9</td>
<td class="ltx_td ltx_align_center" id="S4.T3.13.38.4" style="padding:1pt 3.5pt;">889.7</td>
<td class="ltx_td ltx_align_center" id="S4.T3.13.38.5" style="padding:1pt 3.5pt;"><span class="ltx_text" id="S4.T3.13.38.5.1" style="color:#A80032;">2055.4</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.13.38.6" style="padding:1pt 3.5pt;">781.7</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.13.38.7" style="padding:1pt 3.5pt;">1081.7</td>
<td class="ltx_td ltx_align_center" id="S4.T3.13.38.8" style="padding:1pt 3.5pt;">995.6</td>
<td class="ltx_td ltx_align_center" id="S4.T3.13.38.9" style="padding:1pt 3.5pt;"><span class="ltx_text" id="S4.T3.13.38.9.1" style="color:#A80032;">765.2</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.13.38.10" style="padding:1pt 3.5pt;"><span class="ltx_text" id="S4.T3.13.38.10.1" style="color:#A80032;">1634.6</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.13.38.11" style="padding:1pt 3.5pt;">666.5</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.13.38.12" style="padding:1pt 3.5pt;"><span class="ltx_text" id="S4.T3.13.38.12.1" style="color:#A80032;">906.5</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.13.38.13" style="padding:1pt 3.5pt;">998.0</td>
</tr>
<tr class="ltx_tr" id="S4.T3.13.39">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T3.13.39.1" style="padding:1pt 3.5pt;">EXAONE-7.8B</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.13.39.2" style="padding:1pt 3.5pt;">7.8B</td>
<td class="ltx_td ltx_align_center" id="S4.T3.13.39.3" style="padding:1pt 3.5pt;">1498.3</td>
<td class="ltx_td ltx_align_center" id="S4.T3.13.39.4" style="padding:1pt 3.5pt;"><span class="ltx_text" id="S4.T3.13.39.4.1" style="color:#A80032;">1398.9</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.13.39.5" style="padding:1pt 3.5pt;">1775.7</td>
<td class="ltx_td ltx_align_center" id="S4.T3.13.39.6" style="padding:1pt 3.5pt;"><span class="ltx_text" id="S4.T3.13.39.6.1" style="color:#A80032;">882.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.13.39.7" style="padding:1pt 3.5pt;">1303.8</td>
<td class="ltx_td ltx_align_center" id="S4.T3.13.39.8" style="padding:1pt 3.5pt;"><span class="ltx_text" id="S4.T3.13.39.8.1" style="color:#A80032;">1410.3</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.13.39.9" style="padding:1pt 3.5pt;">497.8</td>
<td class="ltx_td ltx_align_center" id="S4.T3.13.39.10" style="padding:1pt 3.5pt;">1633.1</td>
<td class="ltx_td ltx_align_center" id="S4.T3.13.39.11" style="padding:1pt 3.5pt;">205.0</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.13.39.12" style="padding:1pt 3.5pt;">767.0</td>
<td class="ltx_td ltx_align_center" id="S4.T3.13.39.13" style="padding:1pt 3.5pt;">1046.9</td>
</tr>
<tr class="ltx_tr" id="S4.T3.13.40">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T3.13.40.1" style="padding:1pt 3.5pt;">L-R1-32B</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.13.40.2" style="padding:1pt 3.5pt;">32B</td>
<td class="ltx_td ltx_align_center" id="S4.T3.13.40.3" style="padding:1pt 3.5pt;"><span class="ltx_text" id="S4.T3.13.40.3.1" style="color:#A80032;">1614.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.13.40.4" style="padding:1pt 3.5pt;">1217.3</td>
<td class="ltx_td ltx_align_center" id="S4.T3.13.40.5" style="padding:1pt 3.5pt;">1996.9</td>
<td class="ltx_td ltx_align_center" id="S4.T3.13.40.6" style="padding:1pt 3.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.13.40.6.1" style="color:#A80032;">930.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.13.40.7" style="padding:1pt 3.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.13.40.7.1" style="color:#A80032;">1338.3</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.13.40.8" style="padding:1pt 3.5pt;">1035.6</td>
<td class="ltx_td ltx_align_center" id="S4.T3.13.40.9" style="padding:1pt 3.5pt;">737.7</td>
<td class="ltx_td ltx_align_center" id="S4.T3.13.40.10" style="padding:1pt 3.5pt;">1240.7</td>
<td class="ltx_td ltx_align_center" id="S4.T3.13.40.11" style="padding:1pt 3.5pt;">610.2</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.13.40.12" style="padding:1pt 3.5pt;">835.3</td>
<td class="ltx_td ltx_align_center" id="S4.T3.13.40.13" style="padding:1pt 3.5pt;"><span class="ltx_text" id="S4.T3.13.40.13.1" style="color:#A80032;">1095.4</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.13.41">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T3.13.41.1" style="padding:1pt 3.5pt;">EXAONE-2.4B</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.13.41.2" style="padding:1pt 3.5pt;">2.4B</td>
<td class="ltx_td ltx_align_center" id="S4.T3.13.41.3" style="padding:1pt 3.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.13.41.3.1" style="color:#A80032;">1927.3</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.13.41.4" style="padding:1pt 3.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.13.41.4.1" style="color:#A80032;">1426.2</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.13.41.5" style="padding:1pt 3.5pt;">1200.1</td>
<td class="ltx_td ltx_align_center" id="S4.T3.13.41.6" style="padding:1pt 3.5pt;">825.7</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.13.41.7" style="padding:1pt 3.5pt;"><span class="ltx_text" id="S4.T3.13.41.7.1" style="color:#A80032;">1320.7</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.13.41.8" style="padding:1pt 3.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.13.41.8.1" style="color:#A80032;">2469.7</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.13.41.9" style="padding:1pt 3.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.13.41.9.1" style="color:#A80032;">1622.6</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.13.41.10" style="padding:1pt 3.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.13.41.10.1" style="color:#A80032;">2471.6</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.13.41.11" style="padding:1pt 3.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.13.41.11.1" style="color:#A80032;">1511.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.13.41.12" style="padding:1pt 3.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.13.41.12.1" style="color:#A80032;">1898.7</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.13.41.13" style="padding:1pt 3.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.13.41.13.1" style="color:#A80032;">1594.0</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.13.42">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S4.T3.13.42.1" style="padding:1pt 3.5pt;">Column Avg</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T3.13.42.2" style="padding:1pt 3.5pt;">-</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.13.42.3" style="padding:1pt 3.5pt;">810.6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.13.42.4" style="padding:1pt 3.5pt;">771.2</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.13.42.5" style="padding:1pt 3.5pt;">896.8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.13.42.6" style="padding:1pt 3.5pt;">590.2</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T3.13.42.7" style="padding:1pt 3.5pt;">736.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.13.42.8" style="padding:1pt 3.5pt;">679.8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.13.42.9" style="padding:1pt 3.5pt;">521.6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.13.42.10" style="padding:1pt 3.5pt;">742.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.13.42.11" style="padding:1pt 3.5pt;">447.1</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T3.13.42.12" style="padding:1pt 3.5pt;">563.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.13.42.13" style="padding:1pt 3.5pt;">652.8</td>
</tr>
<tr class="ltx_tr" id="S4.T3.13.13">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_r" id="S4.T3.13.13.12" style="padding:1pt 3.5pt;">Improvement</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S4.T3.13.13.13" style="padding:1pt 3.5pt;">-</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.3.3.1" style="padding:1pt 3.5pt;">
<math alttext="\times" class="ltx_Math" display="inline" id="S4.T3.3.3.1.m1.1"><semantics id="S4.T3.3.3.1.m1.1a"><mo id="S4.T3.3.3.1.m1.1.1" xref="S4.T3.3.3.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T3.3.3.1.m1.1b"><times id="S4.T3.3.3.1.m1.1.1.cmml" xref="S4.T3.3.3.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.3.3.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T3.3.3.1.m1.1d">×</annotation></semantics></math>10.9</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.4.4.2" style="padding:1pt 3.5pt;">
<math alttext="\times" class="ltx_Math" display="inline" id="S4.T3.4.4.2.m1.1"><semantics id="S4.T3.4.4.2.m1.1a"><mo id="S4.T3.4.4.2.m1.1.1" xref="S4.T3.4.4.2.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T3.4.4.2.m1.1b"><times id="S4.T3.4.4.2.m1.1.1.cmml" xref="S4.T3.4.4.2.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.4.4.2.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T3.4.4.2.m1.1d">×</annotation></semantics></math>18.5</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.5.5.3" style="padding:1pt 3.5pt;">
<math alttext="\times" class="ltx_Math" display="inline" id="S4.T3.5.5.3.m1.1"><semantics id="S4.T3.5.5.3.m1.1a"><mo id="S4.T3.5.5.3.m1.1.1" xref="S4.T3.5.5.3.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T3.5.5.3.m1.1b"><times id="S4.T3.5.5.3.m1.1.1.cmml" xref="S4.T3.5.5.3.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.5.5.3.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T3.5.5.3.m1.1d">×</annotation></semantics></math><span class="ltx_text ltx_font_bold" id="S4.T3.5.5.3.1">109.7</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.6.6.4" style="padding:1pt 3.5pt;">
<math alttext="\times" class="ltx_Math" display="inline" id="S4.T3.6.6.4.m1.1"><semantics id="S4.T3.6.6.4.m1.1a"><mo id="S4.T3.6.6.4.m1.1.1" xref="S4.T3.6.6.4.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T3.6.6.4.m1.1b"><times id="S4.T3.6.6.4.m1.1.1.cmml" xref="S4.T3.6.6.4.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.6.6.4.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T3.6.6.4.m1.1d">×</annotation></semantics></math>11.0</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S4.T3.7.7.5" style="padding:1pt 3.5pt;">
<math alttext="\times" class="ltx_Math" display="inline" id="S4.T3.7.7.5.m1.1"><semantics id="S4.T3.7.7.5.m1.1a"><mo id="S4.T3.7.7.5.m1.1.1" xref="S4.T3.7.7.5.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T3.7.7.5.m1.1b"><times id="S4.T3.7.7.5.m1.1.1.cmml" xref="S4.T3.7.7.5.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.7.7.5.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T3.7.7.5.m1.1d">×</annotation></semantics></math>14.9</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.8.8.6" style="padding:1pt 3.5pt;">
<math alttext="\times" class="ltx_Math" display="inline" id="S4.T3.8.8.6.m1.1"><semantics id="S4.T3.8.8.6.m1.1a"><mo id="S4.T3.8.8.6.m1.1.1" xref="S4.T3.8.8.6.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T3.8.8.6.m1.1b"><times id="S4.T3.8.8.6.m1.1.1.cmml" xref="S4.T3.8.8.6.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.8.8.6.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T3.8.8.6.m1.1d">×</annotation></semantics></math>14.1</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.9.9.7" style="padding:1pt 3.5pt;">
<math alttext="\times" class="ltx_Math" display="inline" id="S4.T3.9.9.7.m1.1"><semantics id="S4.T3.9.9.7.m1.1a"><mo id="S4.T3.9.9.7.m1.1.1" xref="S4.T3.9.9.7.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T3.9.9.7.m1.1b"><times id="S4.T3.9.9.7.m1.1.1.cmml" xref="S4.T3.9.9.7.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.9.9.7.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T3.9.9.7.m1.1d">×</annotation></semantics></math>13.8</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.10.10.8" style="padding:1pt 3.5pt;">
<math alttext="\times" class="ltx_Math" display="inline" id="S4.T3.10.10.8.m1.1"><semantics id="S4.T3.10.10.8.m1.1a"><mo id="S4.T3.10.10.8.m1.1.1" xref="S4.T3.10.10.8.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T3.10.10.8.m1.1b"><times id="S4.T3.10.10.8.m1.1.1.cmml" xref="S4.T3.10.10.8.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.10.10.8.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T3.10.10.8.m1.1d">×</annotation></semantics></math><span class="ltx_text ltx_font_bold" id="S4.T3.10.10.8.1">62.7</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.11.11.9" style="padding:1pt 3.5pt;">
<math alttext="\times" class="ltx_Math" display="inline" id="S4.T3.11.11.9.m1.1"><semantics id="S4.T3.11.11.9.m1.1a"><mo id="S4.T3.11.11.9.m1.1.1" xref="S4.T3.11.11.9.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T3.11.11.9.m1.1b"><times id="S4.T3.11.11.9.m1.1.1.cmml" xref="S4.T3.11.11.9.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.11.11.9.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T3.11.11.9.m1.1d">×</annotation></semantics></math>14.8</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S4.T3.12.12.10" style="padding:1pt 3.5pt;">
<math alttext="\times" class="ltx_Math" display="inline" id="S4.T3.12.12.10.m1.1"><semantics id="S4.T3.12.12.10.m1.1a"><mo id="S4.T3.12.12.10.m1.1.1" xref="S4.T3.12.12.10.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T3.12.12.10.m1.1b"><times id="S4.T3.12.12.10.m1.1.1.cmml" xref="S4.T3.12.12.10.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.12.12.10.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T3.12.12.10.m1.1d">×</annotation></semantics></math>16.7</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.13.13.11" style="padding:1pt 3.5pt;">
<math alttext="\times" class="ltx_Math" display="inline" id="S4.T3.13.13.11.m1.1"><semantics id="S4.T3.13.13.11.m1.1a"><mo id="S4.T3.13.13.11.m1.1.1" xref="S4.T3.13.13.11.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T3.13.13.11.m1.1b"><times id="S4.T3.13.13.11.m1.1.1.cmml" xref="S4.T3.13.13.11.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.13.13.11.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T3.13.13.11.m1.1d">×</annotation></semantics></math>15.5</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 Table 3 presents the average response tokens (ART) for various large language models (LLMs) evaluated on the S1-Bench benchmark.  The benchmark includes questions in two languages (English and Chinese) and across four main categories. The table highlights the inefficiency of many LRMs in handling simple questions, showcasing significant differences in the length of responses between models.  The bold teal coloring indicates the best performance in each category for each language, while teal indicates second-best performance.  Conversely, bold burgundy shows the worst performance and burgundy shows second-worst performance.  The 'Bold' in the caption emphasizes that the highest improvement value in each language (between English and Chinese) is highlighted.
> <details>
> <summary>read the caption</summary>
> Table 3: 𝙰𝚁𝚃𝙰𝚁𝚃\mathtt{ART}typewriter_ART on the S1-bench across two languages and four main categories. Bold teal marks best performance, teal second best, bold burgundy worst, and burgundy second worst. Bold represents the maximum Improvement value for each language.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="A2.T4.1">
<tr class="ltx_tr" id="A2.T4.1.1">
<td class="ltx_td ltx_align_left ltx_border_tt" id="A2.T4.1.1.1">Model</td>
<td class="ltx_td ltx_align_left ltx_border_tt" id="A2.T4.1.1.2">Model ID</td>
<td class="ltx_td ltx_align_left ltx_border_tt" id="A2.T4.1.1.3">URL</td>
</tr>
<tr class="ltx_tr" id="A2.T4.1.2">
<td class="ltx_td ltx_align_left ltx_border_t" id="A2.T4.1.2.1">Qwen2.5-7B</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A2.T4.1.2.2">Qwen2.5-7B-Instruct</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A2.T4.1.2.3">https://huggingface.co/Qwen/Qwen2.5-7B-Instruct</td>
</tr>
<tr class="ltx_tr" id="A2.T4.1.3">
<td class="ltx_td ltx_align_left" id="A2.T4.1.3.1">Llama3.1-8B</td>
<td class="ltx_td ltx_align_left" id="A2.T4.1.3.2">Llama-3.1-8B-Instruct</td>
<td class="ltx_td ltx_align_left" id="A2.T4.1.3.3">https://huggingface.co/meta-llama/Llama-3.1-8B-Instruct</td>
</tr>
<tr class="ltx_tr" id="A2.T4.1.4">
<td class="ltx_td ltx_align_left" id="A2.T4.1.4.1">Mistral-8B</td>
<td class="ltx_td ltx_align_left" id="A2.T4.1.4.2">Ministral-8B-Instruct-2410</td>
<td class="ltx_td ltx_align_left" id="A2.T4.1.4.3">https://huggingface.co/mistralai/Ministral-8B-Instruct-2410</td>
</tr>
<tr class="ltx_tr" id="A2.T4.1.5">
<td class="ltx_td ltx_align_left" id="A2.T4.1.5.1">Gemma2-9B</td>
<td class="ltx_td ltx_align_left" id="A2.T4.1.5.2">gemma-2-9b-it</td>
<td class="ltx_td ltx_align_left" id="A2.T4.1.5.3">https://huggingface.co/google/gemma-2-9b-it</td>
</tr>
<tr class="ltx_tr" id="A2.T4.1.6">
<td class="ltx_td ltx_align_left ltx_border_t" id="A2.T4.1.6.1">Qwen2.5-14B</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A2.T4.1.6.2">Qwen2.5-14B-Instruct</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A2.T4.1.6.3">https://huggingface.co/Qwen/Qwen2.5-14B-Instruct</td>
</tr>
<tr class="ltx_tr" id="A2.T4.1.7">
<td class="ltx_td ltx_align_left" id="A2.T4.1.7.1">Qwen2.5-32B</td>
<td class="ltx_td ltx_align_left" id="A2.T4.1.7.2">Qwen2.5-32B-Instruct</td>
<td class="ltx_td ltx_align_left" id="A2.T4.1.7.3">https://huggingface.co/Qwen/Qwen2.5-32B-Instruct</td>
</tr>
<tr class="ltx_tr" id="A2.T4.1.8">
<td class="ltx_td ltx_align_left" id="A2.T4.1.8.1">Qwen2.5-72B</td>
<td class="ltx_td ltx_align_left" id="A2.T4.1.8.2">Qwen2.5-72B-Instruct</td>
<td class="ltx_td ltx_align_left" id="A2.T4.1.8.3">https://huggingface.co/Qwen/Qwen2.5-72B-Instruct</td>
</tr>
<tr class="ltx_tr" id="A2.T4.1.9">
<td class="ltx_td ltx_align_left" id="A2.T4.1.9.1">Llama3.3-70B</td>
<td class="ltx_td ltx_align_left" id="A2.T4.1.9.2">Llama-3.3-70B-Instruct</td>
<td class="ltx_td ltx_align_left" id="A2.T4.1.9.3">https://huggingface.co/meta-llama/Llama-3.3-70B-Instruct</td>
</tr>
<tr class="ltx_tr" id="A2.T4.1.10">
<td class="ltx_td ltx_align_left ltx_border_bb" id="A2.T4.1.10.1">DeepSeek-v3</td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="A2.T4.1.10.2">DeepSeek-V3-0324</td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="A2.T4.1.10.3">https://huggingface.co/deepseek-ai/DeepSeek-V3-0324</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table lists the abbreviations and IDs of the large language models (LLMs) used in the research paper, along with their corresponding open-source URLs.  It serves as a quick reference for readers to identify the specific models used in the experiments and access their information if needed.
> <details>
> <summary>read the caption</summary>
> Table 4: Mapping of LLM abbreviations and IDs used in this paper, with their open-source URLs.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="A2.T5.1">
<tr class="ltx_tr" id="A2.T5.1.1">
<td class="ltx_td ltx_align_left ltx_border_tt" id="A2.T5.1.1.1" style="padding-left:3.0pt;padding-right:3.0pt;">Model ID</td>
<td class="ltx_td ltx_align_left ltx_border_tt" id="A2.T5.1.1.2" style="padding-left:3.0pt;padding-right:3.0pt;">Abbreviation</td>
<td class="ltx_td ltx_align_left ltx_border_tt" id="A2.T5.1.1.3" style="padding-left:3.0pt;padding-right:3.0pt;">Base Model</td>
<td class="ltx_td ltx_align_left ltx_border_tt" id="A2.T5.1.1.4" style="padding-left:3.0pt;padding-right:3.0pt;">Alg.</td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_tt" id="A2.T5.1.1.5" style="padding-left:3.0pt;padding-right:3.0pt;">Size</td>
</tr>
<tr class="ltx_tr" id="A2.T5.1.2">
<td class="ltx_td ltx_align_left ltx_border_t" colspan="4" id="A2.T5.1.2.1" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_italic" id="A2.T5.1.2.1.1">DeepSeek</span></td>
<td class="ltx_td ltx_border_t" id="A2.T5.1.2.2" style="padding-left:3.0pt;padding-right:3.0pt;"></td>
</tr>
<tr class="ltx_tr" id="A2.T5.1.3">
<td class="ltx_td ltx_align_left ltx_border_t" id="A2.T5.1.3.1" style="padding-left:3.0pt;padding-right:3.0pt;"><a class="ltx_ref ltx_href" href="https://huggingface.co/deepseek-ai/DeepSeek-R1-Distill-Qwen-1.5B" title="">DeepSeek-R1-Distill-Qwen-1.5B</a></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A2.T5.1.3.2" style="padding-left:3.0pt;padding-right:3.0pt;">DS-R1-1.5B</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A2.T5.1.3.3" style="padding-left:3.0pt;padding-right:3.0pt;">Qwen2.5-Math-1.5B</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A2.T5.1.3.4" style="padding-left:3.0pt;padding-right:3.0pt;">SFT</td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_t" id="A2.T5.1.3.5" style="padding-left:3.0pt;padding-right:3.0pt;">800K</td>
</tr>
<tr class="ltx_tr" id="A2.T5.1.4">
<td class="ltx_td ltx_align_left" id="A2.T5.1.4.1" style="padding-left:3.0pt;padding-right:3.0pt;"><a class="ltx_ref ltx_href" href="https://huggingface.co/deepseek-ai/DeepSeek-R1-Distill-Qwen-7B" title="">DeepSeek-R1-Distill-Qwen-7B</a></td>
<td class="ltx_td ltx_align_left" id="A2.T5.1.4.2" style="padding-left:3.0pt;padding-right:3.0pt;">DS-R1-7B</td>
<td class="ltx_td ltx_align_left" id="A2.T5.1.4.3" style="padding-left:3.0pt;padding-right:3.0pt;">Qwen2.5-Math-7B</td>
<td class="ltx_td ltx_align_left" id="A2.T5.1.4.4" style="padding-left:3.0pt;padding-right:3.0pt;">SFT</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="A2.T5.1.4.5" style="padding-left:3.0pt;padding-right:3.0pt;">800K</td>
</tr>
<tr class="ltx_tr" id="A2.T5.1.5">
<td class="ltx_td ltx_align_left" id="A2.T5.1.5.1" style="padding-left:3.0pt;padding-right:3.0pt;"><a class="ltx_ref ltx_href" href="https://huggingface.co/deepseek-ai/DeepSeek-R1-Distill-Llama-8B" title="">DeepSeek-R1-Distill-Llama-8B</a></td>
<td class="ltx_td ltx_align_left" id="A2.T5.1.5.2" style="padding-left:3.0pt;padding-right:3.0pt;">DS-R1-8B</td>
<td class="ltx_td ltx_align_left" id="A2.T5.1.5.3" style="padding-left:3.0pt;padding-right:3.0pt;">Llama-3.1-8B</td>
<td class="ltx_td ltx_align_left" id="A2.T5.1.5.4" style="padding-left:3.0pt;padding-right:3.0pt;">SFT</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="A2.T5.1.5.5" style="padding-left:3.0pt;padding-right:3.0pt;">800K</td>
</tr>
<tr class="ltx_tr" id="A2.T5.1.6">
<td class="ltx_td ltx_align_left" id="A2.T5.1.6.1" style="padding-left:3.0pt;padding-right:3.0pt;"><a class="ltx_ref ltx_href" href="https://huggingface.co/deepseek-ai/DeepSeek-R1-Distill-Qwen-14B" title="">DeepSeek-R1-Distill-Qwen-14B</a></td>
<td class="ltx_td ltx_align_left" id="A2.T5.1.6.2" style="padding-left:3.0pt;padding-right:3.0pt;">DS-R1-14B</td>
<td class="ltx_td ltx_align_left" id="A2.T5.1.6.3" style="padding-left:3.0pt;padding-right:3.0pt;">Qwen2.5-14B</td>
<td class="ltx_td ltx_align_left" id="A2.T5.1.6.4" style="padding-left:3.0pt;padding-right:3.0pt;">SFT</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="A2.T5.1.6.5" style="padding-left:3.0pt;padding-right:3.0pt;">800K</td>
</tr>
<tr class="ltx_tr" id="A2.T5.1.7">
<td class="ltx_td ltx_align_left" id="A2.T5.1.7.1" style="padding-left:3.0pt;padding-right:3.0pt;"><a class="ltx_ref ltx_href" href="https://huggingface.co/deepseek-ai/DeepSeek-R1-Distill-Qwen-32B" title="">DeepSeek-R1-Distill-Qwen-32B</a></td>
<td class="ltx_td ltx_align_left" id="A2.T5.1.7.2" style="padding-left:3.0pt;padding-right:3.0pt;">DS-R1-32B</td>
<td class="ltx_td ltx_align_left" id="A2.T5.1.7.3" style="padding-left:3.0pt;padding-right:3.0pt;">Qwen2.5-32B</td>
<td class="ltx_td ltx_align_left" id="A2.T5.1.7.4" style="padding-left:3.0pt;padding-right:3.0pt;">SFT</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="A2.T5.1.7.5" style="padding-left:3.0pt;padding-right:3.0pt;">800K</td>
</tr>
<tr class="ltx_tr" id="A2.T5.1.8">
<td class="ltx_td ltx_align_left" id="A2.T5.1.8.1" style="padding-left:3.0pt;padding-right:3.0pt;"><a class="ltx_ref ltx_href" href="https://huggingface.co/deepseek-ai/DeepSeek-R1-Distill-Llama-70B" title="">DeepSeek-R1-Distill-Llama-70B</a></td>
<td class="ltx_td ltx_align_left" id="A2.T5.1.8.2" style="padding-left:3.0pt;padding-right:3.0pt;">DS-R1-70B</td>
<td class="ltx_td ltx_align_left" id="A2.T5.1.8.3" style="padding-left:3.0pt;padding-right:3.0pt;">Llama-3.3-70B-Instruct</td>
<td class="ltx_td ltx_align_left" id="A2.T5.1.8.4" style="padding-left:3.0pt;padding-right:3.0pt;">SFT</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="A2.T5.1.8.5" style="padding-left:3.0pt;padding-right:3.0pt;">800K</td>
</tr>
<tr class="ltx_tr" id="A2.T5.1.9">
<td class="ltx_td ltx_align_left" id="A2.T5.1.9.1" style="padding-left:3.0pt;padding-right:3.0pt;"><a class="ltx_ref ltx_href" href="https://huggingface.co/deepseek-ai/DeepSeek-R1" title="">DeepSeek-R1</a></td>
<td class="ltx_td ltx_align_left" id="A2.T5.1.9.2" style="padding-left:3.0pt;padding-right:3.0pt;">DS-R1</td>
<td class="ltx_td ltx_align_left" id="A2.T5.1.9.3" style="padding-left:3.0pt;padding-right:3.0pt;">DeepSeek-V3-0324</td>
<td class="ltx_td ltx_align_left" id="A2.T5.1.9.4" style="padding-left:3.0pt;padding-right:3.0pt;">SFT&amp;RL</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="A2.T5.1.9.5" style="padding-left:3.0pt;padding-right:3.0pt;">800K&amp;–</td>
</tr>
<tr class="ltx_tr" id="A2.T5.1.10">
<td class="ltx_td ltx_align_left ltx_border_t" colspan="4" id="A2.T5.1.10.1" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_italic" id="A2.T5.1.10.1.1">Qwen</span></td>
<td class="ltx_td ltx_border_t" id="A2.T5.1.10.2" style="padding-left:3.0pt;padding-right:3.0pt;"></td>
</tr>
<tr class="ltx_tr" id="A2.T5.1.11">
<td class="ltx_td ltx_align_left ltx_border_t" id="A2.T5.1.11.1" style="padding-left:3.0pt;padding-right:3.0pt;"><a class="ltx_ref ltx_href" href="https://huggingface.co/Qwen/QwQ-32B" title="">QwQ-32B</a></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A2.T5.1.11.2" style="padding-left:3.0pt;padding-right:3.0pt;">QwQ-32B</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A2.T5.1.11.3" style="padding-left:3.0pt;padding-right:3.0pt;">Qwen2.5-32B</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A2.T5.1.11.4" style="padding-left:3.0pt;padding-right:3.0pt;">–</td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_t" id="A2.T5.1.11.5" style="padding-left:3.0pt;padding-right:3.0pt;">–</td>
</tr>
<tr class="ltx_tr" id="A2.T5.1.12">
<td class="ltx_td ltx_align_left ltx_border_t" colspan="4" id="A2.T5.1.12.1" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_italic" id="A2.T5.1.12.1.1">qihoo360</span></td>
<td class="ltx_td ltx_border_t" id="A2.T5.1.12.2" style="padding-left:3.0pt;padding-right:3.0pt;"></td>
</tr>
<tr class="ltx_tr" id="A2.T5.1.13">
<td class="ltx_td ltx_align_left ltx_border_t" id="A2.T5.1.13.1" style="padding-left:3.0pt;padding-right:3.0pt;"><a class="ltx_ref ltx_href" href="https://huggingface.co/qihoo360/Light-R1-7B-DS" title="">Light-R1-7B-DS</a></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A2.T5.1.13.2" style="padding-left:3.0pt;padding-right:3.0pt;">L-R1-7B-DS</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A2.T5.1.13.3" style="padding-left:3.0pt;padding-right:3.0pt;">DeepSeek-R1-Distill-Qwen-7B</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A2.T5.1.13.4" style="padding-left:3.0pt;padding-right:3.0pt;">SFT</td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_t" id="A2.T5.1.13.5" style="padding-left:3.0pt;padding-right:3.0pt;">3K</td>
</tr>
<tr class="ltx_tr" id="A2.T5.1.14">
<td class="ltx_td ltx_align_left" id="A2.T5.1.14.1" style="padding-left:3.0pt;padding-right:3.0pt;"><a class="ltx_ref ltx_href" href="https://huggingface.co/qihoo360/Light-R1-14B-DS" title="">Light-R1-14B-DS</a></td>
<td class="ltx_td ltx_align_left" id="A2.T5.1.14.2" style="padding-left:3.0pt;padding-right:3.0pt;">L-R1-14B-DS</td>
<td class="ltx_td ltx_align_left" id="A2.T5.1.14.3" style="padding-left:3.0pt;padding-right:3.0pt;">DeepSeek-R1-Distill-Qwen-14B</td>
<td class="ltx_td ltx_align_left" id="A2.T5.1.14.4" style="padding-left:3.0pt;padding-right:3.0pt;">SFT&amp;RL</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="A2.T5.1.14.5" style="padding-left:3.0pt;padding-right:3.0pt;">3K&amp;–</td>
</tr>
<tr class="ltx_tr" id="A2.T5.1.15">
<td class="ltx_td ltx_align_left" id="A2.T5.1.15.1" style="padding-left:3.0pt;padding-right:3.0pt;"><a class="ltx_ref ltx_href" href="https://huggingface.co/qihoo360/Light-R1-32B-DS" title="">Light-R1-32B-DS</a></td>
<td class="ltx_td ltx_align_left" id="A2.T5.1.15.2" style="padding-left:3.0pt;padding-right:3.0pt;">L-R1-32B-DS</td>
<td class="ltx_td ltx_align_left" id="A2.T5.1.15.3" style="padding-left:3.0pt;padding-right:3.0pt;">DeepSeek-R1-Distill-Qwen-32B</td>
<td class="ltx_td ltx_align_left" id="A2.T5.1.15.4" style="padding-left:3.0pt;padding-right:3.0pt;">SFT</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="A2.T5.1.15.5" style="padding-left:3.0pt;padding-right:3.0pt;">3K</td>
</tr>
<tr class="ltx_tr" id="A2.T5.1.16">
<td class="ltx_td ltx_align_left" id="A2.T5.1.16.1" style="padding-left:3.0pt;padding-right:3.0pt;"><a class="ltx_ref ltx_href" href="https://huggingface.co/qihoo360/Light-R1-32B" title="">Light-R1-32B</a></td>
<td class="ltx_td ltx_align_left" id="A2.T5.1.16.2" style="padding-left:3.0pt;padding-right:3.0pt;">L-R1-32B</td>
<td class="ltx_td ltx_align_left" id="A2.T5.1.16.3" style="padding-left:3.0pt;padding-right:3.0pt;">Qwen2.5-32B-Instruct</td>
<td class="ltx_td ltx_align_left" id="A2.T5.1.16.4" style="padding-left:3.0pt;padding-right:3.0pt;">SFT&amp;DPO</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="A2.T5.1.16.5" style="padding-left:3.0pt;padding-right:3.0pt;">73K&amp;–</td>
</tr>
<tr class="ltx_tr" id="A2.T5.1.17">
<td class="ltx_td ltx_align_left ltx_border_t" colspan="4" id="A2.T5.1.17.1" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_italic" id="A2.T5.1.17.1.1">simplescaling</span></td>
<td class="ltx_td ltx_border_t" id="A2.T5.1.17.2" style="padding-left:3.0pt;padding-right:3.0pt;"></td>
</tr>
<tr class="ltx_tr" id="A2.T5.1.18">
<td class="ltx_td ltx_align_left ltx_border_t" id="A2.T5.1.18.1" style="padding-left:3.0pt;padding-right:3.0pt;"><a class="ltx_ref ltx_href" href="https://huggingface.co/simplescaling/s1.1-7B" title="">s1.1-7B</a></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A2.T5.1.18.2" style="padding-left:3.0pt;padding-right:3.0pt;">s1.1-7B</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A2.T5.1.18.3" style="padding-left:3.0pt;padding-right:3.0pt;">Qwen2.5-7B-Instruct</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A2.T5.1.18.4" style="padding-left:3.0pt;padding-right:3.0pt;">SFT</td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_t" id="A2.T5.1.18.5" style="padding-left:3.0pt;padding-right:3.0pt;">1K</td>
</tr>
<tr class="ltx_tr" id="A2.T5.1.19">
<td class="ltx_td ltx_align_left" id="A2.T5.1.19.1" style="padding-left:3.0pt;padding-right:3.0pt;"><a class="ltx_ref ltx_href" href="https://huggingface.co/simplescaling/s1.1-14B" title="">s1.1-14B</a></td>
<td class="ltx_td ltx_align_left" id="A2.T5.1.19.2" style="padding-left:3.0pt;padding-right:3.0pt;">s1.1-14B</td>
<td class="ltx_td ltx_align_left" id="A2.T5.1.19.3" style="padding-left:3.0pt;padding-right:3.0pt;">Qwen2.5-14B-Instruct</td>
<td class="ltx_td ltx_align_left" id="A2.T5.1.19.4" style="padding-left:3.0pt;padding-right:3.0pt;">SFT</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="A2.T5.1.19.5" style="padding-left:3.0pt;padding-right:3.0pt;">1K</td>
</tr>
<tr class="ltx_tr" id="A2.T5.1.20">
<td class="ltx_td ltx_align_left" id="A2.T5.1.20.1" style="padding-left:3.0pt;padding-right:3.0pt;"><a class="ltx_ref ltx_href" href="https://huggingface.co/simplescaling/s1.1-32B" title="">s1.1-32B</a></td>
<td class="ltx_td ltx_align_left" id="A2.T5.1.20.2" style="padding-left:3.0pt;padding-right:3.0pt;">s1.1-32B</td>
<td class="ltx_td ltx_align_left" id="A2.T5.1.20.3" style="padding-left:3.0pt;padding-right:3.0pt;">Qwen2.5-32B-Instruct</td>
<td class="ltx_td ltx_align_left" id="A2.T5.1.20.4" style="padding-left:3.0pt;padding-right:3.0pt;">SFT</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="A2.T5.1.20.5" style="padding-left:3.0pt;padding-right:3.0pt;">1K</td>
</tr>
<tr class="ltx_tr" id="A2.T5.1.21">
<td class="ltx_td ltx_align_left ltx_border_t" colspan="4" id="A2.T5.1.21.1" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_italic" id="A2.T5.1.21.1.1">LG AI Research</span></td>
<td class="ltx_td ltx_border_t" id="A2.T5.1.21.2" style="padding-left:3.0pt;padding-right:3.0pt;"></td>
</tr>
<tr class="ltx_tr" id="A2.T5.1.22">
<td class="ltx_td ltx_align_left ltx_border_t" id="A2.T5.1.22.1" style="padding-left:3.0pt;padding-right:3.0pt;"><a class="ltx_ref ltx_href" href="https://huggingface.co/LGAI-EXAONE/EXAONE-Deep-2.4B" title="">EXAONE-Deep-2.4B</a></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A2.T5.1.22.2" style="padding-left:3.0pt;padding-right:3.0pt;">EXAONE-2.4B</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A2.T5.1.22.3" style="padding-left:3.0pt;padding-right:3.0pt;">EXAONE-3.5-2.4B-Instruct</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A2.T5.1.22.4" style="padding-left:3.0pt;padding-right:3.0pt;">SFT&amp;DPO&amp;RL</td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_t" id="A2.T5.1.22.5" style="padding-left:3.0pt;padding-right:3.0pt;">1.6M&amp;20K&amp;10K</td>
</tr>
<tr class="ltx_tr" id="A2.T5.1.23">
<td class="ltx_td ltx_align_left" id="A2.T5.1.23.1" style="padding-left:3.0pt;padding-right:3.0pt;"><a class="ltx_ref ltx_href" href="https://huggingface.co/LGAI-EXAONE/EXAONE-Deep-7.8B" title="">EXAONE-Deep-7.8B</a></td>
<td class="ltx_td ltx_align_left" id="A2.T5.1.23.2" style="padding-left:3.0pt;padding-right:3.0pt;">EXAONE-7.8B</td>
<td class="ltx_td ltx_align_left" id="A2.T5.1.23.3" style="padding-left:3.0pt;padding-right:3.0pt;">EXAONE-3.5-7.8B-Instruct</td>
<td class="ltx_td ltx_align_left" id="A2.T5.1.23.4" style="padding-left:3.0pt;padding-right:3.0pt;">SFT&amp;DPO&amp;RL</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="A2.T5.1.23.5" style="padding-left:3.0pt;padding-right:3.0pt;">1.6M&amp;20K&amp;10K</td>
</tr>
<tr class="ltx_tr" id="A2.T5.1.24">
<td class="ltx_td ltx_align_left" id="A2.T5.1.24.1" style="padding-left:3.0pt;padding-right:3.0pt;"><a class="ltx_ref ltx_href" href="https://huggingface.co/LGAI-EXAONE/EXAONE-Deep-32B" title="">EXAONE-Deep-32B</a></td>
<td class="ltx_td ltx_align_left" id="A2.T5.1.24.2" style="padding-left:3.0pt;padding-right:3.0pt;">EXAONE-32B</td>
<td class="ltx_td ltx_align_left" id="A2.T5.1.24.3" style="padding-left:3.0pt;padding-right:3.0pt;">EXAONE-3.5-32B-Instruct</td>
<td class="ltx_td ltx_align_left" id="A2.T5.1.24.4" style="padding-left:3.0pt;padding-right:3.0pt;">SFT&amp;DPO&amp;RL</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="A2.T5.1.24.5" style="padding-left:3.0pt;padding-right:3.0pt;">1.6M&amp;20K&amp;10K</td>
</tr>
<tr class="ltx_tr" id="A2.T5.1.25">
<td class="ltx_td ltx_align_left ltx_border_t" colspan="4" id="A2.T5.1.25.1" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_italic" id="A2.T5.1.25.1.1">NVIDIA</span></td>
<td class="ltx_td ltx_border_t" id="A2.T5.1.25.2" style="padding-left:3.0pt;padding-right:3.0pt;"></td>
</tr>
<tr class="ltx_tr" id="A2.T5.1.26">
<td class="ltx_td ltx_align_left ltx_border_t" id="A2.T5.1.26.1" style="padding-left:3.0pt;padding-right:3.0pt;"><a class="ltx_ref ltx_href" href="https://huggingface.co/nvidia/Llama-3.1-Nemotron-Nano-8B-v1" title="">Llama-3.1-Nemotron-Nano-8B-v1</a></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A2.T5.1.26.2" style="padding-left:3.0pt;padding-right:3.0pt;">Nemotron-8B</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A2.T5.1.26.3" style="padding-left:3.0pt;padding-right:3.0pt;">Llama-3.1-8B-Instruct</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A2.T5.1.26.4" style="padding-left:3.0pt;padding-right:3.0pt;">SFT&amp;RL</td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_t" id="A2.T5.1.26.5" style="padding-left:3.0pt;padding-right:3.0pt;">–&amp;–</td>
</tr>
<tr class="ltx_tr" id="A2.T5.1.27">
<td class="ltx_td ltx_align_left" id="A2.T5.1.27.1" style="padding-left:3.0pt;padding-right:3.0pt;"><a class="ltx_ref ltx_href" href="https://huggingface.co/nvidia/Llama-3.3-Nemotron-Super-49B-v1" title="">Llama-3.3-Nemotron-Super-49B-v1</a></td>
<td class="ltx_td ltx_align_left" id="A2.T5.1.27.2" style="padding-left:3.0pt;padding-right:3.0pt;">Nemotron-49B</td>
<td class="ltx_td ltx_align_left" id="A2.T5.1.27.3" style="padding-left:3.0pt;padding-right:3.0pt;">Llama-3.3-70B-Instruct</td>
<td class="ltx_td ltx_align_left" id="A2.T5.1.27.4" style="padding-left:3.0pt;padding-right:3.0pt;">SFT&amp;RL</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="A2.T5.1.27.5" style="padding-left:3.0pt;padding-right:3.0pt;">–&amp;–</td>
</tr>
<tr class="ltx_tr" id="A2.T5.1.28">
<td class="ltx_td ltx_align_left ltx_border_t" colspan="4" id="A2.T5.1.28.1" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_italic" id="A2.T5.1.28.1.1">NovaSky</span></td>
<td class="ltx_td ltx_border_t" id="A2.T5.1.28.2" style="padding-left:3.0pt;padding-right:3.0pt;"></td>
</tr>
<tr class="ltx_tr" id="A2.T5.1.29">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_t" id="A2.T5.1.29.1" style="padding-left:3.0pt;padding-right:3.0pt;"><a class="ltx_ref ltx_href" href="https://huggingface.co/NovaSky-AI/Sky-T1-32B-Flash" title="">Sky-T1-32B-Flash</a></td>
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_t" id="A2.T5.1.29.2" style="padding-left:3.0pt;padding-right:3.0pt;">Sky-T1-32B</td>
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_t" id="A2.T5.1.29.3" style="padding-left:3.0pt;padding-right:3.0pt;">Qwen2.5-32B-Instruct</td>
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_t" id="A2.T5.1.29.4" style="padding-left:3.0pt;padding-right:3.0pt;">SFT&amp;SimPO</td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_bb ltx_border_t" id="A2.T5.1.29.5" style="padding-left:3.0pt;padding-right:3.0pt;">17K&amp;10K</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 Table 5 presents details of the open-source Large Reasoning Models (LRMs) evaluated in the S1-Bench benchmark.  For each model, it lists the abbreviation, model ID, base model used, fine-tuning algorithm (SFT, RL, DPO), model size in parameters, and the size of the training data used. This information is crucial to understand the models' backgrounds and potential differences in capabilities.
> <details>
> <summary>read the caption</summary>
> Table 5: The open-source LRMs details evaluated for S1-Bench.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="A3.T6.44">
<tr class="ltx_tr" id="A3.T6.44.45">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_tt" id="A3.T6.44.45.1" rowspan="2" style="padding:0.5pt 4.0pt;"><span class="ltx_text" id="A3.T6.44.45.1.1" style="position:relative; bottom:-0.2pt;">Format</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="A3.T6.44.45.2" rowspan="2" style="padding:0.5pt 4.0pt;"><span class="ltx_text" id="A3.T6.44.45.2.1" style="position:relative; bottom:-0.2pt;">ID</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_tt" id="A3.T6.44.45.3" style="padding:0.5pt 4.0pt;"><span class="ltx_text" id="A3.T6.44.45.3.1" style="position:relative; bottom:-0.3pt;">marker</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A3.T6.44.45.4" style="padding:0.5pt 4.0pt;"><span class="ltx_text" id="A3.T6.44.45.4.1" style="position:relative; bottom:-0.3pt;">marker</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A3.T6.44.45.5" style="padding:0.5pt 4.0pt;"><span class="ltx_text" id="A3.T6.44.45.5.1" style="position:relative; bottom:-0.3pt;">marker</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A3.T6.44.45.6" style="padding:0.5pt 4.0pt;"><span class="ltx_text" id="A3.T6.44.45.6.1" style="position:relative; bottom:-0.3pt;">thinking</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_tt" id="A3.T6.44.45.7" style="padding:0.5pt 4.0pt;"><span class="ltx_text" id="A3.T6.44.45.7.1" style="position:relative; bottom:-0.3pt;">final</span></td>
</tr>
<tr class="ltx_tr" id="A3.T6.44.46">
<td class="ltx_td ltx_nopad_l ltx_align_center" id="A3.T6.44.46.1" style="padding:0.5pt 4.0pt;">(standard)</td>
<td class="ltx_td ltx_align_center" id="A3.T6.44.46.2" style="padding:0.5pt 4.0pt;">(special)</td>
<td class="ltx_td ltx_align_center" id="A3.T6.44.46.3" style="padding:0.5pt 4.0pt;">(number)</td>
<td class="ltx_td ltx_align_center" id="A3.T6.44.46.4" style="padding:0.5pt 4.0pt;">process</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="A3.T6.44.46.5" style="padding:0.5pt 4.0pt;">answer</td>
</tr>
<tr class="ltx_tr" id="A3.T6.3.3">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A3.T6.3.3.4" rowspan="2" style="padding:0.5pt 4.0pt;"><span class="ltx_text" id="A3.T6.3.3.4.1">
<span class="ltx_inline-block ltx_transformed_outer" id="A3.T6.3.3.4.1.1" style="width:6.8pt;height:24.5pt;vertical-align:-8.8pt;"><span class="ltx_transformed_inner" style="width:24.5pt;transform:translate(-8.82pt,0pt) rotate(-90deg) ;">
<span class="ltx_p" id="A3.T6.3.3.4.1.1.1">Strict</span>
</span></span></span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A3.T6.3.3.5" style="padding:0.5pt 4.0pt;">100</td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_t" id="A3.T6.1.1.1" style="padding:0.5pt 4.0pt;"><math alttext="\surd" class="ltx_Math" display="inline" id="A3.T6.1.1.1.m1.1"><semantics id="A3.T6.1.1.1.m1.1a"><mo id="A3.T6.1.1.1.m1.1.1" xref="A3.T6.1.1.1.m1.1.1.cmml">√</mo><annotation-xml encoding="MathML-Content" id="A3.T6.1.1.1.m1.1b"><csymbol cd="latexml" id="A3.T6.1.1.1.m1.1.1.cmml" xref="A3.T6.1.1.1.m1.1.1">square-root</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A3.T6.1.1.1.m1.1c">\surd</annotation><annotation encoding="application/x-llamapun" id="A3.T6.1.1.1.m1.1d">√</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T6.3.3.6" style="padding:0.5pt 4.0pt;">–</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T6.3.3.7" style="padding:0.5pt 4.0pt;">1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T6.2.2.2" style="padding:0.5pt 4.0pt;"><math alttext="\surd" class="ltx_Math" display="inline" id="A3.T6.2.2.2.m1.1"><semantics id="A3.T6.2.2.2.m1.1a"><mo id="A3.T6.2.2.2.m1.1.1" xref="A3.T6.2.2.2.m1.1.1.cmml">√</mo><annotation-xml encoding="MathML-Content" id="A3.T6.2.2.2.m1.1b"><csymbol cd="latexml" id="A3.T6.2.2.2.m1.1.1.cmml" xref="A3.T6.2.2.2.m1.1.1">square-root</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A3.T6.2.2.2.m1.1c">\surd</annotation><annotation encoding="application/x-llamapun" id="A3.T6.2.2.2.m1.1d">√</annotation></semantics></math></td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_t" id="A3.T6.3.3.3" style="padding:0.5pt 4.0pt;"><math alttext="\surd" class="ltx_Math" display="inline" id="A3.T6.3.3.3.m1.1"><semantics id="A3.T6.3.3.3.m1.1a"><mo id="A3.T6.3.3.3.m1.1.1" xref="A3.T6.3.3.3.m1.1.1.cmml">√</mo><annotation-xml encoding="MathML-Content" id="A3.T6.3.3.3.m1.1b"><csymbol cd="latexml" id="A3.T6.3.3.3.m1.1.1.cmml" xref="A3.T6.3.3.3.m1.1.1">square-root</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A3.T6.3.3.3.m1.1c">\surd</annotation><annotation encoding="application/x-llamapun" id="A3.T6.3.3.3.m1.1d">√</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="A3.T6.6.6">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T6.6.6.4" style="padding:0.5pt 4.0pt;">101</td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="A3.T6.4.4.1" style="padding:0.5pt 4.0pt;"><math alttext="\surd" class="ltx_Math" display="inline" id="A3.T6.4.4.1.m1.1"><semantics id="A3.T6.4.4.1.m1.1a"><mo id="A3.T6.4.4.1.m1.1.1" xref="A3.T6.4.4.1.m1.1.1.cmml">√</mo><annotation-xml encoding="MathML-Content" id="A3.T6.4.4.1.m1.1b"><csymbol cd="latexml" id="A3.T6.4.4.1.m1.1.1.cmml" xref="A3.T6.4.4.1.m1.1.1">square-root</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A3.T6.4.4.1.m1.1c">\surd</annotation><annotation encoding="application/x-llamapun" id="A3.T6.4.4.1.m1.1d">√</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="A3.T6.6.6.5" style="padding:0.5pt 4.0pt;">–</td>
<td class="ltx_td ltx_align_center" id="A3.T6.6.6.6" style="padding:0.5pt 4.0pt;">1</td>
<td class="ltx_td ltx_align_center" id="A3.T6.5.5.2" style="padding:0.5pt 4.0pt;"><math alttext="\times" class="ltx_Math" display="inline" id="A3.T6.5.5.2.m1.1"><semantics id="A3.T6.5.5.2.m1.1a"><mo id="A3.T6.5.5.2.m1.1.1" xref="A3.T6.5.5.2.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="A3.T6.5.5.2.m1.1b"><times id="A3.T6.5.5.2.m1.1.1.cmml" xref="A3.T6.5.5.2.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="A3.T6.5.5.2.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="A3.T6.5.5.2.m1.1d">×</annotation></semantics></math></td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="A3.T6.6.6.3" style="padding:0.5pt 4.0pt;"><math alttext="\surd" class="ltx_Math" display="inline" id="A3.T6.6.6.3.m1.1"><semantics id="A3.T6.6.6.3.m1.1a"><mo id="A3.T6.6.6.3.m1.1.1" xref="A3.T6.6.6.3.m1.1.1.cmml">√</mo><annotation-xml encoding="MathML-Content" id="A3.T6.6.6.3.m1.1b"><csymbol cd="latexml" id="A3.T6.6.6.3.m1.1.1.cmml" xref="A3.T6.6.6.3.m1.1.1">square-root</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A3.T6.6.6.3.m1.1c">\surd</annotation><annotation encoding="application/x-llamapun" id="A3.T6.6.6.3.m1.1d">√</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="A3.T6.9.9">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A3.T6.9.9.4" rowspan="8" style="padding:0.5pt 4.0pt;"><span class="ltx_text" id="A3.T6.9.9.4.1">
<span class="ltx_inline-block ltx_transformed_outer" id="A3.T6.9.9.4.1.1" style="width:10.0pt;height:81pt;vertical-align:-38.0pt;"><span class="ltx_transformed_inner" style="width:81.1pt;transform:translate(-35.53pt,3.75pt) rotate(-90deg) ;">
<span class="ltx_p" id="A3.T6.9.9.4.1.1.1">Loose (w/o Strict)</span>
</span></span></span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A3.T6.9.9.5" style="padding:0.5pt 4.0pt;">200</td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_t" id="A3.T6.7.7.1" style="padding:0.5pt 4.0pt;"><math alttext="\surd" class="ltx_Math" display="inline" id="A3.T6.7.7.1.m1.1"><semantics id="A3.T6.7.7.1.m1.1a"><mo id="A3.T6.7.7.1.m1.1.1" xref="A3.T6.7.7.1.m1.1.1.cmml">√</mo><annotation-xml encoding="MathML-Content" id="A3.T6.7.7.1.m1.1b"><csymbol cd="latexml" id="A3.T6.7.7.1.m1.1.1.cmml" xref="A3.T6.7.7.1.m1.1.1">square-root</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A3.T6.7.7.1.m1.1c">\surd</annotation><annotation encoding="application/x-llamapun" id="A3.T6.7.7.1.m1.1d">√</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T6.9.9.6" style="padding:0.5pt 4.0pt;">–</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T6.9.9.7" style="padding:0.5pt 4.0pt;">1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T6.8.8.2" style="padding:0.5pt 4.0pt;"><math alttext="\surd" class="ltx_Math" display="inline" id="A3.T6.8.8.2.m1.1"><semantics id="A3.T6.8.8.2.m1.1a"><mo id="A3.T6.8.8.2.m1.1.1" xref="A3.T6.8.8.2.m1.1.1.cmml">√</mo><annotation-xml encoding="MathML-Content" id="A3.T6.8.8.2.m1.1b"><csymbol cd="latexml" id="A3.T6.8.8.2.m1.1.1.cmml" xref="A3.T6.8.8.2.m1.1.1">square-root</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A3.T6.8.8.2.m1.1c">\surd</annotation><annotation encoding="application/x-llamapun" id="A3.T6.8.8.2.m1.1d">√</annotation></semantics></math></td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_t" id="A3.T6.9.9.3" style="padding:0.5pt 4.0pt;"><math alttext="\times" class="ltx_Math" display="inline" id="A3.T6.9.9.3.m1.1"><semantics id="A3.T6.9.9.3.m1.1a"><mo id="A3.T6.9.9.3.m1.1.1" xref="A3.T6.9.9.3.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="A3.T6.9.9.3.m1.1b"><times id="A3.T6.9.9.3.m1.1.1.cmml" xref="A3.T6.9.9.3.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="A3.T6.9.9.3.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="A3.T6.9.9.3.m1.1d">×</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="A3.T6.12.12">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T6.12.12.4" style="padding:0.5pt 4.0pt;">201</td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="A3.T6.10.10.1" style="padding:0.5pt 4.0pt;"><math alttext="\surd" class="ltx_Math" display="inline" id="A3.T6.10.10.1.m1.1"><semantics id="A3.T6.10.10.1.m1.1a"><mo id="A3.T6.10.10.1.m1.1.1" xref="A3.T6.10.10.1.m1.1.1.cmml">√</mo><annotation-xml encoding="MathML-Content" id="A3.T6.10.10.1.m1.1b"><csymbol cd="latexml" id="A3.T6.10.10.1.m1.1.1.cmml" xref="A3.T6.10.10.1.m1.1.1">square-root</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A3.T6.10.10.1.m1.1c">\surd</annotation><annotation encoding="application/x-llamapun" id="A3.T6.10.10.1.m1.1d">√</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="A3.T6.12.12.5" style="padding:0.5pt 4.0pt;">–</td>
<td class="ltx_td ltx_align_center" id="A3.T6.12.12.6" style="padding:0.5pt 4.0pt;">&gt;1</td>
<td class="ltx_td ltx_align_center" id="A3.T6.11.11.2" style="padding:0.5pt 4.0pt;"><math alttext="\surd" class="ltx_Math" display="inline" id="A3.T6.11.11.2.m1.1"><semantics id="A3.T6.11.11.2.m1.1a"><mo id="A3.T6.11.11.2.m1.1.1" xref="A3.T6.11.11.2.m1.1.1.cmml">√</mo><annotation-xml encoding="MathML-Content" id="A3.T6.11.11.2.m1.1b"><csymbol cd="latexml" id="A3.T6.11.11.2.m1.1.1.cmml" xref="A3.T6.11.11.2.m1.1.1">square-root</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A3.T6.11.11.2.m1.1c">\surd</annotation><annotation encoding="application/x-llamapun" id="A3.T6.11.11.2.m1.1d">√</annotation></semantics></math></td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="A3.T6.12.12.3" style="padding:0.5pt 4.0pt;"><math alttext="\surd" class="ltx_Math" display="inline" id="A3.T6.12.12.3.m1.1"><semantics id="A3.T6.12.12.3.m1.1a"><mo id="A3.T6.12.12.3.m1.1.1" xref="A3.T6.12.12.3.m1.1.1.cmml">√</mo><annotation-xml encoding="MathML-Content" id="A3.T6.12.12.3.m1.1b"><csymbol cd="latexml" id="A3.T6.12.12.3.m1.1.1.cmml" xref="A3.T6.12.12.3.m1.1.1">square-root</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A3.T6.12.12.3.m1.1c">\surd</annotation><annotation encoding="application/x-llamapun" id="A3.T6.12.12.3.m1.1d">√</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="A3.T6.15.15">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T6.15.15.4" style="padding:0.5pt 4.0pt;">202</td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="A3.T6.13.13.1" style="padding:0.5pt 4.0pt;"><math alttext="\surd" class="ltx_Math" display="inline" id="A3.T6.13.13.1.m1.1"><semantics id="A3.T6.13.13.1.m1.1a"><mo id="A3.T6.13.13.1.m1.1.1" xref="A3.T6.13.13.1.m1.1.1.cmml">√</mo><annotation-xml encoding="MathML-Content" id="A3.T6.13.13.1.m1.1b"><csymbol cd="latexml" id="A3.T6.13.13.1.m1.1.1.cmml" xref="A3.T6.13.13.1.m1.1.1">square-root</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A3.T6.13.13.1.m1.1c">\surd</annotation><annotation encoding="application/x-llamapun" id="A3.T6.13.13.1.m1.1d">√</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="A3.T6.15.15.5" style="padding:0.5pt 4.0pt;">–</td>
<td class="ltx_td ltx_align_center" id="A3.T6.15.15.6" style="padding:0.5pt 4.0pt;">&gt;1</td>
<td class="ltx_td ltx_align_center" id="A3.T6.14.14.2" style="padding:0.5pt 4.0pt;"><math alttext="\surd" class="ltx_Math" display="inline" id="A3.T6.14.14.2.m1.1"><semantics id="A3.T6.14.14.2.m1.1a"><mo id="A3.T6.14.14.2.m1.1.1" xref="A3.T6.14.14.2.m1.1.1.cmml">√</mo><annotation-xml encoding="MathML-Content" id="A3.T6.14.14.2.m1.1b"><csymbol cd="latexml" id="A3.T6.14.14.2.m1.1.1.cmml" xref="A3.T6.14.14.2.m1.1.1">square-root</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A3.T6.14.14.2.m1.1c">\surd</annotation><annotation encoding="application/x-llamapun" id="A3.T6.14.14.2.m1.1d">√</annotation></semantics></math></td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="A3.T6.15.15.3" style="padding:0.5pt 4.0pt;"><math alttext="\times" class="ltx_Math" display="inline" id="A3.T6.15.15.3.m1.1"><semantics id="A3.T6.15.15.3.m1.1a"><mo id="A3.T6.15.15.3.m1.1.1" xref="A3.T6.15.15.3.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="A3.T6.15.15.3.m1.1b"><times id="A3.T6.15.15.3.m1.1.1.cmml" xref="A3.T6.15.15.3.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="A3.T6.15.15.3.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="A3.T6.15.15.3.m1.1d">×</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="A3.T6.18.18">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T6.18.18.4" style="padding:0.5pt 4.0pt;">203</td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="A3.T6.16.16.1" style="padding:0.5pt 4.0pt;"><math alttext="\surd" class="ltx_Math" display="inline" id="A3.T6.16.16.1.m1.1"><semantics id="A3.T6.16.16.1.m1.1a"><mo id="A3.T6.16.16.1.m1.1.1" xref="A3.T6.16.16.1.m1.1.1.cmml">√</mo><annotation-xml encoding="MathML-Content" id="A3.T6.16.16.1.m1.1b"><csymbol cd="latexml" id="A3.T6.16.16.1.m1.1.1.cmml" xref="A3.T6.16.16.1.m1.1.1">square-root</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A3.T6.16.16.1.m1.1c">\surd</annotation><annotation encoding="application/x-llamapun" id="A3.T6.16.16.1.m1.1d">√</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="A3.T6.18.18.5" style="padding:0.5pt 4.0pt;">–</td>
<td class="ltx_td ltx_align_center" id="A3.T6.18.18.6" style="padding:0.5pt 4.0pt;">&gt;1</td>
<td class="ltx_td ltx_align_center" id="A3.T6.17.17.2" style="padding:0.5pt 4.0pt;"><math alttext="\times" class="ltx_Math" display="inline" id="A3.T6.17.17.2.m1.1"><semantics id="A3.T6.17.17.2.m1.1a"><mo id="A3.T6.17.17.2.m1.1.1" xref="A3.T6.17.17.2.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="A3.T6.17.17.2.m1.1b"><times id="A3.T6.17.17.2.m1.1.1.cmml" xref="A3.T6.17.17.2.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="A3.T6.17.17.2.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="A3.T6.17.17.2.m1.1d">×</annotation></semantics></math></td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="A3.T6.18.18.3" style="padding:0.5pt 4.0pt;"><math alttext="\surd" class="ltx_Math" display="inline" id="A3.T6.18.18.3.m1.1"><semantics id="A3.T6.18.18.3.m1.1a"><mo id="A3.T6.18.18.3.m1.1.1" xref="A3.T6.18.18.3.m1.1.1.cmml">√</mo><annotation-xml encoding="MathML-Content" id="A3.T6.18.18.3.m1.1b"><csymbol cd="latexml" id="A3.T6.18.18.3.m1.1.1.cmml" xref="A3.T6.18.18.3.m1.1.1">square-root</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A3.T6.18.18.3.m1.1c">\surd</annotation><annotation encoding="application/x-llamapun" id="A3.T6.18.18.3.m1.1d">√</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="A3.T6.23.23">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T6.23.23.6" style="padding:0.5pt 4.0pt;">204</td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="A3.T6.19.19.1" style="padding:0.5pt 4.0pt;"><math alttext="\times" class="ltx_Math" display="inline" id="A3.T6.19.19.1.m1.1"><semantics id="A3.T6.19.19.1.m1.1a"><mo id="A3.T6.19.19.1.m1.1.1" xref="A3.T6.19.19.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="A3.T6.19.19.1.m1.1b"><times id="A3.T6.19.19.1.m1.1.1.cmml" xref="A3.T6.19.19.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="A3.T6.19.19.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="A3.T6.19.19.1.m1.1d">×</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="A3.T6.20.20.2" style="padding:0.5pt 4.0pt;"><math alttext="\surd" class="ltx_Math" display="inline" id="A3.T6.20.20.2.m1.1"><semantics id="A3.T6.20.20.2.m1.1a"><mo id="A3.T6.20.20.2.m1.1.1" xref="A3.T6.20.20.2.m1.1.1.cmml">√</mo><annotation-xml encoding="MathML-Content" id="A3.T6.20.20.2.m1.1b"><csymbol cd="latexml" id="A3.T6.20.20.2.m1.1.1.cmml" xref="A3.T6.20.20.2.m1.1.1">square-root</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A3.T6.20.20.2.m1.1c">\surd</annotation><annotation encoding="application/x-llamapun" id="A3.T6.20.20.2.m1.1d">√</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="A3.T6.21.21.3" style="padding:0.5pt 4.0pt;">
<math alttext="\geq" class="ltx_Math" display="inline" id="A3.T6.21.21.3.m1.1"><semantics id="A3.T6.21.21.3.m1.1a"><mo id="A3.T6.21.21.3.m1.1.1" xref="A3.T6.21.21.3.m1.1.1.cmml">≥</mo><annotation-xml encoding="MathML-Content" id="A3.T6.21.21.3.m1.1b"><geq id="A3.T6.21.21.3.m1.1.1.cmml" xref="A3.T6.21.21.3.m1.1.1"></geq></annotation-xml><annotation encoding="application/x-tex" id="A3.T6.21.21.3.m1.1c">\geq</annotation><annotation encoding="application/x-llamapun" id="A3.T6.21.21.3.m1.1d">≥</annotation></semantics></math>1</td>
<td class="ltx_td ltx_align_center" id="A3.T6.22.22.4" style="padding:0.5pt 4.0pt;"><math alttext="\surd" class="ltx_Math" display="inline" id="A3.T6.22.22.4.m1.1"><semantics id="A3.T6.22.22.4.m1.1a"><mo id="A3.T6.22.22.4.m1.1.1" xref="A3.T6.22.22.4.m1.1.1.cmml">√</mo><annotation-xml encoding="MathML-Content" id="A3.T6.22.22.4.m1.1b"><csymbol cd="latexml" id="A3.T6.22.22.4.m1.1.1.cmml" xref="A3.T6.22.22.4.m1.1.1">square-root</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A3.T6.22.22.4.m1.1c">\surd</annotation><annotation encoding="application/x-llamapun" id="A3.T6.22.22.4.m1.1d">√</annotation></semantics></math></td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="A3.T6.23.23.5" style="padding:0.5pt 4.0pt;"><math alttext="\surd" class="ltx_Math" display="inline" id="A3.T6.23.23.5.m1.1"><semantics id="A3.T6.23.23.5.m1.1a"><mo id="A3.T6.23.23.5.m1.1.1" xref="A3.T6.23.23.5.m1.1.1.cmml">√</mo><annotation-xml encoding="MathML-Content" id="A3.T6.23.23.5.m1.1b"><csymbol cd="latexml" id="A3.T6.23.23.5.m1.1.1.cmml" xref="A3.T6.23.23.5.m1.1.1">square-root</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A3.T6.23.23.5.m1.1c">\surd</annotation><annotation encoding="application/x-llamapun" id="A3.T6.23.23.5.m1.1d">√</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="A3.T6.28.28">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T6.28.28.6" style="padding:0.5pt 4.0pt;">205</td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="A3.T6.24.24.1" style="padding:0.5pt 4.0pt;"><math alttext="\times" class="ltx_Math" display="inline" id="A3.T6.24.24.1.m1.1"><semantics id="A3.T6.24.24.1.m1.1a"><mo id="A3.T6.24.24.1.m1.1.1" xref="A3.T6.24.24.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="A3.T6.24.24.1.m1.1b"><times id="A3.T6.24.24.1.m1.1.1.cmml" xref="A3.T6.24.24.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="A3.T6.24.24.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="A3.T6.24.24.1.m1.1d">×</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="A3.T6.25.25.2" style="padding:0.5pt 4.0pt;"><math alttext="\surd" class="ltx_Math" display="inline" id="A3.T6.25.25.2.m1.1"><semantics id="A3.T6.25.25.2.m1.1a"><mo id="A3.T6.25.25.2.m1.1.1" xref="A3.T6.25.25.2.m1.1.1.cmml">√</mo><annotation-xml encoding="MathML-Content" id="A3.T6.25.25.2.m1.1b"><csymbol cd="latexml" id="A3.T6.25.25.2.m1.1.1.cmml" xref="A3.T6.25.25.2.m1.1.1">square-root</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A3.T6.25.25.2.m1.1c">\surd</annotation><annotation encoding="application/x-llamapun" id="A3.T6.25.25.2.m1.1d">√</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="A3.T6.26.26.3" style="padding:0.5pt 4.0pt;">
<math alttext="\geq" class="ltx_Math" display="inline" id="A3.T6.26.26.3.m1.1"><semantics id="A3.T6.26.26.3.m1.1a"><mo id="A3.T6.26.26.3.m1.1.1" xref="A3.T6.26.26.3.m1.1.1.cmml">≥</mo><annotation-xml encoding="MathML-Content" id="A3.T6.26.26.3.m1.1b"><geq id="A3.T6.26.26.3.m1.1.1.cmml" xref="A3.T6.26.26.3.m1.1.1"></geq></annotation-xml><annotation encoding="application/x-tex" id="A3.T6.26.26.3.m1.1c">\geq</annotation><annotation encoding="application/x-llamapun" id="A3.T6.26.26.3.m1.1d">≥</annotation></semantics></math>1</td>
<td class="ltx_td ltx_align_center" id="A3.T6.27.27.4" style="padding:0.5pt 4.0pt;"><math alttext="\surd" class="ltx_Math" display="inline" id="A3.T6.27.27.4.m1.1"><semantics id="A3.T6.27.27.4.m1.1a"><mo id="A3.T6.27.27.4.m1.1.1" xref="A3.T6.27.27.4.m1.1.1.cmml">√</mo><annotation-xml encoding="MathML-Content" id="A3.T6.27.27.4.m1.1b"><csymbol cd="latexml" id="A3.T6.27.27.4.m1.1.1.cmml" xref="A3.T6.27.27.4.m1.1.1">square-root</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A3.T6.27.27.4.m1.1c">\surd</annotation><annotation encoding="application/x-llamapun" id="A3.T6.27.27.4.m1.1d">√</annotation></semantics></math></td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="A3.T6.28.28.5" style="padding:0.5pt 4.0pt;"><math alttext="\times" class="ltx_Math" display="inline" id="A3.T6.28.28.5.m1.1"><semantics id="A3.T6.28.28.5.m1.1a"><mo id="A3.T6.28.28.5.m1.1.1" xref="A3.T6.28.28.5.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="A3.T6.28.28.5.m1.1b"><times id="A3.T6.28.28.5.m1.1.1.cmml" xref="A3.T6.28.28.5.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="A3.T6.28.28.5.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="A3.T6.28.28.5.m1.1d">×</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="A3.T6.33.33">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T6.33.33.6" style="padding:0.5pt 4.0pt;">206</td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="A3.T6.29.29.1" style="padding:0.5pt 4.0pt;"><math alttext="\times" class="ltx_Math" display="inline" id="A3.T6.29.29.1.m1.1"><semantics id="A3.T6.29.29.1.m1.1a"><mo id="A3.T6.29.29.1.m1.1.1" xref="A3.T6.29.29.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="A3.T6.29.29.1.m1.1b"><times id="A3.T6.29.29.1.m1.1.1.cmml" xref="A3.T6.29.29.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="A3.T6.29.29.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="A3.T6.29.29.1.m1.1d">×</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="A3.T6.30.30.2" style="padding:0.5pt 4.0pt;"><math alttext="\surd" class="ltx_Math" display="inline" id="A3.T6.30.30.2.m1.1"><semantics id="A3.T6.30.30.2.m1.1a"><mo id="A3.T6.30.30.2.m1.1.1" xref="A3.T6.30.30.2.m1.1.1.cmml">√</mo><annotation-xml encoding="MathML-Content" id="A3.T6.30.30.2.m1.1b"><csymbol cd="latexml" id="A3.T6.30.30.2.m1.1.1.cmml" xref="A3.T6.30.30.2.m1.1.1">square-root</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A3.T6.30.30.2.m1.1c">\surd</annotation><annotation encoding="application/x-llamapun" id="A3.T6.30.30.2.m1.1d">√</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="A3.T6.31.31.3" style="padding:0.5pt 4.0pt;">
<math alttext="\geq" class="ltx_Math" display="inline" id="A3.T6.31.31.3.m1.1"><semantics id="A3.T6.31.31.3.m1.1a"><mo id="A3.T6.31.31.3.m1.1.1" xref="A3.T6.31.31.3.m1.1.1.cmml">≥</mo><annotation-xml encoding="MathML-Content" id="A3.T6.31.31.3.m1.1b"><geq id="A3.T6.31.31.3.m1.1.1.cmml" xref="A3.T6.31.31.3.m1.1.1"></geq></annotation-xml><annotation encoding="application/x-tex" id="A3.T6.31.31.3.m1.1c">\geq</annotation><annotation encoding="application/x-llamapun" id="A3.T6.31.31.3.m1.1d">≥</annotation></semantics></math>1</td>
<td class="ltx_td ltx_align_center" id="A3.T6.32.32.4" style="padding:0.5pt 4.0pt;"><math alttext="\times" class="ltx_Math" display="inline" id="A3.T6.32.32.4.m1.1"><semantics id="A3.T6.32.32.4.m1.1a"><mo id="A3.T6.32.32.4.m1.1.1" xref="A3.T6.32.32.4.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="A3.T6.32.32.4.m1.1b"><times id="A3.T6.32.32.4.m1.1.1.cmml" xref="A3.T6.32.32.4.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="A3.T6.32.32.4.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="A3.T6.32.32.4.m1.1d">×</annotation></semantics></math></td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="A3.T6.33.33.5" style="padding:0.5pt 4.0pt;"><math alttext="\surd" class="ltx_Math" display="inline" id="A3.T6.33.33.5.m1.1"><semantics id="A3.T6.33.33.5.m1.1a"><mo id="A3.T6.33.33.5.m1.1.1" xref="A3.T6.33.33.5.m1.1.1.cmml">√</mo><annotation-xml encoding="MathML-Content" id="A3.T6.33.33.5.m1.1b"><csymbol cd="latexml" id="A3.T6.33.33.5.m1.1.1.cmml" xref="A3.T6.33.33.5.m1.1.1">square-root</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A3.T6.33.33.5.m1.1c">\surd</annotation><annotation encoding="application/x-llamapun" id="A3.T6.33.33.5.m1.1d">√</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="A3.T6.36.36">
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T6.36.36.4" style="padding:0.5pt 4.0pt;">207</td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="A3.T6.34.34.1" style="padding:0.5pt 4.0pt;"><math alttext="\times" class="ltx_Math" display="inline" id="A3.T6.34.34.1.m1.1"><semantics id="A3.T6.34.34.1.m1.1a"><mo id="A3.T6.34.34.1.m1.1.1" xref="A3.T6.34.34.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="A3.T6.34.34.1.m1.1b"><times id="A3.T6.34.34.1.m1.1.1.cmml" xref="A3.T6.34.34.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="A3.T6.34.34.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="A3.T6.34.34.1.m1.1d">×</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="A3.T6.35.35.2" style="padding:0.5pt 4.0pt;"><math alttext="\times" class="ltx_Math" display="inline" id="A3.T6.35.35.2.m1.1"><semantics id="A3.T6.35.35.2.m1.1a"><mo id="A3.T6.35.35.2.m1.1.1" xref="A3.T6.35.35.2.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="A3.T6.35.35.2.m1.1b"><times id="A3.T6.35.35.2.m1.1.1.cmml" xref="A3.T6.35.35.2.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="A3.T6.35.35.2.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="A3.T6.35.35.2.m1.1d">×</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="A3.T6.36.36.5" style="padding:0.5pt 4.0pt;">0</td>
<td class="ltx_td ltx_align_center" id="A3.T6.36.36.6" style="padding:0.5pt 4.0pt;">–</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="A3.T6.36.36.3" style="padding:0.5pt 4.0pt;"><math alttext="\surd" class="ltx_Math" display="inline" id="A3.T6.36.36.3.m1.1"><semantics id="A3.T6.36.36.3.m1.1a"><mo id="A3.T6.36.36.3.m1.1.1" xref="A3.T6.36.36.3.m1.1.1.cmml">√</mo><annotation-xml encoding="MathML-Content" id="A3.T6.36.36.3.m1.1b"><csymbol cd="latexml" id="A3.T6.36.36.3.m1.1.1.cmml" xref="A3.T6.36.36.3.m1.1.1">square-root</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A3.T6.36.36.3.m1.1c">\surd</annotation><annotation encoding="application/x-llamapun" id="A3.T6.36.36.3.m1.1d">√</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="A3.T6.41.41">
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r ltx_border_t" id="A3.T6.41.41.6" rowspan="2" style="padding:0.5pt 4.0pt;"><span class="ltx_text" id="A3.T6.41.41.6.1">
<span class="ltx_inline-block ltx_transformed_outer" id="A3.T6.41.41.6.1.1" style="width:6.8pt;height:23.6pt;vertical-align:-8.4pt;"><span class="ltx_transformed_inner" style="width:23.6pt;transform:translate(-8.36pt,0pt) rotate(-90deg) ;">
<span class="ltx_p" id="A3.T6.41.41.6.1.1.1">Error</span>
</span></span></span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A3.T6.41.41.7" style="padding:0.5pt 4.0pt;">300</td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_t" id="A3.T6.37.37.1" style="padding:0.5pt 4.0pt;"><math alttext="\surd" class="ltx_Math" display="inline" id="A3.T6.37.37.1.m1.1"><semantics id="A3.T6.37.37.1.m1.1a"><mo id="A3.T6.37.37.1.m1.1.1" xref="A3.T6.37.37.1.m1.1.1.cmml">√</mo><annotation-xml encoding="MathML-Content" id="A3.T6.37.37.1.m1.1b"><csymbol cd="latexml" id="A3.T6.37.37.1.m1.1.1.cmml" xref="A3.T6.37.37.1.m1.1.1">square-root</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A3.T6.37.37.1.m1.1c">\surd</annotation><annotation encoding="application/x-llamapun" id="A3.T6.37.37.1.m1.1d">√</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T6.38.38.2" style="padding:0.5pt 4.0pt;"><math alttext="\surd" class="ltx_Math" display="inline" id="A3.T6.38.38.2.m1.1"><semantics id="A3.T6.38.38.2.m1.1a"><mo id="A3.T6.38.38.2.m1.1.1" xref="A3.T6.38.38.2.m1.1.1.cmml">√</mo><annotation-xml encoding="MathML-Content" id="A3.T6.38.38.2.m1.1b"><csymbol cd="latexml" id="A3.T6.38.38.2.m1.1.1.cmml" xref="A3.T6.38.38.2.m1.1.1">square-root</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A3.T6.38.38.2.m1.1c">\surd</annotation><annotation encoding="application/x-llamapun" id="A3.T6.38.38.2.m1.1d">√</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T6.39.39.3" style="padding:0.5pt 4.0pt;">
<math alttext="\geq" class="ltx_Math" display="inline" id="A3.T6.39.39.3.m1.1"><semantics id="A3.T6.39.39.3.m1.1a"><mo id="A3.T6.39.39.3.m1.1.1" xref="A3.T6.39.39.3.m1.1.1.cmml">≥</mo><annotation-xml encoding="MathML-Content" id="A3.T6.39.39.3.m1.1b"><geq id="A3.T6.39.39.3.m1.1.1.cmml" xref="A3.T6.39.39.3.m1.1.1"></geq></annotation-xml><annotation encoding="application/x-tex" id="A3.T6.39.39.3.m1.1c">\geq</annotation><annotation encoding="application/x-llamapun" id="A3.T6.39.39.3.m1.1d">≥</annotation></semantics></math>1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T6.40.40.4" style="padding:0.5pt 4.0pt;"><math alttext="\times" class="ltx_Math" display="inline" id="A3.T6.40.40.4.m1.1"><semantics id="A3.T6.40.40.4.m1.1a"><mo id="A3.T6.40.40.4.m1.1.1" xref="A3.T6.40.40.4.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="A3.T6.40.40.4.m1.1b"><times id="A3.T6.40.40.4.m1.1.1.cmml" xref="A3.T6.40.40.4.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="A3.T6.40.40.4.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="A3.T6.40.40.4.m1.1d">×</annotation></semantics></math></td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_t" id="A3.T6.41.41.5" style="padding:0.5pt 4.0pt;"><math alttext="\times" class="ltx_Math" display="inline" id="A3.T6.41.41.5.m1.1"><semantics id="A3.T6.41.41.5.m1.1a"><mo id="A3.T6.41.41.5.m1.1.1" xref="A3.T6.41.41.5.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="A3.T6.41.41.5.m1.1b"><times id="A3.T6.41.41.5.m1.1.1.cmml" xref="A3.T6.41.41.5.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="A3.T6.41.41.5.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="A3.T6.41.41.5.m1.1d">×</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="A3.T6.44.44">
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="A3.T6.44.44.4" style="padding:0.5pt 4.0pt;">301</td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_bb" id="A3.T6.42.42.1" style="padding:0.5pt 4.0pt;"><math alttext="\times" class="ltx_Math" display="inline" id="A3.T6.42.42.1.m1.1"><semantics id="A3.T6.42.42.1.m1.1a"><mo id="A3.T6.42.42.1.m1.1.1" xref="A3.T6.42.42.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="A3.T6.42.42.1.m1.1b"><times id="A3.T6.42.42.1.m1.1.1.cmml" xref="A3.T6.42.42.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="A3.T6.42.42.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="A3.T6.42.42.1.m1.1d">×</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T6.43.43.2" style="padding:0.5pt 4.0pt;"><math alttext="\times" class="ltx_Math" display="inline" id="A3.T6.43.43.2.m1.1"><semantics id="A3.T6.43.43.2.m1.1a"><mo id="A3.T6.43.43.2.m1.1.1" xref="A3.T6.43.43.2.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="A3.T6.43.43.2.m1.1b"><times id="A3.T6.43.43.2.m1.1.1.cmml" xref="A3.T6.43.43.2.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="A3.T6.43.43.2.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="A3.T6.43.43.2.m1.1d">×</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T6.44.44.5" style="padding:0.5pt 4.0pt;">0</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T6.44.44.6" style="padding:0.5pt 4.0pt;">–</td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_bb" id="A3.T6.44.44.3" style="padding:0.5pt 4.0pt;"><math alttext="\infty" class="ltx_Math" display="inline" id="A3.T6.44.44.3.m1.1"><semantics id="A3.T6.44.44.3.m1.1a"><mi id="A3.T6.44.44.3.m1.1.1" mathvariant="normal" xref="A3.T6.44.44.3.m1.1.1.cmml">∞</mi><annotation-xml encoding="MathML-Content" id="A3.T6.44.44.3.m1.1b"><infinity id="A3.T6.44.44.3.m1.1.1.cmml" xref="A3.T6.44.44.3.m1.1.1"></infinity></annotation-xml><annotation encoding="application/x-tex" id="A3.T6.44.44.3.m1.1c">\infty</annotation><annotation encoding="application/x-llamapun" id="A3.T6.44.44.3.m1.1d">∞</annotation></semantics></math></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table categorizes different formats of LLM responses based on the presence and correctness of the end-of-thinking marker, presence of final answer, and the presence of other elements.  Strict format indicates correctly formatted responses, while loose format includes variations that may still convey a correct answer but deviate from the standard structure.  Error formats include cases where the response is completely undecodable or only includes the marker but no answer.
> <details>
> <summary>read the caption</summary>
> Table 6: Format types.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="A3.T7.1">
<tr class="ltx_tr" id="A3.T7.1.1">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_tt" id="A3.T7.1.1.1" style="padding:0.5pt 5.0pt;">Words</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A3.T7.1.1.2" style="padding:0.5pt 5.0pt;">Count</td>
</tr>
<tr class="ltx_tr" id="A3.T7.1.2">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A3.T7.1.2.1" style="padding:0.5pt 5.0pt;">
<span class="ltx_ERROR undefined" id="A3.T7.1.2.1.1">{CJK}</span>UTF8gkai简单</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T7.1.2.2" style="padding:0.5pt 5.0pt;">466</td>
</tr>
<tr class="ltx_tr" id="A3.T7.1.3">
<td class="ltx_td ltx_align_left ltx_border_r" id="A3.T7.1.3.1" style="padding:0.5pt 5.0pt;">straightforward</td>
<td class="ltx_td ltx_align_center" id="A3.T7.1.3.2" style="padding:0.5pt 5.0pt;">231</td>
</tr>
<tr class="ltx_tr" id="A3.T7.1.4">
<td class="ltx_td ltx_align_left ltx_border_r" id="A3.T7.1.4.1" style="padding:0.5pt 5.0pt;">simple</td>
<td class="ltx_td ltx_align_center" id="A3.T7.1.4.2" style="padding:0.5pt 5.0pt;">118</td>
</tr>
<tr class="ltx_tr" id="A3.T7.1.5">
<td class="ltx_td ltx_align_left ltx_border_r" id="A3.T7.1.5.1" style="padding:0.5pt 5.0pt;">
<span class="ltx_ERROR undefined" id="A3.T7.1.5.1.1">{CJK}</span>UTF8gkai不难</td>
<td class="ltx_td ltx_align_center" id="A3.T7.1.5.2" style="padding:0.5pt 5.0pt;">72</td>
</tr>
<tr class="ltx_tr" id="A3.T7.1.6">
<td class="ltx_td ltx_align_left ltx_border_r" id="A3.T7.1.6.1" style="padding:0.5pt 5.0pt;">
<span class="ltx_ERROR undefined" id="A3.T7.1.6.1.1">{CJK}</span>UTF8gkai基础的</td>
<td class="ltx_td ltx_align_center" id="A3.T7.1.6.2" style="padding:0.5pt 5.0pt;">44</td>
</tr>
<tr class="ltx_tr" id="A3.T7.1.7">
<td class="ltx_td ltx_align_left ltx_border_r" id="A3.T7.1.7.1" style="padding:0.5pt 5.0pt;">basic</td>
<td class="ltx_td ltx_align_center" id="A3.T7.1.7.2" style="padding:0.5pt 5.0pt;">24</td>
</tr>
<tr class="ltx_tr" id="A3.T7.1.8">
<td class="ltx_td ltx_align_left ltx_border_r" id="A3.T7.1.8.1" style="padding:0.5pt 5.0pt;">
<span class="ltx_ERROR undefined" id="A3.T7.1.8.1.1">{CJK}</span>UTF8gkai直接</td>
<td class="ltx_td ltx_align_center" id="A3.T7.1.8.2" style="padding:0.5pt 5.0pt;">15</td>
</tr>
<tr class="ltx_tr" id="A3.T7.1.9">
<td class="ltx_td ltx_align_left ltx_border_r" id="A3.T7.1.9.1" style="padding:0.5pt 5.0pt;">
<span class="ltx_ERROR undefined" id="A3.T7.1.9.1.1">{CJK}</span>UTF8gkai常见</td>
<td class="ltx_td ltx_align_center" id="A3.T7.1.9.2" style="padding:0.5pt 5.0pt;">10</td>
</tr>
<tr class="ltx_tr" id="A3.T7.1.10">
<td class="ltx_td ltx_align_left ltx_border_r" id="A3.T7.1.10.1" style="padding:0.5pt 5.0pt;">
<span class="ltx_ERROR undefined" id="A3.T7.1.10.1.1">{CJK}</span>UTF8gkai基础</td>
<td class="ltx_td ltx_align_center" id="A3.T7.1.10.2" style="padding:0.5pt 5.0pt;">10</td>
</tr>
<tr class="ltx_tr" id="A3.T7.1.11">
<td class="ltx_td ltx_align_left ltx_border_r" id="A3.T7.1.11.1" style="padding:0.5pt 5.0pt;">
<span class="ltx_ERROR undefined" id="A3.T7.1.11.1.1">{CJK}</span>UTF8gkai不复杂</td>
<td class="ltx_td ltx_align_center" id="A3.T7.1.11.2" style="padding:0.5pt 5.0pt;">7</td>
</tr>
<tr class="ltx_tr" id="A3.T7.1.12">
<td class="ltx_td ltx_align_left ltx_border_r" id="A3.T7.1.12.1" style="padding:0.5pt 5.0pt;">simplest</td>
<td class="ltx_td ltx_align_center" id="A3.T7.1.12.2" style="padding:0.5pt 5.0pt;">7</td>
</tr>
<tr class="ltx_tr" id="A3.T7.1.13">
<td class="ltx_td ltx_align_left ltx_border_r" id="A3.T7.1.13.1" style="padding:0.5pt 5.0pt;">pretty straightforward</td>
<td class="ltx_td ltx_align_center" id="A3.T7.1.13.2" style="padding:0.5pt 5.0pt;">5</td>
</tr>
<tr class="ltx_tr" id="A3.T7.1.14">
<td class="ltx_td ltx_align_left ltx_border_r" id="A3.T7.1.14.1" style="padding:0.5pt 5.0pt;">easy</td>
<td class="ltx_td ltx_align_center" id="A3.T7.1.14.2" style="padding:0.5pt 5.0pt;">5</td>
</tr>
<tr class="ltx_tr" id="A3.T7.1.15">
<td class="ltx_td ltx_align_left ltx_border_r" id="A3.T7.1.15.1" style="padding:0.5pt 5.0pt;">
<span class="ltx_ERROR undefined" id="A3.T7.1.15.1.1">{CJK}</span>UTF8gkai基本的</td>
<td class="ltx_td ltx_align_center" id="A3.T7.1.15.2" style="padding:0.5pt 5.0pt;">5</td>
</tr>
<tr class="ltx_tr" id="A3.T7.1.16">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_r" id="A3.T7.1.16.1" style="padding:0.5pt 5.0pt;">
<span class="ltx_ERROR undefined" id="A3.T7.1.16.1.1">{CJK}</span>UTF8gkai基本</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T7.1.16.2" style="padding:0.5pt 5.0pt;">3</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the top 15 phrases used by Large Language Models (LLMs) to express prejudgment, indicating an assessment of question simplicity before generating a response.  The counts reflect the total occurrences of each phrase across all 22 LLMs evaluated in the study.
> <details>
> <summary>read the caption</summary>
> Table 7: Top 15 phrases with prejudgment phenomenon, with counts summed across 22 LRMs.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="A3.T8.1">
<tr class="ltx_tr" id="A3.T8.1.1">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_tt" id="A3.T8.1.1.1" rowspan="3" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T8.1.1.1.1" style="position:relative; bottom:-0.2pt;">Model</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" colspan="10" id="A3.T8.1.1.2" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text ltx_font_bold" id="A3.T8.1.1.2.1" style="position:relative; bottom:-0.2pt;">Loose Format</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="A3.T8.1.1.3" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text ltx_font_bold" id="A3.T8.1.1.3.1" style="position:relative; bottom:-0.2pt;">Error Format</span></td>
</tr>
<tr class="ltx_tr" id="A3.T8.1.2">
<td class="ltx_td ltx_align_center ltx_border_r" colspan="2" id="A3.T8.1.2.1" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text ltx_font_bold" id="A3.T8.1.2.1.1" style="position:relative; bottom:0.1pt;">Strict Format</span></td>
<td class="ltx_td" id="A3.T8.1.2.2" style="padding-top:0.5pt;padding-bottom:0.5pt;"></td>
<td class="ltx_td" id="A3.T8.1.2.3" style="padding-top:0.5pt;padding-bottom:0.5pt;"></td>
<td class="ltx_td" id="A3.T8.1.2.4" style="padding-top:0.5pt;padding-bottom:0.5pt;"></td>
<td class="ltx_td" id="A3.T8.1.2.5" style="padding-top:0.5pt;padding-bottom:0.5pt;"></td>
<td class="ltx_td" id="A3.T8.1.2.6" style="padding-top:0.5pt;padding-bottom:0.5pt;"></td>
<td class="ltx_td" id="A3.T8.1.2.7" style="padding-top:0.5pt;padding-bottom:0.5pt;"></td>
<td class="ltx_td" id="A3.T8.1.2.8" style="padding-top:0.5pt;padding-bottom:0.5pt;"></td>
<td class="ltx_td ltx_border_r" id="A3.T8.1.2.9" style="padding-top:0.5pt;padding-bottom:0.5pt;"></td>
<td class="ltx_td" id="A3.T8.1.2.10" style="padding-top:0.5pt;padding-bottom:0.5pt;"></td>
<td class="ltx_td ltx_nopad_r" id="A3.T8.1.2.11" style="padding-top:0.5pt;padding-bottom:0.5pt;"></td>
</tr>
<tr class="ltx_tr" id="A3.T8.1.3">
<td class="ltx_td ltx_align_center" id="A3.T8.1.3.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">100</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T8.1.3.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">101</td>
<td class="ltx_td ltx_align_center" id="A3.T8.1.3.3" style="padding-top:0.5pt;padding-bottom:0.5pt;">200</td>
<td class="ltx_td ltx_align_center" id="A3.T8.1.3.4" style="padding-top:0.5pt;padding-bottom:0.5pt;">201</td>
<td class="ltx_td ltx_align_center" id="A3.T8.1.3.5" style="padding-top:0.5pt;padding-bottom:0.5pt;">202</td>
<td class="ltx_td ltx_align_center" id="A3.T8.1.3.6" style="padding-top:0.5pt;padding-bottom:0.5pt;">203</td>
<td class="ltx_td ltx_align_center" id="A3.T8.1.3.7" style="padding-top:0.5pt;padding-bottom:0.5pt;">204</td>
<td class="ltx_td ltx_align_center" id="A3.T8.1.3.8" style="padding-top:0.5pt;padding-bottom:0.5pt;">205</td>
<td class="ltx_td ltx_align_center" id="A3.T8.1.3.9" style="padding-top:0.5pt;padding-bottom:0.5pt;">206</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T8.1.3.10" style="padding-top:0.5pt;padding-bottom:0.5pt;">207</td>
<td class="ltx_td ltx_align_center" id="A3.T8.1.3.11" style="padding-top:0.5pt;padding-bottom:0.5pt;">300</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="A3.T8.1.3.12" style="padding-top:0.5pt;padding-bottom:0.5pt;">301</td>
</tr>
<tr class="ltx_tr" id="A3.T8.1.4">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A3.T8.1.4.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">QwQ-32B</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T8.1.4.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">100.00</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A3.T8.1.4.3" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T8.1.4.3.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T8.1.4.4" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T8.1.4.4.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T8.1.4.5" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T8.1.4.5.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T8.1.4.6" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T8.1.4.6.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T8.1.4.7" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T8.1.4.7.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T8.1.4.8" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T8.1.4.8.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T8.1.4.9" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T8.1.4.9.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T8.1.4.10" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T8.1.4.10.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A3.T8.1.4.11" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T8.1.4.11.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T8.1.4.12" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T8.1.4.12.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_t" id="A3.T8.1.4.13" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T8.1.4.13.1" style="color:#C8C8C8;">0.00</span></td>
</tr>
<tr class="ltx_tr" id="A3.T8.1.5">
<td class="ltx_td ltx_align_left ltx_border_r" id="A3.T8.1.5.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">hunyuan-t1</td>
<td class="ltx_td ltx_align_center" id="A3.T8.1.5.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">100.00</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T8.1.5.3" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T8.1.5.3.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_align_center" id="A3.T8.1.5.4" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T8.1.5.4.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_align_center" id="A3.T8.1.5.5" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T8.1.5.5.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_align_center" id="A3.T8.1.5.6" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T8.1.5.6.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_align_center" id="A3.T8.1.5.7" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T8.1.5.7.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_align_center" id="A3.T8.1.5.8" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T8.1.5.8.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_align_center" id="A3.T8.1.5.9" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T8.1.5.9.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_align_center" id="A3.T8.1.5.10" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T8.1.5.10.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T8.1.5.11" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T8.1.5.11.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_align_center" id="A3.T8.1.5.12" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T8.1.5.12.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="A3.T8.1.5.13" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T8.1.5.13.1" style="color:#C8C8C8;">0.00</span></td>
</tr>
<tr class="ltx_tr" id="A3.T8.1.6">
<td class="ltx_td ltx_align_left ltx_border_r" id="A3.T8.1.6.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">Sky-T1-32B</td>
<td class="ltx_td ltx_align_center" id="A3.T8.1.6.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">95.26</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T8.1.6.3" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T8.1.6.3.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_align_center" id="A3.T8.1.6.4" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.62</td>
<td class="ltx_td ltx_align_center" id="A3.T8.1.6.5" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.09</td>
<td class="ltx_td ltx_align_center" id="A3.T8.1.6.6" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.19</td>
<td class="ltx_td ltx_align_center" id="A3.T8.1.6.7" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T8.1.6.7.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_align_center" id="A3.T8.1.6.8" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.28</td>
<td class="ltx_td ltx_align_center" id="A3.T8.1.6.9" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T8.1.6.9.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_align_center" id="A3.T8.1.6.10" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T8.1.6.10.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T8.1.6.11" style="padding-top:0.5pt;padding-bottom:0.5pt;">3.03</td>
<td class="ltx_td ltx_align_center" id="A3.T8.1.6.12" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T8.1.6.12.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="A3.T8.1.6.13" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.52</td>
</tr>
<tr class="ltx_tr" id="A3.T8.1.7">
<td class="ltx_td ltx_align_left ltx_border_r" id="A3.T8.1.7.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">DS-R1</td>
<td class="ltx_td ltx_align_center" id="A3.T8.1.7.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">100.00</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T8.1.7.3" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T8.1.7.3.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_align_center" id="A3.T8.1.7.4" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T8.1.7.4.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_align_center" id="A3.T8.1.7.5" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T8.1.7.5.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_align_center" id="A3.T8.1.7.6" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T8.1.7.6.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_align_center" id="A3.T8.1.7.7" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T8.1.7.7.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_align_center" id="A3.T8.1.7.8" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T8.1.7.8.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_align_center" id="A3.T8.1.7.9" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T8.1.7.9.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_align_center" id="A3.T8.1.7.10" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T8.1.7.10.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T8.1.7.11" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T8.1.7.11.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_align_center" id="A3.T8.1.7.12" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T8.1.7.12.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="A3.T8.1.7.13" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T8.1.7.13.1" style="color:#C8C8C8;">0.00</span></td>
</tr>
<tr class="ltx_tr" id="A3.T8.1.8">
<td class="ltx_td ltx_align_left ltx_border_r" id="A3.T8.1.8.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">DS-R1-70B</td>
<td class="ltx_td ltx_align_center" id="A3.T8.1.8.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">99.91</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T8.1.8.3" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T8.1.8.3.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_align_center" id="A3.T8.1.8.4" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.09</td>
<td class="ltx_td ltx_align_center" id="A3.T8.1.8.5" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T8.1.8.5.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_align_center" id="A3.T8.1.8.6" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T8.1.8.6.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_align_center" id="A3.T8.1.8.7" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T8.1.8.7.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_align_center" id="A3.T8.1.8.8" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T8.1.8.8.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_align_center" id="A3.T8.1.8.9" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T8.1.8.9.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_align_center" id="A3.T8.1.8.10" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T8.1.8.10.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T8.1.8.11" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T8.1.8.11.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_align_center" id="A3.T8.1.8.12" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T8.1.8.12.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="A3.T8.1.8.13" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T8.1.8.13.1" style="color:#C8C8C8;">0.00</span></td>
</tr>
<tr class="ltx_tr" id="A3.T8.1.9">
<td class="ltx_td ltx_align_left ltx_border_r" id="A3.T8.1.9.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">DS-R1-32B</td>
<td class="ltx_td ltx_align_center" id="A3.T8.1.9.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">100.00</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T8.1.9.3" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T8.1.9.3.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_align_center" id="A3.T8.1.9.4" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T8.1.9.4.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_align_center" id="A3.T8.1.9.5" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T8.1.9.5.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_align_center" id="A3.T8.1.9.6" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T8.1.9.6.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_align_center" id="A3.T8.1.9.7" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T8.1.9.7.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_align_center" id="A3.T8.1.9.8" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T8.1.9.8.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_align_center" id="A3.T8.1.9.9" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T8.1.9.9.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_align_center" id="A3.T8.1.9.10" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T8.1.9.10.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T8.1.9.11" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T8.1.9.11.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_align_center" id="A3.T8.1.9.12" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T8.1.9.12.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="A3.T8.1.9.13" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T8.1.9.13.1" style="color:#C8C8C8;">0.00</span></td>
</tr>
<tr class="ltx_tr" id="A3.T8.1.10">
<td class="ltx_td ltx_align_left ltx_border_r" id="A3.T8.1.10.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">DS-R1-14B</td>
<td class="ltx_td ltx_align_center" id="A3.T8.1.10.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">100.00</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T8.1.10.3" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T8.1.10.3.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_align_center" id="A3.T8.1.10.4" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T8.1.10.4.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_align_center" id="A3.T8.1.10.5" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T8.1.10.5.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_align_center" id="A3.T8.1.10.6" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T8.1.10.6.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_align_center" id="A3.T8.1.10.7" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T8.1.10.7.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_align_center" id="A3.T8.1.10.8" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T8.1.10.8.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_align_center" id="A3.T8.1.10.9" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T8.1.10.9.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_align_center" id="A3.T8.1.10.10" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T8.1.10.10.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T8.1.10.11" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T8.1.10.11.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_align_center" id="A3.T8.1.10.12" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T8.1.10.12.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="A3.T8.1.10.13" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T8.1.10.13.1" style="color:#C8C8C8;">0.00</span></td>
</tr>
<tr class="ltx_tr" id="A3.T8.1.11">
<td class="ltx_td ltx_align_left ltx_border_r" id="A3.T8.1.11.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">DS-R1-8B</td>
<td class="ltx_td ltx_align_center" id="A3.T8.1.11.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">99.53</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T8.1.11.3" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T8.1.11.3.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_align_center" id="A3.T8.1.11.4" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T8.1.11.4.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_align_center" id="A3.T8.1.11.5" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T8.1.11.5.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_align_center" id="A3.T8.1.11.6" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T8.1.11.6.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_align_center" id="A3.T8.1.11.7" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T8.1.11.7.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_align_center" id="A3.T8.1.11.8" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T8.1.11.8.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_align_center" id="A3.T8.1.11.9" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T8.1.11.9.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_align_center" id="A3.T8.1.11.10" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T8.1.11.10.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T8.1.11.11" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.24</td>
<td class="ltx_td ltx_align_center" id="A3.T8.1.11.12" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T8.1.11.12.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="A3.T8.1.11.13" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.24</td>
</tr>
<tr class="ltx_tr" id="A3.T8.1.12">
<td class="ltx_td ltx_align_left ltx_border_r" id="A3.T8.1.12.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">DS-R1-7B</td>
<td class="ltx_td ltx_align_center" id="A3.T8.1.12.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">99.24</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T8.1.12.3" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T8.1.12.3.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_align_center" id="A3.T8.1.12.4" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T8.1.12.4.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_align_center" id="A3.T8.1.12.5" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T8.1.12.5.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_align_center" id="A3.T8.1.12.6" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T8.1.12.6.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_align_center" id="A3.T8.1.12.7" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T8.1.12.7.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_align_center" id="A3.T8.1.12.8" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T8.1.12.8.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_align_center" id="A3.T8.1.12.9" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T8.1.12.9.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_align_center" id="A3.T8.1.12.10" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T8.1.12.10.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T8.1.12.11" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T8.1.12.11.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_align_center" id="A3.T8.1.12.12" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T8.1.12.12.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="A3.T8.1.12.13" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.76</td>
</tr>
<tr class="ltx_tr" id="A3.T8.1.13">
<td class="ltx_td ltx_align_left ltx_border_r" id="A3.T8.1.13.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">DS-R1-1.5B</td>
<td class="ltx_td ltx_align_center" id="A3.T8.1.13.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">97.58</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T8.1.13.3" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T8.1.13.3.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_align_center" id="A3.T8.1.13.4" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T8.1.13.4.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_align_center" id="A3.T8.1.13.5" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T8.1.13.5.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_align_center" id="A3.T8.1.13.6" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T8.1.13.6.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_align_center" id="A3.T8.1.13.7" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T8.1.13.7.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_align_center" id="A3.T8.1.13.8" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T8.1.13.8.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_align_center" id="A3.T8.1.13.9" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T8.1.13.9.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_align_center" id="A3.T8.1.13.10" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T8.1.13.10.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T8.1.13.11" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T8.1.13.11.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_align_center" id="A3.T8.1.13.12" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T8.1.13.12.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="A3.T8.1.13.13" style="padding-top:0.5pt;padding-bottom:0.5pt;">2.42</td>
</tr>
<tr class="ltx_tr" id="A3.T8.1.14">
<td class="ltx_td ltx_align_left ltx_border_r" id="A3.T8.1.14.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">Nemotron-49B</td>
<td class="ltx_td ltx_align_center" id="A3.T8.1.14.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">66.07</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T8.1.14.3" style="padding-top:0.5pt;padding-bottom:0.5pt;">33.93</td>
<td class="ltx_td ltx_align_center" id="A3.T8.1.14.4" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T8.1.14.4.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_align_center" id="A3.T8.1.14.5" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T8.1.14.5.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_align_center" id="A3.T8.1.14.6" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T8.1.14.6.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_align_center" id="A3.T8.1.14.7" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T8.1.14.7.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_align_center" id="A3.T8.1.14.8" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T8.1.14.8.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_align_center" id="A3.T8.1.14.9" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T8.1.14.9.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_align_center" id="A3.T8.1.14.10" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T8.1.14.10.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T8.1.14.11" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T8.1.14.11.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_align_center" id="A3.T8.1.14.12" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T8.1.14.12.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="A3.T8.1.14.13" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T8.1.14.13.1" style="color:#C8C8C8;">0.00</span></td>
</tr>
<tr class="ltx_tr" id="A3.T8.1.15">
<td class="ltx_td ltx_align_left ltx_border_r" id="A3.T8.1.15.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">Nemotron-8B</td>
<td class="ltx_td ltx_align_center" id="A3.T8.1.15.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">58.06</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T8.1.15.3" style="padding-top:0.5pt;padding-bottom:0.5pt;">26.26</td>
<td class="ltx_td ltx_align_center" id="A3.T8.1.15.4" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T8.1.15.4.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_align_center" id="A3.T8.1.15.5" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T8.1.15.5.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_align_center" id="A3.T8.1.15.6" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T8.1.15.6.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_align_center" id="A3.T8.1.15.7" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.09</td>
<td class="ltx_td ltx_align_center" id="A3.T8.1.15.8" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T8.1.15.8.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_align_center" id="A3.T8.1.15.9" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T8.1.15.9.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_align_center" id="A3.T8.1.15.10" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T8.1.15.10.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T8.1.15.11" style="padding-top:0.5pt;padding-bottom:0.5pt;">15.02</td>
<td class="ltx_td ltx_align_center" id="A3.T8.1.15.12" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T8.1.15.12.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="A3.T8.1.15.13" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.57</td>
</tr>
<tr class="ltx_tr" id="A3.T8.1.16">
<td class="ltx_td ltx_align_left ltx_border_r" id="A3.T8.1.16.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">L-R1-32B</td>
<td class="ltx_td ltx_align_center" id="A3.T8.1.16.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">95.07</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T8.1.16.3" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T8.1.16.3.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_align_center" id="A3.T8.1.16.4" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T8.1.16.4.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_align_center" id="A3.T8.1.16.5" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T8.1.16.5.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_align_center" id="A3.T8.1.16.6" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T8.1.16.6.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_align_center" id="A3.T8.1.16.7" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T8.1.16.7.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_align_center" id="A3.T8.1.16.8" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.81</td>
<td class="ltx_td ltx_align_center" id="A3.T8.1.16.9" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T8.1.16.9.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_align_center" id="A3.T8.1.16.10" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T8.1.16.10.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T8.1.16.11" style="padding-top:0.5pt;padding-bottom:0.5pt;">3.03</td>
<td class="ltx_td ltx_align_center" id="A3.T8.1.16.12" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T8.1.16.12.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="A3.T8.1.16.13" style="padding-top:0.5pt;padding-bottom:0.5pt;">1.09</td>
</tr>
<tr class="ltx_tr" id="A3.T8.1.17">
<td class="ltx_td ltx_align_left ltx_border_r" id="A3.T8.1.17.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">L-R1-32B-DS</td>
<td class="ltx_td ltx_align_center" id="A3.T8.1.17.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">99.81</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T8.1.17.3" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T8.1.17.3.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_align_center" id="A3.T8.1.17.4" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T8.1.17.4.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_align_center" id="A3.T8.1.17.5" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T8.1.17.5.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_align_center" id="A3.T8.1.17.6" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T8.1.17.6.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_align_center" id="A3.T8.1.17.7" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T8.1.17.7.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_align_center" id="A3.T8.1.17.8" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T8.1.17.8.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_align_center" id="A3.T8.1.17.9" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T8.1.17.9.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_align_center" id="A3.T8.1.17.10" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T8.1.17.10.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T8.1.17.11" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T8.1.17.11.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_align_center" id="A3.T8.1.17.12" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T8.1.17.12.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="A3.T8.1.17.13" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.19</td>
</tr>
<tr class="ltx_tr" id="A3.T8.1.18">
<td class="ltx_td ltx_align_left ltx_border_r" id="A3.T8.1.18.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">L-R1-14B-DS</td>
<td class="ltx_td ltx_align_center" id="A3.T8.1.18.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">99.19</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T8.1.18.3" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T8.1.18.3.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_align_center" id="A3.T8.1.18.4" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T8.1.18.4.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_align_center" id="A3.T8.1.18.5" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T8.1.18.5.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_align_center" id="A3.T8.1.18.6" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T8.1.18.6.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_align_center" id="A3.T8.1.18.7" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T8.1.18.7.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_align_center" id="A3.T8.1.18.8" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T8.1.18.8.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_align_center" id="A3.T8.1.18.9" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T8.1.18.9.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_align_center" id="A3.T8.1.18.10" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T8.1.18.10.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T8.1.18.11" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T8.1.18.11.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_align_center" id="A3.T8.1.18.12" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T8.1.18.12.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="A3.T8.1.18.13" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.81</td>
</tr>
<tr class="ltx_tr" id="A3.T8.1.19">
<td class="ltx_td ltx_align_left ltx_border_r" id="A3.T8.1.19.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">L-R1-7B-DS</td>
<td class="ltx_td ltx_align_center" id="A3.T8.1.19.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">99.67</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T8.1.19.3" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T8.1.19.3.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_align_center" id="A3.T8.1.19.4" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.05</td>
<td class="ltx_td ltx_align_center" id="A3.T8.1.19.5" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.05</td>
<td class="ltx_td ltx_align_center" id="A3.T8.1.19.6" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T8.1.19.6.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_align_center" id="A3.T8.1.19.7" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T8.1.19.7.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_align_center" id="A3.T8.1.19.8" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T8.1.19.8.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_align_center" id="A3.T8.1.19.9" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T8.1.19.9.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_align_center" id="A3.T8.1.19.10" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T8.1.19.10.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T8.1.19.11" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T8.1.19.11.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_align_center" id="A3.T8.1.19.12" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T8.1.19.12.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="A3.T8.1.19.13" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.24</td>
</tr>
<tr class="ltx_tr" id="A3.T8.1.20">
<td class="ltx_td ltx_align_left ltx_border_r" id="A3.T8.1.20.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">s1.1-32B</td>
<td class="ltx_td ltx_align_center" id="A3.T8.1.20.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">99.53</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T8.1.20.3" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T8.1.20.3.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_align_center" id="A3.T8.1.20.4" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T8.1.20.4.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_align_center" id="A3.T8.1.20.5" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.05</td>
<td class="ltx_td ltx_align_center" id="A3.T8.1.20.6" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T8.1.20.6.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_align_center" id="A3.T8.1.20.7" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T8.1.20.7.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_align_center" id="A3.T8.1.20.8" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T8.1.20.8.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_align_center" id="A3.T8.1.20.9" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T8.1.20.9.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_align_center" id="A3.T8.1.20.10" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T8.1.20.10.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T8.1.20.11" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T8.1.20.11.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_align_center" id="A3.T8.1.20.12" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T8.1.20.12.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="A3.T8.1.20.13" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.43</td>
</tr>
<tr class="ltx_tr" id="A3.T8.1.21">
<td class="ltx_td ltx_align_left ltx_border_r" id="A3.T8.1.21.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">s1.1-14B</td>
<td class="ltx_td ltx_align_center" id="A3.T8.1.21.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">97.39</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T8.1.21.3" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T8.1.21.3.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_align_center" id="A3.T8.1.21.4" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T8.1.21.4.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_align_center" id="A3.T8.1.21.5" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.14</td>
<td class="ltx_td ltx_align_center" id="A3.T8.1.21.6" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T8.1.21.6.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_align_center" id="A3.T8.1.21.7" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T8.1.21.7.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_align_center" id="A3.T8.1.21.8" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.24</td>
<td class="ltx_td ltx_align_center" id="A3.T8.1.21.9" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T8.1.21.9.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_align_center" id="A3.T8.1.21.10" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T8.1.21.10.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T8.1.21.11" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T8.1.21.11.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_align_center" id="A3.T8.1.21.12" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T8.1.21.12.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="A3.T8.1.21.13" style="padding-top:0.5pt;padding-bottom:0.5pt;">2.23</td>
</tr>
<tr class="ltx_tr" id="A3.T8.1.22">
<td class="ltx_td ltx_align_left ltx_border_r" id="A3.T8.1.22.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">s1.1-7B</td>
<td class="ltx_td ltx_align_center" id="A3.T8.1.22.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">88.96</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T8.1.22.3" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T8.1.22.3.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_align_center" id="A3.T8.1.22.4" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T8.1.22.4.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_align_center" id="A3.T8.1.22.5" style="padding-top:0.5pt;padding-bottom:0.5pt;">7.96</td>
<td class="ltx_td ltx_align_center" id="A3.T8.1.22.6" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.09</td>
<td class="ltx_td ltx_align_center" id="A3.T8.1.22.7" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T8.1.22.7.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_align_center" id="A3.T8.1.22.8" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T8.1.22.8.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_align_center" id="A3.T8.1.22.9" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T8.1.22.9.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_align_center" id="A3.T8.1.22.10" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T8.1.22.10.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T8.1.22.11" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.09</td>
<td class="ltx_td ltx_align_center" id="A3.T8.1.22.12" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T8.1.22.12.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="A3.T8.1.22.13" style="padding-top:0.5pt;padding-bottom:0.5pt;">2.89</td>
</tr>
<tr class="ltx_tr" id="A3.T8.1.23">
<td class="ltx_td ltx_align_left ltx_border_r" id="A3.T8.1.23.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">EXAONE-32B</td>
<td class="ltx_td ltx_align_center" id="A3.T8.1.23.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">67.39</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T8.1.23.3" style="padding-top:0.5pt;padding-bottom:0.5pt;">32.42</td>
<td class="ltx_td ltx_align_center" id="A3.T8.1.23.4" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T8.1.23.4.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_align_center" id="A3.T8.1.23.5" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T8.1.23.5.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_align_center" id="A3.T8.1.23.6" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T8.1.23.6.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_align_center" id="A3.T8.1.23.7" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T8.1.23.7.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_align_center" id="A3.T8.1.23.8" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T8.1.23.8.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_align_center" id="A3.T8.1.23.9" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T8.1.23.9.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_align_center" id="A3.T8.1.23.10" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T8.1.23.10.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T8.1.23.11" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T8.1.23.11.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_align_center" id="A3.T8.1.23.12" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T8.1.23.12.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="A3.T8.1.23.13" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.19</td>
</tr>
<tr class="ltx_tr" id="A3.T8.1.24">
<td class="ltx_td ltx_align_left ltx_border_r" id="A3.T8.1.24.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">EXAONE-7.8B</td>
<td class="ltx_td ltx_align_center" id="A3.T8.1.24.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">65.83</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T8.1.24.3" style="padding-top:0.5pt;padding-bottom:0.5pt;">32.23</td>
<td class="ltx_td ltx_align_center" id="A3.T8.1.24.4" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T8.1.24.4.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_align_center" id="A3.T8.1.24.5" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T8.1.24.5.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_align_center" id="A3.T8.1.24.6" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.05</td>
<td class="ltx_td ltx_align_center" id="A3.T8.1.24.7" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.47</td>
<td class="ltx_td ltx_align_center" id="A3.T8.1.24.8" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T8.1.24.8.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_align_center" id="A3.T8.1.24.9" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T8.1.24.9.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_align_center" id="A3.T8.1.24.10" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T8.1.24.10.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T8.1.24.11" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.14</td>
<td class="ltx_td ltx_align_center" id="A3.T8.1.24.12" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T8.1.24.12.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="A3.T8.1.24.13" style="padding-top:0.5pt;padding-bottom:0.5pt;">1.28</td>
</tr>
<tr class="ltx_tr" id="A3.T8.1.25">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_r" id="A3.T8.1.25.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">EXAONE-2.4B</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T8.1.25.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">81.42</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="A3.T8.1.25.3" style="padding-top:0.5pt;padding-bottom:0.5pt;">15.83</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T8.1.25.4" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T8.1.25.4.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T8.1.25.5" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.09</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T8.1.25.6" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T8.1.25.6.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T8.1.25.7" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.05</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T8.1.25.8" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T8.1.25.8.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T8.1.25.9" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T8.1.25.9.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T8.1.25.10" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T8.1.25.10.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="A3.T8.1.25.11" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.05</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T8.1.25.12" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T8.1.25.12.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_bb" id="A3.T8.1.25.13" style="padding-top:0.5pt;padding-bottom:0.5pt;">2.56</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the percentage of different response formats generated by various Large Reasoning Models (LRMs) under the top-p sampling method.  Each row represents a specific LRM, and each column represents a category of response format, indicating the prevalence of correctly formatted responses (Strict Format), less strictly formatted responses (Loose Format), and various error formats. This data reflects the models' adherence to expected output structures during the generation process.
> <details>
> <summary>read the caption</summary>
> Table 8: Format types rates in top-p sampling setting.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="A3.T9.1">
<tr class="ltx_tr" id="A3.T9.1.1">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_tt" id="A3.T9.1.1.1" rowspan="3" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T9.1.1.1.1" style="position:relative; bottom:-0.2pt;">Model</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" colspan="10" id="A3.T9.1.1.2" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text ltx_font_bold" id="A3.T9.1.1.2.1" style="position:relative; bottom:-0.2pt;">Loose Format</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="A3.T9.1.1.3" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text ltx_font_bold" id="A3.T9.1.1.3.1" style="position:relative; bottom:-0.2pt;">Error Format</span></td>
</tr>
<tr class="ltx_tr" id="A3.T9.1.2">
<td class="ltx_td ltx_align_center ltx_border_r" colspan="2" id="A3.T9.1.2.1" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text ltx_font_bold" id="A3.T9.1.2.1.1" style="position:relative; bottom:0.1pt;">Strict Format</span></td>
<td class="ltx_td" id="A3.T9.1.2.2" style="padding-top:0.5pt;padding-bottom:0.5pt;"></td>
<td class="ltx_td" id="A3.T9.1.2.3" style="padding-top:0.5pt;padding-bottom:0.5pt;"></td>
<td class="ltx_td" id="A3.T9.1.2.4" style="padding-top:0.5pt;padding-bottom:0.5pt;"></td>
<td class="ltx_td" id="A3.T9.1.2.5" style="padding-top:0.5pt;padding-bottom:0.5pt;"></td>
<td class="ltx_td" id="A3.T9.1.2.6" style="padding-top:0.5pt;padding-bottom:0.5pt;"></td>
<td class="ltx_td" id="A3.T9.1.2.7" style="padding-top:0.5pt;padding-bottom:0.5pt;"></td>
<td class="ltx_td" id="A3.T9.1.2.8" style="padding-top:0.5pt;padding-bottom:0.5pt;"></td>
<td class="ltx_td ltx_border_r" id="A3.T9.1.2.9" style="padding-top:0.5pt;padding-bottom:0.5pt;"></td>
<td class="ltx_td" id="A3.T9.1.2.10" style="padding-top:0.5pt;padding-bottom:0.5pt;"></td>
<td class="ltx_td ltx_nopad_r" id="A3.T9.1.2.11" style="padding-top:0.5pt;padding-bottom:0.5pt;"></td>
</tr>
<tr class="ltx_tr" id="A3.T9.1.3">
<td class="ltx_td ltx_align_center" id="A3.T9.1.3.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">100</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T9.1.3.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">101</td>
<td class="ltx_td ltx_align_center" id="A3.T9.1.3.3" style="padding-top:0.5pt;padding-bottom:0.5pt;">200</td>
<td class="ltx_td ltx_align_center" id="A3.T9.1.3.4" style="padding-top:0.5pt;padding-bottom:0.5pt;">201</td>
<td class="ltx_td ltx_align_center" id="A3.T9.1.3.5" style="padding-top:0.5pt;padding-bottom:0.5pt;">202</td>
<td class="ltx_td ltx_align_center" id="A3.T9.1.3.6" style="padding-top:0.5pt;padding-bottom:0.5pt;">203</td>
<td class="ltx_td ltx_align_center" id="A3.T9.1.3.7" style="padding-top:0.5pt;padding-bottom:0.5pt;">204</td>
<td class="ltx_td ltx_align_center" id="A3.T9.1.3.8" style="padding-top:0.5pt;padding-bottom:0.5pt;">205</td>
<td class="ltx_td ltx_align_center" id="A3.T9.1.3.9" style="padding-top:0.5pt;padding-bottom:0.5pt;">206</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T9.1.3.10" style="padding-top:0.5pt;padding-bottom:0.5pt;">207</td>
<td class="ltx_td ltx_align_center" id="A3.T9.1.3.11" style="padding-top:0.5pt;padding-bottom:0.5pt;">300</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="A3.T9.1.3.12" style="padding-top:0.5pt;padding-bottom:0.5pt;">301</td>
</tr>
<tr class="ltx_tr" id="A3.T9.1.4">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A3.T9.1.4.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">QwQ-32B</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T9.1.4.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">100.00</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A3.T9.1.4.3" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T9.1.4.3.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T9.1.4.4" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T9.1.4.4.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T9.1.4.5" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T9.1.4.5.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T9.1.4.6" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T9.1.4.6.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T9.1.4.7" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T9.1.4.7.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T9.1.4.8" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T9.1.4.8.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T9.1.4.9" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T9.1.4.9.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T9.1.4.10" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T9.1.4.10.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A3.T9.1.4.11" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T9.1.4.11.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T9.1.4.12" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T9.1.4.12.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_t" id="A3.T9.1.4.13" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T9.1.4.13.1" style="color:#C8C8C8;">0.00</span></td>
</tr>
<tr class="ltx_tr" id="A3.T9.1.5">
<td class="ltx_td ltx_align_left ltx_border_r" id="A3.T9.1.5.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">hunyuan-t1</td>
<td class="ltx_td ltx_align_center" id="A3.T9.1.5.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">100.00</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T9.1.5.3" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T9.1.5.3.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_align_center" id="A3.T9.1.5.4" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T9.1.5.4.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_align_center" id="A3.T9.1.5.5" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T9.1.5.5.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_align_center" id="A3.T9.1.5.6" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T9.1.5.6.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_align_center" id="A3.T9.1.5.7" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T9.1.5.7.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_align_center" id="A3.T9.1.5.8" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T9.1.5.8.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_align_center" id="A3.T9.1.5.9" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T9.1.5.9.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_align_center" id="A3.T9.1.5.10" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T9.1.5.10.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T9.1.5.11" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T9.1.5.11.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_align_center" id="A3.T9.1.5.12" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T9.1.5.12.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="A3.T9.1.5.13" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T9.1.5.13.1" style="color:#C8C8C8;">0.00</span></td>
</tr>
<tr class="ltx_tr" id="A3.T9.1.6">
<td class="ltx_td ltx_align_left ltx_border_r" id="A3.T9.1.6.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">Sky-T1-32B</td>
<td class="ltx_td ltx_align_center" id="A3.T9.1.6.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">99.29</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T9.1.6.3" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T9.1.6.3.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_align_center" id="A3.T9.1.6.4" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T9.1.6.4.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_align_center" id="A3.T9.1.6.5" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T9.1.6.5.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_align_center" id="A3.T9.1.6.6" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T9.1.6.6.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_align_center" id="A3.T9.1.6.7" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T9.1.6.7.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_align_center" id="A3.T9.1.6.8" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T9.1.6.8.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_align_center" id="A3.T9.1.6.9" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T9.1.6.9.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_align_center" id="A3.T9.1.6.10" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T9.1.6.10.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T9.1.6.11" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.47</td>
<td class="ltx_td ltx_align_center" id="A3.T9.1.6.12" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T9.1.6.12.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="A3.T9.1.6.13" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.24</td>
</tr>
<tr class="ltx_tr" id="A3.T9.1.7">
<td class="ltx_td ltx_align_left ltx_border_r" id="A3.T9.1.7.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">DS-R1</td>
<td class="ltx_td ltx_align_center" id="A3.T9.1.7.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">100.00</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T9.1.7.3" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T9.1.7.3.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_align_center" id="A3.T9.1.7.4" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T9.1.7.4.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_align_center" id="A3.T9.1.7.5" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T9.1.7.5.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_align_center" id="A3.T9.1.7.6" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T9.1.7.6.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_align_center" id="A3.T9.1.7.7" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T9.1.7.7.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_align_center" id="A3.T9.1.7.8" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T9.1.7.8.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_align_center" id="A3.T9.1.7.9" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T9.1.7.9.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_align_center" id="A3.T9.1.7.10" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T9.1.7.10.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T9.1.7.11" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T9.1.7.11.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_align_center" id="A3.T9.1.7.12" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T9.1.7.12.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="A3.T9.1.7.13" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T9.1.7.13.1" style="color:#C8C8C8;">0.00</span></td>
</tr>
<tr class="ltx_tr" id="A3.T9.1.8">
<td class="ltx_td ltx_align_left ltx_border_r" id="A3.T9.1.8.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">DS-R1-70B</td>
<td class="ltx_td ltx_align_center" id="A3.T9.1.8.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">100.00</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T9.1.8.3" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T9.1.8.3.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_align_center" id="A3.T9.1.8.4" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T9.1.8.4.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_align_center" id="A3.T9.1.8.5" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T9.1.8.5.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_align_center" id="A3.T9.1.8.6" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T9.1.8.6.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_align_center" id="A3.T9.1.8.7" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T9.1.8.7.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_align_center" id="A3.T9.1.8.8" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T9.1.8.8.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_align_center" id="A3.T9.1.8.9" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T9.1.8.9.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_align_center" id="A3.T9.1.8.10" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T9.1.8.10.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T9.1.8.11" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T9.1.8.11.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_align_center" id="A3.T9.1.8.12" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T9.1.8.12.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="A3.T9.1.8.13" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T9.1.8.13.1" style="color:#C8C8C8;">0.00</span></td>
</tr>
<tr class="ltx_tr" id="A3.T9.1.9">
<td class="ltx_td ltx_align_left ltx_border_r" id="A3.T9.1.9.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">DS-R1-32B</td>
<td class="ltx_td ltx_align_center" id="A3.T9.1.9.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">100.00</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T9.1.9.3" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T9.1.9.3.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_align_center" id="A3.T9.1.9.4" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T9.1.9.4.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_align_center" id="A3.T9.1.9.5" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T9.1.9.5.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_align_center" id="A3.T9.1.9.6" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T9.1.9.6.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_align_center" id="A3.T9.1.9.7" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T9.1.9.7.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_align_center" id="A3.T9.1.9.8" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T9.1.9.8.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_align_center" id="A3.T9.1.9.9" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T9.1.9.9.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_align_center" id="A3.T9.1.9.10" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T9.1.9.10.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T9.1.9.11" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T9.1.9.11.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_align_center" id="A3.T9.1.9.12" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T9.1.9.12.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="A3.T9.1.9.13" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T9.1.9.13.1" style="color:#C8C8C8;">0.00</span></td>
</tr>
<tr class="ltx_tr" id="A3.T9.1.10">
<td class="ltx_td ltx_align_left ltx_border_r" id="A3.T9.1.10.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">DS-R1-14B</td>
<td class="ltx_td ltx_align_center" id="A3.T9.1.10.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">99.76</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T9.1.10.3" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T9.1.10.3.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_align_center" id="A3.T9.1.10.4" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T9.1.10.4.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_align_center" id="A3.T9.1.10.5" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T9.1.10.5.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_align_center" id="A3.T9.1.10.6" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T9.1.10.6.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_align_center" id="A3.T9.1.10.7" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T9.1.10.7.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_align_center" id="A3.T9.1.10.8" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T9.1.10.8.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_align_center" id="A3.T9.1.10.9" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T9.1.10.9.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_align_center" id="A3.T9.1.10.10" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T9.1.10.10.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T9.1.10.11" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T9.1.10.11.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_align_center" id="A3.T9.1.10.12" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T9.1.10.12.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="A3.T9.1.10.13" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.24</td>
</tr>
<tr class="ltx_tr" id="A3.T9.1.11">
<td class="ltx_td ltx_align_left ltx_border_r" id="A3.T9.1.11.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">DS-R1-8B</td>
<td class="ltx_td ltx_align_center" id="A3.T9.1.11.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">99.53</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T9.1.11.3" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T9.1.11.3.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_align_center" id="A3.T9.1.11.4" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T9.1.11.4.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_align_center" id="A3.T9.1.11.5" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T9.1.11.5.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_align_center" id="A3.T9.1.11.6" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T9.1.11.6.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_align_center" id="A3.T9.1.11.7" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T9.1.11.7.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_align_center" id="A3.T9.1.11.8" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T9.1.11.8.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_align_center" id="A3.T9.1.11.9" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T9.1.11.9.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_align_center" id="A3.T9.1.11.10" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T9.1.11.10.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T9.1.11.11" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.24</td>
<td class="ltx_td ltx_align_center" id="A3.T9.1.11.12" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T9.1.11.12.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="A3.T9.1.11.13" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.24</td>
</tr>
<tr class="ltx_tr" id="A3.T9.1.12">
<td class="ltx_td ltx_align_left ltx_border_r" id="A3.T9.1.12.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">DS-R1-7B</td>
<td class="ltx_td ltx_align_center" id="A3.T9.1.12.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">97.87</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T9.1.12.3" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T9.1.12.3.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_align_center" id="A3.T9.1.12.4" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T9.1.12.4.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_align_center" id="A3.T9.1.12.5" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T9.1.12.5.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_align_center" id="A3.T9.1.12.6" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T9.1.12.6.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_align_center" id="A3.T9.1.12.7" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T9.1.12.7.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_align_center" id="A3.T9.1.12.8" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T9.1.12.8.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_align_center" id="A3.T9.1.12.9" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T9.1.12.9.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_align_center" id="A3.T9.1.12.10" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T9.1.12.10.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T9.1.12.11" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T9.1.12.11.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_align_center" id="A3.T9.1.12.12" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T9.1.12.12.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="A3.T9.1.12.13" style="padding-top:0.5pt;padding-bottom:0.5pt;">2.13</td>
</tr>
<tr class="ltx_tr" id="A3.T9.1.13">
<td class="ltx_td ltx_align_left ltx_border_r" id="A3.T9.1.13.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">DS-R1-1.5B</td>
<td class="ltx_td ltx_align_center" id="A3.T9.1.13.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">91.94</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T9.1.13.3" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T9.1.13.3.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_align_center" id="A3.T9.1.13.4" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T9.1.13.4.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_align_center" id="A3.T9.1.13.5" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T9.1.13.5.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_align_center" id="A3.T9.1.13.6" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T9.1.13.6.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_align_center" id="A3.T9.1.13.7" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T9.1.13.7.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_align_center" id="A3.T9.1.13.8" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T9.1.13.8.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_align_center" id="A3.T9.1.13.9" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T9.1.13.9.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_align_center" id="A3.T9.1.13.10" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T9.1.13.10.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T9.1.13.11" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T9.1.13.11.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_align_center" id="A3.T9.1.13.12" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T9.1.13.12.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="A3.T9.1.13.13" style="padding-top:0.5pt;padding-bottom:0.5pt;">8.06</td>
</tr>
<tr class="ltx_tr" id="A3.T9.1.14">
<td class="ltx_td ltx_align_left ltx_border_r" id="A3.T9.1.14.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">Nemotron-49B</td>
<td class="ltx_td ltx_align_center" id="A3.T9.1.14.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">60.90</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T9.1.14.3" style="padding-top:0.5pt;padding-bottom:0.5pt;">39.10</td>
<td class="ltx_td ltx_align_center" id="A3.T9.1.14.4" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T9.1.14.4.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_align_center" id="A3.T9.1.14.5" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T9.1.14.5.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_align_center" id="A3.T9.1.14.6" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T9.1.14.6.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_align_center" id="A3.T9.1.14.7" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T9.1.14.7.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_align_center" id="A3.T9.1.14.8" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T9.1.14.8.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_align_center" id="A3.T9.1.14.9" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T9.1.14.9.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_align_center" id="A3.T9.1.14.10" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T9.1.14.10.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T9.1.14.11" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T9.1.14.11.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_align_center" id="A3.T9.1.14.12" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T9.1.14.12.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="A3.T9.1.14.13" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T9.1.14.13.1" style="color:#C8C8C8;">0.00</span></td>
</tr>
<tr class="ltx_tr" id="A3.T9.1.15">
<td class="ltx_td ltx_align_left ltx_border_r" id="A3.T9.1.15.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">Nemotron-8B</td>
<td class="ltx_td ltx_align_center" id="A3.T9.1.15.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">55.21</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T9.1.15.3" style="padding-top:0.5pt;padding-bottom:0.5pt;">26.78</td>
<td class="ltx_td ltx_align_center" id="A3.T9.1.15.4" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T9.1.15.4.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_align_center" id="A3.T9.1.15.5" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T9.1.15.5.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_align_center" id="A3.T9.1.15.6" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T9.1.15.6.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_align_center" id="A3.T9.1.15.7" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T9.1.15.7.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_align_center" id="A3.T9.1.15.8" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T9.1.15.8.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_align_center" id="A3.T9.1.15.9" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T9.1.15.9.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_align_center" id="A3.T9.1.15.10" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T9.1.15.10.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T9.1.15.11" style="padding-top:0.5pt;padding-bottom:0.5pt;">16.35</td>
<td class="ltx_td ltx_align_center" id="A3.T9.1.15.12" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T9.1.15.12.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="A3.T9.1.15.13" style="padding-top:0.5pt;padding-bottom:0.5pt;">1.66</td>
</tr>
<tr class="ltx_tr" id="A3.T9.1.16">
<td class="ltx_td ltx_align_left ltx_border_r" id="A3.T9.1.16.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">L-R1-32B</td>
<td class="ltx_td ltx_align_center" id="A3.T9.1.16.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">85.55</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T9.1.16.3" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.24</td>
<td class="ltx_td ltx_align_center" id="A3.T9.1.16.4" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T9.1.16.4.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_align_center" id="A3.T9.1.16.5" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.24</td>
<td class="ltx_td ltx_align_center" id="A3.T9.1.16.6" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.71</td>
<td class="ltx_td ltx_align_center" id="A3.T9.1.16.7" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.24</td>
<td class="ltx_td ltx_align_center" id="A3.T9.1.16.8" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.95</td>
<td class="ltx_td ltx_align_center" id="A3.T9.1.16.9" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T9.1.16.9.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_align_center" id="A3.T9.1.16.10" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T9.1.16.10.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T9.1.16.11" style="padding-top:0.5pt;padding-bottom:0.5pt;">6.64</td>
<td class="ltx_td ltx_align_center" id="A3.T9.1.16.12" style="padding-top:0.5pt;padding-bottom:0.5pt;">2.61</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="A3.T9.1.16.13" style="padding-top:0.5pt;padding-bottom:0.5pt;">2.84</td>
</tr>
<tr class="ltx_tr" id="A3.T9.1.17">
<td class="ltx_td ltx_align_left ltx_border_r" id="A3.T9.1.17.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">L-R1-32B-DS</td>
<td class="ltx_td ltx_align_center" id="A3.T9.1.17.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">99.29</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T9.1.17.3" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T9.1.17.3.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_align_center" id="A3.T9.1.17.4" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T9.1.17.4.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_align_center" id="A3.T9.1.17.5" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T9.1.17.5.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_align_center" id="A3.T9.1.17.6" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T9.1.17.6.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_align_center" id="A3.T9.1.17.7" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T9.1.17.7.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_align_center" id="A3.T9.1.17.8" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T9.1.17.8.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_align_center" id="A3.T9.1.17.9" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T9.1.17.9.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_align_center" id="A3.T9.1.17.10" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T9.1.17.10.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T9.1.17.11" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T9.1.17.11.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_align_center" id="A3.T9.1.17.12" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T9.1.17.12.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="A3.T9.1.17.13" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.71</td>
</tr>
<tr class="ltx_tr" id="A3.T9.1.18">
<td class="ltx_td ltx_align_left ltx_border_r" id="A3.T9.1.18.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">L-R1-14B-DS</td>
<td class="ltx_td ltx_align_center" id="A3.T9.1.18.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">98.82</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T9.1.18.3" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T9.1.18.3.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_align_center" id="A3.T9.1.18.4" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T9.1.18.4.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_align_center" id="A3.T9.1.18.5" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T9.1.18.5.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_align_center" id="A3.T9.1.18.6" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T9.1.18.6.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_align_center" id="A3.T9.1.18.7" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T9.1.18.7.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_align_center" id="A3.T9.1.18.8" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T9.1.18.8.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_align_center" id="A3.T9.1.18.9" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T9.1.18.9.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_align_center" id="A3.T9.1.18.10" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T9.1.18.10.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T9.1.18.11" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T9.1.18.11.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_align_center" id="A3.T9.1.18.12" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T9.1.18.12.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="A3.T9.1.18.13" style="padding-top:0.5pt;padding-bottom:0.5pt;">1.18</td>
</tr>
<tr class="ltx_tr" id="A3.T9.1.19">
<td class="ltx_td ltx_align_left ltx_border_r" id="A3.T9.1.19.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">L-R1-7B-DS</td>
<td class="ltx_td ltx_align_center" id="A3.T9.1.19.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">98.82</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T9.1.19.3" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T9.1.19.3.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_align_center" id="A3.T9.1.19.4" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T9.1.19.4.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_align_center" id="A3.T9.1.19.5" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T9.1.19.5.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_align_center" id="A3.T9.1.19.6" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T9.1.19.6.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_align_center" id="A3.T9.1.19.7" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T9.1.19.7.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_align_center" id="A3.T9.1.19.8" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T9.1.19.8.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_align_center" id="A3.T9.1.19.9" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T9.1.19.9.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_align_center" id="A3.T9.1.19.10" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T9.1.19.10.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T9.1.19.11" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T9.1.19.11.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_align_center" id="A3.T9.1.19.12" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T9.1.19.12.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="A3.T9.1.19.13" style="padding-top:0.5pt;padding-bottom:0.5pt;">1.18</td>
</tr>
<tr class="ltx_tr" id="A3.T9.1.20">
<td class="ltx_td ltx_align_left ltx_border_r" id="A3.T9.1.20.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">s1.1-32B</td>
<td class="ltx_td ltx_align_center" id="A3.T9.1.20.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">98.82</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T9.1.20.3" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T9.1.20.3.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_align_center" id="A3.T9.1.20.4" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T9.1.20.4.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_align_center" id="A3.T9.1.20.5" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T9.1.20.5.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_align_center" id="A3.T9.1.20.6" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T9.1.20.6.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_align_center" id="A3.T9.1.20.7" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T9.1.20.7.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_align_center" id="A3.T9.1.20.8" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T9.1.20.8.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_align_center" id="A3.T9.1.20.9" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T9.1.20.9.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_align_center" id="A3.T9.1.20.10" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T9.1.20.10.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T9.1.20.11" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T9.1.20.11.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_align_center" id="A3.T9.1.20.12" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T9.1.20.12.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="A3.T9.1.20.13" style="padding-top:0.5pt;padding-bottom:0.5pt;">1.18</td>
</tr>
<tr class="ltx_tr" id="A3.T9.1.21">
<td class="ltx_td ltx_align_left ltx_border_r" id="A3.T9.1.21.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">s1.1-14B</td>
<td class="ltx_td ltx_align_center" id="A3.T9.1.21.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">95.97</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T9.1.21.3" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T9.1.21.3.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_align_center" id="A3.T9.1.21.4" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T9.1.21.4.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_align_center" id="A3.T9.1.21.5" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.24</td>
<td class="ltx_td ltx_align_center" id="A3.T9.1.21.6" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T9.1.21.6.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_align_center" id="A3.T9.1.21.7" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T9.1.21.7.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_align_center" id="A3.T9.1.21.8" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.24</td>
<td class="ltx_td ltx_align_center" id="A3.T9.1.21.9" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T9.1.21.9.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_align_center" id="A3.T9.1.21.10" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T9.1.21.10.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T9.1.21.11" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T9.1.21.11.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_align_center" id="A3.T9.1.21.12" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T9.1.21.12.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="A3.T9.1.21.13" style="padding-top:0.5pt;padding-bottom:0.5pt;">3.55</td>
</tr>
<tr class="ltx_tr" id="A3.T9.1.22">
<td class="ltx_td ltx_align_left ltx_border_r" id="A3.T9.1.22.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">s1.1-7B</td>
<td class="ltx_td ltx_align_center" id="A3.T9.1.22.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">87.91</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T9.1.22.3" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T9.1.22.3.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_align_center" id="A3.T9.1.22.4" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T9.1.22.4.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_align_center" id="A3.T9.1.22.5" style="padding-top:0.5pt;padding-bottom:0.5pt;">6.64</td>
<td class="ltx_td ltx_align_center" id="A3.T9.1.22.6" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T9.1.22.6.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_align_center" id="A3.T9.1.22.7" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T9.1.22.7.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_align_center" id="A3.T9.1.22.8" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T9.1.22.8.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_align_center" id="A3.T9.1.22.9" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T9.1.22.9.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_align_center" id="A3.T9.1.22.10" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T9.1.22.10.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T9.1.22.11" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T9.1.22.11.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_align_center" id="A3.T9.1.22.12" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T9.1.22.12.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="A3.T9.1.22.13" style="padding-top:0.5pt;padding-bottom:0.5pt;">5.45</td>
</tr>
<tr class="ltx_tr" id="A3.T9.1.23">
<td class="ltx_td ltx_align_left ltx_border_r" id="A3.T9.1.23.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">EXAONE-32B</td>
<td class="ltx_td ltx_align_center" id="A3.T9.1.23.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">65.88</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T9.1.23.3" style="padding-top:0.5pt;padding-bottom:0.5pt;">33.89</td>
<td class="ltx_td ltx_align_center" id="A3.T9.1.23.4" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T9.1.23.4.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_align_center" id="A3.T9.1.23.5" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.24</td>
<td class="ltx_td ltx_align_center" id="A3.T9.1.23.6" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T9.1.23.6.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_align_center" id="A3.T9.1.23.7" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T9.1.23.7.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_align_center" id="A3.T9.1.23.8" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T9.1.23.8.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_align_center" id="A3.T9.1.23.9" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T9.1.23.9.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_align_center" id="A3.T9.1.23.10" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T9.1.23.10.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T9.1.23.11" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T9.1.23.11.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_align_center" id="A3.T9.1.23.12" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T9.1.23.12.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="A3.T9.1.23.13" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T9.1.23.13.1" style="color:#C8C8C8;">0.00</span></td>
</tr>
<tr class="ltx_tr" id="A3.T9.1.24">
<td class="ltx_td ltx_align_left ltx_border_r" id="A3.T9.1.24.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">EXAONE-7.8B</td>
<td class="ltx_td ltx_align_center" id="A3.T9.1.24.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">63.51</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T9.1.24.3" style="padding-top:0.5pt;padding-bottom:0.5pt;">33.65</td>
<td class="ltx_td ltx_align_center" id="A3.T9.1.24.4" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T9.1.24.4.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_align_center" id="A3.T9.1.24.5" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T9.1.24.5.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_align_center" id="A3.T9.1.24.6" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T9.1.24.6.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_align_center" id="A3.T9.1.24.7" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.24</td>
<td class="ltx_td ltx_align_center" id="A3.T9.1.24.8" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T9.1.24.8.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_align_center" id="A3.T9.1.24.9" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T9.1.24.9.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_align_center" id="A3.T9.1.24.10" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T9.1.24.10.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.T9.1.24.11" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.24</td>
<td class="ltx_td ltx_align_center" id="A3.T9.1.24.12" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T9.1.24.12.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="A3.T9.1.24.13" style="padding-top:0.5pt;padding-bottom:0.5pt;">2.37</td>
</tr>
<tr class="ltx_tr" id="A3.T9.1.25">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_r" id="A3.T9.1.25.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">EXAONE-2.4B</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T9.1.25.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">78.91</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="A3.T9.1.25.3" style="padding-top:0.5pt;padding-bottom:0.5pt;">15.88</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T9.1.25.4" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T9.1.25.4.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T9.1.25.5" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T9.1.25.5.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T9.1.25.6" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T9.1.25.6.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T9.1.25.7" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T9.1.25.7.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T9.1.25.8" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T9.1.25.8.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T9.1.25.9" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T9.1.25.9.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T9.1.25.10" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T9.1.25.10.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="A3.T9.1.25.11" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T9.1.25.11.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T9.1.25.12" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text" id="A3.T9.1.25.12.1" style="color:#C8C8C8;">0.00</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_bb" id="A3.T9.1.25.13" style="padding-top:0.5pt;padding-bottom:0.5pt;">5.21</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the distribution of different response formats generated by various Large Language Models (LLMs) under greedy decoding.  It categorizes responses into strict format, loose format, and error format, each with several subcategories representing variations in the presence and structure of delimiters or markers that separate the reasoning process from the final answer. This breakdown helps to analyze the efficiency and correctness of the LLMs' responses in terms of their adherence to expected formatting conventions.
> <details>
> <summary>read the caption</summary>
> Table 9: Format types rates in greedy decoding setting.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="A4.T10.6">
<tr class="ltx_tr" id="A4.T10.6.6">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_tt" id="A4.T10.6.6.7" style="padding:0.5pt 5.0pt;">Model</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="A4.T10.6.6.8" style="padding:0.5pt 5.0pt;">Size</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A4.T10.6.6.9" style="padding:0.5pt 5.0pt;">acc (Loose)</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="A4.T10.6.6.10" style="padding:0.5pt 5.0pt;">acc (Strict)</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A4.T10.2.2.2" style="padding:0.5pt 5.0pt;">
<math alttext="\mathtt{SUC}" class="ltx_Math" display="inline" id="A4.T10.1.1.1.m1.1"><semantics id="A4.T10.1.1.1.m1.1a"><mi id="A4.T10.1.1.1.m1.1.1" xref="A4.T10.1.1.1.m1.1.1.cmml">𝚂𝚄𝙲</mi><annotation-xml encoding="MathML-Content" id="A4.T10.1.1.1.m1.1b"><ci id="A4.T10.1.1.1.m1.1.1.cmml" xref="A4.T10.1.1.1.m1.1.1">𝚂𝚄𝙲</ci></annotation-xml><annotation encoding="application/x-tex" id="A4.T10.1.1.1.m1.1c">\mathtt{SUC}</annotation><annotation encoding="application/x-llamapun" id="A4.T10.1.1.1.m1.1d">typewriter_SUC</annotation></semantics></math>-<math alttext="\mathtt{L}\uparrow" class="ltx_Math" display="inline" id="A4.T10.2.2.2.m2.1"><semantics id="A4.T10.2.2.2.m2.1a"><mrow id="A4.T10.2.2.2.m2.1.1" xref="A4.T10.2.2.2.m2.1.1.cmml"><mi id="A4.T10.2.2.2.m2.1.1.2" xref="A4.T10.2.2.2.m2.1.1.2.cmml">𝙻</mi><mo id="A4.T10.2.2.2.m2.1.1.1" stretchy="false" xref="A4.T10.2.2.2.m2.1.1.1.cmml">↑</mo><mi id="A4.T10.2.2.2.m2.1.1.3" xref="A4.T10.2.2.2.m2.1.1.3.cmml"></mi></mrow><annotation-xml encoding="MathML-Content" id="A4.T10.2.2.2.m2.1b"><apply id="A4.T10.2.2.2.m2.1.1.cmml" xref="A4.T10.2.2.2.m2.1.1"><ci id="A4.T10.2.2.2.m2.1.1.1.cmml" xref="A4.T10.2.2.2.m2.1.1.1">↑</ci><ci id="A4.T10.2.2.2.m2.1.1.2.cmml" xref="A4.T10.2.2.2.m2.1.1.2">𝙻</ci><csymbol cd="latexml" id="A4.T10.2.2.2.m2.1.1.3.cmml" xref="A4.T10.2.2.2.m2.1.1.3">absent</csymbol></apply></annotation-xml><annotation encoding="application/x-tex" id="A4.T10.2.2.2.m2.1c">\mathtt{L}\uparrow</annotation><annotation encoding="application/x-llamapun" id="A4.T10.2.2.2.m2.1d">typewriter_L ↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A4.T10.4.4.4" style="padding:0.5pt 5.0pt;">
<math alttext="\mathtt{SUC}" class="ltx_Math" display="inline" id="A4.T10.3.3.3.m1.1"><semantics id="A4.T10.3.3.3.m1.1a"><mi id="A4.T10.3.3.3.m1.1.1" xref="A4.T10.3.3.3.m1.1.1.cmml">𝚂𝚄𝙲</mi><annotation-xml encoding="MathML-Content" id="A4.T10.3.3.3.m1.1b"><ci id="A4.T10.3.3.3.m1.1.1.cmml" xref="A4.T10.3.3.3.m1.1.1">𝚂𝚄𝙲</ci></annotation-xml><annotation encoding="application/x-tex" id="A4.T10.3.3.3.m1.1c">\mathtt{SUC}</annotation><annotation encoding="application/x-llamapun" id="A4.T10.3.3.3.m1.1d">typewriter_SUC</annotation></semantics></math>-<math alttext="\mathtt{S}\uparrow" class="ltx_Math" display="inline" id="A4.T10.4.4.4.m2.1"><semantics id="A4.T10.4.4.4.m2.1a"><mrow id="A4.T10.4.4.4.m2.1.1" xref="A4.T10.4.4.4.m2.1.1.cmml"><mi id="A4.T10.4.4.4.m2.1.1.2" xref="A4.T10.4.4.4.m2.1.1.2.cmml">𝚂</mi><mo id="A4.T10.4.4.4.m2.1.1.1" stretchy="false" xref="A4.T10.4.4.4.m2.1.1.1.cmml">↑</mo><mi id="A4.T10.4.4.4.m2.1.1.3" xref="A4.T10.4.4.4.m2.1.1.3.cmml"></mi></mrow><annotation-xml encoding="MathML-Content" id="A4.T10.4.4.4.m2.1b"><apply id="A4.T10.4.4.4.m2.1.1.cmml" xref="A4.T10.4.4.4.m2.1.1"><ci id="A4.T10.4.4.4.m2.1.1.1.cmml" xref="A4.T10.4.4.4.m2.1.1.1">↑</ci><ci id="A4.T10.4.4.4.m2.1.1.2.cmml" xref="A4.T10.4.4.4.m2.1.1.2">𝚂</ci><csymbol cd="latexml" id="A4.T10.4.4.4.m2.1.1.3.cmml" xref="A4.T10.4.4.4.m2.1.1.3">absent</csymbol></apply></annotation-xml><annotation encoding="application/x-tex" id="A4.T10.4.4.4.m2.1c">\mathtt{S}\uparrow</annotation><annotation encoding="application/x-llamapun" id="A4.T10.4.4.4.m2.1d">typewriter_S ↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A4.T10.6.6.6" style="padding:0.5pt 5.0pt;">
<math alttext="\mathtt{ART}" class="ltx_Math" display="inline" id="A4.T10.5.5.5.m1.1"><semantics id="A4.T10.5.5.5.m1.1a"><mi id="A4.T10.5.5.5.m1.1.1" xref="A4.T10.5.5.5.m1.1.1.cmml">𝙰𝚁𝚃</mi><annotation-xml encoding="MathML-Content" id="A4.T10.5.5.5.m1.1b"><ci id="A4.T10.5.5.5.m1.1.1.cmml" xref="A4.T10.5.5.5.m1.1.1">𝙰𝚁𝚃</ci></annotation-xml><annotation encoding="application/x-tex" id="A4.T10.5.5.5.m1.1c">\mathtt{ART}</annotation><annotation encoding="application/x-llamapun" id="A4.T10.5.5.5.m1.1d">typewriter_ART</annotation></semantics></math> <math alttext="\downarrow" class="ltx_Math" display="inline" id="A4.T10.6.6.6.m2.1"><semantics id="A4.T10.6.6.6.m2.1a"><mo id="A4.T10.6.6.6.m2.1.1" stretchy="false" xref="A4.T10.6.6.6.m2.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="A4.T10.6.6.6.m2.1b"><ci id="A4.T10.6.6.6.m2.1.1.cmml" xref="A4.T10.6.6.6.m2.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="A4.T10.6.6.6.m2.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="A4.T10.6.6.6.m2.1d">↓</annotation></semantics></math>
</td>
</tr>
<tr class="ltx_tr" id="A4.T10.6.7">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A4.T10.6.7.1" style="padding:0.5pt 5.0pt;">QwQ-32B</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A4.T10.6.7.2" style="padding:0.5pt 5.0pt;">32B</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T10.6.7.3" style="padding:0.5pt 5.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T10.6.7.3.1" style="color:#008080;">100.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A4.T10.6.7.4" style="padding:0.5pt 5.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T10.6.7.4.1" style="color:#008080;">100.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T10.6.7.5" style="padding:0.5pt 5.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T10.6.7.5.1" style="color:#008080;">100.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T10.6.7.6" style="padding:0.5pt 5.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T10.6.7.6.1" style="color:#008080;">100.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T10.6.7.7" style="padding:0.5pt 5.0pt;">750.41</td>
</tr>
<tr class="ltx_tr" id="A4.T10.6.8">
<td class="ltx_td ltx_align_left ltx_border_r" id="A4.T10.6.8.1" style="padding:0.5pt 5.0pt;">Hunyuan-T1</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A4.T10.6.8.2" style="padding:0.5pt 5.0pt;">–</td>
<td class="ltx_td ltx_align_center" id="A4.T10.6.8.3" style="padding:0.5pt 5.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T10.6.8.3.1" style="color:#008080;">100.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A4.T10.6.8.4" style="padding:0.5pt 5.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T10.6.8.4.1" style="color:#008080;">100.00</span></td>
<td class="ltx_td ltx_align_center" id="A4.T10.6.8.5" style="padding:0.5pt 5.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T10.6.8.5.1" style="color:#008080;">100.00</span></td>
<td class="ltx_td ltx_align_center" id="A4.T10.6.8.6" style="padding:0.5pt 5.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T10.6.8.6.1" style="color:#008080;">100.00</span></td>
<td class="ltx_td ltx_align_center" id="A4.T10.6.8.7" style="padding:0.5pt 5.0pt;">541.09</td>
</tr>
<tr class="ltx_tr" id="A4.T10.6.9">
<td class="ltx_td ltx_align_left ltx_border_r" id="A4.T10.6.9.1" style="padding:0.5pt 5.0pt;">Sky-T1-32B</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A4.T10.6.9.2" style="padding:0.5pt 5.0pt;">32B</td>
<td class="ltx_td ltx_align_center" id="A4.T10.6.9.3" style="padding:0.5pt 5.0pt;">99.53</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A4.T10.6.9.4" style="padding:0.5pt 5.0pt;">99.05</td>
<td class="ltx_td ltx_align_center" id="A4.T10.6.9.5" style="padding:0.5pt 5.0pt;"><span class="ltx_text" id="A4.T10.6.9.5.1" style="color:#008080;">99.76</span></td>
<td class="ltx_td ltx_align_center" id="A4.T10.6.9.6" style="padding:0.5pt 5.0pt;">99.29</td>
<td class="ltx_td ltx_align_center" id="A4.T10.6.9.7" style="padding:0.5pt 5.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T10.6.9.7.1" style="color:#008080;">157.12</span></td>
</tr>
<tr class="ltx_tr" id="A4.T10.6.10">
<td class="ltx_td ltx_align_left ltx_border_r" id="A4.T10.6.10.1" style="padding:0.5pt 5.0pt;">DS-R1</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A4.T10.6.10.2" style="padding:0.5pt 5.0pt;">671B</td>
<td class="ltx_td ltx_align_center" id="A4.T10.6.10.3" style="padding:0.5pt 5.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T10.6.10.3.1" style="color:#008080;">100.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A4.T10.6.10.4" style="padding:0.5pt 5.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T10.6.10.4.1" style="color:#008080;">100.00</span></td>
<td class="ltx_td ltx_align_center" id="A4.T10.6.10.5" style="padding:0.5pt 5.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T10.6.10.5.1" style="color:#008080;">100.00</span></td>
<td class="ltx_td ltx_align_center" id="A4.T10.6.10.6" style="padding:0.5pt 5.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T10.6.10.6.1" style="color:#008080;">100.00</span></td>
<td class="ltx_td ltx_align_center" id="A4.T10.6.10.7" style="padding:0.5pt 5.0pt;">621.89</td>
</tr>
<tr class="ltx_tr" id="A4.T10.6.11">
<td class="ltx_td ltx_align_left ltx_border_r" id="A4.T10.6.11.1" style="padding:0.5pt 5.0pt;">DS-R1-70B</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A4.T10.6.11.2" style="padding:0.5pt 5.0pt;">70B</td>
<td class="ltx_td ltx_align_center" id="A4.T10.6.11.3" style="padding:0.5pt 5.0pt;"><span class="ltx_text" id="A4.T10.6.11.3.1" style="color:#008080;">99.76</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A4.T10.6.11.4" style="padding:0.5pt 5.0pt;"><span class="ltx_text" id="A4.T10.6.11.4.1" style="color:#008080;">99.76</span></td>
<td class="ltx_td ltx_align_center" id="A4.T10.6.11.5" style="padding:0.5pt 5.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T10.6.11.5.1" style="color:#008080;">100.00</span></td>
<td class="ltx_td ltx_align_center" id="A4.T10.6.11.6" style="padding:0.5pt 5.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T10.6.11.6.1" style="color:#008080;">100.00</span></td>
<td class="ltx_td ltx_align_center" id="A4.T10.6.11.7" style="padding:0.5pt 5.0pt;">469.78</td>
</tr>
<tr class="ltx_tr" id="A4.T10.6.12">
<td class="ltx_td ltx_align_left ltx_border_r" id="A4.T10.6.12.1" style="padding:0.5pt 5.0pt;">DS-R1-32B</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A4.T10.6.12.2" style="padding:0.5pt 5.0pt;">32B</td>
<td class="ltx_td ltx_align_center" id="A4.T10.6.12.3" style="padding:0.5pt 5.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T10.6.12.3.1" style="color:#008080;">100.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A4.T10.6.12.4" style="padding:0.5pt 5.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T10.6.12.4.1" style="color:#008080;">100.00</span></td>
<td class="ltx_td ltx_align_center" id="A4.T10.6.12.5" style="padding:0.5pt 5.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T10.6.12.5.1" style="color:#008080;">100.00</span></td>
<td class="ltx_td ltx_align_center" id="A4.T10.6.12.6" style="padding:0.5pt 5.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T10.6.12.6.1" style="color:#008080;">100.00</span></td>
<td class="ltx_td ltx_align_center" id="A4.T10.6.12.7" style="padding:0.5pt 5.0pt;">428.46</td>
</tr>
<tr class="ltx_tr" id="A4.T10.6.13">
<td class="ltx_td ltx_align_left ltx_border_r" id="A4.T10.6.13.1" style="padding:0.5pt 5.0pt;">DS-R1-14B</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A4.T10.6.13.2" style="padding:0.5pt 5.0pt;">14B</td>
<td class="ltx_td ltx_align_center" id="A4.T10.6.13.3" style="padding:0.5pt 5.0pt;">99.29</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A4.T10.6.13.4" style="padding:0.5pt 5.0pt;">99.29</td>
<td class="ltx_td ltx_align_center" id="A4.T10.6.13.5" style="padding:0.5pt 5.0pt;"><span class="ltx_text" id="A4.T10.6.13.5.1" style="color:#008080;">99.76</span></td>
<td class="ltx_td ltx_align_center" id="A4.T10.6.13.6" style="padding:0.5pt 5.0pt;"><span class="ltx_text" id="A4.T10.6.13.6.1" style="color:#008080;">99.76</span></td>
<td class="ltx_td ltx_align_center" id="A4.T10.6.13.7" style="padding:0.5pt 5.0pt;">463.52</td>
</tr>
<tr class="ltx_tr" id="A4.T10.6.14">
<td class="ltx_td ltx_align_left ltx_border_r" id="A4.T10.6.14.1" style="padding:0.5pt 5.0pt;">DS-R1-8B</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A4.T10.6.14.2" style="padding:0.5pt 5.0pt;">8B</td>
<td class="ltx_td ltx_align_center" id="A4.T10.6.14.3" style="padding:0.5pt 5.0pt;">97.63</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A4.T10.6.14.4" style="padding:0.5pt 5.0pt;">97.39</td>
<td class="ltx_td ltx_align_center" id="A4.T10.6.14.5" style="padding:0.5pt 5.0pt;"><span class="ltx_text" id="A4.T10.6.14.5.1" style="color:#008080;">99.76</span></td>
<td class="ltx_td ltx_align_center" id="A4.T10.6.14.6" style="padding:0.5pt 5.0pt;">99.53</td>
<td class="ltx_td ltx_align_center" id="A4.T10.6.14.7" style="padding:0.5pt 5.0pt;">452.11</td>
</tr>
<tr class="ltx_tr" id="A4.T10.6.15">
<td class="ltx_td ltx_align_left ltx_border_r" id="A4.T10.6.15.1" style="padding:0.5pt 5.0pt;">DS-R1-7B</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A4.T10.6.15.2" style="padding:0.5pt 5.0pt;">7B</td>
<td class="ltx_td ltx_align_center" id="A4.T10.6.15.3" style="padding:0.5pt 5.0pt;">94.31</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A4.T10.6.15.4" style="padding:0.5pt 5.0pt;">94.31</td>
<td class="ltx_td ltx_align_center" id="A4.T10.6.15.5" style="padding:0.5pt 5.0pt;">97.87</td>
<td class="ltx_td ltx_align_center" id="A4.T10.6.15.6" style="padding:0.5pt 5.0pt;">97.87</td>
<td class="ltx_td ltx_align_center" id="A4.T10.6.15.7" style="padding:0.5pt 5.0pt;">436.87</td>
</tr>
<tr class="ltx_tr" id="A4.T10.6.16">
<td class="ltx_td ltx_align_left ltx_border_r" id="A4.T10.6.16.1" style="padding:0.5pt 5.0pt;">DS-R1-1.5B</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A4.T10.6.16.2" style="padding:0.5pt 5.0pt;">1.5B</td>
<td class="ltx_td ltx_align_center" id="A4.T10.6.16.3" style="padding:0.5pt 5.0pt;"><span class="ltx_text" id="A4.T10.6.16.3.1" style="color:#A80032;">76.54</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A4.T10.6.16.4" style="padding:0.5pt 5.0pt;"><span class="ltx_text" id="A4.T10.6.16.4.1" style="color:#A80032;">76.54</span></td>
<td class="ltx_td ltx_align_center" id="A4.T10.6.16.5" style="padding:0.5pt 5.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T10.6.16.5.1" style="color:#A80032;">91.94</span></td>
<td class="ltx_td ltx_align_center" id="A4.T10.6.16.6" style="padding:0.5pt 5.0pt;">91.94</td>
<td class="ltx_td ltx_align_center" id="A4.T10.6.16.7" style="padding:0.5pt 5.0pt;">473.67</td>
</tr>
<tr class="ltx_tr" id="A4.T10.6.17">
<td class="ltx_td ltx_align_left ltx_border_r" id="A4.T10.6.17.1" style="padding:0.5pt 5.0pt;">Nemotron-49B</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A4.T10.6.17.2" style="padding:0.5pt 5.0pt;">49B</td>
<td class="ltx_td ltx_align_center" id="A4.T10.6.17.3" style="padding:0.5pt 5.0pt;">99.53</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A4.T10.6.17.4" style="padding:0.5pt 5.0pt;">99.53</td>
<td class="ltx_td ltx_align_center" id="A4.T10.6.17.5" style="padding:0.5pt 5.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T10.6.17.5.1" style="color:#008080;">100.00</span></td>
<td class="ltx_td ltx_align_center" id="A4.T10.6.17.6" style="padding:0.5pt 5.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T10.6.17.6.1" style="color:#008080;">100.00</span></td>
<td class="ltx_td ltx_align_center" id="A4.T10.6.17.7" style="padding:0.5pt 5.0pt;"><span class="ltx_text" id="A4.T10.6.17.7.1" style="color:#008080;">337.94</span></td>
</tr>
<tr class="ltx_tr" id="A4.T10.6.18">
<td class="ltx_td ltx_align_left ltx_border_r" id="A4.T10.6.18.1" style="padding:0.5pt 5.0pt;">Nemotron-8B</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A4.T10.6.18.2" style="padding:0.5pt 5.0pt;">8B</td>
<td class="ltx_td ltx_align_center" id="A4.T10.6.18.3" style="padding:0.5pt 5.0pt;">84.60</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A4.T10.6.18.4" style="padding:0.5pt 5.0pt;">77.73</td>
<td class="ltx_td ltx_align_center" id="A4.T10.6.18.5" style="padding:0.5pt 5.0pt;">98.34</td>
<td class="ltx_td ltx_align_center" id="A4.T10.6.18.6" style="padding:0.5pt 5.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T10.6.18.6.1" style="color:#A80032;">81.99</span></td>
<td class="ltx_td ltx_align_center" id="A4.T10.6.18.7" style="padding:0.5pt 5.0pt;">446.62</td>
</tr>
<tr class="ltx_tr" id="A4.T10.6.19">
<td class="ltx_td ltx_align_left ltx_border_r" id="A4.T10.6.19.1" style="padding:0.5pt 5.0pt;">L-R1-32B</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A4.T10.6.19.2" style="padding:0.5pt 5.0pt;">32B</td>
<td class="ltx_td ltx_align_center" id="A4.T10.6.19.3" style="padding:0.5pt 5.0pt;">92.18</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A4.T10.6.19.4" style="padding:0.5pt 5.0pt;">85.78</td>
<td class="ltx_td ltx_align_center" id="A4.T10.6.19.5" style="padding:0.5pt 5.0pt;"><span class="ltx_text" id="A4.T10.6.19.5.1" style="color:#A80032;">94.55</span></td>
<td class="ltx_td ltx_align_center" id="A4.T10.6.19.6" style="padding:0.5pt 5.0pt;"><span class="ltx_text" id="A4.T10.6.19.6.1" style="color:#A80032;">85.78</span></td>
<td class="ltx_td ltx_align_center" id="A4.T10.6.19.7" style="padding:0.5pt 5.0pt;"><span class="ltx_text" id="A4.T10.6.19.7.1" style="color:#A80032;">996.36</span></td>
</tr>
<tr class="ltx_tr" id="A4.T10.6.20">
<td class="ltx_td ltx_align_left ltx_border_r" id="A4.T10.6.20.1" style="padding:0.5pt 5.0pt;">L-R1-32B-DS</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A4.T10.6.20.2" style="padding:0.5pt 5.0pt;">32B</td>
<td class="ltx_td ltx_align_center" id="A4.T10.6.20.3" style="padding:0.5pt 5.0pt;">99.29</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A4.T10.6.20.4" style="padding:0.5pt 5.0pt;">99.29</td>
<td class="ltx_td ltx_align_center" id="A4.T10.6.20.5" style="padding:0.5pt 5.0pt;">99.29</td>
<td class="ltx_td ltx_align_center" id="A4.T10.6.20.6" style="padding:0.5pt 5.0pt;">99.29</td>
<td class="ltx_td ltx_align_center" id="A4.T10.6.20.7" style="padding:0.5pt 5.0pt;">528.45</td>
</tr>
<tr class="ltx_tr" id="A4.T10.6.21">
<td class="ltx_td ltx_align_left ltx_border_r" id="A4.T10.6.21.1" style="padding:0.5pt 5.0pt;">L-R1-14B-DS</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A4.T10.6.21.2" style="padding:0.5pt 5.0pt;">14B</td>
<td class="ltx_td ltx_align_center" id="A4.T10.6.21.3" style="padding:0.5pt 5.0pt;">98.82</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A4.T10.6.21.4" style="padding:0.5pt 5.0pt;">98.82</td>
<td class="ltx_td ltx_align_center" id="A4.T10.6.21.5" style="padding:0.5pt 5.0pt;">98.82</td>
<td class="ltx_td ltx_align_center" id="A4.T10.6.21.6" style="padding:0.5pt 5.0pt;">98.82</td>
<td class="ltx_td ltx_align_center" id="A4.T10.6.21.7" style="padding:0.5pt 5.0pt;">664.28</td>
</tr>
<tr class="ltx_tr" id="A4.T10.6.22">
<td class="ltx_td ltx_align_left ltx_border_r" id="A4.T10.6.22.1" style="padding:0.5pt 5.0pt;">L-R1-7B-DS</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A4.T10.6.22.2" style="padding:0.5pt 5.0pt;">7B</td>
<td class="ltx_td ltx_align_center" id="A4.T10.6.22.3" style="padding:0.5pt 5.0pt;">92.65</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A4.T10.6.22.4" style="padding:0.5pt 5.0pt;">92.65</td>
<td class="ltx_td ltx_align_center" id="A4.T10.6.22.5" style="padding:0.5pt 5.0pt;">98.82</td>
<td class="ltx_td ltx_align_center" id="A4.T10.6.22.6" style="padding:0.5pt 5.0pt;">98.82</td>
<td class="ltx_td ltx_align_center" id="A4.T10.6.22.7" style="padding:0.5pt 5.0pt;">514.60</td>
</tr>
<tr class="ltx_tr" id="A4.T10.6.23">
<td class="ltx_td ltx_align_left ltx_border_r" id="A4.T10.6.23.1" style="padding:0.5pt 5.0pt;">s1.1-32B</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A4.T10.6.23.2" style="padding:0.5pt 5.0pt;">32B</td>
<td class="ltx_td ltx_align_center" id="A4.T10.6.23.3" style="padding:0.5pt 5.0pt;">98.82</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A4.T10.6.23.4" style="padding:0.5pt 5.0pt;">98.82</td>
<td class="ltx_td ltx_align_center" id="A4.T10.6.23.5" style="padding:0.5pt 5.0pt;">98.82</td>
<td class="ltx_td ltx_align_center" id="A4.T10.6.23.6" style="padding:0.5pt 5.0pt;">98.82</td>
<td class="ltx_td ltx_align_center" id="A4.T10.6.23.7" style="padding:0.5pt 5.0pt;">983.38</td>
</tr>
<tr class="ltx_tr" id="A4.T10.6.24">
<td class="ltx_td ltx_align_left ltx_border_r" id="A4.T10.6.24.1" style="padding:0.5pt 5.0pt;">s1.1-14B</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A4.T10.6.24.2" style="padding:0.5pt 5.0pt;">14B</td>
<td class="ltx_td ltx_align_center" id="A4.T10.6.24.3" style="padding:0.5pt 5.0pt;">95.97</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A4.T10.6.24.4" style="padding:0.5pt 5.0pt;">95.50</td>
<td class="ltx_td ltx_align_center" id="A4.T10.6.24.5" style="padding:0.5pt 5.0pt;">96.45</td>
<td class="ltx_td ltx_align_center" id="A4.T10.6.24.6" style="padding:0.5pt 5.0pt;">95.97</td>
<td class="ltx_td ltx_align_center" id="A4.T10.6.24.7" style="padding:0.5pt 5.0pt;">786.30</td>
</tr>
<tr class="ltx_tr" id="A4.T10.6.25">
<td class="ltx_td ltx_align_left ltx_border_r" id="A4.T10.6.25.1" style="padding:0.5pt 5.0pt;">s1.1-7B</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A4.T10.6.25.2" style="padding:0.5pt 5.0pt;">7B</td>
<td class="ltx_td ltx_align_center" id="A4.T10.6.25.3" style="padding:0.5pt 5.0pt;">94.31</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A4.T10.6.25.4" style="padding:0.5pt 5.0pt;">87.68</td>
<td class="ltx_td ltx_align_center" id="A4.T10.6.25.5" style="padding:0.5pt 5.0pt;"><span class="ltx_text" id="A4.T10.6.25.5.1" style="color:#A80032;">94.55</span></td>
<td class="ltx_td ltx_align_center" id="A4.T10.6.25.6" style="padding:0.5pt 5.0pt;">87.91</td>
<td class="ltx_td ltx_align_center" id="A4.T10.6.25.7" style="padding:0.5pt 5.0pt;">630.52</td>
</tr>
<tr class="ltx_tr" id="A4.T10.6.26">
<td class="ltx_td ltx_align_left ltx_border_r" id="A4.T10.6.26.1" style="padding:0.5pt 5.0pt;">EXAONE-32B</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A4.T10.6.26.2" style="padding:0.5pt 5.0pt;">32B</td>
<td class="ltx_td ltx_align_center" id="A4.T10.6.26.3" style="padding:0.5pt 5.0pt;">97.63</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A4.T10.6.26.4" style="padding:0.5pt 5.0pt;">97.39</td>
<td class="ltx_td ltx_align_center" id="A4.T10.6.26.5" style="padding:0.5pt 5.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T10.6.26.5.1" style="color:#008080;">100.00</span></td>
<td class="ltx_td ltx_align_center" id="A4.T10.6.26.6" style="padding:0.5pt 5.0pt;"><span class="ltx_text" id="A4.T10.6.26.6.1" style="color:#008080;">99.76</span></td>
<td class="ltx_td ltx_align_center" id="A4.T10.6.26.7" style="padding:0.5pt 5.0pt;">746.89</td>
</tr>
<tr class="ltx_tr" id="A4.T10.6.27">
<td class="ltx_td ltx_align_left ltx_border_r" id="A4.T10.6.27.1" style="padding:0.5pt 5.0pt;">EXAONE-7.8B</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A4.T10.6.27.2" style="padding:0.5pt 5.0pt;">7.8B</td>
<td class="ltx_td ltx_align_center" id="A4.T10.6.27.3" style="padding:0.5pt 5.0pt;">86.73</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A4.T10.6.27.4" style="padding:0.5pt 5.0pt;">86.49</td>
<td class="ltx_td ltx_align_center" id="A4.T10.6.27.5" style="padding:0.5pt 5.0pt;">97.63</td>
<td class="ltx_td ltx_align_center" id="A4.T10.6.27.6" style="padding:0.5pt 5.0pt;">97.16</td>
<td class="ltx_td ltx_align_center" id="A4.T10.6.27.7" style="padding:0.5pt 5.0pt;">947.92</td>
</tr>
<tr class="ltx_tr" id="A4.T10.6.28">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_r" id="A4.T10.6.28.1" style="padding:0.5pt 5.0pt;">EXAONE-2.4B</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="A4.T10.6.28.2" style="padding:0.5pt 5.0pt;">2.4B</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T10.6.28.3" style="padding:0.5pt 5.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T10.6.28.3.1" style="color:#A80032;">72.99</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="A4.T10.6.28.4" style="padding:0.5pt 5.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T10.6.28.4.1" style="color:#A80032;">72.99</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T10.6.28.5" style="padding:0.5pt 5.0pt;">94.79</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T10.6.28.6" style="padding:0.5pt 5.0pt;">94.79</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T10.6.28.7" style="padding:0.5pt 5.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T10.6.28.7.1" style="color:#A80032;">1394.72</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the performance of 22 large reasoning models (LRMs) on the S1-Bench benchmark using greedy decoding.  The models are grouped by their family.  Performance is measured by accuracy in strict and loose format settings, successful attempts (pass@1), and average response token length (ART).  Color coding highlights the best and worst performing models within each family.
> <details>
> <summary>read the caption</summary>
> Table 10: Main results in the greedy decoding setting on the S1-Bench, sorted by model family. Bold teal marks best performance, teal second best, bold burgundy worst, and burgundy second worst.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="A5.T11.1">
<tr class="ltx_tr" id="A5.T11.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top ltx_border_tt" id="A5.T11.1.1.1">
<span class="ltx_inline-block ltx_align_top" id="A5.T11.1.1.1.1">
<span class="ltx_p" id="A5.T11.1.1.1.1.1" style="width:433.6pt;"><span class="ltx_text ltx_font_bold" id="A5.T11.1.1.1.1.1.1">Prompt for construction workflow for S1-Bench</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T11.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top ltx_border_t" id="A5.T11.1.2.1">
<span class="ltx_inline-block ltx_align_top" id="A5.T11.1.2.1.1">
<span class="ltx_p" id="A5.T11.1.2.1.1.1" style="width:433.6pt;"><span class="ltx_text ltx_font_bold ltx_font_italic" id="A5.T11.1.2.1.1.1.1">Initial Generation</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T11.1.3">
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top ltx_border_t" id="A5.T11.1.3.1">
<span class="ltx_inline-block ltx_align_top" id="A5.T11.1.3.1.1">
<span class="ltx_p" id="A5.T11.1.3.1.1.1" style="width:433.6pt;">Based on the category name and explanation, generate 50 pairs of questions and answers in both Chinese and English. Ensure that the generated questions vary in perspective and content, maintaining diversity. All questions must have a **uniquely determined, unambiguous answer with no potential conditions causing multiple possible answers**. Ensure that the questions are expressed clearly. Additionally, the difficulty level of the questions should be **as simple as possible—so easy that they can be answered correctly without any need for thought**.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T11.1.4">
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A5.T11.1.4.1">
<span class="ltx_inline-block ltx_align_top" id="A5.T11.1.4.1.1">
<span class="ltx_p" id="A5.T11.1.4.1.1.1" style="width:433.6pt;"></span>
<span class="ltx_p" id="A5.T11.1.4.1.1.2"># Category Name:</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T11.1.5">
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A5.T11.1.5.1">
<span class="ltx_inline-block ltx_align_top" id="A5.T11.1.5.1.1">
<span class="ltx_p" id="A5.T11.1.5.1.1.1" style="width:433.6pt;">{category}</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T11.1.6">
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A5.T11.1.6.1">
<span class="ltx_inline-block ltx_align_top" id="A5.T11.1.6.1.1">
<span class="ltx_p" id="A5.T11.1.6.1.1.1" style="width:433.6pt;"></span>
<span class="ltx_p" id="A5.T11.1.6.1.1.2"># Explanation:</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T11.1.7">
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A5.T11.1.7.1">
<span class="ltx_inline-block ltx_align_top" id="A5.T11.1.7.1.1">
<span class="ltx_p" id="A5.T11.1.7.1.1.1" style="width:433.6pt;">{explanation}</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T11.1.8">
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A5.T11.1.8.1">
<span class="ltx_inline-block ltx_align_top" id="A5.T11.1.8.1.1">
<span class="ltx_p" id="A5.T11.1.8.1.1.1" style="width:433.6pt;"></span>
<span class="ltx_p" id="A5.T11.1.8.1.1.2"># Cases:</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T11.1.9">
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A5.T11.1.9.1">
<span class="ltx_inline-block ltx_align_top" id="A5.T11.1.9.1.1">
<span class="ltx_p" id="A5.T11.1.9.1.1.1" style="width:433.6pt;">## English question:</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T11.1.10">
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A5.T11.1.10.1">
<span class="ltx_inline-block ltx_align_top" id="A5.T11.1.10.1.1">
<span class="ltx_p" id="A5.T11.1.10.1.1.1" style="width:433.6pt;">{question_en}</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T11.1.11">
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A5.T11.1.11.1">
<span class="ltx_inline-block ltx_align_top" id="A5.T11.1.11.1.1">
<span class="ltx_p" id="A5.T11.1.11.1.1.1" style="width:433.6pt;">## English Answer:</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T11.1.12">
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A5.T11.1.12.1">
<span class="ltx_inline-block ltx_align_top" id="A5.T11.1.12.1.1">
<span class="ltx_p" id="A5.T11.1.12.1.1.1" style="width:433.6pt;">{answer_en}</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T11.1.13">
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A5.T11.1.13.1">
<span class="ltx_inline-block ltx_align_top" id="A5.T11.1.13.1.1">
<span class="ltx_p" id="A5.T11.1.13.1.1.1" style="width:433.6pt;"></span>
<span class="ltx_p" id="A5.T11.1.13.1.1.2">## Chinese question:</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T11.1.14">
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A5.T11.1.14.1">
<span class="ltx_inline-block ltx_align_top" id="A5.T11.1.14.1.1">
<span class="ltx_p" id="A5.T11.1.14.1.1.1" style="width:433.6pt;">{question_zh}</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T11.1.15">
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A5.T11.1.15.1">
<span class="ltx_inline-block ltx_align_top" id="A5.T11.1.15.1.1">
<span class="ltx_p" id="A5.T11.1.15.1.1.1" style="width:433.6pt;">## Chinese Answer:</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T11.1.16">
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A5.T11.1.16.1">
<span class="ltx_inline-block ltx_align_top" id="A5.T11.1.16.1.1">
<span class="ltx_p" id="A5.T11.1.16.1.1.1" style="width:433.6pt;">{answer_zh}</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T11.1.17">
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A5.T11.1.17.1">
<span class="ltx_inline-block ltx_align_top" id="A5.T11.1.17.1.1">
<span class="ltx_p" id="A5.T11.1.17.1.1.1" style="width:433.6pt;"></span>
<span class="ltx_p" id="A5.T11.1.17.1.1.2">Please generate 50 pairs of Chinese and English questions and answers in the following format:</span>
<span class="ltx_p" id="A5.T11.1.17.1.1.3">[question]English-question[answer]English-answer[question]Chinese-question[answer]Chinese-answer…</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T11.1.18">
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A5.T11.1.18.1">
<span class="ltx_inline-block ltx_align_top" id="A5.T11.1.18.1.1">
<span class="ltx_p" id="A5.T11.1.18.1.1.1" style="width:433.6pt;"></span>
<span class="ltx_p" id="A5.T11.1.18.1.1.2">Start generating:</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T11.1.19">
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top ltx_border_t" id="A5.T11.1.19.1">
<span class="ltx_inline-block ltx_align_top" id="A5.T11.1.19.1.1">
<span class="ltx_p" id="A5.T11.1.19.1.1.1" style="width:433.6pt;"><span class="ltx_text ltx_font_bold ltx_font_italic" id="A5.T11.1.19.1.1.1.1">Discriminating Generation Quality</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T11.1.20">
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top ltx_border_t" id="A5.T11.1.20.1">
<span class="ltx_inline-block ltx_align_top" id="A5.T11.1.20.1.1">
<span class="ltx_p" id="A5.T11.1.20.1.1.1" style="width:433.6pt;">Given a question, its answer, and its category, please analyze from the following perspectives as comprehensively as possible:</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T11.1.21">
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A5.T11.1.21.1">
<span class="ltx_inline-block ltx_align_top" id="A5.T11.1.21.1.1">
<span class="ltx_p" id="A5.T11.1.21.1.1.1" style="width:433.6pt;">1. Whether the question belongs to the specified category.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T11.1.22">
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A5.T11.1.22.1">
<span class="ltx_inline-block ltx_align_top" id="A5.T11.1.22.1.1">
<span class="ltx_p" id="A5.T11.1.22.1.1.1" style="width:433.6pt;">2. Whether the question is clear, unambiguous, has an absolutely unique answer, and has no potential alternative interpretations.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T11.1.23">
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A5.T11.1.23.1">
<span class="ltx_inline-block ltx_align_top" id="A5.T11.1.23.1.1">
<span class="ltx_p" id="A5.T11.1.23.1.1.1" style="width:433.6pt;">3. Whether the answer is absolutely correct; if not, what the correct answer should be.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T11.1.24">
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A5.T11.1.24.1">
<span class="ltx_inline-block ltx_align_top" id="A5.T11.1.24.1.1">
<span class="ltx_p" id="A5.T11.1.24.1.1.1" style="width:433.6pt;">4. Whether the question is similar to other given questions, and if similar, whether more diverse questions can be generated.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T11.1.25">
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A5.T11.1.25.1">
<span class="ltx_inline-block ltx_align_top" id="A5.T11.1.25.1.1">
<span class="ltx_p" id="A5.T11.1.25.1.1.1" style="width:433.6pt;"></span>
<span class="ltx_p" id="A5.T11.1.25.1.1.2"># Question Category and Explanation:</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T11.1.26">
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A5.T11.1.26.1">
<span class="ltx_inline-block ltx_align_top" id="A5.T11.1.26.1.1">
<span class="ltx_p" id="A5.T11.1.26.1.1.1" style="width:433.6pt;">{category_with_exp}</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T11.1.27">
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A5.T11.1.27.1">
<span class="ltx_inline-block ltx_align_top" id="A5.T11.1.27.1.1">
<span class="ltx_p" id="A5.T11.1.27.1.1.1" style="width:433.6pt;"></span>
<span class="ltx_p" id="A5.T11.1.27.1.1.2"># Question and Answer:</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T11.1.28">
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A5.T11.1.28.1">
<span class="ltx_inline-block ltx_align_top" id="A5.T11.1.28.1.1">
<span class="ltx_p" id="A5.T11.1.28.1.1.1" style="width:433.6pt;">{question_with_answer}</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T11.1.29">
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A5.T11.1.29.1">
<span class="ltx_inline-block ltx_align_top" id="A5.T11.1.29.1.1">
<span class="ltx_p" id="A5.T11.1.29.1.1.1" style="width:433.6pt;"></span>
<span class="ltx_p" id="A5.T11.1.29.1.1.2"># Other Questions:</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T11.1.30">
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A5.T11.1.30.1">
<span class="ltx_inline-block ltx_align_top" id="A5.T11.1.30.1.1">
<span class="ltx_p" id="A5.T11.1.30.1.1.1" style="width:433.6pt;">{questions_list}</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T11.1.31">
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A5.T11.1.31.1">
<span class="ltx_inline-block ltx_align_top" id="A5.T11.1.31.1.1">
<span class="ltx_p" id="A5.T11.1.31.1.1.1" style="width:433.6pt;"></span>
<span class="ltx_p" id="A5.T11.1.31.1.1.2">Begin your analysis, aiming to be as detailed and comprehensive as possible:</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T11.1.32">
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top ltx_border_t" id="A5.T11.1.32.1">
<span class="ltx_inline-block ltx_align_top" id="A5.T11.1.32.1.1">
<span class="ltx_p" id="A5.T11.1.32.1.1.1" style="width:433.6pt;"><span class="ltx_text ltx_font_bold ltx_font_italic" id="A5.T11.1.32.1.1.1.1">Reduce Difficulty Generation</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T11.1.33">
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top ltx_border_t" id="A5.T11.1.33.1">
<span class="ltx_inline-block ltx_align_top" id="A5.T11.1.33.1.1">
<span class="ltx_p" id="A5.T11.1.33.1.1.1" style="width:433.6pt;">Given a question and answer that are too complex for the model to answer correctly, you need to further reduce their difficulty while trying to:</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T11.1.34">
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A5.T11.1.34.1">
<span class="ltx_inline-block ltx_align_top" id="A5.T11.1.34.1.1">
<span class="ltx_p" id="A5.T11.1.34.1.1.1" style="width:433.6pt;">- Maintain the original perspective and semantic information</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T11.1.35">
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A5.T11.1.35.1">
<span class="ltx_inline-block ltx_align_top" id="A5.T11.1.35.1.1">
<span class="ltx_p" id="A5.T11.1.35.1.1.1" style="width:433.6pt;">- Preserve the question’s alignment with its category</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T11.1.36">
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A5.T11.1.36.1">
<span class="ltx_inline-block ltx_align_top" id="A5.T11.1.36.1.1">
<span class="ltx_p" id="A5.T11.1.36.1.1.1" style="width:433.6pt;"></span>
<span class="ltx_p" id="A5.T11.1.36.1.1.2"># Question Category and Explanation:</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T11.1.37">
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A5.T11.1.37.1">
<span class="ltx_inline-block ltx_align_top" id="A5.T11.1.37.1.1">
<span class="ltx_p" id="A5.T11.1.37.1.1.1" style="width:433.6pt;">{category_with_exp}</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T11.1.38">
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A5.T11.1.38.1">
<span class="ltx_inline-block ltx_align_top" id="A5.T11.1.38.1.1">
<span class="ltx_p" id="A5.T11.1.38.1.1.1" style="width:433.6pt;"></span>
<span class="ltx_p" id="A5.T11.1.38.1.1.2"># Question and Answer:</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T11.1.39">
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A5.T11.1.39.1">
<span class="ltx_inline-block ltx_align_top" id="A5.T11.1.39.1.1">
<span class="ltx_p" id="A5.T11.1.39.1.1.1" style="width:433.6pt;">{question_with_answer}</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T11.1.40">
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A5.T11.1.40.1">
<span class="ltx_inline-block ltx_align_top" id="A5.T11.1.40.1.1">
<span class="ltx_p" id="A5.T11.1.40.1.1.1" style="width:433.6pt;"></span>
<span class="ltx_p" id="A5.T11.1.40.1.1.2">The new question and answer:</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T11.1.41">
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top ltx_border_t" id="A5.T11.1.41.1">
<span class="ltx_inline-block ltx_align_top" id="A5.T11.1.41.1.1">
<span class="ltx_p" id="A5.T11.1.41.1.1.1" style="width:433.6pt;"><span class="ltx_text ltx_font_bold ltx_font_italic" id="A5.T11.1.41.1.1.1.1">Evaluation on S1-Bench</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T11.1.42">
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top ltx_border_t" id="A5.T11.1.42.1">
<span class="ltx_inline-block ltx_align_top" id="A5.T11.1.42.1.1">
<span class="ltx_p" id="A5.T11.1.42.1.1.1" style="width:433.6pt;">**Question:**</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T11.1.43">
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A5.T11.1.43.1">
<span class="ltx_inline-block ltx_align_top" id="A5.T11.1.43.1.1">
<span class="ltx_p" id="A5.T11.1.43.1.1.1" style="width:433.6pt;">{question}</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T11.1.44">
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A5.T11.1.44.1">
<span class="ltx_inline-block ltx_align_top" id="A5.T11.1.44.1.1">
<span class="ltx_p" id="A5.T11.1.44.1.1.1" style="width:433.6pt;"></span>
<span class="ltx_p" id="A5.T11.1.44.1.1.2">**Model Answer:**</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T11.1.45">
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A5.T11.1.45.1">
<span class="ltx_inline-block ltx_align_top" id="A5.T11.1.45.1.1">
<span class="ltx_p" id="A5.T11.1.45.1.1.1" style="width:433.6pt;">{model_answer}</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T11.1.46">
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A5.T11.1.46.1">
<span class="ltx_inline-block ltx_align_top" id="A5.T11.1.46.1.1">
<span class="ltx_p" id="A5.T11.1.46.1.1.1" style="width:433.6pt;"></span>
<span class="ltx_p" id="A5.T11.1.46.1.1.2">**Ground Truth:**</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T11.1.47">
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A5.T11.1.47.1">
<span class="ltx_inline-block ltx_align_top" id="A5.T11.1.47.1.1">
<span class="ltx_p" id="A5.T11.1.47.1.1.1" style="width:433.6pt;">{ground_truth}</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T11.1.48">
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A5.T11.1.48.1">
<span class="ltx_inline-block ltx_align_top" id="A5.T11.1.48.1.1">
<span class="ltx_p" id="A5.T11.1.48.1.1.1" style="width:433.6pt;"></span>
<span class="ltx_p" id="A5.T11.1.48.1.1.2">Your task is to evaluate whether the model’s answer is correct.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T11.1.49">
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A5.T11.1.49.1">
<span class="ltx_inline-block ltx_align_top" id="A5.T11.1.49.1.1">
<span class="ltx_p" id="A5.T11.1.49.1.1.1" style="width:433.6pt;">An answer is considered correct as long as it contains the ground truth (regardless of how complex or detailed the description is).</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T11.1.50">
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A5.T11.1.50.1">
<span class="ltx_inline-block ltx_align_top" id="A5.T11.1.50.1.1">
<span class="ltx_p" id="A5.T11.1.50.1.1.1" style="width:433.6pt;">If there are parenthetical notes after the ground truth, then there may be multiple correct answers. In this case, the given answer is just one example, and any answer that meets the requirements specified in the notes can be considered correct.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T11.1.51">
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A5.T11.1.51.1">
<span class="ltx_inline-block ltx_align_top" id="A5.T11.1.51.1.1">
<span class="ltx_p" id="A5.T11.1.51.1.1.1" style="width:433.6pt;">Additionally, some reasonably uncertain supplementary information is also considered appropriate, including more details, possibilities, and expanded discussion. You should focus more on whether the reply contains the correct answer.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T11.1.52">
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A5.T11.1.52.1">
<span class="ltx_inline-block ltx_align_top" id="A5.T11.1.52.1.1">
<span class="ltx_p" id="A5.T11.1.52.1.1.1" style="width:433.6pt;"></span>
<span class="ltx_p" id="A5.T11.1.52.1.1.2">You need to output a standard JSON, providing your explanation of the evaluation in the "explain" field, and giving the evaluation result in the "result" field, where 1 means the answer is correct and 0 means it is incorrect.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T11.1.53">
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top ltx_border_bb" id="A5.T11.1.53.1">
<span class="ltx_inline-block ltx_align_top" id="A5.T11.1.53.1.1">
<span class="ltx_p" id="A5.T11.1.53.1.1.1" style="width:433.6pt;">Your action should follow the given format: "explain": "", "result": 0/1</span>
</span>
</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 Table 11 presents the prompts used to construct the S1-Bench dataset.  It details the instructions for the initial question generation, quality discrimination, difficulty reduction, and final evaluation phases. The prompts guide annotators in creating simple, diverse questions across multiple categories and languages, ensuring clarity and avoiding ambiguity.  The 'explanation' and 'category_with_exp' fields within the prompts incorporate the definitions of the four main question categories (reasoning, knowledge, instruction following, analysis), the criteria for ensuring simplicity (as detailed in Section 3.1.1 of the paper), and definitions for each subcategory.
> <details>
> <summary>read the caption</summary>
> Table 11: Prompt for construction workflow for S1-Bench. The “explanation” (and “category_with_exp”) includes the definition of each major category, simplicity requirements in Section 3.1.1, and the definition of subcategories.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="A5.T12.2">
<tr class="ltx_tr" id="A5.T12.2.3">
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top ltx_border_tt" id="A5.T12.2.3.1">
<span class="ltx_inline-block ltx_align_top" id="A5.T12.2.3.1.1">
<span class="ltx_p" id="A5.T12.2.3.1.1.1" style="width:433.6pt;"><span class="ltx_text ltx_font_bold" id="A5.T12.2.3.1.1.1.1">Prompts for Solution Segmentation</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T12.2.4">
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top ltx_border_t" id="A5.T12.2.4.1">
<span class="ltx_inline-block ltx_align_top" id="A5.T12.2.4.1.1">
<span class="ltx_p" id="A5.T12.2.4.1.1.1" style="width:433.6pt;"># Task Description:</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T12.2.5">
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A5.T12.2.5.1">
<span class="ltx_inline-block ltx_align_top" id="A5.T12.2.5.1.1">
<span class="ltx_p" id="A5.T12.2.5.1.1.1" style="width:433.6pt;">Your task is to segment the given Chain of Thought according to the following rules:</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T12.2.6">
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A5.T12.2.6.1">
<span class="ltx_inline-block ltx_align_top" id="A5.T12.2.6.1.1">
<span class="ltx_p" id="A5.T12.2.6.1.1.1" style="width:433.6pt;">1. Segmentation positions:</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T12.2.7">
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A5.T12.2.7.1">
<span class="ltx_inline-block ltx_align_top" id="A5.T12.2.7.1.1">
<span class="ltx_p" id="A5.T12.2.7.1.1.1" style="width:433.6pt;">(1) Please identify and extract all sub-reasoning processes from the Chain of Thought that meet the following condition: <span class="ltx_text ltx_font_bold" id="A5.T12.2.7.1.1.1.1">They explicitly arrive at a conclusion (including cases phrased as questions, e.g., "right?") that is directly consistent with the Ground Truth.</span> Reasoning processes that only indirectly support the Ground Truth or result in partially aligned conclusions should be excluded.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T12.2.8">
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A5.T12.2.8.1">
<span class="ltx_inline-block ltx_align_top" id="A5.T12.2.8.1.1">
<span class="ltx_p" id="A5.T12.2.8.1.1.1" style="width:433.6pt;">(2) After clearly reaching the conclusion consistent with the Ground Truth, <span class="ltx_text ltx_font_bold" id="A5.T12.2.8.1.1.1.1">insert the segmentation marker &lt;split&gt; to distinctly separate each qualifying sub-reasoning process.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T12.2.9">
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A5.T12.2.9.1">
<span class="ltx_inline-block ltx_align_top" id="A5.T12.2.9.1.1">
<span class="ltx_p" id="A5.T12.2.9.1.1.1" style="width:433.6pt;">2. Output Restriction:</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T12.2.10">
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A5.T12.2.10.1">
<span class="ltx_inline-block ltx_align_top" id="A5.T12.2.10.1.1">
<span class="ltx_p" id="A5.T12.2.10.1.1.1" style="width:433.6pt;">(1) You should only directly output the segmentation result without adding any additional supplements.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T12.2.11">
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A5.T12.2.11.1">
<span class="ltx_inline-block ltx_align_top" id="A5.T12.2.11.1.1">
<span class="ltx_p" id="A5.T12.2.11.1.1.1" style="width:433.6pt;">(2)Except for inserting the &lt;split&gt; separator, you must not make any other modifications to the original Chain of Thought, not even minor character-level changes such as punctuation, spacing, or capitalization. In other words, after removing all &lt;split&gt; separators, the output text must match the original Chain of Thought exactly.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T12.2.12">
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A5.T12.2.12.1">
<span class="ltx_inline-block ltx_align_top" id="A5.T12.2.12.1.1">
<span class="ltx_p" id="A5.T12.2.12.1.1.1" style="width:433.6pt;"></span>
<span class="ltx_p" id="A5.T12.2.12.1.1.2"># Some cases:</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T12.2.13">
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A5.T12.2.13.1">
<span class="ltx_inline-block ltx_align_top" id="A5.T12.2.13.1.1">
<span class="ltx_p" id="A5.T12.2.13.1.1.1" style="width:433.6pt;">## Case 1:</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T12.2.14">
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A5.T12.2.14.1">
<span class="ltx_inline-block ltx_align_top" id="A5.T12.2.14.1.1">
<span class="ltx_p" id="A5.T12.2.14.1.1.1" style="width:433.6pt;">### Question:</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T12.2.15">
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A5.T12.2.15.1">
<span class="ltx_inline-block ltx_align_top" id="A5.T12.2.15.1.1">
<span class="ltx_p" id="A5.T12.2.15.1.1.1" style="width:433.6pt;">What is the value of x if x plus 3 equals 8?</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T12.2.16">
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A5.T12.2.16.1">
<span class="ltx_inline-block ltx_align_top" id="A5.T12.2.16.1.1">
<span class="ltx_p" id="A5.T12.2.16.1.1.1" style="width:433.6pt;"></span>
<span class="ltx_p" id="A5.T12.2.16.1.1.2">### Ground Truth:</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T12.2.17">
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A5.T12.2.17.1">
<span class="ltx_inline-block ltx_align_top" id="A5.T12.2.17.1.1">
<span class="ltx_p" id="A5.T12.2.17.1.1.1" style="width:433.6pt;">5</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T12.2.18">
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A5.T12.2.18.1">
<span class="ltx_inline-block ltx_align_top" id="A5.T12.2.18.1.1">
<span class="ltx_p" id="A5.T12.2.18.1.1.1" style="width:433.6pt;"></span>
<span class="ltx_p" id="A5.T12.2.18.1.1.2">### Chain of Thought:</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T12.2.19">
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A5.T12.2.19.1">
<span class="ltx_inline-block ltx_align_top" id="A5.T12.2.19.1.1">
<span class="ltx_p" id="A5.T12.2.19.1.1.1" style="width:433.6pt;">Okay, so I need to figure out what x is if x plus 3 equals 8. The problem says "x plus 3 equals 8," so in mathematical terms, that would be: x + 3 = 8</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T12.2.20">
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A5.T12.2.20.1">
<span class="ltx_inline-block ltx_align_top" id="A5.T12.2.20.1.1">
<span class="ltx_p" id="A5.T12.2.20.1.1.1" style="width:433.6pt;">Alright, now I need to solve for x. From what I remember in algebra, the goal is to isolate x on one side of the equation. That means I need to get rid of that "+ 3" that’s being added to x. To do that, I should perform the opposite operation. Since it’s adding 3, the opposite would be subtracting 3.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T12.2.21">
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A5.T12.2.21.1">
<span class="ltx_inline-block ltx_align_top" id="A5.T12.2.21.1.1">
<span class="ltx_p" id="A5.T12.2.21.1.1.1" style="width:433.6pt;">So, if I subtract 3 from both sides, that should keep things equal. Let me try that: x + 3 - 3 = 8 - 3</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T12.2.22">
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A5.T12.2.22.1">
<span class="ltx_inline-block ltx_align_top" id="A5.T12.2.22.1.1">
<span class="ltx_p" id="A5.T12.2.22.1.1.1" style="width:433.6pt;">Simplifying both sides, on the left side, the +3 and -3 cancel each other out, leaving just x. And on the right side, 8 minus 3 is 5. So that simplifies to: x = 5</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T12.2.23">
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A5.T12.2.23.1">
<span class="ltx_inline-block ltx_align_top" id="A5.T12.2.23.1.1">
<span class="ltx_p" id="A5.T12.2.23.1.1.1" style="width:433.6pt;">Wait, let me check if that makes sense. If I substitute x back into the original equation, does it hold true? Let’s see:</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T12.2.24">
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A5.T12.2.24.1">
<span class="ltx_inline-block ltx_align_top" id="A5.T12.2.24.1.1">
<span class="ltx_p" id="A5.T12.2.24.1.1.1" style="width:433.6pt;">Original equation: x + 3 = 8</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T12.2.25">
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A5.T12.2.25.1">
<span class="ltx_inline-block ltx_align_top" id="A5.T12.2.25.1.1">
<span class="ltx_p" id="A5.T12.2.25.1.1.1" style="width:433.6pt;">Substitute x = 5: 5 + 3 = 8</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T12.2.26">
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A5.T12.2.26.1">
<span class="ltx_inline-block ltx_align_top" id="A5.T12.2.26.1.1">
<span class="ltx_p" id="A5.T12.2.26.1.1.1" style="width:433.6pt;">5 plus 3 is indeed 8, so that works out.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T12.2.27">
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A5.T12.2.27.1">
<span class="ltx_inline-block ltx_align_top" id="A5.T12.2.27.1.1">
<span class="ltx_p" id="A5.T12.2.27.1.1.1" style="width:433.6pt;">Another way might be to consider what number, when you add 3 to it, gives 8. So starting from 8, if I take away 3, I should get back to the original number. That’s the same as subtracting 3 from 8, which again gives 5. So that’s consistent with the first method.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T12.2.28">
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A5.T12.2.28.1">
<span class="ltx_inline-block ltx_align_top" id="A5.T12.2.28.1.1">
<span class="ltx_p" id="A5.T12.2.28.1.1.1" style="width:433.6pt;">Wait a second, what if the original problem was written differently? The problem says "x plus 3 equals 8." In symbols, that’s unambiguous: x + 3 = 8. So no, I think that’s right.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T12.2.29">
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A5.T12.2.29.1">
<span class="ltx_inline-block ltx_align_top" id="A5.T12.2.29.1.1">
<span class="ltx_p" id="A5.T12.2.29.1.1.1" style="width:433.6pt;">*Final Answer**</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T12.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A5.T12.1.1.1">
<span class="ltx_inline-block ltx_align_top" id="A5.T12.1.1.1.1">
<span class="ltx_p" id="A5.T12.1.1.1.1.1" style="width:433.6pt;">The value of x is <math class="ltx_Math ltx_framed ltx_framed_rectangle" display="block" id="A5.T12.1.1.1.1.1.m1.1"><semantics id="A5.T12.1.1.1.1.1.m1.1a"><mn id="A5.T12.1.1.1.1.1.m1.1.1" xref="A5.T12.1.1.1.1.1.m1.1.1.cmml">5</mn><annotation-xml encoding="MathML-Content" id="A5.T12.1.1.1.1.1.m1.1b"><cn id="A5.T12.1.1.1.1.1.m1.1.1.cmml" type="integer" xref="A5.T12.1.1.1.1.1.m1.1.1">5</cn></annotation-xml><annotation encoding="application/x-llamapun" id="A5.T12.1.1.1.1.1.m1.1c">5</annotation></semantics></math>.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T12.2.30">
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A5.T12.2.30.1">
<span class="ltx_inline-block ltx_align_top" id="A5.T12.2.30.1.1">
<span class="ltx_p" id="A5.T12.2.30.1.1.1" style="width:433.6pt;"></span>
<span class="ltx_p" id="A5.T12.2.30.1.1.2">### Output:</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T12.2.31">
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A5.T12.2.31.1">
<span class="ltx_inline-block ltx_align_top" id="A5.T12.2.31.1.1">
<span class="ltx_p" id="A5.T12.2.31.1.1.1" style="width:433.6pt;">Okay, so I need to figure out what x is if x plus 3 equals 8. The problem says "x plus 3 equals 8," so in mathematical terms, that would be:x + 3 = 8</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T12.2.32">
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A5.T12.2.32.1">
<span class="ltx_inline-block ltx_align_top" id="A5.T12.2.32.1.1">
<span class="ltx_p" id="A5.T12.2.32.1.1.1" style="width:433.6pt;">Alright, now I need to solve for x. From what I remember in algebra, the goal is to isolate x on one side of the equation. That means I need to get rid of that "+ 3" that’s being added to x. To do that, I should perform the opposite operation. Since it’s adding 3, the opposite would be subtracting 3.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T12.2.33">
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A5.T12.2.33.1">
<span class="ltx_inline-block ltx_align_top" id="A5.T12.2.33.1.1">
<span class="ltx_p" id="A5.T12.2.33.1.1.1" style="width:433.6pt;">So, if I subtract 3 from both sides, that should keep things equal. Let me try that: x + 3 - 3 = 8 - 3</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T12.2.34">
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A5.T12.2.34.1">
<span class="ltx_inline-block ltx_align_top" id="A5.T12.2.34.1.1">
<span class="ltx_p" id="A5.T12.2.34.1.1.1" style="width:433.6pt;">Simplifying both sides, on the left side, the +3 and -3 cancel each other out, leaving just x. And on the right side, 8 minus 3 is 5. So that simplifies to: x = 5<span class="ltx_text ltx_font_bold" id="A5.T12.2.34.1.1.1.1">&lt;split&gt;</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T12.2.35">
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A5.T12.2.35.1">
<span class="ltx_inline-block ltx_align_top" id="A5.T12.2.35.1.1">
<span class="ltx_p" id="A5.T12.2.35.1.1.1" style="width:433.6pt;">Wait, let me check if that makes sense. If I substitute x back into the original equation, does it hold true? Let’s see:</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T12.2.36">
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A5.T12.2.36.1">
<span class="ltx_inline-block ltx_align_top" id="A5.T12.2.36.1.1">
<span class="ltx_p" id="A5.T12.2.36.1.1.1" style="width:433.6pt;">Original equation: x + 3 = 8</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T12.2.37">
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A5.T12.2.37.1">
<span class="ltx_inline-block ltx_align_top" id="A5.T12.2.37.1.1">
<span class="ltx_p" id="A5.T12.2.37.1.1.1" style="width:433.6pt;">Substitute x = 5: 5 + 3 = 8</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T12.2.38">
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A5.T12.2.38.1">
<span class="ltx_inline-block ltx_align_top" id="A5.T12.2.38.1.1">
<span class="ltx_p" id="A5.T12.2.38.1.1.1" style="width:433.6pt;">5 plus 3 is indeed 8, so that works out.<span class="ltx_text ltx_font_bold" id="A5.T12.2.38.1.1.1.1">&lt;split&gt;</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T12.2.39">
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A5.T12.2.39.1">
<span class="ltx_inline-block ltx_align_top" id="A5.T12.2.39.1.1">
<span class="ltx_p" id="A5.T12.2.39.1.1.1" style="width:433.6pt;">Another way might be to consider what number, when you add 3 to it, gives 8. So starting from 8, if I take away 3, I should get back to the original number. That’s the same as subtracting 3 from 8, which again gives 5.<span class="ltx_text ltx_font_bold" id="A5.T12.2.39.1.1.1.1">&lt;split&gt;</span> So that’s consistent with the first method.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T12.2.40">
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A5.T12.2.40.1">
<span class="ltx_inline-block ltx_align_top" id="A5.T12.2.40.1.1">
<span class="ltx_p" id="A5.T12.2.40.1.1.1" style="width:433.6pt;">Wait a second, what if the original problem was written differently? The problem says "x plus 3 equals 8." In symbols, that’s unambiguous: x + 3 = 8. So no, I think that’s right.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T12.2.41">
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A5.T12.2.41.1">
<span class="ltx_inline-block ltx_align_top" id="A5.T12.2.41.1.1">
<span class="ltx_p" id="A5.T12.2.41.1.1.1" style="width:433.6pt;">*Final Answer**</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T12.2.2">
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A5.T12.2.2.1">
<span class="ltx_inline-block ltx_align_top" id="A5.T12.2.2.1.1">
<span class="ltx_p" id="A5.T12.2.2.1.1.1" style="width:433.6pt;">The value of x is <math class="ltx_Math ltx_framed ltx_framed_rectangle" display="block" id="A5.T12.2.2.1.1.1.m1.1"><semantics id="A5.T12.2.2.1.1.1.m1.1a"><mn id="A5.T12.2.2.1.1.1.m1.1.1" xref="A5.T12.2.2.1.1.1.m1.1.1.cmml">5</mn><annotation-xml encoding="MathML-Content" id="A5.T12.2.2.1.1.1.m1.1b"><cn id="A5.T12.2.2.1.1.1.m1.1.1.cmml" type="integer" xref="A5.T12.2.2.1.1.1.m1.1.1">5</cn></annotation-xml><annotation encoding="application/x-llamapun" id="A5.T12.2.2.1.1.1.m1.1c">5</annotation></semantics></math>.<span class="ltx_text ltx_font_bold" id="A5.T12.2.2.1.1.1.1">&lt;split&gt;</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T12.2.42">
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A5.T12.2.42.1">
<span class="ltx_inline-block ltx_align_top" id="A5.T12.2.42.1.1">
<span class="ltx_p" id="A5.T12.2.42.1.1.1" style="width:433.6pt;"></span>
<span class="ltx_p" id="A5.T12.2.42.1.1.2">## Case 2:</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T12.2.43">
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A5.T12.2.43.1">
<span class="ltx_inline-block ltx_align_top" id="A5.T12.2.43.1.1">
<span class="ltx_p" id="A5.T12.2.43.1.1.1" style="width:433.6pt;">……</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T12.2.44">
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A5.T12.2.44.1">
<span class="ltx_inline-block ltx_align_top" id="A5.T12.2.44.1.1">
<span class="ltx_p" id="A5.T12.2.44.1.1.1" style="width:433.6pt;"></span>
<span class="ltx_p" id="A5.T12.2.44.1.1.2">## Case 3:</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T12.2.45">
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A5.T12.2.45.1">
<span class="ltx_inline-block ltx_align_top" id="A5.T12.2.45.1.1">
<span class="ltx_p" id="A5.T12.2.45.1.1.1" style="width:433.6pt;">……</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T12.2.46">
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A5.T12.2.46.1">
<span class="ltx_inline-block ltx_align_top" id="A5.T12.2.46.1.1">
<span class="ltx_p" id="A5.T12.2.46.1.1.1" style="width:433.6pt;"></span>
<span class="ltx_p" id="A5.T12.2.46.1.1.2"># Eval Target:</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T12.2.47">
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A5.T12.2.47.1">
<span class="ltx_inline-block ltx_align_top" id="A5.T12.2.47.1.1">
<span class="ltx_p" id="A5.T12.2.47.1.1.1" style="width:433.6pt;">## Question:</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T12.2.48">
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A5.T12.2.48.1">
<span class="ltx_inline-block ltx_align_top" id="A5.T12.2.48.1.1">
<span class="ltx_p" id="A5.T12.2.48.1.1.1" style="width:433.6pt;">{question}</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T12.2.49">
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A5.T12.2.49.1">
<span class="ltx_inline-block ltx_align_top" id="A5.T12.2.49.1.1">
<span class="ltx_p" id="A5.T12.2.49.1.1.1" style="width:433.6pt;"></span>
<span class="ltx_p" id="A5.T12.2.49.1.1.2">## Ground Truth:</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T12.2.50">
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A5.T12.2.50.1">
<span class="ltx_inline-block ltx_align_top" id="A5.T12.2.50.1.1">
<span class="ltx_p" id="A5.T12.2.50.1.1.1" style="width:433.6pt;">{ground_truth}</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T12.2.51">
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A5.T12.2.51.1">
<span class="ltx_inline-block ltx_align_top" id="A5.T12.2.51.1.1">
<span class="ltx_p" id="A5.T12.2.51.1.1.1" style="width:433.6pt;"></span>
<span class="ltx_p" id="A5.T12.2.51.1.1.2">## Chain of Thought:</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T12.2.52">
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A5.T12.2.52.1">
<span class="ltx_inline-block ltx_align_top" id="A5.T12.2.52.1.1">
<span class="ltx_p" id="A5.T12.2.52.1.1.1" style="width:433.6pt;">{thinking_process}</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T12.2.53">
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top ltx_border_bb" id="A5.T12.2.53.1">
<span class="ltx_inline-block ltx_align_top" id="A5.T12.2.53.1.1">
<span class="ltx_p" id="A5.T12.2.53.1.1.1" style="width:433.6pt;"></span>
<span class="ltx_p" id="A5.T12.2.53.1.1.2">## Output:</span>
</span>
</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 Table 12 presents the prompts used for the solution segmentation task in the S1-Bench evaluation.  The task involves segmenting a model's chain of thought into sub-reasoning processes.  The prompts provide detailed instructions on how to identify and separate sub-processes based on their alignment with the ground truth answer, ensuring each segment represents a distinct step toward reaching the final answer. Examples are given to illustrate various levels of reasoning complexity and how the segmentation marker should be applied.
> <details>
> <summary>read the caption</summary>
> Table 12: Prompts for Solution Segmentation.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="A5.T13.1">
<tr class="ltx_tr" id="A5.T13.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top ltx_border_tt" id="A5.T13.1.1.1">
<span class="ltx_inline-block ltx_align_top" id="A5.T13.1.1.1.1">
<span class="ltx_p" id="A5.T13.1.1.1.1.1" style="width:433.6pt;"><span class="ltx_text ltx_font_bold" id="A5.T13.1.1.1.1.1.1">Prompts for Error Analysis</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T13.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top ltx_border_t" id="A5.T13.1.2.1">
<span class="ltx_inline-block ltx_align_top" id="A5.T13.1.2.1.1">
<span class="ltx_p" id="A5.T13.1.2.1.1.1" style="width:433.6pt;"><span class="ltx_text ltx_font_bold ltx_font_italic" id="A5.T13.1.2.1.1.1.1">Types of Correct</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T13.1.3">
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top ltx_border_t" id="A5.T13.1.3.1">
<span class="ltx_inline-block ltx_align_top" id="A5.T13.1.3.1.1">
<span class="ltx_p" id="A5.T13.1.3.1.1.1" style="width:433.6pt;"># Task Description:</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T13.1.4">
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A5.T13.1.4.1">
<span class="ltx_inline-block ltx_align_top" id="A5.T13.1.4.1.1">
<span class="ltx_p" id="A5.T13.1.4.1.1.1" style="width:433.6pt;">You will receive a Question, its corresponding Ground Truth, and a Chain of Thought(COT) generated by a LLM for that Question.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T13.1.5">
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A5.T13.1.5.1">
<span class="ltx_inline-block ltx_align_top" id="A5.T13.1.5.1.1">
<span class="ltx_p" id="A5.T13.1.5.1.1.1" style="width:433.6pt;">Your task is to carefully analyze the CoT and assign it to one of the two predefined categories listed below.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T13.1.6">
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A5.T13.1.6.1">
<span class="ltx_inline-block ltx_align_top" id="A5.T13.1.6.1.1">
<span class="ltx_p" id="A5.T13.1.6.1.1.1" style="width:433.6pt;"></span>
<span class="ltx_p" id="A5.T13.1.6.1.1.2"># Categories:</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T13.1.7">
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A5.T13.1.7.1">
<span class="ltx_inline-block ltx_align_top" id="A5.T13.1.7.1.1">
<span class="ltx_p" id="A5.T13.1.7.1.1.1" style="width:433.6pt;">1: The CoT ***includes explicit incorrect conclusions*** in intermediate reasoning steps.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T13.1.8">
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A5.T13.1.8.1">
<span class="ltx_inline-block ltx_align_top" id="A5.T13.1.8.1.1">
<span class="ltx_p" id="A5.T13.1.8.1.1.1" style="width:433.6pt;">2: The CoT ***doesn’t include any explicit incorrect conclusion*** in intermediate reasoning steps.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T13.1.9">
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A5.T13.1.9.1">
<span class="ltx_inline-block ltx_align_top" id="A5.T13.1.9.1.1">
<span class="ltx_p" id="A5.T13.1.9.1.1.1" style="width:433.6pt;"></span>
<span class="ltx_p" id="A5.T13.1.9.1.1.2">Output your evaluation in the following format:</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T13.1.10">
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A5.T13.1.10.1">
<span class="ltx_inline-block ltx_align_top" id="A5.T13.1.10.1.1">
<span class="ltx_p" id="A5.T13.1.10.1.1.1" style="width:433.6pt;"></span>
<span class="ltx_p" id="A5.T13.1.10.1.1.2"># TheReason:</span>
<span class="ltx_p" id="A5.T13.1.10.1.1.3">[note: Conduct a step-by-step analysis, stating if and where explicit incorrect conclusions occur in the COT.]</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T13.1.11">
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A5.T13.1.11.1">
<span class="ltx_inline-block ltx_align_top" id="A5.T13.1.11.1.1">
<span class="ltx_p" id="A5.T13.1.11.1.1.1" style="width:433.6pt;"></span>
<span class="ltx_p" id="A5.T13.1.11.1.1.2"># ErrorType:</span>
<span class="ltx_p" id="A5.T13.1.11.1.1.3">[note: Summarize each incorrect conclusion into a specific error type using a phrase of less than 5 words, such as factual inaccuracies, logical fallacies, comprehension mistakes, calculation errors, formatting issues, and so forth, to better conduct further evaluation and analysis. Directly output a Python list, where each element represents the error type of a specific incorrect conclusion in the CoT. If there are no incorrect conclusions, return an empty list.]</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T13.1.12">
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A5.T13.1.12.1">
<span class="ltx_inline-block ltx_align_top" id="A5.T13.1.12.1.1">
<span class="ltx_p" id="A5.T13.1.12.1.1.1" style="width:433.6pt;"></span>
<span class="ltx_p" id="A5.T13.1.12.1.1.2"># TheCategory:</span>
<span class="ltx_p" id="A5.T13.1.12.1.1.3">[note: Provide your classification based on your analysis using only the number "1" or "2". Do not add any additional text.]</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T13.1.13">
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A5.T13.1.13.1">
<span class="ltx_inline-block ltx_align_top" id="A5.T13.1.13.1.1">
<span class="ltx_p" id="A5.T13.1.13.1.1.1" style="width:433.6pt;"></span>
<span class="ltx_p" id="A5.T13.1.13.1.1.2"># Question:</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T13.1.14">
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A5.T13.1.14.1">
<span class="ltx_inline-block ltx_align_top" id="A5.T13.1.14.1.1">
<span class="ltx_p" id="A5.T13.1.14.1.1.1" style="width:433.6pt;">{question}</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T13.1.15">
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A5.T13.1.15.1">
<span class="ltx_inline-block ltx_align_top" id="A5.T13.1.15.1.1">
<span class="ltx_p" id="A5.T13.1.15.1.1.1" style="width:433.6pt;"></span>
<span class="ltx_p" id="A5.T13.1.15.1.1.2"># Ground Truth:</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T13.1.16">
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A5.T13.1.16.1">
<span class="ltx_inline-block ltx_align_top" id="A5.T13.1.16.1.1">
<span class="ltx_p" id="A5.T13.1.16.1.1.1" style="width:433.6pt;">{gound_truth}</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T13.1.17">
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A5.T13.1.17.1">
<span class="ltx_inline-block ltx_align_top" id="A5.T13.1.17.1.1">
<span class="ltx_p" id="A5.T13.1.17.1.1.1" style="width:433.6pt;"></span>
<span class="ltx_p" id="A5.T13.1.17.1.1.2"># COT:</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T13.1.18">
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A5.T13.1.18.1">
<span class="ltx_inline-block ltx_align_top" id="A5.T13.1.18.1.1">
<span class="ltx_p" id="A5.T13.1.18.1.1.1" style="width:433.6pt;">{thinking_process}</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T13.1.19">
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A5.T13.1.19.1">
<span class="ltx_inline-block ltx_align_top" id="A5.T13.1.19.1.1">
<span class="ltx_p" id="A5.T13.1.19.1.1.1" style="width:433.6pt;"></span>
<span class="ltx_p" id="A5.T13.1.19.1.1.2"># TheReason:</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T13.1.20">
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top ltx_border_t" id="A5.T13.1.20.1">
<span class="ltx_inline-block ltx_align_top" id="A5.T13.1.20.1.1">
<span class="ltx_p" id="A5.T13.1.20.1.1.1" style="width:433.6pt;"><span class="ltx_text ltx_font_bold ltx_font_italic" id="A5.T13.1.20.1.1.1.1">Types of Error</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T13.1.21">
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top ltx_border_t" id="A5.T13.1.21.1">
<span class="ltx_inline-block ltx_align_top" id="A5.T13.1.21.1.1">
<span class="ltx_p" id="A5.T13.1.21.1.1.1" style="width:433.6pt;"># Task Description:</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T13.1.22">
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A5.T13.1.22.1">
<span class="ltx_inline-block ltx_align_top" id="A5.T13.1.22.1.1">
<span class="ltx_p" id="A5.T13.1.22.1.1.1" style="width:433.6pt;">You will receive a Question, its corresponding Ground Truth, and a Chain of Thought(COT) generated by a LLM for that Question.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T13.1.23">
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A5.T13.1.23.1">
<span class="ltx_inline-block ltx_align_top" id="A5.T13.1.23.1.1">
<span class="ltx_p" id="A5.T13.1.23.1.1.1" style="width:433.6pt;">Your task is to carefully analyze the CoT and assign it to one of the two predefined categories listed below.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T13.1.24">
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A5.T13.1.24.1">
<span class="ltx_inline-block ltx_align_top" id="A5.T13.1.24.1.1">
<span class="ltx_p" id="A5.T13.1.24.1.1.1" style="width:433.6pt;"></span>
<span class="ltx_p" id="A5.T13.1.24.1.1.2"># Categories:</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T13.1.25">
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A5.T13.1.25.1">
<span class="ltx_inline-block ltx_align_top" id="A5.T13.1.25.1.1">
<span class="ltx_p" id="A5.T13.1.25.1.1.1" style="width:433.6pt;">1: Regardless of whether the CoT ultimately arrives at the correct final answer or not, ***the correct answer is explicitly mentioned at least once*** within the reasoning steps (even if it is not ultimately adopted).</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T13.1.26">
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A5.T13.1.26.1">
<span class="ltx_inline-block ltx_align_top" id="A5.T13.1.26.1.1">
<span class="ltx_p" id="A5.T13.1.26.1.1.1" style="width:433.6pt;">2: ***The correct answer is never explicitly mentioned or referenced*** at any point within the reasoning steps.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T13.1.27">
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A5.T13.1.27.1">
<span class="ltx_inline-block ltx_align_top" id="A5.T13.1.27.1.1">
<span class="ltx_p" id="A5.T13.1.27.1.1.1" style="width:433.6pt;"></span>
<span class="ltx_p" id="A5.T13.1.27.1.1.2">Output your evaluation in the following format:</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T13.1.28">
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A5.T13.1.28.1">
<span class="ltx_inline-block ltx_align_top" id="A5.T13.1.28.1.1">
<span class="ltx_p" id="A5.T13.1.28.1.1.1" style="width:433.6pt;"></span>
<span class="ltx_p" id="A5.T13.1.28.1.1.2"># TheReason:</span>
<span class="ltx_p" id="A5.T13.1.28.1.1.3">[note: Conduct a step-by-step analysis, explicitly stating whether and where a correct answer is mentioned within the reasoning steps.]</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T13.1.29">
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A5.T13.1.29.1">
<span class="ltx_inline-block ltx_align_top" id="A5.T13.1.29.1.1">
<span class="ltx_p" id="A5.T13.1.29.1.1.1" style="width:433.6pt;"></span>
<span class="ltx_p" id="A5.T13.1.29.1.1.2"># TheCategory:</span>
<span class="ltx_p" id="A5.T13.1.29.1.1.3">[note: Provide your classification based on your analysis using only the number "1" or "2". Do not add any additional text.]</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T13.1.30">
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A5.T13.1.30.1">
<span class="ltx_inline-block ltx_align_top" id="A5.T13.1.30.1.1">
<span class="ltx_p" id="A5.T13.1.30.1.1.1" style="width:433.6pt;"></span>
<span class="ltx_p" id="A5.T13.1.30.1.1.2"># Question:</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T13.1.31">
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A5.T13.1.31.1">
<span class="ltx_inline-block ltx_align_top" id="A5.T13.1.31.1.1">
<span class="ltx_p" id="A5.T13.1.31.1.1.1" style="width:433.6pt;">{question}</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T13.1.32">
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A5.T13.1.32.1">
<span class="ltx_inline-block ltx_align_top" id="A5.T13.1.32.1.1">
<span class="ltx_p" id="A5.T13.1.32.1.1.1" style="width:433.6pt;"></span>
<span class="ltx_p" id="A5.T13.1.32.1.1.2"># Ground Truth:</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T13.1.33">
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A5.T13.1.33.1">
<span class="ltx_inline-block ltx_align_top" id="A5.T13.1.33.1.1">
<span class="ltx_p" id="A5.T13.1.33.1.1.1" style="width:433.6pt;">{answer}</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T13.1.34">
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A5.T13.1.34.1">
<span class="ltx_inline-block ltx_align_top" id="A5.T13.1.34.1.1">
<span class="ltx_p" id="A5.T13.1.34.1.1.1" style="width:433.6pt;"></span>
<span class="ltx_p" id="A5.T13.1.34.1.1.2"># COT:</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T13.1.35">
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A5.T13.1.35.1">
<span class="ltx_inline-block ltx_align_top" id="A5.T13.1.35.1.1">
<span class="ltx_p" id="A5.T13.1.35.1.1.1" style="width:433.6pt;">{thinking_part}</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T13.1.36">
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top ltx_border_bb" id="A5.T13.1.36.1">
<span class="ltx_inline-block ltx_align_top" id="A5.T13.1.36.1.1">
<span class="ltx_p" id="A5.T13.1.36.1.1.1" style="width:433.6pt;"></span>
<span class="ltx_p" id="A5.T13.1.36.1.1.2"># TheReason:</span>
</span>
</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the prompts used for the error analysis task in the S1-Bench evaluation.  The prompts guide evaluators in classifying the Large Reasoning Model (LRM) outputs into categories based on the presence or absence of explicit incorrect conclusions during the reasoning process and whether the correct answer was mentioned at any point. This detailed analysis helps to understand the types of errors made by LRMs and their reasoning strategies.
> <details>
> <summary>read the caption</summary>
> Table 13: Prompts for Error Analysis.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="A5.T14.1">
<tr class="ltx_tr" id="A5.T14.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top ltx_border_tt" id="A5.T14.1.1.1">
<span class="ltx_inline-block ltx_align_top" id="A5.T14.1.1.1.1">
<span class="ltx_p" id="A5.T14.1.1.1.1.1" style="width:433.6pt;"><span class="ltx_text ltx_font_bold" id="A5.T14.1.1.1.1.1.1">Prompts for Extracting Prejudgment Sentences and Words</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T14.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top ltx_border_t" id="A5.T14.1.2.1">
<span class="ltx_inline-block ltx_align_top" id="A5.T14.1.2.1.1">
<span class="ltx_p" id="A5.T14.1.2.1.1.1" style="width:433.6pt;"><span class="ltx_text ltx_font_bold ltx_font_italic" id="A5.T14.1.2.1.1.1.1">Extracting Sentences</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T14.1.3">
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top ltx_border_t" id="A5.T14.1.3.1">
<span class="ltx_inline-block ltx_align_top" id="A5.T14.1.3.1.1">
<span class="ltx_p" id="A5.T14.1.3.1.1.1" style="width:433.6pt;"># Given the beginning of a model’s thought process when answering a question, determine if there is any evaluation by the model regarding the difficulty level or category of the question.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T14.1.4">
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A5.T14.1.4.1">
<span class="ltx_inline-block ltx_align_top" id="A5.T14.1.4.1.1">
<span class="ltx_p" id="A5.T14.1.4.1.1.1" style="width:433.6pt;"></span>
<span class="ltx_p" id="A5.T14.1.4.1.1.2"># For example:</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T14.1.5">
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A5.T14.1.5.1">
<span class="ltx_inline-block ltx_align_top" id="A5.T14.1.5.1.1">
<span class="ltx_p" id="A5.T14.1.5.1.1.1" style="width:433.6pt;">Example Evaluation 1: This seems to be an easy question.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T14.1.6">
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A5.T14.1.6.1">
<span class="ltx_inline-block ltx_align_top" id="A5.T14.1.6.1.1">
<span class="ltx_p" id="A5.T14.1.6.1.1.1" style="width:433.6pt;">Example Evaluation 2: <span class="ltx_ERROR undefined" id="A5.T14.1.6.1.1.1.1">{CJK}</span>UTF8gkai这看起来似乎是个基础的问题</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T14.1.7">
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A5.T14.1.7.1">
<span class="ltx_inline-block ltx_align_top" id="A5.T14.1.7.1.1">
<span class="ltx_p" id="A5.T14.1.7.1.1.1" style="width:433.6pt;">Example Evaluation 3: This question is a bit complex.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T14.1.8">
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A5.T14.1.8.1">
<span class="ltx_inline-block ltx_align_top" id="A5.T14.1.8.1.1">
<span class="ltx_p" id="A5.T14.1.8.1.1.1" style="width:433.6pt;">Example Evaluation 4: <span class="ltx_ERROR undefined" id="A5.T14.1.8.1.1.1.1">{CJK}</span>UTF8gkai这个问题看起来复杂</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T14.1.9">
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A5.T14.1.9.1">
<span class="ltx_inline-block ltx_align_top" id="A5.T14.1.9.1.1">
<span class="ltx_p" id="A5.T14.1.9.1.1.1" style="width:433.6pt;"></span>
<span class="ltx_p" id="A5.T14.1.9.1.1.2"># Beginning of thought process:</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T14.1.10">
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A5.T14.1.10.1">
<span class="ltx_inline-block ltx_align_top" id="A5.T14.1.10.1.1">
<span class="ltx_p" id="A5.T14.1.10.1.1.1" style="width:433.6pt;">{thinking_process}</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T14.1.11">
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A5.T14.1.11.1">
<span class="ltx_inline-block ltx_align_top" id="A5.T14.1.11.1.1">
<span class="ltx_p" id="A5.T14.1.11.1.1.1" style="width:433.6pt;"></span>
<span class="ltx_p" id="A5.T14.1.11.1.1.2"># Please output only the evaluative short phrase you find. If there is no evaluation, output "None".</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T14.1.12">
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A5.T14.1.12.1">
<span class="ltx_inline-block ltx_align_top" id="A5.T14.1.12.1.1">
<span class="ltx_p" id="A5.T14.1.12.1.1.1" style="width:433.6pt;"># Output:</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T14.1.13">
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top ltx_border_t" id="A5.T14.1.13.1">
<span class="ltx_inline-block ltx_align_top" id="A5.T14.1.13.1.1">
<span class="ltx_p" id="A5.T14.1.13.1.1.1" style="width:433.6pt;"><span class="ltx_text ltx_font_bold ltx_font_italic" id="A5.T14.1.13.1.1.1.1">Extracting Words</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T14.1.14">
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top ltx_border_t" id="A5.T14.1.14.1">
<span class="ltx_inline-block ltx_align_top" id="A5.T14.1.14.1.1">
<span class="ltx_p" id="A5.T14.1.14.1.1.1" style="width:433.6pt;"># You are given a comment sentence, and your goal is to find the only comment-related word.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T14.1.15">
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A5.T14.1.15.1">
<span class="ltx_inline-block ltx_align_top" id="A5.T14.1.15.1.1">
<span class="ltx_p" id="A5.T14.1.15.1.1.1" style="width:433.6pt;"></span>
<span class="ltx_p" id="A5.T14.1.15.1.1.2"># For example:</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T14.1.16">
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A5.T14.1.16.1">
<span class="ltx_inline-block ltx_align_top" id="A5.T14.1.16.1.1">
<span class="ltx_p" id="A5.T14.1.16.1.1.1" style="width:433.6pt;">## case 1:</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T14.1.17">
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A5.T14.1.17.1">
<span class="ltx_inline-block ltx_align_top" id="A5.T14.1.17.1.1">
<span class="ltx_p" id="A5.T14.1.17.1.1.1" style="width:433.6pt;">Sentence: <span class="ltx_ERROR undefined" id="A5.T14.1.17.1.1.1.1">{CJK}</span>UTF8gkai这是一个很简单的算术题</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T14.1.18">
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A5.T14.1.18.1">
<span class="ltx_inline-block ltx_align_top" id="A5.T14.1.18.1.1">
<span class="ltx_p" id="A5.T14.1.18.1.1.1" style="width:433.6pt;">Word: <span class="ltx_ERROR undefined" id="A5.T14.1.18.1.1.1.1">{CJK}</span>UTF8gkai简单</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T14.1.19">
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A5.T14.1.19.1">
<span class="ltx_inline-block ltx_align_top" id="A5.T14.1.19.1.1">
<span class="ltx_p" id="A5.T14.1.19.1.1.1" style="width:433.6pt;"></span>
<span class="ltx_p" id="A5.T14.1.19.1.1.2">## case 2:</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T14.1.20">
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A5.T14.1.20.1">
<span class="ltx_inline-block ltx_align_top" id="A5.T14.1.20.1.1">
<span class="ltx_p" id="A5.T14.1.20.1.1.1" style="width:433.6pt;">Sentence: that seems pretty straightforward</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T14.1.21">
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A5.T14.1.21.1">
<span class="ltx_inline-block ltx_align_top" id="A5.T14.1.21.1.1">
<span class="ltx_p" id="A5.T14.1.21.1.1.1" style="width:433.6pt;">Word: straightforward</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T14.1.22">
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A5.T14.1.22.1">
<span class="ltx_inline-block ltx_align_top" id="A5.T14.1.22.1.1">
<span class="ltx_p" id="A5.T14.1.22.1.1.1" style="width:433.6pt;"></span>
<span class="ltx_p" id="A5.T14.1.22.1.1.2"># The comment sentence:</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T14.1.23">
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A5.T14.1.23.1">
<span class="ltx_inline-block ltx_align_top" id="A5.T14.1.23.1.1">
<span class="ltx_p" id="A5.T14.1.23.1.1.1" style="width:433.6pt;">{review_sentence}</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T14.1.24">
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top ltx_border_bb" id="A5.T14.1.24.1">
<span class="ltx_inline-block ltx_align_top" id="A5.T14.1.24.1.1">
<span class="ltx_p" id="A5.T14.1.24.1.1.1" style="width:433.6pt;"></span>
<span class="ltx_p" id="A5.T14.1.24.1.1.2">Output the only comment-related word:</span>
</span>
</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 Table 14 presents the prompts used to extract prejudgment sentences and words from the large language model's thinking process. The prompts are designed to identify instances where the model explicitly expresses an opinion on the simplicity or complexity of a given question, often before starting its main reasoning process.  The goal is to assess if the model can intuitively evaluate the difficulty of a task and adapt its strategy accordingly.
> <details>
> <summary>read the caption</summary>
> Table 14: Prompts for Extracting Prejudgment Sentences and Words.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="A5.T15.1">
<tr class="ltx_tr" id="A5.T15.1.1">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="A5.T15.1.1.1" style="padding:1pt 5.0pt;"><span class="ltx_text ltx_font_bold" id="A5.T15.1.1.1.1">cate.</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="A5.T15.1.1.2" style="padding:1pt 5.0pt;"><span class="ltx_text ltx_font_bold" id="A5.T15.1.1.2.1">subcatrgories</span></td>
<td class="ltx_td ltx_align_left ltx_border_tt" id="A5.T15.1.1.3" style="padding:1pt 5.0pt;"><span class="ltx_text ltx_font_bold" id="A5.T15.1.1.3.1">Explanation and cases</span></td>
</tr>
<tr class="ltx_tr" id="A5.T15.1.2">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A5.T15.1.2.1" rowspan="23" style="padding:1pt 5.0pt;"><span class="ltx_text" id="A5.T15.1.2.1.1">
<span class="ltx_inline-block ltx_transformed_outer" id="A5.T15.1.2.1.1.1" style="width:8.6pt;height:81pt;vertical-align:-38.1pt;"><span class="ltx_transformed_inner" style="width:81.0pt;transform:translate(-36.17pt,2.92pt) rotate(-90deg) ;">
<span class="ltx_p" id="A5.T15.1.2.1.1.1.1"><span class="ltx_text ltx_font_bold" id="A5.T15.1.2.1.1.1.1.1">reasoning question</span></span>
</span></span></span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A5.T15.1.2.2" rowspan="3" style="padding:1pt 5.0pt;"><span class="ltx_text" id="A5.T15.1.2.2.1">numerical reasoning</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A5.T15.1.2.3" style="padding:1pt 5.0pt;">Questions that require performing basic mathematical operations or solving simple algebraic</td>
</tr>
<tr class="ltx_tr" id="A5.T15.1.3">
<td class="ltx_td ltx_align_left" id="A5.T15.1.3.1" style="padding:1pt 5.0pt;">equations to arrive at a numerical answer.</td>
</tr>
<tr class="ltx_tr" id="A5.T15.1.4">
<td class="ltx_td ltx_align_left" id="A5.T15.1.4.1" style="padding:1pt 5.0pt;">
<span class="ltx_text ltx_font_bold" id="A5.T15.1.4.1.1">Case:</span> What’s two plus three?</td>
</tr>
<tr class="ltx_tr" id="A5.T15.1.5">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A5.T15.1.5.1" rowspan="4" style="padding:1pt 5.0pt;"><span class="ltx_text" id="A5.T15.1.5.1.1">code reasoning</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A5.T15.1.5.2" style="padding:1pt 5.0pt;">Questions that require tracing through and executing simple code snippets to determine their</td>
</tr>
<tr class="ltx_tr" id="A5.T15.1.6">
<td class="ltx_td ltx_align_left" id="A5.T15.1.6.1" style="padding:1pt 5.0pt;">output or behavior when run in a specific programming environment.</td>
</tr>
<tr class="ltx_tr" id="A5.T15.1.7">
<td class="ltx_td ltx_align_left" id="A5.T15.1.7.1" style="padding:1pt 5.0pt;">
<span class="ltx_text ltx_font_bold" id="A5.T15.1.7.1.1">Case:</span> What is the output of the following code when run in Python 3 environment: word =</td>
</tr>
<tr class="ltx_tr" id="A5.T15.1.8">
<td class="ltx_td ltx_align_left" id="A5.T15.1.8.1" style="padding:1pt 5.0pt;">"hello"\nprint(len(word))</td>
</tr>
<tr class="ltx_tr" id="A5.T15.1.9">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A5.T15.1.9.1" rowspan="3" style="padding:1pt 5.0pt;"><span class="ltx_text" id="A5.T15.1.9.1.1">set reasoning</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A5.T15.1.9.2" style="padding:1pt 5.0pt;">Questions that require applying simple syllogistic reasoning to determine whether elements</td>
</tr>
<tr class="ltx_tr" id="A5.T15.1.10">
<td class="ltx_td ltx_align_left" id="A5.T15.1.10.1" style="padding:1pt 5.0pt;">belong to sets based on clearly stated relationships.</td>
</tr>
<tr class="ltx_tr" id="A5.T15.1.11">
<td class="ltx_td ltx_align_left" id="A5.T15.1.11.1" style="padding:1pt 5.0pt;">
<span class="ltx_text ltx_font_bold" id="A5.T15.1.11.1.1">Case:</span> All squares are quadrilaterals. A shape is a square, is it a quadrilateral?</td>
</tr>
<tr class="ltx_tr" id="A5.T15.1.12">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A5.T15.1.12.1" rowspan="3" style="padding:1pt 5.0pt;"><span class="ltx_text" id="A5.T15.1.12.1.1">temporal reasoning</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A5.T15.1.12.2" style="padding:1pt 5.0pt;">Questions that require calculating time durations, ages, or future dates by applying simple</td>
</tr>
<tr class="ltx_tr" id="A5.T15.1.13">
<td class="ltx_td ltx_align_left" id="A5.T15.1.13.1" style="padding:1pt 5.0pt;">arithmetic operations to temporal information.</td>
</tr>
<tr class="ltx_tr" id="A5.T15.1.14">
<td class="ltx_td ltx_align_left" id="A5.T15.1.14.1" style="padding:1pt 5.0pt;">
<span class="ltx_text ltx_font_bold" id="A5.T15.1.14.1.1">Case:</span> How many minutes equal 120 seconds?</td>
</tr>
<tr class="ltx_tr" id="A5.T15.1.15">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A5.T15.1.15.1" rowspan="3" style="padding:1pt 5.0pt;"><span class="ltx_text" id="A5.T15.1.15.1.1">spatial reasoning</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A5.T15.1.15.2" style="padding:1pt 5.0pt;">Questions that require determining relative positions, directions, or orientations of objects</td>
</tr>
<tr class="ltx_tr" id="A5.T15.1.16">
<td class="ltx_td ltx_align_left" id="A5.T15.1.16.1" style="padding:1pt 5.0pt;">in space based on simple spatial relationships.</td>
</tr>
<tr class="ltx_tr" id="A5.T15.1.17">
<td class="ltx_td ltx_align_left" id="A5.T15.1.17.1" style="padding:1pt 5.0pt;">
<span class="ltx_text ltx_font_bold" id="A5.T15.1.17.1.1">Case:</span> If a bird is flying above a tree, where is the tree in relation to the bird?</td>
</tr>
<tr class="ltx_tr" id="A5.T15.1.18">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A5.T15.1.18.1" rowspan="4" style="padding:1pt 5.0pt;"><span class="ltx_text" id="A5.T15.1.18.1.1">causal reasoning</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A5.T15.1.18.2" style="padding:1pt 5.0pt;">Questions that require determining outcomes by applying simple cause-and-effect</td>
</tr>
<tr class="ltx_tr" id="A5.T15.1.19">
<td class="ltx_td ltx_align_left" id="A5.T15.1.19.1" style="padding:1pt 5.0pt;">relationships based on given conditional statements.</td>
</tr>
<tr class="ltx_tr" id="A5.T15.1.20">
<td class="ltx_td ltx_align_left" id="A5.T15.1.20.1" style="padding:1pt 5.0pt;">
<span class="ltx_text ltx_font_bold" id="A5.T15.1.20.1.1">Case:</span> If ferromagnetic material is placed in a magnetic field, it will become magnetized. An</td>
</tr>
<tr class="ltx_tr" id="A5.T15.1.21">
<td class="ltx_td ltx_align_left" id="A5.T15.1.21.1" style="padding:1pt 5.0pt;">iron nail was placed next to a strong magnet for some time. Has the nail been magnetized?</td>
</tr>
<tr class="ltx_tr" id="A5.T15.1.22">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A5.T15.1.22.1" rowspan="3" style="padding:1pt 5.0pt;"><span class="ltx_text" id="A5.T15.1.22.1.1">natural law reasoning</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A5.T15.1.22.2" style="padding:1pt 5.0pt;">Questions that require applying basic knowledge of physical laws and natural phenomena to</td>
</tr>
<tr class="ltx_tr" id="A5.T15.1.23">
<td class="ltx_td ltx_align_left" id="A5.T15.1.23.1" style="padding:1pt 5.0pt;">predict simple observable outcomes in everyday scenarios.</td>
</tr>
<tr class="ltx_tr" id="A5.T15.1.24">
<td class="ltx_td ltx_align_left" id="A5.T15.1.24.1" style="padding:1pt 5.0pt;">
<span class="ltx_text ltx_font_bold" id="A5.T15.1.24.1.1">Case:</span> Which is faster, an airplane or the propagation of light?</td>
</tr>
<tr class="ltx_tr" id="A5.T15.1.25">
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r ltx_border_t" id="A5.T15.1.25.1" rowspan="20" style="padding:1pt 5.0pt;"><span class="ltx_text" id="A5.T15.1.25.1.1">
<span class="ltx_inline-block ltx_transformed_outer" id="A5.T15.1.25.1.1.1" style="width:8.9pt;height:84.8pt;vertical-align:-39.9pt;"><span class="ltx_transformed_inner" style="width:84.8pt;transform:translate(-37.94pt,2.92pt) rotate(-90deg) ;">
<span class="ltx_p" id="A5.T15.1.25.1.1.1.1"><span class="ltx_text ltx_font_bold" id="A5.T15.1.25.1.1.1.1.1">knowledge question</span></span>
</span></span></span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A5.T15.1.25.2" rowspan="3" style="padding:1pt 5.0pt;"><span class="ltx_text" id="A5.T15.1.25.2.1">geometry facts</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A5.T15.1.25.3" style="padding:1pt 5.0pt;">Questions that require recalling simple and fundamental geometric properties about shapes,</td>
</tr>
<tr class="ltx_tr" id="A5.T15.1.26">
<td class="ltx_td ltx_align_left" id="A5.T15.1.26.1" style="padding:1pt 5.0pt;">angles, and basic geometric figures.</td>
</tr>
<tr class="ltx_tr" id="A5.T15.1.27">
<td class="ltx_td ltx_align_left" id="A5.T15.1.27.1" style="padding:1pt 5.0pt;">
<span class="ltx_text ltx_font_bold" id="A5.T15.1.27.1.1">Case:</span> How many angles does a trapezoid have?</td>
</tr>
<tr class="ltx_tr" id="A5.T15.1.28">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A5.T15.1.28.1" rowspan="3" style="padding:1pt 5.0pt;"><span class="ltx_text" id="A5.T15.1.28.1.1">geographic facts</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A5.T15.1.28.2" style="padding:1pt 5.0pt;">Questions that require recalling simple factual information about locations, landmarks,</td>
</tr>
<tr class="ltx_tr" id="A5.T15.1.29">
<td class="ltx_td ltx_align_left" id="A5.T15.1.29.1" style="padding:1pt 5.0pt;">political divisions, celestial bodies, and other basic geographic knowledge.</td>
</tr>
<tr class="ltx_tr" id="A5.T15.1.30">
<td class="ltx_td ltx_align_left" id="A5.T15.1.30.1" style="padding:1pt 5.0pt;">
<span class="ltx_text ltx_font_bold" id="A5.T15.1.30.1.1">Case:</span> Which is the largest continent on Earth?</td>
</tr>
<tr class="ltx_tr" id="A5.T15.1.31">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A5.T15.1.31.1" rowspan="2" style="padding:1pt 5.0pt;"><span class="ltx_text" id="A5.T15.1.31.1.1">historical facts</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A5.T15.1.31.2" style="padding:1pt 5.0pt;">Questions that require recalling basic facts about historical events.</td>
</tr>
<tr class="ltx_tr" id="A5.T15.1.32">
<td class="ltx_td ltx_align_left" id="A5.T15.1.32.1" style="padding:1pt 5.0pt;">
<span class="ltx_text ltx_font_bold" id="A5.T15.1.32.1.1">Case:</span> Which country first invented paper?</td>
</tr>
<tr class="ltx_tr" id="A5.T15.1.33">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A5.T15.1.33.1" rowspan="3" style="padding:1pt 5.0pt;"><span class="ltx_text" id="A5.T15.1.33.1.1">biographical facts</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A5.T15.1.33.2" style="padding:1pt 5.0pt;">Questions that require recalling basic facts about the identities, achievements, and</td>
</tr>
<tr class="ltx_tr" id="A5.T15.1.34">
<td class="ltx_td ltx_align_left" id="A5.T15.1.34.1" style="padding:1pt 5.0pt;">characteristics of historical figures.</td>
</tr>
<tr class="ltx_tr" id="A5.T15.1.35">
<td class="ltx_td ltx_align_left" id="A5.T15.1.35.1" style="padding:1pt 5.0pt;">
<span class="ltx_text ltx_font_bold" id="A5.T15.1.35.1.1">Case:</span> Who proposed the theory of universal gravitation?</td>
</tr>
<tr class="ltx_tr" id="A5.T15.1.36">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A5.T15.1.36.1" rowspan="3" style="padding:1pt 5.0pt;"><span class="ltx_text" id="A5.T15.1.36.1.1">measurement units</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A5.T15.1.36.2" style="padding:1pt 5.0pt;">Questions that require recalling simple conversion relationships between</td>
</tr>
<tr class="ltx_tr" id="A5.T15.1.37">
<td class="ltx_td ltx_align_left" id="A5.T15.1.37.1" style="padding:1pt 5.0pt;">standard units of measurement.</td>
</tr>
<tr class="ltx_tr" id="A5.T15.1.38">
<td class="ltx_td ltx_align_left" id="A5.T15.1.38.1" style="padding:1pt 5.0pt;">
<span class="ltx_text ltx_font_bold" id="A5.T15.1.38.1.1">Case:</span> How many centimeters equal 1 meter?</td>
</tr>
<tr class="ltx_tr" id="A5.T15.1.39">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A5.T15.1.39.1" rowspan="3" style="padding:1pt 5.0pt;"><span class="ltx_text" id="A5.T15.1.39.1.1">scientific notation</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A5.T15.1.39.2" style="padding:1pt 5.0pt;">Questions that require recalling basic scientific symbols, formulas, and standard units</td>
</tr>
<tr class="ltx_tr" id="A5.T15.1.40">
<td class="ltx_td ltx_align_left" id="A5.T15.1.40.1" style="padding:1pt 5.0pt;">used in scientific communication.</td>
</tr>
<tr class="ltx_tr" id="A5.T15.1.41">
<td class="ltx_td ltx_align_left" id="A5.T15.1.41.1" style="padding:1pt 5.0pt;">
<span class="ltx_text ltx_font_bold" id="A5.T15.1.41.1.1">Case:</span> What is the chemical symbol for oxygen?</td>
</tr>
<tr class="ltx_tr" id="A5.T15.1.42">
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r ltx_border_t" id="A5.T15.1.42.1" rowspan="3" style="padding:1pt 5.0pt;"><span class="ltx_text" id="A5.T15.1.42.1.1">creative authorship</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A5.T15.1.42.2" style="padding:1pt 5.0pt;">Questions that require recalling the creators or originators of notable artistic, literary,</td>
</tr>
<tr class="ltx_tr" id="A5.T15.1.43">
<td class="ltx_td ltx_align_left" id="A5.T15.1.43.1" style="padding:1pt 5.0pt;">musical, and cultural works.</td>
</tr>
<tr class="ltx_tr" id="A5.T15.1.44">
<td class="ltx_td ltx_align_left ltx_border_bb" id="A5.T15.1.44.1" style="padding:1pt 5.0pt;">
<span class="ltx_text ltx_font_bold" id="A5.T15.1.44.1.1">Case:</span> Who is the author of Hamlet?</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table details the subcategories within the reasoning and knowledge question categories of the S1-Bench benchmark.  For each subcategory, it provides a concise explanation and example cases illustrating the type of questions included.  The examples help clarify the intended scope and difficulty of the questions within each subcategory, highlighting the focus on simple, intuitive reasoning tasks.
> <details>
> <summary>read the caption</summary>
> Table 15: The subcategory descriptions and cases of reasoning questions and knowledge questions.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="A5.T16.1">
<tr class="ltx_tr" id="A5.T16.1.1">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="A5.T16.1.1.1" style="padding:1pt 5.0pt;"><span class="ltx_text ltx_font_bold" id="A5.T16.1.1.1.1">cate.</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="A5.T16.1.1.2" style="padding:1pt 5.0pt;"><span class="ltx_text ltx_font_bold" id="A5.T16.1.1.2.1">subcatrgories</span></td>
<td class="ltx_td ltx_align_left ltx_border_tt" id="A5.T16.1.1.3" style="padding:1pt 5.0pt;"><span class="ltx_text ltx_font_bold" id="A5.T16.1.1.3.1">Explanation and cases</span></td>
</tr>
<tr class="ltx_tr" id="A5.T16.1.2">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A5.T16.1.2.1" rowspan="18" style="padding:1pt 5.0pt;"><span class="ltx_text" id="A5.T16.1.2.1.1">
<span class="ltx_inline-block ltx_transformed_outer" id="A5.T16.1.2.1.1.1" style="width:8.9pt;height:89.6pt;vertical-align:-42.3pt;"><span class="ltx_transformed_inner" style="width:89.5pt;transform:translate(-40.32pt,2.92pt) rotate(-90deg) ;">
<span class="ltx_p" id="A5.T16.1.2.1.1.1.1"><span class="ltx_text ltx_font_bold" id="A5.T16.1.2.1.1.1.1.1">instruction following</span></span>
</span></span></span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A5.T16.1.2.2" rowspan="3" style="padding:1pt 5.0pt;"><span class="ltx_text" id="A5.T16.1.2.2.1">repetition constraints</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A5.T16.1.2.3" style="padding:1pt 5.0pt;">Questions that require outputting specified characters, words, or phrases a specific number</td>
</tr>
<tr class="ltx_tr" id="A5.T16.1.3">
<td class="ltx_td ltx_align_left" id="A5.T16.1.3.1" style="padding:1pt 5.0pt;">of times according to simple formatting instructions.</td>
</tr>
<tr class="ltx_tr" id="A5.T16.1.4">
<td class="ltx_td ltx_align_left" id="A5.T16.1.4.1" style="padding:1pt 5.0pt;">
<span class="ltx_text ltx_font_bold" id="A5.T16.1.4.1.1">Case:</span> Output the number "7" four times, without using separators.</td>
</tr>
<tr class="ltx_tr" id="A5.T16.1.5">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A5.T16.1.5.1" rowspan="3" style="padding:1pt 5.0pt;"><span class="ltx_text" id="A5.T16.1.5.1.1">length constraints</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A5.T16.1.5.2" style="padding:1pt 5.0pt;">Questions that require generating outputs of a specific length or with a specific number</td>
</tr>
<tr class="ltx_tr" id="A5.T16.1.6">
<td class="ltx_td ltx_align_left" id="A5.T16.1.6.1" style="padding:1pt 5.0pt;">of components based on simple counting constraints.</td>
</tr>
<tr class="ltx_tr" id="A5.T16.1.7">
<td class="ltx_td ltx_align_left" id="A5.T16.1.7.1" style="padding:1pt 5.0pt;">
<span class="ltx_text ltx_font_bold" id="A5.T16.1.7.1.1">Case:</span> Output a four-digit number.</td>
</tr>
<tr class="ltx_tr" id="A5.T16.1.8">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A5.T16.1.8.1" rowspan="3" style="padding:1pt 5.0pt;"><span class="ltx_text" id="A5.T16.1.8.1.1">character constraints</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A5.T16.1.8.2" style="padding:1pt 5.0pt;">Questions that require generating words or numbers that conform to simple specified</td>
</tr>
<tr class="ltx_tr" id="A5.T16.1.9">
<td class="ltx_td ltx_align_left" id="A5.T16.1.9.1" style="padding:1pt 5.0pt;">character patterns or formatting rules.</td>
</tr>
<tr class="ltx_tr" id="A5.T16.1.10">
<td class="ltx_td ltx_align_left" id="A5.T16.1.10.1" style="padding:1pt 5.0pt;">
<span class="ltx_text ltx_font_bold" id="A5.T16.1.10.1.1">Case:</span> Output a number that begins with 8.</td>
</tr>
<tr class="ltx_tr" id="A5.T16.1.11">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A5.T16.1.11.1" rowspan="3" style="padding:1pt 5.0pt;"><span class="ltx_text" id="A5.T16.1.11.1.1">counting constraints</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A5.T16.1.11.2" style="padding:1pt 5.0pt;">Questions that require counting specific characters or elements within</td>
</tr>
<tr class="ltx_tr" id="A5.T16.1.12">
<td class="ltx_td ltx_align_left" id="A5.T16.1.12.1" style="padding:1pt 5.0pt;">a given text or sequence.</td>
</tr>
<tr class="ltx_tr" id="A5.T16.1.13">
<td class="ltx_td ltx_align_left" id="A5.T16.1.13.1" style="padding:1pt 5.0pt;">
<span class="ltx_text ltx_font_bold" id="A5.T16.1.13.1.1">Case:</span> Output the number of letter "y" in the word "yes".</td>
</tr>
<tr class="ltx_tr" id="A5.T16.1.14">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A5.T16.1.14.1" rowspan="3" style="padding:1pt 5.0pt;"><span class="ltx_text" id="A5.T16.1.14.1.1">transformation constraints</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A5.T16.1.14.2" style="padding:1pt 5.0pt;">Questions that require modifying text or numbers according to simple formatting or character</td>
</tr>
<tr class="ltx_tr" id="A5.T16.1.15">
<td class="ltx_td ltx_align_left" id="A5.T16.1.15.1" style="padding:1pt 5.0pt;">substitution rules to produce a transformed output.</td>
</tr>
<tr class="ltx_tr" id="A5.T16.1.16">
<td class="ltx_td ltx_align_left" id="A5.T16.1.16.1" style="padding:1pt 5.0pt;">
<span class="ltx_text ltx_font_bold" id="A5.T16.1.16.1.1">Case:</span> Output the word "good" with all letters capitalized directly.</td>
</tr>
<tr class="ltx_tr" id="A5.T16.1.17">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A5.T16.1.17.1" rowspan="3" style="padding:1pt 5.0pt;"><span class="ltx_text" id="A5.T16.1.17.1.1">sentence constraints</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A5.T16.1.17.2" style="padding:1pt 5.0pt;">Questions that require generating sentences that conform to simple specified content or</td>
</tr>
<tr class="ltx_tr" id="A5.T16.1.18">
<td class="ltx_td ltx_align_left" id="A5.T16.1.18.1" style="padding:1pt 5.0pt;">structural requirements.</td>
</tr>
<tr class="ltx_tr" id="A5.T16.1.19">
<td class="ltx_td ltx_align_left" id="A5.T16.1.19.1" style="padding:1pt 5.0pt;">
<span class="ltx_text ltx_font_bold" id="A5.T16.1.19.1.1">Case:</span> Give a sentence that contains the phrase "have lunch" directly.</td>
</tr>
<tr class="ltx_tr" id="A5.T16.1.20">
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r ltx_border_t" id="A5.T16.1.20.1" rowspan="24" style="padding:1pt 5.0pt;"><span class="ltx_text" id="A5.T16.1.20.1.1">
<span class="ltx_inline-block ltx_transformed_outer" id="A5.T16.1.20.1.1.1" style="width:8.9pt;height:74pt;vertical-align:-34.5pt;"><span class="ltx_transformed_inner" style="width:74.1pt;transform:translate(-32.58pt,2.92pt) rotate(-90deg) ;">
<span class="ltx_p" id="A5.T16.1.20.1.1.1.1"><span class="ltx_text ltx_font_bold" id="A5.T16.1.20.1.1.1.1.1">analysis question</span></span>
</span></span></span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A5.T16.1.20.2" rowspan="3" style="padding:1pt 5.0pt;"><span class="ltx_text" id="A5.T16.1.20.2.1">sentiment classification</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A5.T16.1.20.3" style="padding:1pt 5.0pt;">Questions that require determining whether simple statements express positive or negative</td>
</tr>
<tr class="ltx_tr" id="A5.T16.1.21">
<td class="ltx_td ltx_align_left" id="A5.T16.1.21.1" style="padding:1pt 5.0pt;">emotions based on the tone and word choice.</td>
</tr>
<tr class="ltx_tr" id="A5.T16.1.22">
<td class="ltx_td ltx_align_left" id="A5.T16.1.22.1" style="padding:1pt 5.0pt;">
<span class="ltx_text ltx_font_bold" id="A5.T16.1.22.1.1">Case:</span> Does the sentence "I hate rainy days." express a positive or negative emotion?</td>
</tr>
<tr class="ltx_tr" id="A5.T16.1.23">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A5.T16.1.23.1" rowspan="3" style="padding:1pt 5.0pt;"><span class="ltx_text" id="A5.T16.1.23.1.1">named entity recognition</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A5.T16.1.23.2" style="padding:1pt 5.0pt;">Questions that require identifying the correct category of named entities (such as people,</td>
</tr>
<tr class="ltx_tr" id="A5.T16.1.24">
<td class="ltx_td ltx_align_left" id="A5.T16.1.24.1" style="padding:1pt 5.0pt;">places, organizations, or time expressions) within simple sentences.</td>
</tr>
<tr class="ltx_tr" id="A5.T16.1.25">
<td class="ltx_td ltx_align_left" id="A5.T16.1.25.1" style="padding:1pt 5.0pt;">
<span class="ltx_text ltx_font_bold" id="A5.T16.1.25.1.1">Case:</span> In the sentence "Napoleon died in 1821", is "1821" a time or a place name?</td>
</tr>
<tr class="ltx_tr" id="A5.T16.1.26">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A5.T16.1.26.1" rowspan="3" style="padding:1pt 5.0pt;"><span class="ltx_text" id="A5.T16.1.26.1.1">language classification</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A5.T16.1.26.2" style="padding:1pt 5.0pt;">Questions that require identifying the language of origin for simple words or phrases</td>
</tr>
<tr class="ltx_tr" id="A5.T16.1.27">
<td class="ltx_td ltx_align_left" id="A5.T16.1.27.1" style="padding:1pt 5.0pt;">based on their characteristic writing systems or common vocabulary.</td>
</tr>
<tr class="ltx_tr" id="A5.T16.1.28">
<td class="ltx_td ltx_align_left" id="A5.T16.1.28.1" style="padding:1pt 5.0pt;">
<span class="ltx_text ltx_font_bold" id="A5.T16.1.28.1.1">Case:</span> Is the word "hello" English or Japanese?</td>
</tr>
<tr class="ltx_tr" id="A5.T16.1.29">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A5.T16.1.29.1" rowspan="3" style="padding:1pt 5.0pt;"><span class="ltx_text" id="A5.T16.1.29.1.1">topic classification</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A5.T16.1.29.2" style="padding:1pt 5.0pt;">Questions that require identifying the primary subject matter or thematic category of</td>
</tr>
<tr class="ltx_tr" id="A5.T16.1.30">
<td class="ltx_td ltx_align_left" id="A5.T16.1.30.1" style="padding:1pt 5.0pt;">simple sentences based on their content and context clues.</td>
</tr>
<tr class="ltx_tr" id="A5.T16.1.31">
<td class="ltx_td ltx_align_left" id="A5.T16.1.31.1" style="padding:1pt 5.0pt;">
<span class="ltx_text ltx_font_bold" id="A5.T16.1.31.1.1">Case:</span> Is the topic of the sentence "The stock market rose 2% today" finance or technology?</td>
</tr>
<tr class="ltx_tr" id="A5.T16.1.32">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A5.T16.1.32.1" rowspan="3" style="padding:1pt 5.0pt;"><span class="ltx_text" id="A5.T16.1.32.1.1">intent recognition</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A5.T16.1.32.2" style="padding:1pt 5.0pt;">Questions that require determining the communicative purpose behind simple utterances</td>
</tr>
<tr class="ltx_tr" id="A5.T16.1.33">
<td class="ltx_td ltx_align_left" id="A5.T16.1.33.1" style="padding:1pt 5.0pt;">or statements based on their phrasing and context.</td>
</tr>
<tr class="ltx_tr" id="A5.T16.1.34">
<td class="ltx_td ltx_align_left" id="A5.T16.1.34.1" style="padding:1pt 5.0pt;">
<span class="ltx_text ltx_font_bold" id="A5.T16.1.34.1.1">Case:</span> Is the intention of the sentence "I’m sorry I’m late." to apologize or to blame?</td>
</tr>
<tr class="ltx_tr" id="A5.T16.1.35">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A5.T16.1.35.1" rowspan="3" style="padding:1pt 5.0pt;"><span class="ltx_text" id="A5.T16.1.35.1.1">syntax classification</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A5.T16.1.35.2" style="padding:1pt 5.0pt;">Questions that require identifying the correct grammatical structure or sentence type of</td>
</tr>
<tr class="ltx_tr" id="A5.T16.1.36">
<td class="ltx_td ltx_align_left" id="A5.T16.1.36.1" style="padding:1pt 5.0pt;">simple expressions based on their form, punctuation, and communicative function.</td>
</tr>
<tr class="ltx_tr" id="A5.T16.1.37">
<td class="ltx_td ltx_align_left" id="A5.T16.1.37.1" style="padding:1pt 5.0pt;">
<span class="ltx_text ltx_font_bold" id="A5.T16.1.37.1.1">Case:</span> Is "Close the door!" an imperative sentence or an interrogative sentence?</td>
</tr>
<tr class="ltx_tr" id="A5.T16.1.38">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A5.T16.1.38.1" rowspan="3" style="padding:1pt 5.0pt;"><span class="ltx_text" id="A5.T16.1.38.1.1">grammar classification</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A5.T16.1.38.2" style="padding:1pt 5.0pt;">Questions that require identifying simple grammatical properties (like tense, voice,</td>
</tr>
<tr class="ltx_tr" id="A5.T16.1.39">
<td class="ltx_td ltx_align_left" id="A5.T16.1.39.1" style="padding:1pt 5.0pt;">or polarity) of sentences based on their structure and verb forms.</td>
</tr>
<tr class="ltx_tr" id="A5.T16.1.40">
<td class="ltx_td ltx_align_left" id="A5.T16.1.40.1" style="padding:1pt 5.0pt;">
<span class="ltx_text ltx_font_bold" id="A5.T16.1.40.1.1">Case:</span> Is "The apple was eaten." in active voice or passive voice?</td>
</tr>
<tr class="ltx_tr" id="A5.T16.1.41">
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r ltx_border_t" id="A5.T16.1.41.1" rowspan="3" style="padding:1pt 5.0pt;"><span class="ltx_text" id="A5.T16.1.41.1.1">coreference resolution</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A5.T16.1.41.2" style="padding:1pt 5.0pt;">Questions that require identifying which entity a pronoun or reference term refers to in</td>
</tr>
<tr class="ltx_tr" id="A5.T16.1.42">
<td class="ltx_td ltx_align_left" id="A5.T16.1.42.1" style="padding:1pt 5.0pt;">simple sentences by tracking relationships between words in the text.</td>
</tr>
<tr class="ltx_tr" id="A5.T16.1.43">
<td class="ltx_td ltx_align_left ltx_border_bb" id="A5.T16.1.43.1" style="padding:1pt 5.0pt;">
<span class="ltx_text ltx_font_bold" id="A5.T16.1.43.1.1">Case:</span> In "My computer is broken, and I need to fix it." What does "it" refer to?</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 Table 16 provides detailed explanations and example cases for each of the 28 subcategories within the instruction following questions and analysis questions sections of the S1-Bench benchmark.  It clarifies the types of reasoning and knowledge required for each subcategory, aiding in a comprehensive understanding of the benchmark's scope and complexity.
> <details>
> <summary>read the caption</summary>
> Table 16: The subcategory descriptions and cases of instruction following questions and analysis questions.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2504.10368/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.10368/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.10368/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.10368/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.10368/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.10368/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.10368/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.10368/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.10368/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.10368/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.10368/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.10368/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.10368/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.10368/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.10368/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.10368/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.10368/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.10368/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.10368/19.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.10368/20.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}