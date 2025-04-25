---
title: "ViSMaP: Unsupervised Hour-long Video Summarisation by Meta-Prompting"
summary: "ViSMap: Summarizing hours of video made easy with Meta-Prompting!"
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Computer Vision", "Video Understanding", "🏢 Queen Mary University of London",]
showSummary: true
date: 2025-04-22
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2504.15921 {{< /keyword >}}
{{< keyword icon="writer" >}} Jian Hu et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-04-25 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2504.15921" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2504.15921" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2504.15921/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Existing video understanding models struggle with long videos due to sparse events and lack of annotations. ViSMap addresses this by leveraging Large Language Models (LLMs) to create pseudo-summaries of long videos using segment descriptions from short ones. This bypasses the need for extensive annotations. A meta-prompting strategy is adopted, using three LLMs: one to generate the pseudo-summary, one to evaluate it, and one to optimize the generator's prompt. This closes the gap between short videos with plentiful data and long ones with scarce data. 



ViSMap uses minute-long annotated videos to construct a short-form video summary model. Unsupervised hour-long videos are split into segments, generating pseudo-captions using the earlier model. These refine pseudo-summaries using meta-prompting with LLMs, generating training data for long-form summaries. The method reduces the domain gap caused by video length and semantic distribution. Experiments show that **ViSMap achieves performance comparable to state-of-the-art models while generalising across domains**.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Meta-prompting can generate high-quality pseudo-summaries from short video segments for training long-form video summarization models. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} ViSMap achieves comparable performance to supervised methods while being unsupervised and domain adaptable. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} The iterative LLM-based approach optimizes semantic alignment and bridges the gap between short and long videos. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
ViSMap tackles the challenge of hour-long video summarization without extensive labeled data. This impacts the video understanding field by offering a scalable, domain-adaptable method, bridging gaps between short-form and long-form video analysis and opening doors for unsupervised learning.

------
#### Visual Insights



![](https://arxiv.org/html/2504.15921/x1.png)

> 🔼 This figure visually demonstrates the semantic difference between short video segment descriptions and longer video summaries.  The bar charts compare the frequency of verbs used in descriptions of short segments (4 seconds) from the Ego4D-HCap dataset with the verbs used in summaries of the entire 3-minute segments. The significant difference in verb frequencies highlights the challenge of bridging the semantic gap between local actions (in segments) and higher-level narrative (in summaries) when creating video summaries. This gap makes it challenging to directly generate long video summaries from short segment descriptions.
> <details>
> <summary>read the caption</summary>
> (a) Verb frequency: Segments vs Summaries. Illustration of the semantic gap between segment descriptions and video summaries in Ego4D-HCap (Islam et al., 2024) dataset.
> </details>







### In-depth insights


#### Meta-Prompting
**Meta-Prompting**, as presented in this research, represents a sophisticated strategy for video summarization, particularly targeting the challenge of hour-long, unannotated videos. It cleverly bridges the gap between readily available, annotated short-form videos and the data-scarce long-form domain.  The approach leverages the power of LLMs in an iterative process: one LLM generates candidate summaries, another evaluates their quality, and a third optimizes the prompt guiding the summary generation. This **iterative refinement** is crucial, recognizing that prompt quality significantly impacts the summarization outcome.  By employing a sequence of LLMs, the system effectively learns to extract salient information and bridge the semantic gap between short clip descriptions and holistic video summaries, demonstrating a innovative way to create training data without extensive human annotation.

#### Domain Adaptation
**Domain adaptation** is a crucial aspect of modern machine learning, especially when dealing with video summarization. The goal is to effectively transfer knowledge learned from a **source domain** (where labeled data is abundant) to a **target domain** (where labeled data is scarce or unavailable). This is particularly relevant in video analysis, as video content and styles can vary greatly, leading to **domain shifts**. A successful domain adaptation technique should minimize the discrepancy between the source and target domains. Doing so allows for better generalization and improved performance on the target task. Approaches may involve **adversarial training**, **moment matching**, or **source-free adaptation** to mitigate domain differences.

#### LLM Optimization
LLM optimization is crucial for efficient and effective video summarization. The paper explores a **meta-prompting strategy** which leverages multiple LLMs in sequence: one to generate pseudo-summaries, another to evaluate them, and a third to optimize the prompt of the generator. The process is iteratively necessary, where the quality of the summaries depends highly on the generator prompt. This optimization aims to bridge the **semantic gap** between short-form segment descriptions and hour-long video summaries. Different LLM combinations are tested to determine the most effective configuration, highlighting the importance of selecting LLMs based on their strengths rather than defaulting to a single model for all tasks. It ultimately enables effective video summarization from the **source domain to target domain**.

#### Long Video Focus
**Long video understanding is a frontier challenge**, demanding models to distill key information from extensive content. Unlike short clips with well-defined actions, long videos often require identifying sparse, relevant events within a sea of redundant data. Existing approaches frequently struggle with the computational burden and semantic complexity of hour-long footage. Supervised methods, while effective, face limitations due to the scarcity and cost of annotations for long-form videos. The research emphasizes the need for scalable, unsupervised techniques that can adapt models trained on short-form data to the nuances and intricacies of longer videos. The potential impact is significant, enabling automated summarization and analysis of real-world scenarios that are complex and prolonged.

#### Semantic Bridge
The concept of a "Semantic Bridge" is crucial for enabling knowledge transfer between different representations. **It acts as a translator**, facilitating the understanding of concepts across diverse domains. This bridge involves **identifying core semantic elements** and creating mappings that preserve meaning. **Ambiguity** arises as challenges in cross-domain semantic mapping, requiring nuanced handling of context. Creating a successful bridge demands **robust methods for semantic alignment** and resolution of conflicts that maintain coherence. **Careful modeling** and validation** are essential to ensure the bridge's fidelity and its ability to accurately translate semantic content.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2504.15921/x2.png)

> 🔼 This figure visualizes the distributional shift between the Ego4D-HCap and YouCook2 datasets using t-SNE.  The t-SNE plots show how the embeddings of videos from the two datasets cluster differently in the reduced-dimensional space. This demonstrates the differing semantic distributions between the datasets, highlighting the domain adaptation challenge addressed by the ViSMaP model.
> <details>
> <summary>read the caption</summary>
> (b) t-SNE visualization between Ego4D-HCap and Youcook2 datasets.  Illustration of the distributional shift between these two dataset.
> </details>



![](https://arxiv.org/html/2504.15921/x3.png)

> 🔼 Figure 1 illustrates the two key challenges addressed in the ViSMaP approach.  (a) shows the 'semantic gap' – the difference in language used to describe short video segments versus the language needed for a comprehensive hour-long video summary.  (b) highlights the 'domain shift' – the differences between the characteristics of short videos used for training (source domain) and the characteristics of long, unsegmented videos the system aims to summarize (target domain).  This visual representation underscores the difficulties in adapting models trained on readily available short videos to the task of summarizing longer, more complex videos where labeled data is scarce.
> <details>
> <summary>read the caption</summary>
> Figure 1. Two main challenges we address with our approach: (a) Bridging the semantic gap between short-form segment descriptions and hour-long video summaries descriptions (b) Overcoming the domain shift between the source domain and the target domain.
> </details>



![](https://arxiv.org/html/2504.15921/x4.png)

> 🔼 Existing video summarization models primarily focus on short videos (around a minute long), neglecting the abundance of hour-long videos in real-world applications.  These longer videos are difficult to process due to their length, intricate content, and the high cost of manual annotation for training data.  ViSMaP is an unsupervised cross-domain approach designed to address this limitation. It leverages the strengths of large language models (LLMs) to create high-quality 'pseudo-summaries' for hour-long videos. This is achieved by using meta-prompting techniques on short video segments, generating summaries without needing manual annotations for long videos. These pseudo-summaries then serve as training data for a model that effectively summarizes hour-long videos.
> <details>
> <summary>read the caption</summary>
> Figure 2.  Motivation of our VisMaP. Most existing video summarisation models focus on minute-level short-form videos, while hour-long videos, which are more common in real-world scenarios, are often overlooked due to their length, content complexity, and the prohibitively high cost of manual annotation. We propose a cross-domain unsupervised approach for hour-long video summarisation. It leverages the inductive power of multiple LLMs to generate high-quality pseudo-summaries from short video segments via meta-prompting. These pseudo-summaries are then used to train a model, enabling effective summarisation of long videos without costly human annotations.
> </details>



![](https://arxiv.org/html/2504.15921/x5.png)

> 🔼 This figure illustrates the three-stage ViSMaP framework for unsupervised hour-long video summarization. Stage 1 uses short videos for supervised pretraining of a summary model. Stage 2 splits hour-long videos into segments, generates pseudo-captions using the pretrained model, and refines them iteratively via meta-prompting (using three LLMs: generator, evaluator, and optimizer) to create tailored prompts and summaries. Stage 3 uses the refined summaries to fine-tune the summary model for effective hour-long video summarization.
> <details>
> <summary>read the caption</summary>
> Figure 3. An overview of our VisMaP. (a) First stage: we use 180-second source video vssuperscript𝑣𝑠v^{s}italic_v start_POSTSUPERSCRIPT italic_s end_POSTSUPERSCRIPT for supervised pretraining to establish basic summary capabilities. (b) Second stage: we split hour-long target videos vtsuperscript𝑣𝑡v^{t}italic_v start_POSTSUPERSCRIPT italic_t end_POSTSUPERSCRIPT into 3-minute segments set 𝐕itsuperscriptsubscript𝐕𝑖𝑡\mathbf{V}_{i}^{t}bold_V start_POSTSUBSCRIPT italic_i end_POSTSUBSCRIPT start_POSTSUPERSCRIPT italic_t end_POSTSUPERSCRIPT and process them through the first-stage summary model to generate pseudo captions C^tsuperscript^𝐶𝑡\widehat{C}^{t}over^ start_ARG italic_C end_ARG start_POSTSUPERSCRIPT italic_t end_POSTSUPERSCRIPT. C^tsuperscript^𝐶𝑡\widehat{C}^{t}over^ start_ARG italic_C end_ARG start_POSTSUPERSCRIPT italic_t end_POSTSUPERSCRIPT are then refined through a meta-prompting process with K𝐾Kitalic_K iterations, using Gemini as the evaluator and GPT-3.5 as the optimiser and the generator, to create more tailored prompts P⁢rt𝑃superscript𝑟𝑡{Pr}^{t}italic_P italic_r start_POSTSUPERSCRIPT italic_t end_POSTSUPERSCRIPT and summaries Y^tsuperscript^𝑌𝑡\widehat{Y}^{t}over^ start_ARG italic_Y end_ARG start_POSTSUPERSCRIPT italic_t end_POSTSUPERSCRIPT. (c) Third stage: Refined Y^tsuperscript^𝑌𝑡\widehat{Y}^{t}over^ start_ARG italic_Y end_ARG start_POSTSUPERSCRIPT italic_t end_POSTSUPERSCRIPT pseudo-summaries are utilised to fine-tune the summary model for effective hour-long video summary.
> </details>



![](https://arxiv.org/html/2504.15921/x6.png)

> 🔼 Figure 4 presents a visual illustration of ViSMaP's summarization capabilities using a sample from the Ego4D-HCap dataset. It showcases how the model processes a long (63-minute) video by segmenting it into smaller parts (around 30 seconds each), generating descriptions for each segment, and then producing a concise summary that captures the video's essence. The example highlights ViSMaP's ability to identify and summarize key events from a large amount of redundant information. The ground truth summary is also shown for comparison.
> <details>
> <summary>read the caption</summary>
> Figure 4. An example of summaries from ViSMaP on the Ego4D-HCap dataset.
> </details>



</details>






### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2504.15921/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.15921/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.15921/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.15921/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.15921/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.15921/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.15921/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.15921/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.15921/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.15921/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.15921/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.15921/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.15921/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}