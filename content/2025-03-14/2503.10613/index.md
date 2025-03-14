---
title: "CoSTA$\ast$: Cost-Sensitive Toolpath Agent for Multi-turn Image Editing"
summary: "COSTA*: A cost-effective agent that smartly navigates AI tools to edit images with high quality and low cost, balancing user preferences!"
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Computer Vision", "Image Generation", "🏢 University of Maryland, College Park",]
showSummary: true
date: 2025-03-13
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2503.10613 {{< /keyword >}}
{{< keyword icon="writer" >}} Advait Gupta et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-03-14 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2503.10613" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2503.10613" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2503.10613/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Multi-turn image editing is challenging due to the difficulty of balancing the cost and quality of various AI tools. Existing methods often rely on expensive exploration or lack accurate cost estimations. Current text-to-image models struggle with composite instructions that require multiple adjustments while preserving other parts. Large Language Models are useful for decomposing the task, but finding the toolpath (efficient and successful tool use) is difficult because of the high cost to train and computational costs. Therefore, there is a need for a cost-sensitive agent that can decompose a multi-turn task into subtasks.



This paper introduces "**COSTA*", a cost-sensitive toolpath agent that combines LLMs and A* search to find cost-effective tool paths for multi-turn image editing. CoSTA* uses LLMs to create a subtask tree and prunes a graph of AI tools for the given task. It then conducts A* search on the smaller subgraph to find the tool path and balances the total cost and quality to guide the A* search. Each subtask's output is evaluated by a vision-language model, where a failure updates the tool's cost and quality on the subtask. COSTA* automatically switches between modalities across subtasks and outperforms state-of-the-art models in terms of cost and quality. 

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} CoSTA* leverages LLMs and A* search for efficient and cost-sensitive image editing. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} The agent balances cost, quality, and user preferences via a cost-sensitive A* search. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Experiments on a new benchmark demonstrate state-of-the-art performance in multi-turn image editing. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This research presents a new cost-sensitive image-editing agent that can efficiently combine large multimodal models, offering flexibility to search for the optimal editing path and balance cost and quality. It advances the field of multimodal learning and enables better automation in content creation and image restoration. Further research includes addressing the potential biases from pre-trained models and ensuring ethical and responsible usage.

------
#### Visual Insights



![](https://arxiv.org/html/2503.10613/x1.png)

> 🔼 This figure presents a comparison of CoSTA*’s performance against four other state-of-the-art image editing models/agents, varying the cost-quality trade-off coefficient (α).  The x-axis represents the cost (in seconds), and the y-axis represents the quality. Each line represents a different α value for CoSTA*, demonstrating its ability to achieve various cost-quality tradeoffs. The Pareto front highlights the optimal trade-off between cost and quality. CoSTA* consistently outperforms other methods, achieving Pareto optimality and dominating the baselines on both metrics (cost and quality).
> <details>
> <summary>read the caption</summary>
> Figure 1: CoSTA∗ with different cost-quality trade-off coefficients α𝛼\alphaitalic_α vs. four recent image-editing models/agents. CoSTA∗ achieves Pareto optimality and dominates baselines on both metrics.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S3.T1.1.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S3.T1.1.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S3.T1.1.1.1.1.1">Model</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="S3.T1.1.1.1.1.2">Supported Subtasks</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="S3.T1.1.1.1.1.3">Inputs</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="S3.T1.1.1.1.1.4">Outputs</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S3.T1.1.1.2.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S3.T1.1.1.2.1.1">YOLO <cite class="ltx_cite ltx_citemacro_citep">(Wang et al., <a class="ltx_ref" href="https://arxiv.org/html/2503.10613v1#bib.bib32" title="">2022</a>)</cite>
</th>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T1.1.1.2.1.2">Object Detection</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T1.1.1.2.1.3">Input Image</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T1.1.1.2.1.4">Bounding Boxes</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.1.3.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T1.1.1.3.2.1">SAM <cite class="ltx_cite ltx_citemacro_citep">(Kirillov et al., <a class="ltx_ref" href="https://arxiv.org/html/2503.10613v1#bib.bib15" title="">2023a</a>)</cite>
</th>
<td class="ltx_td ltx_align_left" id="S3.T1.1.1.3.2.2">Segmentation</td>
<td class="ltx_td ltx_align_left" id="S3.T1.1.1.3.2.3">Bounding Boxes</td>
<td class="ltx_td ltx_align_left" id="S3.T1.1.1.3.2.4">Segmentation Masks</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.1.4.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T1.1.1.4.3.1">DALL-E <cite class="ltx_cite ltx_citemacro_citep">(Ramesh et al., <a class="ltx_ref" href="https://arxiv.org/html/2503.10613v1#bib.bib25" title="">2021</a>)</cite>
</th>
<td class="ltx_td ltx_align_left" id="S3.T1.1.1.4.3.2">Object Replacement</td>
<td class="ltx_td ltx_align_left" id="S3.T1.1.1.4.3.3">Segmentation Mask</td>
<td class="ltx_td ltx_align_left" id="S3.T1.1.1.4.3.4">Edited Image</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.1.5.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T1.1.1.5.4.1">Stable Diffusion Inpaint</th>
<td class="ltx_td ltx_align_left" id="S3.T1.1.1.5.4.2">Object Removal, Replacement,</td>
<td class="ltx_td ltx_align_left" id="S3.T1.1.1.5.4.3">Segmentation Mask</td>
<td class="ltx_td ltx_align_left" id="S3.T1.1.1.5.4.4">Edited Image</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.1.6.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T1.1.1.6.5.1"><cite class="ltx_cite ltx_citemacro_citep">(Rombach et al., <a class="ltx_ref" href="https://arxiv.org/html/2503.10613v1#bib.bib28" title="">2022a</a>)</cite></th>
<td class="ltx_td ltx_align_left" id="S3.T1.1.1.6.5.2">Recoloration</td>
<td class="ltx_td" id="S3.T1.1.1.6.5.3"></td>
<td class="ltx_td" id="S3.T1.1.1.6.5.4"></td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.1.7.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T1.1.1.7.6.1">EasyOCR</th>
<td class="ltx_td ltx_align_left" id="S3.T1.1.1.7.6.2">Text Extraction</td>
<td class="ltx_td ltx_align_left" id="S3.T1.1.1.7.6.3">Text Bounding Box</td>
<td class="ltx_td ltx_align_left" id="S3.T1.1.1.7.6.4">Extracted Text</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.1.8.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S3.T1.1.1.8.7.1"><cite class="ltx_cite ltx_citemacro_citep">(Kittinaradorn et al., <a class="ltx_ref" href="https://arxiv.org/html/2503.10613v1#bib.bib17" title="">2022</a>)</cite></th>
<td class="ltx_td ltx_border_bb" id="S3.T1.1.1.8.7.2"></td>
<td class="ltx_td ltx_border_bb" id="S3.T1.1.1.8.7.3"></td>
<td class="ltx_td ltx_border_bb" id="S3.T1.1.1.8.7.4"></td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 This table provides a partial overview of the models used in the CoSTA* system.  It lists each model's name, the image-editing subtasks it supports, the inputs it requires, and the outputs it produces. This information is crucial for understanding how the system chooses appropriate tools for each step in the multi-turn image editing process. The table is an excerpt; the full table contains information on all 24 models used in the paper.
> <details>
> <summary>read the caption</summary>
> Table 1: Model Description Table (excerpt)
> </details>





### In-depth insights


#### LLM+A* Toolpath
**Integrating LLMs with A* search for toolpath optimization presents a compelling approach**. LLMs offer high-level planning but lack precision in tool-specific costs. **A* excels in optimal path finding but struggles with the vast search space of AI tools**. A hybrid approach could leverage LLMs for subtask decomposition, pruning the tool search space, then employ A* on the smaller graph for cost-sensitive path discovery. **This balances global planning with local precision**, addressing the quality-cost trade-off by using LLM insights and A* optimization, leading to better tool selection and efficient solutions, improving results over LLM-only or A*-only search.

#### Cost vs. Quality
**CoSTA* adeptly addresses the trade-off between cost and quality** in image editing. By using an A* search algorithm guided by a cost function that considers both execution time and output quality, it finds a path that balances these factors. The user can control the balance to **optimize the trade-off according to preferences**. With different cost-quality trade-off coefficients, it can achieve Pareto optimality dominating baselines on both metrics, offering more choices of tool use paths to cater to different use-cases based on budgets.

#### Multimodal Edit
**Multimodal editing** represents a significant frontier in image manipulation, moving beyond simple text-guided edits to incorporate various modalities like sketches, audio, or even other images to guide the editing process. The central challenge lies in **effectively fusing information** from disparate sources, each with its unique semantic and structural properties.  This requires sophisticated architectures capable of **understanding cross-modal relationships** and resolving potential conflicts or ambiguities arising from inconsistent cues. A robust multimodal editing system needs to **strike a balance between adhering to user intent** expressed through multiple modalities and **maintaining the realism and coherence of the edited image**. Key research directions include developing **novel fusion mechanisms**, exploring techniques for **handling noisy or incomplete modal information**, and creating **intuitive interfaces** that allow users to seamlessly interact with the system using a variety of input methods. Ultimately, successful multimodal editing opens up exciting possibilities for creative expression and content creation.

#### TDG Automaton
**TDG (Tool Dependency Graph) Automaton** could represent an agent that navigates the tool graph to solve image editing tasks. It will explore various tool paths using prior knowledge and benchmarks to enhance efficiency and quality, aiming to find the optimal sequence of tools to achieve the desired result. An **A* search** algorithm would guide the search on the graph.

#### Human > CLIP
When assessing the correlation between human evaluations and CLIP scores, several insights emerge. It appears human evaluation is still crucial because CLIP might **not capture nuanced inaccuracies**. This is key, as relying solely on CLIP could lead to overlooking critical details or contextual understanding that a human evaluator would readily identify. The low correlation could be because CLIP might **struggle with complex tasks**, making it unreliable for holistic assessment but useful for individual subtasks. **Humans excel** where CLIP falls short because humans perform a more thorough job especially for nuanced multi-step and multi-modal


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2503.10613/x2.png)

> 🔼 Figure 2 showcases a comparison of CoSTA* against several state-of-the-art image editing models and agents.  Three complex multi-turn image editing tasks are presented. For each task, the input image and user prompt are displayed alongside the results generated by CoSTA* and four other methods: GenArtist, MagicBrush, InstructPix2Pix, and CLOVA.  The comparison highlights the differences in accuracy, visual coherence, and the ability of each method to handle multimodal tasks. CoSTA* demonstrates superior performance across all three tasks, showing a greater ability to correctly interpret and execute the complex, multi-step instructions.
> <details>
> <summary>read the caption</summary>
> Figure 2: Comparison of CoSTA∗ with State-of-the-Art image editing models/agents, which include GenArtist (Wang et al., 2024b), MagicBrush (Zhang et al., 2024a), InstructPix2Pix (Brooks et al., 2023), and CLOVA (Gao et al., 2024). The input images and prompts are shown on the left of the figure. The outputs generated by each method illustrate differences in accuracy, visual coherence, and the ability to multimodal tasks. Figure 9 shows examples of step-by-step editing using CoSTA∗with intermediate subtask outputs presented.
> </details>



![](https://arxiv.org/html/2503.10613/x3.png)

> 🔼 This figure compares three different approaches to multi-turn image editing task planning: LLM-only planning, traditional search algorithms (like A*), and the proposed CoSTA* method.  LLM-only planning is fast but unreliable due to limitations in its understanding of tool capabilities and costs, leading to suboptimal plans and frequent failures. A* search guarantees optimal solutions but is computationally expensive and impractical for complex tasks with numerous tools. CoSTA* combines the strengths of both by using an LLM to generate a subtask tree, which significantly reduces the search space for A*. Then, A* is applied to this smaller, more manageable subgraph to find a cost-efficient toolpath that balances quality and cost. This hybrid approach allows CoSTA* to achieve efficient and high-quality results.
> <details>
> <summary>read the caption</summary>
> Figure 3: Comparison of CoSTA∗ with other planning agents. LLM-only planning is efficient but prone to failure and heuristics. Search algorithms like A∗ guarantee optimal paths but are computationally expensive. CoSTA∗ balances cost and quality by first pruning the subtask tree using an LLM, which reduces the graph of tools we conduct fine-grained A∗ search on.
> </details>



![](https://arxiv.org/html/2503.10613/x4.png)

> 🔼 The figure depicts a Tool Dependency Graph (TDG), a directed acyclic graph that visually represents the relationships and dependencies between various AI tools used in multi-turn image editing. Each node in the graph represents a specific AI tool (e.g., an object detector, an image inpainter, a text generator), and a directed edge from node  `v1` to node `v2` signifies that the output of tool `v1` serves as a valid input for tool `v2`. This graph is crucial for the CoSTA* algorithm because it allows for efficient searching of optimal toolpaths (sequences of tools) to accomplish complex image editing tasks described in natural language.  The TDG facilitates the selection of appropriate tools for each subtask within a multi-turn image editing workflow, considering the dependencies between tools to ensure a seamless and logical editing process.
> <details>
> <summary>read the caption</summary>
> Figure 4: Tool Dependency Graph (TDG). A directed graph where nodes represent tools and edges indicate dependencies. An edge (v1,v2)subscript𝑣1subscript𝑣2(v_{1},v_{2})( italic_v start_POSTSUBSCRIPT 1 end_POSTSUBSCRIPT , italic_v start_POSTSUBSCRIPT 2 end_POSTSUBSCRIPT ) means v1subscript𝑣1v_{1}italic_v start_POSTSUBSCRIPT 1 end_POSTSUBSCRIPT’s output is a legal input of v2subscript𝑣2v_{2}italic_v start_POSTSUBSCRIPT 2 end_POSTSUBSCRIPT. It enables toolpath search for multi-turn image-editing tasks with composite instructions.
> </details>



![](https://arxiv.org/html/2503.10613/x5.png)

> 🔼 This figure illustrates the three-stage process of the CoSTA* algorithm for multi-turn image editing.  Stage 1 shows an LLM generating a subtask tree from the input image and task instructions, breaking down the complex task into smaller, manageable subtasks.  Each branch of the tree represents a sequence of tool uses to achieve the overall goal. Stage 2 shows how the LLM's subtask tree translates into a tool subgraph, which is a subset of the complete tool dependency graph. This subgraph only includes the tools and relationships necessary for executing the subtasks identified in Stage 1, making the search space smaller and more efficient. Finally, Stage 3 depicts an A* search algorithm operating on this tool subgraph.  The A* search uses a cost function that balances execution time (efficiency) and output quality to find the optimal path (sequence of tool uses) through the subgraph, ultimately leading to the final edited image.
> <details>
> <summary>read the caption</summary>
> Figure 5: Three stages in CoSTA∗: (1) an LLM generates a subtask tree based on the input and task dependencies; (2) the subtask tree spans a tool subgraph that maintains tool dependencies; and (3) A∗ search finds the best toolpath balancing efficiency and quality.
> </details>



![](https://arxiv.org/html/2503.10613/x6.png)

> 🔼 This figure presents a breakdown of the benchmark dataset used to evaluate CoSTA* and other image editing methods. The leftmost panel shows the distribution of tasks involving only image manipulation, categorized by the number of subtasks. The middle panel displays the distribution of tasks involving both image and text manipulation.  The rightmost panel compares the performance of various models, including CoSTA*,  across these tasks. It highlights CoSTA*'s superior performance on complex multi-modal tasks where image and text editing is required, outperforming all baseline methods.
> <details>
> <summary>read the caption</summary>
> Figure 6: Distribution of image-only (left) and text+image tasks (middle) in our proposed benchmark, and quality comparison of different methods on the benchmark (right). CoSTA∗ excels in complex multimodal tasks and outperforms all the baselines.
> </details>



![](https://arxiv.org/html/2503.10613/x7.png)

> 🔼 Figure 7 demonstrates the impact of incorporating real-time feedback (g(x)) into the A* search algorithm within CoSTA*.  The left side shows the results when only the heuristic cost (h(x)) is used to guide path selection, while the right side shows the results when both the heuristic and the actual execution cost (h(x) + g(x)) are considered. The figure visually highlights how the real-time feedback mechanism improves the algorithm's ability to select more efficient paths that also deliver higher quality results.  Specifically, it shows how integrating g(x) leads to a path closer to the Pareto-optimal front (where both quality and cost are effectively balanced).
> <details>
> <summary>read the caption</summary>
> Figure 7: Comparison of a task with h⁢(x)ℎ𝑥h(x)italic_h ( italic_x ) and h⁢(x)+g⁢(x)ℎ𝑥𝑔𝑥h(x)+g(x)italic_h ( italic_x ) + italic_g ( italic_x ), showing how real-time feedback improves path selection and execution.
> </details>



![](https://arxiv.org/html/2503.10613/x8.png)

> 🔼 Figure 8 showcases a qualitative comparison between traditional image editing tools and CoSTA* when handling tasks involving text manipulation within images.  The figure demonstrates CoSTA*'s superior performance in maintaining both visual quality and textual accuracy.  Traditional methods often struggle to accurately edit text within an image while preserving other visual elements, leading to inconsistencies. In contrast, CoSTA*'s multimodal approach, integrating multiple specialized models, enables more precise and comprehensive text editing within the image, while preserving other visual elements. This highlights the effectiveness of CoSTA*'s approach in preserving both visual and textual fidelity.
> <details>
> <summary>read the caption</summary>
> Figure 8: Qualitative comparison of image editing tools vs. CoSTA∗ for text-based tasks, highlighting the advantages of our multimodal support in preserving visual and textual fidelity.
> </details>



![](https://arxiv.org/html/2503.10613/x9.png)

> 🔼 This figure showcases the step-by-step process of CoSTA* in handling multi-turn image editing tasks. Each row displays an example, starting with the initial image and prompt. Then, the subtasks identified by CoSTA* are shown, along with the intermediate outputs generated by each subtask's execution. This visualization demonstrates the sequential nature of CoSTA*'s operations. Each step refines the output, leading to the final edited image. This step-by-step approach highlights CoSTA*'s ability to systematically improve accuracy and consistency, especially in complex tasks involving multiple modalities (text and image).
> <details>
> <summary>read the caption</summary>
> Figure 9: Step-by-step execution of editing tasks using CoSTA∗. Each row illustrates an input image, the corresponding subtask breakdown, and intermediate outputs at different stages of the editing process. This visualization highlights how CoSTA∗ systematically refines outputs by leveraging specialized models for each subtask, ensuring greater accuracy and consistency in multimodal tasks.
> </details>



![](https://arxiv.org/html/2503.10613/x10.png)

> 🔼 This bar chart visualizes the frequency distribution of various subtasks within the benchmark dataset used in the CoSTA* model evaluation. Each bar represents a specific subtask (e.g., object detection, text replacement, image upscaling), and its height indicates the number of instances of that subtask present in the dataset. This figure provides insights into the dataset composition, showing which subtasks are more frequent and which are less frequent. This is useful for understanding the types of image editing tasks the dataset covers and the relative difficulty or complexity of those tasks.
> <details>
> <summary>read the caption</summary>
> Figure 10: Distribution of the number of instances for each subtask in the dataset.
> </details>



![](https://arxiv.org/html/2503.10613/x11.png)

> 🔼 Figure 11 presents a curated selection of image editing tasks from the proposed benchmark dataset.  The top half showcases examples involving solely image manipulation, highlighting the range of complexity from simple object edits to more involved scene changes. The bottom half demonstrates tasks requiring both image and text editing. The examples illustrate the multifaceted nature of multi-turn image editing, encompassing modifications such as object removal, addition, recoloring, text manipulation, scene alterations, and more, underscoring the diverse challenges addressed by the CoSTA* method.
> <details>
> <summary>read the caption</summary>
> Figure 11: An overview of the dataset used for evaluation, showcasing representative input images and prompts across different task categories. The top section presents examples from image-only tasks, while the bottom section includes text+image tasks. These examples illustrate the diversity of tasks in our dataset, highlighting the range of modifications required for both visual and multimodal editing scenarios.
> </details>



![](https://arxiv.org/html/2503.10613/x12.png)

> 🔼 This figure illustrates the retry mechanism used in CoSTA*.  When a node (representing a tool-subtask pair) fails to meet the quality threshold during the A* search, the retry mechanism is triggered.  The diagram shows the adjustments made to the cost and quality of the node, and the re-evaluation of potential paths to completion. The 'Retry' arrow indicates that the process repeats, attempting to fulfill the subtask by adjusting parameters or exploring alternative models. If the subtask still fails to meet the quality threshold after a retry, this node is excluded from further consideration. The figures demonstrate a case where the initial path is blocked by a node failing the quality check. Then, the A* search is re-triggered, this time avoiding the failed node, to explore other possible paths.
> <details>
> <summary>read the caption</summary>
> Figure 12: Visualization of the Retry Mechanism
> </details>



![](https://arxiv.org/html/2503.10613/x13.png)

> 🔼 This scatter plot visualizes the correlation between CLIP similarity scores and human-evaluated accuracy across 40 multi-turn image editing tasks.  Each point represents a single task, plotting its CLIP score against its human-assigned accuracy score. The weak positive correlation (Spearman's ρ = 0.59, Kendall's τ = 0.47) indicates that CLIP scores are not a reliable predictor of human judgment, especially for complex, multi-step tasks.  The plot demonstrates that high CLIP scores do not guarantee high human accuracy, highlighting CLIP's limitations in capturing subtle errors or nuances often present in complex editing scenarios.
> <details>
> <summary>read the caption</summary>
> Figure 13: Scatter plot of CLIP scores vs. human accuracy across 40 tasks. The weak correlation (Spearman’s ρ=0.59𝜌0.59\rho=0.59italic_ρ = 0.59, Kendall’s τ=0.47𝜏0.47\tau=0.47italic_τ = 0.47) highlights CLIP’s limitations in capturing nuanced inaccuracies, particularly in complex, multi-step tasks.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S5.T2.7.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S5.T2.7.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S5.T2.7.1.1.2"><span class="ltx_text ltx_font_bold" id="S5.T2.7.1.1.2.1" style="font-size:90%;">Task Type</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S5.T2.7.1.1.3"><span class="ltx_text ltx_font_bold" id="S5.T2.7.1.1.3.1" style="font-size:90%;">Task Category</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T2.7.1.1.1"><span class="ltx_text ltx_font_bold" id="S5.T2.7.1.1.1.1" style="font-size:90%;">CoSTA<sup class="ltx_sup" id="S5.T2.7.1.1.1.1.1"><span class="ltx_text ltx_font_medium" id="S5.T2.7.1.1.1.1.1.1">∗</span></sup></span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T2.7.1.1.4"><span class="ltx_text ltx_font_bold" id="S5.T2.7.1.1.4.1" style="font-size:90%;">VisProg</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T2.7.1.1.5"><span class="ltx_text ltx_font_bold" id="S5.T2.7.1.1.5.1" style="font-size:90%;">CLOVA</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T2.7.1.1.6"><span class="ltx_text ltx_font_bold" id="S5.T2.7.1.1.6.1" style="font-size:90%;">GenArtist</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T2.7.1.1.7"><span class="ltx_text ltx_font_bold" id="S5.T2.7.1.1.7.1" style="font-size:90%;">Instruct Pix2Pix</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T2.7.1.1.8"><span class="ltx_text ltx_font_bold" id="S5.T2.7.1.1.8.1" style="font-size:90%;">MagicBrush</span></th>
</tr>
<tr class="ltx_tr" id="S5.T2.7.1.2.1">
<th class="ltx_td ltx_th ltx_th_row" id="S5.T2.7.1.2.1.1"></th>
<th class="ltx_td ltx_th ltx_th_column ltx_th_row" id="S5.T2.7.1.2.1.2"></th>
<th class="ltx_td ltx_th ltx_th_column" id="S5.T2.7.1.2.1.3"></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S5.T2.7.1.2.1.4"><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="S5.T2.7.1.2.1.4.1.1" style="font-size:70%;">(</span>Gupta &amp; Kembhavi<span class="ltx_text" id="S5.T2.7.1.2.1.4.2.2.1.1" style="font-size:70%;">, </span><a class="ltx_ref" href="https://arxiv.org/html/2503.10613v1#bib.bib10" title="">2023</a><span class="ltx_text" id="S5.T2.7.1.2.1.4.3.3" style="font-size:70%;">)</span></cite></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S5.T2.7.1.2.1.5"><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="S5.T2.7.1.2.1.5.1.1" style="font-size:70%;">(</span>Gao et al.<span class="ltx_text" id="S5.T2.7.1.2.1.5.2.2.1.1" style="font-size:70%;">, </span><a class="ltx_ref" href="https://arxiv.org/html/2503.10613v1#bib.bib8" title="">2024</a><span class="ltx_text" id="S5.T2.7.1.2.1.5.3.3" style="font-size:70%;">)</span></cite></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S5.T2.7.1.2.1.6"><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="S5.T2.7.1.2.1.6.1.1" style="font-size:70%;">(</span>Wang et al.<span class="ltx_text" id="S5.T2.7.1.2.1.6.2.2.1.1" style="font-size:70%;">, </span><a class="ltx_ref" href="https://arxiv.org/html/2503.10613v1#bib.bib36" title="">2024b</a><span class="ltx_text" id="S5.T2.7.1.2.1.6.3.3" style="font-size:70%;">)</span></cite></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S5.T2.7.1.2.1.7"><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="S5.T2.7.1.2.1.7.1.1" style="font-size:70%;">(</span>Brooks et al.<span class="ltx_text" id="S5.T2.7.1.2.1.7.2.2.1.1" style="font-size:70%;">, </span><a class="ltx_ref" href="https://arxiv.org/html/2503.10613v1#bib.bib3" title="">2023</a><span class="ltx_text" id="S5.T2.7.1.2.1.7.3.3" style="font-size:70%;">)</span></cite></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S5.T2.7.1.2.1.8"><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="S5.T2.7.1.2.1.8.1.1" style="font-size:70%;">(</span>Zhang et al.<span class="ltx_text" id="S5.T2.7.1.2.1.8.2.2.1.1" style="font-size:70%;">, </span><a class="ltx_ref" href="https://arxiv.org/html/2503.10613v1#bib.bib41" title="">2023a</a><span class="ltx_text" id="S5.T2.7.1.2.1.8.3.3" style="font-size:70%;">)</span></cite></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S5.T2.7.1.3.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S5.T2.7.1.3.1.1" rowspan="4"><span class="ltx_text ltx_font_bold" id="S5.T2.7.1.3.1.1.1" style="font-size:90%;">Image-Only Tasks</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S5.T2.7.1.3.1.2"><span class="ltx_text" id="S5.T2.7.1.3.1.2.1" style="font-size:90%;">1–2 subtasks</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.7.1.3.1.3"><span class="ltx_text ltx_font_bold" id="S5.T2.7.1.3.1.3.1" style="font-size:90%;">0.94</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.7.1.3.1.4"><span class="ltx_text" id="S5.T2.7.1.3.1.4.1" style="font-size:90%;">0.88</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.7.1.3.1.5"><span class="ltx_text" id="S5.T2.7.1.3.1.5.1" style="font-size:90%;">0.91</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.7.1.3.1.6"><span class="ltx_text" id="S5.T2.7.1.3.1.6.1" style="font-size:90%;">0.93</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.7.1.3.1.7"><span class="ltx_text" id="S5.T2.7.1.3.1.7.1" style="font-size:90%;">0.87</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.7.1.3.1.8"><span class="ltx_text" id="S5.T2.7.1.3.1.8.1" style="font-size:90%;">0.92</span></td>
</tr>
<tr class="ltx_tr" id="S5.T2.7.1.4.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T2.7.1.4.2.1"><span class="ltx_text" id="S5.T2.7.1.4.2.1.1" style="font-size:90%;">3–4 subtasks</span></th>
<td class="ltx_td ltx_align_center" id="S5.T2.7.1.4.2.2"><span class="ltx_text ltx_font_bold" id="S5.T2.7.1.4.2.2.1" style="font-size:90%;">0.93</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.7.1.4.2.3"><span class="ltx_text" id="S5.T2.7.1.4.2.3.1" style="font-size:90%;">0.76</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.7.1.4.2.4"><span class="ltx_text" id="S5.T2.7.1.4.2.4.1" style="font-size:90%;">0.77</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.7.1.4.2.5"><span class="ltx_text" id="S5.T2.7.1.4.2.5.1" style="font-size:90%;">0.85</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.7.1.4.2.6"><span class="ltx_text" id="S5.T2.7.1.4.2.6.1" style="font-size:90%;">0.74</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.7.1.4.2.7"><span class="ltx_text" id="S5.T2.7.1.4.2.7.1" style="font-size:90%;">0.78</span></td>
</tr>
<tr class="ltx_tr" id="S5.T2.7.1.5.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T2.7.1.5.3.1"><span class="ltx_text" id="S5.T2.7.1.5.3.1.1" style="font-size:90%;">5–6 subtasks</span></th>
<td class="ltx_td ltx_align_center" id="S5.T2.7.1.5.3.2"><span class="ltx_text ltx_font_bold" id="S5.T2.7.1.5.3.2.1" style="font-size:90%;">0.93</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.7.1.5.3.3"><span class="ltx_text" id="S5.T2.7.1.5.3.3.1" style="font-size:90%;">0.62</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.7.1.5.3.4"><span class="ltx_text" id="S5.T2.7.1.5.3.4.1" style="font-size:90%;">0.63</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.7.1.5.3.5"><span class="ltx_text" id="S5.T2.7.1.5.3.5.1" style="font-size:90%;">0.71</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.7.1.5.3.6"><span class="ltx_text" id="S5.T2.7.1.5.3.6.1" style="font-size:90%;">0.55</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.7.1.5.3.7"><span class="ltx_text" id="S5.T2.7.1.5.3.7.1" style="font-size:90%;">0.51</span></td>
</tr>
<tr class="ltx_tr" id="S5.T2.7.1.6.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T2.7.1.6.4.1"><span class="ltx_text" id="S5.T2.7.1.6.4.1.1" style="font-size:90%;">7–8 subtasks</span></th>
<td class="ltx_td ltx_align_center" id="S5.T2.7.1.6.4.2"><span class="ltx_text ltx_font_bold" id="S5.T2.7.1.6.4.2.1" style="font-size:90%;">0.95</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.7.1.6.4.3"><span class="ltx_text" id="S5.T2.7.1.6.4.3.1" style="font-size:90%;">0.46</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.7.1.6.4.4"><span class="ltx_text" id="S5.T2.7.1.6.4.4.1" style="font-size:90%;">0.45</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.7.1.6.4.5"><span class="ltx_text" id="S5.T2.7.1.6.4.5.1" style="font-size:90%;">0.61</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.7.1.6.4.6"><span class="ltx_text" id="S5.T2.7.1.6.4.6.1" style="font-size:90%;">0.38</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.7.1.6.4.7"><span class="ltx_text" id="S5.T2.7.1.6.4.7.1" style="font-size:90%;">0.46</span></td>
</tr>
<tr class="ltx_tr" id="S5.T2.7.1.7.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S5.T2.7.1.7.5.1" rowspan="3"><span class="ltx_text ltx_font_bold" id="S5.T2.7.1.7.5.1.1" style="font-size:90%;">Text+Image Tasks</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S5.T2.7.1.7.5.2"><span class="ltx_text" id="S5.T2.7.1.7.5.2.1" style="font-size:90%;">2–3 subtasks</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.7.1.7.5.3"><span class="ltx_text ltx_font_bold" id="S5.T2.7.1.7.5.3.1" style="font-size:90%;">0.93</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.7.1.7.5.4"><span class="ltx_text" id="S5.T2.7.1.7.5.4.1" style="font-size:90%;">0.61</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.7.1.7.5.5"><span class="ltx_text" id="S5.T2.7.1.7.5.5.1" style="font-size:90%;">0.63</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.7.1.7.5.6"><span class="ltx_text" id="S5.T2.7.1.7.5.6.1" style="font-size:90%;">0.67</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.7.1.7.5.7"><span class="ltx_text" id="S5.T2.7.1.7.5.7.1" style="font-size:90%;">0.48</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.7.1.7.5.8"><span class="ltx_text" id="S5.T2.7.1.7.5.8.1" style="font-size:90%;">0.62</span></td>
</tr>
<tr class="ltx_tr" id="S5.T2.7.1.8.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T2.7.1.8.6.1"><span class="ltx_text" id="S5.T2.7.1.8.6.1.1" style="font-size:90%;">4–5 subtasks</span></th>
<td class="ltx_td ltx_align_center" id="S5.T2.7.1.8.6.2"><span class="ltx_text ltx_font_bold" id="S5.T2.7.1.8.6.2.1" style="font-size:90%;">0.94</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.7.1.8.6.3"><span class="ltx_text" id="S5.T2.7.1.8.6.3.1" style="font-size:90%;">0.50</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.7.1.8.6.4"><span class="ltx_text" id="S5.T2.7.1.8.6.4.1" style="font-size:90%;">0.51</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.7.1.8.6.5"><span class="ltx_text" id="S5.T2.7.1.8.6.5.1" style="font-size:90%;">0.61</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.7.1.8.6.6"><span class="ltx_text" id="S5.T2.7.1.8.6.6.1" style="font-size:90%;">0.42</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.7.1.8.6.7"><span class="ltx_text" id="S5.T2.7.1.8.6.7.1" style="font-size:90%;">0.40</span></td>
</tr>
<tr class="ltx_tr" id="S5.T2.7.1.9.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T2.7.1.9.7.1"><span class="ltx_text" id="S5.T2.7.1.9.7.1.1" style="font-size:90%;">6–8 subtasks</span></th>
<td class="ltx_td ltx_align_center" id="S5.T2.7.1.9.7.2"><span class="ltx_text ltx_font_bold" id="S5.T2.7.1.9.7.2.1" style="font-size:90%;">0.94</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.7.1.9.7.3"><span class="ltx_text" id="S5.T2.7.1.9.7.3.1" style="font-size:90%;">0.38</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.7.1.9.7.4"><span class="ltx_text" id="S5.T2.7.1.9.7.4.1" style="font-size:90%;">0.36</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.7.1.9.7.5"><span class="ltx_text" id="S5.T2.7.1.9.7.5.1" style="font-size:90%;">0.56</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.7.1.9.7.6"><span class="ltx_text" id="S5.T2.7.1.9.7.6.1" style="font-size:90%;">0.31</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.7.1.9.7.7"><span class="ltx_text" id="S5.T2.7.1.9.7.7.1" style="font-size:90%;">0.26</span></td>
</tr>
<tr class="ltx_tr" id="S5.T2.7.1.10.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_t" id="S5.T2.7.1.10.8.1" rowspan="3"><span class="ltx_text ltx_font_bold" id="S5.T2.7.1.10.8.1.1" style="font-size:90%;">Overall Accuracy</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S5.T2.7.1.10.8.2"><span class="ltx_text" id="S5.T2.7.1.10.8.2.1" style="font-size:90%;">Image Tasks</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.7.1.10.8.3"><span class="ltx_text ltx_font_bold" id="S5.T2.7.1.10.8.3.1" style="font-size:90%;">0.94</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.7.1.10.8.4"><span class="ltx_text" id="S5.T2.7.1.10.8.4.1" style="font-size:90%;">0.69</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.7.1.10.8.5"><span class="ltx_text" id="S5.T2.7.1.10.8.5.1" style="font-size:90%;">0.70</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.7.1.10.8.6"><span class="ltx_text" id="S5.T2.7.1.10.8.6.1" style="font-size:90%;">0.78</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.7.1.10.8.7"><span class="ltx_text" id="S5.T2.7.1.10.8.7.1" style="font-size:90%;">0.64</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.7.1.10.8.8"><span class="ltx_text" id="S5.T2.7.1.10.8.8.1" style="font-size:90%;">0.67</span></td>
</tr>
<tr class="ltx_tr" id="S5.T2.7.1.11.9">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T2.7.1.11.9.1"><span class="ltx_text" id="S5.T2.7.1.11.9.1.1" style="font-size:90%;">Text+Image Tasks</span></th>
<td class="ltx_td ltx_align_center" id="S5.T2.7.1.11.9.2"><span class="ltx_text ltx_font_bold" id="S5.T2.7.1.11.9.2.1" style="font-size:90%;">0.93</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.7.1.11.9.3"><span class="ltx_text" id="S5.T2.7.1.11.9.3.1" style="font-size:90%;">0.49</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.7.1.11.9.4"><span class="ltx_text" id="S5.T2.7.1.11.9.4.1" style="font-size:90%;">0.50</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.7.1.11.9.5"><span class="ltx_text" id="S5.T2.7.1.11.9.5.1" style="font-size:90%;">0.61</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.7.1.11.9.6"><span class="ltx_text" id="S5.T2.7.1.11.9.6.1" style="font-size:90%;">0.40</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.7.1.11.9.7"><span class="ltx_text" id="S5.T2.7.1.11.9.7.1" style="font-size:90%;">0.43</span></td>
</tr>
<tr class="ltx_tr" id="S5.T2.7.1.12.10">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S5.T2.7.1.12.10.1"><span class="ltx_text" id="S5.T2.7.1.12.10.1.1" style="font-size:90%;">All Tasks</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T2.7.1.12.10.2"><span class="ltx_text ltx_font_bold" id="S5.T2.7.1.12.10.2.1" style="font-size:90%;">0.94</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T2.7.1.12.10.3"><span class="ltx_text" id="S5.T2.7.1.12.10.3.1" style="font-size:90%;">0.62</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T2.7.1.12.10.4"><span class="ltx_text" id="S5.T2.7.1.12.10.4.1" style="font-size:90%;">0.63</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T2.7.1.12.10.5"><span class="ltx_text" id="S5.T2.7.1.12.10.5.1" style="font-size:90%;">0.73</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T2.7.1.12.10.6"><span class="ltx_text" id="S5.T2.7.1.12.10.6.1" style="font-size:90%;">0.56</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T2.7.1.12.10.7"><span class="ltx_text" id="S5.T2.7.1.12.10.7.1" style="font-size:90%;">0.59</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 Table 2 presents a detailed comparison of the accuracy achieved by the proposed CoSTA* model against several state-of-the-art baseline methods.  The comparison is broken down by task type (image-only vs. text+image) and further categorized by the number of subtasks involved in each task (1-2, 3-4, 5-6, 7-8).  This breakdown allows for a nuanced analysis of how each method performs under varying levels of complexity.  The results highlight CoSTA*'s superior performance, especially in complex scenarios with multiple subtasks and both image and text data.  This demonstrates the efficacy of the CoSTA* approach in managing challenging, multi-step image editing tasks.
> <details>
> <summary>read the caption</summary>
> Table 2: Accuracy comparison of CoSTA∗ with baselines across task types and categories. CoSTA∗ excels in complex workflows with A∗ search and a diverse set of tools, ensuring higher accuracy.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S5.T3.1.1">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S5.T3.1.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_tt" id="S5.T3.1.1.1.1.1">Metric</th>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T3.1.1.1.1.2">CLIP Similarity Score</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T3.1.1.1.1.3">Human Evaluation Accuracy</td>
</tr>
<tr class="ltx_tr" id="S5.T3.1.1.2.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_t" id="S5.T3.1.1.2.2.1">Average (50 Tasks)</th>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S5.T3.1.1.2.2.2">0.96</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S5.T3.1.1.2.2.3">0.78</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a comparison of CLIP (Contrastive Language–Image Pre-training) similarity scores against human evaluation scores for 50 image editing tasks.  The tasks involved multimodal and multi-step edits, meaning they required multiple AI tools to complete and combined image and text modifications.  The comparison highlights the limitations of using CLIP similarity as a sole metric for assessing the quality of complex image manipulations, particularly those involving semantic nuances and holistic image understanding, where human evaluation is necessary for more accurate assessment.
> <details>
> <summary>read the caption</summary>
> Table 3: Comparison of CLIP Similarity vs. Human Evaluation on 50 tasks to assess CLIP similarity against human judgments in multimodal and multi-step editing.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S5.T4.5">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S5.T4.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="S5.T4.1.1.2">Metric</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T4.1.1.3">Correlation Coefficient</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T4.1.1.1">
<math alttext="p" class="ltx_Math" display="inline" id="S5.T4.1.1.1.m1.1"><semantics id="S5.T4.1.1.1.m1.1a"><mi id="S5.T4.1.1.1.m1.1.1" xref="S5.T4.1.1.1.m1.1.1.cmml">p</mi><annotation-xml encoding="MathML-Content" id="S5.T4.1.1.1.m1.1b"><ci id="S5.T4.1.1.1.m1.1.1.cmml" xref="S5.T4.1.1.1.m1.1.1">𝑝</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T4.1.1.1.m1.1c">p</annotation><annotation encoding="application/x-llamapun" id="S5.T4.1.1.1.m1.1d">italic_p</annotation></semantics></math>-value</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S5.T4.3.3">
<td class="ltx_td ltx_align_left ltx_border_t" id="S5.T4.2.2.1">Spearman’s <math alttext="\rho" class="ltx_Math" display="inline" id="S5.T4.2.2.1.m1.1"><semantics id="S5.T4.2.2.1.m1.1a"><mi id="S5.T4.2.2.1.m1.1.1" xref="S5.T4.2.2.1.m1.1.1.cmml">ρ</mi><annotation-xml encoding="MathML-Content" id="S5.T4.2.2.1.m1.1b"><ci id="S5.T4.2.2.1.m1.1.1.cmml" xref="S5.T4.2.2.1.m1.1.1">𝜌</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T4.2.2.1.m1.1c">\rho</annotation><annotation encoding="application/x-llamapun" id="S5.T4.2.2.1.m1.1d">italic_ρ</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.3.3.3">0.59</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.3.3.2"><math alttext="6.07\times 10^{-5}" class="ltx_Math" display="inline" id="S5.T4.3.3.2.m1.1"><semantics id="S5.T4.3.3.2.m1.1a"><mrow id="S5.T4.3.3.2.m1.1.1" xref="S5.T4.3.3.2.m1.1.1.cmml"><mn id="S5.T4.3.3.2.m1.1.1.2" xref="S5.T4.3.3.2.m1.1.1.2.cmml">6.07</mn><mo id="S5.T4.3.3.2.m1.1.1.1" lspace="0.222em" rspace="0.222em" xref="S5.T4.3.3.2.m1.1.1.1.cmml">×</mo><msup id="S5.T4.3.3.2.m1.1.1.3" xref="S5.T4.3.3.2.m1.1.1.3.cmml"><mn id="S5.T4.3.3.2.m1.1.1.3.2" xref="S5.T4.3.3.2.m1.1.1.3.2.cmml">10</mn><mrow id="S5.T4.3.3.2.m1.1.1.3.3" xref="S5.T4.3.3.2.m1.1.1.3.3.cmml"><mo id="S5.T4.3.3.2.m1.1.1.3.3a" xref="S5.T4.3.3.2.m1.1.1.3.3.cmml">−</mo><mn id="S5.T4.3.3.2.m1.1.1.3.3.2" xref="S5.T4.3.3.2.m1.1.1.3.3.2.cmml">5</mn></mrow></msup></mrow><annotation-xml encoding="MathML-Content" id="S5.T4.3.3.2.m1.1b"><apply id="S5.T4.3.3.2.m1.1.1.cmml" xref="S5.T4.3.3.2.m1.1.1"><times id="S5.T4.3.3.2.m1.1.1.1.cmml" xref="S5.T4.3.3.2.m1.1.1.1"></times><cn id="S5.T4.3.3.2.m1.1.1.2.cmml" type="float" xref="S5.T4.3.3.2.m1.1.1.2">6.07</cn><apply id="S5.T4.3.3.2.m1.1.1.3.cmml" xref="S5.T4.3.3.2.m1.1.1.3"><csymbol cd="ambiguous" id="S5.T4.3.3.2.m1.1.1.3.1.cmml" xref="S5.T4.3.3.2.m1.1.1.3">superscript</csymbol><cn id="S5.T4.3.3.2.m1.1.1.3.2.cmml" type="integer" xref="S5.T4.3.3.2.m1.1.1.3.2">10</cn><apply id="S5.T4.3.3.2.m1.1.1.3.3.cmml" xref="S5.T4.3.3.2.m1.1.1.3.3"><minus id="S5.T4.3.3.2.m1.1.1.3.3.1.cmml" xref="S5.T4.3.3.2.m1.1.1.3.3"></minus><cn id="S5.T4.3.3.2.m1.1.1.3.3.2.cmml" type="integer" xref="S5.T4.3.3.2.m1.1.1.3.3.2">5</cn></apply></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T4.3.3.2.m1.1c">6.07\times 10^{-5}</annotation><annotation encoding="application/x-llamapun" id="S5.T4.3.3.2.m1.1d">6.07 × 10 start_POSTSUPERSCRIPT - 5 end_POSTSUPERSCRIPT</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S5.T4.5.5">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S5.T4.4.4.1">Kendall’s <math alttext="\tau" class="ltx_Math" display="inline" id="S5.T4.4.4.1.m1.1"><semantics id="S5.T4.4.4.1.m1.1a"><mi id="S5.T4.4.4.1.m1.1.1" xref="S5.T4.4.4.1.m1.1.1.cmml">τ</mi><annotation-xml encoding="MathML-Content" id="S5.T4.4.4.1.m1.1b"><ci id="S5.T4.4.4.1.m1.1.1.cmml" xref="S5.T4.4.4.1.m1.1.1">𝜏</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T4.4.4.1.m1.1c">\tau</annotation><annotation encoding="application/x-llamapun" id="S5.T4.4.4.1.m1.1d">italic_τ</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T4.5.5.3">0.47</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T4.5.5.2"><math alttext="5.83\times 10^{-5}" class="ltx_Math" display="inline" id="S5.T4.5.5.2.m1.1"><semantics id="S5.T4.5.5.2.m1.1a"><mrow id="S5.T4.5.5.2.m1.1.1" xref="S5.T4.5.5.2.m1.1.1.cmml"><mn id="S5.T4.5.5.2.m1.1.1.2" xref="S5.T4.5.5.2.m1.1.1.2.cmml">5.83</mn><mo id="S5.T4.5.5.2.m1.1.1.1" lspace="0.222em" rspace="0.222em" xref="S5.T4.5.5.2.m1.1.1.1.cmml">×</mo><msup id="S5.T4.5.5.2.m1.1.1.3" xref="S5.T4.5.5.2.m1.1.1.3.cmml"><mn id="S5.T4.5.5.2.m1.1.1.3.2" xref="S5.T4.5.5.2.m1.1.1.3.2.cmml">10</mn><mrow id="S5.T4.5.5.2.m1.1.1.3.3" xref="S5.T4.5.5.2.m1.1.1.3.3.cmml"><mo id="S5.T4.5.5.2.m1.1.1.3.3a" xref="S5.T4.5.5.2.m1.1.1.3.3.cmml">−</mo><mn id="S5.T4.5.5.2.m1.1.1.3.3.2" xref="S5.T4.5.5.2.m1.1.1.3.3.2.cmml">5</mn></mrow></msup></mrow><annotation-xml encoding="MathML-Content" id="S5.T4.5.5.2.m1.1b"><apply id="S5.T4.5.5.2.m1.1.1.cmml" xref="S5.T4.5.5.2.m1.1.1"><times id="S5.T4.5.5.2.m1.1.1.1.cmml" xref="S5.T4.5.5.2.m1.1.1.1"></times><cn id="S5.T4.5.5.2.m1.1.1.2.cmml" type="float" xref="S5.T4.5.5.2.m1.1.1.2">5.83</cn><apply id="S5.T4.5.5.2.m1.1.1.3.cmml" xref="S5.T4.5.5.2.m1.1.1.3"><csymbol cd="ambiguous" id="S5.T4.5.5.2.m1.1.1.3.1.cmml" xref="S5.T4.5.5.2.m1.1.1.3">superscript</csymbol><cn id="S5.T4.5.5.2.m1.1.1.3.2.cmml" type="integer" xref="S5.T4.5.5.2.m1.1.1.3.2">10</cn><apply id="S5.T4.5.5.2.m1.1.1.3.3.cmml" xref="S5.T4.5.5.2.m1.1.1.3.3"><minus id="S5.T4.5.5.2.m1.1.1.3.3.1.cmml" xref="S5.T4.5.5.2.m1.1.1.3.3"></minus><cn id="S5.T4.5.5.2.m1.1.1.3.3.2.cmml" type="integer" xref="S5.T4.5.5.2.m1.1.1.3.3.2">5</cn></apply></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T4.5.5.2.m1.1c">5.83\times 10^{-5}</annotation><annotation encoding="application/x-llamapun" id="S5.T4.5.5.2.m1.1d">5.83 × 10 start_POSTSUPERSCRIPT - 5 end_POSTSUPERSCRIPT</annotation></semantics></math></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a correlation analysis comparing the CLIP (Contrastive Language–Image Pre-training) similarity scores against human evaluation scores for 40 image editing tasks.  The analysis reveals a weak correlation between automatic CLIP scores and human judgments, highlighting the limitations of relying solely on CLIP for evaluating the quality and accuracy of complex image editing tasks.  Human evaluation remains essential for capturing nuanced aspects of image quality, including subtle errors and semantic coherence issues that automatic metrics often miss. The table shows the correlation coefficients (Spearman's ρ and Kendall's τ) and their corresponding p-values to quantify the strength and statistical significance of the correlation between CLIP and human scores.
> <details>
> <summary>read the caption</summary>
> Table 4: Correlation Analysis of CLIP vs Human Evaluation on 40 tasks, which indicates that human evaluation is still necessary.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S5.T5.3.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S5.T5.3.1.1">
<th class="ltx_td ltx_align_justify ltx_align_top ltx_th ltx_th_column ltx_border_tt" id="S5.T5.3.1.1.2" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T5.3.1.1.2.1">
<span class="ltx_p" id="S5.T5.3.1.1.2.1.1" style="width:216.8pt;"><span class="ltx_text ltx_font_bold" id="S5.T5.3.1.1.2.1.1.1">Feature</span></span>
</span>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T5.3.1.1.1" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S5.T5.3.1.1.1.1">CoSTA<sup class="ltx_sup" id="S5.T5.3.1.1.1.1.1"><span class="ltx_text ltx_font_medium" id="S5.T5.3.1.1.1.1.1.1">∗</span></sup></span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T5.3.1.1.3" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S5.T5.3.1.1.3.1">CLOVA</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T5.3.1.1.4" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S5.T5.3.1.1.4.1">GenArtist</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T5.3.1.1.5" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S5.T5.3.1.1.5.1">VisProg</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T5.3.1.1.6" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S5.T5.3.1.1.6.1">Instruct Pix2Pix</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S5.T5.3.1.2.1">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S5.T5.3.1.2.1.1" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T5.3.1.2.1.1.1">
<span class="ltx_p" id="S5.T5.3.1.2.1.1.1.1" style="width:216.8pt;">Integration of LLM with A* Path Optimization</span>
</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.3.1.2.1.2" style="padding-top:1pt;padding-bottom:1pt;">✓</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.3.1.2.1.3" style="padding-top:1pt;padding-bottom:1pt;">×</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.3.1.2.1.4" style="padding-top:1pt;padding-bottom:1pt;">×</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.3.1.2.1.5" style="padding-top:1pt;padding-bottom:1pt;">×</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.3.1.2.1.6" style="padding-top:1pt;padding-bottom:1pt;">×</td>
</tr>
<tr class="ltx_tr" id="S5.T5.3.1.3.2">
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T5.3.1.3.2.1" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T5.3.1.3.2.1.1">
<span class="ltx_p" id="S5.T5.3.1.3.2.1.1.1" style="width:216.8pt;">Automatic Feedback Integration (Real-Time)</span>
</span>
</td>
<td class="ltx_td ltx_align_center" id="S5.T5.3.1.3.2.2" style="padding-top:1pt;padding-bottom:1pt;">✓</td>
<td class="ltx_td ltx_align_center" id="S5.T5.3.1.3.2.3" style="padding-top:1pt;padding-bottom:1pt;">×</td>
<td class="ltx_td ltx_align_center" id="S5.T5.3.1.3.2.4" style="padding-top:1pt;padding-bottom:1pt;">×</td>
<td class="ltx_td ltx_align_center" id="S5.T5.3.1.3.2.5" style="padding-top:1pt;padding-bottom:1pt;">×</td>
<td class="ltx_td ltx_align_center" id="S5.T5.3.1.3.2.6" style="padding-top:1pt;padding-bottom:1pt;">×</td>
</tr>
<tr class="ltx_tr" id="S5.T5.3.1.4.3">
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T5.3.1.4.3.1" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T5.3.1.4.3.1.1">
<span class="ltx_p" id="S5.T5.3.1.4.3.1.1.1" style="width:216.8pt;">Real-Time Cost-Quality Tradeoff</span>
</span>
</td>
<td class="ltx_td ltx_align_center" id="S5.T5.3.1.4.3.2" style="padding-top:1pt;padding-bottom:1pt;">✓</td>
<td class="ltx_td ltx_align_center" id="S5.T5.3.1.4.3.3" style="padding-top:1pt;padding-bottom:1pt;">×</td>
<td class="ltx_td ltx_align_center" id="S5.T5.3.1.4.3.4" style="padding-top:1pt;padding-bottom:1pt;">×</td>
<td class="ltx_td ltx_align_center" id="S5.T5.3.1.4.3.5" style="padding-top:1pt;padding-bottom:1pt;">×</td>
<td class="ltx_td ltx_align_center" id="S5.T5.3.1.4.3.6" style="padding-top:1pt;padding-bottom:1pt;">×</td>
</tr>
<tr class="ltx_tr" id="S5.T5.3.1.5.4">
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T5.3.1.5.4.1" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T5.3.1.5.4.1.1">
<span class="ltx_p" id="S5.T5.3.1.5.4.1.1.1" style="width:216.8pt;">User-Defined Cost-Quality Weightage</span>
</span>
</td>
<td class="ltx_td ltx_align_center" id="S5.T5.3.1.5.4.2" style="padding-top:1pt;padding-bottom:1pt;">✓</td>
<td class="ltx_td ltx_align_center" id="S5.T5.3.1.5.4.3" style="padding-top:1pt;padding-bottom:1pt;">×</td>
<td class="ltx_td ltx_align_center" id="S5.T5.3.1.5.4.4" style="padding-top:1pt;padding-bottom:1pt;">×</td>
<td class="ltx_td ltx_align_center" id="S5.T5.3.1.5.4.5" style="padding-top:1pt;padding-bottom:1pt;">×</td>
<td class="ltx_td ltx_align_center" id="S5.T5.3.1.5.4.6" style="padding-top:1pt;padding-bottom:1pt;">×</td>
</tr>
<tr class="ltx_tr" id="S5.T5.3.1.6.5">
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T5.3.1.6.5.1" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T5.3.1.6.5.1.1">
<span class="ltx_p" id="S5.T5.3.1.6.5.1.1.1" style="width:216.8pt;">Multimodality Support (Image + Text)</span>
</span>
</td>
<td class="ltx_td ltx_align_center" id="S5.T5.3.1.6.5.2" style="padding-top:1pt;padding-bottom:1pt;">✓</td>
<td class="ltx_td ltx_align_center" id="S5.T5.3.1.6.5.3" style="padding-top:1pt;padding-bottom:1pt;">×</td>
<td class="ltx_td ltx_align_center" id="S5.T5.3.1.6.5.4" style="padding-top:1pt;padding-bottom:1pt;">×</td>
<td class="ltx_td ltx_align_center" id="S5.T5.3.1.6.5.5" style="padding-top:1pt;padding-bottom:1pt;">×</td>
<td class="ltx_td ltx_align_center" id="S5.T5.3.1.6.5.6" style="padding-top:1pt;padding-bottom:1pt;">×</td>
</tr>
<tr class="ltx_tr" id="S5.T5.3.1.7.6">
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T5.3.1.7.6.1" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T5.3.1.7.6.1.1">
<span class="ltx_p" id="S5.T5.3.1.7.6.1.1.1" style="width:216.8pt;">Number of Tools for Task Accomplishment</span>
</span>
</td>
<td class="ltx_td ltx_align_center" id="S5.T5.3.1.7.6.2" style="padding-top:1pt;padding-bottom:1pt;">24</td>
<td class="ltx_td ltx_align_center" id="S5.T5.3.1.7.6.3" style="padding-top:1pt;padding-bottom:1pt;">&lt;10</td>
<td class="ltx_td ltx_align_center" id="S5.T5.3.1.7.6.4" style="padding-top:1pt;padding-bottom:1pt;">&lt;10</td>
<td class="ltx_td ltx_align_center" id="S5.T5.3.1.7.6.5" style="padding-top:1pt;padding-bottom:1pt;">&lt;12</td>
<td class="ltx_td ltx_align_center" id="S5.T5.3.1.7.6.6" style="padding-top:1pt;padding-bottom:1pt;">&lt;5</td>
</tr>
<tr class="ltx_tr" id="S5.T5.3.1.8.7">
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T5.3.1.8.7.1" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T5.3.1.8.7.1.1">
<span class="ltx_p" id="S5.T5.3.1.8.7.1.1.1" style="width:216.8pt;">Feedback-Based Retrying and Model Selection</span>
</span>
</td>
<td class="ltx_td ltx_align_center" id="S5.T5.3.1.8.7.2" style="padding-top:1pt;padding-bottom:1pt;">✓</td>
<td class="ltx_td ltx_align_center" id="S5.T5.3.1.8.7.3" style="padding-top:1pt;padding-bottom:1pt;">✓</td>
<td class="ltx_td ltx_align_center" id="S5.T5.3.1.8.7.4" style="padding-top:1pt;padding-bottom:1pt;">✓</td>
<td class="ltx_td ltx_align_center" id="S5.T5.3.1.8.7.5" style="padding-top:1pt;padding-bottom:1pt;">×</td>
<td class="ltx_td ltx_align_center" id="S5.T5.3.1.8.7.6" style="padding-top:1pt;padding-bottom:1pt;">×</td>
</tr>
<tr class="ltx_tr" id="S5.T5.3.1.9.8">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb" id="S5.T5.3.1.9.8.1" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T5.3.1.9.8.1.1">
<span class="ltx_p" id="S5.T5.3.1.9.8.1.1.1" style="width:216.8pt;">Dynamic Adjustment of Heuristic Values</span>
</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T5.3.1.9.8.2" style="padding-top:1pt;padding-bottom:1pt;">✓</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T5.3.1.9.8.3" style="padding-top:1pt;padding-bottom:1pt;">×</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T5.3.1.9.8.4" style="padding-top:1pt;padding-bottom:1pt;">×</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T5.3.1.9.8.5" style="padding-top:1pt;padding-bottom:1pt;">×</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T5.3.1.9.8.6" style="padding-top:1pt;padding-bottom:1pt;">×</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 Table 5 presents a comparative analysis of key features across several image editing methods, including CoSTA*.  The table highlights the substantial advantages of CoSTA* over other baselines.  These advantages stem from CoSTA*'s unique combination of features such as its integration of a large language model (LLM) with A* search, its capability for path optimization, its real-time feedback integration, and its support for both image and text-based editing. The table explicitly shows that CoSTA* possesses functionalities absent in other methods, such as the ability to perform cost-quality tradeoffs and dynamically adjust its heuristic values. This comprehensive feature set contributes to CoSTA*'s superior performance in complex image editing tasks. 
> <details>
> <summary>read the caption</summary>
> Table 5: Comparison of key features across methods, highlighting the extensive set of capabilities supported by CoSTA∗, which are absent in baselines and contribute to its superior performance.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S5.T6.6.2">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S5.T6.6.2.3.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S5.T6.6.2.3.1.1" style="padding-top:1pt;padding-bottom:1pt;">Approach</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T6.6.2.3.1.2" style="padding-top:1pt;padding-bottom:1pt;">Average Accuracy</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S5.T6.5.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S5.T6.5.1.1.1" style="padding-top:1pt;padding-bottom:1pt;">
<math alttext="h(x)" class="ltx_Math" display="inline" id="S5.T6.5.1.1.1.m1.1"><semantics id="S5.T6.5.1.1.1.m1.1a"><mrow id="S5.T6.5.1.1.1.m1.1.2" xref="S5.T6.5.1.1.1.m1.1.2.cmml"><mi id="S5.T6.5.1.1.1.m1.1.2.2" xref="S5.T6.5.1.1.1.m1.1.2.2.cmml">h</mi><mo id="S5.T6.5.1.1.1.m1.1.2.1" xref="S5.T6.5.1.1.1.m1.1.2.1.cmml">⁢</mo><mrow id="S5.T6.5.1.1.1.m1.1.2.3.2" xref="S5.T6.5.1.1.1.m1.1.2.cmml"><mo id="S5.T6.5.1.1.1.m1.1.2.3.2.1" stretchy="false" xref="S5.T6.5.1.1.1.m1.1.2.cmml">(</mo><mi id="S5.T6.5.1.1.1.m1.1.1" xref="S5.T6.5.1.1.1.m1.1.1.cmml">x</mi><mo id="S5.T6.5.1.1.1.m1.1.2.3.2.2" stretchy="false" xref="S5.T6.5.1.1.1.m1.1.2.cmml">)</mo></mrow></mrow><annotation-xml encoding="MathML-Content" id="S5.T6.5.1.1.1.m1.1b"><apply id="S5.T6.5.1.1.1.m1.1.2.cmml" xref="S5.T6.5.1.1.1.m1.1.2"><times id="S5.T6.5.1.1.1.m1.1.2.1.cmml" xref="S5.T6.5.1.1.1.m1.1.2.1"></times><ci id="S5.T6.5.1.1.1.m1.1.2.2.cmml" xref="S5.T6.5.1.1.1.m1.1.2.2">ℎ</ci><ci id="S5.T6.5.1.1.1.m1.1.1.cmml" xref="S5.T6.5.1.1.1.m1.1.1">𝑥</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T6.5.1.1.1.m1.1c">h(x)</annotation><annotation encoding="application/x-llamapun" id="S5.T6.5.1.1.1.m1.1d">italic_h ( italic_x )</annotation></semantics></math> Only</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T6.5.1.1.2" style="padding-top:1pt;padding-bottom:1pt;">0.798</td>
</tr>
<tr class="ltx_tr" id="S5.T6.6.2.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S5.T6.6.2.2.1" style="padding-top:1pt;padding-bottom:1pt;"><math alttext="h(x)+g(x)" class="ltx_Math" display="inline" id="S5.T6.6.2.2.1.m1.2"><semantics id="S5.T6.6.2.2.1.m1.2a"><mrow id="S5.T6.6.2.2.1.m1.2.3" xref="S5.T6.6.2.2.1.m1.2.3.cmml"><mrow id="S5.T6.6.2.2.1.m1.2.3.2" xref="S5.T6.6.2.2.1.m1.2.3.2.cmml"><mi id="S5.T6.6.2.2.1.m1.2.3.2.2" xref="S5.T6.6.2.2.1.m1.2.3.2.2.cmml">h</mi><mo id="S5.T6.6.2.2.1.m1.2.3.2.1" xref="S5.T6.6.2.2.1.m1.2.3.2.1.cmml">⁢</mo><mrow id="S5.T6.6.2.2.1.m1.2.3.2.3.2" xref="S5.T6.6.2.2.1.m1.2.3.2.cmml"><mo id="S5.T6.6.2.2.1.m1.2.3.2.3.2.1" stretchy="false" xref="S5.T6.6.2.2.1.m1.2.3.2.cmml">(</mo><mi id="S5.T6.6.2.2.1.m1.1.1" xref="S5.T6.6.2.2.1.m1.1.1.cmml">x</mi><mo id="S5.T6.6.2.2.1.m1.2.3.2.3.2.2" stretchy="false" xref="S5.T6.6.2.2.1.m1.2.3.2.cmml">)</mo></mrow></mrow><mo id="S5.T6.6.2.2.1.m1.2.3.1" xref="S5.T6.6.2.2.1.m1.2.3.1.cmml">+</mo><mrow id="S5.T6.6.2.2.1.m1.2.3.3" xref="S5.T6.6.2.2.1.m1.2.3.3.cmml"><mi id="S5.T6.6.2.2.1.m1.2.3.3.2" xref="S5.T6.6.2.2.1.m1.2.3.3.2.cmml">g</mi><mo id="S5.T6.6.2.2.1.m1.2.3.3.1" xref="S5.T6.6.2.2.1.m1.2.3.3.1.cmml">⁢</mo><mrow id="S5.T6.6.2.2.1.m1.2.3.3.3.2" xref="S5.T6.6.2.2.1.m1.2.3.3.cmml"><mo id="S5.T6.6.2.2.1.m1.2.3.3.3.2.1" stretchy="false" xref="S5.T6.6.2.2.1.m1.2.3.3.cmml">(</mo><mi id="S5.T6.6.2.2.1.m1.2.2" xref="S5.T6.6.2.2.1.m1.2.2.cmml">x</mi><mo id="S5.T6.6.2.2.1.m1.2.3.3.3.2.2" stretchy="false" xref="S5.T6.6.2.2.1.m1.2.3.3.cmml">)</mo></mrow></mrow></mrow><annotation-xml encoding="MathML-Content" id="S5.T6.6.2.2.1.m1.2b"><apply id="S5.T6.6.2.2.1.m1.2.3.cmml" xref="S5.T6.6.2.2.1.m1.2.3"><plus id="S5.T6.6.2.2.1.m1.2.3.1.cmml" xref="S5.T6.6.2.2.1.m1.2.3.1"></plus><apply id="S5.T6.6.2.2.1.m1.2.3.2.cmml" xref="S5.T6.6.2.2.1.m1.2.3.2"><times id="S5.T6.6.2.2.1.m1.2.3.2.1.cmml" xref="S5.T6.6.2.2.1.m1.2.3.2.1"></times><ci id="S5.T6.6.2.2.1.m1.2.3.2.2.cmml" xref="S5.T6.6.2.2.1.m1.2.3.2.2">ℎ</ci><ci id="S5.T6.6.2.2.1.m1.1.1.cmml" xref="S5.T6.6.2.2.1.m1.1.1">𝑥</ci></apply><apply id="S5.T6.6.2.2.1.m1.2.3.3.cmml" xref="S5.T6.6.2.2.1.m1.2.3.3"><times id="S5.T6.6.2.2.1.m1.2.3.3.1.cmml" xref="S5.T6.6.2.2.1.m1.2.3.3.1"></times><ci id="S5.T6.6.2.2.1.m1.2.3.3.2.cmml" xref="S5.T6.6.2.2.1.m1.2.3.3.2">𝑔</ci><ci id="S5.T6.6.2.2.1.m1.2.2.cmml" xref="S5.T6.6.2.2.1.m1.2.2">𝑥</ci></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T6.6.2.2.1.m1.2c">h(x)+g(x)</annotation><annotation encoding="application/x-llamapun" id="S5.T6.6.2.2.1.m1.2d">italic_h ( italic_x ) + italic_g ( italic_x )</annotation></semantics></math></th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T6.6.2.2.2" style="padding-top:1pt;padding-bottom:1pt;">0.923</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 Table 6 presents the results of an ablation study comparing the performance of the CoSTA* model with and without real-time feedback.  The study focuses on 35 high-risk tasks (defined as those where the initial heuristic alone might lead to suboptimal tool selection), measuring the accuracy achieved in each case.  This allows for a direct assessment of how the incorporation of real-time cost and quality feedback (represented by g(x)) impacts the overall accuracy of the multi-step image editing process.
> <details>
> <summary>read the caption</summary>
> Table 6: Comparison of accuracy with and without g⁢(x)𝑔𝑥g(x)italic_g ( italic_x ) on 35 high-risk tasks to analyze the impact of real-time feedback g⁢(x)𝑔𝑥g(x)italic_g ( italic_x ).
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S5.T7.9.1">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S5.T7.9.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_tt" id="S5.T7.9.1.1.1.1" style="padding-top:1pt;padding-bottom:1pt;">Metric</th>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T7.9.1.1.1.2" style="padding-top:1pt;padding-bottom:1pt;">Image Editing Tools</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T7.9.1.1.1.3" style="padding-top:1pt;padding-bottom:1pt;">CoSTA*</td>
</tr>
<tr class="ltx_tr" id="S5.T7.9.1.2.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_t" id="S5.T7.9.1.2.2.1" style="padding-top:1pt;padding-bottom:1pt;">Average Accuracy (30 Tasks)</th>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S5.T7.9.1.2.2.2" style="padding-top:1pt;padding-bottom:1pt;">0.48</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S5.T7.9.1.2.2.3" style="padding-top:1pt;padding-bottom:1pt;">0.93</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a comparison of the performance of CoSTA* against other image editing tools specifically on tasks involving text manipulation within images.  The results demonstrate that CoSTA* significantly outperforms the image-only editing tools by achieving a substantially higher average accuracy across 30 text-based image editing tasks. This highlights CoSTA*'s superior capabilities in handling complex tasks requiring both image and text processing. The superior performance stems from CoSTA*'s ability to seamlessly integrate multiple tools and dynamically adapt its approach based on real-time feedback and quality assessment.
> <details>
> <summary>read the caption</summary>
> Table 7: Comparison of image editing tools vs. CoSTA∗ for text-based tasks. CoSTA∗ outperforms image-only tools.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="A2.T8.1.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A2.T8.1.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="A2.T8.1.1.1.1.1" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="A2.T8.1.1.1.1.1.1">Task Type</span></th>
<th class="ltx_td ltx_align_justify ltx_align_top ltx_th ltx_th_column ltx_border_tt" id="A2.T8.1.1.1.1.2" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T8.1.1.1.1.2.1">
<span class="ltx_p" id="A2.T8.1.1.1.1.2.1.1" style="width:256.1pt;"><span class="ltx_text ltx_font_bold" id="A2.T8.1.1.1.1.2.1.1.1">Evaluation Criteria</span></span>
</span>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A2.T8.1.1.1.1.3" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="A2.T8.1.1.1.1.3.1">Assigned Score</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A2.T8.1.1.2.1">
<td class="ltx_td ltx_align_left ltx_border_t" id="A2.T8.1.1.2.1.1" rowspan="6" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A2.T8.1.1.2.1.1.1">Image-Only Tasks</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A2.T8.1.1.2.1.2" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T8.1.1.2.1.2.1">
<span class="ltx_p" id="A2.T8.1.1.2.1.2.1.1" style="width:256.1pt;">Minor artifacts, barely noticeable distortions</span>
</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T8.1.1.2.1.3" style="padding-top:1pt;padding-bottom:1pt;">0.9</td>
</tr>
<tr class="ltx_tr" id="A2.T8.1.1.3.2">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A2.T8.1.1.3.2.1" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T8.1.1.3.2.1.1">
<span class="ltx_p" id="A2.T8.1.1.3.2.1.1.1" style="width:256.1pt;">Some visible artifacts, but main content is unaffected</span>
</span>
</td>
<td class="ltx_td ltx_align_center" id="A2.T8.1.1.3.2.2" style="padding-top:1pt;padding-bottom:1pt;">0.8</td>
</tr>
<tr class="ltx_tr" id="A2.T8.1.1.4.3">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A2.T8.1.1.4.3.1" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T8.1.1.4.3.1.1">
<span class="ltx_p" id="A2.T8.1.1.4.3.1.1.1" style="width:256.1pt;">Noticeable distortions, but retains basic correctness</span>
</span>
</td>
<td class="ltx_td ltx_align_center" id="A2.T8.1.1.4.3.2" style="padding-top:1pt;padding-bottom:1pt;">0.7</td>
</tr>
<tr class="ltx_tr" id="A2.T8.1.1.5.4">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A2.T8.1.1.5.4.1" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T8.1.1.5.4.1.1">
<span class="ltx_p" id="A2.T8.1.1.5.4.1.1.1" style="width:256.1pt;">Significant artifacts or blending issues</span>
</span>
</td>
<td class="ltx_td ltx_align_center" id="A2.T8.1.1.5.4.2" style="padding-top:1pt;padding-bottom:1pt;">0.5</td>
</tr>
<tr class="ltx_tr" id="A2.T8.1.1.6.5">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A2.T8.1.1.6.5.1" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T8.1.1.6.5.1.1">
<span class="ltx_p" id="A2.T8.1.1.6.5.1.1.1" style="width:256.1pt;">Major distortions or loss of key content</span>
</span>
</td>
<td class="ltx_td ltx_align_center" id="A2.T8.1.1.6.5.2" style="padding-top:1pt;padding-bottom:1pt;">0.3</td>
</tr>
<tr class="ltx_tr" id="A2.T8.1.1.7.6">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A2.T8.1.1.7.6.1" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T8.1.1.7.6.1.1">
<span class="ltx_p" id="A2.T8.1.1.7.6.1.1.1" style="width:256.1pt;">Output is almost unusable, but some attempt is visible</span>
</span>
</td>
<td class="ltx_td ltx_align_center" id="A2.T8.1.1.7.6.2" style="padding-top:1pt;padding-bottom:1pt;">0.1</td>
</tr>
<tr class="ltx_tr" id="A2.T8.1.1.8.7">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_t" id="A2.T8.1.1.8.7.1" rowspan="6" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="A2.T8.1.1.8.7.1.1">Text+Image Tasks</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A2.T8.1.1.8.7.2" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T8.1.1.8.7.2.1">
<span class="ltx_p" id="A2.T8.1.1.8.7.2.1.1" style="width:256.1pt;">Text is correctly placed but slightly misaligned</span>
</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T8.1.1.8.7.3" style="padding-top:1pt;padding-bottom:1pt;">0.9</td>
</tr>
<tr class="ltx_tr" id="A2.T8.1.1.9.8">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A2.T8.1.1.9.8.1" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T8.1.1.9.8.1.1">
<span class="ltx_p" id="A2.T8.1.1.9.8.1.1.1" style="width:256.1pt;">Font or color inconsistencies, but legible</span>
</span>
</td>
<td class="ltx_td ltx_align_center" id="A2.T8.1.1.9.8.2" style="padding-top:1pt;padding-bottom:1pt;">0.8</td>
</tr>
<tr class="ltx_tr" id="A2.T8.1.1.10.9">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A2.T8.1.1.10.9.1" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T8.1.1.10.9.1.1">
<span class="ltx_p" id="A2.T8.1.1.10.9.1.1.1" style="width:256.1pt;">Noticeable alignment or formatting issues</span>
</span>
</td>
<td class="ltx_td ltx_align_center" id="A2.T8.1.1.10.9.2" style="padding-top:1pt;padding-bottom:1pt;">0.7</td>
</tr>
<tr class="ltx_tr" id="A2.T8.1.1.11.10">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A2.T8.1.1.11.10.1" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T8.1.1.11.10.1.1">
<span class="ltx_p" id="A2.T8.1.1.11.10.1.1.1" style="width:256.1pt;">Some missing or incorrect words but mostly readable</span>
</span>
</td>
<td class="ltx_td ltx_align_center" id="A2.T8.1.1.11.10.2" style="padding-top:1pt;padding-bottom:1pt;">0.5</td>
</tr>
<tr class="ltx_tr" id="A2.T8.1.1.12.11">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A2.T8.1.1.12.11.1" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T8.1.1.12.11.1.1">
<span class="ltx_p" id="A2.T8.1.1.12.11.1.1.1" style="width:256.1pt;">Major formatting errors or loss of intended meaning</span>
</span>
</td>
<td class="ltx_td ltx_align_center" id="A2.T8.1.1.12.11.2" style="padding-top:1pt;padding-bottom:1pt;">0.3</td>
</tr>
<tr class="ltx_tr" id="A2.T8.1.1.13.12">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb" id="A2.T8.1.1.13.12.1" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T8.1.1.13.12.1.1">
<span class="ltx_p" id="A2.T8.1.1.13.12.1.1.1" style="width:256.1pt;">Text placement is incorrect, missing, or unreadable</span>
</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T8.1.1.13.12.2" style="padding-top:1pt;padding-bottom:1pt;">0.1</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table outlines the criteria used for assigning partial correctness scores during human evaluation of image editing tasks.  It specifies the score (on a scale from 0.1 to 0.9) assigned to different levels of correctness based on the presence of artifacts, distortions, and other issues in the generated image. Scores are provided separately for image-only tasks and those involving both text and images, reflecting the different criteria applied in each case.  The table clarifies what constitutes minor artifacts versus major distortions or loss of key information, enabling consistent evaluations across various tasks and levels of complexity.
> <details>
> <summary>read the caption</summary>
> Table 8: Predefined Rules for Assigning Partial Correctness Scores in Human Evaluation
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="A4.T9.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A4.T9.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="A4.T9.1.1.1.1" style="padding:0.9pt 4.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T9.1.1.1.1.1" style="font-size:90%;">Subtask</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A4.T9.1.1.1.2" style="padding:0.9pt 4.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T9.1.1.1.2.1" style="font-size:90%;">Avg Similarity Score</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A4.T9.1.2.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A4.T9.1.2.1.1" style="padding:0.9pt 4.0pt;"><span class="ltx_text" id="A4.T9.1.2.1.1.1" style="font-size:90%;">Object Replacement</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T9.1.2.1.2" style="padding:0.9pt 4.0pt;"><span class="ltx_text" id="A4.T9.1.2.1.2.1" style="font-size:90%;">0.98</span></td>
</tr>
<tr class="ltx_tr" id="A4.T9.1.3.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A4.T9.1.3.2.1" style="padding:0.9pt 4.0pt;"><span class="ltx_text" id="A4.T9.1.3.2.1.1" style="font-size:90%;">Object Recoloration</span></th>
<td class="ltx_td ltx_align_center" id="A4.T9.1.3.2.2" style="padding:0.9pt 4.0pt;"><span class="ltx_text" id="A4.T9.1.3.2.2.1" style="font-size:90%;">0.99</span></td>
</tr>
<tr class="ltx_tr" id="A4.T9.1.4.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A4.T9.1.4.3.1" style="padding:0.9pt 4.0pt;"><span class="ltx_text" id="A4.T9.1.4.3.1.1" style="font-size:90%;">Object Addition</span></th>
<td class="ltx_td ltx_align_center" id="A4.T9.1.4.3.2" style="padding:0.9pt 4.0pt;"><span class="ltx_text" id="A4.T9.1.4.3.2.1" style="font-size:90%;">0.97</span></td>
</tr>
<tr class="ltx_tr" id="A4.T9.1.5.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A4.T9.1.5.4.1" style="padding:0.9pt 4.0pt;"><span class="ltx_text" id="A4.T9.1.5.4.1.1" style="font-size:90%;">Object Removal</span></th>
<td class="ltx_td ltx_align_center" id="A4.T9.1.5.4.2" style="padding:0.9pt 4.0pt;"><span class="ltx_text" id="A4.T9.1.5.4.2.1" style="font-size:90%;">0.97</span></td>
</tr>
<tr class="ltx_tr" id="A4.T9.1.6.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A4.T9.1.6.5.1" style="padding:0.9pt 4.0pt;"><span class="ltx_text" id="A4.T9.1.6.5.1.1" style="font-size:90%;">Image Captioning</span></th>
<td class="ltx_td ltx_align_center" id="A4.T9.1.6.5.2" style="padding:0.9pt 4.0pt;"><span class="ltx_text" id="A4.T9.1.6.5.2.1" style="font-size:90%;">0.92</span></td>
</tr>
<tr class="ltx_tr" id="A4.T9.1.7.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A4.T9.1.7.6.1" style="padding:0.9pt 4.0pt;"><span class="ltx_text" id="A4.T9.1.7.6.1.1" style="font-size:90%;">Outpainting</span></th>
<td class="ltx_td ltx_align_center" id="A4.T9.1.7.6.2" style="padding:0.9pt 4.0pt;"><span class="ltx_text" id="A4.T9.1.7.6.2.1" style="font-size:90%;">0.99</span></td>
</tr>
<tr class="ltx_tr" id="A4.T9.1.8.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A4.T9.1.8.7.1" style="padding:0.9pt 4.0pt;"><span class="ltx_text" id="A4.T9.1.8.7.1.1" style="font-size:90%;">Changing Scenery</span></th>
<td class="ltx_td ltx_align_center" id="A4.T9.1.8.7.2" style="padding:0.9pt 4.0pt;"><span class="ltx_text" id="A4.T9.1.8.7.2.1" style="font-size:90%;">0.96</span></td>
</tr>
<tr class="ltx_tr" id="A4.T9.1.9.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A4.T9.1.9.8.1" style="padding:0.9pt 4.0pt;"><span class="ltx_text" id="A4.T9.1.9.8.1.1" style="font-size:90%;">Text Removal</span></th>
<td class="ltx_td ltx_align_center" id="A4.T9.1.9.8.2" style="padding:0.9pt 4.0pt;"><span class="ltx_text" id="A4.T9.1.9.8.2.1" style="font-size:90%;">0.98</span></td>
</tr>
<tr class="ltx_tr" id="A4.T9.1.10.9">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="A4.T9.1.10.9.1" style="padding:0.9pt 4.0pt;"><span class="ltx_text" id="A4.T9.1.10.9.1.1" style="font-size:90%;">QA on Text</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T9.1.10.9.2" style="padding:0.9pt 4.0pt;"><span class="ltx_text" id="A4.T9.1.10.9.2.1" style="font-size:90%;">0.96</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the average CLIP (Contrastive Language–Image Pre-training) similarity scores achieved for the outputs generated by CoSTA* on subtasks known to exhibit variability in their results (those with potential randomness in the output).  The scores indicate the consistency of CoSTA*'s performance across multiple runs for each subtask, demonstrating its robustness.  Lower scores suggest higher variability in the outputs.  The subtasks assessed include object replacement, recoloration, addition, removal, image captioning, outpainting, scenery changes, and text operations.
> <details>
> <summary>read the caption</summary>
> Table 9: Average CLIP Similarity Scores for Outputs of Randomness-Prone Subtasks
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="A5.T10.1.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A5.T10.1.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="A5.T10.1.1.1.1.1" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="A5.T10.1.1.1.1.1.1">Model</span></th>
<th class="ltx_td ltx_align_justify ltx_align_top ltx_th ltx_th_column ltx_border_tt" id="A5.T10.1.1.1.1.2" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T10.1.1.1.1.2.1">
<span class="ltx_p" id="A5.T10.1.1.1.1.2.1.1" style="width:142.3pt;"><span class="ltx_text ltx_font_bold" id="A5.T10.1.1.1.1.2.1.1.1">Tasks Supported</span></span>
</span>
</th>
<th class="ltx_td ltx_align_justify ltx_align_top ltx_th ltx_th_column ltx_border_tt" id="A5.T10.1.1.1.1.3" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T10.1.1.1.1.3.1">
<span class="ltx_p" id="A5.T10.1.1.1.1.3.1.1" style="width:142.3pt;"><span class="ltx_text ltx_font_bold" id="A5.T10.1.1.1.1.3.1.1.1">Inputs</span></span>
</span>
</th>
<th class="ltx_td ltx_align_justify ltx_align_top ltx_th ltx_th_column ltx_border_tt" id="A5.T10.1.1.1.1.4" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T10.1.1.1.1.4.1">
<span class="ltx_p" id="A5.T10.1.1.1.1.4.1.1" style="width:142.3pt;"><span class="ltx_text ltx_font_bold" id="A5.T10.1.1.1.1.4.1.1.1">Outputs</span></span>
</span>
</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A5.T10.1.1.2.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A5.T10.1.1.2.1.1" style="padding-top:1pt;padding-bottom:1pt;">Grounding DINO<cite class="ltx_cite ltx_citemacro_citep">(Liu et al., <a class="ltx_ref" href="https://arxiv.org/html/2503.10613v1#bib.bib22" title="">2024</a>)</cite>
</th>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A5.T10.1.1.2.1.2" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T10.1.1.2.1.2.1">
<span class="ltx_p" id="A5.T10.1.1.2.1.2.1.1" style="width:142.3pt;">Object Detection</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A5.T10.1.1.2.1.3" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T10.1.1.2.1.3.1">
<span class="ltx_p" id="A5.T10.1.1.2.1.3.1.1" style="width:142.3pt;">Input Image</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A5.T10.1.1.2.1.4" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T10.1.1.2.1.4.1">
<span class="ltx_p" id="A5.T10.1.1.2.1.4.1.1" style="width:142.3pt;">Bounding Boxes</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T10.1.1.3.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A5.T10.1.1.3.2.1" style="padding-top:1pt;padding-bottom:1pt;">YOLOv7<cite class="ltx_cite ltx_citemacro_citep">(Wang et al., <a class="ltx_ref" href="https://arxiv.org/html/2503.10613v1#bib.bib32" title="">2022</a>)</cite>
</th>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A5.T10.1.1.3.2.2" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T10.1.1.3.2.2.1">
<span class="ltx_p" id="A5.T10.1.1.3.2.2.1.1" style="width:142.3pt;">Object Detection</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A5.T10.1.1.3.2.3" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T10.1.1.3.2.3.1">
<span class="ltx_p" id="A5.T10.1.1.3.2.3.1.1" style="width:142.3pt;">Input Image</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A5.T10.1.1.3.2.4" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T10.1.1.3.2.4.1">
<span class="ltx_p" id="A5.T10.1.1.3.2.4.1.1" style="width:142.3pt;">Bounding Boxes</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T10.1.1.4.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A5.T10.1.1.4.3.1" style="padding-top:1pt;padding-bottom:1pt;">SAM<cite class="ltx_cite ltx_citemacro_citep">(Kirillov et al., <a class="ltx_ref" href="https://arxiv.org/html/2503.10613v1#bib.bib16" title="">2023b</a>)</cite>
</th>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A5.T10.1.1.4.3.2" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T10.1.1.4.3.2.1">
<span class="ltx_p" id="A5.T10.1.1.4.3.2.1.1" style="width:142.3pt;">Object Segmentation</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A5.T10.1.1.4.3.3" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T10.1.1.4.3.3.1">
<span class="ltx_p" id="A5.T10.1.1.4.3.3.1.1" style="width:142.3pt;">Bounding Boxes</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A5.T10.1.1.4.3.4" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T10.1.1.4.3.4.1">
<span class="ltx_p" id="A5.T10.1.1.4.3.4.1.1" style="width:142.3pt;">Segmentation Masks</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T10.1.1.5.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A5.T10.1.1.5.4.1" style="padding-top:1pt;padding-bottom:1pt;">DALL-E<cite class="ltx_cite ltx_citemacro_citep">(Ramesh et al., <a class="ltx_ref" href="https://arxiv.org/html/2503.10613v1#bib.bib25" title="">2021</a>)</cite>
</th>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A5.T10.1.1.5.4.2" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T10.1.1.5.4.2.1">
<span class="ltx_p" id="A5.T10.1.1.5.4.2.1.1" style="width:142.3pt;">Object Replacement</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A5.T10.1.1.5.4.3" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T10.1.1.5.4.3.1">
<span class="ltx_p" id="A5.T10.1.1.5.4.3.1.1" style="width:142.3pt;">Segmentation Masks</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A5.T10.1.1.5.4.4" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T10.1.1.5.4.4.1">
<span class="ltx_p" id="A5.T10.1.1.5.4.4.1.1" style="width:142.3pt;">Edited Image</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T10.1.1.6.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A5.T10.1.1.6.5.1" style="padding-top:1pt;padding-bottom:1pt;">DALL-E<cite class="ltx_cite ltx_citemacro_citep">(Ramesh et al., <a class="ltx_ref" href="https://arxiv.org/html/2503.10613v1#bib.bib25" title="">2021</a>)</cite>
</th>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A5.T10.1.1.6.5.2" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T10.1.1.6.5.2.1">
<span class="ltx_p" id="A5.T10.1.1.6.5.2.1.1" style="width:142.3pt;">Text Removal</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A5.T10.1.1.6.5.3" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T10.1.1.6.5.3.1">
<span class="ltx_p" id="A5.T10.1.1.6.5.3.1.1" style="width:142.3pt;">Text Region Bounding Box</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A5.T10.1.1.6.5.4" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T10.1.1.6.5.4.1">
<span class="ltx_p" id="A5.T10.1.1.6.5.4.1.1" style="width:142.3pt;">Image with Removed Text</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T10.1.1.7.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A5.T10.1.1.7.6.1" style="padding-top:1pt;padding-bottom:1pt;">Stable Diffusion Erase<cite class="ltx_cite ltx_citemacro_citep">(Rombach et al., <a class="ltx_ref" href="https://arxiv.org/html/2503.10613v1#bib.bib29" title="">2022b</a>)</cite>
</th>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A5.T10.1.1.7.6.2" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T10.1.1.7.6.2.1">
<span class="ltx_p" id="A5.T10.1.1.7.6.2.1.1" style="width:142.3pt;">Text Removal</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A5.T10.1.1.7.6.3" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T10.1.1.7.6.3.1">
<span class="ltx_p" id="A5.T10.1.1.7.6.3.1.1" style="width:142.3pt;">Text Region Bounding Box</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A5.T10.1.1.7.6.4" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T10.1.1.7.6.4.1">
<span class="ltx_p" id="A5.T10.1.1.7.6.4.1.1" style="width:142.3pt;">Image with Removed Text</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T10.1.1.8.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A5.T10.1.1.8.7.1" style="padding-top:1pt;padding-bottom:1pt;">Stable Diffusion Inpaint<cite class="ltx_cite ltx_citemacro_citep">(Rombach et al., <a class="ltx_ref" href="https://arxiv.org/html/2503.10613v1#bib.bib29" title="">2022b</a>)</cite>
</th>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A5.T10.1.1.8.7.2" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T10.1.1.8.7.2.1">
<span class="ltx_p" id="A5.T10.1.1.8.7.2.1.1" style="width:142.3pt;">Object Replacement, Object Recoloration, Object Removal</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A5.T10.1.1.8.7.3" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T10.1.1.8.7.3.1">
<span class="ltx_p" id="A5.T10.1.1.8.7.3.1.1" style="width:142.3pt;">Segmentation Masks</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A5.T10.1.1.8.7.4" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T10.1.1.8.7.4.1">
<span class="ltx_p" id="A5.T10.1.1.8.7.4.1.1" style="width:142.3pt;">Edited Image</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T10.1.1.9.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A5.T10.1.1.9.8.1" style="padding-top:1pt;padding-bottom:1pt;">Stable Diffusion Erase<cite class="ltx_cite ltx_citemacro_citep">(Rombach et al., <a class="ltx_ref" href="https://arxiv.org/html/2503.10613v1#bib.bib29" title="">2022b</a>)</cite>
</th>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A5.T10.1.1.9.8.2" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T10.1.1.9.8.2.1">
<span class="ltx_p" id="A5.T10.1.1.9.8.2.1.1" style="width:142.3pt;">Object Removal</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A5.T10.1.1.9.8.3" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T10.1.1.9.8.3.1">
<span class="ltx_p" id="A5.T10.1.1.9.8.3.1.1" style="width:142.3pt;">Segmentation Masks</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A5.T10.1.1.9.8.4" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T10.1.1.9.8.4.1">
<span class="ltx_p" id="A5.T10.1.1.9.8.4.1.1" style="width:142.3pt;">Edited Image</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T10.1.1.10.9">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A5.T10.1.1.10.9.1" style="padding-top:1pt;padding-bottom:1pt;">Stable Diffusion 3<cite class="ltx_cite ltx_citemacro_citep">(Rombach et al., <a class="ltx_ref" href="https://arxiv.org/html/2503.10613v1#bib.bib29" title="">2022b</a>)</cite>
</th>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A5.T10.1.1.10.9.2" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T10.1.1.10.9.2.1">
<span class="ltx_p" id="A5.T10.1.1.10.9.2.1.1" style="width:142.3pt;">Changing Scenery</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A5.T10.1.1.10.9.3" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T10.1.1.10.9.3.1">
<span class="ltx_p" id="A5.T10.1.1.10.9.3.1.1" style="width:142.3pt;">Input Image</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A5.T10.1.1.10.9.4" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T10.1.1.10.9.4.1">
<span class="ltx_p" id="A5.T10.1.1.10.9.4.1.1" style="width:142.3pt;">Edited Image</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T10.1.1.11.10">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A5.T10.1.1.11.10.1" style="padding-top:1pt;padding-bottom:1pt;">Stable Diffusion Outpaint<cite class="ltx_cite ltx_citemacro_citep">(Rombach et al., <a class="ltx_ref" href="https://arxiv.org/html/2503.10613v1#bib.bib29" title="">2022b</a>)</cite>
</th>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A5.T10.1.1.11.10.2" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T10.1.1.11.10.2.1">
<span class="ltx_p" id="A5.T10.1.1.11.10.2.1.1" style="width:142.3pt;">Outpainting</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A5.T10.1.1.11.10.3" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T10.1.1.11.10.3.1">
<span class="ltx_p" id="A5.T10.1.1.11.10.3.1.1" style="width:142.3pt;">Input Image</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A5.T10.1.1.11.10.4" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T10.1.1.11.10.4.1">
<span class="ltx_p" id="A5.T10.1.1.11.10.4.1.1" style="width:142.3pt;">Expanded Image</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T10.1.1.12.11">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A5.T10.1.1.12.11.1" style="padding-top:1pt;padding-bottom:1pt;">Stable Diffusion Search &amp; Recolor<cite class="ltx_cite ltx_citemacro_citep">(Rombach et al., <a class="ltx_ref" href="https://arxiv.org/html/2503.10613v1#bib.bib29" title="">2022b</a>)</cite>
</th>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A5.T10.1.1.12.11.2" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T10.1.1.12.11.2.1">
<span class="ltx_p" id="A5.T10.1.1.12.11.2.1.1" style="width:142.3pt;">Object Recoloration</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A5.T10.1.1.12.11.3" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T10.1.1.12.11.3.1">
<span class="ltx_p" id="A5.T10.1.1.12.11.3.1.1" style="width:142.3pt;">Input Image</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A5.T10.1.1.12.11.4" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T10.1.1.12.11.4.1">
<span class="ltx_p" id="A5.T10.1.1.12.11.4.1.1" style="width:142.3pt;">Recolored Image</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T10.1.1.13.12">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A5.T10.1.1.13.12.1" style="padding-top:1pt;padding-bottom:1pt;">Stable Diffusion Remove Background<cite class="ltx_cite ltx_citemacro_citep">(Rombach et al., <a class="ltx_ref" href="https://arxiv.org/html/2503.10613v1#bib.bib29" title="">2022b</a>)</cite>
</th>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A5.T10.1.1.13.12.2" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T10.1.1.13.12.2.1">
<span class="ltx_p" id="A5.T10.1.1.13.12.2.1.1" style="width:142.3pt;">Background Removal</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A5.T10.1.1.13.12.3" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T10.1.1.13.12.3.1">
<span class="ltx_p" id="A5.T10.1.1.13.12.3.1.1" style="width:142.3pt;">Input Image</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A5.T10.1.1.13.12.4" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T10.1.1.13.12.4.1">
<span class="ltx_p" id="A5.T10.1.1.13.12.4.1.1" style="width:142.3pt;">Edited Image</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T10.1.1.14.13">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A5.T10.1.1.14.13.1" style="padding-top:1pt;padding-bottom:1pt;">Text Removal (Painting)</th>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A5.T10.1.1.14.13.2" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T10.1.1.14.13.2.1">
<span class="ltx_p" id="A5.T10.1.1.14.13.2.1.1" style="width:142.3pt;">Text Removal</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A5.T10.1.1.14.13.3" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T10.1.1.14.13.3.1">
<span class="ltx_p" id="A5.T10.1.1.14.13.3.1.1" style="width:142.3pt;">Text Region Bounding Box</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A5.T10.1.1.14.13.4" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T10.1.1.14.13.4.1">
<span class="ltx_p" id="A5.T10.1.1.14.13.4.1.1" style="width:142.3pt;">Image with Removed Text</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T10.1.1.15.14">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A5.T10.1.1.15.14.1" style="padding-top:1pt;padding-bottom:1pt;">DeblurGAN<cite class="ltx_cite ltx_citemacro_citep">(Kupyn et al., <a class="ltx_ref" href="https://arxiv.org/html/2503.10613v1#bib.bib18" title="">2018</a>)</cite>
</th>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A5.T10.1.1.15.14.2" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T10.1.1.15.14.2.1">
<span class="ltx_p" id="A5.T10.1.1.15.14.2.1.1" style="width:142.3pt;">Image Deblurring</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A5.T10.1.1.15.14.3" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T10.1.1.15.14.3.1">
<span class="ltx_p" id="A5.T10.1.1.15.14.3.1.1" style="width:142.3pt;">Input Image</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A5.T10.1.1.15.14.4" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T10.1.1.15.14.4.1">
<span class="ltx_p" id="A5.T10.1.1.15.14.4.1.1" style="width:142.3pt;">Deblurred Image</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T10.1.1.16.15">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A5.T10.1.1.16.15.1" style="padding-top:1pt;padding-bottom:1pt;">LLM (GPT-4o)</th>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A5.T10.1.1.16.15.2" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T10.1.1.16.15.2.1">
<span class="ltx_p" id="A5.T10.1.1.16.15.2.1.1" style="width:142.3pt;">Image Captioning</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A5.T10.1.1.16.15.3" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T10.1.1.16.15.3.1">
<span class="ltx_p" id="A5.T10.1.1.16.15.3.1.1" style="width:142.3pt;">Input Image</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A5.T10.1.1.16.15.4" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T10.1.1.16.15.4.1">
<span class="ltx_p" id="A5.T10.1.1.16.15.4.1.1" style="width:142.3pt;">Image Caption</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T10.1.1.17.16">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A5.T10.1.1.17.16.1" style="padding-top:1pt;padding-bottom:1pt;">LLM (GPT-4o)</th>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A5.T10.1.1.17.16.2" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T10.1.1.17.16.2.1">
<span class="ltx_p" id="A5.T10.1.1.17.16.2.1.1" style="width:142.3pt;">Question Answering based on text, Sentiment Analysis</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A5.T10.1.1.17.16.3" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T10.1.1.17.16.3.1">
<span class="ltx_p" id="A5.T10.1.1.17.16.3.1.1" style="width:142.3pt;">Extracted Text, Font Style Label</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A5.T10.1.1.17.16.4" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T10.1.1.17.16.4.1">
<span class="ltx_p" id="A5.T10.1.1.17.16.4.1.1" style="width:142.3pt;">New Text, Text Region Bounding Box, Text Sentiment, Answers to Questions</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T10.1.1.18.17">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A5.T10.1.1.18.17.1" style="padding-top:1pt;padding-bottom:1pt;">Google Cloud Vision<cite class="ltx_cite ltx_citemacro_citep">(Google Cloud, <a class="ltx_ref" href="https://arxiv.org/html/2503.10613v1#bib.bib9" title="">2024</a>)</cite>
</th>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A5.T10.1.1.18.17.2" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T10.1.1.18.17.2.1">
<span class="ltx_p" id="A5.T10.1.1.18.17.2.1.1" style="width:142.3pt;">Landmark Detection</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A5.T10.1.1.18.17.3" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T10.1.1.18.17.3.1">
<span class="ltx_p" id="A5.T10.1.1.18.17.3.1.1" style="width:142.3pt;">Input Image</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A5.T10.1.1.18.17.4" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T10.1.1.18.17.4.1">
<span class="ltx_p" id="A5.T10.1.1.18.17.4.1.1" style="width:142.3pt;">Landmark Label</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T10.1.1.19.18">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A5.T10.1.1.19.18.1" style="padding-top:1pt;padding-bottom:1pt;">CRAFT<cite class="ltx_cite ltx_citemacro_citep">(Baek et al., <a class="ltx_ref" href="https://arxiv.org/html/2503.10613v1#bib.bib2" title="">2019b</a>)</cite>
</th>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A5.T10.1.1.19.18.2" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T10.1.1.19.18.2.1">
<span class="ltx_p" id="A5.T10.1.1.19.18.2.1.1" style="width:142.3pt;">Text Detection</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A5.T10.1.1.19.18.3" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T10.1.1.19.18.3.1">
<span class="ltx_p" id="A5.T10.1.1.19.18.3.1.1" style="width:142.3pt;">Input Image</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A5.T10.1.1.19.18.4" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T10.1.1.19.18.4.1">
<span class="ltx_p" id="A5.T10.1.1.19.18.4.1.1" style="width:142.3pt;">Text Bounding Box</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T10.1.1.20.19">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A5.T10.1.1.20.19.1" style="padding-top:1pt;padding-bottom:1pt;">CLIP<cite class="ltx_cite ltx_citemacro_citep">(Radford et al., <a class="ltx_ref" href="https://arxiv.org/html/2503.10613v1#bib.bib24" title="">2021</a>)</cite>
</th>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A5.T10.1.1.20.19.2" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T10.1.1.20.19.2.1">
<span class="ltx_p" id="A5.T10.1.1.20.19.2.1.1" style="width:142.3pt;">Caption Consistency Check</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A5.T10.1.1.20.19.3" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T10.1.1.20.19.3.1">
<span class="ltx_p" id="A5.T10.1.1.20.19.3.1.1" style="width:142.3pt;">Extracted Text</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A5.T10.1.1.20.19.4" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T10.1.1.20.19.4.1">
<span class="ltx_p" id="A5.T10.1.1.20.19.4.1.1" style="width:142.3pt;">Consistency Score</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T10.1.1.21.20">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A5.T10.1.1.21.20.1" style="padding-top:1pt;padding-bottom:1pt;">DeepFont<cite class="ltx_cite ltx_citemacro_citep">(Wang et al., <a class="ltx_ref" href="https://arxiv.org/html/2503.10613v1#bib.bib34" title="">2015</a>)</cite>
</th>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A5.T10.1.1.21.20.2" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T10.1.1.21.20.2.1">
<span class="ltx_p" id="A5.T10.1.1.21.20.2.1.1" style="width:142.3pt;">Text Style Detection</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A5.T10.1.1.21.20.3" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T10.1.1.21.20.3.1">
<span class="ltx_p" id="A5.T10.1.1.21.20.3.1.1" style="width:142.3pt;">Text Bounding Box</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A5.T10.1.1.21.20.4" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T10.1.1.21.20.4.1">
<span class="ltx_p" id="A5.T10.1.1.21.20.4.1.1" style="width:142.3pt;">Font Style Label</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T10.1.1.22.21">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A5.T10.1.1.22.21.1" style="padding-top:1pt;padding-bottom:1pt;">EasyOCR<cite class="ltx_cite ltx_citemacro_citep">(Kittinaradorn et al., <a class="ltx_ref" href="https://arxiv.org/html/2503.10613v1#bib.bib17" title="">2022</a>)</cite>
</th>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A5.T10.1.1.22.21.2" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T10.1.1.22.21.2.1">
<span class="ltx_p" id="A5.T10.1.1.22.21.2.1.1" style="width:142.3pt;">Text Extraction</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A5.T10.1.1.22.21.3" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T10.1.1.22.21.3.1">
<span class="ltx_p" id="A5.T10.1.1.22.21.3.1.1" style="width:142.3pt;">Text Bounding Box</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A5.T10.1.1.22.21.4" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T10.1.1.22.21.4.1">
<span class="ltx_p" id="A5.T10.1.1.22.21.4.1.1" style="width:142.3pt;">Extracted Text</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T10.1.1.23.22">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A5.T10.1.1.23.22.1" style="padding-top:1pt;padding-bottom:1pt;">MagicBrush<cite class="ltx_cite ltx_citemacro_citep">(Zhang et al., <a class="ltx_ref" href="https://arxiv.org/html/2503.10613v1#bib.bib42" title="">2024a</a>)</cite>
</th>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A5.T10.1.1.23.22.2" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T10.1.1.23.22.2.1">
<span class="ltx_p" id="A5.T10.1.1.23.22.2.1.1" style="width:142.3pt;">Object Addition</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A5.T10.1.1.23.22.3" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T10.1.1.23.22.3.1">
<span class="ltx_p" id="A5.T10.1.1.23.22.3.1.1" style="width:142.3pt;">Input Image</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A5.T10.1.1.23.22.4" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T10.1.1.23.22.4.1">
<span class="ltx_p" id="A5.T10.1.1.23.22.4.1.1" style="width:142.3pt;">Edited Image with Object</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T10.1.1.24.23">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A5.T10.1.1.24.23.1" style="padding-top:1pt;padding-bottom:1pt;">pix2pix<cite class="ltx_cite ltx_citemacro_citep">(Isola et al., <a class="ltx_ref" href="https://arxiv.org/html/2503.10613v1#bib.bib14" title="">2018</a>)</cite>
</th>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A5.T10.1.1.24.23.2" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T10.1.1.24.23.2.1">
<span class="ltx_p" id="A5.T10.1.1.24.23.2.1.1" style="width:142.3pt;">Changing Scenery (Day2Night)</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A5.T10.1.1.24.23.3" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T10.1.1.24.23.3.1">
<span class="ltx_p" id="A5.T10.1.1.24.23.3.1.1" style="width:142.3pt;">Input Image</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A5.T10.1.1.24.23.4" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T10.1.1.24.23.4.1">
<span class="ltx_p" id="A5.T10.1.1.24.23.4.1.1" style="width:142.3pt;">Edited Image</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T10.1.1.25.24">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A5.T10.1.1.25.24.1" style="padding-top:1pt;padding-bottom:1pt;">Real-ESRGAN<cite class="ltx_cite ltx_citemacro_citep">(Wang et al., <a class="ltx_ref" href="https://arxiv.org/html/2503.10613v1#bib.bib33" title="">2021</a>)</cite>
</th>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A5.T10.1.1.25.24.2" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T10.1.1.25.24.2.1">
<span class="ltx_p" id="A5.T10.1.1.25.24.2.1.1" style="width:142.3pt;">Image Upscaling</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A5.T10.1.1.25.24.3" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T10.1.1.25.24.3.1">
<span class="ltx_p" id="A5.T10.1.1.25.24.3.1.1" style="width:142.3pt;">Input Image</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A5.T10.1.1.25.24.4" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T10.1.1.25.24.4.1">
<span class="ltx_p" id="A5.T10.1.1.25.24.4.1.1" style="width:142.3pt;">High-Resolution Image</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T10.1.1.26.25">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A5.T10.1.1.26.25.1" style="padding-top:1pt;padding-bottom:1pt;">Text Writing using Pillow (For Addition)</th>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A5.T10.1.1.26.25.2" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T10.1.1.26.25.2.1">
<span class="ltx_p" id="A5.T10.1.1.26.25.2.1.1" style="width:142.3pt;">Text Addition</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A5.T10.1.1.26.25.3" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T10.1.1.26.25.3.1">
<span class="ltx_p" id="A5.T10.1.1.26.25.3.1.1" style="width:142.3pt;">New Text, Text Region Bounding Box</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A5.T10.1.1.26.25.4" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T10.1.1.26.25.4.1">
<span class="ltx_p" id="A5.T10.1.1.26.25.4.1.1" style="width:142.3pt;">Image with Text Added</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T10.1.1.27.26">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A5.T10.1.1.27.26.1" style="padding-top:1pt;padding-bottom:1pt;">Text Writing using Pillow</th>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A5.T10.1.1.27.26.2" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T10.1.1.27.26.2.1">
<span class="ltx_p" id="A5.T10.1.1.27.26.2.1.1" style="width:142.3pt;">Text Replacement, Keyword Highlighting</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A5.T10.1.1.27.26.3" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T10.1.1.27.26.3.1">
<span class="ltx_p" id="A5.T10.1.1.27.26.3.1.1" style="width:142.3pt;">Image with Removed Text</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A5.T10.1.1.27.26.4" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T10.1.1.27.26.4.1">
<span class="ltx_p" id="A5.T10.1.1.27.26.4.1.1" style="width:142.3pt;">Image with Text Added</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T10.1.1.28.27">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A5.T10.1.1.28.27.1" style="padding-top:1pt;padding-bottom:1pt;">Text Redaction (Code-based)</th>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A5.T10.1.1.28.27.2" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T10.1.1.28.27.2.1">
<span class="ltx_p" id="A5.T10.1.1.28.27.2.1.1" style="width:142.3pt;">Text Redaction</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A5.T10.1.1.28.27.3" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T10.1.1.28.27.3.1">
<span class="ltx_p" id="A5.T10.1.1.28.27.3.1.1" style="width:142.3pt;">Text Region Bounding Box</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A5.T10.1.1.28.27.4" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T10.1.1.28.27.4.1">
<span class="ltx_p" id="A5.T10.1.1.28.27.4.1.1" style="width:142.3pt;">Image with Redacted Text</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T10.1.1.29.28">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="A5.T10.1.1.29.28.1" style="padding-top:1pt;padding-bottom:1pt;">MiDaS</th>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb" id="A5.T10.1.1.29.28.2" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T10.1.1.29.28.2.1">
<span class="ltx_p" id="A5.T10.1.1.29.28.2.1.1" style="width:142.3pt;">Depth Estimation</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb" id="A5.T10.1.1.29.28.3" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T10.1.1.29.28.3.1">
<span class="ltx_p" id="A5.T10.1.1.29.28.3.1.1" style="width:142.3pt;">Input Image</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb" id="A5.T10.1.1.29.28.4" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T10.1.1.29.28.4.1">
<span class="ltx_p" id="A5.T10.1.1.29.28.4.1.1" style="width:142.3pt;">Image with Depth of Objects</span>
</span>
</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table details the models used in the CoSTA* system. For each model, it lists the subtasks it can perform, any dependencies on outputs from other models as inputs, and the outputs it produces.  This information is crucial for understanding how the CoSTA* system orchestrates different models to accomplish complex multi-turn image editing tasks. The table facilitates the automatic construction of the Tool Dependency Graph (TDG) which is used in the algorithm. 
> <details>
> <summary>read the caption</summary>
> Table 10: Model Description Table (MDT). Each model is listed with its supported subtasks, input dependencies, and outputs.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="A7.T11.3.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A7.T11.3.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="A7.T11.3.1.1.1.1" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="A7.T11.3.1.1.1.1.1">Model Name</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="A7.T11.3.1.1.1.2" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="A7.T11.3.1.1.1.2.1">Subtask</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A7.T11.3.1.1.1.3" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="A7.T11.3.1.1.1.3.1">Accuracy</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="A7.T11.3.1.1.1.4" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="A7.T11.3.1.1.1.4.1">Time (s)</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="A7.T11.3.1.1.1.5" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="A7.T11.3.1.1.1.5.1">Source</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A7.T11.3.1.2.1">
<td class="ltx_td ltx_align_left ltx_border_t" id="A7.T11.3.1.2.1.1" style="padding-top:1pt;padding-bottom:1pt;">DeblurGAN<cite class="ltx_cite ltx_citemacro_citep">(Kupyn et al., <a class="ltx_ref" href="https://arxiv.org/html/2503.10613v1#bib.bib18" title="">2018</a>)</cite>
</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A7.T11.3.1.2.1.2" style="padding-top:1pt;padding-bottom:1pt;">Image Deblurring</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A7.T11.3.1.2.1.3" style="padding-top:1pt;padding-bottom:1pt;">1.00</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A7.T11.3.1.2.1.4" style="padding-top:1pt;padding-bottom:1pt;">0.8500</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A7.T11.3.1.2.1.5" style="padding-top:1pt;padding-bottom:1pt;"><cite class="ltx_cite ltx_citemacro_citep">(Kupyn et al., <a class="ltx_ref" href="https://arxiv.org/html/2503.10613v1#bib.bib18" title="">2018</a>)</cite></td>
</tr>
<tr class="ltx_tr" id="A7.T11.3.1.3.2">
<td class="ltx_td ltx_align_left" id="A7.T11.3.1.3.2.1" style="padding-top:1pt;padding-bottom:1pt;">MiDaS<cite class="ltx_cite ltx_citemacro_citep">(Ranftl et al., <a class="ltx_ref" href="https://arxiv.org/html/2503.10613v1#bib.bib26" title="">2020</a>)</cite>
</td>
<td class="ltx_td ltx_align_left" id="A7.T11.3.1.3.2.2" style="padding-top:1pt;padding-bottom:1pt;">Depth Estimation</td>
<td class="ltx_td ltx_align_center" id="A7.T11.3.1.3.2.3" style="padding-top:1pt;padding-bottom:1pt;">1.00</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A7.T11.3.1.3.2.4" style="padding-top:1pt;padding-bottom:1pt;">0.7100</td>
<td class="ltx_td ltx_align_left" id="A7.T11.3.1.3.2.5" style="padding-top:1pt;padding-bottom:1pt;">Evaluation on 137 instances of this subtask</td>
</tr>
<tr class="ltx_tr" id="A7.T11.3.1.4.3">
<td class="ltx_td ltx_align_left" id="A7.T11.3.1.4.3.1" style="padding-top:1pt;padding-bottom:1pt;">YOLOv7<cite class="ltx_cite ltx_citemacro_citep">(Wang et al., <a class="ltx_ref" href="https://arxiv.org/html/2503.10613v1#bib.bib32" title="">2022</a>)</cite>
</td>
<td class="ltx_td ltx_align_left" id="A7.T11.3.1.4.3.2" style="padding-top:1pt;padding-bottom:1pt;">Object Detection</td>
<td class="ltx_td ltx_align_center" id="A7.T11.3.1.4.3.3" style="padding-top:1pt;padding-bottom:1pt;">0.82</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A7.T11.3.1.4.3.4" style="padding-top:1pt;padding-bottom:1pt;">0.0062</td>
<td class="ltx_td ltx_align_left" id="A7.T11.3.1.4.3.5" style="padding-top:1pt;padding-bottom:1pt;"><cite class="ltx_cite ltx_citemacro_citep">(Wang et al., <a class="ltx_ref" href="https://arxiv.org/html/2503.10613v1#bib.bib32" title="">2022</a>)</cite></td>
</tr>
<tr class="ltx_tr" id="A7.T11.3.1.5.4">
<td class="ltx_td ltx_align_left" id="A7.T11.3.1.5.4.1" style="padding-top:1pt;padding-bottom:1pt;">Grounding DINO<cite class="ltx_cite ltx_citemacro_citep">(Liu et al., <a class="ltx_ref" href="https://arxiv.org/html/2503.10613v1#bib.bib22" title="">2024</a>)</cite>
</td>
<td class="ltx_td ltx_align_left" id="A7.T11.3.1.5.4.2" style="padding-top:1pt;padding-bottom:1pt;">Object Detection</td>
<td class="ltx_td ltx_align_center" id="A7.T11.3.1.5.4.3" style="padding-top:1pt;padding-bottom:1pt;">1.00</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A7.T11.3.1.5.4.4" style="padding-top:1pt;padding-bottom:1pt;">0.1190</td>
<td class="ltx_td ltx_align_left" id="A7.T11.3.1.5.4.5" style="padding-top:1pt;padding-bottom:1pt;">Accuracy: <cite class="ltx_cite ltx_citemacro_citep">(Liu et al., <a class="ltx_ref" href="https://arxiv.org/html/2503.10613v1#bib.bib22" title="">2024</a>)</cite>, Time: Evaluation on 137 instances of this subtask</td>
</tr>
<tr class="ltx_tr" id="A7.T11.3.1.6.5">
<td class="ltx_td ltx_align_left" id="A7.T11.3.1.6.5.1" style="padding-top:1pt;padding-bottom:1pt;">CLIP<cite class="ltx_cite ltx_citemacro_citep">(Radford et al., <a class="ltx_ref" href="https://arxiv.org/html/2503.10613v1#bib.bib24" title="">2021</a>)</cite>
</td>
<td class="ltx_td ltx_align_left" id="A7.T11.3.1.6.5.2" style="padding-top:1pt;padding-bottom:1pt;">Caption Consistency Check</td>
<td class="ltx_td ltx_align_center" id="A7.T11.3.1.6.5.3" style="padding-top:1pt;padding-bottom:1pt;">1.00</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A7.T11.3.1.6.5.4" style="padding-top:1pt;padding-bottom:1pt;">0.0007</td>
<td class="ltx_td ltx_align_left" id="A7.T11.3.1.6.5.5" style="padding-top:1pt;padding-bottom:1pt;">Evaluation on 137 instances of this subtask</td>
</tr>
<tr class="ltx_tr" id="A7.T11.3.1.7.6">
<td class="ltx_td ltx_align_left" id="A7.T11.3.1.7.6.1" style="padding-top:1pt;padding-bottom:1pt;">SAM<cite class="ltx_cite ltx_citemacro_citep">(Ravi et al., <a class="ltx_ref" href="https://arxiv.org/html/2503.10613v1#bib.bib27" title="">2024</a>)</cite>
</td>
<td class="ltx_td ltx_align_left" id="A7.T11.3.1.7.6.2" style="padding-top:1pt;padding-bottom:1pt;">Object Segmentation</td>
<td class="ltx_td ltx_align_center" id="A7.T11.3.1.7.6.3" style="padding-top:1pt;padding-bottom:1pt;">1.00</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A7.T11.3.1.7.6.4" style="padding-top:1pt;padding-bottom:1pt;">0.0460</td>
<td class="ltx_td ltx_align_left" id="A7.T11.3.1.7.6.5" style="padding-top:1pt;padding-bottom:1pt;">Accuracy: Evaluation on 137 instances of this subtask, Time: <cite class="ltx_cite ltx_citemacro_citep">(Ravi et al., <a class="ltx_ref" href="https://arxiv.org/html/2503.10613v1#bib.bib27" title="">2024</a>)</cite>
</td>
</tr>
<tr class="ltx_tr" id="A7.T11.3.1.8.7">
<td class="ltx_td ltx_align_left" id="A7.T11.3.1.8.7.1" style="padding-top:1pt;padding-bottom:1pt;">CRAFT<cite class="ltx_cite ltx_citemacro_citep">(Baek et al., <a class="ltx_ref" href="https://arxiv.org/html/2503.10613v1#bib.bib2" title="">2019b</a>)</cite>
</td>
<td class="ltx_td ltx_align_left" id="A7.T11.3.1.8.7.2" style="padding-top:1pt;padding-bottom:1pt;">Text Detection</td>
<td class="ltx_td ltx_align_center" id="A7.T11.3.1.8.7.3" style="padding-top:1pt;padding-bottom:1pt;">1.00</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A7.T11.3.1.8.7.4" style="padding-top:1pt;padding-bottom:1pt;">1.2700</td>
<td class="ltx_td ltx_align_left" id="A7.T11.3.1.8.7.5" style="padding-top:1pt;padding-bottom:1pt;">Accuracy: <cite class="ltx_cite ltx_citemacro_citep">(Baek et al., <a class="ltx_ref" href="https://arxiv.org/html/2503.10613v1#bib.bib2" title="">2019b</a>)</cite>, Time: Evaluation on 137 instances of this subtask</td>
</tr>
<tr class="ltx_tr" id="A7.T11.3.1.9.8">
<td class="ltx_td ltx_align_left" id="A7.T11.3.1.9.8.1" style="padding-top:1pt;padding-bottom:1pt;">Google Cloud Vision<cite class="ltx_cite ltx_citemacro_citep">(Google Cloud, <a class="ltx_ref" href="https://arxiv.org/html/2503.10613v1#bib.bib9" title="">2024</a>)</cite>
</td>
<td class="ltx_td ltx_align_left" id="A7.T11.3.1.9.8.2" style="padding-top:1pt;padding-bottom:1pt;">Landmark Detection</td>
<td class="ltx_td ltx_align_center" id="A7.T11.3.1.9.8.3" style="padding-top:1pt;padding-bottom:1pt;">1.00</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A7.T11.3.1.9.8.4" style="padding-top:1pt;padding-bottom:1pt;">1.2000</td>
<td class="ltx_td ltx_align_left" id="A7.T11.3.1.9.8.5" style="padding-top:1pt;padding-bottom:1pt;">Evaluation on 137 instances of this subtask</td>
</tr>
<tr class="ltx_tr" id="A7.T11.3.1.10.9">
<td class="ltx_td ltx_align_left" id="A7.T11.3.1.10.9.1" style="padding-top:1pt;padding-bottom:1pt;">EasyOCR<cite class="ltx_cite ltx_citemacro_citep">(Kittinaradorn et al., <a class="ltx_ref" href="https://arxiv.org/html/2503.10613v1#bib.bib17" title="">2022</a>)</cite>
</td>
<td class="ltx_td ltx_align_left" id="A7.T11.3.1.10.9.2" style="padding-top:1pt;padding-bottom:1pt;">Text Extraction</td>
<td class="ltx_td ltx_align_center" id="A7.T11.3.1.10.9.3" style="padding-top:1pt;padding-bottom:1pt;">1.00</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A7.T11.3.1.10.9.4" style="padding-top:1pt;padding-bottom:1pt;">0.1500</td>
<td class="ltx_td ltx_align_left" id="A7.T11.3.1.10.9.5" style="padding-top:1pt;padding-bottom:1pt;">Evaluation on 137 instances of this subtask</td>
</tr>
<tr class="ltx_tr" id="A7.T11.3.1.11.10">
<td class="ltx_td ltx_align_left" id="A7.T11.3.1.11.10.1" style="padding-top:1pt;padding-bottom:1pt;">Stable Diffusion Erase<cite class="ltx_cite ltx_citemacro_citep">(Rombach et al., <a class="ltx_ref" href="https://arxiv.org/html/2503.10613v1#bib.bib28" title="">2022a</a>)</cite>
</td>
<td class="ltx_td ltx_align_left" id="A7.T11.3.1.11.10.2" style="padding-top:1pt;padding-bottom:1pt;">Object Removal</td>
<td class="ltx_td ltx_align_center" id="A7.T11.3.1.11.10.3" style="padding-top:1pt;padding-bottom:1pt;">1.00</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A7.T11.3.1.11.10.4" style="padding-top:1pt;padding-bottom:1pt;">13.8000</td>
<td class="ltx_td ltx_align_left" id="A7.T11.3.1.11.10.5" style="padding-top:1pt;padding-bottom:1pt;">Evaluation on 137 instances of this subtask</td>
</tr>
<tr class="ltx_tr" id="A7.T11.3.1.12.11">
<td class="ltx_td ltx_align_left" id="A7.T11.3.1.12.11.1" style="padding-top:1pt;padding-bottom:1pt;">DALL-E<cite class="ltx_cite ltx_citemacro_citep">(Ramesh et al., <a class="ltx_ref" href="https://arxiv.org/html/2503.10613v1#bib.bib25" title="">2021</a>)</cite>
</td>
<td class="ltx_td ltx_align_left" id="A7.T11.3.1.12.11.2" style="padding-top:1pt;padding-bottom:1pt;">Object Replacement</td>
<td class="ltx_td ltx_align_center" id="A7.T11.3.1.12.11.3" style="padding-top:1pt;padding-bottom:1pt;">1.00</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A7.T11.3.1.12.11.4" style="padding-top:1pt;padding-bottom:1pt;">14.1000</td>
<td class="ltx_td ltx_align_left" id="A7.T11.3.1.12.11.5" style="padding-top:1pt;padding-bottom:1pt;">Evaluation on 137 instances of this subtask</td>
</tr>
<tr class="ltx_tr" id="A7.T11.3.1.13.12">
<td class="ltx_td ltx_align_left" id="A7.T11.3.1.13.12.1" style="padding-top:1pt;padding-bottom:1pt;">Stable Diffusion Inpaint<cite class="ltx_cite ltx_citemacro_citep">(Rombach et al., <a class="ltx_ref" href="https://arxiv.org/html/2503.10613v1#bib.bib28" title="">2022a</a>)</cite>
</td>
<td class="ltx_td ltx_align_left" id="A7.T11.3.1.13.12.2" style="padding-top:1pt;padding-bottom:1pt;">Object Removal</td>
<td class="ltx_td ltx_align_center" id="A7.T11.3.1.13.12.3" style="padding-top:1pt;padding-bottom:1pt;">0.93</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A7.T11.3.1.13.12.4" style="padding-top:1pt;padding-bottom:1pt;">12.1000</td>
<td class="ltx_td ltx_align_left" id="A7.T11.3.1.13.12.5" style="padding-top:1pt;padding-bottom:1pt;">Evaluation on 137 instances of this subtask</td>
</tr>
<tr class="ltx_tr" id="A7.T11.3.1.14.13">
<td class="ltx_td ltx_align_left" id="A7.T11.3.1.14.13.1" style="padding-top:1pt;padding-bottom:1pt;">Stable Diffusion Inpaint<cite class="ltx_cite ltx_citemacro_citep">(Rombach et al., <a class="ltx_ref" href="https://arxiv.org/html/2503.10613v1#bib.bib28" title="">2022a</a>)</cite>
</td>
<td class="ltx_td ltx_align_left" id="A7.T11.3.1.14.13.2" style="padding-top:1pt;padding-bottom:1pt;">Object Replacement</td>
<td class="ltx_td ltx_align_center" id="A7.T11.3.1.14.13.3" style="padding-top:1pt;padding-bottom:1pt;">0.97</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A7.T11.3.1.14.13.4" style="padding-top:1pt;padding-bottom:1pt;">12.1000</td>
<td class="ltx_td ltx_align_left" id="A7.T11.3.1.14.13.5" style="padding-top:1pt;padding-bottom:1pt;">Evaluation on 137 instances of this subtask</td>
</tr>
<tr class="ltx_tr" id="A7.T11.3.1.15.14">
<td class="ltx_td ltx_align_left" id="A7.T11.3.1.15.14.1" style="padding-top:1pt;padding-bottom:1pt;">Stable Diffusion Inpaint<cite class="ltx_cite ltx_citemacro_citep">(Rombach et al., <a class="ltx_ref" href="https://arxiv.org/html/2503.10613v1#bib.bib28" title="">2022a</a>)</cite>
</td>
<td class="ltx_td ltx_align_left" id="A7.T11.3.1.15.14.2" style="padding-top:1pt;padding-bottom:1pt;">Object Recoloration</td>
<td class="ltx_td ltx_align_center" id="A7.T11.3.1.15.14.3" style="padding-top:1pt;padding-bottom:1pt;">0.89</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A7.T11.3.1.15.14.4" style="padding-top:1pt;padding-bottom:1pt;">12.1000</td>
<td class="ltx_td ltx_align_left" id="A7.T11.3.1.15.14.5" style="padding-top:1pt;padding-bottom:1pt;">Evaluation on 137 instances of this subtask</td>
</tr>
<tr class="ltx_tr" id="A7.T11.3.1.16.15">
<td class="ltx_td ltx_align_left" id="A7.T11.3.1.16.15.1" style="padding-top:1pt;padding-bottom:1pt;">Stable Diffusion Search &amp; Recolor<cite class="ltx_cite ltx_citemacro_citep">(Rombach et al., <a class="ltx_ref" href="https://arxiv.org/html/2503.10613v1#bib.bib28" title="">2022a</a>)</cite>
</td>
<td class="ltx_td ltx_align_left" id="A7.T11.3.1.16.15.2" style="padding-top:1pt;padding-bottom:1pt;">Object Recoloration</td>
<td class="ltx_td ltx_align_center" id="A7.T11.3.1.16.15.3" style="padding-top:1pt;padding-bottom:1pt;">1.00</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A7.T11.3.1.16.15.4" style="padding-top:1pt;padding-bottom:1pt;">14.7000</td>
<td class="ltx_td ltx_align_left" id="A7.T11.3.1.16.15.5" style="padding-top:1pt;padding-bottom:1pt;">Evaluation on 137 instances of this subtask</td>
</tr>
<tr class="ltx_tr" id="A7.T11.3.1.17.16">
<td class="ltx_td ltx_align_left" id="A7.T11.3.1.17.16.1" style="padding-top:1pt;padding-bottom:1pt;">Stable Diffusion Outpaint<cite class="ltx_cite ltx_citemacro_citep">(Rombach et al., <a class="ltx_ref" href="https://arxiv.org/html/2503.10613v1#bib.bib28" title="">2022a</a>)</cite>
</td>
<td class="ltx_td ltx_align_left" id="A7.T11.3.1.17.16.2" style="padding-top:1pt;padding-bottom:1pt;">Outpainting</td>
<td class="ltx_td ltx_align_center" id="A7.T11.3.1.17.16.3" style="padding-top:1pt;padding-bottom:1pt;">1.00</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A7.T11.3.1.17.16.4" style="padding-top:1pt;padding-bottom:1pt;">12.7000</td>
<td class="ltx_td ltx_align_left" id="A7.T11.3.1.17.16.5" style="padding-top:1pt;padding-bottom:1pt;">Evaluation on 137 instances of this subtask</td>
</tr>
<tr class="ltx_tr" id="A7.T11.3.1.18.17">
<td class="ltx_td ltx_align_left" id="A7.T11.3.1.18.17.1" style="padding-top:1pt;padding-bottom:1pt;">Stable Diffusion Remove Background<cite class="ltx_cite ltx_citemacro_citep">(Rombach et al., <a class="ltx_ref" href="https://arxiv.org/html/2503.10613v1#bib.bib28" title="">2022a</a>)</cite>
</td>
<td class="ltx_td ltx_align_left" id="A7.T11.3.1.18.17.2" style="padding-top:1pt;padding-bottom:1pt;">Background Removal</td>
<td class="ltx_td ltx_align_center" id="A7.T11.3.1.18.17.3" style="padding-top:1pt;padding-bottom:1pt;">1.00</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A7.T11.3.1.18.17.4" style="padding-top:1pt;padding-bottom:1pt;">12.5000</td>
<td class="ltx_td ltx_align_left" id="A7.T11.3.1.18.17.5" style="padding-top:1pt;padding-bottom:1pt;">Evaluation on 137 instances of this subtask</td>
</tr>
<tr class="ltx_tr" id="A7.T11.3.1.19.18">
<td class="ltx_td ltx_align_left" id="A7.T11.3.1.19.18.1" style="padding-top:1pt;padding-bottom:1pt;">Stable Diffusion 3<cite class="ltx_cite ltx_citemacro_citep">(Rombach et al., <a class="ltx_ref" href="https://arxiv.org/html/2503.10613v1#bib.bib28" title="">2022a</a>)</cite>
</td>
<td class="ltx_td ltx_align_left" id="A7.T11.3.1.19.18.2" style="padding-top:1pt;padding-bottom:1pt;">Changing Scenery</td>
<td class="ltx_td ltx_align_center" id="A7.T11.3.1.19.18.3" style="padding-top:1pt;padding-bottom:1pt;">1.00</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A7.T11.3.1.19.18.4" style="padding-top:1pt;padding-bottom:1pt;">12.9000</td>
<td class="ltx_td ltx_align_left" id="A7.T11.3.1.19.18.5" style="padding-top:1pt;padding-bottom:1pt;">Evaluation on 137 instances of this subtask</td>
</tr>
<tr class="ltx_tr" id="A7.T11.3.1.20.19">
<td class="ltx_td ltx_align_left" id="A7.T11.3.1.20.19.1" style="padding-top:1pt;padding-bottom:1pt;">pix2pix<cite class="ltx_cite ltx_citemacro_citep">(Isola et al., <a class="ltx_ref" href="https://arxiv.org/html/2503.10613v1#bib.bib14" title="">2018</a>)</cite>
</td>
<td class="ltx_td ltx_align_left" id="A7.T11.3.1.20.19.2" style="padding-top:1pt;padding-bottom:1pt;">Changing Scenery (Day2Night)</td>
<td class="ltx_td ltx_align_center" id="A7.T11.3.1.20.19.3" style="padding-top:1pt;padding-bottom:1pt;">1.00</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A7.T11.3.1.20.19.4" style="padding-top:1pt;padding-bottom:1pt;">0.7000</td>
<td class="ltx_td ltx_align_left" id="A7.T11.3.1.20.19.5" style="padding-top:1pt;padding-bottom:1pt;">Accuracy: <cite class="ltx_cite ltx_citemacro_citep">(Isola et al., <a class="ltx_ref" href="https://arxiv.org/html/2503.10613v1#bib.bib14" title="">2018</a>)</cite>, Time: Evaluation on 137 instances of this subtask</td>
</tr>
<tr class="ltx_tr" id="A7.T11.3.1.21.20">
<td class="ltx_td ltx_align_left" id="A7.T11.3.1.21.20.1" style="padding-top:1pt;padding-bottom:1pt;">Real-ESRGAN<cite class="ltx_cite ltx_citemacro_citep">(Wang et al., <a class="ltx_ref" href="https://arxiv.org/html/2503.10613v1#bib.bib33" title="">2021</a>)</cite>
</td>
<td class="ltx_td ltx_align_left" id="A7.T11.3.1.21.20.2" style="padding-top:1pt;padding-bottom:1pt;">Image Upscaling</td>
<td class="ltx_td ltx_align_center" id="A7.T11.3.1.21.20.3" style="padding-top:1pt;padding-bottom:1pt;">1.00</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A7.T11.3.1.21.20.4" style="padding-top:1pt;padding-bottom:1pt;">1.7000</td>
<td class="ltx_td ltx_align_left" id="A7.T11.3.1.21.20.5" style="padding-top:1pt;padding-bottom:1pt;">Evaluation on 137 instances of this subtask</td>
</tr>
<tr class="ltx_tr" id="A7.T11.3.1.22.21">
<td class="ltx_td ltx_align_left" id="A7.T11.3.1.22.21.1" style="padding-top:1pt;padding-bottom:1pt;">LLM (GPT-4o)</td>
<td class="ltx_td ltx_align_left" id="A7.T11.3.1.22.21.2" style="padding-top:1pt;padding-bottom:1pt;">Question Answering based on Text</td>
<td class="ltx_td ltx_align_center" id="A7.T11.3.1.22.21.3" style="padding-top:1pt;padding-bottom:1pt;">1.00</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A7.T11.3.1.22.21.4" style="padding-top:1pt;padding-bottom:1pt;">6.2000</td>
<td class="ltx_td ltx_align_left" id="A7.T11.3.1.22.21.5" style="padding-top:1pt;padding-bottom:1pt;">Evaluation on 137 instances of this subtask</td>
</tr>
<tr class="ltx_tr" id="A7.T11.3.1.23.22">
<td class="ltx_td ltx_align_left" id="A7.T11.3.1.23.22.1" style="padding-top:1pt;padding-bottom:1pt;">LLM (GPT-4o)</td>
<td class="ltx_td ltx_align_left" id="A7.T11.3.1.23.22.2" style="padding-top:1pt;padding-bottom:1pt;">Sentiment Analysis</td>
<td class="ltx_td ltx_align_center" id="A7.T11.3.1.23.22.3" style="padding-top:1pt;padding-bottom:1pt;">1.00</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A7.T11.3.1.23.22.4" style="padding-top:1pt;padding-bottom:1pt;">6.1500</td>
<td class="ltx_td ltx_align_left" id="A7.T11.3.1.23.22.5" style="padding-top:1pt;padding-bottom:1pt;">Evaluation on 137 instances of this subtask</td>
</tr>
<tr class="ltx_tr" id="A7.T11.3.1.24.23">
<td class="ltx_td ltx_align_left" id="A7.T11.3.1.24.23.1" style="padding-top:1pt;padding-bottom:1pt;">LLM (GPT-4o)</td>
<td class="ltx_td ltx_align_left" id="A7.T11.3.1.24.23.2" style="padding-top:1pt;padding-bottom:1pt;">Image Captioning</td>
<td class="ltx_td ltx_align_center" id="A7.T11.3.1.24.23.3" style="padding-top:1pt;padding-bottom:1pt;">1.00</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A7.T11.3.1.24.23.4" style="padding-top:1pt;padding-bottom:1pt;">6.3100</td>
<td class="ltx_td ltx_align_left" id="A7.T11.3.1.24.23.5" style="padding-top:1pt;padding-bottom:1pt;">Evaluation on 137 instances of this subtask</td>
</tr>
<tr class="ltx_tr" id="A7.T11.3.1.25.24">
<td class="ltx_td ltx_align_left" id="A7.T11.3.1.25.24.1" style="padding-top:1pt;padding-bottom:1pt;">DeepFont<cite class="ltx_cite ltx_citemacro_citep">(Wang et al., <a class="ltx_ref" href="https://arxiv.org/html/2503.10613v1#bib.bib34" title="">2015</a>)</cite>
</td>
<td class="ltx_td ltx_align_left" id="A7.T11.3.1.25.24.2" style="padding-top:1pt;padding-bottom:1pt;">Text Style Detection</td>
<td class="ltx_td ltx_align_center" id="A7.T11.3.1.25.24.3" style="padding-top:1pt;padding-bottom:1pt;">1.00</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A7.T11.3.1.25.24.4" style="padding-top:1pt;padding-bottom:1pt;">1.8000</td>
<td class="ltx_td ltx_align_left" id="A7.T11.3.1.25.24.5" style="padding-top:1pt;padding-bottom:1pt;">Evaluation on 137 instances of this subtask</td>
</tr>
<tr class="ltx_tr" id="A7.T11.3.1.26.25">
<td class="ltx_td ltx_align_left" id="A7.T11.3.1.26.25.1" style="padding-top:1pt;padding-bottom:1pt;">Text Writing - Pillow</td>
<td class="ltx_td ltx_align_left" id="A7.T11.3.1.26.25.2" style="padding-top:1pt;padding-bottom:1pt;">Text Replacement</td>
<td class="ltx_td ltx_align_center" id="A7.T11.3.1.26.25.3" style="padding-top:1pt;padding-bottom:1pt;">1.00</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A7.T11.3.1.26.25.4" style="padding-top:1pt;padding-bottom:1pt;">0.0380</td>
<td class="ltx_td ltx_align_left" id="A7.T11.3.1.26.25.5" style="padding-top:1pt;padding-bottom:1pt;">Evaluation on 137 instances of this subtask</td>
</tr>
<tr class="ltx_tr" id="A7.T11.3.1.27.26">
<td class="ltx_td ltx_align_left" id="A7.T11.3.1.27.26.1" style="padding-top:1pt;padding-bottom:1pt;">Text Writing - Pillow</td>
<td class="ltx_td ltx_align_left" id="A7.T11.3.1.27.26.2" style="padding-top:1pt;padding-bottom:1pt;">Text Addition</td>
<td class="ltx_td ltx_align_center" id="A7.T11.3.1.27.26.3" style="padding-top:1pt;padding-bottom:1pt;">1.00</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A7.T11.3.1.27.26.4" style="padding-top:1pt;padding-bottom:1pt;">0.0380</td>
<td class="ltx_td ltx_align_left" id="A7.T11.3.1.27.26.5" style="padding-top:1pt;padding-bottom:1pt;">Evaluation on 137 instances of this subtask</td>
</tr>
<tr class="ltx_tr" id="A7.T11.3.1.28.27">
<td class="ltx_td ltx_align_left" id="A7.T11.3.1.28.27.1" style="padding-top:1pt;padding-bottom:1pt;">Text Writing - Pillow</td>
<td class="ltx_td ltx_align_left" id="A7.T11.3.1.28.27.2" style="padding-top:1pt;padding-bottom:1pt;">Keyword Highlighting</td>
<td class="ltx_td ltx_align_center" id="A7.T11.3.1.28.27.3" style="padding-top:1pt;padding-bottom:1pt;">1.00</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A7.T11.3.1.28.27.4" style="padding-top:1pt;padding-bottom:1pt;">0.0380</td>
<td class="ltx_td ltx_align_left" id="A7.T11.3.1.28.27.5" style="padding-top:1pt;padding-bottom:1pt;">Evaluation on 137 instances of this subtask</td>
</tr>
<tr class="ltx_tr" id="A7.T11.3.1.29.28">
<td class="ltx_td ltx_align_left" id="A7.T11.3.1.29.28.1" style="padding-top:1pt;padding-bottom:1pt;">MagicBrush<cite class="ltx_cite ltx_citemacro_citep">(Zhang et al., <a class="ltx_ref" href="https://arxiv.org/html/2503.10613v1#bib.bib41" title="">2023a</a>)</cite>
</td>
<td class="ltx_td ltx_align_left" id="A7.T11.3.1.29.28.2" style="padding-top:1pt;padding-bottom:1pt;">Object Addition</td>
<td class="ltx_td ltx_align_center" id="A7.T11.3.1.29.28.3" style="padding-top:1pt;padding-bottom:1pt;">1.00</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A7.T11.3.1.29.28.4" style="padding-top:1pt;padding-bottom:1pt;">12.8000</td>
<td class="ltx_td ltx_align_left" id="A7.T11.3.1.29.28.5" style="padding-top:1pt;padding-bottom:1pt;">Accuracy: <cite class="ltx_cite ltx_citemacro_citep">(Zhang et al., <a class="ltx_ref" href="https://arxiv.org/html/2503.10613v1#bib.bib41" title="">2023a</a>)</cite>, Time: Evaluation on 137 instances of this subtask</td>
</tr>
<tr class="ltx_tr" id="A7.T11.3.1.30.29">
<td class="ltx_td ltx_align_left" id="A7.T11.3.1.30.29.1" style="padding-top:1pt;padding-bottom:1pt;">Text Redaction</td>
<td class="ltx_td ltx_align_left" id="A7.T11.3.1.30.29.2" style="padding-top:1pt;padding-bottom:1pt;">Text Redaction</td>
<td class="ltx_td ltx_align_center" id="A7.T11.3.1.30.29.3" style="padding-top:1pt;padding-bottom:1pt;">1.00</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A7.T11.3.1.30.29.4" style="padding-top:1pt;padding-bottom:1pt;">0.0410</td>
<td class="ltx_td ltx_align_left" id="A7.T11.3.1.30.29.5" style="padding-top:1pt;padding-bottom:1pt;">Evaluation on 137 instances of this subtask</td>
</tr>
<tr class="ltx_tr" id="A7.T11.3.1.31.30">
<td class="ltx_td ltx_align_left" id="A7.T11.3.1.31.30.1" style="padding-top:1pt;padding-bottom:1pt;">Text Removal by Painting</td>
<td class="ltx_td ltx_align_left" id="A7.T11.3.1.31.30.2" style="padding-top:1pt;padding-bottom:1pt;">Text Removal (Fallback)</td>
<td class="ltx_td ltx_align_center" id="A7.T11.3.1.31.30.3" style="padding-top:1pt;padding-bottom:1pt;">0.20</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A7.T11.3.1.31.30.4" style="padding-top:1pt;padding-bottom:1pt;">0.0450</td>
<td class="ltx_td ltx_align_left" id="A7.T11.3.1.31.30.5" style="padding-top:1pt;padding-bottom:1pt;">Evaluation on 137 instances of this subtask</td>
</tr>
<tr class="ltx_tr" id="A7.T11.3.1.32.31">
<td class="ltx_td ltx_align_left" id="A7.T11.3.1.32.31.1" style="padding-top:1pt;padding-bottom:1pt;">DALL-E<cite class="ltx_cite ltx_citemacro_citep">(Ramesh et al., <a class="ltx_ref" href="https://arxiv.org/html/2503.10613v1#bib.bib25" title="">2021</a>)</cite>
</td>
<td class="ltx_td ltx_align_left" id="A7.T11.3.1.32.31.2" style="padding-top:1pt;padding-bottom:1pt;">Text Removal</td>
<td class="ltx_td ltx_align_center" id="A7.T11.3.1.32.31.3" style="padding-top:1pt;padding-bottom:1pt;">1.00</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A7.T11.3.1.32.31.4" style="padding-top:1pt;padding-bottom:1pt;">14.2000</td>
<td class="ltx_td ltx_align_left" id="A7.T11.3.1.32.31.5" style="padding-top:1pt;padding-bottom:1pt;">Evaluation on 137 instances of this subtask</td>
</tr>
<tr class="ltx_tr" id="A7.T11.3.1.33.32">
<td class="ltx_td ltx_align_left ltx_border_bb" id="A7.T11.3.1.33.32.1" style="padding-top:1pt;padding-bottom:1pt;">Stable Diffusion Erase<cite class="ltx_cite ltx_citemacro_citep">(Rombach et al., <a class="ltx_ref" href="https://arxiv.org/html/2503.10613v1#bib.bib28" title="">2022a</a>)</cite>
</td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="A7.T11.3.1.33.32.2" style="padding-top:1pt;padding-bottom:1pt;">Text Removal</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A7.T11.3.1.33.32.3" style="padding-top:1pt;padding-bottom:1pt;">0.97</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="A7.T11.3.1.33.32.4" style="padding-top:1pt;padding-bottom:1pt;">13.8000</td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="A7.T11.3.1.33.32.5" style="padding-top:1pt;padding-bottom:1pt;">Evaluation on 137 instances of this subtask</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 Table 11 presents benchmark results for various tools used in image editing tasks, focusing on accuracy and execution time.  The data is sourced from published benchmarks whenever available. For tools lacking pre-existing benchmark data, the table includes results derived from evaluating the tools on 137 instances of each relevant subtask, using a dataset of 121 images. This extensive evaluation ensures a robust assessment across diverse conditions.
> <details>
> <summary>read the caption</summary>
> Table 11: Benchmark Table for Accuracy and Execution Time. Accuracy and execution time for each tool-task pair are obtained from cited sources where available. For tools without prior benchmarks, evaluation was conducted over 137 instances of the specific subtask on 121 images from the dataset, ensuring a robust assessment across varied conditions.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2503.10613/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.10613/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.10613/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.10613/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.10613/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.10613/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.10613/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.10613/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.10613/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.10613/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.10613/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.10613/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.10613/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.10613/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.10613/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.10613/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.10613/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.10613/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.10613/19.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.10613/20.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}