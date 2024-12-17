---
title: "Smaller Language Models Are Better Instruction Evolvers"
summary: "Smaller is better: SLMs outperform LLMs in evolving complex & diverse instructions for AI training."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Natural Language Processing", "Large Language Models", "🏢 Beijing University of Posts and Telecommunications",]
showSummary: true
date: 2024-12-15
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2412.11231 {{< /keyword >}}
{{< keyword icon="writer" >}} Tingfeng Hui et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2024-12-17 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2412.11231" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2412.11231" target="_self" >}}
↗ Hugging Face
{{< /button >}}
{{< button href="https://paperswithcode.com/paper/smaller-language-models-are-better" target="_self" >}}
↗ Papers with Code
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2412.11231/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Large language models (LLMs) are revolutionizing NLP applications. Creating complex and diverse instructions is crucial for effective LLM training, but generating them is challenging.  Current approaches typically assume larger models are better at generating these instructions, leading to heavy reliance on resource-intensive models like GPT-4. This study challenges that assumption.

This paper investigates the potential of **smaller language models (SLMs) for instruction evolution**.  It finds that **SLMs outperform LLMs** across various scenarios. **SLMs produce more complex and diverse instructions**, attributed to their broader output space and less tendency towards overconfidence. The paper also introduces **IC-IFD**, a new metric for assessing instruction data effectiveness **without needing instruction tuning**.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Smaller language models (SLMs) are more effective than larger language models (LLMs) at evolving complex and diverse instructions. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} SLMs possess a broader output space during instruction evolution, avoiding overconfidence in token generation observed in LLMs. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} The Instruction Complex-Aware IFD (IC-IFD) metric provides a more accurate evaluation of instruction data quality without requiring instruction tuning resources {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
**This research challenges the prevailing assumption that larger language models (LLMs) are inherently superior for evolving instructions.** It demonstrates that **smaller language models (SLMs) can actually generate more complex and diverse instructions**, requiring fewer resources and leading to more efficient instruction tuning. This finding opens new avenues for **optimizing instruction data creation**, focusing on SLM capabilities and potentially reducing computational costs in AI research. Moreover, the introduction of the IC-IFD metric provides a valuable tool for **assessing instruction data quality** without the need for resource-intensive instruction tuning.

------
#### Visual Insights



![](https://arxiv.org/html/2412.11231/x1.png)

> 🔼 This figure compares the performance of a smaller language model (Llama-3.1-8B-Instruct) and a larger language model (Llama-3.1-70B-Instruct) in evolving instructions for a smaller backbone model (Llama-3-8B) across three iterations.  The performance is evaluated on four downstream tasks: instruction following (IFEval with prompt-based and instance-based scores), math reasoning (GSM8K and MATH), and code generation (HumanEval and MBPP). The x-axis represents the iteration number (0-3, where 0 represents the seed data). The y-axis represents the performance metric for each task.  The lines indicate the performance trend across iterations.  This visualization aims to demonstrate whether smaller or larger language models are more effective at evolving instructions for improved downstream task performance.
> <details>
> <summary>read the caption</summary>
> Figure 1: Comparison of performance on Llama-3-8B during three iterations of instruction evolution, using Llama-3.1-8B-Instruct and Llama-3.1-70B-Instruct as supervised models for each round under Evol-Instruct scenario.
> </details>





{{< table-caption >}}
| Model | Instruction Following (IFEval) | | | Math Reasoning | | Code Generation | |
|---|---|---|---|---|---|---|---|---|---|
| | Pr.(S) | In.(S) | Pr.(L) | In.(L) | | GSM8K | MATH | | HumanEval | MBPP |
|---|---|---|---|---|---|---|---|---|---|---|
| *Supervised Model: Llama-3.1-70B-Instruct* | | | | | | | | | | |
| Mistral-7B-v0.3 | 19.59 | 31.77 | 22.74 | 34.65 | | 33.89 | **3.16** | | 24.39 | 6.00 |
| DeepSeek-7B | 36.23 | **48.20** | 41.04 | 52.52 | | **48.07** | 2.96 | | 28.66 | 33.00 |
| Llama-3.2-3B | 40.11 | 50.84 | 43.81 | 54.43 | | 53.75 | 6.60 | | 35.98 | **36.00** |
| Llama-3-8B | 33.83 | 46.28 | 36.41 | 49.28 | | 63.00 | 7.62 | | 43.90 | 36.20 |
| Llama-3.1-8B | 34.57 | 46.04 | 38.81 | 50.48 | | 64.22 | 11.32 | | **51.22** | 40.60 |
| InternLM-2-7B | 40.85 | 53.48 | 44.54 | 56.95 | | **68.31** | 19.50 | | 56.10 | 40.40 |
| *Supervised Model: Llama-3.1-8B-Instruct* | | | | | | | | | | |
| Mistral-7B-v0.3 | **24.40** | **35.01** | **26.25** | **37.53** | | **40.18** | 2.84 | | **29.27** | **19.60** |
| DeepSeek-7B | **36.60** | 48.08 | **41.77** | **53.12** | | 47.92 | **3.56** | | **34.76** | **33.80** |
| Llama-3.2-3B | **41.59** | **53.48** | **45.66** | **57.07** | | **55.12** | **7.32** | | **39.02** | 32.80 |
| Llama-3-8B | **35.49** | **47.00** | **39.56** | **50.72** | | **63.38** | **11.44** | | **48.17** | **37.60** |
| Llama-3.1-8B | **38.45** | **50.96** | **43.81** | **55.28** | | **67.10** | **13.12** | | 48.78 | **41.60** |
| InternLM-2-7B | **43.07** | **54.80** | **47.32** | **58.39** | | 68.08 | **20.32** | | **57.93** | **40.80** |{{< /table-caption >}}

> 🔼 This table compares the performance of various 7B-scale language models (Mistral, DeepSeek, Llama, InternLM) after being fine-tuned on instruction data generated by either a smaller Llama-3.1-8B-Instruct model or a larger Llama-3.1-70B-Instruct model, within the Evol-Instruct scenario.  The evaluation metrics span Instruction Following (IFEval with both prompt and instruction level scores), Math Reasoning (GSM8K and MATH), and Code Generation (HumanEval and MBPP). The table aims to demonstrate whether instructions evolved by smaller or larger language models lead to better performance in downstream tasks after fine-tuning.
> <details>
> <summary>read the caption</summary>
> Table 1: Comparison of performance with Llama-3.1-8B-Instruct and Llama-3.1-70B-Instruct as supervised models under Evol-Instruct scenario.
> </details>





### In-depth insights


#### SLM Instruction Evolution
**SLM Instruction Evolution** explores the novel concept of using smaller language models (SLMs) to generate and refine instructions for other AI models.  This challenges the prevailing assumption that larger models are inherently better for this task.  The research suggests that **SLMs, due to a broader output space in token generation,** produce more diverse and complex instructions, ultimately leading to improved performance in downstream tasks.  This could be a **significant shift in how we approach instruction tuning,** potentially saving computational resources while boosting effectiveness. It opens exciting possibilities for aligning models with complex tasks by **leveraging the unique strengths of SLMs in instruction data creation.** Further investigation into the intricacies of SLM-driven evolution across different domains could uncover even more valuable insights.

#### Beyond Model Scale
**Scaling model size alone isn't the key to improved performance.**  While larger models possess greater capacity, factors like **data quality, instruction design, and training methodologies** play crucial roles.  Smaller models, strategically trained, can outperform larger counterparts.  Future research should explore **efficient training techniques for smaller models**, optimizing data usage and exploring novel architectures to maximize their potential.  This shift towards efficiency could democratize access to powerful AI, reducing computational barriers and enabling wider adoption.

#### Output Space & Overconfidence
**Smaller language models (SLMs)** exhibit a **broader output space** compared to **larger language models (LLMs)**. This broader output space contributes to the generation of **more diverse and complex instructions**, which are crucial for effective instruction tuning. LLMs, while generally more proficient in following instructions, tend to over-rely on high-probability tokens during instruction generation. This **overconfidence** narrows their output space, limiting the diversity of the generated instructions. Consequently, SLMs, with their less constrained token generation, emerge as **better instruction evolvers** despite their lower instruction-following capabilities.  This suggests that encouraging exploration over exploitation in instruction generation is beneficial.

#### IC-IFD: Complexity Matters
**IC-IFD**, or Instruction Complex-Aware IFD, introduces a crucial shift in evaluating instruction data quality.  It underscores that **instruction complexity significantly influences model performance**, moving beyond simply assessing responses. Traditional metrics like IFD often overlook how complex instructions, even with higher IFD scores, can hinder performance. IC-IFD addresses this by incorporating **instruction perplexity as a penalty**, offering a more nuanced evaluation. This encourages generating instructions that are both effective and comprehensible, avoiding overly complex phrasing that can confuse models.  IC-IFD promotes a balance between **instruction difficulty and clarity**, ultimately improving the effectiveness of instruction tuning. This shift has important implications for aligning language models with downstream tasks, especially complex ones. By considering complexity, we move towards generating instruction data that truly unlocks model potential.

#### Future of SLM Synthesis
The **future of Smaller Language Model (SLM) synthesis** lies in exploring their unique advantages.  While this paper demonstrates SLMs' superior instruction evolution capabilities compared to LLMs, further research should explore their potential beyond instruction tuning.  **Key areas include:** 1) Expanding applications to broader domains like dialogue generation or creative writing. 2) Investigating the full SLM instruction data synthesis pipeline, not just evolution, optimizing for diverse dataset creation. 3) Refining evaluation metrics like the proposed IC-IFD to better assess complex instructions without relying on resource-intensive tuning.  **SLM's efficiency and broader output space suggest potential for novel applications,** requiring further investigation into architecture, training methods, and efficient deployment strategies to maximize impact. This research opens exciting avenues for **democratizing access to powerful language models.**


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2412.11231/x2.png)

> 🔼 This figure presents the distribution of difficulty levels for instructions generated by a smaller language model (Llama-3.1-8B-Instruct) and a larger language model (Llama-3.1-70B-Instruct) across three iterations of instruction evolution.  The difficulty levels are categorized as Very Easy, Easy, Medium, Hard, and Very Hard. The x-axis represents the difficulty levels, and the y-axis represents the percentage of instructions falling into each category. Each bar group represents one round of evolution (Iter1, Iter2, and Iter3), and within each group, the blue and orange bars represent the distributions from the smaller and larger models, respectively. The figure aims to demonstrate whether smaller or larger language models generate more complex instructions during the evolution process across different datasets: Alpaca (instruction following), GSM8K (mathematical reasoning), and HumanEval (code generation).
> <details>
> <summary>read the caption</summary>
> Figure 2: Distribution of difficulty levels for instructions evolved during three iterations, using Llama-3.1-8B-Instruct and Llama-3.1-70B-Instruct as supervised models for each round under Evol-Instruct scenario.
> </details>



![](https://arxiv.org/html/2412.11231/x3.png)

> 🔼 This figure compares the performance of different sizes of models (0.5B, 1.5B, 3B, 7B, 14B, 32B, and 72B) within the Qwen-2.5 series on four downstream tasks after instruction tuning with instruction data generated by both small language models (SLMs) and large language models (LLMs).  The tasks include instruction following (IFEval, Pr.(S) and In.(S)), mathematical reasoning (GSM8K and MATH), and code generation (HumanEval and MBPP). For larger models (14B, 32B, and 72B), LORA was used for fine-tuning due to limited computational resources. The metrics used for evaluation are: Pr.(S) and In.(S) (strict and inclusive accuracy on IFEval), GSM8K and MATH (accuracy scores), HumanEval and MBPP (pass@1).  The graph visually represents how SLM-generated and LLM-generated instruction data impact the performance of the models of different sizes for each of the four tasks. The complete numerical results of this comparison can be found in Table 11 of the paper.
> <details>
> <summary>read the caption</summary>
> Figure 3: Comparison of performance among Qwen-2.5 series models. Detailed results can be found in Table 11.
> </details>



![](https://arxiv.org/html/2412.11231/x4.png)

> 🔼 This histogram displays the distribution of minimum neighbor distances (MND) for instructions generated by two models, Llama-3.1-8B-Instruct (SLM) and Llama-3.1-70B-Instruct (LLM), within the AutoIF instruction generation scenario.  The x-axis represents the MND, a measure of similarity between instructions, calculated in the embedding space using all-mpnet-base-v2. The y-axis represents the frequency density of instructions at each MND. A higher MND suggests greater dissimilarity between instructions, implying better diversity. The figure aims to visually compare the diversity of instructions generated by the smaller and larger language models.
> <details>
> <summary>read the caption</summary>
> Figure 4: Distribution of Minimum Neighbor Distance for instructions generated by Llama-3.1-8B-Instruct and Llama-3.1-70B-Instruct in the AutoIF scenario.
> </details>



![](https://arxiv.org/html/2412.11231/x5.png)

> 🔼 This figure presents a comparison of probability distributions for the top-1 output tokens generated by smaller language models (SLMs) and larger language models (LLMs) during instruction evolution in the Evol-Instruct scenario. The x-axis represents the probability, and the y-axis is the density. SLMs show a broader distribution of probabilities, with a lower peak and a longer tail, suggesting that their output space is more diverse than LLMs, which have a sharper peak around higher probabilities.
> <details>
> <summary>read the caption</summary>
> Figure 5: Comparison of output token probability distributions in the Evol-Instruct scenario.
> </details>



![](https://arxiv.org/html/2412.11231/x6.png)

> 🔼 This figure compares the performance of instruction-tuned language models using different data filtering strategies. IC-IFD and IFD, two metrics for evaluating the quality of instructions, are used to filter the Alpaca dataset, a collection of instruction-following data. Three different filtering ratios (5%, 10%, and 15%) are applied.  The filtered data is then used to fine-tune two language models: Llama-3-8B and Llama-3.2-3B. Performance is evaluated using AlpacaFarm, a benchmark for evaluating instruction following models. The comparison is shown in terms of win-tie-lose ratios, derived from assessments by GPT-4 on whether a model's response to an instruction is better, worse, or equal to another model's response. The results show that IC-IFD consistently outperforms IFD across all filtering ratios for both models, suggesting that IC-IFD is a more effective metric for filtering and selecting high-quality instruction data.
> <details>
> <summary>read the caption</summary>
> Figure 6: Performance comparison of three data selection ratios on Alpaca dataset between IC-IFD and IFD.
> </details>



![](https://arxiv.org/html/2412.11231/x7.png)

> 🔼 This figure compares the performance of a Llama-3.2-3B model fine-tuned on different subsets of the Alpaca dataset, created using the Instruction Complex-Aware Instruction Following Difficulty (IC-IFD) metric.  Three different selection ratios (5%, 10%, and 15%) are used to filter the full Alpaca dataset and create smaller training sets. The performance of the models trained on these filtered datasets is then compared to a model fine-tuned on the complete Alpaca dataset. The results are visualized to demonstrate the effectiveness of IC-IFD for instruction data selection.
> <details>
> <summary>read the caption</summary>
> Figure 7: Performance comparison of three data selection ratios on Alpaca dataset between IC-IFD and full dataset.
> </details>



![](https://arxiv.org/html/2412.11231/x8.png)

> 🔼 This figure presents two examples of how large language models (LLMs) and smaller language models (SLMs) evolve instructions when given the constraint of a busy schedule and restrictive diet. The original instruction is to give three tips for staying healthy.  The LLM adds the constraint of a 'moderate lifestyle' and requests an explanation of how to incorporate the tips into a daily routine. The SLM adds the constraints of 'limited time for exercise' and 'restrictive diet,' and requests 'evidence-based' tips.  This demonstrates how SLMs are capable of generating more complex and challenging instructions compared to LLMs, by incorporating more constraints into the evolved prompt.
> <details>
> <summary>read the caption</summary>
> Figure 8: Comparison of cases between LLMs and SLMs under adding constraints strategy.
> </details>



![](https://arxiv.org/html/2412.11231/x9.png)

> 🔼 This figure presents two examples of evolved instructions under the 'deepening' strategy in the Evol-Instruct scenario, comparing the outputs of a Smaller Language Model (SLM) and a Large Language Model (LLM). The original instruction is a simple math word problem. The LLM adds a single additional condition about prorating the hourly wage, while the SLM adds several significantly more complex conditions regarding bonuses, weekday/weekend rates, and timeliness.  This illustrates how SLMs can evolve more complex instructions than LLMs, leading to potentially more effective instruction tuning data.
> <details>
> <summary>read the caption</summary>
> Figure 9: Comparison of cases between LLMs and SLMs under deepening strategy.
> </details>



![](https://arxiv.org/html/2412.11231/x10.png)

> 🔼 This figure presents the prompt template used for in-depth evolution of instructions within the Evol-Instruct scenario.  The template instructs an LLM to act as a prompt rewriter, with the objective of increasing the complexity of a given prompt to challenge other large language models (e.g. ChatGPT, GPT-4).  The rewritten prompt is expected to remain comprehensible and answerable by humans while only adding 10-20 words.  Placeholders `{METHOD}` and `{INSTRUCTION}` within the template are to be replaced with the chosen evolution method (e.g., 'Adding Constraints', 'Deepening', etc.) and the given instruction to be evolved, respectively.
> <details>
> <summary>read the caption</summary>
> Figure 10: In-depth evolution prompt template utilized in Evol-Instruct scenario.
> </details>



![](https://arxiv.org/html/2412.11231/x11.png)

> 🔼 This figure lists the four in-depth methods utilized in the Evol-Instruct scenario: 1. **Adding Constraints:** This method involves adding one or more constraints or requirements to the original prompt. 2. **Deepening:** If the given prompt contains inquiries about certain issues, this method increases the depth and breadth of the inquiry to make it more complex. 3. **Concretizing:** This method involves replacing general concepts in the prompt with more specific concepts. 4. **Adding Reasoning Steps:** If the original prompt can be solved with a few simple thinking processes, this method rewrites the prompt to explicitly request multiple-step reasoning, making it more challenging for the language model.
> <details>
> <summary>read the caption</summary>
> Figure 11: Four in-depth methods utilized in Evol-Instruct scenario.
> </details>



![](https://arxiv.org/html/2412.11231/x12.png)

> 🔼 This figure presents the prompt template employed for in-breadth evolution within the Evol-Instruct scenario.  In-breadth evolution aims to generate entirely new prompts inspired by a given prompt, but within the same domain, while exhibiting increased rarity. The generated prompt should maintain a similar length and complexity as the original.  Crucially, the output should solely consist of the new prompt without any additional explanations or symbols. The template includes placeholders for the original prompt and the newly created prompt.
> <details>
> <summary>read the caption</summary>
> Figure 12: In-breadth evolution prompt template utilized in Evol-Instruct scenario.
> </details>



![](https://arxiv.org/html/2412.11231/x13.png)

> 🔼 This figure presents the prompt template employed for generating seed instructions within the AutoIF scenario.  It directs the language model to generate 50 distinct instructions, emphasizing that these instructions should focus on the format rather than the style of the response. It also highlights the importance of verifiability, stating that adherence to the instructions should be easily assessable by a Python function. Example instructions are provided for both desired and undesired instruction types, and format specifications for the generated output are clearly articulated. The prompt leverages a few seed examples within AutoIF to create verifiable instructions.
> <details>
> <summary>read the caption</summary>
> Figure 13: Prompt template of Self-Instruct Seed Instructions in AutoIF scenario.
> </details>



![](https://arxiv.org/html/2412.11231/x14.png)

> 🔼 This figure presents the prompt template utilized for the 'Verification Funcs and Cases Generation' phase within the AutoIF process.  This stage focuses on generating Python code to evaluate whether responses adhere to given instructions. The prompt instructs the language model to create both an evaluation function and three test cases (input and expected output).  The provided JSON example illustrates the format.  In essence, this prompt guides the model to create an automated verification process for newly generated instructions in the AutoIF pipeline by providing sample JSON of the output function and the cases.
> <details>
> <summary>read the caption</summary>
> Figure 14: Prompt template of Verification Funcs and Cases Generation in AutoIF scenario.
> </details>



![](https://arxiv.org/html/2412.11231/x15.png)

> 🔼 This figure presents the prompt template employed in the Auto Evol-Instruct scenario. The user acts as an instruction rewriter, tasked with transforming a given instruction into a more complex form. The process involves four steps: 1) Listing potential methods to increase instruction complexity, 2) Formulating a plan to implement these methods, 3) Rewriting the instruction based on the plan, and 4) Reviewing and refining the rewritten instruction for clarity and conciseness.  The objective is to make instructions challenging for large language models, while still maintaining their understandability for humans. The template specifies the format strictly.
> <details>
> <summary>read the caption</summary>
> Figure 15: Prompt template of Auto Evol-Instruct scenario.
> </details>



![](https://arxiv.org/html/2412.11231/x16.png)

> 🔼 This figure presents the prompt template used for response generation in the experiments.  It shows two variations of the prompt, one for when an input is provided along with the instruction, and another for when only an instruction is given. In both cases, the model is instructed to provide a comprehensive and accurate response. This ensures consistent prompting across different experimental setups.
> <details>
> <summary>read the caption</summary>
> Figure 16: Prompt template of response generation.
> </details>



![](https://arxiv.org/html/2412.11231/x17.png)

> 🔼 This figure presents the prompt template used for evaluating the difficulty levels of instructions.  The prompt asks an LLM to assess an instruction's difficulty ('very easy', 'easy', 'medium', 'hard', or 'very hard') based on the user's intent and knowledge needed to address it.  The output should be just the difficulty level, without any additional text or symbols.
> <details>
> <summary>read the caption</summary>
> Figure 17: Prompt template of evaluating the difficulty levels.
> </details>



![](https://arxiv.org/html/2412.11231/x18.png)

> 🔼 This figure presents the prompt template employed to extract keywords from the trajectories generated during the instruction evolution process.  This process helps analyze the strategies employed by different language models, providing insights into how they modify instructions during the evolution.
> <details>
> <summary>read the caption</summary>
> Figure 18: Prompt template of extracting the keywords from evolution trajectories.
> </details>



![](https://arxiv.org/html/2412.11231/x19.png)

> 🔼 This figure presents the prompt template utilized for evaluating the difficulty scores of instructions.  The prompt instructs an LLM to assess an instruction's difficulty based on user intent and required knowledge.  It requests the LLM to output a numerical score from 0 to 100, reflecting the estimated difficulty, without any additional text or symbols.  This prompt is used to analyze the complexity of instructions in datasets.
> <details>
> <summary>read the caption</summary>
> Figure 19: Prompt template of evaluating the difficulty scores.
> </details>



![](https://arxiv.org/html/2412.11231/x20.png)

> 🔼 This figure presents the prompt template used for evaluating win/tie/lose rates between two AI assistants, which is used in the AlpacaFarm evaluation. The prompt consists of a user query and responses from two AI assistants.  The prompt instructs an evaluator (likely a stronger LLM like GPT-4) to compare the quality of the two AI assistants’ responses based on criteria including alignment with user needs, conciseness, comprehensiveness, logical flow, use of technical terms, and factual accuracy.  The evaluator is then asked to output a single label indicating whether ‘Assistant 1 is better than Assistant 2’, ‘Assistant 1 is worse than Assistant 2’, or ‘Assistant 1 is equal to Assistant 2’.
> <details>
> <summary>read the caption</summary>
> Figure 20: Prompt template of evaluating the win-tie-lose rates.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
| Model | Instruction Following (IFEval) | | | Math Reasoning | | Code Generation | |
|---|---|---|---|---|---|---|---|---|---|---| 
| | Pr.(S) | In.(S) | Pr.(L) | In.(L) | | GSM8K | MATH | | HumanEval | MBPP |
|---|---|---|---|---|---|---|---|---|---|---| 
| **Supervised Model: Qwen-2-72B-Instruct** | | | | | | | | | | |
| Mistral-7B-v0.3 | 20.15 | 30.94 | 23.84 | 34.41 | | 46.93 | **3.26** | | 32.32 | 1.80 |
| DeepSeek-7B | 35.67 | 47.12 | **39.56** | 50.84 | | 44.81 | 2.76 | | **36.59** | **34.00** |
| Llama-3.2-3B | 39.74 | 51.44 | 43.99 | 55.40 | | 53.83 | **7.40** | | 38.41 | 31.00 |
| Llama-3-8B | 34.75 | 45.80 | 37.71 | 48.92 | | 63.76 | **10.06** | | 43.90 | 35.40 |
| Llama-3.1-8B | **36.41** | **47.60** | 39.00 | 50.60 | | 65.43 | 10.84 | | **48.17** | 38.40 |
| InternLM-2-7B | 41.96 | 53.60 | 43.99 | 55.64 | | 65.28 | 17.96 | | 56.71 | 40.60 |
| **Supervised Model: Qwen-2-7B-Instruct** | | | | | | | | | | |
| Mistral-7B-v0.3 | **25.32** | **37.17** | **29.76** | **41.01** | | **47.31** | 2.20 | | **32.93** | **12.00** |
| DeepSeek-7B | **36.41** | **48.56** | 39.37 | **51.32** | | **48.07** | **3.82** | | 35.37 | 33.20 |
| Llama-3.2-3B | **43.81** | **55.16** | **47.87** | **58.27** | | **56.56** | 7.18 | | **39.63** | **31.40** |
| Llama-3-8B | **38.92** | **48.33** | **43.81** | **52.19** | | **63.91** | 8.66 | | **45.73** | **38.40** |
| Llama-3.1-8B | 34.75 | 45.80 | **39.93** | **51.08** | | **68.76** | **14.02** | | 46.34 | **38.60** |
| InternLM-2-7B | **44.12** | **55.16** | **48.62** | **58.73** | | **66.87** | **19.60** | | **58.54** | **41.40** |{{< /table-caption >}}
> 🔼 This table compares the performance of various 7B and 70B parameter models from the Mistral, DeepSeek, LLaMA, and InternLM families on instruction following, mathematical reasoning, and code generation tasks under the Evol-Instruct method.  Two different supervised models are used: Qwen-2-7B-Instruct and Qwen-2-72B-Instruct. The metrics reported are Pr.(S), In.(S), Pr.(L), In.(L) for IFEval (instruction following); GSM8K and MATH for mathematical reasoning; and HumanEval and MBPP for code generation.
> <details>
> <summary>read the caption</summary>
> Table 2: Comparison of performance with Qwen-2-7B-Instruct and Qwen-2-72B-Instruct as supervised models under Evol-Instruct scenario.
> </details>

{{< table-caption >}}
| Model | IFEval | | | FollowBench (HSR) | | Common Abilities | |
|---|---|---|---|---|---|---|---|---|---|---|---|---|---|
| | Pr.(S) | In.(S) | Pr.(L) | In.(L) | | Level 1 | Level 2 | Level 3 | Level 4 | Level 5 | Avg. | | C-Eval | MMLU | HumanEval | GSM8K |
|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|
| **Supervision Model: Llama-3.1-70B-Instruct** | | | | | | | | | | | | | | | |
| Llama-3.2-3B | 40.85 | 51.92 | 42.33 | 53.84 | | **61.17** | 57.59 | **50.55** | 33.09 | 26.74 | 45.83 | | **41.37** | **52.65** | **29.88** | 27.07 |
| Llama-3-8B | 37.71 | 50.00 | 39.19 | 52.04 | | 49.64 | 46.60 | 41.56 | 27.05 | 22.37 | 37.44 | | 41.87 | 51.14 | 26.83 | 37.76 |
| Llama-3.1-8B | 41.96 | 53.36 | 42.70 | 54.20 | | 51.77 | 45.60 | 45.04 | 34.85 | 26.61 | 40.78 | | **44.50** | 56.39 | 31.10 | 38.21 |
| Qwen-2-7B | 41.96 | 53.60 | 43.62 | 55.64 | | 72.18 | 62.45 | **56.43** | 41.31 | 35.42 | 53.56 | | **81.08** | 55.71 | 57.32 | **79.68** |
| Qwen-2.5-7B | 49.17 | **60.31** | 50.46 | 61.51 | | **78.88** | **73.78** | **61.50** | 51.99 | 45.42 | **62.31** | | **80.46** | 58.39 | 67.68 | **85.90** |
| InternLM-2-7B | 46.21 | 56.71 | 48.06 | 58.63 | | 68.89 | 62.23 | 54.17 | 44.27 | 42.06 | 54.33 | | 60.11 | 60.59 | 65.35 | 50.00 |
| **Supervision Model: Llama-3.1-8B-Instruct** | | | | | | | | | | | | | | | |
| Llama-3.2-3B | **43.62** | **54.20** | **46.95** | **57.07** | | 56.95 | **61.46** | 50.20 | **37.65** | **34.16** | **48.08** | | 40.56 | 49.08 | 25.00 | **29.87** |
| Llama-3-8B | **41.04** | **51.32** | **42.88** | **53.11** | | **62.99** | **54.38** | **49.29** | **32.21** | **32.21** | **46.21** | | **43.49** | **55.63** | **37.20** | **45.26** |
| Llama-3.1-8B | **42.51** | **54.92** | **44.73** | **56.71** | | **63.99** | **58.15** | **53.29** | **39.49** | **36.02** | **50.19** | | 43.77 | **58.32** | **32.32** | **47.92** |
| Qwen-2-7B | **44.92** | **55.76** | **47.50** | **58.39** | | **78.75** | **63.30** | 52.31 | **50.28** | **43.08** | **57.54** | | 80.11 | **56.84** | **65.24** | 79.53 |
| Qwen-2.5-7B | **50.09** | 59.59 | **52.50** | **61.75** | | 77.86 | 70.22 | 59.86 | **53.35** | **47.18** | 61.69 | | 79.74 | **60.17** | **72.56** | 84.69 |
| InternLM-2-7B | **47.50** | **57.67** | **50.83** | **61.15** | | **74.73** | **66.16** | **61.94** | **54.10** | **46.28** | **60.64** | | **63.03** | **63.16** | **70.96** | **54.27** |{{< /table-caption >}}
> 🔼 This table compares the performance of various 7B-scale language models fine-tuned with instructions generated by smaller (8B) and larger (70B) Llama-3.1 models in the AutoIF instruction generation framework.  The table uses several benchmark datasets, including IFEval, FollowBench, C-Eval, MMLU, HumanEval, and GSM8K, to assess instruction following capabilities, common abilities, and reasoning skills.  The results aim to demonstrate whether smaller language models are more effective at evolving good instructions for fine-tuning.
> <details>
> <summary>read the caption</summary>
> Table 3: Comparison of performance with Llama-3.1-8B-Instruct and Llama-3.1-70B-Instruct as supervised models under AutoIF scenario.
> </details>

{{< table-caption >}}
| Model | Instruction Following (IFEval) |   | Math Reasoning |   | Code Generation | |
|---|---|---|---|---|---|---|---|---|---| 
| | Pr.(S) | In.(S) | Pr.(L) | In.(L) | | GSM8K | MATH | | HumanEval | MBPP |
|---|---|---|---|---|---|---|---|---|---| 
| _Supervised Model: Llama-3.1-70B-Instruct_ | | | | | | | | | | |
| Llama-3.2-3B | 36.60 | 48.68 | 39.00 | 51.08 | | 53.60 | 7.56 | | 35.37 | 33.00 |
| Llama-3-8B | 35.86 | 47.60 | 38.63 | 50.24 | | 63.91 | 9.18 | | 38.41 | 32.40 |
| Llama-3.1-8B | 36.97 | 47.60 | 40.30 | 51.08 | | 66.11 | 11.68 | | 40.85 | **40.40** |
| _Supervised Model: Llama-3.1-8B-Instruct_ | | | | | | | | | | |
| Llama-3.2-3B | **45.47** | **57.43** | **50.28** | **61.27** | | **56.48** | **8.42** | | **38.41** | **34.40** |
| Llama-3-8B | **37.34** | **49.64** | **39.74** | **51.56** | | **67.40** | **12.26** | | **43.90** | **34.80** |
| Llama-3.1-8B | **38.08** | **49.76** | **40.48** | **52.40** | | **69.52** | **15.62** | | **51.22** | 38.80 |{{< /table-caption >}}
> 🔼 This table presents a comparison of the performance of different Llama models in an Auto Evol-Instruct scenario, where existing instructions are automatically refined and evolved to create more complex variants. Two different supervised models are used: Llama-3.1-8B-Instruct (a smaller language model) and Llama-3.1-70B-Instruct (a larger language model). The table reports performance on instruction following (IFEval), mathematical reasoning (GSM8K and MATH), and code generation (HumanEval and MBPP).  The goal is to understand how the size of the supervised model impacts the effectiveness of the evolved instructions.
> <details>
> <summary>read the caption</summary>
> Table 4: Comparison of performance with Llama-3.1-8B-Instruct and Llama-3.1-70B-Instruct as supervised models under Auto Evol-Instruct scenario.
> </details>

{{< table-caption >}}
| Metrics | IFEval | | | |
|---|---|---|---|---| 
| | Pr.(S) | In.(S) | Pr.(L) | In.(L) |
| Original | 33.09 | 44.72 | 36.41 | 48.32 |
| Instruction Len. | 29.94 | 39.69 | 33.83 | 43.53 |
| Instruction PPL | 27.91 | 39.69 | 32.35 | 44.36 |
| IFD | 30.87 | 43.53 | 36.04 | 47.60 |
| IC-IFD | **34.01** | **46.16** | **38.82** | **50.72** |{{< /table-caption >}}
> 🔼 This table compares the performance of different filtering metrics (Instruction Length, Instruction Perplexity, IFD, and IC-IFD) on a subset (25%) of the Alpaca dataset's third iteration evolved by smaller language models (SLMs).  The evaluation is conducted on the Llama-3-8B model and uses IFEval metrics (Pr.(S), In.(S), Pr.(L), In.(L)) to assess instruction-following capabilities.  This analysis is part of an investigation into whether proposed metrics like IC-IFD can mitigate performance degradation observed when using instruction data evolved by SLMs.
> <details>
> <summary>read the caption</summary>
> Table 5: Comparison of different metrics under 25% of Alpaca-iter3 evolved by SLMs on Llama-3-8B.
> </details>

{{< table-caption >}}
| Hyperparameter | Value |
|---|---| 
| Learning Rate | 2×10⁻⁵ |
| Number of Epochs | 3 |
| Number of Devices | 8 |
| Per-device Batch Size | 1 |
| Gradient Accumulation Steps | 8 |
| Learning Rate Scheduler | cosine |
| Warmup Ratio | 0.03 |
| Max Sequence Length | 2048 |{{< /table-caption >}}
> 🔼 This table presents the hyperparameters used for the instruction evolution across three scenarios: Evol-Instruct, AutoIF, and Auto Evol-Instruct.  It lists general hyperparameters such as the number of epochs, devices, batch size, learning rate scheduler, warmup ratio, and max sequence length. Additionally, it includes LoRA hyperparameters: rank, alpha, target modules, and dropout. The table distinguishes between the hyperparameters used for models Qwen-2.5-0.5B & 1.5B, Qwen-2.5-3B & 7B, and Qwen-2.5-14B, 32B, & 72B.
> <details>
> <summary>read the caption</summary>
> Table 6: Hyperparameters utilized in Evol-Instruct, AutoIF and Auto Evol-Instruct scenarios.
> </details>

{{< table-caption >}}
| Hyperparameter | Value | 
|---|---| 
| **General Hyperparameters** | | 
| Number of Epochs | 2 | 
| Number of Devices | 8 | 
| Per-device Batch Size | 1 | 
| Gradient Accumulation Steps | 8 | 
| Learning Rate Scheduler | cosine | 
| Warmup Ratio | 0.03 | 
| Max Sequence Length | 2048 | 
| **LoRA Hyperparameters** | | 
| LoRA Rank | 8 | 
| LoRA Alpha | 8 | 
| LoRA Target | all module | 
| LoRA Dropout | 0.0 | 
| **Qwen-2.5-0.5B and 1.5B** | | 
| Learning Rate | 1e-5 | 
| **Qwen-2.5-3B and 7B** | | 
| Learning Rate | 7e-6 | 
| **Qwen-2.5-14B, 32B and 72B** | | 
| Learning Rate | 5e-5 |{{< /table-caption >}}
> 🔼 This table details the fine-tuning hyperparameters used for different sizes of models within the Qwen-2.5 series.  It shows distinct learning rates for models ranging from 0.5B to 72B parameters.  Specifically, it presents learning rates for (1) Qwen-2.5-0.5B and 1.5B, (2) Qwen-2.5-3B and 7B, (3) Qwen-2.5-14B, 32B and 72B.
> <details>
> <summary>read the caption</summary>
> Table 7: Hyperparameters utilized for fine-tuning Qwen-2.5 series models.
> </details>

{{< table-caption >}}
| | Seed Data | Seed Data |
|---|---|---| 
| | **Dataset** | **Datasize** |
| Instruction Following | Alpaca | 51,983 |
| Mathematical Reasoning | GSM8K Train | 7,473 |
| Code Generation | Code Alpaca | 20,022 |{{< /table-caption >}}
> 🔼 This table provides statistics on the size of the seed instruction datasets used for instruction following, mathematical reasoning, and code generation in the Evol-Instruct and Auto Evol-Instruct experimental scenarios.  It lists the dataset name (Alpaca, GSM8K Train, Code Alpaca) along with the corresponding number of data points in each dataset.
> <details>
> <summary>read the caption</summary>
> Table 8: Statistics of seed instruction data used in the Evol-Instruct and Auto-Evol-Instruct scenarios.
> </details>

{{< table-caption >}}
| Model | Instruction Following (IFEval) | | | | Math Reasoning | | Code Generation | |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| | Pr.(S) | In.(S) | Pr.(L) | In.(L) | | GSM8K | MATH | | HumanEval | MBPP |
|---|---|---|---|---|---|---|---|---|---|
| **Seed instruction data** | | | | | | | | | |
| Mistral-7B-v0.3 | 17.01 | 26.86 | 19.04 | 29.14 | | 27.07 | 0.12 | | 10.20 | 8.80 |
| DeepSeek-7B | 22.00 | 34.05 | 23.48 | 35.73 | | 44.05 | 0.56 | | 25.61 | 33.80 |
| Llama-3.2-3B | 22.55 | 34.17 | 25.88 | 37.65 | | 46.40 | 0.56 | | 28.05 | 32.20 |
| Llama-3-8B | 23.11 | 32.97 | 24.77 | 35.13 | | 53.68 | 0.22 | | 25.00 | 28.60 |
| Llama-3.1-8B | 27.54 | 38.13 | 28.65 | 39.21 | | 56.41 | 7.56 | | 29.88 | 31.80 |
| InternLM-2-7B | 32.72 | 45.08 | 35.30 | 48.08 | | 61.87 | 10.28 | | 42.07 | 40.00 |{{< /table-caption >}}
> 🔼 This table (Table 9) presents the evaluation results of various base models on the original seed instruction datasets (without any instruction evolution) used in the instruction evolution experiments. The base models include Mistral-7B-v0.3, DeepSeek-7B, Llama-3.2-3B, Llama-3-8B, Llama-3.1-8B, and InternLM-2-7B. The evaluation is conducted on three different types of downstream tasks: instruction following, mathematical reasoning, and code generation.  Instruction following is evaluated using IFEval (Pr.(S) and In.(S) represent the strict and loose accuracy on the prompt level, while Pr.(L) and In.(L) represent the strict and loose accuracy on the instruction level), mathematical reasoning using GSM8K and MATH (accuracy scores are reported), and code generation using HumanEval and MBPP (pass@1 metrics are reported). The purpose of this table is to establish a baseline performance before instruction evolution and to demonstrate that even powerful base models perform suboptimally on the initial seed data, highlighting the need for improved instruction datasets.
> <details>
> <summary>read the caption</summary>
> Table 9: Results of seed instruction data.
> </details>

{{< table-caption >}}
| Model | Instruction Following (IFEval) |  | Math Reasoning |  | Code Generation | |
|---|---|---|---|---|---|---|---|---|---| 
|  | Pr.(S) | In.(S) | Pr.(L) | In.(L) |  | GSM8K | MATH |  | HumanEval | MBPP |
|---|---|---|---|---|---|---|---|---|---|---| 
| *Supervised Model: Llama-3.1-70B-Instruct* |  |  |  |  |  |  |  |  |  |  |
| Iteration 1 | 33.83 | 46.28 | 36.41 | 49.28 |  | 63.00 | 7.62 |  | 43.90 | 36.20 |
| Iteration 2 | 32.53 | 43.76 | 34.20 | 46.16 |  | 64.59 | 10.04 |  | 42.07 | 36.60 |
| Iteration 3 | 35.12 | 47.36 | 36.97 | 49.28 |  | 64.75 | 11.82 |  | 43.29 | 37.20 |
| *Supervised Model: Llama-3.1-8B-Instruct* |  |  |  |  |  |  |  |  |  |  |
| Iteration 1 | 35.49 | 47.00 | 39.56 | 50.72 |  | 63.38 | 11.44 |  | 48.17 | 37.60 |
| Iteration 2 | 36.78 | 48.20 | 40.30 | 50.84 |  | 64.82 | 11.48 |  | 48.78 | 39.40 |
| Iteration 3 | 33.09 | 44.72 | 36.41 | 48.32 |  | 65.88 | 14.12 |  | 44.51 | 40.80 |{{< /table-caption >}}
> 🔼 This table presents a detailed breakdown of the performance of a Llama-3-8B model after undergoing three iterations of instruction evolution using two different supervised models: Llama-3.1-70B-Instruct and Llama-3.1-8B-Instruct.  The evaluation metrics used are IFEval (instruction following), GSM8K and MATH (mathematical reasoning), and HumanEval and MBPP (code generation). This table complements Figure 1, which visually represents the same data.
> <details>
> <summary>read the caption</summary>
> Table 10: Detailed performance of different evolved iterations on Llama-3-8B refer to Figure 1.
> </details>

{{< table-caption >}}
| Model | Instruction Following (IFEval) |  |  | Math Reasoning |  | Code Generation | |
|---|---|---|---|---|---|---|---|---|---| 
| | Pr.(S) | In.(S) | Pr.(L) | In.(L) |  | GSM8K | MATH |  | HumanEval | MBPP |
|---|---|---|---|---|---|---|---|---|---|---| 
| *Supervised Model: Llama-3.1-70B-Instruct* | | | | | | | | | | |
| Qwen-2.5-0.5B | 18.48 | 32.73 | 22.00 | 35.85 |  | 40.26 | 16.32 |  | 30.49 | 27.60 |
| Qwen-2.5-1.5B | 28.84 | 42.67 | 31.98 | 46.04 |  | 62.32 | 24.06 |  | 50.00 | 43.20 |
| Qwen-2.5-3B | 37.89 | 48.56 | 42.70 | 53.60 |  | 76.12 | 26.44 |  | 63.41 | 55.40 |
| Qwen-2.5-7B | 46.21 | 56.83 | 50.64 | 60.79 |  | 76.12 | 38.14 |  | 70.73 | 61.60 |
| Qwen-2.5-14B (LoRA) | 40.11 | 54.43 | 48.24 | 61.99 |  | 87.79 | 49.94 |  | 75.00 | 67.20 |
| Qwen-2.5-32B (LoRA) | 42.88 | 57.31 | 51.20 | 64.15 |  | 87.79 | 55.02 |  | 80.49 | 71.20 |
| Qwen-2.5-72B (LoRA) | 50.63 | 68.43 | 57.12 | 70.98 |  | 91.05 | 58.83 |  | 82.93 | 76.00 |
| *Supervised Model: Llama-3.1-8B-Instruct* | | | | | | | | | | |
| Qwen-2.5-0.5B | 17.38 | 29.38 | 19.78 | 32.01 |  | 40.71 | 16.26 |  | 34.76 | 28.00 |
| Qwen-2.5-1.5B | 28.47 | 41.73 | 31.98 | 44.96 |  | 65.35 | 27.84 |  | 52.44 | 49.94 |
| Qwen-2.5-3B | 38.82 | 49.76 | 42.51 | 53.96 |  | 76.57 | 30.92 |  | 64.02 | 55.80 |
| Qwen-2.5-7B | 47.32 | 58.39 | 51.39 | 62.35 |  | 82.03 | 43.78 |  | 71.95 | 61.80 |
| Qwen-2.5-14B (LoRA) | 42.51 | 55.16 | 51.02 | 62.47 |  | 88.17 | 52.22 |  | 75.61 | 67.20 |
| Qwen-2.5-32B (LoRA) | 45.84 | 58.75 | 54.71 | 66.31 |  | 89.61 | 55.28 |  | 81.71 | 73.20 |
| Qwen-2.5-72B (LoRA) | 52.79 | 72.56 | 61.25 | 73.27 |  | 91.36 | 60.75 |  | 84.67 | 76.80 |{{< /table-caption >}}
> 🔼 This table presents a comprehensive comparison of the performance achieved by various Qwen-2.5 series models, ranging in size from 0.5B to 72B parameters, across different evaluation benchmarks.  The models were fine-tuned using instruction data generated by both smaller (SLM) and larger (LLM) language models, and their performance was evaluated using instruction following, mathematical reasoning, and code generation tasks. The goal is to assess the impact of model size and instruction data source on the effectiveness of instruction following capabilities.
> <details>
> <summary>read the caption</summary>
> Table 11: Detailed performance among Qwen-2.5 series models refer to Figure 3.
> </details>

{{< table-caption >}}
| Temperature | HumanEval | MBPP | HumanEval | MBPP |
|---|---|---|---|---|
| | *Supervised Model: Llama-3.1-70B-Instruct* | | *Supervised Model: Llama-3.1-8B-Instruct* | |
| greedy | 37.20 | 33.40 | **39.63** | **36.40** |
| 0.1 | 36.59 | 36.40 | **37.80** | **37.60** |
| 0.3 | 38.41 | 35.20 | **39.63** | **37.80** |
| 0.5 | 35.98 | 33.40 | **37.80** | **35.80** |
| 0.7 | 35.98 | **36.00** | **39.02** | 32.80 |
| 0.9 | 34.76 | 33.00 | **40.24** | **35.80** |{{< /table-caption >}}
> 🔼 This table presents the performance of a smaller language model (Llama-3.2-3B) on code generation tasks across different decoding temperatures (greedy decoding, 0.1, 0.3, 0.5, 0.7, and 0.9) during instruction evolution, using two different larger language models (Llama-3.1-70B-Instruct and Llama-3.1-8B-Instruct) as supervised models. The metrics used are HumanEval and MBPP, and the results are compared under each scenario.
> <details>
> <summary>read the caption</summary>
> Table 12: Performance among different temperatures on Llama-3.2-3B under code generation scenario.
> </details>

{{< table-caption >}}
|             | Alpaca | GSM8K Train | Code Alpaca |
| :---------- | :----: | :--------: | :--------: |
| Seed Instruction | 27.63 |    34.05   |    26.01   |
| LLM-Inst Iter1 | 52.89 |    39.88   |    46.75   |
| SLM-Inst Iter1 | **66.35** |    **48.85**   |    **58.86**   |
| LLM-Inst Iter2 | 68.16 |    47.14   |    65.02   |
| SLM-Inst Iter2 | **77.62** |    **63.48**   |    **73.37**   |
| LLM-Inst Iter3 | 75.73 |    54.00   |    72.85   |
| SLM-Inst Iter3 | **82.44** |    **72.12**   |    **79.19**   |{{< /table-caption >}}
> 🔼 This table presents the difficulty scores of instructions generated by smaller and larger language models (Llama-3.1-8B-Instruct and Llama-3.1-70B-Instruct) during three iterations of instruction evolution using the Evol-Instruct method. The scores are calculated for three datasets: Alpaca, GSM8K Train, and Code Alpaca.  The difficulty levels help analyze the complexity of generated instructions and their impact on model performance in downstream tasks.
> <details>
> <summary>read the caption</summary>
> Table 13: Scores of difficulty levels for instructions evolved during three iterations, using Llama-3.1-8B-Instruct and Llama-3.1-70B-Instruct as supervised models for each round under Evol-Instruct scenario.
> </details>

{{< table-caption >}}
| Iteration | Average Reward | Average Reward | Average Reward |
| :------- | :------------: | :------------: | :------------: |
|         |    Alpaca     |     GSM8K     |  Code Alpaca   |
|---|---|---|---| 
| *Supervised Model: Llama-3.1-70B-Instruct* | | | |
| Iteration 1 | 1.54 | 0.74 | 1.10 |
| Iteration 2 | **1.68** | 0.73 | **1.19** |
| Iteration 3 | **1.56** | 0.69 | **1.14** |
| *Supervised Model: Llama-3.1-8B-Instruct* | | | |
| Iteration 1 | **1.59** | **1.01** | **1.23** |
| Iteration 2 | 1.54 | **0.79** | 0.96 |
| Iteration 3 | 1.42 | **0.97** | 1.03 |{{< /table-caption >}}
> 🔼 This table presents a comparison of the average reward scores assigned by the InternLM-2-7B-Reward model to instructions generated by SLMs (Smaller Language Models) and LLMs (Larger Language Models) across three iterations of the Evol-Instruct process, using three different instruction datasets: Alpaca, GSM8K, and Code Alpaca. The reward model evaluates the quality of the generated instructions based on certain criteria, and the average reward score reflects the overall quality of the instruction set produced by each model type in each iteration.  This comparison helps to understand if one model type consistently generates higher-quality instructions than the other across different iterations and datasets.
> <details>
> <summary>read the caption</summary>
> Table 14: Comparison of average rewards among different iteration evolution instruction data.
> </details>

{{< table-caption >}}
| Datasets | IFD (%) | IC-IFD (%) | Performance |
|---|---|---|---| 
| SLMs (Alpaca iter 3) | **83.04** | 35.89 | 40.64 |
| LLMs (Alpaca iter 3) | 82.03 | **37.05** | **42.18** |{{< /table-caption >}}
> 🔼 This table compares the Instruction Following Difficulty (IFD) and Instruction Complex-Aware IFD (IC-IFD) scores on the third round of Alpaca datasets evolved by smaller language models (SLMs) and larger language models (LLMs). It also includes the performance of these datasets on IFEval benchmark using Llama-3-8B model.
> <details>
> <summary>read the caption</summary>
> Table 15: Comparison of IFD and IC-IFD on third-round evolved Alpaca datasets from SLMs and LLMs.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2412.11231/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.11231/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.11231/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.11231/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.11231/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.11231/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.11231/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.11231/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.11231/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.11231/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.11231/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.11231/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.11231/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.11231/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.11231/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.11231/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.11231/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.11231/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.11231/19.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.11231/20.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}