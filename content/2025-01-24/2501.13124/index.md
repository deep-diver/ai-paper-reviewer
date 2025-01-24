---
title: "Debate Helps Weak-to-Strong Generalization"
summary: "Debate-enhanced weak supervision boosts AI alignment by combining strong and weak models, enabling safer and more reliable AI systems."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Natural Language Processing", "Large Language Models", "🏢 Tongyi Lab",]
showSummary: true
date: 2025-01-21
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2501.13124 {{< /keyword >}}
{{< keyword icon="writer" >}} Hao Lang et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-01-24 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2501.13124" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2501.13124" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2501.13124/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Current AI alignment methods heavily rely on human supervision, but future superhuman AI models may outpace human capabilities, creating safety concerns.  **This necessitates scalable oversight and weak-to-strong generalization techniques**.  The existing approaches are typically studied separately, limiting their effectiveness.

The paper proposes a novel approach that combines these techniques. It uses a strong pretrained model to improve the quality of supervision provided by a smaller, weaker model. This is achieved through a debate mechanism where the strong model argues for different answers and a weak model learns from the discussion. **The results demonstrate improved alignment on OpenAI's weak-to-strong NLP benchmarks** showing that the combined approach is highly effective.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Debate helps extract reliable information from strong but potentially unreliable AI models. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} Ensembles of weak models improve the robustness of AI alignment supervision. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Combining scalable oversight and weak-to-strong generalization yields significant alignment improvements. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper is important because it addresses the critical challenge of aligning increasingly capable AI models with human values, especially in a future where human oversight may be insufficient.  **It introduces a novel approach combining scalable oversight and weak-to-strong generalization**, demonstrating improved alignment by leveraging debate between strong and weak models. This opens new avenues for research into robust AI alignment techniques that can scale to future superhuman AI systems.

------
#### Visual Insights



![](https://arxiv.org/html/2501.13124/x1.png)

> 🔼 This figure illustrates a three-turn debate between two large language models (LLMs) acting as debaters,  Debater A and Debater B.  Each turn involves a prompt that presents a science knowledge question and an answer, instructing the debaters to argue for or against the correctness of the answer. Debater A argues for the correctness, while Debater B initially argues against it and then presents a counterargument in response to Debater A's points. This process simulates how a debate could help extract reliable information from potentially untrustworthy models, forming a crucial step in the weak-to-strong generalization approach described in the paper.
> <details>
> <summary>read the caption</summary>
> Figure 1: Illustration of debate. Illustration of the debate procedure between debater A and debater B.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="Sx3.T1.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="Sx3.T1.1.1.1">
<th class="ltx_td ltx_align_justify ltx_align_middle ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="Sx3.T1.1.1.1.1" style="width:50.0pt;">
<span class="ltx_inline-block ltx_align_top" id="Sx3.T1.1.1.1.1.1">
<span class="ltx_p" id="Sx3.T1.1.1.1.1.1.1"><span class="ltx_text ltx_font_bold" id="Sx3.T1.1.1.1.1.1.1.1">Debate Turn</span></span>
</span>
</th>
<th class="ltx_td ltx_align_justify ltx_align_middle ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="Sx3.T1.1.1.1.2" style="width:35.0pt;">
<span class="ltx_inline-block ltx_align_top" id="Sx3.T1.1.1.1.2.1">
<span class="ltx_p" id="Sx3.T1.1.1.1.2.1.1"><span class="ltx_text ltx_font_bold" id="Sx3.T1.1.1.1.2.1.1.1">Debater</span></span>
</span>
</th>
<th class="ltx_td ltx_align_justify ltx_align_middle ltx_th ltx_th_column ltx_border_tt" id="Sx3.T1.1.1.1.3" style="width:360.0pt;">
<span class="ltx_inline-block ltx_align_top" id="Sx3.T1.1.1.1.3.1">
<span class="ltx_p" id="Sx3.T1.1.1.1.3.1.1"><span class="ltx_text ltx_font_bold" id="Sx3.T1.1.1.1.3.1.1.1">Prompt</span></span>
</span>
</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="Sx3.T1.1.2.1">
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_r ltx_border_t" id="Sx3.T1.1.2.1.1" style="width:50.0pt;">
<span class="ltx_inline-block ltx_align_top" id="Sx3.T1.1.2.1.1.1">
<span class="ltx_p" id="Sx3.T1.1.2.1.1.1.1">First</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_r ltx_border_t" id="Sx3.T1.1.2.1.2" style="width:35.0pt;">
<span class="ltx_inline-block ltx_align_top" id="Sx3.T1.1.2.1.2.1">
<span class="ltx_p" id="Sx3.T1.1.2.1.2.1.1">A</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_t" id="Sx3.T1.1.2.1.3" style="width:360.0pt;">
<span class="ltx_inline-block ltx_align_top" id="Sx3.T1.1.2.1.3.1">
<span class="ltx_p" id="Sx3.T1.1.2.1.3.1.1"><span class="ltx_text ltx_font_italic" id="Sx3.T1.1.2.1.3.1.1.1">There is a science knowledge question, followed by an answer</span>. Debate with another opponent for whether the answer is <span class="ltx_text ltx_font_italic" id="Sx3.T1.1.2.1.3.1.1.2">correct</span> or <span class="ltx_text ltx_font_italic" id="Sx3.T1.1.2.1.3.1.1.3">incorrect</span>. Construct your argument for why the answer is <span class="ltx_text ltx_font_italic" id="Sx3.T1.1.2.1.3.1.1.4">correct</span>.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="Sx3.T1.1.3.2">
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_r ltx_border_t" id="Sx3.T1.1.3.2.1" style="width:50.0pt;">
<span class="ltx_inline-block ltx_align_top" id="Sx3.T1.1.3.2.1.1">
<span class="ltx_p" id="Sx3.T1.1.3.2.1.1.1">Second</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_r ltx_border_t" id="Sx3.T1.1.3.2.2" style="width:35.0pt;">
<span class="ltx_inline-block ltx_align_top" id="Sx3.T1.1.3.2.2.1">
<span class="ltx_p" id="Sx3.T1.1.3.2.2.1.1">B</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_t" id="Sx3.T1.1.3.2.3" style="width:360.0pt;">
<span class="ltx_inline-block ltx_align_top" id="Sx3.T1.1.3.2.3.1">
<span class="ltx_p" id="Sx3.T1.1.3.2.3.1.1"><span class="ltx_text ltx_font_italic" id="Sx3.T1.1.3.2.3.1.1.1">There is a science knowledge question, followed by an answer</span>. Debate with another opponent for whether the answer is <span class="ltx_text ltx_font_italic" id="Sx3.T1.1.3.2.3.1.1.2">correct</span> or <span class="ltx_text ltx_font_italic" id="Sx3.T1.1.3.2.3.1.1.3">incorrect</span>. Construct your argument for why the answer is <span class="ltx_text ltx_font_italic" id="Sx3.T1.1.3.2.3.1.1.4">incorrect</span> and list out flaws in your opponent’s argument.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="Sx3.T1.1.4.3">
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_bb ltx_border_r ltx_border_t" id="Sx3.T1.1.4.3.1" style="width:50.0pt;">
<span class="ltx_inline-block ltx_align_top" id="Sx3.T1.1.4.3.1.1">
<span class="ltx_p" id="Sx3.T1.1.4.3.1.1.1">Third</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_bb ltx_border_r ltx_border_t" id="Sx3.T1.1.4.3.2" style="width:35.0pt;">
<span class="ltx_inline-block ltx_align_top" id="Sx3.T1.1.4.3.2.1">
<span class="ltx_p" id="Sx3.T1.1.4.3.2.1.1">A</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_bb ltx_border_t" id="Sx3.T1.1.4.3.3" style="width:360.0pt;">
<span class="ltx_inline-block ltx_align_top" id="Sx3.T1.1.4.3.3.1">
<span class="ltx_p" id="Sx3.T1.1.4.3.3.1.1"><span class="ltx_text ltx_font_italic" id="Sx3.T1.1.4.3.3.1.1.1">There is a science knowledge question, followed by an answer</span>. Debate with another opponent for whether the answer is <span class="ltx_text ltx_font_italic" id="Sx3.T1.1.4.3.3.1.1.2">correct</span> or <span class="ltx_text ltx_font_italic" id="Sx3.T1.1.4.3.3.1.1.3">incorrect</span>. Construct the counterargument to opponent’s argument.</span>
</span>
</td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 This table details the prompts used to initiate a debate between two AI models (Debater A and Debater B) on a binary classification problem.  The problem originates from the SciQ dataset, where each question has two possible answers: correct and incorrect.  Debater A and Debater B are randomly assigned one of these answers. The debate proceeds over three turns, with each debater providing arguments to support their assigned answer and refute the opponent's claims.  Crucially, the transcript of the debate is appended to the prompt for each subsequent turn, making the debate contextually aware.
> <details>
> <summary>read the caption</summary>
> Table 1: Prompts to induce debate on a binary classification problem. The binary classification problem is converted from the SciQ dataset. Two answer choices correct and incorrect are randomly assigned to debater A and B. Debate runs for three turns. We also append the current debate transcript to the prompt.
> </details>





### In-depth insights


#### Weak-to-Strong Alignment
Weak-to-strong alignment in AI focuses on bridging the gap between human-level supervision (weak) and the capabilities of increasingly powerful models (strong).  **The core challenge lies in the limitation of human ability to effectively evaluate and correct the outputs of advanced AI systems.**  This necessitates developing methods that enable strong models to learn and generalize effectively from limited, imperfect human feedback.  **Approaches include techniques like debate, where a strong model argues with another to refine its understanding, thus providing a more robust signal for the weak model to learn from.**  Furthermore, using ensembles of weak models to aggregate supervision signals can enhance robustness.  **A key aspect is ensuring that the weak supervision is trustworthy and properly guides the strong model towards desired behavior.**  The goal is not just performance improvement but ensuring safety and alignment with human values, which is particularly critical as AI systems surpass human capabilities.

#### Debate's Role
The paper explores debate as a mechanism to improve weak-to-strong generalization in AI alignment.  **Debate forces a strong, potentially unreliable model to justify its reasoning, making its output more transparent and allowing a weaker model to extract more trustworthy information.** This process enhances the weaker model's ability to create more robust supervision signals for the strong model.  The paper demonstrates that using an ensemble of weak models, each trained on different debate transcripts, further strengthens this supervision. This approach combines the strengths of scalable oversight (improving human supervision) and weak-to-strong generalization (improving alignment using weak data), offering a novel technique for training safer and more aligned AI systems. **The core innovation is leveraging debate, not merely as an evaluation technique, but as a data augmentation and knowledge extraction method for training a more reliable weak model.** The experimental results on several NLP tasks show that this debate-based approach significantly outperforms baseline methods, highlighting debate's effectiveness as a tool in AI alignment.

#### Ensemble Methods
The concept of ensemble methods within the context of weak-to-strong generalization in AI alignment is crucial.  It addresses the limitations of relying on single weak models to supervise powerful, potentially misaligned strong models. **By combining predictions from multiple weak models, an ensemble approach enhances robustness and accuracy.** This is particularly important when dealing with noisy or unreliable weak supervision signals, as is often the case with human-provided feedback on complex AI tasks. The authors explore this by creating an ensemble of weak models, each trained with different debate transcripts from a strong model debate. This diversity in training data helps improve the overall reliability of the weak supervision signal and enhances the capabilities of the weak-to-strong generalization process.  **The choice of ensemble type (debate ensembles versus finetune ensembles) significantly impacts performance**, highlighting the need for careful consideration of data diversity in ensemble construction.  Overall, the study emphasizes the significant role of ensemble methods in bridging the gap between weak human supervision and the reliable training of strong AI models, leading to more effective and safe AI alignment.

#### Scalable Oversight
Scalable oversight addresses the challenge of maintaining effective human supervision as AI models surpass human capabilities.  **The core problem is the scalability of human evaluation**:  as models become more complex, manually verifying their behavior becomes increasingly difficult and expensive.  Therefore, scalable oversight aims to **develop methods that allow humans to more efficiently oversee powerful AI systems**. This could involve techniques such as improved evaluation interfaces, **automated assistance for human reviewers**, or **the development of more easily-auditable AI architectures**.  Ultimately, the goal is to create systems where human oversight can remain relevant and effective even as AI capabilities grow exponentially.  **Key research areas include improved human-AI collaboration tools, algorithms that highlight potentially problematic model behavior, and new methods for decomposing complex AI systems into more manageable components for evaluation.**  Success in scalable oversight is critical for ensuring the safety and alignment of advanced AI.

#### Future Directions
Future research should prioritize expanding the scope of debate techniques beyond binary classification tasks.  Exploring more complex scenarios and diverse question types would allow for a more robust evaluation of the method's effectiveness and generalizability.  **Investigating the interplay between debate structure (number of turns, participant roles) and model performance** is crucial for optimizing this approach.  Furthermore, research should focus on developing more efficient and scalable ensemble methods for weak model training, addressing the computational cost associated with larger ensembles.  **Addressing the limitations of current pretrained models** is key, as the strong model's trustworthiness significantly affects the quality of weak supervision.  Finally, a deeper investigation into the potential of debate in enhancing other alignment methods, such as RLHF, and exploring its applicability to other modalities (e.g., vision) could reveal valuable synergistic effects and broader implications for AI safety.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2501.13124/x2.png)

> 🔼 This figure displays the results of an ablation study investigating the impact of varying the number of weak models within an ensemble on the performance of a weak-to-strong generalization approach.  The x-axis represents the number of weak models in the ensemble (cardinality), and the y-axis shows the accuracy achieved.  Two datasets, SciQ and AnthropicHH, are shown, illustrating how the optimal ensemble size may vary depending on the dataset. The experiment uses debate ensembles, a specific type of ensemble where the weak models are trained on different debate transcripts.  The figure demonstrates the relationship between ensemble size and model performance, showing that beyond a certain cardinality (e.g. 4 models), increasing the number of weak models provides diminishing returns.
> <details>
> <summary>read the caption</summary>
> Figure 2: Ablation study on the cardinality of the ensemble. Here, our approach uses debate ensembles.
> </details>



![](https://arxiv.org/html/2501.13124/x3.png)

> 🔼 This ablation study investigates the impact of varying the number of turns in the debate process on the overall performance of the model.  Using debate ensembles, the experiment measures accuracy on the SciQ and AnthropicHH datasets while adjusting the number of turns in the debate from 3 to 6.  The results illustrate the relationship between debate length and model accuracy, revealing whether extending the debate improves or hinders performance and whether there's a point of diminishing returns.
> <details>
> <summary>read the caption</summary>
> Figure 3: Ablation on the number of turns of debate. Here, our approach uses debate ensembles.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="Sx5.T2.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="Sx5.T2.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="Sx5.T2.1.1.1.1" rowspan="2"><span class="ltx_text ltx_font_bold" id="Sx5.T2.1.1.1.1.1">Performance</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="Sx5.T2.1.1.1.2" rowspan="2"><span class="ltx_text ltx_font_bold" id="Sx5.T2.1.1.1.2.1">Method</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" colspan="2" id="Sx5.T2.1.1.1.3"><span class="ltx_text ltx_font_bold" id="Sx5.T2.1.1.1.3.1">SciQ</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" colspan="2" id="Sx5.T2.1.1.1.4"><span class="ltx_text ltx_font_bold" id="Sx5.T2.1.1.1.4.1">BoolQ</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" colspan="2" id="Sx5.T2.1.1.1.5"><span class="ltx_text ltx_font_bold" id="Sx5.T2.1.1.1.5.1">CosmosQA</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="2" id="Sx5.T2.1.1.1.6"><span class="ltx_text ltx_font_bold" id="Sx5.T2.1.1.1.6.1">AnthropicHH</span></th>
</tr>
<tr class="ltx_tr" id="Sx5.T2.1.2.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="Sx5.T2.1.2.2.1">Acc.</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r" id="Sx5.T2.1.2.2.2">PGR</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="Sx5.T2.1.2.2.3">Acc.</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r" id="Sx5.T2.1.2.2.4">PGR</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="Sx5.T2.1.2.2.5">Acc.</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r" id="Sx5.T2.1.2.2.6">PGR</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="Sx5.T2.1.2.2.7">Acc.</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="Sx5.T2.1.2.2.8">PGR</th>
</tr>
<tr class="ltx_tr" id="Sx5.T2.1.3.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_r ltx_border_t" id="Sx5.T2.1.3.3.1">Weak performance</th>
<th class="ltx_td ltx_th ltx_th_column ltx_border_r ltx_border_t" id="Sx5.T2.1.3.3.2"></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="Sx5.T2.1.3.3.3">90.0</th>
<th class="ltx_td ltx_th ltx_th_column ltx_border_r ltx_border_t" id="Sx5.T2.1.3.3.4"></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="Sx5.T2.1.3.3.5">86.0</th>
<th class="ltx_td ltx_th ltx_th_column ltx_border_r ltx_border_t" id="Sx5.T2.1.3.3.6"></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="Sx5.T2.1.3.3.7">87.5</th>
<th class="ltx_td ltx_th ltx_th_column ltx_border_r ltx_border_t" id="Sx5.T2.1.3.3.8"></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="Sx5.T2.1.3.3.9">48.8</th>
<th class="ltx_td ltx_th ltx_th_column ltx_border_t" id="Sx5.T2.1.3.3.10"></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="Sx5.T2.1.4.1">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="Sx5.T2.1.4.1.1" rowspan="4"><span class="ltx_text" id="Sx5.T2.1.4.1.1.1">Weak-to-strong performance</span></td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="Sx5.T2.1.4.1.2">Finetune</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Sx5.T2.1.4.1.3">91.5</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="Sx5.T2.1.4.1.4">44.1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Sx5.T2.1.4.1.5">88.0</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="Sx5.T2.1.4.1.6">51.3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Sx5.T2.1.4.1.7">88.2</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="Sx5.T2.1.4.1.8">30.4</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Sx5.T2.1.4.1.9">49.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Sx5.T2.1.4.1.10">35.0</td>
</tr>
<tr class="ltx_tr" id="Sx5.T2.1.5.2">
<td class="ltx_td ltx_align_left ltx_border_r" id="Sx5.T2.1.5.2.1">Finetune w/ aux. loss</td>
<td class="ltx_td ltx_align_center" id="Sx5.T2.1.5.2.2">91.4</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="Sx5.T2.1.5.2.3">41.2</td>
<td class="ltx_td ltx_align_center" id="Sx5.T2.1.5.2.4">88.2</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="Sx5.T2.1.5.2.5">56.4</td>
<td class="ltx_td ltx_align_center" id="Sx5.T2.1.5.2.6">87.9</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="Sx5.T2.1.5.2.7">17.4</td>
<td class="ltx_td ltx_align_center" id="Sx5.T2.1.5.2.8">49.5</td>
<td class="ltx_td ltx_align_center" id="Sx5.T2.1.5.2.9">35.0</td>
</tr>
<tr class="ltx_tr" id="Sx5.T2.1.6.3">
<td class="ltx_td ltx_align_left ltx_border_r" id="Sx5.T2.1.6.3.1">Finetune w/ pro. loss</td>
<td class="ltx_td ltx_align_center" id="Sx5.T2.1.6.3.2">91.6</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="Sx5.T2.1.6.3.3">47.1</td>
<td class="ltx_td ltx_align_center" id="Sx5.T2.1.6.3.4">88.1</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="Sx5.T2.1.6.3.5">53.8</td>
<td class="ltx_td ltx_align_center" id="Sx5.T2.1.6.3.6">88.1</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="Sx5.T2.1.6.3.7">26.1</td>
<td class="ltx_td ltx_align_center" id="Sx5.T2.1.6.3.8">49.2</td>
<td class="ltx_td ltx_align_center" id="Sx5.T2.1.6.3.9">20.0</td>
</tr>
<tr class="ltx_tr" id="Sx5.T2.1.7.4">
<td class="ltx_td ltx_align_left ltx_border_r" id="Sx5.T2.1.7.4.1"><span class="ltx_text ltx_font_bold" id="Sx5.T2.1.7.4.1.1">Ours</span></td>
<td class="ltx_td ltx_align_center" id="Sx5.T2.1.7.4.2"><span class="ltx_text ltx_font_bold" id="Sx5.T2.1.7.4.2.1">92.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="Sx5.T2.1.7.4.3"><span class="ltx_text ltx_font_bold" id="Sx5.T2.1.7.4.3.1">76.5</span></td>
<td class="ltx_td ltx_align_center" id="Sx5.T2.1.7.4.4"><span class="ltx_text ltx_font_bold" id="Sx5.T2.1.7.4.4.1">88.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="Sx5.T2.1.7.4.5"><span class="ltx_text ltx_font_bold" id="Sx5.T2.1.7.4.5.1">69.2</span></td>
<td class="ltx_td ltx_align_center" id="Sx5.T2.1.7.4.6"><span class="ltx_text ltx_font_bold" id="Sx5.T2.1.7.4.6.1">88.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="Sx5.T2.1.7.4.7"><span class="ltx_text ltx_font_bold" id="Sx5.T2.1.7.4.7.1">56.5</span></td>
<td class="ltx_td ltx_align_center" id="Sx5.T2.1.7.4.8"><span class="ltx_text ltx_font_bold" id="Sx5.T2.1.7.4.8.1">50.2</span></td>
<td class="ltx_td ltx_align_center" id="Sx5.T2.1.7.4.9"><span class="ltx_text ltx_font_bold" id="Sx5.T2.1.7.4.9.1">70.0</span></td>
</tr>
<tr class="ltx_tr" id="Sx5.T2.1.8.5">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_r ltx_border_t" id="Sx5.T2.1.8.5.1">Strong ceiling performance</td>
<td class="ltx_td ltx_border_bb ltx_border_r ltx_border_t" id="Sx5.T2.1.8.5.2"></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="Sx5.T2.1.8.5.3">93.4</td>
<td class="ltx_td ltx_border_bb ltx_border_r ltx_border_t" id="Sx5.T2.1.8.5.4"></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="Sx5.T2.1.8.5.5">89.9</td>
<td class="ltx_td ltx_border_bb ltx_border_r ltx_border_t" id="Sx5.T2.1.8.5.6"></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="Sx5.T2.1.8.5.7">89.8</td>
<td class="ltx_td ltx_border_bb ltx_border_r ltx_border_t" id="Sx5.T2.1.8.5.8"></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="Sx5.T2.1.8.5.9">50.8</td>
<td class="ltx_td ltx_border_bb ltx_border_t" id="Sx5.T2.1.8.5.10"></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of an experiment comparing different methods for improving the alignment of AI models.  The goal is to enhance the ability of weaker models to learn from, and generalize the knowledge to, stronger models, even with imperfect human supervision. The experiment focuses on binary classification tasks derived from Natural Language Processing (NLP) datasets. The table shows the accuracy and performance gap recovery (PGR) for various approaches. PGR measures how much of the performance gap between a weak model and a strongly trained model the methods can close using only weak supervision. The approaches include finetuning with different loss functions and a novel method using debate between two strong models to generate better training data for the weak model.  The weak and strong model performances using ground truth labels are included as baselines.
> <details>
> <summary>read the caption</summary>
> Table 2: Debate improves weak-to-strong generalization. Test accuarcy (%) and performance gap recovered (PGR) (%) of our approach and baselines on the binary classification tasks converted from NLP classification datasets. Here, our approach uses debate ensembles. Accuracy of weak and strong models trained with ground truth are reported as weak performance and strong ceiling performance, respectively.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="Sx5.T3.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="Sx5.T3.1.1.1">
<th class="ltx_td ltx_align_justify ltx_align_middle ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="Sx5.T3.1.1.1.1" style="width:60.0pt;">
<span class="ltx_inline-block ltx_align_top" id="Sx5.T3.1.1.1.1.1">
<span class="ltx_p" id="Sx5.T3.1.1.1.1.1.1"><span class="ltx_text ltx_font_bold" id="Sx5.T3.1.1.1.1.1.1.1">Protocol</span></span>
</span>
</th>
<th class="ltx_td ltx_align_justify ltx_align_middle ltx_th ltx_th_column ltx_border_tt" id="Sx5.T3.1.1.1.2" style="width:360.0pt;">
<span class="ltx_inline-block ltx_align_top" id="Sx5.T3.1.1.1.2.1">
<span class="ltx_p" id="Sx5.T3.1.1.1.2.1.1"><span class="ltx_text ltx_font_bold" id="Sx5.T3.1.1.1.2.1.1.1">Prompt</span></span>
</span>
</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="Sx5.T3.1.2.1">
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_r ltx_border_t" id="Sx5.T3.1.2.1.1" style="width:60.0pt;">
<span class="ltx_inline-block ltx_align_top" id="Sx5.T3.1.2.1.1.1">
<span class="ltx_p" id="Sx5.T3.1.2.1.1.1.1">Consultancy</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_t" id="Sx5.T3.1.2.1.2" style="width:360.0pt;">
<span class="ltx_inline-block ltx_align_top" id="Sx5.T3.1.2.1.2.1">
<span class="ltx_p" id="Sx5.T3.1.2.1.2.1.1"><span class="ltx_text ltx_font_italic" id="Sx5.T3.1.2.1.2.1.1.1">There is a science knowledge question, followed by an answer</span>. Construct your argument for why the answer is <span class="ltx_text ltx_font_italic" id="Sx5.T3.1.2.1.2.1.1.2">[random answer]</span>.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="Sx5.T3.1.3.2">
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_bb ltx_border_r ltx_border_t" id="Sx5.T3.1.3.2.1" style="width:60.0pt;">
<span class="ltx_inline-block ltx_align_top" id="Sx5.T3.1.3.2.1.1">
<span class="ltx_p" id="Sx5.T3.1.3.2.1.1.1">Market-Making</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_bb ltx_border_t" id="Sx5.T3.1.3.2.2" style="width:360.0pt;">
<span class="ltx_inline-block ltx_align_top" id="Sx5.T3.1.3.2.2.1">
<span class="ltx_p" id="Sx5.T3.1.3.2.2.1.1"><span class="ltx_text ltx_font_italic" id="Sx5.T3.1.3.2.2.1.1.1">There is a science knowledge question, followed by an answer</span>. Construct your argument for why the answer is <span class="ltx_text ltx_font_italic" id="Sx5.T3.1.3.2.2.1.1.2">[unselected answer]</span>.</span>
</span>
</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table details the prompts used in the Consultancy and Market-Making experiments.  The experiments use a binary classification problem adapted from the SciQ dataset.  For each problem, there are two possible answers: correct and incorrect.  In the Consultancy prompt, a randomly selected answer is given to the model for which it must construct an argument. In the Market-Making prompt, the model receives the answer *not* selected by the weak supervisor (a small, initially-trained model) and is tasked with creating a counter-argument.  The current transcript is included with each prompt.
> <details>
> <summary>read the caption</summary>
> Table 3: Prompts to induce consultancy and market-making. The binary classification problem is converted from the SciQ dataset. The two answer choices are correct and incorrect. [random answer] is the answer randomly sampled from the two candidate answers. [unselected answer] is the answer that is not selected by the weak supervisor (the naively finetuned small model) based on its prediction. We also append the current transcript to the prompt.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="Sx5.T4.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="Sx5.T4.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_r ltx_border_tt" id="Sx5.T4.1.1.1.1" rowspan="2"><span class="ltx_text ltx_font_bold" id="Sx5.T4.1.1.1.1.1">Method</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" colspan="2" id="Sx5.T4.1.1.1.2"><span class="ltx_text ltx_font_bold" id="Sx5.T4.1.1.1.2.1">SciQ</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" colspan="2" id="Sx5.T4.1.1.1.3"><span class="ltx_text ltx_font_bold" id="Sx5.T4.1.1.1.3.1">BoolQ</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" colspan="2" id="Sx5.T4.1.1.1.4"><span class="ltx_text ltx_font_bold" id="Sx5.T4.1.1.1.4.1">CosmosQA</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="2" id="Sx5.T4.1.1.1.5"><span class="ltx_text ltx_font_bold" id="Sx5.T4.1.1.1.5.1">AnthropicHH</span></th>
</tr>
<tr class="ltx_tr" id="Sx5.T4.1.2.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="Sx5.T4.1.2.2.1">Acc.</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r" id="Sx5.T4.1.2.2.2">PGR</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="Sx5.T4.1.2.2.3">Acc.</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r" id="Sx5.T4.1.2.2.4">PGR</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="Sx5.T4.1.2.2.5">Acc.</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r" id="Sx5.T4.1.2.2.6">PGR</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="Sx5.T4.1.2.2.7">Acc.</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="Sx5.T4.1.2.2.8">PGR</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="Sx5.T4.1.3.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="Sx5.T4.1.3.1.1">Consultancy</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="Sx5.T4.1.3.1.2">91.5</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="Sx5.T4.1.3.1.3">44.1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Sx5.T4.1.3.1.4">87.8</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="Sx5.T4.1.3.1.5">46.2</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Sx5.T4.1.3.1.6">88.3</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="Sx5.T4.1.3.1.7">34.8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Sx5.T4.1.3.1.8">49.3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Sx5.T4.1.3.1.9">25.0</td>
</tr>
<tr class="ltx_tr" id="Sx5.T4.1.4.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="Sx5.T4.1.4.2.1">Market-Making</th>
<td class="ltx_td ltx_align_center" id="Sx5.T4.1.4.2.2">91.6</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="Sx5.T4.1.4.2.3">47.1</td>
<td class="ltx_td ltx_align_center" id="Sx5.T4.1.4.2.4">87.6</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="Sx5.T4.1.4.2.5">41.0</td>
<td class="ltx_td ltx_align_center" id="Sx5.T4.1.4.2.6">88.2</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="Sx5.T4.1.4.2.7">30.4</td>
<td class="ltx_td ltx_align_center" id="Sx5.T4.1.4.2.8">49.5</td>
<td class="ltx_td ltx_align_center" id="Sx5.T4.1.4.2.9">35.0</td>
</tr>
<tr class="ltx_tr" id="Sx5.T4.1.5.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_r ltx_border_t" id="Sx5.T4.1.5.3.1"><span class="ltx_text ltx_font_bold" id="Sx5.T4.1.5.3.1.1">Ours</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="Sx5.T4.1.5.3.2"><span class="ltx_text ltx_font_bold" id="Sx5.T4.1.5.3.2.1">92.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r ltx_border_t" id="Sx5.T4.1.5.3.3"><span class="ltx_text ltx_font_bold" id="Sx5.T4.1.5.3.3.1">76.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="Sx5.T4.1.5.3.4"><span class="ltx_text ltx_font_bold" id="Sx5.T4.1.5.3.4.1">88.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r ltx_border_t" id="Sx5.T4.1.5.3.5"><span class="ltx_text ltx_font_bold" id="Sx5.T4.1.5.3.5.1">69.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="Sx5.T4.1.5.3.6"><span class="ltx_text ltx_font_bold" id="Sx5.T4.1.5.3.6.1">88.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r ltx_border_t" id="Sx5.T4.1.5.3.7"><span class="ltx_text ltx_font_bold" id="Sx5.T4.1.5.3.7.1">56.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="Sx5.T4.1.5.3.8"><span class="ltx_text ltx_font_bold" id="Sx5.T4.1.5.3.8.1">50.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="Sx5.T4.1.5.3.9"><span class="ltx_text ltx_font_bold" id="Sx5.T4.1.5.3.9.1">70.0</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of an ablation study comparing the performance of the proposed debate method with two other scalable oversight approaches: Consultancy and Market-Making.  The goal is to determine the effectiveness of debate in extracting trustworthy information from a strong model to improve weak supervision.  Performance is measured using accuracy and performance gap recovered (PGR) on four binary classification tasks derived from NLP datasets (SciQ, BoolQ, CosmosQA, and AnthropicHH).  The table shows that the debate approach consistently outperforms the other methods, highlighting the benefits of debate as a mechanism for improving weak-to-strong generalization.
> <details>
> <summary>read the caption</summary>
> Table 4: Ablation on different scalable oversight approaches. Here, our approach uses debate ensembles.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="Sx5.T5.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="Sx5.T5.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_r ltx_border_tt" id="Sx5.T5.1.1.1.1" rowspan="2"><span class="ltx_text ltx_font_bold" id="Sx5.T5.1.1.1.1.1">Method</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" colspan="2" id="Sx5.T5.1.1.1.2"><span class="ltx_text ltx_font_bold" id="Sx5.T5.1.1.1.2.1">SciQ</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" colspan="2" id="Sx5.T5.1.1.1.3"><span class="ltx_text ltx_font_bold" id="Sx5.T5.1.1.1.3.1">BoolQ</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" colspan="2" id="Sx5.T5.1.1.1.4"><span class="ltx_text ltx_font_bold" id="Sx5.T5.1.1.1.4.1">CosmosQA</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="2" id="Sx5.T5.1.1.1.5"><span class="ltx_text ltx_font_bold" id="Sx5.T5.1.1.1.5.1">AnthropicHH</span></th>
</tr>
<tr class="ltx_tr" id="Sx5.T5.1.2.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="Sx5.T5.1.2.2.1">Acc.</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r" id="Sx5.T5.1.2.2.2">PGR</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="Sx5.T5.1.2.2.3">Acc.</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r" id="Sx5.T5.1.2.2.4">PGR</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="Sx5.T5.1.2.2.5">Acc.</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r" id="Sx5.T5.1.2.2.6">PGR</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="Sx5.T5.1.2.2.7">Acc.</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="Sx5.T5.1.2.2.8">PGR</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="Sx5.T5.1.3.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="Sx5.T5.1.3.1.1">Single weak model</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="Sx5.T5.1.3.1.2">91.7</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="Sx5.T5.1.3.1.3">50.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Sx5.T5.1.3.1.4">88.2</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="Sx5.T5.1.3.1.5">56.4</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Sx5.T5.1.3.1.6">88.4</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="Sx5.T5.1.3.1.7">39.1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Sx5.T5.1.3.1.8">49.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="Sx5.T5.1.3.1.9">35.0</td>
</tr>
<tr class="ltx_tr" id="Sx5.T5.1.4.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="Sx5.T5.1.4.2.1">Finetune ensembles</th>
<td class="ltx_td ltx_align_center" id="Sx5.T5.1.4.2.2">91.8</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="Sx5.T5.1.4.2.3">52.9</td>
<td class="ltx_td ltx_align_center" id="Sx5.T5.1.4.2.4">88.3</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="Sx5.T5.1.4.2.5">59.0</td>
<td class="ltx_td ltx_align_center" id="Sx5.T5.1.4.2.6">88.4</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="Sx5.T5.1.4.2.7">39.1</td>
<td class="ltx_td ltx_align_center" id="Sx5.T5.1.4.2.8">49.7</td>
<td class="ltx_td ltx_align_center" id="Sx5.T5.1.4.2.9">45.0</td>
</tr>
<tr class="ltx_tr" id="Sx5.T5.1.5.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_r ltx_border_t" id="Sx5.T5.1.5.3.1"><span class="ltx_text ltx_font_bold" id="Sx5.T5.1.5.3.1.1">debate ensembles</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="Sx5.T5.1.5.3.2"><span class="ltx_text ltx_font_bold" id="Sx5.T5.1.5.3.2.1">92.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r ltx_border_t" id="Sx5.T5.1.5.3.3"><span class="ltx_text ltx_font_bold" id="Sx5.T5.1.5.3.3.1">76.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="Sx5.T5.1.5.3.4"><span class="ltx_text ltx_font_bold" id="Sx5.T5.1.5.3.4.1">88.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r ltx_border_t" id="Sx5.T5.1.5.3.5"><span class="ltx_text ltx_font_bold" id="Sx5.T5.1.5.3.5.1">69.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="Sx5.T5.1.5.3.6"><span class="ltx_text ltx_font_bold" id="Sx5.T5.1.5.3.6.1">88.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r ltx_border_t" id="Sx5.T5.1.5.3.7"><span class="ltx_text ltx_font_bold" id="Sx5.T5.1.5.3.7.1">56.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="Sx5.T5.1.5.3.8"><span class="ltx_text ltx_font_bold" id="Sx5.T5.1.5.3.8.1">50.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="Sx5.T5.1.5.3.9"><span class="ltx_text ltx_font_bold" id="Sx5.T5.1.5.3.9.1">70.0</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of an ablation study on the impact of using different weak model ensemble methods on the overall performance.  It compares three approaches: a single weak model, finetune ensembles (where models share the same debate transcript but have different random seeds during finetuning), and debate ensembles (where each model uses a different debate transcript generated with a different random seed). The table shows the accuracy and performance gap recovered (PGR) for each method across four NLP classification tasks: SciQ, BoolQ, CosmosQA, and AnthropicHH.  The data illustrates the effectiveness of using debate ensembles to obtain a more robust supervision estimate.
> <details>
> <summary>read the caption</summary>
> Table 5: Ablation on weak model ensemble.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2501.13124/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.13124/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.13124/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.13124/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.13124/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.13124/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.13124/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.13124/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.13124/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}