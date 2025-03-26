---
title: "Deceptive Humor: A Synthetic Multilingual Benchmark Dataset for Bridging Fabricated Claims with Humorous Content"
summary: "New dataset bridges fabricated claims with humor for spotting online deception!"
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Natural Language Processing", "Text Classification", "🏢 IIIT Dharwad",]
showSummary: true
date: 2025-03-20
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2503.16031 {{< /keyword >}}
{{< keyword icon="writer" >}} Sai Kartheek Reddy Kasu et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-03-21 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2503.16031" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2503.16031" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2503.16031/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

In an era dominated by rampant misinformation, deciphering the interplay between humor and deception is crucial. Current methods struggle to differentiate harmless comedy from harmful misinformation. Addressing this challenge, this paper introduces the Deceptive Humor Dataset (DHD), a novel resource designed for studying humor derived from fabricated claims and misinformation. This new dataset is crucial for analyzing how humor intertwines with deception and for helping develop better methods to distinguish harmless comedy from harmful misinformation. 



DHD comprises humor-infused comments generated using the ChatGPT-4o model from false narratives and manipulated information.  Each instance is meticulously labeled with a Satire Level and classified into five distinct Humor Categories: Dark Humor, Irony, Social Commentary, Wordplay, and Absurdity. Spanning multiple languages, including English, Telugu, Hindi, Kannada, Tamil, and their code-mixed variations, DHD serves as a valuable multilingual benchmark.  The paper establishes strong baselines for the proposed dataset, setting a strong foundation for future exploration and for advancing deceptive humor detection models.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} The DHD dataset is designed to analyze humor in deceptive contexts. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} DHD includes data in English, Telugu, Hindi, Kannada, and Tamil, including code-mixed variants. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} The paper establishes strong baselines for deceptive humor detection, setting the stage for future research. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper introduces **a new dataset** that enables the analysis of how **humor** can be used to spread misinformation. This research provides a test case for humor detection models and opens avenues for research into **combating deceptive humor online.**

------
#### Visual Insights



![](https://arxiv.org/html/2503.16031/extracted/6295706/figures/DHD_Generation_Flowchart.png)

> 🔼 This flowchart illustrates the process of generating the Deceptive Humor Dataset (DHD).  It starts with gathering fake claims from various fact-checking websites. These claims are then fed into a structured prompt for the ChatGPT-40 model, which generates humorous comments in multiple languages (including code-mixed variations).  Human reviewers then evaluate and refine these comments, ensuring quality and appropriateness before labeling them with satire level (1-3) and humor attributes (Dark Humor, Irony, Social Commentary, Wordplay, Absurdity). This process creates a diverse and controlled dataset ready for research.
> <details>
> <summary>read the caption</summary>
> Figure 1: Flowchart for the DHD Data Generation
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S3.T1.1.1">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S3.T1.1.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S3.T1.1.1.1.1.1"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.1.1.1.1">Statistic</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" id="S3.T1.1.1.1.1.2"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.1.1.2.1">Train</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.1.1.3"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.1.1.3.1">Validation</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.1.1.4"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.1.1.4.1">Test</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.1.2.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S3.T1.1.1.2.2.1"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.2.2.1.1">Total Samples</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" id="S3.T1.1.1.2.2.2">7,200</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.2.2.3">900</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.2.2.4">900</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.1.3.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" colspan="4" id="S3.T1.1.1.3.3.1"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.3.3.1.1">Satire Level Distribution</span></th>
</tr>
<tr class="ltx_tr" id="S3.T1.1.1.4.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S3.T1.1.1.4.4.1">Low Satire</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" id="S3.T1.1.1.4.4.2">2,092</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.4.4.3">251</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.4.4.4">253</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.1.5.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T1.1.1.5.5.1">Moderate Satire</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S3.T1.1.1.5.5.2">3,125</th>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.5.5.3">378</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.5.5.4">388</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.1.6.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T1.1.1.6.6.1">High Satire</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S3.T1.1.1.6.6.2">1,983</th>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.6.6.3">271</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.6.6.4">259</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.1.7.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" colspan="4" id="S3.T1.1.1.7.7.1"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.7.7.1.1">Humor Attribute Distribution</span></th>
</tr>
<tr class="ltx_tr" id="S3.T1.1.1.8.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S3.T1.1.1.8.8.1">Irony</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" id="S3.T1.1.1.8.8.2">2,180</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.8.8.3">270</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.8.8.4">284</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.1.9.9">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T1.1.1.9.9.1">Absurdity</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S3.T1.1.1.9.9.2">1,639</th>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.9.9.3">196</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.9.9.4">208</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.1.10.10">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T1.1.1.10.10.1">Social Commentary</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S3.T1.1.1.10.10.2">1,217</th>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.10.10.3">149</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.10.10.4">142</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.1.11.11">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T1.1.1.11.11.1">Dark Humor</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S3.T1.1.1.11.11.2">1,101</th>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.11.11.3">154</td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.11.11.4">129</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.1.12.12">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_b" id="S3.T1.1.1.12.12.1">Wordplay</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_b" id="S3.T1.1.1.12.12.2">1,063</th>
<td class="ltx_td ltx_align_center ltx_border_b" id="S3.T1.1.1.12.12.3">131</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S3.T1.1.1.12.12.4">137</td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 This table presents the distribution of samples in the Deceptive Humor Dataset (DHD). It shows the counts of training, validation, and test samples.  Furthermore, it breaks down the distribution by Satire Level (Low, Moderate, High) and Humor Attribute (Irony, Absurdity, Social Commentary, Dark Humor, Wordplay). This provides a comprehensive overview of the dataset's composition, showing the balance of different humor types and satire levels across the different sets.
> <details>
> <summary>read the caption</summary>
> Table 1: DHD Distribution
> </details>





### In-depth insights


#### Humor & Deception
The intersection of humor and deception is a complex and under-explored area. **Humor can mask deceptive intent, making it difficult to discern harmless jokes from harmful misinformation.** Traditional humor relies on exaggeration or irony, while deceptive humor distorts narratives for comedic effect. This is especially concerning in online spaces where jokes spread rapidly, blurring the lines between comedy and harmful falsehoods. The subjective nature of humor means that **what one person finds funny, another may find offensive or misleading.** Detecting deceptive humor requires considering the audience's awareness of the underlying claim's truthfulness, as well as deeper contextual understanding. The increasing volume of online content makes addressing deceptive humor more critical than ever, since **the uncritical consumption can lead to the spread of misinformation and societal consequences.** Research must develop detection mechanisms to differentiate between deceptive humor and harmless comedy, ensuring that humor is not used to spread harmful narratives. 

#### Multilingual DHD
The concept of a "Multilingual DHD" (Deceptive Humor Dataset) is intriguing, suggesting a resource that **transcends linguistic boundaries** to analyze how humor and deception intersect across cultures. This is crucial because humor is often deeply rooted in cultural context, making it challenging to detect deceptive intent without understanding the nuances of each language and its associated social norms. A multilingual DHD would need to account for **variations in satire, irony, and other forms of humor** across different languages, and how these are used to subtly spread misinformation. Constructing such a dataset requires careful consideration of the **linguistic diversity** and potential biases present in each language. It also opens doors to cross-cultural comparisons of deceptive strategies, revealing whether certain techniques are more prevalent or effective in specific linguistic contexts. The successful creation of a Multilingual DHD can significantly advance our understanding of global communication patterns and improve the accuracy of misinformation detection models, especially those deployed in diverse online environments. Such a resource could also be valuable for **training AI models** to identify and flag deceptive humor in multiple languages, enhancing their ability to moderate content and prevent the spread of harmful narratives. 

#### ChatGPT-4o Bias
While the provided document doesn't explicitly address 'ChatGPT-4o Bias,' we can infer potential biases by analyzing the methodologies employed. The paper relies on ChatGPT-4o for data generation, which inherently introduces biases present in the model's training data. **These biases could skew the dataset towards certain perspectives or humor styles, affecting the generalizability of the benchmark.** The manual review process may not entirely eliminate these underlying biases. **Language experts, while assessing appropriateness and engagement, might inadvertently introduce their own cultural or regional biases into the evaluation.** The document also acknowledges the limitations of synthetic data not fully replicating the nuances of human-generated content, which can further compound the impact of inherent biases in the ChatGPT-4o model. **Therefore, the absence of explicit discussion on 'ChatGPT-4o Bias' is a significant omission, potentially undermining the reliability and validity of the dataset for broader applications.** Future research should focus on quantifying and mitigating such biases for more robust and trustworthy results.

#### Context is Key
Understanding that 'Context is Key' underscores the complex nature of humor and its interpretation, especially within deceptive narratives. The paper recognizes that humor's impact heavily relies on audience awareness, differing based on individual perception; what one finds humorous, another may find offensive or misleading, especially if the underlying claim's falsity is unknown, thereby presenting challenges in its detection. **Contextual awareness becomes vital in distinguishing between harmless comedy and harmful misinformation.** The pervasiveness of deceptive humor in social media, often interwoven with fabricated claims, necessitates robust detection mechanisms to prevent the unintentional spread of harmful content, the paper's success hinges on crafting synthetic data that mimics human-like complexity, and therefore **careful prompt design is essential to contextual relevance**, linguistic diversity. By focusing on a nuanced understanding of intent and surrounding information, the proposed research addresses critical gaps in both humor and misinformation detection, emphasizing that effective analysis requires considering the broader social, political, or cultural landscape.

#### Future Mitigation
Future mitigation strategies for deceptive humor require a multi-faceted approach. **Improved detection models** integrating fact verification and intent recognition are vital. The **development of datasets** that more accurately reflect the complexities of real-world human-generated content is crucial, going beyond synthetic data limitations. **Ethical guidelines** for the use of AI-generated content must be strictly enforced to prevent malicious applications. Finally, **educational initiatives** can raise awareness about deceptive humor's impact and promote critical thinking skills, empowering individuals to discern and resist its influence.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2503.16031/extracted/6295706/figures/Satire_vs_Humor_Attribute.png)

> 🔼 This figure displays heatmaps visualizing the relationship between satire level (low, medium, high) and humor attribute (Absurdity, Dark Humor, Irony, Social Commentary, Wordplay) across three datasets: training, validation, and testing.  The color intensity in each cell of the heatmap corresponds to the frequency of comments exhibiting that specific combination of satire level and humor attribute within the dataset. Darker colors indicate higher frequency. This allows for a visual analysis of the distribution of different humor types across varying satire levels and how the proportions change between the training, validation and test sets.
> <details>
> <summary>read the caption</summary>
> Figure 2: Satire Level vs Humor Attribute. The color intensity represents the frequency distribution across datasets.
> </details>



![](https://arxiv.org/html/2503.16031/extracted/6295706/figures/Lang_Varients_vs_Satire_Level.png)

> 🔼 This heatmap visualizes how different humor attributes (Irony, Absurdity, Social Commentary, Dark Humor, Wordplay) are distributed across various languages (English, Telugu, Hindi, Kannada, Tamil, and their code-mixed versions).  The intensity of color in each cell represents the frequency of a particular humor attribute within a given language.  This allows for a comparison of humor styles and preferences across different linguistic groups and helps understand the linguistic nuances in expressing humor within those groups.  Darker colors indicate higher frequencies.
> <details>
> <summary>read the caption</summary>
> Figure 3: Language Variants vs Humor Attribute. The heatmap highlights humor variations across languages.
> </details>



![](https://arxiv.org/html/2503.16031/extracted/6295706/figures/Lang_Varients_vs_Satire_Level.png)

> 🔼 This figure presents a heatmap visualization analyzing the relationship between different languages and the levels of satire in deceptive humor.  Each heatmap represents a different dataset split (train, validation, test).  The x-axis represents satire levels (low, medium, high), and the y-axis shows the languages used (English, Telugu, Hindi, Kannada, Tamil, and their code-mixed variants). The color intensity of each cell reflects the frequency of comments in that language category at that particular satire level.  Darker colors indicate higher frequencies. This helps illustrate whether certain languages tend to be associated with different satire levels in the dataset.
> <details>
> <summary>read the caption</summary>
> Figure 4: Language Variants vs Satire Level. The color intensity represents frequency distribution, showing how different languages align with satire levels.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S3.T2.1.1">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S3.T2.1.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S3.T2.1.1.1.1.1"><span class="ltx_text ltx_font_bold" id="S3.T2.1.1.1.1.1.1">Language</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.1.1.1.1.2"><span class="ltx_text ltx_font_bold" id="S3.T2.1.1.1.1.2.1">Total Records</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" colspan="3" id="S3.T2.1.1.1.1.3"><span class="ltx_text ltx_font_bold" id="S3.T2.1.1.1.1.3.1">Satire Level</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" colspan="5" id="S3.T2.1.1.1.1.4"><span class="ltx_text ltx_font_bold" id="S3.T2.1.1.1.1.4.1">Humor Attribute</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.1.1.2.2">
<th class="ltx_td ltx_th ltx_th_row" id="S3.T2.1.1.2.2.1"></th>
<td class="ltx_td" id="S3.T2.1.1.2.2.2"></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.1.1.2.2.3"><span class="ltx_text ltx_font_bold" id="S3.T2.1.1.2.2.3.1">1</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.1.1.2.2.4"><span class="ltx_text ltx_font_bold" id="S3.T2.1.1.2.2.4.1">2</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.1.1.2.2.5"><span class="ltx_text ltx_font_bold" id="S3.T2.1.1.2.2.5.1">3</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.1.1.2.2.6"><span class="ltx_text ltx_font_bold" id="S3.T2.1.1.2.2.6.1">Absurdity</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.1.1.2.2.7"><span class="ltx_text ltx_font_bold" id="S3.T2.1.1.2.2.7.1">Dark Humor</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.1.1.2.2.8"><span class="ltx_text ltx_font_bold" id="S3.T2.1.1.2.2.8.1">Irony</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.1.1.2.2.9"><span class="ltx_text ltx_font_bold" id="S3.T2.1.1.2.2.9.1">Social Commentary</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.1.1.2.2.10"><span class="ltx_text ltx_font_bold" id="S3.T2.1.1.2.2.10.1">Wordplay</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.1.1.3.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" colspan="10" id="S3.T2.1.1.3.3.1"><span class="ltx_text ltx_font_bold" id="S3.T2.1.1.3.3.1.1">Train Data</span></th>
</tr>
<tr class="ltx_tr" id="S3.T2.1.1.4.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S3.T2.1.1.4.4.1">English</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.1.1.4.4.2">877</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.1.1.4.4.3">190</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.1.1.4.4.4">323</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.1.1.4.4.5">364</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.1.1.4.4.6">243</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.1.1.4.4.7">147</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.1.1.4.4.8">297</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.1.1.4.4.9">101</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.1.1.4.4.10">89</td>
</tr>
<tr class="ltx_tr" id="S3.T2.1.1.5.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T2.1.1.5.5.1">Telugu</th>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.5.5.2">819</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.5.5.3">300</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.5.5.4">345</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.5.5.5">174</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.5.5.6">178</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.5.5.7">111</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.5.5.8">321</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.5.5.9">162</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.5.5.10">47</td>
</tr>
<tr class="ltx_tr" id="S3.T2.1.1.6.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T2.1.1.6.6.1">Hindi</th>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.6.6.2">822</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.6.6.3">264</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.6.6.4">386</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.6.6.5">172</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.6.6.6">166</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.6.6.7">90</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.6.6.8">285</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.6.6.9">169</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.6.6.10">112</td>
</tr>
<tr class="ltx_tr" id="S3.T2.1.1.7.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T2.1.1.7.7.1">Kannada</th>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.7.7.2">771</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.7.7.3">268</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.7.7.4">348</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.7.7.5">155</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.7.7.6">203</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.7.7.7">95</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.7.7.8">218</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.7.7.9">185</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.7.7.10">70</td>
</tr>
<tr class="ltx_tr" id="S3.T2.1.1.8.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T2.1.1.8.8.1">Tamil</th>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.8.8.2">725</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.8.8.3">231</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.8.8.4">343</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.8.8.5">151</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.8.8.6">183</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.8.8.7">99</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.8.8.8">238</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.8.8.9">143</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.8.8.10">62</td>
</tr>
<tr class="ltx_tr" id="S3.T2.1.1.9.9">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T2.1.1.9.9.1">Telugu-English</th>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.9.9.2">815</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.9.9.3">194</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.9.9.4">345</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.9.9.5">276</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.9.9.6">195</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.9.9.7">153</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.9.9.8">206</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.9.9.9">114</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.9.9.10">147</td>
</tr>
<tr class="ltx_tr" id="S3.T2.1.1.10.10">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T2.1.1.10.10.1">Hindi-English</th>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.10.10.2">831</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.10.10.3">219</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.10.10.4">349</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.10.10.5">263</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.10.10.6">122</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.10.10.7">137</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.10.10.8">233</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.10.10.9">130</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.10.10.10">209</td>
</tr>
<tr class="ltx_tr" id="S3.T2.1.1.11.11">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T2.1.1.11.11.1">Kannada-English</th>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.11.11.2">768</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.11.11.3">199</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.11.11.4">329</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.11.11.5">240</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.11.11.6">189</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.11.11.7">162</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.11.11.8">175</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.11.11.9">110</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.11.11.10">132</td>
</tr>
<tr class="ltx_tr" id="S3.T2.1.1.12.12">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T2.1.1.12.12.1">Tamil-English</th>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.12.12.2">772</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.12.12.3">227</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.12.12.4">357</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.12.12.5">188</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.12.12.6">160</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.12.12.7">107</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.12.12.8">207</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.12.12.9">103</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.12.12.10">195</td>
</tr>
<tr class="ltx_tr" id="S3.T2.1.1.13.13">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" colspan="10" id="S3.T2.1.1.13.13.1"><span class="ltx_text ltx_font_bold" id="S3.T2.1.1.13.13.1.1">Validation Data</span></th>
</tr>
<tr class="ltx_tr" id="S3.T2.1.1.14.14">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S3.T2.1.1.14.14.1">English</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.1.1.14.14.2">112</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.1.1.14.14.3">21</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.1.1.14.14.4">31</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.1.1.14.14.5">60</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.1.1.14.14.6">38</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.1.1.14.14.7">23</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.1.1.14.14.8">31</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.1.1.14.14.9">12</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.1.1.14.14.10">8</td>
</tr>
<tr class="ltx_tr" id="S3.T2.1.1.15.15">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T2.1.1.15.15.1">Telugu</th>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.15.15.2">110</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.15.15.3">33</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.15.15.4">49</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.15.15.5">28</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.15.15.6">19</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.15.15.7">19</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.15.15.8">48</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.15.15.9">23</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.15.15.10">1</td>
</tr>
<tr class="ltx_tr" id="S3.T2.1.1.16.16">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T2.1.1.16.16.1">Hindi</th>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.16.16.2">100</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.16.16.3">38</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.16.16.4">40</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.16.16.5">22</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.16.16.6">20</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.16.16.7">9</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.16.16.8">30</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.16.16.9">24</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.16.16.10">17</td>
</tr>
<tr class="ltx_tr" id="S3.T2.1.1.17.17">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T2.1.1.17.17.1">Kannada</th>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.17.17.2">84</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.17.17.3">30</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.17.17.4">30</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.17.17.5">24</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.17.17.6">18</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.17.17.7">10</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.17.17.8">27</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.17.17.9">21</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.17.17.10">8</td>
</tr>
<tr class="ltx_tr" id="S3.T2.1.1.18.18">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T2.1.1.18.18.1">Tamil</th>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.18.18.2">88</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.18.18.3">29</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.18.18.4">43</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.18.18.5">16</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.18.18.6">17</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.18.18.7">11</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.18.18.8">34</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.18.18.9">16</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.18.18.10">10</td>
</tr>
<tr class="ltx_tr" id="S3.T2.1.1.19.19">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T2.1.1.19.19.1">Telugu-English</th>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.19.19.2">104</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.19.19.3">23</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.19.19.4">49</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.19.19.5">32</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.19.19.6">20</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.19.19.7">23</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.19.19.8">32</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.19.19.9">10</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.19.19.10">19</td>
</tr>
<tr class="ltx_tr" id="S3.T2.1.1.20.20">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T2.1.1.20.20.1">Hindi-English</th>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.20.20.2">99</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.20.20.3">23</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.20.20.4">53</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.20.20.5">23</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.20.20.6">11</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.20.20.7">12</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.20.20.8">24</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.20.20.9">21</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.20.20.10">31</td>
</tr>
<tr class="ltx_tr" id="S3.T2.1.1.21.21">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T2.1.1.21.21.1">Kannada-English</th>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.21.21.2">108</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.21.21.3">27</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.21.21.4">45</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.21.21.5">36</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.21.21.6">32</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.21.21.7">25</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.21.21.8">17</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.21.21.9">14</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.21.21.10">20</td>
</tr>
<tr class="ltx_tr" id="S3.T2.1.1.22.22">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T2.1.1.22.22.1">Tamil-English</th>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.22.22.2">95</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.22.22.3">27</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.22.22.4">38</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.22.22.5">30</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.22.22.6">21</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.22.22.7">22</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.22.22.8">27</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.22.22.9">8</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.22.22.10">17</td>
</tr>
<tr class="ltx_tr" id="S3.T2.1.1.23.23">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" colspan="10" id="S3.T2.1.1.23.23.1"><span class="ltx_text ltx_font_bold" id="S3.T2.1.1.23.23.1.1">Test Data</span></th>
</tr>
<tr class="ltx_tr" id="S3.T2.1.1.24.24">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S3.T2.1.1.24.24.1">English</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.1.1.24.24.2">110</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.1.1.24.24.3">21</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.1.1.24.24.4">37</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.1.1.24.24.5">52</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.1.1.24.24.6">32</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.1.1.24.24.7">20</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.1.1.24.24.8">39</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.1.1.24.24.9">11</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.1.1.24.24.10">8</td>
</tr>
<tr class="ltx_tr" id="S3.T2.1.1.25.25">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T2.1.1.25.25.1">Telugu</th>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.25.25.2">117</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.25.25.3">38</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.25.25.4">51</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.25.25.5">28</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.25.25.6">33</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.25.25.7">15</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.25.25.8">43</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.25.25.9">18</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.25.25.10">8</td>
</tr>
<tr class="ltx_tr" id="S3.T2.1.1.26.26">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T2.1.1.26.26.1">Hindi</th>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.26.26.2">80</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.26.26.3">23</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.26.26.4">47</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.26.26.5">10</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.26.26.6">22</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.26.26.7">6</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.26.26.8">27</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.26.26.9">16</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.26.26.10">9</td>
</tr>
<tr class="ltx_tr" id="S3.T2.1.1.27.27">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T2.1.1.27.27.1">Kannada</th>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.27.27.2">81</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.27.27.3">29</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.27.27.4">32</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.27.27.5">20</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.27.27.6">22</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.27.27.7">15</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.27.27.8">19</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.27.27.9">17</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.27.27.10">8</td>
</tr>
<tr class="ltx_tr" id="S3.T2.1.1.28.28">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T2.1.1.28.28.1">Tamil</th>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.28.28.2">100</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.28.28.3">32</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.28.28.4">49</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.28.28.5">19</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.28.28.6">28</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.28.28.7">9</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.28.28.8">44</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.28.28.9">13</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.28.28.10">6</td>
</tr>
<tr class="ltx_tr" id="S3.T2.1.1.29.29">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T2.1.1.29.29.1">Telugu-English</th>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.29.29.2">114</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.29.29.3">26</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.29.29.4">44</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.29.29.5">44</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.29.29.6">23</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.29.29.7">20</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.29.29.8">25</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.29.29.9">15</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.29.29.10">31</td>
</tr>
<tr class="ltx_tr" id="S3.T2.1.1.30.30">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T2.1.1.30.30.1">Hindi-English</th>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.30.30.2">95</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.30.30.3">25</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.30.30.4">41</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.30.30.5">29</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.30.30.6">14</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.30.30.7">13</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.30.30.8">23</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.30.30.9">17</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.30.30.10">28</td>
</tr>
<tr class="ltx_tr" id="S3.T2.1.1.31.31">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T2.1.1.31.31.1">Kannada-English</th>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.31.31.2">115</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.31.31.3">32</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.31.31.4">55</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.31.31.5">28</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.31.31.6">21</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.31.31.7">19</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.31.31.8">36</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.31.31.9">16</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.31.31.10">23</td>
</tr>
<tr class="ltx_tr" id="S3.T2.1.1.32.32">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_b" id="S3.T2.1.1.32.32.1">Tamil-English</th>
<td class="ltx_td ltx_align_center ltx_border_b" id="S3.T2.1.1.32.32.2">88</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S3.T2.1.1.32.32.3">27</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S3.T2.1.1.32.32.4">32</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S3.T2.1.1.32.32.5">29</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S3.T2.1.1.32.32.6">13</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S3.T2.1.1.32.32.7">12</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S3.T2.1.1.32.32.8">28</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S3.T2.1.1.32.32.9">19</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S3.T2.1.1.32.32.10">16</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a detailed breakdown of the distribution of satire levels and humor attributes across various languages included in the Deceptive Humor Dataset (DHD). It shows the frequency of different satire levels (low, medium, high) and humor attributes (irony, absurdity, social commentary, dark humor, wordplay) within each language (English, Telugu, Hindi, Kannada, Tamil, and their code-mixed variations).  This distribution helps to understand the diversity and balance of the dataset, showing how humor and satire are expressed differently across languages and linguistic styles. Appendix E provides a visualization for a clearer understanding.
> <details>
> <summary>read the caption</summary>
> Table 2: Distribution of Satire Levels and Humor Attributes Across Languages (Appendix E provides a visualization of these distributions).
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S5.T3.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S5.T3.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_t" id="S5.T3.1.1.1.1"><span class="ltx_text ltx_font_bold" id="S5.T3.1.1.1.1.1">Hyperparameter</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S5.T3.1.1.1.2"><span class="ltx_text ltx_font_bold" id="S5.T3.1.1.1.2.1">Value</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S5.T3.1.2.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S5.T3.1.2.1.1">Max Len</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.1.2.1.2">128</td>
</tr>
<tr class="ltx_tr" id="S5.T3.1.3.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T3.1.3.2.1">Batch Size</th>
<td class="ltx_td ltx_align_center" id="S5.T3.1.3.2.2">16</td>
</tr>
<tr class="ltx_tr" id="S5.T3.1.4.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T3.1.4.3.1">Epochs</th>
<td class="ltx_td ltx_align_center" id="S5.T3.1.4.3.2">5</td>
</tr>
<tr class="ltx_tr" id="S5.T3.1.5.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T3.1.5.4.1">Learning Rate</th>
<td class="ltx_td ltx_align_center" id="S5.T3.1.5.4.2">3e-5</td>
</tr>
<tr class="ltx_tr" id="S5.T3.1.6.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_b" id="S5.T3.1.6.5.1">Drop Out</th>
<td class="ltx_td ltx_align_center ltx_border_b" id="S5.T3.1.6.5.2">0.3</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table details the hyperparameters used in the experiments evaluating the performance of encoder-only and encoder-decoder models on the Deceptive Humor Dataset (DHD).  It lists the specific values used for key parameters such as maximum sequence length, batch size, number of training epochs, learning rate, and dropout rate. These settings are crucial for reproducibility and understanding the experimental setup.  The table is divided into two sections, one for Encoder-Only models and one for Encoder-Decoder models, reflecting the different model architectures used in the study.
> <details>
> <summary>read the caption</summary>
> Table 3: Hyperparameter settings for Encoder-Only and Encoder-Decoder Models.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S5.T4.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S5.T4.1.2.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_t" id="S5.T4.1.2.1.1"><span class="ltx_text ltx_font_bold" id="S5.T4.1.2.1.1.1">Hyperparameter</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S5.T4.1.2.1.2"><span class="ltx_text ltx_font_bold" id="S5.T4.1.2.1.2.1">Value</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S5.T4.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S5.T4.1.1.1">LoRA Rank (<math alttext="r" class="ltx_Math" display="inline" id="S5.T4.1.1.1.m1.1"><semantics id="S5.T4.1.1.1.m1.1a"><mi id="S5.T4.1.1.1.m1.1.1" xref="S5.T4.1.1.1.m1.1.1.cmml">r</mi><annotation-xml encoding="MathML-Content" id="S5.T4.1.1.1.m1.1b"><ci id="S5.T4.1.1.1.m1.1.1.cmml" xref="S5.T4.1.1.1.m1.1.1">𝑟</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T4.1.1.1.m1.1c">r</annotation><annotation encoding="application/x-llamapun" id="S5.T4.1.1.1.m1.1d">italic_r</annotation></semantics></math>)</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.1.1.2">16</td>
</tr>
<tr class="ltx_tr" id="S5.T4.1.3.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T4.1.3.1.1">LoRA Alpha</th>
<td class="ltx_td ltx_align_center" id="S5.T4.1.3.1.2">64</td>
</tr>
<tr class="ltx_tr" id="S5.T4.1.4.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T4.1.4.2.1">LoRA Dropout</th>
<td class="ltx_td ltx_align_center" id="S5.T4.1.4.2.2">0.2</td>
</tr>
<tr class="ltx_tr" id="S5.T4.1.5.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T4.1.5.3.1">Target Modules</th>
<td class="ltx_td ltx_align_center" id="S5.T4.1.5.3.2">{k_proj, q_proj, v_proj}</td>
</tr>
<tr class="ltx_tr" id="S5.T4.1.6.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T4.1.6.4.1">Learning Rate</th>
<td class="ltx_td ltx_align_center" id="S5.T4.1.6.4.2">2e-5</td>
</tr>
<tr class="ltx_tr" id="S5.T4.1.7.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T4.1.7.5.1">Batch Size</th>
<td class="ltx_td ltx_align_center" id="S5.T4.1.7.5.2">8</td>
</tr>
<tr class="ltx_tr" id="S5.T4.1.8.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T4.1.8.6.1">Epochs</th>
<td class="ltx_td ltx_align_center" id="S5.T4.1.8.6.2">3</td>
</tr>
<tr class="ltx_tr" id="S5.T4.1.9.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_b" id="S5.T4.1.9.7.1">Weight Decay</th>
<td class="ltx_td ltx_align_center ltx_border_b" id="S5.T4.1.9.7.2">0.01</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table details the hyperparameter settings used for fine-tuning large language models (LLMs) in the experiments.  These settings are crucial for reproducibility and understanding how these parameters influenced the model's performance on the Deceptive Humor Dataset (DHD). The hyperparameters listed likely include values for LORA (Low-Rank Adaptation) parameters such as rank, alpha, and dropout; along with other standard hyperparameters like learning rate, batch size, number of epochs, and weight decay. The specific parameters and values were chosen to optimize the LLMs' ability to classify deceptive humor effectively.
> <details>
> <summary>read the caption</summary>
> Table 4: Hyperparameter settings for the LLM Models.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S5.T5.1.1">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S5.T5.1.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S5.T5.1.1.1.1.1"><span class="ltx_text ltx_font_bold" id="S5.T5.1.1.1.1.1.1">Model</span></th>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" colspan="4" id="S5.T5.1.1.1.1.2"><span class="ltx_text ltx_font_bold" id="S5.T5.1.1.1.1.2.1">Satire Level</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" colspan="4" id="S5.T5.1.1.1.1.3"><span class="ltx_text ltx_font_bold" id="S5.T5.1.1.1.1.3.1">Humor Attribute</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.1.1.1.1.4"><span class="ltx_text ltx_font_bold" id="S5.T5.1.1.1.1.4.1">Parameters</span></td>
</tr>
<tr class="ltx_tr" id="S5.T5.1.1.2.2">
<th class="ltx_td ltx_th ltx_th_row" id="S5.T5.1.1.2.2.1"></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.1.1.2.2.2"><span class="ltx_text ltx_font_bold" id="S5.T5.1.1.2.2.2.1">Accuracy</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.1.1.2.2.3"><span class="ltx_text ltx_font_bold" id="S5.T5.1.1.2.2.3.1">F1-Score</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.1.1.2.2.4"><span class="ltx_text ltx_font_bold" id="S5.T5.1.1.2.2.4.1">Precision</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.1.1.2.2.5"><span class="ltx_text ltx_font_bold" id="S5.T5.1.1.2.2.5.1">Recall</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.1.1.2.2.6"><span class="ltx_text ltx_font_bold" id="S5.T5.1.1.2.2.6.1">Accuracy</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.1.1.2.2.7"><span class="ltx_text ltx_font_bold" id="S5.T5.1.1.2.2.7.1">F1-Score</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.1.1.2.2.8"><span class="ltx_text ltx_font_bold" id="S5.T5.1.1.2.2.8.1">Precision</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.1.1.2.2.9"><span class="ltx_text ltx_font_bold" id="S5.T5.1.1.2.2.9.1">Recall</span></td>
<td class="ltx_td" id="S5.T5.1.1.2.2.10"></td>
</tr>
<tr class="ltx_tr" id="S5.T5.1.1.3.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" colspan="10" id="S5.T5.1.1.3.3.1"><span class="ltx_text ltx_font_bold" id="S5.T5.1.1.3.3.1.1">Encoder-Only</span></th>
</tr>
<tr class="ltx_tr" id="S5.T5.1.1.4.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S5.T5.1.1.4.4.1">BERT<cite class="ltx_cite ltx_citemacro_cite">Kenton and Toutanova (<a class="ltx_ref" href="https://arxiv.org/html/2503.16031v1#bib.bib15" title="">2019</a>)</cite>
</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.1.1.4.4.2">49.44</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.1.1.4.4.3">46.47</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.1.1.4.4.4">49.22</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.1.1.4.4.5">46.19</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.1.1.4.4.6"><span class="ltx_text ltx_font_bold" id="S5.T5.1.1.4.4.6.1">40.44</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.1.1.4.4.7">34.73</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.1.1.4.4.8"><span class="ltx_text ltx_font_bold" id="S5.T5.1.1.4.4.8.1">44.37</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.1.1.4.4.9">34.42</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.1.1.4.4.10">110M</td>
</tr>
<tr class="ltx_tr" id="S5.T5.1.1.5.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T5.1.1.5.5.1">DistilBERT<cite class="ltx_cite ltx_citemacro_cite">Sanh (<a class="ltx_ref" href="https://arxiv.org/html/2503.16031v1#bib.bib23" title="">2019</a>)</cite>
</th>
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.5.5.2">49.44</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.5.5.3">45.60</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.5.5.4">49.42</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.5.5.5">45.60</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.5.5.6">37.89</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.5.5.7">34.58</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.5.5.8">38.95</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.5.5.9">34.09</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.5.5.10">66M</td>
</tr>
<tr class="ltx_tr" id="S5.T5.1.1.6.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T5.1.1.6.6.1">mBERT</th>
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.6.6.2"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T5.1.1.6.6.2.1">50.44</span></td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.6.6.3"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T5.1.1.6.6.3.1">50.00</span></td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.6.6.4">49.98</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.6.6.5"><span class="ltx_text ltx_font_bold" id="S5.T5.1.1.6.6.5.1">50.06</span></td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.6.6.6">36.00</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.6.6.7"><span class="ltx_text ltx_font_bold" id="S5.T5.1.1.6.6.7.1">35.77</span></td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.6.6.8">37.19</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.6.6.9"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T5.1.1.6.6.9.1">35.00</span></td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.6.6.10">110M</td>
</tr>
<tr class="ltx_tr" id="S5.T5.1.1.7.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T5.1.1.7.7.1">XLM-RoBERTa<cite class="ltx_cite ltx_citemacro_cite">Conneau (<a class="ltx_ref" href="https://arxiv.org/html/2503.16031v1#bib.bib5" title="">2019</a>)</cite>
</th>
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.7.7.2">49.33</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.7.7.3">48.87</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.7.7.4">48.86</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.7.7.5">48.93</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.7.7.6">34.44</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.7.7.7">33.70</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.7.7.8">33.95</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.7.7.9">33.60</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.7.7.10">125M</td>
</tr>
<tr class="ltx_tr" id="S5.T5.1.1.8.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T5.1.1.8.8.1">DeBERTa<cite class="ltx_cite ltx_citemacro_cite">He et al. (<a class="ltx_ref" href="https://arxiv.org/html/2503.16031v1#bib.bib9" title="">2020</a>)</cite>
</th>
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.8.8.2">47.89</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.8.8.3">42.52</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.8.8.4">49.07</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.8.8.5">43.29</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.8.8.6">37.33</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.8.8.7">28.76</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.8.8.8">30.00</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.8.8.9">31.51</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.8.8.10">184M</td>
</tr>
<tr class="ltx_tr" id="S5.T5.1.1.9.9">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T5.1.1.9.9.1">ALBERT<cite class="ltx_cite ltx_citemacro_cite">Lan (<a class="ltx_ref" href="https://arxiv.org/html/2503.16031v1#bib.bib16" title="">2019</a>)</cite>
</th>
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.9.9.2">46.33</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.9.9.3">43.52</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.9.9.4">46.24</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.9.9.5">43.25</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.9.9.6"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T5.1.1.9.9.6.1">38.89</span></td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.9.9.7">33.33</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.9.9.8"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T5.1.1.9.9.8.1">39.91</span></td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.9.9.9">33.56</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.9.9.10">11M</td>
</tr>
<tr class="ltx_tr" id="S5.T5.1.1.10.10">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T5.1.1.10.10.1">XLNet<cite class="ltx_cite ltx_citemacro_cite">Yang (<a class="ltx_ref" href="https://arxiv.org/html/2503.16031v1#bib.bib32" title="">2019</a>)</cite>
</th>
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.10.10.2"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T5.1.1.10.10.2.1">50.44</span></td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.10.10.3">46.72</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.10.10.4"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T5.1.1.10.10.4.1">50.84</span></td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.10.10.5">46.63</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.10.10.6">36.78</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.10.10.7">25.49</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.10.10.8">31.41</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.10.10.9">28.52</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.10.10.10">117M</td>
</tr>
<tr class="ltx_tr" id="S5.T5.1.1.11.11">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" colspan="10" id="S5.T5.1.1.11.11.1"><span class="ltx_text ltx_font_bold" id="S5.T5.1.1.11.11.1.1">Encoder-Decoder</span></th>
</tr>
<tr class="ltx_tr" id="S5.T5.1.1.12.12">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S5.T5.1.1.12.12.1">BART<cite class="ltx_cite ltx_citemacro_cite">Lewis (<a class="ltx_ref" href="https://arxiv.org/html/2503.16031v1#bib.bib17" title="">2019</a>)</cite>
</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.1.1.12.12.2">49.11</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.1.1.12.12.3">46.44</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.1.1.12.12.4">49.34</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.1.1.12.12.5">46.09</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.1.1.12.12.6">37.89</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.1.1.12.12.7">33.84</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.1.1.12.12.8">37.93</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.1.1.12.12.9">33.93</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.1.1.12.12.10">407M</td>
</tr>
<tr class="ltx_tr" id="S5.T5.1.1.13.13">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T5.1.1.13.13.1">mBART<cite class="ltx_cite ltx_citemacro_cite">Liu (<a class="ltx_ref" href="https://arxiv.org/html/2503.16031v1#bib.bib19" title="">2020</a>)</cite>
</th>
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.13.13.2"><span class="ltx_text ltx_font_bold" id="S5.T5.1.1.13.13.2.1">51.00</span></td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.13.13.3"><span class="ltx_text ltx_font_bold" id="S5.T5.1.1.13.13.3.1">50.24</span></td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.13.13.4"><span class="ltx_text ltx_font_bold" id="S5.T5.1.1.13.13.4.1">51.04</span></td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.13.13.5"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T5.1.1.13.13.5.1">49.82</span></td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.13.13.6">36.11</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.13.13.7"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T5.1.1.13.13.7.1">35.60</span></td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.13.13.8">36.32</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.13.13.9"><span class="ltx_text ltx_font_bold" id="S5.T5.1.1.13.13.9.1">35.22</span></td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.13.13.10">680M</td>
</tr>
<tr class="ltx_tr" id="S5.T5.1.1.14.14">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T5.1.1.14.14.1">T5<cite class="ltx_cite ltx_citemacro_cite">Raffel et al. (<a class="ltx_ref" href="https://arxiv.org/html/2503.16031v1#bib.bib21" title="">2020</a>)</cite>
</th>
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.14.14.2">46.78</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.14.14.3">43.64</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.14.14.4">46.37</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.14.14.5">43.53</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.14.14.6">37.67</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.14.14.7">28.48</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.14.14.8">36.02</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.14.14.9">30.50</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.14.14.10">738M</td>
</tr>
<tr class="ltx_tr" id="S5.T5.1.1.15.15">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" colspan="10" id="S5.T5.1.1.15.15.1"><span class="ltx_text ltx_font_bold" id="S5.T5.1.1.15.15.1.1">Decoder-Only (Zero-Shot)</span></th>
</tr>
<tr class="ltx_tr" id="S5.T5.1.1.16.16">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S5.T5.1.1.16.16.1">Gemma<cite class="ltx_cite ltx_citemacro_cite">Team et al. (<a class="ltx_ref" href="https://arxiv.org/html/2503.16031v1#bib.bib25" title="">2024</a>)</cite>
</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.1.1.16.16.2">35.78</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.1.1.16.16.3">28.76</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.1.1.16.16.4">30.03</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.1.1.16.16.5">31.46</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.1.1.16.16.6">23.44</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.1.1.16.16.7">14.66</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.1.1.16.16.8">13.44</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.1.1.16.16.9">19.47</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.1.1.16.16.10">7000M</td>
</tr>
<tr class="ltx_tr" id="S5.T5.1.1.17.17">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T5.1.1.17.17.1">Llama<cite class="ltx_cite ltx_citemacro_cite">Touvron et al. (<a class="ltx_ref" href="https://arxiv.org/html/2503.16031v1#bib.bib27" title="">2023</a>)</cite>
</th>
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.17.17.2">27.78</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.17.17.3">19.23</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.17.17.4">27.10</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.17.17.5">32.73</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.17.17.6">21.11</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.17.17.7">16.65</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.17.17.8">20.55</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.17.17.9">20.60</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.17.17.10">8000M</td>
</tr>
<tr class="ltx_tr" id="S5.T5.1.1.18.18">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T5.1.1.18.18.1">Phi-4<cite class="ltx_cite ltx_citemacro_cite">Abdin et al. (<a class="ltx_ref" href="https://arxiv.org/html/2503.16031v1#bib.bib1" title="">2024</a>)</cite>
</th>
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.18.18.2">42.40</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.18.18.3">20.35</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.18.18.4">20.93</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.18.18.5">32.90</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.18.18.6">15.00</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.18.18.7">11.35</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.18.18.8">10.33</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.18.18.9">20.22</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.18.18.10">14000M</td>
</tr>
<tr class="ltx_tr" id="S5.T5.1.1.19.19">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" colspan="10" id="S5.T5.1.1.19.19.1"><span class="ltx_text ltx_font_bold" id="S5.T5.1.1.19.19.1.1">Decoder-Only (Few-Shot)</span></th>
</tr>
<tr class="ltx_tr" id="S5.T5.1.1.20.20">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S5.T5.1.1.20.20.1">Gemma</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.1.1.20.20.2">43.11</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.1.1.20.20.3">20.08</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.1.1.20.20.4">14.37</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.1.1.20.20.5">33.33</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.1.1.20.20.6">31.56</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.1.1.20.20.7">9.59</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.1.1.20.20.8">6.31</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.1.1.20.20.9">20.00</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.1.1.20.20.10">7000M</td>
</tr>
<tr class="ltx_tr" id="S5.T5.1.1.21.21">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T5.1.1.21.21.1">Llama</th>
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.21.21.2">28.78</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.21.21.3">14.90</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.21.21.4">9.59</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.21.21.5">33.33</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.21.21.6">29.67</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.21.21.7">12.08</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.21.21.8">10.04</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.21.21.9">19.93</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.21.21.10">8000M</td>
</tr>
<tr class="ltx_tr" id="S5.T5.1.1.22.22">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T5.1.1.22.22.1">Phi-4</th>
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.22.22.2">28.78</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.22.22.3">14.90</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.22.22.4">9.59</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.22.22.5">33.33</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.22.22.6">14.33</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.22.22.7">5.01</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.22.22.8">2.87</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.22.22.9">20.00</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.22.22.10">14000M</td>
</tr>
<tr class="ltx_tr" id="S5.T5.1.1.23.23">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" colspan="10" id="S5.T5.1.1.23.23.1"><span class="ltx_text ltx_font_bold" id="S5.T5.1.1.23.23.1.1">Decoder-Only (QLoRA Fine-Tuned)</span></th>
</tr>
<tr class="ltx_tr" id="S5.T5.1.1.24.24">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S5.T5.1.1.24.24.1">Gemma</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.1.1.24.24.2">34.00</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.1.1.24.24.3">27.00</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.1.1.24.24.4">40.00</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.1.1.24.24.5">33.00</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.1.1.24.24.6">24.00</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.1.1.24.24.7">21.00</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.1.1.24.24.8">26.00</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.1.1.24.24.9">24.00</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.1.1.24.24.10">7000M</td>
</tr>
<tr class="ltx_tr" id="S5.T5.1.1.25.25">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T5.1.1.25.25.1">Llama</th>
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.25.25.2">30.00</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.25.25.3">24.00</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.25.25.4">34.00</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.25.25.5">35.00</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.25.25.6">22.00</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.25.25.7">18.00</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.25.25.8">21.00</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.25.25.9">21.00</td>
<td class="ltx_td ltx_align_center" id="S5.T5.1.1.25.25.10">8000M</td>
</tr>
<tr class="ltx_tr" id="S5.T5.1.1.26.26">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_b" id="S5.T5.1.1.26.26.1">Phi-4</th>
<td class="ltx_td ltx_align_center ltx_border_b" id="S5.T5.1.1.26.26.2">35.00</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S5.T5.1.1.26.26.3">29.00</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S5.T5.1.1.26.26.4">34.00</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S5.T5.1.1.26.26.5">34.00</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S5.T5.1.1.26.26.6">26.00</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S5.T5.1.1.26.26.7">12.00</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S5.T5.1.1.26.26.8">35.00</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S5.T5.1.1.26.26.9">18.00</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S5.T5.1.1.26.26.10">14000M</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the performance of various NLP models on the Deceptive Humor Dataset (DHD) in classifying satire levels and humor attributes.  It compares the accuracy, F1-score, precision, and recall of several encoder-only models, encoder-decoder models, and large language models (LLMs). The results show the effectiveness of different architectures in identifying different types of humor and varying degrees of satire.  The top performing model for each metric is bolded, while the second-best is underlined, providing a clear comparison of model performance.
> <details>
> <summary>read the caption</summary>
> Table 5: Baseline Metrics of Models Across Satire Levels and Humor Attributes. The top results are represented in bold, and the second-best results are underlined.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S6.T6.1.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S6.T6.1.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_t" id="S6.T6.1.1.1.1.1"><span class="ltx_text ltx_font_bold" id="S6.T6.1.1.1.1.1.1">Language</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S6.T6.1.1.1.1.2"><span class="ltx_text ltx_font_bold" id="S6.T6.1.1.1.1.2.1">Education</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S6.T6.1.1.1.1.3"><span class="ltx_text ltx_font_bold" id="S6.T6.1.1.1.1.3.1">Gender</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S6.T6.1.1.1.1.4"><span class="ltx_text ltx_font_bold" id="S6.T6.1.1.1.1.4.1">State</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S6.T6.1.1.2.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S6.T6.1.1.2.1.1">English</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T6.1.1.2.1.2">B.Tech</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T6.1.1.2.1.3">Male</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T6.1.1.2.1.4">Andhra Pradesh</td>
</tr>
<tr class="ltx_tr" id="S6.T6.1.1.3.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S6.T6.1.1.3.2.1">Telugu*</th>
<td class="ltx_td ltx_align_center" id="S6.T6.1.1.3.2.2">B.Tech</td>
<td class="ltx_td ltx_align_center" id="S6.T6.1.1.3.2.3">Male</td>
<td class="ltx_td ltx_align_center" id="S6.T6.1.1.3.2.4">Andhra Pradesh</td>
</tr>
<tr class="ltx_tr" id="S6.T6.1.1.4.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S6.T6.1.1.4.3.1">Hindi*</th>
<td class="ltx_td ltx_align_center" id="S6.T6.1.1.4.3.2">PhD Candidate</td>
<td class="ltx_td ltx_align_center" id="S6.T6.1.1.4.3.3">Male</td>
<td class="ltx_td ltx_align_center" id="S6.T6.1.1.4.3.4">Delhi</td>
</tr>
<tr class="ltx_tr" id="S6.T6.1.1.5.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S6.T6.1.1.5.4.1">Kannada*</th>
<td class="ltx_td ltx_align_center" id="S6.T6.1.1.5.4.2">PhD Candidate</td>
<td class="ltx_td ltx_align_center" id="S6.T6.1.1.5.4.3">Male</td>
<td class="ltx_td ltx_align_center" id="S6.T6.1.1.5.4.4">Karnataka</td>
</tr>
<tr class="ltx_tr" id="S6.T6.1.1.6.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S6.T6.1.1.6.5.1">Tamil*</th>
<td class="ltx_td ltx_align_center" id="S6.T6.1.1.6.5.2">B.Tech</td>
<td class="ltx_td ltx_align_center" id="S6.T6.1.1.6.5.3">Male</td>
<td class="ltx_td ltx_align_center" id="S6.T6.1.1.6.5.4">Tamil Nadu</td>
</tr>
</tbody>
<tfoot class="ltx_tfoot">
<tr class="ltx_tr" id="S6.T6.1.1.7.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_b ltx_border_t" colspan="4" id="S6.T6.1.1.7.1.1"><span class="ltx_text ltx_font_bold" id="S6.T6.1.1.7.1.1.1">Country: India</span></th>
</tr>
</tfoot>
</table>{{< /table-caption >}}
> 🔼 This table provides demographic information about the human evaluators who assessed the quality of the synthetically generated data in the Deceptive Humor Dataset (DHD).  It shows the evaluators' language expertise (including native and code-mixed languages), educational background, and gender. This information is crucial for understanding the potential biases or perspectives that might have influenced their evaluations and for ensuring the reproducibility and reliability of the study's findings.
> <details>
> <summary>read the caption</summary>
> Table 6: Profile of Human Evaluators Across Languages (* indicates Indic languages along with their code-mixed variants).
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S6.T7.1.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S6.T7.1.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_t" id="S6.T7.1.1.1.1.1"><span class="ltx_text ltx_font_bold" id="S6.T7.1.1.1.1.1.1">Language</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S6.T7.1.1.1.1.2"><span class="ltx_text ltx_font_bold" id="S6.T7.1.1.1.1.2.1">Avg Satire Score</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S6.T7.1.1.1.1.3"><span class="ltx_text ltx_font_bold" id="S6.T7.1.1.1.1.3.1">Avg Humor Score</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S6.T7.1.1.1.1.4"><span class="ltx_text ltx_font_bold" id="S6.T7.1.1.1.1.4.1">Overall Avg. Score</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S6.T7.1.1.2.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S6.T7.1.1.2.1.1">English</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T7.1.1.2.1.2">4.21</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T7.1.1.2.1.3">4.14</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T7.1.1.2.1.4">4.17</td>
</tr>
<tr class="ltx_tr" id="S6.T7.1.1.3.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S6.T7.1.1.3.2.1">Telugu</th>
<td class="ltx_td ltx_align_center" id="S6.T7.1.1.3.2.2">3.67</td>
<td class="ltx_td ltx_align_center" id="S6.T7.1.1.3.2.3">4.00</td>
<td class="ltx_td ltx_align_center" id="S6.T7.1.1.3.2.4">3.83</td>
</tr>
<tr class="ltx_tr" id="S6.T7.1.1.4.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S6.T7.1.1.4.3.1">Hindi</th>
<td class="ltx_td ltx_align_center" id="S6.T7.1.1.4.3.2">3.50</td>
<td class="ltx_td ltx_align_center" id="S6.T7.1.1.4.3.3">3.60</td>
<td class="ltx_td ltx_align_center" id="S6.T7.1.1.4.3.4">3.55</td>
</tr>
<tr class="ltx_tr" id="S6.T7.1.1.5.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S6.T7.1.1.5.4.1">Kannada</th>
<td class="ltx_td ltx_align_center" id="S6.T7.1.1.5.4.2">3.00</td>
<td class="ltx_td ltx_align_center" id="S6.T7.1.1.5.4.3">2.80</td>
<td class="ltx_td ltx_align_center" id="S6.T7.1.1.5.4.4">2.95</td>
</tr>
<tr class="ltx_tr" id="S6.T7.1.1.6.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S6.T7.1.1.6.5.1">Tamil</th>
<td class="ltx_td ltx_align_center" id="S6.T7.1.1.6.5.2">3.00</td>
<td class="ltx_td ltx_align_center" id="S6.T7.1.1.6.5.3">3.87</td>
<td class="ltx_td ltx_align_center" id="S6.T7.1.1.6.5.4">3.43</td>
</tr>
<tr class="ltx_tr" id="S6.T7.1.1.7.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S6.T7.1.1.7.6.1">Telugu-Eng</th>
<td class="ltx_td ltx_align_center" id="S6.T7.1.1.7.6.2">4.20</td>
<td class="ltx_td ltx_align_center" id="S6.T7.1.1.7.6.3">4.00</td>
<td class="ltx_td ltx_align_center" id="S6.T7.1.1.7.6.4">4.10</td>
</tr>
<tr class="ltx_tr" id="S6.T7.1.1.8.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S6.T7.1.1.8.7.1">Hindi-Eng</th>
<td class="ltx_td ltx_align_center" id="S6.T7.1.1.8.7.2">4.00</td>
<td class="ltx_td ltx_align_center" id="S6.T7.1.1.8.7.3">4.00</td>
<td class="ltx_td ltx_align_center" id="S6.T7.1.1.8.7.4">4.00</td>
</tr>
<tr class="ltx_tr" id="S6.T7.1.1.9.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S6.T7.1.1.9.8.1">Kannada-Eng</th>
<td class="ltx_td ltx_align_center" id="S6.T7.1.1.9.8.2">3.00</td>
<td class="ltx_td ltx_align_center" id="S6.T7.1.1.9.8.3">3.00</td>
<td class="ltx_td ltx_align_center" id="S6.T7.1.1.9.8.4">3.00</td>
</tr>
<tr class="ltx_tr" id="S6.T7.1.1.10.9">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_b" id="S6.T7.1.1.10.9.1">Tamil-Eng</th>
<td class="ltx_td ltx_align_center ltx_border_b" id="S6.T7.1.1.10.9.2">3.74</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S6.T7.1.1.10.9.3">4.34</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S6.T7.1.1.10.9.4">4.04</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of human evaluation conducted to assess the quality of the synthetically generated humor data in the Deceptive Humor Dataset (DHD).  The evaluation involved native speakers rating the satire level and humor attributes of samples across different languages (English and four Indian languages, including code-mixed variations). The scores are presented as averages across various language variants, offering insights into the quality and consistency of the humor generated by the model.  Specifically, it provides average scores for satire, humor, and an overall combined score for each language and code-mixed language variant in the dataset.
> <details>
> <summary>read the caption</summary>
> Table 7: Human Evaluation results for Satire, Humor, and Average scores across various language variants.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="A7.T8.1.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A7.T8.1.1.1.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_t" id="A7.T8.1.1.1.1.1"><span class="ltx_text ltx_font_bold" id="A7.T8.1.1.1.1.1.1">Language</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_t" id="A7.T8.1.1.1.1.2"><span class="ltx_text ltx_font_bold" id="A7.T8.1.1.1.1.2.1">Comment</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A7.T8.1.1.1.1.3"><span class="ltx_text ltx_font_bold" id="A7.T8.1.1.1.1.3.1">Satire Level</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A7.T8.1.1.1.1.4"><span class="ltx_text ltx_font_bold" id="A7.T8.1.1.1.1.4.1">Humor Attribute</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A7.T8.1.1.2.1">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A7.T8.1.1.2.1.1">En</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A7.T8.1.1.2.1.2">Next up: redefining gravity because someone feels it’s oppressive.</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A7.T8.1.1.2.1.3">3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A7.T8.1.1.2.1.4">Absurdity</td>
</tr>
<tr class="ltx_tr" id="A7.T8.1.1.3.2">
<td class="ltx_td ltx_align_center ltx_border_r" id="A7.T8.1.1.3.2.1">En</td>
<td class="ltx_td ltx_align_left" id="A7.T8.1.1.3.2.2">Mosques near stations now double as train wreck centers? Innovative blaming!</td>
<td class="ltx_td ltx_align_center" id="A7.T8.1.1.3.2.3">3</td>
<td class="ltx_td ltx_align_center" id="A7.T8.1.1.3.2.4">Dark Humor</td>
</tr>
<tr class="ltx_tr" id="A7.T8.1.1.4.3">
<td class="ltx_td ltx_align_center ltx_border_r" id="A7.T8.1.1.4.3.1">En</td>
<td class="ltx_td ltx_align_left" id="A7.T8.1.1.4.3.2">The Earth is so flat that NASA has been fooling us with Photoshop for decades.</td>
<td class="ltx_td ltx_align_center" id="A7.T8.1.1.4.3.3">2</td>
<td class="ltx_td ltx_align_center" id="A7.T8.1.1.4.3.4">Irony</td>
</tr>
<tr class="ltx_tr" id="A7.T8.1.1.5.4">
<td class="ltx_td ltx_align_center ltx_border_r" id="A7.T8.1.1.5.4.1">En</td>
<td class="ltx_td ltx_align_left" id="A7.T8.1.1.5.4.2">Even the beggars now ask, ’Do you have Paytm, sir? No cash, please!’</td>
<td class="ltx_td ltx_align_center" id="A7.T8.1.1.5.4.3">1</td>
<td class="ltx_td ltx_align_center" id="A7.T8.1.1.5.4.4">Social Commentary</td>
</tr>
<tr class="ltx_tr" id="A7.T8.1.1.6.5">
<td class="ltx_td ltx_align_center ltx_border_r" id="A7.T8.1.1.6.5.1">En</td>
<td class="ltx_td ltx_align_left" id="A7.T8.1.1.6.5.2">They say sticks and stones break bones, but in lockdown, it was just ’discipline’!</td>
<td class="ltx_td ltx_align_center" id="A7.T8.1.1.6.5.3">2</td>
<td class="ltx_td ltx_align_center" id="A7.T8.1.1.6.5.4">Wordplay</td>
</tr>
<tr class="ltx_tr" id="A7.T8.1.1.7.6">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A7.T8.1.1.7.6.1">Te-En</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A7.T8.1.1.7.6.2">So now Khalistan is getting into the protest business. Can I book a protest for my birthday?</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A7.T8.1.1.7.6.3">2</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A7.T8.1.1.7.6.4">Absurdity</td>
</tr>
<tr class="ltx_tr" id="A7.T8.1.1.8.7">
<td class="ltx_td ltx_align_center ltx_border_r" id="A7.T8.1.1.8.7.1">Te-En</td>
<td class="ltx_td ltx_align_left" id="A7.T8.1.1.8.7.2">Temples ni mosques chesthunnaru anta, next Ramayan ni alochinchi Game of Thrones laga chesthara?</td>
<td class="ltx_td ltx_align_center" id="A7.T8.1.1.8.7.3">3</td>
<td class="ltx_td ltx_align_center" id="A7.T8.1.1.8.7.4">Dark Humor</td>
</tr>
<tr class="ltx_tr" id="A7.T8.1.1.9.8">
<td class="ltx_td ltx_align_center ltx_border_r" id="A7.T8.1.1.9.8.1">Te-En</td>
<td class="ltx_td ltx_align_left" id="A7.T8.1.1.9.8.2">Corona ni jihadi tool ga use chesthunaru anta, inkem cheptaru? Wi-Fi lo use chesi live cheyyadam?</td>
<td class="ltx_td ltx_align_center" id="A7.T8.1.1.9.8.3">2</td>
<td class="ltx_td ltx_align_center" id="A7.T8.1.1.9.8.4">Irony</td>
</tr>
<tr class="ltx_tr" id="A7.T8.1.1.10.9">
<td class="ltx_td ltx_align_center ltx_border_r" id="A7.T8.1.1.10.9.1">Te-En</td>
<td class="ltx_td ltx_align_left" id="A7.T8.1.1.10.9.2">Arey mamsam tintaru ani cheppi kotha rule pettara WHO?</td>
<td class="ltx_td ltx_align_center" id="A7.T8.1.1.10.9.3">1</td>
<td class="ltx_td ltx_align_center" id="A7.T8.1.1.10.9.4">Social Commentary</td>
</tr>
<tr class="ltx_tr" id="A7.T8.1.1.11.10">
<td class="ltx_td ltx_align_center ltx_border_r" id="A7.T8.1.1.11.10.1">Te-En</td>
<td class="ltx_td ltx_align_left" id="A7.T8.1.1.11.10.2">Tablighi Jamaat spreading COVID-19 like it’s a secret mission, script lo plot twist thappa!</td>
<td class="ltx_td ltx_align_center" id="A7.T8.1.1.11.10.3">3</td>
<td class="ltx_td ltx_align_center" id="A7.T8.1.1.11.10.4">Wordplay</td>
</tr>
<tr class="ltx_tr" id="A7.T8.1.1.12.11">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A7.T8.1.1.12.11.1">Hi-En</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A7.T8.1.1.12.11.2">Bhai, anthem ke jagah Azan bajegi kya ab?</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A7.T8.1.1.12.11.3">2</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A7.T8.1.1.12.11.4">Absurdity</td>
</tr>
<tr class="ltx_tr" id="A7.T8.1.1.13.12">
<td class="ltx_td ltx_align_center ltx_border_r" id="A7.T8.1.1.13.12.1">Hi-En</td>
<td class="ltx_td ltx_align_left" id="A7.T8.1.1.13.12.2">Bhai, China ke rice ke saath ek ’Recycle or Die’ sticker bhi milega!</td>
<td class="ltx_td ltx_align_center" id="A7.T8.1.1.13.12.3">3</td>
<td class="ltx_td ltx_align_center" id="A7.T8.1.1.13.12.4">Dark Humor</td>
</tr>
<tr class="ltx_tr" id="A7.T8.1.1.14.13">
<td class="ltx_td ltx_align_center ltx_border_r" id="A7.T8.1.1.14.13.1">Hi-En</td>
<td class="ltx_td ltx_align_left" id="A7.T8.1.1.14.13.2">China ka corona bio weapon? Aur hum lockdown comedy mein atak gaye!</td>
<td class="ltx_td ltx_align_center" id="A7.T8.1.1.14.13.3">3</td>
<td class="ltx_td ltx_align_center" id="A7.T8.1.1.14.13.4">Irony</td>
</tr>
<tr class="ltx_tr" id="A7.T8.1.1.15.14">
<td class="ltx_td ltx_align_center ltx_border_r" id="A7.T8.1.1.15.14.1">Hi-En</td>
<td class="ltx_td ltx_align_left" id="A7.T8.1.1.15.14.2">Arre bhai, ab roadside vendors bhi bolenge ’QR lagao ya aage badho’!</td>
<td class="ltx_td ltx_align_center" id="A7.T8.1.1.15.14.3">2</td>
<td class="ltx_td ltx_align_center" id="A7.T8.1.1.15.14.4">Social Commentary</td>
</tr>
<tr class="ltx_tr" id="A7.T8.1.1.16.15">
<td class="ltx_td ltx_align_center ltx_border_r" id="A7.T8.1.1.16.15.1">Hi-En</td>
<td class="ltx_td ltx_align_left" id="A7.T8.1.1.16.15.2">Plastic rice mein agar fiber hai, toh diet ke liye perfect hoga!</td>
<td class="ltx_td ltx_align_center" id="A7.T8.1.1.16.15.3">3</td>
<td class="ltx_td ltx_align_center" id="A7.T8.1.1.16.15.4">Wordplay</td>
</tr>
<tr class="ltx_tr" id="A7.T8.1.1.17.16">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A7.T8.1.1.17.16.1">Ka-En</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A7.T8.1.1.17.16.2">Dhoni Instagram alli photo haakidre issue complete solve agathe anta!</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A7.T8.1.1.17.16.3">2</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A7.T8.1.1.17.16.4">Absurdity</td>
</tr>
<tr class="ltx_tr" id="A7.T8.1.1.18.17">
<td class="ltx_td ltx_align_center ltx_border_r" id="A7.T8.1.1.18.17.1">Ka-En</td>
<td class="ltx_td ltx_align_left" id="A7.T8.1.1.18.17.2">Bill Gates created COVID-19 to implant tracking devices, well, where’s the tracking device for ‘common sense’?</td>
<td class="ltx_td ltx_align_center" id="A7.T8.1.1.18.17.3">3</td>
<td class="ltx_td ltx_align_center" id="A7.T8.1.1.18.17.4">Dark Humor</td>
</tr>
<tr class="ltx_tr" id="A7.T8.1.1.19.18">
<td class="ltx_td ltx_align_center ltx_border_r" id="A7.T8.1.1.19.18.1">Ka-En</td>
<td class="ltx_td ltx_align_left" id="A7.T8.1.1.19.18.2">Digital rupee anta, but bank queue sullu badlu illa yenadre?</td>
<td class="ltx_td ltx_align_center" id="A7.T8.1.1.19.18.3">1</td>
<td class="ltx_td ltx_align_center" id="A7.T8.1.1.19.18.4">Irony</td>
</tr>
<tr class="ltx_tr" id="A7.T8.1.1.20.19">
<td class="ltx_td ltx_align_center ltx_border_r" id="A7.T8.1.1.20.19.1">Ka-En</td>
<td class="ltx_td ltx_align_left" id="A7.T8.1.1.20.19.2">Gas cylinder throw madi Haldwani summit-anna join agidru anta!</td>
<td class="ltx_td ltx_align_center" id="A7.T8.1.1.20.19.3">1</td>
<td class="ltx_td ltx_align_center" id="A7.T8.1.1.20.19.4">Social Commentary</td>
</tr>
<tr class="ltx_tr" id="A7.T8.1.1.21.20">
<td class="ltx_td ltx_align_center ltx_border_r" id="A7.T8.1.1.21.20.1">Ka-En</td>
<td class="ltx_td ltx_align_left" id="A7.T8.1.1.21.20.2">Flat earth andre nimma GPS ge flat map kodutha?</td>
<td class="ltx_td ltx_align_center" id="A7.T8.1.1.21.20.3">1</td>
<td class="ltx_td ltx_align_center" id="A7.T8.1.1.21.20.4">Wordplay</td>
</tr>
<tr class="ltx_tr" id="A7.T8.1.1.22.21">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A7.T8.1.1.22.21.1">Ta-En</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A7.T8.1.1.22.21.2">Bro unga ooru marriage la gift QR code la thaane kudupaanga?</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A7.T8.1.1.22.21.3">2</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A7.T8.1.1.22.21.4">Absurdity</td>
</tr>
<tr class="ltx_tr" id="A7.T8.1.1.23.22">
<td class="ltx_td ltx_align_center ltx_border_r" id="A7.T8.1.1.23.22.1">Ta-En</td>
<td class="ltx_td ltx_align_left" id="A7.T8.1.1.23.22.2">World-a kaapatharadhukku virus-a anupa China, evvalavo innovation!</td>
<td class="ltx_td ltx_align_center" id="A7.T8.1.1.23.22.3">3</td>
<td class="ltx_td ltx_align_center" id="A7.T8.1.1.23.22.4">Dark Humor</td>
</tr>
<tr class="ltx_tr" id="A7.T8.1.1.24.23">
<td class="ltx_td ltx_align_center ltx_border_r" id="A7.T8.1.1.24.23.1">Ta-En</td>
<td class="ltx_td ltx_align_left" id="A7.T8.1.1.24.23.2">Church-ai set pannina history save aaguma?</td>
<td class="ltx_td ltx_align_center" id="A7.T8.1.1.24.23.3">1</td>
<td class="ltx_td ltx_align_center" id="A7.T8.1.1.24.23.4">Irony</td>
</tr>
<tr class="ltx_tr" id="A7.T8.1.1.25.24">
<td class="ltx_td ltx_align_center ltx_border_r" id="A7.T8.1.1.25.24.1">Ta-En</td>
<td class="ltx_td ltx_align_left" id="A7.T8.1.1.25.24.2">Temple oru ’creative hub’ nu solra trend WhatsApp-la!</td>
<td class="ltx_td ltx_align_center" id="A7.T8.1.1.25.24.3">1</td>
<td class="ltx_td ltx_align_center" id="A7.T8.1.1.25.24.4">Social Commentary</td>
</tr>
<tr class="ltx_tr" id="A7.T8.1.1.26.25">
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r" id="A7.T8.1.1.26.25.1">Ta-En</td>
<td class="ltx_td ltx_align_left ltx_border_b" id="A7.T8.1.1.26.25.2">Vaccines-ku microchip install panna? Mari app store-la update varuma?</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A7.T8.1.1.26.25.3">1</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A7.T8.1.1.26.25.4">Wordplay</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a sample of deceptive humorous comments generated in multiple languages (English and four Indian languages along with their code-mixed variants). Each comment is labeled with its corresponding satire level (1-3, with 1 being subtle and 3 being highly exaggerated) and humor attribute (Irony, Absurdity, Social Commentary, Dark Humor, or Wordplay).  The table showcases the diversity of humor styles and linguistic variations achieved in the dataset, highlighting the complexity of classifying deceptive humor.
> <details>
> <summary>read the caption</summary>
> Table 8: Deceptive humorous comments across different languages with their corresponding satire levels and humor attributes.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2503.16031/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16031/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16031/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16031/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16031/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16031/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16031/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16031/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16031/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16031/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16031/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16031/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16031/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16031/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16031/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}