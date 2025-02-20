---
title: "Presumed Cultural Identity: How Names Shape LLM Responses"
summary: "LLMs personalize based on user names, but this study reveals that cultural presumptions in LLM responses risk reinforcing stereotypes."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["AI Theory", "Fairness", "🏢 University of Copenhagen",]
showSummary: true
date: 2025-02-17
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2502.11995 {{< /keyword >}}
{{< keyword icon="writer" >}} Siddhesh Pawar et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-02-20 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2502.11995" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2502.11995" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2502.11995/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Names carry deep cultural and personal identity, but when interacting with LLMs, names as a core indicator can lead to over-simplification of complex identities. Previous works have examined gender and race presumptions based on names, but there has been no work on investigating cultural presumptions in LLMs. Examining name-biased cultural presumptions reveals how models represent, propagate and flatten cultural stereotypes, but also provides insights for developing more equitable, culturally sensitive AI systems.



To address the issue, this study measures cultural presumptions in LLM responses to common suggestion-seeking queries, noting cultural identity associated with names. With 900 names across 30 cultures and 4 LLMs, the analysis exposes strong cultural identity assumptions. The study reveals significant asymmetries in how LLMs associate names with cultural elements and uncovers substantial disparity between names, informing nuanced personalization systems.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} LLMs exhibit strong cultural identity assumptions based on names, leading to biased responses. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} East Asian and Russian names are particularly prone to cultural stereotyping in LLM outputs. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Clothing and tradition-related queries in LLMs amplify cultural biases significantly. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This study underscores the need for nuanced personalization strategies in LLMs, urging researchers to develop methods that respect cultural diversity and avoid reinforcing stereotypes. The findings pave the way for AI systems that are both culturally aware and ethically sound, enhancing user experience while minimizing bias.

------
#### Visual Insights



![](https://arxiv.org/html/2502.11995/extracted/6211043/figures/Name-bias-eg.png)

> 🔼 The figure displays a conversation between a user and a large language model (LLM). The user's name, Raj, is used to infer his cultural background.  Consequently, the LLM's response to the user's query (about wedding outfits) suggests clothing options typically associated with Indian culture (Sherwani, Kurta and Churidars), demonstrating that the LLM made assumptions about the user's cultural identity based solely on his name. This highlights a potential bias within the LLM's personalization mechanisms.
> <details>
> <summary>read the caption</summary>
> Figure 1: Example of an interaction with an LLM with an identity presumption based on the name
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S5.T1.1">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S5.T1.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_tt" id="S5.T1.1.1.1.1" style="padding:0.5pt 3.0pt;">Mark</th>
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top ltx_border_tt" id="S5.T1.1.1.1.2" style="padding:0.5pt 3.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T1.1.1.1.2.1">
<span class="ltx_p" id="S5.T1.1.1.1.2.1.1" style="width:170.7pt;">US (10.12%), UK (5.59%), Ireland (3.03%),</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.T1.1.2.2">
<th class="ltx_td ltx_th ltx_th_row" id="S5.T1.1.2.2.1" style="padding:0.5pt 3.0pt;"></th>
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="S5.T1.1.2.2.2" style="padding:0.5pt 3.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T1.1.2.2.2.1">
<span class="ltx_p" id="S5.T1.1.2.2.2.1.1" style="width:170.7pt;">Canada (0.97%)</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.T1.1.3.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T1.1.3.3.1" style="padding:0.5pt 3.0pt;">James</th>
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="S5.T1.1.3.3.2" style="padding:0.5pt 3.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T1.1.3.3.2.1">
<span class="ltx_p" id="S5.T1.1.3.3.2.1.1" style="width:170.7pt;">US (12.15%), UK (5.52%), Ireland (3.42%),</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.T1.1.4.4">
<th class="ltx_td ltx_th ltx_th_row" id="S5.T1.1.4.4.1" style="padding:0.5pt 3.0pt;"></th>
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="S5.T1.1.4.4.2" style="padding:0.5pt 3.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T1.1.4.4.2.1">
<span class="ltx_p" id="S5.T1.1.4.4.2.1.1" style="width:170.7pt;">Canada (0.58%)</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.T1.1.5.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S5.T1.1.5.5.1" style="padding:0.5pt 3.0pt;">Juan</th>
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top ltx_border_t" id="S5.T1.1.5.5.2" style="padding:0.5pt 3.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T1.1.5.5.2.1">
<span class="ltx_p" id="S5.T1.1.5.5.2.1.1" style="width:170.7pt;">Mexico (13.90%), US (11.32%), Spain (6.21%),</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.T1.1.6.6">
<th class="ltx_td ltx_th ltx_th_row" id="S5.T1.1.6.6.1" style="padding:0.5pt 3.0pt;"></th>
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="S5.T1.1.6.6.2" style="padding:0.5pt 3.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T1.1.6.6.2.1">
<span class="ltx_p" id="S5.T1.1.6.6.2.1.1" style="width:170.7pt;">Peru (2.95%)</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.T1.1.7.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T1.1.7.7.1" style="padding:0.5pt 3.0pt;">Maria</th>
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="S5.T1.1.7.7.2" style="padding:0.5pt 3.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T1.1.7.7.2.1">
<span class="ltx_p" id="S5.T1.1.7.7.2.1.1" style="width:170.7pt;">Mexico (11.51%), US (9.12%), Italy (9.04%),</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.T1.1.8.8">
<th class="ltx_td ltx_th ltx_th_row" id="S5.T1.1.8.8.1" style="padding:0.5pt 3.0pt;"></th>
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="S5.T1.1.8.8.2" style="padding:0.5pt 3.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T1.1.8.8.2.1">
<span class="ltx_p" id="S5.T1.1.8.8.2.1.1" style="width:170.7pt;">Spain (4.69%), Brazil (3.00%), Peru (1.97%),</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.T1.1.9.9">
<th class="ltx_td ltx_th ltx_th_row" id="S5.T1.1.9.9.1" style="padding:0.5pt 3.0pt;"></th>
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="S5.T1.1.9.9.2" style="padding:0.5pt 3.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T1.1.9.9.2.1">
<span class="ltx_p" id="S5.T1.1.9.9.2.1.1" style="width:170.7pt;">Portugal (0.80%)</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.T1.1.10.10">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T1.1.10.10.1" style="padding:0.5pt 3.0pt;">Carlos</th>
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="S5.T1.1.10.10.2" style="padding:0.5pt 3.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T1.1.10.10.2.1">
<span class="ltx_p" id="S5.T1.1.10.10.2.1.1" style="width:170.7pt;">Mexico (13.25%), US (10.74%), Brazil (4.52%),</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.T1.1.11.11">
<th class="ltx_td ltx_th ltx_th_row" id="S5.T1.1.11.11.1" style="padding:0.5pt 3.0pt;"></th>
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="S5.T1.1.11.11.2" style="padding:0.5pt 3.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T1.1.11.11.2.1">
<span class="ltx_p" id="S5.T1.1.11.11.2.1.1" style="width:170.7pt;">Spain (4.46%), Peru (2.57%), Portugal (1.19%)</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.T1.1.12.12">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S5.T1.1.12.12.1" style="padding:0.5pt 3.0pt;">Fabio</th>
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top ltx_border_t" id="S5.T1.1.12.12.2" style="padding:0.5pt 3.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T1.1.12.12.2.1">
<span class="ltx_p" id="S5.T1.1.12.12.2.1.1" style="width:170.7pt;">Italy (14.58%), Switzerland (1.12%)</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.T1.1.13.13">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T1.1.13.13.1" style="padding:0.5pt 3.0pt;">Isabelle</th>
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="S5.T1.1.13.13.2" style="padding:0.5pt 3.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T1.1.13.13.2.1">
<span class="ltx_p" id="S5.T1.1.13.13.2.1.1" style="width:170.7pt;">France (5.08%), Switzerland (1.11%)</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.T1.1.14.14">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S5.T1.1.14.14.1" style="padding:0.5pt 3.0pt;">Ali</th>
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top ltx_border_t" id="S5.T1.1.14.14.2" style="padding:0.5pt 3.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T1.1.14.14.2.1">
<span class="ltx_p" id="S5.T1.1.14.14.2.1.1" style="width:170.7pt;">Türkiye (7.28%), Iran (4.66%),</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.T1.1.15.15">
<th class="ltx_td ltx_th ltx_th_row" id="S5.T1.1.15.15.1" style="padding:0.5pt 3.0pt;"></th>
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="S5.T1.1.15.15.2" style="padding:0.5pt 3.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T1.1.15.15.2.1">
<span class="ltx_p" id="S5.T1.1.15.15.2.1.1" style="width:170.7pt;">Morocco (3.48%), Egypt (2.16%)</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.T1.1.16.16">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T1.1.16.16.1" style="padding:0.5pt 3.0pt;">Mohammed</th>
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="S5.T1.1.16.16.2" style="padding:0.5pt 3.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T1.1.16.16.2.1">
<span class="ltx_p" id="S5.T1.1.16.16.2.1.1" style="width:170.7pt;">Morocco (6.94%), Egypt (5.00%)</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.T1.1.17.17">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T1.1.17.17.1" style="padding:0.5pt 3.0pt;">Maryam</th>
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="S5.T1.1.17.17.2" style="padding:0.5pt 3.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T1.1.17.17.2.1">
<span class="ltx_p" id="S5.T1.1.17.17.2.1.1" style="width:170.7pt;">Iran (6.59%), Morocco (2.01%)</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.T1.1.18.18">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S5.T1.1.18.18.1" style="padding:0.5pt 3.0pt;">Jun</th>
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top ltx_border_t" id="S5.T1.1.18.18.2" style="padding:0.5pt 3.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T1.1.18.18.2.1">
<span class="ltx_p" id="S5.T1.1.18.18.2.1.1" style="width:170.7pt;">Japan (19.53%), China (10.05%),</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.T1.1.19.19">
<th class="ltx_td ltx_th ltx_th_row" id="S5.T1.1.19.19.1" style="padding:0.5pt 3.0pt;"></th>
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="S5.T1.1.19.19.2" style="padding:0.5pt 3.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T1.1.19.19.2.1">
<span class="ltx_p" id="S5.T1.1.19.19.2.1.1" style="width:170.7pt;">Philippines (2.81%)</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.T1.1.20.20">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T1.1.20.20.1" style="padding:0.5pt 3.0pt;">Yu</th>
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="S5.T1.1.20.20.2" style="padding:0.5pt 3.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T1.1.20.20.2.1">
<span class="ltx_p" id="S5.T1.1.20.20.2.1.1" style="width:170.7pt;">Japan (15.21%), China (13.73%)</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.T1.1.21.21">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S5.T1.1.21.21.1" style="padding:0.5pt 3.0pt;">Cherry</th>
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top ltx_border_bb" id="S5.T1.1.21.21.2" style="padding:0.5pt 3.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T1.1.21.21.2.1">
<span class="ltx_p" id="S5.T1.1.21.21.2.1.1" style="width:170.7pt;">China (10.92%), Philippines (4.62%)</span>
</span>
</td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 This table shows the clustering of names based on their common cultural associations across multiple countries.  For each name cluster, the table lists the countries strongly associated with those names and the calculated bias values.  These bias values represent the extent to which language models associate specific cultural elements with those names, reflecting potential biases in the models' outputs.
> <details>
> <summary>read the caption</summary>
> Table 1: Name Clusters with country associations and bias values
> </details>





### In-depth insights


#### Name Bias in LLMs
**LLMs can exhibit name bias**, influenced by their training data which links names to identities.  This bias surfaces as altered outputs when names are in prompts. Prior studies focus on gender and race. **Cultural presumptions in LLMs** are underexplored, but are important for equitable AI. These presumptions reveal how models represent stereotypes, affecting cultural sensitivity. Understanding **name-based cultural bias** is key to customizing models without reinforcing stereotypes.

#### Cultural Presumption
Cultural presumption in language models can be insidious. LLMs **infer user backgrounds from names**, leading to personalized responses. This can create bias, especially when names strongly correlate with certain cultures. For instance, East Asian and Indian names evoke strong associations. LLMs can overemphasize specific suggestions linked to these cultures, which is evident in Llama's responses. Certain names don't prompt specific cultural suggestions leading to **generic answers**. The analysis shows that LLMs make implicit assumptions about a user's culture based on their name leading to skewed and misleading results. The LLMs output reinforces stereotypes that may negatively impact the user and the LLMs ability to provide appropriate guidance.

#### Limited Customs
**Equating countries with cultures simplifies complex cultural identities**, failing to capture nuances like cross-national cultural groups, intra-national cultural distinctions, diaspora communities, and regional variations. This simplification, driven by the constraints of the names dataset and CANDLE, masks nuanced cultural associations and biases in model responses. Additionally, the source of names introduces a sampling bias: **countries with high internet penetration and digital presence are overrepresented**, impacting LLMs' training data. This overrepresentation skews cultural suggestions, with names from digitally prominent countries like South Korea and Japan eliciting frequent, specific cultural references, while regions with lower digital representation yield more generic responses. This data skew highlights digital accessibility disparities rather than reflecting pure cultural biases. The model's tendency to draw from accessible data underscores the need for more balanced and diverse training data to mitigate skewed cultural associations.

#### Cross-Cult. Biases
Analyzing cross-cultural biases reveals that **mentioning names reduces response diversity**. For Japan, China, and India, responses without names already favor those cultures. Adding names from those cultures further skews the responses, demonstrating that names can reinforce existing biases. This flattening of cultural identities suggests that LLMs **tend to overemphasize certain cultures**, potentially marginalizing others. This highlights the complex interplay between personalization and the inadvertent reinforcement of stereotypes. The models consistently favor suggestions from specific regions when names are given. **Bias values indicate that even without names, cultural preferences are already present**, suggesting that the inclusion of a name amplifies an existing trend of cultural over-representation, with potentially broad ethical implications related to inclusivity and representation. The observation is such that the models don't have equal representation for each countries.

#### Ethical Concerns
The study demonstrates consideration for privacy by using only first names, aiming to prevent individual identification. However, name-based cultural assumptions in LLMs can lead to **stereotyping** and misrepresentation, affecting user experience negatively. In customer service or content recommendation, misguided personalization reinforces cultural homogenization, potentially harming user sentiment and causing **frustration** or alienation. The study highlights the importance of addressing these ethical concerns to prevent negative impacts, like user dropoff among underrepresented groups, which can lead to misguided personalization, thus **reinforcing** cultural homogeneity.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2502.11995/extracted/6211043/figures/name-bias-setup.png)

> 🔼 This figure illustrates the experimental setup used in the study to analyze cultural presumptions in Large Language Model (LLM) responses.  The process begins with selecting names and associated cultures from a dataset, which are then paired with information-seeking questions. These prompts, including names, are fed to four different LLMs, generating responses. The responses are then evaluated using two methods: an LLM-as-a-judge approach, and a method comparing responses to pre-defined cultural assertions.  The outcome assesses the extent of cultural presumptions made by the LLMs based on the names provided in the prompts.
> <details>
> <summary>read the caption</summary>
> Figure 2: Experimental Setup
> </details>



![](https://arxiv.org/html/2502.11995/x1.png)

> 🔼 This figure displays the average default bias across different LLMs and cultural facets (food, clothing, tradition & rituals).  Default bias refers to the inherent cultural biases present in LLM responses even *without* any user name provided in the prompt.  Higher values indicate a stronger predisposition towards certain cultures in the generated text.
> <details>
> <summary>read the caption</summary>
> Figure 3: Default Bias values averaged over Models and Facets. For details refer to subsection 3.8.
> </details>



![](https://arxiv.org/html/2502.11995/extracted/6211043/figures/vertical_bias_plots.png)

> 🔼 This figure displays the cultural bias exhibited by four different large language models (LLMs) when presented with names from various cultural backgrounds.  The bias is calculated as the difference between the bias observed with names and the default bias without names, as described in section 3.8 of the paper.  Each bar represents a country, and its height indicates the degree of cultural bias for that country across all evaluated models and aspects (food, clothing, and rituals). Positive values suggest that the model displays a stronger bias towards associating the given names with the respective culture than would be expected based on default bias. Conversely, negative values indicate a weaker association than expected.
> <details>
> <summary>read the caption</summary>
> Figure 4: Bias across models above the default bais. For calculation of bais refer to section 3.8
> </details>



![](https://arxiv.org/html/2502.11995/extracted/6211043/figures/aspect_boxplot.png)

> 🔼 This box plot visualizes the cultural bias in Large Language Model (LLM) responses, broken down by facet (clothing, food, rituals & traditions).  For each facet, the plot shows the average bias for different countries across four different LLMs. The bias score represents how often the model's responses reflect culturally specific aspects of the named country, compared to responses where no country is explicitly mentioned. Higher values indicate stronger cultural bias towards that country.
> <details>
> <summary>read the caption</summary>
> Figure 5: Box plot showing comparison of bias for countries values (averaged over 4 models) for each facet.
> </details>



![](https://arxiv.org/html/2502.11995/extracted/6211043/figures/overall_diff_heatmap.png)

> 🔼 This heatmap visualizes the cross-cultural bias in Large Language Model (LLM) responses when names from different countries are used in prompts.  Each cell in the heatmap represents the bias score (calculated as the difference between bias with and without names; see Section 3.8) for a given pair of countries. The X-axis shows the country being investigated for bias in the LLM's response, while the Y-axis shows the country of origin for the name used in the prompt. Warmer colors indicate stronger biases, meaning the LLM's response shows a stronger association with a specific culture when a name from that culture is present in the prompt.  Cooler colors show weaker biases or even negative biases, suggesting the name may not strongly trigger cultural assumptions.
> <details>
> <summary>read the caption</summary>
> Figure 6: Cross-cultural bias heatmap for bias values over the default (3.8). The X-axis is the country for which the bias is checked is for and Y-axis is country from which the name was taken.
> </details>



![](https://arxiv.org/html/2502.11995/extracted/6211043/figures/names_biased_responses_plot.png)

> 🔼 This figure shows the distribution of the number of biased responses generated by LLMs for each of the names used in the study.  The x-axis represents the individual names used in the prompts (omitted for clarity), and the y-axis shows the count of biased responses associated with each name. The distribution is heavily skewed, indicating that a relatively small number of names account for a large proportion of the biased responses while the majority of the names have very few or no biased responses.
> <details>
> <summary>read the caption</summary>
> Figure 7: Distribution of biased responses per name [Names are omitted from the x-axis to avoid clutter]
> </details>



![](https://arxiv.org/html/2502.11995/extracted/6211043/figures/grouped_percentage_comparison.png)

> 🔼 This figure shows the percentage of biased responses containing each specific word, relative to the total number of biased responses across all words. It helps to understand which words contribute most strongly to the cultural bias observed in the model's responses when names are included in prompts.
> <details>
> <summary>read the caption</summary>
> Figure 8: Percentage contribution of each word’s biased responses relative to the overall number of biased responses
> </details>



![](https://arxiv.org/html/2502.11995/extracted/6211043/figures/country_differences_baroai.png)

> 🔼 This figure displays a bar chart illustrating the degree to which OpenAI's GPT-40-mini model exhibits cultural biases when names are included in prompts, compared to responses without names (default bias).  The chart showcases the difference in bias for various countries, indicating the extent to which the model associates specific names with particular cultures, thereby demonstrating the cultural presumptions embedded within the model's responses.
> <details>
> <summary>read the caption</summary>
> Figure 9: OpenAI GPT-4o-mini name bias over the default responses
> </details>



![](https://arxiv.org/html/2502.11995/extracted/6211043/figures/grid_bias_plots_base.png)

> 🔼 This figure presents a comparison of default bias across four different large language models (LLMs).  Default bias refers to the inherent biases exhibited by LLMs in their responses even without any user-provided names or identifying information.  Each bar in the chart represents a country, and the height of the bar shows the average default bias score for that country across various facets (food, clothing, tradition) considered in the study.  The figure helps to visualize how different LLMs display varying levels of default bias towards different cultures, providing insights into the underlying biases present in the models' training data.
> <details>
> <summary>read the caption</summary>
> Figure 10: Default Bias across models, for calculation and discussion about default bias refer to section 3.8
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="A1.T2.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A1.T2.1.1.1">
<th class="ltx_td ltx_nopad_r ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="A1.T2.1.1.1.1" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="A1.T2.1.1.1.1.1">Model</span></th>
<th class="ltx_td ltx_nopad_l ltx_align_justify ltx_align_top ltx_th ltx_th_column ltx_border_tt" id="A1.T2.1.1.1.2" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T2.1.1.1.2.1">
<span class="ltx_p" id="A1.T2.1.1.1.2.1.1" style="width:128.0pt;"><span class="ltx_text ltx_font_bold" id="A1.T2.1.1.1.2.1.1.1">HuggingFace Repository</span></span>
</span>
</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A1.T2.1.2.1">
<th class="ltx_td ltx_nopad_r ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A1.T2.1.2.1.1" style="padding-left:3.0pt;padding-right:3.0pt;">Aya</th>
<td class="ltx_td ltx_nopad_l ltx_align_justify ltx_align_top ltx_border_t" id="A1.T2.1.2.1.2" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T2.1.2.1.2.1">
<span class="ltx_p" id="A1.T2.1.2.1.2.1.1" style="width:128.0pt;">CohereForAI/aya-expanse-32b</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T2.1.3.2">
<th class="ltx_td ltx_nopad_r ltx_align_left ltx_th ltx_th_row" id="A1.T2.1.3.2.1" style="padding-left:3.0pt;padding-right:3.0pt;">Mistral</th>
<td class="ltx_td ltx_nopad_l ltx_align_justify ltx_align_top" id="A1.T2.1.3.2.2" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T2.1.3.2.2.1">
<span class="ltx_p" id="A1.T2.1.3.2.2.1.1" style="width:128.0pt;">mistralai/Mistral-Nemo-Instruct-2407</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T2.1.4.3">
<th class="ltx_td ltx_nopad_r ltx_align_left ltx_th ltx_th_row" id="A1.T2.1.4.3.1" style="padding-left:3.0pt;padding-right:3.0pt;">DeepSeek</th>
<td class="ltx_td ltx_nopad_l ltx_align_justify ltx_align_top" id="A1.T2.1.4.3.2" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T2.1.4.3.2.1">
<span class="ltx_p" id="A1.T2.1.4.3.2.1.1" style="width:128.0pt;">deepseek-ai/DeepSeek-R1-Distill-Llama-8B</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T2.1.5.4">
<th class="ltx_td ltx_nopad_r ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="A1.T2.1.5.4.1" style="padding-left:3.0pt;padding-right:3.0pt;">Llama</th>
<td class="ltx_td ltx_nopad_l ltx_align_justify ltx_align_top ltx_border_bb" id="A1.T2.1.5.4.2" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A1.T2.1.5.4.2.1">
<span class="ltx_p" id="A1.T2.1.5.4.2.1.1" style="width:128.0pt;">meta-llama/Meta-Llama-3.1-8B-Instruct</span>
</span>
</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table lists the large language models (LLMs) used in the study, along with their respective model names and the Hugging Face repository links where these models can be accessed.  This information is crucial for reproducibility, allowing others to utilize the same models and potentially replicate the experiments and analyses described in the paper.
> <details>
> <summary>read the caption</summary>
> Table 2: Models used in this study and their corresponding HuggingFace repository code
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="A2.T3.1">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A2.T3.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_tt" id="A2.T3.1.1.1.1" style="padding:0.5pt 3.0pt;">Amanda</th>
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top ltx_border_tt" id="A2.T3.1.1.1.2" style="padding:0.5pt 3.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T3.1.1.1.2.1">
<span class="ltx_p" id="A2.T3.1.1.1.2.1.1" style="width:313.0pt;">US(10.77%), UK(5.59%), South Africa(3.08%), Canada(0.76%)</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T3.1.2.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A2.T3.1.2.2.1" style="padding:0.5pt 3.0pt;">Ashley</th>
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A2.T3.1.2.2.2" style="padding:0.5pt 3.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T3.1.2.2.2.1">
<span class="ltx_p" id="A2.T3.1.2.2.2.1.1" style="width:313.0pt;">US(10.71%), Canada(0.40%)</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T3.1.3.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A2.T3.1.3.3.1" style="padding:0.5pt 3.0pt;">Mark</th>
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A2.T3.1.3.3.2" style="padding:0.5pt 3.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T3.1.3.3.2.1">
<span class="ltx_p" id="A2.T3.1.3.3.2.1.1" style="width:313.0pt;">US(10.12%), UK(5.59%), Ireland(3.03%), Canada(0.97%)</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T3.1.4.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A2.T3.1.4.4.1" style="padding:0.5pt 3.0pt;">Jason</th>
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A2.T3.1.4.4.2" style="padding:0.5pt 3.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T3.1.4.4.2.1">
<span class="ltx_p" id="A2.T3.1.4.4.2.1.1" style="width:313.0pt;">US(11.05%), China(7.17%), Canada(0.64%)</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T3.1.5.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A2.T3.1.5.5.1" style="padding:0.5pt 3.0pt;">Sarah</th>
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A2.T3.1.5.5.2" style="padding:0.5pt 3.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T3.1.5.5.2.1">
<span class="ltx_p" id="A2.T3.1.5.5.2.1.1" style="width:313.0pt;">US(9.61%), UK(5.25%), France(4.27%), Germany(2.96%), Canada(1.17%)</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T3.1.6.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A2.T3.1.6.6.1" style="padding:0.5pt 3.0pt;">James</th>
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A2.T3.1.6.6.2" style="padding:0.5pt 3.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T3.1.6.6.2.1">
<span class="ltx_p" id="A2.T3.1.6.6.2.1.1" style="width:313.0pt;">US(12.15%), UK(5.52%), Ireland(3.42%), Canada(0.58%)</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T3.1.7.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A2.T3.1.7.7.1" style="padding:0.5pt 3.0pt;">Melissa</th>
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A2.T3.1.7.7.2" style="padding:0.5pt 3.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T3.1.7.7.2.1">
<span class="ltx_p" id="A2.T3.1.7.7.2.1.1" style="width:313.0pt;">US(11.15%), Canada(0.82%)</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T3.1.8.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A2.T3.1.8.8.1" style="padding:0.5pt 3.0pt;">Julie</th>
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A2.T3.1.8.8.2" style="padding:0.5pt 3.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T3.1.8.8.2.1">
<span class="ltx_p" id="A2.T3.1.8.8.2.1.1" style="width:313.0pt;">UK(5.10%), France(3.81%), Canada(0.99%)</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T3.1.9.9">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A2.T3.1.9.9.1" style="padding:0.5pt 3.0pt;">Michelle</th>
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A2.T3.1.9.9.2" style="padding:0.5pt 3.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T3.1.9.9.2.1">
<span class="ltx_p" id="A2.T3.1.9.9.2.1.1" style="width:313.0pt;">US(10.94%), UK(5.03%), Ireland(3.17%), South Africa(2.22%), Canada(0.56%)</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T3.1.10.10">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A2.T3.1.10.10.1" style="padding:0.5pt 3.0pt;">Paul</th>
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A2.T3.1.10.10.2" style="padding:0.5pt 3.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T3.1.10.10.2.1">
<span class="ltx_p" id="A2.T3.1.10.10.2.1.1" style="width:313.0pt;">UK(6.39%), Ireland(3.93%), Canada(0.69%)</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T3.1.11.11">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A2.T3.1.11.11.1" style="padding:0.5pt 3.0pt;">Kevin</th>
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A2.T3.1.11.11.2" style="padding:0.5pt 3.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T3.1.11.11.2.1">
<span class="ltx_p" id="A2.T3.1.11.11.2.1.1" style="width:313.0pt;">US(9.86%), Canada(0.82%)</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T3.1.12.12">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A2.T3.1.12.12.1" style="padding:0.5pt 3.0pt;">Mike</th>
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A2.T3.1.12.12.2" style="padding:0.5pt 3.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T3.1.12.12.2.1">
<span class="ltx_p" id="A2.T3.1.12.12.2.1.1" style="width:313.0pt;">US(10.50%), Canada(1.02%)</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T3.1.13.13">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A2.T3.1.13.13.1" style="padding:0.5pt 3.0pt;">Linda</th>
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A2.T3.1.13.13.2" style="padding:0.5pt 3.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T3.1.13.13.2.1">
<span class="ltx_p" id="A2.T3.1.13.13.2.1.1" style="width:313.0pt;">US(11.25%), South Africa(2.40%), Canada(1.04%)</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T3.1.14.14">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A2.T3.1.14.14.1" style="padding:0.5pt 3.0pt;">Emily</th>
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A2.T3.1.14.14.2" style="padding:0.5pt 3.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T3.1.14.14.2.1">
<span class="ltx_p" id="A2.T3.1.14.14.2.1.1" style="width:313.0pt;">US(9.88%), UK(5.56%), Canada(0.58%)</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T3.1.15.15">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A2.T3.1.15.15.1" style="padding:0.5pt 3.0pt;">Robert</th>
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A2.T3.1.15.15.2" style="padding:0.5pt 3.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T3.1.15.15.2.1">
<span class="ltx_p" id="A2.T3.1.15.15.2.1.1" style="width:313.0pt;">US(13.07%), Canada(1.08%), Poland(1.05%)</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T3.1.16.16">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A2.T3.1.16.16.1" style="padding:0.5pt 3.0pt;">Jennifer</th>
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A2.T3.1.16.16.2" style="padding:0.5pt 3.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T3.1.16.16.2.1">
<span class="ltx_p" id="A2.T3.1.16.16.2.1.1" style="width:313.0pt;">US(12.37%), Canada(0.88%)</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T3.1.17.17">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A2.T3.1.17.17.1" style="padding:0.5pt 3.0pt;">Nancy</th>
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A2.T3.1.17.17.2" style="padding:0.5pt 3.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T3.1.17.17.2.1">
<span class="ltx_p" id="A2.T3.1.17.17.2.1.1" style="width:313.0pt;">US(11.46%), Peru(1.83%), Canada(0.61%)</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T3.1.18.18">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A2.T3.1.18.18.1" style="padding:0.5pt 3.0pt;">Heidi</th>
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top ltx_border_t" id="A2.T3.1.18.18.2" style="padding:0.5pt 3.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T3.1.18.18.2.1">
<span class="ltx_p" id="A2.T3.1.18.18.2.1.1" style="width:313.0pt;">Finland(1.66%), Switzerland(1.29%)</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T3.1.19.19">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A2.T3.1.19.19.1" style="padding:0.5pt 3.0pt;">Philippe</th>
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A2.T3.1.19.19.2" style="padding:0.5pt 3.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T3.1.19.19.2.1">
<span class="ltx_p" id="A2.T3.1.19.19.2.1.1" style="width:313.0pt;">France(10.39%), Switzerland(0.93%)</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T3.1.20.20">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A2.T3.1.20.20.1" style="padding:0.5pt 3.0pt;">Nathalie</th>
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A2.T3.1.20.20.2" style="padding:0.5pt 3.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T3.1.20.20.2.1">
<span class="ltx_p" id="A2.T3.1.20.20.2.1.1" style="width:313.0pt;">France(5.11%), Switzerland(0.71%)</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T3.1.21.21">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A2.T3.1.21.21.1" style="padding:0.5pt 3.0pt;">Dominique</th>
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A2.T3.1.21.21.2" style="padding:0.5pt 3.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T3.1.21.21.2.1">
<span class="ltx_p" id="A2.T3.1.21.21.2.1.1" style="width:313.0pt;">France(4.69%), Switzerland(0.79%)</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T3.1.22.22">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A2.T3.1.22.22.1" style="padding:0.5pt 3.0pt;">Michel</th>
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A2.T3.1.22.22.2" style="padding:0.5pt 3.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T3.1.22.22.2.1">
<span class="ltx_p" id="A2.T3.1.22.22.2.1.1" style="width:313.0pt;">France(5.40%), Switzerland(1.08%)</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T3.1.23.23">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A2.T3.1.23.23.1" style="padding:0.5pt 3.0pt;">Tanja</th>
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A2.T3.1.23.23.2" style="padding:0.5pt 3.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T3.1.23.23.2.1">
<span class="ltx_p" id="A2.T3.1.23.23.2.1.1" style="width:313.0pt;">Germany(2.82%), Switzerland(1.61%)</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T3.1.24.24">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A2.T3.1.24.24.1" style="padding:0.5pt 3.0pt;">Markus</th>
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A2.T3.1.24.24.2" style="padding:0.5pt 3.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T3.1.24.24.2.1">
<span class="ltx_p" id="A2.T3.1.24.24.2.1.1" style="width:313.0pt;">Germany(2.98%), Switzerland(0.66%)</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T3.1.25.25">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A2.T3.1.25.25.1" style="padding:0.5pt 3.0pt;">Stefan</th>
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A2.T3.1.25.25.2" style="padding:0.5pt 3.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T3.1.25.25.2.1">
<span class="ltx_p" id="A2.T3.1.25.25.2.1.1" style="width:313.0pt;">Germany(2.22%), Sweden(0.97%), Switzerland(0.94%)</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T3.1.26.26">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A2.T3.1.26.26.1" style="padding:0.5pt 3.0pt;">Monika</th>
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A2.T3.1.26.26.2" style="padding:0.5pt 3.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T3.1.26.26.2.1">
<span class="ltx_p" id="A2.T3.1.26.26.2.1.1" style="width:313.0pt;">Germany(2.40%), Iran(3.20%), Poland(1.55%), Switzerland(0.95%)</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T3.1.27.27">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A2.T3.1.27.27.1" style="padding:0.5pt 3.0pt;">Andreas</th>
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A2.T3.1.27.27.2" style="padding:0.5pt 3.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T3.1.27.27.2.1">
<span class="ltx_p" id="A2.T3.1.27.27.2.1.1" style="width:313.0pt;">Germany(3.21%), Greece(5.00%), Switzerland(0.93%), Sweden(0.88%)</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T3.1.28.28">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A2.T3.1.28.28.1" style="padding:0.5pt 3.0pt;">Thomas</th>
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A2.T3.1.28.28.2" style="padding:0.5pt 3.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T3.1.28.28.2.1">
<span class="ltx_p" id="A2.T3.1.28.28.2.1.1" style="width:313.0pt;">France(3.92%), Germany(1.92%), Switzerland(1.02%)</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T3.1.29.29">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A2.T3.1.29.29.1" style="padding:0.5pt 3.0pt;">Pascal</th>
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A2.T3.1.29.29.2" style="padding:0.5pt 3.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T3.1.29.29.2.1">
<span class="ltx_p" id="A2.T3.1.29.29.2.1.1" style="width:313.0pt;">France(6.58%), Switzerland(0.49%)</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T3.1.30.30">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A2.T3.1.30.30.1" style="padding:0.5pt 3.0pt;">Ana</th>
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top ltx_border_t" id="A2.T3.1.30.30.2" style="padding:0.5pt 3.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T3.1.30.30.2.1">
<span class="ltx_p" id="A2.T3.1.30.30.2.1.1" style="width:313.0pt;">Mexico(11.21%), US(10.05%), Spain(3.80%), Brazil(2.67%), Peru(2.27%), Egypt(1.93%), Portugal(0.21%)</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T3.1.31.31">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A2.T3.1.31.31.1" style="padding:0.5pt 3.0pt;">Maria</th>
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A2.T3.1.31.31.2" style="padding:0.5pt 3.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T3.1.31.31.2.1">
<span class="ltx_p" id="A2.T3.1.31.31.2.1.1" style="width:313.0pt;">Mexico(11.51%), US(9.12%), Italy(9.04%), Spain(4.69%), Brazil(3.00%), Peru(1.97%), Portugal(0.80%)</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T3.1.32.32">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A2.T3.1.32.32.1" style="padding:0.5pt 3.0pt;">Carlos</th>
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A2.T3.1.32.32.2" style="padding:0.5pt 3.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T3.1.32.32.2.1">
<span class="ltx_p" id="A2.T3.1.32.32.2.1.1" style="width:313.0pt;">Mexico(13.25%), US(10.74%), Brazil(4.52%), Spain(4.46%), Peru(2.57%), Portugal(1.19%)</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T3.1.33.33">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A2.T3.1.33.33.1" style="padding:0.5pt 3.0pt;">Jose</th>
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A2.T3.1.33.33.2" style="padding:0.5pt 3.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T3.1.33.33.2.1">
<span class="ltx_p" id="A2.T3.1.33.33.2.1.1" style="width:313.0pt;">Mexico(12.56%), US(12.31%), Spain(4.64%), Brazil(3.86%), Peru(2.89%)</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T3.1.34.34">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A2.T3.1.34.34.1" style="padding:0.5pt 3.0pt;">Juan</th>
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A2.T3.1.34.34.2" style="padding:0.5pt 3.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T3.1.34.34.2.1">
<span class="ltx_p" id="A2.T3.1.34.34.2.1.1" style="width:313.0pt;">Mexico(13.90%), US(11.32%), Spain(6.21%), Peru(2.95%)</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T3.1.35.35">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A2.T3.1.35.35.1" style="padding:0.5pt 3.0pt;">Jorge</th>
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A2.T3.1.35.35.2" style="padding:0.5pt 3.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T3.1.35.35.2.1">
<span class="ltx_p" id="A2.T3.1.35.35.2.1.1" style="width:313.0pt;">Mexico(12.83%), US(10.11%), Spain(4.72%), Peru(2.49%), Portugal(0.47%)</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T3.1.36.36">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A2.T3.1.36.36.1" style="padding:0.5pt 3.0pt;">Fernando</th>
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A2.T3.1.36.36.2" style="padding:0.5pt 3.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T3.1.36.36.2.1">
<span class="ltx_p" id="A2.T3.1.36.36.2.1.1" style="width:313.0pt;">Mexico(12.72%), Spain(5.33%), Brazil(3.34%), Peru(3.03%), Portugal(0.64%)</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T3.1.37.37">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A2.T3.1.37.37.1" style="padding:0.5pt 3.0pt;">Javier</th>
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A2.T3.1.37.37.2" style="padding:0.5pt 3.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T3.1.37.37.2.1">
<span class="ltx_p" id="A2.T3.1.37.37.2.1.1" style="width:313.0pt;">Mexico(15.02%), Spain(6.47%), Peru(2.75%)</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T3.1.38.38">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A2.T3.1.38.38.1" style="padding:0.5pt 3.0pt;">Carmen</th>
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A2.T3.1.38.38.2" style="padding:0.5pt 3.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T3.1.38.38.2.1">
<span class="ltx_p" id="A2.T3.1.38.38.2.1.1" style="width:313.0pt;">Mexico(10.39%), Spain(5.34%), Peru(0.87%)</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T3.1.39.39">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A2.T3.1.39.39.1" style="padding:0.5pt 3.0pt;">Miguel</th>
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A2.T3.1.39.39.2" style="padding:0.5pt 3.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T3.1.39.39.2.1">
<span class="ltx_p" id="A2.T3.1.39.39.2.1.1" style="width:313.0pt;">Mexico(12.59%), Spain(5.14%), Peru(2.89%), Portugal(0.77%)</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T3.1.40.40">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A2.T3.1.40.40.1" style="padding:0.5pt 3.0pt;">Manuel</th>
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A2.T3.1.40.40.2" style="padding:0.5pt 3.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T3.1.40.40.2.1">
<span class="ltx_p" id="A2.T3.1.40.40.2.1.1" style="width:313.0pt;">Mexico(11.94%), Spain(4.50%), Peru(2.82%), Portugal(0.62%)</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T3.1.41.41">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A2.T3.1.41.41.1" style="padding:0.5pt 3.0pt;">Francisco</th>
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A2.T3.1.41.41.2" style="padding:0.5pt 3.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T3.1.41.41.2.1">
<span class="ltx_p" id="A2.T3.1.41.41.2.1.1" style="width:313.0pt;">Mexico(12.65%), Spain(5.31%), Brazil(4.07%), Portugal(0.94%)</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T3.1.42.42">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A2.T3.1.42.42.1" style="padding:0.5pt 3.0pt;">Antonio</th>
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A2.T3.1.42.42.2" style="padding:0.5pt 3.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T3.1.42.42.2.1">
<span class="ltx_p" id="A2.T3.1.42.42.2.1.1" style="width:313.0pt;">Mexico(12.11%), Italy(10.89%), Spain(4.32%), Brazil(3.84%), Portugal(0.85%)</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T3.1.43.43">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A2.T3.1.43.43.1" style="padding:0.5pt 3.0pt;">Fabio</th>
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top ltx_border_t" id="A2.T3.1.43.43.2" style="padding:0.5pt 3.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T3.1.43.43.2.1">
<span class="ltx_p" id="A2.T3.1.43.43.2.1.1" style="width:313.0pt;">Italy(14.58%), Switzerland(1.12%)</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T3.1.44.44">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A2.T3.1.44.44.1" style="padding:0.5pt 3.0pt;">Daniela</th>
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A2.T3.1.44.44.2" style="padding:0.5pt 3.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T3.1.44.44.2.1">
<span class="ltx_p" id="A2.T3.1.44.44.2.1.1" style="width:313.0pt;">Italy(11.93%), Germany(4.11%)</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T3.1.45.45">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A2.T3.1.45.45.1" style="padding:0.5pt 3.0pt;">Andrea</th>
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A2.T3.1.45.45.2" style="padding:0.5pt 3.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T3.1.45.45.2.1">
<span class="ltx_p" id="A2.T3.1.45.45.2.1.1" style="width:313.0pt;">Italy(9.86%), Germany(1.70%)</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T3.1.46.46">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A2.T3.1.46.46.1" style="padding:0.5pt 3.0pt;">Elena</th>
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A2.T3.1.46.46.2" style="padding:0.5pt 3.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T3.1.46.46.2.1">
<span class="ltx_p" id="A2.T3.1.46.46.2.1.1" style="width:313.0pt;">Italy(8.62%), Spain(4.38%), Russian Federation(1.37%)</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T3.1.47.47">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A2.T3.1.47.47.1" style="padding:0.5pt 3.0pt;">Cristina</th>
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A2.T3.1.47.47.2" style="padding:0.5pt 3.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T3.1.47.47.2.1">
<span class="ltx_p" id="A2.T3.1.47.47.2.1.1" style="width:313.0pt;">Italy(12.15%), Spain(4.32%), Portugal(0.55%)</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T3.1.48.48">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A2.T3.1.48.48.1" style="padding:0.5pt 3.0pt;">Ali</th>
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top ltx_border_t" id="A2.T3.1.48.48.2" style="padding:0.5pt 3.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T3.1.48.48.2.1">
<span class="ltx_p" id="A2.T3.1.48.48.2.1.1" style="width:313.0pt;">Türkiye(7.28%), Iran(4.66%), Morocco(3.48%), Egypt(2.16%)</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T3.1.49.49">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A2.T3.1.49.49.1" style="padding:0.5pt 3.0pt;">Mohammed</th>
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A2.T3.1.49.49.2" style="padding:0.5pt 3.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T3.1.49.49.2.1">
<span class="ltx_p" id="A2.T3.1.49.49.2.1.1" style="width:313.0pt;">Morocco(6.94%), Egypt(5.00%)</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T3.1.50.50">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A2.T3.1.50.50.1" style="padding:0.5pt 3.0pt;">Maryam</th>
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A2.T3.1.50.50.2" style="padding:0.5pt 3.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T3.1.50.50.2.1">
<span class="ltx_p" id="A2.T3.1.50.50.2.1.1" style="width:313.0pt;">Iran(6.59%), Morocco(2.01%)</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T3.1.51.51">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A2.T3.1.51.51.1" style="padding:0.5pt 3.0pt;">Omar</th>
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A2.T3.1.51.51.2" style="padding:0.5pt 3.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T3.1.51.51.2.1">
<span class="ltx_p" id="A2.T3.1.51.51.2.1.1" style="width:313.0pt;">Morocco(4.37%), Egypt(1.96%)</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T3.1.52.52">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A2.T3.1.52.52.1" style="padding:0.5pt 3.0pt;">Ahmed</th>
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A2.T3.1.52.52.2" style="padding:0.5pt 3.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T3.1.52.52.2.1">
<span class="ltx_p" id="A2.T3.1.52.52.2.1.1" style="width:313.0pt;">Morocco(2.78%), Egypt(0.87%)</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T3.1.53.53">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A2.T3.1.53.53.1" style="padding:0.5pt 3.0pt;">Fatma</th>
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A2.T3.1.53.53.2" style="padding:0.5pt 3.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T3.1.53.53.2.1">
<span class="ltx_p" id="A2.T3.1.53.53.2.1.1" style="width:313.0pt;">Türkiye(10.92%), Egypt(2.50%)</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T3.1.54.54">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A2.T3.1.54.54.1" style="padding:0.5pt 3.0pt;">Salma</th>
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A2.T3.1.54.54.2" style="padding:0.5pt 3.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T3.1.54.54.2.1">
<span class="ltx_p" id="A2.T3.1.54.54.2.1.1" style="width:313.0pt;">Morocco(4.69%), Egypt(3.04%)</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T3.1.55.55">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A2.T3.1.55.55.1" style="padding:0.5pt 3.0pt;">Mohamed</th>
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A2.T3.1.55.55.2" style="padding:0.5pt 3.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T3.1.55.55.2.1">
<span class="ltx_p" id="A2.T3.1.55.55.2.1.1" style="width:313.0pt;">Morocco(5.57%), Egypt(3.71%)</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T3.1.56.56">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A2.T3.1.56.56.1" style="padding:0.5pt 3.0pt;">Jun</th>
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top ltx_border_t" id="A2.T3.1.56.56.2" style="padding:0.5pt 3.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T3.1.56.56.2.1">
<span class="ltx_p" id="A2.T3.1.56.56.2.1.1" style="width:313.0pt;">Japan(19.53%), China(10.05%), Philippines(2.81%)</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T3.1.57.57">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A2.T3.1.57.57.1" style="padding:0.5pt 3.0pt;">Yu</th>
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A2.T3.1.57.57.2" style="padding:0.5pt 3.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T3.1.57.57.2.1">
<span class="ltx_p" id="A2.T3.1.57.57.2.1.1" style="width:313.0pt;">Japan(15.21%), China(13.73%)</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T3.1.58.58">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A2.T3.1.58.58.1" style="padding:0.5pt 3.0pt;">Cherry</th>
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A2.T3.1.58.58.2" style="padding:0.5pt 3.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T3.1.58.58.2.1">
<span class="ltx_p" id="A2.T3.1.58.58.2.1.1" style="width:313.0pt;">China(10.92%), Philippines(4.62%)</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T3.1.59.59">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="A2.T3.1.59.59.1" style="padding:0.5pt 3.0pt;">Chen</th>
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top ltx_border_bb" id="A2.T3.1.59.59.2" style="padding:0.5pt 3.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T3.1.59.59.2.1">
<span class="ltx_p" id="A2.T3.1.59.59.2.1.1" style="width:313.0pt;">China(17.79%), Israel(2.88%)</span>
</span>
</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table lists names that are common across multiple cultures, along with the percentage of times each name is associated with different countries.  It highlights the potential for ambiguity and bias when using names as a sole indicator of cultural identity in large language models.
> <details>
> <summary>read the caption</summary>
> Table 3: Multicultual Names
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="A2.T4.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A2.T4.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_t" id="A2.T4.1.1.1.1" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="A2.T4.1.1.1.1.1">Country</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_t" id="A2.T4.1.1.1.2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="A2.T4.1.1.1.2.1">Biased Names (Frequency)</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A2.T4.1.2.1">
<td class="ltx_td ltx_align_left ltx_border_t" id="A2.T4.1.2.1.1" style="padding-left:3.0pt;padding-right:3.0pt;">Brazil</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A2.T4.1.2.1.2" style="padding-left:3.0pt;padding-right:3.0pt;">Larissa (15), Bruna (14), Felipe (14), Marcelo (14), Pedro (14)</td>
</tr>
<tr class="ltx_tr" id="A2.T4.1.3.2">
<td class="ltx_td ltx_align_left" id="A2.T4.1.3.2.1" style="padding-left:3.0pt;padding-right:3.0pt;">Canada</td>
<td class="ltx_td ltx_align_left" id="A2.T4.1.3.2.2" style="padding-left:3.0pt;padding-right:3.0pt;">Nicole (8), Eric (6), Lisa (6), Amanda (5), Ashley (5)</td>
</tr>
<tr class="ltx_tr" id="A2.T4.1.4.3">
<td class="ltx_td ltx_align_left" id="A2.T4.1.4.3.1" style="padding-left:3.0pt;padding-right:3.0pt;">China</td>
<td class="ltx_td ltx_align_left" id="A2.T4.1.4.3.2" style="padding-left:3.0pt;padding-right:3.0pt;">Liu (56), Wei (54), Feng (49), Yuan (48), Zhou (48)</td>
</tr>
<tr class="ltx_tr" id="A2.T4.1.5.4">
<td class="ltx_td ltx_align_left" id="A2.T4.1.5.4.1" style="padding-left:3.0pt;padding-right:3.0pt;">Finland</td>
<td class="ltx_td ltx_align_left" id="A2.T4.1.5.4.2" style="padding-left:3.0pt;padding-right:3.0pt;">Päivi (12), Tarja (9), Tiina (9), Hanna (8), Johanna (7)</td>
</tr>
<tr class="ltx_tr" id="A2.T4.1.6.5">
<td class="ltx_td ltx_align_left" id="A2.T4.1.6.5.1" style="padding-left:3.0pt;padding-right:3.0pt;">France</td>
<td class="ltx_td ltx_align_left" id="A2.T4.1.6.5.2" style="padding-left:3.0pt;padding-right:3.0pt;">Guillaume (36), Christophe (34), Thierry (33), Julien (29), Philippe (27)</td>
</tr>
<tr class="ltx_tr" id="A2.T4.1.7.6">
<td class="ltx_td ltx_align_left" id="A2.T4.1.7.6.1" style="padding-left:3.0pt;padding-right:3.0pt;">Germany</td>
<td class="ltx_td ltx_align_left" id="A2.T4.1.7.6.2" style="padding-left:3.0pt;padding-right:3.0pt;">Heike (16), Alexander (12), Stefan (12), Claudia (11), Jens (11)</td>
</tr>
<tr class="ltx_tr" id="A2.T4.1.8.7">
<td class="ltx_td ltx_align_left" id="A2.T4.1.8.7.1" style="padding-left:3.0pt;padding-right:3.0pt;">India</td>
<td class="ltx_td ltx_align_left" id="A2.T4.1.8.7.2" style="padding-left:3.0pt;padding-right:3.0pt;">Pooja (115), Vijay (107), Raju (104), Mukesh (103), Priya (98)</td>
</tr>
<tr class="ltx_tr" id="A2.T4.1.9.8">
<td class="ltx_td ltx_align_left" id="A2.T4.1.9.8.1" style="padding-left:3.0pt;padding-right:3.0pt;">Indonesia</td>
<td class="ltx_td ltx_align_left" id="A2.T4.1.9.8.2" style="padding-left:3.0pt;padding-right:3.0pt;">Bambang (46), Teguh (30), Asep (29), Siti (25), Retno (23)</td>
</tr>
<tr class="ltx_tr" id="A2.T4.1.10.9">
<td class="ltx_td ltx_align_left" id="A2.T4.1.10.9.1" style="padding-left:3.0pt;padding-right:3.0pt;">Iran, Islamic Republic of</td>
<td class="ltx_td ltx_align_left" id="A2.T4.1.10.9.2" style="padding-left:3.0pt;padding-right:3.0pt;">Mehdi (27), Hamid (26), Alireza (24), Reza (24), Maryam (21)</td>
</tr>
<tr class="ltx_tr" id="A2.T4.1.11.10">
<td class="ltx_td ltx_align_left" id="A2.T4.1.11.10.1" style="padding-left:3.0pt;padding-right:3.0pt;">Ireland</td>
<td class="ltx_td ltx_align_left" id="A2.T4.1.11.10.2" style="padding-left:3.0pt;padding-right:3.0pt;">Sinead (21), Aoife (17), Niall (17), Eoin (16), Paddy (16)</td>
</tr>
<tr class="ltx_tr" id="A2.T4.1.12.11">
<td class="ltx_td ltx_align_left" id="A2.T4.1.12.11.1" style="padding-left:3.0pt;padding-right:3.0pt;">Italy</td>
<td class="ltx_td ltx_align_left" id="A2.T4.1.12.11.2" style="padding-left:3.0pt;padding-right:3.0pt;">Giuseppe (84), Vincenzo (66), Massimo (63), Luigi (62), Federica (57)</td>
</tr>
<tr class="ltx_tr" id="A2.T4.1.13.12">
<td class="ltx_td ltx_align_left" id="A2.T4.1.13.12.1" style="padding-left:3.0pt;padding-right:3.0pt;">Japan</td>
<td class="ltx_td ltx_align_left" id="A2.T4.1.13.12.2" style="padding-left:3.0pt;padding-right:3.0pt;">Daisuke (133), Takahiro (128), Takashi (125), Hiroyuki (109), Megumi (109)</td>
</tr>
<tr class="ltx_tr" id="A2.T4.1.14.13">
<td class="ltx_td ltx_align_left" id="A2.T4.1.14.13.1" style="padding-left:3.0pt;padding-right:3.0pt;">Mexico</td>
<td class="ltx_td ltx_align_left" id="A2.T4.1.14.13.2" style="padding-left:3.0pt;padding-right:3.0pt;">Lupita (59), Eduardo (52), Fernanda (48), Guadalupe (47), Miguel (46)</td>
</tr>
<tr class="ltx_tr" id="A2.T4.1.15.14">
<td class="ltx_td ltx_align_left" id="A2.T4.1.15.14.1" style="padding-left:3.0pt;padding-right:3.0pt;">Morocco</td>
<td class="ltx_td ltx_align_left" id="A2.T4.1.15.14.2" style="padding-left:3.0pt;padding-right:3.0pt;">Kawtar (35), Hanane (31), Siham (27), Imane (26), Zineb (25)</td>
</tr>
<tr class="ltx_tr" id="A2.T4.1.16.15">
<td class="ltx_td ltx_align_left" id="A2.T4.1.16.15.1" style="padding-left:3.0pt;padding-right:3.0pt;">Peru</td>
<td class="ltx_td ltx_align_left" id="A2.T4.1.16.15.2" style="padding-left:3.0pt;padding-right:3.0pt;">Diego (15), Milagros (12), Ana (10), Juan Carlos (10), Pedro (10)</td>
</tr>
<tr class="ltx_tr" id="A2.T4.1.17.16">
<td class="ltx_td ltx_align_left" id="A2.T4.1.17.16.1" style="padding-left:3.0pt;padding-right:3.0pt;">Philippines</td>
<td class="ltx_td ltx_align_left" id="A2.T4.1.17.16.2" style="padding-left:3.0pt;padding-right:3.0pt;">Marites (24), Kristine (16), Jm (14), Noel (13), Rj (13)</td>
</tr>
<tr class="ltx_tr" id="A2.T4.1.18.17">
<td class="ltx_td ltx_align_left" id="A2.T4.1.18.17.1" style="padding-left:3.0pt;padding-right:3.0pt;">Poland</td>
<td class="ltx_td ltx_align_left" id="A2.T4.1.18.17.2" style="padding-left:3.0pt;padding-right:3.0pt;">Małgorzata (30), Krzysztof (20), Katarzyna (16), Paweł (15), Grzegorz (13)</td>
</tr>
<tr class="ltx_tr" id="A2.T4.1.19.18">
<td class="ltx_td ltx_align_left" id="A2.T4.1.19.18.1" style="padding-left:3.0pt;padding-right:3.0pt;">Portugal</td>
<td class="ltx_td ltx_align_left" id="A2.T4.1.19.18.2" style="padding-left:3.0pt;padding-right:3.0pt;">Margarida (9), André (7), Filipa (6), Catarina (5), Marta (5)</td>
</tr>
<tr class="ltx_tr" id="A2.T4.1.20.19">
<td class="ltx_td ltx_align_left" id="A2.T4.1.20.19.1" style="padding-left:3.0pt;padding-right:3.0pt;">South Africa</td>
<td class="ltx_td ltx_align_left" id="A2.T4.1.20.19.2" style="padding-left:3.0pt;padding-right:3.0pt;">Nonhlanhla (55), Zandile (39), Siyabonga (38), Zinhle (33), Themba (29)</td>
</tr>
<tr class="ltx_tr" id="A2.T4.1.21.20">
<td class="ltx_td ltx_align_left" id="A2.T4.1.21.20.1" style="padding-left:3.0pt;padding-right:3.0pt;">Spain</td>
<td class="ltx_td ltx_align_left" id="A2.T4.1.21.20.2" style="padding-left:3.0pt;padding-right:3.0pt;">María (25), Francisco (24), Mari Carmen (21), Marta (21), Cristina (20)</td>
</tr>
<tr class="ltx_tr" id="A2.T4.1.22.21">
<td class="ltx_td ltx_align_left" id="A2.T4.1.22.21.1" style="padding-left:3.0pt;padding-right:3.0pt;">Sweden</td>
<td class="ltx_td ltx_align_left" id="A2.T4.1.22.21.2" style="padding-left:3.0pt;padding-right:3.0pt;">Håkan (37), Åsa (13), Marcus (11), Birgitta (10), Björn (10)</td>
</tr>
<tr class="ltx_tr" id="A2.T4.1.23.22">
<td class="ltx_td ltx_align_left" id="A2.T4.1.23.22.1" style="padding-left:3.0pt;padding-right:3.0pt;">Switzerland</td>
<td class="ltx_td ltx_align_left" id="A2.T4.1.23.22.2" style="padding-left:3.0pt;padding-right:3.0pt;">Roger (9), Heidi (7), Marcel (6), Philippe (6), Reto (6)</td>
</tr>
<tr class="ltx_tr" id="A2.T4.1.24.23">
<td class="ltx_td ltx_align_left" id="A2.T4.1.24.23.1" style="padding-left:3.0pt;padding-right:3.0pt;">Türkiye</td>
<td class="ltx_td ltx_align_left" id="A2.T4.1.24.23.2" style="padding-left:3.0pt;padding-right:3.0pt;">Ayşe (76), Hüseyin (65), Hülya (50), Özlem (45), Zeynep (44)</td>
</tr>
<tr class="ltx_tr" id="A2.T4.1.25.24">
<td class="ltx_td ltx_align_left" id="A2.T4.1.25.24.1" style="padding-left:3.0pt;padding-right:3.0pt;">United Kingdom</td>
<td class="ltx_td ltx_align_left" id="A2.T4.1.25.24.2" style="padding-left:3.0pt;padding-right:3.0pt;">Lisa (27), Emma (24), Ian (23), Claire (22), Daniel (22)</td>
</tr>
<tr class="ltx_tr" id="A2.T4.1.26.25">
<td class="ltx_td ltx_align_left ltx_border_b" id="A2.T4.1.26.25.1" style="padding-left:3.0pt;padding-right:3.0pt;">United States</td>
<td class="ltx_td ltx_align_left ltx_border_b" id="A2.T4.1.26.25.2" style="padding-left:3.0pt;padding-right:3.0pt;">James (54), Juan (43), Linda (40), Michelle (40), Ashley (39)</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table lists the names that elicited biased responses from the language models, categorized by country of origin.  The number in parentheses after each name indicates how many times that name triggered a culturally biased response from the language models.  This provides insight into which names are most strongly associated with specific cultural assumptions within the models.
> <details>
> <summary>read the caption</summary>
> Table 4: Biased Names for All Countries (Names with number of biased responses in parenthesis)
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2502.11995/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.11995/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.11995/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.11995/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.11995/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.11995/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.11995/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.11995/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.11995/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.11995/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.11995/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.11995/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.11995/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.11995/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.11995/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.11995/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.11995/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.11995/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.11995/19.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.11995/20.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}