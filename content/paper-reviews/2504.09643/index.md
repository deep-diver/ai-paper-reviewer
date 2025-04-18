---
title: "Iterative Self-Training for Code Generation via Reinforced Re-Ranking"
summary: "RewardRanker: A novel self-training approach leveraging PPO to refine code generation by improving reranking accuracy."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Natural Language Processing", "Text Generation", "🏢 MTS AI",]
showSummary: true
date: 2025-04-13
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2504.09643 {{< /keyword >}}
{{< keyword icon="writer" >}} Nikita Sorokin et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-04-15 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2504.09643" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2504.09643" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2504.09643/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Current decoder-based models often produce stochastic outputs, leading to challenges in generating high-quality code for complex programming tasks. Even minor errors can break the entire solution, but leveraging multiple sampled solutions can significantly improve the overall output quality. Code generation can be enhanced by pairing a code generation model with a reranker model, which selects the best solution from the generated samples.



To solve the issue, this paper introduces **RewardRanker**, a novel iterative self-training approach for self-training reranker models using Proximal Policy Optimization (PPO). This method improves both reranking accuracy and the overall code generation process. The model refines the training dataset by re-evaluating outputs and incorporating high-scoring negative examples. Evaluation on the MultiPL-E dataset shows that RewardRanker outperforms larger models and is faster, achieving performance comparable to GPT-4.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} RewardRanker, a novel approach for reward model optimization, refines code reranking through iterative self-training, enhancing precision and code generation quality. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} The approach enables smaller models to outperform larger ones, offering a resource-efficient solution for high code generation and reranking performance. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Training with correct and hard negative examples improves model generalization and reranking decisions across coding tasks. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper introduces RewardRanker, enhancing code generation by combining code generation model with a reranker model, and demonstrates effectiveness through strong experimental results and a novel iterative self-training approach. This approach allows smaller models to outperform larger ones and has comparable performance to GPT-4.

------
#### Visual Insights



![](https://arxiv.org/html/2504.09643/extracted/6358040/2024-10-10_15.21.45.jpg)

> 🔼 This figure illustrates the iterative self-training workflow of the RewardRanker model.  The process begins with supervised fine-tuning of a code generation model (A). This model is then used to generate code samples, which are reranked by the RewardRanker model (B) trained using proximal policy optimization (PPO).  A PPO-based model (C) is then trained, producing new code samples that are evaluated to identify positive and difficult negative examples (D). These new samples are then added to the training dataset (E) which allows for further refinement and retraining of the RewardRanker model, thus completing the iterative refinement loop.
> <details>
> <summary>read the caption</summary>
> Figure 1: Iterative Self-Training Workflow for RewardRanker. The process starts with supervised fine-tuning (A), followed by training the RewardRanker model (B). A PPO-based model (C) is then trained, generating new examples that are evaluated to produce both positive and hard negative samples (D). These samples are fed back into the process for further refinement and retraining (E), completing the iterative loop.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S4.T1.2.2">
<tr class="ltx_tr" id="S4.T1.2.2.3">
<td class="ltx_td ltx_align_center ltx_border_l ltx_border_r ltx_border_t" id="S4.T1.2.2.3.1"><span class="ltx_text ltx_font_bold" id="S4.T1.2.2.3.1.1">Model</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.2.2.3.2"><span class="ltx_text ltx_font_bold" id="S4.T1.2.2.3.2.1">Size</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.2.2.3.3"><span class="ltx_text ltx_font_bold" id="S4.T1.2.2.3.3.1">Python</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.2.2.3.4"><span class="ltx_text ltx_font_bold" id="S4.T1.2.2.3.4.1">C++</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.2.2.3.5"><span class="ltx_text ltx_font_bold" id="S4.T1.2.2.3.5.1">Java</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.2.2.3.6"><span class="ltx_text ltx_font_bold" id="S4.T1.2.2.3.6.1">PHP</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.2.2.3.7"><span class="ltx_text ltx_font_bold" id="S4.T1.2.2.3.7.1">TS</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.2.2.3.8"><span class="ltx_text ltx_font_bold" id="S4.T1.2.2.3.8.1">C#</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.2.2.3.9"><span class="ltx_text ltx_font_bold" id="S4.T1.2.2.3.9.1">Bash</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.2.2.3.10"><span class="ltx_text ltx_font_bold" id="S4.T1.2.2.3.10.1">JS</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.2.2.3.11"><span class="ltx_text ltx_font_bold" id="S4.T1.2.2.3.11.1">Avg</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.2.2.4">
<td class="ltx_td ltx_align_center ltx_border_l ltx_border_r ltx_border_t" colspan="10" id="S4.T1.2.2.4.1">Close models</td>
<td class="ltx_td ltx_border_t" id="S4.T1.2.2.4.2"></td>
</tr>
<tr class="ltx_tr" id="S4.T1.2.2.5">
<td class="ltx_td ltx_align_center ltx_border_l ltx_border_r ltx_border_t" id="S4.T1.2.2.5.1">GPT-3.5-Turbo <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.09643v1#bib.bib22" title="">22</a>]</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.2.2.5.2">-</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.2.2.5.3">76.2</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.2.2.5.4">63.4</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.2.2.5.5">69.2</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.2.2.5.6">60.9</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.2.2.5.7">69.1</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.2.2.5.8">70.8</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.2.2.5.9">42.4</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.2.2.5.10">67.1</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.2.2.5.11">64.9</td>
</tr>
<tr class="ltx_tr" id="S4.T1.2.2.6">
<td class="ltx_td ltx_align_center ltx_border_l ltx_border_r" id="S4.T1.2.2.6.1">GPT-4 <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.09643v1#bib.bib17" title="">17</a>]</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.2.2.6.2">-</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.2.2.6.3">84.1</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.2.2.6.4">76.4</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.2.2.6.5">81.6</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.2.2.6.6">77.2</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.2.2.6.7">77.4</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.2.2.6.8">79.1</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.2.2.6.9">58.2</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.2.2.6.10">78.0</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.2.2.6.11">76.5</td>
</tr>
<tr class="ltx_tr" id="S4.T1.2.2.7">
<td class="ltx_td ltx_align_center ltx_border_l ltx_border_r ltx_border_t" colspan="10" id="S4.T1.2.2.7.1">Open models</td>
<td class="ltx_td ltx_border_t" id="S4.T1.2.2.7.2"></td>
</tr>
<tr class="ltx_tr" id="S4.T1.2.2.8">
<td class="ltx_td ltx_align_center ltx_border_l ltx_border_r ltx_border_t" id="S4.T1.2.2.8.1">DeepSeek-Coder-Instruct <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.09643v1#bib.bib11" title="">11</a>]</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.2.2.8.2">1.3B</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.2.2.8.3">65.2</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.2.2.8.4">45.3</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.2.2.8.5">51.9</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.2.2.8.6">45.3</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.2.2.8.7">59.7</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.2.2.8.8">55.1</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.2.2.8.9">12.7</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.2.2.8.10">52.2</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.2.2.8.11">48.4</td>
</tr>
<tr class="ltx_tr" id="S4.T1.2.2.9">
<td class="ltx_td ltx_align_center ltx_border_l ltx_border_r" id="S4.T1.2.2.9.1">DeepSeek-Coder-Instruct <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.09643v1#bib.bib11" title="">11</a>]</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.2.2.9.2">6.7B</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.2.2.9.3">78.9</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.2.2.9.4">63.4</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.2.2.9.5">68.4</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.2.2.9.6">68.9</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.2.2.9.7">67.2</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.2.2.9.8">72.8</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.2.2.9.9">36.7</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.2.2.9.10">72.7</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.2.2.9.11">66.1</td>
</tr>
<tr class="ltx_tr" id="S4.T1.2.2.10">
<td class="ltx_td ltx_align_center ltx_border_l ltx_border_r" id="S4.T1.2.2.10.1">DeepSeek-Coder-Instruct <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.09643v1#bib.bib11" title="">11</a>]</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.2.2.10.2">33B</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.2.2.10.3"><span class="ltx_text ltx_font_italic" id="S4.T1.2.2.10.3.1">79.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.2.2.10.4">68.9</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.2.2.10.5">73.4</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.2.2.10.6"><span class="ltx_text ltx_font_bold" id="S4.T1.2.2.10.6.1">72.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.2.2.10.7"><span class="ltx_text ltx_font_bold" id="S4.T1.2.2.10.7.1">67.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.2.2.10.8">74.1</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.2.2.10.9"><span class="ltx_text ltx_font_bold" id="S4.T1.2.2.10.9.1">43.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.2.2.10.10">73.9</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.2.2.10.11">69.2</td>
</tr>
<tr class="ltx_tr" id="S4.T1.2.2.11">
<td class="ltx_td ltx_align_center ltx_border_l ltx_border_r" id="S4.T1.2.2.11.1">RewardRanker (1.3B + 6.7B)</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.2.2.11.2">8B</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.2.2.11.3">77.3</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.2.2.11.4">72.3</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.2.2.11.5">70.6</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.2.2.11.6">66.3</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.2.2.11.7">66.0</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.2.2.11.8">74.4</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.2.2.11.9">35.8</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.2.2.11.10">73.9</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.2.2.11.11">67.1</td>
</tr>
<tr class="ltx_tr" id="S4.T1.2.2.12">
<td class="ltx_td ltx_align_center ltx_border_l ltx_border_r" id="S4.T1.2.2.12.1">RewardRanker (6.7B + 6.7B)</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.2.2.12.2">13.4B</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.2.2.12.3">78.9</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.2.2.12.4"><span class="ltx_text ltx_font_italic" id="S4.T1.2.2.12.4.1">75.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.2.2.12.5"><span class="ltx_text ltx_font_italic" id="S4.T1.2.2.12.5.1">74.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.2.2.12.6">72.1</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.2.2.12.7">66.4</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.2.2.12.8"><span class="ltx_text ltx_font_italic" id="S4.T1.2.2.12.8.1">75.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.2.2.12.9">41.4</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.2.2.12.10"><span class="ltx_text ltx_font_italic" id="S4.T1.2.2.12.10.1">74.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.2.2.12.11"><span class="ltx_text ltx_font_italic" id="S4.T1.2.2.12.11.1">69.9</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.1.1">
<td class="ltx_td ltx_align_center ltx_border_l ltx_border_r" id="S4.T1.1.1.1.1">RewardRanker 2 iter.<sub class="ltx_sub" id="S4.T1.1.1.1.1.1"><span class="ltx_text ltx_font_italic" id="S4.T1.1.1.1.1.1.1">hardnegatives</span></sub>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.1.1.1.2">13.4B</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.1.1.1.3">80.2</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.1.1.1.4">77.9</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.1.1.1.5">73.4</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.1.1.1.6">71.6</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.1.1.1.7">66.4</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.1.1.1.8">75.8</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.1.1.1.9">38.2</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.1.1.1.10">73.8</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.1.1.1.11">69.7</td>
</tr>
<tr class="ltx_tr" id="S4.T1.2.2.2">
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_l ltx_border_r" id="S4.T1.2.2.2.1">RewardRanker 2 iter.<sub class="ltx_sub" id="S4.T1.2.2.2.1.1"><span class="ltx_text ltx_font_italic" id="S4.T1.2.2.2.1.1.1">selftraining</span></sub>
</td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r" id="S4.T1.2.2.2.2">13.4B</td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r" id="S4.T1.2.2.2.3"><span class="ltx_text ltx_font_bold" id="S4.T1.2.2.2.3.1">81.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r" id="S4.T1.2.2.2.4"><span class="ltx_text ltx_font_bold" id="S4.T1.2.2.2.4.1">79.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r" id="S4.T1.2.2.2.5"><span class="ltx_text ltx_font_bold" id="S4.T1.2.2.2.5.1">77.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r" id="S4.T1.2.2.2.6"><span class="ltx_text ltx_font_italic" id="S4.T1.2.2.2.6.1">71.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r" id="S4.T1.2.2.2.7"><span class="ltx_text ltx_font_italic" id="S4.T1.2.2.2.7.1">67.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r" id="S4.T1.2.2.2.8"><span class="ltx_text ltx_font_bold" id="S4.T1.2.2.2.8.1">75.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r" id="S4.T1.2.2.2.9"><span class="ltx_text ltx_font_italic" id="S4.T1.2.2.2.9.1">39.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r" id="S4.T1.2.2.2.10"><span class="ltx_text ltx_font_bold" id="S4.T1.2.2.2.10.1">75.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r" id="S4.T1.2.2.2.11"><span class="ltx_text ltx_font_bold" id="S4.T1.2.2.2.11.1">70.9</span></td>
</tr>
</table>{{< /table-caption >}}

> 🔼 This table presents a comparison of the performance of various code generation models on the MultiPL-E benchmark.  The models are evaluated on their ability to solve programming tasks across different programming languages (Python, C++, Java, PHP, TypeScript, C#, Bash, and JavaScript).  The table shows the percentage of tasks solved by each model for each language, along with an average across all languages.  The best result for each language and the overall average is highlighted in bold, while the second-best result is italicized.  This allows for a direct comparison of model performance, highlighting the strengths and weaknesses of each model across various programming paradigms.
> <details>
> <summary>read the caption</summary>
> Table 1: Model performance comparison on MultiPL-E. Best result is in bold, second best is in italic. Percentage of solved tasks.
> </details>





### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2504.09643/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.09643/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.09643/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.09643/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.09643/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.09643/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.09643/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.09643/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.09643/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.09643/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}