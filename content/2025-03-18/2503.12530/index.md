---
title: "Basic Category Usage in Vision Language Models"
summary: "VLMs exhibit human-like object categorization, favoring basic levels and mirroring biological/expertise nuances, suggesting learned cognitive behaviors."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Multimodal Learning", "Vision-Language Models", "🏢 Tennessee Tech University",]
showSummary: true
date: 2025-03-16
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2503.12530 {{< /keyword >}}
{{< keyword icon="writer" >}} Hunter Sawyer et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-03-18 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2503.12530" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2503.12530" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2503.12530/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

**Humans categorize objects at a basic level**, showing biases like preferring basic categories and distinguishing biological from non-biological items. Experts categorize differently. This paper explores if **Vision Language Models (VLMs) trained on human text mimic these behaviors**. Understanding this helps align AI with human cognition.



The paper tests VLMs with images, **analyzing if they categorize objects like humans**. Findings show VLMs favor basic levels, distinguish biological items, and shift categorization with expert prompting, **mirroring human cognition**. This suggests VLMs learn human-like categorization from training data, advancing AI alignment.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} VLMs prefer basic-level categorization without explicit expert guidance. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} VLMs mirror human distinctions in categorizing biological versus non-biological objects. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Expertise prompting influences VLMs, shifting categorization preferences akin to human experts. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper is important for researchers as it **demonstrates the cognitive ability of VLMs** to align with human-like categorization. The research **provides valuable insights into the alignment of AI systems** with human cognition, potentially **improving human-machine interactions**. It encourages further exploration of cognitive representations in VLMs.

------
#### Visual Insights



![](https://arxiv.org/html/2503.12530/x1.jpeg)

> 🔼 The image shows an example from the dataset used in the paper, where a photo of a child standing in front of what appears to be a banana tree is incorrectly labeled as a banana.  This highlights the presence of some noisy labels within the dataset, impacting the accuracy of categorization.
> <details>
> <summary>read the caption</summary>
> Figure 1: Incorrectly Labeled Image
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S4.T1.1.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T1.1.1.1.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_l ltx_border_r ltx_border_t" id="S4.T1.1.1.1.1.1"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.1.1.1.1">Model</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_t" id="S4.T1.1.1.1.1.2"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.1.1.2.1">Sample size</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_t" id="S4.T1.1.1.1.1.3"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.1.1.3.1">Basic level</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_t" id="S4.T1.1.1.1.1.4"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.1.1.4.1">Basic Rate</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T1.1.1.2.1">
<td class="ltx_td ltx_align_center ltx_border_l ltx_border_r ltx_border_t" id="S4.T1.1.1.2.1.1">Llama</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.1.1.2.1.2">28,250</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.1.1.2.1.3">17,030</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.1.1.2.1.4">60%</td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.1.3.2">
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_l ltx_border_r ltx_border_t" id="S4.T1.1.1.3.2.1">Molmo</td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r ltx_border_t" id="S4.T1.1.1.3.2.2">28,2500</td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r ltx_border_t" id="S4.T1.1.1.3.2.3">14,766</td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r ltx_border_t" id="S4.T1.1.1.3.2.4">52%</td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 This table presents the results of experiments conducted on two vision-language models, Llama 3.2 and Molmo, to assess their usage of basic-level categories in image descriptions.  The table shows the sample size of images used for each model, the number of times basic-level categories were used in the model's generated descriptions, and the percentage of times basic-level categories were used.  The results demonstrate that both models significantly favor basic-level categories more frequently than would be expected by random chance, which aligns with human categorization behavior.
> <details>
> <summary>read the caption</summary>
> Table 1: Llama 3.2 and Molmo both show basic level usage rates significantly higher than random selection over superordinate, basic, and subordinate levels.
> </details>





### In-depth insights


#### VLM Cognition
Vision Language Models (VLMs) are explored for human-like cognitive abilities, focusing on how they categorize visual information. The research looks at whether VLMs exhibit a **"basic-level categorization"** similar to humans. This delves into the alignment between VLMs and human categorization. Key aspects of this categorization include preferring the basic-level, distinguishing between biological and non-biological objects, and shifting categorization with expertise. The study aims to assess if VLMs learn cognitive categorization behaviors from human data, revealing potential neurological similarities. Understanding VLM cognition helps interpret and enhance these models, especially for human-machine interaction, and better AI.

#### Basic Level Bias
The concept of a 'Basic Level Bias,' while not explicitly named as such in this paper, is central to its investigation. This bias, stemming from cognitive psychology, suggests humans preferentially categorize objects at an intermediate level of specificity (e.g., 'dog' rather than 'animal' or 'poodle'). The paper explores whether Vision Language Models (VLMs) exhibit a similar bias, indicating a potential acquisition of human-like categorization behaviors during training. **This is significant because it implies VLMs aren't just learning to associate labels with images, but also internalizing the cognitive structures that guide human perception and language use.** Finding such a bias in VLMs would suggest a deeper level of understanding and alignment with human cognition. The research further investigates how factors like expertise and object type (biological vs. non-biological) influence this bias, mirroring human studies. **Demonstrating that VLMs also show shifts in categorization based on these factors strengthens the argument that they are capturing nuanced aspects of human cognitive processing.** Ultimately, understanding and leveraging this 'Basic Level Bias' in VLMs could lead to more intuitive and human-aligned AI systems.

#### Expert Shift?
The concept of an 'expert shift' in categorization, as explored in the context of VLMs, is fascinating. It dives into whether these models, when prompted to act as experts, alter their categorization preferences, mirroring human behavior. **The paper investigates if VLMs shift from basic-level to more subordinate categories, reflecting the refined understanding of experts.** This delves into the complex relationship between model training data and cognitive behaviors. It's observed that VLM shows such transition, however more analysis needed to be done.

#### Bio vs. Non-Bio
The distinction between biological and non-biological objects plays a crucial role in basic-level categorization. **Biological entities are categorized based on features**, like claws, while **non-biological entities rely on function**, as seen in the research paper. This dichotomy highlights cognitive processes, as people categorize animals versus manufactured items. Interestingly, one research indicates that non-biological things have a higher tendency to be described with a subordinate category than the biological categories. Therefore, understanding this divide is crucial for AI development, such as VLMs, as it mirrors human cognition, thereby providing a pathway for creating more naturally aligned AI systems for categorization. 

#### Future LLM Work
Future work in this area should focus on several key aspects to deepen our understanding of how vision-language models (VLMs) process and categorize information. First, expanding the datasets used for evaluation is crucial. **Exploring diverse methodologies for determining basic-level categories**, beyond simple word frequency, could reveal how different approaches impact VLM behavior. It would also be informative to test other models. Further research should analyze the internal mechanisms, such as the **embeddings and pre-training tasks**, to understand how these components influence categorization abilities. Analyzing the way human feedback shapes category preference is an important piece. This might involve investigating **how RLHF impacts basic-level preferences**.


### More visual insights




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S4.T2.1.1">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T2.1.1.1.1">
<td class="ltx_td" id="S4.T2.1.1.1.1.1"></td>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column" id="S4.T2.1.1.1.1.2"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.1.1.2.1">Llama 3.2</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S4.T2.1.1.1.1.3"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.1.1.3.1">Molmo</span></th>
</tr>
<tr class="ltx_tr" id="S4.T2.1.1.2.2">
<td class="ltx_td" id="S4.T2.1.1.2.2.1"></td>
<th class="ltx_td ltx_align_right ltx_th ltx_th_column" colspan="2" id="S4.T2.1.1.2.2.2">Basic Level Usage    Total (%)</th>
</tr>
<tr class="ltx_tr" id="S4.T2.1.1.3.3">
<td class="ltx_td ltx_align_right ltx_border_tt" id="S4.T2.1.1.3.3.1"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.3.3.1.1">Base Biological</span></td>
<td class="ltx_td ltx_align_left ltx_border_tt" id="S4.T2.1.1.3.3.2">6,425 (64%)</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.1.1.3.3.3">5,507 (55%)</td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.1.4.4">
<td class="ltx_td ltx_align_right" id="S4.T2.1.1.4.4.1"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.4.4.1.1">Base Non-Biological</span></td>
<td class="ltx_td ltx_align_left" id="S4.T2.1.1.4.4.2">10,605 (58%)</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.4.4.3">9,259 (51%)</td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.1.5.5">
<td class="ltx_td ltx_align_right ltx_border_tt" id="S4.T2.1.1.5.5.1"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.5.5.1.1">Z Test</span></td>
<td class="ltx_td ltx_align_left ltx_border_tt" id="S4.T2.1.1.5.5.2">38 (p&lt;0.01)</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.1.1.5.5.3">30 (p&lt;0.01)</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of a statistical test comparing the frequency of basic-level categorization in Vision Language Models (VLMs) for biological versus non-biological objects. The results show a significantly lower usage of basic-level categories for non-biological items (p<0.01), indicating a difference in how the models process these two types of objects. The table includes the number of basic level usages, the total number of instances and the percentage of usage for both biological and non-biological items separately for two different VLMs (Llama 3.2 and Molmo).
> <details>
> <summary>read the caption</summary>
> Table 2: VLMs use the basic level significantly less (p<0.01) for non-biological items.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S4.T3.1.1">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T3.1.1.1.1">
<td class="ltx_td" id="S4.T3.1.1.1.1.1"></td>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column" id="S4.T3.1.1.1.1.2"><span class="ltx_text ltx_font_bold" id="S4.T3.1.1.1.1.2.1">Llama 3.2</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S4.T3.1.1.1.1.3"><span class="ltx_text ltx_font_bold" id="S4.T3.1.1.1.1.3.1">Molmo</span></th>
</tr>
<tr class="ltx_tr" id="S4.T3.1.1.2.2">
<td class="ltx_td" id="S4.T3.1.1.2.2.1"></td>
<th class="ltx_td ltx_align_right ltx_th ltx_th_column" colspan="2" id="S4.T3.1.1.2.2.2">Basic Level Usage    Total (%)</th>
</tr>
<tr class="ltx_tr" id="S4.T3.1.1.3.3">
<td class="ltx_td ltx_align_right ltx_border_tt" id="S4.T3.1.1.3.3.1"><span class="ltx_text ltx_font_bold" id="S4.T3.1.1.3.3.1.1">Base</span></td>
<td class="ltx_td ltx_align_left ltx_border_tt" id="S4.T3.1.1.3.3.2">17,030 (60%)</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T3.1.1.3.3.3">14,766 (52%)</td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.1.4.4">
<td class="ltx_td ltx_align_right" id="S4.T3.1.1.4.4.1"><span class="ltx_text ltx_font_bold" id="S4.T3.1.1.4.4.1.1">Expert</span></td>
<td class="ltx_td ltx_align_left" id="S4.T3.1.1.4.4.2">15,380 (54%)</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.4.4.3">13,901 (49%)</td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.1.5.5">
<td class="ltx_td ltx_align_right ltx_border_tt" id="S4.T3.1.1.5.5.1"><span class="ltx_text ltx_font_bold" id="S4.T3.1.1.5.5.1.1">Z Test</span></td>
<td class="ltx_td ltx_align_left ltx_border_tt" id="S4.T3.1.1.5.5.2">77 (p&lt;0.01)</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T3.1.1.5.5.3">17 (p&lt;0.01)</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of a two-proportion Z-test comparing the frequency of basic-level categorization in two vision language models (VLMs), Llama 3.2 and Molmo, under two prompting conditions: a standard prompt and an expert prompt. The expert prompt instructs the models to describe the subject in the image from an expert's perspective. The table shows that both models use basic-level categorization significantly less often (p<0.01) when prompted as experts, demonstrating an 'expertise effect' analogous to that observed in human categorization.
> <details>
> <summary>read the caption</summary>
> Table 3: VLMs use the basic level significantly less (p<0.01) when prompted to act as an expert.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S4.T4.1.1">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T4.1.1.1.1">
<td class="ltx_td" id="S4.T4.1.1.1.1.1"></td>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column" id="S4.T4.1.1.1.1.2"><span class="ltx_text ltx_font_bold" id="S4.T4.1.1.1.1.2.1">Llama 3.2</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S4.T4.1.1.1.1.3"><span class="ltx_text ltx_font_bold" id="S4.T4.1.1.1.1.3.1">Molmo</span></th>
</tr>
<tr class="ltx_tr" id="S4.T4.1.1.2.2">
<td class="ltx_td" id="S4.T4.1.1.2.2.1"></td>
<th class="ltx_td ltx_align_right ltx_th ltx_th_column" colspan="2" id="S4.T4.1.1.2.2.2">Basic Level Usage    Total (%)</th>
</tr>
<tr class="ltx_tr" id="S4.T4.1.1.3.3">
<td class="ltx_td ltx_align_right ltx_border_tt" id="S4.T4.1.1.3.3.1"><span class="ltx_text ltx_font_bold" id="S4.T4.1.1.3.3.1.1">Expert Biological</span></td>
<td class="ltx_td ltx_align_left ltx_border_tt" id="S4.T4.1.1.3.3.2">6,120 (61%)</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T4.1.1.3.3.3">4,992 (49.4%)</td>
</tr>
<tr class="ltx_tr" id="S4.T4.1.1.4.4">
<td class="ltx_td ltx_align_right" id="S4.T4.1.1.4.4.1"><span class="ltx_text ltx_font_bold" id="S4.T4.1.1.4.4.1.1">Expert Non-Biological</span></td>
<td class="ltx_td ltx_align_left" id="S4.T4.1.1.4.4.2">9,260 (51%)</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.4.4.3">8,909 (49.1%)</td>
</tr>
<tr class="ltx_tr" id="S4.T4.1.1.5.5">
<td class="ltx_td ltx_align_right ltx_border_tt" id="S4.T4.1.1.5.5.1"><span class="ltx_text ltx_font_bold" id="S4.T4.1.1.5.5.1.1">Z Test</span></td>
<td class="ltx_td ltx_align_left ltx_border_tt" id="S4.T4.1.1.5.5.2">50 (p&lt;0.01)</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T4.1.1.5.5.3">9 (p&lt;0.01)</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 Table 4 presents the results of a two-proportion Z-test comparing the basic level categorization percentages between biological and non-biological categories for both the Llama and Molmo models, under expert prompting conditions.  It examines whether expertise affects the difference between biological and non-biological object categorization, revealing that Molmo decreased this difference while Llama increased it.
> <details>
> <summary>read the caption</summary>
> Table 4: Some research has been done into the biological/non-biological and expert relationship, although it has not necessarily been noted that expertise shrinks or increase the differences between the biological and non-biological categories. On our LLM testing, Molmo decreased the difference, while Llama increased it.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2503.12530/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.12530/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.12530/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.12530/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.12530/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.12530/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.12530/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.12530/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}