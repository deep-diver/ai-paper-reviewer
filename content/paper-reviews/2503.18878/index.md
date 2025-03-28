---
title: "I Have Covered All the Bases Here: Interpreting Reasoning Features in Large Language Models via Sparse Autoencoders"
summary: "LLMs' reasoning is decoded via sparse autoencoders, revealing key features that, when steered, enhance performance. First mechanistic account of reasoning in LLMs!"
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["AI Theory", "Interpretability", "🏢 AIRI",]
showSummary: true
date: 2025-03-24
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2503.18878 {{< /keyword >}}
{{< keyword icon="writer" >}} Andrey Galichin et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-03-25 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2503.18878" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2503.18878" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2503.18878/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Large Language Models (LLMs) have shown great success, but their reasoning remains unexplored. This study uses **Sparse Autoencoders (SAEs)** to understand reasoning features in DeepSeek-R1 models.  The method identifies features driving reasoning by learning sparse decompositions of latent representations. It introduces a way to extract candidate "reasoning features" from SAE, validated via analysis and interpretability methods, showing a direct link to reasoning. (499 char.)



The study introduces **ReasonScore**, an evaluation metric for detecting reasoning features from the SAE representations. Features are validated through interpretability and causal interventions, enhancing reasoning by steering these features, showcasing their impact. Systematic feature steering improves reasoning performance, marking the first mechanistic account of reasoning in LLMs. (488 char.)

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Sparse Autoencoders (SAEs) can identify reasoning-specific features in LLMs, linking linguistic patterns to cognitive processes. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} ReasonScore effectively identifies SAE features responsible for reasoning, confirmed via interpretability techniques. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Steering experiments causally demonstrate that amplifying identified features induces reasoning behavior in LLMs. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper pioneers a **mechanistic understanding of reasoning in LLMs** by causally linking interpretable components to complex cognitive behaviors, potentially revolutionizing how we design and control AI reasoning.

------
#### Visual Insights



![](https://arxiv.org/html/2503.18878/extracted/6306108/img/word_distrib.png)

> 🔼 This figure shows the impact of manipulating reasoning-related features within a large language model (LLM) during text generation. The control group (blue) demonstrates the model's natural reasoning process, which may be less detailed or lack self-correction.  In contrast, the experimental group (green) shows the effect of 'steering' or amplifying the identified reasoning features.  Steering produces a more thorough reasoning process with evidence of self-correction and a more natural progression towards the final answer.  This supports the claim that the identified features are directly responsible for the model's reasoning capabilities.
> <details>
> <summary>read the caption</summary>
> Figure 1: Illustration of steering (amplifying) reasoning-specific features during LLM generation. Default generation (blue) shows standard model reasoning, whereas steering (green) induces increased reasoning, self-correction, and graceful transition to the final answer—evidence that the identified features are responsible for the reasoning concept.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S4.T1.1.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T1.1.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S4.T1.1.1.1.1.1" rowspan="3"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.1.1.1.1">Feature index</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="2" id="S4.T1.1.1.1.1.2" rowspan="2"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.1.1.2.1">AIME 2024</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="2" id="S4.T1.1.1.1.1.3" rowspan="2"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.1.1.3.1">MATH-500</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="2" id="S4.T1.1.1.1.1.4"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.1.1.4.1">GPQA</span></th>
</tr>
<tr class="ltx_tr" id="S4.T1.1.1.2.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" colspan="2" id="S4.T1.1.1.2.2.1"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.2.2.1.1">Diamond</span></th>
</tr>
<tr class="ltx_tr" id="S4.T1.1.1.3.3">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T1.1.1.3.3.1">pass@1</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T1.1.1.3.3.2"># tokens</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T1.1.1.3.3.3">pass@1</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T1.1.1.3.3.4"># tokens</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T1.1.1.3.3.5">pass@1</th>
<th class="ltx_td ltx_nopad_r ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T1.1.1.3.3.6"># tokens</th>
</tr>
<tr class="ltx_tr" id="S4.T1.1.1.4.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_t" id="S4.T1.1.1.4.4.1"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.4.4.1.1">No steering</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T1.1.1.4.4.2">46.6</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T1.1.1.4.4.3">12.0k</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T1.1.1.4.4.4">91.0</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T1.1.1.4.4.5">3.7k</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T1.1.1.4.4.6"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.4.4.6.1">54.0</span></th>
<th class="ltx_td ltx_nopad_r ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T1.1.1.4.4.7">7.9k</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T1.1.1.5.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T1.1.1.5.1.1"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.5.1.1.1">15136</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.5.1.2"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.5.1.2.1">60.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.5.1.3">13.8k</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.5.1.4">89.6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.5.1.5">4.3k</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.5.1.6">50.5</td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T1.1.1.5.1.7">8.9k</td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.1.6.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T1.1.1.6.2.1"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.6.2.1.1">17456</span></th>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.6.2.2">50.0</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.6.2.3">14.2k</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.6.2.4"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.6.2.4.1">93.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.6.2.5">4.2k</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.6.2.6">53.0</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T1.1.1.6.2.7">8.7k</td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.1.7.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T1.1.1.7.3.1"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.7.3.1.1">46379</span></th>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.7.3.2">53.3</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.7.3.3"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.7.3.3.1">15.5k</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.7.3.4">92.4</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.7.3.5"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.7.3.5.1">4.4k</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.7.3.6"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.7.3.6.1">55.5</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T1.1.1.7.3.7"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.7.3.7.1">9.0k</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.1.8.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S4.T1.1.1.8.4.1"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.8.4.1.1">62777</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.1.1.8.4.2">56.6</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.1.1.8.4.3">12.9k</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.1.1.8.4.4"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.8.4.4.1">93.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.1.1.8.4.5">4.1k</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.1.1.8.4.6">48.5</td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_bb" id="S4.T1.1.1.8.4.7">8.3k</td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 This table presents the performance of the DeepSeek-R1-Llama-8B large language model on three reasoning-related benchmarks: AIME-2024, MATH-500, and GPQA Diamond.  The model's performance is evaluated with and without 'steering'—a technique that systematically modifies specific features identified as being related to reasoning within the model's internal representation.  The results show the model's pass@1 accuracy (percentage of correctly answered problems) and the average number of output tokens generated in each experimental condition for different feature indices.  This allows for an assessment of the impact of steering on both the quality and the length of model responses.
> <details>
> <summary>read the caption</summary>
> Table 1: Performance and average number of output tokens for different steering experiments on reasoning-related benchmarks.
> </details>





### In-depth insights


#### Reasoning's SAEs
Reasoning in LLMs through Sparse Autoencoders (SAEs) is a promising area for mechanistic interpretability. SAEs can disentangle complex activations into sparse, interpretable features, potentially revealing how LLMs encode reasoning steps like deduction, reflection, or uncertainty handling. The core idea is that **reasoning isn't a monolithic process but arises from interactions of simpler, disentangled features**.  ReasonScore helps to automatically identify SAE features relevant to reasoning, guiding the analysis and causal interventions.  By steering these features, researchers can directly manipulate model behavior, strengthening or weakening reasoning abilities to confirm their causal role. Moreover, auto-interpretability and empirical evidence support the link. Overall, the SAE lens offers a unique way to dissect and understand the inner workings of reasoning in LLMs, moving beyond black-box observations towards a more mechanistic understanding of their capabilities. By revealing the features that drive reasoning, it may point towards directions for better control and enhancement of these abilities.

#### ReasonScore Metric
The paper introduces ReasonScore, a novel metric designed to quantify the reasoning relevance of individual features learned by Sparse Autoencoders (SAEs) within Large Language Models (LLMs). This metric is crucial for identifying which features are most responsible for the model's reasoning capabilities, such as reflection, uncertainty handling, and structured problem-solving. ReasonScore computes a score for each feature based on its activation patterns across a curated set of introspective vocabulary, penalizing features that activate uniformly across all reasoning tokens. The development of ReasonScore addresses a significant gap in understanding how reasoning is encoded within LLMs, offering a principled approach to disentangle activations and identify features causally linked to complex cognitive behaviors, marking a move toward interpretable AI.

#### Feature Steering
**Feature steering** appears as a pivotal method to modulate LLM behavior. By systematically tweaking specific feature activations, researchers aim to discern the influence of these features on LLM outputs. This approach contrasts with holistic methods, as it allows targeted adjustments and measurement. The study analyzes how modulating the 'reasoning' features influences text coherence, logic, and argumentation, providing insights into internal mechanisms. Moreover, feature steering provides a way to manipulate the model's cognitive processes. Amplifying certain features leads to improved step-by-step reasoning and self-correction, while suppressing features causes fragmented logic. This demonstrates the causal relationship of features and reasoning behaviors. This method offers a nuanced way to understand LLM reasoning.

#### Modulating Thought
While the provided paper doesn't explicitly have a section titled "Modulating Thought," the research explores mechanisms that effectively modulate the reasoning processes within Large Language Models (LLMs). Feature steering, a key technique discussed, directly influences the model's cognitive processes. **Steering allows for amplifying or suppressing specific reasoning-related features, impacting text coherence and logical consistency.** This highlights the potential for granular control over how LLMs approach problem-solving. The paper also investigates how the activations of identified reasoning features can be systematically altered to observe their causal impact on various reasoning benchmarks. This modulation through feature steering demonstrates that **LLMs' reasoning capabilities are not monolithic but can be shaped and guided by manipulating internal representations**. Furthermore, the observed changes in the number of output tokens and the overall reasoning accuracy suggest that **modulation affects the depth and thoroughness of the model's thought process**. This implies that by carefully selecting and modulating relevant features, it is possible to enhance desired reasoning characteristics, or even reduce unwanted ones.

#### Cognitive LLMs
While the paper doesn't explicitly use the heading "Cognitive LLMs," the entire work orbits this concept. The core idea revolves around dissecting the **reasoning mechanisms** within LLMs, particularly DeepSeek-R1. This directly relates to the 'cognitive' aspect, as reasoning is a key component of cognition. The authors delve into how LLMs encode and execute processes mimicking human-like thought, such as **reflection, uncertainty handling, and exploration**. The application of Sparse Autoencoders (SAEs) is a method to 'open the black box' and identify specific features associated with these cognitive processes. The ReasonScore metric further quantifies the relevance of SAE features to reasoning. The experiments involving steering also demonstrate a causal link between these features and the model's ability to solve complex problems. Ultimately, the study contributes to understanding the **internal representations of knowledge and reasoning** within LLMs, thus shedding light on their cognitive capabilities. The aim of this research is not to just improve performance, but to understand how these improvements are achieved. It would be interesting to see future work expanding upon the types of cognitive behaviors studied, as well as using their framework to compare and contrast various models of LLMs.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2503.18878/x1.png)

> 🔼 This figure shows the 30 words that most significantly changed in frequency between the reasoning traces generated by the DeepSeek-R1 model and the ground truth solutions for mathematical problems.  The x-axis represents the difference in frequency between the model's reasoning and the ground truth. Words to the right have a higher frequency in the model's reasoning, suggesting their importance in the model's reasoning process. The y-axis shows the words ranked by this frequency difference.  The size of the orange dots indicates the normalized absolute frequency of each word in the Google Books Ngram Corpus. Words with a frequency above a certain threshold (represented by the orange line) were excluded, focusing on words with high relative frequency in the model's reasoning output that are less common in general text.
> <details>
> <summary>read the caption</summary>
> Figure 2: The distribution of top 30 words with the greatest change in frequency between reasoning traces of DeepSeek-R1 and ground-truth solutions of math problems. Orange dots show the normalized absolute frequency taken from Google Books Ngram Corpus. We remove the words with absolute frequency above the pre-defined threshold (orange line), and keep those with the high relative frequency indicating reasoning.
> </details>



![](https://arxiv.org/html/2503.18878/x2.png)

> 🔼 This figure shows the impact of a specific reasoning feature (identified using Sparse Autoencoders) on the model's output logits.  Panel (a) presents the top 10 negative and top 10 positive logits most strongly influenced by this feature. This highlights the feature's effect on the model's prediction probabilities for various tokens. Panel (b) displays the 20 contexts (inputs) where this feature exhibits the highest activation values. These contexts illustrate the types of situations or linguistic patterns that trigger the activation of this reasoning feature. The figure thus provides a detailed analysis of a single reasoning feature's effects on model predictions and the conditions under which it becomes most active.
> <details>
> <summary>read the caption</summary>
> (a) Top 10101010 negative and positive output logits of the feature
> </details>



![](https://arxiv.org/html/2503.18878/x3.png)

> 🔼 This figure visualizes the top 20 examples where a specific reasoning feature in a Sparse Autoencoder (SAE) model shows the highest activation.  It demonstrates the contexts and phrases within the model's activations that strongly correlate with the feature's identification of reasoning processes like reflection, uncertainty, and exploration. Each example shows the input text where the feature is most active.
> <details>
> <summary>read the caption</summary>
> (b) Top 20202020 max activating examples
> </details>



![](https://arxiv.org/html/2503.18878/x4.png)

> 🔼 Figure 3 presents a detailed analysis of a specific reasoning feature (feature 17456) identified using Sparse Autoencoders (SAEs).  Panel (a) displays the distribution of the lowest and highest logit values associated with this feature. Logits are scores assigned to tokens during language model prediction; higher values represent increased probability. This distribution shows which tokens are most affected by this feature.  Panel (b) showcases various contexts in which feature 17456 demonstrates the highest activation level,  providing illustrative examples of how this feature influences the model's reasoning process. The color intensity in both panels correlates directly with the magnitude of activation values, enhancing the visualization of feature influence. Tokens appearing in bold represent the most significant activations within each context.
> <details>
> <summary>read the caption</summary>
> Figure 3: Empirical analysis results for the feature 17456174561745617456 in our SAE: (a) Distribution of the bottom and top logits influenced by one of the “reasoning” features. (b) Contexts where the “reasoning” feature activates the most. Increased color intensity represent higher activation values, with token highlighted in bold having the highest activation.
> </details>



![](https://arxiv.org/html/2503.18878/x5.png)

> 🔼 This figure presents a detailed analysis of a specific feature (feature number 17456) within a Sparse Autoencoder (SAE).  Panel (a) shows the top 10 most negative and top 10 most positive output logits influenced by this feature. Logits represent the model's confidence in predicting specific tokens, with higher values indicating stronger confidence.  This helps to understand the feature's effect on the model's output. Panel (b) displays the 20 contexts (input text snippets) where the feature exhibited the highest activation levels.  These contexts provide insights into the specific situations that activate this particular feature, thus clarifying its function and semantics within the model's reasoning process.
> <details>
> <summary>read the caption</summary>
> (a) Top 10101010 negative and positive output logits of the feature
> </details>



![](https://arxiv.org/html/2503.18878/x6.png)

> 🔼 This figure visualizes the contexts where a specific reasoning feature in a Sparse Autoencoder (SAE) model exhibits the highest activation.  The figure shows 20 examples of text segments from the model's activations where this feature is most strongly activated, providing insights into the types of reasoning tasks or linguistic patterns that trigger this feature.  This helps in understanding the feature's role in the model's overall reasoning process.
> <details>
> <summary>read the caption</summary>
> (b) Top 20202020 max activating examples
> </details>



![](https://arxiv.org/html/2503.18878/x7.png)

> 🔼 Figure 4 presents a detailed analysis of a specific reasoning feature (feature 15136) identified using Sparse Autoencoders (SAEs) within a Large Language Model (LLM).  Part (a) shows the distribution of the lowest and highest logit values (representing the model's confidence in predictions) influenced by this feature. Part (b) illustrates the contexts within the LLM's activations where this reasoning feature exhibits its strongest activation.  The visualization uses color intensity to represent the magnitude of feature activation, highlighting tokens with the highest activation in bold.
> <details>
> <summary>read the caption</summary>
> Figure 4: Empirical analysis results for the feature 15136151361513615136 in our SAE: (a) Distribution of the bottom and top logits influenced by one of the “reasoning” features. (b) Contexts where the “reasoning” feature activates the most. Increased color intensity represent higher activation values, with token highlighted in bold having the highest activation.
> </details>



![](https://arxiv.org/html/2503.18878/x8.png)

> 🔼 This figure shows the top 10 negative and positive output logits for a specific feature (identified using Sparse Autoencoders) in a large language model (LLM).  The figure helps to illustrate the impact of this feature on the LLM's output. Negative logits represent tokens that are less likely to be generated when the feature is active, while positive logits show tokens whose generation probability increases when the feature is active. This allows for analysis of how the activation of a single learned feature influences the LLM's word choices.
> <details>
> <summary>read the caption</summary>
> (a) Top 10101010 negative and positive output logits of the feature
> </details>



![](https://arxiv.org/html/2503.18878/x9.png)

> 🔼 This figure shows the top 20 examples where a specific reasoning feature in the Sparse Autoencoder (SAE) model exhibits its highest activation.  It complements Figure 3a, which shows the distribution of activations. The contexts illustrated here provide insights into what kinds of situations or linguistic patterns trigger the activation of this particular reasoning feature, highlighting its role in the model's reasoning process. Each example includes the model's generated text showing the use of words and phrases related to reasoning and thought processes.
> <details>
> <summary>read the caption</summary>
> (b) Top 20202020 max activating examples
> </details>



![](https://arxiv.org/html/2503.18878/x10.png)

> 🔼 Figure 5 presents a detailed empirical analysis of a specific reasoning feature (feature ID: 17456) identified using Sparse Autoencoders (SAEs).  Part (a) shows the distribution of low-activation (negative logits) and high-activation (positive logits) tokens influenced by this feature. This visualization helps understand the feature's impact on the model's output. Part (b) displays various contexts (text examples) where this feature exhibits the strongest activation, providing insights into the situations that trigger the feature. The use of color intensity further enhances the visualization by representing activation strength, with the boldest tokens carrying the highest activation levels. This detailed analysis provides evidence of how the identified feature contributes to the model's reasoning capabilities.
> <details>
> <summary>read the caption</summary>
> Figure 5: Empirical analysis results for the feature 17456174561745617456 in our SAE: (a) Distribution of the bottom and top logits influenced by one of the “reasoning” features. (b) Contexts where the “reasoning” feature activates the most. Increased color intensity represent higher activation values, with token highlighted in bold having the highest activation.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S4.T2.1.1">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T2.1.1.1.1">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_tt" id="S4.T2.1.1.1.1.1">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.1.1.1.1.1.1">
<span class="ltx_p" id="S4.T2.1.1.1.1.1.1.1" style="width:65.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.1.1.1.1.1.1">Group Name</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_tt" id="S4.T2.1.1.1.1.2">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.1.1.1.1.2.1">
<span class="ltx_p" id="S4.T2.1.1.1.1.2.1.1" style="width:65.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.1.1.2.1.1.1">Features</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_tt" id="S4.T2.1.1.1.1.3">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.1.1.1.1.3.1">
<span class="ltx_p" id="S4.T2.1.1.1.1.3.1.1" style="width:86.7pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.1.1.3.1.1.1">Possible Function</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_tt" id="S4.T2.1.1.1.1.4">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.1.1.1.1.4.1">
<span class="ltx_p" id="S4.T2.1.1.1.1.4.1.1" style="width:65.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.1.1.4.1.1.1">Effect Type</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_tt" id="S4.T2.1.1.1.1.5">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.1.1.1.1.5.1">
<span class="ltx_p" id="S4.T2.1.1.1.1.5.1.1" style="width:130.1pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.1.1.5.1.1.1">Observed Behavior</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.1.2.2">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="S4.T2.1.1.2.2.1">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.1.1.2.2.1.1">
<span class="ltx_p" id="S4.T2.1.1.2.2.1.1.1" style="width:65.0pt;">Reasoning Depth and Thoroughness</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="S4.T2.1.1.2.2.2">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.1.1.2.2.2.1">
<span class="ltx_p" id="S4.T2.1.1.2.2.2.1.1" style="width:65.0pt;">15317, 41141, 31505, 24117, 63010, 6608, 17456, 15136, 44396, 29818</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="S4.T2.1.1.2.2.3">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.1.1.2.2.3.1">
<span class="ltx_p" id="S4.T2.1.1.2.2.3.1.1" style="width:86.7pt;">Controls multi-step analysis, iteration, and self-correction in problem-solving.</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="S4.T2.1.1.2.2.4">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.1.1.2.2.4.1">
<span class="ltx_p" id="S4.T2.1.1.2.2.4.1.1" style="width:65.0pt;">Stylistic &amp; Structural, Semantic &amp; Logical Consistency</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S4.T2.1.1.2.2.5">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.1.1.2.2.5.1">
<span class="ltx_p" id="S4.T2.1.1.2.2.5.1.1" style="width:130.1pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.2.2.5.1.1.1">Strengthening:</span> Extensive step-by-step reasoning, multiple iterations, self-corrections. <span class="ltx_text ltx_font_bold" id="S4.T2.1.1.2.2.5.1.1.2">Weakening:</span> Direct answers with minimal steps.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.1.3.3">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="S4.T2.1.1.3.3.1">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.1.1.3.3.1.1">
<span class="ltx_p" id="S4.T2.1.1.3.3.1.1.1" style="width:65.0pt;">Numerical Accuracy and Validation</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="S4.T2.1.1.3.3.2">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.1.1.3.3.2.1">
<span class="ltx_p" id="S4.T2.1.1.3.3.2.1.1" style="width:65.0pt;">4990, 3466, 46379, 34813</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="S4.T2.1.1.3.3.3">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.1.1.3.3.3.1">
<span class="ltx_p" id="S4.T2.1.1.3.3.3.1.1" style="width:86.7pt;">Governs precision in calculations, unit conversions, and error-checking.</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="S4.T2.1.1.3.3.4">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.1.1.3.3.4.1">
<span class="ltx_p" id="S4.T2.1.1.3.3.4.1.1" style="width:65.0pt;">Semantic &amp; Logical Consistency</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S4.T2.1.1.3.3.5">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.1.1.3.3.5.1">
<span class="ltx_p" id="S4.T2.1.1.3.3.5.1.1" style="width:130.1pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.3.3.5.1.1.1">Strengthening:</span> Meticulous unit tracking, iterative re-evaluation. <span class="ltx_text ltx_font_bold" id="S4.T2.1.1.3.3.5.1.1.2">Weakening:</span> Direct results with potential errors.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.1.4.4">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="S4.T2.1.1.4.4.1">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.1.1.4.4.1.1">
<span class="ltx_p" id="S4.T2.1.1.4.4.1.1.1" style="width:65.0pt;">Code Generation vs. Explanatory Focus</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="S4.T2.1.1.4.4.2">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.1.1.4.4.2.1">
<span class="ltx_p" id="S4.T2.1.1.4.4.2.1.1" style="width:65.0pt;">26222, 49186</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="S4.T2.1.1.4.4.3">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.1.1.4.4.3.1">
<span class="ltx_p" id="S4.T2.1.1.4.4.3.1.1" style="width:86.7pt;">Balances executable code generation vs. verbal explanations.</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="S4.T2.1.1.4.4.4">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.1.1.4.4.4.1">
<span class="ltx_p" id="S4.T2.1.1.4.4.4.1.1" style="width:65.0pt;">Stylistic &amp; Structural</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S4.T2.1.1.4.4.5">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.1.1.4.4.5.1">
<span class="ltx_p" id="S4.T2.1.1.4.4.5.1.1" style="width:130.1pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.4.4.5.1.1.1">Strengthening: </span>Full code implementations. <span class="ltx_text ltx_font_bold" id="S4.T2.1.1.4.4.5.1.1.2">Weakening:</span> Conceptual explanations without code.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.1.5.5">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="S4.T2.1.1.5.5.1">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.1.1.5.5.1.1">
<span class="ltx_p" id="S4.T2.1.1.5.5.1.1.1" style="width:65.0pt;">Exploration of Multiple Methods</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="S4.T2.1.1.5.5.2">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.1.1.5.5.2.1">
<span class="ltx_p" id="S4.T2.1.1.5.5.2.1.1" style="width:65.0pt;">24117, 56973, 44396, 40464</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="S4.T2.1.1.5.5.3">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.1.1.5.5.3.1">
<span class="ltx_p" id="S4.T2.1.1.5.5.3.1.1" style="width:86.7pt;">Encourages evaluating alternative approaches before finalizing solutions.</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="S4.T2.1.1.5.5.4">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.1.1.5.5.4.1">
<span class="ltx_p" id="S4.T2.1.1.5.5.4.1.1" style="width:65.0pt;">Semantic &amp; Logical Exploration</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S4.T2.1.1.5.5.5">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.1.1.5.5.5.1">
<span class="ltx_p" id="S4.T2.1.1.5.5.5.1.1" style="width:130.1pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.5.5.5.1.1.1">Strengthening:</span> Compares multiple strategies (e.g., DP vs. greedy). <span class="ltx_text ltx_font_bold" id="S4.T2.1.1.5.5.5.1.1.2">Weakening:</span> Commits to the first viable method.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.1.6.6">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="S4.T2.1.1.6.6.1">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.1.1.6.6.1.1">
<span class="ltx_p" id="S4.T2.1.1.6.6.1.1.1" style="width:65.0pt;">Structural and Logical Organization</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="S4.T2.1.1.6.6.2">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.1.1.6.6.2.1">
<span class="ltx_p" id="S4.T2.1.1.6.6.2.1.1" style="width:65.0pt;">63010, 20877, 34700, 4858, 7369</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="S4.T2.1.1.6.6.3">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.1.1.6.6.3.1">
<span class="ltx_p" id="S4.T2.1.1.6.6.3.1.1" style="width:86.7pt;">Ensures clarity, step-by-step breakdown, and logical flow.</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="S4.T2.1.1.6.6.4">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.1.1.6.6.4.1">
<span class="ltx_p" id="S4.T2.1.1.6.6.4.1.1" style="width:65.0pt;">Structural, Semantic &amp; Instruction Clarity</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S4.T2.1.1.6.6.5">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.1.1.6.6.5.1">
<span class="ltx_p" id="S4.T2.1.1.6.6.5.1.1" style="width:130.1pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.6.6.5.1.1.1">Strengthening:</span> Well-structured explanations. <span class="ltx_text ltx_font_bold" id="S4.T2.1.1.6.6.5.1.1.2">Weakening:</span> Disorganized or fragmented reasoning.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.1.7.7">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="S4.T2.1.1.7.7.1">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.1.1.7.7.1.1">
<span class="ltx_p" id="S4.T2.1.1.7.7.1.1.1" style="width:65.0pt;">Symbolic vs. Numerical Reasoning</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="S4.T2.1.1.7.7.2">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.1.1.7.7.2.1">
<span class="ltx_p" id="S4.T2.1.1.7.7.2.1.1" style="width:65.0pt;">24593, 47523, 34813</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="S4.T2.1.1.7.7.3">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.1.1.7.7.3.1">
<span class="ltx_p" id="S4.T2.1.1.7.7.3.1.1" style="width:86.7pt;">Balances theoretical/ symbolic reasoning with direct numerical computation.</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="S4.T2.1.1.7.7.4">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.1.1.7.7.4.1">
<span class="ltx_p" id="S4.T2.1.1.7.7.4.1.1" style="width:65.0pt;">Semantic &amp; Logical Consistency</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S4.T2.1.1.7.7.5">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.1.1.7.7.5.1">
<span class="ltx_p" id="S4.T2.1.1.7.7.5.1.1" style="width:130.1pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.7.7.5.1.1.1">Strengthening:</span> Algebraic/ theoretical frameworks. <span class="ltx_text ltx_font_bold" id="S4.T2.1.1.7.7.5.1.1.2">Weakening:</span> Immediate numerical substitution.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.1.8.8">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb ltx_border_r ltx_border_t" id="S4.T2.1.1.8.8.1">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.1.1.8.8.1.1">
<span class="ltx_p" id="S4.T2.1.1.8.8.1.1.1" style="width:65.0pt;">Self-Correction and Backtracking</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb ltx_border_r ltx_border_t" id="S4.T2.1.1.8.8.2">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.1.1.8.8.2.1">
<span class="ltx_p" id="S4.T2.1.1.8.8.2.1.1" style="width:65.0pt;">62777, 6608, 46379</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb ltx_border_r ltx_border_t" id="S4.T2.1.1.8.8.3">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.1.1.8.8.3.1">
<span class="ltx_p" id="S4.T2.1.1.8.8.3.1.1" style="width:86.7pt;">Controls iterative refinement and error-checking.</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb ltx_border_r ltx_border_t" id="S4.T2.1.1.8.8.4">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.1.1.8.8.4.1">
<span class="ltx_p" id="S4.T2.1.1.8.8.4.1.1" style="width:65.0pt;">Semantic &amp; Logical Consistency</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb ltx_border_t" id="S4.T2.1.1.8.8.5">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.1.1.8.8.5.1">
<span class="ltx_p" id="S4.T2.1.1.8.8.5.1.1" style="width:130.1pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.8.8.5.1.1.1">Strengthening:</span> Multiple rounds of self-correction. <span class="ltx_text ltx_font_bold" id="S4.T2.1.1.8.8.5.1.1.2">Weakening: </span>Commits to initial answers without revision.</span>
</span>
</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 Table 2 presents a detailed analysis of reasoning features identified using GPT-4.  It categorizes features into clusters based on the type of reasoning they appear to influence (e.g., depth of analysis, numerical accuracy, code generation). For each cluster, the table lists the specific features involved, a description of their hypothesized role in shaping the model's reasoning process, and the observed changes in model behavior (e.g., increased or decreased reasoning depth, logical consistency) when these features are manipulated during text generation via 'feature steering'.
> <details>
> <summary>read the caption</summary>
> Table 2: Reasoning clusters obtained using GPT-4o. Each cluster is defined by a particular type of reasoning (depth of analysis, numerical checking, code generation), the specific features involved, their hypothesized function in shaping the models’ output style and logic, and the observed behaviors that emerge when using the feature steering.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S4.T3.1.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T3.1.1.1.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_th_row ltx_border_r ltx_border_tt" id="S4.T3.1.1.1.1.1"><span class="ltx_text ltx_font_bold" id="S4.T3.1.1.1.1.1.1">Feature Number</span></th>
<th class="ltx_td ltx_align_justify ltx_align_top ltx_th ltx_th_column ltx_border_tt" id="S4.T3.1.1.1.1.2">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.1.1.1.1.2.1">
<span class="ltx_p" id="S4.T3.1.1.1.1.2.1.1" style="width:346.9pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.1.1.1.1.2.1.1.1">Observed Behavior</span></span>
</span>
</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T3.1.1.2.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S4.T3.1.1.2.1.1">15136</th>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S4.T3.1.1.2.1.2">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.1.1.2.1.2.1">
<span class="ltx_p" id="S4.T3.1.1.2.1.2.1.1" style="width:346.9pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.1.1.2.1.2.1.1.1">Affects: </span> Reasoning Depth and Thoroughness, Self-Correction 
<br class="ltx_break"/><span class="ltx_text ltx_font_bold" id="S4.T3.1.1.2.1.2.1.1.2">Weakening (-4.0):</span> "To solve the problem, apply dynamic programming using a DP table where dp[i][j] stores the maximum coins collected up to (i,j). Compute dp[N][N] and return it if &gt;= C, else return -1." (Short, direct response with no reasoning) 
<br class="ltx_break"/><span class="ltx_text ltx_font_bold" id="S4.T3.1.1.2.1.2.1.1.3">Strengthening (4.0):</span> "Okay, let me carefully analyze the problem. The participant starts at (1,1) and must reach (N,N). Each move is either right or down. To ensure an optimal path, we must track accumulated coins at each step. The best approach appears to be dynamic programming. Let’s define dp[i][j] as the maximum coins collected at (i,j). But wait—what if we consider another approach? Perhaps a graph-based shortest path algorithm? No, because the constraint is maximizing coins, so DP makes sense. Now, let’s check boundary conditions…" (Extensive, iterative reasoning with multiple reconsiderations before formulating the solution)</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.1.3.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S4.T3.1.1.3.2.1">17456</th>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S4.T3.1.1.3.2.2">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.1.1.3.2.2.1">
<span class="ltx_p" id="S4.T3.1.1.3.2.2.1.1" style="width:346.9pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.1.1.3.2.2.1.1.1">Affects: </span> Reasoning Depth and Thoroughness, Self-Correction 
<br class="ltx_break"/><span class="ltx_text ltx_font_bold" id="S4.T3.1.1.3.2.2.1.1.2"> Weakening (-4.0):</span> "Use DP to compute the max coins. Return dp[N][N]." (Direct, without intermediate considerations)
<br class="ltx_break"/><span class="ltx_text ltx_font_bold" id="S4.T3.1.1.3.2.2.1.1.3">Strengthening (4.0):</span> "Let’s carefully check all possible paths. We start by defining dp[i][j] to store max coins up to (i,j). However, we should verify if a greedy approach works. Let’s compare outputs from both strategies before concluding…" (Persistent, multi-step reasoning)</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.1.4.3">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S4.T3.1.1.4.3.1">46379</th>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S4.T3.1.1.4.3.2">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.1.1.4.3.2.1">
<span class="ltx_p" id="S4.T3.1.1.4.3.2.1.1" style="width:346.9pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.1.1.4.3.2.1.1.1">Affects: </span> Numerical Accuracy and Validation 
<br class="ltx_break"/><span class="ltx_text ltx_font_bold" id="S4.T3.1.1.4.3.2.1.1.2"> Weakening (-4.0): </span>"Apply standard DP with dp[i][j] transition. Compute final result." (Straightforward, minimal reasoning) 
<br class="ltx_break"/><span class="ltx_text ltx_font_bold" id="S4.T3.1.1.4.3.2.1.1.3">Strengthening (4.0):</span> "Before solving, let’s analyze constraints. The participant moves through a grid and must maximize coins. Should we use a DP approach or consider a graph-based traversal? Let’s derive the recurrence relation first…" (Detailed breakdown of reasoning)</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.1.5.4">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_bb ltx_border_r ltx_border_t" id="S4.T3.1.1.5.4.1">62777</th>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb ltx_border_t" id="S4.T3.1.1.5.4.2">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.1.1.5.4.2.1">
<span class="ltx_p" id="S4.T3.1.1.5.4.2.1.1" style="width:346.9pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.1.1.5.4.2.1.1.1">Affects: </span> Self-Correction and Backtracking 
<br class="ltx_break"/><span class="ltx_text ltx_font_bold" id="S4.T3.1.1.5.4.2.1.1.2"> Weakening (-4.0 to -2.5):</span> "We assume the input is valid and proceed with computation." 
<br class="ltx_break"/><span class="ltx_text ltx_font_bold" id="S4.T3.1.1.5.4.2.1.1.3"> Strengthening (+2.5 to +4.0):</span> "We must ensure that when n=2, the grid still allows a valid path."</span>
</span>
</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a detailed analysis of how manipulating specific features identified by the ReasonScore impacts the LLM's reasoning process.  For each selected feature, it shows the observed effects of both strengthening (positive steering) and weakening (negative steering) its activation. The observed changes are categorized into four key aspects of reasoning: depth, thoroughness, self-correction, and numerical accuracy.  By examining contrasting responses under different steering conditions, the table demonstrates how these features causally influence various facets of the model's reasoning behavior.
> <details>
> <summary>read the caption</summary>
> Table 3: Observed effects of specific feature steering on the model reasoning behavior. Each feature is associated with changes in reasoning depth, thoroughness, self-correction, and numerical accuracy, as demonstrated by contrasting responses with negative and positive steering strengths.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2503.18878/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.18878/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.18878/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.18878/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.18878/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.18878/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.18878/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.18878/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.18878/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.18878/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.18878/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.18878/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.18878/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.18878/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.18878/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.18878/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.18878/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}