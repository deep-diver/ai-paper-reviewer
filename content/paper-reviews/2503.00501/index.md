---
title: "Qilin: A Multimodal Information Retrieval Dataset with APP-level User Sessions"
summary: "Qilin: A multimodal dataset with APP-level user sessions for advancing search and recommendation systems."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Multimodal Learning", "Multimodal Datasets", "🏢 Xiaohongshu Inc.",]
showSummary: true
date: 2025-03-01
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2503.00501 {{< /keyword >}}
{{< keyword icon="writer" >}} Jia Chen et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-03-04 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2503.00501" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2503.00501" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2503.00501/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

User-generated content (UGC) communities benefit from integrating visual and textual information into search and recommendation (S&R). However, the progress on multimodal S&R is limited by the lack of high-quality datasets. To address this, the paper introduces **Qilin, a multimodal information retrieval dataset collected from Xiaohongshu**.  Unlike existing datasets, Qilin offers user sessions with image-text notes, video notes, commercial notes, and direct answers, facilitating advanced multimodal neural retrieval models. 



To better model user satisfaction and support analysis, Qilin collects APP-level contextual signals and user feedback. It includes user-favored answers and referred results for search requests triggering the Deep Query Answering (DQA) module, enabling training and evaluation of a Retrieval-augmented Generation (RAG) pipeline and exploration of the module's effect on user search behavior. The paper provides findings and insights for improving S&R systems, **highlighting Qilin's contribution to multimodal content platforms with S&R services**.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Qilin is a novel multimodal dataset featuring user sessions with heterogeneous results from Xiaohongshu. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} The dataset includes APP-level contextual signals and user feedback, facilitating advanced multimodal neural retrieval models. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Analysis of Qilin reveals insights into user behavior, DQA module impact, and query patterns, aiding in improving search and recommendation systems. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper introduces Qilin, a new multimodal dataset for information retrieval, addressing the scarcity of high-quality resources. **It offers diverse data including user sessions and APP-level contextual signals, enabling the development of advanced S&R systems**. Qilin’s insights and resources can significantly impact future research and industry innovations.

------
#### Visual Insights



![](https://arxiv.org/html/2503.00501/extracted/6226143/fig/app_tracks.png)

> 🔼 The figure shows Xiaohongshu's search results page, which uses a two-column layout.  The results are diverse, including image-text posts, videos, and commercial listings. A key feature is the inclusion of a Deep Query Answering (DQA) module that offers direct answers to user queries, in addition to the standard list of results.  Also shown are various modules designed to suggest new topics and encourage further searches from users.
> <details>
> <summary>read the caption</summary>
> Figure 1. Xiaohongshu leverages a two-column result list for S&R services, retrieving heterogeneous results like image-text, video, and commercial notes. The search system is equipped with a DQA module to provide direct answers for users. There are also various modules to stimulate users to search for any topics they might be interested in.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S3.T1.7">
<tr class="ltx_tr" id="S3.T1.7.8">
<td class="ltx_td ltx_align_justify ltx_border_l ltx_border_r ltx_border_t" id="S3.T1.7.8.1">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.7.8.1.1">
<span class="ltx_p" id="S3.T1.7.8.1.1.1"><span class="ltx_text ltx_font_bold" id="S3.T1.7.8.1.1.1.1" style="font-size:90%;">MODEL</span><span class="ltx_text" id="S3.T1.7.8.1.1.1.2" style="font-size:90%;">: Qwen2.5-14B-Instruct (Qwen2-VL-7B-Instruct)</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S3.T1.7.7">
<td class="ltx_td ltx_align_justify ltx_border_l ltx_border_r ltx_border_t" id="S3.T1.7.7.7">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.7.7.7.7">
<span class="ltx_p" id="S3.T1.7.7.7.7.8"><span class="ltx_text ltx_font_bold" id="S3.T1.7.7.7.7.8.1" style="font-size:90%;">PROMPT_PREFIX</span><span class="ltx_text" id="S3.T1.7.7.7.7.8.2" style="font-size:90%;">:</span></span>
<span class="ltx_p" id="S3.T1.7.7.7.7.9"><span class="ltx_text" id="S3.T1.7.7.7.7.9.1" style="font-size:90%;">Imagine you are a content safety reviewer for text (or images). Please examine the following text (or image) and assess whether it contains any illegal or sensitive information:</span></span>
<span class="ltx_p" id="S3.T1.7.7.7.7.10"><span class="ltx_text ltx_font_italic" id="S3.T1.7.7.7.7.10.1" style="font-size:90%;">1. Pornographic/Obscene</span><span class="ltx_text" id="S3.T1.7.7.7.7.10.2" style="font-size:90%;">: Includes explicit sexual descriptions, obscene language, etc.;</span></span>
<span class="ltx_p" id="S3.T1.7.7.7.7.11"><span class="ltx_text ltx_font_italic" id="S3.T1.7.7.7.7.11.1" style="font-size:90%;">2. Violence</span><span class="ltx_text" id="S3.T1.7.7.7.7.11.2" style="font-size:90%;">: Includes bloody, terrifying, extreme violence, etc.;</span></span>
<span class="ltx_p" id="S3.T1.7.7.7.7.12"><span class="ltx_text ltx_font_italic" id="S3.T1.7.7.7.7.12.1" style="font-size:90%;">3. Political Figures</span><span class="ltx_text" id="S3.T1.7.7.7.7.12.2" style="font-size:90%;">: Mentions or discusses information related to political figures;</span></span>
<span class="ltx_p" id="S3.T1.7.7.7.7.13"><span class="ltx_text ltx_font_italic" id="S3.T1.7.7.7.7.13.1" style="font-size:90%;">4. Private Information of Ordinary Individuals</span><span class="ltx_text" id="S3.T1.7.7.7.7.13.2" style="font-size:90%;">: Involves privacy such as names, identifiers, contact information, addresses, etc.;</span></span>
<span class="ltx_p" id="S3.T1.7.7.7.7.14"><span class="ltx_text ltx_font_italic" id="S3.T1.7.7.7.7.14.1" style="font-size:90%;">5. Portraits</span><span class="ltx_text" id="S3.T1.7.7.7.7.14.2" style="font-size:90%;">: Includes any real human faces. Note that the face of a virtual character (e.g., animation, comic, or game roles) is not a portrait;</span></span>
<span class="ltx_p" id="S3.T1.7.7.7.7.15"><span class="ltx_text ltx_font_bold" id="S3.T1.7.7.7.7.15.1" style="font-size:90%;">Additional Notes</span><span class="ltx_text" id="S3.T1.7.7.7.7.15.2" style="font-size:90%;">:</span></span>
<span class="ltx_p" id="S3.T1.1.1.1.1.1"><math alttext="\star" class="ltx_Math" display="inline" id="S3.T1.1.1.1.1.1.m1.1"><semantics id="S3.T1.1.1.1.1.1.m1.1a"><mo id="S3.T1.1.1.1.1.1.m1.1.1" mathsize="90%" xref="S3.T1.1.1.1.1.1.m1.1.1.cmml">⋆</mo><annotation-xml encoding="MathML-Content" id="S3.T1.1.1.1.1.1.m1.1b"><ci id="S3.T1.1.1.1.1.1.m1.1.1.cmml" xref="S3.T1.1.1.1.1.1.m1.1.1">⋆</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.1.1.1.1.1.m1.1c">\star</annotation><annotation encoding="application/x-llamapun" id="S3.T1.1.1.1.1.1.m1.1d">⋆</annotation></semantics></math><span class="ltx_text" id="S3.T1.1.1.1.1.1.1" style="font-size:90%;"> Advertising content does not count as illegal or sensitive information.</span></span>
<span class="ltx_p" id="S3.T1.2.2.2.2.2"><math alttext="\star" class="ltx_Math" display="inline" id="S3.T1.2.2.2.2.2.m1.1"><semantics id="S3.T1.2.2.2.2.2.m1.1a"><mo id="S3.T1.2.2.2.2.2.m1.1.1" mathsize="90%" xref="S3.T1.2.2.2.2.2.m1.1.1.cmml">⋆</mo><annotation-xml encoding="MathML-Content" id="S3.T1.2.2.2.2.2.m1.1b"><ci id="S3.T1.2.2.2.2.2.m1.1.1.cmml" xref="S3.T1.2.2.2.2.2.m1.1.1">⋆</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.2.2.2.2.2.m1.1c">\star</annotation><annotation encoding="application/x-llamapun" id="S3.T1.2.2.2.2.2.m1.1d">⋆</annotation></semantics></math><span class="ltx_text" id="S3.T1.2.2.2.2.2.1" style="font-size:90%;"> Mentioning public figures (such as actors, singers, entrepreneurs, etc.) does not count as illegal or sensitive information unless they are political figures.</span></span>
<span class="ltx_p" id="S3.T1.3.3.3.3.3"><math alttext="\star" class="ltx_Math" display="inline" id="S3.T1.3.3.3.3.3.m1.1"><semantics id="S3.T1.3.3.3.3.3.m1.1a"><mo id="S3.T1.3.3.3.3.3.m1.1.1" mathsize="90%" xref="S3.T1.3.3.3.3.3.m1.1.1.cmml">⋆</mo><annotation-xml encoding="MathML-Content" id="S3.T1.3.3.3.3.3.m1.1b"><ci id="S3.T1.3.3.3.3.3.m1.1.1.cmml" xref="S3.T1.3.3.3.3.3.m1.1.1">⋆</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.3.3.3.3.3.m1.1c">\star</annotation><annotation encoding="application/x-llamapun" id="S3.T1.3.3.3.3.3.m1.1d">⋆</annotation></semantics></math><span class="ltx_text" id="S3.T1.3.3.3.3.3.1" style="font-size:90%;"> Return True only if the text clearly contains any of the specified illegal or sensitive content; otherwise, return False.</span></span>
<span class="ltx_p" id="S3.T1.4.4.4.4.4"><math alttext="\star" class="ltx_Math" display="inline" id="S3.T1.4.4.4.4.4.m1.1"><semantics id="S3.T1.4.4.4.4.4.m1.1a"><mo id="S3.T1.4.4.4.4.4.m1.1.1" mathsize="90%" xref="S3.T1.4.4.4.4.4.m1.1.1.cmml">⋆</mo><annotation-xml encoding="MathML-Content" id="S3.T1.4.4.4.4.4.m1.1b"><ci id="S3.T1.4.4.4.4.4.m1.1.1.cmml" xref="S3.T1.4.4.4.4.4.m1.1.1">⋆</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.4.4.4.4.4.m1.1c">\star</annotation><annotation encoding="application/x-llamapun" id="S3.T1.4.4.4.4.4.m1.1d">⋆</annotation></semantics></math><span class="ltx_text" id="S3.T1.4.4.4.4.4.1" style="font-size:90%;"> Any emoji is not pornographic content.</span></span>
<span class="ltx_p" id="S3.T1.5.5.5.5.5"><math alttext="\star" class="ltx_Math" display="inline" id="S3.T1.5.5.5.5.5.m1.1"><semantics id="S3.T1.5.5.5.5.5.m1.1a"><mo id="S3.T1.5.5.5.5.5.m1.1.1" mathsize="90%" xref="S3.T1.5.5.5.5.5.m1.1.1.cmml">⋆</mo><annotation-xml encoding="MathML-Content" id="S3.T1.5.5.5.5.5.m1.1b"><ci id="S3.T1.5.5.5.5.5.m1.1.1.cmml" xref="S3.T1.5.5.5.5.5.m1.1.1">⋆</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.5.5.5.5.5.m1.1c">\star</annotation><annotation encoding="application/x-llamapun" id="S3.T1.5.5.5.5.5.m1.1d">⋆</annotation></semantics></math><span class="ltx_text" id="S3.T1.5.5.5.5.5.1" style="font-size:90%;"> Normal romantic-related content or sexual education content is not considered pornographic; but if the content is overly explicit or detailed, then it counts.</span></span>
<span class="ltx_p" id="S3.T1.6.6.6.6.6"><math alttext="\star" class="ltx_Math" display="inline" id="S3.T1.6.6.6.6.6.m1.1"><semantics id="S3.T1.6.6.6.6.6.m1.1a"><mo id="S3.T1.6.6.6.6.6.m1.1.1" mathsize="90%" xref="S3.T1.6.6.6.6.6.m1.1.1.cmml">⋆</mo><annotation-xml encoding="MathML-Content" id="S3.T1.6.6.6.6.6.m1.1b"><ci id="S3.T1.6.6.6.6.6.m1.1.1.cmml" xref="S3.T1.6.6.6.6.6.m1.1.1">⋆</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.6.6.6.6.6.m1.1c">\star</annotation><annotation encoding="application/x-llamapun" id="S3.T1.6.6.6.6.6.m1.1d">⋆</annotation></semantics></math><span class="ltx_text" id="S3.T1.6.6.6.6.6.1" style="font-size:90%;"> Expressions of negative emotions, when not coupled with violent content, should not be classified as acts of violence.</span></span>
<span class="ltx_p" id="S3.T1.7.7.7.7.7"><math alttext="\star" class="ltx_Math" display="inline" id="S3.T1.7.7.7.7.7.m1.1"><semantics id="S3.T1.7.7.7.7.7.m1.1a"><mo id="S3.T1.7.7.7.7.7.m1.1.1" mathsize="90%" xref="S3.T1.7.7.7.7.7.m1.1.1.cmml">⋆</mo><annotation-xml encoding="MathML-Content" id="S3.T1.7.7.7.7.7.m1.1b"><ci id="S3.T1.7.7.7.7.7.m1.1.1.cmml" xref="S3.T1.7.7.7.7.7.m1.1.1">⋆</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.7.7.7.7.7.m1.1c">\star</annotation><annotation encoding="application/x-llamapun" id="S3.T1.7.7.7.7.7.m1.1d">⋆</annotation></semantics></math><span class="ltx_text" id="S3.T1.7.7.7.7.7.1" style="font-size:90%;"> Do not be too strict, as minor issues being marked as illegal or sensitive can result in false positives.
If you are uncertain, it is acceptable to refrain from labeling the content as illegal or sensitive.
Only when you are very sure, mark it as a positive instance and return True.</span></span>
<span class="ltx_p" id="S3.T1.7.7.7.7.16"><span class="ltx_text" id="S3.T1.7.7.7.7.16.1" style="font-size:90%;">Text (Image) to be checked: [</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S3.T1.7.9">
<td class="ltx_td ltx_align_justify ltx_border_b ltx_border_l ltx_border_r ltx_border_t" id="S3.T1.7.9.1">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.7.9.1.1">
<span class="ltx_p" id="S3.T1.7.9.1.1.1"><span class="ltx_text ltx_font_bold" id="S3.T1.7.9.1.1.1.1" style="font-size:90%;">PROMPT_SUFFIX</span><span class="ltx_text" id="S3.T1.7.9.1.1.1.2" style="font-size:90%;">:</span></span>
<span class="ltx_p" id="S3.T1.7.9.1.1.2"><span class="ltx_text" id="S3.T1.7.9.1.1.2.1" style="font-size:90%;">] Please only return True or False without any explanations.</span></span>
</span>
</td>
</tr>
</table>{{< /table-caption >}}

> 🔼 This table details the prompts used for filtering textual and image data in the Qilin dataset.  The prompts are designed to identify and remove inappropriate content from the dataset, which includes identifying instances of pornography, violence, references to political figures, personal information, and real human faces.  Different prompts are used for text and images, reflecting the unique ways each data type can be inappropriate. The prompts are aimed at providing explicit instructions for LLMs (Large Language Models) to accurately classify content while balancing accuracy and minimizing false positives.
> <details>
> <summary>read the caption</summary>
> Table 1. Prompts used for filtering textual and image data.
> </details>





### In-depth insights


#### Multimodal S&R
Based on the provided research paper, 'Multimodal S&R' seems crucial for modern information retrieval, especially in user-generated content platforms. The paper addresses the deficiency in existing datasets, which often lack the **multimodal information** needed for advanced search and recommendation systems. Qilin, the dataset introduced, aims to bridge this gap by incorporating diverse data types like image-text notes and videos, which facilitates the development of neural retrieval models. The ability to analyze user behavior at the application level, considering factors such as session search and query suggestion modules, offers a **holistic view** of user engagement. This is vital as traditional methods might not suffice in scenarios where users interact with heterogeneous functional modules, like those incorporating deep query answering techniques. Exploring user intent understanding and cross-modal matching is vital and the complexity Qilin brings is beneficial for advancing multimodal systems.

#### APP-level Tracks
The concept of "APP-level Tracks" in the context of multimodal information retrieval is intriguing. It suggests focusing on **user behavior within a specific application**, analyzing not just individual queries but the sequence of interactions, time spent, and features used. This approach allows for a more **holistic understanding of user intent and satisfaction**. By tracking how users navigate and interact with various app features, including search, recommendation, and DQA modules, it is possible to **uncover patterns and preferences** that would be missed by analyzing isolated search sessions. Furthermore, the data helps to model **user state transitions**, **revisits**, and **query reformulations** thereby significantly improving user's search experiences.  

#### DQA Influence
The paper highlights the **growing importance of Deep Query Answering (DQA) modules** in modern search engines. These modules, which employ Retrieval-Augmented Generation (RAG) pipelines, provide users with succinct, direct answers. While DQA modules enhance user experience, their **influence on user satisfaction and retention remains underexplored**. Presenting direct answers can significantly alter user browsing behavior, potentially leading to increased focus on top results and reduced interaction with organic listings. To address this gap, the paper introduces the Qilin dataset, which includes user feedback on DQA modules and contextual behaviors, enabling researchers to **evaluate the impact of RAG on user-perceived experience and explore how DQA affects user search patterns**.  This exploration is key to optimizing search strategies in the era of increasingly sophisticated AI-powered answer engines, and for future research.

#### Qilin Dataset
The Qilin dataset, a multimodal information retrieval resource with APP-level user sessions, appears to be a valuable contribution to the field. Its **focus on user-generated content (UGC)** from a popular social platform distinguishes it from existing datasets, which often lack the richness and heterogeneity of real-world user interactions. The dataset's comprehensive collection of user sessions, encompassing diverse result types like image-text notes, video notes, commercial notes, and direct answers, enables the development of advanced multimodal neural retrieval models. Moreover, the inclusion of **APP-level contextual signals and genuine user feedback** allows for a deeper understanding of user satisfaction and behavior. The availability of user-favored answers and referred results for search requests triggering the Deep Query Answering (DQA) module opens up opportunities for training and evaluating Retrieval-augmented Generation (RAG) pipelines and exploring the impact of such modules on user search behavior. The dataset's potential to advance multimodal content platforms with S&R services is significant.

#### Diverse Behaviors
Analyzing diverse user behaviors within information retrieval systems reveals nuanced interaction patterns. **Variations in search query formulation**, influenced by user expertise and task complexity, significantly impact retrieval effectiveness. Understanding these behaviors can help in optimizing retrieval strategies and adapting interfaces to cater to different user needs. **Session-level analysis** provides further insights into user intent and satisfaction, enabling the development of personalized retrieval experiences. Recognizing diverse search approaches is crucial for improving relevance and user engagement in information retrieval systems. Furthermore, **APP-level behaviors** can also reveal insight on user engagement and result satisfaction that can inform strategies on improving the recommendation and search results.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2503.00501/x1.png)

> 🔼 The figure illustrates the pipeline for creating the Qilin dataset.  It begins with sampling user IDs from Xiaohongshu's database.  These IDs are then linked to the platform's frontend logs to build the dataset's foundation. Next, features are extracted from different databases: request details, user profiles, and note attributes (including image and text information).  A crucial step is the filtering process, employing Large Language Models (LLMs) and manual expert review to eliminate unsafe or inappropriate content, resulting in a clean, high-quality multimodal dataset.
> <details>
> <summary>read the caption</summary>
> Figure 2. The data construction process of Qilin. The front-end log is joined with sampled user IDs to obtain the dataset backbone. Then we collect features for the request, user, and note from various databases. Finally, all content features undergo rigorous filtering by LLMs and human experts.
> </details>



![](https://arxiv.org/html/2503.00501/x2.png)

> 🔼 This figure shows the click-through rate (CTR) for search and recommendation results across different ranking positions.  It illustrates the well-known 'position bias,' where higher-ranked results tend to receive more clicks. The figure also shows that the decay in CTR with ranking position is slower for recommendations than for search results. This difference is likely due to different user browsing behaviors in these two scenarios.
> <details>
> <summary>read the caption</summary>
> (a) Position bias.
> </details>



![](https://arxiv.org/html/2503.00501/x3.png)

> 🔼 This figure shows the click-through rate (CTR) for search and recommendation results across multiple sessions.  It demonstrates that CTR decreases as the session progresses, indicating a session bias effect. This means users are less likely to click on results later in their session, perhaps due to fatigue or satisfaction.
> <details>
> <summary>read the caption</summary>
> (b) Session bias.
> </details>



![](https://arxiv.org/html/2503.00501/x4.png)

> 🔼 This figure shows the distribution of different result types (image-text and video notes) across ranking positions in search scenarios. The x-axis represents the ranking position, and the y-axis represents the proportion of each result type.  The figure visualizes how the proportion of video notes and image-text notes varies across different positions in the search results.
> <details>
> <summary>read the caption</summary>
> (c) Search result distribution.
> </details>



![](https://arxiv.org/html/2503.00501/x5.png)

> 🔼 This figure shows the distribution of video and image-text notes in recommendation results across different ranking positions.  The x-axis represents the ranking position, and the y-axis represents the proportion of each note type. It illustrates how the prevalence of video and image-text notes changes depending on where they appear in the recommendation list.
> <details>
> <summary>read the caption</summary>
> (d) Recommendation result distribution.
> </details>



![](https://arxiv.org/html/2503.00501/x6.png)

> 🔼 This figure shows the click-through rate (CTR) for search results plotted against ranking positions.  The CTR shows how often users click on a result given its position.  It demonstrates the relationship between the position of a search result on the page and the probability that it will be clicked. This helps understand position bias in search results (the tendency for higher-ranked results to receive more clicks regardless of relevance). The figure also shows the distribution of CTR for different types of search results (image-text and video notes).
> <details>
> <summary>read the caption</summary>
> (e) Search result CTR.
> </details>



![](https://arxiv.org/html/2503.00501/x7.png)

> 🔼 This figure shows the click-through rate (CTR) for image-text and video notes across different ranking positions in recommendation scenarios. It illustrates how the CTR varies depending on the position of the result (position bias) in the recommendation list.
> <details>
> <summary>read the caption</summary>
> (f) Recommendation result CTR.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_figure_panel ltx_align_middle" id="S3.T2.6">
<tr class="ltx_tr" id="S3.T2.6.7">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T2.6.7.1">
<span class="ltx_rule" style="width:100%;height:0.7pt;background:black;display:inline-block;"> </span><span class="ltx_text" id="S3.T2.6.7.1.1" style="font-size:90%;">
</span><span class="ltx_text ltx_font_bold" id="S3.T2.6.7.1.2" style="font-size:90%;">Property</span>
</td>
<td class="ltx_td ltx_align_center" id="S3.T2.6.7.2"><span class="ltx_text ltx_font_bold" id="S3.T2.6.7.2.1" style="font-size:90%;">Amazon</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.6.7.3"><span class="ltx_text ltx_font_bold" id="S3.T2.6.7.3.1" style="font-size:90%;">JD Search</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.6.7.4"><span class="ltx_text ltx_font_bold" id="S3.T2.6.7.4.1" style="font-size:90%;">KuaiSAR</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.6.7.5"><span class="ltx_text ltx_font_bold" id="S3.T2.6.7.5.1" style="font-size:90%;">Qilin</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.6.8">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S3.T2.6.8.1"><span class="ltx_text" id="S3.T2.6.8.1.1" style="font-size:90%;"># Users</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.6.8.2"><span class="ltx_text" id="S3.T2.6.8.2.1" style="font-size:90%;">192,403</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.6.8.3"><span class="ltx_text" id="S3.T2.6.8.3.1" style="font-size:90%;">173,831</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.6.8.4"><span class="ltx_text" id="S3.T2.6.8.4.1" style="font-size:90%;">25,877</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.6.8.5"><span class="ltx_text" id="S3.T2.6.8.5.1" style="font-size:90%;">15,482</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.6.9">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T2.6.9.1"><span class="ltx_text" id="S3.T2.6.9.1.1" style="font-size:90%;"># Items</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.6.9.2"><span class="ltx_text" id="S3.T2.6.9.2.1" style="font-size:90%;">63,001</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.6.9.3"><span class="ltx_text" id="S3.T2.6.9.3.1" style="font-size:90%;">12,872,736</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.6.9.4"><span class="ltx_text" id="S3.T2.6.9.4.1" style="font-size:90%;">6,890,707</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.6.9.5"><span class="ltx_text" id="S3.T2.6.9.5.1" style="font-size:90%;">1,983,938</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.1.1">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T2.1.1.2"><span class="ltx_text" id="S3.T2.1.1.2.1" style="font-size:90%;"># Queries</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.3"><span class="ltx_text" id="S3.T2.1.1.3.1" style="font-size:90%;">3,221</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.4"><span class="ltx_text" id="S3.T2.1.1.4.1" style="font-size:90%;">171,728</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.5"><span class="ltx_text" id="S3.T2.1.1.5.1" style="font-size:90%;">453,667</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.1">
<span class="ltx_text" id="S3.T2.1.1.1.1" style="font-size:90%;">57,188</span><sup class="ltx_sup" id="S3.T2.1.1.1.2"><span class="ltx_text ltx_font_italic" id="S3.T2.1.1.1.2.1" style="font-size:90%;">1</span></sup>
</td>
</tr>
<tr class="ltx_tr" id="S3.T2.6.10">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T2.6.10.1"><span class="ltx_text" id="S3.T2.6.10.1.1" style="font-size:90%;"># Actions</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.6.10.2"><span class="ltx_text" id="S3.T2.6.10.2.1" style="font-size:90%;">1,689,188</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.6.10.3"><span class="ltx_text" id="S3.T2.6.10.3.1" style="font-size:90%;">26,667,260</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.6.10.4"><span class="ltx_text" id="S3.T2.6.10.4.1" style="font-size:90%;">19,664,885</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.6.10.5"><span class="ltx_text" id="S3.T2.6.10.5.1" style="font-size:90%;">2,498,594</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.2.2">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T2.2.2.1">
<span class="ltx_text" id="S3.T2.2.2.1.1" style="font-size:90%;"># Images</span><sup class="ltx_sup" id="S3.T2.2.2.1.2"><span class="ltx_text ltx_font_italic" id="S3.T2.2.2.1.2.1" style="font-size:90%;">2</span></sup>
</td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.2.2"><span class="ltx_text" id="S3.T2.2.2.2.1" style="font-size:90%;">?</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.2.3"><span class="ltx_text" id="S3.T2.2.2.3.1" style="font-size:90%;">–</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.2.4"><span class="ltx_text" id="S3.T2.2.2.4.1" style="font-size:90%;">–</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.2.5"><span class="ltx_text" id="S3.T2.2.2.5.1" style="font-size:90%;">5,006,181</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.6.6">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T2.6.6.5"><span class="ltx_text" id="S3.T2.6.6.5.1" style="font-size:90%;">DQA info</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.3.3.1"><math alttext="\times" class="ltx_Math" display="inline" id="S3.T2.3.3.1.m1.1"><semantics id="S3.T2.3.3.1.m1.1a"><mo id="S3.T2.3.3.1.m1.1.1" mathsize="90%" xref="S3.T2.3.3.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S3.T2.3.3.1.m1.1b"><times id="S3.T2.3.3.1.m1.1.1.cmml" xref="S3.T2.3.3.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.3.3.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S3.T2.3.3.1.m1.1d">×</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S3.T2.4.4.2"><math alttext="\times" class="ltx_Math" display="inline" id="S3.T2.4.4.2.m1.1"><semantics id="S3.T2.4.4.2.m1.1a"><mo id="S3.T2.4.4.2.m1.1.1" mathsize="90%" xref="S3.T2.4.4.2.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S3.T2.4.4.2.m1.1b"><times id="S3.T2.4.4.2.m1.1.1.cmml" xref="S3.T2.4.4.2.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.4.4.2.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S3.T2.4.4.2.m1.1d">×</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S3.T2.5.5.3"><math alttext="\times" class="ltx_Math" display="inline" id="S3.T2.5.5.3.m1.1"><semantics id="S3.T2.5.5.3.m1.1a"><mo id="S3.T2.5.5.3.m1.1.1" mathsize="90%" xref="S3.T2.5.5.3.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S3.T2.5.5.3.m1.1b"><times id="S3.T2.5.5.3.m1.1.1.cmml" xref="S3.T2.5.5.3.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.5.5.3.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S3.T2.5.5.3.m1.1d">×</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S3.T2.6.6.4"><math alttext="\surd" class="ltx_Math" display="inline" id="S3.T2.6.6.4.m1.1"><semantics id="S3.T2.6.6.4.m1.1a"><mo id="S3.T2.6.6.4.m1.1.1" mathsize="90%" xref="S3.T2.6.6.4.m1.1.1.cmml">√</mo><annotation-xml encoding="MathML-Content" id="S3.T2.6.6.4.m1.1b"><csymbol cd="latexml" id="S3.T2.6.6.4.m1.1.1.cmml" xref="S3.T2.6.6.4.m1.1.1">square-root</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.6.6.4.m1.1c">\surd</annotation><annotation encoding="application/x-llamapun" id="S3.T2.6.6.4.m1.1d">√</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S3.T2.6.11">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T2.6.11.1"><span class="ltx_text" id="S3.T2.6.11.1.1" style="font-size:90%;">Item text</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.6.11.2"><span class="ltx_text" id="S3.T2.6.11.2.1" style="font-size:90%;">title+review</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.6.11.3"><span class="ltx_text" id="S3.T2.6.11.3.1" style="font-size:90%;">anon’d</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.6.11.4"><span class="ltx_text" id="S3.T2.6.11.4.1" style="font-size:90%;">anon’d</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.6.11.5"><span class="ltx_text" id="S3.T2.6.11.5.1" style="font-size:90%;">title+body</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.6.12">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T2.6.12.1"><span class="ltx_rule" style="width:100%;height:0.7pt;background:black;display:inline-block;"> </span></td>
<td class="ltx_td" id="S3.T2.6.12.2"></td>
<td class="ltx_td" id="S3.T2.6.12.3"></td>
<td class="ltx_td" id="S3.T2.6.12.4"></td>
<td class="ltx_td" id="S3.T2.6.12.5"></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table compares the Qilin dataset with three other existing datasets used for Search and Recommendation (S&R) tasks: Amazon, JD Search, and KuaiSAR.  It highlights key differences in the number of users, items, queries, and actions recorded.  Importantly, it notes that Amazon uses pseudo-queries (not real user queries), while JD Search and KuaiSAR provide only anonymized item content (not the actual item text).  Qilin's distinction is emphasized: it uniquely includes user actions related to the Deep Query Answering (DQA) module, offering a more complete picture of user interactions.
> <details>
> <summary>read the caption</summary>
> Table 2. Comparison between Qilin and existing S&R datasets. Note that queries in Amazon are pseudo ones. JD Search and KuaiSAR only provide anonymized item content. Besides S&R, Qilin also include user actions on DQA.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_figure_panel ltx_align_middle" id="S3.T3.1">
<tr class="ltx_tr" id="S3.T3.1.2">
<td class="ltx_td ltx_align_left" id="S3.T3.1.2.1">
<span class="ltx_rule" style="width:100%;height:0.7pt;background:black;display:inline-block;"> </span><span class="ltx_text" id="S3.T3.1.2.1.1" style="font-size:90%;">
</span><span class="ltx_text ltx_font_bold" id="S3.T3.1.2.1.2" style="font-size:90%;">Table</span>
</td>
<td class="ltx_td ltx_align_left" id="S3.T3.1.2.2"><span class="ltx_text ltx_font_bold" id="S3.T3.1.2.2.1" style="font-size:90%;">Key</span></td>
<td class="ltx_td ltx_align_justify" id="S3.T3.1.2.3">
<span class="ltx_inline-block ltx_align_top" id="S3.T3.1.2.3.1">
<span class="ltx_p" id="S3.T3.1.2.3.1.1"><span class="ltx_text ltx_font_bold" id="S3.T3.1.2.3.1.1.1" style="font-size:90%;">Fields</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S3.T3.1.3">
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T3.1.3.1"><span class="ltx_text" id="S3.T3.1.3.1.1" style="font-size:90%;">Search</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T3.1.3.2"><span class="ltx_text" id="S3.T3.1.3.2.1" style="font-size:90%;">search id</span></td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="S3.T3.1.3.3">
<span class="ltx_inline-block ltx_align_top" id="S3.T3.1.3.3.1">
<span class="ltx_p" id="S3.T3.1.3.3.1.1"><span class="ltx_text" id="S3.T3.1.3.3.1.1.1" style="font-size:90%;">query, session id, user id, 20 recently clicked note ids, query source (1-8), search result details (list, each element is encapsulated as {</span><span class="ltx_text ltx_font_italic" id="S3.T3.1.3.3.1.1.2" style="font-size:90%;">note id</span><span class="ltx_text" id="S3.T3.1.3.3.1.1.3" style="font-size:90%;">, </span><span class="ltx_text ltx_font_italic" id="S3.T3.1.3.3.1.1.4" style="font-size:90%;">position</span><span class="ltx_text" id="S3.T3.1.3.3.1.1.5" style="font-size:90%;">, </span><span class="ltx_text ltx_font_italic" id="S3.T3.1.3.3.1.1.6" style="font-size:90%;">timestamp</span><span class="ltx_text" id="S3.T3.1.3.3.1.1.7" style="font-size:90%;">, </span><span class="ltx_text ltx_font_italic" id="S3.T3.1.3.3.1.1.8" style="font-size:90%;">six engage labels</span><span class="ltx_text" id="S3.T3.1.3.3.1.1.9" style="font-size:90%;">}, sorted by ascending timestamp), DQA details (if triggered);</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S3.T3.1.4">
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T3.1.4.1"><span class="ltx_text" id="S3.T3.1.4.1.1" style="font-size:90%;">Rec</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T3.1.4.2"><span class="ltx_text" id="S3.T3.1.4.2.1" style="font-size:90%;">request id</span></td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="S3.T3.1.4.3">
<span class="ltx_inline-block ltx_align_top" id="S3.T3.1.4.3.1">
<span class="ltx_p" id="S3.T3.1.4.3.1.1"><span class="ltx_text" id="S3.T3.1.4.3.1.1.1" style="font-size:90%;">session id, user id, 20 recently clicked note ids, recommendation result details (a list of encapsulated elements, ditto);</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S3.T3.1.5">
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T3.1.5.1"><span class="ltx_text" id="S3.T3.1.5.1.1" style="font-size:90%;">DQA</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T3.1.5.2"><span class="ltx_text" id="S3.T3.1.5.2.1" style="font-size:90%;">search id</span></td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="S3.T3.1.5.3">
<span class="ltx_inline-block ltx_align_top" id="S3.T3.1.5.3.1">
<span class="ltx_p" id="S3.T3.1.5.3.1.1"><span class="ltx_text" id="S3.T3.1.5.3.1.1.1" style="font-size:90%;">all search fields, answer content, referred note ids, four user engage labels;</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S3.T3.1.6">
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T3.1.6.1"><span class="ltx_text" id="S3.T3.1.6.1.1" style="font-size:90%;">User</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T3.1.6.2"><span class="ltx_text" id="S3.T3.1.6.2.1" style="font-size:90%;">user id</span></td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="S3.T3.1.6.3">
<span class="ltx_inline-block ltx_align_top" id="S3.T3.1.6.3.1">
<span class="ltx_p" id="S3.T3.1.6.3.1.1"><span class="ltx_text" id="S3.T3.1.6.3.1.1.1" style="font-size:90%;">gender, platform, age, fan number, follow number, 40 encrypted dense features;</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S3.T3.1.1">
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T3.1.1.2"><span class="ltx_text" id="S3.T3.1.1.2.1" style="font-size:90%;">Note</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T3.1.1.3"><span class="ltx_text" id="S3.T3.1.1.3.1" style="font-size:90%;">note id</span></td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="S3.T3.1.1.1">
<span class="ltx_inline-block ltx_align_top" id="S3.T3.1.1.1.1">
<span class="ltx_p" id="S3.T3.1.1.1.1.1"><span class="ltx_text" id="S3.T3.1.1.1.1.1.1" style="font-size:90%;">note type, note title, note content, image id list</span><sup class="ltx_sup" id="S3.T3.1.1.1.1.1.2"><span class="ltx_text" id="S3.T3.1.1.1.1.1.2.1" style="font-size:90%;">1</span></sup><span class="ltx_text" id="S3.T3.1.1.1.1.1.3" style="font-size:90%;">, video duration, video height, video width, image num, content length, commercial flag, 1/2/3-level taxonomy ids, 30 statistical features (e.g., the number of monthly impressions or clicks);</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S3.T3.1.7">
<td class="ltx_td ltx_align_left" id="S3.T3.1.7.1"><span class="ltx_rule" style="width:100%;height:0.7pt;background:black;display:inline-block;"> </span></td>
<td class="ltx_td" id="S3.T3.1.7.2"></td>
<td class="ltx_td ltx_align_justify" id="S3.T3.1.7.3"></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 Table 3 presents a detailed schema of the Qilin dataset, outlining the structure and contents of each data field.  It breaks down the dataset into key tables (search, recommendation, DQA, user, and note), detailing the attributes and data types within each table.  This allows researchers to understand the organization and content of the data for improved usage and analysis.
> <details>
> <summary>read the caption</summary>
> Table 3. Data schema of Qilin.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S3.T4.3">
<tr class="ltx_tr" id="S3.T4.3.1">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T4.3.1.1">
<span class="ltx_rule" style="width:100%;height:0.9pt;background:black;display:inline-block;"> </span><span class="ltx_text" id="S3.T4.3.1.1.1" style="font-size:90%;">
</span><span class="ltx_text ltx_font_bold" id="S3.T4.3.1.1.2" style="font-size:90%;">Scenario</span>
</td>
<td class="ltx_td ltx_align_justify" id="S3.T4.3.1.2">
<span class="ltx_inline-block ltx_align_top" id="S3.T4.3.1.2.1">
<span class="ltx_p" id="S3.T4.3.1.2.1.1"><span class="ltx_text ltx_font_bold" id="S3.T4.3.1.2.1.1.1" style="font-size:90%;">Tasks</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S3.T4.3.2">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S3.T4.3.2.1"><span class="ltx_text" id="S3.T4.3.2.1.1" style="font-size:90%;">Search</span></td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="S3.T4.3.2.2">
<span class="ltx_inline-block ltx_align_top" id="S3.T4.3.2.2.1">
<span class="ltx_p" id="S3.T4.3.2.2.1.1"><span class="ltx_text" id="S3.T4.3.2.2.1.1.1" style="font-size:90%;">CTR prediction, click simulation, unbiased learning to rank, multimodal search, context-aware ranking, session search, (post) pre-training for web search, enhancing search by recommendation, pre-training for RAG, evaluation for RAG, multimodal RAG, query performance prediction, etc;</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S3.T4.3.3">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S3.T4.3.3.1"><span class="ltx_text" id="S3.T4.3.3.1.1" style="font-size:90%;">Rec</span></td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="S3.T4.3.3.2">
<span class="ltx_inline-block ltx_align_top" id="S3.T4.3.3.2.1">
<span class="ltx_p" id="S3.T4.3.3.2.1.1"><span class="ltx_text" id="S3.T4.3.3.2.1.1.1" style="font-size:90%;">content-based recommendation, multimodal recommendation, session-based recommendation, unbiased recommendation, query (intent) recommendation, enhancing recommendation by search, etc;</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S3.T4.3.4">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S3.T4.3.4.1"><span class="ltx_text" id="S3.T4.3.4.1.1" style="font-size:90%;">General</span></td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="S3.T4.3.4.2">
<span class="ltx_inline-block ltx_align_top" id="S3.T4.3.4.2.1">
<span class="ltx_p" id="S3.T4.3.4.2.1.1"><span class="ltx_text" id="S3.T4.3.4.2.1.1.1" style="font-size:90%;">multi-task learning, multi-scenario learning, heterogeneous user behavior analysis, multimodal alignment, multimodal LLM-as-judges, scaling laws fitting, etc;</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S3.T4.3.5">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T4.3.5.1"><span class="ltx_rule" style="width:100%;height:0.9pt;background:black;display:inline-block;"> </span></td>
<td class="ltx_td ltx_align_justify" id="S3.T4.3.5.2"></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table lists various potential research tasks enabled by the Qilin dataset.  It categorizes these tasks by the type of retrieval system they apply to (Search, Recommendation, or General) and provides examples of specific research questions that could be addressed using Qilin's data. This includes tasks related to ranking model training, bias mitigation, user behavior analysis, and multimodal learning.
> <details>
> <summary>read the caption</summary>
> Table 4. Potential tasks that Qilin supports.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S4.T5.3">
<tr class="ltx_tr" id="S4.T5.3.1">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T5.3.1.1"><span class="ltx_rule" style="width:100%;height:0.9pt;background:black;display:inline-block;"> </span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.3.1.2"><span class="ltx_text ltx_font_bold" id="S4.T5.3.1.2.1" style="font-size:90%;">S</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T5.3.1.3"><span class="ltx_text ltx_font_bold" id="S4.T5.3.1.3.1" style="font-size:90%;">R</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.3.1.4"><span class="ltx_text ltx_font_bold" id="S4.T5.3.1.4.1" style="font-size:90%;">S-DQA</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.3.1.5"><span class="ltx_text ltx_font_bold" id="S4.T5.3.1.5.1" style="font-size:90%;">S+DQA</span></td>
</tr>
<tr class="ltx_tr" id="S4.T5.3.2">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S4.T5.3.2.1"><span class="ltx_text ltx_font_italic" id="S4.T5.3.2.1.1" style="font-size:90%;">Avg. browsing depth</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.3.2.2" style="background-color:#E6E6E6;"><span class="ltx_text" id="S4.T5.3.2.2.1" style="font-size:90%;background-color:#E6E6E6;">22.75</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T5.3.2.3"><span class="ltx_text" id="S4.T5.3.2.3.1" style="font-size:90%;">18.80</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.3.2.4" style="background-color:#E6E6E6;"><span class="ltx_text" id="S4.T5.3.2.4.1" style="font-size:90%;background-color:#E6E6E6;">23.41</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.3.2.5"><span class="ltx_text" id="S4.T5.3.2.5.1" style="font-size:90%;">10.61</span></td>
</tr>
<tr class="ltx_tr" id="S4.T5.3.3">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T5.3.3.1"><span class="ltx_text ltx_font_italic" id="S4.T5.3.3.1.1" style="font-size:90%;">Avg. first click rank</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.3.3.2"><span class="ltx_text" id="S4.T5.3.3.2.1" style="font-size:90%;">3.01</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T5.3.3.3" style="background-color:#E6E6E6;"><span class="ltx_text" id="S4.T5.3.3.3.1" style="font-size:90%;background-color:#E6E6E6;">4.97</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.3.3.4" style="background-color:#E6E6E6;"><span class="ltx_text" id="S4.T5.3.3.4.1" style="font-size:90%;background-color:#E6E6E6;">3.03</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.3.3.5"><span class="ltx_text" id="S4.T5.3.3.5.1" style="font-size:90%;">2.50</span></td>
</tr>
<tr class="ltx_tr" id="S4.T5.3.4">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T5.3.4.1"><span class="ltx_text ltx_font_italic" id="S4.T5.3.4.1.1" style="font-size:90%;">Avg. click num</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.3.4.2" style="background-color:#E6E6E6;"><span class="ltx_text" id="S4.T5.3.4.2.1" style="font-size:90%;background-color:#E6E6E6;">3.88</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T5.3.4.3"><span class="ltx_text" id="S4.T5.3.4.3.1" style="font-size:90%;">3.67</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.3.4.4" style="background-color:#E6E6E6;"><span class="ltx_text" id="S4.T5.3.4.4.1" style="font-size:90%;background-color:#E6E6E6;">3.99</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.3.4.5"><span class="ltx_text" id="S4.T5.3.4.5.1" style="font-size:90%;">2.50</span></td>
</tr>
<tr class="ltx_tr" id="S4.T5.3.5">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S4.T5.3.5.1"><span class="ltx_text ltx_font_italic" id="S4.T5.3.5.1.1" style="font-size:90%;">Click-through rate</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.3.5.2"><span class="ltx_text" id="S4.T5.3.5.2.1" style="font-size:90%;">21.01%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T5.3.5.3" style="background-color:#E6E6E6;"><span class="ltx_text" id="S4.T5.3.5.3.1" style="font-size:90%;background-color:#E6E6E6;">24.13%</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.3.5.4" style="background-color:#E6E6E6;"><span class="ltx_text" id="S4.T5.3.5.4.1" style="font-size:90%;background-color:#E6E6E6;">21.02%</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.3.5.5"><span class="ltx_text" id="S4.T5.3.5.5.1" style="font-size:90%;">20.73%</span></td>
</tr>
<tr class="ltx_tr" id="S4.T5.3.6">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T5.3.6.1"><span class="ltx_text ltx_font_italic" id="S4.T5.3.6.1.1" style="font-size:90%;">Like rate</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.3.6.2"><span class="ltx_text" id="S4.T5.3.6.2.1" style="font-size:90%;">4.11%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T5.3.6.3" style="background-color:#E6E6E6;"><span class="ltx_text" id="S4.T5.3.6.3.1" style="font-size:90%;background-color:#E6E6E6;">7.07%</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.3.6.4" style="background-color:#E6E6E6;"><span class="ltx_text" id="S4.T5.3.6.4.1" style="font-size:90%;background-color:#E6E6E6;">4.19%</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.3.6.5"><span class="ltx_text" id="S4.T5.3.6.5.1" style="font-size:90%;">1.29%</span></td>
</tr>
<tr class="ltx_tr" id="S4.T5.3.7">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T5.3.7.1"><span class="ltx_text ltx_font_italic" id="S4.T5.3.7.1.1" style="font-size:90%;">Collect rate</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.3.7.2" style="background-color:#E6E6E6;"><span class="ltx_text" id="S4.T5.3.7.2.1" style="font-size:90%;background-color:#E6E6E6;">1.87%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T5.3.7.3"><span class="ltx_text" id="S4.T5.3.7.3.1" style="font-size:90%;">1.47%</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.3.7.4" style="background-color:#E6E6E6;"><span class="ltx_text" id="S4.T5.3.7.4.1" style="font-size:90%;background-color:#E6E6E6;">1.88%</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.3.7.5"><span class="ltx_text" id="S4.T5.3.7.5.1" style="font-size:90%;">1.26%</span></td>
</tr>
<tr class="ltx_tr" id="S4.T5.3.8">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T5.3.8.1"><span class="ltx_text ltx_font_italic" id="S4.T5.3.8.1.1" style="font-size:90%;">Share rate</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.3.8.2"><span class="ltx_text" id="S4.T5.3.8.2.1" style="font-size:90%;">0.57%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T5.3.8.3" style="background-color:#E6E6E6;"><span class="ltx_text" id="S4.T5.3.8.3.1" style="font-size:90%;background-color:#E6E6E6;">0.63%</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.3.8.4" style="background-color:#E6E6E6;"><span class="ltx_text" id="S4.T5.3.8.4.1" style="font-size:90%;background-color:#E6E6E6;">0.57%</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.3.8.5"><span class="ltx_text" id="S4.T5.3.8.5.1" style="font-size:90%;">0.52%</span></td>
</tr>
<tr class="ltx_tr" id="S4.T5.3.9">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T5.3.9.1"><span class="ltx_text ltx_font_italic" id="S4.T5.3.9.1.1" style="font-size:90%;">Comment rate</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.3.9.2"><span class="ltx_text" id="S4.T5.3.9.2.1" style="font-size:90%;">0.32%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T5.3.9.3" style="background-color:#E6E6E6;"><span class="ltx_text" id="S4.T5.3.9.3.1" style="font-size:90%;background-color:#E6E6E6;">0.99%</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.3.9.4" style="background-color:#E6E6E6;"><span class="ltx_text" id="S4.T5.3.9.4.1" style="font-size:90%;background-color:#E6E6E6;">0.32%</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.3.9.5"><span class="ltx_text" id="S4.T5.3.9.5.1" style="font-size:90%;">0.21%</span></td>
</tr>
<tr class="ltx_tr" id="S4.T5.3.10">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S4.T5.3.10.1"><span class="ltx_text ltx_font_italic" id="S4.T5.3.10.1.1" style="font-size:90%;"># Samples</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.3.10.2"><span class="ltx_text" id="S4.T5.3.10.2.1" style="font-size:90%;">57,188</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T5.3.10.3"><span class="ltx_text" id="S4.T5.3.10.3.1" style="font-size:90%;">94,552</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.3.10.4"><span class="ltx_text" id="S4.T5.3.10.4.1" style="font-size:90%;">54,256</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.3.10.5"><span class="ltx_text" id="S4.T5.3.10.5.1" style="font-size:90%;">2,932</span></td>
</tr>
<tr class="ltx_tr" id="S4.T5.3.11">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T5.3.11.1"><span class="ltx_rule" style="width:100%;height:0.9pt;background:black;display:inline-block;"> </span></td>
<td class="ltx_td" id="S4.T5.3.11.2"></td>
<td class="ltx_td" id="S4.T5.3.11.3"></td>
<td class="ltx_td" id="S4.T5.3.11.4"></td>
<td class="ltx_td" id="S4.T5.3.11.5"></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents a comparison of user engagement metrics across different search scenarios within a mobile application.  The scenarios are categorized by the presence or absence of interactions with a Deep Query Answering (DQA) module.  Metrics include average browsing depth, average click position, click-through rate, and various engagement rates (like, collect, share, comment). Engagement rates are calculated as conditional probabilities, showing the likelihood of an engagement action given a click has already occurred.  This allows for a nuanced analysis of user behavior in relation to the DQA module and different search paradigms (with and without recommendations).
> <details>
> <summary>read the caption</summary>
> Table 5. User engagements across scenarios, where S-DQA and S+DQA denote search requests without or with triggering the DQA module. Note that engagement rates such as like rate and collect rate are calculated based on the conditional probability P⁢(e⁢n⁢g⁢a⁢g⁢e=1|c⁢l⁢i⁢c⁢k=1)𝑃𝑒𝑛𝑔𝑎𝑔𝑒conditional1𝑐𝑙𝑖𝑐𝑘1P(engage=1|click=1)italic_P ( italic_e italic_n italic_g italic_a italic_g italic_e = 1 | italic_c italic_l italic_i italic_c italic_k = 1 ).
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S4.T6.4">
<tr class="ltx_tr" id="S4.T6.4.4">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T6.4.4.5"><span class="ltx_rule" style="width:100%;height:0.9pt;background:black;display:inline-block;"> </span></td>
<td class="ltx_td ltx_align_center" id="S4.T6.1.1.1"><span class="ltx_text ltx_font_bold" id="S4.T6.1.1.1.1" style="font-size:90%;">S<math alttext="\rightarrow" class="ltx_Math" display="inline" id="S4.T6.1.1.1.1.m1.1"><semantics id="S4.T6.1.1.1.1.m1.1a"><mo id="S4.T6.1.1.1.1.m1.1.1" stretchy="false" xref="S4.T6.1.1.1.1.m1.1.1.cmml">→</mo><annotation-xml encoding="MathML-Content" id="S4.T6.1.1.1.1.m1.1b"><ci id="S4.T6.1.1.1.1.m1.1.1.cmml" xref="S4.T6.1.1.1.1.m1.1.1">→</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T6.1.1.1.1.m1.1c">\rightarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T6.1.1.1.1.m1.1d">→</annotation></semantics></math>S</span></td>
<td class="ltx_td ltx_align_center" id="S4.T6.2.2.2"><span class="ltx_text ltx_font_bold" id="S4.T6.2.2.2.1" style="font-size:90%;">R<math alttext="\rightarrow" class="ltx_Math" display="inline" id="S4.T6.2.2.2.1.m1.1"><semantics id="S4.T6.2.2.2.1.m1.1a"><mo id="S4.T6.2.2.2.1.m1.1.1" stretchy="false" xref="S4.T6.2.2.2.1.m1.1.1.cmml">→</mo><annotation-xml encoding="MathML-Content" id="S4.T6.2.2.2.1.m1.1b"><ci id="S4.T6.2.2.2.1.m1.1.1.cmml" xref="S4.T6.2.2.2.1.m1.1.1">→</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T6.2.2.2.1.m1.1c">\rightarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T6.2.2.2.1.m1.1d">→</annotation></semantics></math>S</span></td>
<td class="ltx_td ltx_align_center" id="S4.T6.3.3.3"><span class="ltx_text ltx_font_bold" id="S4.T6.3.3.3.1" style="font-size:90%;">R<math alttext="\rightarrow" class="ltx_Math" display="inline" id="S4.T6.3.3.3.1.m1.1"><semantics id="S4.T6.3.3.3.1.m1.1a"><mo id="S4.T6.3.3.3.1.m1.1.1" stretchy="false" xref="S4.T6.3.3.3.1.m1.1.1.cmml">→</mo><annotation-xml encoding="MathML-Content" id="S4.T6.3.3.3.1.m1.1b"><ci id="S4.T6.3.3.3.1.m1.1.1.cmml" xref="S4.T6.3.3.3.1.m1.1.1">→</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T6.3.3.3.1.m1.1c">\rightarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T6.3.3.3.1.m1.1d">→</annotation></semantics></math>R</span></td>
<td class="ltx_td ltx_align_center" id="S4.T6.4.4.4"><span class="ltx_text ltx_font_bold" id="S4.T6.4.4.4.1" style="font-size:90%;">S<math alttext="\rightarrow" class="ltx_Math" display="inline" id="S4.T6.4.4.4.1.m1.1"><semantics id="S4.T6.4.4.4.1.m1.1a"><mo id="S4.T6.4.4.4.1.m1.1.1" stretchy="false" xref="S4.T6.4.4.4.1.m1.1.1.cmml">→</mo><annotation-xml encoding="MathML-Content" id="S4.T6.4.4.4.1.m1.1b"><ci id="S4.T6.4.4.4.1.m1.1.1.cmml" xref="S4.T6.4.4.4.1.m1.1.1">→</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T6.4.4.4.1.m1.1c">\rightarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T6.4.4.4.1.m1.1d">→</annotation></semantics></math>R</span></td>
</tr>
<tr class="ltx_tr" id="S4.T6.4.5">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S4.T6.4.5.1"><span class="ltx_text ltx_font_italic" id="S4.T6.4.5.1.1" style="font-size:90%;">Proportion</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.4.5.2"><span class="ltx_text" id="S4.T6.4.5.2.1" style="font-size:90%;">34.88%</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.4.5.3"><span class="ltx_text" id="S4.T6.4.5.3.1" style="font-size:90%;">2.95%</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.4.5.4"><span class="ltx_text" id="S4.T6.4.5.4.1" style="font-size:90%;">59.32%</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.4.5.5"><span class="ltx_text" id="S4.T6.4.5.5.1" style="font-size:90%;">2.84%</span></td>
</tr>
<tr class="ltx_tr" id="S4.T6.4.6">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T6.4.6.1"><span class="ltx_text ltx_font_italic" id="S4.T6.4.6.1.1" style="font-size:90%;">Avg. click num</span></td>
<td class="ltx_td ltx_align_center" id="S4.T6.4.6.2"><span class="ltx_text" id="S4.T6.4.6.2.1" style="font-size:90%;">4.0014</span></td>
<td class="ltx_td ltx_align_center" id="S4.T6.4.6.3"><span class="ltx_text" id="S4.T6.4.6.3.1" style="font-size:90%;">3.9782</span></td>
<td class="ltx_td ltx_align_center" id="S4.T6.4.6.4"><span class="ltx_text" id="S4.T6.4.6.4.1" style="font-size:90%;">2.9745</span></td>
<td class="ltx_td ltx_align_center" id="S4.T6.4.6.5"><span class="ltx_text" id="S4.T6.4.6.5.1" style="font-size:90%;">4.4466</span></td>
</tr>
<tr class="ltx_tr" id="S4.T6.4.7">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T6.4.7.1"><span class="ltx_text ltx_font_italic" id="S4.T6.4.7.1.1" style="font-size:90%;">Click-through rate</span></td>
<td class="ltx_td ltx_align_center" id="S4.T6.4.7.2"><span class="ltx_text" id="S4.T6.4.7.2.1" style="font-size:90%;">20.18%</span></td>
<td class="ltx_td ltx_align_center" id="S4.T6.4.7.3"><span class="ltx_text" id="S4.T6.4.7.3.1" style="font-size:90%;">22.98%</span></td>
<td class="ltx_td ltx_align_center" id="S4.T6.4.7.4"><span class="ltx_text" id="S4.T6.4.7.4.1" style="font-size:90%;">23.20%</span></td>
<td class="ltx_td ltx_align_center" id="S4.T6.4.7.5"><span class="ltx_text" id="S4.T6.4.7.5.1" style="font-size:90%;">25.01%</span></td>
</tr>
<tr class="ltx_tr" id="S4.T6.4.8">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S4.T6.4.8.1"><span class="ltx_text" id="S4.T6.4.8.1.1" style="font-size:90%;"># Samples</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.4.8.2"><span class="ltx_text" id="S4.T6.4.8.2.1" style="font-size:90%;">29,295</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.4.8.3"><span class="ltx_text" id="S4.T6.4.8.3.1" style="font-size:90%;">2,476</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.4.8.4"><span class="ltx_text" id="S4.T6.4.8.4.1" style="font-size:90%;">49,815</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.4.8.5"><span class="ltx_text" id="S4.T6.4.8.5.1" style="font-size:90%;">2,387</span></td>
</tr>
<tr class="ltx_tr" id="S4.T6.4.9">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T6.4.9.1"><span class="ltx_rule" style="width:100%;height:0.9pt;background:black;display:inline-block;"> </span></td>
<td class="ltx_td" id="S4.T6.4.9.2"></td>
<td class="ltx_td" id="S4.T6.4.9.3"></td>
<td class="ltx_td" id="S4.T6.4.9.4"></td>
<td class="ltx_td" id="S4.T6.4.9.5"></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents an analysis of user transitions between search (S) and recommendation (R) services within a mobile application.  It shows the percentage of transitions between different service combinations (S→S, R→S, R→R, S→R), along with the average number of clicks and click-through rates for each transition type. The data reveals user behavior patterns related to switching between search and recommendation functionalities within the app.
> <details>
> <summary>read the caption</summary>
> Table 6. User transition analysis. S and R stand for search and recommendation, respectively.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S4.T7.1">
<tr class="ltx_tr" id="S4.T7.1.1">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T7.1.1.1"><span class="ltx_rule" style="width:100%;height:0.9pt;background:black;display:inline-block;"> </span></td>
<td class="ltx_td ltx_align_center" id="S4.T7.1.1.2"><span class="ltx_text ltx_font_bold" id="S4.T7.1.1.2.1" style="font-size:90%;">Proportion</span></td>
<td class="ltx_td ltx_align_center" id="S4.T7.1.1.3"><span class="ltx_text ltx_font_bold" id="S4.T7.1.1.3.1" style="font-size:90%;">CTR</span></td>
<td class="ltx_td ltx_align_center" id="S4.T7.1.1.4"><span class="ltx_text ltx_font_bold" id="S4.T7.1.1.4.1" style="font-size:90%;">Avg. click num</span></td>
</tr>
<tr class="ltx_tr" id="S4.T7.1.2">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S4.T7.1.2.1"><span class="ltx_text ltx_font_italic" id="S4.T7.1.2.1.1" style="font-size:90%;">Length¡=3</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T7.1.2.2"><span class="ltx_text" id="S4.T7.1.2.2.1" style="font-size:90%;">0.32%</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T7.1.2.3" style="background-color:#D9F2FF;"><span class="ltx_text" id="S4.T7.1.2.3.1" style="font-size:90%;background-color:#D9F2FF;">0.1967</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T7.1.2.4" style="background-color:#D9F2FF;"><span class="ltx_text" id="S4.T7.1.2.4.1" style="font-size:90%;background-color:#D9F2FF;">2.9892</span></td>
</tr>
<tr class="ltx_tr" id="S4.T7.1.3">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T7.1.3.1"><span class="ltx_text ltx_font_italic" id="S4.T7.1.3.1.1" style="font-size:90%;">Length=4</span></td>
<td class="ltx_td ltx_align_center" id="S4.T7.1.3.2"><span class="ltx_text" id="S4.T7.1.3.2.1" style="font-size:90%;">13.64%</span></td>
<td class="ltx_td ltx_align_center" id="S4.T7.1.3.3" style="background-color:#D9F2FF;"><span class="ltx_text" id="S4.T7.1.3.3.1" style="font-size:90%;background-color:#D9F2FF;">0.1962</span></td>
<td class="ltx_td ltx_align_center" id="S4.T7.1.3.4" style="background-color:#80B3FF;"><span class="ltx_text" id="S4.T7.1.3.4.1" style="font-size:90%;background-color:#80B3FF;">4.0276</span></td>
</tr>
<tr class="ltx_tr" id="S4.T7.1.4">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T7.1.4.1"><span class="ltx_text ltx_font_italic" id="S4.T7.1.4.1.1" style="font-size:90%;">Length=5</span></td>
<td class="ltx_td ltx_align_center" id="S4.T7.1.4.2"><span class="ltx_text" id="S4.T7.1.4.2.1" style="font-size:90%;">13.94%</span></td>
<td class="ltx_td ltx_align_center" id="S4.T7.1.4.3" style="background-color:#D9F2FF;"><span class="ltx_text" id="S4.T7.1.4.3.1" style="font-size:90%;background-color:#D9F2FF;">0.2047</span></td>
<td class="ltx_td ltx_align_center" id="S4.T7.1.4.4" style="background-color:#99CCFF;"><span class="ltx_text" id="S4.T7.1.4.4.1" style="font-size:90%;background-color:#99CCFF;">3.9303</span></td>
</tr>
<tr class="ltx_tr" id="S4.T7.1.5">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T7.1.5.1"><span class="ltx_text ltx_font_italic" id="S4.T7.1.5.1.1" style="font-size:90%;">Length=6</span></td>
<td class="ltx_td ltx_align_center" id="S4.T7.1.5.2"><span class="ltx_text" id="S4.T7.1.5.2.1" style="font-size:90%;">17.27%</span></td>
<td class="ltx_td ltx_align_center" id="S4.T7.1.5.3" style="background-color:#D9F2FF;"><span class="ltx_text" id="S4.T7.1.5.3.1" style="font-size:90%;background-color:#D9F2FF;">0.2051</span></td>
<td class="ltx_td ltx_align_center" id="S4.T7.1.5.4" style="background-color:#4D80FF;"><span class="ltx_text" id="S4.T7.1.5.4.1" style="font-size:90%;background-color:#4D80FF;">4.0338</span></td>
</tr>
<tr class="ltx_tr" id="S4.T7.1.6">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T7.1.6.1"><span class="ltx_text ltx_font_italic" id="S4.T7.1.6.1.1" style="font-size:90%;">Length=7</span></td>
<td class="ltx_td ltx_align_center" id="S4.T7.1.6.2"><span class="ltx_text" id="S4.T7.1.6.2.1" style="font-size:90%;">14.07%</span></td>
<td class="ltx_td ltx_align_center" id="S4.T7.1.6.3" style="background-color:#99CCFF;"><span class="ltx_text" id="S4.T7.1.6.3.1" style="font-size:90%;background-color:#99CCFF;">0.2111</span></td>
<td class="ltx_td ltx_align_center" id="S4.T7.1.6.4" style="background-color:#99CCFF;"><span class="ltx_text" id="S4.T7.1.6.4.1" style="font-size:90%;background-color:#99CCFF;">3.9446</span></td>
</tr>
<tr class="ltx_tr" id="S4.T7.1.7">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T7.1.7.1"><span class="ltx_text ltx_font_italic" id="S4.T7.1.7.1.1" style="font-size:90%;">Length=8</span></td>
<td class="ltx_td ltx_align_center" id="S4.T7.1.7.2"><span class="ltx_text" id="S4.T7.1.7.2.1" style="font-size:90%;">12.42%</span></td>
<td class="ltx_td ltx_align_center" id="S4.T7.1.7.3" style="background-color:#99CCFF;"><span class="ltx_text" id="S4.T7.1.7.3.1" style="font-size:90%;background-color:#99CCFF;">0.2150</span></td>
<td class="ltx_td ltx_align_center" id="S4.T7.1.7.4" style="background-color:#99CCFF;"><span class="ltx_text" id="S4.T7.1.7.4.1" style="font-size:90%;background-color:#99CCFF;">3.8180</span></td>
</tr>
<tr class="ltx_tr" id="S4.T7.1.8">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T7.1.8.1"><span class="ltx_text ltx_font_italic" id="S4.T7.1.8.1.1" style="font-size:90%;">Length=9</span></td>
<td class="ltx_td ltx_align_center" id="S4.T7.1.8.2"><span class="ltx_text" id="S4.T7.1.8.2.1" style="font-size:90%;">9.54%</span></td>
<td class="ltx_td ltx_align_center" id="S4.T7.1.8.3" style="background-color:#80B3FF;"><span class="ltx_text" id="S4.T7.1.8.3.1" style="font-size:90%;background-color:#80B3FF;">0.2199</span></td>
<td class="ltx_td ltx_align_center" id="S4.T7.1.8.4" style="background-color:#D9F2FF;"><span class="ltx_text" id="S4.T7.1.8.4.1" style="font-size:90%;background-color:#D9F2FF;">3.6971</span></td>
</tr>
<tr class="ltx_tr" id="S4.T7.1.9">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T7.1.9.1"><span class="ltx_text ltx_font_italic" id="S4.T7.1.9.1.1" style="font-size:90%;">Length=10</span></td>
<td class="ltx_td ltx_align_center" id="S4.T7.1.9.2"><span class="ltx_text" id="S4.T7.1.9.2.1" style="font-size:90%;">6.89%</span></td>
<td class="ltx_td ltx_align_center" id="S4.T7.1.9.3" style="background-color:#4D80FF;"><span class="ltx_text" id="S4.T7.1.9.3.1" style="font-size:90%;background-color:#4D80FF;">0.2272</span></td>
<td class="ltx_td ltx_align_center" id="S4.T7.1.9.4" style="background-color:#D9F2FF;"><span class="ltx_text" id="S4.T7.1.9.4.1" style="font-size:90%;background-color:#D9F2FF;">3.7497</span></td>
</tr>
<tr class="ltx_tr" id="S4.T7.1.10">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T7.1.10.1"><span class="ltx_text ltx_font_italic" id="S4.T7.1.10.1.1" style="font-size:90%;">Length¿10</span></td>
<td class="ltx_td ltx_align_center" id="S4.T7.1.10.2"><span class="ltx_text" id="S4.T7.1.10.2.1" style="font-size:90%;">11.91%</span></td>
<td class="ltx_td ltx_align_center" id="S4.T7.1.10.3" style="background-color:#80B3FF;"><span class="ltx_text" id="S4.T7.1.10.3.1" style="font-size:90%;background-color:#80B3FF;">0.2216</span></td>
<td class="ltx_td ltx_align_center" id="S4.T7.1.10.4" style="background-color:#D9F2FF;"><span class="ltx_text" id="S4.T7.1.10.4.1" style="font-size:90%;background-color:#D9F2FF;">3.7010</span></td>
</tr>
<tr class="ltx_tr" id="S4.T7.1.11">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T7.1.11.1"><span class="ltx_rule" style="width:100%;height:0.9pt;background:black;display:inline-block;"> </span></td>
<td class="ltx_td" id="S4.T7.1.11.2"></td>
<td class="ltx_td" id="S4.T7.1.11.3"></td>
<td class="ltx_td" id="S4.T7.1.11.4"></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table shows the distribution of query lengths (number of characters) in the Qilin dataset and how user engagement metrics, specifically click-through rate (CTR) and average click number, vary across different query lengths.  The color intensity of the cells visually represents the magnitude of the CTR and average click number. Deeper colors indicate higher values for both metrics, providing a quick visual comparison of user engagement for different query lengths.
> <details>
> <summary>read the caption</summary>
> Table 7. Query length distribution and corresponding user engagement. Note that a deeper color denotes a higher value of CTR or average click number.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S4.T8.18">
<tr class="ltx_tr" id="S4.T8.18.19">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T8.18.19.1">
<span class="ltx_rule" style="width:100%;height:0.9pt;background:black;display:inline-block;"> </span><span class="ltx_text" id="S4.T8.18.19.1.1" style="font-size:90%;">
</span><span class="ltx_text ltx_font_bold" id="S4.T8.18.19.1.2" style="font-size:90%;">Type</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T8.18.19.2"><span class="ltx_text ltx_font_bold" id="S4.T8.18.19.2.1" style="font-size:90%;">Prop.</span></td>
<td class="ltx_td ltx_align_left" id="S4.T8.18.19.3"><span class="ltx_text ltx_font_bold" id="S4.T8.18.19.3.1" style="font-size:90%;">Examples</span></td>
</tr>
<tr class="ltx_tr" id="S4.T8.4.4">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S4.T8.4.4.5"><span class="ltx_text ltx_font_italic" id="S4.T8.4.4.5.1" style="font-size:90%;">Add</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T8.4.4.6"><span class="ltx_text" id="S4.T8.4.4.6.1" style="font-size:90%;">13.57%</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T8.4.4.4">
<table class="ltx_tabular ltx_align_middle" id="S4.T8.4.4.4.4">
<tr class="ltx_tr" id="S4.T8.2.2.2.2.2">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="S4.T8.2.2.2.2.2.2">
<span class="ltx_text" id="S4.T8.2.2.2.2.2.2.1" style="font-size:90%;">广州批发</span><math alttext="\rightarrow" class="ltx_Math" display="inline" id="S4.T8.1.1.1.1.1.1.m1.1"><semantics id="S4.T8.1.1.1.1.1.1.m1.1a"><mo id="S4.T8.1.1.1.1.1.1.m1.1.1" mathsize="90%" stretchy="false" xref="S4.T8.1.1.1.1.1.1.m1.1.1.cmml">→</mo><annotation-xml encoding="MathML-Content" id="S4.T8.1.1.1.1.1.1.m1.1b"><ci id="S4.T8.1.1.1.1.1.1.m1.1.1.cmml" xref="S4.T8.1.1.1.1.1.1.m1.1.1">→</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T8.1.1.1.1.1.1.m1.1c">\rightarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T8.1.1.1.1.1.1.m1.1d">→</annotation></semantics></math><span class="ltx_text" id="S4.T8.2.2.2.2.2.2.2" style="font-size:90%;">广州批发市场 (Guangzhou wholesale</span><math alttext="\rightarrow" class="ltx_Math" display="inline" id="S4.T8.2.2.2.2.2.2.m2.1"><semantics id="S4.T8.2.2.2.2.2.2.m2.1a"><mo id="S4.T8.2.2.2.2.2.2.m2.1.1" mathsize="90%" stretchy="false" xref="S4.T8.2.2.2.2.2.2.m2.1.1.cmml">→</mo><annotation-xml encoding="MathML-Content" id="S4.T8.2.2.2.2.2.2.m2.1b"><ci id="S4.T8.2.2.2.2.2.2.m2.1.1.cmml" xref="S4.T8.2.2.2.2.2.2.m2.1.1">→</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T8.2.2.2.2.2.2.m2.1c">\rightarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T8.2.2.2.2.2.2.m2.1d">→</annotation></semantics></math><span class="ltx_text" id="S4.T8.2.2.2.2.2.2.3" style="font-size:90%;">Guangzhou wholesale market)</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T8.4.4.4.4.4">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="S4.T8.4.4.4.4.4.2">
<span class="ltx_text" id="S4.T8.4.4.4.4.4.2.1" style="font-size:90%;">五大文明</span><math alttext="\rightarrow" class="ltx_Math" display="inline" id="S4.T8.3.3.3.3.3.1.m1.1"><semantics id="S4.T8.3.3.3.3.3.1.m1.1a"><mo id="S4.T8.3.3.3.3.3.1.m1.1.1" mathsize="90%" stretchy="false" xref="S4.T8.3.3.3.3.3.1.m1.1.1.cmml">→</mo><annotation-xml encoding="MathML-Content" id="S4.T8.3.3.3.3.3.1.m1.1b"><ci id="S4.T8.3.3.3.3.3.1.m1.1.1.cmml" xref="S4.T8.3.3.3.3.3.1.m1.1.1">→</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T8.3.3.3.3.3.1.m1.1c">\rightarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T8.3.3.3.3.3.1.m1.1d">→</annotation></semantics></math><span class="ltx_text" id="S4.T8.4.4.4.4.4.2.2" style="font-size:90%;">五大文明发源地 (the five great civilizations</span><math alttext="\rightarrow" class="ltx_Math" display="inline" id="S4.T8.4.4.4.4.4.2.m2.1"><semantics id="S4.T8.4.4.4.4.4.2.m2.1a"><mo id="S4.T8.4.4.4.4.4.2.m2.1.1" mathsize="90%" stretchy="false" xref="S4.T8.4.4.4.4.4.2.m2.1.1.cmml">→</mo><annotation-xml encoding="MathML-Content" id="S4.T8.4.4.4.4.4.2.m2.1b"><ci id="S4.T8.4.4.4.4.4.2.m2.1.1.cmml" xref="S4.T8.4.4.4.4.4.2.m2.1.1">→</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T8.4.4.4.4.4.2.m2.1c">\rightarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T8.4.4.4.4.4.2.m2.1d">→</annotation></semantics></math><span class="ltx_text" id="S4.T8.4.4.4.4.4.2.3" style="font-size:90%;">the birthplaces of the five great civilizations)</span>
</td>
</tr>
</table>
</td>
</tr>
<tr class="ltx_tr" id="S4.T8.8.8">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S4.T8.8.8.5"><span class="ltx_text ltx_font_italic" id="S4.T8.8.8.5.1" style="font-size:90%;">Delete</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T8.8.8.6"><span class="ltx_text" id="S4.T8.8.8.6.1" style="font-size:90%;">2.53%</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T8.8.8.4">
<table class="ltx_tabular ltx_align_middle" id="S4.T8.8.8.4.4">
<tr class="ltx_tr" id="S4.T8.6.6.2.2.2">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="S4.T8.6.6.2.2.2.2">
<span class="ltx_text" id="S4.T8.6.6.2.2.2.2.1" style="font-size:90%;">ip设计插件</span><math alttext="\rightarrow" class="ltx_Math" display="inline" id="S4.T8.5.5.1.1.1.1.m1.1"><semantics id="S4.T8.5.5.1.1.1.1.m1.1a"><mo id="S4.T8.5.5.1.1.1.1.m1.1.1" mathsize="90%" stretchy="false" xref="S4.T8.5.5.1.1.1.1.m1.1.1.cmml">→</mo><annotation-xml encoding="MathML-Content" id="S4.T8.5.5.1.1.1.1.m1.1b"><ci id="S4.T8.5.5.1.1.1.1.m1.1.1.cmml" xref="S4.T8.5.5.1.1.1.1.m1.1.1">→</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T8.5.5.1.1.1.1.m1.1c">\rightarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T8.5.5.1.1.1.1.m1.1d">→</annotation></semantics></math><span class="ltx_text" id="S4.T8.6.6.2.2.2.2.2" style="font-size:90%;">ip设计 (intellectual property designing plugin</span><math alttext="\rightarrow" class="ltx_Math" display="inline" id="S4.T8.6.6.2.2.2.2.m2.1"><semantics id="S4.T8.6.6.2.2.2.2.m2.1a"><mo id="S4.T8.6.6.2.2.2.2.m2.1.1" mathsize="90%" stretchy="false" xref="S4.T8.6.6.2.2.2.2.m2.1.1.cmml">→</mo><annotation-xml encoding="MathML-Content" id="S4.T8.6.6.2.2.2.2.m2.1b"><ci id="S4.T8.6.6.2.2.2.2.m2.1.1.cmml" xref="S4.T8.6.6.2.2.2.2.m2.1.1">→</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T8.6.6.2.2.2.2.m2.1c">\rightarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T8.6.6.2.2.2.2.m2.1d">→</annotation></semantics></math><span class="ltx_text" id="S4.T8.6.6.2.2.2.2.3" style="font-size:90%;">intellectual property design)</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T8.8.8.4.4.4">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="S4.T8.8.8.4.4.4.2">
<span class="ltx_text" id="S4.T8.8.8.4.4.4.2.1" style="font-size:90%;">农业经营模式分析</span><math alttext="\rightarrow" class="ltx_Math" display="inline" id="S4.T8.7.7.3.3.3.1.m1.1"><semantics id="S4.T8.7.7.3.3.3.1.m1.1a"><mo id="S4.T8.7.7.3.3.3.1.m1.1.1" mathsize="90%" stretchy="false" xref="S4.T8.7.7.3.3.3.1.m1.1.1.cmml">→</mo><annotation-xml encoding="MathML-Content" id="S4.T8.7.7.3.3.3.1.m1.1b"><ci id="S4.T8.7.7.3.3.3.1.m1.1.1.cmml" xref="S4.T8.7.7.3.3.3.1.m1.1.1">→</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T8.7.7.3.3.3.1.m1.1c">\rightarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T8.7.7.3.3.3.1.m1.1d">→</annotation></semantics></math><span class="ltx_text" id="S4.T8.8.8.4.4.4.2.2" style="font-size:90%;">农业经营模式 (analysis of agricultural business modes</span><math alttext="\rightarrow" class="ltx_Math" display="inline" id="S4.T8.8.8.4.4.4.2.m2.1"><semantics id="S4.T8.8.8.4.4.4.2.m2.1a"><mo id="S4.T8.8.8.4.4.4.2.m2.1.1" mathsize="90%" stretchy="false" xref="S4.T8.8.8.4.4.4.2.m2.1.1.cmml">→</mo><annotation-xml encoding="MathML-Content" id="S4.T8.8.8.4.4.4.2.m2.1b"><ci id="S4.T8.8.8.4.4.4.2.m2.1.1.cmml" xref="S4.T8.8.8.4.4.4.2.m2.1.1">→</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T8.8.8.4.4.4.2.m2.1c">\rightarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T8.8.8.4.4.4.2.m2.1d">→</annotation></semantics></math><span class="ltx_text" id="S4.T8.8.8.4.4.4.2.3" style="font-size:90%;">agricultural business modes)</span>
</td>
</tr>
</table>
</td>
</tr>
<tr class="ltx_tr" id="S4.T8.12.12">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S4.T8.12.12.5"><span class="ltx_text ltx_font_italic" id="S4.T8.12.12.5.1" style="font-size:90%;">Change</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T8.12.12.6"><span class="ltx_text" id="S4.T8.12.12.6.1" style="font-size:90%;">47.16%</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T8.12.12.4">
<table class="ltx_tabular ltx_align_middle" id="S4.T8.12.12.4.4">
<tr class="ltx_tr" id="S4.T8.10.10.2.2.2">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="S4.T8.10.10.2.2.2.2">
<span class="ltx_text" id="S4.T8.10.10.2.2.2.2.1" style="font-size:90%;">文案破碎感</span><math alttext="\rightarrow" class="ltx_Math" display="inline" id="S4.T8.9.9.1.1.1.1.m1.1"><semantics id="S4.T8.9.9.1.1.1.1.m1.1a"><mo id="S4.T8.9.9.1.1.1.1.m1.1.1" mathsize="90%" stretchy="false" xref="S4.T8.9.9.1.1.1.1.m1.1.1.cmml">→</mo><annotation-xml encoding="MathML-Content" id="S4.T8.9.9.1.1.1.1.m1.1b"><ci id="S4.T8.9.9.1.1.1.1.m1.1.1.cmml" xref="S4.T8.9.9.1.1.1.1.m1.1.1">→</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T8.9.9.1.1.1.1.m1.1c">\rightarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T8.9.9.1.1.1.1.m1.1d">→</annotation></semantics></math><span class="ltx_text" id="S4.T8.10.10.2.2.2.2.2" style="font-size:90%;">文案自由松弛感 (writing sense with vulnerability</span><math alttext="\rightarrow" class="ltx_Math" display="inline" id="S4.T8.10.10.2.2.2.2.m2.1"><semantics id="S4.T8.10.10.2.2.2.2.m2.1a"><mo id="S4.T8.10.10.2.2.2.2.m2.1.1" mathsize="90%" stretchy="false" xref="S4.T8.10.10.2.2.2.2.m2.1.1.cmml">→</mo><annotation-xml encoding="MathML-Content" id="S4.T8.10.10.2.2.2.2.m2.1b"><ci id="S4.T8.10.10.2.2.2.2.m2.1.1.cmml" xref="S4.T8.10.10.2.2.2.2.m2.1.1">→</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T8.10.10.2.2.2.2.m2.1c">\rightarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T8.10.10.2.2.2.2.m2.1d">→</annotation></semantics></math><span class="ltx_text" id="S4.T8.10.10.2.2.2.2.3" style="font-size:90%;">writing sense with freedom and relaxation)</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T8.12.12.4.4.4">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="S4.T8.12.12.4.4.4.2">
<span class="ltx_text" id="S4.T8.12.12.4.4.4.2.1" style="font-size:90%;">将数据分三分位</span><math alttext="\rightarrow" class="ltx_Math" display="inline" id="S4.T8.11.11.3.3.3.1.m1.1"><semantics id="S4.T8.11.11.3.3.3.1.m1.1a"><mo id="S4.T8.11.11.3.3.3.1.m1.1.1" mathsize="90%" stretchy="false" xref="S4.T8.11.11.3.3.3.1.m1.1.1.cmml">→</mo><annotation-xml encoding="MathML-Content" id="S4.T8.11.11.3.3.3.1.m1.1b"><ci id="S4.T8.11.11.3.3.3.1.m1.1.1.cmml" xref="S4.T8.11.11.3.3.3.1.m1.1.1">→</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T8.11.11.3.3.3.1.m1.1c">\rightarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T8.11.11.3.3.3.1.m1.1d">→</annotation></semantics></math><span class="ltx_text" id="S4.T8.12.12.4.4.4.2.2" style="font-size:90%;">四分位间距 (dividing data into tertiles</span><math alttext="\rightarrow" class="ltx_Math" display="inline" id="S4.T8.12.12.4.4.4.2.m2.1"><semantics id="S4.T8.12.12.4.4.4.2.m2.1a"><mo id="S4.T8.12.12.4.4.4.2.m2.1.1" mathsize="90%" stretchy="false" xref="S4.T8.12.12.4.4.4.2.m2.1.1.cmml">→</mo><annotation-xml encoding="MathML-Content" id="S4.T8.12.12.4.4.4.2.m2.1b"><ci id="S4.T8.12.12.4.4.4.2.m2.1.1.cmml" xref="S4.T8.12.12.4.4.4.2.m2.1.1">→</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T8.12.12.4.4.4.2.m2.1c">\rightarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T8.12.12.4.4.4.2.m2.1d">→</annotation></semantics></math><span class="ltx_text" id="S4.T8.12.12.4.4.4.2.3" style="font-size:90%;">Interquartile Range, IQR)</span>
</td>
</tr>
</table>
</td>
</tr>
<tr class="ltx_tr" id="S4.T8.14.14">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S4.T8.14.14.3"><span class="ltx_text ltx_font_italic" id="S4.T8.14.14.3.1" style="font-size:90%;">Repeat</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T8.14.14.4"><span class="ltx_text" id="S4.T8.14.14.4.1" style="font-size:90%;">7.57%</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T8.14.14.2">
<table class="ltx_tabular ltx_align_middle" id="S4.T8.14.14.2.2">
<tr class="ltx_tr" id="S4.T8.13.13.1.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="S4.T8.13.13.1.1.1.1">
<span class="ltx_text" id="S4.T8.13.13.1.1.1.1.1" style="font-size:90%;">usmtekun美食</span><math alttext="\rightarrow" class="ltx_Math" display="inline" id="S4.T8.13.13.1.1.1.1.m1.1"><semantics id="S4.T8.13.13.1.1.1.1.m1.1a"><mo id="S4.T8.13.13.1.1.1.1.m1.1.1" mathsize="90%" stretchy="false" xref="S4.T8.13.13.1.1.1.1.m1.1.1.cmml">→</mo><annotation-xml encoding="MathML-Content" id="S4.T8.13.13.1.1.1.1.m1.1b"><ci id="S4.T8.13.13.1.1.1.1.m1.1.1.cmml" xref="S4.T8.13.13.1.1.1.1.m1.1.1">→</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T8.13.13.1.1.1.1.m1.1c">\rightarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T8.13.13.1.1.1.1.m1.1d">→</annotation></semantics></math><span class="ltx_text" id="S4.T8.13.13.1.1.1.1.2" style="font-size:90%;">usmtekun美食 (delicacy of usm tekun cafe, which refers to a cafe in Malaysia)</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T8.14.14.2.2.2">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="S4.T8.14.14.2.2.2.1">
<span class="ltx_text" id="S4.T8.14.14.2.2.2.1.1" style="font-size:90%;">脸部画法</span><math alttext="\rightarrow" class="ltx_Math" display="inline" id="S4.T8.14.14.2.2.2.1.m1.1"><semantics id="S4.T8.14.14.2.2.2.1.m1.1a"><mo id="S4.T8.14.14.2.2.2.1.m1.1.1" mathsize="90%" stretchy="false" xref="S4.T8.14.14.2.2.2.1.m1.1.1.cmml">→</mo><annotation-xml encoding="MathML-Content" id="S4.T8.14.14.2.2.2.1.m1.1b"><ci id="S4.T8.14.14.2.2.2.1.m1.1.1.cmml" xref="S4.T8.14.14.2.2.2.1.m1.1.1">→</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T8.14.14.2.2.2.1.m1.1c">\rightarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T8.14.14.2.2.2.1.m1.1d">→</annotation></semantics></math><span class="ltx_text" id="S4.T8.14.14.2.2.2.1.2" style="font-size:90%;">脸部画法 (techniques of drawing a face)</span>
</td>
</tr>
</table>
</td>
</tr>
<tr class="ltx_tr" id="S4.T8.18.18">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S4.T8.18.18.5"><span class="ltx_text ltx_font_italic" id="S4.T8.18.18.5.1" style="font-size:90%;">Others</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T8.18.18.6"><span class="ltx_text" id="S4.T8.18.18.6.1" style="font-size:90%;">29.17%</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T8.18.18.4">
<table class="ltx_tabular ltx_align_middle" id="S4.T8.18.18.4.4">
<tr class="ltx_tr" id="S4.T8.16.16.2.2.2">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="S4.T8.16.16.2.2.2.2">
<span class="ltx_text" id="S4.T8.16.16.2.2.2.2.1" style="font-size:90%;">相机镜头进灰</span><math alttext="\rightarrow" class="ltx_Math" display="inline" id="S4.T8.15.15.1.1.1.1.m1.1"><semantics id="S4.T8.15.15.1.1.1.1.m1.1a"><mo id="S4.T8.15.15.1.1.1.1.m1.1.1" mathsize="90%" stretchy="false" xref="S4.T8.15.15.1.1.1.1.m1.1.1.cmml">→</mo><annotation-xml encoding="MathML-Content" id="S4.T8.15.15.1.1.1.1.m1.1b"><ci id="S4.T8.15.15.1.1.1.1.m1.1.1.cmml" xref="S4.T8.15.15.1.1.1.1.m1.1.1">→</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T8.15.15.1.1.1.1.m1.1c">\rightarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T8.15.15.1.1.1.1.m1.1d">→</annotation></semantics></math><span class="ltx_text" id="S4.T8.16.16.2.2.2.2.2" style="font-size:90%;">适马56 (the camera len has dust in it</span><math alttext="\rightarrow" class="ltx_Math" display="inline" id="S4.T8.16.16.2.2.2.2.m2.1"><semantics id="S4.T8.16.16.2.2.2.2.m2.1a"><mo id="S4.T8.16.16.2.2.2.2.m2.1.1" mathsize="90%" stretchy="false" xref="S4.T8.16.16.2.2.2.2.m2.1.1.cmml">→</mo><annotation-xml encoding="MathML-Content" id="S4.T8.16.16.2.2.2.2.m2.1b"><ci id="S4.T8.16.16.2.2.2.2.m2.1.1.cmml" xref="S4.T8.16.16.2.2.2.2.m2.1.1">→</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T8.16.16.2.2.2.2.m2.1c">\rightarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T8.16.16.2.2.2.2.m2.1d">→</annotation></semantics></math><span class="ltx_text" id="S4.T8.16.16.2.2.2.2.3" style="font-size:90%;">SIGMA 56mm camera lens)</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T8.18.18.4.4.4">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="S4.T8.18.18.4.4.4.2">
<span class="ltx_text" id="S4.T8.18.18.4.4.4.2.1" style="font-size:90%;">挡脸怎么弄好看</span><math alttext="\rightarrow" class="ltx_Math" display="inline" id="S4.T8.17.17.3.3.3.1.m1.1"><semantics id="S4.T8.17.17.3.3.3.1.m1.1a"><mo id="S4.T8.17.17.3.3.3.1.m1.1.1" mathsize="90%" stretchy="false" xref="S4.T8.17.17.3.3.3.1.m1.1.1.cmml">→</mo><annotation-xml encoding="MathML-Content" id="S4.T8.17.17.3.3.3.1.m1.1b"><ci id="S4.T8.17.17.3.3.3.1.m1.1.1.cmml" xref="S4.T8.17.17.3.3.3.1.m1.1.1">→</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T8.17.17.3.3.3.1.m1.1c">\rightarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T8.17.17.3.3.3.1.m1.1d">→</annotation></semantics></math><span class="ltx_text" id="S4.T8.18.18.4.4.4.2.2" style="font-size:90%;">文案配照片 (cover the face in a visually appealing way</span><math alttext="\rightarrow" class="ltx_Math" display="inline" id="S4.T8.18.18.4.4.4.2.m2.1"><semantics id="S4.T8.18.18.4.4.4.2.m2.1a"><mo id="S4.T8.18.18.4.4.4.2.m2.1.1" mathsize="90%" stretchy="false" xref="S4.T8.18.18.4.4.4.2.m2.1.1.cmml">→</mo><annotation-xml encoding="MathML-Content" id="S4.T8.18.18.4.4.4.2.m2.1b"><ci id="S4.T8.18.18.4.4.4.2.m2.1.1.cmml" xref="S4.T8.18.18.4.4.4.2.m2.1.1">→</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T8.18.18.4.4.4.2.m2.1c">\rightarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T8.18.18.4.4.4.2.m2.1d">→</annotation></semantics></math><span class="ltx_text" id="S4.T8.18.18.4.4.4.2.3" style="font-size:90%;">match captions with photos)</span>
</td>
</tr>
</table>
</td>
</tr>
<tr class="ltx_tr" id="S4.T8.18.20">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T8.18.20.1"><span class="ltx_rule" style="width:100%;height:0.9pt;background:black;display:inline-block;"> </span></td>
<td class="ltx_td" id="S4.T8.18.20.2"></td>
<td class="ltx_td" id="S4.T8.18.20.3"></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table showcases examples of various query reformulation types observed in user search sessions.  It categorizes these reformulations into five types: Add (adding words), Delete (removing words), Change (modifying words), Repeat (repeating the same query), and Others (all other reformulation types). For each type, representative examples from the dataset are provided to illustrate the different ways users modify their search queries. The total number of reformulation actions included in the dataset is 29,875.
> <details>
> <summary>read the caption</summary>
> Table 8. Examples of different query reformulation types. The total number of reformulating actions is 29,875.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S4.T8.4.4.4.4">
<tr class="ltx_tr" id="S4.T8.2.2.2.2.2">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="S4.T8.2.2.2.2.2.2">
<span class="ltx_text" id="S4.T8.2.2.2.2.2.2.1" style="font-size:90%;">广州批发</span><math alttext="\rightarrow" class="ltx_Math" display="inline" id="S4.T8.1.1.1.1.1.1.m1.1"><semantics id="S4.T8.1.1.1.1.1.1.m1.1a"><mo id="S4.T8.1.1.1.1.1.1.m1.1.1" mathsize="90%" stretchy="false" xref="S4.T8.1.1.1.1.1.1.m1.1.1.cmml">→</mo><annotation-xml encoding="MathML-Content" id="S4.T8.1.1.1.1.1.1.m1.1b"><ci id="S4.T8.1.1.1.1.1.1.m1.1.1.cmml" xref="S4.T8.1.1.1.1.1.1.m1.1.1">→</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T8.1.1.1.1.1.1.m1.1c">\rightarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T8.1.1.1.1.1.1.m1.1d">→</annotation></semantics></math><span class="ltx_text" id="S4.T8.2.2.2.2.2.2.2" style="font-size:90%;">广州批发市场 (Guangzhou wholesale</span><math alttext="\rightarrow" class="ltx_Math" display="inline" id="S4.T8.2.2.2.2.2.2.m2.1"><semantics id="S4.T8.2.2.2.2.2.2.m2.1a"><mo id="S4.T8.2.2.2.2.2.2.m2.1.1" mathsize="90%" stretchy="false" xref="S4.T8.2.2.2.2.2.2.m2.1.1.cmml">→</mo><annotation-xml encoding="MathML-Content" id="S4.T8.2.2.2.2.2.2.m2.1b"><ci id="S4.T8.2.2.2.2.2.2.m2.1.1.cmml" xref="S4.T8.2.2.2.2.2.2.m2.1.1">→</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T8.2.2.2.2.2.2.m2.1c">\rightarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T8.2.2.2.2.2.2.m2.1d">→</annotation></semantics></math><span class="ltx_text" id="S4.T8.2.2.2.2.2.2.3" style="font-size:90%;">Guangzhou wholesale market)</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T8.4.4.4.4.4">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="S4.T8.4.4.4.4.4.2">
<span class="ltx_text" id="S4.T8.4.4.4.4.4.2.1" style="font-size:90%;">五大文明</span><math alttext="\rightarrow" class="ltx_Math" display="inline" id="S4.T8.3.3.3.3.3.1.m1.1"><semantics id="S4.T8.3.3.3.3.3.1.m1.1a"><mo id="S4.T8.3.3.3.3.3.1.m1.1.1" mathsize="90%" stretchy="false" xref="S4.T8.3.3.3.3.3.1.m1.1.1.cmml">→</mo><annotation-xml encoding="MathML-Content" id="S4.T8.3.3.3.3.3.1.m1.1b"><ci id="S4.T8.3.3.3.3.3.1.m1.1.1.cmml" xref="S4.T8.3.3.3.3.3.1.m1.1.1">→</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T8.3.3.3.3.3.1.m1.1c">\rightarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T8.3.3.3.3.3.1.m1.1d">→</annotation></semantics></math><span class="ltx_text" id="S4.T8.4.4.4.4.4.2.2" style="font-size:90%;">五大文明发源地 (the five great civilizations</span><math alttext="\rightarrow" class="ltx_Math" display="inline" id="S4.T8.4.4.4.4.4.2.m2.1"><semantics id="S4.T8.4.4.4.4.4.2.m2.1a"><mo id="S4.T8.4.4.4.4.4.2.m2.1.1" mathsize="90%" stretchy="false" xref="S4.T8.4.4.4.4.4.2.m2.1.1.cmml">→</mo><annotation-xml encoding="MathML-Content" id="S4.T8.4.4.4.4.4.2.m2.1b"><ci id="S4.T8.4.4.4.4.4.2.m2.1.1.cmml" xref="S4.T8.4.4.4.4.4.2.m2.1.1">→</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T8.4.4.4.4.4.2.m2.1c">\rightarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T8.4.4.4.4.4.2.m2.1d">→</annotation></semantics></math><span class="ltx_text" id="S4.T8.4.4.4.4.4.2.3" style="font-size:90%;">the birthplaces of the five great civilizations)</span>
</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table details the various sources from which user queries originate within the Xiaohongshu app.  It lists eight categories of query sources, provides a concise definition for each, and presents the proportion of queries stemming from each source. This allows for an analysis of user behavior and how different entry points into the search function influence query patterns and overall search experience.
> <details>
> <summary>read the caption</summary>
> Table 9. Query source definition and analysis.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S4.T8.8.8.4.4">
<tr class="ltx_tr" id="S4.T8.6.6.2.2.2">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="S4.T8.6.6.2.2.2.2">
<span class="ltx_text" id="S4.T8.6.6.2.2.2.2.1" style="font-size:90%;">ip设计插件</span><math alttext="\rightarrow" class="ltx_Math" display="inline" id="S4.T8.5.5.1.1.1.1.m1.1"><semantics id="S4.T8.5.5.1.1.1.1.m1.1a"><mo id="S4.T8.5.5.1.1.1.1.m1.1.1" mathsize="90%" stretchy="false" xref="S4.T8.5.5.1.1.1.1.m1.1.1.cmml">→</mo><annotation-xml encoding="MathML-Content" id="S4.T8.5.5.1.1.1.1.m1.1b"><ci id="S4.T8.5.5.1.1.1.1.m1.1.1.cmml" xref="S4.T8.5.5.1.1.1.1.m1.1.1">→</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T8.5.5.1.1.1.1.m1.1c">\rightarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T8.5.5.1.1.1.1.m1.1d">→</annotation></semantics></math><span class="ltx_text" id="S4.T8.6.6.2.2.2.2.2" style="font-size:90%;">ip设计 (intellectual property designing plugin</span><math alttext="\rightarrow" class="ltx_Math" display="inline" id="S4.T8.6.6.2.2.2.2.m2.1"><semantics id="S4.T8.6.6.2.2.2.2.m2.1a"><mo id="S4.T8.6.6.2.2.2.2.m2.1.1" mathsize="90%" stretchy="false" xref="S4.T8.6.6.2.2.2.2.m2.1.1.cmml">→</mo><annotation-xml encoding="MathML-Content" id="S4.T8.6.6.2.2.2.2.m2.1b"><ci id="S4.T8.6.6.2.2.2.2.m2.1.1.cmml" xref="S4.T8.6.6.2.2.2.2.m2.1.1">→</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T8.6.6.2.2.2.2.m2.1c">\rightarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T8.6.6.2.2.2.2.m2.1d">→</annotation></semantics></math><span class="ltx_text" id="S4.T8.6.6.2.2.2.2.3" style="font-size:90%;">intellectual property design)</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T8.8.8.4.4.4">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="S4.T8.8.8.4.4.4.2">
<span class="ltx_text" id="S4.T8.8.8.4.4.4.2.1" style="font-size:90%;">农业经营模式分析</span><math alttext="\rightarrow" class="ltx_Math" display="inline" id="S4.T8.7.7.3.3.3.1.m1.1"><semantics id="S4.T8.7.7.3.3.3.1.m1.1a"><mo id="S4.T8.7.7.3.3.3.1.m1.1.1" mathsize="90%" stretchy="false" xref="S4.T8.7.7.3.3.3.1.m1.1.1.cmml">→</mo><annotation-xml encoding="MathML-Content" id="S4.T8.7.7.3.3.3.1.m1.1b"><ci id="S4.T8.7.7.3.3.3.1.m1.1.1.cmml" xref="S4.T8.7.7.3.3.3.1.m1.1.1">→</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T8.7.7.3.3.3.1.m1.1c">\rightarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T8.7.7.3.3.3.1.m1.1d">→</annotation></semantics></math><span class="ltx_text" id="S4.T8.8.8.4.4.4.2.2" style="font-size:90%;">农业经营模式 (analysis of agricultural business modes</span><math alttext="\rightarrow" class="ltx_Math" display="inline" id="S4.T8.8.8.4.4.4.2.m2.1"><semantics id="S4.T8.8.8.4.4.4.2.m2.1a"><mo id="S4.T8.8.8.4.4.4.2.m2.1.1" mathsize="90%" stretchy="false" xref="S4.T8.8.8.4.4.4.2.m2.1.1.cmml">→</mo><annotation-xml encoding="MathML-Content" id="S4.T8.8.8.4.4.4.2.m2.1b"><ci id="S4.T8.8.8.4.4.4.2.m2.1.1.cmml" xref="S4.T8.8.8.4.4.4.2.m2.1.1">→</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T8.8.8.4.4.4.2.m2.1c">\rightarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T8.8.8.4.4.4.2.m2.1d">→</annotation></semantics></math><span class="ltx_text" id="S4.T8.8.8.4.4.4.2.3" style="font-size:90%;">agricultural business modes)</span>
</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents a comparison of the performance of several different approaches for search and recommendation tasks.  The approaches include various methods such as BM25, BERT (both bi-encoder and cross-encoder versions), DCN-V2, and a Visual Language Model (VLM).  Performance is measured using Mean Reciprocal Rank (MRR) at 10 and 100, and Mean Average Precision (MAP) at 10 and 100.  The results show the effectiveness of different models in ranking search results and recommending items to users, illustrating the impact of factors like visual information and model architecture.
> <details>
> <summary>read the caption</summary>
> Table 10. Comparison of search and recommendation performances on various approaches.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S4.T8.12.12.4.4">
<tr class="ltx_tr" id="S4.T8.10.10.2.2.2">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="S4.T8.10.10.2.2.2.2">
<span class="ltx_text" id="S4.T8.10.10.2.2.2.2.1" style="font-size:90%;">文案破碎感</span><math alttext="\rightarrow" class="ltx_Math" display="inline" id="S4.T8.9.9.1.1.1.1.m1.1"><semantics id="S4.T8.9.9.1.1.1.1.m1.1a"><mo id="S4.T8.9.9.1.1.1.1.m1.1.1" mathsize="90%" stretchy="false" xref="S4.T8.9.9.1.1.1.1.m1.1.1.cmml">→</mo><annotation-xml encoding="MathML-Content" id="S4.T8.9.9.1.1.1.1.m1.1b"><ci id="S4.T8.9.9.1.1.1.1.m1.1.1.cmml" xref="S4.T8.9.9.1.1.1.1.m1.1.1">→</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T8.9.9.1.1.1.1.m1.1c">\rightarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T8.9.9.1.1.1.1.m1.1d">→</annotation></semantics></math><span class="ltx_text" id="S4.T8.10.10.2.2.2.2.2" style="font-size:90%;">文案自由松弛感 (writing sense with vulnerability</span><math alttext="\rightarrow" class="ltx_Math" display="inline" id="S4.T8.10.10.2.2.2.2.m2.1"><semantics id="S4.T8.10.10.2.2.2.2.m2.1a"><mo id="S4.T8.10.10.2.2.2.2.m2.1.1" mathsize="90%" stretchy="false" xref="S4.T8.10.10.2.2.2.2.m2.1.1.cmml">→</mo><annotation-xml encoding="MathML-Content" id="S4.T8.10.10.2.2.2.2.m2.1b"><ci id="S4.T8.10.10.2.2.2.2.m2.1.1.cmml" xref="S4.T8.10.10.2.2.2.2.m2.1.1">→</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T8.10.10.2.2.2.2.m2.1c">\rightarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T8.10.10.2.2.2.2.m2.1d">→</annotation></semantics></math><span class="ltx_text" id="S4.T8.10.10.2.2.2.2.3" style="font-size:90%;">writing sense with freedom and relaxation)</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T8.12.12.4.4.4">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="S4.T8.12.12.4.4.4.2">
<span class="ltx_text" id="S4.T8.12.12.4.4.4.2.1" style="font-size:90%;">将数据分三分位</span><math alttext="\rightarrow" class="ltx_Math" display="inline" id="S4.T8.11.11.3.3.3.1.m1.1"><semantics id="S4.T8.11.11.3.3.3.1.m1.1a"><mo id="S4.T8.11.11.3.3.3.1.m1.1.1" mathsize="90%" stretchy="false" xref="S4.T8.11.11.3.3.3.1.m1.1.1.cmml">→</mo><annotation-xml encoding="MathML-Content" id="S4.T8.11.11.3.3.3.1.m1.1b"><ci id="S4.T8.11.11.3.3.3.1.m1.1.1.cmml" xref="S4.T8.11.11.3.3.3.1.m1.1.1">→</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T8.11.11.3.3.3.1.m1.1c">\rightarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T8.11.11.3.3.3.1.m1.1d">→</annotation></semantics></math><span class="ltx_text" id="S4.T8.12.12.4.4.4.2.2" style="font-size:90%;">四分位间距 (dividing data into tertiles</span><math alttext="\rightarrow" class="ltx_Math" display="inline" id="S4.T8.12.12.4.4.4.2.m2.1"><semantics id="S4.T8.12.12.4.4.4.2.m2.1a"><mo id="S4.T8.12.12.4.4.4.2.m2.1.1" mathsize="90%" stretchy="false" xref="S4.T8.12.12.4.4.4.2.m2.1.1.cmml">→</mo><annotation-xml encoding="MathML-Content" id="S4.T8.12.12.4.4.4.2.m2.1b"><ci id="S4.T8.12.12.4.4.4.2.m2.1.1.cmml" xref="S4.T8.12.12.4.4.4.2.m2.1.1">→</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T8.12.12.4.4.4.2.m2.1c">\rightarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T8.12.12.4.4.4.2.m2.1d">→</annotation></semantics></math><span class="ltx_text" id="S4.T8.12.12.4.4.4.2.3" style="font-size:90%;">Interquartile Range, IQR)</span>
</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table compares the performance of different Large Language Models (LLMs) in a Retrieval-Augmented Generation (RAG) pipeline.  The RAG pipeline uses retrieved documents to aid in the generation of answers. The table shows the performance of each LLM using four different retrieval methods: no retrieval, retrieval with BM25, retrieval with BERT bi-encoders, and retrieval using the ground truth documents from the Qilin dataset (Oracle).  Performance is measured using ROUGE-L and BERTScore (F1), which assess the quality of the generated answers.
> <details>
> <summary>read the caption</summary>
> Table 11. Comparison of Retrieval-augmented generation (RAG) performance across various LLMs.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2503.00501/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.00501/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.00501/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.00501/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.00501/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.00501/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.00501/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.00501/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.00501/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.00501/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.00501/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}