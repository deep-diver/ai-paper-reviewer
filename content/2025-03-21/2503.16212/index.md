---
title: "MathFusion: Enhancing Mathematic Problem-solving of LLM through Instruction Fusion"
summary: "MathFusion: Instruction Fusion enhances LLM's math problem-solving!"
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Natural Language Processing", "Large Language Models", "🏢 Renmin University of China",]
showSummary: true
date: 2025-03-20
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2503.16212 {{< /keyword >}}
{{< keyword icon="writer" >}} Qizhi Pei et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-03-21 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2503.16212" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2503.16212" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2503.16212/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Large Language Models show promise in mathematical reasoning, but current data augmentation is limited to instance-level modifications, failing to capture relational structures. To address this, the paper introduces MathFusion. It draws inspiration from human learning, where math proficiency grows via interconnected concepts, enhancing reasoning through cross-problem instruction synthesis. The new framework uses 3 fusion strategies: sequential, parallel, and conditional fusion. 



 The paper generates MathFusionQA, then fine-tunes models(DeepSeekMath-7B, Mistral-7B, Llama3-8B). MathFusion enhances mathematical reasoning while maintaining efficiency, boosting performance by 18.0 points in accuracy across benchmarks with only 45K additional instructions. MathFusion enables LLMs to capture underlying relational structures, improving complex, multi-step problem-solving. The models achieve better performance on diverse benchmarks.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} MathFusion, a new framework using cross-problem instruction synthesis, significantly improves mathematical reasoning in LLMs. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} MathFusion's three fusion strategies (sequential, parallel, and conditional) each contribute to enhanced performance, with their combination yielding further improvements. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} MathFusion models demonstrate competitive performance and high data efficiency, outperforming existing methods with fewer synthetic instructions. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper introduces **MathFusion**, a novel method for improving mathematical reasoning in LLMs, addressing a critical need for more effective data augmentation techniques. It offers a new paradigm for enhancing LLMs' problem-solving capabilities, potentially impacting various fields relying on advanced AI reasoning. It also opens avenues for exploring relational learning in other complex domains.

------
#### Visual Insights



![](https://arxiv.org/html/2503.16212/x1.png)

> 🔼 The figure displays the average accuracy of several large language models (LLMs) fine-tuned for mathematical problem-solving, all based on the Llama3-8B architecture.  Each model was trained using a different method and varying numbers of synthetic instruction samples.  The x-axis represents the number of synthetic samples used in supervised fine-tuning (SFT), while the y-axis represents the model's average accuracy across six standard mathematical reasoning benchmarks. The graph visually demonstrates that the MathFusion approach achieves superior performance compared to other methods, using significantly fewer synthetic instructions. 
> <details>
> <summary>read the caption</summary>
> Figure 1: Average performance across six benchmarks of mathematical LLMs built on Llama3-8B, along with the respective # SFT samples. MathFusion yields superior performance with fewer synthetic instructions.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S3.T1.1.1">
<tr class="ltx_tr" id="S3.T1.1.1.1">
<td class="ltx_td ltx_align_left ltx_border_tt" id="S3.T1.1.1.1.1">Dataset</td>
<td class="ltx_td ltx_align_right ltx_border_tt" id="S3.T1.1.1.1.2"># Samples</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.1.2">
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T1.1.1.2.1">WizardMath <cite class="ltx_cite ltx_citemacro_citep">(Luo et al., <a class="ltx_ref" href="https://arxiv.org/html/2503.16212v1#bib.bib27" title="">2023</a>)</cite>
</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S3.T1.1.1.2.2">96K</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.1.3">
<td class="ltx_td ltx_align_left" id="S3.T1.1.1.3.1">MetaMathQA <cite class="ltx_cite ltx_citemacro_citep">(Yu et al., <a class="ltx_ref" href="https://arxiv.org/html/2503.16212v1#bib.bib47" title="">2024</a>)</cite>
</td>
<td class="ltx_td ltx_align_right" id="S3.T1.1.1.3.2">395K</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.1.4">
<td class="ltx_td ltx_align_left" id="S3.T1.1.1.4.1">MMIQC <cite class="ltx_cite ltx_citemacro_citep">(Liu et al., <a class="ltx_ref" href="https://arxiv.org/html/2503.16212v1#bib.bib25" title="">2024</a>)</cite>
</td>
<td class="ltx_td ltx_align_right" id="S3.T1.1.1.4.2">2294K</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.1.5">
<td class="ltx_td ltx_align_left" id="S3.T1.1.1.5.1">Orca-Math <cite class="ltx_cite ltx_citemacro_citep">(Mitra et al., <a class="ltx_ref" href="https://arxiv.org/html/2503.16212v1#bib.bib28" title="">2024</a>)</cite>
</td>
<td class="ltx_td ltx_align_right" id="S3.T1.1.1.5.2">200K</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.1.6">
<td class="ltx_td ltx_align_left" id="S3.T1.1.1.6.1">Xwin-Math-V1.1 <cite class="ltx_cite ltx_citemacro_citep">(Li et al., <a class="ltx_ref" href="https://arxiv.org/html/2503.16212v1#bib.bib21" title="">2024a</a>)</cite>
</td>
<td class="ltx_td ltx_align_right" id="S3.T1.1.1.6.2">1440K</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.1.7">
<td class="ltx_td ltx_align_left" id="S3.T1.1.1.7.1">KPMath-Plus <cite class="ltx_cite ltx_citemacro_citep">(Huang et al., <a class="ltx_ref" href="https://arxiv.org/html/2503.16212v1#bib.bib15" title="">2024</a>)</cite>
</td>
<td class="ltx_td ltx_align_right" id="S3.T1.1.1.7.2">1576K</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.1.8">
<td class="ltx_td ltx_align_left" id="S3.T1.1.1.8.1">MathScaleQA <cite class="ltx_cite ltx_citemacro_citep">(Tang et al., <a class="ltx_ref" href="https://arxiv.org/html/2503.16212v1#bib.bib35" title="">2024</a>)</cite>
</td>
<td class="ltx_td ltx_align_right" id="S3.T1.1.1.8.2">2021K</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.1.9">
<td class="ltx_td ltx_align_left" id="S3.T1.1.1.9.1">DART-Math-Uniform <cite class="ltx_cite ltx_citemacro_citep">(Tong et al., <a class="ltx_ref" href="https://arxiv.org/html/2503.16212v1#bib.bib38" title="">2024</a>)</cite>
</td>
<td class="ltx_td ltx_align_right" id="S3.T1.1.1.9.2">591K</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.1.10">
<td class="ltx_td ltx_align_left" id="S3.T1.1.1.10.1">DART-Math-Hard <cite class="ltx_cite ltx_citemacro_citep">(Tong et al., <a class="ltx_ref" href="https://arxiv.org/html/2503.16212v1#bib.bib38" title="">2024</a>)</cite>
</td>
<td class="ltx_td ltx_align_right" id="S3.T1.1.1.10.2">585K</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.1.11">
<td class="ltx_td ltx_align_left" id="S3.T1.1.1.11.1">RefAug <cite class="ltx_cite ltx_citemacro_citep">(Zhang et al., <a class="ltx_ref" href="https://arxiv.org/html/2503.16212v1#bib.bib51" title="">2024</a>)</cite>
</td>
<td class="ltx_td ltx_align_right" id="S3.T1.1.1.11.2">30K</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.1.12">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_t" id="S3.T1.1.1.12.1">MathFusionQA</td>
<td class="ltx_td ltx_align_right ltx_border_bb ltx_border_t" id="S3.T1.1.1.12.2">60K</td>
</tr>
</table>{{< /table-caption >}}

> 🔼 This table compares the MathFusionQA dataset with other existing mathematical datasets used for training and evaluating large language models (LLMs).  The comparison focuses on the number of samples (problem-solution pairs) in each dataset.  The key takeaway is that MathFusionQA is significantly smaller in size than the other datasets, demonstrating its data efficiency.
> <details>
> <summary>read the caption</summary>
> Table 1: Comparison between MathFusionQA and previous mathematical datasets. Our MathFusionQA is generally smaller than others.
> </details>





### In-depth insights


#### LLM Math Fusion
**LLM Math Fusion** could involve innovative techniques to enhance mathematical reasoning in large language models (LLMs). One approach might center on data augmentation, moving beyond simple rephrasing to fuse diverse problem types. This could capture relational structures inherent in mathematical knowledge. The **fusion strategies** may vary, e.g., sequencing dependent problems or combining analogous ones. Datasets generated this way, like MathFusionQA, could lead to substantial improvements in mathematical reasoning. The method aims at creating more challenging problems that LLMs can learn from.

#### Instruction Synth
**Instruction synthesis is vital for enhancing LLMs' problem-solving**. It involves crafting new instructions by strategically combining existing ones. Methods include: **sequential fusion** (chaining problems), **parallel fusion** (analogous problems), and **conditional fusion** (context-aware, selective problems). This approach contrasts with instance-level modifications that only rephrase or vary syntax. Instruction synthesis aims to capture relational structures within the problem space, leading to more robust reasoning. Careful creation and validation are important to make the fused instructions sensible.

#### Multi-Problem RL
**Multi-Problem RL**, while not explicitly present, could allude to an agent excelling across diverse tasks. This highlights the challenge of creating adaptable agents. **MathFusion** implicitly addresses this by fusing diverse problem types, training models to generalize, and **improve OOD performance**. It fosters **transfer learning** between interrelated math concepts, crucial for real-world problem-solving. Future directions might involve curriculum learning, starting with simpler fused problems before escalating complexity. Exploring **meta-learning** algorithms could further optimize the model's adaptability to new problem combinations. This aligns with broader efforts to create robust AI agents capable of tackling unforeseen situations.

#### MathFusionQA Data
Based on the paper, the MathFusionQA dataset is a **novel resource** created to enhance mathematical reasoning in LLMs. It is built by applying three fusion strategies—sequential, parallel, and conditional—to existing datasets like GSM8K and MATH. These strategies synthesize new problems by linking related problems, integrating analogous concepts, and generating context-aware selective problems.  The construction of MathFusionQA involves identifying suitable problem pairs for fusion, then using strong LLMs to generate corresponding solutions, resulting in **high-quality training data**.  The dataset is  designed to improve LLMs' ability to capture the relational structures inherent in mathematical knowledge, enabling them to tackle complex, multi-step problems more effectively. Its size is generally smaller than many existing mathematical datasets, MathFusionQA stands out due to its targeted approach to instruction synthesis.  Experimental results demonstrate its effectiveness in improving mathematical reasoning while maintaining **high data efficiency**.

#### Context Matters
**Context fundamentally shapes understanding and problem-solving.** In mathematical reasoning, as highlighted in the paper, context is the web of interconnected concepts and relationships, not just isolated facts. This means that effective problem-solving requires understanding how different pieces of information relate to each other within a given scenario. The paper's approach of instruction fusion directly addresses this by creating new problems that explicitly link different mathematical concepts, mirroring how humans develop expertise through exposure to interconnected ideas. **Ignoring context leads to brittle models**, unable to generalize beyond the specific examples they were trained on. By actively constructing and training on context-rich examples, LLMs can potentially develop a deeper understanding of mathematical principles and improve their ability to reason effectively in novel situations.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2503.16212/x2.png)

> 🔼 The figure illustrates the MathFusion framework.  It begins with two mathematical problems,  PA and PB, selected from an existing dataset.  MathFusion then applies three different fusion strategies to these problems to create a new, synthesized problem, PF.  These strategies are:  1. **Sequential Fusion**: Chains problems together to model solution dependencies.  2. **Parallel Fusion**: Combines analogous problems to reinforce conceptual understanding. 3. **Conditional Fusion**: Creates context-aware problems to enhance reasoning flexibility. The resulting new problem, PF, incorporates elements and relationships from both PA and PB, reflecting the chosen fusion strategy.
> <details>
> <summary>read the caption</summary>
> Figure 2: The overview of MathFusion. Given two mathematical problems PAsubscript𝑃𝐴P_{A}italic_P start_POSTSUBSCRIPT italic_A end_POSTSUBSCRIPT and PBsubscript𝑃𝐵P_{B}italic_P start_POSTSUBSCRIPT italic_B end_POSTSUBSCRIPT from the original mathematical dataset, MathFusion synthesizes a new mathematical problem PFsubscript𝑃𝐹P_{F}italic_P start_POSTSUBSCRIPT italic_F end_POSTSUBSCRIPT by fusing these two problems through three fusion strategies: sequential fusion, parallel fusion, and conditional fusion.
> </details>



![](https://arxiv.org/html/2503.16212/x3.png)

> 🔼 Figure 3 presents a tripartite analysis of the MathFusion model's performance using Llama3-8B. Panel (a) compares the unconditional and conditional perplexity scores (PPL) for both original and fused datasets from GSM8K and MATH. Panel (b) shows the instruction-following difficulty (IFD) for the same datasets, providing insight into the relative challenge of each. Finally, panel (c) illustrates how model performance scales as the size of augmented data increases for the MathFusion model.
> <details>
> <summary>read the caption</summary>
> Figure 3:  (a): Unconditional and conditional PPL for the original and fused data on GSM8K and MATH datasets. (b): IFD for the original and fused data on GSM8K and MATH datasets. (c): Performance scaling behavior of the MathFusion on different sizes of augmented data on Llama3-8B.
> </details>



![](https://arxiv.org/html/2503.16212/x4.png)

> 🔼 Figure 4(a) shows how the performance of Llama3-8B language models changes as the amount of training data increases. The models were trained on a combined dataset of MathFusionQA and DART-Math-Hard.  The x-axis represents the size of the sampled data from this combined dataset.  The y-axis shows the average performance across multiple benchmarks.  Figures 4(b) and 4(c) use t-SNE to visualize how problems from the GSM8K and MATH datasets are represented in a lower-dimensional embedding space.  This visualization helps to understand the relationships and similarities between the different problems in each dataset. 
> <details>
> <summary>read the caption</summary>
> Figure 4:  (a): Average performance of the Llama3-8B models fine-tuned on the combined dataset of MathFusionQA and DART-Math-Hard with different sizes of sampled data. (b) and (c): Problem embedding visualization for GSM8K and MATH datasets via t-SNE.
> </details>



![](https://arxiv.org/html/2503.16212/x5.png)

> 🔼 This figure shows a pie chart visualizing the distribution of problem type combinations within the MATH dataset used in the paper. Each slice represents a pair of problem types combined using the MathFusion technique, and its size corresponds to the proportion of such pairings within the total dataset.  The chart provides insight into the frequency with which various problem-type combinations were utilized during the data augmentation process. For example, a large slice for '(Algebra, Algebra)' indicates that many problem pairs were created by combining two problems of the Algebra type.
> <details>
> <summary>read the caption</summary>
> Figure 5: Distribution of combination types of problems in MATH dataset.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S4.T2.12.12">
<tr class="ltx_tr" id="S4.T2.12.12.13">
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.12.12.13.1" rowspan="2"><span class="ltx_text" id="S4.T2.12.12.13.1.1">Model</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.12.12.13.2" rowspan="2"><span class="ltx_text" id="S4.T2.12.12.13.2.1"># Samples</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="S4.T2.12.12.13.3">In-Domain</td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="4" id="S4.T2.12.12.13.4">Out-of-Domain</td>
<td class="ltx_td ltx_border_tt" id="S4.T2.12.12.13.5"></td>
</tr>
<tr class="ltx_tr" id="S4.T2.12.12.14">
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.12.12.14.1">MATH</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.12.12.14.2">GSM8K</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.12.12.14.3">College</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.12.12.14.4">DM</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.12.12.14.5">Olympiad</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.12.12.14.6">Theorem</td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.12.14.7">AVG</td>
</tr>
<tr class="ltx_tr" id="S4.T2.12.12.15">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="9" id="S4.T2.12.12.15.1"><span class="ltx_text ltx_font_bold" id="S4.T2.12.12.15.1.1">DeepSeekMath (7B Math-Specialized Base Model)</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.12.12.16">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T2.12.12.16.1">DeepSeekMath-7B-RFT</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.12.12.16.2">590K</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.12.12.16.3">53.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.12.12.16.4"><span class="ltx_text ltx_font_bold" id="S4.T2.12.12.16.4.1">88.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.12.12.16.5"><span class="ltx_text ltx_font_bold" id="S4.T2.12.12.16.5.1">41.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.12.12.16.6">60.2</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.12.12.16.7">19.1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.12.12.16.8">27.2</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.12.12.16.9">48.3</td>
</tr>
<tr class="ltx_tr" id="S4.T2.12.12.17">
<td class="ltx_td ltx_align_left" id="S4.T2.12.12.17.1">DeepSeekMath-7B-DART-Math</td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.12.17.2">590K</td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.12.17.3"><span class="ltx_text ltx_font_bold" id="S4.T2.12.12.17.3.1">53.6</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.12.17.4">86.8</td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.12.17.5">40.7</td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.12.17.6"><span class="ltx_text ltx_font_bold" id="S4.T2.12.12.17.6.1">61.6</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.12.17.7"><span class="ltx_text ltx_font_bold" id="S4.T2.12.12.17.7.1">21.7</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.12.17.8"><span class="ltx_text ltx_font_bold" id="S4.T2.12.12.17.8.1">32.2</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.12.17.9"><span class="ltx_text ltx_font_bold" id="S4.T2.12.12.17.9.1">49.4</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.12.12.18">
<td class="ltx_td ltx_align_left" id="S4.T2.12.12.18.1">DeepSeekMath-7B-Instruct</td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.12.18.2">780K</td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.12.18.3">46.9</td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.12.18.4">82.7</td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.12.18.5">37.1</td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.12.18.6">52.2</td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.12.18.7">14.2</td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.12.18.8">28.1</td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.12.18.9">43.5</td>
</tr>
<tr class="ltx_tr" id="S4.T2.12.12.19">
<td class="ltx_td ltx_align_left" id="S4.T2.12.12.19.1">DeepSeekMath-7B-MMIQC</td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.12.19.2">2.3M</td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.12.19.3">45.3</td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.12.19.4">79.0</td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.12.19.5">35.3</td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.12.19.6">52.9</td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.12.19.7">13.0</td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.12.19.8">23.4</td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.12.19.9">41.5</td>
</tr>
<tr class="ltx_tr" id="S4.T2.12.12.20">
<td class="ltx_td ltx_align_left" id="S4.T2.12.12.20.1">
<span class="ltx_ERROR undefined" id="S4.T2.12.12.20.1.1">\hdashline</span>DeepSeekMath-7B-Standard</td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.12.20.2">15K</td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.12.20.3">30.6</td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.12.20.4">66.3</td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.12.20.5">22.7</td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.12.20.6">28.6</td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.12.20.7">5.6</td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.12.20.8">11.0</td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.12.20.9">27.5</td>
</tr>
<tr class="ltx_tr" id="S4.T2.12.12.21">
<td class="ltx_td ltx_align_left" id="S4.T2.12.12.21.1">DeepSeekMath-7B-RefAug</td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.12.21.2">30K</td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.12.21.3">32.1</td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.12.21.4">71.2</td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.12.21.5">26.0</td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.12.21.6">38.4</td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.12.21.7">10.1</td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.12.21.8">14.4</td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.12.21.9">32.0</td>
</tr>
<tr class="ltx_tr" id="S4.T2.12.12.22" style="background-color:#DDEBF7;">
<td class="ltx_td ltx_align_left" id="S4.T2.12.12.22.1"><span class="ltx_text" id="S4.T2.12.12.22.1.1" style="background-color:#DDEBF7;">MathFusion-DSMath-7B (<span class="ltx_text ltx_font_italic" id="S4.T2.12.12.22.1.1.1" style="background-color:#DDEBF7;">Sequential</span>)</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.12.22.2"><span class="ltx_text" id="S4.T2.12.12.22.2.1" style="background-color:#DDEBF7;">30K</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.12.22.3"><span class="ltx_text" id="S4.T2.12.12.22.3.1" style="background-color:#DDEBF7;">49.9</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.12.22.4"><span class="ltx_text" id="S4.T2.12.12.22.4.1" style="background-color:#DDEBF7;">76.6</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.12.22.5"><span class="ltx_text" id="S4.T2.12.12.22.5.1" style="background-color:#DDEBF7;">38.8</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.12.22.6"><span class="ltx_text" id="S4.T2.12.12.22.6.1" style="background-color:#DDEBF7;">64.6</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.12.22.7"><span class="ltx_text" id="S4.T2.12.12.22.7.1" style="background-color:#DDEBF7;">21.6</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.12.22.8"><span class="ltx_text" id="S4.T2.12.12.22.8.1" style="background-color:#DDEBF7;">22.8</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.12.22.9"><span class="ltx_text" id="S4.T2.12.12.22.9.1" style="background-color:#DDEBF7;">45.7</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.12.12.23" style="background-color:#DDEBF7;">
<td class="ltx_td ltx_align_left" id="S4.T2.12.12.23.1"><span class="ltx_text" id="S4.T2.12.12.23.1.1" style="background-color:#DDEBF7;">MathFusion-DSMath-7B (<span class="ltx_text ltx_font_italic" id="S4.T2.12.12.23.1.1.1" style="background-color:#DDEBF7;">Parallel</span>)</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.12.23.2"><span class="ltx_text" id="S4.T2.12.12.23.2.1" style="background-color:#DDEBF7;">30K</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.12.23.3"><span class="ltx_text" id="S4.T2.12.12.23.3.1" style="background-color:#DDEBF7;">50.9</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.12.23.4"><span class="ltx_text" id="S4.T2.12.12.23.4.1" style="background-color:#DDEBF7;">76.7</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.12.23.5"><span class="ltx_text" id="S4.T2.12.12.23.5.1" style="background-color:#DDEBF7;">38.9</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.12.23.6"><span class="ltx_text" id="S4.T2.12.12.23.6.1" style="background-color:#DDEBF7;">62.2</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.12.23.7"><span class="ltx_text" id="S4.T2.12.12.23.7.1" style="background-color:#DDEBF7;">19.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.12.23.8"><span class="ltx_text" id="S4.T2.12.12.23.8.1" style="background-color:#DDEBF7;">23.8</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.12.23.9"><span class="ltx_text" id="S4.T2.12.12.23.9.1" style="background-color:#DDEBF7;">45.3</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.12.12.24" style="background-color:#DDEBF7;">
<td class="ltx_td ltx_align_left" id="S4.T2.12.12.24.1"><span class="ltx_text" id="S4.T2.12.12.24.1.1" style="background-color:#DDEBF7;">MathFusion-DSMath-7B (<span class="ltx_text ltx_font_italic" id="S4.T2.12.12.24.1.1.1" style="background-color:#DDEBF7;">Conditional</span>)</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.12.24.2"><span class="ltx_text" id="S4.T2.12.12.24.2.1" style="background-color:#DDEBF7;">30K</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.12.24.3"><span class="ltx_text" id="S4.T2.12.12.24.3.1" style="background-color:#DDEBF7;">48.5</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.12.24.4"><span class="ltx_text" id="S4.T2.12.12.24.4.1" style="background-color:#DDEBF7;">74.6</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.12.24.5"><span class="ltx_text" id="S4.T2.12.12.24.5.1" style="background-color:#DDEBF7;">37.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.12.24.6"><span class="ltx_text" id="S4.T2.12.12.24.6.1" style="background-color:#DDEBF7;">55.2</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.12.24.7"><span class="ltx_text" id="S4.T2.12.12.24.7.1" style="background-color:#DDEBF7;">19.3</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.12.24.8"><span class="ltx_text" id="S4.T2.12.12.24.8.1" style="background-color:#DDEBF7;">19.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.12.24.9"><span class="ltx_text" id="S4.T2.12.12.24.9.1" style="background-color:#DDEBF7;">42.3</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.1.1">
<td class="ltx_td ltx_align_left" id="S4.T2.1.1.1.1">DeepSeekMath-7B-MetaMath<sup class="ltx_sup" id="S4.T2.1.1.1.1.1">†</sup>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.1.2">60K</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.1.3">40.0</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.1.4"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.1.4.1">79.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.1.5">33.2</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.1.6">45.9</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.1.7">9.5</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.1.8">18.9</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.1.9">37.8</td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.2.2">
<td class="ltx_td ltx_align_left" id="S4.T2.2.2.2.1">DeepSeekMath-7B-MMIQC<sup class="ltx_sup" id="S4.T2.2.2.2.1.1">†</sup>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.2.2">60K</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.2.3">26.3</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.2.4">60.6</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.2.5">19.2</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.2.6">41.5</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.2.7">10.4</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.2.8">6.8</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.2.9">27.5</td>
</tr>
<tr class="ltx_tr" id="S4.T2.3.3.3">
<td class="ltx_td ltx_align_left" id="S4.T2.3.3.3.1">DeepSeekMath-7B-RefAug<sup class="ltx_sup" id="S4.T2.3.3.3.1.1">†</sup>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.3.3.2">60K</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.3.3.3">33.1</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.3.3.4">71.6</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.3.3.5">26.2</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.3.3.6">35.4</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.3.3.7">10.5</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.3.3.8">14.0</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.3.3.9">31.8</td>
</tr>
<tr class="ltx_tr" id="S4.T2.4.4.4">
<td class="ltx_td ltx_align_left" id="S4.T2.4.4.4.1">DeepSeekMath-7B-DART-Math<sup class="ltx_sup" id="S4.T2.4.4.4.1.1">†</sup>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.4.4.4.2">60K</td>
<td class="ltx_td ltx_align_center" id="S4.T2.4.4.4.3">51.4</td>
<td class="ltx_td ltx_align_center" id="S4.T2.4.4.4.4">82.9</td>
<td class="ltx_td ltx_align_center" id="S4.T2.4.4.4.5">39.1</td>
<td class="ltx_td ltx_align_center" id="S4.T2.4.4.4.6">62.8</td>
<td class="ltx_td ltx_align_center" id="S4.T2.4.4.4.7">21.0</td>
<td class="ltx_td ltx_align_center" id="S4.T2.4.4.4.8"><span class="ltx_text ltx_font_bold" id="S4.T2.4.4.4.8.1">27.4</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.4.4.4.9">47.4</td>
</tr>
<tr class="ltx_tr" id="S4.T2.12.12.25" style="background-color:#DDEBF7;">
<td class="ltx_td ltx_align_left" id="S4.T2.12.12.25.1"><span class="ltx_text" id="S4.T2.12.12.25.1.1" style="background-color:#DDEBF7;">MathFusion-DSMath-7B</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.12.25.2"><span class="ltx_text" id="S4.T2.12.12.25.2.1" style="background-color:#DDEBF7;">60K</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.12.25.3"><span class="ltx_text ltx_font_bold" id="S4.T2.12.12.25.3.1" style="background-color:#DDEBF7;">53.4</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.12.25.4"><span class="ltx_text" id="S4.T2.12.12.25.4.1" style="background-color:#DDEBF7;">77.9</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.12.25.5"><span class="ltx_text ltx_font_bold" id="S4.T2.12.12.25.5.1" style="background-color:#DDEBF7;">39.8</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.12.25.6"><span class="ltx_text ltx_font_bold" id="S4.T2.12.12.25.6.1" style="background-color:#DDEBF7;">65.8</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.12.25.7"><span class="ltx_text ltx_font_bold" id="S4.T2.12.12.25.7.1" style="background-color:#DDEBF7;">23.3</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.12.25.8"><span class="ltx_text" id="S4.T2.12.12.25.8.1" style="background-color:#DDEBF7;">24.6</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.12.25.9"><span class="ltx_text ltx_font_bold" id="S4.T2.12.12.25.9.1" style="background-color:#DDEBF7;">47.5</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.12.12.26">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="9" id="S4.T2.12.12.26.1"><span class="ltx_text ltx_font_bold" id="S4.T2.12.12.26.1.1">Mistral-7B (7-8B General Base Model)</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.12.12.27">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T2.12.12.27.1">Mistral-7B-MetaMath</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.12.12.27.2">400K</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.12.12.27.3">29.8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.12.12.27.4">76.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.12.12.27.5">19.3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.12.12.27.6">28.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.12.12.27.7">5.9</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.12.12.27.8">14.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.12.12.27.9">28.9</td>
</tr>
<tr class="ltx_tr" id="S4.T2.12.12.28">
<td class="ltx_td ltx_align_left" id="S4.T2.12.12.28.1">Mistral-7B-WizardMath-V1.1</td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.12.28.2">418K</td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.12.28.3">32.3</td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.12.28.4">80.4</td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.12.28.5">23.1</td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.12.28.6">38.4</td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.12.28.7">7.7</td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.12.28.8">16.6</td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.12.28.9">33.1</td>
</tr>
<tr class="ltx_tr" id="S4.T2.12.12.29">
<td class="ltx_td ltx_align_left" id="S4.T2.12.12.29.1">Mistral-7B-RFT</td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.12.29.2">590K</td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.12.29.3">38.7</td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.12.29.4"><span class="ltx_text ltx_font_bold" id="S4.T2.12.12.29.4.1">82.3</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.12.29.5">24.2</td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.12.29.6">35.6</td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.12.29.7">8.7</td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.12.29.8">16.2</td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.12.29.9">34.3</td>
</tr>
<tr class="ltx_tr" id="S4.T2.12.12.30">
<td class="ltx_td ltx_align_left" id="S4.T2.12.12.30.1">Mistral-7B-DART-Math</td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.12.30.2">590K</td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.12.30.3"><span class="ltx_text ltx_font_bold" id="S4.T2.12.12.30.3.1">45.5</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.12.30.4">81.1</td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.12.30.5"><span class="ltx_text ltx_font_bold" id="S4.T2.12.12.30.5.1">29.4</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.12.30.6"><span class="ltx_text ltx_font_bold" id="S4.T2.12.12.30.6.1">45.1</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.12.30.7"><span class="ltx_text ltx_font_bold" id="S4.T2.12.12.30.7.1">14.7</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.12.30.8"><span class="ltx_text ltx_font_bold" id="S4.T2.12.12.30.8.1">17.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.12.30.9"><span class="ltx_text ltx_font_bold" id="S4.T2.12.12.30.9.1">38.8</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.12.12.31">
<td class="ltx_td ltx_align_left" id="S4.T2.12.12.31.1">Mistral-7B-MathScale</td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.12.31.2">2.0M</td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.12.31.3">35.2</td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.12.31.4">74.8</td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.12.31.5">21.8</td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.12.31.6">–</td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.12.31.7">–</td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.12.31.8">–</td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.12.31.9">–</td>
</tr>
<tr class="ltx_tr" id="S4.T2.12.12.32">
<td class="ltx_td ltx_align_left" id="S4.T2.12.12.32.1">Mistral-7B-MMIQC</td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.12.32.2">2.3M</td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.12.32.3">37.4</td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.12.32.4">75.4</td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.12.32.5">28.5</td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.12.32.6">38.0</td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.12.32.7">9.4</td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.12.32.8">16.2</td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.12.32.9">34.2</td>
</tr>
<tr class="ltx_tr" id="S4.T2.12.12.33">
<td class="ltx_td ltx_align_left" id="S4.T2.12.12.33.1">
<span class="ltx_ERROR undefined" id="S4.T2.12.12.33.1.1">\hdashline</span>Mistral-7B-Standard</td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.12.33.2">15K</td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.12.33.3">12.4</td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.12.33.4">60.3</td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.12.33.5">8.4</td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.12.33.6">17.0</td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.12.33.7">2.2</td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.12.33.8">7.6</td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.12.33.9">18.0</td>
</tr>
<tr class="ltx_tr" id="S4.T2.12.12.34">
<td class="ltx_td ltx_align_left" id="S4.T2.12.12.34.1">Mistral-7B-RefAug</td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.12.34.2">30K</td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.12.34.3">15.1</td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.12.34.4">61.1</td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.12.34.5">10.4</td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.12.34.6">15.4</td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.12.34.7">3.1</td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.12.34.8">11.0</td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.12.34.9">19.4</td>
</tr>
<tr class="ltx_tr" id="S4.T2.12.12.35" style="background-color:#DDEBF7;">
<td class="ltx_td ltx_align_left" id="S4.T2.12.12.35.1"><span class="ltx_text" id="S4.T2.12.12.35.1.1" style="background-color:#DDEBF7;">MathFusion-Mistral-7B (<span class="ltx_text ltx_font_italic" id="S4.T2.12.12.35.1.1.1" style="background-color:#DDEBF7;">Sequential</span>)</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.12.35.2"><span class="ltx_text" id="S4.T2.12.12.35.2.1" style="background-color:#DDEBF7;">30K</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.12.35.3"><span class="ltx_text" id="S4.T2.12.12.35.3.1" style="background-color:#DDEBF7;">32.7</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.12.35.4"><span class="ltx_text" id="S4.T2.12.12.35.4.1" style="background-color:#DDEBF7;">73.9</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.12.35.5"><span class="ltx_text" id="S4.T2.12.12.35.5.1" style="background-color:#DDEBF7;">18.9</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.12.35.6"><span class="ltx_text" id="S4.T2.12.12.35.6.1" style="background-color:#DDEBF7;">29.3</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.12.35.7"><span class="ltx_text" id="S4.T2.12.12.35.7.1" style="background-color:#DDEBF7;">9.3</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.12.35.8"><span class="ltx_text" id="S4.T2.12.12.35.8.1" style="background-color:#DDEBF7;">15.5</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.12.35.9"><span class="ltx_text" id="S4.T2.12.12.35.9.1" style="background-color:#DDEBF7;">29.9</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.12.12.36" style="background-color:#DDEBF7;">
<td class="ltx_td ltx_align_left" id="S4.T2.12.12.36.1"><span class="ltx_text" id="S4.T2.12.12.36.1.1" style="background-color:#DDEBF7;">MathFusion-Mistral-7B (<span class="ltx_text ltx_font_italic" id="S4.T2.12.12.36.1.1.1" style="background-color:#DDEBF7;">Parallel</span>)</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.12.36.2"><span class="ltx_text" id="S4.T2.12.12.36.2.1" style="background-color:#DDEBF7;">30K</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.12.36.3"><span class="ltx_text" id="S4.T2.12.12.36.3.1" style="background-color:#DDEBF7;">30.9</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.12.36.4"><span class="ltx_text" id="S4.T2.12.12.36.4.1" style="background-color:#DDEBF7;">75.1</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.12.36.5"><span class="ltx_text" id="S4.T2.12.12.36.5.1" style="background-color:#DDEBF7;">20.9</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.12.36.6"><span class="ltx_text" id="S4.T2.12.12.36.6.1" style="background-color:#DDEBF7;">26.5</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.12.36.7"><span class="ltx_text" id="S4.T2.12.12.36.7.1" style="background-color:#DDEBF7;">11.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.12.36.8"><span class="ltx_text" id="S4.T2.12.12.36.8.1" style="background-color:#DDEBF7;">15.2</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.12.36.9"><span class="ltx_text" id="S4.T2.12.12.36.9.1" style="background-color:#DDEBF7;">29.9</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.12.12.37" style="background-color:#DDEBF7;">
<td class="ltx_td ltx_align_left" id="S4.T2.12.12.37.1"><span class="ltx_text" id="S4.T2.12.12.37.1.1" style="background-color:#DDEBF7;">MathFusion-Mistral-7B (<span class="ltx_text ltx_font_italic" id="S4.T2.12.12.37.1.1.1" style="background-color:#DDEBF7;">Conditional</span>)</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.12.37.2"><span class="ltx_text" id="S4.T2.12.12.37.2.1" style="background-color:#DDEBF7;">30K</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.12.37.3"><span class="ltx_text" id="S4.T2.12.12.37.3.1" style="background-color:#DDEBF7;">26.3</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.12.37.4"><span class="ltx_text" id="S4.T2.12.12.37.4.1" style="background-color:#DDEBF7;">73.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.12.37.5"><span class="ltx_text" id="S4.T2.12.12.37.5.1" style="background-color:#DDEBF7;">15.6</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.12.37.6"><span class="ltx_text" id="S4.T2.12.12.37.6.1" style="background-color:#DDEBF7;">21.4</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.12.37.7"><span class="ltx_text" id="S4.T2.12.12.37.7.1" style="background-color:#DDEBF7;">7.3</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.12.37.8"><span class="ltx_text" id="S4.T2.12.12.37.8.1" style="background-color:#DDEBF7;">12.8</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.12.37.9"><span class="ltx_text" id="S4.T2.12.12.37.9.1" style="background-color:#DDEBF7;">26.1</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.5.5.5">
<td class="ltx_td ltx_align_left" id="S4.T2.5.5.5.1">Mistral-7B-MetaMath<sup class="ltx_sup" id="S4.T2.5.5.5.1.1">†</sup>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.5.5.2">60K</td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.5.5.3">22.7</td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.5.5.4">70.8</td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.5.5.5">14.1</td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.5.5.6">27.2</td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.5.5.7">5.0</td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.5.5.8">12.2</td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.5.5.9">25.3</td>
</tr>
<tr class="ltx_tr" id="S4.T2.6.6.6">
<td class="ltx_td ltx_align_left" id="S4.T2.6.6.6.1">Mistral-7B-MMIQC<sup class="ltx_sup" id="S4.T2.6.6.6.1.1">†</sup>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.6.2">60K</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.6.3">17.3</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.6.4">61.4</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.6.5">11.1</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.6.6">13.5</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.6.7">5.0</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.6.8">5.9</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.6.9">19.0</td>
</tr>
<tr class="ltx_tr" id="S4.T2.7.7.7">
<td class="ltx_td ltx_align_left" id="S4.T2.7.7.7.1">Mistral-7B-RefAug<sup class="ltx_sup" id="S4.T2.7.7.7.1.1">†</sup>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.7.7.7.2">60K</td>
<td class="ltx_td ltx_align_center" id="S4.T2.7.7.7.3">17.4</td>
<td class="ltx_td ltx_align_center" id="S4.T2.7.7.7.4">63.1</td>
<td class="ltx_td ltx_align_center" id="S4.T2.7.7.7.5">12.5</td>
<td class="ltx_td ltx_align_center" id="S4.T2.7.7.7.6">18.1</td>
<td class="ltx_td ltx_align_center" id="S4.T2.7.7.7.7">3.9</td>
<td class="ltx_td ltx_align_center" id="S4.T2.7.7.7.8">11.1</td>
<td class="ltx_td ltx_align_center" id="S4.T2.7.7.7.9">21.0</td>
</tr>
<tr class="ltx_tr" id="S4.T2.8.8.8">
<td class="ltx_td ltx_align_left" id="S4.T2.8.8.8.1">Mistral-7B-DART-Math<sup class="ltx_sup" id="S4.T2.8.8.8.1.1">†</sup>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.8.8.8.2">60K</td>
<td class="ltx_td ltx_align_center" id="S4.T2.8.8.8.3">34.1</td>
<td class="ltx_td ltx_align_center" id="S4.T2.8.8.8.4">77.2</td>
<td class="ltx_td ltx_align_center" id="S4.T2.8.8.8.5">23.4</td>
<td class="ltx_td ltx_align_center" id="S4.T2.8.8.8.6">36.0</td>
<td class="ltx_td ltx_align_center" id="S4.T2.8.8.8.7">8.7</td>
<td class="ltx_td ltx_align_center" id="S4.T2.8.8.8.8"><span class="ltx_text ltx_font_bold" id="S4.T2.8.8.8.8.1">18.2</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.8.8.8.9">32.9</td>
</tr>
<tr class="ltx_tr" id="S4.T2.12.12.38" style="background-color:#DDEBF7;">
<td class="ltx_td ltx_align_left" id="S4.T2.12.12.38.1"><span class="ltx_text" id="S4.T2.12.12.38.1.1" style="background-color:#DDEBF7;">MathFusion-Mistral-7B</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.12.38.2"><span class="ltx_text" id="S4.T2.12.12.38.2.1" style="background-color:#DDEBF7;">60K</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.12.38.3"><span class="ltx_text ltx_font_bold" id="S4.T2.12.12.38.3.1" style="background-color:#DDEBF7;">41.6</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.12.38.4"><span class="ltx_text ltx_font_bold" id="S4.T2.12.12.38.4.1" style="background-color:#DDEBF7;">79.8</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.12.38.5"><span class="ltx_text ltx_font_bold" id="S4.T2.12.12.38.5.1" style="background-color:#DDEBF7;">24.3</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.12.38.6"><span class="ltx_text ltx_font_bold" id="S4.T2.12.12.38.6.1" style="background-color:#DDEBF7;">39.2</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.12.38.7"><span class="ltx_text ltx_font_bold" id="S4.T2.12.12.38.7.1" style="background-color:#DDEBF7;">13.6</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.12.38.8"><span class="ltx_text" id="S4.T2.12.12.38.8.1" style="background-color:#DDEBF7;">18.1</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.12.38.9"><span class="ltx_text ltx_font_bold" id="S4.T2.12.12.38.9.1" style="background-color:#DDEBF7;">36.1</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.12.12.39">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="9" id="S4.T2.12.12.39.1"><span class="ltx_text ltx_font_bold" id="S4.T2.12.12.39.1.1">Llama3-8B (7-8B General Base Model)</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.12.12.40">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T2.12.12.40.1">Llama3-8B-MetaMath</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.12.12.40.2">400K</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.12.12.40.3">32.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.12.12.40.4">77.3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.12.12.40.5">20.6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.12.12.40.6">35.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.12.12.40.7">5.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.12.12.40.8">13.8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.12.12.40.9">30.8</td>
</tr>
<tr class="ltx_tr" id="S4.T2.12.12.41">
<td class="ltx_td ltx_align_left" id="S4.T2.12.12.41.1">Llama3-8B-RFT</td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.12.41.2">590K</td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.12.41.3">39.7</td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.12.41.4"><span class="ltx_text ltx_font_bold" id="S4.T2.12.12.41.4.1">81.7</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.12.41.5">23.9</td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.12.41.6">41.7</td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.12.41.7">9.3</td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.12.41.8">14.9</td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.12.41.9">35.2</td>
</tr>
<tr class="ltx_tr" id="S4.T2.12.12.42">
<td class="ltx_td ltx_align_left" id="S4.T2.12.12.42.1">Llama3-8B-MMIQC</td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.12.42.2">2.3M</td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.12.42.3">39.5</td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.12.42.4">77.6</td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.12.42.5"><span class="ltx_text ltx_font_bold" id="S4.T2.12.12.42.5.1">29.5</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.12.42.6">41.0</td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.12.42.7">9.6</td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.12.42.8">16.2</td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.12.42.9">35.6</td>
</tr>
<tr class="ltx_tr" id="S4.T2.12.12.43">
<td class="ltx_td ltx_align_left" id="S4.T2.12.12.43.1">Llama3-8B-DART-Math</td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.12.43.2">590K</td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.12.43.3"><span class="ltx_text ltx_font_bold" id="S4.T2.12.12.43.3.1">46.6</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.12.43.4">81.1</td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.12.43.5">28.8</td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.12.43.6"><span class="ltx_text ltx_font_bold" id="S4.T2.12.12.43.6.1">48.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.12.43.7"><span class="ltx_text ltx_font_bold" id="S4.T2.12.12.43.7.1">14.5</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.12.43.8"><span class="ltx_text ltx_font_bold" id="S4.T2.12.12.43.8.1">19.4</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.12.43.9"><span class="ltx_text ltx_font_bold" id="S4.T2.12.12.43.9.1">39.7</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.12.12.44">
<td class="ltx_td ltx_align_left" id="S4.T2.12.12.44.1">
<span class="ltx_ERROR undefined" id="S4.T2.12.12.44.1.1">\hdashline</span>Llama3-8B-Standard</td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.12.44.2">15K</td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.12.44.3">17.5</td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.12.44.4">65.4</td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.12.44.5">12.9</td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.12.44.6">21.6</td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.12.44.7">4.7</td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.12.44.8">10.9</td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.12.44.9">22.2</td>
</tr>
<tr class="ltx_tr" id="S4.T2.12.12.45">
<td class="ltx_td ltx_align_left" id="S4.T2.12.12.45.1">Llama3-8B-RefAug</td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.12.45.2">30K</td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.12.45.3">20.8</td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.12.45.4">67.3</td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.12.45.5">15.7</td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.12.45.6">25.9</td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.12.45.7">4.7</td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.12.45.8">13.6</td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.12.45.9">24.7</td>
</tr>
<tr class="ltx_tr" id="S4.T2.12.12.46" style="background-color:#DDEBF7;">
<td class="ltx_td ltx_align_left" id="S4.T2.12.12.46.1"><span class="ltx_text" id="S4.T2.12.12.46.1.1" style="background-color:#DDEBF7;">MathFusion-Llama3-8B (<span class="ltx_text ltx_font_italic" id="S4.T2.12.12.46.1.1.1" style="background-color:#DDEBF7;">Sequential</span>)</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.12.46.2"><span class="ltx_text" id="S4.T2.12.12.46.2.1" style="background-color:#DDEBF7;">30K</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.12.46.3"><span class="ltx_text" id="S4.T2.12.12.46.3.1" style="background-color:#DDEBF7;">38.8</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.12.46.4"><span class="ltx_text" id="S4.T2.12.12.46.4.1" style="background-color:#DDEBF7;">77.9</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.12.46.5"><span class="ltx_text" id="S4.T2.12.12.46.5.1" style="background-color:#DDEBF7;">25.1</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.12.46.6"><span class="ltx_text" id="S4.T2.12.12.46.6.1" style="background-color:#DDEBF7;">42.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.12.46.7"><span class="ltx_text" id="S4.T2.12.12.46.7.1" style="background-color:#DDEBF7;">12.6</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.12.46.8"><span class="ltx_text" id="S4.T2.12.12.46.8.1" style="background-color:#DDEBF7;">17.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.12.46.9"><span class="ltx_text" id="S4.T2.12.12.46.9.1" style="background-color:#DDEBF7;">35.6</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.12.12.47" style="background-color:#DDEBF7;">
<td class="ltx_td ltx_align_left" id="S4.T2.12.12.47.1"><span class="ltx_text" id="S4.T2.12.12.47.1.1" style="background-color:#DDEBF7;">MathFusion-Llama3-8B (<span class="ltx_text ltx_font_italic" id="S4.T2.12.12.47.1.1.1" style="background-color:#DDEBF7;">Parallel</span>)</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.12.47.2"><span class="ltx_text" id="S4.T2.12.12.47.2.1" style="background-color:#DDEBF7;">30K</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.12.47.3"><span class="ltx_text" id="S4.T2.12.12.47.3.1" style="background-color:#DDEBF7;">38.1</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.12.47.4"><span class="ltx_text" id="S4.T2.12.12.47.4.1" style="background-color:#DDEBF7;">75.4</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.12.47.5"><span class="ltx_text" id="S4.T2.12.12.47.5.1" style="background-color:#DDEBF7;">25.5</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.12.47.6"><span class="ltx_text" id="S4.T2.12.12.47.6.1" style="background-color:#DDEBF7;">41.9</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.12.47.7"><span class="ltx_text" id="S4.T2.12.12.47.7.1" style="background-color:#DDEBF7;">11.9</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.12.47.8"><span class="ltx_text" id="S4.T2.12.12.47.8.1" style="background-color:#DDEBF7;">18.9</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.12.47.9"><span class="ltx_text" id="S4.T2.12.12.47.9.1" style="background-color:#DDEBF7;">35.3</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.12.12.48" style="background-color:#DDEBF7;">
<td class="ltx_td ltx_align_left" id="S4.T2.12.12.48.1"><span class="ltx_text" id="S4.T2.12.12.48.1.1" style="background-color:#DDEBF7;">MathFusion-Llama3-8B (<span class="ltx_text ltx_font_italic" id="S4.T2.12.12.48.1.1.1" style="background-color:#DDEBF7;">Conditional</span>)</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.12.48.2"><span class="ltx_text" id="S4.T2.12.12.48.2.1" style="background-color:#DDEBF7;">30K</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.12.48.3"><span class="ltx_text" id="S4.T2.12.12.48.3.1" style="background-color:#DDEBF7;">34.7</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.12.48.4"><span class="ltx_text" id="S4.T2.12.12.48.4.1" style="background-color:#DDEBF7;">76.9</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.12.48.5"><span class="ltx_text" id="S4.T2.12.12.48.5.1" style="background-color:#DDEBF7;">21.2</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.12.48.6"><span class="ltx_text" id="S4.T2.12.12.48.6.1" style="background-color:#DDEBF7;">27.4</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.12.48.7"><span class="ltx_text" id="S4.T2.12.12.48.7.1" style="background-color:#DDEBF7;">11.9</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.12.48.8"><span class="ltx_text" id="S4.T2.12.12.48.8.1" style="background-color:#DDEBF7;">15.5</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.12.48.9"><span class="ltx_text" id="S4.T2.12.12.48.9.1" style="background-color:#DDEBF7;">31.3</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.9.9.9">
<td class="ltx_td ltx_align_left" id="S4.T2.9.9.9.1">Llama3-8B-MetaMath<sup class="ltx_sup" id="S4.T2.9.9.9.1.1">†</sup>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.9.9.9.2">60K</td>
<td class="ltx_td ltx_align_center" id="S4.T2.9.9.9.3">28.7</td>
<td class="ltx_td ltx_align_center" id="S4.T2.9.9.9.4">78.5</td>
<td class="ltx_td ltx_align_center" id="S4.T2.9.9.9.5">19.7</td>
<td class="ltx_td ltx_align_center" id="S4.T2.9.9.9.6">31.3</td>
<td class="ltx_td ltx_align_center" id="S4.T2.9.9.9.7">5.3</td>
<td class="ltx_td ltx_align_center" id="S4.T2.9.9.9.8">16.1</td>
<td class="ltx_td ltx_align_center" id="S4.T2.9.9.9.9">29.9</td>
</tr>
<tr class="ltx_tr" id="S4.T2.10.10.10">
<td class="ltx_td ltx_align_left" id="S4.T2.10.10.10.1">Llama3-8B-MMIQC<sup class="ltx_sup" id="S4.T2.10.10.10.1.1">†</sup>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.10.10.10.2">60K</td>
<td class="ltx_td ltx_align_center" id="S4.T2.10.10.10.3">24.4</td>
<td class="ltx_td ltx_align_center" id="S4.T2.10.10.10.4">69.7</td>
<td class="ltx_td ltx_align_center" id="S4.T2.10.10.10.5">13.4</td>
<td class="ltx_td ltx_align_center" id="S4.T2.10.10.10.6">30.9</td>
<td class="ltx_td ltx_align_center" id="S4.T2.10.10.10.7">5.2</td>
<td class="ltx_td ltx_align_center" id="S4.T2.10.10.10.8">10.6</td>
<td class="ltx_td ltx_align_center" id="S4.T2.10.10.10.9">25.7</td>
</tr>
<tr class="ltx_tr" id="S4.T2.11.11.11">
<td class="ltx_td ltx_align_left" id="S4.T2.11.11.11.1">Llama3-8B-RefAug<sup class="ltx_sup" id="S4.T2.11.11.11.1.1">†</sup>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.11.11.11.2">60K</td>
<td class="ltx_td ltx_align_center" id="S4.T2.11.11.11.3">20.3</td>
<td class="ltx_td ltx_align_center" id="S4.T2.11.11.11.4">68.6</td>
<td class="ltx_td ltx_align_center" id="S4.T2.11.11.11.5">15.5</td>
<td class="ltx_td ltx_align_center" id="S4.T2.11.11.11.6">29.1</td>
<td class="ltx_td ltx_align_center" id="S4.T2.11.11.11.7">5.5</td>
<td class="ltx_td ltx_align_center" id="S4.T2.11.11.11.8">13.0</td>
<td class="ltx_td ltx_align_center" id="S4.T2.11.11.11.9">25.3</td>
</tr>
<tr class="ltx_tr" id="S4.T2.12.12.12">
<td class="ltx_td ltx_align_left" id="S4.T2.12.12.12.1">Llama3-8B-DART-Math<sup class="ltx_sup" id="S4.T2.12.12.12.1.1">†</sup>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.12.12.2">60K</td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.12.12.3">39.6</td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.12.12.4"><span class="ltx_text ltx_font_bold" id="S4.T2.12.12.12.4.1">82.2</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.12.12.5"><span class="ltx_text ltx_font_bold" id="S4.T2.12.12.12.5.1">27.9</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.12.12.6">39.9</td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.12.12.7">12.9</td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.12.12.8"><span class="ltx_text ltx_font_bold" id="S4.T2.12.12.12.8.1">22.9</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.12.12.9">37.6</td>
</tr>
<tr class="ltx_tr" id="S4.T2.12.12.49" style="background-color:#DDEBF7;">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S4.T2.12.12.49.1"><span class="ltx_text" id="S4.T2.12.12.49.1.1" style="background-color:#DDEBF7;">MathFusion-Llama3-8B</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.12.12.49.2"><span class="ltx_text" id="S4.T2.12.12.49.2.1" style="background-color:#DDEBF7;">60K</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.12.12.49.3"><span class="ltx_text ltx_font_bold" id="S4.T2.12.12.49.3.1" style="background-color:#DDEBF7;">46.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.12.12.49.4"><span class="ltx_text ltx_font_bold" id="S4.T2.12.12.49.4.1" style="background-color:#DDEBF7;">79.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.12.12.49.5"><span class="ltx_text ltx_font_bold" id="S4.T2.12.12.49.5.1" style="background-color:#DDEBF7;">27.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.12.12.49.6"><span class="ltx_text ltx_font_bold" id="S4.T2.12.12.49.6.1" style="background-color:#DDEBF7;">43.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.12.12.49.7"><span class="ltx_text ltx_font_bold" id="S4.T2.12.12.49.7.1" style="background-color:#DDEBF7;">17.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.12.12.49.8"><span class="ltx_text" id="S4.T2.12.12.49.8.1" style="background-color:#DDEBF7;">20.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.12.12.49.9"><span class="ltx_text ltx_font_bold" id="S4.T2.12.12.49.9.1" style="background-color:#DDEBF7;">39.0</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 Table 2 presents a performance comparison of various Large Language Models (LLMs) on six mathematical reasoning benchmarks: MATH, GSM8K, CollegeMATH, DeepMind-Mathematics, OlympiadBench-Math, and TheoremQA.  The table is organized to show the impact of different training data sizes and augmentation methods.  Models are grouped by their base architecture (7B math-specialized or 7-8B general) and the amount of training data used (with 60K samples serving as a key division point). Results for MathFusion, along with several key comparative LLMs, are shown.  The 'Standard' row indicates performance with minimal augmentation, while MathFusion results are broken down by fusion strategy (Sequential, Parallel, Conditional).  Note that most baseline results come from the DART-Math paper, with some exceptions explicitly stated.
> <details>
> <summary>read the caption</summary>
> Table 2:  Performance comparison on mathematical benchmarks including MATH, GSM8K, CollegeMATH (College), DeepMind-Mathematics (DM), OlympiadBench-Math (Olympiad), and TheoremQA (Theorem). The table is organized by the base model and the number of training samples, using 60K as the threshold for splitting. The best results are highlighted in bold. Rows are sorted according to data size. Most of the baseline results are derived from DART-Math (Tong et al., 2024), except for the Standard, RefAug (Zhang et al., 2024), and baseline labeled with †, which are our own runs. Sequential, Parallel, and Conditional indicate training on the union of GSM8K, MATH, and the respective fused dataset.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S4.T3.1.1">
<tr class="ltx_tr" id="S4.T3.1.1.1">
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T3.1.1.1.1">Method</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T3.1.1.1.2">Sequential</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T3.1.1.1.3">Parallel</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T3.1.1.1.4">Conditional</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T3.1.1.1.5">MATH</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T3.1.1.1.6">GSM8K</td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.1.2">
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.1.2.1">Standard</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.1.2.2"><span class="ltx_text" id="S4.T3.1.1.2.2.1">✗</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.1.2.3"><span class="ltx_text" id="S4.T3.1.1.2.3.1">✗</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.1.2.4"><span class="ltx_text" id="S4.T3.1.1.2.4.1">✗</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.1.2.5">17.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.1.2.6">65.4</td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.1.3">
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T3.1.1.3.1" rowspan="4"><span class="ltx_text" id="S4.T3.1.1.3.1.1">MathFusion</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.1.3.2"><span class="ltx_text" id="S4.T3.1.1.3.2.1">✗</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.1.3.3"><span class="ltx_text" id="S4.T3.1.1.3.3.1">✓</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.1.3.4"><span class="ltx_text" id="S4.T3.1.1.3.4.1">✓</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.1.3.5">42.6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.1.3.6">78.2</td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.1.4">
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.4.1"><span class="ltx_text" id="S4.T3.1.1.4.1.1">✓</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.4.2"><span class="ltx_text" id="S4.T3.1.1.4.2.1">✗</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.4.3"><span class="ltx_text" id="S4.T3.1.1.4.3.1">✓</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.4.4">43.0</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.4.5">76.9</td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.1.5">
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.5.1"><span class="ltx_text" id="S4.T3.1.1.5.1.1">✓</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.5.2"><span class="ltx_text" id="S4.T3.1.1.5.2.1">✓</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.5.3"><span class="ltx_text" id="S4.T3.1.1.5.3.1">✗</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.5.4">43.6</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.5.5">79.2</td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.1.6">
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.1.1.6.1"><span class="ltx_text" id="S4.T3.1.1.6.1.1">✓</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.1.1.6.2"><span class="ltx_text" id="S4.T3.1.1.6.2.1">✓</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.1.1.6.3"><span class="ltx_text" id="S4.T3.1.1.6.3.1">✓</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.1.1.6.4"><span class="ltx_text ltx_font_bold" id="S4.T3.1.1.6.4.1">45.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.1.1.6.5"><span class="ltx_text ltx_font_bold" id="S4.T3.1.1.6.5.1">79.9</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of an ablation study to evaluate the individual and combined effects of three different fusion strategies (sequential, parallel, and conditional) on the performance of a Llama3-8B language model in solving mathematical problems.  The standard setting represents the baseline performance of the model without any fusion strategies. The table shows the accuracy achieved on two key benchmarks (MATH and GSM8K) by the model trained with different combinations of fusion strategies, offering insights into their individual and combined contributions to improved mathematical reasoning ability.
> <details>
> <summary>read the caption</summary>
> Table 3: Effect of three fusion strategies on Llama3-8B.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="A2.T4.1.1">
<tr class="ltx_tr" id="A2.T4.1.1.1">
<td class="ltx_td ltx_align_left ltx_border_tt" id="A2.T4.1.1.1.1">Dataset</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A2.T4.1.1.1.2">GSM8K</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A2.T4.1.1.1.3">MATH</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A2.T4.1.1.1.4">Total</td>
</tr>
<tr class="ltx_tr" id="A2.T4.1.1.2">
<td class="ltx_td ltx_align_left ltx_border_t" id="A2.T4.1.1.2.1">Standard</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T4.1.1.2.2">7.5K</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T4.1.1.2.3">7.5K</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T4.1.1.2.4">15K</td>
</tr>
<tr class="ltx_tr" id="A2.T4.1.1.3">
<td class="ltx_td ltx_align_left ltx_border_t" id="A2.T4.1.1.3.1">MathFusionQA (<span class="ltx_text ltx_font_italic" id="A2.T4.1.1.3.1.1">Sequential</span>)</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T4.1.1.3.2">15K</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T4.1.1.3.3">15K</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T4.1.1.3.4">30K</td>
</tr>
<tr class="ltx_tr" id="A2.T4.1.1.4">
<td class="ltx_td ltx_align_left" id="A2.T4.1.1.4.1">MathFusionQA (<span class="ltx_text ltx_font_italic" id="A2.T4.1.1.4.1.1">Parallel</span>)</td>
<td class="ltx_td ltx_align_center" id="A2.T4.1.1.4.2">15K</td>
<td class="ltx_td ltx_align_center" id="A2.T4.1.1.4.3">15K</td>
<td class="ltx_td ltx_align_center" id="A2.T4.1.1.4.4">30K</td>
</tr>
<tr class="ltx_tr" id="A2.T4.1.1.5">
<td class="ltx_td ltx_align_left" id="A2.T4.1.1.5.1">MathFusionQA (<span class="ltx_text ltx_font_italic" id="A2.T4.1.1.5.1.1">Conditional</span>)</td>
<td class="ltx_td ltx_align_center" id="A2.T4.1.1.5.2">15K</td>
<td class="ltx_td ltx_align_center" id="A2.T4.1.1.5.3">15K</td>
<td class="ltx_td ltx_align_center" id="A2.T4.1.1.5.4">30K</td>
</tr>
<tr class="ltx_tr" id="A2.T4.1.1.6">
<td class="ltx_td ltx_align_left ltx_border_bb" id="A2.T4.1.1.6.1">MathFusionQA</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T4.1.1.6.2">30K</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T4.1.1.6.3">30K</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T4.1.1.6.4">60K</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 Table 4 presents a detailed breakdown of the dataset sizes used in the study.  It compares the number of samples in the original GSM8K and MATH datasets with the number of samples added through three different fusion strategies within the MathFusionQA dataset. The total number of samples in the final MathFusionQA dataset, which combines the original data with the augmented data from the three fusion strategies, is also provided.
> <details>
> <summary>read the caption</summary>
> Table 4:  Statistics of the MathFusionQA dataset and the original datasets GSM8K and MATH.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="A3.T5.14.14">
<tr class="ltx_tr" id="A3.T5.14.14.15">
<td class="ltx_td ltx_align_center ltx_border_tt" id="A3.T5.14.14.15.1" rowspan="2"><span class="ltx_text" id="A3.T5.14.14.15.1.1">Model</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="A3.T5.14.14.15.2">In-Domain</td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="4" id="A3.T5.14.14.15.3">Out-of-Domain</td>
<td class="ltx_td ltx_border_tt" id="A3.T5.14.14.15.4"></td>
</tr>
<tr class="ltx_tr" id="A3.T5.14.14.16">
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T5.14.14.16.1">MATH</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T5.14.14.16.2">GSM8K</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T5.14.14.16.3">College</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T5.14.14.16.4">DM</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T5.14.14.16.5">Olympiad</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T5.14.14.16.6">Theorem</td>
<td class="ltx_td ltx_align_center" id="A3.T5.14.14.16.7">AVG</td>
</tr>
<tr class="ltx_tr" id="A3.T5.14.14.17">
<td class="ltx_td ltx_align_left ltx_border_t" id="A3.T5.14.14.17.1">Standard #1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T5.14.14.17.2">17.4</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T5.14.14.17.3">63.1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T5.14.14.17.4">12.1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T5.14.14.17.5">23.1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T5.14.14.17.6">3.7</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T5.14.14.17.7">9.6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T5.14.14.17.8">21.5</td>
</tr>
<tr class="ltx_tr" id="A3.T5.14.14.18">
<td class="ltx_td ltx_align_left" id="A3.T5.14.14.18.1">Standard #2</td>
<td class="ltx_td ltx_align_center" id="A3.T5.14.14.18.2">17.6</td>
<td class="ltx_td ltx_align_center" id="A3.T5.14.14.18.3">63.7</td>
<td class="ltx_td ltx_align_center" id="A3.T5.14.14.18.4">12.6</td>
<td class="ltx_td ltx_align_center" id="A3.T5.14.14.18.5">20.6</td>
<td class="ltx_td ltx_align_center" id="A3.T5.14.14.18.6">4.3</td>
<td class="ltx_td ltx_align_center" id="A3.T5.14.14.18.7">8.9</td>
<td class="ltx_td ltx_align_center" id="A3.T5.14.14.18.8">21.3</td>
</tr>
<tr class="ltx_tr" id="A3.T5.14.14.19">
<td class="ltx_td ltx_align_left" id="A3.T5.14.14.19.1">Standard #3</td>
<td class="ltx_td ltx_align_center" id="A3.T5.14.14.19.2">17.5</td>
<td class="ltx_td ltx_align_center" id="A3.T5.14.14.19.3">65.4</td>
<td class="ltx_td ltx_align_center" id="A3.T5.14.14.19.4">12.9</td>
<td class="ltx_td ltx_align_center" id="A3.T5.14.14.19.5">21.6</td>
<td class="ltx_td ltx_align_center" id="A3.T5.14.14.19.6">4.7</td>
<td class="ltx_td ltx_align_center" id="A3.T5.14.14.19.7">10.9</td>
<td class="ltx_td ltx_align_center" id="A3.T5.14.14.19.8">22.2</td>
</tr>
<tr class="ltx_tr" id="A3.T5.7.7.7">
<td class="ltx_td ltx_align_left" id="A3.T5.7.7.7.8">Standard (Avg.)</td>
<td class="ltx_td ltx_align_center" id="A3.T5.1.1.1.1">17.5<sub class="ltx_sub" id="A3.T5.1.1.1.1.1"><math alttext="\pm" class="ltx_Math" display="inline" id="A3.T5.1.1.1.1.1.m1.1"><semantics id="A3.T5.1.1.1.1.1.m1.1a"><mo id="A3.T5.1.1.1.1.1.m1.1.1" xref="A3.T5.1.1.1.1.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="A3.T5.1.1.1.1.1.m1.1b"><csymbol cd="latexml" id="A3.T5.1.1.1.1.1.m1.1.1.cmml" xref="A3.T5.1.1.1.1.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A3.T5.1.1.1.1.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="A3.T5.1.1.1.1.1.m1.1d">±</annotation></semantics></math>0.1</sub>
</td>
<td class="ltx_td ltx_align_center" id="A3.T5.2.2.2.2">64.1<sub class="ltx_sub" id="A3.T5.2.2.2.2.1"><math alttext="\pm" class="ltx_Math" display="inline" id="A3.T5.2.2.2.2.1.m1.1"><semantics id="A3.T5.2.2.2.2.1.m1.1a"><mo id="A3.T5.2.2.2.2.1.m1.1.1" xref="A3.T5.2.2.2.2.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="A3.T5.2.2.2.2.1.m1.1b"><csymbol cd="latexml" id="A3.T5.2.2.2.2.1.m1.1.1.cmml" xref="A3.T5.2.2.2.2.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A3.T5.2.2.2.2.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="A3.T5.2.2.2.2.1.m1.1d">±</annotation></semantics></math>1.2</sub>
</td>
<td class="ltx_td ltx_align_center" id="A3.T5.3.3.3.3">12.5<sub class="ltx_sub" id="A3.T5.3.3.3.3.1"><math alttext="\pm" class="ltx_Math" display="inline" id="A3.T5.3.3.3.3.1.m1.1"><semantics id="A3.T5.3.3.3.3.1.m1.1a"><mo id="A3.T5.3.3.3.3.1.m1.1.1" xref="A3.T5.3.3.3.3.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="A3.T5.3.3.3.3.1.m1.1b"><csymbol cd="latexml" id="A3.T5.3.3.3.3.1.m1.1.1.cmml" xref="A3.T5.3.3.3.3.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A3.T5.3.3.3.3.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="A3.T5.3.3.3.3.1.m1.1d">±</annotation></semantics></math>0.4</sub>
</td>
<td class="ltx_td ltx_align_center" id="A3.T5.4.4.4.4">21.8<sub class="ltx_sub" id="A3.T5.4.4.4.4.1"><math alttext="\pm" class="ltx_Math" display="inline" id="A3.T5.4.4.4.4.1.m1.1"><semantics id="A3.T5.4.4.4.4.1.m1.1a"><mo id="A3.T5.4.4.4.4.1.m1.1.1" xref="A3.T5.4.4.4.4.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="A3.T5.4.4.4.4.1.m1.1b"><csymbol cd="latexml" id="A3.T5.4.4.4.4.1.m1.1.1.cmml" xref="A3.T5.4.4.4.4.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A3.T5.4.4.4.4.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="A3.T5.4.4.4.4.1.m1.1d">±</annotation></semantics></math>1.3</sub>
</td>
<td class="ltx_td ltx_align_center" id="A3.T5.5.5.5.5">4.2<sub class="ltx_sub" id="A3.T5.5.5.5.5.1"><math alttext="\pm" class="ltx_Math" display="inline" id="A3.T5.5.5.5.5.1.m1.1"><semantics id="A3.T5.5.5.5.5.1.m1.1a"><mo id="A3.T5.5.5.5.5.1.m1.1.1" xref="A3.T5.5.5.5.5.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="A3.T5.5.5.5.5.1.m1.1b"><csymbol cd="latexml" id="A3.T5.5.5.5.5.1.m1.1.1.cmml" xref="A3.T5.5.5.5.5.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A3.T5.5.5.5.5.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="A3.T5.5.5.5.5.1.m1.1d">±</annotation></semantics></math>0.5</sub>
</td>
<td class="ltx_td ltx_align_center" id="A3.T5.6.6.6.6">9.8<sub class="ltx_sub" id="A3.T5.6.6.6.6.1"><math alttext="\pm" class="ltx_Math" display="inline" id="A3.T5.6.6.6.6.1.m1.1"><semantics id="A3.T5.6.6.6.6.1.m1.1a"><mo id="A3.T5.6.6.6.6.1.m1.1.1" xref="A3.T5.6.6.6.6.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="A3.T5.6.6.6.6.1.m1.1b"><csymbol cd="latexml" id="A3.T5.6.6.6.6.1.m1.1.1.cmml" xref="A3.T5.6.6.6.6.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A3.T5.6.6.6.6.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="A3.T5.6.6.6.6.1.m1.1d">±</annotation></semantics></math>1.0</sub>
</td>
<td class="ltx_td ltx_align_center" id="A3.T5.7.7.7.7">21.7<sub class="ltx_sub" id="A3.T5.7.7.7.7.1"><math alttext="\pm" class="ltx_Math" display="inline" id="A3.T5.7.7.7.7.1.m1.1"><semantics id="A3.T5.7.7.7.7.1.m1.1a"><mo id="A3.T5.7.7.7.7.1.m1.1.1" xref="A3.T5.7.7.7.7.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="A3.T5.7.7.7.7.1.m1.1b"><csymbol cd="latexml" id="A3.T5.7.7.7.7.1.m1.1.1.cmml" xref="A3.T5.7.7.7.7.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A3.T5.7.7.7.7.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="A3.T5.7.7.7.7.1.m1.1d">±</annotation></semantics></math>0.5</sub>
</td>
</tr>
<tr class="ltx_tr" id="A3.T5.14.14.20">
<td class="ltx_td ltx_align_left ltx_border_t" id="A3.T5.14.14.20.1">MathFusion #1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T5.14.14.20.2">45.6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T5.14.14.20.3">79.9</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T5.14.14.20.4">27.1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T5.14.14.20.5">44.4</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T5.14.14.20.6">17.2</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T5.14.14.20.7">19.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T5.14.14.20.8">39.0</td>
</tr>
<tr class="ltx_tr" id="A3.T5.14.14.21">
<td class="ltx_td ltx_align_left" id="A3.T5.14.14.21.1">MathFusion #2</td>
<td class="ltx_td ltx_align_center" id="A3.T5.14.14.21.2">45.3</td>
<td class="ltx_td ltx_align_center" id="A3.T5.14.14.21.3">79.8</td>
<td class="ltx_td ltx_align_center" id="A3.T5.14.14.21.4">27.5</td>
<td class="ltx_td ltx_align_center" id="A3.T5.14.14.21.5">45.4</td>
<td class="ltx_td ltx_align_center" id="A3.T5.14.14.21.6">17.0</td>
<td class="ltx_td ltx_align_center" id="A3.T5.14.14.21.7">19.4</td>
<td class="ltx_td ltx_align_center" id="A3.T5.14.14.21.8">39.1</td>
</tr>
<tr class="ltx_tr" id="A3.T5.14.14.22">
<td class="ltx_td ltx_align_left" id="A3.T5.14.14.22.1">MathFusion #3</td>
<td class="ltx_td ltx_align_center" id="A3.T5.14.14.22.2">46.5</td>
<td class="ltx_td ltx_align_center" id="A3.T5.14.14.22.3">79.2</td>
<td class="ltx_td ltx_align_center" id="A3.T5.14.14.22.4">27.9</td>
<td class="ltx_td ltx_align_center" id="A3.T5.14.14.22.5">43.4</td>
<td class="ltx_td ltx_align_center" id="A3.T5.14.14.22.6">17.2</td>
<td class="ltx_td ltx_align_center" id="A3.T5.14.14.22.7">20.0</td>
<td class="ltx_td ltx_align_center" id="A3.T5.14.14.22.8">39.0</td>
</tr>
<tr class="ltx_tr" id="A3.T5.14.14.14">
<td class="ltx_td ltx_align_left ltx_border_bb" id="A3.T5.14.14.14.8">MathFusion(Avg.)</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T5.8.8.8.1">45.8<sub class="ltx_sub" id="A3.T5.8.8.8.1.1"><math alttext="\pm" class="ltx_Math" display="inline" id="A3.T5.8.8.8.1.1.m1.1"><semantics id="A3.T5.8.8.8.1.1.m1.1a"><mo id="A3.T5.8.8.8.1.1.m1.1.1" xref="A3.T5.8.8.8.1.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="A3.T5.8.8.8.1.1.m1.1b"><csymbol cd="latexml" id="A3.T5.8.8.8.1.1.m1.1.1.cmml" xref="A3.T5.8.8.8.1.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A3.T5.8.8.8.1.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="A3.T5.8.8.8.1.1.m1.1d">±</annotation></semantics></math>0.6</sub>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T5.9.9.9.2">79.6<sub class="ltx_sub" id="A3.T5.9.9.9.2.1"><math alttext="\pm" class="ltx_Math" display="inline" id="A3.T5.9.9.9.2.1.m1.1"><semantics id="A3.T5.9.9.9.2.1.m1.1a"><mo id="A3.T5.9.9.9.2.1.m1.1.1" xref="A3.T5.9.9.9.2.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="A3.T5.9.9.9.2.1.m1.1b"><csymbol cd="latexml" id="A3.T5.9.9.9.2.1.m1.1.1.cmml" xref="A3.T5.9.9.9.2.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A3.T5.9.9.9.2.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="A3.T5.9.9.9.2.1.m1.1d">±</annotation></semantics></math>0.4</sub>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T5.10.10.10.3">27.5<sub class="ltx_sub" id="A3.T5.10.10.10.3.1"><math alttext="\pm" class="ltx_Math" display="inline" id="A3.T5.10.10.10.3.1.m1.1"><semantics id="A3.T5.10.10.10.3.1.m1.1a"><mo id="A3.T5.10.10.10.3.1.m1.1.1" xref="A3.T5.10.10.10.3.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="A3.T5.10.10.10.3.1.m1.1b"><csymbol cd="latexml" id="A3.T5.10.10.10.3.1.m1.1.1.cmml" xref="A3.T5.10.10.10.3.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A3.T5.10.10.10.3.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="A3.T5.10.10.10.3.1.m1.1d">±</annotation></semantics></math>0.4</sub>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T5.11.11.11.4">44.4<sub class="ltx_sub" id="A3.T5.11.11.11.4.1"><math alttext="\pm" class="ltx_Math" display="inline" id="A3.T5.11.11.11.4.1.m1.1"><semantics id="A3.T5.11.11.11.4.1.m1.1a"><mo id="A3.T5.11.11.11.4.1.m1.1.1" xref="A3.T5.11.11.11.4.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="A3.T5.11.11.11.4.1.m1.1b"><csymbol cd="latexml" id="A3.T5.11.11.11.4.1.m1.1.1.cmml" xref="A3.T5.11.11.11.4.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A3.T5.11.11.11.4.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="A3.T5.11.11.11.4.1.m1.1d">±</annotation></semantics></math>1.0</sub>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T5.12.12.12.5">17.1<sub class="ltx_sub" id="A3.T5.12.12.12.5.1"><math alttext="\pm" class="ltx_Math" display="inline" id="A3.T5.12.12.12.5.1.m1.1"><semantics id="A3.T5.12.12.12.5.1.m1.1a"><mo id="A3.T5.12.12.12.5.1.m1.1.1" xref="A3.T5.12.12.12.5.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="A3.T5.12.12.12.5.1.m1.1b"><csymbol cd="latexml" id="A3.T5.12.12.12.5.1.m1.1.1.cmml" xref="A3.T5.12.12.12.5.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A3.T5.12.12.12.5.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="A3.T5.12.12.12.5.1.m1.1d">±</annotation></semantics></math>0.1</sub>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T5.13.13.13.6">19.6<sub class="ltx_sub" id="A3.T5.13.13.13.6.1"><math alttext="\pm" class="ltx_Math" display="inline" id="A3.T5.13.13.13.6.1.m1.1"><semantics id="A3.T5.13.13.13.6.1.m1.1a"><mo id="A3.T5.13.13.13.6.1.m1.1.1" xref="A3.T5.13.13.13.6.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="A3.T5.13.13.13.6.1.m1.1b"><csymbol cd="latexml" id="A3.T5.13.13.13.6.1.m1.1.1.cmml" xref="A3.T5.13.13.13.6.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A3.T5.13.13.13.6.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="A3.T5.13.13.13.6.1.m1.1d">±</annotation></semantics></math>0.3</sub>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T5.14.14.14.7">39.0<sub class="ltx_sub" id="A3.T5.14.14.14.7.1"><math alttext="\pm" class="ltx_Math" display="inline" id="A3.T5.14.14.14.7.1.m1.1"><semantics id="A3.T5.14.14.14.7.1.m1.1a"><mo id="A3.T5.14.14.14.7.1.m1.1.1" xref="A3.T5.14.14.14.7.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="A3.T5.14.14.14.7.1.m1.1b"><csymbol cd="latexml" id="A3.T5.14.14.14.7.1.m1.1.1.cmml" xref="A3.T5.14.14.14.7.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A3.T5.14.14.14.7.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="A3.T5.14.14.14.7.1.m1.1d">±</annotation></semantics></math>0.1</sub>
</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents a performance comparison between a standard instruction-tuned LLM and three variants of the MathFusion model across six mathematical reasoning benchmarks.  The MathFusion models incorporate different problem fusion strategies to enhance mathematical reasoning. The table shows the average accuracy and standard deviation across three random runs for each model on each benchmark. This allows for a quantitative assessment of the impact of the MathFusion techniques on model performance compared to a standard baseline.
> <details>
> <summary>read the caption</summary>
> Table 5:  Performance comparison between the standard setting and MathFusion accross six benchmarks with three random runs. The average performance is reported with the standard deviation.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="A3.T6.1.1">
<tr class="ltx_tr" id="A3.T6.1.1.1">
<td class="ltx_td ltx_align_center ltx_border_tt" id="A3.T6.1.1.1.1" rowspan="2"><span class="ltx_text" id="A3.T6.1.1.1.1.1">Model</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A3.T6.1.1.1.2" rowspan="2"><span class="ltx_text" id="A3.T6.1.1.1.2.1"># Samples</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="A3.T6.1.1.1.3">In-Domain</td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="4" id="A3.T6.1.1.1.4">Out-of-Domain</td>
<td class="ltx_td ltx_border_tt" id="A3.T6.1.1.1.5"></td>
</tr>
<tr class="ltx_tr" id="A3.T6.1.1.2">
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T6.1.1.2.1">MATH</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T6.1.1.2.2">GSM8K</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T6.1.1.2.3">College</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T6.1.1.2.4">DM</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T6.1.1.2.5">Olympiad</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T6.1.1.2.6">Theorem</td>
<td class="ltx_td ltx_align_center" id="A3.T6.1.1.2.7">AVG</td>
</tr>
<tr class="ltx_tr" id="A3.T6.1.1.3">
<td class="ltx_td ltx_align_left ltx_border_t" id="A3.T6.1.1.3.1">Standard</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T6.1.1.3.2">15K</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T6.1.1.3.3">17.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T6.1.1.3.4">65.4</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T6.1.1.3.5">12.9</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T6.1.1.3.6">21.6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T6.1.1.3.7">4.7</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T6.1.1.3.8">10.9</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T6.1.1.3.9">22.2</td>
</tr>
<tr class="ltx_tr" id="A3.T6.1.1.4">
<td class="ltx_td ltx_align_left" id="A3.T6.1.1.4.1">Standard + GPT Rewritten</td>
<td class="ltx_td ltx_align_center" id="A3.T6.1.1.4.2">30K</td>
<td class="ltx_td ltx_align_center" id="A3.T6.1.1.4.3">22.8</td>
<td class="ltx_td ltx_align_center" id="A3.T6.1.1.4.4">75.4</td>
<td class="ltx_td ltx_align_center" id="A3.T6.1.1.4.5">11.8</td>
<td class="ltx_td ltx_align_center" id="A3.T6.1.1.4.6">15.7</td>
<td class="ltx_td ltx_align_center" id="A3.T6.1.1.4.7">5.5</td>
<td class="ltx_td ltx_align_center" id="A3.T6.1.1.4.8">9.6</td>
<td class="ltx_td ltx_align_center" id="A3.T6.1.1.4.9">23.5</td>
</tr>
<tr class="ltx_tr" id="A3.T6.1.1.5">
<td class="ltx_td ltx_align_left" id="A3.T6.1.1.5.1">MathFusion (<span class="ltx_text ltx_font_italic" id="A3.T6.1.1.5.1.1">Sequential</span>)</td>
<td class="ltx_td ltx_align_center" id="A3.T6.1.1.5.2">30K</td>
<td class="ltx_td ltx_align_center" id="A3.T6.1.1.5.3">38.8</td>
<td class="ltx_td ltx_align_center" id="A3.T6.1.1.5.4">77.9</td>
<td class="ltx_td ltx_align_center" id="A3.T6.1.1.5.5">25.1</td>
<td class="ltx_td ltx_align_center" id="A3.T6.1.1.5.6">42.0</td>
<td class="ltx_td ltx_align_center" id="A3.T6.1.1.5.7">12.6</td>
<td class="ltx_td ltx_align_center" id="A3.T6.1.1.5.8">17.0</td>
<td class="ltx_td ltx_align_center" id="A3.T6.1.1.5.9">35.6</td>
</tr>
<tr class="ltx_tr" id="A3.T6.1.1.6">
<td class="ltx_td ltx_align_left" id="A3.T6.1.1.6.1">MathFusion (<span class="ltx_text ltx_font_italic" id="A3.T6.1.1.6.1.1">Parallel</span>)</td>
<td class="ltx_td ltx_align_center" id="A3.T6.1.1.6.2">30K</td>
<td class="ltx_td ltx_align_center" id="A3.T6.1.1.6.3">38.1</td>
<td class="ltx_td ltx_align_center" id="A3.T6.1.1.6.4">75.4</td>
<td class="ltx_td ltx_align_center" id="A3.T6.1.1.6.5">25.5</td>
<td class="ltx_td ltx_align_center" id="A3.T6.1.1.6.6">41.9</td>
<td class="ltx_td ltx_align_center" id="A3.T6.1.1.6.7">11.9</td>
<td class="ltx_td ltx_align_center" id="A3.T6.1.1.6.8">18.9</td>
<td class="ltx_td ltx_align_center" id="A3.T6.1.1.6.9">35.3</td>
</tr>
<tr class="ltx_tr" id="A3.T6.1.1.7">
<td class="ltx_td ltx_align_left" id="A3.T6.1.1.7.1">MathFusion (<span class="ltx_text ltx_font_italic" id="A3.T6.1.1.7.1.1">Conditional</span>)</td>
<td class="ltx_td ltx_align_center" id="A3.T6.1.1.7.2">30K</td>
<td class="ltx_td ltx_align_center" id="A3.T6.1.1.7.3">34.7</td>
<td class="ltx_td ltx_align_center" id="A3.T6.1.1.7.4">76.9</td>
<td class="ltx_td ltx_align_center" id="A3.T6.1.1.7.5">21.2</td>
<td class="ltx_td ltx_align_center" id="A3.T6.1.1.7.6">27.4</td>
<td class="ltx_td ltx_align_center" id="A3.T6.1.1.7.7">11.9</td>
<td class="ltx_td ltx_align_center" id="A3.T6.1.1.7.8">15.5</td>
<td class="ltx_td ltx_align_center" id="A3.T6.1.1.7.9">31.3</td>
</tr>
<tr class="ltx_tr" id="A3.T6.1.1.8">
<td class="ltx_td ltx_align_left ltx_border_bb" id="A3.T6.1.1.8.1">MathFusion</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T6.1.1.8.2">60K</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T6.1.1.8.3">46.5</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T6.1.1.8.4">79.2</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T6.1.1.8.5">27.9</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T6.1.1.8.6">43.4</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T6.1.1.8.7">17.2</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T6.1.1.8.8">20.0</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T6.1.1.8.9">39.0</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of an ablation study conducted to assess the impact of using GPT-4o-mini to generate solutions on the Llama3-8B model's performance. It compares the model's performance when trained with the standard training data, data augmented by GPT-4o-mini-generated solutions, and data augmented by the proposed MathFusion method. The comparison is done across multiple metrics on different benchmarks, including in-domain (MATH, GSM8K) and out-of-domain datasets (CollegeMath, DeepMind-Mathematics, OlympiadBench-Math, TheoremQA).  The table helps to isolate the impact of the improved solution generation on the overall performance gains.
> <details>
> <summary>read the caption</summary>
> Table 6:  Ablation study on Llama3-8B about the effect of GPT-4o-mini to generate solutions.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2503.16212/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16212/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16212/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16212/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16212/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16212/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16212/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16212/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16212/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16212/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16212/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16212/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16212/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16212/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16212/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16212/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16212/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16212/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16212/19.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16212/20.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}