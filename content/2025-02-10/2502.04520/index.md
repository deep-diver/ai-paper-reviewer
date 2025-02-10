---
title: "Linear Correlation in LM's Compositional Generalization and Hallucination"
summary: "Language models surprisingly exhibit linear relationships when composing knowledge; this linearity, resilient to fine-tuning, predicts compositional generalization and hallucination."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Natural Language Processing", "Large Language Models", "🏢 UC San Diego",]
showSummary: true
date: 2025-02-06
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2502.04520 {{< /keyword >}}
{{< keyword icon="writer" >}} Letian Peng et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-02-10 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2502.04520" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2502.04520" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2502.04520/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Large language models (LLMs) are known for their impressive capabilities, but their ability to generalize and compose knowledge remains a subject of active debate.  One major challenge is understanding how LLMs generalize to novel situations and avoid generating incorrect or hallucinatory outputs.  Many researchers are working to improve LLMs' capabilities in these aspects. 

This research delves into the nature of LLM knowledge composition by examining the relationship between the 'logits' (probability scores) of different knowledge prompts.  They discovered a surprising phenomenon: a consistent linear relationship exists between the logits of related prompts. This means the model's predictions for one type of prompt can be approximately derived from the predictions on a related one via a simple linear transformation.  Further analysis revealed that this linear correlation is surprisingly stable, even after significant model fine-tuning.  Importantly, the strength and accuracy of this linear transformation serve as an indicator of the LLM's ability to generalize correctly to new knowledge combinations.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Linear correlations exist between related knowledge representations in language models. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} This linearity is robust to large-scale fine-tuning and predicts compositional generalization and hallucination. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Vocabulary representations are key to understanding the origin of these linear correlations. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper is crucial because it **uncovers a hidden linearity in language models' knowledge composition**.  This finding challenges existing assumptions about how LMs generalize, **providing a novel perspective on compositional generalization and hallucination**. The identification of linear correlations as a predictor of generalization and hallucination **offers a new diagnostic tool** and opens new avenues for improving LM capabilities and mitigating unwanted behaviors.

------
#### Visual Insights



![](https://arxiv.org/html/2502.04520/x1.png)

> 🔼 This figure demonstrates two key findings about how language models (LMs) handle knowledge composition.  First, it shows that a linear transformation can accurately map the prediction logits (the LM's internal probabilities for the next word) from one type of knowledge prompt to another. For example, logits predicting the country someone lives in can be approximated linearly from the logits predicting the city they live in.  Importantly, this linear relationship remains even after substantial further training of the LM (fine-tuning).  Second, the figure illustrates how updating knowledge in one domain (e.g., correcting the LM's knowledge about a city) propagates through this linear transformation to other related domains (e.g., updating knowledge about the country).  This propagation can lead to either accurate generalizations (correctly updated information) or hallucinations (incorrectly inferred information) depending on whether the linear transformation accurately captures the underlying relationship between the knowledge domains.
> <details>
> <summary>read the caption</summary>
> Figure 1:  Demonstration of our main discoveries. 1) We can fit a linear transformation between the output of source and target knowledge prompts, which is resilient against fine-tuning. 2) Updating the source knowledge will generalize to the target one via resilient linearity, causing compositional generalization/hallucination.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S3.T1.1.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S3.T1.1.1.1.1">
<th class="ltx_td ltx_align_justify ltx_align_top ltx_th ltx_th_column ltx_border_tt" id="S3.T1.1.1.1.1.1">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.1.1.1.1">
<span class="ltx_p" id="S3.T1.1.1.1.1.1.1.1" style="width:28.5pt;"><span class="ltx_text" id="S3.T1.1.1.1.1.1.1.1.1" style="font-size:90%;">Family</span></span>
</span>
</th>
<th class="ltx_td ltx_align_justify ltx_align_top ltx_th ltx_th_column ltx_border_tt" id="S3.T1.1.1.1.1.2">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.1.1.2.1">
<span class="ltx_p" id="S3.T1.1.1.1.1.2.1.1" style="width:91.0pt;"><span class="ltx_text" id="S3.T1.1.1.1.1.2.1.1.1" style="font-size:90%;">Prompt</span></span>
</span>
</th>
<th class="ltx_td ltx_align_justify ltx_align_top ltx_th ltx_th_column ltx_border_tt" id="S3.T1.1.1.1.1.3">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.1.1.3.1">
<span class="ltx_p" id="S3.T1.1.1.1.1.3.1.1" style="width:71.1pt;"><span class="ltx_text" id="S3.T1.1.1.1.1.3.1.1.1" style="font-size:90%;">Domain Examples</span></span>
</span>
</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S3.T1.1.1.2.1">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S3.T1.1.1.2.1.1" rowspan="2">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.2.1.1.1">
<span class="ltx_p" id="S3.T1.1.1.2.1.1.1.1" style="width:28.5pt;"><span class="ltx_text" id="S3.T1.1.1.2.1.1.1.1.1" style="font-size:90%;">Attribute</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S3.T1.1.1.2.1.2">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.2.1.2.1">
<span class="ltx_p" id="S3.T1.1.1.2.1.2.1.1" style="width:91.0pt;"><span class="ltx_text" id="S3.T1.1.1.2.1.2.1.1.1" style="font-size:90%;">“X lives in the city of”</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S3.T1.1.1.2.1.3">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.2.1.3.1">
<span class="ltx_p" id="S3.T1.1.1.2.1.3.1.1" style="width:71.1pt;"><span class="ltx_text" id="S3.T1.1.1.2.1.3.1.1.1" style="font-size:90%;">Paris, Vienna</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.1.3.2">
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T1.1.1.3.2.1">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.3.2.1.1">
<span class="ltx_p" id="S3.T1.1.1.3.2.1.1.1" style="width:91.0pt;"><span class="ltx_text" id="S3.T1.1.1.3.2.1.1.1.1" style="font-size:90%;">“X lives in the country of”</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T1.1.1.3.2.2">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.3.2.2.1">
<span class="ltx_p" id="S3.T1.1.1.3.2.2.1.1" style="width:71.1pt;"><span class="ltx_text" id="S3.T1.1.1.3.2.2.1.1.1" style="font-size:90%;">France, Austria</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.1.4.3">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S3.T1.1.1.4.3.1" rowspan="2">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.4.3.1.1">
<span class="ltx_p" id="S3.T1.1.1.4.3.1.1.1" style="width:28.5pt;"><span class="ltx_text" id="S3.T1.1.1.4.3.1.1.1.1" style="font-size:90%;">X-Lang.</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S3.T1.1.1.4.3.2">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.4.3.2.1">
<span class="ltx_p" id="S3.T1.1.1.4.3.2.1.1" style="width:91.0pt;"><span class="ltx_text" id="S3.T1.1.1.4.3.2.1.1.1" style="font-size:90%;">“X vit dans la ville de”</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S3.T1.1.1.4.3.3">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.4.3.3.1">
<span class="ltx_p" id="S3.T1.1.1.4.3.3.1.1" style="width:71.1pt;"><span class="ltx_text" id="S3.T1.1.1.4.3.3.1.1.1" style="font-size:90%;">Paris, Vienne</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.1.5.4">
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T1.1.1.5.4.1">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.5.4.1.1">
<span class="ltx_p" id="S3.T1.1.1.5.4.1.1.1" style="width:91.0pt;"><span class="ltx_text" id="S3.T1.1.1.5.4.1.1.1.1" style="font-size:90%;">“X lebt in der Stadt von”</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T1.1.1.5.4.2">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.5.4.2.1">
<span class="ltx_p" id="S3.T1.1.1.5.4.2.1.1" style="width:71.1pt;"><span class="ltx_text" id="S3.T1.1.1.5.4.2.1.1.1" style="font-size:90%;">Paris, Wien</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.1.6.5">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S3.T1.1.1.6.5.1" rowspan="2">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.6.5.1.1">
<span class="ltx_p" id="S3.T1.1.1.6.5.1.1.1" style="width:28.5pt;"><span class="ltx_text" id="S3.T1.1.1.6.5.1.1.1.1" style="font-size:90%;">Simile</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S3.T1.1.1.6.5.2">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.6.5.2.1">
<span class="ltx_p" id="S3.T1.1.1.6.5.2.1.1" style="width:91.0pt;"><span class="ltx_text" id="S3.T1.1.1.6.5.2.1.1.1" style="font-size:90%;">“X has the same color as”</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S3.T1.1.1.6.5.3">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.6.5.3.1">
<span class="ltx_p" id="S3.T1.1.1.6.5.3.1.1" style="width:71.1pt;"><span class="ltx_text" id="S3.T1.1.1.6.5.3.1.1.1" style="font-size:90%;">Apple, Banana</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.1.7.6">
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T1.1.1.7.6.1">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.7.6.1.1">
<span class="ltx_p" id="S3.T1.1.1.7.6.1.1.1" style="width:91.0pt;"><span class="ltx_text" id="S3.T1.1.1.7.6.1.1.1.1" style="font-size:90%;">“X’s color is”</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T1.1.1.7.6.2">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.7.6.2.1">
<span class="ltx_p" id="S3.T1.1.1.7.6.2.1.1" style="width:71.1pt;"><span class="ltx_text" id="S3.T1.1.1.7.6.2.1.1.1" style="font-size:90%;">Red, Yellow</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.1.8.7">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb ltx_border_t" id="S3.T1.1.1.8.7.1" rowspan="2">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.8.7.1.1">
<span class="ltx_p" id="S3.T1.1.1.8.7.1.1.1" style="width:28.5pt;"><span class="ltx_text" id="S3.T1.1.1.8.7.1.1.1.1" style="font-size:90%;">Math</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S3.T1.1.1.8.7.2">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.8.7.2.1">
<span class="ltx_p" id="S3.T1.1.1.8.7.2.1.1" style="width:91.0pt;"><span class="ltx_text" id="S3.T1.1.1.8.7.2.1.1.1" style="font-size:90%;">“X+1=”</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S3.T1.1.1.8.7.3">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.8.7.3.1">
<span class="ltx_p" id="S3.T1.1.1.8.7.3.1.1" style="width:71.1pt;"><span class="ltx_text" id="S3.T1.1.1.8.7.3.1.1.1" style="font-size:90%;">1, 2, 3, 4, 5</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.1.9.8">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb" id="S3.T1.1.1.9.8.1">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.9.8.1.1">
<span class="ltx_p" id="S3.T1.1.1.9.8.1.1.1" style="width:91.0pt;"><span class="ltx_text" id="S3.T1.1.1.9.8.1.1.1.1" style="font-size:90%;">“X*2=”</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb" id="S3.T1.1.1.9.8.2">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.9.8.2.1">
<span class="ltx_p" id="S3.T1.1.1.9.8.2.1.1" style="width:71.1pt;"><span class="ltx_text" id="S3.T1.1.1.9.8.2.1.1.1" style="font-size:90%;">2, 4, 6, 8, 10</span></span>
</span>
</td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 This table presents examples of prompts used to investigate knowledge composition in large language models (LLMs).  It showcases four families of knowledge composition: Attribute (e.g., relating city to country), Cross-language (e.g., translating 'Paris' to 'Paris' in different languages), Simile (e.g., connecting concepts based on shared attributes like color), and Math (e.g., performing arithmetic operations). Each family includes example prompts and the corresponding domains of potential outputs or target concepts. This illustrates the range of tasks explored to understand how LMs generalize across these different types of compositional relations.
> <details>
> <summary>read the caption</summary>
> Table 1: Examples of prompts and domains in different families of knowledge composition.
> </details>





### In-depth insights


#### Linear Knowledge
The concept of "Linear Knowledge" in the context of large language models (LLMs) suggests that **some relationships between pieces of knowledge are inherently linear**.  This linearity manifests as a **linear transformation between the prediction logits of related prompts**, meaning that the model's confidence in one piece of knowledge can be directly predicted from its confidence in a related piece.  This phenomenon is **resilient to fine-tuning** and even large-scale model updates, indicating a deep-seated aspect of how LMs structure information.  **This linearity mirrors human cognition** in that we often associate related concepts in a straightforward manner (e.g., Paris-France).  However, **this linearity is a double-edged sword**.  While it facilitates compositional generalization in some cases, it can also lead to **hallucinations** when the linear mapping deviates from real-world relationships, creating inaccurate or fabricated knowledge.

#### LM Generalization
The paper investigates the generalization capabilities of Large Language Models (LLMs), specifically focusing on compositional generalization and the phenomenon of hallucination.  A core finding is the presence of **resilient linear correlations** between the output logits of related knowledge prompts, even after extensive fine-tuning. This suggests that LLMs leverage linear transformations to map knowledge from one domain to another, mirroring aspects of human knowledge composition.  However, this linearity, while often enabling successful generalization, can also lead to **hallucinations** when the linear mapping deviates from real-world relationships.  The study highlights the importance of both high correlation and precise linear transformations for successful generalization and emphasizes that **vocabulary representations** play a critical role in establishing these correlations.

#### Correlation's Role
The research paper explores the crucial role of linear correlations in large language models (LLMs), particularly concerning their compositional generalization capabilities.  **Linear correlations between the prediction logits of related knowledge pairs** are identified as a key factor influencing how well LLMs generalize. This means that the LLM's ability to accurately predict the next token in a sequence related to a given concept significantly depends on the existence and strength of linear relationships between those concepts' representations within the model.  **The presence of a high linear correlation combined with a precise linear transformation (W, b) generally leads to successful generalization**, allowing LLMs to apply knowledge learned in one context to a related but novel situation.  However, **when the correlation is high but the transformation matrix (W) is imprecise, the result is often compositional hallucination**, where the model incorrectly generalizes knowledge, producing nonsensical or factually incorrect outputs.  Thus, the study highlights the importance of analyzing both the strength of correlations and the accuracy of the learned linear transformations for understanding LLM generalization and for mitigating the risk of hallucination.

#### Vocabulary's Impact
The research paper significantly highlights **vocabulary's crucial role** in the compositional generalization and hallucination observed in large language models (LLMs).  The authors demonstrate that the **linear correlations** found between logits of related knowledge prompts are heavily influenced by, and strongly linked to, the underlying **vocabulary representations**.  Experiments show that even a simplified model, using only a mean-pooling layer and a feedforward network with pre-trained vocabulary embeddings, can learn to compose knowledge successfully.  This finding **directly points to the importance of lexical mappings** and suggests that the LLM's ability to generalize or hallucinate is deeply rooted in how it processes and relates vocabulary items.  **Altering these mappings disrupts the compositional abilities**, underlining the critical role of vocabulary representations in the overall functioning of the LLM.  Therefore, improvements in LLM generalization and the mitigation of hallucination might require careful attention to enhancing the quality of vocabulary representations and their interrelationships within the model's architecture.

#### Future Research
Future research should **focus on developing a formal theory** explaining why resilient linear correlations emerge in language models.  Investigating how model architecture, optimization dynamics, and linguistic structures contribute to these correlations is crucial.  Further work must **systematically analyze the influence of training data** on correlation formation to better understand which data properties drive their emergence.  A key area for investigation is creating **a general method for predicting which knowledge pairs** will exhibit linear correlations, going beyond specific examples like city-country.  Finally, research should explore the **implications of linear correlations for various tasks**, including knowledge editing and hallucination mitigation, and determine how these correlations can be effectively leveraged for improved generalizable learning.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2502.04520/)

> 🔼 This figure illustrates the hypothesis that Language Models (LMs) learn a linear transformation (W, b) to compose knowledge.  The core idea is that the model's output logits for related knowledge prompts (e.g.,  'X lives in the city of' and 'X lives in the country of') are linearly correlated. The figure poses four key questions. 1) Can a linear transformation (W, b) be fit between the logits of these related prompts? 2) Does this linear relationship hold for arbitrary inputs X, not just those that are explicitly paired in the training data? 3) Does fine-tuning the LM significantly alter the learned linear transformation (W, b)? 4) Which LM parameters contribute to the formation of this linear transformation?
> <details>
> <summary>read the caption</summary>
> Figure 2:  Our hypothesis and questions about how LMs compose knowledge by learning (W,b)𝑊𝑏(W,b)( italic_W , italic_b ).
> </details>



![](https://arxiv.org/html/2502.04520/x3.png)

> 🔼 This figure displays a heatmap visualizing the linear correlation between the next-token prediction (NTP) logits from the LLaMA-3-8B language model.  The heatmap shows the correlation between pairs of related knowledge prompts.  Warmer colors (red) represent stronger positive correlations, while cooler colors (blue) indicate weaker or negative correlations. The figure helps illustrate the concept of resilient linearity in the model's knowledge composition, revealing relationships between different knowledge subdomains.
> <details>
> <summary>read the caption</summary>
> Figure 3: The linear correlation between NTP logits of llama-3-8b.
> </details>



![](https://arxiv.org/html/2502.04520/x4.png)

> 🔼 This figure shows how the precision of the linear transformation matrix W increases with the size of the language model.  The precision is measured by the Hit@Top-N metric (where N=1 and 5 are shown), which indicates how frequently the model correctly identifies the most influential (or influenced) token pairs when composing knowledge. The figure uses the City-Country and CEO-Company knowledge pairs as examples, illustrating that larger models achieve higher precision in inferring relationships, particularly for the City-Country task.
> <details>
> <summary>read the caption</summary>
> Figure 4: The scaling-up of the precision of W𝑊Witalic_W with model size.
> </details>



![](https://arxiv.org/html/2502.04520/x5.png)

> 🔼 This figure illustrates the relationship between the weights of the linear transformation matrix W and the success of compositional generalization.  The x-axis represents the weight assigned to a specific (City, Country) pair in matrix W. The y-axis represents the proportion of times this pair correctly generalizes (successful generalization) or results in a hallucination (hallucination).  The bars show that high weights generally lead to successful generalization, while low weights are more likely to result in hallucinations.  This indicates that the precision of W is critical for successful compositional generalization.
> <details>
> <summary>read the caption</summary>
> Figure 5: The effect of W𝑊Witalic_W weights on generalization.
> </details>



![](https://arxiv.org/html/2502.04520/x6.png)

> 🔼 This figure illustrates an experiment to investigate the origin of linear correlations in Language Models (LMs). The researchers simplified the LM architecture by replacing its complex internal layers (e.g., self-attention, positional embeddings, etc.) with a simpler structure consisting only of a mean-pooling layer and a single feedforward network.  This simplified model was trained on a small set of paired texts exhibiting the knowledge composition relations studied in the paper. The goal was to determine whether the simplified model could still learn and generalize the compositional knowledge relationships observed in larger, more complex LMs, thereby helping to isolate the factors responsible for the linear correlations found in those LMs. The simplified structure helps to show that the linear correlation is not caused by the complex inner workings of the transformer models.
> <details>
> <summary>read the caption</summary>
> Figure 6: We replace the deep intermediate layers of LMs with an initialized shallow bag-of-word network.
> </details>



![](https://arxiv.org/html/2502.04520/x7.png)

> 🔼 This heatmap visualizes the linear correlation between next-token prediction (NTP) logits in the LLaMA-3-8B language model when performing mathematical operations.  Each cell represents the correlation between logits from two different prompts involving math problems. The intensity of color corresponds to the strength of the correlation; darker red signifies stronger positive correlation, while darker blue represents stronger negative correlation.  The diagonal represents perfect correlation (1.0). This figure helps to illustrate the extent to which the model uses linear relationships in solving mathematical problems and generating sequential tokens.
> <details>
> <summary>read the caption</summary>
> Figure 7: The linear correlation between NTP logits of llama-3-8b in math operations.
> </details>



![](https://arxiv.org/html/2502.04520/x8.png)

> 🔼 This figure visualizes the correlation matrices of next token prediction (NTP) logits from the LLaMA-3-8B language model.  It compares the correlations before and after large-scale post-training.  The color intensity in the matrix represents the strength of the correlation between logits; warmer colors indicate stronger correlations, while cooler colors represent weaker correlations.  Comparing the two matrices allows for an assessment of how the model's understanding of relationships between concepts changes after extensive fine-tuning, highlighting the resilience (or lack thereof) of the learned correlations to further training.
> <details>
> <summary>read the caption</summary>
> Figure 8: The linear correlation between NTP logits of llama-3-8b before and after large-scale post-training.
> </details>



![](https://arxiv.org/html/2502.04520/x9.png)

> 🔼 This figure visualizes the correlation matrices of next token prediction (NTP) logits for mathematical operations before and after large-scale post-training.  It shows the correlation coefficients between the logits generated by the language model for different mathematical expressions, both before any post-training fine-tuning and after a large-scale fine-tuning process. This allows for assessment of how robust the linear relationships between these logits are to significant model adjustments, and how the model's understanding of mathematical composition changes.
> <details>
> <summary>read the caption</summary>
> Figure 9: The linear correlation between NTP logits in math operations before and after large-scale post-training.
> </details>



![](https://arxiv.org/html/2502.04520/x10.png)

> 🔼 This figure displays the instance-wise correlation matrix for the next token prediction (NTP) logits of the LLaMA3-8b model, focusing on the 'attribute' knowledge family as an example.  The matrix visualizes the Pearson correlation coefficients between the logits of different input-output word pairs within the attribute family.  Higher correlation (redder colors) indicates a stronger linear relationship between the corresponding logits, suggesting that the model is more likely to generalize knowledge composition for those pairs.  Conversely, lower correlation (bluer colors) indicates a weaker linear relationship and a higher likelihood of compositional generalization failures or hallucinations.
> <details>
> <summary>read the caption</summary>
> Figure 10: The instance-wise correlation between NTP logits of llama3-8b (attribute as an example).
> </details>



![](https://arxiv.org/html/2502.04520/x11.png)

> 🔼 This figure displays a heatmap visualizing the correlation between next-token prediction (NTP) logits in the GPT-2-medium language model.  The heatmap shows the correlation strength between different attributes, such as the correlation between 'city' and 'country' or 'job' and 'company'. Warmer colors (red) indicate a stronger positive correlation, while cooler colors (blue) indicate a weaker or negative correlation. The diagonal line represents perfect correlation (1.0) between identical attributes. This visualization helps understand how the model associates different attributes in its internal representation of knowledge.
> <details>
> <summary>read the caption</summary>
> Figure 11: The attribute correlation between NTP logits of gpt2-medium.
> </details>



![](https://arxiv.org/html/2502.04520/x12.png)

> 🔼 This figure shows a heatmap representing the correlation between the next-token prediction (NTP) logits of the LLaMA-3-1B language model for different attribute pairs.  Each cell's color intensity indicates the strength of the linear correlation between the logits of two attributes.  Darker red indicates a strong positive correlation, while dark blue indicates a strong negative correlation. The diagonal shows perfect correlation, and the off-diagonal elements reveal the relationships between various attributes (e.g., city, country, job, personality, etc.). The figure helps visualize how the model associates and generalizes knowledge between related attributes.
> <details>
> <summary>read the caption</summary>
> Figure 12: The attribute correlation between NTP logits of llama-3.2-1b.
> </details>



![](https://arxiv.org/html/2502.04520/x13.png)

> 🔼 This heatmap visualizes the correlation between next-token prediction (NTP) logits from different attribute-related prompts in the LLaMA-3-3B language model. Each cell's color intensity represents the correlation coefficient between the logits of two prompts, indicating the strength of their semantic relationship. Warmer colors suggest a stronger positive correlation, while cooler colors represent a negative or weaker correlation. The diagonal shows perfect correlation (1.0) as it compares a prompt's logits to itself. This figure helps understand how the model relates different attributes in its knowledge representation.
> <details>
> <summary>read the caption</summary>
> Figure 13: The attribute correlation between NTP logits of llama-3.2-3b.
> </details>



![](https://arxiv.org/html/2502.04520/x14.png)

> 🔼 This heatmap visualizes the correlation between the next-token prediction (NTP) logits of the LLaMA-3-8B language model for different attribute pairs.  Each cell's color intensity represents the correlation coefficient between the logits of two related attributes, indicating how strongly the model associates them.  Darker red indicates a strong positive correlation, while dark blue represents a strong negative correlation.  The attributes considered are likely related to various semantic fields like geography, occupation, family, etc. The figure aids in understanding the model's implicit knowledge structures by highlighting strongly correlated attributes.
> <details>
> <summary>read the caption</summary>
> Figure 14: The attribute correlation between NTP logits of llama-3-8b.
> </details>



![](https://arxiv.org/html/2502.04520/x15.png)

> 🔼 This heatmap visualizes the correlation between the next-token prediction logits of the LLaMA-3-70B language model for different attribute pairs.  Each cell represents the correlation coefficient between the logits of two attributes (e.g., city and country).  Warmer colors (red) indicate a higher positive correlation, while cooler colors (blue) show a negative correlation. The diagonal line represents the perfect correlation of an attribute with itself. The figure provides insights into how the model relates different attributes in its internal knowledge representation, revealing potential linear relationships between certain attributes which might explain compositional generalization or hallucination.
> <details>
> <summary>read the caption</summary>
> Figure 15: The attribute correlation between NTP logits of llama-3-70b.
> </details>



![](https://arxiv.org/html/2502.04520/x16.png)

> 🔼 This heatmap visualizes the correlation between the next-token prediction (NTP) logits from different attribute prompts in the Deepseek-r1-distll-qwen-7B language model.  Each row and column represents a specific attribute prompt (e.g., 'X lives in the city of', 'X works for the company').  The color intensity at the intersection of a row and column indicates the strength of the correlation between the corresponding attribute pairs.  Darker red shades signify high positive correlation, while darker blue shades indicate high negative correlation. The diagonal line shows perfect correlation because an attribute is perfectly correlated with itself. This visualization helps to understand how different attributes are related and interconnected within the language model's knowledge representation.
> <details>
> <summary>read the caption</summary>
> Figure 16: The attribute correlation between NTP logits of deepseek-r1-distll-qwen-7B.
> </details>



![](https://arxiv.org/html/2502.04520/x17.png)

> 🔼 This heatmap visualizes the correlation between the next-token prediction (NTP) logits of the Mistral-7b-v0.3 language model for various attribute pairs. Each cell represents the correlation between the logits of two attributes.  Strong positive correlations (red) indicate that the model strongly associates the two attributes, suggesting a strong learned relationship in the model.  Negative correlations (blue) mean the model associates the attributes inversely.  The diagonal line shows perfect correlation between an attribute and itself. This figure helps understand the nature of knowledge composition within the model.
> <details>
> <summary>read the caption</summary>
> Figure 17: The attribute correlation between NTP logits of mistral-7b-v0.3.
> </details>



![](https://arxiv.org/html/2502.04520/x18.png)

> 🔼 This heatmap visualizes the linear correlation between next-token prediction (NTP) logits from different knowledge prompts in the LLaMA-3-8B language model.  The rows and columns represent source and target knowledge prompts, respectively, and the color intensity of each cell reflects the strength of the linear correlation between the logits of the corresponding prompts.  Darker red indicates a strong positive correlation, while darker blue indicates a strong negative correlation.  The figure is used to illustrate the existence of linear correlations between related knowledge pairs and the resilience of these correlations to large-scale fine-tuning. The specific knowledge categories are indicated within the heatmap.
> <details>
> <summary>read the caption</summary>
> Figure 18: The linear correlation between NTP logits of llama-3.2-3b.
> </details>



![](https://arxiv.org/html/2502.04520/x19.png)

> 🔼 This figure visualizes the correlation matrices of next token prediction (NTP) logits from the LLaMA-3 3B parameter model.  The left panel shows the correlation before large-scale post-training, while the right panel shows the correlation after the post-training.  Comparing these two matrices reveals the resilience of linear correlations in the model's parameters to significant fine-tuning.  The color intensity in each matrix represents the strength of the correlation between different logits.  Darker reds indicate strong positive correlations, while darker blues indicate strong negative correlations.  The figure provides visual evidence that relationships between logits captured before fine-tuning are largely maintained after the model undergoes substantial post-training.
> <details>
> <summary>read the caption</summary>
> Figure 19: The linear correlation between NTP logits of llama-3.2-3b before and after large-scale post-training.
> </details>



![](https://arxiv.org/html/2502.04520/x20.png)

> 🔼 This figure displays the correlation matrices for three different sizes of LLAMA language models (1B, 3B, and 8B parameters) before and after large-scale post-training.  It visually demonstrates how the linear correlation between next-token prediction (NTP) logits of related knowledge pairs, as established prior to fine-tuning, remains consistent even after extensive post-training. The increased robustness of the correlation in larger models suggests that the effect is more prominent and resilient in models with greater scale and capacity.
> <details>
> <summary>read the caption</summary>
> Figure 20: The correlation becomes more resilient in larger LMs.
> </details>



![](https://arxiv.org/html/2502.04520/x21.png)

> 🔼 This figure displays heatmaps visualizing the correlation between next-token prediction (NTP) logits from the Mistral-7b-v0.3 language model.  It compares the correlation matrices before and after large-scale post-training. The heatmaps allow for a visual comparison of how the relationships between different word tokens change before and after the model undergoes further training.  A strong correlation between logits suggests a stronger relationship between corresponding words, highlighting the impact of post-training on the model's understanding of word relationships.
> <details>
> <summary>read the caption</summary>
> Figure 21: The correlation between logits from mistral-7b-v0.3 before and after post-training.
> </details>



![](https://arxiv.org/html/2502.04520/x22.png)

> 🔼 This figure compares the cross-lingual correlation of language models between Aya and LLaMA.  Specifically, it visualizes the correlation between language pairs' output logits.  The heatmaps illustrate the strength of linear correlation discovered in the study.  Higher correlation indicates a stronger association between the logits of related concepts in different languages.  The comparison highlights how the multilingual nature of Aya impacts its ability to correlate concepts in diverse languages, particularly when compared to the primarily English-centric training of LLaMA.  Note that this comparison focuses on the consistency of correlated concepts, not the accuracy or completeness of the concepts themselves.
> <details>
> <summary>read the caption</summary>
> Figure 22: The comparison between Aya and LLaMA in cross-lingual correlation.
> </details>



![](https://arxiv.org/html/2502.04520/x23.png)

> 🔼 This figure visualizes the standard deviation (std) of the label-wise correlation distribution between next token prediction (NTP) logits.  It provides insight into how consistent the linear correlations are across different knowledge pairs and addresses the concern that the correlation might primarily reflect the majority property of labels or be biased by highly correlated pairs. The heatmap shows the standard deviations, with lower values indicating more consistent correlations.
> <details>
> <summary>read the caption</summary>
> Figure 23: The std of correlation distribution between logits.
> </details>



![](https://arxiv.org/html/2502.04520/x24.png)

> 🔼 This figure shows the standard deviation (std) of the label-wise Pearson correlation coefficients before and after large-scale post-training.  It visualizes the dispersion or spread of the correlation values across different pairs of next-token prediction (NTP) logits. A low standard deviation indicates that the correlations are clustered around a central value, implying a more consistent relationship between the logits, whereas a higher standard deviation indicates more variability in the strength of the linear relationships. This analysis helps assess the robustness of the linear correlation against the large-scale fine-tuning process, demonstrating its resilience in capturing consistent patterns in the data.
> <details>
> <summary>read the caption</summary>
> Figure 24: The std of correlation distribution between logits before and after large-scale post-training.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S3.T2.66.66">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S3.T2.66.66.67.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_tt" id="S3.T2.66.66.67.1.1" rowspan="3"><span class="ltx_text" id="S3.T2.66.66.67.1.1.1" style="font-size:90%;">Relation Pair</span></th>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="6" id="S3.T2.66.66.67.1.2"><span class="ltx_text" id="S3.T2.66.66.67.1.2.1" style="font-size:90%;">Hit@Top-N</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.66.66.68.2">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="3" id="S3.T2.66.66.68.2.1"><span class="ltx_text" id="S3.T2.66.66.68.2.1.1" style="font-size:90%;">Influenced Target</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" colspan="3" id="S3.T2.66.66.68.2.2"><span class="ltx_text" id="S3.T2.66.66.68.2.2.1" style="font-size:90%;">Influencing Source</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.6.6.6">
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.1.1.1.1"><math alttext="1" class="ltx_Math" display="inline" id="S3.T2.1.1.1.1.m1.1"><semantics id="S3.T2.1.1.1.1.m1.1a"><mn id="S3.T2.1.1.1.1.m1.1.1" mathsize="90%" xref="S3.T2.1.1.1.1.m1.1.1.cmml">1</mn><annotation-xml encoding="MathML-Content" id="S3.T2.1.1.1.1.m1.1b"><cn id="S3.T2.1.1.1.1.m1.1.1.cmml" type="integer" xref="S3.T2.1.1.1.1.m1.1.1">1</cn></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.1.1.1.1.m1.1c">1</annotation><annotation encoding="application/x-llamapun" id="S3.T2.1.1.1.1.m1.1d">1</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.2.2.2.2"><math alttext="3" class="ltx_Math" display="inline" id="S3.T2.2.2.2.2.m1.1"><semantics id="S3.T2.2.2.2.2.m1.1a"><mn id="S3.T2.2.2.2.2.m1.1.1" mathsize="90%" xref="S3.T2.2.2.2.2.m1.1.1.cmml">3</mn><annotation-xml encoding="MathML-Content" id="S3.T2.2.2.2.2.m1.1b"><cn id="S3.T2.2.2.2.2.m1.1.1.cmml" type="integer" xref="S3.T2.2.2.2.2.m1.1.1">3</cn></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.2.2.2.2.m1.1c">3</annotation><annotation encoding="application/x-llamapun" id="S3.T2.2.2.2.2.m1.1d">3</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.3.3.3.3"><math alttext="5" class="ltx_Math" display="inline" id="S3.T2.3.3.3.3.m1.1"><semantics id="S3.T2.3.3.3.3.m1.1a"><mn id="S3.T2.3.3.3.3.m1.1.1" mathsize="90%" xref="S3.T2.3.3.3.3.m1.1.1.cmml">5</mn><annotation-xml encoding="MathML-Content" id="S3.T2.3.3.3.3.m1.1b"><cn id="S3.T2.3.3.3.3.m1.1.1.cmml" type="integer" xref="S3.T2.3.3.3.3.m1.1.1">5</cn></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.3.3.3.3.m1.1c">5</annotation><annotation encoding="application/x-llamapun" id="S3.T2.3.3.3.3.m1.1d">5</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.4.4.4.4"><math alttext="1" class="ltx_Math" display="inline" id="S3.T2.4.4.4.4.m1.1"><semantics id="S3.T2.4.4.4.4.m1.1a"><mn id="S3.T2.4.4.4.4.m1.1.1" mathsize="90%" xref="S3.T2.4.4.4.4.m1.1.1.cmml">1</mn><annotation-xml encoding="MathML-Content" id="S3.T2.4.4.4.4.m1.1b"><cn id="S3.T2.4.4.4.4.m1.1.1.cmml" type="integer" xref="S3.T2.4.4.4.4.m1.1.1">1</cn></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.4.4.4.4.m1.1c">1</annotation><annotation encoding="application/x-llamapun" id="S3.T2.4.4.4.4.m1.1d">1</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.5.5.5.5"><math alttext="3" class="ltx_Math" display="inline" id="S3.T2.5.5.5.5.m1.1"><semantics id="S3.T2.5.5.5.5.m1.1a"><mn id="S3.T2.5.5.5.5.m1.1.1" mathsize="90%" xref="S3.T2.5.5.5.5.m1.1.1.cmml">3</mn><annotation-xml encoding="MathML-Content" id="S3.T2.5.5.5.5.m1.1b"><cn id="S3.T2.5.5.5.5.m1.1.1.cmml" type="integer" xref="S3.T2.5.5.5.5.m1.1.1">3</cn></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.5.5.5.5.m1.1c">3</annotation><annotation encoding="application/x-llamapun" id="S3.T2.5.5.5.5.m1.1d">3</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.6.6.6.6"><math alttext="5" class="ltx_Math" display="inline" id="S3.T2.6.6.6.6.m1.1"><semantics id="S3.T2.6.6.6.6.m1.1a"><mn id="S3.T2.6.6.6.6.m1.1.1" mathsize="90%" xref="S3.T2.6.6.6.6.m1.1.1.cmml">5</mn><annotation-xml encoding="MathML-Content" id="S3.T2.6.6.6.6.m1.1b"><cn id="S3.T2.6.6.6.6.m1.1.1.cmml" type="integer" xref="S3.T2.6.6.6.6.m1.1.1">5</cn></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.6.6.6.6.m1.1c">5</annotation><annotation encoding="application/x-llamapun" id="S3.T2.6.6.6.6.m1.1d">5</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S3.T2.13.13.13">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S3.T2.7.7.7.1">
<span class="ltx_text" id="S3.T2.7.7.7.1.1" style="font-size:90%;">City</span><math alttext="\rightarrow" class="ltx_Math" display="inline" id="S3.T2.7.7.7.1.m1.1"><semantics id="S3.T2.7.7.7.1.m1.1a"><mo id="S3.T2.7.7.7.1.m1.1.1" mathsize="90%" stretchy="false" xref="S3.T2.7.7.7.1.m1.1.1.cmml">→</mo><annotation-xml encoding="MathML-Content" id="S3.T2.7.7.7.1.m1.1b"><ci id="S3.T2.7.7.7.1.m1.1.1.cmml" xref="S3.T2.7.7.7.1.m1.1.1">→</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.7.7.7.1.m1.1c">\rightarrow</annotation><annotation encoding="application/x-llamapun" id="S3.T2.7.7.7.1.m1.1d">→</annotation></semantics></math><span class="ltx_text" id="S3.T2.7.7.7.1.2" style="font-size:90%;">Country</span>
</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.8.8.8.2"><math alttext="0.42" class="ltx_Math" display="inline" id="S3.T2.8.8.8.2.m1.1"><semantics id="S3.T2.8.8.8.2.m1.1a"><mn id="S3.T2.8.8.8.2.m1.1.1" mathsize="90%" xref="S3.T2.8.8.8.2.m1.1.1.cmml">0.42</mn><annotation-xml encoding="MathML-Content" id="S3.T2.8.8.8.2.m1.1b"><cn id="S3.T2.8.8.8.2.m1.1.1.cmml" type="float" xref="S3.T2.8.8.8.2.m1.1.1">0.42</cn></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.8.8.8.2.m1.1c">0.42</annotation><annotation encoding="application/x-llamapun" id="S3.T2.8.8.8.2.m1.1d">0.42</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.9.9.9.3"><math alttext="0.45" class="ltx_Math" display="inline" id="S3.T2.9.9.9.3.m1.1"><semantics id="S3.T2.9.9.9.3.m1.1a"><mn id="S3.T2.9.9.9.3.m1.1.1" mathsize="90%" xref="S3.T2.9.9.9.3.m1.1.1.cmml">0.45</mn><annotation-xml encoding="MathML-Content" id="S3.T2.9.9.9.3.m1.1b"><cn id="S3.T2.9.9.9.3.m1.1.1.cmml" type="float" xref="S3.T2.9.9.9.3.m1.1.1">0.45</cn></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.9.9.9.3.m1.1c">0.45</annotation><annotation encoding="application/x-llamapun" id="S3.T2.9.9.9.3.m1.1d">0.45</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.10.10.10.4"><math alttext="0.48" class="ltx_Math" display="inline" id="S3.T2.10.10.10.4.m1.1"><semantics id="S3.T2.10.10.10.4.m1.1a"><mn id="S3.T2.10.10.10.4.m1.1.1" mathsize="90%" xref="S3.T2.10.10.10.4.m1.1.1.cmml">0.48</mn><annotation-xml encoding="MathML-Content" id="S3.T2.10.10.10.4.m1.1b"><cn id="S3.T2.10.10.10.4.m1.1.1.cmml" type="float" xref="S3.T2.10.10.10.4.m1.1.1">0.48</cn></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.10.10.10.4.m1.1c">0.48</annotation><annotation encoding="application/x-llamapun" id="S3.T2.10.10.10.4.m1.1d">0.48</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.11.11.11.5"><math alttext="0.67" class="ltx_Math" display="inline" id="S3.T2.11.11.11.5.m1.1"><semantics id="S3.T2.11.11.11.5.m1.1a"><mn id="S3.T2.11.11.11.5.m1.1.1" mathsize="90%" xref="S3.T2.11.11.11.5.m1.1.1.cmml">0.67</mn><annotation-xml encoding="MathML-Content" id="S3.T2.11.11.11.5.m1.1b"><cn id="S3.T2.11.11.11.5.m1.1.1.cmml" type="float" xref="S3.T2.11.11.11.5.m1.1.1">0.67</cn></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.11.11.11.5.m1.1c">0.67</annotation><annotation encoding="application/x-llamapun" id="S3.T2.11.11.11.5.m1.1d">0.67</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.12.12.12.6"><math alttext="0.74" class="ltx_Math" display="inline" id="S3.T2.12.12.12.6.m1.1"><semantics id="S3.T2.12.12.12.6.m1.1a"><mn id="S3.T2.12.12.12.6.m1.1.1" mathsize="90%" xref="S3.T2.12.12.12.6.m1.1.1.cmml">0.74</mn><annotation-xml encoding="MathML-Content" id="S3.T2.12.12.12.6.m1.1b"><cn id="S3.T2.12.12.12.6.m1.1.1.cmml" type="float" xref="S3.T2.12.12.12.6.m1.1.1">0.74</cn></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.12.12.12.6.m1.1c">0.74</annotation><annotation encoding="application/x-llamapun" id="S3.T2.12.12.12.6.m1.1d">0.74</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.13.13.13.7"><math alttext="0.78" class="ltx_Math" display="inline" id="S3.T2.13.13.13.7.m1.1"><semantics id="S3.T2.13.13.13.7.m1.1a"><mn id="S3.T2.13.13.13.7.m1.1.1" mathsize="90%" xref="S3.T2.13.13.13.7.m1.1.1.cmml">0.78</mn><annotation-xml encoding="MathML-Content" id="S3.T2.13.13.13.7.m1.1b"><cn id="S3.T2.13.13.13.7.m1.1.1.cmml" type="float" xref="S3.T2.13.13.13.7.m1.1.1">0.78</cn></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.13.13.13.7.m1.1c">0.78</annotation><annotation encoding="application/x-llamapun" id="S3.T2.13.13.13.7.m1.1d">0.78</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S3.T2.20.20.20">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T2.14.14.14.1">
<span class="ltx_text" id="S3.T2.14.14.14.1.1" style="font-size:90%;">CEO</span><math alttext="\rightarrow" class="ltx_Math" display="inline" id="S3.T2.14.14.14.1.m1.1"><semantics id="S3.T2.14.14.14.1.m1.1a"><mo id="S3.T2.14.14.14.1.m1.1.1" mathsize="90%" stretchy="false" xref="S3.T2.14.14.14.1.m1.1.1.cmml">→</mo><annotation-xml encoding="MathML-Content" id="S3.T2.14.14.14.1.m1.1b"><ci id="S3.T2.14.14.14.1.m1.1.1.cmml" xref="S3.T2.14.14.14.1.m1.1.1">→</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.14.14.14.1.m1.1c">\rightarrow</annotation><annotation encoding="application/x-llamapun" id="S3.T2.14.14.14.1.m1.1d">→</annotation></semantics></math><span class="ltx_text" id="S3.T2.14.14.14.1.2" style="font-size:90%;">Company</span>
</th>
<td class="ltx_td ltx_align_center" id="S3.T2.15.15.15.2"><math alttext="0.09" class="ltx_Math" display="inline" id="S3.T2.15.15.15.2.m1.1"><semantics id="S3.T2.15.15.15.2.m1.1a"><mn id="S3.T2.15.15.15.2.m1.1.1" mathsize="90%" xref="S3.T2.15.15.15.2.m1.1.1.cmml">0.09</mn><annotation-xml encoding="MathML-Content" id="S3.T2.15.15.15.2.m1.1b"><cn id="S3.T2.15.15.15.2.m1.1.1.cmml" type="float" xref="S3.T2.15.15.15.2.m1.1.1">0.09</cn></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.15.15.15.2.m1.1c">0.09</annotation><annotation encoding="application/x-llamapun" id="S3.T2.15.15.15.2.m1.1d">0.09</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S3.T2.16.16.16.3"><math alttext="0.09" class="ltx_Math" display="inline" id="S3.T2.16.16.16.3.m1.1"><semantics id="S3.T2.16.16.16.3.m1.1a"><mn id="S3.T2.16.16.16.3.m1.1.1" mathsize="90%" xref="S3.T2.16.16.16.3.m1.1.1.cmml">0.09</mn><annotation-xml encoding="MathML-Content" id="S3.T2.16.16.16.3.m1.1b"><cn id="S3.T2.16.16.16.3.m1.1.1.cmml" type="float" xref="S3.T2.16.16.16.3.m1.1.1">0.09</cn></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.16.16.16.3.m1.1c">0.09</annotation><annotation encoding="application/x-llamapun" id="S3.T2.16.16.16.3.m1.1d">0.09</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S3.T2.17.17.17.4"><math alttext="0.14" class="ltx_Math" display="inline" id="S3.T2.17.17.17.4.m1.1"><semantics id="S3.T2.17.17.17.4.m1.1a"><mn id="S3.T2.17.17.17.4.m1.1.1" mathsize="90%" xref="S3.T2.17.17.17.4.m1.1.1.cmml">0.14</mn><annotation-xml encoding="MathML-Content" id="S3.T2.17.17.17.4.m1.1b"><cn id="S3.T2.17.17.17.4.m1.1.1.cmml" type="float" xref="S3.T2.17.17.17.4.m1.1.1">0.14</cn></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.17.17.17.4.m1.1c">0.14</annotation><annotation encoding="application/x-llamapun" id="S3.T2.17.17.17.4.m1.1d">0.14</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S3.T2.18.18.18.5"><math alttext="0.05" class="ltx_Math" display="inline" id="S3.T2.18.18.18.5.m1.1"><semantics id="S3.T2.18.18.18.5.m1.1a"><mn id="S3.T2.18.18.18.5.m1.1.1" mathsize="90%" xref="S3.T2.18.18.18.5.m1.1.1.cmml">0.05</mn><annotation-xml encoding="MathML-Content" id="S3.T2.18.18.18.5.m1.1b"><cn id="S3.T2.18.18.18.5.m1.1.1.cmml" type="float" xref="S3.T2.18.18.18.5.m1.1.1">0.05</cn></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.18.18.18.5.m1.1c">0.05</annotation><annotation encoding="application/x-llamapun" id="S3.T2.18.18.18.5.m1.1d">0.05</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S3.T2.19.19.19.6"><math alttext="0.05" class="ltx_Math" display="inline" id="S3.T2.19.19.19.6.m1.1"><semantics id="S3.T2.19.19.19.6.m1.1a"><mn id="S3.T2.19.19.19.6.m1.1.1" mathsize="90%" xref="S3.T2.19.19.19.6.m1.1.1.cmml">0.05</mn><annotation-xml encoding="MathML-Content" id="S3.T2.19.19.19.6.m1.1b"><cn id="S3.T2.19.19.19.6.m1.1.1.cmml" type="float" xref="S3.T2.19.19.19.6.m1.1.1">0.05</cn></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.19.19.19.6.m1.1c">0.05</annotation><annotation encoding="application/x-llamapun" id="S3.T2.19.19.19.6.m1.1d">0.05</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S3.T2.20.20.20.7"><math alttext="0.08" class="ltx_Math" display="inline" id="S3.T2.20.20.20.7.m1.1"><semantics id="S3.T2.20.20.20.7.m1.1a"><mn id="S3.T2.20.20.20.7.m1.1.1" mathsize="90%" xref="S3.T2.20.20.20.7.m1.1.1.cmml">0.08</mn><annotation-xml encoding="MathML-Content" id="S3.T2.20.20.20.7.m1.1b"><cn id="S3.T2.20.20.20.7.m1.1.1.cmml" type="float" xref="S3.T2.20.20.20.7.m1.1.1">0.08</cn></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.20.20.20.7.m1.1c">0.08</annotation><annotation encoding="application/x-llamapun" id="S3.T2.20.20.20.7.m1.1d">0.08</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S3.T2.29.29.29">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S3.T2.23.23.23.3">
<span class="ltx_text" id="S3.T2.23.23.23.3.1" style="font-size:90%;">City</span><math alttext="{}_{\textrm{en}}" class="ltx_Math" display="inline" id="S3.T2.21.21.21.1.m1.1"><semantics id="S3.T2.21.21.21.1.m1.1a"><msub id="S3.T2.21.21.21.1.m1.1.1" xref="S3.T2.21.21.21.1.m1.1.1.cmml"><mi id="S3.T2.21.21.21.1.m1.1.1a" xref="S3.T2.21.21.21.1.m1.1.1.cmml"></mi><mtext id="S3.T2.21.21.21.1.m1.1.1.1" mathsize="90%" xref="S3.T2.21.21.21.1.m1.1.1.1a.cmml">en</mtext></msub><annotation-xml encoding="MathML-Content" id="S3.T2.21.21.21.1.m1.1b"><apply id="S3.T2.21.21.21.1.m1.1.1.cmml" xref="S3.T2.21.21.21.1.m1.1.1"><ci id="S3.T2.21.21.21.1.m1.1.1.1a.cmml" xref="S3.T2.21.21.21.1.m1.1.1.1"><mtext id="S3.T2.21.21.21.1.m1.1.1.1.cmml" mathsize="63%" xref="S3.T2.21.21.21.1.m1.1.1.1">en</mtext></ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.21.21.21.1.m1.1c">{}_{\textrm{en}}</annotation><annotation encoding="application/x-llamapun" id="S3.T2.21.21.21.1.m1.1d">start_FLOATSUBSCRIPT en end_FLOATSUBSCRIPT</annotation></semantics></math><math alttext="\rightarrow" class="ltx_Math" display="inline" id="S3.T2.22.22.22.2.m2.1"><semantics id="S3.T2.22.22.22.2.m2.1a"><mo id="S3.T2.22.22.22.2.m2.1.1" mathsize="90%" stretchy="false" xref="S3.T2.22.22.22.2.m2.1.1.cmml">→</mo><annotation-xml encoding="MathML-Content" id="S3.T2.22.22.22.2.m2.1b"><ci id="S3.T2.22.22.22.2.m2.1.1.cmml" xref="S3.T2.22.22.22.2.m2.1.1">→</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.22.22.22.2.m2.1c">\rightarrow</annotation><annotation encoding="application/x-llamapun" id="S3.T2.22.22.22.2.m2.1d">→</annotation></semantics></math><span class="ltx_text" id="S3.T2.23.23.23.3.2" style="font-size:90%;">City</span><math alttext="{}_{\textrm{es}}" class="ltx_Math" display="inline" id="S3.T2.23.23.23.3.m3.1"><semantics id="S3.T2.23.23.23.3.m3.1a"><msub id="S3.T2.23.23.23.3.m3.1.1" xref="S3.T2.23.23.23.3.m3.1.1.cmml"><mi id="S3.T2.23.23.23.3.m3.1.1a" xref="S3.T2.23.23.23.3.m3.1.1.cmml"></mi><mtext id="S3.T2.23.23.23.3.m3.1.1.1" mathsize="90%" xref="S3.T2.23.23.23.3.m3.1.1.1a.cmml">es</mtext></msub><annotation-xml encoding="MathML-Content" id="S3.T2.23.23.23.3.m3.1b"><apply id="S3.T2.23.23.23.3.m3.1.1.cmml" xref="S3.T2.23.23.23.3.m3.1.1"><ci id="S3.T2.23.23.23.3.m3.1.1.1a.cmml" xref="S3.T2.23.23.23.3.m3.1.1.1"><mtext id="S3.T2.23.23.23.3.m3.1.1.1.cmml" mathsize="63%" xref="S3.T2.23.23.23.3.m3.1.1.1">es</mtext></ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.23.23.23.3.m3.1c">{}_{\textrm{es}}</annotation><annotation encoding="application/x-llamapun" id="S3.T2.23.23.23.3.m3.1d">start_FLOATSUBSCRIPT es end_FLOATSUBSCRIPT</annotation></semantics></math>
</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.24.24.24.4"><math alttext="0.91" class="ltx_Math" display="inline" id="S3.T2.24.24.24.4.m1.1"><semantics id="S3.T2.24.24.24.4.m1.1a"><mn id="S3.T2.24.24.24.4.m1.1.1" mathsize="90%" xref="S3.T2.24.24.24.4.m1.1.1.cmml">0.91</mn><annotation-xml encoding="MathML-Content" id="S3.T2.24.24.24.4.m1.1b"><cn id="S3.T2.24.24.24.4.m1.1.1.cmml" type="float" xref="S3.T2.24.24.24.4.m1.1.1">0.91</cn></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.24.24.24.4.m1.1c">0.91</annotation><annotation encoding="application/x-llamapun" id="S3.T2.24.24.24.4.m1.1d">0.91</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.25.25.25.5"><math alttext="0.91" class="ltx_Math" display="inline" id="S3.T2.25.25.25.5.m1.1"><semantics id="S3.T2.25.25.25.5.m1.1a"><mn id="S3.T2.25.25.25.5.m1.1.1" mathsize="90%" xref="S3.T2.25.25.25.5.m1.1.1.cmml">0.91</mn><annotation-xml encoding="MathML-Content" id="S3.T2.25.25.25.5.m1.1b"><cn id="S3.T2.25.25.25.5.m1.1.1.cmml" type="float" xref="S3.T2.25.25.25.5.m1.1.1">0.91</cn></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.25.25.25.5.m1.1c">0.91</annotation><annotation encoding="application/x-llamapun" id="S3.T2.25.25.25.5.m1.1d">0.91</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.26.26.26.6"><math alttext="0.92" class="ltx_Math" display="inline" id="S3.T2.26.26.26.6.m1.1"><semantics id="S3.T2.26.26.26.6.m1.1a"><mn id="S3.T2.26.26.26.6.m1.1.1" mathsize="90%" xref="S3.T2.26.26.26.6.m1.1.1.cmml">0.92</mn><annotation-xml encoding="MathML-Content" id="S3.T2.26.26.26.6.m1.1b"><cn id="S3.T2.26.26.26.6.m1.1.1.cmml" type="float" xref="S3.T2.26.26.26.6.m1.1.1">0.92</cn></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.26.26.26.6.m1.1c">0.92</annotation><annotation encoding="application/x-llamapun" id="S3.T2.26.26.26.6.m1.1d">0.92</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.27.27.27.7"><math alttext="0.67" class="ltx_Math" display="inline" id="S3.T2.27.27.27.7.m1.1"><semantics id="S3.T2.27.27.27.7.m1.1a"><mn id="S3.T2.27.27.27.7.m1.1.1" mathsize="90%" xref="S3.T2.27.27.27.7.m1.1.1.cmml">0.67</mn><annotation-xml encoding="MathML-Content" id="S3.T2.27.27.27.7.m1.1b"><cn id="S3.T2.27.27.27.7.m1.1.1.cmml" type="float" xref="S3.T2.27.27.27.7.m1.1.1">0.67</cn></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.27.27.27.7.m1.1c">0.67</annotation><annotation encoding="application/x-llamapun" id="S3.T2.27.27.27.7.m1.1d">0.67</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.28.28.28.8"><math alttext="0.74" class="ltx_Math" display="inline" id="S3.T2.28.28.28.8.m1.1"><semantics id="S3.T2.28.28.28.8.m1.1a"><mn id="S3.T2.28.28.28.8.m1.1.1" mathsize="90%" xref="S3.T2.28.28.28.8.m1.1.1.cmml">0.74</mn><annotation-xml encoding="MathML-Content" id="S3.T2.28.28.28.8.m1.1b"><cn id="S3.T2.28.28.28.8.m1.1.1.cmml" type="float" xref="S3.T2.28.28.28.8.m1.1.1">0.74</cn></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.28.28.28.8.m1.1c">0.74</annotation><annotation encoding="application/x-llamapun" id="S3.T2.28.28.28.8.m1.1d">0.74</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.29.29.29.9"><math alttext="0.78" class="ltx_Math" display="inline" id="S3.T2.29.29.29.9.m1.1"><semantics id="S3.T2.29.29.29.9.m1.1a"><mn id="S3.T2.29.29.29.9.m1.1.1" mathsize="90%" xref="S3.T2.29.29.29.9.m1.1.1.cmml">0.78</mn><annotation-xml encoding="MathML-Content" id="S3.T2.29.29.29.9.m1.1b"><cn id="S3.T2.29.29.29.9.m1.1.1.cmml" type="float" xref="S3.T2.29.29.29.9.m1.1.1">0.78</cn></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.29.29.29.9.m1.1c">0.78</annotation><annotation encoding="application/x-llamapun" id="S3.T2.29.29.29.9.m1.1d">0.78</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S3.T2.38.38.38">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T2.32.32.32.3">
<span class="ltx_text" id="S3.T2.32.32.32.3.1" style="font-size:90%;">City</span><math alttext="{}_{\textrm{en}}" class="ltx_Math" display="inline" id="S3.T2.30.30.30.1.m1.1"><semantics id="S3.T2.30.30.30.1.m1.1a"><msub id="S3.T2.30.30.30.1.m1.1.1" xref="S3.T2.30.30.30.1.m1.1.1.cmml"><mi id="S3.T2.30.30.30.1.m1.1.1a" xref="S3.T2.30.30.30.1.m1.1.1.cmml"></mi><mtext id="S3.T2.30.30.30.1.m1.1.1.1" mathsize="90%" xref="S3.T2.30.30.30.1.m1.1.1.1a.cmml">en</mtext></msub><annotation-xml encoding="MathML-Content" id="S3.T2.30.30.30.1.m1.1b"><apply id="S3.T2.30.30.30.1.m1.1.1.cmml" xref="S3.T2.30.30.30.1.m1.1.1"><ci id="S3.T2.30.30.30.1.m1.1.1.1a.cmml" xref="S3.T2.30.30.30.1.m1.1.1.1"><mtext id="S3.T2.30.30.30.1.m1.1.1.1.cmml" mathsize="63%" xref="S3.T2.30.30.30.1.m1.1.1.1">en</mtext></ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.30.30.30.1.m1.1c">{}_{\textrm{en}}</annotation><annotation encoding="application/x-llamapun" id="S3.T2.30.30.30.1.m1.1d">start_FLOATSUBSCRIPT en end_FLOATSUBSCRIPT</annotation></semantics></math><math alttext="\rightarrow" class="ltx_Math" display="inline" id="S3.T2.31.31.31.2.m2.1"><semantics id="S3.T2.31.31.31.2.m2.1a"><mo id="S3.T2.31.31.31.2.m2.1.1" mathsize="90%" stretchy="false" xref="S3.T2.31.31.31.2.m2.1.1.cmml">→</mo><annotation-xml encoding="MathML-Content" id="S3.T2.31.31.31.2.m2.1b"><ci id="S3.T2.31.31.31.2.m2.1.1.cmml" xref="S3.T2.31.31.31.2.m2.1.1">→</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.31.31.31.2.m2.1c">\rightarrow</annotation><annotation encoding="application/x-llamapun" id="S3.T2.31.31.31.2.m2.1d">→</annotation></semantics></math><span class="ltx_text" id="S3.T2.32.32.32.3.2" style="font-size:90%;">City</span><math alttext="{}_{\textrm{zh}}" class="ltx_Math" display="inline" id="S3.T2.32.32.32.3.m3.1"><semantics id="S3.T2.32.32.32.3.m3.1a"><msub id="S3.T2.32.32.32.3.m3.1.1" xref="S3.T2.32.32.32.3.m3.1.1.cmml"><mi id="S3.T2.32.32.32.3.m3.1.1a" xref="S3.T2.32.32.32.3.m3.1.1.cmml"></mi><mtext id="S3.T2.32.32.32.3.m3.1.1.1" mathsize="90%" xref="S3.T2.32.32.32.3.m3.1.1.1a.cmml">zh</mtext></msub><annotation-xml encoding="MathML-Content" id="S3.T2.32.32.32.3.m3.1b"><apply id="S3.T2.32.32.32.3.m3.1.1.cmml" xref="S3.T2.32.32.32.3.m3.1.1"><ci id="S3.T2.32.32.32.3.m3.1.1.1a.cmml" xref="S3.T2.32.32.32.3.m3.1.1.1"><mtext id="S3.T2.32.32.32.3.m3.1.1.1.cmml" mathsize="63%" xref="S3.T2.32.32.32.3.m3.1.1.1">zh</mtext></ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.32.32.32.3.m3.1c">{}_{\textrm{zh}}</annotation><annotation encoding="application/x-llamapun" id="S3.T2.32.32.32.3.m3.1d">start_FLOATSUBSCRIPT zh end_FLOATSUBSCRIPT</annotation></semantics></math>
</th>
<td class="ltx_td ltx_align_center" id="S3.T2.33.33.33.4"><math alttext="0.10" class="ltx_Math" display="inline" id="S3.T2.33.33.33.4.m1.1"><semantics id="S3.T2.33.33.33.4.m1.1a"><mn id="S3.T2.33.33.33.4.m1.1.1" mathsize="90%" xref="S3.T2.33.33.33.4.m1.1.1.cmml">0.10</mn><annotation-xml encoding="MathML-Content" id="S3.T2.33.33.33.4.m1.1b"><cn id="S3.T2.33.33.33.4.m1.1.1.cmml" type="float" xref="S3.T2.33.33.33.4.m1.1.1">0.10</cn></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.33.33.33.4.m1.1c">0.10</annotation><annotation encoding="application/x-llamapun" id="S3.T2.33.33.33.4.m1.1d">0.10</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S3.T2.34.34.34.5"><math alttext="0.13" class="ltx_Math" display="inline" id="S3.T2.34.34.34.5.m1.1"><semantics id="S3.T2.34.34.34.5.m1.1a"><mn id="S3.T2.34.34.34.5.m1.1.1" mathsize="90%" xref="S3.T2.34.34.34.5.m1.1.1.cmml">0.13</mn><annotation-xml encoding="MathML-Content" id="S3.T2.34.34.34.5.m1.1b"><cn id="S3.T2.34.34.34.5.m1.1.1.cmml" type="float" xref="S3.T2.34.34.34.5.m1.1.1">0.13</cn></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.34.34.34.5.m1.1c">0.13</annotation><annotation encoding="application/x-llamapun" id="S3.T2.34.34.34.5.m1.1d">0.13</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S3.T2.35.35.35.6"><math alttext="0.16" class="ltx_Math" display="inline" id="S3.T2.35.35.35.6.m1.1"><semantics id="S3.T2.35.35.35.6.m1.1a"><mn id="S3.T2.35.35.35.6.m1.1.1" mathsize="90%" xref="S3.T2.35.35.35.6.m1.1.1.cmml">0.16</mn><annotation-xml encoding="MathML-Content" id="S3.T2.35.35.35.6.m1.1b"><cn id="S3.T2.35.35.35.6.m1.1.1.cmml" type="float" xref="S3.T2.35.35.35.6.m1.1.1">0.16</cn></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.35.35.35.6.m1.1c">0.16</annotation><annotation encoding="application/x-llamapun" id="S3.T2.35.35.35.6.m1.1d">0.16</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S3.T2.36.36.36.7"><math alttext="0.09" class="ltx_Math" display="inline" id="S3.T2.36.36.36.7.m1.1"><semantics id="S3.T2.36.36.36.7.m1.1a"><mn id="S3.T2.36.36.36.7.m1.1.1" mathsize="90%" xref="S3.T2.36.36.36.7.m1.1.1.cmml">0.09</mn><annotation-xml encoding="MathML-Content" id="S3.T2.36.36.36.7.m1.1b"><cn id="S3.T2.36.36.36.7.m1.1.1.cmml" type="float" xref="S3.T2.36.36.36.7.m1.1.1">0.09</cn></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.36.36.36.7.m1.1c">0.09</annotation><annotation encoding="application/x-llamapun" id="S3.T2.36.36.36.7.m1.1d">0.09</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S3.T2.37.37.37.8"><math alttext="0.11" class="ltx_Math" display="inline" id="S3.T2.37.37.37.8.m1.1"><semantics id="S3.T2.37.37.37.8.m1.1a"><mn id="S3.T2.37.37.37.8.m1.1.1" mathsize="90%" xref="S3.T2.37.37.37.8.m1.1.1.cmml">0.11</mn><annotation-xml encoding="MathML-Content" id="S3.T2.37.37.37.8.m1.1b"><cn id="S3.T2.37.37.37.8.m1.1.1.cmml" type="float" xref="S3.T2.37.37.37.8.m1.1.1">0.11</cn></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.37.37.37.8.m1.1c">0.11</annotation><annotation encoding="application/x-llamapun" id="S3.T2.37.37.37.8.m1.1d">0.11</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S3.T2.38.38.38.9"><math alttext="0.15" class="ltx_Math" display="inline" id="S3.T2.38.38.38.9.m1.1"><semantics id="S3.T2.38.38.38.9.m1.1a"><mn id="S3.T2.38.38.38.9.m1.1.1" mathsize="90%" xref="S3.T2.38.38.38.9.m1.1.1.cmml">0.15</mn><annotation-xml encoding="MathML-Content" id="S3.T2.38.38.38.9.m1.1b"><cn id="S3.T2.38.38.38.9.m1.1.1.cmml" type="float" xref="S3.T2.38.38.38.9.m1.1.1">0.15</cn></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.38.38.38.9.m1.1c">0.15</annotation><annotation encoding="application/x-llamapun" id="S3.T2.38.38.38.9.m1.1d">0.15</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S3.T2.45.45.45">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S3.T2.39.39.39.1">
<span class="ltx_text" id="S3.T2.39.39.39.1.1" style="font-size:90%;">Fruit</span><math alttext="\rightarrow" class="ltx_Math" display="inline" id="S3.T2.39.39.39.1.m1.1"><semantics id="S3.T2.39.39.39.1.m1.1a"><mo id="S3.T2.39.39.39.1.m1.1.1" mathsize="90%" stretchy="false" xref="S3.T2.39.39.39.1.m1.1.1.cmml">→</mo><annotation-xml encoding="MathML-Content" id="S3.T2.39.39.39.1.m1.1b"><ci id="S3.T2.39.39.39.1.m1.1.1.cmml" xref="S3.T2.39.39.39.1.m1.1.1">→</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.39.39.39.1.m1.1c">\rightarrow</annotation><annotation encoding="application/x-llamapun" id="S3.T2.39.39.39.1.m1.1d">→</annotation></semantics></math><span class="ltx_text" id="S3.T2.39.39.39.1.2" style="font-size:90%;">Color</span>
</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.40.40.40.2"><math alttext="0.25" class="ltx_Math" display="inline" id="S3.T2.40.40.40.2.m1.1"><semantics id="S3.T2.40.40.40.2.m1.1a"><mn id="S3.T2.40.40.40.2.m1.1.1" mathsize="90%" xref="S3.T2.40.40.40.2.m1.1.1.cmml">0.25</mn><annotation-xml encoding="MathML-Content" id="S3.T2.40.40.40.2.m1.1b"><cn id="S3.T2.40.40.40.2.m1.1.1.cmml" type="float" xref="S3.T2.40.40.40.2.m1.1.1">0.25</cn></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.40.40.40.2.m1.1c">0.25</annotation><annotation encoding="application/x-llamapun" id="S3.T2.40.40.40.2.m1.1d">0.25</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.41.41.41.3"><math alttext="0.38" class="ltx_Math" display="inline" id="S3.T2.41.41.41.3.m1.1"><semantics id="S3.T2.41.41.41.3.m1.1a"><mn id="S3.T2.41.41.41.3.m1.1.1" mathsize="90%" xref="S3.T2.41.41.41.3.m1.1.1.cmml">0.38</mn><annotation-xml encoding="MathML-Content" id="S3.T2.41.41.41.3.m1.1b"><cn id="S3.T2.41.41.41.3.m1.1.1.cmml" type="float" xref="S3.T2.41.41.41.3.m1.1.1">0.38</cn></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.41.41.41.3.m1.1c">0.38</annotation><annotation encoding="application/x-llamapun" id="S3.T2.41.41.41.3.m1.1d">0.38</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.42.42.42.4"><math alttext="0.47" class="ltx_Math" display="inline" id="S3.T2.42.42.42.4.m1.1"><semantics id="S3.T2.42.42.42.4.m1.1a"><mn id="S3.T2.42.42.42.4.m1.1.1" mathsize="90%" xref="S3.T2.42.42.42.4.m1.1.1.cmml">0.47</mn><annotation-xml encoding="MathML-Content" id="S3.T2.42.42.42.4.m1.1b"><cn id="S3.T2.42.42.42.4.m1.1.1.cmml" type="float" xref="S3.T2.42.42.42.4.m1.1.1">0.47</cn></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.42.42.42.4.m1.1c">0.47</annotation><annotation encoding="application/x-llamapun" id="S3.T2.42.42.42.4.m1.1d">0.47</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.43.43.43.5"><math alttext="0.38" class="ltx_Math" display="inline" id="S3.T2.43.43.43.5.m1.1"><semantics id="S3.T2.43.43.43.5.m1.1a"><mn id="S3.T2.43.43.43.5.m1.1.1" mathsize="90%" xref="S3.T2.43.43.43.5.m1.1.1.cmml">0.38</mn><annotation-xml encoding="MathML-Content" id="S3.T2.43.43.43.5.m1.1b"><cn id="S3.T2.43.43.43.5.m1.1.1.cmml" type="float" xref="S3.T2.43.43.43.5.m1.1.1">0.38</cn></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.43.43.43.5.m1.1c">0.38</annotation><annotation encoding="application/x-llamapun" id="S3.T2.43.43.43.5.m1.1d">0.38</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.44.44.44.6"><math alttext="0.50" class="ltx_Math" display="inline" id="S3.T2.44.44.44.6.m1.1"><semantics id="S3.T2.44.44.44.6.m1.1a"><mn id="S3.T2.44.44.44.6.m1.1.1" mathsize="90%" xref="S3.T2.44.44.44.6.m1.1.1.cmml">0.50</mn><annotation-xml encoding="MathML-Content" id="S3.T2.44.44.44.6.m1.1b"><cn id="S3.T2.44.44.44.6.m1.1.1.cmml" type="float" xref="S3.T2.44.44.44.6.m1.1.1">0.50</cn></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.44.44.44.6.m1.1c">0.50</annotation><annotation encoding="application/x-llamapun" id="S3.T2.44.44.44.6.m1.1d">0.50</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.45.45.45.7"><math alttext="0.54" class="ltx_Math" display="inline" id="S3.T2.45.45.45.7.m1.1"><semantics id="S3.T2.45.45.45.7.m1.1a"><mn id="S3.T2.45.45.45.7.m1.1.1" mathsize="90%" xref="S3.T2.45.45.45.7.m1.1.1.cmml">0.54</mn><annotation-xml encoding="MathML-Content" id="S3.T2.45.45.45.7.m1.1b"><cn id="S3.T2.45.45.45.7.m1.1.1.cmml" type="float" xref="S3.T2.45.45.45.7.m1.1.1">0.54</cn></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.45.45.45.7.m1.1c">0.54</annotation><annotation encoding="application/x-llamapun" id="S3.T2.45.45.45.7.m1.1d">0.54</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S3.T2.52.52.52">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T2.46.46.46.1">
<span class="ltx_text" id="S3.T2.46.46.46.1.1" style="font-size:90%;">Food</span><math alttext="\rightarrow" class="ltx_Math" display="inline" id="S3.T2.46.46.46.1.m1.1"><semantics id="S3.T2.46.46.46.1.m1.1a"><mo id="S3.T2.46.46.46.1.m1.1.1" mathsize="90%" stretchy="false" xref="S3.T2.46.46.46.1.m1.1.1.cmml">→</mo><annotation-xml encoding="MathML-Content" id="S3.T2.46.46.46.1.m1.1b"><ci id="S3.T2.46.46.46.1.m1.1.1.cmml" xref="S3.T2.46.46.46.1.m1.1.1">→</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.46.46.46.1.m1.1c">\rightarrow</annotation><annotation encoding="application/x-llamapun" id="S3.T2.46.46.46.1.m1.1d">→</annotation></semantics></math><span class="ltx_text" id="S3.T2.46.46.46.1.2" style="font-size:90%;">Taste</span>
</th>
<td class="ltx_td ltx_align_center" id="S3.T2.47.47.47.2"><math alttext="0.28" class="ltx_Math" display="inline" id="S3.T2.47.47.47.2.m1.1"><semantics id="S3.T2.47.47.47.2.m1.1a"><mn id="S3.T2.47.47.47.2.m1.1.1" mathsize="90%" xref="S3.T2.47.47.47.2.m1.1.1.cmml">0.28</mn><annotation-xml encoding="MathML-Content" id="S3.T2.47.47.47.2.m1.1b"><cn id="S3.T2.47.47.47.2.m1.1.1.cmml" type="float" xref="S3.T2.47.47.47.2.m1.1.1">0.28</cn></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.47.47.47.2.m1.1c">0.28</annotation><annotation encoding="application/x-llamapun" id="S3.T2.47.47.47.2.m1.1d">0.28</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S3.T2.48.48.48.3"><math alttext="0.50" class="ltx_Math" display="inline" id="S3.T2.48.48.48.3.m1.1"><semantics id="S3.T2.48.48.48.3.m1.1a"><mn id="S3.T2.48.48.48.3.m1.1.1" mathsize="90%" xref="S3.T2.48.48.48.3.m1.1.1.cmml">0.50</mn><annotation-xml encoding="MathML-Content" id="S3.T2.48.48.48.3.m1.1b"><cn id="S3.T2.48.48.48.3.m1.1.1.cmml" type="float" xref="S3.T2.48.48.48.3.m1.1.1">0.50</cn></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.48.48.48.3.m1.1c">0.50</annotation><annotation encoding="application/x-llamapun" id="S3.T2.48.48.48.3.m1.1d">0.50</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S3.T2.49.49.49.4"><math alttext="0.62" class="ltx_Math" display="inline" id="S3.T2.49.49.49.4.m1.1"><semantics id="S3.T2.49.49.49.4.m1.1a"><mn id="S3.T2.49.49.49.4.m1.1.1" mathsize="90%" xref="S3.T2.49.49.49.4.m1.1.1.cmml">0.62</mn><annotation-xml encoding="MathML-Content" id="S3.T2.49.49.49.4.m1.1b"><cn id="S3.T2.49.49.49.4.m1.1.1.cmml" type="float" xref="S3.T2.49.49.49.4.m1.1.1">0.62</cn></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.49.49.49.4.m1.1c">0.62</annotation><annotation encoding="application/x-llamapun" id="S3.T2.49.49.49.4.m1.1d">0.62</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S3.T2.50.50.50.5"><math alttext="0.14" class="ltx_Math" display="inline" id="S3.T2.50.50.50.5.m1.1"><semantics id="S3.T2.50.50.50.5.m1.1a"><mn id="S3.T2.50.50.50.5.m1.1.1" mathsize="90%" xref="S3.T2.50.50.50.5.m1.1.1.cmml">0.14</mn><annotation-xml encoding="MathML-Content" id="S3.T2.50.50.50.5.m1.1b"><cn id="S3.T2.50.50.50.5.m1.1.1.cmml" type="float" xref="S3.T2.50.50.50.5.m1.1.1">0.14</cn></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.50.50.50.5.m1.1c">0.14</annotation><annotation encoding="application/x-llamapun" id="S3.T2.50.50.50.5.m1.1d">0.14</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S3.T2.51.51.51.6"><math alttext="0.36" class="ltx_Math" display="inline" id="S3.T2.51.51.51.6.m1.1"><semantics id="S3.T2.51.51.51.6.m1.1a"><mn id="S3.T2.51.51.51.6.m1.1.1" mathsize="90%" xref="S3.T2.51.51.51.6.m1.1.1.cmml">0.36</mn><annotation-xml encoding="MathML-Content" id="S3.T2.51.51.51.6.m1.1b"><cn id="S3.T2.51.51.51.6.m1.1.1.cmml" type="float" xref="S3.T2.51.51.51.6.m1.1.1">0.36</cn></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.51.51.51.6.m1.1c">0.36</annotation><annotation encoding="application/x-llamapun" id="S3.T2.51.51.51.6.m1.1d">0.36</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S3.T2.52.52.52.7"><math alttext="0.43" class="ltx_Math" display="inline" id="S3.T2.52.52.52.7.m1.1"><semantics id="S3.T2.52.52.52.7.m1.1a"><mn id="S3.T2.52.52.52.7.m1.1.1" mathsize="90%" xref="S3.T2.52.52.52.7.m1.1.1.cmml">0.43</mn><annotation-xml encoding="MathML-Content" id="S3.T2.52.52.52.7.m1.1b"><cn id="S3.T2.52.52.52.7.m1.1.1.cmml" type="float" xref="S3.T2.52.52.52.7.m1.1.1">0.43</cn></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.52.52.52.7.m1.1c">0.43</annotation><annotation encoding="application/x-llamapun" id="S3.T2.52.52.52.7.m1.1d">0.43</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S3.T2.59.59.59">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S3.T2.53.53.53.1">
<span class="ltx_text" id="S3.T2.53.53.53.1.1" style="font-size:90%;">X+1</span><math alttext="\rightarrow" class="ltx_Math" display="inline" id="S3.T2.53.53.53.1.m1.1"><semantics id="S3.T2.53.53.53.1.m1.1a"><mo id="S3.T2.53.53.53.1.m1.1.1" mathsize="90%" stretchy="false" xref="S3.T2.53.53.53.1.m1.1.1.cmml">→</mo><annotation-xml encoding="MathML-Content" id="S3.T2.53.53.53.1.m1.1b"><ci id="S3.T2.53.53.53.1.m1.1.1.cmml" xref="S3.T2.53.53.53.1.m1.1.1">→</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.53.53.53.1.m1.1c">\rightarrow</annotation><annotation encoding="application/x-llamapun" id="S3.T2.53.53.53.1.m1.1d">→</annotation></semantics></math><span class="ltx_text" id="S3.T2.53.53.53.1.2" style="font-size:90%;">X+2</span>
</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.54.54.54.2"><math alttext="0.00" class="ltx_Math" display="inline" id="S3.T2.54.54.54.2.m1.1"><semantics id="S3.T2.54.54.54.2.m1.1a"><mn id="S3.T2.54.54.54.2.m1.1.1" mathsize="90%" xref="S3.T2.54.54.54.2.m1.1.1.cmml">0.00</mn><annotation-xml encoding="MathML-Content" id="S3.T2.54.54.54.2.m1.1b"><cn id="S3.T2.54.54.54.2.m1.1.1.cmml" type="float" xref="S3.T2.54.54.54.2.m1.1.1">0.00</cn></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.54.54.54.2.m1.1c">0.00</annotation><annotation encoding="application/x-llamapun" id="S3.T2.54.54.54.2.m1.1d">0.00</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.55.55.55.3"><math alttext="0.50" class="ltx_Math" display="inline" id="S3.T2.55.55.55.3.m1.1"><semantics id="S3.T2.55.55.55.3.m1.1a"><mn id="S3.T2.55.55.55.3.m1.1.1" mathsize="90%" xref="S3.T2.55.55.55.3.m1.1.1.cmml">0.50</mn><annotation-xml encoding="MathML-Content" id="S3.T2.55.55.55.3.m1.1b"><cn id="S3.T2.55.55.55.3.m1.1.1.cmml" type="float" xref="S3.T2.55.55.55.3.m1.1.1">0.50</cn></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.55.55.55.3.m1.1c">0.50</annotation><annotation encoding="application/x-llamapun" id="S3.T2.55.55.55.3.m1.1d">0.50</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.56.56.56.4"><math alttext="0.60" class="ltx_Math" display="inline" id="S3.T2.56.56.56.4.m1.1"><semantics id="S3.T2.56.56.56.4.m1.1a"><mn id="S3.T2.56.56.56.4.m1.1.1" mathsize="90%" xref="S3.T2.56.56.56.4.m1.1.1.cmml">0.60</mn><annotation-xml encoding="MathML-Content" id="S3.T2.56.56.56.4.m1.1b"><cn id="S3.T2.56.56.56.4.m1.1.1.cmml" type="float" xref="S3.T2.56.56.56.4.m1.1.1">0.60</cn></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.56.56.56.4.m1.1c">0.60</annotation><annotation encoding="application/x-llamapun" id="S3.T2.56.56.56.4.m1.1d">0.60</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.57.57.57.5"><math alttext="0.10" class="ltx_Math" display="inline" id="S3.T2.57.57.57.5.m1.1"><semantics id="S3.T2.57.57.57.5.m1.1a"><mn id="S3.T2.57.57.57.5.m1.1.1" mathsize="90%" xref="S3.T2.57.57.57.5.m1.1.1.cmml">0.10</mn><annotation-xml encoding="MathML-Content" id="S3.T2.57.57.57.5.m1.1b"><cn id="S3.T2.57.57.57.5.m1.1.1.cmml" type="float" xref="S3.T2.57.57.57.5.m1.1.1">0.10</cn></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.57.57.57.5.m1.1c">0.10</annotation><annotation encoding="application/x-llamapun" id="S3.T2.57.57.57.5.m1.1d">0.10</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.58.58.58.6"><math alttext="0.30" class="ltx_Math" display="inline" id="S3.T2.58.58.58.6.m1.1"><semantics id="S3.T2.58.58.58.6.m1.1a"><mn id="S3.T2.58.58.58.6.m1.1.1" mathsize="90%" xref="S3.T2.58.58.58.6.m1.1.1.cmml">0.30</mn><annotation-xml encoding="MathML-Content" id="S3.T2.58.58.58.6.m1.1b"><cn id="S3.T2.58.58.58.6.m1.1.1.cmml" type="float" xref="S3.T2.58.58.58.6.m1.1.1">0.30</cn></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.58.58.58.6.m1.1c">0.30</annotation><annotation encoding="application/x-llamapun" id="S3.T2.58.58.58.6.m1.1d">0.30</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.59.59.59.7"><math alttext="0.50" class="ltx_Math" display="inline" id="S3.T2.59.59.59.7.m1.1"><semantics id="S3.T2.59.59.59.7.m1.1a"><mn id="S3.T2.59.59.59.7.m1.1.1" mathsize="90%" xref="S3.T2.59.59.59.7.m1.1.1.cmml">0.50</mn><annotation-xml encoding="MathML-Content" id="S3.T2.59.59.59.7.m1.1b"><cn id="S3.T2.59.59.59.7.m1.1.1.cmml" type="float" xref="S3.T2.59.59.59.7.m1.1.1">0.50</cn></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.59.59.59.7.m1.1c">0.50</annotation><annotation encoding="application/x-llamapun" id="S3.T2.59.59.59.7.m1.1d">0.50</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S3.T2.66.66.66">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S3.T2.60.60.60.1">
<span class="ltx_text" id="S3.T2.60.60.60.1.1" style="font-size:90%;">X+1</span><math alttext="\rightarrow" class="ltx_Math" display="inline" id="S3.T2.60.60.60.1.m1.1"><semantics id="S3.T2.60.60.60.1.m1.1a"><mo id="S3.T2.60.60.60.1.m1.1.1" mathsize="90%" stretchy="false" xref="S3.T2.60.60.60.1.m1.1.1.cmml">→</mo><annotation-xml encoding="MathML-Content" id="S3.T2.60.60.60.1.m1.1b"><ci id="S3.T2.60.60.60.1.m1.1.1.cmml" xref="S3.T2.60.60.60.1.m1.1.1">→</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.60.60.60.1.m1.1c">\rightarrow</annotation><annotation encoding="application/x-llamapun" id="S3.T2.60.60.60.1.m1.1d">→</annotation></semantics></math><span class="ltx_text" id="S3.T2.60.60.60.1.2" style="font-size:90%;">X*2</span>
</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.61.61.61.2"><math alttext="0.10" class="ltx_Math" display="inline" id="S3.T2.61.61.61.2.m1.1"><semantics id="S3.T2.61.61.61.2.m1.1a"><mn id="S3.T2.61.61.61.2.m1.1.1" mathsize="90%" xref="S3.T2.61.61.61.2.m1.1.1.cmml">0.10</mn><annotation-xml encoding="MathML-Content" id="S3.T2.61.61.61.2.m1.1b"><cn id="S3.T2.61.61.61.2.m1.1.1.cmml" type="float" xref="S3.T2.61.61.61.2.m1.1.1">0.10</cn></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.61.61.61.2.m1.1c">0.10</annotation><annotation encoding="application/x-llamapun" id="S3.T2.61.61.61.2.m1.1d">0.10</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.62.62.62.3"><math alttext="0.40" class="ltx_Math" display="inline" id="S3.T2.62.62.62.3.m1.1"><semantics id="S3.T2.62.62.62.3.m1.1a"><mn id="S3.T2.62.62.62.3.m1.1.1" mathsize="90%" xref="S3.T2.62.62.62.3.m1.1.1.cmml">0.40</mn><annotation-xml encoding="MathML-Content" id="S3.T2.62.62.62.3.m1.1b"><cn id="S3.T2.62.62.62.3.m1.1.1.cmml" type="float" xref="S3.T2.62.62.62.3.m1.1.1">0.40</cn></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.62.62.62.3.m1.1c">0.40</annotation><annotation encoding="application/x-llamapun" id="S3.T2.62.62.62.3.m1.1d">0.40</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.63.63.63.4"><math alttext="0.50" class="ltx_Math" display="inline" id="S3.T2.63.63.63.4.m1.1"><semantics id="S3.T2.63.63.63.4.m1.1a"><mn id="S3.T2.63.63.63.4.m1.1.1" mathsize="90%" xref="S3.T2.63.63.63.4.m1.1.1.cmml">0.50</mn><annotation-xml encoding="MathML-Content" id="S3.T2.63.63.63.4.m1.1b"><cn id="S3.T2.63.63.63.4.m1.1.1.cmml" type="float" xref="S3.T2.63.63.63.4.m1.1.1">0.50</cn></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.63.63.63.4.m1.1c">0.50</annotation><annotation encoding="application/x-llamapun" id="S3.T2.63.63.63.4.m1.1d">0.50</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.64.64.64.5"><math alttext="0.10" class="ltx_Math" display="inline" id="S3.T2.64.64.64.5.m1.1"><semantics id="S3.T2.64.64.64.5.m1.1a"><mn id="S3.T2.64.64.64.5.m1.1.1" mathsize="90%" xref="S3.T2.64.64.64.5.m1.1.1.cmml">0.10</mn><annotation-xml encoding="MathML-Content" id="S3.T2.64.64.64.5.m1.1b"><cn id="S3.T2.64.64.64.5.m1.1.1.cmml" type="float" xref="S3.T2.64.64.64.5.m1.1.1">0.10</cn></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.64.64.64.5.m1.1c">0.10</annotation><annotation encoding="application/x-llamapun" id="S3.T2.64.64.64.5.m1.1d">0.10</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.65.65.65.6"><math alttext="0.30" class="ltx_Math" display="inline" id="S3.T2.65.65.65.6.m1.1"><semantics id="S3.T2.65.65.65.6.m1.1a"><mn id="S3.T2.65.65.65.6.m1.1.1" mathsize="90%" xref="S3.T2.65.65.65.6.m1.1.1.cmml">0.30</mn><annotation-xml encoding="MathML-Content" id="S3.T2.65.65.65.6.m1.1b"><cn id="S3.T2.65.65.65.6.m1.1.1.cmml" type="float" xref="S3.T2.65.65.65.6.m1.1.1">0.30</cn></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.65.65.65.6.m1.1c">0.30</annotation><annotation encoding="application/x-llamapun" id="S3.T2.65.65.65.6.m1.1d">0.30</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.66.66.66.7"><math alttext="0.70" class="ltx_Math" display="inline" id="S3.T2.66.66.66.7.m1.1"><semantics id="S3.T2.66.66.66.7.m1.1a"><mn id="S3.T2.66.66.66.7.m1.1.1" mathsize="90%" xref="S3.T2.66.66.66.7.m1.1.1.cmml">0.70</mn><annotation-xml encoding="MathML-Content" id="S3.T2.66.66.66.7.m1.1b"><cn id="S3.T2.66.66.66.7.m1.1.1.cmml" type="float" xref="S3.T2.66.66.66.7.m1.1.1">0.70</cn></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.66.66.66.7.m1.1c">0.70</annotation><annotation encoding="application/x-llamapun" id="S3.T2.66.66.66.7.m1.1d">0.70</annotation></semantics></math></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the precision of compositional relationships learned by the language model and captured in the weight matrix W.  It shows how accurately the model's learned associations between source and target knowledge reflect real-world relationships for various knowledge pairs. Higher precision indicates a stronger alignment between the model's knowledge and human understanding of those relationships. The table includes metrics like Hit@Top-N (for N=1, 3, 5) to evaluate the accuracy of the top-ranked predictions made by the model.
> <details>
> <summary>read the caption</summary>
> Table 2: The precision of compositional relations built up in W𝑊Witalic_W.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S3.T3.9.9">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S3.T3.2.2.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_tt" id="S3.T3.1.1.1.1">
<span class="ltx_text" id="S3.T3.1.1.1.1.1" style="font-size:90%;">If City </span><math alttext="=" class="ltx_Math" display="inline" id="S3.T3.1.1.1.1.m1.1"><semantics id="S3.T3.1.1.1.1.m1.1a"><mo id="S3.T3.1.1.1.1.m1.1.1" mathsize="90%" xref="S3.T3.1.1.1.1.m1.1.1.cmml">=</mo><annotation-xml encoding="MathML-Content" id="S3.T3.1.1.1.1.m1.1b"><eq id="S3.T3.1.1.1.1.m1.1.1.cmml" xref="S3.T3.1.1.1.1.m1.1.1"></eq></annotation-xml><annotation encoding="application/x-tex" id="S3.T3.1.1.1.1.m1.1c">=</annotation><annotation encoding="application/x-llamapun" id="S3.T3.1.1.1.1.m1.1d">=</annotation></semantics></math>
</th>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T3.2.2.2.2">
<span class="ltx_text" id="S3.T3.2.2.2.2.1" style="font-size:90%;">Then Country </span><math alttext="=" class="ltx_Math" display="inline" id="S3.T3.2.2.2.2.m1.1"><semantics id="S3.T3.2.2.2.2.m1.1a"><mo id="S3.T3.2.2.2.2.m1.1.1" mathsize="90%" xref="S3.T3.2.2.2.2.m1.1.1.cmml">=</mo><annotation-xml encoding="MathML-Content" id="S3.T3.2.2.2.2.m1.1b"><eq id="S3.T3.2.2.2.2.m1.1.1.cmml" xref="S3.T3.2.2.2.2.m1.1.1"></eq></annotation-xml><annotation encoding="application/x-tex" id="S3.T3.2.2.2.2.m1.1c">=</annotation><annotation encoding="application/x-llamapun" id="S3.T3.2.2.2.2.m1.1d">=</annotation></semantics></math>
</td>
</tr>
<tr class="ltx_tr" id="S3.T3.9.9.10.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" id="S3.T3.9.9.10.1.1"><span class="ltx_text" id="S3.T3.9.9.10.1.1.1" style="font-size:90%;">Shanghai</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.9.9.10.1.2">
<span class="ltx_text ltx_font_bold" id="S3.T3.9.9.10.1.2.1" style="font-size:90%;color:#008080;">China</span><span class="ltx_text" id="S3.T3.9.9.10.1.2.2" style="font-size:90%;">, </span><span class="ltx_text" id="S3.T3.9.9.10.1.2.3" style="font-size:90%;color:#000000;">Italia</span><span class="ltx_text" id="S3.T3.9.9.10.1.2.4" style="font-size:90%;">, </span><span class="ltx_text" id="S3.T3.9.9.10.1.2.5" style="font-size:90%;color:#000000;">Albania</span><span class="ltx_text" id="S3.T3.9.9.10.1.2.6" style="font-size:90%;">, </span><span class="ltx_text" id="S3.T3.9.9.10.1.2.7" style="font-size:90%;color:#000000;">USSR</span><span class="ltx_text" id="S3.T3.9.9.10.1.2.8" style="font-size:90%;">, </span><span class="ltx_text" id="S3.T3.9.9.10.1.2.9" style="font-size:90%;color:#000000;">Korea</span>
</td>
</tr>
<tr class="ltx_tr" id="S3.T3.9.9.11.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S3.T3.9.9.11.2.1"><span class="ltx_text" id="S3.T3.9.9.11.2.1.1" style="font-size:90%;">NYC</span></th>
<td class="ltx_td ltx_align_center" id="S3.T3.9.9.11.2.2">
<span class="ltx_text ltx_font_bold" id="S3.T3.9.9.11.2.2.1" style="font-size:90%;color:#008080;">USA</span><span class="ltx_text" id="S3.T3.9.9.11.2.2.2" style="font-size:90%;">, </span><span class="ltx_text" id="S3.T3.9.9.11.2.2.3" style="font-size:90%;color:#000000;">USSR</span><span class="ltx_text" id="S3.T3.9.9.11.2.2.4" style="font-size:90%;">, </span><span class="ltx_text" id="S3.T3.9.9.11.2.2.5" style="font-size:90%;color:#000000;">UAE</span><span class="ltx_text" id="S3.T3.9.9.11.2.2.6" style="font-size:90%;">, </span><span class="ltx_text" id="S3.T3.9.9.11.2.2.7" style="font-size:90%;color:#000000;">China</span><span class="ltx_text" id="S3.T3.9.9.11.2.2.8" style="font-size:90%;">, </span><span class="ltx_text" id="S3.T3.9.9.11.2.2.9" style="font-size:90%;color:#000000;">CCCP</span>
</td>
</tr>
<tr class="ltx_tr" id="S3.T3.9.9.12.3">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S3.T3.9.9.12.3.1"><span class="ltx_text" id="S3.T3.9.9.12.3.1.1" style="font-size:90%;">Oslo</span></th>
<td class="ltx_td ltx_align_center" id="S3.T3.9.9.12.3.2">
<span class="ltx_text" id="S3.T3.9.9.12.3.2.1" style="font-size:90%;color:#000000;">CCCP</span><span class="ltx_text" id="S3.T3.9.9.12.3.2.2" style="font-size:90%;">, </span><span class="ltx_text ltx_font_bold" id="S3.T3.9.9.12.3.2.3" style="font-size:90%;color:#008080;">Norway</span><span class="ltx_text" id="S3.T3.9.9.12.3.2.4" style="font-size:90%;">, </span><span class="ltx_text" id="S3.T3.9.9.12.3.2.5" style="font-size:90%;color:#000000;">Kosovo</span><span class="ltx_text" id="S3.T3.9.9.12.3.2.6" style="font-size:90%;">, </span><span class="ltx_text" id="S3.T3.9.9.12.3.2.7" style="font-size:90%;color:#000000;">Israel</span><span class="ltx_text" id="S3.T3.9.9.12.3.2.8" style="font-size:90%;">, </span><span class="ltx_text" id="S3.T3.9.9.12.3.2.9" style="font-size:90%;color:#000000;">Oman</span>
</td>
</tr>
<tr class="ltx_tr" id="S3.T3.9.9.13.4">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S3.T3.9.9.13.4.1"><span class="ltx_text" id="S3.T3.9.9.13.4.1.1" style="font-size:90%;">Seattle</span></th>
<td class="ltx_td ltx_align_center" id="S3.T3.9.9.13.4.2">
<span class="ltx_text" id="S3.T3.9.9.13.4.2.1" style="font-size:90%;color:#000000;">Uruguay</span><span class="ltx_text" id="S3.T3.9.9.13.4.2.2" style="font-size:90%;">, </span><span class="ltx_text" id="S3.T3.9.9.13.4.2.3" style="font-size:90%;color:#000000;">Serbia</span><span class="ltx_text" id="S3.T3.9.9.13.4.2.4" style="font-size:90%;">, </span><span class="ltx_text" id="S3.T3.9.9.13.4.2.5" style="font-size:90%;color:#000000;">Kosovo</span><span class="ltx_text" id="S3.T3.9.9.13.4.2.6" style="font-size:90%;">, </span><span class="ltx_text" id="S3.T3.9.9.13.4.2.7" style="font-size:90%;color:#000000;">Romania</span><span class="ltx_text" id="S3.T3.9.9.13.4.2.8" style="font-size:90%;">, </span><span class="ltx_text" id="S3.T3.9.9.13.4.2.9" style="font-size:90%;color:#000000;">Slovenia</span>
</td>
</tr>
<tr class="ltx_tr" id="S3.T3.9.9.14.5">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S3.T3.9.9.14.5.1"><span class="ltx_text" id="S3.T3.9.9.14.5.1.1" style="font-size:90%;">Indianapolis</span></th>
<td class="ltx_td ltx_align_center" id="S3.T3.9.9.14.5.2">
<span class="ltx_text" id="S3.T3.9.9.14.5.2.1" style="font-size:90%;color:#000000;">India</span><span class="ltx_text" id="S3.T3.9.9.14.5.2.2" style="font-size:90%;">, </span><span class="ltx_text" id="S3.T3.9.9.14.5.2.3" style="font-size:90%;color:#000000;">Indonesia</span><span class="ltx_text" id="S3.T3.9.9.14.5.2.4" style="font-size:90%;">, </span><span class="ltx_text" id="S3.T3.9.9.14.5.2.5" style="font-size:90%;color:#000000;">France</span><span class="ltx_text" id="S3.T3.9.9.14.5.2.6" style="font-size:90%;">, </span><span class="ltx_text" id="S3.T3.9.9.14.5.2.7" style="font-size:90%;color:#000000;">Iraq</span><span class="ltx_text" id="S3.T3.9.9.14.5.2.8" style="font-size:90%;">, </span><span class="ltx_text" id="S3.T3.9.9.14.5.2.9" style="font-size:90%;color:#000000;">Netherlands</span>
</td>
</tr>
<tr class="ltx_tr" id="S3.T3.4.4.4">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" id="S3.T3.3.3.3.1">
<span class="ltx_text" id="S3.T3.3.3.3.1.1" style="font-size:90%;">If </span><math alttext="X+1=" class="ltx_Math" display="inline" id="S3.T3.3.3.3.1.m1.1"><semantics id="S3.T3.3.3.3.1.m1.1a"><mrow id="S3.T3.3.3.3.1.m1.1.1" xref="S3.T3.3.3.3.1.m1.1.1.cmml"><mrow id="S3.T3.3.3.3.1.m1.1.1.2" xref="S3.T3.3.3.3.1.m1.1.1.2.cmml"><mi id="S3.T3.3.3.3.1.m1.1.1.2.2" mathsize="90%" xref="S3.T3.3.3.3.1.m1.1.1.2.2.cmml">X</mi><mo id="S3.T3.3.3.3.1.m1.1.1.2.1" mathsize="90%" xref="S3.T3.3.3.3.1.m1.1.1.2.1.cmml">+</mo><mn id="S3.T3.3.3.3.1.m1.1.1.2.3" mathsize="90%" xref="S3.T3.3.3.3.1.m1.1.1.2.3.cmml">1</mn></mrow><mo id="S3.T3.3.3.3.1.m1.1.1.1" mathsize="90%" xref="S3.T3.3.3.3.1.m1.1.1.1.cmml">=</mo><mi id="S3.T3.3.3.3.1.m1.1.1.3" xref="S3.T3.3.3.3.1.m1.1.1.3.cmml"></mi></mrow><annotation-xml encoding="MathML-Content" id="S3.T3.3.3.3.1.m1.1b"><apply id="S3.T3.3.3.3.1.m1.1.1.cmml" xref="S3.T3.3.3.3.1.m1.1.1"><eq id="S3.T3.3.3.3.1.m1.1.1.1.cmml" xref="S3.T3.3.3.3.1.m1.1.1.1"></eq><apply id="S3.T3.3.3.3.1.m1.1.1.2.cmml" xref="S3.T3.3.3.3.1.m1.1.1.2"><plus id="S3.T3.3.3.3.1.m1.1.1.2.1.cmml" xref="S3.T3.3.3.3.1.m1.1.1.2.1"></plus><ci id="S3.T3.3.3.3.1.m1.1.1.2.2.cmml" xref="S3.T3.3.3.3.1.m1.1.1.2.2">𝑋</ci><cn id="S3.T3.3.3.3.1.m1.1.1.2.3.cmml" type="integer" xref="S3.T3.3.3.3.1.m1.1.1.2.3">1</cn></apply><csymbol cd="latexml" id="S3.T3.3.3.3.1.m1.1.1.3.cmml" xref="S3.T3.3.3.3.1.m1.1.1.3">absent</csymbol></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T3.3.3.3.1.m1.1c">X+1=</annotation><annotation encoding="application/x-llamapun" id="S3.T3.3.3.3.1.m1.1d">italic_X + 1 =</annotation></semantics></math>
</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.4.4.4.2">
<span class="ltx_text" id="S3.T3.4.4.4.2.1" style="font-size:90%;">Then </span><math alttext="X+2=" class="ltx_Math" display="inline" id="S3.T3.4.4.4.2.m1.1"><semantics id="S3.T3.4.4.4.2.m1.1a"><mrow id="S3.T3.4.4.4.2.m1.1.1" xref="S3.T3.4.4.4.2.m1.1.1.cmml"><mrow id="S3.T3.4.4.4.2.m1.1.1.2" xref="S3.T3.4.4.4.2.m1.1.1.2.cmml"><mi id="S3.T3.4.4.4.2.m1.1.1.2.2" mathsize="90%" xref="S3.T3.4.4.4.2.m1.1.1.2.2.cmml">X</mi><mo id="S3.T3.4.4.4.2.m1.1.1.2.1" mathsize="90%" xref="S3.T3.4.4.4.2.m1.1.1.2.1.cmml">+</mo><mn id="S3.T3.4.4.4.2.m1.1.1.2.3" mathsize="90%" xref="S3.T3.4.4.4.2.m1.1.1.2.3.cmml">2</mn></mrow><mo id="S3.T3.4.4.4.2.m1.1.1.1" mathsize="90%" xref="S3.T3.4.4.4.2.m1.1.1.1.cmml">=</mo><mi id="S3.T3.4.4.4.2.m1.1.1.3" xref="S3.T3.4.4.4.2.m1.1.1.3.cmml"></mi></mrow><annotation-xml encoding="MathML-Content" id="S3.T3.4.4.4.2.m1.1b"><apply id="S3.T3.4.4.4.2.m1.1.1.cmml" xref="S3.T3.4.4.4.2.m1.1.1"><eq id="S3.T3.4.4.4.2.m1.1.1.1.cmml" xref="S3.T3.4.4.4.2.m1.1.1.1"></eq><apply id="S3.T3.4.4.4.2.m1.1.1.2.cmml" xref="S3.T3.4.4.4.2.m1.1.1.2"><plus id="S3.T3.4.4.4.2.m1.1.1.2.1.cmml" xref="S3.T3.4.4.4.2.m1.1.1.2.1"></plus><ci id="S3.T3.4.4.4.2.m1.1.1.2.2.cmml" xref="S3.T3.4.4.4.2.m1.1.1.2.2">𝑋</ci><cn id="S3.T3.4.4.4.2.m1.1.1.2.3.cmml" type="integer" xref="S3.T3.4.4.4.2.m1.1.1.2.3">2</cn></apply><csymbol cd="latexml" id="S3.T3.4.4.4.2.m1.1.1.3.cmml" xref="S3.T3.4.4.4.2.m1.1.1.3">absent</csymbol></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T3.4.4.4.2.m1.1c">X+2=</annotation><annotation encoding="application/x-llamapun" id="S3.T3.4.4.4.2.m1.1d">italic_X + 2 =</annotation></semantics></math>
</td>
</tr>
<tr class="ltx_tr" id="S3.T3.5.5.5">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" id="S3.T3.5.5.5.1"><math alttext="1" class="ltx_Math" display="inline" id="S3.T3.5.5.5.1.m1.1"><semantics id="S3.T3.5.5.5.1.m1.1a"><mn id="S3.T3.5.5.5.1.m1.1.1" mathsize="90%" xref="S3.T3.5.5.5.1.m1.1.1.cmml">1</mn><annotation-xml encoding="MathML-Content" id="S3.T3.5.5.5.1.m1.1b"><cn id="S3.T3.5.5.5.1.m1.1.1.cmml" type="integer" xref="S3.T3.5.5.5.1.m1.1.1">1</cn></annotation-xml><annotation encoding="application/x-tex" id="S3.T3.5.5.5.1.m1.1c">1</annotation><annotation encoding="application/x-llamapun" id="S3.T3.5.5.5.1.m1.1d">1</annotation></semantics></math></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.5.5.5.2">
<span class="ltx_text" id="S3.T3.5.5.5.2.1" style="font-size:90%;color:#000000;">1</span><span class="ltx_text" id="S3.T3.5.5.5.2.2" style="font-size:90%;">, </span><span class="ltx_text ltx_font_bold" id="S3.T3.5.5.5.2.3" style="font-size:90%;color:#008080;">2</span><span class="ltx_text" id="S3.T3.5.5.5.2.4" style="font-size:90%;">, </span><span class="ltx_text" id="S3.T3.5.5.5.2.5" style="font-size:90%;color:#000000;">4</span><span class="ltx_text" id="S3.T3.5.5.5.2.6" style="font-size:90%;">, </span><span class="ltx_text" id="S3.T3.5.5.5.2.7" style="font-size:90%;color:#000000;">6</span><span class="ltx_text" id="S3.T3.5.5.5.2.8" style="font-size:90%;">, </span><span class="ltx_text" id="S3.T3.5.5.5.2.9" style="font-size:90%;color:#000000;">3</span>
</td>
</tr>
<tr class="ltx_tr" id="S3.T3.6.6.6">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S3.T3.6.6.6.1"><math alttext="2" class="ltx_Math" display="inline" id="S3.T3.6.6.6.1.m1.1"><semantics id="S3.T3.6.6.6.1.m1.1a"><mn id="S3.T3.6.6.6.1.m1.1.1" mathsize="90%" xref="S3.T3.6.6.6.1.m1.1.1.cmml">2</mn><annotation-xml encoding="MathML-Content" id="S3.T3.6.6.6.1.m1.1b"><cn id="S3.T3.6.6.6.1.m1.1.1.cmml" type="integer" xref="S3.T3.6.6.6.1.m1.1.1">2</cn></annotation-xml><annotation encoding="application/x-tex" id="S3.T3.6.6.6.1.m1.1c">2</annotation><annotation encoding="application/x-llamapun" id="S3.T3.6.6.6.1.m1.1d">2</annotation></semantics></math></th>
<td class="ltx_td ltx_align_center" id="S3.T3.6.6.6.2">
<span class="ltx_text" id="S3.T3.6.6.6.2.1" style="font-size:90%;color:#000000;">2</span><span class="ltx_text" id="S3.T3.6.6.6.2.2" style="font-size:90%;">, </span><span class="ltx_text ltx_font_bold" id="S3.T3.6.6.6.2.3" style="font-size:90%;color:#008080;">3</span><span class="ltx_text" id="S3.T3.6.6.6.2.4" style="font-size:90%;">, </span><span class="ltx_text" id="S3.T3.6.6.6.2.5" style="font-size:90%;color:#000000;">4</span><span class="ltx_text" id="S3.T3.6.6.6.2.6" style="font-size:90%;">, </span><span class="ltx_text" id="S3.T3.6.6.6.2.7" style="font-size:90%;color:#000000;">5</span><span class="ltx_text" id="S3.T3.6.6.6.2.8" style="font-size:90%;">, </span><span class="ltx_text" id="S3.T3.6.6.6.2.9" style="font-size:90%;color:#000000;">7</span>
</td>
</tr>
<tr class="ltx_tr" id="S3.T3.7.7.7">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S3.T3.7.7.7.1"><math alttext="3" class="ltx_Math" display="inline" id="S3.T3.7.7.7.1.m1.1"><semantics id="S3.T3.7.7.7.1.m1.1a"><mn id="S3.T3.7.7.7.1.m1.1.1" mathsize="90%" xref="S3.T3.7.7.7.1.m1.1.1.cmml">3</mn><annotation-xml encoding="MathML-Content" id="S3.T3.7.7.7.1.m1.1b"><cn id="S3.T3.7.7.7.1.m1.1.1.cmml" type="integer" xref="S3.T3.7.7.7.1.m1.1.1">3</cn></annotation-xml><annotation encoding="application/x-tex" id="S3.T3.7.7.7.1.m1.1c">3</annotation><annotation encoding="application/x-llamapun" id="S3.T3.7.7.7.1.m1.1d">3</annotation></semantics></math></th>
<td class="ltx_td ltx_align_center" id="S3.T3.7.7.7.2">
<span class="ltx_text" id="S3.T3.7.7.7.2.1" style="font-size:90%;color:#000000;">3</span><span class="ltx_text" id="S3.T3.7.7.7.2.2" style="font-size:90%;">, </span><span class="ltx_text" id="S3.T3.7.7.7.2.3" style="font-size:90%;color:#000000;">6</span><span class="ltx_text" id="S3.T3.7.7.7.2.4" style="font-size:90%;">, </span><span class="ltx_text" id="S3.T3.7.7.7.2.5" style="font-size:90%;color:#000000;">5</span><span class="ltx_text" id="S3.T3.7.7.7.2.6" style="font-size:90%;">, </span><span class="ltx_text ltx_font_bold" id="S3.T3.7.7.7.2.7" style="font-size:90%;color:#008080;">4</span><span class="ltx_text" id="S3.T3.7.7.7.2.8" style="font-size:90%;">, </span><span class="ltx_text" id="S3.T3.7.7.7.2.9" style="font-size:90%;color:#000000;">7</span>
</td>
</tr>
<tr class="ltx_tr" id="S3.T3.8.8.8">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S3.T3.8.8.8.1"><math alttext="4" class="ltx_Math" display="inline" id="S3.T3.8.8.8.1.m1.1"><semantics id="S3.T3.8.8.8.1.m1.1a"><mn id="S3.T3.8.8.8.1.m1.1.1" mathsize="90%" xref="S3.T3.8.8.8.1.m1.1.1.cmml">4</mn><annotation-xml encoding="MathML-Content" id="S3.T3.8.8.8.1.m1.1b"><cn id="S3.T3.8.8.8.1.m1.1.1.cmml" type="integer" xref="S3.T3.8.8.8.1.m1.1.1">4</cn></annotation-xml><annotation encoding="application/x-tex" id="S3.T3.8.8.8.1.m1.1c">4</annotation><annotation encoding="application/x-llamapun" id="S3.T3.8.8.8.1.m1.1d">4</annotation></semantics></math></th>
<td class="ltx_td ltx_align_center" id="S3.T3.8.8.8.2">
<span class="ltx_text" id="S3.T3.8.8.8.2.1" style="font-size:90%;color:#000000;">4</span><span class="ltx_text" id="S3.T3.8.8.8.2.2" style="font-size:90%;">, </span><span class="ltx_text" id="S3.T3.8.8.8.2.3" style="font-size:90%;color:#000000;">0</span><span class="ltx_text" id="S3.T3.8.8.8.2.4" style="font-size:90%;">, </span><span class="ltx_text" id="S3.T3.8.8.8.2.5" style="font-size:90%;color:#000000;">2</span><span class="ltx_text" id="S3.T3.8.8.8.2.6" style="font-size:90%;">, </span><span class="ltx_text" id="S3.T3.8.8.8.2.7" style="font-size:90%;color:#000000;">1</span><span class="ltx_text" id="S3.T3.8.8.8.2.8" style="font-size:90%;">, </span><span class="ltx_text" id="S3.T3.8.8.8.2.9" style="font-size:90%;color:#000000;">10</span>
</td>
</tr>
<tr class="ltx_tr" id="S3.T3.9.9.9">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_bb" id="S3.T3.9.9.9.1"><math alttext="5" class="ltx_Math" display="inline" id="S3.T3.9.9.9.1.m1.1"><semantics id="S3.T3.9.9.9.1.m1.1a"><mn id="S3.T3.9.9.9.1.m1.1.1" mathsize="90%" xref="S3.T3.9.9.9.1.m1.1.1.cmml">5</mn><annotation-xml encoding="MathML-Content" id="S3.T3.9.9.9.1.m1.1b"><cn id="S3.T3.9.9.9.1.m1.1.1.cmml" type="integer" xref="S3.T3.9.9.9.1.m1.1.1">5</cn></annotation-xml><annotation encoding="application/x-tex" id="S3.T3.9.9.9.1.m1.1c">5</annotation><annotation encoding="application/x-llamapun" id="S3.T3.9.9.9.1.m1.1d">5</annotation></semantics></math></th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T3.9.9.9.2">
<span class="ltx_text" id="S3.T3.9.9.9.2.1" style="font-size:90%;color:#000000;">5</span><span class="ltx_text" id="S3.T3.9.9.9.2.2" style="font-size:90%;">, </span><span class="ltx_text ltx_font_bold" id="S3.T3.9.9.9.2.3" style="font-size:90%;color:#008080;">6</span><span class="ltx_text" id="S3.T3.9.9.9.2.4" style="font-size:90%;">, </span><span class="ltx_text" id="S3.T3.9.9.9.2.5" style="font-size:90%;color:#000000;">8</span><span class="ltx_text" id="S3.T3.9.9.9.2.6" style="font-size:90%;">, </span><span class="ltx_text" id="S3.T3.9.9.9.2.7" style="font-size:90%;color:#000000;">7</span><span class="ltx_text" id="S3.T3.9.9.9.2.8" style="font-size:90%;">, </span><span class="ltx_text" id="S3.T3.9.9.9.2.9" style="font-size:90%;color:#000000;">9</span>
</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents examples of top-influenced tokens in target knowledge after applying a linear transformation (W,b) to source knowledge logits. It demonstrates the precision of the learned transformation (W,b) in predicting correct target knowledge tokens and showcases instances where the transformation yields either accurate generalization or hallucinations. For each knowledge pair (e.g., City-Country), the table shows the top-influenced tokens in the target knowledge for various source knowledge tokens and compares them to ground truth values. The purpose is to illustrate the connection between the linear transformation, its precision, and the outcome of compositional generalization (accurate or hallucinatory).
> <details>
> <summary>read the caption</summary>
> Table 3: Cases of top-influenced tokens pairs in target knowledge.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S4.T4.28.28">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T4.28.28.29.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S4.T4.28.28.29.1.1"><span class="ltx_text" id="S4.T4.28.28.29.1.1.1" style="font-size:90%;">Relation Pair</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T4.28.28.29.1.2"><span class="ltx_text" id="S4.T4.28.28.29.1.2.1" style="font-size:90%;">Logit Correlation</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T4.28.28.29.1.3"><span class="ltx_text" id="S4.T4.28.28.29.1.3.1" style="font-size:90%;">Grad. Correlation</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T4.3.3.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T4.1.1.1.1">
<span class="ltx_text" id="S4.T4.1.1.1.1.1" style="font-size:90%;">City</span><math alttext="\rightarrow" class="ltx_Math" display="inline" id="S4.T4.1.1.1.1.m1.1"><semantics id="S4.T4.1.1.1.1.m1.1a"><mo id="S4.T4.1.1.1.1.m1.1.1" mathsize="90%" stretchy="false" xref="S4.T4.1.1.1.1.m1.1.1.cmml">→</mo><annotation-xml encoding="MathML-Content" id="S4.T4.1.1.1.1.m1.1b"><ci id="S4.T4.1.1.1.1.m1.1.1.cmml" xref="S4.T4.1.1.1.1.m1.1.1">→</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.1.1.1.1.m1.1c">\rightarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T4.1.1.1.1.m1.1d">→</annotation></semantics></math><span class="ltx_text" id="S4.T4.1.1.1.1.2" style="font-size:90%;">Country</span>
</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.2.2.2.2"><math alttext="0.89" class="ltx_Math" display="inline" id="S4.T4.2.2.2.2.m1.1"><semantics id="S4.T4.2.2.2.2.m1.1a"><mn id="S4.T4.2.2.2.2.m1.1.1" mathsize="90%" xref="S4.T4.2.2.2.2.m1.1.1.cmml">0.89</mn><annotation-xml encoding="MathML-Content" id="S4.T4.2.2.2.2.m1.1b"><cn id="S4.T4.2.2.2.2.m1.1.1.cmml" type="float" xref="S4.T4.2.2.2.2.m1.1.1">0.89</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.2.2.2.2.m1.1c">0.89</annotation><annotation encoding="application/x-llamapun" id="S4.T4.2.2.2.2.m1.1d">0.89</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.3.3.3.3"><math alttext="0.79" class="ltx_Math" display="inline" id="S4.T4.3.3.3.3.m1.1"><semantics id="S4.T4.3.3.3.3.m1.1a"><mn id="S4.T4.3.3.3.3.m1.1.1" mathsize="90%" xref="S4.T4.3.3.3.3.m1.1.1.cmml">0.79</mn><annotation-xml encoding="MathML-Content" id="S4.T4.3.3.3.3.m1.1b"><cn id="S4.T4.3.3.3.3.m1.1.1.cmml" type="float" xref="S4.T4.3.3.3.3.m1.1.1">0.79</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.3.3.3.3.m1.1c">0.79</annotation><annotation encoding="application/x-llamapun" id="S4.T4.3.3.3.3.m1.1d">0.79</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S4.T4.6.6.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T4.4.4.4.1">
<span class="ltx_text" id="S4.T4.4.4.4.1.1" style="font-size:90%;">CEO</span><math alttext="\rightarrow" class="ltx_Math" display="inline" id="S4.T4.4.4.4.1.m1.1"><semantics id="S4.T4.4.4.4.1.m1.1a"><mo id="S4.T4.4.4.4.1.m1.1.1" mathsize="90%" stretchy="false" xref="S4.T4.4.4.4.1.m1.1.1.cmml">→</mo><annotation-xml encoding="MathML-Content" id="S4.T4.4.4.4.1.m1.1b"><ci id="S4.T4.4.4.4.1.m1.1.1.cmml" xref="S4.T4.4.4.4.1.m1.1.1">→</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.4.4.4.1.m1.1c">\rightarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T4.4.4.4.1.m1.1d">→</annotation></semantics></math><span class="ltx_text" id="S4.T4.4.4.4.1.2" style="font-size:90%;">Company</span>
</th>
<td class="ltx_td ltx_align_center" id="S4.T4.5.5.5.2"><math alttext="0.55" class="ltx_Math" display="inline" id="S4.T4.5.5.5.2.m1.1"><semantics id="S4.T4.5.5.5.2.m1.1a"><mn id="S4.T4.5.5.5.2.m1.1.1" mathsize="90%" xref="S4.T4.5.5.5.2.m1.1.1.cmml">0.55</mn><annotation-xml encoding="MathML-Content" id="S4.T4.5.5.5.2.m1.1b"><cn id="S4.T4.5.5.5.2.m1.1.1.cmml" type="float" xref="S4.T4.5.5.5.2.m1.1.1">0.55</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.5.5.5.2.m1.1c">0.55</annotation><annotation encoding="application/x-llamapun" id="S4.T4.5.5.5.2.m1.1d">0.55</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T4.6.6.6.3"><math alttext="0.47" class="ltx_Math" display="inline" id="S4.T4.6.6.6.3.m1.1"><semantics id="S4.T4.6.6.6.3.m1.1a"><mn id="S4.T4.6.6.6.3.m1.1.1" mathsize="90%" xref="S4.T4.6.6.6.3.m1.1.1.cmml">0.47</mn><annotation-xml encoding="MathML-Content" id="S4.T4.6.6.6.3.m1.1b"><cn id="S4.T4.6.6.6.3.m1.1.1.cmml" type="float" xref="S4.T4.6.6.6.3.m1.1.1">0.47</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.6.6.6.3.m1.1c">0.47</annotation><annotation encoding="application/x-llamapun" id="S4.T4.6.6.6.3.m1.1d">0.47</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S4.T4.11.11.11">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T4.9.9.9.3">
<span class="ltx_text" id="S4.T4.9.9.9.3.1" style="font-size:90%;">City</span><math alttext="{}_{\textrm{en}}" class="ltx_Math" display="inline" id="S4.T4.7.7.7.1.m1.1"><semantics id="S4.T4.7.7.7.1.m1.1a"><msub id="S4.T4.7.7.7.1.m1.1.1" xref="S4.T4.7.7.7.1.m1.1.1.cmml"><mi id="S4.T4.7.7.7.1.m1.1.1a" xref="S4.T4.7.7.7.1.m1.1.1.cmml"></mi><mtext id="S4.T4.7.7.7.1.m1.1.1.1" mathsize="90%" xref="S4.T4.7.7.7.1.m1.1.1.1a.cmml">en</mtext></msub><annotation-xml encoding="MathML-Content" id="S4.T4.7.7.7.1.m1.1b"><apply id="S4.T4.7.7.7.1.m1.1.1.cmml" xref="S4.T4.7.7.7.1.m1.1.1"><ci id="S4.T4.7.7.7.1.m1.1.1.1a.cmml" xref="S4.T4.7.7.7.1.m1.1.1.1"><mtext id="S4.T4.7.7.7.1.m1.1.1.1.cmml" mathsize="63%" xref="S4.T4.7.7.7.1.m1.1.1.1">en</mtext></ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.7.7.7.1.m1.1c">{}_{\textrm{en}}</annotation><annotation encoding="application/x-llamapun" id="S4.T4.7.7.7.1.m1.1d">start_FLOATSUBSCRIPT en end_FLOATSUBSCRIPT</annotation></semantics></math><math alttext="\rightarrow" class="ltx_Math" display="inline" id="S4.T4.8.8.8.2.m2.1"><semantics id="S4.T4.8.8.8.2.m2.1a"><mo id="S4.T4.8.8.8.2.m2.1.1" mathsize="90%" stretchy="false" xref="S4.T4.8.8.8.2.m2.1.1.cmml">→</mo><annotation-xml encoding="MathML-Content" id="S4.T4.8.8.8.2.m2.1b"><ci id="S4.T4.8.8.8.2.m2.1.1.cmml" xref="S4.T4.8.8.8.2.m2.1.1">→</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.8.8.8.2.m2.1c">\rightarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T4.8.8.8.2.m2.1d">→</annotation></semantics></math><span class="ltx_text" id="S4.T4.9.9.9.3.2" style="font-size:90%;">City</span><math alttext="{}_{\textrm{es}}" class="ltx_Math" display="inline" id="S4.T4.9.9.9.3.m3.1"><semantics id="S4.T4.9.9.9.3.m3.1a"><msub id="S4.T4.9.9.9.3.m3.1.1" xref="S4.T4.9.9.9.3.m3.1.1.cmml"><mi id="S4.T4.9.9.9.3.m3.1.1a" xref="S4.T4.9.9.9.3.m3.1.1.cmml"></mi><mtext id="S4.T4.9.9.9.3.m3.1.1.1" mathsize="90%" xref="S4.T4.9.9.9.3.m3.1.1.1a.cmml">es</mtext></msub><annotation-xml encoding="MathML-Content" id="S4.T4.9.9.9.3.m3.1b"><apply id="S4.T4.9.9.9.3.m3.1.1.cmml" xref="S4.T4.9.9.9.3.m3.1.1"><ci id="S4.T4.9.9.9.3.m3.1.1.1a.cmml" xref="S4.T4.9.9.9.3.m3.1.1.1"><mtext id="S4.T4.9.9.9.3.m3.1.1.1.cmml" mathsize="63%" xref="S4.T4.9.9.9.3.m3.1.1.1">es</mtext></ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.9.9.9.3.m3.1c">{}_{\textrm{es}}</annotation><annotation encoding="application/x-llamapun" id="S4.T4.9.9.9.3.m3.1d">start_FLOATSUBSCRIPT es end_FLOATSUBSCRIPT</annotation></semantics></math>
</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.10.10.10.4"><math alttext="0.70" class="ltx_Math" display="inline" id="S4.T4.10.10.10.4.m1.1"><semantics id="S4.T4.10.10.10.4.m1.1a"><mn id="S4.T4.10.10.10.4.m1.1.1" mathsize="90%" xref="S4.T4.10.10.10.4.m1.1.1.cmml">0.70</mn><annotation-xml encoding="MathML-Content" id="S4.T4.10.10.10.4.m1.1b"><cn id="S4.T4.10.10.10.4.m1.1.1.cmml" type="float" xref="S4.T4.10.10.10.4.m1.1.1">0.70</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.10.10.10.4.m1.1c">0.70</annotation><annotation encoding="application/x-llamapun" id="S4.T4.10.10.10.4.m1.1d">0.70</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.11.11.11.5"><math alttext="0.79" class="ltx_Math" display="inline" id="S4.T4.11.11.11.5.m1.1"><semantics id="S4.T4.11.11.11.5.m1.1a"><mn id="S4.T4.11.11.11.5.m1.1.1" mathsize="90%" xref="S4.T4.11.11.11.5.m1.1.1.cmml">0.79</mn><annotation-xml encoding="MathML-Content" id="S4.T4.11.11.11.5.m1.1b"><cn id="S4.T4.11.11.11.5.m1.1.1.cmml" type="float" xref="S4.T4.11.11.11.5.m1.1.1">0.79</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.11.11.11.5.m1.1c">0.79</annotation><annotation encoding="application/x-llamapun" id="S4.T4.11.11.11.5.m1.1d">0.79</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S4.T4.16.16.16">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T4.14.14.14.3">
<span class="ltx_text" id="S4.T4.14.14.14.3.1" style="font-size:90%;">City</span><math alttext="{}_{\textrm{en}}" class="ltx_Math" display="inline" id="S4.T4.12.12.12.1.m1.1"><semantics id="S4.T4.12.12.12.1.m1.1a"><msub id="S4.T4.12.12.12.1.m1.1.1" xref="S4.T4.12.12.12.1.m1.1.1.cmml"><mi id="S4.T4.12.12.12.1.m1.1.1a" xref="S4.T4.12.12.12.1.m1.1.1.cmml"></mi><mtext id="S4.T4.12.12.12.1.m1.1.1.1" mathsize="90%" xref="S4.T4.12.12.12.1.m1.1.1.1a.cmml">en</mtext></msub><annotation-xml encoding="MathML-Content" id="S4.T4.12.12.12.1.m1.1b"><apply id="S4.T4.12.12.12.1.m1.1.1.cmml" xref="S4.T4.12.12.12.1.m1.1.1"><ci id="S4.T4.12.12.12.1.m1.1.1.1a.cmml" xref="S4.T4.12.12.12.1.m1.1.1.1"><mtext id="S4.T4.12.12.12.1.m1.1.1.1.cmml" mathsize="63%" xref="S4.T4.12.12.12.1.m1.1.1.1">en</mtext></ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.12.12.12.1.m1.1c">{}_{\textrm{en}}</annotation><annotation encoding="application/x-llamapun" id="S4.T4.12.12.12.1.m1.1d">start_FLOATSUBSCRIPT en end_FLOATSUBSCRIPT</annotation></semantics></math><math alttext="\rightarrow" class="ltx_Math" display="inline" id="S4.T4.13.13.13.2.m2.1"><semantics id="S4.T4.13.13.13.2.m2.1a"><mo id="S4.T4.13.13.13.2.m2.1.1" mathsize="90%" stretchy="false" xref="S4.T4.13.13.13.2.m2.1.1.cmml">→</mo><annotation-xml encoding="MathML-Content" id="S4.T4.13.13.13.2.m2.1b"><ci id="S4.T4.13.13.13.2.m2.1.1.cmml" xref="S4.T4.13.13.13.2.m2.1.1">→</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.13.13.13.2.m2.1c">\rightarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T4.13.13.13.2.m2.1d">→</annotation></semantics></math><span class="ltx_text" id="S4.T4.14.14.14.3.2" style="font-size:90%;">City</span><math alttext="{}_{\textrm{zh}}" class="ltx_Math" display="inline" id="S4.T4.14.14.14.3.m3.1"><semantics id="S4.T4.14.14.14.3.m3.1a"><msub id="S4.T4.14.14.14.3.m3.1.1" xref="S4.T4.14.14.14.3.m3.1.1.cmml"><mi id="S4.T4.14.14.14.3.m3.1.1a" xref="S4.T4.14.14.14.3.m3.1.1.cmml"></mi><mtext id="S4.T4.14.14.14.3.m3.1.1.1" mathsize="90%" xref="S4.T4.14.14.14.3.m3.1.1.1a.cmml">zh</mtext></msub><annotation-xml encoding="MathML-Content" id="S4.T4.14.14.14.3.m3.1b"><apply id="S4.T4.14.14.14.3.m3.1.1.cmml" xref="S4.T4.14.14.14.3.m3.1.1"><ci id="S4.T4.14.14.14.3.m3.1.1.1a.cmml" xref="S4.T4.14.14.14.3.m3.1.1.1"><mtext id="S4.T4.14.14.14.3.m3.1.1.1.cmml" mathsize="63%" xref="S4.T4.14.14.14.3.m3.1.1.1">zh</mtext></ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.14.14.14.3.m3.1c">{}_{\textrm{zh}}</annotation><annotation encoding="application/x-llamapun" id="S4.T4.14.14.14.3.m3.1d">start_FLOATSUBSCRIPT zh end_FLOATSUBSCRIPT</annotation></semantics></math>
</th>
<td class="ltx_td ltx_align_center" id="S4.T4.15.15.15.4"><math alttext="0.58" class="ltx_Math" display="inline" id="S4.T4.15.15.15.4.m1.1"><semantics id="S4.T4.15.15.15.4.m1.1a"><mn id="S4.T4.15.15.15.4.m1.1.1" mathsize="90%" xref="S4.T4.15.15.15.4.m1.1.1.cmml">0.58</mn><annotation-xml encoding="MathML-Content" id="S4.T4.15.15.15.4.m1.1b"><cn id="S4.T4.15.15.15.4.m1.1.1.cmml" type="float" xref="S4.T4.15.15.15.4.m1.1.1">0.58</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.15.15.15.4.m1.1c">0.58</annotation><annotation encoding="application/x-llamapun" id="S4.T4.15.15.15.4.m1.1d">0.58</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T4.16.16.16.5"><math alttext="0.46" class="ltx_Math" display="inline" id="S4.T4.16.16.16.5.m1.1"><semantics id="S4.T4.16.16.16.5.m1.1a"><mn id="S4.T4.16.16.16.5.m1.1.1" mathsize="90%" xref="S4.T4.16.16.16.5.m1.1.1.cmml">0.46</mn><annotation-xml encoding="MathML-Content" id="S4.T4.16.16.16.5.m1.1b"><cn id="S4.T4.16.16.16.5.m1.1.1.cmml" type="float" xref="S4.T4.16.16.16.5.m1.1.1">0.46</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.16.16.16.5.m1.1c">0.46</annotation><annotation encoding="application/x-llamapun" id="S4.T4.16.16.16.5.m1.1d">0.46</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S4.T4.19.19.19">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T4.17.17.17.1">
<span class="ltx_text" id="S4.T4.17.17.17.1.1" style="font-size:90%;">Fruit</span><math alttext="\rightarrow" class="ltx_Math" display="inline" id="S4.T4.17.17.17.1.m1.1"><semantics id="S4.T4.17.17.17.1.m1.1a"><mo id="S4.T4.17.17.17.1.m1.1.1" mathsize="90%" stretchy="false" xref="S4.T4.17.17.17.1.m1.1.1.cmml">→</mo><annotation-xml encoding="MathML-Content" id="S4.T4.17.17.17.1.m1.1b"><ci id="S4.T4.17.17.17.1.m1.1.1.cmml" xref="S4.T4.17.17.17.1.m1.1.1">→</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.17.17.17.1.m1.1c">\rightarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T4.17.17.17.1.m1.1d">→</annotation></semantics></math><span class="ltx_text" id="S4.T4.17.17.17.1.2" style="font-size:90%;">Color</span>
</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.18.18.18.2"><math alttext="0.48" class="ltx_Math" display="inline" id="S4.T4.18.18.18.2.m1.1"><semantics id="S4.T4.18.18.18.2.m1.1a"><mn id="S4.T4.18.18.18.2.m1.1.1" mathsize="90%" xref="S4.T4.18.18.18.2.m1.1.1.cmml">0.48</mn><annotation-xml encoding="MathML-Content" id="S4.T4.18.18.18.2.m1.1b"><cn id="S4.T4.18.18.18.2.m1.1.1.cmml" type="float" xref="S4.T4.18.18.18.2.m1.1.1">0.48</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.18.18.18.2.m1.1c">0.48</annotation><annotation encoding="application/x-llamapun" id="S4.T4.18.18.18.2.m1.1d">0.48</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.19.19.19.3"><math alttext="0.46" class="ltx_Math" display="inline" id="S4.T4.19.19.19.3.m1.1"><semantics id="S4.T4.19.19.19.3.m1.1a"><mn id="S4.T4.19.19.19.3.m1.1.1" mathsize="90%" xref="S4.T4.19.19.19.3.m1.1.1.cmml">0.46</mn><annotation-xml encoding="MathML-Content" id="S4.T4.19.19.19.3.m1.1b"><cn id="S4.T4.19.19.19.3.m1.1.1.cmml" type="float" xref="S4.T4.19.19.19.3.m1.1.1">0.46</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.19.19.19.3.m1.1c">0.46</annotation><annotation encoding="application/x-llamapun" id="S4.T4.19.19.19.3.m1.1d">0.46</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S4.T4.22.22.22">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T4.20.20.20.1">
<span class="ltx_text" id="S4.T4.20.20.20.1.1" style="font-size:90%;">Food</span><math alttext="\rightarrow" class="ltx_Math" display="inline" id="S4.T4.20.20.20.1.m1.1"><semantics id="S4.T4.20.20.20.1.m1.1a"><mo id="S4.T4.20.20.20.1.m1.1.1" mathsize="90%" stretchy="false" xref="S4.T4.20.20.20.1.m1.1.1.cmml">→</mo><annotation-xml encoding="MathML-Content" id="S4.T4.20.20.20.1.m1.1b"><ci id="S4.T4.20.20.20.1.m1.1.1.cmml" xref="S4.T4.20.20.20.1.m1.1.1">→</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.20.20.20.1.m1.1c">\rightarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T4.20.20.20.1.m1.1d">→</annotation></semantics></math><span class="ltx_text" id="S4.T4.20.20.20.1.2" style="font-size:90%;">Taste</span>
</th>
<td class="ltx_td ltx_align_center" id="S4.T4.21.21.21.2"><math alttext="0.47" class="ltx_Math" display="inline" id="S4.T4.21.21.21.2.m1.1"><semantics id="S4.T4.21.21.21.2.m1.1a"><mn id="S4.T4.21.21.21.2.m1.1.1" mathsize="90%" xref="S4.T4.21.21.21.2.m1.1.1.cmml">0.47</mn><annotation-xml encoding="MathML-Content" id="S4.T4.21.21.21.2.m1.1b"><cn id="S4.T4.21.21.21.2.m1.1.1.cmml" type="float" xref="S4.T4.21.21.21.2.m1.1.1">0.47</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.21.21.21.2.m1.1c">0.47</annotation><annotation encoding="application/x-llamapun" id="S4.T4.21.21.21.2.m1.1d">0.47</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T4.22.22.22.3"><math alttext="0.47" class="ltx_Math" display="inline" id="S4.T4.22.22.22.3.m1.1"><semantics id="S4.T4.22.22.22.3.m1.1a"><mn id="S4.T4.22.22.22.3.m1.1.1" mathsize="90%" xref="S4.T4.22.22.22.3.m1.1.1.cmml">0.47</mn><annotation-xml encoding="MathML-Content" id="S4.T4.22.22.22.3.m1.1b"><cn id="S4.T4.22.22.22.3.m1.1.1.cmml" type="float" xref="S4.T4.22.22.22.3.m1.1.1">0.47</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.22.22.22.3.m1.1c">0.47</annotation><annotation encoding="application/x-llamapun" id="S4.T4.22.22.22.3.m1.1d">0.47</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S4.T4.25.25.25">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T4.23.23.23.1">
<span class="ltx_text" id="S4.T4.23.23.23.1.1" style="font-size:90%;">X+1</span><math alttext="\rightarrow" class="ltx_Math" display="inline" id="S4.T4.23.23.23.1.m1.1"><semantics id="S4.T4.23.23.23.1.m1.1a"><mo id="S4.T4.23.23.23.1.m1.1.1" mathsize="90%" stretchy="false" xref="S4.T4.23.23.23.1.m1.1.1.cmml">→</mo><annotation-xml encoding="MathML-Content" id="S4.T4.23.23.23.1.m1.1b"><ci id="S4.T4.23.23.23.1.m1.1.1.cmml" xref="S4.T4.23.23.23.1.m1.1.1">→</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.23.23.23.1.m1.1c">\rightarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T4.23.23.23.1.m1.1d">→</annotation></semantics></math><span class="ltx_text" id="S4.T4.23.23.23.1.2" style="font-size:90%;">X+2</span>
</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.24.24.24.2"><math alttext="0.93" class="ltx_Math" display="inline" id="S4.T4.24.24.24.2.m1.1"><semantics id="S4.T4.24.24.24.2.m1.1a"><mn id="S4.T4.24.24.24.2.m1.1.1" mathsize="90%" xref="S4.T4.24.24.24.2.m1.1.1.cmml">0.93</mn><annotation-xml encoding="MathML-Content" id="S4.T4.24.24.24.2.m1.1b"><cn id="S4.T4.24.24.24.2.m1.1.1.cmml" type="float" xref="S4.T4.24.24.24.2.m1.1.1">0.93</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.24.24.24.2.m1.1c">0.93</annotation><annotation encoding="application/x-llamapun" id="S4.T4.24.24.24.2.m1.1d">0.93</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.25.25.25.3"><math alttext="0.87" class="ltx_Math" display="inline" id="S4.T4.25.25.25.3.m1.1"><semantics id="S4.T4.25.25.25.3.m1.1a"><mn id="S4.T4.25.25.25.3.m1.1.1" mathsize="90%" xref="S4.T4.25.25.25.3.m1.1.1.cmml">0.87</mn><annotation-xml encoding="MathML-Content" id="S4.T4.25.25.25.3.m1.1b"><cn id="S4.T4.25.25.25.3.m1.1.1.cmml" type="float" xref="S4.T4.25.25.25.3.m1.1.1">0.87</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.25.25.25.3.m1.1c">0.87</annotation><annotation encoding="application/x-llamapun" id="S4.T4.25.25.25.3.m1.1d">0.87</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S4.T4.28.28.28">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S4.T4.26.26.26.1">
<span class="ltx_text" id="S4.T4.26.26.26.1.1" style="font-size:90%;">X+1</span><math alttext="\rightarrow" class="ltx_Math" display="inline" id="S4.T4.26.26.26.1.m1.1"><semantics id="S4.T4.26.26.26.1.m1.1a"><mo id="S4.T4.26.26.26.1.m1.1.1" mathsize="90%" stretchy="false" xref="S4.T4.26.26.26.1.m1.1.1.cmml">→</mo><annotation-xml encoding="MathML-Content" id="S4.T4.26.26.26.1.m1.1b"><ci id="S4.T4.26.26.26.1.m1.1.1.cmml" xref="S4.T4.26.26.26.1.m1.1.1">→</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.26.26.26.1.m1.1c">\rightarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T4.26.26.26.1.m1.1d">→</annotation></semantics></math><span class="ltx_text" id="S4.T4.26.26.26.1.2" style="font-size:90%;">X*2</span>
</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.27.27.27.2"><math alttext="0.73" class="ltx_Math" display="inline" id="S4.T4.27.27.27.2.m1.1"><semantics id="S4.T4.27.27.27.2.m1.1a"><mn id="S4.T4.27.27.27.2.m1.1.1" mathsize="90%" xref="S4.T4.27.27.27.2.m1.1.1.cmml">0.73</mn><annotation-xml encoding="MathML-Content" id="S4.T4.27.27.27.2.m1.1b"><cn id="S4.T4.27.27.27.2.m1.1.1.cmml" type="float" xref="S4.T4.27.27.27.2.m1.1.1">0.73</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.27.27.27.2.m1.1c">0.73</annotation><annotation encoding="application/x-llamapun" id="S4.T4.27.27.27.2.m1.1d">0.73</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.28.28.28.3"><math alttext="0.66" class="ltx_Math" display="inline" id="S4.T4.28.28.28.3.m1.1"><semantics id="S4.T4.28.28.28.3.m1.1a"><mn id="S4.T4.28.28.28.3.m1.1.1" mathsize="90%" xref="S4.T4.28.28.28.3.m1.1.1.cmml">0.66</mn><annotation-xml encoding="MathML-Content" id="S4.T4.28.28.28.3.m1.1b"><cn id="S4.T4.28.28.28.3.m1.1.1.cmml" type="float" xref="S4.T4.28.28.28.3.m1.1.1">0.66</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.28.28.28.3.m1.1c">0.66</annotation><annotation encoding="application/x-llamapun" id="S4.T4.28.28.28.3.m1.1d">0.66</annotation></semantics></math></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the correlation coefficients between gradients of related knowledge pairs before fine-tuning.  For each pair of related knowledge prompts (e.g., City-Country, CEO-Company), it shows the Pearson correlation between the gradients calculated during the training process. This helps illustrate the relationship between gradients on different next-token-prediction (NTP) logits, providing insight into how the language model (LM) generalizes and updates knowledge during training. High correlation suggests a stronger linear relationship in the gradient space between the two prompts, indicating that updating one prompt's knowledge is likely to simultaneously update the other due to the inherent correlation.
> <details>
> <summary>read the caption</summary>
> Table 4: Correlation between gradients on related knowledge.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S5.T5.28.28">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S5.T5.28.28.29.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T5.28.28.29.1.1"><span class="ltx_text" id="S5.T5.28.28.29.1.1.1" style="font-size:90%;">Corr.</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T5.28.28.29.1.2"><span class="ltx_text" id="S5.T5.28.28.29.1.2.1" style="font-size:90%;">Prec.</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T5.28.28.29.1.3"><span class="ltx_text" id="S5.T5.28.28.29.1.3.1" style="font-size:90%;">Relation Pair</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T5.28.28.29.1.4"><span class="ltx_text" id="S5.T5.28.28.29.1.4.1" style="font-size:90%;">Generalization (Random)</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S5.T5.2.2.2">
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.2.2.2.3" rowspan="3"><span class="ltx_text" id="S5.T5.2.2.2.3.1" style="font-size:90%;">High</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.2.2.2.4" rowspan="3"><span class="ltx_text" id="S5.T5.2.2.2.4.1" style="font-size:90%;">High</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.1.1.1.1">
<span class="ltx_text" id="S5.T5.1.1.1.1.1" style="font-size:90%;">City</span><math alttext="\rightarrow" class="ltx_Math" display="inline" id="S5.T5.1.1.1.1.m1.1"><semantics id="S5.T5.1.1.1.1.m1.1a"><mo id="S5.T5.1.1.1.1.m1.1.1" mathsize="90%" stretchy="false" xref="S5.T5.1.1.1.1.m1.1.1.cmml">→</mo><annotation-xml encoding="MathML-Content" id="S5.T5.1.1.1.1.m1.1b"><ci id="S5.T5.1.1.1.1.m1.1.1.cmml" xref="S5.T5.1.1.1.1.m1.1.1">→</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T5.1.1.1.1.m1.1c">\rightarrow</annotation><annotation encoding="application/x-llamapun" id="S5.T5.1.1.1.1.m1.1d">→</annotation></semantics></math><span class="ltx_text" id="S5.T5.1.1.1.1.2" style="font-size:90%;">Country</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.2.2.2.2"><math alttext="53.70\%\ (0.78\%)" class="ltx_Math" display="inline" id="S5.T5.2.2.2.2.m1.1"><semantics id="S5.T5.2.2.2.2.m1.1a"><mrow id="S5.T5.2.2.2.2.m1.1.1" xref="S5.T5.2.2.2.2.m1.1.1.cmml"><mrow id="S5.T5.2.2.2.2.m1.1.1.3" xref="S5.T5.2.2.2.2.m1.1.1.3.cmml"><mn id="S5.T5.2.2.2.2.m1.1.1.3.2" mathsize="90%" xref="S5.T5.2.2.2.2.m1.1.1.3.2.cmml">53.70</mn><mo id="S5.T5.2.2.2.2.m1.1.1.3.1" mathsize="90%" xref="S5.T5.2.2.2.2.m1.1.1.3.1.cmml">%</mo></mrow><mo id="S5.T5.2.2.2.2.m1.1.1.2" lspace="0.450em" xref="S5.T5.2.2.2.2.m1.1.1.2.cmml">⁢</mo><mrow id="S5.T5.2.2.2.2.m1.1.1.1.1" xref="S5.T5.2.2.2.2.m1.1.1.1.1.1.cmml"><mo id="S5.T5.2.2.2.2.m1.1.1.1.1.2" maxsize="90%" minsize="90%" xref="S5.T5.2.2.2.2.m1.1.1.1.1.1.cmml">(</mo><mrow id="S5.T5.2.2.2.2.m1.1.1.1.1.1" xref="S5.T5.2.2.2.2.m1.1.1.1.1.1.cmml"><mn id="S5.T5.2.2.2.2.m1.1.1.1.1.1.2" mathsize="90%" xref="S5.T5.2.2.2.2.m1.1.1.1.1.1.2.cmml">0.78</mn><mo id="S5.T5.2.2.2.2.m1.1.1.1.1.1.1" mathsize="90%" xref="S5.T5.2.2.2.2.m1.1.1.1.1.1.1.cmml">%</mo></mrow><mo id="S5.T5.2.2.2.2.m1.1.1.1.1.3" maxsize="90%" minsize="90%" xref="S5.T5.2.2.2.2.m1.1.1.1.1.1.cmml">)</mo></mrow></mrow><annotation-xml encoding="MathML-Content" id="S5.T5.2.2.2.2.m1.1b"><apply id="S5.T5.2.2.2.2.m1.1.1.cmml" xref="S5.T5.2.2.2.2.m1.1.1"><times id="S5.T5.2.2.2.2.m1.1.1.2.cmml" xref="S5.T5.2.2.2.2.m1.1.1.2"></times><apply id="S5.T5.2.2.2.2.m1.1.1.3.cmml" xref="S5.T5.2.2.2.2.m1.1.1.3"><csymbol cd="latexml" id="S5.T5.2.2.2.2.m1.1.1.3.1.cmml" xref="S5.T5.2.2.2.2.m1.1.1.3.1">percent</csymbol><cn id="S5.T5.2.2.2.2.m1.1.1.3.2.cmml" type="float" xref="S5.T5.2.2.2.2.m1.1.1.3.2">53.70</cn></apply><apply id="S5.T5.2.2.2.2.m1.1.1.1.1.1.cmml" xref="S5.T5.2.2.2.2.m1.1.1.1.1"><csymbol cd="latexml" id="S5.T5.2.2.2.2.m1.1.1.1.1.1.1.cmml" xref="S5.T5.2.2.2.2.m1.1.1.1.1.1.1">percent</csymbol><cn id="S5.T5.2.2.2.2.m1.1.1.1.1.1.2.cmml" type="float" xref="S5.T5.2.2.2.2.m1.1.1.1.1.1.2">0.78</cn></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T5.2.2.2.2.m1.1c">53.70\%\ (0.78\%)</annotation><annotation encoding="application/x-llamapun" id="S5.T5.2.2.2.2.m1.1d">53.70 % ( 0.78 % )</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S5.T5.4.4.4">
<td class="ltx_td ltx_align_center" id="S5.T5.3.3.3.1">
<span class="ltx_text" id="S5.T5.3.3.3.1.1" style="font-size:90%;">Country</span><math alttext="\rightarrow" class="ltx_Math" display="inline" id="S5.T5.3.3.3.1.m1.1"><semantics id="S5.T5.3.3.3.1.m1.1a"><mo id="S5.T5.3.3.3.1.m1.1.1" mathsize="90%" stretchy="false" xref="S5.T5.3.3.3.1.m1.1.1.cmml">→</mo><annotation-xml encoding="MathML-Content" id="S5.T5.3.3.3.1.m1.1b"><ci id="S5.T5.3.3.3.1.m1.1.1.cmml" xref="S5.T5.3.3.3.1.m1.1.1">→</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T5.3.3.3.1.m1.1c">\rightarrow</annotation><annotation encoding="application/x-llamapun" id="S5.T5.3.3.3.1.m1.1d">→</annotation></semantics></math><span class="ltx_text" id="S5.T5.3.3.3.1.2" style="font-size:90%;">Continent</span>
</td>
<td class="ltx_td ltx_align_center" id="S5.T5.4.4.4.2"><math alttext="50.93\%\ (20.00\%)" class="ltx_Math" display="inline" id="S5.T5.4.4.4.2.m1.1"><semantics id="S5.T5.4.4.4.2.m1.1a"><mrow id="S5.T5.4.4.4.2.m1.1.1" xref="S5.T5.4.4.4.2.m1.1.1.cmml"><mrow id="S5.T5.4.4.4.2.m1.1.1.3" xref="S5.T5.4.4.4.2.m1.1.1.3.cmml"><mn id="S5.T5.4.4.4.2.m1.1.1.3.2" mathsize="90%" xref="S5.T5.4.4.4.2.m1.1.1.3.2.cmml">50.93</mn><mo id="S5.T5.4.4.4.2.m1.1.1.3.1" mathsize="90%" xref="S5.T5.4.4.4.2.m1.1.1.3.1.cmml">%</mo></mrow><mo id="S5.T5.4.4.4.2.m1.1.1.2" lspace="0.450em" xref="S5.T5.4.4.4.2.m1.1.1.2.cmml">⁢</mo><mrow id="S5.T5.4.4.4.2.m1.1.1.1.1" xref="S5.T5.4.4.4.2.m1.1.1.1.1.1.cmml"><mo id="S5.T5.4.4.4.2.m1.1.1.1.1.2" maxsize="90%" minsize="90%" xref="S5.T5.4.4.4.2.m1.1.1.1.1.1.cmml">(</mo><mrow id="S5.T5.4.4.4.2.m1.1.1.1.1.1" xref="S5.T5.4.4.4.2.m1.1.1.1.1.1.cmml"><mn id="S5.T5.4.4.4.2.m1.1.1.1.1.1.2" mathsize="90%" xref="S5.T5.4.4.4.2.m1.1.1.1.1.1.2.cmml">20.00</mn><mo id="S5.T5.4.4.4.2.m1.1.1.1.1.1.1" mathsize="90%" xref="S5.T5.4.4.4.2.m1.1.1.1.1.1.1.cmml">%</mo></mrow><mo id="S5.T5.4.4.4.2.m1.1.1.1.1.3" maxsize="90%" minsize="90%" xref="S5.T5.4.4.4.2.m1.1.1.1.1.1.cmml">)</mo></mrow></mrow><annotation-xml encoding="MathML-Content" id="S5.T5.4.4.4.2.m1.1b"><apply id="S5.T5.4.4.4.2.m1.1.1.cmml" xref="S5.T5.4.4.4.2.m1.1.1"><times id="S5.T5.4.4.4.2.m1.1.1.2.cmml" xref="S5.T5.4.4.4.2.m1.1.1.2"></times><apply id="S5.T5.4.4.4.2.m1.1.1.3.cmml" xref="S5.T5.4.4.4.2.m1.1.1.3"><csymbol cd="latexml" id="S5.T5.4.4.4.2.m1.1.1.3.1.cmml" xref="S5.T5.4.4.4.2.m1.1.1.3.1">percent</csymbol><cn id="S5.T5.4.4.4.2.m1.1.1.3.2.cmml" type="float" xref="S5.T5.4.4.4.2.m1.1.1.3.2">50.93</cn></apply><apply id="S5.T5.4.4.4.2.m1.1.1.1.1.1.cmml" xref="S5.T5.4.4.4.2.m1.1.1.1.1"><csymbol cd="latexml" id="S5.T5.4.4.4.2.m1.1.1.1.1.1.1.cmml" xref="S5.T5.4.4.4.2.m1.1.1.1.1.1.1">percent</csymbol><cn id="S5.T5.4.4.4.2.m1.1.1.1.1.1.2.cmml" type="float" xref="S5.T5.4.4.4.2.m1.1.1.1.1.1.2">20.00</cn></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T5.4.4.4.2.m1.1c">50.93\%\ (20.00\%)</annotation><annotation encoding="application/x-llamapun" id="S5.T5.4.4.4.2.m1.1d">50.93 % ( 20.00 % )</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S5.T5.8.8.8">
<td class="ltx_td ltx_align_center" id="S5.T5.7.7.7.3">
<span class="ltx_text" id="S5.T5.7.7.7.3.1" style="font-size:90%;">City</span><math alttext="{}_{\textrm{en}}" class="ltx_Math" display="inline" id="S5.T5.5.5.5.1.m1.1"><semantics id="S5.T5.5.5.5.1.m1.1a"><msub id="S5.T5.5.5.5.1.m1.1.1" xref="S5.T5.5.5.5.1.m1.1.1.cmml"><mi id="S5.T5.5.5.5.1.m1.1.1a" xref="S5.T5.5.5.5.1.m1.1.1.cmml"></mi><mtext id="S5.T5.5.5.5.1.m1.1.1.1" mathsize="90%" xref="S5.T5.5.5.5.1.m1.1.1.1a.cmml">en</mtext></msub><annotation-xml encoding="MathML-Content" id="S5.T5.5.5.5.1.m1.1b"><apply id="S5.T5.5.5.5.1.m1.1.1.cmml" xref="S5.T5.5.5.5.1.m1.1.1"><ci id="S5.T5.5.5.5.1.m1.1.1.1a.cmml" xref="S5.T5.5.5.5.1.m1.1.1.1"><mtext id="S5.T5.5.5.5.1.m1.1.1.1.cmml" mathsize="63%" xref="S5.T5.5.5.5.1.m1.1.1.1">en</mtext></ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T5.5.5.5.1.m1.1c">{}_{\textrm{en}}</annotation><annotation encoding="application/x-llamapun" id="S5.T5.5.5.5.1.m1.1d">start_FLOATSUBSCRIPT en end_FLOATSUBSCRIPT</annotation></semantics></math><math alttext="\rightarrow" class="ltx_Math" display="inline" id="S5.T5.6.6.6.2.m2.1"><semantics id="S5.T5.6.6.6.2.m2.1a"><mo id="S5.T5.6.6.6.2.m2.1.1" mathsize="90%" stretchy="false" xref="S5.T5.6.6.6.2.m2.1.1.cmml">→</mo><annotation-xml encoding="MathML-Content" id="S5.T5.6.6.6.2.m2.1b"><ci id="S5.T5.6.6.6.2.m2.1.1.cmml" xref="S5.T5.6.6.6.2.m2.1.1">→</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T5.6.6.6.2.m2.1c">\rightarrow</annotation><annotation encoding="application/x-llamapun" id="S5.T5.6.6.6.2.m2.1d">→</annotation></semantics></math><span class="ltx_text" id="S5.T5.7.7.7.3.2" style="font-size:90%;">City</span><math alttext="{}_{\textrm{es}}" class="ltx_Math" display="inline" id="S5.T5.7.7.7.3.m3.1"><semantics id="S5.T5.7.7.7.3.m3.1a"><msub id="S5.T5.7.7.7.3.m3.1.1" xref="S5.T5.7.7.7.3.m3.1.1.cmml"><mi id="S5.T5.7.7.7.3.m3.1.1a" xref="S5.T5.7.7.7.3.m3.1.1.cmml"></mi><mtext id="S5.T5.7.7.7.3.m3.1.1.1" mathsize="90%" xref="S5.T5.7.7.7.3.m3.1.1.1a.cmml">es</mtext></msub><annotation-xml encoding="MathML-Content" id="S5.T5.7.7.7.3.m3.1b"><apply id="S5.T5.7.7.7.3.m3.1.1.cmml" xref="S5.T5.7.7.7.3.m3.1.1"><ci id="S5.T5.7.7.7.3.m3.1.1.1a.cmml" xref="S5.T5.7.7.7.3.m3.1.1.1"><mtext id="S5.T5.7.7.7.3.m3.1.1.1.cmml" mathsize="63%" xref="S5.T5.7.7.7.3.m3.1.1.1">es</mtext></ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T5.7.7.7.3.m3.1c">{}_{\textrm{es}}</annotation><annotation encoding="application/x-llamapun" id="S5.T5.7.7.7.3.m3.1d">start_FLOATSUBSCRIPT es end_FLOATSUBSCRIPT</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center" id="S5.T5.8.8.8.4"><math alttext="39.10\%\ (0.41\%)" class="ltx_Math" display="inline" id="S5.T5.8.8.8.4.m1.1"><semantics id="S5.T5.8.8.8.4.m1.1a"><mrow id="S5.T5.8.8.8.4.m1.1.1" xref="S5.T5.8.8.8.4.m1.1.1.cmml"><mrow id="S5.T5.8.8.8.4.m1.1.1.3" xref="S5.T5.8.8.8.4.m1.1.1.3.cmml"><mn id="S5.T5.8.8.8.4.m1.1.1.3.2" mathsize="90%" xref="S5.T5.8.8.8.4.m1.1.1.3.2.cmml">39.10</mn><mo id="S5.T5.8.8.8.4.m1.1.1.3.1" mathsize="90%" xref="S5.T5.8.8.8.4.m1.1.1.3.1.cmml">%</mo></mrow><mo id="S5.T5.8.8.8.4.m1.1.1.2" lspace="0.450em" xref="S5.T5.8.8.8.4.m1.1.1.2.cmml">⁢</mo><mrow id="S5.T5.8.8.8.4.m1.1.1.1.1" xref="S5.T5.8.8.8.4.m1.1.1.1.1.1.cmml"><mo id="S5.T5.8.8.8.4.m1.1.1.1.1.2" maxsize="90%" minsize="90%" xref="S5.T5.8.8.8.4.m1.1.1.1.1.1.cmml">(</mo><mrow id="S5.T5.8.8.8.4.m1.1.1.1.1.1" xref="S5.T5.8.8.8.4.m1.1.1.1.1.1.cmml"><mn id="S5.T5.8.8.8.4.m1.1.1.1.1.1.2" mathsize="90%" xref="S5.T5.8.8.8.4.m1.1.1.1.1.1.2.cmml">0.41</mn><mo id="S5.T5.8.8.8.4.m1.1.1.1.1.1.1" mathsize="90%" xref="S5.T5.8.8.8.4.m1.1.1.1.1.1.1.cmml">%</mo></mrow><mo id="S5.T5.8.8.8.4.m1.1.1.1.1.3" maxsize="90%" minsize="90%" xref="S5.T5.8.8.8.4.m1.1.1.1.1.1.cmml">)</mo></mrow></mrow><annotation-xml encoding="MathML-Content" id="S5.T5.8.8.8.4.m1.1b"><apply id="S5.T5.8.8.8.4.m1.1.1.cmml" xref="S5.T5.8.8.8.4.m1.1.1"><times id="S5.T5.8.8.8.4.m1.1.1.2.cmml" xref="S5.T5.8.8.8.4.m1.1.1.2"></times><apply id="S5.T5.8.8.8.4.m1.1.1.3.cmml" xref="S5.T5.8.8.8.4.m1.1.1.3"><csymbol cd="latexml" id="S5.T5.8.8.8.4.m1.1.1.3.1.cmml" xref="S5.T5.8.8.8.4.m1.1.1.3.1">percent</csymbol><cn id="S5.T5.8.8.8.4.m1.1.1.3.2.cmml" type="float" xref="S5.T5.8.8.8.4.m1.1.1.3.2">39.10</cn></apply><apply id="S5.T5.8.8.8.4.m1.1.1.1.1.1.cmml" xref="S5.T5.8.8.8.4.m1.1.1.1.1"><csymbol cd="latexml" id="S5.T5.8.8.8.4.m1.1.1.1.1.1.1.cmml" xref="S5.T5.8.8.8.4.m1.1.1.1.1.1.1">percent</csymbol><cn id="S5.T5.8.8.8.4.m1.1.1.1.1.1.2.cmml" type="float" xref="S5.T5.8.8.8.4.m1.1.1.1.1.1.2">0.41</cn></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T5.8.8.8.4.m1.1c">39.10\%\ (0.41\%)</annotation><annotation encoding="application/x-llamapun" id="S5.T5.8.8.8.4.m1.1d">39.10 % ( 0.41 % )</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S5.T5.10.10.10">
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.10.10.10.3" rowspan="2"><span class="ltx_text" id="S5.T5.10.10.10.3.1" style="font-size:90%;">High</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.10.10.10.4" rowspan="2"><span class="ltx_text" id="S5.T5.10.10.10.4.1" style="font-size:90%;">Low</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.9.9.9.1">
<span class="ltx_text" id="S5.T5.9.9.9.1.1" style="font-size:90%;">X+1</span><math alttext="\rightarrow" class="ltx_Math" display="inline" id="S5.T5.9.9.9.1.m1.1"><semantics id="S5.T5.9.9.9.1.m1.1a"><mo id="S5.T5.9.9.9.1.m1.1.1" mathsize="90%" stretchy="false" xref="S5.T5.9.9.9.1.m1.1.1.cmml">→</mo><annotation-xml encoding="MathML-Content" id="S5.T5.9.9.9.1.m1.1b"><ci id="S5.T5.9.9.9.1.m1.1.1.cmml" xref="S5.T5.9.9.9.1.m1.1.1">→</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T5.9.9.9.1.m1.1c">\rightarrow</annotation><annotation encoding="application/x-llamapun" id="S5.T5.9.9.9.1.m1.1d">→</annotation></semantics></math><span class="ltx_text" id="S5.T5.9.9.9.1.2" style="font-size:90%;">X+2</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.10.10.10.2"><math alttext="0.00\%\ (9.09\%)" class="ltx_Math" display="inline" id="S5.T5.10.10.10.2.m1.1"><semantics id="S5.T5.10.10.10.2.m1.1a"><mrow id="S5.T5.10.10.10.2.m1.1.1" xref="S5.T5.10.10.10.2.m1.1.1.cmml"><mrow id="S5.T5.10.10.10.2.m1.1.1.3" xref="S5.T5.10.10.10.2.m1.1.1.3.cmml"><mn id="S5.T5.10.10.10.2.m1.1.1.3.2" mathsize="90%" xref="S5.T5.10.10.10.2.m1.1.1.3.2.cmml">0.00</mn><mo id="S5.T5.10.10.10.2.m1.1.1.3.1" mathsize="90%" xref="S5.T5.10.10.10.2.m1.1.1.3.1.cmml">%</mo></mrow><mo id="S5.T5.10.10.10.2.m1.1.1.2" lspace="0.450em" xref="S5.T5.10.10.10.2.m1.1.1.2.cmml">⁢</mo><mrow id="S5.T5.10.10.10.2.m1.1.1.1.1" xref="S5.T5.10.10.10.2.m1.1.1.1.1.1.cmml"><mo id="S5.T5.10.10.10.2.m1.1.1.1.1.2" maxsize="90%" minsize="90%" xref="S5.T5.10.10.10.2.m1.1.1.1.1.1.cmml">(</mo><mrow id="S5.T5.10.10.10.2.m1.1.1.1.1.1" xref="S5.T5.10.10.10.2.m1.1.1.1.1.1.cmml"><mn id="S5.T5.10.10.10.2.m1.1.1.1.1.1.2" mathsize="90%" xref="S5.T5.10.10.10.2.m1.1.1.1.1.1.2.cmml">9.09</mn><mo id="S5.T5.10.10.10.2.m1.1.1.1.1.1.1" mathsize="90%" xref="S5.T5.10.10.10.2.m1.1.1.1.1.1.1.cmml">%</mo></mrow><mo id="S5.T5.10.10.10.2.m1.1.1.1.1.3" maxsize="90%" minsize="90%" xref="S5.T5.10.10.10.2.m1.1.1.1.1.1.cmml">)</mo></mrow></mrow><annotation-xml encoding="MathML-Content" id="S5.T5.10.10.10.2.m1.1b"><apply id="S5.T5.10.10.10.2.m1.1.1.cmml" xref="S5.T5.10.10.10.2.m1.1.1"><times id="S5.T5.10.10.10.2.m1.1.1.2.cmml" xref="S5.T5.10.10.10.2.m1.1.1.2"></times><apply id="S5.T5.10.10.10.2.m1.1.1.3.cmml" xref="S5.T5.10.10.10.2.m1.1.1.3"><csymbol cd="latexml" id="S5.T5.10.10.10.2.m1.1.1.3.1.cmml" xref="S5.T5.10.10.10.2.m1.1.1.3.1">percent</csymbol><cn id="S5.T5.10.10.10.2.m1.1.1.3.2.cmml" type="float" xref="S5.T5.10.10.10.2.m1.1.1.3.2">0.00</cn></apply><apply id="S5.T5.10.10.10.2.m1.1.1.1.1.1.cmml" xref="S5.T5.10.10.10.2.m1.1.1.1.1"><csymbol cd="latexml" id="S5.T5.10.10.10.2.m1.1.1.1.1.1.1.cmml" xref="S5.T5.10.10.10.2.m1.1.1.1.1.1.1">percent</csymbol><cn id="S5.T5.10.10.10.2.m1.1.1.1.1.1.2.cmml" type="float" xref="S5.T5.10.10.10.2.m1.1.1.1.1.1.2">9.09</cn></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T5.10.10.10.2.m1.1c">0.00\%\ (9.09\%)</annotation><annotation encoding="application/x-llamapun" id="S5.T5.10.10.10.2.m1.1d">0.00 % ( 9.09 % )</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S5.T5.12.12.12">
<td class="ltx_td ltx_align_center" id="S5.T5.11.11.11.1">
<span class="ltx_text" id="S5.T5.11.11.11.1.1" style="font-size:90%;">X+1</span><math alttext="\rightarrow" class="ltx_Math" display="inline" id="S5.T5.11.11.11.1.m1.1"><semantics id="S5.T5.11.11.11.1.m1.1a"><mo id="S5.T5.11.11.11.1.m1.1.1" mathsize="90%" stretchy="false" xref="S5.T5.11.11.11.1.m1.1.1.cmml">→</mo><annotation-xml encoding="MathML-Content" id="S5.T5.11.11.11.1.m1.1b"><ci id="S5.T5.11.11.11.1.m1.1.1.cmml" xref="S5.T5.11.11.11.1.m1.1.1">→</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T5.11.11.11.1.m1.1c">\rightarrow</annotation><annotation encoding="application/x-llamapun" id="S5.T5.11.11.11.1.m1.1d">→</annotation></semantics></math><span class="ltx_text" id="S5.T5.11.11.11.1.2" style="font-size:90%;">X*2</span>
</td>
<td class="ltx_td ltx_align_center" id="S5.T5.12.12.12.2"><math alttext="8.18\%\ (9.09\%)" class="ltx_Math" display="inline" id="S5.T5.12.12.12.2.m1.1"><semantics id="S5.T5.12.12.12.2.m1.1a"><mrow id="S5.T5.12.12.12.2.m1.1.1" xref="S5.T5.12.12.12.2.m1.1.1.cmml"><mrow id="S5.T5.12.12.12.2.m1.1.1.3" xref="S5.T5.12.12.12.2.m1.1.1.3.cmml"><mn id="S5.T5.12.12.12.2.m1.1.1.3.2" mathsize="90%" xref="S5.T5.12.12.12.2.m1.1.1.3.2.cmml">8.18</mn><mo id="S5.T5.12.12.12.2.m1.1.1.3.1" mathsize="90%" xref="S5.T5.12.12.12.2.m1.1.1.3.1.cmml">%</mo></mrow><mo id="S5.T5.12.12.12.2.m1.1.1.2" lspace="0.450em" xref="S5.T5.12.12.12.2.m1.1.1.2.cmml">⁢</mo><mrow id="S5.T5.12.12.12.2.m1.1.1.1.1" xref="S5.T5.12.12.12.2.m1.1.1.1.1.1.cmml"><mo id="S5.T5.12.12.12.2.m1.1.1.1.1.2" maxsize="90%" minsize="90%" xref="S5.T5.12.12.12.2.m1.1.1.1.1.1.cmml">(</mo><mrow id="S5.T5.12.12.12.2.m1.1.1.1.1.1" xref="S5.T5.12.12.12.2.m1.1.1.1.1.1.cmml"><mn id="S5.T5.12.12.12.2.m1.1.1.1.1.1.2" mathsize="90%" xref="S5.T5.12.12.12.2.m1.1.1.1.1.1.2.cmml">9.09</mn><mo id="S5.T5.12.12.12.2.m1.1.1.1.1.1.1" mathsize="90%" xref="S5.T5.12.12.12.2.m1.1.1.1.1.1.1.cmml">%</mo></mrow><mo id="S5.T5.12.12.12.2.m1.1.1.1.1.3" maxsize="90%" minsize="90%" xref="S5.T5.12.12.12.2.m1.1.1.1.1.1.cmml">)</mo></mrow></mrow><annotation-xml encoding="MathML-Content" id="S5.T5.12.12.12.2.m1.1b"><apply id="S5.T5.12.12.12.2.m1.1.1.cmml" xref="S5.T5.12.12.12.2.m1.1.1"><times id="S5.T5.12.12.12.2.m1.1.1.2.cmml" xref="S5.T5.12.12.12.2.m1.1.1.2"></times><apply id="S5.T5.12.12.12.2.m1.1.1.3.cmml" xref="S5.T5.12.12.12.2.m1.1.1.3"><csymbol cd="latexml" id="S5.T5.12.12.12.2.m1.1.1.3.1.cmml" xref="S5.T5.12.12.12.2.m1.1.1.3.1">percent</csymbol><cn id="S5.T5.12.12.12.2.m1.1.1.3.2.cmml" type="float" xref="S5.T5.12.12.12.2.m1.1.1.3.2">8.18</cn></apply><apply id="S5.T5.12.12.12.2.m1.1.1.1.1.1.cmml" xref="S5.T5.12.12.12.2.m1.1.1.1.1"><csymbol cd="latexml" id="S5.T5.12.12.12.2.m1.1.1.1.1.1.1.cmml" xref="S5.T5.12.12.12.2.m1.1.1.1.1.1.1">percent</csymbol><cn id="S5.T5.12.12.12.2.m1.1.1.1.1.1.2.cmml" type="float" xref="S5.T5.12.12.12.2.m1.1.1.1.1.1.2">9.09</cn></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T5.12.12.12.2.m1.1c">8.18\%\ (9.09\%)</annotation><annotation encoding="application/x-llamapun" id="S5.T5.12.12.12.2.m1.1d">8.18 % ( 9.09 % )</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S5.T5.14.14.14">
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S5.T5.14.14.14.3" rowspan="6"><span class="ltx_text" id="S5.T5.14.14.14.3.1" style="font-size:90%;">Low</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S5.T5.14.14.14.4" rowspan="6"><span class="ltx_text" id="S5.T5.14.14.14.4.1" style="font-size:90%;">Low</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.13.13.13.1">
<span class="ltx_text" id="S5.T5.13.13.13.1.1" style="font-size:90%;">Fruit</span><math alttext="\rightarrow" class="ltx_Math" display="inline" id="S5.T5.13.13.13.1.m1.1"><semantics id="S5.T5.13.13.13.1.m1.1a"><mo id="S5.T5.13.13.13.1.m1.1.1" mathsize="90%" stretchy="false" xref="S5.T5.13.13.13.1.m1.1.1.cmml">→</mo><annotation-xml encoding="MathML-Content" id="S5.T5.13.13.13.1.m1.1b"><ci id="S5.T5.13.13.13.1.m1.1.1.cmml" xref="S5.T5.13.13.13.1.m1.1.1">→</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T5.13.13.13.1.m1.1c">\rightarrow</annotation><annotation encoding="application/x-llamapun" id="S5.T5.13.13.13.1.m1.1d">→</annotation></semantics></math><span class="ltx_text" id="S5.T5.13.13.13.1.2" style="font-size:90%;">Color</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.14.14.14.2"><math alttext="11.60\%\ (6.67\%)" class="ltx_Math" display="inline" id="S5.T5.14.14.14.2.m1.1"><semantics id="S5.T5.14.14.14.2.m1.1a"><mrow id="S5.T5.14.14.14.2.m1.1.1" xref="S5.T5.14.14.14.2.m1.1.1.cmml"><mrow id="S5.T5.14.14.14.2.m1.1.1.3" xref="S5.T5.14.14.14.2.m1.1.1.3.cmml"><mn id="S5.T5.14.14.14.2.m1.1.1.3.2" mathsize="90%" xref="S5.T5.14.14.14.2.m1.1.1.3.2.cmml">11.60</mn><mo id="S5.T5.14.14.14.2.m1.1.1.3.1" mathsize="90%" xref="S5.T5.14.14.14.2.m1.1.1.3.1.cmml">%</mo></mrow><mo id="S5.T5.14.14.14.2.m1.1.1.2" lspace="0.450em" xref="S5.T5.14.14.14.2.m1.1.1.2.cmml">⁢</mo><mrow id="S5.T5.14.14.14.2.m1.1.1.1.1" xref="S5.T5.14.14.14.2.m1.1.1.1.1.1.cmml"><mo id="S5.T5.14.14.14.2.m1.1.1.1.1.2" maxsize="90%" minsize="90%" xref="S5.T5.14.14.14.2.m1.1.1.1.1.1.cmml">(</mo><mrow id="S5.T5.14.14.14.2.m1.1.1.1.1.1" xref="S5.T5.14.14.14.2.m1.1.1.1.1.1.cmml"><mn id="S5.T5.14.14.14.2.m1.1.1.1.1.1.2" mathsize="90%" xref="S5.T5.14.14.14.2.m1.1.1.1.1.1.2.cmml">6.67</mn><mo id="S5.T5.14.14.14.2.m1.1.1.1.1.1.1" mathsize="90%" xref="S5.T5.14.14.14.2.m1.1.1.1.1.1.1.cmml">%</mo></mrow><mo id="S5.T5.14.14.14.2.m1.1.1.1.1.3" maxsize="90%" minsize="90%" xref="S5.T5.14.14.14.2.m1.1.1.1.1.1.cmml">)</mo></mrow></mrow><annotation-xml encoding="MathML-Content" id="S5.T5.14.14.14.2.m1.1b"><apply id="S5.T5.14.14.14.2.m1.1.1.cmml" xref="S5.T5.14.14.14.2.m1.1.1"><times id="S5.T5.14.14.14.2.m1.1.1.2.cmml" xref="S5.T5.14.14.14.2.m1.1.1.2"></times><apply id="S5.T5.14.14.14.2.m1.1.1.3.cmml" xref="S5.T5.14.14.14.2.m1.1.1.3"><csymbol cd="latexml" id="S5.T5.14.14.14.2.m1.1.1.3.1.cmml" xref="S5.T5.14.14.14.2.m1.1.1.3.1">percent</csymbol><cn id="S5.T5.14.14.14.2.m1.1.1.3.2.cmml" type="float" xref="S5.T5.14.14.14.2.m1.1.1.3.2">11.60</cn></apply><apply id="S5.T5.14.14.14.2.m1.1.1.1.1.1.cmml" xref="S5.T5.14.14.14.2.m1.1.1.1.1"><csymbol cd="latexml" id="S5.T5.14.14.14.2.m1.1.1.1.1.1.1.cmml" xref="S5.T5.14.14.14.2.m1.1.1.1.1.1.1">percent</csymbol><cn id="S5.T5.14.14.14.2.m1.1.1.1.1.1.2.cmml" type="float" xref="S5.T5.14.14.14.2.m1.1.1.1.1.1.2">6.67</cn></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T5.14.14.14.2.m1.1c">11.60\%\ (6.67\%)</annotation><annotation encoding="application/x-llamapun" id="S5.T5.14.14.14.2.m1.1d">11.60 % ( 6.67 % )</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S5.T5.16.16.16">
<td class="ltx_td ltx_align_center" id="S5.T5.15.15.15.1">
<span class="ltx_text" id="S5.T5.15.15.15.1.1" style="font-size:90%;">Food</span><math alttext="\rightarrow" class="ltx_Math" display="inline" id="S5.T5.15.15.15.1.m1.1"><semantics id="S5.T5.15.15.15.1.m1.1a"><mo id="S5.T5.15.15.15.1.m1.1.1" mathsize="90%" stretchy="false" xref="S5.T5.15.15.15.1.m1.1.1.cmml">→</mo><annotation-xml encoding="MathML-Content" id="S5.T5.15.15.15.1.m1.1b"><ci id="S5.T5.15.15.15.1.m1.1.1.cmml" xref="S5.T5.15.15.15.1.m1.1.1">→</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T5.15.15.15.1.m1.1c">\rightarrow</annotation><annotation encoding="application/x-llamapun" id="S5.T5.15.15.15.1.m1.1d">→</annotation></semantics></math><span class="ltx_text" id="S5.T5.15.15.15.1.2" style="font-size:90%;">Taste</span>
</td>
<td class="ltx_td ltx_align_center" id="S5.T5.16.16.16.2"><math alttext="19.44\%\ (10.00\%)" class="ltx_Math" display="inline" id="S5.T5.16.16.16.2.m1.1"><semantics id="S5.T5.16.16.16.2.m1.1a"><mrow id="S5.T5.16.16.16.2.m1.1.1" xref="S5.T5.16.16.16.2.m1.1.1.cmml"><mrow id="S5.T5.16.16.16.2.m1.1.1.3" xref="S5.T5.16.16.16.2.m1.1.1.3.cmml"><mn id="S5.T5.16.16.16.2.m1.1.1.3.2" mathsize="90%" xref="S5.T5.16.16.16.2.m1.1.1.3.2.cmml">19.44</mn><mo id="S5.T5.16.16.16.2.m1.1.1.3.1" mathsize="90%" xref="S5.T5.16.16.16.2.m1.1.1.3.1.cmml">%</mo></mrow><mo id="S5.T5.16.16.16.2.m1.1.1.2" lspace="0.450em" xref="S5.T5.16.16.16.2.m1.1.1.2.cmml">⁢</mo><mrow id="S5.T5.16.16.16.2.m1.1.1.1.1" xref="S5.T5.16.16.16.2.m1.1.1.1.1.1.cmml"><mo id="S5.T5.16.16.16.2.m1.1.1.1.1.2" maxsize="90%" minsize="90%" xref="S5.T5.16.16.16.2.m1.1.1.1.1.1.cmml">(</mo><mrow id="S5.T5.16.16.16.2.m1.1.1.1.1.1" xref="S5.T5.16.16.16.2.m1.1.1.1.1.1.cmml"><mn id="S5.T5.16.16.16.2.m1.1.1.1.1.1.2" mathsize="90%" xref="S5.T5.16.16.16.2.m1.1.1.1.1.1.2.cmml">10.00</mn><mo id="S5.T5.16.16.16.2.m1.1.1.1.1.1.1" mathsize="90%" xref="S5.T5.16.16.16.2.m1.1.1.1.1.1.1.cmml">%</mo></mrow><mo id="S5.T5.16.16.16.2.m1.1.1.1.1.3" maxsize="90%" minsize="90%" xref="S5.T5.16.16.16.2.m1.1.1.1.1.1.cmml">)</mo></mrow></mrow><annotation-xml encoding="MathML-Content" id="S5.T5.16.16.16.2.m1.1b"><apply id="S5.T5.16.16.16.2.m1.1.1.cmml" xref="S5.T5.16.16.16.2.m1.1.1"><times id="S5.T5.16.16.16.2.m1.1.1.2.cmml" xref="S5.T5.16.16.16.2.m1.1.1.2"></times><apply id="S5.T5.16.16.16.2.m1.1.1.3.cmml" xref="S5.T5.16.16.16.2.m1.1.1.3"><csymbol cd="latexml" id="S5.T5.16.16.16.2.m1.1.1.3.1.cmml" xref="S5.T5.16.16.16.2.m1.1.1.3.1">percent</csymbol><cn id="S5.T5.16.16.16.2.m1.1.1.3.2.cmml" type="float" xref="S5.T5.16.16.16.2.m1.1.1.3.2">19.44</cn></apply><apply id="S5.T5.16.16.16.2.m1.1.1.1.1.1.cmml" xref="S5.T5.16.16.16.2.m1.1.1.1.1"><csymbol cd="latexml" id="S5.T5.16.16.16.2.m1.1.1.1.1.1.1.cmml" xref="S5.T5.16.16.16.2.m1.1.1.1.1.1.1">percent</csymbol><cn id="S5.T5.16.16.16.2.m1.1.1.1.1.1.2.cmml" type="float" xref="S5.T5.16.16.16.2.m1.1.1.1.1.1.2">10.00</cn></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T5.16.16.16.2.m1.1c">19.44\%\ (10.00\%)</annotation><annotation encoding="application/x-llamapun" id="S5.T5.16.16.16.2.m1.1d">19.44 % ( 10.00 % )</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S5.T5.18.18.18">
<td class="ltx_td ltx_align_center" id="S5.T5.17.17.17.1">
<span class="ltx_text" id="S5.T5.17.17.17.1.1" style="font-size:90%;">CEO</span><math alttext="\rightarrow" class="ltx_Math" display="inline" id="S5.T5.17.17.17.1.m1.1"><semantics id="S5.T5.17.17.17.1.m1.1a"><mo id="S5.T5.17.17.17.1.m1.1.1" mathsize="90%" stretchy="false" xref="S5.T5.17.17.17.1.m1.1.1.cmml">→</mo><annotation-xml encoding="MathML-Content" id="S5.T5.17.17.17.1.m1.1b"><ci id="S5.T5.17.17.17.1.m1.1.1.cmml" xref="S5.T5.17.17.17.1.m1.1.1">→</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T5.17.17.17.1.m1.1c">\rightarrow</annotation><annotation encoding="application/x-llamapun" id="S5.T5.17.17.17.1.m1.1d">→</annotation></semantics></math><span class="ltx_text" id="S5.T5.17.17.17.1.2" style="font-size:90%;">Company</span>
</td>
<td class="ltx_td ltx_align_center" id="S5.T5.18.18.18.2"><math alttext="4.34\%\ (1.00\%)" class="ltx_Math" display="inline" id="S5.T5.18.18.18.2.m1.1"><semantics id="S5.T5.18.18.18.2.m1.1a"><mrow id="S5.T5.18.18.18.2.m1.1.1" xref="S5.T5.18.18.18.2.m1.1.1.cmml"><mrow id="S5.T5.18.18.18.2.m1.1.1.3" xref="S5.T5.18.18.18.2.m1.1.1.3.cmml"><mn id="S5.T5.18.18.18.2.m1.1.1.3.2" mathsize="90%" xref="S5.T5.18.18.18.2.m1.1.1.3.2.cmml">4.34</mn><mo id="S5.T5.18.18.18.2.m1.1.1.3.1" mathsize="90%" xref="S5.T5.18.18.18.2.m1.1.1.3.1.cmml">%</mo></mrow><mo id="S5.T5.18.18.18.2.m1.1.1.2" lspace="0.450em" xref="S5.T5.18.18.18.2.m1.1.1.2.cmml">⁢</mo><mrow id="S5.T5.18.18.18.2.m1.1.1.1.1" xref="S5.T5.18.18.18.2.m1.1.1.1.1.1.cmml"><mo id="S5.T5.18.18.18.2.m1.1.1.1.1.2" maxsize="90%" minsize="90%" xref="S5.T5.18.18.18.2.m1.1.1.1.1.1.cmml">(</mo><mrow id="S5.T5.18.18.18.2.m1.1.1.1.1.1" xref="S5.T5.18.18.18.2.m1.1.1.1.1.1.cmml"><mn id="S5.T5.18.18.18.2.m1.1.1.1.1.1.2" mathsize="90%" xref="S5.T5.18.18.18.2.m1.1.1.1.1.1.2.cmml">1.00</mn><mo id="S5.T5.18.18.18.2.m1.1.1.1.1.1.1" mathsize="90%" xref="S5.T5.18.18.18.2.m1.1.1.1.1.1.1.cmml">%</mo></mrow><mo id="S5.T5.18.18.18.2.m1.1.1.1.1.3" maxsize="90%" minsize="90%" xref="S5.T5.18.18.18.2.m1.1.1.1.1.1.cmml">)</mo></mrow></mrow><annotation-xml encoding="MathML-Content" id="S5.T5.18.18.18.2.m1.1b"><apply id="S5.T5.18.18.18.2.m1.1.1.cmml" xref="S5.T5.18.18.18.2.m1.1.1"><times id="S5.T5.18.18.18.2.m1.1.1.2.cmml" xref="S5.T5.18.18.18.2.m1.1.1.2"></times><apply id="S5.T5.18.18.18.2.m1.1.1.3.cmml" xref="S5.T5.18.18.18.2.m1.1.1.3"><csymbol cd="latexml" id="S5.T5.18.18.18.2.m1.1.1.3.1.cmml" xref="S5.T5.18.18.18.2.m1.1.1.3.1">percent</csymbol><cn id="S5.T5.18.18.18.2.m1.1.1.3.2.cmml" type="float" xref="S5.T5.18.18.18.2.m1.1.1.3.2">4.34</cn></apply><apply id="S5.T5.18.18.18.2.m1.1.1.1.1.1.cmml" xref="S5.T5.18.18.18.2.m1.1.1.1.1"><csymbol cd="latexml" id="S5.T5.18.18.18.2.m1.1.1.1.1.1.1.cmml" xref="S5.T5.18.18.18.2.m1.1.1.1.1.1.1">percent</csymbol><cn id="S5.T5.18.18.18.2.m1.1.1.1.1.1.2.cmml" type="float" xref="S5.T5.18.18.18.2.m1.1.1.1.1.1.2">1.00</cn></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T5.18.18.18.2.m1.1c">4.34\%\ (1.00\%)</annotation><annotation encoding="application/x-llamapun" id="S5.T5.18.18.18.2.m1.1d">4.34 % ( 1.00 % )</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S5.T5.20.20.20">
<td class="ltx_td ltx_align_center" id="S5.T5.19.19.19.1">
<span class="ltx_text" id="S5.T5.19.19.19.1.1" style="font-size:90%;">Language</span><math alttext="\rightarrow" class="ltx_Math" display="inline" id="S5.T5.19.19.19.1.m1.1"><semantics id="S5.T5.19.19.19.1.m1.1a"><mo id="S5.T5.19.19.19.1.m1.1.1" mathsize="90%" stretchy="false" xref="S5.T5.19.19.19.1.m1.1.1.cmml">→</mo><annotation-xml encoding="MathML-Content" id="S5.T5.19.19.19.1.m1.1b"><ci id="S5.T5.19.19.19.1.m1.1.1.cmml" xref="S5.T5.19.19.19.1.m1.1.1">→</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T5.19.19.19.1.m1.1c">\rightarrow</annotation><annotation encoding="application/x-llamapun" id="S5.T5.19.19.19.1.m1.1d">→</annotation></semantics></math><span class="ltx_text" id="S5.T5.19.19.19.1.2" style="font-size:90%;">Continent</span>
</td>
<td class="ltx_td ltx_align_center" id="S5.T5.20.20.20.2"><math alttext="23.65\%\ (20.00\%)" class="ltx_Math" display="inline" id="S5.T5.20.20.20.2.m1.1"><semantics id="S5.T5.20.20.20.2.m1.1a"><mrow id="S5.T5.20.20.20.2.m1.1.1" xref="S5.T5.20.20.20.2.m1.1.1.cmml"><mrow id="S5.T5.20.20.20.2.m1.1.1.3" xref="S5.T5.20.20.20.2.m1.1.1.3.cmml"><mn id="S5.T5.20.20.20.2.m1.1.1.3.2" mathsize="90%" xref="S5.T5.20.20.20.2.m1.1.1.3.2.cmml">23.65</mn><mo id="S5.T5.20.20.20.2.m1.1.1.3.1" mathsize="90%" xref="S5.T5.20.20.20.2.m1.1.1.3.1.cmml">%</mo></mrow><mo id="S5.T5.20.20.20.2.m1.1.1.2" lspace="0.450em" xref="S5.T5.20.20.20.2.m1.1.1.2.cmml">⁢</mo><mrow id="S5.T5.20.20.20.2.m1.1.1.1.1" xref="S5.T5.20.20.20.2.m1.1.1.1.1.1.cmml"><mo id="S5.T5.20.20.20.2.m1.1.1.1.1.2" maxsize="90%" minsize="90%" xref="S5.T5.20.20.20.2.m1.1.1.1.1.1.cmml">(</mo><mrow id="S5.T5.20.20.20.2.m1.1.1.1.1.1" xref="S5.T5.20.20.20.2.m1.1.1.1.1.1.cmml"><mn id="S5.T5.20.20.20.2.m1.1.1.1.1.1.2" mathsize="90%" xref="S5.T5.20.20.20.2.m1.1.1.1.1.1.2.cmml">20.00</mn><mo id="S5.T5.20.20.20.2.m1.1.1.1.1.1.1" mathsize="90%" xref="S5.T5.20.20.20.2.m1.1.1.1.1.1.1.cmml">%</mo></mrow><mo id="S5.T5.20.20.20.2.m1.1.1.1.1.3" maxsize="90%" minsize="90%" xref="S5.T5.20.20.20.2.m1.1.1.1.1.1.cmml">)</mo></mrow></mrow><annotation-xml encoding="MathML-Content" id="S5.T5.20.20.20.2.m1.1b"><apply id="S5.T5.20.20.20.2.m1.1.1.cmml" xref="S5.T5.20.20.20.2.m1.1.1"><times id="S5.T5.20.20.20.2.m1.1.1.2.cmml" xref="S5.T5.20.20.20.2.m1.1.1.2"></times><apply id="S5.T5.20.20.20.2.m1.1.1.3.cmml" xref="S5.T5.20.20.20.2.m1.1.1.3"><csymbol cd="latexml" id="S5.T5.20.20.20.2.m1.1.1.3.1.cmml" xref="S5.T5.20.20.20.2.m1.1.1.3.1">percent</csymbol><cn id="S5.T5.20.20.20.2.m1.1.1.3.2.cmml" type="float" xref="S5.T5.20.20.20.2.m1.1.1.3.2">23.65</cn></apply><apply id="S5.T5.20.20.20.2.m1.1.1.1.1.1.cmml" xref="S5.T5.20.20.20.2.m1.1.1.1.1"><csymbol cd="latexml" id="S5.T5.20.20.20.2.m1.1.1.1.1.1.1.cmml" xref="S5.T5.20.20.20.2.m1.1.1.1.1.1.1">percent</csymbol><cn id="S5.T5.20.20.20.2.m1.1.1.1.1.1.2.cmml" type="float" xref="S5.T5.20.20.20.2.m1.1.1.1.1.1.2">20.00</cn></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T5.20.20.20.2.m1.1c">23.65\%\ (20.00\%)</annotation><annotation encoding="application/x-llamapun" id="S5.T5.20.20.20.2.m1.1d">23.65 % ( 20.00 % )</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S5.T5.24.24.24">
<td class="ltx_td ltx_align_center" id="S5.T5.23.23.23.3">
<span class="ltx_text" id="S5.T5.23.23.23.3.1" style="font-size:90%;">City</span><math alttext="{}_{\textrm{en}}" class="ltx_Math" display="inline" id="S5.T5.21.21.21.1.m1.1"><semantics id="S5.T5.21.21.21.1.m1.1a"><msub id="S5.T5.21.21.21.1.m1.1.1" xref="S5.T5.21.21.21.1.m1.1.1.cmml"><mi id="S5.T5.21.21.21.1.m1.1.1a" xref="S5.T5.21.21.21.1.m1.1.1.cmml"></mi><mtext id="S5.T5.21.21.21.1.m1.1.1.1" mathsize="90%" xref="S5.T5.21.21.21.1.m1.1.1.1a.cmml">en</mtext></msub><annotation-xml encoding="MathML-Content" id="S5.T5.21.21.21.1.m1.1b"><apply id="S5.T5.21.21.21.1.m1.1.1.cmml" xref="S5.T5.21.21.21.1.m1.1.1"><ci id="S5.T5.21.21.21.1.m1.1.1.1a.cmml" xref="S5.T5.21.21.21.1.m1.1.1.1"><mtext id="S5.T5.21.21.21.1.m1.1.1.1.cmml" mathsize="63%" xref="S5.T5.21.21.21.1.m1.1.1.1">en</mtext></ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T5.21.21.21.1.m1.1c">{}_{\textrm{en}}</annotation><annotation encoding="application/x-llamapun" id="S5.T5.21.21.21.1.m1.1d">start_FLOATSUBSCRIPT en end_FLOATSUBSCRIPT</annotation></semantics></math><math alttext="\rightarrow" class="ltx_Math" display="inline" id="S5.T5.22.22.22.2.m2.1"><semantics id="S5.T5.22.22.22.2.m2.1a"><mo id="S5.T5.22.22.22.2.m2.1.1" mathsize="90%" stretchy="false" xref="S5.T5.22.22.22.2.m2.1.1.cmml">→</mo><annotation-xml encoding="MathML-Content" id="S5.T5.22.22.22.2.m2.1b"><ci id="S5.T5.22.22.22.2.m2.1.1.cmml" xref="S5.T5.22.22.22.2.m2.1.1">→</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T5.22.22.22.2.m2.1c">\rightarrow</annotation><annotation encoding="application/x-llamapun" id="S5.T5.22.22.22.2.m2.1d">→</annotation></semantics></math><span class="ltx_text" id="S5.T5.23.23.23.3.2" style="font-size:90%;">City</span><math alttext="{}_{\textrm{zh}}" class="ltx_Math" display="inline" id="S5.T5.23.23.23.3.m3.1"><semantics id="S5.T5.23.23.23.3.m3.1a"><msub id="S5.T5.23.23.23.3.m3.1.1" xref="S5.T5.23.23.23.3.m3.1.1.cmml"><mi id="S5.T5.23.23.23.3.m3.1.1a" xref="S5.T5.23.23.23.3.m3.1.1.cmml"></mi><mtext id="S5.T5.23.23.23.3.m3.1.1.1" mathsize="90%" xref="S5.T5.23.23.23.3.m3.1.1.1a.cmml">zh</mtext></msub><annotation-xml encoding="MathML-Content" id="S5.T5.23.23.23.3.m3.1b"><apply id="S5.T5.23.23.23.3.m3.1.1.cmml" xref="S5.T5.23.23.23.3.m3.1.1"><ci id="S5.T5.23.23.23.3.m3.1.1.1a.cmml" xref="S5.T5.23.23.23.3.m3.1.1.1"><mtext id="S5.T5.23.23.23.3.m3.1.1.1.cmml" mathsize="63%" xref="S5.T5.23.23.23.3.m3.1.1.1">zh</mtext></ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T5.23.23.23.3.m3.1c">{}_{\textrm{zh}}</annotation><annotation encoding="application/x-llamapun" id="S5.T5.23.23.23.3.m3.1d">start_FLOATSUBSCRIPT zh end_FLOATSUBSCRIPT</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center" id="S5.T5.24.24.24.4"><math alttext="2.49\%\ (0.41\%)" class="ltx_Math" display="inline" id="S5.T5.24.24.24.4.m1.1"><semantics id="S5.T5.24.24.24.4.m1.1a"><mrow id="S5.T5.24.24.24.4.m1.1.1" xref="S5.T5.24.24.24.4.m1.1.1.cmml"><mrow id="S5.T5.24.24.24.4.m1.1.1.3" xref="S5.T5.24.24.24.4.m1.1.1.3.cmml"><mn id="S5.T5.24.24.24.4.m1.1.1.3.2" mathsize="90%" xref="S5.T5.24.24.24.4.m1.1.1.3.2.cmml">2.49</mn><mo id="S5.T5.24.24.24.4.m1.1.1.3.1" mathsize="90%" xref="S5.T5.24.24.24.4.m1.1.1.3.1.cmml">%</mo></mrow><mo id="S5.T5.24.24.24.4.m1.1.1.2" lspace="0.450em" xref="S5.T5.24.24.24.4.m1.1.1.2.cmml">⁢</mo><mrow id="S5.T5.24.24.24.4.m1.1.1.1.1" xref="S5.T5.24.24.24.4.m1.1.1.1.1.1.cmml"><mo id="S5.T5.24.24.24.4.m1.1.1.1.1.2" maxsize="90%" minsize="90%" xref="S5.T5.24.24.24.4.m1.1.1.1.1.1.cmml">(</mo><mrow id="S5.T5.24.24.24.4.m1.1.1.1.1.1" xref="S5.T5.24.24.24.4.m1.1.1.1.1.1.cmml"><mn id="S5.T5.24.24.24.4.m1.1.1.1.1.1.2" mathsize="90%" xref="S5.T5.24.24.24.4.m1.1.1.1.1.1.2.cmml">0.41</mn><mo id="S5.T5.24.24.24.4.m1.1.1.1.1.1.1" mathsize="90%" xref="S5.T5.24.24.24.4.m1.1.1.1.1.1.1.cmml">%</mo></mrow><mo id="S5.T5.24.24.24.4.m1.1.1.1.1.3" maxsize="90%" minsize="90%" xref="S5.T5.24.24.24.4.m1.1.1.1.1.1.cmml">)</mo></mrow></mrow><annotation-xml encoding="MathML-Content" id="S5.T5.24.24.24.4.m1.1b"><apply id="S5.T5.24.24.24.4.m1.1.1.cmml" xref="S5.T5.24.24.24.4.m1.1.1"><times id="S5.T5.24.24.24.4.m1.1.1.2.cmml" xref="S5.T5.24.24.24.4.m1.1.1.2"></times><apply id="S5.T5.24.24.24.4.m1.1.1.3.cmml" xref="S5.T5.24.24.24.4.m1.1.1.3"><csymbol cd="latexml" id="S5.T5.24.24.24.4.m1.1.1.3.1.cmml" xref="S5.T5.24.24.24.4.m1.1.1.3.1">percent</csymbol><cn id="S5.T5.24.24.24.4.m1.1.1.3.2.cmml" type="float" xref="S5.T5.24.24.24.4.m1.1.1.3.2">2.49</cn></apply><apply id="S5.T5.24.24.24.4.m1.1.1.1.1.1.cmml" xref="S5.T5.24.24.24.4.m1.1.1.1.1"><csymbol cd="latexml" id="S5.T5.24.24.24.4.m1.1.1.1.1.1.1.cmml" xref="S5.T5.24.24.24.4.m1.1.1.1.1.1.1">percent</csymbol><cn id="S5.T5.24.24.24.4.m1.1.1.1.1.1.2.cmml" type="float" xref="S5.T5.24.24.24.4.m1.1.1.1.1.1.2">0.41</cn></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T5.24.24.24.4.m1.1c">2.49\%\ (0.41\%)</annotation><annotation encoding="application/x-llamapun" id="S5.T5.24.24.24.4.m1.1d">2.49 % ( 0.41 % )</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S5.T5.28.28.28">
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T5.27.27.27.3">
<span class="ltx_text" id="S5.T5.27.27.27.3.1" style="font-size:90%;">City</span><math alttext="{}_{\textrm{en}}" class="ltx_Math" display="inline" id="S5.T5.25.25.25.1.m1.1"><semantics id="S5.T5.25.25.25.1.m1.1a"><msub id="S5.T5.25.25.25.1.m1.1.1" xref="S5.T5.25.25.25.1.m1.1.1.cmml"><mi id="S5.T5.25.25.25.1.m1.1.1a" xref="S5.T5.25.25.25.1.m1.1.1.cmml"></mi><mtext id="S5.T5.25.25.25.1.m1.1.1.1" mathsize="90%" xref="S5.T5.25.25.25.1.m1.1.1.1a.cmml">en</mtext></msub><annotation-xml encoding="MathML-Content" id="S5.T5.25.25.25.1.m1.1b"><apply id="S5.T5.25.25.25.1.m1.1.1.cmml" xref="S5.T5.25.25.25.1.m1.1.1"><ci id="S5.T5.25.25.25.1.m1.1.1.1a.cmml" xref="S5.T5.25.25.25.1.m1.1.1.1"><mtext id="S5.T5.25.25.25.1.m1.1.1.1.cmml" mathsize="63%" xref="S5.T5.25.25.25.1.m1.1.1.1">en</mtext></ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T5.25.25.25.1.m1.1c">{}_{\textrm{en}}</annotation><annotation encoding="application/x-llamapun" id="S5.T5.25.25.25.1.m1.1d">start_FLOATSUBSCRIPT en end_FLOATSUBSCRIPT</annotation></semantics></math><math alttext="\rightarrow" class="ltx_Math" display="inline" id="S5.T5.26.26.26.2.m2.1"><semantics id="S5.T5.26.26.26.2.m2.1a"><mo id="S5.T5.26.26.26.2.m2.1.1" mathsize="90%" stretchy="false" xref="S5.T5.26.26.26.2.m2.1.1.cmml">→</mo><annotation-xml encoding="MathML-Content" id="S5.T5.26.26.26.2.m2.1b"><ci id="S5.T5.26.26.26.2.m2.1.1.cmml" xref="S5.T5.26.26.26.2.m2.1.1">→</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T5.26.26.26.2.m2.1c">\rightarrow</annotation><annotation encoding="application/x-llamapun" id="S5.T5.26.26.26.2.m2.1d">→</annotation></semantics></math><span class="ltx_text" id="S5.T5.27.27.27.3.2" style="font-size:90%;">City</span><math alttext="{}_{\textrm{ja}}" class="ltx_Math" display="inline" id="S5.T5.27.27.27.3.m3.1"><semantics id="S5.T5.27.27.27.3.m3.1a"><msub id="S5.T5.27.27.27.3.m3.1.1" xref="S5.T5.27.27.27.3.m3.1.1.cmml"><mi id="S5.T5.27.27.27.3.m3.1.1a" xref="S5.T5.27.27.27.3.m3.1.1.cmml"></mi><mtext id="S5.T5.27.27.27.3.m3.1.1.1" mathsize="90%" xref="S5.T5.27.27.27.3.m3.1.1.1a.cmml">ja</mtext></msub><annotation-xml encoding="MathML-Content" id="S5.T5.27.27.27.3.m3.1b"><apply id="S5.T5.27.27.27.3.m3.1.1.cmml" xref="S5.T5.27.27.27.3.m3.1.1"><ci id="S5.T5.27.27.27.3.m3.1.1.1a.cmml" xref="S5.T5.27.27.27.3.m3.1.1.1"><mtext id="S5.T5.27.27.27.3.m3.1.1.1.cmml" mathsize="63%" xref="S5.T5.27.27.27.3.m3.1.1.1">ja</mtext></ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T5.27.27.27.3.m3.1c">{}_{\textrm{ja}}</annotation><annotation encoding="application/x-llamapun" id="S5.T5.27.27.27.3.m3.1d">start_FLOATSUBSCRIPT ja end_FLOATSUBSCRIPT</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T5.28.28.28.4"><math alttext="4.60\%\ (0.41\%)" class="ltx_Math" display="inline" id="S5.T5.28.28.28.4.m1.1"><semantics id="S5.T5.28.28.28.4.m1.1a"><mrow id="S5.T5.28.28.28.4.m1.1.1" xref="S5.T5.28.28.28.4.m1.1.1.cmml"><mrow id="S5.T5.28.28.28.4.m1.1.1.3" xref="S5.T5.28.28.28.4.m1.1.1.3.cmml"><mn id="S5.T5.28.28.28.4.m1.1.1.3.2" mathsize="90%" xref="S5.T5.28.28.28.4.m1.1.1.3.2.cmml">4.60</mn><mo id="S5.T5.28.28.28.4.m1.1.1.3.1" mathsize="90%" xref="S5.T5.28.28.28.4.m1.1.1.3.1.cmml">%</mo></mrow><mo id="S5.T5.28.28.28.4.m1.1.1.2" lspace="0.450em" xref="S5.T5.28.28.28.4.m1.1.1.2.cmml">⁢</mo><mrow id="S5.T5.28.28.28.4.m1.1.1.1.1" xref="S5.T5.28.28.28.4.m1.1.1.1.1.1.cmml"><mo id="S5.T5.28.28.28.4.m1.1.1.1.1.2" maxsize="90%" minsize="90%" xref="S5.T5.28.28.28.4.m1.1.1.1.1.1.cmml">(</mo><mrow id="S5.T5.28.28.28.4.m1.1.1.1.1.1" xref="S5.T5.28.28.28.4.m1.1.1.1.1.1.cmml"><mn id="S5.T5.28.28.28.4.m1.1.1.1.1.1.2" mathsize="90%" xref="S5.T5.28.28.28.4.m1.1.1.1.1.1.2.cmml">0.41</mn><mo id="S5.T5.28.28.28.4.m1.1.1.1.1.1.1" mathsize="90%" xref="S5.T5.28.28.28.4.m1.1.1.1.1.1.1.cmml">%</mo></mrow><mo id="S5.T5.28.28.28.4.m1.1.1.1.1.3" maxsize="90%" minsize="90%" xref="S5.T5.28.28.28.4.m1.1.1.1.1.1.cmml">)</mo></mrow></mrow><annotation-xml encoding="MathML-Content" id="S5.T5.28.28.28.4.m1.1b"><apply id="S5.T5.28.28.28.4.m1.1.1.cmml" xref="S5.T5.28.28.28.4.m1.1.1"><times id="S5.T5.28.28.28.4.m1.1.1.2.cmml" xref="S5.T5.28.28.28.4.m1.1.1.2"></times><apply id="S5.T5.28.28.28.4.m1.1.1.3.cmml" xref="S5.T5.28.28.28.4.m1.1.1.3"><csymbol cd="latexml" id="S5.T5.28.28.28.4.m1.1.1.3.1.cmml" xref="S5.T5.28.28.28.4.m1.1.1.3.1">percent</csymbol><cn id="S5.T5.28.28.28.4.m1.1.1.3.2.cmml" type="float" xref="S5.T5.28.28.28.4.m1.1.1.3.2">4.60</cn></apply><apply id="S5.T5.28.28.28.4.m1.1.1.1.1.1.cmml" xref="S5.T5.28.28.28.4.m1.1.1.1.1"><csymbol cd="latexml" id="S5.T5.28.28.28.4.m1.1.1.1.1.1.1.cmml" xref="S5.T5.28.28.28.4.m1.1.1.1.1.1.1">percent</csymbol><cn id="S5.T5.28.28.28.4.m1.1.1.1.1.1.2.cmml" type="float" xref="S5.T5.28.28.28.4.m1.1.1.1.1.1.2">0.41</cn></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T5.28.28.28.4.m1.1c">4.60\%\ (0.41\%)</annotation><annotation encoding="application/x-llamapun" id="S5.T5.28.28.28.4.m1.1d">4.60 % ( 0.41 % )</annotation></semantics></math></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of an experiment evaluating the impact of linear correlation and the precision of a learned linear transformation (W) on the generalization performance of language models (LMs).  Specifically, it shows the percentage of successful generalization across various relation pairs (e.g., City-Country, CEO-Company) categorized by levels of linear correlation (high/low) and W precision (high/low).  The results demonstrate the importance of both factors for successful compositional generalization in LMs.
> <details>
> <summary>read the caption</summary>
> Table 5: The ratio of successful generalization in relation pairs with different linear correlation and W𝑊Witalic_W precision.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S5.T6.27.27">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S5.T6.3.3.3">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S5.T6.3.3.3.4"><span class="ltx_text" id="S5.T6.3.3.3.4.1" style="font-size:90%;">City</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S5.T6.3.3.3.5"><span class="ltx_text" id="S5.T6.3.3.3.5.1" style="font-size:90%;">Reference</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S5.T6.3.3.3.6"><span class="ltx_text" id="S5.T6.3.3.3.6.1" style="font-size:90%;">Generalized</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T6.1.1.1.1"><math alttext="W_{\textrm{ref}}" class="ltx_Math" display="inline" id="S5.T6.1.1.1.1.m1.1"><semantics id="S5.T6.1.1.1.1.m1.1a"><msub id="S5.T6.1.1.1.1.m1.1.1" xref="S5.T6.1.1.1.1.m1.1.1.cmml"><mi id="S5.T6.1.1.1.1.m1.1.1.2" mathsize="90%" xref="S5.T6.1.1.1.1.m1.1.1.2.cmml">W</mi><mtext id="S5.T6.1.1.1.1.m1.1.1.3" mathsize="90%" xref="S5.T6.1.1.1.1.m1.1.1.3a.cmml">ref</mtext></msub><annotation-xml encoding="MathML-Content" id="S5.T6.1.1.1.1.m1.1b"><apply id="S5.T6.1.1.1.1.m1.1.1.cmml" xref="S5.T6.1.1.1.1.m1.1.1"><csymbol cd="ambiguous" id="S5.T6.1.1.1.1.m1.1.1.1.cmml" xref="S5.T6.1.1.1.1.m1.1.1">subscript</csymbol><ci id="S5.T6.1.1.1.1.m1.1.1.2.cmml" xref="S5.T6.1.1.1.1.m1.1.1.2">𝑊</ci><ci id="S5.T6.1.1.1.1.m1.1.1.3a.cmml" xref="S5.T6.1.1.1.1.m1.1.1.3"><mtext id="S5.T6.1.1.1.1.m1.1.1.3.cmml" mathsize="63%" xref="S5.T6.1.1.1.1.m1.1.1.3">ref</mtext></ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T6.1.1.1.1.m1.1c">W_{\textrm{ref}}</annotation><annotation encoding="application/x-llamapun" id="S5.T6.1.1.1.1.m1.1d">italic_W start_POSTSUBSCRIPT ref end_POSTSUBSCRIPT</annotation></semantics></math></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T6.2.2.2.2"><math alttext="W_{\textrm{gen}}" class="ltx_Math" display="inline" id="S5.T6.2.2.2.2.m1.1"><semantics id="S5.T6.2.2.2.2.m1.1a"><msub id="S5.T6.2.2.2.2.m1.1.1" xref="S5.T6.2.2.2.2.m1.1.1.cmml"><mi id="S5.T6.2.2.2.2.m1.1.1.2" mathsize="90%" xref="S5.T6.2.2.2.2.m1.1.1.2.cmml">W</mi><mtext id="S5.T6.2.2.2.2.m1.1.1.3" mathsize="90%" xref="S5.T6.2.2.2.2.m1.1.1.3a.cmml">gen</mtext></msub><annotation-xml encoding="MathML-Content" id="S5.T6.2.2.2.2.m1.1b"><apply id="S5.T6.2.2.2.2.m1.1.1.cmml" xref="S5.T6.2.2.2.2.m1.1.1"><csymbol cd="ambiguous" id="S5.T6.2.2.2.2.m1.1.1.1.cmml" xref="S5.T6.2.2.2.2.m1.1.1">subscript</csymbol><ci id="S5.T6.2.2.2.2.m1.1.1.2.cmml" xref="S5.T6.2.2.2.2.m1.1.1.2">𝑊</ci><ci id="S5.T6.2.2.2.2.m1.1.1.3a.cmml" xref="S5.T6.2.2.2.2.m1.1.1.3"><mtext id="S5.T6.2.2.2.2.m1.1.1.3.cmml" mathsize="63%" xref="S5.T6.2.2.2.2.m1.1.1.3">gen</mtext></ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T6.2.2.2.2.m1.1c">W_{\textrm{gen}}</annotation><annotation encoding="application/x-llamapun" id="S5.T6.2.2.2.2.m1.1d">italic_W start_POSTSUBSCRIPT gen end_POSTSUBSCRIPT</annotation></semantics></math></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T6.3.3.3.3"><math alttext="W_{\textrm{max}}" class="ltx_Math" display="inline" id="S5.T6.3.3.3.3.m1.1"><semantics id="S5.T6.3.3.3.3.m1.1a"><msub id="S5.T6.3.3.3.3.m1.1.1" xref="S5.T6.3.3.3.3.m1.1.1.cmml"><mi id="S5.T6.3.3.3.3.m1.1.1.2" mathsize="90%" xref="S5.T6.3.3.3.3.m1.1.1.2.cmml">W</mi><mtext id="S5.T6.3.3.3.3.m1.1.1.3" mathsize="90%" xref="S5.T6.3.3.3.3.m1.1.1.3a.cmml">max</mtext></msub><annotation-xml encoding="MathML-Content" id="S5.T6.3.3.3.3.m1.1b"><apply id="S5.T6.3.3.3.3.m1.1.1.cmml" xref="S5.T6.3.3.3.3.m1.1.1"><csymbol cd="ambiguous" id="S5.T6.3.3.3.3.m1.1.1.1.cmml" xref="S5.T6.3.3.3.3.m1.1.1">subscript</csymbol><ci id="S5.T6.3.3.3.3.m1.1.1.2.cmml" xref="S5.T6.3.3.3.3.m1.1.1.2">𝑊</ci><ci id="S5.T6.3.3.3.3.m1.1.1.3a.cmml" xref="S5.T6.3.3.3.3.m1.1.1.3"><mtext id="S5.T6.3.3.3.3.m1.1.1.3.cmml" mathsize="63%" xref="S5.T6.3.3.3.3.m1.1.1.3">max</mtext></ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T6.3.3.3.3.m1.1c">W_{\textrm{max}}</annotation><annotation encoding="application/x-llamapun" id="S5.T6.3.3.3.3.m1.1d">italic_W start_POSTSUBSCRIPT max end_POSTSUBSCRIPT</annotation></semantics></math></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S5.T6.6.6.6">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" id="S5.T6.6.6.6.4"><span class="ltx_text" id="S5.T6.6.6.6.4.1" style="font-size:90%;">Shanghai</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" id="S5.T6.6.6.6.5"><span class="ltx_text" id="S5.T6.6.6.6.5.1" style="font-size:90%;">China</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" id="S5.T6.6.6.6.6"><span class="ltx_text" id="S5.T6.6.6.6.6.1" style="font-size:90%;color:#008080;">China</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T6.4.4.4.1"><math alttext="0.50" class="ltx_Math" display="inline" id="S5.T6.4.4.4.1.m1.1"><semantics id="S5.T6.4.4.4.1.m1.1a"><mn id="S5.T6.4.4.4.1.m1.1.1" mathsize="90%" xref="S5.T6.4.4.4.1.m1.1.1.cmml">0.50</mn><annotation-xml encoding="MathML-Content" id="S5.T6.4.4.4.1.m1.1b"><cn id="S5.T6.4.4.4.1.m1.1.1.cmml" type="float" xref="S5.T6.4.4.4.1.m1.1.1">0.50</cn></annotation-xml><annotation encoding="application/x-tex" id="S5.T6.4.4.4.1.m1.1c">0.50</annotation><annotation encoding="application/x-llamapun" id="S5.T6.4.4.4.1.m1.1d">0.50</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T6.5.5.5.2"><math alttext="0.50" class="ltx_Math" display="inline" id="S5.T6.5.5.5.2.m1.1"><semantics id="S5.T6.5.5.5.2.m1.1a"><mn id="S5.T6.5.5.5.2.m1.1.1" mathsize="90%" xref="S5.T6.5.5.5.2.m1.1.1.cmml">0.50</mn><annotation-xml encoding="MathML-Content" id="S5.T6.5.5.5.2.m1.1b"><cn id="S5.T6.5.5.5.2.m1.1.1.cmml" type="float" xref="S5.T6.5.5.5.2.m1.1.1">0.50</cn></annotation-xml><annotation encoding="application/x-tex" id="S5.T6.5.5.5.2.m1.1c">0.50</annotation><annotation encoding="application/x-llamapun" id="S5.T6.5.5.5.2.m1.1d">0.50</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T6.6.6.6.3"><math alttext="0.50" class="ltx_Math" display="inline" id="S5.T6.6.6.6.3.m1.1"><semantics id="S5.T6.6.6.6.3.m1.1a"><mn id="S5.T6.6.6.6.3.m1.1.1" mathsize="90%" xref="S5.T6.6.6.6.3.m1.1.1.cmml">0.50</mn><annotation-xml encoding="MathML-Content" id="S5.T6.6.6.6.3.m1.1b"><cn id="S5.T6.6.6.6.3.m1.1.1.cmml" type="float" xref="S5.T6.6.6.6.3.m1.1.1">0.50</cn></annotation-xml><annotation encoding="application/x-tex" id="S5.T6.6.6.6.3.m1.1c">0.50</annotation><annotation encoding="application/x-llamapun" id="S5.T6.6.6.6.3.m1.1d">0.50</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S5.T6.9.9.9">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S5.T6.9.9.9.4"><span class="ltx_text" id="S5.T6.9.9.9.4.1" style="font-size:90%;">NYC</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S5.T6.9.9.9.5"><span class="ltx_text" id="S5.T6.9.9.9.5.1" style="font-size:90%;">USA</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S5.T6.9.9.9.6"><span class="ltx_text" id="S5.T6.9.9.9.6.1" style="font-size:90%;color:#008080;">USA</span></th>
<td class="ltx_td ltx_align_center" id="S5.T6.7.7.7.1"><math alttext="0.58" class="ltx_Math" display="inline" id="S5.T6.7.7.7.1.m1.1"><semantics id="S5.T6.7.7.7.1.m1.1a"><mn id="S5.T6.7.7.7.1.m1.1.1" mathsize="90%" xref="S5.T6.7.7.7.1.m1.1.1.cmml">0.58</mn><annotation-xml encoding="MathML-Content" id="S5.T6.7.7.7.1.m1.1b"><cn id="S5.T6.7.7.7.1.m1.1.1.cmml" type="float" xref="S5.T6.7.7.7.1.m1.1.1">0.58</cn></annotation-xml><annotation encoding="application/x-tex" id="S5.T6.7.7.7.1.m1.1c">0.58</annotation><annotation encoding="application/x-llamapun" id="S5.T6.7.7.7.1.m1.1d">0.58</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S5.T6.8.8.8.2"><math alttext="0.58" class="ltx_Math" display="inline" id="S5.T6.8.8.8.2.m1.1"><semantics id="S5.T6.8.8.8.2.m1.1a"><mn id="S5.T6.8.8.8.2.m1.1.1" mathsize="90%" xref="S5.T6.8.8.8.2.m1.1.1.cmml">0.58</mn><annotation-xml encoding="MathML-Content" id="S5.T6.8.8.8.2.m1.1b"><cn id="S5.T6.8.8.8.2.m1.1.1.cmml" type="float" xref="S5.T6.8.8.8.2.m1.1.1">0.58</cn></annotation-xml><annotation encoding="application/x-tex" id="S5.T6.8.8.8.2.m1.1c">0.58</annotation><annotation encoding="application/x-llamapun" id="S5.T6.8.8.8.2.m1.1d">0.58</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S5.T6.9.9.9.3"><math alttext="0.58" class="ltx_Math" display="inline" id="S5.T6.9.9.9.3.m1.1"><semantics id="S5.T6.9.9.9.3.m1.1a"><mn id="S5.T6.9.9.9.3.m1.1.1" mathsize="90%" xref="S5.T6.9.9.9.3.m1.1.1.cmml">0.58</mn><annotation-xml encoding="MathML-Content" id="S5.T6.9.9.9.3.m1.1b"><cn id="S5.T6.9.9.9.3.m1.1.1.cmml" type="float" xref="S5.T6.9.9.9.3.m1.1.1">0.58</cn></annotation-xml><annotation encoding="application/x-tex" id="S5.T6.9.9.9.3.m1.1c">0.58</annotation><annotation encoding="application/x-llamapun" id="S5.T6.9.9.9.3.m1.1d">0.58</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S5.T6.12.12.12">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S5.T6.12.12.12.4"><span class="ltx_text" id="S5.T6.12.12.12.4.1" style="font-size:90%;">Copenhagen</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S5.T6.12.12.12.5"><span class="ltx_text" id="S5.T6.12.12.12.5.1" style="font-size:90%;">Denmark</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S5.T6.12.12.12.6"><span class="ltx_text" id="S5.T6.12.12.12.6.1" style="font-size:90%;color:#008080;">Denmark</span></th>
<td class="ltx_td ltx_align_center" id="S5.T6.10.10.10.1"><math alttext="0.47" class="ltx_Math" display="inline" id="S5.T6.10.10.10.1.m1.1"><semantics id="S5.T6.10.10.10.1.m1.1a"><mn id="S5.T6.10.10.10.1.m1.1.1" mathsize="90%" xref="S5.T6.10.10.10.1.m1.1.1.cmml">0.47</mn><annotation-xml encoding="MathML-Content" id="S5.T6.10.10.10.1.m1.1b"><cn id="S5.T6.10.10.10.1.m1.1.1.cmml" type="float" xref="S5.T6.10.10.10.1.m1.1.1">0.47</cn></annotation-xml><annotation encoding="application/x-tex" id="S5.T6.10.10.10.1.m1.1c">0.47</annotation><annotation encoding="application/x-llamapun" id="S5.T6.10.10.10.1.m1.1d">0.47</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S5.T6.11.11.11.2"><math alttext="0.47" class="ltx_Math" display="inline" id="S5.T6.11.11.11.2.m1.1"><semantics id="S5.T6.11.11.11.2.m1.1a"><mn id="S5.T6.11.11.11.2.m1.1.1" mathsize="90%" xref="S5.T6.11.11.11.2.m1.1.1.cmml">0.47</mn><annotation-xml encoding="MathML-Content" id="S5.T6.11.11.11.2.m1.1b"><cn id="S5.T6.11.11.11.2.m1.1.1.cmml" type="float" xref="S5.T6.11.11.11.2.m1.1.1">0.47</cn></annotation-xml><annotation encoding="application/x-tex" id="S5.T6.11.11.11.2.m1.1c">0.47</annotation><annotation encoding="application/x-llamapun" id="S5.T6.11.11.11.2.m1.1d">0.47</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S5.T6.12.12.12.3"><math alttext="0.47" class="ltx_Math" display="inline" id="S5.T6.12.12.12.3.m1.1"><semantics id="S5.T6.12.12.12.3.m1.1a"><mn id="S5.T6.12.12.12.3.m1.1.1" mathsize="90%" xref="S5.T6.12.12.12.3.m1.1.1.cmml">0.47</mn><annotation-xml encoding="MathML-Content" id="S5.T6.12.12.12.3.m1.1b"><cn id="S5.T6.12.12.12.3.m1.1.1.cmml" type="float" xref="S5.T6.12.12.12.3.m1.1.1">0.47</cn></annotation-xml><annotation encoding="application/x-tex" id="S5.T6.12.12.12.3.m1.1c">0.47</annotation><annotation encoding="application/x-llamapun" id="S5.T6.12.12.12.3.m1.1d">0.47</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S5.T6.15.15.15">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S5.T6.15.15.15.4"><span class="ltx_text" id="S5.T6.15.15.15.4.1" style="font-size:90%;">Karnataka</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S5.T6.15.15.15.5"><span class="ltx_text" id="S5.T6.15.15.15.5.1" style="font-size:90%;">India</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S5.T6.15.15.15.6"><span class="ltx_text" id="S5.T6.15.15.15.6.1" style="font-size:90%;color:#008080;">India</span></th>
<td class="ltx_td ltx_align_center" id="S5.T6.13.13.13.1"><math alttext="0.34" class="ltx_Math" display="inline" id="S5.T6.13.13.13.1.m1.1"><semantics id="S5.T6.13.13.13.1.m1.1a"><mn id="S5.T6.13.13.13.1.m1.1.1" mathsize="90%" xref="S5.T6.13.13.13.1.m1.1.1.cmml">0.34</mn><annotation-xml encoding="MathML-Content" id="S5.T6.13.13.13.1.m1.1b"><cn id="S5.T6.13.13.13.1.m1.1.1.cmml" type="float" xref="S5.T6.13.13.13.1.m1.1.1">0.34</cn></annotation-xml><annotation encoding="application/x-tex" id="S5.T6.13.13.13.1.m1.1c">0.34</annotation><annotation encoding="application/x-llamapun" id="S5.T6.13.13.13.1.m1.1d">0.34</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S5.T6.14.14.14.2"><math alttext="0.34" class="ltx_Math" display="inline" id="S5.T6.14.14.14.2.m1.1"><semantics id="S5.T6.14.14.14.2.m1.1a"><mn id="S5.T6.14.14.14.2.m1.1.1" mathsize="90%" xref="S5.T6.14.14.14.2.m1.1.1.cmml">0.34</mn><annotation-xml encoding="MathML-Content" id="S5.T6.14.14.14.2.m1.1b"><cn id="S5.T6.14.14.14.2.m1.1.1.cmml" type="float" xref="S5.T6.14.14.14.2.m1.1.1">0.34</cn></annotation-xml><annotation encoding="application/x-tex" id="S5.T6.14.14.14.2.m1.1c">0.34</annotation><annotation encoding="application/x-llamapun" id="S5.T6.14.14.14.2.m1.1d">0.34</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S5.T6.15.15.15.3"><math alttext="0.56" class="ltx_Math" display="inline" id="S5.T6.15.15.15.3.m1.1"><semantics id="S5.T6.15.15.15.3.m1.1a"><mn id="S5.T6.15.15.15.3.m1.1.1" mathsize="90%" xref="S5.T6.15.15.15.3.m1.1.1.cmml">0.56</mn><annotation-xml encoding="MathML-Content" id="S5.T6.15.15.15.3.m1.1b"><cn id="S5.T6.15.15.15.3.m1.1.1.cmml" type="float" xref="S5.T6.15.15.15.3.m1.1.1">0.56</cn></annotation-xml><annotation encoding="application/x-tex" id="S5.T6.15.15.15.3.m1.1c">0.56</annotation><annotation encoding="application/x-llamapun" id="S5.T6.15.15.15.3.m1.1d">0.56</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S5.T6.18.18.18">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S5.T6.18.18.18.4"><span class="ltx_text" id="S5.T6.18.18.18.4.1" style="font-size:90%;">Indianapolis</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S5.T6.18.18.18.5"><span class="ltx_text" id="S5.T6.18.18.18.5.1" style="font-size:90%;">USA</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S5.T6.18.18.18.6"><span class="ltx_text" id="S5.T6.18.18.18.6.1" style="font-size:90%;color:#FF0000;">India</span></th>
<td class="ltx_td ltx_align_center" id="S5.T6.16.16.16.1"><math alttext="-0.05" class="ltx_Math" display="inline" id="S5.T6.16.16.16.1.m1.1"><semantics id="S5.T6.16.16.16.1.m1.1a"><mrow id="S5.T6.16.16.16.1.m1.1.1" xref="S5.T6.16.16.16.1.m1.1.1.cmml"><mo id="S5.T6.16.16.16.1.m1.1.1a" mathsize="90%" xref="S5.T6.16.16.16.1.m1.1.1.cmml">−</mo><mn id="S5.T6.16.16.16.1.m1.1.1.2" mathsize="90%" xref="S5.T6.16.16.16.1.m1.1.1.2.cmml">0.05</mn></mrow><annotation-xml encoding="MathML-Content" id="S5.T6.16.16.16.1.m1.1b"><apply id="S5.T6.16.16.16.1.m1.1.1.cmml" xref="S5.T6.16.16.16.1.m1.1.1"><minus id="S5.T6.16.16.16.1.m1.1.1.1.cmml" xref="S5.T6.16.16.16.1.m1.1.1"></minus><cn id="S5.T6.16.16.16.1.m1.1.1.2.cmml" type="float" xref="S5.T6.16.16.16.1.m1.1.1.2">0.05</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T6.16.16.16.1.m1.1c">-0.05</annotation><annotation encoding="application/x-llamapun" id="S5.T6.16.16.16.1.m1.1d">- 0.05</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S5.T6.17.17.17.2"><math alttext="0.15" class="ltx_Math" display="inline" id="S5.T6.17.17.17.2.m1.1"><semantics id="S5.T6.17.17.17.2.m1.1a"><mn id="S5.T6.17.17.17.2.m1.1.1" mathsize="90%" xref="S5.T6.17.17.17.2.m1.1.1.cmml">0.15</mn><annotation-xml encoding="MathML-Content" id="S5.T6.17.17.17.2.m1.1b"><cn id="S5.T6.17.17.17.2.m1.1.1.cmml" type="float" xref="S5.T6.17.17.17.2.m1.1.1">0.15</cn></annotation-xml><annotation encoding="application/x-tex" id="S5.T6.17.17.17.2.m1.1c">0.15</annotation><annotation encoding="application/x-llamapun" id="S5.T6.17.17.17.2.m1.1d">0.15</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S5.T6.18.18.18.3"><math alttext="0.17" class="ltx_Math" display="inline" id="S5.T6.18.18.18.3.m1.1"><semantics id="S5.T6.18.18.18.3.m1.1a"><mn id="S5.T6.18.18.18.3.m1.1.1" mathsize="90%" xref="S5.T6.18.18.18.3.m1.1.1.cmml">0.17</mn><annotation-xml encoding="MathML-Content" id="S5.T6.18.18.18.3.m1.1b"><cn id="S5.T6.18.18.18.3.m1.1.1.cmml" type="float" xref="S5.T6.18.18.18.3.m1.1.1">0.17</cn></annotation-xml><annotation encoding="application/x-tex" id="S5.T6.18.18.18.3.m1.1c">0.17</annotation><annotation encoding="application/x-llamapun" id="S5.T6.18.18.18.3.m1.1d">0.17</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S5.T6.21.21.21">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S5.T6.21.21.21.4"><span class="ltx_text" id="S5.T6.21.21.21.4.1" style="font-size:90%;">Dresden</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S5.T6.21.21.21.5"><span class="ltx_text" id="S5.T6.21.21.21.5.1" style="font-size:90%;">Germany</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S5.T6.21.21.21.6"><span class="ltx_text" id="S5.T6.21.21.21.6.1" style="font-size:90%;color:#FF0000;">Israel</span></th>
<td class="ltx_td ltx_align_center" id="S5.T6.19.19.19.1"><math alttext="0.04" class="ltx_Math" display="inline" id="S5.T6.19.19.19.1.m1.1"><semantics id="S5.T6.19.19.19.1.m1.1a"><mn id="S5.T6.19.19.19.1.m1.1.1" mathsize="90%" xref="S5.T6.19.19.19.1.m1.1.1.cmml">0.04</mn><annotation-xml encoding="MathML-Content" id="S5.T6.19.19.19.1.m1.1b"><cn id="S5.T6.19.19.19.1.m1.1.1.cmml" type="float" xref="S5.T6.19.19.19.1.m1.1.1">0.04</cn></annotation-xml><annotation encoding="application/x-tex" id="S5.T6.19.19.19.1.m1.1c">0.04</annotation><annotation encoding="application/x-llamapun" id="S5.T6.19.19.19.1.m1.1d">0.04</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S5.T6.20.20.20.2"><math alttext="0.13" class="ltx_Math" display="inline" id="S5.T6.20.20.20.2.m1.1"><semantics id="S5.T6.20.20.20.2.m1.1a"><mn id="S5.T6.20.20.20.2.m1.1.1" mathsize="90%" xref="S5.T6.20.20.20.2.m1.1.1.cmml">0.13</mn><annotation-xml encoding="MathML-Content" id="S5.T6.20.20.20.2.m1.1b"><cn id="S5.T6.20.20.20.2.m1.1.1.cmml" type="float" xref="S5.T6.20.20.20.2.m1.1.1">0.13</cn></annotation-xml><annotation encoding="application/x-tex" id="S5.T6.20.20.20.2.m1.1c">0.13</annotation><annotation encoding="application/x-llamapun" id="S5.T6.20.20.20.2.m1.1d">0.13</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S5.T6.21.21.21.3"><math alttext="0.15" class="ltx_Math" display="inline" id="S5.T6.21.21.21.3.m1.1"><semantics id="S5.T6.21.21.21.3.m1.1a"><mn id="S5.T6.21.21.21.3.m1.1.1" mathsize="90%" xref="S5.T6.21.21.21.3.m1.1.1.cmml">0.15</mn><annotation-xml encoding="MathML-Content" id="S5.T6.21.21.21.3.m1.1b"><cn id="S5.T6.21.21.21.3.m1.1.1.cmml" type="float" xref="S5.T6.21.21.21.3.m1.1.1">0.15</cn></annotation-xml><annotation encoding="application/x-tex" id="S5.T6.21.21.21.3.m1.1c">0.15</annotation><annotation encoding="application/x-llamapun" id="S5.T6.21.21.21.3.m1.1d">0.15</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S5.T6.24.24.24">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S5.T6.24.24.24.4"><span class="ltx_text" id="S5.T6.24.24.24.4.1" style="font-size:90%;">Canberra</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S5.T6.24.24.24.5"><span class="ltx_text" id="S5.T6.24.24.24.5.1" style="font-size:90%;">Australia</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S5.T6.24.24.24.6"><span class="ltx_text" id="S5.T6.24.24.24.6.1" style="font-size:90%;color:#FF0000;">Canada</span></th>
<td class="ltx_td ltx_align_center" id="S5.T6.22.22.22.1"><math alttext="0.04" class="ltx_Math" display="inline" id="S5.T6.22.22.22.1.m1.1"><semantics id="S5.T6.22.22.22.1.m1.1a"><mn id="S5.T6.22.22.22.1.m1.1.1" mathsize="90%" xref="S5.T6.22.22.22.1.m1.1.1.cmml">0.04</mn><annotation-xml encoding="MathML-Content" id="S5.T6.22.22.22.1.m1.1b"><cn id="S5.T6.22.22.22.1.m1.1.1.cmml" type="float" xref="S5.T6.22.22.22.1.m1.1.1">0.04</cn></annotation-xml><annotation encoding="application/x-tex" id="S5.T6.22.22.22.1.m1.1c">0.04</annotation><annotation encoding="application/x-llamapun" id="S5.T6.22.22.22.1.m1.1d">0.04</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S5.T6.23.23.23.2"><math alttext="0.10" class="ltx_Math" display="inline" id="S5.T6.23.23.23.2.m1.1"><semantics id="S5.T6.23.23.23.2.m1.1a"><mn id="S5.T6.23.23.23.2.m1.1.1" mathsize="90%" xref="S5.T6.23.23.23.2.m1.1.1.cmml">0.10</mn><annotation-xml encoding="MathML-Content" id="S5.T6.23.23.23.2.m1.1b"><cn id="S5.T6.23.23.23.2.m1.1.1.cmml" type="float" xref="S5.T6.23.23.23.2.m1.1.1">0.10</cn></annotation-xml><annotation encoding="application/x-tex" id="S5.T6.23.23.23.2.m1.1c">0.10</annotation><annotation encoding="application/x-llamapun" id="S5.T6.23.23.23.2.m1.1d">0.10</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S5.T6.24.24.24.3"><math alttext="0.10" class="ltx_Math" display="inline" id="S5.T6.24.24.24.3.m1.1"><semantics id="S5.T6.24.24.24.3.m1.1a"><mn id="S5.T6.24.24.24.3.m1.1.1" mathsize="90%" xref="S5.T6.24.24.24.3.m1.1.1.cmml">0.10</mn><annotation-xml encoding="MathML-Content" id="S5.T6.24.24.24.3.m1.1b"><cn id="S5.T6.24.24.24.3.m1.1.1.cmml" type="float" xref="S5.T6.24.24.24.3.m1.1.1">0.10</cn></annotation-xml><annotation encoding="application/x-tex" id="S5.T6.24.24.24.3.m1.1c">0.10</annotation><annotation encoding="application/x-llamapun" id="S5.T6.24.24.24.3.m1.1d">0.10</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S5.T6.27.27.27">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_bb" id="S5.T6.27.27.27.4"><span class="ltx_text" id="S5.T6.27.27.27.4.1" style="font-size:90%;">Helsinki</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_bb" id="S5.T6.27.27.27.5"><span class="ltx_text" id="S5.T6.27.27.27.5.1" style="font-size:90%;">Finland</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_bb" id="S5.T6.27.27.27.6"><span class="ltx_text" id="S5.T6.27.27.27.6.1" style="font-size:90%;color:#FF0000;">Sweden</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T6.25.25.25.1"><math alttext="0.42" class="ltx_Math" display="inline" id="S5.T6.25.25.25.1.m1.1"><semantics id="S5.T6.25.25.25.1.m1.1a"><mn id="S5.T6.25.25.25.1.m1.1.1" mathsize="90%" xref="S5.T6.25.25.25.1.m1.1.1.cmml">0.42</mn><annotation-xml encoding="MathML-Content" id="S5.T6.25.25.25.1.m1.1b"><cn id="S5.T6.25.25.25.1.m1.1.1.cmml" type="float" xref="S5.T6.25.25.25.1.m1.1.1">0.42</cn></annotation-xml><annotation encoding="application/x-tex" id="S5.T6.25.25.25.1.m1.1c">0.42</annotation><annotation encoding="application/x-llamapun" id="S5.T6.25.25.25.1.m1.1d">0.42</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T6.26.26.26.2"><math alttext="0.11" class="ltx_Math" display="inline" id="S5.T6.26.26.26.2.m1.1"><semantics id="S5.T6.26.26.26.2.m1.1a"><mn id="S5.T6.26.26.26.2.m1.1.1" mathsize="90%" xref="S5.T6.26.26.26.2.m1.1.1.cmml">0.11</mn><annotation-xml encoding="MathML-Content" id="S5.T6.26.26.26.2.m1.1b"><cn id="S5.T6.26.26.26.2.m1.1.1.cmml" type="float" xref="S5.T6.26.26.26.2.m1.1.1">0.11</cn></annotation-xml><annotation encoding="application/x-tex" id="S5.T6.26.26.26.2.m1.1c">0.11</annotation><annotation encoding="application/x-llamapun" id="S5.T6.26.26.26.2.m1.1d">0.11</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T6.27.27.27.3"><math alttext="0.42" class="ltx_Math" display="inline" id="S5.T6.27.27.27.3.m1.1"><semantics id="S5.T6.27.27.27.3.m1.1a"><mn id="S5.T6.27.27.27.3.m1.1.1" mathsize="90%" xref="S5.T6.27.27.27.3.m1.1.1.cmml">0.42</mn><annotation-xml encoding="MathML-Content" id="S5.T6.27.27.27.3.m1.1b"><cn id="S5.T6.27.27.27.3.m1.1.1.cmml" type="float" xref="S5.T6.27.27.27.3.m1.1.1">0.42</cn></annotation-xml><annotation encoding="application/x-tex" id="S5.T6.27.27.27.3.m1.1c">0.42</annotation><annotation encoding="application/x-llamapun" id="S5.T6.27.27.27.3.m1.1d">0.42</annotation></semantics></math></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a case study demonstrating the effects of the linear transformation (W, b) on compositional generalization and hallucination in the City→Country knowledge domain.  It shows example pairs of cities and their corresponding countries where the model correctly generalizes (high W weight and correct association) and where it hallucinates (low or incorrect W weight, resulting in incorrect country assignments). The table illustrates the interplay between the strength of linear correlation, precision of W, and the accuracy of the model's compositional generalization.
> <details>
> <summary>read the caption</summary>
> Table 6: Generalization and hallucination in City→→\rightarrow→Country.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S6.T7.16.16">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S6.T7.16.16.17.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="S6.T7.16.16.17.1.1"><span class="ltx_text" id="S6.T7.16.16.17.1.1.1" style="font-size:90%;">Mapping</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S6.T7.16.16.17.1.2"><span class="ltx_text" id="S6.T7.16.16.17.1.2.1" style="font-size:90%;">Generalization</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S6.T7.1.1.1">
<td class="ltx_td ltx_align_left ltx_border_t" id="S6.T7.1.1.1.1"><span class="ltx_text ltx_font_italic" id="S6.T7.1.1.1.1.1" style="font-size:90%;">(City<math alttext="\rightarrow" class="ltx_Math" display="inline" id="S6.T7.1.1.1.1.1.m1.1"><semantics id="S6.T7.1.1.1.1.1.m1.1a"><mo id="S6.T7.1.1.1.1.1.m1.1.1" stretchy="false" xref="S6.T7.1.1.1.1.1.m1.1.1.cmml">→</mo><annotation-xml encoding="MathML-Content" id="S6.T7.1.1.1.1.1.m1.1b"><ci id="S6.T7.1.1.1.1.1.m1.1.1.cmml" xref="S6.T7.1.1.1.1.1.m1.1.1">→</ci></annotation-xml><annotation encoding="application/x-tex" id="S6.T7.1.1.1.1.1.m1.1c">\rightarrow</annotation><annotation encoding="application/x-llamapun" id="S6.T7.1.1.1.1.1.m1.1d">→</annotation></semantics></math>Country)</span></td>
<td class="ltx_td ltx_border_t" id="S6.T7.1.1.1.2"></td>
</tr>
<tr class="ltx_tr" id="S6.T7.3.3.3">
<td class="ltx_td ltx_align_left" id="S6.T7.2.2.2.1">
<span class="ltx_text" id="S6.T7.2.2.2.1.1" style="font-size:90%;">Shanghai, Tokyo, Paris</span><math alttext="\rightarrow" class="ltx_Math" display="inline" id="S6.T7.2.2.2.1.m1.1"><semantics id="S6.T7.2.2.2.1.m1.1a"><mo id="S6.T7.2.2.2.1.m1.1.1" mathsize="90%" stretchy="false" xref="S6.T7.2.2.2.1.m1.1.1.cmml">→</mo><annotation-xml encoding="MathML-Content" id="S6.T7.2.2.2.1.m1.1b"><ci id="S6.T7.2.2.2.1.m1.1.1.cmml" xref="S6.T7.2.2.2.1.m1.1.1">→</ci></annotation-xml><annotation encoding="application/x-tex" id="S6.T7.2.2.2.1.m1.1c">\rightarrow</annotation><annotation encoding="application/x-llamapun" id="S6.T7.2.2.2.1.m1.1d">→</annotation></semantics></math><span class="ltx_text" id="S6.T7.2.2.2.1.2" style="font-size:90%;">China, Japan, France</span>
</td>
<td class="ltx_td ltx_align_center" id="S6.T7.3.3.3.2"><math alttext="97.66\%" class="ltx_Math" display="inline" id="S6.T7.3.3.3.2.m1.1"><semantics id="S6.T7.3.3.3.2.m1.1a"><mrow id="S6.T7.3.3.3.2.m1.1.1" xref="S6.T7.3.3.3.2.m1.1.1.cmml"><mn id="S6.T7.3.3.3.2.m1.1.1.2" mathsize="90%" xref="S6.T7.3.3.3.2.m1.1.1.2.cmml">97.66</mn><mo id="S6.T7.3.3.3.2.m1.1.1.1" mathsize="90%" xref="S6.T7.3.3.3.2.m1.1.1.1.cmml">%</mo></mrow><annotation-xml encoding="MathML-Content" id="S6.T7.3.3.3.2.m1.1b"><apply id="S6.T7.3.3.3.2.m1.1.1.cmml" xref="S6.T7.3.3.3.2.m1.1.1"><csymbol cd="latexml" id="S6.T7.3.3.3.2.m1.1.1.1.cmml" xref="S6.T7.3.3.3.2.m1.1.1.1">percent</csymbol><cn id="S6.T7.3.3.3.2.m1.1.1.2.cmml" type="float" xref="S6.T7.3.3.3.2.m1.1.1.2">97.66</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S6.T7.3.3.3.2.m1.1c">97.66\%</annotation><annotation encoding="application/x-llamapun" id="S6.T7.3.3.3.2.m1.1d">97.66 %</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S6.T7.5.5.5">
<td class="ltx_td ltx_align_left" id="S6.T7.4.4.4.1">
<span class="ltx_text" id="S6.T7.4.4.4.1.1" style="font-size:90%;">Shanghai, Tokyo, Paris</span><math alttext="\rightarrow" class="ltx_Math" display="inline" id="S6.T7.4.4.4.1.m1.1"><semantics id="S6.T7.4.4.4.1.m1.1a"><mo id="S6.T7.4.4.4.1.m1.1.1" mathsize="90%" stretchy="false" xref="S6.T7.4.4.4.1.m1.1.1.cmml">→</mo><annotation-xml encoding="MathML-Content" id="S6.T7.4.4.4.1.m1.1b"><ci id="S6.T7.4.4.4.1.m1.1.1.cmml" xref="S6.T7.4.4.4.1.m1.1.1">→</ci></annotation-xml><annotation encoding="application/x-tex" id="S6.T7.4.4.4.1.m1.1c">\rightarrow</annotation><annotation encoding="application/x-llamapun" id="S6.T7.4.4.4.1.m1.1d">→</annotation></semantics></math><span class="ltx_text" id="S6.T7.4.4.4.1.2" style="font-size:90%;">Japan, France, China</span>
</td>
<td class="ltx_td ltx_align_center" id="S6.T7.5.5.5.2"><math alttext="22.66\%" class="ltx_Math" display="inline" id="S6.T7.5.5.5.2.m1.1"><semantics id="S6.T7.5.5.5.2.m1.1a"><mrow id="S6.T7.5.5.5.2.m1.1.1" xref="S6.T7.5.5.5.2.m1.1.1.cmml"><mn id="S6.T7.5.5.5.2.m1.1.1.2" mathsize="90%" xref="S6.T7.5.5.5.2.m1.1.1.2.cmml">22.66</mn><mo id="S6.T7.5.5.5.2.m1.1.1.1" mathsize="90%" xref="S6.T7.5.5.5.2.m1.1.1.1.cmml">%</mo></mrow><annotation-xml encoding="MathML-Content" id="S6.T7.5.5.5.2.m1.1b"><apply id="S6.T7.5.5.5.2.m1.1.1.cmml" xref="S6.T7.5.5.5.2.m1.1.1"><csymbol cd="latexml" id="S6.T7.5.5.5.2.m1.1.1.1.cmml" xref="S6.T7.5.5.5.2.m1.1.1.1">percent</csymbol><cn id="S6.T7.5.5.5.2.m1.1.1.2.cmml" type="float" xref="S6.T7.5.5.5.2.m1.1.1.2">22.66</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S6.T7.5.5.5.2.m1.1c">22.66\%</annotation><annotation encoding="application/x-llamapun" id="S6.T7.5.5.5.2.m1.1d">22.66 %</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S6.T7.7.7.7">
<td class="ltx_td ltx_align_left" id="S6.T7.6.6.6.1">
<span class="ltx_text" id="S6.T7.6.6.6.1.1" style="font-size:90%;">S, T, P</span><math alttext="\rightarrow" class="ltx_Math" display="inline" id="S6.T7.6.6.6.1.m1.1"><semantics id="S6.T7.6.6.6.1.m1.1a"><mo id="S6.T7.6.6.6.1.m1.1.1" mathsize="90%" stretchy="false" xref="S6.T7.6.6.6.1.m1.1.1.cmml">→</mo><annotation-xml encoding="MathML-Content" id="S6.T7.6.6.6.1.m1.1b"><ci id="S6.T7.6.6.6.1.m1.1.1.cmml" xref="S6.T7.6.6.6.1.m1.1.1">→</ci></annotation-xml><annotation encoding="application/x-tex" id="S6.T7.6.6.6.1.m1.1c">\rightarrow</annotation><annotation encoding="application/x-llamapun" id="S6.T7.6.6.6.1.m1.1d">→</annotation></semantics></math><span class="ltx_text" id="S6.T7.6.6.6.1.2" style="font-size:90%;">C, J, F</span>
</td>
<td class="ltx_td ltx_align_center" id="S6.T7.7.7.7.2"><math alttext="36.72\%" class="ltx_Math" display="inline" id="S6.T7.7.7.7.2.m1.1"><semantics id="S6.T7.7.7.7.2.m1.1a"><mrow id="S6.T7.7.7.7.2.m1.1.1" xref="S6.T7.7.7.7.2.m1.1.1.cmml"><mn id="S6.T7.7.7.7.2.m1.1.1.2" mathsize="90%" xref="S6.T7.7.7.7.2.m1.1.1.2.cmml">36.72</mn><mo id="S6.T7.7.7.7.2.m1.1.1.1" mathsize="90%" xref="S6.T7.7.7.7.2.m1.1.1.1.cmml">%</mo></mrow><annotation-xml encoding="MathML-Content" id="S6.T7.7.7.7.2.m1.1b"><apply id="S6.T7.7.7.7.2.m1.1.1.cmml" xref="S6.T7.7.7.7.2.m1.1.1"><csymbol cd="latexml" id="S6.T7.7.7.7.2.m1.1.1.1.cmml" xref="S6.T7.7.7.7.2.m1.1.1.1">percent</csymbol><cn id="S6.T7.7.7.7.2.m1.1.1.2.cmml" type="float" xref="S6.T7.7.7.7.2.m1.1.1.2">36.72</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S6.T7.7.7.7.2.m1.1c">36.72\%</annotation><annotation encoding="application/x-llamapun" id="S6.T7.7.7.7.2.m1.1d">36.72 %</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S6.T7.8.8.8">
<td class="ltx_td ltx_align_left ltx_border_t" id="S6.T7.8.8.8.1"><span class="ltx_text ltx_font_italic" id="S6.T7.8.8.8.1.1" style="font-size:90%;">(Country<math alttext="\rightarrow" class="ltx_Math" display="inline" id="S6.T7.8.8.8.1.1.m1.1"><semantics id="S6.T7.8.8.8.1.1.m1.1a"><mo id="S6.T7.8.8.8.1.1.m1.1.1" stretchy="false" xref="S6.T7.8.8.8.1.1.m1.1.1.cmml">→</mo><annotation-xml encoding="MathML-Content" id="S6.T7.8.8.8.1.1.m1.1b"><ci id="S6.T7.8.8.8.1.1.m1.1.1.cmml" xref="S6.T7.8.8.8.1.1.m1.1.1">→</ci></annotation-xml><annotation encoding="application/x-tex" id="S6.T7.8.8.8.1.1.m1.1c">\rightarrow</annotation><annotation encoding="application/x-llamapun" id="S6.T7.8.8.8.1.1.m1.1d">→</annotation></semantics></math>Continent)</span></td>
<td class="ltx_td ltx_border_t" id="S6.T7.8.8.8.2"></td>
</tr>
<tr class="ltx_tr" id="S6.T7.10.10.10">
<td class="ltx_td ltx_align_left" id="S6.T7.9.9.9.1">
<span class="ltx_text" id="S6.T7.9.9.9.1.1" style="font-size:90%;">China, France, Canada</span><math alttext="\rightarrow" class="ltx_Math" display="inline" id="S6.T7.9.9.9.1.m1.1"><semantics id="S6.T7.9.9.9.1.m1.1a"><mo id="S6.T7.9.9.9.1.m1.1.1" mathsize="90%" stretchy="false" xref="S6.T7.9.9.9.1.m1.1.1.cmml">→</mo><annotation-xml encoding="MathML-Content" id="S6.T7.9.9.9.1.m1.1b"><ci id="S6.T7.9.9.9.1.m1.1.1.cmml" xref="S6.T7.9.9.9.1.m1.1.1">→</ci></annotation-xml><annotation encoding="application/x-tex" id="S6.T7.9.9.9.1.m1.1c">\rightarrow</annotation><annotation encoding="application/x-llamapun" id="S6.T7.9.9.9.1.m1.1d">→</annotation></semantics></math><span class="ltx_text" id="S6.T7.9.9.9.1.2" style="font-size:90%;">Asia, Europe, North</span>
</td>
<td class="ltx_td ltx_align_center" id="S6.T7.10.10.10.2"><math alttext="78.12\%" class="ltx_Math" display="inline" id="S6.T7.10.10.10.2.m1.1"><semantics id="S6.T7.10.10.10.2.m1.1a"><mrow id="S6.T7.10.10.10.2.m1.1.1" xref="S6.T7.10.10.10.2.m1.1.1.cmml"><mn id="S6.T7.10.10.10.2.m1.1.1.2" mathsize="90%" xref="S6.T7.10.10.10.2.m1.1.1.2.cmml">78.12</mn><mo id="S6.T7.10.10.10.2.m1.1.1.1" mathsize="90%" xref="S6.T7.10.10.10.2.m1.1.1.1.cmml">%</mo></mrow><annotation-xml encoding="MathML-Content" id="S6.T7.10.10.10.2.m1.1b"><apply id="S6.T7.10.10.10.2.m1.1.1.cmml" xref="S6.T7.10.10.10.2.m1.1.1"><csymbol cd="latexml" id="S6.T7.10.10.10.2.m1.1.1.1.cmml" xref="S6.T7.10.10.10.2.m1.1.1.1">percent</csymbol><cn id="S6.T7.10.10.10.2.m1.1.1.2.cmml" type="float" xref="S6.T7.10.10.10.2.m1.1.1.2">78.12</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S6.T7.10.10.10.2.m1.1c">78.12\%</annotation><annotation encoding="application/x-llamapun" id="S6.T7.10.10.10.2.m1.1d">78.12 %</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S6.T7.11.11.11">
<td class="ltx_td ltx_align_left ltx_border_t" id="S6.T7.11.11.11.1"><span class="ltx_text ltx_font_italic" id="S6.T7.11.11.11.1.1" style="font-size:90%;">(CEO<math alttext="\rightarrow" class="ltx_Math" display="inline" id="S6.T7.11.11.11.1.1.m1.1"><semantics id="S6.T7.11.11.11.1.1.m1.1a"><mo id="S6.T7.11.11.11.1.1.m1.1.1" stretchy="false" xref="S6.T7.11.11.11.1.1.m1.1.1.cmml">→</mo><annotation-xml encoding="MathML-Content" id="S6.T7.11.11.11.1.1.m1.1b"><ci id="S6.T7.11.11.11.1.1.m1.1.1.cmml" xref="S6.T7.11.11.11.1.1.m1.1.1">→</ci></annotation-xml><annotation encoding="application/x-tex" id="S6.T7.11.11.11.1.1.m1.1c">\rightarrow</annotation><annotation encoding="application/x-llamapun" id="S6.T7.11.11.11.1.1.m1.1d">→</annotation></semantics></math>Company)</span></td>
<td class="ltx_td ltx_border_t" id="S6.T7.11.11.11.2"></td>
</tr>
<tr class="ltx_tr" id="S6.T7.13.13.13">
<td class="ltx_td ltx_align_left" id="S6.T7.12.12.12.1">
<span class="ltx_text" id="S6.T7.12.12.12.1.1" style="font-size:90%;">Elon, Andy, Tim</span><math alttext="\rightarrow" class="ltx_Math" display="inline" id="S6.T7.12.12.12.1.m1.1"><semantics id="S6.T7.12.12.12.1.m1.1a"><mo id="S6.T7.12.12.12.1.m1.1.1" mathsize="90%" stretchy="false" xref="S6.T7.12.12.12.1.m1.1.1.cmml">→</mo><annotation-xml encoding="MathML-Content" id="S6.T7.12.12.12.1.m1.1b"><ci id="S6.T7.12.12.12.1.m1.1.1.cmml" xref="S6.T7.12.12.12.1.m1.1.1">→</ci></annotation-xml><annotation encoding="application/x-tex" id="S6.T7.12.12.12.1.m1.1c">\rightarrow</annotation><annotation encoding="application/x-llamapun" id="S6.T7.12.12.12.1.m1.1d">→</annotation></semantics></math><span class="ltx_text" id="S6.T7.12.12.12.1.2" style="font-size:90%;">Tesla, Amazon, Apple</span>
</td>
<td class="ltx_td ltx_align_center" id="S6.T7.13.13.13.2"><math alttext="58.59\%" class="ltx_Math" display="inline" id="S6.T7.13.13.13.2.m1.1"><semantics id="S6.T7.13.13.13.2.m1.1a"><mrow id="S6.T7.13.13.13.2.m1.1.1" xref="S6.T7.13.13.13.2.m1.1.1.cmml"><mn id="S6.T7.13.13.13.2.m1.1.1.2" mathsize="90%" xref="S6.T7.13.13.13.2.m1.1.1.2.cmml">58.59</mn><mo id="S6.T7.13.13.13.2.m1.1.1.1" mathsize="90%" xref="S6.T7.13.13.13.2.m1.1.1.1.cmml">%</mo></mrow><annotation-xml encoding="MathML-Content" id="S6.T7.13.13.13.2.m1.1b"><apply id="S6.T7.13.13.13.2.m1.1.1.cmml" xref="S6.T7.13.13.13.2.m1.1.1"><csymbol cd="latexml" id="S6.T7.13.13.13.2.m1.1.1.1.cmml" xref="S6.T7.13.13.13.2.m1.1.1.1">percent</csymbol><cn id="S6.T7.13.13.13.2.m1.1.1.2.cmml" type="float" xref="S6.T7.13.13.13.2.m1.1.1.2">58.59</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S6.T7.13.13.13.2.m1.1c">58.59\%</annotation><annotation encoding="application/x-llamapun" id="S6.T7.13.13.13.2.m1.1d">58.59 %</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S6.T7.14.14.14">
<td class="ltx_td ltx_align_left ltx_border_t" id="S6.T7.14.14.14.1"><span class="ltx_text ltx_font_italic" id="S6.T7.14.14.14.1.1" style="font-size:90%;">(+1<math alttext="\rightarrow" class="ltx_Math" display="inline" id="S6.T7.14.14.14.1.1.m1.1"><semantics id="S6.T7.14.14.14.1.1.m1.1a"><mo id="S6.T7.14.14.14.1.1.m1.1.1" stretchy="false" xref="S6.T7.14.14.14.1.1.m1.1.1.cmml">→</mo><annotation-xml encoding="MathML-Content" id="S6.T7.14.14.14.1.1.m1.1b"><ci id="S6.T7.14.14.14.1.1.m1.1.1.cmml" xref="S6.T7.14.14.14.1.1.m1.1.1">→</ci></annotation-xml><annotation encoding="application/x-tex" id="S6.T7.14.14.14.1.1.m1.1c">\rightarrow</annotation><annotation encoding="application/x-llamapun" id="S6.T7.14.14.14.1.1.m1.1d">→</annotation></semantics></math>+2)</span></td>
<td class="ltx_td ltx_border_t" id="S6.T7.14.14.14.2"></td>
</tr>
<tr class="ltx_tr" id="S6.T7.16.16.16">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S6.T7.15.15.15.1">
<span class="ltx_text" id="S6.T7.15.15.15.1.1" style="font-size:90%;">1, 2, 3</span><math alttext="\rightarrow" class="ltx_Math" display="inline" id="S6.T7.15.15.15.1.m1.1"><semantics id="S6.T7.15.15.15.1.m1.1a"><mo id="S6.T7.15.15.15.1.m1.1.1" mathsize="90%" stretchy="false" xref="S6.T7.15.15.15.1.m1.1.1.cmml">→</mo><annotation-xml encoding="MathML-Content" id="S6.T7.15.15.15.1.m1.1b"><ci id="S6.T7.15.15.15.1.m1.1.1.cmml" xref="S6.T7.15.15.15.1.m1.1.1">→</ci></annotation-xml><annotation encoding="application/x-tex" id="S6.T7.15.15.15.1.m1.1c">\rightarrow</annotation><annotation encoding="application/x-llamapun" id="S6.T7.15.15.15.1.m1.1d">→</annotation></semantics></math><span class="ltx_text" id="S6.T7.15.15.15.1.2" style="font-size:90%;">3, 4, 5</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S6.T7.16.16.16.2"><math alttext="9.38\%" class="ltx_Math" display="inline" id="S6.T7.16.16.16.2.m1.1"><semantics id="S6.T7.16.16.16.2.m1.1a"><mrow id="S6.T7.16.16.16.2.m1.1.1" xref="S6.T7.16.16.16.2.m1.1.1.cmml"><mn id="S6.T7.16.16.16.2.m1.1.1.2" mathsize="90%" xref="S6.T7.16.16.16.2.m1.1.1.2.cmml">9.38</mn><mo id="S6.T7.16.16.16.2.m1.1.1.1" mathsize="90%" xref="S6.T7.16.16.16.2.m1.1.1.1.cmml">%</mo></mrow><annotation-xml encoding="MathML-Content" id="S6.T7.16.16.16.2.m1.1b"><apply id="S6.T7.16.16.16.2.m1.1.1.cmml" xref="S6.T7.16.16.16.2.m1.1.1"><csymbol cd="latexml" id="S6.T7.16.16.16.2.m1.1.1.1.cmml" xref="S6.T7.16.16.16.2.m1.1.1.1">percent</csymbol><cn id="S6.T7.16.16.16.2.m1.1.1.2.cmml" type="float" xref="S6.T7.16.16.16.2.m1.1.1.2">9.38</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S6.T7.16.16.16.2.m1.1c">9.38\%</annotation><annotation encoding="application/x-llamapun" id="S6.T7.16.16.16.2.m1.1d">9.38 %</annotation></semantics></math></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of an experiment evaluating the impact of vocabulary mappings on the model's ability to generalize. The experiment replaced the deep internal layers of a language model with a simplified feedforward network. The model was trained on paired knowledge examples (e.g., Paris-France) to learn knowledge composition.  The table shows the generalization performance of the simplified model under different vocabulary mappings, demonstrating how different mappings affect generalization.
> <details>
> <summary>read the caption</summary>
> Table 7: Generalization with Different Vocabulary Mappings.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="A1.T8.10.10">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A1.T8.10.10.11.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="A1.T8.10.10.11.1.1"><span class="ltx_text" id="A1.T8.10.10.11.1.1.1" style="font-size:90%;">Relation Pair</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A1.T8.10.10.11.1.2"><span class="ltx_text" id="A1.T8.10.10.11.1.2.1" style="font-size:90%;">Fruit-Color</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A1.T8.10.10.11.1.3"><span class="ltx_text" id="A1.T8.10.10.11.1.3.1" style="font-size:90%;">Food-Taste</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A1.T8.10.10.11.1.4"><span class="ltx_text" id="A1.T8.10.10.11.1.4.1" style="font-size:90%;">Gem-Color</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A1.T8.10.10.11.1.5"><span class="ltx_text" id="A1.T8.10.10.11.1.5.1" style="font-size:90%;">Name-Country</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A1.T8.10.10.11.1.6"><span class="ltx_text" id="A1.T8.10.10.11.1.6.1" style="font-size:90%;">Animal-Size</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A1.T8.5.5.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A1.T8.5.5.5.6"><span class="ltx_text" id="A1.T8.5.5.5.6.1" style="font-size:90%;">Correlation</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T8.1.1.1.1"><math alttext="48.42" class="ltx_Math" display="inline" id="A1.T8.1.1.1.1.m1.1"><semantics id="A1.T8.1.1.1.1.m1.1a"><mn id="A1.T8.1.1.1.1.m1.1.1" mathsize="90%" xref="A1.T8.1.1.1.1.m1.1.1.cmml">48.42</mn><annotation-xml encoding="MathML-Content" id="A1.T8.1.1.1.1.m1.1b"><cn id="A1.T8.1.1.1.1.m1.1.1.cmml" type="float" xref="A1.T8.1.1.1.1.m1.1.1">48.42</cn></annotation-xml><annotation encoding="application/x-tex" id="A1.T8.1.1.1.1.m1.1c">48.42</annotation><annotation encoding="application/x-llamapun" id="A1.T8.1.1.1.1.m1.1d">48.42</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T8.2.2.2.2"><math alttext="46.68" class="ltx_Math" display="inline" id="A1.T8.2.2.2.2.m1.1"><semantics id="A1.T8.2.2.2.2.m1.1a"><mn id="A1.T8.2.2.2.2.m1.1.1" mathsize="90%" xref="A1.T8.2.2.2.2.m1.1.1.cmml">46.68</mn><annotation-xml encoding="MathML-Content" id="A1.T8.2.2.2.2.m1.1b"><cn id="A1.T8.2.2.2.2.m1.1.1.cmml" type="float" xref="A1.T8.2.2.2.2.m1.1.1">46.68</cn></annotation-xml><annotation encoding="application/x-tex" id="A1.T8.2.2.2.2.m1.1c">46.68</annotation><annotation encoding="application/x-llamapun" id="A1.T8.2.2.2.2.m1.1d">46.68</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T8.3.3.3.3"><math alttext="27.46" class="ltx_Math" display="inline" id="A1.T8.3.3.3.3.m1.1"><semantics id="A1.T8.3.3.3.3.m1.1a"><mn id="A1.T8.3.3.3.3.m1.1.1" mathsize="90%" xref="A1.T8.3.3.3.3.m1.1.1.cmml">27.46</mn><annotation-xml encoding="MathML-Content" id="A1.T8.3.3.3.3.m1.1b"><cn id="A1.T8.3.3.3.3.m1.1.1.cmml" type="float" xref="A1.T8.3.3.3.3.m1.1.1">27.46</cn></annotation-xml><annotation encoding="application/x-tex" id="A1.T8.3.3.3.3.m1.1c">27.46</annotation><annotation encoding="application/x-llamapun" id="A1.T8.3.3.3.3.m1.1d">27.46</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T8.4.4.4.4"><math alttext="67.35" class="ltx_Math" display="inline" id="A1.T8.4.4.4.4.m1.1"><semantics id="A1.T8.4.4.4.4.m1.1a"><mn id="A1.T8.4.4.4.4.m1.1.1" mathsize="90%" xref="A1.T8.4.4.4.4.m1.1.1.cmml">67.35</mn><annotation-xml encoding="MathML-Content" id="A1.T8.4.4.4.4.m1.1b"><cn id="A1.T8.4.4.4.4.m1.1.1.cmml" type="float" xref="A1.T8.4.4.4.4.m1.1.1">67.35</cn></annotation-xml><annotation encoding="application/x-tex" id="A1.T8.4.4.4.4.m1.1c">67.35</annotation><annotation encoding="application/x-llamapun" id="A1.T8.4.4.4.4.m1.1d">67.35</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T8.5.5.5.5"><math alttext="59.59" class="ltx_Math" display="inline" id="A1.T8.5.5.5.5.m1.1"><semantics id="A1.T8.5.5.5.5.m1.1a"><mn id="A1.T8.5.5.5.5.m1.1.1" mathsize="90%" xref="A1.T8.5.5.5.5.m1.1.1.cmml">59.59</mn><annotation-xml encoding="MathML-Content" id="A1.T8.5.5.5.5.m1.1b"><cn id="A1.T8.5.5.5.5.m1.1.1.cmml" type="float" xref="A1.T8.5.5.5.5.m1.1.1">59.59</cn></annotation-xml><annotation encoding="application/x-tex" id="A1.T8.5.5.5.5.m1.1c">59.59</annotation><annotation encoding="application/x-llamapun" id="A1.T8.5.5.5.5.m1.1d">59.59</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="A1.T8.10.10.12.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="A1.T8.10.10.12.1.1"><span class="ltx_text" id="A1.T8.10.10.12.1.1.1" style="font-size:90%;">Relation Pair</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A1.T8.10.10.12.1.2"><span class="ltx_text" id="A1.T8.10.10.12.1.2.1" style="font-size:90%;">Object-Genre</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A1.T8.10.10.12.1.3"><span class="ltx_text" id="A1.T8.10.10.12.1.3.1" style="font-size:90%;">Object-Heat</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A1.T8.10.10.12.1.4"><span class="ltx_text" id="A1.T8.10.10.12.1.4.1" style="font-size:90%;">Object-Size</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A1.T8.10.10.12.1.5"><span class="ltx_text" id="A1.T8.10.10.12.1.5.1" style="font-size:90%;">Object-Price</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A1.T8.10.10.12.1.6"><span class="ltx_text" id="A1.T8.10.10.12.1.6.1" style="font-size:90%;">Object-Color</span></th>
</tr>
<tr class="ltx_tr" id="A1.T8.10.10.10">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_t" id="A1.T8.10.10.10.6"><span class="ltx_text" id="A1.T8.10.10.10.6.1" style="font-size:90%;">Correlation</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A1.T8.6.6.6.1"><math alttext="77.68" class="ltx_Math" display="inline" id="A1.T8.6.6.6.1.m1.1"><semantics id="A1.T8.6.6.6.1.m1.1a"><mn id="A1.T8.6.6.6.1.m1.1.1" mathsize="90%" xref="A1.T8.6.6.6.1.m1.1.1.cmml">77.68</mn><annotation-xml encoding="MathML-Content" id="A1.T8.6.6.6.1.m1.1b"><cn id="A1.T8.6.6.6.1.m1.1.1.cmml" type="float" xref="A1.T8.6.6.6.1.m1.1.1">77.68</cn></annotation-xml><annotation encoding="application/x-tex" id="A1.T8.6.6.6.1.m1.1c">77.68</annotation><annotation encoding="application/x-llamapun" id="A1.T8.6.6.6.1.m1.1d">77.68</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A1.T8.7.7.7.2"><math alttext="73.11" class="ltx_Math" display="inline" id="A1.T8.7.7.7.2.m1.1"><semantics id="A1.T8.7.7.7.2.m1.1a"><mn id="A1.T8.7.7.7.2.m1.1.1" mathsize="90%" xref="A1.T8.7.7.7.2.m1.1.1.cmml">73.11</mn><annotation-xml encoding="MathML-Content" id="A1.T8.7.7.7.2.m1.1b"><cn id="A1.T8.7.7.7.2.m1.1.1.cmml" type="float" xref="A1.T8.7.7.7.2.m1.1.1">73.11</cn></annotation-xml><annotation encoding="application/x-tex" id="A1.T8.7.7.7.2.m1.1c">73.11</annotation><annotation encoding="application/x-llamapun" id="A1.T8.7.7.7.2.m1.1d">73.11</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A1.T8.8.8.8.3"><math alttext="71.41" class="ltx_Math" display="inline" id="A1.T8.8.8.8.3.m1.1"><semantics id="A1.T8.8.8.8.3.m1.1a"><mn id="A1.T8.8.8.8.3.m1.1.1" mathsize="90%" xref="A1.T8.8.8.8.3.m1.1.1.cmml">71.41</mn><annotation-xml encoding="MathML-Content" id="A1.T8.8.8.8.3.m1.1b"><cn id="A1.T8.8.8.8.3.m1.1.1.cmml" type="float" xref="A1.T8.8.8.8.3.m1.1.1">71.41</cn></annotation-xml><annotation encoding="application/x-tex" id="A1.T8.8.8.8.3.m1.1c">71.41</annotation><annotation encoding="application/x-llamapun" id="A1.T8.8.8.8.3.m1.1d">71.41</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A1.T8.9.9.9.4"><math alttext="72.87" class="ltx_Math" display="inline" id="A1.T8.9.9.9.4.m1.1"><semantics id="A1.T8.9.9.9.4.m1.1a"><mn id="A1.T8.9.9.9.4.m1.1.1" mathsize="90%" xref="A1.T8.9.9.9.4.m1.1.1.cmml">72.87</mn><annotation-xml encoding="MathML-Content" id="A1.T8.9.9.9.4.m1.1b"><cn id="A1.T8.9.9.9.4.m1.1.1.cmml" type="float" xref="A1.T8.9.9.9.4.m1.1.1">72.87</cn></annotation-xml><annotation encoding="application/x-tex" id="A1.T8.9.9.9.4.m1.1c">72.87</annotation><annotation encoding="application/x-llamapun" id="A1.T8.9.9.9.4.m1.1d">72.87</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A1.T8.10.10.10.5"><math alttext="70.87" class="ltx_Math" display="inline" id="A1.T8.10.10.10.5.m1.1"><semantics id="A1.T8.10.10.10.5.m1.1a"><mn id="A1.T8.10.10.10.5.m1.1.1" mathsize="90%" xref="A1.T8.10.10.10.5.m1.1.1.cmml">70.87</mn><annotation-xml encoding="MathML-Content" id="A1.T8.10.10.10.5.m1.1b"><cn id="A1.T8.10.10.10.5.m1.1.1.cmml" type="float" xref="A1.T8.10.10.10.5.m1.1.1">70.87</cn></annotation-xml><annotation encoding="application/x-tex" id="A1.T8.10.10.10.5.m1.1c">70.87</annotation><annotation encoding="application/x-llamapun" id="A1.T8.10.10.10.5.m1.1d">70.87</annotation></semantics></math></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the correlation coefficients between gradients of related simile objects and attributes in a language model.  It shows how strongly the gradients of different but semantically related parts of the model are correlated during the training process. This is relevant to understanding how the model generalizes compositional knowledge and is particularly useful in evaluating the precision of the linear transformation (W,b) learned by the model.  A high correlation indicates that the model is efficiently transferring updates during training.
> <details>
> <summary>read the caption</summary>
> Table 8: Correlation between gradients on simile objects and attributes.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="A1.T9.10.10">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A1.T9.10.10.11.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="A1.T9.10.10.11.1.1"><span class="ltx_text" id="A1.T9.10.10.11.1.1.1" style="font-size:90%;">Relation Pair</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A1.T9.10.10.11.1.2"><span class="ltx_text" id="A1.T9.10.10.11.1.2.1" style="font-size:90%;">Fruit-Color</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A1.T9.10.10.11.1.3"><span class="ltx_text" id="A1.T9.10.10.11.1.3.1" style="font-size:90%;">Food-Taste</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A1.T9.10.10.11.1.4"><span class="ltx_text" id="A1.T9.10.10.11.1.4.1" style="font-size:90%;">Gem-Color</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A1.T9.10.10.11.1.5"><span class="ltx_text" id="A1.T9.10.10.11.1.5.1" style="font-size:90%;">Name-Country</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A1.T9.10.10.11.1.6"><span class="ltx_text" id="A1.T9.10.10.11.1.6.1" style="font-size:90%;">Animal-Size</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A1.T9.5.5.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A1.T9.5.5.5.6"><span class="ltx_text" id="A1.T9.5.5.5.6.1" style="font-size:90%;">Correlation</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T9.1.1.1.1"><math alttext="44.11" class="ltx_Math" display="inline" id="A1.T9.1.1.1.1.m1.1"><semantics id="A1.T9.1.1.1.1.m1.1a"><mn id="A1.T9.1.1.1.1.m1.1.1" mathsize="90%" xref="A1.T9.1.1.1.1.m1.1.1.cmml">44.11</mn><annotation-xml encoding="MathML-Content" id="A1.T9.1.1.1.1.m1.1b"><cn id="A1.T9.1.1.1.1.m1.1.1.cmml" type="float" xref="A1.T9.1.1.1.1.m1.1.1">44.11</cn></annotation-xml><annotation encoding="application/x-tex" id="A1.T9.1.1.1.1.m1.1c">44.11</annotation><annotation encoding="application/x-llamapun" id="A1.T9.1.1.1.1.m1.1d">44.11</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T9.2.2.2.2"><math alttext="37.06" class="ltx_Math" display="inline" id="A1.T9.2.2.2.2.m1.1"><semantics id="A1.T9.2.2.2.2.m1.1a"><mn id="A1.T9.2.2.2.2.m1.1.1" mathsize="90%" xref="A1.T9.2.2.2.2.m1.1.1.cmml">37.06</mn><annotation-xml encoding="MathML-Content" id="A1.T9.2.2.2.2.m1.1b"><cn id="A1.T9.2.2.2.2.m1.1.1.cmml" type="float" xref="A1.T9.2.2.2.2.m1.1.1">37.06</cn></annotation-xml><annotation encoding="application/x-tex" id="A1.T9.2.2.2.2.m1.1c">37.06</annotation><annotation encoding="application/x-llamapun" id="A1.T9.2.2.2.2.m1.1d">37.06</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T9.3.3.3.3"><math alttext="33.66" class="ltx_Math" display="inline" id="A1.T9.3.3.3.3.m1.1"><semantics id="A1.T9.3.3.3.3.m1.1a"><mn id="A1.T9.3.3.3.3.m1.1.1" mathsize="90%" xref="A1.T9.3.3.3.3.m1.1.1.cmml">33.66</mn><annotation-xml encoding="MathML-Content" id="A1.T9.3.3.3.3.m1.1b"><cn id="A1.T9.3.3.3.3.m1.1.1.cmml" type="float" xref="A1.T9.3.3.3.3.m1.1.1">33.66</cn></annotation-xml><annotation encoding="application/x-tex" id="A1.T9.3.3.3.3.m1.1c">33.66</annotation><annotation encoding="application/x-llamapun" id="A1.T9.3.3.3.3.m1.1d">33.66</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T9.4.4.4.4"><math alttext="67.30" class="ltx_Math" display="inline" id="A1.T9.4.4.4.4.m1.1"><semantics id="A1.T9.4.4.4.4.m1.1a"><mn id="A1.T9.4.4.4.4.m1.1.1" mathsize="90%" xref="A1.T9.4.4.4.4.m1.1.1.cmml">67.30</mn><annotation-xml encoding="MathML-Content" id="A1.T9.4.4.4.4.m1.1b"><cn id="A1.T9.4.4.4.4.m1.1.1.cmml" type="float" xref="A1.T9.4.4.4.4.m1.1.1">67.30</cn></annotation-xml><annotation encoding="application/x-tex" id="A1.T9.4.4.4.4.m1.1c">67.30</annotation><annotation encoding="application/x-llamapun" id="A1.T9.4.4.4.4.m1.1d">67.30</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T9.5.5.5.5"><math alttext="49.65" class="ltx_Math" display="inline" id="A1.T9.5.5.5.5.m1.1"><semantics id="A1.T9.5.5.5.5.m1.1a"><mn id="A1.T9.5.5.5.5.m1.1.1" mathsize="90%" xref="A1.T9.5.5.5.5.m1.1.1.cmml">49.65</mn><annotation-xml encoding="MathML-Content" id="A1.T9.5.5.5.5.m1.1b"><cn id="A1.T9.5.5.5.5.m1.1.1.cmml" type="float" xref="A1.T9.5.5.5.5.m1.1.1">49.65</cn></annotation-xml><annotation encoding="application/x-tex" id="A1.T9.5.5.5.5.m1.1c">49.65</annotation><annotation encoding="application/x-llamapun" id="A1.T9.5.5.5.5.m1.1d">49.65</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="A1.T9.10.10.12.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="A1.T9.10.10.12.1.1"><span class="ltx_text" id="A1.T9.10.10.12.1.1.1" style="font-size:90%;">Relation Pair</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A1.T9.10.10.12.1.2"><span class="ltx_text" id="A1.T9.10.10.12.1.2.1" style="font-size:90%;">Object-Genre</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A1.T9.10.10.12.1.3"><span class="ltx_text" id="A1.T9.10.10.12.1.3.1" style="font-size:90%;">Object-Heat</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A1.T9.10.10.12.1.4"><span class="ltx_text" id="A1.T9.10.10.12.1.4.1" style="font-size:90%;">Object-Size</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A1.T9.10.10.12.1.5"><span class="ltx_text" id="A1.T9.10.10.12.1.5.1" style="font-size:90%;">Object-Price</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A1.T9.10.10.12.1.6"><span class="ltx_text" id="A1.T9.10.10.12.1.6.1" style="font-size:90%;">Object-Color</span></th>
</tr>
<tr class="ltx_tr" id="A1.T9.10.10.10">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_t" id="A1.T9.10.10.10.6"><span class="ltx_text" id="A1.T9.10.10.10.6.1" style="font-size:90%;">Correlation</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A1.T9.6.6.6.1"><math alttext="72.03" class="ltx_Math" display="inline" id="A1.T9.6.6.6.1.m1.1"><semantics id="A1.T9.6.6.6.1.m1.1a"><mn id="A1.T9.6.6.6.1.m1.1.1" mathsize="90%" xref="A1.T9.6.6.6.1.m1.1.1.cmml">72.03</mn><annotation-xml encoding="MathML-Content" id="A1.T9.6.6.6.1.m1.1b"><cn id="A1.T9.6.6.6.1.m1.1.1.cmml" type="float" xref="A1.T9.6.6.6.1.m1.1.1">72.03</cn></annotation-xml><annotation encoding="application/x-tex" id="A1.T9.6.6.6.1.m1.1c">72.03</annotation><annotation encoding="application/x-llamapun" id="A1.T9.6.6.6.1.m1.1d">72.03</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A1.T9.7.7.7.2"><math alttext="63.75" class="ltx_Math" display="inline" id="A1.T9.7.7.7.2.m1.1"><semantics id="A1.T9.7.7.7.2.m1.1a"><mn id="A1.T9.7.7.7.2.m1.1.1" mathsize="90%" xref="A1.T9.7.7.7.2.m1.1.1.cmml">63.75</mn><annotation-xml encoding="MathML-Content" id="A1.T9.7.7.7.2.m1.1b"><cn id="A1.T9.7.7.7.2.m1.1.1.cmml" type="float" xref="A1.T9.7.7.7.2.m1.1.1">63.75</cn></annotation-xml><annotation encoding="application/x-tex" id="A1.T9.7.7.7.2.m1.1c">63.75</annotation><annotation encoding="application/x-llamapun" id="A1.T9.7.7.7.2.m1.1d">63.75</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A1.T9.8.8.8.3"><math alttext="66.13" class="ltx_Math" display="inline" id="A1.T9.8.8.8.3.m1.1"><semantics id="A1.T9.8.8.8.3.m1.1a"><mn id="A1.T9.8.8.8.3.m1.1.1" mathsize="90%" xref="A1.T9.8.8.8.3.m1.1.1.cmml">66.13</mn><annotation-xml encoding="MathML-Content" id="A1.T9.8.8.8.3.m1.1b"><cn id="A1.T9.8.8.8.3.m1.1.1.cmml" type="float" xref="A1.T9.8.8.8.3.m1.1.1">66.13</cn></annotation-xml><annotation encoding="application/x-tex" id="A1.T9.8.8.8.3.m1.1c">66.13</annotation><annotation encoding="application/x-llamapun" id="A1.T9.8.8.8.3.m1.1d">66.13</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A1.T9.9.9.9.4"><math alttext="71.09" class="ltx_Math" display="inline" id="A1.T9.9.9.9.4.m1.1"><semantics id="A1.T9.9.9.9.4.m1.1a"><mn id="A1.T9.9.9.9.4.m1.1.1" mathsize="90%" xref="A1.T9.9.9.9.4.m1.1.1.cmml">71.09</mn><annotation-xml encoding="MathML-Content" id="A1.T9.9.9.9.4.m1.1b"><cn id="A1.T9.9.9.9.4.m1.1.1.cmml" type="float" xref="A1.T9.9.9.9.4.m1.1.1">71.09</cn></annotation-xml><annotation encoding="application/x-tex" id="A1.T9.9.9.9.4.m1.1c">71.09</annotation><annotation encoding="application/x-llamapun" id="A1.T9.9.9.9.4.m1.1d">71.09</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A1.T9.10.10.10.5"><math alttext="66.27" class="ltx_Math" display="inline" id="A1.T9.10.10.10.5.m1.1"><semantics id="A1.T9.10.10.10.5.m1.1a"><mn id="A1.T9.10.10.10.5.m1.1.1" mathsize="90%" xref="A1.T9.10.10.10.5.m1.1.1.cmml">66.27</mn><annotation-xml encoding="MathML-Content" id="A1.T9.10.10.10.5.m1.1b"><cn id="A1.T9.10.10.10.5.m1.1.1.cmml" type="float" xref="A1.T9.10.10.10.5.m1.1.1">66.27</cn></annotation-xml><annotation encoding="application/x-tex" id="A1.T9.10.10.10.5.m1.1c">66.27</annotation><annotation encoding="application/x-llamapun" id="A1.T9.10.10.10.5.m1.1d">66.27</annotation></semantics></math></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the Pearson correlation coefficients between the logits of next-token prediction (NTP) tasks related to simile objects and their attributes.  It shows correlations before and after large-scale fine-tuning (post-training) of the language model. This allows for an assessment of how well the model maintains its ability to generalize knowledge composition regarding similes after undergoing significant parameter updates.  Higher correlation suggests better compositional generalization.
> <details>
> <summary>read the caption</summary>
> Table 9: Correlation between logits on simile objects and attributes before and after large-scale post-training.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="A3.T10.5.5">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A3.T10.5.5.6.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="A3.T10.5.5.6.1.1"><span class="ltx_text" id="A3.T10.5.5.6.1.1.1" style="font-size:90%;">Template</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A3.T10.5.5.6.1.2"><span class="ltx_text" id="A3.T10.5.5.6.1.2.1" style="font-size:90%;">Domain Size</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A3.T10.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A3.T10.1.1.1.2"><span class="ltx_text" id="A3.T10.1.1.1.2.1" style="font-size:90%;">Attribute</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T10.1.1.1.1"><math alttext="23" class="ltx_Math" display="inline" id="A3.T10.1.1.1.1.m1.1"><semantics id="A3.T10.1.1.1.1.m1.1a"><mn id="A3.T10.1.1.1.1.m1.1.1" mathsize="90%" xref="A3.T10.1.1.1.1.m1.1.1.cmml">23</mn><annotation-xml encoding="MathML-Content" id="A3.T10.1.1.1.1.m1.1b"><cn id="A3.T10.1.1.1.1.m1.1.1.cmml" type="integer" xref="A3.T10.1.1.1.1.m1.1.1">23</cn></annotation-xml><annotation encoding="application/x-tex" id="A3.T10.1.1.1.1.m1.1c">23</annotation><annotation encoding="application/x-llamapun" id="A3.T10.1.1.1.1.m1.1d">23</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="A3.T10.2.2.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A3.T10.2.2.2.2"><span class="ltx_text" id="A3.T10.2.2.2.2.1" style="font-size:90%;">Cross-language</span></th>
<td class="ltx_td ltx_align_center" id="A3.T10.2.2.2.1"><math alttext="11\times 5=55" class="ltx_Math" display="inline" id="A3.T10.2.2.2.1.m1.1"><semantics id="A3.T10.2.2.2.1.m1.1a"><mrow id="A3.T10.2.2.2.1.m1.1.1" xref="A3.T10.2.2.2.1.m1.1.1.cmml"><mrow id="A3.T10.2.2.2.1.m1.1.1.2" xref="A3.T10.2.2.2.1.m1.1.1.2.cmml"><mn id="A3.T10.2.2.2.1.m1.1.1.2.2" mathsize="90%" xref="A3.T10.2.2.2.1.m1.1.1.2.2.cmml">11</mn><mo id="A3.T10.2.2.2.1.m1.1.1.2.1" lspace="0.222em" mathsize="90%" rspace="0.222em" xref="A3.T10.2.2.2.1.m1.1.1.2.1.cmml">×</mo><mn id="A3.T10.2.2.2.1.m1.1.1.2.3" mathsize="90%" xref="A3.T10.2.2.2.1.m1.1.1.2.3.cmml">5</mn></mrow><mo id="A3.T10.2.2.2.1.m1.1.1.1" mathsize="90%" xref="A3.T10.2.2.2.1.m1.1.1.1.cmml">=</mo><mn id="A3.T10.2.2.2.1.m1.1.1.3" mathsize="90%" xref="A3.T10.2.2.2.1.m1.1.1.3.cmml">55</mn></mrow><annotation-xml encoding="MathML-Content" id="A3.T10.2.2.2.1.m1.1b"><apply id="A3.T10.2.2.2.1.m1.1.1.cmml" xref="A3.T10.2.2.2.1.m1.1.1"><eq id="A3.T10.2.2.2.1.m1.1.1.1.cmml" xref="A3.T10.2.2.2.1.m1.1.1.1"></eq><apply id="A3.T10.2.2.2.1.m1.1.1.2.cmml" xref="A3.T10.2.2.2.1.m1.1.1.2"><times id="A3.T10.2.2.2.1.m1.1.1.2.1.cmml" xref="A3.T10.2.2.2.1.m1.1.1.2.1"></times><cn id="A3.T10.2.2.2.1.m1.1.1.2.2.cmml" type="integer" xref="A3.T10.2.2.2.1.m1.1.1.2.2">11</cn><cn id="A3.T10.2.2.2.1.m1.1.1.2.3.cmml" type="integer" xref="A3.T10.2.2.2.1.m1.1.1.2.3">5</cn></apply><cn id="A3.T10.2.2.2.1.m1.1.1.3.cmml" type="integer" xref="A3.T10.2.2.2.1.m1.1.1.3">55</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="A3.T10.2.2.2.1.m1.1c">11\times 5=55</annotation><annotation encoding="application/x-llamapun" id="A3.T10.2.2.2.1.m1.1d">11 × 5 = 55</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="A3.T10.3.3.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A3.T10.3.3.3.2"><span class="ltx_text" id="A3.T10.3.3.3.2.1" style="font-size:90%;">Simile</span></th>
<td class="ltx_td ltx_align_center" id="A3.T10.3.3.3.1"><math alttext="17" class="ltx_Math" display="inline" id="A3.T10.3.3.3.1.m1.1"><semantics id="A3.T10.3.3.3.1.m1.1a"><mn id="A3.T10.3.3.3.1.m1.1.1" mathsize="90%" xref="A3.T10.3.3.3.1.m1.1.1.cmml">17</mn><annotation-xml encoding="MathML-Content" id="A3.T10.3.3.3.1.m1.1b"><cn id="A3.T10.3.3.3.1.m1.1.1.cmml" type="integer" xref="A3.T10.3.3.3.1.m1.1.1">17</cn></annotation-xml><annotation encoding="application/x-tex" id="A3.T10.3.3.3.1.m1.1c">17</annotation><annotation encoding="application/x-llamapun" id="A3.T10.3.3.3.1.m1.1d">17</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="A3.T10.4.4.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A3.T10.4.4.4.2"><span class="ltx_text" id="A3.T10.4.4.4.2.1" style="font-size:90%;">Math</span></th>
<td class="ltx_td ltx_align_center" id="A3.T10.4.4.4.1"><math alttext="4\times 4=16" class="ltx_Math" display="inline" id="A3.T10.4.4.4.1.m1.1"><semantics id="A3.T10.4.4.4.1.m1.1a"><mrow id="A3.T10.4.4.4.1.m1.1.1" xref="A3.T10.4.4.4.1.m1.1.1.cmml"><mrow id="A3.T10.4.4.4.1.m1.1.1.2" xref="A3.T10.4.4.4.1.m1.1.1.2.cmml"><mn id="A3.T10.4.4.4.1.m1.1.1.2.2" mathsize="90%" xref="A3.T10.4.4.4.1.m1.1.1.2.2.cmml">4</mn><mo id="A3.T10.4.4.4.1.m1.1.1.2.1" lspace="0.222em" mathsize="90%" rspace="0.222em" xref="A3.T10.4.4.4.1.m1.1.1.2.1.cmml">×</mo><mn id="A3.T10.4.4.4.1.m1.1.1.2.3" mathsize="90%" xref="A3.T10.4.4.4.1.m1.1.1.2.3.cmml">4</mn></mrow><mo id="A3.T10.4.4.4.1.m1.1.1.1" mathsize="90%" xref="A3.T10.4.4.4.1.m1.1.1.1.cmml">=</mo><mn id="A3.T10.4.4.4.1.m1.1.1.3" mathsize="90%" xref="A3.T10.4.4.4.1.m1.1.1.3.cmml">16</mn></mrow><annotation-xml encoding="MathML-Content" id="A3.T10.4.4.4.1.m1.1b"><apply id="A3.T10.4.4.4.1.m1.1.1.cmml" xref="A3.T10.4.4.4.1.m1.1.1"><eq id="A3.T10.4.4.4.1.m1.1.1.1.cmml" xref="A3.T10.4.4.4.1.m1.1.1.1"></eq><apply id="A3.T10.4.4.4.1.m1.1.1.2.cmml" xref="A3.T10.4.4.4.1.m1.1.1.2"><times id="A3.T10.4.4.4.1.m1.1.1.2.1.cmml" xref="A3.T10.4.4.4.1.m1.1.1.2.1"></times><cn id="A3.T10.4.4.4.1.m1.1.1.2.2.cmml" type="integer" xref="A3.T10.4.4.4.1.m1.1.1.2.2">4</cn><cn id="A3.T10.4.4.4.1.m1.1.1.2.3.cmml" type="integer" xref="A3.T10.4.4.4.1.m1.1.1.2.3">4</cn></apply><cn id="A3.T10.4.4.4.1.m1.1.1.3.cmml" type="integer" xref="A3.T10.4.4.4.1.m1.1.1.3">16</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="A3.T10.4.4.4.1.m1.1c">4\times 4=16</annotation><annotation encoding="application/x-llamapun" id="A3.T10.4.4.4.1.m1.1d">4 × 4 = 16</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="A3.T10.5.5.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_t" id="A3.T10.5.5.5.2"><span class="ltx_text" id="A3.T10.5.5.5.2.1" style="font-size:90%;">Total</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A3.T10.5.5.5.1"><math alttext="111" class="ltx_Math" display="inline" id="A3.T10.5.5.5.1.m1.1"><semantics id="A3.T10.5.5.5.1.m1.1a"><mn id="A3.T10.5.5.5.1.m1.1.1" mathsize="90%" xref="A3.T10.5.5.5.1.m1.1.1.cmml">111</mn><annotation-xml encoding="MathML-Content" id="A3.T10.5.5.5.1.m1.1b"><cn id="A3.T10.5.5.5.1.m1.1.1.cmml" type="integer" xref="A3.T10.5.5.5.1.m1.1.1">111</cn></annotation-xml><annotation encoding="application/x-tex" id="A3.T10.5.5.5.1.m1.1c">111</annotation><annotation encoding="application/x-llamapun" id="A3.T10.5.5.5.1.m1.1d">111</annotation></semantics></math></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a summary of the number of prompts used in the experiments, categorized by four different families of knowledge composition: Attribute, Cross-language, Simile, and Math.  It shows the total number of prompts used across all families, highlighting the distribution of prompts among the four types. This breakdown is essential for understanding the scope and balance of the experimental design.
> <details>
> <summary>read the caption</summary>
> Table 10: The statistics of prompts in different families.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="A3.T11.1.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A3.T11.1.1.1.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="2" id="A3.T11.1.1.1.1.1"><span class="ltx_text" id="A3.T11.1.1.1.1.1.1" style="font-size:90%;">Knowledge</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A3.T11.1.1.1.1.2"><span class="ltx_text" id="A3.T11.1.1.1.1.2.1" style="font-size:90%;">Template</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A3.T11.1.1.1.1.3"><span class="ltx_text" id="A3.T11.1.1.1.1.3.1" style="font-size:90%;">Domain Size</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A3.T11.1.1.2.1">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_t" id="A3.T11.1.1.2.1.1" rowspan="23"><span class="ltx_text" id="A3.T11.1.1.2.1.1.1" style="font-size:90%;">
<span class="ltx_inline-block ltx_transformed_outer" id="A3.T11.1.1.2.1.1.1.1" style="width:6.3pt;height:37pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:37.0pt;transform:translate(-15.39pt,-15.39pt) rotate(-90deg) ;">
<span class="ltx_p" id="A3.T11.1.1.2.1.1.1.1.1">Attribute</span>
</span></span></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T11.1.1.2.1.2"><span class="ltx_text" id="A3.T11.1.1.2.1.2.1" style="font-size:90%;">birthplace</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T11.1.1.2.1.3">
<span class="ltx_text" id="A3.T11.1.1.2.1.3.1" style="font-size:90%;">“{}</span><span class="ltx_text ltx_font_italic" id="A3.T11.1.1.2.1.3.2" style="font-size:90%;"> was born in the city of</span><span class="ltx_text" id="A3.T11.1.1.2.1.3.3" style="font-size:90%;">”</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T11.1.1.2.1.4"><span class="ltx_text" id="A3.T11.1.1.2.1.4.1" style="font-size:90%;">242</span></td>
</tr>
<tr class="ltx_tr" id="A3.T11.1.1.3.2">
<td class="ltx_td ltx_align_center" id="A3.T11.1.1.3.2.1"><span class="ltx_text" id="A3.T11.1.1.3.2.1.1" style="font-size:90%;">city</span></td>
<td class="ltx_td ltx_align_center" id="A3.T11.1.1.3.2.2">
<span class="ltx_text" id="A3.T11.1.1.3.2.2.1" style="font-size:90%;">“{}</span><span class="ltx_text ltx_font_italic" id="A3.T11.1.1.3.2.2.2" style="font-size:90%;"> lives in the city of</span><span class="ltx_text" id="A3.T11.1.1.3.2.2.3" style="font-size:90%;">”</span>
</td>
<td class="ltx_td ltx_align_center" id="A3.T11.1.1.3.2.3"><span class="ltx_text" id="A3.T11.1.1.3.2.3.1" style="font-size:90%;">242</span></td>
</tr>
<tr class="ltx_tr" id="A3.T11.1.1.4.3">
<td class="ltx_td ltx_align_center" id="A3.T11.1.1.4.3.1"><span class="ltx_text" id="A3.T11.1.1.4.3.1.1" style="font-size:90%;">country</span></td>
<td class="ltx_td ltx_align_center" id="A3.T11.1.1.4.3.2">
<span class="ltx_text" id="A3.T11.1.1.4.3.2.1" style="font-size:90%;">“{}</span><span class="ltx_text ltx_font_italic" id="A3.T11.1.1.4.3.2.2" style="font-size:90%;"> lives in the country of</span><span class="ltx_text" id="A3.T11.1.1.4.3.2.3" style="font-size:90%;">”</span>
</td>
<td class="ltx_td ltx_align_center" id="A3.T11.1.1.4.3.3"><span class="ltx_text" id="A3.T11.1.1.4.3.3.1" style="font-size:90%;">128</span></td>
</tr>
<tr class="ltx_tr" id="A3.T11.1.1.5.4">
<td class="ltx_td ltx_align_center" id="A3.T11.1.1.5.4.1"><span class="ltx_text" id="A3.T11.1.1.5.4.1.1" style="font-size:90%;">continent</span></td>
<td class="ltx_td ltx_align_center" id="A3.T11.1.1.5.4.2">
<span class="ltx_text" id="A3.T11.1.1.5.4.2.1" style="font-size:90%;">“{}</span><span class="ltx_text ltx_font_italic" id="A3.T11.1.1.5.4.2.2" style="font-size:90%;"> lives in the continent of</span><span class="ltx_text" id="A3.T11.1.1.5.4.2.3" style="font-size:90%;">”</span>
</td>
<td class="ltx_td ltx_align_center" id="A3.T11.1.1.5.4.3"><span class="ltx_text" id="A3.T11.1.1.5.4.3.1" style="font-size:90%;">6</span></td>
</tr>
<tr class="ltx_tr" id="A3.T11.1.1.6.5">
<td class="ltx_td ltx_align_center" id="A3.T11.1.1.6.5.1"><span class="ltx_text" id="A3.T11.1.1.6.5.1.1" style="font-size:90%;">language</span></td>
<td class="ltx_td ltx_align_center" id="A3.T11.1.1.6.5.2">
<span class="ltx_text" id="A3.T11.1.1.6.5.2.1" style="font-size:90%;">“{}</span><span class="ltx_text ltx_font_italic" id="A3.T11.1.1.6.5.2.2" style="font-size:90%;"> speaks the language of</span><span class="ltx_text" id="A3.T11.1.1.6.5.2.3" style="font-size:90%;">”</span>
</td>
<td class="ltx_td ltx_align_center" id="A3.T11.1.1.6.5.3"><span class="ltx_text" id="A3.T11.1.1.6.5.3.1" style="font-size:90%;">217</span></td>
</tr>
<tr class="ltx_tr" id="A3.T11.1.1.7.6">
<td class="ltx_td ltx_align_center" id="A3.T11.1.1.7.6.1"><span class="ltx_text" id="A3.T11.1.1.7.6.1.1" style="font-size:90%;">company</span></td>
<td class="ltx_td ltx_align_center" id="A3.T11.1.1.7.6.2">
<span class="ltx_text" id="A3.T11.1.1.7.6.2.1" style="font-size:90%;">“{}</span><span class="ltx_text ltx_font_italic" id="A3.T11.1.1.7.6.2.2" style="font-size:90%;"> works for the company of</span><span class="ltx_text" id="A3.T11.1.1.7.6.2.3" style="font-size:90%;">”</span>
</td>
<td class="ltx_td ltx_align_center" id="A3.T11.1.1.7.6.3"><span class="ltx_text" id="A3.T11.1.1.7.6.3.1" style="font-size:90%;">100</span></td>
</tr>
<tr class="ltx_tr" id="A3.T11.1.1.8.7">
<td class="ltx_td ltx_align_center" id="A3.T11.1.1.8.7.1"><span class="ltx_text" id="A3.T11.1.1.8.7.1.1" style="font-size:90%;">landmark</span></td>
<td class="ltx_td ltx_align_center" id="A3.T11.1.1.8.7.2">
<span class="ltx_text" id="A3.T11.1.1.8.7.2.1" style="font-size:90%;">“{}</span><span class="ltx_text ltx_font_italic" id="A3.T11.1.1.8.7.2.2" style="font-size:90%;"> lives near the landmark of</span><span class="ltx_text" id="A3.T11.1.1.8.7.2.3" style="font-size:90%;">”</span>
</td>
<td class="ltx_td ltx_align_center" id="A3.T11.1.1.8.7.3"><span class="ltx_text" id="A3.T11.1.1.8.7.3.1" style="font-size:90%;">100</span></td>
</tr>
<tr class="ltx_tr" id="A3.T11.1.1.9.8">
<td class="ltx_td ltx_align_center" id="A3.T11.1.1.9.8.1"><span class="ltx_text" id="A3.T11.1.1.9.8.1.1" style="font-size:90%;">ceo</span></td>
<td class="ltx_td ltx_align_center" id="A3.T11.1.1.9.8.2">
<span class="ltx_text" id="A3.T11.1.1.9.8.2.1" style="font-size:90%;">“{}</span><span class="ltx_text ltx_font_italic" id="A3.T11.1.1.9.8.2.2" style="font-size:90%;"> works for the CEO called</span><span class="ltx_text" id="A3.T11.1.1.9.8.2.3" style="font-size:90%;">”</span>
</td>
<td class="ltx_td ltx_align_center" id="A3.T11.1.1.9.8.3"><span class="ltx_text" id="A3.T11.1.1.9.8.3.1" style="font-size:90%;">101</span></td>
</tr>
<tr class="ltx_tr" id="A3.T11.1.1.10.9">
<td class="ltx_td ltx_align_center" id="A3.T11.1.1.10.9.1"><span class="ltx_text" id="A3.T11.1.1.10.9.1.1" style="font-size:90%;">mother</span></td>
<td class="ltx_td ltx_align_center" id="A3.T11.1.1.10.9.2">
<span class="ltx_text" id="A3.T11.1.1.10.9.2.1" style="font-size:90%;">“{}</span><span class="ltx_text ltx_font_italic" id="A3.T11.1.1.10.9.2.2" style="font-size:90%;">’s mother’s name is</span><span class="ltx_text" id="A3.T11.1.1.10.9.2.3" style="font-size:90%;">”</span>
</td>
<td class="ltx_td ltx_align_center" id="A3.T11.1.1.10.9.3"><span class="ltx_text" id="A3.T11.1.1.10.9.3.1" style="font-size:90%;">100</span></td>
</tr>
<tr class="ltx_tr" id="A3.T11.1.1.11.10">
<td class="ltx_td ltx_align_center" id="A3.T11.1.1.11.10.1"><span class="ltx_text" id="A3.T11.1.1.11.10.1.1" style="font-size:90%;">father</span></td>
<td class="ltx_td ltx_align_center" id="A3.T11.1.1.11.10.2">
<span class="ltx_text" id="A3.T11.1.1.11.10.2.1" style="font-size:90%;">“{}</span><span class="ltx_text ltx_font_italic" id="A3.T11.1.1.11.10.2.2" style="font-size:90%;">’s father’s name is</span><span class="ltx_text" id="A3.T11.1.1.11.10.2.3" style="font-size:90%;">”</span>
</td>
<td class="ltx_td ltx_align_center" id="A3.T11.1.1.11.10.3"><span class="ltx_text" id="A3.T11.1.1.11.10.3.1" style="font-size:90%;">100</span></td>
</tr>
<tr class="ltx_tr" id="A3.T11.1.1.12.11">
<td class="ltx_td ltx_align_center" id="A3.T11.1.1.12.11.1"><span class="ltx_text" id="A3.T11.1.1.12.11.1.1" style="font-size:90%;">job</span></td>
<td class="ltx_td ltx_align_center" id="A3.T11.1.1.12.11.2">
<span class="ltx_text" id="A3.T11.1.1.12.11.2.1" style="font-size:90%;">“{}</span><span class="ltx_text ltx_font_italic" id="A3.T11.1.1.12.11.2.2" style="font-size:90%;">’s job is</span><span class="ltx_text" id="A3.T11.1.1.12.11.2.3" style="font-size:90%;">”</span>
</td>
<td class="ltx_td ltx_align_center" id="A3.T11.1.1.12.11.3"><span class="ltx_text" id="A3.T11.1.1.12.11.3.1" style="font-size:90%;">105</span></td>
</tr>
<tr class="ltx_tr" id="A3.T11.1.1.13.12">
<td class="ltx_td ltx_align_center" id="A3.T11.1.1.13.12.1"><span class="ltx_text" id="A3.T11.1.1.13.12.1.1" style="font-size:90%;">personality</span></td>
<td class="ltx_td ltx_align_center" id="A3.T11.1.1.13.12.2">
<span class="ltx_text" id="A3.T11.1.1.13.12.2.1" style="font-size:90%;">“{}</span><span class="ltx_text ltx_font_italic" id="A3.T11.1.1.13.12.2.2" style="font-size:90%;">’s personality is</span><span class="ltx_text" id="A3.T11.1.1.13.12.2.3" style="font-size:90%;">”</span>
</td>
<td class="ltx_td ltx_align_center" id="A3.T11.1.1.13.12.3"><span class="ltx_text" id="A3.T11.1.1.13.12.3.1" style="font-size:90%;">100</span></td>
</tr>
<tr class="ltx_tr" id="A3.T11.1.1.14.13">
<td class="ltx_td ltx_align_center" id="A3.T11.1.1.14.13.1"><span class="ltx_text" id="A3.T11.1.1.14.13.1.1" style="font-size:90%;">pet</span></td>
<td class="ltx_td ltx_align_center" id="A3.T11.1.1.14.13.2">
<span class="ltx_text" id="A3.T11.1.1.14.13.2.1" style="font-size:90%;">“{}</span><span class="ltx_text ltx_font_italic" id="A3.T11.1.1.14.13.2.2" style="font-size:90%;">’s pet is</span><span class="ltx_text" id="A3.T11.1.1.14.13.2.3" style="font-size:90%;">”</span>
</td>
<td class="ltx_td ltx_align_center" id="A3.T11.1.1.14.13.3"><span class="ltx_text" id="A3.T11.1.1.14.13.3.1" style="font-size:90%;">100</span></td>
</tr>
<tr class="ltx_tr" id="A3.T11.1.1.15.14">
<td class="ltx_td ltx_align_center" id="A3.T11.1.1.15.14.1"><span class="ltx_text" id="A3.T11.1.1.15.14.1.1" style="font-size:90%;">sport</span></td>
<td class="ltx_td ltx_align_center" id="A3.T11.1.1.15.14.2">
<span class="ltx_text" id="A3.T11.1.1.15.14.2.1" style="font-size:90%;">“{}</span><span class="ltx_text ltx_font_italic" id="A3.T11.1.1.15.14.2.2" style="font-size:90%;">’s favorite sport is</span><span class="ltx_text" id="A3.T11.1.1.15.14.2.3" style="font-size:90%;">”</span>
</td>
<td class="ltx_td ltx_align_center" id="A3.T11.1.1.15.14.3"><span class="ltx_text" id="A3.T11.1.1.15.14.3.1" style="font-size:90%;">102</span></td>
</tr>
<tr class="ltx_tr" id="A3.T11.1.1.16.15">
<td class="ltx_td ltx_align_center" id="A3.T11.1.1.16.15.1"><span class="ltx_text" id="A3.T11.1.1.16.15.1.1" style="font-size:90%;">food</span></td>
<td class="ltx_td ltx_align_center" id="A3.T11.1.1.16.15.2">
<span class="ltx_text" id="A3.T11.1.1.16.15.2.1" style="font-size:90%;">“{}</span><span class="ltx_text ltx_font_italic" id="A3.T11.1.1.16.15.2.2" style="font-size:90%;">’s favorite food is</span><span class="ltx_text" id="A3.T11.1.1.16.15.2.3" style="font-size:90%;">”</span>
</td>
<td class="ltx_td ltx_align_center" id="A3.T11.1.1.16.15.3"><span class="ltx_text" id="A3.T11.1.1.16.15.3.1" style="font-size:90%;">104</span></td>
</tr>
<tr class="ltx_tr" id="A3.T11.1.1.17.16">
<td class="ltx_td ltx_align_center" id="A3.T11.1.1.17.16.1"><span class="ltx_text" id="A3.T11.1.1.17.16.1.1" style="font-size:90%;">drink</span></td>
<td class="ltx_td ltx_align_center" id="A3.T11.1.1.17.16.2">
<span class="ltx_text" id="A3.T11.1.1.17.16.2.1" style="font-size:90%;">“{}</span><span class="ltx_text ltx_font_italic" id="A3.T11.1.1.17.16.2.2" style="font-size:90%;">’s favorite drink is</span><span class="ltx_text" id="A3.T11.1.1.17.16.2.3" style="font-size:90%;">”</span>
</td>
<td class="ltx_td ltx_align_center" id="A3.T11.1.1.17.16.3"><span class="ltx_text" id="A3.T11.1.1.17.16.3.1" style="font-size:90%;">102</span></td>
</tr>
<tr class="ltx_tr" id="A3.T11.1.1.18.17">
<td class="ltx_td ltx_align_center" id="A3.T11.1.1.18.17.1"><span class="ltx_text" id="A3.T11.1.1.18.17.1.1" style="font-size:90%;">gender</span></td>
<td class="ltx_td ltx_align_center" id="A3.T11.1.1.18.17.2">
<span class="ltx_text" id="A3.T11.1.1.18.17.2.1" style="font-size:90%;">“{}</span><span class="ltx_text ltx_font_italic" id="A3.T11.1.1.18.17.2.2" style="font-size:90%;">’s gender is</span><span class="ltx_text" id="A3.T11.1.1.18.17.2.3" style="font-size:90%;">”</span>
</td>
<td class="ltx_td ltx_align_center" id="A3.T11.1.1.18.17.3"><span class="ltx_text" id="A3.T11.1.1.18.17.3.1" style="font-size:90%;">3</span></td>
</tr>
<tr class="ltx_tr" id="A3.T11.1.1.19.18">
<td class="ltx_td ltx_align_center" id="A3.T11.1.1.19.18.1"><span class="ltx_text" id="A3.T11.1.1.19.18.1.1" style="font-size:90%;">vehicle</span></td>
<td class="ltx_td ltx_align_center" id="A3.T11.1.1.19.18.2">
<span class="ltx_text" id="A3.T11.1.1.19.18.2.1" style="font-size:90%;">“{}</span><span class="ltx_text ltx_font_italic" id="A3.T11.1.1.19.18.2.2" style="font-size:90%;">’s preferred mode of transportation is</span><span class="ltx_text" id="A3.T11.1.1.19.18.2.3" style="font-size:90%;">”</span>
</td>
<td class="ltx_td ltx_align_center" id="A3.T11.1.1.19.18.3"><span class="ltx_text" id="A3.T11.1.1.19.18.3.1" style="font-size:90%;">51</span></td>
</tr>
<tr class="ltx_tr" id="A3.T11.1.1.20.19">
<td class="ltx_td ltx_align_center" id="A3.T11.1.1.20.19.1"><span class="ltx_text" id="A3.T11.1.1.20.19.1.1" style="font-size:90%;">color</span></td>
<td class="ltx_td ltx_align_center" id="A3.T11.1.1.20.19.2">
<span class="ltx_text" id="A3.T11.1.1.20.19.2.1" style="font-size:90%;">“{}</span><span class="ltx_text ltx_font_italic" id="A3.T11.1.1.20.19.2.2" style="font-size:90%;">’s favorite color is</span><span class="ltx_text" id="A3.T11.1.1.20.19.2.3" style="font-size:90%;">”</span>
</td>
<td class="ltx_td ltx_align_center" id="A3.T11.1.1.20.19.3"><span class="ltx_text" id="A3.T11.1.1.20.19.3.1" style="font-size:90%;">15</span></td>
</tr>
<tr class="ltx_tr" id="A3.T11.1.1.21.20">
<td class="ltx_td ltx_align_center" id="A3.T11.1.1.21.20.1"><span class="ltx_text" id="A3.T11.1.1.21.20.1.1" style="font-size:90%;">music</span></td>
<td class="ltx_td ltx_align_center" id="A3.T11.1.1.21.20.2">
<span class="ltx_text" id="A3.T11.1.1.21.20.2.1" style="font-size:90%;">“{}</span><span class="ltx_text ltx_font_italic" id="A3.T11.1.1.21.20.2.2" style="font-size:90%;">’s favorite music genre is</span><span class="ltx_text" id="A3.T11.1.1.21.20.2.3" style="font-size:90%;">”</span>
</td>
<td class="ltx_td ltx_align_center" id="A3.T11.1.1.21.20.3"><span class="ltx_text" id="A3.T11.1.1.21.20.3.1" style="font-size:90%;">100</span></td>
</tr>
<tr class="ltx_tr" id="A3.T11.1.1.22.21">
<td class="ltx_td ltx_align_center" id="A3.T11.1.1.22.21.1"><span class="ltx_text" id="A3.T11.1.1.22.21.1.1" style="font-size:90%;">hobby</span></td>
<td class="ltx_td ltx_align_center" id="A3.T11.1.1.22.21.2">
<span class="ltx_text" id="A3.T11.1.1.22.21.2.1" style="font-size:90%;">“{}</span><span class="ltx_text ltx_font_italic" id="A3.T11.1.1.22.21.2.2" style="font-size:90%;">’s favorite hobby is</span><span class="ltx_text" id="A3.T11.1.1.22.21.2.3" style="font-size:90%;">”</span>
</td>
<td class="ltx_td ltx_align_center" id="A3.T11.1.1.22.21.3"><span class="ltx_text" id="A3.T11.1.1.22.21.3.1" style="font-size:90%;">101</span></td>
</tr>
<tr class="ltx_tr" id="A3.T11.1.1.23.22">
<td class="ltx_td ltx_align_center" id="A3.T11.1.1.23.22.1"><span class="ltx_text" id="A3.T11.1.1.23.22.1.1" style="font-size:90%;">flower</span></td>
<td class="ltx_td ltx_align_center" id="A3.T11.1.1.23.22.2">
<span class="ltx_text" id="A3.T11.1.1.23.22.2.1" style="font-size:90%;">“{}</span><span class="ltx_text ltx_font_italic" id="A3.T11.1.1.23.22.2.2" style="font-size:90%;">’s favorite flower is</span><span class="ltx_text" id="A3.T11.1.1.23.22.2.3" style="font-size:90%;">”</span>
</td>
<td class="ltx_td ltx_align_center" id="A3.T11.1.1.23.22.3"><span class="ltx_text" id="A3.T11.1.1.23.22.3.1" style="font-size:90%;">97</span></td>
</tr>
<tr class="ltx_tr" id="A3.T11.1.1.24.23">
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T11.1.1.24.23.1"><span class="ltx_text" id="A3.T11.1.1.24.23.1.1" style="font-size:90%;">vacation</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T11.1.1.24.23.2">
<span class="ltx_text" id="A3.T11.1.1.24.23.2.1" style="font-size:90%;">“{}</span><span class="ltx_text ltx_font_italic" id="A3.T11.1.1.24.23.2.2" style="font-size:90%;">’s favorite vacation spot is</span><span class="ltx_text" id="A3.T11.1.1.24.23.2.3" style="font-size:90%;">”</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T11.1.1.24.23.3"><span class="ltx_text" id="A3.T11.1.1.24.23.3.1" style="font-size:90%;">101</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table lists the various prompts used in the experiments in the Attribute family.  Each row shows a knowledge template, the associated prompt used to elicit responses from language models, and the size of the domain for which that template was applied (i.e., number of distinct entities considered). The goal is to investigate how language models compose knowledge by learning a linear transformation between different knowledge domains. For example, a prompt such as 'X lives in the city of' relates to the source knowledge domain of cities, and it is paired with a target knowledge domain, such as countries, using prompts like 'X lives in the country of.'
> <details>
> <summary>read the caption</summary>
> Table 11: Templates used in our experiments (Part 1: Attribute).
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="A3.T12.1.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A3.T12.1.1.1.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="2" id="A3.T12.1.1.1.1.1"><span class="ltx_text" id="A3.T12.1.1.1.1.1.1" style="font-size:90%;">Knowledge</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A3.T12.1.1.1.1.2"><span class="ltx_text" id="A3.T12.1.1.1.1.2.1" style="font-size:90%;">Template</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A3.T12.1.1.1.1.3"><span class="ltx_text" id="A3.T12.1.1.1.1.3.1" style="font-size:90%;">Domain Size</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A3.T12.1.1.2.1">
<td class="ltx_td ltx_align_left ltx_border_t" id="A3.T12.1.1.2.1.1" rowspan="11"><span class="ltx_text" id="A3.T12.1.1.2.1.1.1" style="font-size:90%;">
<span class="ltx_inline-block ltx_transformed_outer" id="A3.T12.1.1.2.1.1.1.1" style="width:8.0pt;height:30.6pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:30.6pt;transform:translate(-11.28pt,-10.4pt) rotate(-90deg) ;">
<span class="ltx_p" id="A3.T12.1.1.2.1.1.1.1.1">Spanish</span>
</span></span></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T12.1.1.2.1.2"><span class="ltx_text" id="A3.T12.1.1.2.1.2.1" style="font-size:90%;">birthplace</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T12.1.1.2.1.3">
<span class="ltx_text" id="A3.T12.1.1.2.1.3.1" style="font-size:90%;">“{}</span><span class="ltx_text ltx_font_italic" id="A3.T12.1.1.2.1.3.2" style="font-size:90%;"> nació en la ciudad de</span><span class="ltx_text" id="A3.T12.1.1.2.1.3.3" style="font-size:90%;">”</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T12.1.1.2.1.4"><span class="ltx_text" id="A3.T12.1.1.2.1.4.1" style="font-size:90%;">242</span></td>
</tr>
<tr class="ltx_tr" id="A3.T12.1.1.3.2">
<td class="ltx_td ltx_align_center" id="A3.T12.1.1.3.2.1"><span class="ltx_text" id="A3.T12.1.1.3.2.1.1" style="font-size:90%;">city</span></td>
<td class="ltx_td ltx_align_center" id="A3.T12.1.1.3.2.2">
<span class="ltx_text" id="A3.T12.1.1.3.2.2.1" style="font-size:90%;">“{}</span><span class="ltx_text ltx_font_italic" id="A3.T12.1.1.3.2.2.2" style="font-size:90%;"> vive en la ciudad de</span><span class="ltx_text" id="A3.T12.1.1.3.2.2.3" style="font-size:90%;">”</span>
</td>
<td class="ltx_td ltx_align_center" id="A3.T12.1.1.3.2.3"><span class="ltx_text" id="A3.T12.1.1.3.2.3.1" style="font-size:90%;">242</span></td>
</tr>
<tr class="ltx_tr" id="A3.T12.1.1.4.3">
<td class="ltx_td ltx_align_center" id="A3.T12.1.1.4.3.1"><span class="ltx_text" id="A3.T12.1.1.4.3.1.1" style="font-size:90%;">country</span></td>
<td class="ltx_td ltx_align_center" id="A3.T12.1.1.4.3.2">
<span class="ltx_text" id="A3.T12.1.1.4.3.2.1" style="font-size:90%;">“{}</span><span class="ltx_text ltx_font_italic" id="A3.T12.1.1.4.3.2.2" style="font-size:90%;"> vive en el país de</span><span class="ltx_text" id="A3.T12.1.1.4.3.2.3" style="font-size:90%;">”</span>
</td>
<td class="ltx_td ltx_align_center" id="A3.T12.1.1.4.3.3"><span class="ltx_text" id="A3.T12.1.1.4.3.3.1" style="font-size:90%;">128</span></td>
</tr>
<tr class="ltx_tr" id="A3.T12.1.1.5.4">
<td class="ltx_td ltx_align_center" id="A3.T12.1.1.5.4.1"><span class="ltx_text" id="A3.T12.1.1.5.4.1.1" style="font-size:90%;">continent</span></td>
<td class="ltx_td ltx_align_center" id="A3.T12.1.1.5.4.2">
<span class="ltx_text" id="A3.T12.1.1.5.4.2.1" style="font-size:90%;">“{}</span><span class="ltx_text ltx_font_italic" id="A3.T12.1.1.5.4.2.2" style="font-size:90%;"> vive en el continente de</span><span class="ltx_text" id="A3.T12.1.1.5.4.2.3" style="font-size:90%;">”</span>
</td>
<td class="ltx_td ltx_align_center" id="A3.T12.1.1.5.4.3"><span class="ltx_text" id="A3.T12.1.1.5.4.3.1" style="font-size:90%;">6</span></td>
</tr>
<tr class="ltx_tr" id="A3.T12.1.1.6.5">
<td class="ltx_td ltx_align_center" id="A3.T12.1.1.6.5.1"><span class="ltx_text" id="A3.T12.1.1.6.5.1.1" style="font-size:90%;">language</span></td>
<td class="ltx_td ltx_align_center" id="A3.T12.1.1.6.5.2">
<span class="ltx_text" id="A3.T12.1.1.6.5.2.1" style="font-size:90%;">“{}</span><span class="ltx_text ltx_font_italic" id="A3.T12.1.1.6.5.2.2" style="font-size:90%;"> habla el idioma de</span><span class="ltx_text" id="A3.T12.1.1.6.5.2.3" style="font-size:90%;">”</span>
</td>
<td class="ltx_td ltx_align_center" id="A3.T12.1.1.6.5.3"><span class="ltx_text" id="A3.T12.1.1.6.5.3.1" style="font-size:90%;">217</span></td>
</tr>
<tr class="ltx_tr" id="A3.T12.1.1.7.6">
<td class="ltx_td ltx_align_center" id="A3.T12.1.1.7.6.1"><span class="ltx_text" id="A3.T12.1.1.7.6.1.1" style="font-size:90%;">company</span></td>
<td class="ltx_td ltx_align_center" id="A3.T12.1.1.7.6.2">
<span class="ltx_text" id="A3.T12.1.1.7.6.2.1" style="font-size:90%;">“{}</span><span class="ltx_text ltx_font_italic" id="A3.T12.1.1.7.6.2.2" style="font-size:90%;"> trabaja para la empresa de</span><span class="ltx_text" id="A3.T12.1.1.7.6.2.3" style="font-size:90%;">”</span>
</td>
<td class="ltx_td ltx_align_center" id="A3.T12.1.1.7.6.3"><span class="ltx_text" id="A3.T12.1.1.7.6.3.1" style="font-size:90%;">100</span></td>
</tr>
<tr class="ltx_tr" id="A3.T12.1.1.8.7">
<td class="ltx_td ltx_align_center" id="A3.T12.1.1.8.7.1"><span class="ltx_text" id="A3.T12.1.1.8.7.1.1" style="font-size:90%;">ceo</span></td>
<td class="ltx_td ltx_align_center" id="A3.T12.1.1.8.7.2">
<span class="ltx_text" id="A3.T12.1.1.8.7.2.1" style="font-size:90%;">“{}</span><span class="ltx_text ltx_font_italic" id="A3.T12.1.1.8.7.2.2" style="font-size:90%;"> trabaja para el CEO llamado</span><span class="ltx_text" id="A3.T12.1.1.8.7.2.3" style="font-size:90%;">”</span>
</td>
<td class="ltx_td ltx_align_center" id="A3.T12.1.1.8.7.3"><span class="ltx_text" id="A3.T12.1.1.8.7.3.1" style="font-size:90%;">101</span></td>
</tr>
<tr class="ltx_tr" id="A3.T12.1.1.9.8">
<td class="ltx_td ltx_align_center" id="A3.T12.1.1.9.8.1"><span class="ltx_text" id="A3.T12.1.1.9.8.1.1" style="font-size:90%;">job</span></td>
<td class="ltx_td ltx_align_center" id="A3.T12.1.1.9.8.2">
<span class="ltx_text" id="A3.T12.1.1.9.8.2.1" style="font-size:90%;">“</span><span class="ltx_text ltx_font_italic" id="A3.T12.1.1.9.8.2.2" style="font-size:90%;">El trabajo de </span><span class="ltx_text" id="A3.T12.1.1.9.8.2.3" style="font-size:90%;">{}</span><span class="ltx_text ltx_font_italic" id="A3.T12.1.1.9.8.2.4" style="font-size:90%;"> es</span><span class="ltx_text" id="A3.T12.1.1.9.8.2.5" style="font-size:90%;">”</span>
</td>
<td class="ltx_td ltx_align_center" id="A3.T12.1.1.9.8.3"><span class="ltx_text" id="A3.T12.1.1.9.8.3.1" style="font-size:90%;">105</span></td>
</tr>
<tr class="ltx_tr" id="A3.T12.1.1.10.9">
<td class="ltx_td ltx_align_center" id="A3.T12.1.1.10.9.1"><span class="ltx_text" id="A3.T12.1.1.10.9.1.1" style="font-size:90%;">mother</span></td>
<td class="ltx_td ltx_align_center" id="A3.T12.1.1.10.9.2">
<span class="ltx_text" id="A3.T12.1.1.10.9.2.1" style="font-size:90%;">“</span><span class="ltx_text ltx_font_italic" id="A3.T12.1.1.10.9.2.2" style="font-size:90%;">El nombre de la madre de </span><span class="ltx_text" id="A3.T12.1.1.10.9.2.3" style="font-size:90%;">{}</span><span class="ltx_text ltx_font_italic" id="A3.T12.1.1.10.9.2.4" style="font-size:90%;"> es</span><span class="ltx_text" id="A3.T12.1.1.10.9.2.5" style="font-size:90%;">”</span>
</td>
<td class="ltx_td ltx_align_center" id="A3.T12.1.1.10.9.3"><span class="ltx_text" id="A3.T12.1.1.10.9.3.1" style="font-size:90%;">100</span></td>
</tr>
<tr class="ltx_tr" id="A3.T12.1.1.11.10">
<td class="ltx_td ltx_align_center" id="A3.T12.1.1.11.10.1"><span class="ltx_text" id="A3.T12.1.1.11.10.1.1" style="font-size:90%;">father</span></td>
<td class="ltx_td ltx_align_center" id="A3.T12.1.1.11.10.2">
<span class="ltx_text" id="A3.T12.1.1.11.10.2.1" style="font-size:90%;">“{}</span><span class="ltx_text ltx_font_italic" id="A3.T12.1.1.11.10.2.2" style="font-size:90%;"> el nombre del padre es</span><span class="ltx_text" id="A3.T12.1.1.11.10.2.3" style="font-size:90%;">”</span>
</td>
<td class="ltx_td ltx_align_center" id="A3.T12.1.1.11.10.3"><span class="ltx_text" id="A3.T12.1.1.11.10.3.1" style="font-size:90%;">100</span></td>
</tr>
<tr class="ltx_tr" id="A3.T12.1.1.12.11">
<td class="ltx_td ltx_align_center" id="A3.T12.1.1.12.11.1"><span class="ltx_text" id="A3.T12.1.1.12.11.1.1" style="font-size:90%;">gender</span></td>
<td class="ltx_td ltx_align_center" id="A3.T12.1.1.12.11.2">
<span class="ltx_text" id="A3.T12.1.1.12.11.2.1" style="font-size:90%;">“</span><span class="ltx_text ltx_font_italic" id="A3.T12.1.1.12.11.2.2" style="font-size:90%;">El género de </span><span class="ltx_text" id="A3.T12.1.1.12.11.2.3" style="font-size:90%;">{}</span><span class="ltx_text ltx_font_italic" id="A3.T12.1.1.12.11.2.4" style="font-size:90%;"> es</span><span class="ltx_text" id="A3.T12.1.1.12.11.2.5" style="font-size:90%;">”</span>
</td>
<td class="ltx_td ltx_align_center" id="A3.T12.1.1.12.11.3"><span class="ltx_text" id="A3.T12.1.1.12.11.3.1" style="font-size:90%;">3</span></td>
</tr>
<tr class="ltx_tr" id="A3.T12.1.1.13.12">
<td class="ltx_td ltx_align_left ltx_border_t" id="A3.T12.1.1.13.12.1" rowspan="11"><span class="ltx_text" id="A3.T12.1.1.13.12.1.1" style="font-size:90%;">
<span class="ltx_inline-block ltx_transformed_outer" id="A3.T12.1.1.13.12.1.1.1" style="width:6.3pt;height:26.4pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:26.4pt;transform:translate(-10.08pt,-10.08pt) rotate(-90deg) ;">
<span class="ltx_p" id="A3.T12.1.1.13.12.1.1.1.1">French</span>
</span></span></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T12.1.1.13.12.2"><span class="ltx_text" id="A3.T12.1.1.13.12.2.1" style="font-size:90%;">birthplace</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T12.1.1.13.12.3">
<span class="ltx_text" id="A3.T12.1.1.13.12.3.1" style="font-size:90%;">“{}</span><span class="ltx_text ltx_font_italic" id="A3.T12.1.1.13.12.3.2" style="font-size:90%;"> est né dans la ville de</span><span class="ltx_text" id="A3.T12.1.1.13.12.3.3" style="font-size:90%;">”</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T12.1.1.13.12.4"><span class="ltx_text" id="A3.T12.1.1.13.12.4.1" style="font-size:90%;">242</span></td>
</tr>
<tr class="ltx_tr" id="A3.T12.1.1.14.13">
<td class="ltx_td ltx_align_center" id="A3.T12.1.1.14.13.1"><span class="ltx_text" id="A3.T12.1.1.14.13.1.1" style="font-size:90%;">city</span></td>
<td class="ltx_td ltx_align_center" id="A3.T12.1.1.14.13.2">
<span class="ltx_text" id="A3.T12.1.1.14.13.2.1" style="font-size:90%;">“{}</span><span class="ltx_text ltx_font_italic" id="A3.T12.1.1.14.13.2.2" style="font-size:90%;"> vit dans la ville de</span><span class="ltx_text" id="A3.T12.1.1.14.13.2.3" style="font-size:90%;">”</span>
</td>
<td class="ltx_td ltx_align_center" id="A3.T12.1.1.14.13.3"><span class="ltx_text" id="A3.T12.1.1.14.13.3.1" style="font-size:90%;">242</span></td>
</tr>
<tr class="ltx_tr" id="A3.T12.1.1.15.14">
<td class="ltx_td ltx_align_center" id="A3.T12.1.1.15.14.1"><span class="ltx_text" id="A3.T12.1.1.15.14.1.1" style="font-size:90%;">country</span></td>
<td class="ltx_td ltx_align_center" id="A3.T12.1.1.15.14.2">
<span class="ltx_text" id="A3.T12.1.1.15.14.2.1" style="font-size:90%;">“{}</span><span class="ltx_text ltx_font_italic" id="A3.T12.1.1.15.14.2.2" style="font-size:90%;"> vit dans le pays de</span><span class="ltx_text" id="A3.T12.1.1.15.14.2.3" style="font-size:90%;">”</span>
</td>
<td class="ltx_td ltx_align_center" id="A3.T12.1.1.15.14.3"><span class="ltx_text" id="A3.T12.1.1.15.14.3.1" style="font-size:90%;">128</span></td>
</tr>
<tr class="ltx_tr" id="A3.T12.1.1.16.15">
<td class="ltx_td ltx_align_center" id="A3.T12.1.1.16.15.1"><span class="ltx_text" id="A3.T12.1.1.16.15.1.1" style="font-size:90%;">continent</span></td>
<td class="ltx_td ltx_align_center" id="A3.T12.1.1.16.15.2">
<span class="ltx_text" id="A3.T12.1.1.16.15.2.1" style="font-size:90%;">“{}</span><span class="ltx_text ltx_font_italic" id="A3.T12.1.1.16.15.2.2" style="font-size:90%;"> vit sur le continent de</span><span class="ltx_text" id="A3.T12.1.1.16.15.2.3" style="font-size:90%;">”</span>
</td>
<td class="ltx_td ltx_align_center" id="A3.T12.1.1.16.15.3"><span class="ltx_text" id="A3.T12.1.1.16.15.3.1" style="font-size:90%;">6</span></td>
</tr>
<tr class="ltx_tr" id="A3.T12.1.1.17.16">
<td class="ltx_td ltx_align_center" id="A3.T12.1.1.17.16.1"><span class="ltx_text" id="A3.T12.1.1.17.16.1.1" style="font-size:90%;">language</span></td>
<td class="ltx_td ltx_align_center" id="A3.T12.1.1.17.16.2">
<span class="ltx_text" id="A3.T12.1.1.17.16.2.1" style="font-size:90%;">“{}</span><span class="ltx_text ltx_font_italic" id="A3.T12.1.1.17.16.2.2" style="font-size:90%;"> parle la langue de</span><span class="ltx_text" id="A3.T12.1.1.17.16.2.3" style="font-size:90%;">”</span>
</td>
<td class="ltx_td ltx_align_center" id="A3.T12.1.1.17.16.3"><span class="ltx_text" id="A3.T12.1.1.17.16.3.1" style="font-size:90%;">217</span></td>
</tr>
<tr class="ltx_tr" id="A3.T12.1.1.18.17">
<td class="ltx_td ltx_align_center" id="A3.T12.1.1.18.17.1"><span class="ltx_text" id="A3.T12.1.1.18.17.1.1" style="font-size:90%;">company</span></td>
<td class="ltx_td ltx_align_center" id="A3.T12.1.1.18.17.2">
<span class="ltx_text" id="A3.T12.1.1.18.17.2.1" style="font-size:90%;">“{}</span><span class="ltx_text ltx_font_italic" id="A3.T12.1.1.18.17.2.2" style="font-size:90%;"> travaille pour l’entreprise de</span><span class="ltx_text" id="A3.T12.1.1.18.17.2.3" style="font-size:90%;">”</span>
</td>
<td class="ltx_td ltx_align_center" id="A3.T12.1.1.18.17.3"><span class="ltx_text" id="A3.T12.1.1.18.17.3.1" style="font-size:90%;">100</span></td>
</tr>
<tr class="ltx_tr" id="A3.T12.1.1.19.18">
<td class="ltx_td ltx_align_center" id="A3.T12.1.1.19.18.1"><span class="ltx_text" id="A3.T12.1.1.19.18.1.1" style="font-size:90%;">ceo</span></td>
<td class="ltx_td ltx_align_center" id="A3.T12.1.1.19.18.2">
<span class="ltx_text" id="A3.T12.1.1.19.18.2.1" style="font-size:90%;">“{}</span><span class="ltx_text ltx_font_italic" id="A3.T12.1.1.19.18.2.2" style="font-size:90%;"> travaille pour le PDG appelé</span><span class="ltx_text" id="A3.T12.1.1.19.18.2.3" style="font-size:90%;">”</span>
</td>
<td class="ltx_td ltx_align_center" id="A3.T12.1.1.19.18.3"><span class="ltx_text" id="A3.T12.1.1.19.18.3.1" style="font-size:90%;">101</span></td>
</tr>
<tr class="ltx_tr" id="A3.T12.1.1.20.19">
<td class="ltx_td ltx_align_center" id="A3.T12.1.1.20.19.1"><span class="ltx_text" id="A3.T12.1.1.20.19.1.1" style="font-size:90%;">job</span></td>
<td class="ltx_td ltx_align_center" id="A3.T12.1.1.20.19.2">
<span class="ltx_text" id="A3.T12.1.1.20.19.2.1" style="font-size:90%;">“{}</span><span class="ltx_text ltx_font_italic" id="A3.T12.1.1.20.19.2.2" style="font-size:90%;"> travaille comme</span><span class="ltx_text" id="A3.T12.1.1.20.19.2.3" style="font-size:90%;">”</span>
</td>
<td class="ltx_td ltx_align_center" id="A3.T12.1.1.20.19.3"><span class="ltx_text" id="A3.T12.1.1.20.19.3.1" style="font-size:90%;">105</span></td>
</tr>
<tr class="ltx_tr" id="A3.T12.1.1.21.20">
<td class="ltx_td ltx_align_center" id="A3.T12.1.1.21.20.1"><span class="ltx_text" id="A3.T12.1.1.21.20.1.1" style="font-size:90%;">mother</span></td>
<td class="ltx_td ltx_align_center" id="A3.T12.1.1.21.20.2">
<span class="ltx_text" id="A3.T12.1.1.21.20.2.1" style="font-size:90%;">“</span><span class="ltx_text ltx_font_italic" id="A3.T12.1.1.21.20.2.2" style="font-size:90%;">Le nom de la mère de </span><span class="ltx_text" id="A3.T12.1.1.21.20.2.3" style="font-size:90%;">{}</span><span class="ltx_text ltx_font_italic" id="A3.T12.1.1.21.20.2.4" style="font-size:90%;"> est</span><span class="ltx_text" id="A3.T12.1.1.21.20.2.5" style="font-size:90%;">”</span>
</td>
<td class="ltx_td ltx_align_center" id="A3.T12.1.1.21.20.3"><span class="ltx_text" id="A3.T12.1.1.21.20.3.1" style="font-size:90%;">100</span></td>
</tr>
<tr class="ltx_tr" id="A3.T12.1.1.22.21">
<td class="ltx_td ltx_align_center" id="A3.T12.1.1.22.21.1"><span class="ltx_text" id="A3.T12.1.1.22.21.1.1" style="font-size:90%;">father</span></td>
<td class="ltx_td ltx_align_center" id="A3.T12.1.1.22.21.2">
<span class="ltx_text" id="A3.T12.1.1.22.21.2.1" style="font-size:90%;">“</span><span class="ltx_text ltx_font_italic" id="A3.T12.1.1.22.21.2.2" style="font-size:90%;">Le nom du père de </span><span class="ltx_text" id="A3.T12.1.1.22.21.2.3" style="font-size:90%;">{}</span><span class="ltx_text ltx_font_italic" id="A3.T12.1.1.22.21.2.4" style="font-size:90%;"> est</span><span class="ltx_text" id="A3.T12.1.1.22.21.2.5" style="font-size:90%;">”</span>
</td>
<td class="ltx_td ltx_align_center" id="A3.T12.1.1.22.21.3"><span class="ltx_text" id="A3.T12.1.1.22.21.3.1" style="font-size:90%;">100</span></td>
</tr>
<tr class="ltx_tr" id="A3.T12.1.1.23.22">
<td class="ltx_td ltx_align_center" id="A3.T12.1.1.23.22.1"><span class="ltx_text" id="A3.T12.1.1.23.22.1.1" style="font-size:90%;">gender</span></td>
<td class="ltx_td ltx_align_center" id="A3.T12.1.1.23.22.2">
<span class="ltx_text" id="A3.T12.1.1.23.22.2.1" style="font-size:90%;">“{}</span><span class="ltx_text ltx_font_italic" id="A3.T12.1.1.23.22.2.2" style="font-size:90%;"> est de sexe</span><span class="ltx_text" id="A3.T12.1.1.23.22.2.3" style="font-size:90%;">”</span>
</td>
<td class="ltx_td ltx_align_center" id="A3.T12.1.1.23.22.3"><span class="ltx_text" id="A3.T12.1.1.23.22.3.1" style="font-size:90%;">3</span></td>
</tr>
<tr class="ltx_tr" id="A3.T12.1.1.24.23">
<td class="ltx_td ltx_align_left ltx_border_t" id="A3.T12.1.1.24.23.1" rowspan="11"><span class="ltx_text" id="A3.T12.1.1.24.23.1.1" style="font-size:90%;">
<span class="ltx_inline-block ltx_transformed_outer" id="A3.T12.1.1.24.23.1.1.1" style="width:6.1pt;height:31.6pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:31.6pt;transform:translate(-12.72pt,-12.72pt) rotate(-90deg) ;">
<span class="ltx_p" id="A3.T12.1.1.24.23.1.1.1.1">German</span>
</span></span></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T12.1.1.24.23.2"><span class="ltx_text" id="A3.T12.1.1.24.23.2.1" style="font-size:90%;">birthplace</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T12.1.1.24.23.3">
<span class="ltx_text" id="A3.T12.1.1.24.23.3.1" style="font-size:90%;">“{}</span><span class="ltx_text ltx_font_italic" id="A3.T12.1.1.24.23.3.2" style="font-size:90%;"> wurde in der Stadt geboren</span><span class="ltx_text" id="A3.T12.1.1.24.23.3.3" style="font-size:90%;">”</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T12.1.1.24.23.4"><span class="ltx_text" id="A3.T12.1.1.24.23.4.1" style="font-size:90%;">242</span></td>
</tr>
<tr class="ltx_tr" id="A3.T12.1.1.25.24">
<td class="ltx_td ltx_align_center" id="A3.T12.1.1.25.24.1"><span class="ltx_text" id="A3.T12.1.1.25.24.1.1" style="font-size:90%;">city</span></td>
<td class="ltx_td ltx_align_center" id="A3.T12.1.1.25.24.2">
<span class="ltx_text" id="A3.T12.1.1.25.24.2.1" style="font-size:90%;">“{}</span><span class="ltx_text ltx_font_italic" id="A3.T12.1.1.25.24.2.2" style="font-size:90%;"> lebt in der Stadt</span><span class="ltx_text" id="A3.T12.1.1.25.24.2.3" style="font-size:90%;">”</span>
</td>
<td class="ltx_td ltx_align_center" id="A3.T12.1.1.25.24.3"><span class="ltx_text" id="A3.T12.1.1.25.24.3.1" style="font-size:90%;">242</span></td>
</tr>
<tr class="ltx_tr" id="A3.T12.1.1.26.25">
<td class="ltx_td ltx_align_center" id="A3.T12.1.1.26.25.1"><span class="ltx_text" id="A3.T12.1.1.26.25.1.1" style="font-size:90%;">country</span></td>
<td class="ltx_td ltx_align_center" id="A3.T12.1.1.26.25.2">
<span class="ltx_text" id="A3.T12.1.1.26.25.2.1" style="font-size:90%;">“{}</span><span class="ltx_text ltx_font_italic" id="A3.T12.1.1.26.25.2.2" style="font-size:90%;"> lebt im Land</span><span class="ltx_text" id="A3.T12.1.1.26.25.2.3" style="font-size:90%;">”</span>
</td>
<td class="ltx_td ltx_align_center" id="A3.T12.1.1.26.25.3"><span class="ltx_text" id="A3.T12.1.1.26.25.3.1" style="font-size:90%;">128</span></td>
</tr>
<tr class="ltx_tr" id="A3.T12.1.1.27.26">
<td class="ltx_td ltx_align_center" id="A3.T12.1.1.27.26.1"><span class="ltx_text" id="A3.T12.1.1.27.26.1.1" style="font-size:90%;">continent</span></td>
<td class="ltx_td ltx_align_center" id="A3.T12.1.1.27.26.2">
<span class="ltx_text" id="A3.T12.1.1.27.26.2.1" style="font-size:90%;">“{}</span><span class="ltx_text ltx_font_italic" id="A3.T12.1.1.27.26.2.2" style="font-size:90%;"> lebt auf dem Kontinent</span><span class="ltx_text" id="A3.T12.1.1.27.26.2.3" style="font-size:90%;">”</span>
</td>
<td class="ltx_td ltx_align_center" id="A3.T12.1.1.27.26.3"><span class="ltx_text" id="A3.T12.1.1.27.26.3.1" style="font-size:90%;">6</span></td>
</tr>
<tr class="ltx_tr" id="A3.T12.1.1.28.27">
<td class="ltx_td ltx_align_center" id="A3.T12.1.1.28.27.1"><span class="ltx_text" id="A3.T12.1.1.28.27.1.1" style="font-size:90%;">language</span></td>
<td class="ltx_td ltx_align_center" id="A3.T12.1.1.28.27.2">
<span class="ltx_text" id="A3.T12.1.1.28.27.2.1" style="font-size:90%;">“{}</span><span class="ltx_text ltx_font_italic" id="A3.T12.1.1.28.27.2.2" style="font-size:90%;"> spricht die Sprache von</span><span class="ltx_text" id="A3.T12.1.1.28.27.2.3" style="font-size:90%;">”</span>
</td>
<td class="ltx_td ltx_align_center" id="A3.T12.1.1.28.27.3"><span class="ltx_text" id="A3.T12.1.1.28.27.3.1" style="font-size:90%;">217</span></td>
</tr>
<tr class="ltx_tr" id="A3.T12.1.1.29.28">
<td class="ltx_td ltx_align_center" id="A3.T12.1.1.29.28.1"><span class="ltx_text" id="A3.T12.1.1.29.28.1.1" style="font-size:90%;">company</span></td>
<td class="ltx_td ltx_align_center" id="A3.T12.1.1.29.28.2">
<span class="ltx_text" id="A3.T12.1.1.29.28.2.1" style="font-size:90%;">“{}</span><span class="ltx_text ltx_font_italic" id="A3.T12.1.1.29.28.2.2" style="font-size:90%;"> arbeitet für das Unternehmen von</span><span class="ltx_text" id="A3.T12.1.1.29.28.2.3" style="font-size:90%;">”</span>
</td>
<td class="ltx_td ltx_align_center" id="A3.T12.1.1.29.28.3"><span class="ltx_text" id="A3.T12.1.1.29.28.3.1" style="font-size:90%;">100</span></td>
</tr>
<tr class="ltx_tr" id="A3.T12.1.1.30.29">
<td class="ltx_td ltx_align_center" id="A3.T12.1.1.30.29.1"><span class="ltx_text" id="A3.T12.1.1.30.29.1.1" style="font-size:90%;">ceo</span></td>
<td class="ltx_td ltx_align_center" id="A3.T12.1.1.30.29.2">
<span class="ltx_text" id="A3.T12.1.1.30.29.2.1" style="font-size:90%;">“{}</span><span class="ltx_text ltx_font_italic" id="A3.T12.1.1.30.29.2.2" style="font-size:90%;"> arbeitet für den CEO namens</span><span class="ltx_text" id="A3.T12.1.1.30.29.2.3" style="font-size:90%;">”</span>
</td>
<td class="ltx_td ltx_align_center" id="A3.T12.1.1.30.29.3"><span class="ltx_text" id="A3.T12.1.1.30.29.3.1" style="font-size:90%;">101</span></td>
</tr>
<tr class="ltx_tr" id="A3.T12.1.1.31.30">
<td class="ltx_td ltx_align_center" id="A3.T12.1.1.31.30.1"><span class="ltx_text" id="A3.T12.1.1.31.30.1.1" style="font-size:90%;">job</span></td>
<td class="ltx_td ltx_align_center" id="A3.T12.1.1.31.30.2">
<span class="ltx_text" id="A3.T12.1.1.31.30.2.1" style="font-size:90%;">“</span><span class="ltx_text ltx_font_italic" id="A3.T12.1.1.31.30.2.2" style="font-size:90%;">Der Beruf von </span><span class="ltx_text" id="A3.T12.1.1.31.30.2.3" style="font-size:90%;">{}</span><span class="ltx_text ltx_font_italic" id="A3.T12.1.1.31.30.2.4" style="font-size:90%;"> ist</span><span class="ltx_text" id="A3.T12.1.1.31.30.2.5" style="font-size:90%;">”</span>
</td>
<td class="ltx_td ltx_align_center" id="A3.T12.1.1.31.30.3"><span class="ltx_text" id="A3.T12.1.1.31.30.3.1" style="font-size:90%;">105</span></td>
</tr>
<tr class="ltx_tr" id="A3.T12.1.1.32.31">
<td class="ltx_td ltx_align_center" id="A3.T12.1.1.32.31.1"><span class="ltx_text" id="A3.T12.1.1.32.31.1.1" style="font-size:90%;">mother</span></td>
<td class="ltx_td ltx_align_center" id="A3.T12.1.1.32.31.2">
<span class="ltx_text" id="A3.T12.1.1.32.31.2.1" style="font-size:90%;">“</span><span class="ltx_text ltx_font_italic" id="A3.T12.1.1.32.31.2.2" style="font-size:90%;">Der Name von </span><span class="ltx_text" id="A3.T12.1.1.32.31.2.3" style="font-size:90%;">{}</span><span class="ltx_text ltx_font_italic" id="A3.T12.1.1.32.31.2.4" style="font-size:90%;">’s Mutter ist</span><span class="ltx_text" id="A3.T12.1.1.32.31.2.5" style="font-size:90%;">”</span>
</td>
<td class="ltx_td ltx_align_center" id="A3.T12.1.1.32.31.3"><span class="ltx_text" id="A3.T12.1.1.32.31.3.1" style="font-size:90%;">100</span></td>
</tr>
<tr class="ltx_tr" id="A3.T12.1.1.33.32">
<td class="ltx_td ltx_align_center" id="A3.T12.1.1.33.32.1"><span class="ltx_text" id="A3.T12.1.1.33.32.1.1" style="font-size:90%;">father</span></td>
<td class="ltx_td ltx_align_center" id="A3.T12.1.1.33.32.2">
<span class="ltx_text" id="A3.T12.1.1.33.32.2.1" style="font-size:90%;">“</span><span class="ltx_text ltx_font_italic" id="A3.T12.1.1.33.32.2.2" style="font-size:90%;">Der Name von </span><span class="ltx_text" id="A3.T12.1.1.33.32.2.3" style="font-size:90%;">{}</span><span class="ltx_text ltx_font_italic" id="A3.T12.1.1.33.32.2.4" style="font-size:90%;">’s Vater ist</span><span class="ltx_text" id="A3.T12.1.1.33.32.2.5" style="font-size:90%;">”</span>
</td>
<td class="ltx_td ltx_align_center" id="A3.T12.1.1.33.32.3"><span class="ltx_text" id="A3.T12.1.1.33.32.3.1" style="font-size:90%;">100</span></td>
</tr>
<tr class="ltx_tr" id="A3.T12.1.1.34.33">
<td class="ltx_td ltx_align_center" id="A3.T12.1.1.34.33.1"><span class="ltx_text" id="A3.T12.1.1.34.33.1.1" style="font-size:90%;">gender</span></td>
<td class="ltx_td ltx_align_center" id="A3.T12.1.1.34.33.2">
<span class="ltx_text" id="A3.T12.1.1.34.33.2.1" style="font-size:90%;">“</span><span class="ltx_text ltx_font_italic" id="A3.T12.1.1.34.33.2.2" style="font-size:90%;">Das Geschlecht von </span><span class="ltx_text" id="A3.T12.1.1.34.33.2.3" style="font-size:90%;">{}</span><span class="ltx_text ltx_font_italic" id="A3.T12.1.1.34.33.2.4" style="font-size:90%;"> ist</span><span class="ltx_text" id="A3.T12.1.1.34.33.2.5" style="font-size:90%;">”</span>
</td>
<td class="ltx_td ltx_align_center" id="A3.T12.1.1.34.33.3"><span class="ltx_text" id="A3.T12.1.1.34.33.3.1" style="font-size:90%;">3</span></td>
</tr>
<tr class="ltx_tr" id="A3.T12.1.1.35.34">
<td class="ltx_td ltx_align_left ltx_border_t" id="A3.T12.1.1.35.34.1" rowspan="11"><span class="ltx_text" id="A3.T12.1.1.35.34.1.1" style="font-size:90%;">
<span class="ltx_inline-block ltx_transformed_outer" id="A3.T12.1.1.35.34.1.1.1" style="width:6.3pt;height:30.6pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:30.6pt;transform:translate(-12.15pt,-12.15pt) rotate(-90deg) ;">
<span class="ltx_p" id="A3.T12.1.1.35.34.1.1.1.1">Chinese</span>
</span></span></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T12.1.1.35.34.2"><span class="ltx_text" id="A3.T12.1.1.35.34.2.1" style="font-size:90%;">birthplace</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T12.1.1.35.34.3">
<span class="ltx_ERROR undefined" id="A3.T12.1.1.35.34.3.1">{CJK}</span><span class="ltx_text" id="A3.T12.1.1.35.34.3.2" style="font-size:90%;">UTF8gbsn“{}</span><span class="ltx_text ltx_font_italic" id="A3.T12.1.1.35.34.3.3" style="font-size:90%;">所出生的城市是</span><span class="ltx_text" id="A3.T12.1.1.35.34.3.4" style="font-size:90%;">”</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T12.1.1.35.34.4"><span class="ltx_text" id="A3.T12.1.1.35.34.4.1" style="font-size:90%;">242</span></td>
</tr>
<tr class="ltx_tr" id="A3.T12.1.1.36.35">
<td class="ltx_td ltx_align_center" id="A3.T12.1.1.36.35.1"><span class="ltx_text" id="A3.T12.1.1.36.35.1.1" style="font-size:90%;">city</span></td>
<td class="ltx_td ltx_align_center" id="A3.T12.1.1.36.35.2">
<span class="ltx_ERROR undefined" id="A3.T12.1.1.36.35.2.1">{CJK}</span><span class="ltx_text" id="A3.T12.1.1.36.35.2.2" style="font-size:90%;">UTF8gbsn“{}</span><span class="ltx_text ltx_font_italic" id="A3.T12.1.1.36.35.2.3" style="font-size:90%;">所居住的城市是</span><span class="ltx_text" id="A3.T12.1.1.36.35.2.4" style="font-size:90%;">”</span>
</td>
<td class="ltx_td ltx_align_center" id="A3.T12.1.1.36.35.3"><span class="ltx_text" id="A3.T12.1.1.36.35.3.1" style="font-size:90%;">242</span></td>
</tr>
<tr class="ltx_tr" id="A3.T12.1.1.37.36">
<td class="ltx_td ltx_align_center" id="A3.T12.1.1.37.36.1"><span class="ltx_text" id="A3.T12.1.1.37.36.1.1" style="font-size:90%;">country</span></td>
<td class="ltx_td ltx_align_center" id="A3.T12.1.1.37.36.2">
<span class="ltx_ERROR undefined" id="A3.T12.1.1.37.36.2.1">{CJK}</span><span class="ltx_text" id="A3.T12.1.1.37.36.2.2" style="font-size:90%;">UTF8gbsn“{}</span><span class="ltx_text ltx_font_italic" id="A3.T12.1.1.37.36.2.3" style="font-size:90%;">所居住的国家是</span><span class="ltx_text" id="A3.T12.1.1.37.36.2.4" style="font-size:90%;">”</span>
</td>
<td class="ltx_td ltx_align_center" id="A3.T12.1.1.37.36.3"><span class="ltx_text" id="A3.T12.1.1.37.36.3.1" style="font-size:90%;">128</span></td>
</tr>
<tr class="ltx_tr" id="A3.T12.1.1.38.37">
<td class="ltx_td ltx_align_center" id="A3.T12.1.1.38.37.1"><span class="ltx_text" id="A3.T12.1.1.38.37.1.1" style="font-size:90%;">continent</span></td>
<td class="ltx_td ltx_align_center" id="A3.T12.1.1.38.37.2">
<span class="ltx_ERROR undefined" id="A3.T12.1.1.38.37.2.1">{CJK}</span><span class="ltx_text" id="A3.T12.1.1.38.37.2.2" style="font-size:90%;">UTF8gbsn“{}</span><span class="ltx_text ltx_font_italic" id="A3.T12.1.1.38.37.2.3" style="font-size:90%;">所居住的大陆是</span><span class="ltx_text" id="A3.T12.1.1.38.37.2.4" style="font-size:90%;">”</span>
</td>
<td class="ltx_td ltx_align_center" id="A3.T12.1.1.38.37.3"><span class="ltx_text" id="A3.T12.1.1.38.37.3.1" style="font-size:90%;">6</span></td>
</tr>
<tr class="ltx_tr" id="A3.T12.1.1.39.38">
<td class="ltx_td ltx_align_center" id="A3.T12.1.1.39.38.1"><span class="ltx_text" id="A3.T12.1.1.39.38.1.1" style="font-size:90%;">language</span></td>
<td class="ltx_td ltx_align_center" id="A3.T12.1.1.39.38.2">
<span class="ltx_ERROR undefined" id="A3.T12.1.1.39.38.2.1">{CJK}</span><span class="ltx_text" id="A3.T12.1.1.39.38.2.2" style="font-size:90%;">UTF8gbsn“{}</span><span class="ltx_text ltx_font_italic" id="A3.T12.1.1.39.38.2.3" style="font-size:90%;">说的语言是</span><span class="ltx_text" id="A3.T12.1.1.39.38.2.4" style="font-size:90%;">”</span>
</td>
<td class="ltx_td ltx_align_center" id="A3.T12.1.1.39.38.3"><span class="ltx_text" id="A3.T12.1.1.39.38.3.1" style="font-size:90%;">217</span></td>
</tr>
<tr class="ltx_tr" id="A3.T12.1.1.40.39">
<td class="ltx_td ltx_align_center" id="A3.T12.1.1.40.39.1"><span class="ltx_text" id="A3.T12.1.1.40.39.1.1" style="font-size:90%;">company</span></td>
<td class="ltx_td ltx_align_center" id="A3.T12.1.1.40.39.2">
<span class="ltx_ERROR undefined" id="A3.T12.1.1.40.39.2.1">{CJK}</span><span class="ltx_text" id="A3.T12.1.1.40.39.2.2" style="font-size:90%;">UTF8gbsn“{}</span><span class="ltx_text ltx_font_italic" id="A3.T12.1.1.40.39.2.3" style="font-size:90%;">工作的公司是</span><span class="ltx_text" id="A3.T12.1.1.40.39.2.4" style="font-size:90%;">”</span>
</td>
<td class="ltx_td ltx_align_center" id="A3.T12.1.1.40.39.3"><span class="ltx_text" id="A3.T12.1.1.40.39.3.1" style="font-size:90%;">100</span></td>
</tr>
<tr class="ltx_tr" id="A3.T12.1.1.41.40">
<td class="ltx_td ltx_align_center" id="A3.T12.1.1.41.40.1"><span class="ltx_text" id="A3.T12.1.1.41.40.1.1" style="font-size:90%;">ceo</span></td>
<td class="ltx_td ltx_align_center" id="A3.T12.1.1.41.40.2">
<span class="ltx_ERROR undefined" id="A3.T12.1.1.41.40.2.1">{CJK}</span><span class="ltx_text" id="A3.T12.1.1.41.40.2.2" style="font-size:90%;">UTF8gbsn“{}</span><span class="ltx_text ltx_font_italic" id="A3.T12.1.1.41.40.2.3" style="font-size:90%;">工作的公司的CEO是</span><span class="ltx_text" id="A3.T12.1.1.41.40.2.4" style="font-size:90%;">”</span>
</td>
<td class="ltx_td ltx_align_center" id="A3.T12.1.1.41.40.3"><span class="ltx_text" id="A3.T12.1.1.41.40.3.1" style="font-size:90%;">101</span></td>
</tr>
<tr class="ltx_tr" id="A3.T12.1.1.42.41">
<td class="ltx_td ltx_align_center" id="A3.T12.1.1.42.41.1"><span class="ltx_text" id="A3.T12.1.1.42.41.1.1" style="font-size:90%;">job</span></td>
<td class="ltx_td ltx_align_center" id="A3.T12.1.1.42.41.2">
<span class="ltx_ERROR undefined" id="A3.T12.1.1.42.41.2.1">{CJK}</span><span class="ltx_text" id="A3.T12.1.1.42.41.2.2" style="font-size:90%;">UTF8gbsn“{}</span><span class="ltx_text ltx_font_italic" id="A3.T12.1.1.42.41.2.3" style="font-size:90%;">的工作是</span><span class="ltx_text" id="A3.T12.1.1.42.41.2.4" style="font-size:90%;">”</span>
</td>
<td class="ltx_td ltx_align_center" id="A3.T12.1.1.42.41.3"><span class="ltx_text" id="A3.T12.1.1.42.41.3.1" style="font-size:90%;">105</span></td>
</tr>
<tr class="ltx_tr" id="A3.T12.1.1.43.42">
<td class="ltx_td ltx_align_center" id="A3.T12.1.1.43.42.1"><span class="ltx_text" id="A3.T12.1.1.43.42.1.1" style="font-size:90%;">mother</span></td>
<td class="ltx_td ltx_align_center" id="A3.T12.1.1.43.42.2">
<span class="ltx_ERROR undefined" id="A3.T12.1.1.43.42.2.1">{CJK}</span><span class="ltx_text" id="A3.T12.1.1.43.42.2.2" style="font-size:90%;">UTF8gbsn“{}</span><span class="ltx_text ltx_font_italic" id="A3.T12.1.1.43.42.2.3" style="font-size:90%;">的母亲的名字是</span><span class="ltx_text" id="A3.T12.1.1.43.42.2.4" style="font-size:90%;">”</span>
</td>
<td class="ltx_td ltx_align_center" id="A3.T12.1.1.43.42.3"><span class="ltx_text" id="A3.T12.1.1.43.42.3.1" style="font-size:90%;">100</span></td>
</tr>
<tr class="ltx_tr" id="A3.T12.1.1.44.43">
<td class="ltx_td ltx_align_center" id="A3.T12.1.1.44.43.1"><span class="ltx_text" id="A3.T12.1.1.44.43.1.1" style="font-size:90%;">father</span></td>
<td class="ltx_td ltx_align_center" id="A3.T12.1.1.44.43.2">
<span class="ltx_ERROR undefined" id="A3.T12.1.1.44.43.2.1">{CJK}</span><span class="ltx_text" id="A3.T12.1.1.44.43.2.2" style="font-size:90%;">UTF8gbsn“{}</span><span class="ltx_text ltx_font_italic" id="A3.T12.1.1.44.43.2.3" style="font-size:90%;">的父亲的名字是</span><span class="ltx_text" id="A3.T12.1.1.44.43.2.4" style="font-size:90%;">”</span>
</td>
<td class="ltx_td ltx_align_center" id="A3.T12.1.1.44.43.3"><span class="ltx_text" id="A3.T12.1.1.44.43.3.1" style="font-size:90%;">100</span></td>
</tr>
<tr class="ltx_tr" id="A3.T12.1.1.45.44">
<td class="ltx_td ltx_align_center" id="A3.T12.1.1.45.44.1"><span class="ltx_text" id="A3.T12.1.1.45.44.1.1" style="font-size:90%;">gender</span></td>
<td class="ltx_td ltx_align_center" id="A3.T12.1.1.45.44.2">
<span class="ltx_ERROR undefined" id="A3.T12.1.1.45.44.2.1">{CJK}</span><span class="ltx_text" id="A3.T12.1.1.45.44.2.2" style="font-size:90%;">UTF8gbsn“{}</span><span class="ltx_text ltx_font_italic" id="A3.T12.1.1.45.44.2.3" style="font-size:90%;">的性别是</span><span class="ltx_text" id="A3.T12.1.1.45.44.2.4" style="font-size:90%;">”</span>
</td>
<td class="ltx_td ltx_align_center" id="A3.T12.1.1.45.44.3"><span class="ltx_text" id="A3.T12.1.1.45.44.3.1" style="font-size:90%;">3</span></td>
</tr>
<tr class="ltx_tr" id="A3.T12.1.1.46.45">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_t" id="A3.T12.1.1.46.45.1" rowspan="11"><span class="ltx_text" id="A3.T12.1.1.46.45.1.1" style="font-size:90%;">
<span class="ltx_inline-block ltx_transformed_outer" id="A3.T12.1.1.46.45.1.1.1" style="width:7.9pt;height:35.2pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:35.2pt;transform:translate(-13.64pt,-12.76pt) rotate(-90deg) ;">
<span class="ltx_p" id="A3.T12.1.1.46.45.1.1.1.1">Japanese</span>
</span></span></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T12.1.1.46.45.2"><span class="ltx_text" id="A3.T12.1.1.46.45.2.1" style="font-size:90%;">birthplace</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T12.1.1.46.45.3">
<span class="ltx_ERROR undefined" id="A3.T12.1.1.46.45.3.1">{CJK}</span><span class="ltx_text" id="A3.T12.1.1.46.45.3.2" style="font-size:90%;">UTF8min“{}</span><span class="ltx_text ltx_font_italic" id="A3.T12.1.1.46.45.3.3" style="font-size:90%;">が生まれた都市は</span><span class="ltx_text" id="A3.T12.1.1.46.45.3.4" style="font-size:90%;">”</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T12.1.1.46.45.4"><span class="ltx_text" id="A3.T12.1.1.46.45.4.1" style="font-size:90%;">242</span></td>
</tr>
<tr class="ltx_tr" id="A3.T12.1.1.47.46">
<td class="ltx_td ltx_align_center" id="A3.T12.1.1.47.46.1"><span class="ltx_text" id="A3.T12.1.1.47.46.1.1" style="font-size:90%;">city</span></td>
<td class="ltx_td ltx_align_center" id="A3.T12.1.1.47.46.2">
<span class="ltx_ERROR undefined" id="A3.T12.1.1.47.46.2.1">{CJK}</span><span class="ltx_text" id="A3.T12.1.1.47.46.2.2" style="font-size:90%;">UTF8min“{}</span><span class="ltx_text ltx_font_italic" id="A3.T12.1.1.47.46.2.3" style="font-size:90%;">が住んでいる都市は</span><span class="ltx_text" id="A3.T12.1.1.47.46.2.4" style="font-size:90%;">”</span>
</td>
<td class="ltx_td ltx_align_center" id="A3.T12.1.1.47.46.3"><span class="ltx_text" id="A3.T12.1.1.47.46.3.1" style="font-size:90%;">242</span></td>
</tr>
<tr class="ltx_tr" id="A3.T12.1.1.48.47">
<td class="ltx_td ltx_align_center" id="A3.T12.1.1.48.47.1"><span class="ltx_text" id="A3.T12.1.1.48.47.1.1" style="font-size:90%;">country</span></td>
<td class="ltx_td ltx_align_center" id="A3.T12.1.1.48.47.2">
<span class="ltx_ERROR undefined" id="A3.T12.1.1.48.47.2.1">{CJK}</span><span class="ltx_text" id="A3.T12.1.1.48.47.2.2" style="font-size:90%;">UTF8min“{}</span><span class="ltx_text ltx_font_italic" id="A3.T12.1.1.48.47.2.3" style="font-size:90%;">が住んでいる国は</span><span class="ltx_text" id="A3.T12.1.1.48.47.2.4" style="font-size:90%;">”</span>
</td>
<td class="ltx_td ltx_align_center" id="A3.T12.1.1.48.47.3"><span class="ltx_text" id="A3.T12.1.1.48.47.3.1" style="font-size:90%;">128</span></td>
</tr>
<tr class="ltx_tr" id="A3.T12.1.1.49.48">
<td class="ltx_td ltx_align_center" id="A3.T12.1.1.49.48.1"><span class="ltx_text" id="A3.T12.1.1.49.48.1.1" style="font-size:90%;">continent</span></td>
<td class="ltx_td ltx_align_center" id="A3.T12.1.1.49.48.2">
<span class="ltx_ERROR undefined" id="A3.T12.1.1.49.48.2.1">{CJK}</span><span class="ltx_text" id="A3.T12.1.1.49.48.2.2" style="font-size:90%;">UTF8min“{}</span><span class="ltx_text ltx_font_italic" id="A3.T12.1.1.49.48.2.3" style="font-size:90%;">が住んでいる大陸は</span><span class="ltx_text" id="A3.T12.1.1.49.48.2.4" style="font-size:90%;">”</span>
</td>
<td class="ltx_td ltx_align_center" id="A3.T12.1.1.49.48.3"><span class="ltx_text" id="A3.T12.1.1.49.48.3.1" style="font-size:90%;">6</span></td>
</tr>
<tr class="ltx_tr" id="A3.T12.1.1.50.49">
<td class="ltx_td ltx_align_center" id="A3.T12.1.1.50.49.1"><span class="ltx_text" id="A3.T12.1.1.50.49.1.1" style="font-size:90%;">language</span></td>
<td class="ltx_td ltx_align_center" id="A3.T12.1.1.50.49.2">
<span class="ltx_ERROR undefined" id="A3.T12.1.1.50.49.2.1">{CJK}</span><span class="ltx_text" id="A3.T12.1.1.50.49.2.2" style="font-size:90%;">UTF8min“{}</span><span class="ltx_text ltx_font_italic" id="A3.T12.1.1.50.49.2.3" style="font-size:90%;">が話している言語は</span><span class="ltx_text" id="A3.T12.1.1.50.49.2.4" style="font-size:90%;">”</span>
</td>
<td class="ltx_td ltx_align_center" id="A3.T12.1.1.50.49.3"><span class="ltx_text" id="A3.T12.1.1.50.49.3.1" style="font-size:90%;">217</span></td>
</tr>
<tr class="ltx_tr" id="A3.T12.1.1.51.50">
<td class="ltx_td ltx_align_center" id="A3.T12.1.1.51.50.1"><span class="ltx_text" id="A3.T12.1.1.51.50.1.1" style="font-size:90%;">company</span></td>
<td class="ltx_td ltx_align_center" id="A3.T12.1.1.51.50.2">
<span class="ltx_ERROR undefined" id="A3.T12.1.1.51.50.2.1">{CJK}</span><span class="ltx_text" id="A3.T12.1.1.51.50.2.2" style="font-size:90%;">UTF8min“{}</span><span class="ltx_text ltx_font_italic" id="A3.T12.1.1.51.50.2.3" style="font-size:90%;">が働いている会社は</span><span class="ltx_text" id="A3.T12.1.1.51.50.2.4" style="font-size:90%;">”</span>
</td>
<td class="ltx_td ltx_align_center" id="A3.T12.1.1.51.50.3"><span class="ltx_text" id="A3.T12.1.1.51.50.3.1" style="font-size:90%;">100</span></td>
</tr>
<tr class="ltx_tr" id="A3.T12.1.1.52.51">
<td class="ltx_td ltx_align_center" id="A3.T12.1.1.52.51.1"><span class="ltx_text" id="A3.T12.1.1.52.51.1.1" style="font-size:90%;">ceo</span></td>
<td class="ltx_td ltx_align_center" id="A3.T12.1.1.52.51.2">
<span class="ltx_ERROR undefined" id="A3.T12.1.1.52.51.2.1">{CJK}</span><span class="ltx_text" id="A3.T12.1.1.52.51.2.2" style="font-size:90%;">UTF8min“{}</span><span class="ltx_text ltx_font_italic" id="A3.T12.1.1.52.51.2.3" style="font-size:90%;">が働いている会社のCEOは</span><span class="ltx_text" id="A3.T12.1.1.52.51.2.4" style="font-size:90%;">”</span>
</td>
<td class="ltx_td ltx_align_center" id="A3.T12.1.1.52.51.3"><span class="ltx_text" id="A3.T12.1.1.52.51.3.1" style="font-size:90%;">101</span></td>
</tr>
<tr class="ltx_tr" id="A3.T12.1.1.53.52">
<td class="ltx_td ltx_align_center" id="A3.T12.1.1.53.52.1"><span class="ltx_text" id="A3.T12.1.1.53.52.1.1" style="font-size:90%;">job</span></td>
<td class="ltx_td ltx_align_center" id="A3.T12.1.1.53.52.2">
<span class="ltx_ERROR undefined" id="A3.T12.1.1.53.52.2.1">{CJK}</span><span class="ltx_text" id="A3.T12.1.1.53.52.2.2" style="font-size:90%;">UTF8min“{}</span><span class="ltx_text ltx_font_italic" id="A3.T12.1.1.53.52.2.3" style="font-size:90%;">の仕事は</span><span class="ltx_text" id="A3.T12.1.1.53.52.2.4" style="font-size:90%;">”</span>
</td>
<td class="ltx_td ltx_align_center" id="A3.T12.1.1.53.52.3"><span class="ltx_text" id="A3.T12.1.1.53.52.3.1" style="font-size:90%;">105</span></td>
</tr>
<tr class="ltx_tr" id="A3.T12.1.1.54.53">
<td class="ltx_td ltx_align_center" id="A3.T12.1.1.54.53.1"><span class="ltx_text" id="A3.T12.1.1.54.53.1.1" style="font-size:90%;">mother</span></td>
<td class="ltx_td ltx_align_center" id="A3.T12.1.1.54.53.2">
<span class="ltx_ERROR undefined" id="A3.T12.1.1.54.53.2.1">{CJK}</span><span class="ltx_text" id="A3.T12.1.1.54.53.2.2" style="font-size:90%;">UTF8min“{}</span><span class="ltx_text ltx_font_italic" id="A3.T12.1.1.54.53.2.3" style="font-size:90%;">の母の名前は</span><span class="ltx_text" id="A3.T12.1.1.54.53.2.4" style="font-size:90%;">”</span>
</td>
<td class="ltx_td ltx_align_center" id="A3.T12.1.1.54.53.3"><span class="ltx_text" id="A3.T12.1.1.54.53.3.1" style="font-size:90%;">100</span></td>
</tr>
<tr class="ltx_tr" id="A3.T12.1.1.55.54">
<td class="ltx_td ltx_align_center" id="A3.T12.1.1.55.54.1"><span class="ltx_text" id="A3.T12.1.1.55.54.1.1" style="font-size:90%;">father</span></td>
<td class="ltx_td ltx_align_center" id="A3.T12.1.1.55.54.2">
<span class="ltx_ERROR undefined" id="A3.T12.1.1.55.54.2.1">{CJK}</span><span class="ltx_text" id="A3.T12.1.1.55.54.2.2" style="font-size:90%;">UTF8min“{}</span><span class="ltx_text ltx_font_italic" id="A3.T12.1.1.55.54.2.3" style="font-size:90%;">の父の名前は</span><span class="ltx_text" id="A3.T12.1.1.55.54.2.4" style="font-size:90%;">”</span>
</td>
<td class="ltx_td ltx_align_center" id="A3.T12.1.1.55.54.3"><span class="ltx_text" id="A3.T12.1.1.55.54.3.1" style="font-size:90%;">100</span></td>
</tr>
<tr class="ltx_tr" id="A3.T12.1.1.56.55">
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T12.1.1.56.55.1"><span class="ltx_text" id="A3.T12.1.1.56.55.1.1" style="font-size:90%;">gender</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T12.1.1.56.55.2">
<span class="ltx_ERROR undefined" id="A3.T12.1.1.56.55.2.1">{CJK}</span><span class="ltx_text" id="A3.T12.1.1.56.55.2.2" style="font-size:90%;">UTF8min“{}</span><span class="ltx_text ltx_font_italic" id="A3.T12.1.1.56.55.2.3" style="font-size:90%;">の性別は</span><span class="ltx_text" id="A3.T12.1.1.56.55.2.4" style="font-size:90%;">”</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T12.1.1.56.55.3"><span class="ltx_text" id="A3.T12.1.1.56.55.3.1" style="font-size:90%;">3</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table lists the various sentence templates used in the cross-language experiments of the research paper.  Each template is designed to test the model's ability to generalize knowledge across different languages. The table provides the knowledge type being tested (e.g., birthplace, city, country), the template in each target language (English, Spanish, French, German, Chinese, Japanese), and the number of distinct entities used for evaluation within each language for that template. The purpose is to systematically explore how the linear correlation between source and target language logits varies across different language pairs and knowledge types.
> <details>
> <summary>read the caption</summary>
> Table 12: Templates used in our experiments (Part 2: Cross Language).
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="A3.T13.4.4">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A3.T13.4.4.5.1">
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="A3.T13.4.4.5.1.1"><span class="ltx_text" id="A3.T13.4.4.5.1.1.1" style="font-size:90%;">Knowledge</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A3.T13.4.4.5.1.2"><span class="ltx_text" id="A3.T13.4.4.5.1.2.1" style="font-size:90%;">Template</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A3.T13.4.4.5.1.3"><span class="ltx_text" id="A3.T13.4.4.5.1.3.1" style="font-size:90%;">Domain Size</span></td>
</tr>
<tr class="ltx_tr" id="A3.T13.4.4.6.2">
<td class="ltx_td ltx_align_left ltx_border_t" id="A3.T13.4.4.6.2.1" rowspan="16"><span class="ltx_text" id="A3.T13.4.4.6.2.1.1" style="font-size:90%;">
<span class="ltx_inline-block ltx_transformed_outer" id="A3.T13.4.4.6.2.1.1.1" style="width:6.3pt;height:24pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:24.0pt;transform:translate(-8.88pt,-8.88pt) rotate(-90deg) ;">
<span class="ltx_p" id="A3.T13.4.4.6.2.1.1.1.1">Simile</span>
</span></span></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T13.4.4.6.2.2"><span class="ltx_text" id="A3.T13.4.4.6.2.2.1" style="font-size:90%;">object_color</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T13.4.4.6.2.3">
<span class="ltx_text" id="A3.T13.4.4.6.2.3.1" style="font-size:90%;">“</span><span class="ltx_text ltx_font_italic" id="A3.T13.4.4.6.2.3.2" style="font-size:90%;">The color of </span><span class="ltx_text" id="A3.T13.4.4.6.2.3.3" style="font-size:90%;">{}</span><span class="ltx_text ltx_font_italic" id="A3.T13.4.4.6.2.3.4" style="font-size:90%;"> is the same as</span><span class="ltx_text" id="A3.T13.4.4.6.2.3.5" style="font-size:90%;">”</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T13.4.4.6.2.4"><span class="ltx_text" id="A3.T13.4.4.6.2.4.1" style="font-size:90%;">85</span></td>
</tr>
<tr class="ltx_tr" id="A3.T13.4.4.7.3">
<td class="ltx_td ltx_align_center" id="A3.T13.4.4.7.3.1"><span class="ltx_text" id="A3.T13.4.4.7.3.1.1" style="font-size:90%;">object_price</span></td>
<td class="ltx_td ltx_align_center" id="A3.T13.4.4.7.3.2">
<span class="ltx_text" id="A3.T13.4.4.7.3.2.1" style="font-size:90%;">“</span><span class="ltx_text ltx_font_italic" id="A3.T13.4.4.7.3.2.2" style="font-size:90%;">The size of </span><span class="ltx_text" id="A3.T13.4.4.7.3.2.3" style="font-size:90%;">{}</span><span class="ltx_text ltx_font_italic" id="A3.T13.4.4.7.3.2.4" style="font-size:90%;"> is the same as</span><span class="ltx_text" id="A3.T13.4.4.7.3.2.5" style="font-size:90%;">”</span>
</td>
<td class="ltx_td ltx_align_center" id="A3.T13.4.4.7.3.3"><span class="ltx_text" id="A3.T13.4.4.7.3.3.1" style="font-size:90%;">85</span></td>
</tr>
<tr class="ltx_tr" id="A3.T13.4.4.8.4">
<td class="ltx_td ltx_align_center" id="A3.T13.4.4.8.4.1"><span class="ltx_text" id="A3.T13.4.4.8.4.1.1" style="font-size:90%;">object_heat</span></td>
<td class="ltx_td ltx_align_center" id="A3.T13.4.4.8.4.2">
<span class="ltx_text" id="A3.T13.4.4.8.4.2.1" style="font-size:90%;">“</span><span class="ltx_text ltx_font_italic" id="A3.T13.4.4.8.4.2.2" style="font-size:90%;">The heat of </span><span class="ltx_text" id="A3.T13.4.4.8.4.2.3" style="font-size:90%;">{}</span><span class="ltx_text ltx_font_italic" id="A3.T13.4.4.8.4.2.4" style="font-size:90%;"> is the same as</span><span class="ltx_text" id="A3.T13.4.4.8.4.2.5" style="font-size:90%;">”</span>
</td>
<td class="ltx_td ltx_align_center" id="A3.T13.4.4.8.4.3"><span class="ltx_text" id="A3.T13.4.4.8.4.3.1" style="font-size:90%;">85</span></td>
</tr>
<tr class="ltx_tr" id="A3.T13.4.4.9.5">
<td class="ltx_td ltx_align_center" id="A3.T13.4.4.9.5.1"><span class="ltx_text" id="A3.T13.4.4.9.5.1.1" style="font-size:90%;">object_genre</span></td>
<td class="ltx_td ltx_align_center" id="A3.T13.4.4.9.5.2">
<span class="ltx_text" id="A3.T13.4.4.9.5.2.1" style="font-size:90%;">“</span><span class="ltx_text ltx_font_italic" id="A3.T13.4.4.9.5.2.2" style="font-size:90%;">The genre of </span><span class="ltx_text" id="A3.T13.4.4.9.5.2.3" style="font-size:90%;">{}</span><span class="ltx_text ltx_font_italic" id="A3.T13.4.4.9.5.2.4" style="font-size:90%;"> is the same as</span><span class="ltx_text" id="A3.T13.4.4.9.5.2.5" style="font-size:90%;">”</span>
</td>
<td class="ltx_td ltx_align_center" id="A3.T13.4.4.9.5.3"><span class="ltx_text" id="A3.T13.4.4.9.5.3.1" style="font-size:90%;">85</span></td>
</tr>
<tr class="ltx_tr" id="A3.T13.4.4.10.6">
<td class="ltx_td ltx_align_center" id="A3.T13.4.4.10.6.1"><span class="ltx_text" id="A3.T13.4.4.10.6.1.1" style="font-size:90%;">object_size</span></td>
<td class="ltx_td ltx_align_center" id="A3.T13.4.4.10.6.2">
<span class="ltx_text" id="A3.T13.4.4.10.6.2.1" style="font-size:90%;">“</span><span class="ltx_text ltx_font_italic" id="A3.T13.4.4.10.6.2.2" style="font-size:90%;">The size of </span><span class="ltx_text" id="A3.T13.4.4.10.6.2.3" style="font-size:90%;">{}</span><span class="ltx_text ltx_font_italic" id="A3.T13.4.4.10.6.2.4" style="font-size:90%;"> is the same as</span><span class="ltx_text" id="A3.T13.4.4.10.6.2.5" style="font-size:90%;">”</span>
</td>
<td class="ltx_td ltx_align_center" id="A3.T13.4.4.10.6.3"><span class="ltx_text" id="A3.T13.4.4.10.6.3.1" style="font-size:90%;">85</span></td>
</tr>
<tr class="ltx_tr" id="A3.T13.4.4.11.7">
<td class="ltx_td ltx_align_center" id="A3.T13.4.4.11.7.1"><span class="ltx_text" id="A3.T13.4.4.11.7.1.1" style="font-size:90%;">simile_color</span></td>
<td class="ltx_td ltx_align_center" id="A3.T13.4.4.11.7.2">
<span class="ltx_text" id="A3.T13.4.4.11.7.2.1" style="font-size:90%;">“</span><span class="ltx_text ltx_font_italic" id="A3.T13.4.4.11.7.2.2" style="font-size:90%;">The color of </span><span class="ltx_text" id="A3.T13.4.4.11.7.2.3" style="font-size:90%;">{}</span><span class="ltx_text ltx_font_italic" id="A3.T13.4.4.11.7.2.4" style="font-size:90%;"> is</span><span class="ltx_text" id="A3.T13.4.4.11.7.2.5" style="font-size:90%;">”</span>
</td>
<td class="ltx_td ltx_align_center" id="A3.T13.4.4.11.7.3"><span class="ltx_text" id="A3.T13.4.4.11.7.3.1" style="font-size:90%;">15</span></td>
</tr>
<tr class="ltx_tr" id="A3.T13.4.4.12.8">
<td class="ltx_td ltx_align_center" id="A3.T13.4.4.12.8.1"><span class="ltx_text" id="A3.T13.4.4.12.8.1.1" style="font-size:90%;">simile_price</span></td>
<td class="ltx_td ltx_align_center" id="A3.T13.4.4.12.8.2">
<span class="ltx_text" id="A3.T13.4.4.12.8.2.1" style="font-size:90%;">“</span><span class="ltx_text ltx_font_italic" id="A3.T13.4.4.12.8.2.2" style="font-size:90%;">The size of </span><span class="ltx_text" id="A3.T13.4.4.12.8.2.3" style="font-size:90%;">{}</span><span class="ltx_text ltx_font_italic" id="A3.T13.4.4.12.8.2.4" style="font-size:90%;"> is</span><span class="ltx_text" id="A3.T13.4.4.12.8.2.5" style="font-size:90%;">”</span>
</td>
<td class="ltx_td ltx_align_center" id="A3.T13.4.4.12.8.3"><span class="ltx_text" id="A3.T13.4.4.12.8.3.1" style="font-size:90%;">2</span></td>
</tr>
<tr class="ltx_tr" id="A3.T13.4.4.13.9">
<td class="ltx_td ltx_align_center" id="A3.T13.4.4.13.9.1"><span class="ltx_text" id="A3.T13.4.4.13.9.1.1" style="font-size:90%;">simile_heat</span></td>
<td class="ltx_td ltx_align_center" id="A3.T13.4.4.13.9.2">
<span class="ltx_text" id="A3.T13.4.4.13.9.2.1" style="font-size:90%;">“</span><span class="ltx_text ltx_font_italic" id="A3.T13.4.4.13.9.2.2" style="font-size:90%;">The heat of </span><span class="ltx_text" id="A3.T13.4.4.13.9.2.3" style="font-size:90%;">{}</span><span class="ltx_text ltx_font_italic" id="A3.T13.4.4.13.9.2.4" style="font-size:90%;"> is</span><span class="ltx_text" id="A3.T13.4.4.13.9.2.5" style="font-size:90%;">”</span>
</td>
<td class="ltx_td ltx_align_center" id="A3.T13.4.4.13.9.3"><span class="ltx_text" id="A3.T13.4.4.13.9.3.1" style="font-size:90%;">4</span></td>
</tr>
<tr class="ltx_tr" id="A3.T13.4.4.14.10">
<td class="ltx_td ltx_align_center" id="A3.T13.4.4.14.10.1"><span class="ltx_text" id="A3.T13.4.4.14.10.1.1" style="font-size:90%;">simile_genre</span></td>
<td class="ltx_td ltx_align_center" id="A3.T13.4.4.14.10.2">
<span class="ltx_text" id="A3.T13.4.4.14.10.2.1" style="font-size:90%;">“</span><span class="ltx_text ltx_font_italic" id="A3.T13.4.4.14.10.2.2" style="font-size:90%;">The genre of </span><span class="ltx_text" id="A3.T13.4.4.14.10.2.3" style="font-size:90%;">{}</span><span class="ltx_text ltx_font_italic" id="A3.T13.4.4.14.10.2.4" style="font-size:90%;"> is</span><span class="ltx_text" id="A3.T13.4.4.14.10.2.5" style="font-size:90%;">”</span>
</td>
<td class="ltx_td ltx_align_center" id="A3.T13.4.4.14.10.3"><span class="ltx_text" id="A3.T13.4.4.14.10.3.1" style="font-size:90%;">22</span></td>
</tr>
<tr class="ltx_tr" id="A3.T13.4.4.15.11">
<td class="ltx_td ltx_align_center" id="A3.T13.4.4.15.11.1"><span class="ltx_text" id="A3.T13.4.4.15.11.1.1" style="font-size:90%;">simile_size</span></td>
<td class="ltx_td ltx_align_center" id="A3.T13.4.4.15.11.2">
<span class="ltx_text" id="A3.T13.4.4.15.11.2.1" style="font-size:90%;">“</span><span class="ltx_text ltx_font_italic" id="A3.T13.4.4.15.11.2.2" style="font-size:90%;">The size of </span><span class="ltx_text" id="A3.T13.4.4.15.11.2.3" style="font-size:90%;">{}</span><span class="ltx_text ltx_font_italic" id="A3.T13.4.4.15.11.2.4" style="font-size:90%;"> is</span><span class="ltx_text" id="A3.T13.4.4.15.11.2.5" style="font-size:90%;">”</span>
</td>
<td class="ltx_td ltx_align_center" id="A3.T13.4.4.15.11.3"><span class="ltx_text" id="A3.T13.4.4.15.11.3.1" style="font-size:90%;">3</span></td>
</tr>
<tr class="ltx_tr" id="A3.T13.4.4.16.12">
<td class="ltx_td ltx_align_center" id="A3.T13.4.4.16.12.1"><span class="ltx_text" id="A3.T13.4.4.16.12.1.1" style="font-size:90%;">simile_taste</span></td>
<td class="ltx_td ltx_align_center" id="A3.T13.4.4.16.12.2">
<span class="ltx_text" id="A3.T13.4.4.16.12.2.1" style="font-size:90%;">“</span><span class="ltx_text ltx_font_italic" id="A3.T13.4.4.16.12.2.2" style="font-size:90%;">The taste of </span><span class="ltx_text" id="A3.T13.4.4.16.12.2.3" style="font-size:90%;">{}</span><span class="ltx_text ltx_font_italic" id="A3.T13.4.4.16.12.2.4" style="font-size:90%;"> is</span><span class="ltx_text" id="A3.T13.4.4.16.12.2.5" style="font-size:90%;">”</span>
</td>
<td class="ltx_td ltx_align_center" id="A3.T13.4.4.16.12.3"><span class="ltx_text" id="A3.T13.4.4.16.12.3.1" style="font-size:90%;">3</span></td>
</tr>
<tr class="ltx_tr" id="A3.T13.4.4.17.13">
<td class="ltx_td ltx_align_center" id="A3.T13.4.4.17.13.1"><span class="ltx_text" id="A3.T13.4.4.17.13.1.1" style="font-size:90%;">name_country</span></td>
<td class="ltx_td ltx_align_center" id="A3.T13.4.4.17.13.2">
<span class="ltx_text" id="A3.T13.4.4.17.13.2.1" style="font-size:90%;">“{}</span><span class="ltx_text ltx_font_italic" id="A3.T13.4.4.17.13.2.2" style="font-size:90%;"> lives in the same country as</span><span class="ltx_text" id="A3.T13.4.4.17.13.2.3" style="font-size:90%;">”</span>
</td>
<td class="ltx_td ltx_align_center" id="A3.T13.4.4.17.13.3"><span class="ltx_text" id="A3.T13.4.4.17.13.3.1" style="font-size:90%;">128</span></td>
</tr>
<tr class="ltx_tr" id="A3.T13.1.1.1">
<td class="ltx_td ltx_align_center" id="A3.T13.1.1.1.2"><span class="ltx_text" id="A3.T13.1.1.1.2.1" style="font-size:90%;">gem_color</span></td>
<td class="ltx_td ltx_align_center" id="A3.T13.1.1.1.3">
<span class="ltx_text" id="A3.T13.1.1.1.3.1" style="font-size:90%;">“</span><span class="ltx_text ltx_font_italic" id="A3.T13.1.1.1.3.2" style="font-size:90%;">The color of </span><span class="ltx_text" id="A3.T13.1.1.1.3.3" style="font-size:90%;">{}</span><span class="ltx_text ltx_font_italic" id="A3.T13.1.1.1.3.4" style="font-size:90%;"> is the same as the gem called</span><span class="ltx_text" id="A3.T13.1.1.1.3.5" style="font-size:90%;">”</span>
</td>
<td class="ltx_td ltx_align_center" id="A3.T13.1.1.1.1"><math alttext="50" class="ltx_Math" display="inline" id="A3.T13.1.1.1.1.m1.1"><semantics id="A3.T13.1.1.1.1.m1.1a"><mn id="A3.T13.1.1.1.1.m1.1.1" mathsize="90%" xref="A3.T13.1.1.1.1.m1.1.1.cmml">50</mn><annotation-xml encoding="MathML-Content" id="A3.T13.1.1.1.1.m1.1b"><cn id="A3.T13.1.1.1.1.m1.1.1.cmml" type="integer" xref="A3.T13.1.1.1.1.m1.1.1">50</cn></annotation-xml><annotation encoding="application/x-tex" id="A3.T13.1.1.1.1.m1.1c">50</annotation><annotation encoding="application/x-llamapun" id="A3.T13.1.1.1.1.m1.1d">50</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="A3.T13.2.2.2">
<td class="ltx_td ltx_align_center" id="A3.T13.2.2.2.2"><span class="ltx_text" id="A3.T13.2.2.2.2.1" style="font-size:90%;">animal_size</span></td>
<td class="ltx_td ltx_align_center" id="A3.T13.2.2.2.3">
<span class="ltx_text" id="A3.T13.2.2.2.3.1" style="font-size:90%;">“</span><span class="ltx_text ltx_font_italic" id="A3.T13.2.2.2.3.2" style="font-size:90%;">The size of </span><span class="ltx_text" id="A3.T13.2.2.2.3.3" style="font-size:90%;">{}</span><span class="ltx_text ltx_font_italic" id="A3.T13.2.2.2.3.4" style="font-size:90%;"> is the same as the animal called</span><span class="ltx_text" id="A3.T13.2.2.2.3.5" style="font-size:90%;">”</span>
</td>
<td class="ltx_td ltx_align_center" id="A3.T13.2.2.2.1"><math alttext="100" class="ltx_Math" display="inline" id="A3.T13.2.2.2.1.m1.1"><semantics id="A3.T13.2.2.2.1.m1.1a"><mn id="A3.T13.2.2.2.1.m1.1.1" mathsize="90%" xref="A3.T13.2.2.2.1.m1.1.1.cmml">100</mn><annotation-xml encoding="MathML-Content" id="A3.T13.2.2.2.1.m1.1b"><cn id="A3.T13.2.2.2.1.m1.1.1.cmml" type="integer" xref="A3.T13.2.2.2.1.m1.1.1">100</cn></annotation-xml><annotation encoding="application/x-tex" id="A3.T13.2.2.2.1.m1.1c">100</annotation><annotation encoding="application/x-llamapun" id="A3.T13.2.2.2.1.m1.1d">100</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="A3.T13.3.3.3">
<td class="ltx_td ltx_align_center" id="A3.T13.3.3.3.2"><span class="ltx_text" id="A3.T13.3.3.3.2.1" style="font-size:90%;">food_taste</span></td>
<td class="ltx_td ltx_align_center" id="A3.T13.3.3.3.3">
<span class="ltx_text" id="A3.T13.3.3.3.3.1" style="font-size:90%;">“{}</span><span class="ltx_text ltx_font_italic" id="A3.T13.3.3.3.3.2" style="font-size:90%;"> has the same taste as the food:</span><span class="ltx_text" id="A3.T13.3.3.3.3.3" style="font-size:90%;">”</span>
</td>
<td class="ltx_td ltx_align_center" id="A3.T13.3.3.3.1"><math alttext="95" class="ltx_Math" display="inline" id="A3.T13.3.3.3.1.m1.1"><semantics id="A3.T13.3.3.3.1.m1.1a"><mn id="A3.T13.3.3.3.1.m1.1.1" mathsize="90%" xref="A3.T13.3.3.3.1.m1.1.1.cmml">95</mn><annotation-xml encoding="MathML-Content" id="A3.T13.3.3.3.1.m1.1b"><cn id="A3.T13.3.3.3.1.m1.1.1.cmml" type="integer" xref="A3.T13.3.3.3.1.m1.1.1">95</cn></annotation-xml><annotation encoding="application/x-tex" id="A3.T13.3.3.3.1.m1.1c">95</annotation><annotation encoding="application/x-llamapun" id="A3.T13.3.3.3.1.m1.1d">95</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="A3.T13.4.4.4">
<td class="ltx_td ltx_align_center" id="A3.T13.4.4.4.2"><span class="ltx_text" id="A3.T13.4.4.4.2.1" style="font-size:90%;">fruit_color</span></td>
<td class="ltx_td ltx_align_center" id="A3.T13.4.4.4.3">
<span class="ltx_text" id="A3.T13.4.4.4.3.1" style="font-size:90%;">“{}</span><span class="ltx_text ltx_font_italic" id="A3.T13.4.4.4.3.2" style="font-size:90%;"> X has the same color as the fruit:</span><span class="ltx_text" id="A3.T13.4.4.4.3.3" style="font-size:90%;">”</span>
</td>
<td class="ltx_td ltx_align_center" id="A3.T13.4.4.4.1"><math alttext="99" class="ltx_Math" display="inline" id="A3.T13.4.4.4.1.m1.1"><semantics id="A3.T13.4.4.4.1.m1.1a"><mn id="A3.T13.4.4.4.1.m1.1.1" mathsize="90%" xref="A3.T13.4.4.4.1.m1.1.1.cmml">99</mn><annotation-xml encoding="MathML-Content" id="A3.T13.4.4.4.1.m1.1b"><cn id="A3.T13.4.4.4.1.m1.1.1.cmml" type="integer" xref="A3.T13.4.4.4.1.m1.1.1">99</cn></annotation-xml><annotation encoding="application/x-tex" id="A3.T13.4.4.4.1.m1.1c">99</annotation><annotation encoding="application/x-llamapun" id="A3.T13.4.4.4.1.m1.1d">99</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="A3.T13.4.4.18.14">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_t" id="A3.T13.4.4.18.14.1" rowspan="4"><span class="ltx_text" id="A3.T13.4.4.18.14.1.1" style="font-size:90%;">
<span class="ltx_inline-block ltx_transformed_outer" id="A3.T13.4.4.18.14.1.1.1" style="width:6.3pt;height:21.3pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:21.3pt;transform:translate(-7.5pt,-7.5pt) rotate(-90deg) ;">
<span class="ltx_p" id="A3.T13.4.4.18.14.1.1.1.1">Math</span>
</span></span></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T13.4.4.18.14.2"><span class="ltx_text" id="A3.T13.4.4.18.14.2.1" style="font-size:90%;">X+N</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T13.4.4.18.14.3">
<span class="ltx_text" id="A3.T13.4.4.18.14.3.1" style="font-size:90%;">“{}</span><span class="ltx_text ltx_font_italic" id="A3.T13.4.4.18.14.3.2" style="font-size:90%;">+N=</span><span class="ltx_text" id="A3.T13.4.4.18.14.3.3" style="font-size:90%;">”</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T13.4.4.18.14.4"><span class="ltx_text" id="A3.T13.4.4.18.14.4.1" style="font-size:90%;">11</span></td>
</tr>
<tr class="ltx_tr" id="A3.T13.4.4.19.15">
<td class="ltx_td ltx_align_center" id="A3.T13.4.4.19.15.1"><span class="ltx_text" id="A3.T13.4.4.19.15.1.1" style="font-size:90%;">X-N</span></td>
<td class="ltx_td ltx_align_center" id="A3.T13.4.4.19.15.2">
<span class="ltx_text" id="A3.T13.4.4.19.15.2.1" style="font-size:90%;">“{}</span><span class="ltx_text ltx_font_italic" id="A3.T13.4.4.19.15.2.2" style="font-size:90%;">-N=</span><span class="ltx_text" id="A3.T13.4.4.19.15.2.3" style="font-size:90%;">”</span>
</td>
<td class="ltx_td ltx_align_center" id="A3.T13.4.4.19.15.3"><span class="ltx_text" id="A3.T13.4.4.19.15.3.1" style="font-size:90%;">11</span></td>
</tr>
<tr class="ltx_tr" id="A3.T13.4.4.20.16">
<td class="ltx_td ltx_align_center" id="A3.T13.4.4.20.16.1"><span class="ltx_text" id="A3.T13.4.4.20.16.1.1" style="font-size:90%;">X*N</span></td>
<td class="ltx_td ltx_align_center" id="A3.T13.4.4.20.16.2">
<span class="ltx_text" id="A3.T13.4.4.20.16.2.1" style="font-size:90%;">“{}</span><span class="ltx_text ltx_font_italic" id="A3.T13.4.4.20.16.2.2" style="font-size:90%;">*N=</span><span class="ltx_text" id="A3.T13.4.4.20.16.2.3" style="font-size:90%;">”</span>
</td>
<td class="ltx_td ltx_align_center" id="A3.T13.4.4.20.16.3"><span class="ltx_text" id="A3.T13.4.4.20.16.3.1" style="font-size:90%;">11</span></td>
</tr>
<tr class="ltx_tr" id="A3.T13.4.4.21.17">
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T13.4.4.21.17.1"><span class="ltx_text" id="A3.T13.4.4.21.17.1.1" style="font-size:90%;">X/N</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T13.4.4.21.17.2">
<span class="ltx_text" id="A3.T13.4.4.21.17.2.1" style="font-size:90%;">“{}</span><span class="ltx_text ltx_font_italic" id="A3.T13.4.4.21.17.2.2" style="font-size:90%;">/N=</span><span class="ltx_text" id="A3.T13.4.4.21.17.2.3" style="font-size:90%;">”</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T13.4.4.21.17.3"><span class="ltx_text" id="A3.T13.4.4.21.17.3.1" style="font-size:90%;">11</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table lists the prompts used in the Simile and Math sections of the experiments.  For Simile, it shows various prompts comparing attributes of different objects (color, price, heat, genre, size) using phrases like “The color of {} is the same as”.  For Math, it displays prompts involving basic arithmetic operations (+, -, *, /) applied to an unknown variable represented by {}. Each prompt is categorized by the knowledge type it tests (object color, object price, etc.) and indicates the size of the domain of possible responses for each prompt.
> <details>
> <summary>read the caption</summary>
> Table 13: Templates used in our experiments (Part 3: Simile and Math).
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="A6.T14.10.10">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A6.T14.10.10.11.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="A6.T14.10.10.11.1.1"><span class="ltx_text" id="A6.T14.10.10.11.1.1.1" style="font-size:90%;">Relation Pair</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A6.T14.10.10.11.1.2"><span class="ltx_text" id="A6.T14.10.10.11.1.2.1" style="font-size:90%;">Fruit-Color</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A6.T14.10.10.11.1.3"><span class="ltx_text" id="A6.T14.10.10.11.1.3.1" style="font-size:90%;">Food-Taste</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A6.T14.10.10.11.1.4"><span class="ltx_text" id="A6.T14.10.10.11.1.4.1" style="font-size:90%;">Gem-Color</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A6.T14.10.10.11.1.5"><span class="ltx_text" id="A6.T14.10.10.11.1.5.1" style="font-size:90%;">Name-Country</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A6.T14.10.10.11.1.6"><span class="ltx_text" id="A6.T14.10.10.11.1.6.1" style="font-size:90%;">Animal-Size</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A6.T14.5.5.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A6.T14.5.5.5.6"><span class="ltx_text" id="A6.T14.5.5.5.6.1" style="font-size:90%;">Correlation</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="A6.T14.1.1.1.1"><math alttext="48.37" class="ltx_Math" display="inline" id="A6.T14.1.1.1.1.m1.1"><semantics id="A6.T14.1.1.1.1.m1.1a"><mn id="A6.T14.1.1.1.1.m1.1.1" mathsize="90%" xref="A6.T14.1.1.1.1.m1.1.1.cmml">48.37</mn><annotation-xml encoding="MathML-Content" id="A6.T14.1.1.1.1.m1.1b"><cn id="A6.T14.1.1.1.1.m1.1.1.cmml" type="float" xref="A6.T14.1.1.1.1.m1.1.1">48.37</cn></annotation-xml><annotation encoding="application/x-tex" id="A6.T14.1.1.1.1.m1.1c">48.37</annotation><annotation encoding="application/x-llamapun" id="A6.T14.1.1.1.1.m1.1d">48.37</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A6.T14.2.2.2.2"><math alttext="46.95" class="ltx_Math" display="inline" id="A6.T14.2.2.2.2.m1.1"><semantics id="A6.T14.2.2.2.2.m1.1a"><mn id="A6.T14.2.2.2.2.m1.1.1" mathsize="90%" xref="A6.T14.2.2.2.2.m1.1.1.cmml">46.95</mn><annotation-xml encoding="MathML-Content" id="A6.T14.2.2.2.2.m1.1b"><cn id="A6.T14.2.2.2.2.m1.1.1.cmml" type="float" xref="A6.T14.2.2.2.2.m1.1.1">46.95</cn></annotation-xml><annotation encoding="application/x-tex" id="A6.T14.2.2.2.2.m1.1c">46.95</annotation><annotation encoding="application/x-llamapun" id="A6.T14.2.2.2.2.m1.1d">46.95</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A6.T14.3.3.3.3"><math alttext="50.48" class="ltx_Math" display="inline" id="A6.T14.3.3.3.3.m1.1"><semantics id="A6.T14.3.3.3.3.m1.1a"><mn id="A6.T14.3.3.3.3.m1.1.1" mathsize="90%" xref="A6.T14.3.3.3.3.m1.1.1.cmml">50.48</mn><annotation-xml encoding="MathML-Content" id="A6.T14.3.3.3.3.m1.1b"><cn id="A6.T14.3.3.3.3.m1.1.1.cmml" type="float" xref="A6.T14.3.3.3.3.m1.1.1">50.48</cn></annotation-xml><annotation encoding="application/x-tex" id="A6.T14.3.3.3.3.m1.1c">50.48</annotation><annotation encoding="application/x-llamapun" id="A6.T14.3.3.3.3.m1.1d">50.48</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A6.T14.4.4.4.4"><math alttext="78.83" class="ltx_Math" display="inline" id="A6.T14.4.4.4.4.m1.1"><semantics id="A6.T14.4.4.4.4.m1.1a"><mn id="A6.T14.4.4.4.4.m1.1.1" mathsize="90%" xref="A6.T14.4.4.4.4.m1.1.1.cmml">78.83</mn><annotation-xml encoding="MathML-Content" id="A6.T14.4.4.4.4.m1.1b"><cn id="A6.T14.4.4.4.4.m1.1.1.cmml" type="float" xref="A6.T14.4.4.4.4.m1.1.1">78.83</cn></annotation-xml><annotation encoding="application/x-tex" id="A6.T14.4.4.4.4.m1.1c">78.83</annotation><annotation encoding="application/x-llamapun" id="A6.T14.4.4.4.4.m1.1d">78.83</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A6.T14.5.5.5.5"><math alttext="69.43" class="ltx_Math" display="inline" id="A6.T14.5.5.5.5.m1.1"><semantics id="A6.T14.5.5.5.5.m1.1a"><mn id="A6.T14.5.5.5.5.m1.1.1" mathsize="90%" xref="A6.T14.5.5.5.5.m1.1.1.cmml">69.43</mn><annotation-xml encoding="MathML-Content" id="A6.T14.5.5.5.5.m1.1b"><cn id="A6.T14.5.5.5.5.m1.1.1.cmml" type="float" xref="A6.T14.5.5.5.5.m1.1.1">69.43</cn></annotation-xml><annotation encoding="application/x-tex" id="A6.T14.5.5.5.5.m1.1c">69.43</annotation><annotation encoding="application/x-llamapun" id="A6.T14.5.5.5.5.m1.1d">69.43</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="A6.T14.10.10.12.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="A6.T14.10.10.12.1.1"><span class="ltx_text" id="A6.T14.10.10.12.1.1.1" style="font-size:90%;">Relation Pair</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A6.T14.10.10.12.1.2"><span class="ltx_text" id="A6.T14.10.10.12.1.2.1" style="font-size:90%;">Object-Genre</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A6.T14.10.10.12.1.3"><span class="ltx_text" id="A6.T14.10.10.12.1.3.1" style="font-size:90%;">Object-Heat</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A6.T14.10.10.12.1.4"><span class="ltx_text" id="A6.T14.10.10.12.1.4.1" style="font-size:90%;">Object-Size</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A6.T14.10.10.12.1.5"><span class="ltx_text" id="A6.T14.10.10.12.1.5.1" style="font-size:90%;">Object-Price</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A6.T14.10.10.12.1.6"><span class="ltx_text" id="A6.T14.10.10.12.1.6.1" style="font-size:90%;">Object-Color</span></th>
</tr>
<tr class="ltx_tr" id="A6.T14.10.10.10">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_t" id="A6.T14.10.10.10.6"><span class="ltx_text" id="A6.T14.10.10.10.6.1" style="font-size:90%;">Correlation</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A6.T14.6.6.6.1"><math alttext="81.92" class="ltx_Math" display="inline" id="A6.T14.6.6.6.1.m1.1"><semantics id="A6.T14.6.6.6.1.m1.1a"><mn id="A6.T14.6.6.6.1.m1.1.1" mathsize="90%" xref="A6.T14.6.6.6.1.m1.1.1.cmml">81.92</mn><annotation-xml encoding="MathML-Content" id="A6.T14.6.6.6.1.m1.1b"><cn id="A6.T14.6.6.6.1.m1.1.1.cmml" type="float" xref="A6.T14.6.6.6.1.m1.1.1">81.92</cn></annotation-xml><annotation encoding="application/x-tex" id="A6.T14.6.6.6.1.m1.1c">81.92</annotation><annotation encoding="application/x-llamapun" id="A6.T14.6.6.6.1.m1.1d">81.92</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A6.T14.7.7.7.2"><math alttext="76.48" class="ltx_Math" display="inline" id="A6.T14.7.7.7.2.m1.1"><semantics id="A6.T14.7.7.7.2.m1.1a"><mn id="A6.T14.7.7.7.2.m1.1.1" mathsize="90%" xref="A6.T14.7.7.7.2.m1.1.1.cmml">76.48</mn><annotation-xml encoding="MathML-Content" id="A6.T14.7.7.7.2.m1.1b"><cn id="A6.T14.7.7.7.2.m1.1.1.cmml" type="float" xref="A6.T14.7.7.7.2.m1.1.1">76.48</cn></annotation-xml><annotation encoding="application/x-tex" id="A6.T14.7.7.7.2.m1.1c">76.48</annotation><annotation encoding="application/x-llamapun" id="A6.T14.7.7.7.2.m1.1d">76.48</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A6.T14.8.8.8.3"><math alttext="84.23" class="ltx_Math" display="inline" id="A6.T14.8.8.8.3.m1.1"><semantics id="A6.T14.8.8.8.3.m1.1a"><mn id="A6.T14.8.8.8.3.m1.1.1" mathsize="90%" xref="A6.T14.8.8.8.3.m1.1.1.cmml">84.23</mn><annotation-xml encoding="MathML-Content" id="A6.T14.8.8.8.3.m1.1b"><cn id="A6.T14.8.8.8.3.m1.1.1.cmml" type="float" xref="A6.T14.8.8.8.3.m1.1.1">84.23</cn></annotation-xml><annotation encoding="application/x-tex" id="A6.T14.8.8.8.3.m1.1c">84.23</annotation><annotation encoding="application/x-llamapun" id="A6.T14.8.8.8.3.m1.1d">84.23</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A6.T14.9.9.9.4"><math alttext="84.23" class="ltx_Math" display="inline" id="A6.T14.9.9.9.4.m1.1"><semantics id="A6.T14.9.9.9.4.m1.1a"><mn id="A6.T14.9.9.9.4.m1.1.1" mathsize="90%" xref="A6.T14.9.9.9.4.m1.1.1.cmml">84.23</mn><annotation-xml encoding="MathML-Content" id="A6.T14.9.9.9.4.m1.1b"><cn id="A6.T14.9.9.9.4.m1.1.1.cmml" type="float" xref="A6.T14.9.9.9.4.m1.1.1">84.23</cn></annotation-xml><annotation encoding="application/x-tex" id="A6.T14.9.9.9.4.m1.1c">84.23</annotation><annotation encoding="application/x-llamapun" id="A6.T14.9.9.9.4.m1.1d">84.23</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A6.T14.10.10.10.5"><math alttext="81.08" class="ltx_Math" display="inline" id="A6.T14.10.10.10.5.m1.1"><semantics id="A6.T14.10.10.10.5.m1.1a"><mn id="A6.T14.10.10.10.5.m1.1.1" mathsize="90%" xref="A6.T14.10.10.10.5.m1.1.1.cmml">81.08</mn><annotation-xml encoding="MathML-Content" id="A6.T14.10.10.10.5.m1.1b"><cn id="A6.T14.10.10.10.5.m1.1.1.cmml" type="float" xref="A6.T14.10.10.10.5.m1.1.1">81.08</cn></annotation-xml><annotation encoding="application/x-tex" id="A6.T14.10.10.10.5.m1.1c">81.08</annotation><annotation encoding="application/x-llamapun" id="A6.T14.10.10.10.5.m1.1d">81.08</annotation></semantics></math></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the Pearson correlation coefficients between the logits of the LLaMA-3-2-3B language model for pairs of simile objects and their attributes.  It shows the strength of linear relationships between the model's predictions for different simile attributes (like color, size, taste) given a simile object. Higher values indicate stronger correlations, suggesting a closer semantic relationship between the attributes within the model's representation.
> <details>
> <summary>read the caption</summary>
> Table 14: Correlation between logits of llama-3.2-3b on simile objects and attributes.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="A9.T15.3.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A9.T15.3.1.1.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="A9.T15.3.1.1.1.1"><span class="ltx_text" id="A9.T15.3.1.1.1.1.1" style="font-size:90%;">Country</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A9.T15.3.1.1.1.2"><span class="ltx_text" id="A9.T15.3.1.1.1.2.1" style="font-size:90%;">Influencing Cities</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A9.T15.3.1.2.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" id="A9.T15.3.1.2.1.1"><span class="ltx_text" id="A9.T15.3.1.2.1.1.1" style="font-size:90%;">Sweden</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="A9.T15.3.1.2.1.2">
<span class="ltx_text ltx_font_bold" id="A9.T15.3.1.2.1.2.1" style="font-size:90%;color:#008080;">Stockholm</span><span class="ltx_text" id="A9.T15.3.1.2.1.2.2" style="font-size:90%;">, Brisbane, Johannesburg, Cardiff, Chicago, Hyderabad, Aleppo, Lima, Rochester, Salem</span>
</td>
</tr>
<tr class="ltx_tr" id="A9.T15.3.1.3.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="A9.T15.3.1.3.2.1"><span class="ltx_text" id="A9.T15.3.1.3.2.1.1" style="font-size:90%;">Cuba</span></th>
<td class="ltx_td ltx_align_center" id="A9.T15.3.1.3.2.2">
<span class="ltx_text ltx_font_bold" id="A9.T15.3.1.3.2.2.1" style="font-size:90%;color:#008080;">Havana</span><span class="ltx_text" id="A9.T15.3.1.3.2.2.2" style="font-size:90%;">, Chicago, Columbus, stockholm, Rochester, Hyderabad, Scarborough, Johannesburg, singapore, Hamburg</span>
</td>
</tr>
<tr class="ltx_tr" id="A9.T15.3.1.4.3">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="A9.T15.3.1.4.3.1"><span class="ltx_text" id="A9.T15.3.1.4.3.1.1" style="font-size:90%;">Switzerland</span></th>
<td class="ltx_td ltx_align_center" id="A9.T15.3.1.4.3.2"><span class="ltx_text" id="A9.T15.3.1.4.3.2.1" style="font-size:90%;">Columbus, Stuttgart, Cardiff, Leicester, Chicago, Brisbane, Saras, stockholm, vegas, Bethlehem</span></td>
</tr>
<tr class="ltx_tr" id="A9.T15.3.1.5.4">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="A9.T15.3.1.5.4.1"><span class="ltx_text" id="A9.T15.3.1.5.4.1.1" style="font-size:90%;">Ghana</span></th>
<td class="ltx_td ltx_align_center" id="A9.T15.3.1.5.4.2"><span class="ltx_text" id="A9.T15.3.1.5.4.2.1" style="font-size:90%;">Winnipeg, Nairobi, Johannesburg, Leicester, Atlanta, Tulsa, Maharashtra, Greenville, Brisbane, Lima</span></td>
</tr>
<tr class="ltx_tr" id="A9.T15.3.1.6.5">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="A9.T15.3.1.6.5.1"><span class="ltx_text" id="A9.T15.3.1.6.5.1.1" style="font-size:90%;">Poland</span></th>
<td class="ltx_td ltx_align_center" id="A9.T15.3.1.6.5.2">
<span class="ltx_text ltx_font_bold" id="A9.T15.3.1.6.5.2.1" style="font-size:90%;color:#008080;">Warsaw</span><span class="ltx_text" id="A9.T15.3.1.6.5.2.2" style="font-size:90%;">, Cardiff, Liverpool, Maharashtra, stockholm, Amsterdam, Atlanta, Kashmir, Perth, Aleppo</span>
</td>
</tr>
<tr class="ltx_tr" id="A9.T15.3.1.7.6">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="A9.T15.3.1.7.6.1"><span class="ltx_text" id="A9.T15.3.1.7.6.1.1" style="font-size:90%;">Turkey</span></th>
<td class="ltx_td ltx_align_center" id="A9.T15.3.1.7.6.2">
<span class="ltx_text ltx_font_bold" id="A9.T15.3.1.7.6.2.1" style="font-size:90%;color:#008080;">Istanbul</span><span class="ltx_text" id="A9.T15.3.1.7.6.2.2" style="font-size:90%;">, Chicago, Toronto, Maharashtra, stockholm, Johannesburg, Cardiff, Lima, Columbus, Ankara</span>
</td>
</tr>
<tr class="ltx_tr" id="A9.T15.3.1.8.7">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="A9.T15.3.1.8.7.1"><span class="ltx_text" id="A9.T15.3.1.8.7.1.1" style="font-size:90%;">Sudan</span></th>
<td class="ltx_td ltx_align_center" id="A9.T15.3.1.8.7.2"><span class="ltx_text" id="A9.T15.3.1.8.7.2.1" style="font-size:90%;">Nairobi, stockholm, Lima, Tulsa, Johannesburg, Maharashtra, Winnipeg, Hyderabad, Wilmington, Kashmir</span></td>
</tr>
<tr class="ltx_tr" id="A9.T15.3.1.9.8">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="A9.T15.3.1.9.8.1"><span class="ltx_text" id="A9.T15.3.1.9.8.1.1" style="font-size:90%;">Romania</span></th>
<td class="ltx_td ltx_align_center" id="A9.T15.3.1.9.8.2">
<span class="ltx_text" id="A9.T15.3.1.9.8.2.1" style="font-size:90%;">Cardiff, Rochester, Johannesburg, </span><span class="ltx_text ltx_font_bold" id="A9.T15.3.1.9.8.2.2" style="font-size:90%;color:#008080;">Budapest</span><span class="ltx_text" id="A9.T15.3.1.9.8.2.3" style="font-size:90%;">, Seattle, Rajasthan, Hyderabad, Chicago, Kyoto, Lima</span>
</td>
</tr>
<tr class="ltx_tr" id="A9.T15.3.1.10.9">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="A9.T15.3.1.10.9.1"><span class="ltx_text" id="A9.T15.3.1.10.9.1.1" style="font-size:90%;">Samoa</span></th>
<td class="ltx_td ltx_align_center" id="A9.T15.3.1.10.9.2"><span class="ltx_text" id="A9.T15.3.1.10.9.2.1" style="font-size:90%;">Maharashtra, Leicester, Winnipeg, Chicago, Honolulu, Brisbane, Nairobi, Hyderabad, Lima, Cardiff</span></td>
</tr>
<tr class="ltx_tr" id="A9.T15.3.1.11.10">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="A9.T15.3.1.11.10.1"><span class="ltx_text" id="A9.T15.3.1.11.10.1.1" style="font-size:90%;">Iceland</span></th>
<td class="ltx_td ltx_align_center" id="A9.T15.3.1.11.10.2"><span class="ltx_text" id="A9.T15.3.1.11.10.2.1" style="font-size:90%;">Cardiff, Leicester, Chicago, Amsterdam, Wilmington, Islamabad, Winnipeg, Kyoto, Hyderabad, stockholm</span></td>
</tr>
<tr class="ltx_tr" id="A9.T15.3.1.12.11">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="A9.T15.3.1.12.11.1"><span class="ltx_text" id="A9.T15.3.1.12.11.1.1" style="font-size:90%;">Nigeria</span></th>
<td class="ltx_td ltx_align_center" id="A9.T15.3.1.12.11.2"><span class="ltx_text" id="A9.T15.3.1.12.11.2.1" style="font-size:90%;">Winnipeg, Nairobi, Maharashtra, Lagos, Johannesburg, Stuttgart, Leicester, Abu, Chicago, Tulsa</span></td>
</tr>
<tr class="ltx_tr" id="A9.T15.3.1.13.12">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="A9.T15.3.1.13.12.1"><span class="ltx_text" id="A9.T15.3.1.13.12.1.1" style="font-size:90%;">Iraq</span></th>
<td class="ltx_td ltx_align_center" id="A9.T15.3.1.13.12.2"><span class="ltx_text" id="A9.T15.3.1.13.12.2.1" style="font-size:90%;">Chicago, Hyderabad, Wilmington, Lima, Baghdad, stockholm, Kashmir, Tulsa, Belfast, singapore</span></td>
</tr>
<tr class="ltx_tr" id="A9.T15.3.1.14.13">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="A9.T15.3.1.14.13.1"><span class="ltx_text" id="A9.T15.3.1.14.13.1.1" style="font-size:90%;">Laos</span></th>
<td class="ltx_td ltx_align_center" id="A9.T15.3.1.14.13.2"><span class="ltx_text" id="A9.T15.3.1.14.13.2.1" style="font-size:90%;">Bangkok, Leicester, Chicago, Kashmir, Tulsa, stockholm, Winnipeg, Lima, Rajasthan, Johannesburg</span></td>
</tr>
<tr class="ltx_tr" id="A9.T15.3.1.15.14">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="A9.T15.3.1.15.14.1"><span class="ltx_text" id="A9.T15.3.1.15.14.1.1" style="font-size:90%;">USSR</span></th>
<td class="ltx_td ltx_align_center" id="A9.T15.3.1.15.14.2">
<span class="ltx_text ltx_font_bold" id="A9.T15.3.1.15.14.2.1" style="font-size:90%;color:#008080;">Moscow</span><span class="ltx_text" id="A9.T15.3.1.15.14.2.2" style="font-size:90%;">, NYC, Midlands, stockholm, Chicago, Cardiff, Maharashtra, Pyongyang, Boulder, Columbus</span>
</td>
</tr>
<tr class="ltx_tr" id="A9.T15.3.1.16.15">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="A9.T15.3.1.16.15.1"><span class="ltx_text" id="A9.T15.3.1.16.15.1.1" style="font-size:90%;">Kosovo</span></th>
<td class="ltx_td ltx_align_center" id="A9.T15.3.1.16.15.2"><span class="ltx_text" id="A9.T15.3.1.16.15.2.1" style="font-size:90%;">Kashmir, Seattle, Leicester, stockholm, Tulsa, Belfast, Mosul, vegas, Rochester, Buenos</span></td>
</tr>
<tr class="ltx_tr" id="A9.T15.3.1.17.16">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="A9.T15.3.1.17.16.1"><span class="ltx_text" id="A9.T15.3.1.17.16.1.1" style="font-size:90%;">China</span></th>
<td class="ltx_td ltx_align_center" id="A9.T15.3.1.17.16.2">
<span class="ltx_text ltx_font_bold" id="A9.T15.3.1.17.16.2.1" style="font-size:90%;color:#008080;">Beijing</span><span class="ltx_text" id="A9.T15.3.1.17.16.2.2" style="font-size:90%;">, </span><span class="ltx_text ltx_font_bold" id="A9.T15.3.1.17.16.2.3" style="font-size:90%;color:#008080;">Shanghai</span><span class="ltx_text" id="A9.T15.3.1.17.16.2.4" style="font-size:90%;">, Hyderabad, Brisbane, Columbus, stockholm, Maharashtra, Amsterdam, Leicester, Hamburg</span>
</td>
</tr>
<tr class="ltx_tr" id="A9.T15.3.1.18.17">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="A9.T15.3.1.18.17.1"><span class="ltx_text" id="A9.T15.3.1.18.17.1.1" style="font-size:90%;">Guatemala</span></th>
<td class="ltx_td ltx_align_center" id="A9.T15.3.1.18.17.2"><span class="ltx_text" id="A9.T15.3.1.18.17.2.1" style="font-size:90%;">Greenville, Tulsa, Leicester, Buenos, Johannesburg, Kashmir, Wilmington, Lima, Chicago, Rochester</span></td>
</tr>
<tr class="ltx_tr" id="A9.T15.3.1.19.18">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="A9.T15.3.1.19.18.1"><span class="ltx_text" id="A9.T15.3.1.19.18.1.1" style="font-size:90%;">Tunisia</span></th>
<td class="ltx_td ltx_align_center" id="A9.T15.3.1.19.18.2"><span class="ltx_text" id="A9.T15.3.1.19.18.2.1" style="font-size:90%;">Johannesburg, stockholm, Hamburg, Columbus, Leicester, Tulsa, Stuttgart, Winnipeg, Cardiff, Maharashtra</span></td>
</tr>
<tr class="ltx_tr" id="A9.T15.3.1.20.19">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="A9.T15.3.1.20.19.1"><span class="ltx_text" id="A9.T15.3.1.20.19.1.1" style="font-size:90%;">Denmark</span></th>
<td class="ltx_td ltx_align_center" id="A9.T15.3.1.20.19.2">
<span class="ltx_text ltx_font_bold" id="A9.T15.3.1.20.19.2.1" style="font-size:90%;color:#008080;">Copenhagen</span><span class="ltx_text" id="A9.T15.3.1.20.19.2.2" style="font-size:90%;">, Cardiff, Leicester, Brisbane, Hyderabad, Atlanta, Saras, Chicago, Hamburg, Salem</span>
</td>
</tr>
<tr class="ltx_tr" id="A9.T15.3.1.21.20">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="A9.T15.3.1.21.20.1"><span class="ltx_text" id="A9.T15.3.1.21.20.1.1" style="font-size:90%;">Nicaragua</span></th>
<td class="ltx_td ltx_align_center" id="A9.T15.3.1.21.20.2"><span class="ltx_text" id="A9.T15.3.1.21.20.2.1" style="font-size:90%;">Nairobi, Bangkok, Rochester, Leicester, Amsterdam, Kerala, Maharashtra, Belfast, Winnipeg, Chicago</span></td>
</tr>
<tr class="ltx_tr" id="A9.T15.3.1.22.21">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="A9.T15.3.1.22.21.1"><span class="ltx_text" id="A9.T15.3.1.22.21.1.1" style="font-size:90%;">Türkiye</span></th>
<td class="ltx_td ltx_align_center" id="A9.T15.3.1.22.21.2">
<span class="ltx_text" id="A9.T15.3.1.22.21.2.1" style="font-size:90%;">Maharashtra, München, Seattle, </span><span class="ltx_text ltx_font_bold" id="A9.T15.3.1.22.21.2.2" style="font-size:90%;color:#008080;">İstanbul</span><span class="ltx_text" id="A9.T15.3.1.22.21.2.3" style="font-size:90%;">, stockholm, Jakarta, Istanbul, Toronto, Milwaukee, Kyoto</span>
</td>
</tr>
<tr class="ltx_tr" id="A9.T15.3.1.23.22">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="A9.T15.3.1.23.22.1"><span class="ltx_text" id="A9.T15.3.1.23.22.1.1" style="font-size:90%;">Bosnia</span></th>
<td class="ltx_td ltx_align_center" id="A9.T15.3.1.23.22.2"><span class="ltx_text" id="A9.T15.3.1.23.22.2.1" style="font-size:90%;">Hyderabad, Islamabad, Belfast, Johannesburg, Jakarta, Cardiff, Rochester, Kashmir, Leicester, Lima</span></td>
</tr>
<tr class="ltx_tr" id="A9.T15.3.1.24.23">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="A9.T15.3.1.24.23.1"><span class="ltx_text" id="A9.T15.3.1.24.23.1.1" style="font-size:90%;">Netherlands</span></th>
<td class="ltx_td ltx_align_center" id="A9.T15.3.1.24.23.2">
<span class="ltx_text ltx_font_bold" id="A9.T15.3.1.24.23.2.1" style="font-size:90%;color:#008080;">Amsterdam</span><span class="ltx_text" id="A9.T15.3.1.24.23.2.2" style="font-size:90%;">, Cardiff, Midlands, Columbus, Karachi, stockholm, Nottingham, Maharashtra, Saras, Wilmington</span>
</td>
</tr>
<tr class="ltx_tr" id="A9.T15.3.1.25.24">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="A9.T15.3.1.25.24.1"><span class="ltx_text" id="A9.T15.3.1.25.24.1.1" style="font-size:90%;">Malaysia</span></th>
<td class="ltx_td ltx_align_center" id="A9.T15.3.1.25.24.2">
<span class="ltx_text" id="A9.T15.3.1.25.24.2.1" style="font-size:90%;">Leicester, </span><span class="ltx_text ltx_font_bold" id="A9.T15.3.1.25.24.2.2" style="font-size:90%;color:#008080;">Kuala</span><span class="ltx_text" id="A9.T15.3.1.25.24.2.3" style="font-size:90%;">, Cardiff, Hamburg, Maharashtra, Baltimore, Chicago, Columbus, Johannesburg, Hyderabad</span>
</td>
</tr>
<tr class="ltx_tr" id="A9.T15.3.1.26.25">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="A9.T15.3.1.26.25.1"><span class="ltx_text" id="A9.T15.3.1.26.25.1.1" style="font-size:90%;">Venezuela</span></th>
<td class="ltx_td ltx_align_center" id="A9.T15.3.1.26.25.2"><span class="ltx_text" id="A9.T15.3.1.26.25.2.1" style="font-size:90%;">Wilmington, vegas, Cardiff, Maharashtra, Rochester, Brisbane, stockholm, Buenos, Lima, Tulsa</span></td>
</tr>
<tr class="ltx_tr" id="A9.T15.3.1.27.26">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="A9.T15.3.1.27.26.1"><span class="ltx_text" id="A9.T15.3.1.27.26.1.1" style="font-size:90%;">Sri</span></th>
<td class="ltx_td ltx_align_center" id="A9.T15.3.1.27.26.2"><span class="ltx_text" id="A9.T15.3.1.27.26.2.1" style="font-size:90%;">Leicester, Atlanta, Kashmir, Rajasthan, Nairobi, Cardiff, stockholm, Lima, Maharashtra, Islamabad</span></td>
</tr>
<tr class="ltx_tr" id="A9.T15.3.1.28.27">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="A9.T15.3.1.28.27.1"><span class="ltx_text" id="A9.T15.3.1.28.27.1.1" style="font-size:90%;">Ireland</span></th>
<td class="ltx_td ltx_align_center" id="A9.T15.3.1.28.27.2">
<span class="ltx_text ltx_font_bold" id="A9.T15.3.1.28.27.2.1" style="font-size:90%;color:#008080;">Dublin</span><span class="ltx_text" id="A9.T15.3.1.28.27.2.2" style="font-size:90%;">, Cardiff, Belfast, Leicester, Tehran, Johannesburg, Stuttgart, Aleppo, Bethlehem, Hyderabad</span>
</td>
</tr>
<tr class="ltx_tr" id="A9.T15.3.1.29.28">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="A9.T15.3.1.29.28.1"><span class="ltx_text" id="A9.T15.3.1.29.28.1.1" style="font-size:90%;">Liberia</span></th>
<td class="ltx_td ltx_align_center" id="A9.T15.3.1.29.28.2"><span class="ltx_text" id="A9.T15.3.1.29.28.2.1" style="font-size:90%;">Leicester, Winnipeg, Nairobi, Johannesburg, Chicago, Kerala, Rochester, Maharashtra, Atlanta, Greenville</span></td>
</tr>
<tr class="ltx_tr" id="A9.T15.3.1.30.29">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="A9.T15.3.1.30.29.1"><span class="ltx_text" id="A9.T15.3.1.30.29.1.1" style="font-size:90%;">Afghanistan</span></th>
<td class="ltx_td ltx_align_center" id="A9.T15.3.1.30.29.2">
<span class="ltx_text ltx_font_bold" id="A9.T15.3.1.30.29.2.1" style="font-size:90%;color:#008080;">Kabul</span><span class="ltx_text" id="A9.T15.3.1.30.29.2.2" style="font-size:90%;">, Cardiff, Islamabad, stockholm, Tulsa, Chicago, Maharashtra, Kashmir, Rajasthan, Leicester</span>
</td>
</tr>
<tr class="ltx_tr" id="A9.T15.3.1.31.30">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="A9.T15.3.1.31.30.1"><span class="ltx_text" id="A9.T15.3.1.31.30.1.1" style="font-size:90%;">America</span></th>
<td class="ltx_td ltx_align_center" id="A9.T15.3.1.31.30.2">
<span class="ltx_text" id="A9.T15.3.1.31.30.2.1" style="font-size:90%;">Columbus, </span><span class="ltx_text ltx_font_bold" id="A9.T15.3.1.31.30.2.2" style="font-size:90%;color:#008080;">Chicago</span><span class="ltx_text" id="A9.T15.3.1.31.30.2.3" style="font-size:90%;">, Belfast, Sofia, Hyderabad, </span><span class="ltx_text ltx_font_bold" id="A9.T15.3.1.31.30.2.4" style="font-size:90%;color:#008080;">Seattle</span><span class="ltx_text" id="A9.T15.3.1.31.30.2.5" style="font-size:90%;">, Cardiff, Johannesburg, Maharashtra, Moscow</span>
</td>
</tr>
<tr class="ltx_tr" id="A9.T15.3.1.32.31">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="A9.T15.3.1.32.31.1"><span class="ltx_text" id="A9.T15.3.1.32.31.1.1" style="font-size:90%;">Austria</span></th>
<td class="ltx_td ltx_align_center" id="A9.T15.3.1.32.31.2">
<span class="ltx_text" id="A9.T15.3.1.32.31.2.1" style="font-size:90%;">Cardiff, </span><span class="ltx_text ltx_font_bold" id="A9.T15.3.1.32.31.2.2" style="font-size:90%;color:#008080;">Vienna</span><span class="ltx_text" id="A9.T15.3.1.32.31.2.3" style="font-size:90%;">, Hamburg, Hyderabad, Leicester, Bethlehem, Stuttgart, stockholm, Columbus, Rajasthan</span>
</td>
</tr>
<tr class="ltx_tr" id="A9.T15.3.1.33.32">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="A9.T15.3.1.33.32.1"><span class="ltx_text" id="A9.T15.3.1.33.32.1.1" style="font-size:90%;">Scotland</span></th>
<td class="ltx_td ltx_align_center" id="A9.T15.3.1.33.32.2">
<span class="ltx_text" id="A9.T15.3.1.33.32.2.1" style="font-size:90%;">Cardiff, Glasgow, </span><span class="ltx_text ltx_font_bold" id="A9.T15.3.1.33.32.2.2" style="font-size:90%;color:#008080;">Edinburgh</span><span class="ltx_text" id="A9.T15.3.1.33.32.2.3" style="font-size:90%;">, Stuttgart, stockholm, Belfast, Leicester, Columbus, Maharashtra, Lima</span>
</td>
</tr>
<tr class="ltx_tr" id="A9.T15.3.1.34.33">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="A9.T15.3.1.34.33.1"><span class="ltx_text" id="A9.T15.3.1.34.33.1.1" style="font-size:90%;">Libya</span></th>
<td class="ltx_td ltx_align_center" id="A9.T15.3.1.34.33.2"><span class="ltx_text" id="A9.T15.3.1.34.33.2.1" style="font-size:90%;">Chicago, stockholm, Columbus, Leicester, Aleppo, Cardiff, Mosul, Lima, Wilmington, Johannesburg</span></td>
</tr>
<tr class="ltx_tr" id="A9.T15.3.1.35.34">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="A9.T15.3.1.35.34.1"><span class="ltx_text" id="A9.T15.3.1.35.34.1.1" style="font-size:90%;">Uruguay</span></th>
<td class="ltx_td ltx_align_center" id="A9.T15.3.1.35.34.2"><span class="ltx_text" id="A9.T15.3.1.35.34.2.1" style="font-size:90%;">Buenos, Seattle, Hyderabad, Maharashtra, Hamburg, Johannesburg, Wilmington, Leicester, Columbus, Cardiff</span></td>
</tr>
<tr class="ltx_tr" id="A9.T15.3.1.36.35">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="A9.T15.3.1.36.35.1"><span class="ltx_text" id="A9.T15.3.1.36.35.1.1" style="font-size:90%;">Bangladesh</span></th>
<td class="ltx_td ltx_align_center" id="A9.T15.3.1.36.35.2"><span class="ltx_text" id="A9.T15.3.1.36.35.2.1" style="font-size:90%;">Winnipeg, Cardiff, Leicester, Maharashtra, Tulsa, Atlanta, Chicago, Bangalore, Islamabad, Kashmir</span></td>
</tr>
<tr class="ltx_tr" id="A9.T15.3.1.37.36">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="A9.T15.3.1.37.36.1"><span class="ltx_text" id="A9.T15.3.1.37.36.1.1" style="font-size:90%;">Bahrain</span></th>
<td class="ltx_td ltx_align_center" id="A9.T15.3.1.37.36.2"><span class="ltx_text" id="A9.T15.3.1.37.36.2.1" style="font-size:90%;">Leicester, Chicago, Brisbane, Kashmir, Lima, Riyadh, Dubai, Wilmington, Atlanta, Saras</span></td>
</tr>
<tr class="ltx_tr" id="A9.T15.3.1.38.37">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="A9.T15.3.1.38.37.1"><span class="ltx_text" id="A9.T15.3.1.38.37.1.1" style="font-size:90%;">Pakistan</span></th>
<td class="ltx_td ltx_align_center" id="A9.T15.3.1.38.37.2">
<span class="ltx_text ltx_font_bold" id="A9.T15.3.1.38.37.2.1" style="font-size:90%;color:#008080;">Islamabad</span><span class="ltx_text" id="A9.T15.3.1.38.37.2.2" style="font-size:90%;">, Cardiff, Jakarta, Karachi, Tulsa, Leicester, Winnipeg, Atlanta, Maharashtra, Wilmington</span>
</td>
</tr>
<tr class="ltx_tr" id="A9.T15.3.1.39.38">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="A9.T15.3.1.39.38.1"><span class="ltx_text" id="A9.T15.3.1.39.38.1.1" style="font-size:90%;">Fiji</span></th>
<td class="ltx_td ltx_align_center" id="A9.T15.3.1.39.38.2"><span class="ltx_text" id="A9.T15.3.1.39.38.2.1" style="font-size:90%;">Lima, Leicester, Fargo, Kashmir, Brisbane, Winnipeg, Johannesburg, Cardiff, Tulsa, Edinburgh</span></td>
</tr>
<tr class="ltx_tr" id="A9.T15.3.1.40.39">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="A9.T15.3.1.40.39.1"><span class="ltx_text" id="A9.T15.3.1.40.39.1.1" style="font-size:90%;">Cambodia</span></th>
<td class="ltx_td ltx_align_center" id="A9.T15.3.1.40.39.2"><span class="ltx_text" id="A9.T15.3.1.40.39.2.1" style="font-size:90%;">Bangkok, Tulsa, Leicester, Cardiff, stockholm, Kashmir, Johannesburg, Wilmington, Kabul, Lima</span></td>
</tr>
<tr class="ltx_tr" id="A9.T15.3.1.41.40">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="A9.T15.3.1.41.40.1"><span class="ltx_text" id="A9.T15.3.1.41.40.1.1" style="font-size:90%;">Singapore</span></th>
<td class="ltx_td ltx_align_center" id="A9.T15.3.1.41.40.2">
<span class="ltx_text ltx_font_bold" id="A9.T15.3.1.41.40.2.1" style="font-size:90%;color:#008080;">singapore</span><span class="ltx_text" id="A9.T15.3.1.41.40.2.2" style="font-size:90%;">, Chicago, Leicester, Brisbane, Hamburg, Columbus, Atlanta, Kashmir, Johannesburg, Cardiff</span>
</td>
</tr>
<tr class="ltx_tr" id="A9.T15.3.1.42.41">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="A9.T15.3.1.42.41.1"><span class="ltx_text" id="A9.T15.3.1.42.41.1.1" style="font-size:90%;">Macedonia</span></th>
<td class="ltx_td ltx_align_center" id="A9.T15.3.1.42.41.2"><span class="ltx_text" id="A9.T15.3.1.42.41.2.1" style="font-size:90%;">Leicester, Stuttgart, Winnipeg, Rochester, Kashmir, Johannesburg, Jakarta, Maharashtra, Budapest, Lima</span></td>
</tr>
<tr class="ltx_tr" id="A9.T15.3.1.43.42">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="A9.T15.3.1.43.42.1"><span class="ltx_text" id="A9.T15.3.1.43.42.1.1" style="font-size:90%;">Mongolia</span></th>
<td class="ltx_td ltx_align_center" id="A9.T15.3.1.43.42.2"><span class="ltx_text" id="A9.T15.3.1.43.42.2.1" style="font-size:90%;">Winnipeg, Chattanooga, Leicester, Lima, Cardiff, Kyoto, Maharashtra, Johannesburg, Rajasthan, Hamburg</span></td>
</tr>
<tr class="ltx_tr" id="A9.T15.3.1.44.43">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="A9.T15.3.1.44.43.1"><span class="ltx_text" id="A9.T15.3.1.44.43.1.1" style="font-size:90%;">Peru</span></th>
<td class="ltx_td ltx_align_center" id="A9.T15.3.1.44.43.2">
<span class="ltx_text ltx_font_bold" id="A9.T15.3.1.44.43.2.1" style="font-size:90%;color:#008080;">Lima</span><span class="ltx_text" id="A9.T15.3.1.44.43.2.2" style="font-size:90%;">, Perth, Maharashtra, Winnipeg, Leicester, Chattanooga, Seattle, Hyderabad, Nairobi, Chicago</span>
</td>
</tr>
<tr class="ltx_tr" id="A9.T15.3.1.45.44">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="A9.T15.3.1.45.44.1"><span class="ltx_text" id="A9.T15.3.1.45.44.1.1" style="font-size:90%;">Myanmar</span></th>
<td class="ltx_td ltx_align_center" id="A9.T15.3.1.45.44.2"><span class="ltx_text" id="A9.T15.3.1.45.44.2.1" style="font-size:90%;">Bangkok, Cardiff, Tulsa, Leicester, Winnipeg, Kashmir, Maharashtra, Kyoto, Lima, Chicago</span></td>
</tr>
<tr class="ltx_tr" id="A9.T15.3.1.46.45">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="A9.T15.3.1.46.45.1"><span class="ltx_text" id="A9.T15.3.1.46.45.1.1" style="font-size:90%;">Trinidad</span></th>
<td class="ltx_td ltx_align_center" id="A9.T15.3.1.46.45.2"><span class="ltx_text" id="A9.T15.3.1.46.45.2.1" style="font-size:90%;">Leicester, Cardiff, Maharashtra, Brisbane, Rochester, Tulsa, Winnipeg, Abu, vegas, Johannesburg</span></td>
</tr>
<tr class="ltx_tr" id="A9.T15.3.1.47.46">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="A9.T15.3.1.47.46.1"><span class="ltx_text" id="A9.T15.3.1.47.46.1.1" style="font-size:90%;">Colombia</span></th>
<td class="ltx_td ltx_align_center" id="A9.T15.3.1.47.46.2"><span class="ltx_text" id="A9.T15.3.1.47.46.2.1" style="font-size:90%;">Maharashtra, Columbus, Lima, Seattle, Rochester, Wilmington, Johannesburg, Stuttgart, Amsterdam, Hyderabad</span></td>
</tr>
<tr class="ltx_tr" id="A9.T15.3.1.48.47">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="A9.T15.3.1.48.47.1"><span class="ltx_text" id="A9.T15.3.1.48.47.1.1" style="font-size:90%;">Maurit</span></th>
<td class="ltx_td ltx_align_center" id="A9.T15.3.1.48.47.2"><span class="ltx_text" id="A9.T15.3.1.48.47.2.1" style="font-size:90%;">Winnipeg, Leicester, Johannesburg, Edinburgh, Cardiff, Chicago, Stuttgart, stockholm, Moscow, Wilmington</span></td>
</tr>
<tr class="ltx_tr" id="A9.T15.3.1.49.48">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="A9.T15.3.1.49.48.1"><span class="ltx_text" id="A9.T15.3.1.49.48.1.1" style="font-size:90%;">Iran</span></th>
<td class="ltx_td ltx_align_center" id="A9.T15.3.1.49.48.2">
<span class="ltx_text ltx_font_bold" id="A9.T15.3.1.49.48.2.1" style="font-size:90%;color:#008080;">Tehran</span><span class="ltx_text" id="A9.T15.3.1.49.48.2.2" style="font-size:90%;">, Cardiff, Lima, Kashmir, Hyderabad, Leicester, Aleppo, Chicago, Stuttgart, Hamburg</span>
</td>
</tr>
<tr class="ltx_tr" id="A9.T15.3.1.50.49">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="A9.T15.3.1.50.49.1"><span class="ltx_text" id="A9.T15.3.1.50.49.1.1" style="font-size:90%;">India</span></th>
<td class="ltx_td ltx_align_center" id="A9.T15.3.1.50.49.2"><span class="ltx_text" id="A9.T15.3.1.50.49.2.1" style="font-size:90%;">Indianapolis, Cardiff, Maharashtra, Chicago, Hyderabad, Leicester, Lima, Columbus, Winnipeg, stockholm</span></td>
</tr>
<tr class="ltx_tr" id="A9.T15.3.1.51.50">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="A9.T15.3.1.51.50.1"><span class="ltx_text" id="A9.T15.3.1.51.50.1.1" style="font-size:90%;">Spain</span></th>
<td class="ltx_td ltx_align_center" id="A9.T15.3.1.51.50.2">
<span class="ltx_text ltx_font_bold" id="A9.T15.3.1.51.50.2.1" style="font-size:90%;color:#008080;">Madrid</span><span class="ltx_text" id="A9.T15.3.1.51.50.2.2" style="font-size:90%;">, Hyderabad, stockholm, Spokane, Cardiff, Amsterdam, Rome, Barcelona, Dallas, Johannesburg</span>
</td>
</tr>
<tr class="ltx_tr" id="A9.T15.3.1.52.51">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="A9.T15.3.1.52.51.1"><span class="ltx_text" id="A9.T15.3.1.52.51.1.1" style="font-size:90%;">Honduras</span></th>
<td class="ltx_td ltx_align_center" id="A9.T15.3.1.52.51.2"><span class="ltx_text" id="A9.T15.3.1.52.51.2.1" style="font-size:90%;">Wilmington, Winnipeg, Buenos, Hamburg, Nairobi, stockholm, Johannesburg, Amsterdam, Columbus, Lima</span></td>
</tr>
<tr class="ltx_tr" id="A9.T15.3.1.53.52">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_bb" id="A9.T15.3.1.53.52.1"><span class="ltx_text" id="A9.T15.3.1.53.52.1.1" style="font-size:90%;">USA</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A9.T15.3.1.53.52.2">
<span class="ltx_text ltx_font_bold" id="A9.T15.3.1.53.52.2.1" style="font-size:90%;color:#008080;">NYC</span><span class="ltx_text" id="A9.T15.3.1.53.52.2.2" style="font-size:90%;">, Moscow, Columbus, Midlands, </span><span class="ltx_text ltx_font_bold" id="A9.T15.3.1.53.52.2.3" style="font-size:90%;color:#008080;">Chicago</span><span class="ltx_text" id="A9.T15.3.1.53.52.2.4" style="font-size:90%;">, Sofia, Karnataka, Karachi, Cardiff, Sevilla</span>
</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the top cities that most strongly influence the prediction of a given country in a language model's next-token prediction.  For each country, the listed cities represent those with the highest weights in the model's internal linear transformation, reflecting the strongest learned associations between city and country.
> <details>
> <summary>read the caption</summary>
> Table 15: The most influencing cities of counties in the City→→\rightarrow→Country correlation.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="A9.T16.3.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A9.T16.3.1.1.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A9.T16.3.1.1.1.1"><span class="ltx_text" id="A9.T16.3.1.1.1.1.1" style="font-size:90%;">Father</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A9.T16.3.1.1.1.2"><span class="ltx_text" id="A9.T16.3.1.1.1.2.1" style="font-size:90%;">Influencing Mothers</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A9.T16.3.1.2.1">
<td class="ltx_td ltx_align_center ltx_border_t" id="A9.T16.3.1.2.1.1"><span class="ltx_text" id="A9.T16.3.1.2.1.1.1" style="font-size:90%;">Omar</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A9.T16.3.1.2.1.2"><span class="ltx_text" id="A9.T16.3.1.2.1.2.1" style="font-size:90%;">Olivia, Nora, Sara, Sofia, Naomi, Diana, Uma, Rosa, Eden, Jade</span></td>
</tr>
<tr class="ltx_tr" id="A9.T16.3.1.3.2">
<td class="ltx_td ltx_align_center" id="A9.T16.3.1.3.2.1"><span class="ltx_text" id="A9.T16.3.1.3.2.1.1" style="font-size:90%;">Victor</span></td>
<td class="ltx_td ltx_align_center" id="A9.T16.3.1.3.2.2"><span class="ltx_text" id="A9.T16.3.1.3.2.2.1" style="font-size:90%;">Victoria, Sofia, Maria, Savannah, Sophie, Uma, Sonia, Angela, Grace, Ivy</span></td>
</tr>
<tr class="ltx_tr" id="A9.T16.3.1.4.3">
<td class="ltx_td ltx_align_center" id="A9.T16.3.1.4.3.1"><span class="ltx_text" id="A9.T16.3.1.4.3.1.1" style="font-size:90%;">Andre</span></td>
<td class="ltx_td ltx_align_center" id="A9.T16.3.1.4.3.2"><span class="ltx_text" id="A9.T16.3.1.4.3.2.1" style="font-size:90%;">Angela, Sofia, Sophie, Savannah, Maria, Rebecca, Ivy, Clara, Chloe, Nina</span></td>
</tr>
<tr class="ltx_tr" id="A9.T16.3.1.5.4">
<td class="ltx_td ltx_align_center" id="A9.T16.3.1.5.4.1"><span class="ltx_text" id="A9.T16.3.1.5.4.1.1" style="font-size:90%;">Julio</span></td>
<td class="ltx_td ltx_align_center" id="A9.T16.3.1.5.4.2"><span class="ltx_text" id="A9.T16.3.1.5.4.2.1" style="font-size:90%;">Sofia, Chloe, Maria, Carmen, Rebecca, Ivy, Rosa, Olivia, Sonia, Savannah</span></td>
</tr>
<tr class="ltx_tr" id="A9.T16.3.1.6.5">
<td class="ltx_td ltx_align_center" id="A9.T16.3.1.6.5.1"><span class="ltx_text" id="A9.T16.3.1.6.5.1.1" style="font-size:90%;">Enrique</span></td>
<td class="ltx_td ltx_align_center" id="A9.T16.3.1.6.5.2"><span class="ltx_text" id="A9.T16.3.1.6.5.2.1" style="font-size:90%;">Carmen, Chloe, Rosa, Clara, Sofia, Emma, Maria, Rebecca, Fiona, Olivia</span></td>
</tr>
<tr class="ltx_tr" id="A9.T16.3.1.7.6">
<td class="ltx_td ltx_align_center" id="A9.T16.3.1.7.6.1"><span class="ltx_text" id="A9.T16.3.1.7.6.1.1" style="font-size:90%;">Amir</span></td>
<td class="ltx_td ltx_align_center" id="A9.T16.3.1.7.6.2"><span class="ltx_text" id="A9.T16.3.1.7.6.2.1" style="font-size:90%;">Sara, Sofia, Amelia, Eden, Mei, Nora, Uma, Bella, Victoria, Diana</span></td>
</tr>
<tr class="ltx_tr" id="A9.T16.3.1.8.7">
<td class="ltx_td ltx_align_center" id="A9.T16.3.1.8.7.1"><span class="ltx_text" id="A9.T16.3.1.8.7.1.1" style="font-size:90%;">Xavier</span></td>
<td class="ltx_td ltx_align_center" id="A9.T16.3.1.8.7.2"><span class="ltx_text" id="A9.T16.3.1.8.7.2.1" style="font-size:90%;">Sophie, Maria, Sonia, Olivia, Emma, Leah, Clara, Uma, Jasmine, Carmen</span></td>
</tr>
<tr class="ltx_tr" id="A9.T16.3.1.9.8">
<td class="ltx_td ltx_align_center" id="A9.T16.3.1.9.8.1"><span class="ltx_text" id="A9.T16.3.1.9.8.1.1" style="font-size:90%;">Javier</span></td>
<td class="ltx_td ltx_align_center" id="A9.T16.3.1.9.8.2"><span class="ltx_text" id="A9.T16.3.1.9.8.2.1" style="font-size:90%;">Carmen, Chloe, Sofia, Ivy, Maria, Jasmine, Olivia, Rosa, Fiona, Jennifer</span></td>
</tr>
<tr class="ltx_tr" id="A9.T16.3.1.10.9">
<td class="ltx_td ltx_align_center" id="A9.T16.3.1.10.9.1"><span class="ltx_text" id="A9.T16.3.1.10.9.1.1" style="font-size:90%;">Vlad</span></td>
<td class="ltx_td ltx_align_center" id="A9.T16.3.1.10.9.2"><span class="ltx_text" id="A9.T16.3.1.10.9.2.1" style="font-size:90%;">Elena, Sofia, Chloe, Mia, Nina, Angela, Diana, Naomi, Savannah, Clara</span></td>
</tr>
<tr class="ltx_tr" id="A9.T16.3.1.11.10">
<td class="ltx_td ltx_align_center" id="A9.T16.3.1.11.10.1"><span class="ltx_text" id="A9.T16.3.1.11.10.1.1" style="font-size:90%;">Roberto</span></td>
<td class="ltx_td ltx_align_center" id="A9.T16.3.1.11.10.2"><span class="ltx_text" id="A9.T16.3.1.11.10.2.1" style="font-size:90%;">Chloe, Sofia, Rosa, Carmen, Lucia, Olivia, Clara, Mei, Maria, Elena</span></td>
</tr>
<tr class="ltx_tr" id="A9.T16.3.1.12.11">
<td class="ltx_td ltx_align_center" id="A9.T16.3.1.12.11.1"><span class="ltx_text" id="A9.T16.3.1.12.11.1.1" style="font-size:90%;">Lars</span></td>
<td class="ltx_td ltx_align_center" id="A9.T16.3.1.12.11.2"><span class="ltx_text" id="A9.T16.3.1.12.11.2.1" style="font-size:90%;">Sophie, Clara, Maria, Nina, Ella, Sara, Harper, Savannah, Rebecca, Fiona</span></td>
</tr>
<tr class="ltx_tr" id="A9.T16.3.1.13.12">
<td class="ltx_td ltx_align_center" id="A9.T16.3.1.13.12.1"><span class="ltx_text" id="A9.T16.3.1.13.12.1.1" style="font-size:90%;">Min</span></td>
<td class="ltx_td ltx_align_center" id="A9.T16.3.1.13.12.2"><span class="ltx_text" id="A9.T16.3.1.13.12.2.1" style="font-size:90%;">Sonia, Mei, Angela, Eden, Clara, Chloe, Grace, Maria, Harper, Savannah</span></td>
</tr>
<tr class="ltx_tr" id="A9.T16.3.1.14.13">
<td class="ltx_td ltx_align_center" id="A9.T16.3.1.14.13.1"><span class="ltx_text" id="A9.T16.3.1.14.13.1.1" style="font-size:90%;">James</span></td>
<td class="ltx_td ltx_align_center" id="A9.T16.3.1.14.13.2"><span class="ltx_text" id="A9.T16.3.1.14.13.2.1" style="font-size:90%;">Grace, Fiona, Ella, Savannah, Emma, Angela, Chloe, Harper, Leah, Maria</span></td>
</tr>
<tr class="ltx_tr" id="A9.T16.3.1.15.14">
<td class="ltx_td ltx_align_center" id="A9.T16.3.1.15.14.1"><span class="ltx_text" id="A9.T16.3.1.15.14.1.1" style="font-size:90%;">Giovanni</span></td>
<td class="ltx_td ltx_align_center" id="A9.T16.3.1.15.14.2"><span class="ltx_text" id="A9.T16.3.1.15.14.2.1" style="font-size:90%;">Lucia, Fiona, Sofia, Savannah, Rosa, Diana, Bella, Chloe, Carmen, Mei</span></td>
</tr>
<tr class="ltx_tr" id="A9.T16.3.1.16.15">
<td class="ltx_td ltx_align_center" id="A9.T16.3.1.16.15.1"><span class="ltx_text" id="A9.T16.3.1.16.15.1.1" style="font-size:90%;">Ivan</span></td>
<td class="ltx_td ltx_align_center" id="A9.T16.3.1.16.15.2"><span class="ltx_text" id="A9.T16.3.1.16.15.2.1" style="font-size:90%;">Ivy, Elena, Sofia, Nina, Maria, Ada, Emma, Sophie, Savannah, Sakura</span></td>
</tr>
<tr class="ltx_tr" id="A9.T16.3.1.17.16">
<td class="ltx_td ltx_align_center" id="A9.T16.3.1.17.16.1"><span class="ltx_text" id="A9.T16.3.1.17.16.1.1" style="font-size:90%;">Diego</span></td>
<td class="ltx_td ltx_align_center" id="A9.T16.3.1.17.16.2"><span class="ltx_text" id="A9.T16.3.1.17.16.2.1" style="font-size:90%;">Chloe, Sofia, Maria, Rosa, Angela, Carmen, Savannah, Diana, Clara, Mei</span></td>
</tr>
<tr class="ltx_tr" id="A9.T16.3.1.18.17">
<td class="ltx_td ltx_align_center" id="A9.T16.3.1.18.17.1"><span class="ltx_text" id="A9.T16.3.1.18.17.1.1" style="font-size:90%;">Fernando</span></td>
<td class="ltx_td ltx_align_center" id="A9.T16.3.1.18.17.2"><span class="ltx_text" id="A9.T16.3.1.18.17.2.1" style="font-size:90%;">Maria, Rosa, Fiona, Savannah, Carmen, Angela, Sofia, Luna, Clara, Ada</span></td>
</tr>
<tr class="ltx_tr" id="A9.T16.3.1.19.18">
<td class="ltx_td ltx_align_center" id="A9.T16.3.1.19.18.1"><span class="ltx_text" id="A9.T16.3.1.19.18.1.1" style="font-size:90%;">Ethan</span></td>
<td class="ltx_td ltx_align_center" id="A9.T16.3.1.19.18.2"><span class="ltx_text" id="A9.T16.3.1.19.18.2.1" style="font-size:90%;">Elena, Leah, Jennifer, Emma, Jasmine, Chloe, Clara, Mei, Ada, Serena</span></td>
</tr>
<tr class="ltx_tr" id="A9.T16.3.1.20.19">
<td class="ltx_td ltx_align_center" id="A9.T16.3.1.20.19.1"><span class="ltx_text" id="A9.T16.3.1.20.19.1.1" style="font-size:90%;">Chen</span></td>
<td class="ltx_td ltx_align_center" id="A9.T16.3.1.20.19.2"><span class="ltx_text" id="A9.T16.3.1.20.19.2.1" style="font-size:90%;">Mei, Chloe, Grace, Nina, Eden, Harper, Sofia, Rebecca, Sakura, Sonia</span></td>
</tr>
<tr class="ltx_tr" id="A9.T16.3.1.21.20">
<td class="ltx_td ltx_align_center" id="A9.T16.3.1.21.20.1"><span class="ltx_text" id="A9.T16.3.1.21.20.1.1" style="font-size:90%;">Gabriel</span></td>
<td class="ltx_td ltx_align_center" id="A9.T16.3.1.21.20.2"><span class="ltx_text" id="A9.T16.3.1.21.20.2.1" style="font-size:90%;">Maria, Sophie, Eden, Leah, Sara, Grace, Chloe, Rebecca, Elena, Luna</span></td>
</tr>
<tr class="ltx_tr" id="A9.T16.3.1.22.21">
<td class="ltx_td ltx_align_center" id="A9.T16.3.1.22.21.1"><span class="ltx_text" id="A9.T16.3.1.22.21.1.1" style="font-size:90%;">Boris</span></td>
<td class="ltx_td ltx_align_center" id="A9.T16.3.1.22.21.2"><span class="ltx_text" id="A9.T16.3.1.22.21.2.1" style="font-size:90%;">Bella, Elena, Angela, Fiona, Nina, Ada, Sofia, Sophie, Nora, Leah</span></td>
</tr>
<tr class="ltx_tr" id="A9.T16.3.1.23.22">
<td class="ltx_td ltx_align_center" id="A9.T16.3.1.23.22.1"><span class="ltx_text" id="A9.T16.3.1.23.22.1.1" style="font-size:90%;">Jean</span></td>
<td class="ltx_td ltx_align_center" id="A9.T16.3.1.23.22.2"><span class="ltx_text" id="A9.T16.3.1.23.22.2.1" style="font-size:90%;">Sophie, Angela, Chloe, Maria, Naomi, Carmen, Savannah, Nina, Rebecca, Lucia</span></td>
</tr>
<tr class="ltx_tr" id="A9.T16.3.1.24.23">
<td class="ltx_td ltx_align_center" id="A9.T16.3.1.24.23.1"><span class="ltx_text" id="A9.T16.3.1.24.23.1.1" style="font-size:90%;">Dmitry</span></td>
<td class="ltx_td ltx_align_center" id="A9.T16.3.1.24.23.2"><span class="ltx_text" id="A9.T16.3.1.24.23.2.1" style="font-size:90%;">Sofia, Elena, Chloe, Diana, Nina, Savannah, Mia, Clara, Sakura, Ivy</span></td>
</tr>
<tr class="ltx_tr" id="A9.T16.3.1.25.24">
<td class="ltx_td ltx_align_center" id="A9.T16.3.1.25.24.1"><span class="ltx_text" id="A9.T16.3.1.25.24.1.1" style="font-size:90%;">Ahmed</span></td>
<td class="ltx_td ltx_align_center" id="A9.T16.3.1.25.24.2"><span class="ltx_text" id="A9.T16.3.1.25.24.2.1" style="font-size:90%;">Sara, Sofia, Sophie, Nora, Uma, Victoria, Eden, Sonia, Jennifer, Mei</span></td>
</tr>
<tr class="ltx_tr" id="A9.T16.3.1.26.25">
<td class="ltx_td ltx_align_center" id="A9.T16.3.1.26.25.1"><span class="ltx_text" id="A9.T16.3.1.26.25.1.1" style="font-size:90%;">Wei</span></td>
<td class="ltx_td ltx_align_center" id="A9.T16.3.1.26.25.2"><span class="ltx_text" id="A9.T16.3.1.26.25.2.1" style="font-size:90%;">Mei, Chloe, Grace, Rebecca, Mia, Sofia, Ada, Nina, Angela, Harper</span></td>
</tr>
<tr class="ltx_tr" id="A9.T16.3.1.27.26">
<td class="ltx_td ltx_align_center" id="A9.T16.3.1.27.26.1"><span class="ltx_text" id="A9.T16.3.1.27.26.1.1" style="font-size:90%;">Ibrahim</span></td>
<td class="ltx_td ltx_align_center" id="A9.T16.3.1.27.26.2"><span class="ltx_text" id="A9.T16.3.1.27.26.2.1" style="font-size:90%;">Sofia, Sara, Eden, Uma, Victoria, Nora, Bella, Ada, Sophie, Elena</span></td>
</tr>
<tr class="ltx_tr" id="A9.T16.3.1.28.27">
<td class="ltx_td ltx_align_center" id="A9.T16.3.1.28.27.1"><span class="ltx_text" id="A9.T16.3.1.28.27.1.1" style="font-size:90%;">Liam</span></td>
<td class="ltx_td ltx_align_center" id="A9.T16.3.1.28.27.2"><span class="ltx_text" id="A9.T16.3.1.28.27.2.1" style="font-size:90%;">Fiona, Emma, Mia, Chloe, Nora, Leah, Grace, Jasmine, Jade, Angela</span></td>
</tr>
<tr class="ltx_tr" id="A9.T16.3.1.29.28">
<td class="ltx_td ltx_align_center" id="A9.T16.3.1.29.28.1"><span class="ltx_text" id="A9.T16.3.1.29.28.1.1" style="font-size:90%;">Mustafa</span></td>
<td class="ltx_td ltx_align_center" id="A9.T16.3.1.29.28.2"><span class="ltx_text" id="A9.T16.3.1.29.28.2.1" style="font-size:90%;">Sara, Sofia, Nora, Victoria, Ada, Uma, Eden, Jade, Rosa, Elena</span></td>
</tr>
<tr class="ltx_tr" id="A9.T16.3.1.30.29">
<td class="ltx_td ltx_align_center" id="A9.T16.3.1.30.29.1"><span class="ltx_text" id="A9.T16.3.1.30.29.1.1" style="font-size:90%;">Jorge</span></td>
<td class="ltx_td ltx_align_center" id="A9.T16.3.1.30.29.2"><span class="ltx_text" id="A9.T16.3.1.30.29.2.1" style="font-size:90%;">Maria, Carmen, Rosa, Chloe, Sofia, Diana, Elena, Fiona, Angela, Nora</span></td>
</tr>
<tr class="ltx_tr" id="A9.T16.3.1.31.30">
<td class="ltx_td ltx_align_center" id="A9.T16.3.1.31.30.1"><span class="ltx_text" id="A9.T16.3.1.31.30.1.1" style="font-size:90%;">Leonardo</span></td>
<td class="ltx_td ltx_align_center" id="A9.T16.3.1.31.30.2"><span class="ltx_text" id="A9.T16.3.1.31.30.2.1" style="font-size:90%;">Clara, Sofia, Jennifer, Olivia, Chloe, Jasmine, Fiona, Rosa, Lucia, Diana</span></td>
</tr>
<tr class="ltx_tr" id="A9.T16.3.1.32.31">
<td class="ltx_td ltx_align_center" id="A9.T16.3.1.32.31.1"><span class="ltx_text" id="A9.T16.3.1.32.31.1.1" style="font-size:90%;">Luca</span></td>
<td class="ltx_td ltx_align_center" id="A9.T16.3.1.32.31.2"><span class="ltx_text" id="A9.T16.3.1.32.31.2.1" style="font-size:90%;">Fiona, Lucia, Sofia, Angela, Maria, Savannah, Emma, Clara, Sakura, Leah</span></td>
</tr>
<tr class="ltx_tr" id="A9.T16.3.1.33.32">
<td class="ltx_td ltx_align_center" id="A9.T16.3.1.33.32.1"><span class="ltx_text" id="A9.T16.3.1.33.32.1.1" style="font-size:90%;">Carlos</span></td>
<td class="ltx_td ltx_align_center" id="A9.T16.3.1.33.32.2"><span class="ltx_text" id="A9.T16.3.1.33.32.2.1" style="font-size:90%;">Carmen, Maria, Rosa, Olivia, Chloe, Sofia, Clara, Sakura, Savannah, Fiona</span></td>
</tr>
<tr class="ltx_tr" id="A9.T16.3.1.34.33">
<td class="ltx_td ltx_align_center" id="A9.T16.3.1.34.33.1"><span class="ltx_text" id="A9.T16.3.1.34.33.1.1" style="font-size:90%;">Pedro</span></td>
<td class="ltx_td ltx_align_center" id="A9.T16.3.1.34.33.2"><span class="ltx_text" id="A9.T16.3.1.34.33.2.1" style="font-size:90%;">Maria, Rosa, Carmen, Chloe, Olivia, Clara, Sakura, Sofia, Ivy, Ada</span></td>
</tr>
<tr class="ltx_tr" id="A9.T16.3.1.35.34">
<td class="ltx_td ltx_align_center" id="A9.T16.3.1.35.34.1"><span class="ltx_text" id="A9.T16.3.1.35.34.1.1" style="font-size:90%;">Michel</span></td>
<td class="ltx_td ltx_align_center" id="A9.T16.3.1.35.34.2"><span class="ltx_text" id="A9.T16.3.1.35.34.2.1" style="font-size:90%;">Sophie, Lucia, Nina, Maria, Leah, Eden, Elena, Sara, Sonia, Carmen</span></td>
</tr>
<tr class="ltx_tr" id="A9.T16.3.1.36.35">
<td class="ltx_td ltx_align_center" id="A9.T16.3.1.36.35.1"><span class="ltx_text" id="A9.T16.3.1.36.35.1.1" style="font-size:90%;">Kai</span></td>
<td class="ltx_td ltx_align_center" id="A9.T16.3.1.36.35.2"><span class="ltx_text" id="A9.T16.3.1.36.35.2.1" style="font-size:90%;">Mei, Maria, Nina, Angela, Chloe, Eden, Jade, Uma, Sakura, Ada</span></td>
</tr>
<tr class="ltx_tr" id="A9.T16.3.1.37.36">
<td class="ltx_td ltx_align_center" id="A9.T16.3.1.37.36.1"><span class="ltx_text" id="A9.T16.3.1.37.36.1.1" style="font-size:90%;">Benjamin</span></td>
<td class="ltx_td ltx_align_center" id="A9.T16.3.1.37.36.2"><span class="ltx_text" id="A9.T16.3.1.37.36.2.1" style="font-size:90%;">Leah, Eden, Bella, Rebecca, Sophie, Grace, Nina, Harper, Lucia, Victoria</span></td>
</tr>
<tr class="ltx_tr" id="A9.T16.3.1.38.37">
<td class="ltx_td ltx_align_center" id="A9.T16.3.1.38.37.1"><span class="ltx_text" id="A9.T16.3.1.38.37.1.1" style="font-size:90%;">Noah</span></td>
<td class="ltx_td ltx_align_center" id="A9.T16.3.1.38.37.2"><span class="ltx_text" id="A9.T16.3.1.38.37.2.1" style="font-size:90%;">Rebecca, Chloe, Nina, Nora, Eden, Naomi, Sara, Grace, Leah, Ada</span></td>
</tr>
<tr class="ltx_tr" id="A9.T16.3.1.39.38">
<td class="ltx_td ltx_align_center" id="A9.T16.3.1.39.38.1"><span class="ltx_text" id="A9.T16.3.1.39.38.1.1" style="font-size:90%;">Ali</span></td>
<td class="ltx_td ltx_align_center" id="A9.T16.3.1.39.38.2"><span class="ltx_text" id="A9.T16.3.1.39.38.2.1" style="font-size:90%;">Sara, Nora, Eden, Victoria, Uma, Sofia, Mei, Jade, Bella, Sonia</span></td>
</tr>
<tr class="ltx_tr" id="A9.T16.3.1.40.39">
<td class="ltx_td ltx_align_center" id="A9.T16.3.1.40.39.1"><span class="ltx_text" id="A9.T16.3.1.40.39.1.1" style="font-size:90%;">Levi</span></td>
<td class="ltx_td ltx_align_center" id="A9.T16.3.1.40.39.2"><span class="ltx_text" id="A9.T16.3.1.40.39.2.1" style="font-size:90%;">Chloe, Leah, Eden, Sara, Nina, Elena, Harper, Bella, Rosa, Rebecca</span></td>
</tr>
<tr class="ltx_tr" id="A9.T16.3.1.41.40">
<td class="ltx_td ltx_align_center" id="A9.T16.3.1.41.40.1"><span class="ltx_text" id="A9.T16.3.1.41.40.1.1" style="font-size:90%;">Antonio</span></td>
<td class="ltx_td ltx_align_center" id="A9.T16.3.1.41.40.2"><span class="ltx_text" id="A9.T16.3.1.41.40.2.1" style="font-size:90%;">Rosa, Maria, Angela, Lucia, Sofia, Chloe, Savannah, Olivia, Carmen, Fiona</span></td>
</tr>
<tr class="ltx_tr" id="A9.T16.3.1.42.41">
<td class="ltx_td ltx_align_center" id="A9.T16.3.1.42.41.1"><span class="ltx_text" id="A9.T16.3.1.42.41.1.1" style="font-size:90%;">Rafael</span></td>
<td class="ltx_td ltx_align_center" id="A9.T16.3.1.42.41.2"><span class="ltx_text" id="A9.T16.3.1.42.41.2.1" style="font-size:90%;">Sofia, Rosa, Carmen, Maria, Clara, Leah, Ivy, Chloe, Naomi, Lucia</span></td>
</tr>
<tr class="ltx_tr" id="A9.T16.3.1.43.42">
<td class="ltx_td ltx_align_center" id="A9.T16.3.1.43.42.1"><span class="ltx_text" id="A9.T16.3.1.43.42.1.1" style="font-size:90%;">Marco</span></td>
<td class="ltx_td ltx_align_center" id="A9.T16.3.1.43.42.2"><span class="ltx_text" id="A9.T16.3.1.43.42.2.1" style="font-size:90%;">Maria, Sofia, Jasmine, Lucia, Clara, Angela, Chloe, Mei, Rebecca, Carmen</span></td>
</tr>
<tr class="ltx_tr" id="A9.T16.3.1.44.43">
<td class="ltx_td ltx_align_center" id="A9.T16.3.1.44.43.1"><span class="ltx_text" id="A9.T16.3.1.44.43.1.1" style="font-size:90%;">Stefan</span></td>
<td class="ltx_td ltx_align_center" id="A9.T16.3.1.44.43.2"><span class="ltx_text" id="A9.T16.3.1.44.43.2.1" style="font-size:90%;">Elena, Fiona, Angela, Savannah, Clara, Sophie, Mei, Maria, Eden, Rebecca</span></td>
</tr>
<tr class="ltx_tr" id="A9.T16.3.1.45.44">
<td class="ltx_td ltx_align_center" id="A9.T16.3.1.45.44.1"><span class="ltx_text" id="A9.T16.3.1.45.44.1.1" style="font-size:90%;">Chung</span></td>
<td class="ltx_td ltx_align_center" id="A9.T16.3.1.45.44.2"><span class="ltx_text" id="A9.T16.3.1.45.44.2.1" style="font-size:90%;">Mei, Chloe, Grace, Maria, Angela, Sonia, Harper, Clara, Savannah, Mia</span></td>
</tr>
<tr class="ltx_tr" id="A9.T16.3.1.46.45">
<td class="ltx_td ltx_align_center" id="A9.T16.3.1.46.45.1"><span class="ltx_text" id="A9.T16.3.1.46.45.1.1" style="font-size:90%;">Abdul</span></td>
<td class="ltx_td ltx_align_center" id="A9.T16.3.1.46.45.2"><span class="ltx_text" id="A9.T16.3.1.46.45.2.1" style="font-size:90%;">Uma, Sara, Sofia, Nora, Jennifer, Ada, Rosa, Victoria, Eden, Bella</span></td>
</tr>
<tr class="ltx_tr" id="A9.T16.3.1.47.46">
<td class="ltx_td ltx_align_center" id="A9.T16.3.1.47.46.1"><span class="ltx_text" id="A9.T16.3.1.47.46.1.1" style="font-size:90%;">Muhammad</span></td>
<td class="ltx_td ltx_align_center" id="A9.T16.3.1.47.46.2"><span class="ltx_text" id="A9.T16.3.1.47.46.2.1" style="font-size:90%;">Sofia, Sara, Victoria, Mei, Emily, Jennifer, Nora, Uma, Eden, Naomi</span></td>
</tr>
<tr class="ltx_tr" id="A9.T16.3.1.48.47">
<td class="ltx_td ltx_align_center" id="A9.T16.3.1.48.47.1"><span class="ltx_text" id="A9.T16.3.1.48.47.1.1" style="font-size:90%;">Hugo</span></td>
<td class="ltx_td ltx_align_center" id="A9.T16.3.1.48.47.2"><span class="ltx_text" id="A9.T16.3.1.48.47.2.1" style="font-size:90%;">Maria, Sophie, Chloe, Clara, Fiona, Emma, Savannah, Angela, Carmen, Ivy</span></td>
</tr>
<tr class="ltx_tr" id="A9.T16.3.1.49.48">
<td class="ltx_td ltx_align_center" id="A9.T16.3.1.49.48.1"><span class="ltx_text" id="A9.T16.3.1.49.48.1.1" style="font-size:90%;">Axel</span></td>
<td class="ltx_td ltx_align_center" id="A9.T16.3.1.49.48.2"><span class="ltx_text" id="A9.T16.3.1.49.48.2.1" style="font-size:90%;">Sophie, Angela, Rebecca, Nina, Ada, Emma, Fiona, Ivy, Eden, Savannah</span></td>
</tr>
<tr class="ltx_tr" id="A9.T16.3.1.50.49">
<td class="ltx_td ltx_align_center" id="A9.T16.3.1.50.49.1"><span class="ltx_text" id="A9.T16.3.1.50.49.1.1" style="font-size:90%;">Lucas</span></td>
<td class="ltx_td ltx_align_center" id="A9.T16.3.1.50.49.2"><span class="ltx_text" id="A9.T16.3.1.50.49.2.1" style="font-size:90%;">Lucia, Maria, Clara, Fiona, Uma, Chloe, Harper, Savannah, Sophie, Jasmine</span></td>
</tr>
<tr class="ltx_tr" id="A9.T16.3.1.51.50">
<td class="ltx_td ltx_align_center" id="A9.T16.3.1.51.50.1"><span class="ltx_text" id="A9.T16.3.1.51.50.1.1" style="font-size:90%;">Mason</span></td>
<td class="ltx_td ltx_align_center" id="A9.T16.3.1.51.50.2"><span class="ltx_text" id="A9.T16.3.1.51.50.2.1" style="font-size:90%;">Harper, Leah, Jasmine, Chloe, Angela, Nina, Ada, Sofia, Ella, Emma</span></td>
</tr>
<tr class="ltx_tr" id="A9.T16.3.1.52.51">
<td class="ltx_td ltx_align_center" id="A9.T16.3.1.52.51.1"><span class="ltx_text" id="A9.T16.3.1.52.51.1.1" style="font-size:90%;">Hassan</span></td>
<td class="ltx_td ltx_align_center" id="A9.T16.3.1.52.51.2"><span class="ltx_text" id="A9.T16.3.1.52.51.2.1" style="font-size:90%;">Sara, Eden, Nora, Victoria, Bella, Sofia, Naomi, Savannah, Mei, Diana</span></td>
</tr>
<tr class="ltx_tr" id="A9.T16.3.1.53.52">
<td class="ltx_td ltx_align_center" id="A9.T16.3.1.53.52.1"><span class="ltx_text" id="A9.T16.3.1.53.52.1.1" style="font-size:90%;">Pablo</span></td>
<td class="ltx_td ltx_align_center" id="A9.T16.3.1.53.52.2"><span class="ltx_text" id="A9.T16.3.1.53.52.2.1" style="font-size:90%;">Maria, Chloe, Sofia, Rosa, Savannah, Rebecca, Carmen, Elena, Fiona, Luna</span></td>
</tr>
<tr class="ltx_tr" id="A9.T16.3.1.54.53">
<td class="ltx_td ltx_align_center" id="A9.T16.3.1.54.53.1"><span class="ltx_text" id="A9.T16.3.1.54.53.1.1" style="font-size:90%;">Raphael</span></td>
<td class="ltx_td ltx_align_center" id="A9.T16.3.1.54.53.2"><span class="ltx_text" id="A9.T16.3.1.54.53.2.1" style="font-size:90%;">Rebecca, Sophie, Elena, Leah, Rosa, Grace, Eden, Fiona, Clara, Sonia</span></td>
</tr>
<tr class="ltx_tr" id="A9.T16.3.1.55.54">
<td class="ltx_td ltx_align_center" id="A9.T16.3.1.55.54.1"><span class="ltx_text" id="A9.T16.3.1.55.54.1.1" style="font-size:90%;">Elijah</span></td>
<td class="ltx_td ltx_align_center" id="A9.T16.3.1.55.54.2"><span class="ltx_text" id="A9.T16.3.1.55.54.2.1" style="font-size:90%;">Elena, Eden, Rebecca, Chloe, Savannah, Ella, Leah, Emily, Grace, Uma</span></td>
</tr>
<tr class="ltx_tr" id="A9.T16.3.1.56.55">
<td class="ltx_td ltx_align_center" id="A9.T16.3.1.56.55.1"><span class="ltx_text" id="A9.T16.3.1.56.55.1.1" style="font-size:90%;">Louis</span></td>
<td class="ltx_td ltx_align_center" id="A9.T16.3.1.56.55.2"><span class="ltx_text" id="A9.T16.3.1.56.55.2.1" style="font-size:90%;">Sophie, Nina, Savannah, Grace, Rosa, Maria, Rebecca, Fiona, Leah, Sonia</span></td>
</tr>
<tr class="ltx_tr" id="A9.T16.3.1.57.56">
<td class="ltx_td ltx_align_center" id="A9.T16.3.1.57.56.1"><span class="ltx_text" id="A9.T16.3.1.57.56.1.1" style="font-size:90%;">Ricardo</span></td>
<td class="ltx_td ltx_align_center" id="A9.T16.3.1.57.56.2"><span class="ltx_text" id="A9.T16.3.1.57.56.2.1" style="font-size:90%;">Chloe, Carmen, Sofia, Rosa, Jennifer, Clara, Rebecca, Sakura, Mei, Olivia</span></td>
</tr>
<tr class="ltx_tr" id="A9.T16.3.1.58.57">
<td class="ltx_td ltx_align_center" id="A9.T16.3.1.58.57.1"><span class="ltx_text" id="A9.T16.3.1.58.57.1.1" style="font-size:90%;">Samuel</span></td>
<td class="ltx_td ltx_align_center" id="A9.T16.3.1.58.57.2"><span class="ltx_text" id="A9.T16.3.1.58.57.2.1" style="font-size:90%;">Sonia, Savannah, Leah, Eden, Rebecca, Sophie, Grace, Ada, Emma, Clara</span></td>
</tr>
<tr class="ltx_tr" id="A9.T16.3.1.59.58">
<td class="ltx_td ltx_align_center" id="A9.T16.3.1.59.58.1"><span class="ltx_text" id="A9.T16.3.1.59.58.1.1" style="font-size:90%;">William</span></td>
<td class="ltx_td ltx_align_center" id="A9.T16.3.1.59.58.2"><span class="ltx_text" id="A9.T16.3.1.59.58.2.1" style="font-size:90%;">Grace, Emma, Emily, Leah, Ada, Harper, Angela, Victoria, Fiona, Diana</span></td>
</tr>
<tr class="ltx_tr" id="A9.T16.3.1.60.59">
<td class="ltx_td ltx_align_center" id="A9.T16.3.1.60.59.1"><span class="ltx_text" id="A9.T16.3.1.60.59.1.1" style="font-size:90%;">Salman</span></td>
<td class="ltx_td ltx_align_center" id="A9.T16.3.1.60.59.2"><span class="ltx_text" id="A9.T16.3.1.60.59.2.1" style="font-size:90%;">Sonia, Sofia, Nora, Uma, Sara, Bella, Eden, Jennifer, Victoria, Leah</span></td>
</tr>
<tr class="ltx_tr" id="A9.T16.3.1.61.60">
<td class="ltx_td ltx_align_center" id="A9.T16.3.1.61.60.1"><span class="ltx_text" id="A9.T16.3.1.61.60.1.1" style="font-size:90%;">Oliver</span></td>
<td class="ltx_td ltx_align_center" id="A9.T16.3.1.61.60.2"><span class="ltx_text" id="A9.T16.3.1.61.60.2.1" style="font-size:90%;">Olivia, Sophie, Harper, Elena, Nina, Maria, Grace, Diana, Emma, Nora</span></td>
</tr>
<tr class="ltx_tr" id="A9.T16.3.1.62.61">
<td class="ltx_td ltx_align_center" id="A9.T16.3.1.62.61.1"><span class="ltx_text" id="A9.T16.3.1.62.61.1.1" style="font-size:90%;">Angelo</span></td>
<td class="ltx_td ltx_align_center" id="A9.T16.3.1.62.61.2"><span class="ltx_text" id="A9.T16.3.1.62.61.2.1" style="font-size:90%;">Angela, Sofia, Fiona, Clara, Chloe, Rosa, Carmen, Savannah, Lucia, Nina</span></td>
</tr>
<tr class="ltx_tr" id="A9.T16.3.1.63.62">
<td class="ltx_td ltx_align_center" id="A9.T16.3.1.63.62.1"><span class="ltx_text" id="A9.T16.3.1.63.62.1.1" style="font-size:90%;">Hans</span></td>
<td class="ltx_td ltx_align_center" id="A9.T16.3.1.63.62.2"><span class="ltx_text" id="A9.T16.3.1.63.62.2.1" style="font-size:90%;">Sophie, Rebecca, Angela, Savannah, Eden, Ella, Clara, Maria, Uma, Mei</span></td>
</tr>
<tr class="ltx_tr" id="A9.T16.3.1.64.63">
<td class="ltx_td ltx_align_center" id="A9.T16.3.1.64.63.1"><span class="ltx_text" id="A9.T16.3.1.64.63.1.1" style="font-size:90%;">Jamal</span></td>
<td class="ltx_td ltx_align_center" id="A9.T16.3.1.64.63.2"><span class="ltx_text" id="A9.T16.3.1.64.63.2.1" style="font-size:90%;">Sofia, Jasmine, Uma, Sara, Mei, Eden, Naomi, Victoria, Bella, Diana</span></td>
</tr>
<tr class="ltx_tr" id="A9.T16.3.1.65.64">
<td class="ltx_td ltx_align_center ltx_border_bb" id="A9.T16.3.1.65.64.1"><span class="ltx_text" id="A9.T16.3.1.65.64.1.1" style="font-size:90%;">Santiago</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A9.T16.3.1.65.64.2"><span class="ltx_text" id="A9.T16.3.1.65.64.2.1" style="font-size:90%;">Sofia, Maria, Rosa, Carmen, Chloe, Savannah, Mei, Olivia, Ivy, Luna</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table displays the top influencing fathers associated with each mother's name in the context of a linear correlation analysis between the 'mother' and 'father' knowledge domains within a language model.  The analysis investigates how the prediction of a father's name is influenced by different mothers' names, revealing potential biases or patterns in the model's learned associations between parental names.
> <details>
> <summary>read the caption</summary>
> Table 16: The most influencing fathers of mothers in the Mother→→\rightarrow→Father correlation.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="A9.T17.1.1">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A9.T17.1.1.1.1">
<th class="ltx_td ltx_th ltx_th_row ltx_border_tt" id="A9.T17.1.1.1.1.1"></th>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A9.T17.1.1.1.1.2"><span class="ltx_text" id="A9.T17.1.1.1.1.2.1" style="font-size:90%;">Attribute</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A9.T17.1.1.1.1.3"><span class="ltx_text" id="A9.T17.1.1.1.1.3.1" style="font-size:90%;">Influencing Objects</span></td>
</tr>
<tr class="ltx_tr" id="A9.T17.1.1.2.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A9.T17.1.1.2.2.1" rowspan="20"><span class="ltx_text" id="A9.T17.1.1.2.2.1.1" style="font-size:90%;">
<span class="ltx_inline-block ltx_transformed_outer" id="A9.T17.1.1.2.2.1.1.1" style="width:6.1pt;height:23.6pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:23.6pt;transform:translate(-8.72pt,-8.72pt) rotate(-90deg) ;">
<span class="ltx_p" id="A9.T17.1.1.2.2.1.1.1.1">Genre</span>
</span></span></span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="A9.T17.1.1.2.2.2"><span class="ltx_text" id="A9.T17.1.1.2.2.2.1" style="font-size:90%;">toys</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A9.T17.1.1.2.2.3"><span class="ltx_text" id="A9.T17.1.1.2.2.3.1" style="font-size:90%;">toy, puzzle, drum, shoes, sweater, electric, fridge, gloves, chair, jeans</span></td>
</tr>
<tr class="ltx_tr" id="A9.T17.1.1.3.3">
<td class="ltx_td ltx_align_center" id="A9.T17.1.1.3.3.1"><span class="ltx_text" id="A9.T17.1.1.3.3.1.1" style="font-size:90%;">transport</span></td>
<td class="ltx_td ltx_align_center" id="A9.T17.1.1.3.3.2"><span class="ltx_text" id="A9.T17.1.1.3.3.2.1" style="font-size:90%;">headphones, pen, plate, drum, electric, car, couch, smartphone, rug, suitcase</span></td>
</tr>
<tr class="ltx_tr" id="A9.T17.1.1.4.4">
<td class="ltx_td ltx_align_center" id="A9.T17.1.1.4.4.1"><span class="ltx_text" id="A9.T17.1.1.4.4.1.1" style="font-size:90%;">kitchen</span></td>
<td class="ltx_td ltx_align_center" id="A9.T17.1.1.4.4.2"><span class="ltx_text" id="A9.T17.1.1.4.4.2.1" style="font-size:90%;">drum, jeans, pen, plate, toy, backpack, rug, fridge, chair, grill</span></td>
</tr>
<tr class="ltx_tr" id="A9.T17.1.1.5.5">
<td class="ltx_td ltx_align_center" id="A9.T17.1.1.5.5.1"><span class="ltx_text" id="A9.T17.1.1.5.5.1.1" style="font-size:90%;">furniture</span></td>
<td class="ltx_td ltx_align_center" id="A9.T17.1.1.5.5.2"><span class="ltx_text" id="A9.T17.1.1.5.5.2.1" style="font-size:90%;">drum, chair, fridge, electric, rug, camera, puzzle, shoes, sweater, plate</span></td>
</tr>
<tr class="ltx_tr" id="A9.T17.1.1.6.6">
<td class="ltx_td ltx_align_center" id="A9.T17.1.1.6.6.1"><span class="ltx_text" id="A9.T17.1.1.6.6.1.1" style="font-size:90%;">decor</span></td>
<td class="ltx_td ltx_align_center" id="A9.T17.1.1.6.6.2"><span class="ltx_text" id="A9.T17.1.1.6.6.2.1" style="font-size:90%;">drum, rug, vase, pen, sweater, jeans, smartphone, backpack, washing, speaker</span></td>
</tr>
<tr class="ltx_tr" id="A9.T17.1.1.7.7">
<td class="ltx_td ltx_align_center" id="A9.T17.1.1.7.7.1"><span class="ltx_text" id="A9.T17.1.1.7.7.1.1" style="font-size:90%;">accessories</span></td>
<td class="ltx_td ltx_align_center" id="A9.T17.1.1.7.7.2"><span class="ltx_text" id="A9.T17.1.1.7.7.2.1" style="font-size:90%;">drum, shoes, plate, laptop, electric, oven, gloves, curtains, jeans, chair</span></td>
</tr>
<tr class="ltx_tr" id="A9.T17.1.1.8.8">
<td class="ltx_td ltx_align_center" id="A9.T17.1.1.8.8.1"><span class="ltx_text" id="A9.T17.1.1.8.8.1.1" style="font-size:90%;">sports</span></td>
<td class="ltx_td ltx_align_center" id="A9.T17.1.1.8.8.2"><span class="ltx_text" id="A9.T17.1.1.8.8.2.1" style="font-size:90%;">basketball, pen, drum, jeans, plate, skateboard, tennis, rug, charger, puzzle</span></td>
</tr>
<tr class="ltx_tr" id="A9.T17.1.1.9.9">
<td class="ltx_td ltx_align_center" id="A9.T17.1.1.9.9.1"><span class="ltx_text" id="A9.T17.1.1.9.9.1.1" style="font-size:90%;">travel</span></td>
<td class="ltx_td ltx_align_center" id="A9.T17.1.1.9.9.2"><span class="ltx_text" id="A9.T17.1.1.9.9.2.1" style="font-size:90%;">pen, drum, water, yoga, suitcase, sunglasses, watch, plate, jeans, fridge</span></td>
</tr>
<tr class="ltx_tr" id="A9.T17.1.1.10.10">
<td class="ltx_td ltx_align_center" id="A9.T17.1.1.10.10.1"><span class="ltx_text" id="A9.T17.1.1.10.10.1.1" style="font-size:90%;">art</span></td>
<td class="ltx_td ltx_align_center" id="A9.T17.1.1.10.10.2"><span class="ltx_text" id="A9.T17.1.1.10.10.2.1" style="font-size:90%;">drum, puzzle, pen, scarf, water, camera, couch, toy, chair, jeans</span></td>
</tr>
<tr class="ltx_tr" id="A9.T17.1.1.11.11">
<td class="ltx_td ltx_align_center" id="A9.T17.1.1.11.11.1"><span class="ltx_text" id="A9.T17.1.1.11.11.1.1" style="font-size:90%;">fitness</span></td>
<td class="ltx_td ltx_align_center" id="A9.T17.1.1.11.11.2"><span class="ltx_text" id="A9.T17.1.1.11.11.2.1" style="font-size:90%;">yoga, puzzle, drum, pen, couch, electric, sweater, scarf, rug, camera</span></td>
</tr>
<tr class="ltx_tr" id="A9.T17.1.1.12.12">
<td class="ltx_td ltx_align_center" id="A9.T17.1.1.12.12.1"><span class="ltx_text" id="A9.T17.1.1.12.12.1.1" style="font-size:90%;">outdoors</span></td>
<td class="ltx_td ltx_align_center" id="A9.T17.1.1.12.12.2"><span class="ltx_text" id="A9.T17.1.1.12.12.2.1" style="font-size:90%;">drum, plate, pen, fishing, electric, water, couch, camera, toy, puzzle</span></td>
</tr>
<tr class="ltx_tr" id="A9.T17.1.1.13.13">
<td class="ltx_td ltx_align_center" id="A9.T17.1.1.13.13.1"><span class="ltx_text" id="A9.T17.1.1.13.13.1.1" style="font-size:90%;">bags</span></td>
<td class="ltx_td ltx_align_center" id="A9.T17.1.1.13.13.2"><span class="ltx_text" id="A9.T17.1.1.13.13.2.1" style="font-size:90%;">drum, fridge, sweater, gloves, jeans, backpack, pen, rug, electric, umbrella</span></td>
</tr>
<tr class="ltx_tr" id="A9.T17.1.1.14.14">
<td class="ltx_td ltx_align_center" id="A9.T17.1.1.14.14.1"><span class="ltx_text" id="A9.T17.1.1.14.14.1.1" style="font-size:90%;">electronics</span></td>
<td class="ltx_td ltx_align_center" id="A9.T17.1.1.14.14.2"><span class="ltx_text" id="A9.T17.1.1.14.14.2.1" style="font-size:90%;">electric, drum, headphones, plate, toy, pen, laptop, jeans, sweater, couch</span></td>
</tr>
<tr class="ltx_tr" id="A9.T17.1.1.15.15">
<td class="ltx_td ltx_align_center" id="A9.T17.1.1.15.15.1"><span class="ltx_text" id="A9.T17.1.1.15.15.1.1" style="font-size:90%;">clothing</span></td>
<td class="ltx_td ltx_align_center" id="A9.T17.1.1.15.15.2"><span class="ltx_text" id="A9.T17.1.1.15.15.2.1" style="font-size:90%;">drum, sweater, electric, shoes, skateboard, pen, jeans, camera, rug, fridge</span></td>
</tr>
<tr class="ltx_tr" id="A9.T17.1.1.16.16">
<td class="ltx_td ltx_align_center" id="A9.T17.1.1.16.16.1"><span class="ltx_text" id="A9.T17.1.1.16.16.1.1" style="font-size:90%;">food</span></td>
<td class="ltx_td ltx_align_center" id="A9.T17.1.1.16.16.2"><span class="ltx_text" id="A9.T17.1.1.16.16.2.1" style="font-size:90%;">fridge, drum, pen, water, scarf, couch, plate, smartphone, sweater, speaker</span></td>
</tr>
<tr class="ltx_tr" id="A9.T17.1.1.17.17">
<td class="ltx_td ltx_align_center" id="A9.T17.1.1.17.17.1"><span class="ltx_text" id="A9.T17.1.1.17.17.1.1" style="font-size:90%;">photography</span></td>
<td class="ltx_td ltx_align_center" id="A9.T17.1.1.17.17.2"><span class="ltx_text" id="A9.T17.1.1.17.17.2.1" style="font-size:90%;">camera, water, drum, puzzle, scarf, skateboard, yoga, headphones, rug, couch</span></td>
</tr>
<tr class="ltx_tr" id="A9.T17.1.1.18.18">
<td class="ltx_td ltx_align_center" id="A9.T17.1.1.18.18.1"><span class="ltx_text" id="A9.T17.1.1.18.18.1.1" style="font-size:90%;">literature</span></td>
<td class="ltx_td ltx_align_center" id="A9.T17.1.1.18.18.2"><span class="ltx_text" id="A9.T17.1.1.18.18.2.1" style="font-size:90%;">book, iron, pen, drum, yoga, couch, water, speaker, scarf, fan</span></td>
</tr>
<tr class="ltx_tr" id="A9.T17.1.1.19.19">
<td class="ltx_td ltx_align_center" id="A9.T17.1.1.19.19.1"><span class="ltx_text" id="A9.T17.1.1.19.19.1.1" style="font-size:90%;">appliances</span></td>
<td class="ltx_td ltx_align_center" id="A9.T17.1.1.19.19.2"><span class="ltx_text" id="A9.T17.1.1.19.19.2.1" style="font-size:90%;">electric, sweater, jeans, plate, shoes, fridge, drum, chair, oven, laptop</span></td>
</tr>
<tr class="ltx_tr" id="A9.T17.1.1.20.20">
<td class="ltx_td ltx_align_center" id="A9.T17.1.1.20.20.1"><span class="ltx_text" id="A9.T17.1.1.20.20.1.1" style="font-size:90%;">home</span></td>
<td class="ltx_td ltx_align_center" id="A9.T17.1.1.20.20.2"><span class="ltx_text" id="A9.T17.1.1.20.20.2.1" style="font-size:90%;">electric, oven, drum, smartphone, pen, backpack, rug, jeans, fridge, puzzle</span></td>
</tr>
<tr class="ltx_tr" id="A9.T17.1.1.21.21">
<td class="ltx_td ltx_align_center" id="A9.T17.1.1.21.21.1"><span class="ltx_text" id="A9.T17.1.1.21.21.1.1" style="font-size:90%;">music</span></td>
<td class="ltx_td ltx_align_center" id="A9.T17.1.1.21.21.2"><span class="ltx_text" id="A9.T17.1.1.21.21.2.1" style="font-size:90%;">guitar, drum, headphones, scarf, basketball, pen, toy, puzzle, suitcase, water</span></td>
</tr>
<tr class="ltx_tr" id="A9.T17.1.1.22.22">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A9.T17.1.1.22.22.1" rowspan="4"><span class="ltx_text" id="A9.T17.1.1.22.22.1.1" style="font-size:90%;">
<span class="ltx_inline-block ltx_transformed_outer" id="A9.T17.1.1.22.22.1.1.1" style="width:6.1pt;height:18.8pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:18.8pt;transform:translate(-6.3pt,-6.3pt) rotate(-90deg) ;">
<span class="ltx_p" id="A9.T17.1.1.22.22.1.1.1.1">Heat</span>
</span></span></span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="A9.T17.1.1.22.22.2"><span class="ltx_text" id="A9.T17.1.1.22.22.2.1" style="font-size:90%;">warm</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A9.T17.1.1.22.22.3"><span class="ltx_text" id="A9.T17.1.1.22.22.3.1" style="font-size:90%;">hoodie, sweater, clock, lamp, drum, earrings, yoga, apple, tennis, oven</span></td>
</tr>
<tr class="ltx_tr" id="A9.T17.1.1.23.23">
<td class="ltx_td ltx_align_center" id="A9.T17.1.1.23.23.1"><span class="ltx_text" id="A9.T17.1.1.23.23.1.1" style="font-size:90%;">hot</span></td>
<td class="ltx_td ltx_align_center" id="A9.T17.1.1.23.23.2"><span class="ltx_text" id="A9.T17.1.1.23.23.2.1" style="font-size:90%;">hoodie, puzzle, tennis, drum, oven, jeans, car, lamp, earrings, fan</span></td>
</tr>
<tr class="ltx_tr" id="A9.T17.1.1.24.24">
<td class="ltx_td ltx_align_center" id="A9.T17.1.1.24.24.1"><span class="ltx_text" id="A9.T17.1.1.24.24.1.1" style="font-size:90%;">neutral</span></td>
<td class="ltx_td ltx_align_center" id="A9.T17.1.1.24.24.2"><span class="ltx_text" id="A9.T17.1.1.24.24.2.1" style="font-size:90%;">jeans, speaker, blanket, sofa, car, puzzle, earrings, hoodie, tennis, rug</span></td>
</tr>
<tr class="ltx_tr" id="A9.T17.1.1.25.25">
<td class="ltx_td ltx_align_center" id="A9.T17.1.1.25.25.1"><span class="ltx_text" id="A9.T17.1.1.25.25.1.1" style="font-size:90%;">cold</span></td>
<td class="ltx_td ltx_align_center" id="A9.T17.1.1.25.25.2"><span class="ltx_text" id="A9.T17.1.1.25.25.2.1" style="font-size:90%;">hoodie, car, earrings, fan, lamp, curtains, couch, clock, puzzle, sweater</span></td>
</tr>
<tr class="ltx_tr" id="A9.T17.1.1.26.26">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A9.T17.1.1.26.26.1" rowspan="3"><span class="ltx_text" id="A9.T17.1.1.26.26.1.1" style="font-size:90%;">
<span class="ltx_inline-block ltx_transformed_outer" id="A9.T17.1.1.26.26.1.1.1" style="width:6.1pt;height:15.5pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:15.5pt;transform:translate(-4.68pt,-4.68pt) rotate(-90deg) ;">
<span class="ltx_p" id="A9.T17.1.1.26.26.1.1.1.1">Size</span>
</span></span></span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="A9.T17.1.1.26.26.2"><span class="ltx_text" id="A9.T17.1.1.26.26.2.1" style="font-size:90%;">large</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A9.T17.1.1.26.26.3"><span class="ltx_text" id="A9.T17.1.1.26.26.3.1" style="font-size:90%;">smartphone, jeans, drum, puzzle, hoodie, umbrella, pencil, clock, car, backpack</span></td>
</tr>
<tr class="ltx_tr" id="A9.T17.1.1.27.27">
<td class="ltx_td ltx_align_center" id="A9.T17.1.1.27.27.1"><span class="ltx_text" id="A9.T17.1.1.27.27.1.1" style="font-size:90%;">medium</span></td>
<td class="ltx_td ltx_align_center" id="A9.T17.1.1.27.27.2"><span class="ltx_text" id="A9.T17.1.1.27.27.2.1" style="font-size:90%;">hoodie, tripod, car, keyboard, drum, suitcase, smartphone, basketball, curtains, bottle</span></td>
</tr>
<tr class="ltx_tr" id="A9.T17.1.1.28.28">
<td class="ltx_td ltx_align_center" id="A9.T17.1.1.28.28.1"><span class="ltx_text" id="A9.T17.1.1.28.28.1.1" style="font-size:90%;">small</span></td>
<td class="ltx_td ltx_align_center" id="A9.T17.1.1.28.28.2"><span class="ltx_text" id="A9.T17.1.1.28.28.2.1" style="font-size:90%;">smartphone, hoodie, car, drum, pencil, jeans, backpack, keyboard, puzzle, toy</span></td>
</tr>
<tr class="ltx_tr" id="A9.T17.1.1.29.29">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A9.T17.1.1.29.29.1" rowspan="14"><span class="ltx_text" id="A9.T17.1.1.29.29.1.1" style="font-size:90%;">
<span class="ltx_inline-block ltx_transformed_outer" id="A9.T17.1.1.29.29.1.1.1" style="width:6.3pt;height:21.5pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:21.5pt;transform:translate(-7.64pt,-7.64pt) rotate(-90deg) ;">
<span class="ltx_p" id="A9.T17.1.1.29.29.1.1.1.1">Color</span>
</span></span></span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="A9.T17.1.1.29.29.2"><span class="ltx_text" id="A9.T17.1.1.29.29.2.1" style="font-size:90%;">black</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A9.T17.1.1.29.29.3"><span class="ltx_text" id="A9.T17.1.1.29.29.3.1" style="font-size:90%;">jeans, iron, fan, umbrella, hoodie, suitcase, puzzle, bowl, printer, electric</span></td>
</tr>
<tr class="ltx_tr" id="A9.T17.1.1.30.30">
<td class="ltx_td ltx_align_center" id="A9.T17.1.1.30.30.1"><span class="ltx_text" id="A9.T17.1.1.30.30.1.1" style="font-size:90%;">green</span></td>
<td class="ltx_td ltx_align_center" id="A9.T17.1.1.30.30.2"><span class="ltx_text" id="A9.T17.1.1.30.30.2.1" style="font-size:90%;">backpack, plate, puzzle, jeans, couch, umbrella, drum, soap, car, sweater</span></td>
</tr>
<tr class="ltx_tr" id="A9.T17.1.1.31.31">
<td class="ltx_td ltx_align_center" id="A9.T17.1.1.31.31.1"><span class="ltx_text" id="A9.T17.1.1.31.31.1.1" style="font-size:90%;">blue</span></td>
<td class="ltx_td ltx_align_center" id="A9.T17.1.1.31.31.2"><span class="ltx_text" id="A9.T17.1.1.31.31.2.1" style="font-size:90%;">jeans, electric, puzzle, plate, backpack, fishing, bottle, chair, car, umbrella</span></td>
</tr>
<tr class="ltx_tr" id="A9.T17.1.1.32.32">
<td class="ltx_td ltx_align_center" id="A9.T17.1.1.32.32.1"><span class="ltx_text" id="A9.T17.1.1.32.32.1.1" style="font-size:90%;">beige</span></td>
<td class="ltx_td ltx_align_center" id="A9.T17.1.1.32.32.2"><span class="ltx_text" id="A9.T17.1.1.32.32.2.1" style="font-size:90%;">jeans, soap, hoodie, drum, puzzle, bottle, suitcase, oven, bed, speaker</span></td>
</tr>
<tr class="ltx_tr" id="A9.T17.1.1.33.33">
<td class="ltx_td ltx_align_center" id="A9.T17.1.1.33.33.1"><span class="ltx_text" id="A9.T17.1.1.33.33.1.1" style="font-size:90%;">gold</span></td>
<td class="ltx_td ltx_align_center" id="A9.T17.1.1.33.33.2"><span class="ltx_text" id="A9.T17.1.1.33.33.2.1" style="font-size:90%;">puzzle, backpack, car, earrings, iron, bottle, drum, jeans, plate, fan</span></td>
</tr>
<tr class="ltx_tr" id="A9.T17.1.1.34.34">
<td class="ltx_td ltx_align_center" id="A9.T17.1.1.34.34.1"><span class="ltx_text" id="A9.T17.1.1.34.34.1.1" style="font-size:90%;">natural</span></td>
<td class="ltx_td ltx_align_center" id="A9.T17.1.1.34.34.2"><span class="ltx_text" id="A9.T17.1.1.34.34.2.1" style="font-size:90%;">jeans, bottle, puzzle, earrings, car, plate, oven, yoga, suitcase, drum</span></td>
</tr>
<tr class="ltx_tr" id="A9.T17.1.1.35.35">
<td class="ltx_td ltx_align_center" id="A9.T17.1.1.35.35.1"><span class="ltx_text" id="A9.T17.1.1.35.35.1.1" style="font-size:90%;">silver</span></td>
<td class="ltx_td ltx_align_center" id="A9.T17.1.1.35.35.2"><span class="ltx_text" id="A9.T17.1.1.35.35.2.1" style="font-size:90%;">bottle, jeans, puzzle, iron, drum, mirror, soap, electric, backpack, earrings</span></td>
</tr>
<tr class="ltx_tr" id="A9.T17.1.1.36.36">
<td class="ltx_td ltx_align_center" id="A9.T17.1.1.36.36.1"><span class="ltx_text" id="A9.T17.1.1.36.36.1.1" style="font-size:90%;">orange</span></td>
<td class="ltx_td ltx_align_center" id="A9.T17.1.1.36.36.2"><span class="ltx_text" id="A9.T17.1.1.36.36.2.1" style="font-size:90%;">puzzle, car, drum, backpack, jeans, umbrella, bottle, electric, oven, plate</span></td>
</tr>
<tr class="ltx_tr" id="A9.T17.1.1.37.37">
<td class="ltx_td ltx_align_center" id="A9.T17.1.1.37.37.1"><span class="ltx_text" id="A9.T17.1.1.37.37.1.1" style="font-size:90%;">red</span></td>
<td class="ltx_td ltx_align_center" id="A9.T17.1.1.37.37.2"><span class="ltx_text" id="A9.T17.1.1.37.37.2.1" style="font-size:90%;">car, drum, earrings, puzzle, microwave, pen, umbrella, bowl, electric, backpack</span></td>
</tr>
<tr class="ltx_tr" id="A9.T17.1.1.38.38">
<td class="ltx_td ltx_align_center" id="A9.T17.1.1.38.38.1"><span class="ltx_text" id="A9.T17.1.1.38.38.1.1" style="font-size:90%;">gray</span></td>
<td class="ltx_td ltx_align_center" id="A9.T17.1.1.38.38.2"><span class="ltx_text" id="A9.T17.1.1.38.38.2.1" style="font-size:90%;">jeans, soap, mouse, puzzle, plate, sweater, umbrella, printer, bed, backpack</span></td>
</tr>
<tr class="ltx_tr" id="A9.T17.1.1.39.39">
<td class="ltx_td ltx_align_center" id="A9.T17.1.1.39.39.1"><span class="ltx_text" id="A9.T17.1.1.39.39.1.1" style="font-size:90%;">brown</span></td>
<td class="ltx_td ltx_align_center" id="A9.T17.1.1.39.39.2"><span class="ltx_text" id="A9.T17.1.1.39.39.2.1" style="font-size:90%;">soap, iron, puzzle, sweater, umbrella, backpack, speaker, drum, hoodie, couch</span></td>
</tr>
<tr class="ltx_tr" id="A9.T17.1.1.40.40">
<td class="ltx_td ltx_align_center" id="A9.T17.1.1.40.40.1"><span class="ltx_text" id="A9.T17.1.1.40.40.1.1" style="font-size:90%;">yellow</span></td>
<td class="ltx_td ltx_align_center" id="A9.T17.1.1.40.40.2"><span class="ltx_text" id="A9.T17.1.1.40.40.2.1" style="font-size:90%;">plate, yoga, car, backpack, umbrella, soap, drum, puzzle, sweater, fan</span></td>
</tr>
<tr class="ltx_tr" id="A9.T17.1.1.41.41">
<td class="ltx_td ltx_align_center" id="A9.T17.1.1.41.41.1"><span class="ltx_text" id="A9.T17.1.1.41.41.1.1" style="font-size:90%;">purple</span></td>
<td class="ltx_td ltx_align_center" id="A9.T17.1.1.41.41.2"><span class="ltx_text" id="A9.T17.1.1.41.41.2.1" style="font-size:90%;">puzzle, drum, electric, hoodie, backpack, jeans, microwave, mouse, bottle, bowl</span></td>
</tr>
<tr class="ltx_tr" id="A9.T17.1.1.42.42">
<td class="ltx_td ltx_align_center" id="A9.T17.1.1.42.42.1"><span class="ltx_text" id="A9.T17.1.1.42.42.1.1" style="font-size:90%;">white</span></td>
<td class="ltx_td ltx_align_center" id="A9.T17.1.1.42.42.2"><span class="ltx_text" id="A9.T17.1.1.42.42.2.1" style="font-size:90%;">plate, suitcase, fan, jeans, puzzle, backpack, soap, umbrella, sweater, drum</span></td>
</tr>
<tr class="ltx_tr" id="A9.T17.1.1.43.43">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_t" id="A9.T17.1.1.43.43.1" rowspan="2"><span class="ltx_text" id="A9.T17.1.1.43.43.1.1" style="font-size:90%;">
<span class="ltx_inline-block ltx_transformed_outer" id="A9.T17.1.1.43.43.1.1.1" style="width:6.1pt;height:20.2pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:20.2pt;transform:translate(-7pt,-7pt) rotate(-90deg) ;">
<span class="ltx_p" id="A9.T17.1.1.43.43.1.1.1.1">Price</span>
</span></span></span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="A9.T17.1.1.43.43.2"><span class="ltx_text" id="A9.T17.1.1.43.43.2.1" style="font-size:90%;">high</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A9.T17.1.1.43.43.3"><span class="ltx_text" id="A9.T17.1.1.43.43.3.1" style="font-size:90%;">smartphone, drum, air, car, hoodie, jeans, backpack, umbrella, puzzle, electric</span></td>
</tr>
<tr class="ltx_tr" id="A9.T17.1.1.44.44">
<td class="ltx_td ltx_align_center ltx_border_bb" id="A9.T17.1.1.44.44.1"><span class="ltx_text" id="A9.T17.1.1.44.44.1.1" style="font-size:90%;">low</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A9.T17.1.1.44.44.2"><span class="ltx_text" id="A9.T17.1.1.44.44.2.1" style="font-size:90%;">drum, jeans, backpack, smartphone, car, hoodie, air, umbrella, puzzle, electric</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table shows the top influencing objects for various attributes within the simile correlation analysis.  For each attribute (e.g., color, size, heat, genre), the table lists the objects that most strongly influence the prediction of that attribute in the language model. This helps illustrate how the model connects similar concepts, such as linking the color of an apple to the color of a banana.  The strength of these connections is a key aspect of the model's compositional generalization ability.
> <details>
> <summary>read the caption</summary>
> Table 17: The most influencing objects of attributes in the simile correlation.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="A11.T18.10.10">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A11.T18.1.1.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="A11.T18.1.1.1.2"><span class="ltx_text" id="A11.T18.1.1.1.2.1" style="font-size:90%;">Completeness</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A11.T18.1.1.1.3"><span class="ltx_text" id="A11.T18.1.1.1.3.1" style="font-size:90%;">Correlation</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A11.T18.1.1.1.1">
<span class="ltx_text" id="A11.T18.1.1.1.1.1" style="font-size:90%;">Precision (Hit@Top-</span><math alttext="5" class="ltx_Math" display="inline" id="A11.T18.1.1.1.1.m1.1"><semantics id="A11.T18.1.1.1.1.m1.1a"><mn id="A11.T18.1.1.1.1.m1.1.1" mathsize="90%" xref="A11.T18.1.1.1.1.m1.1.1.cmml">5</mn><annotation-xml encoding="MathML-Content" id="A11.T18.1.1.1.1.m1.1b"><cn id="A11.T18.1.1.1.1.m1.1.1.cmml" type="integer" xref="A11.T18.1.1.1.1.m1.1.1">5</cn></annotation-xml><annotation encoding="application/x-tex" id="A11.T18.1.1.1.1.m1.1c">5</annotation><annotation encoding="application/x-llamapun" id="A11.T18.1.1.1.1.m1.1d">5</annotation></semantics></math><span class="ltx_text" id="A11.T18.1.1.1.1.2" style="font-size:90%;">)</span>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A11.T18.1.1.1.4"><span class="ltx_text" id="A11.T18.1.1.1.4.1" style="font-size:90%;">Generalization</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A11.T18.4.4.4">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" id="A11.T18.4.4.4.4"><span class="ltx_text" id="A11.T18.4.4.4.4.1" style="font-size:90%;">Whole Semantics</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="A11.T18.2.2.2.1"><math alttext="0.85" class="ltx_Math" display="inline" id="A11.T18.2.2.2.1.m1.1"><semantics id="A11.T18.2.2.2.1.m1.1a"><mn id="A11.T18.2.2.2.1.m1.1.1" mathsize="90%" xref="A11.T18.2.2.2.1.m1.1.1.cmml">0.85</mn><annotation-xml encoding="MathML-Content" id="A11.T18.2.2.2.1.m1.1b"><cn id="A11.T18.2.2.2.1.m1.1.1.cmml" type="float" xref="A11.T18.2.2.2.1.m1.1.1">0.85</cn></annotation-xml><annotation encoding="application/x-tex" id="A11.T18.2.2.2.1.m1.1c">0.85</annotation><annotation encoding="application/x-llamapun" id="A11.T18.2.2.2.1.m1.1d">0.85</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A11.T18.3.3.3.2"><math alttext="0.49" class="ltx_Math" display="inline" id="A11.T18.3.3.3.2.m1.1"><semantics id="A11.T18.3.3.3.2.m1.1a"><mn id="A11.T18.3.3.3.2.m1.1.1" mathsize="90%" xref="A11.T18.3.3.3.2.m1.1.1.cmml">0.49</mn><annotation-xml encoding="MathML-Content" id="A11.T18.3.3.3.2.m1.1b"><cn id="A11.T18.3.3.3.2.m1.1.1.cmml" type="float" xref="A11.T18.3.3.3.2.m1.1.1">0.49</cn></annotation-xml><annotation encoding="application/x-tex" id="A11.T18.3.3.3.2.m1.1c">0.49</annotation><annotation encoding="application/x-llamapun" id="A11.T18.3.3.3.2.m1.1d">0.49</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A11.T18.4.4.4.3"><math alttext="55.67\%" class="ltx_Math" display="inline" id="A11.T18.4.4.4.3.m1.1"><semantics id="A11.T18.4.4.4.3.m1.1a"><mrow id="A11.T18.4.4.4.3.m1.1.1" xref="A11.T18.4.4.4.3.m1.1.1.cmml"><mn id="A11.T18.4.4.4.3.m1.1.1.2" mathsize="90%" xref="A11.T18.4.4.4.3.m1.1.1.2.cmml">55.67</mn><mo id="A11.T18.4.4.4.3.m1.1.1.1" mathsize="90%" xref="A11.T18.4.4.4.3.m1.1.1.1.cmml">%</mo></mrow><annotation-xml encoding="MathML-Content" id="A11.T18.4.4.4.3.m1.1b"><apply id="A11.T18.4.4.4.3.m1.1.1.cmml" xref="A11.T18.4.4.4.3.m1.1.1"><csymbol cd="latexml" id="A11.T18.4.4.4.3.m1.1.1.1.cmml" xref="A11.T18.4.4.4.3.m1.1.1.1">percent</csymbol><cn id="A11.T18.4.4.4.3.m1.1.1.2.cmml" type="float" xref="A11.T18.4.4.4.3.m1.1.1.2">55.67</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="A11.T18.4.4.4.3.m1.1c">55.67\%</annotation><annotation encoding="application/x-llamapun" id="A11.T18.4.4.4.3.m1.1d">55.67 %</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="A11.T18.7.7.7">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="A11.T18.7.7.7.4"><span class="ltx_text" id="A11.T18.7.7.7.4.1" style="font-size:90%;">Word in a Phrase</span></th>
<td class="ltx_td ltx_align_center" id="A11.T18.5.5.5.1"><math alttext="0.86" class="ltx_Math" display="inline" id="A11.T18.5.5.5.1.m1.1"><semantics id="A11.T18.5.5.5.1.m1.1a"><mn id="A11.T18.5.5.5.1.m1.1.1" mathsize="90%" xref="A11.T18.5.5.5.1.m1.1.1.cmml">0.86</mn><annotation-xml encoding="MathML-Content" id="A11.T18.5.5.5.1.m1.1b"><cn id="A11.T18.5.5.5.1.m1.1.1.cmml" type="float" xref="A11.T18.5.5.5.1.m1.1.1">0.86</cn></annotation-xml><annotation encoding="application/x-tex" id="A11.T18.5.5.5.1.m1.1c">0.86</annotation><annotation encoding="application/x-llamapun" id="A11.T18.5.5.5.1.m1.1d">0.86</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="A11.T18.6.6.6.2"><math alttext="0.10" class="ltx_Math" display="inline" id="A11.T18.6.6.6.2.m1.1"><semantics id="A11.T18.6.6.6.2.m1.1a"><mn id="A11.T18.6.6.6.2.m1.1.1" mathsize="90%" xref="A11.T18.6.6.6.2.m1.1.1.cmml">0.10</mn><annotation-xml encoding="MathML-Content" id="A11.T18.6.6.6.2.m1.1b"><cn id="A11.T18.6.6.6.2.m1.1.1.cmml" type="float" xref="A11.T18.6.6.6.2.m1.1.1">0.10</cn></annotation-xml><annotation encoding="application/x-tex" id="A11.T18.6.6.6.2.m1.1c">0.10</annotation><annotation encoding="application/x-llamapun" id="A11.T18.6.6.6.2.m1.1d">0.10</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="A11.T18.7.7.7.3"><math alttext="2.00\%" class="ltx_Math" display="inline" id="A11.T18.7.7.7.3.m1.1"><semantics id="A11.T18.7.7.7.3.m1.1a"><mrow id="A11.T18.7.7.7.3.m1.1.1" xref="A11.T18.7.7.7.3.m1.1.1.cmml"><mn id="A11.T18.7.7.7.3.m1.1.1.2" mathsize="90%" xref="A11.T18.7.7.7.3.m1.1.1.2.cmml">2.00</mn><mo id="A11.T18.7.7.7.3.m1.1.1.1" mathsize="90%" xref="A11.T18.7.7.7.3.m1.1.1.1.cmml">%</mo></mrow><annotation-xml encoding="MathML-Content" id="A11.T18.7.7.7.3.m1.1b"><apply id="A11.T18.7.7.7.3.m1.1.1.cmml" xref="A11.T18.7.7.7.3.m1.1.1"><csymbol cd="latexml" id="A11.T18.7.7.7.3.m1.1.1.1.cmml" xref="A11.T18.7.7.7.3.m1.1.1.1">percent</csymbol><cn id="A11.T18.7.7.7.3.m1.1.1.2.cmml" type="float" xref="A11.T18.7.7.7.3.m1.1.1.2">2.00</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="A11.T18.7.7.7.3.m1.1c">2.00\%</annotation><annotation encoding="application/x-llamapun" id="A11.T18.7.7.7.3.m1.1d">2.00 %</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="A11.T18.10.10.10">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_bb" id="A11.T18.10.10.10.4"><span class="ltx_text" id="A11.T18.10.10.10.4.1" style="font-size:90%;">Subword</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A11.T18.8.8.8.1"><math alttext="0.87" class="ltx_Math" display="inline" id="A11.T18.8.8.8.1.m1.1"><semantics id="A11.T18.8.8.8.1.m1.1a"><mn id="A11.T18.8.8.8.1.m1.1.1" mathsize="90%" xref="A11.T18.8.8.8.1.m1.1.1.cmml">0.87</mn><annotation-xml encoding="MathML-Content" id="A11.T18.8.8.8.1.m1.1b"><cn id="A11.T18.8.8.8.1.m1.1.1.cmml" type="float" xref="A11.T18.8.8.8.1.m1.1.1">0.87</cn></annotation-xml><annotation encoding="application/x-tex" id="A11.T18.8.8.8.1.m1.1c">0.87</annotation><annotation encoding="application/x-llamapun" id="A11.T18.8.8.8.1.m1.1d">0.87</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A11.T18.9.9.9.2"><math alttext="0.00" class="ltx_Math" display="inline" id="A11.T18.9.9.9.2.m1.1"><semantics id="A11.T18.9.9.9.2.m1.1a"><mn id="A11.T18.9.9.9.2.m1.1.1" mathsize="90%" xref="A11.T18.9.9.9.2.m1.1.1.cmml">0.00</mn><annotation-xml encoding="MathML-Content" id="A11.T18.9.9.9.2.m1.1b"><cn id="A11.T18.9.9.9.2.m1.1.1.cmml" type="float" xref="A11.T18.9.9.9.2.m1.1.1">0.00</cn></annotation-xml><annotation encoding="application/x-tex" id="A11.T18.9.9.9.2.m1.1c">0.00</annotation><annotation encoding="application/x-llamapun" id="A11.T18.9.9.9.2.m1.1d">0.00</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A11.T18.10.10.10.3"><math alttext="0.00\%" class="ltx_Math" display="inline" id="A11.T18.10.10.10.3.m1.1"><semantics id="A11.T18.10.10.10.3.m1.1a"><mrow id="A11.T18.10.10.10.3.m1.1.1" xref="A11.T18.10.10.10.3.m1.1.1.cmml"><mn id="A11.T18.10.10.10.3.m1.1.1.2" mathsize="90%" xref="A11.T18.10.10.10.3.m1.1.1.2.cmml">0.00</mn><mo id="A11.T18.10.10.10.3.m1.1.1.1" mathsize="90%" xref="A11.T18.10.10.10.3.m1.1.1.1.cmml">%</mo></mrow><annotation-xml encoding="MathML-Content" id="A11.T18.10.10.10.3.m1.1b"><apply id="A11.T18.10.10.10.3.m1.1.1.cmml" xref="A11.T18.10.10.10.3.m1.1.1"><csymbol cd="latexml" id="A11.T18.10.10.10.3.m1.1.1.1.cmml" xref="A11.T18.10.10.10.3.m1.1.1.1">percent</csymbol><cn id="A11.T18.10.10.10.3.m1.1.1.2.cmml" type="float" xref="A11.T18.10.10.10.3.m1.1.1.2">0.00</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="A11.T18.10.10.10.3.m1.1c">0.00\%</annotation><annotation encoding="application/x-llamapun" id="A11.T18.10.10.10.3.m1.1d">0.00 %</annotation></semantics></math></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the correlation, precision (Hit@Top-5), and generalization performance for tokens categorized by their semantic completeness.  Three levels of semantic completeness are considered: 'Whole Semantics' (tokens with complete meaning), 'Word in a Phrase' (tokens forming part of a phrase), and 'Subword' (sub-word units). The results show that tokens with higher semantic completeness exhibit stronger correlations and higher precision, leading to better generalization.
> <details>
> <summary>read the caption</summary>
> Table 18: The correlation and W𝑊Witalic_W precision of tokens with different levels of semantic completeness.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2502.04520/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.04520/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.04520/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.04520/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.04520/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.04520/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.04520/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.04520/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.04520/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.04520/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.04520/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.04520/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.04520/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.04520/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.04520/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.04520/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.04520/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.04520/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.04520/19.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.04520/20.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}