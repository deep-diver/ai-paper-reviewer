---
title: "ChartCitor: Multi-Agent Framework for Fine-Grained Chart Visual Attribution"
summary: "ChartCitor: A multi-agent LLM framework combats LLM hallucination in ChartQA by providing fine-grained visual citations, enhancing user trust and productivity."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Natural Language Processing", "Question Answering", "🏢 Adobe Research",]
showSummary: true
date: 2025-02-03
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2502.00989 {{< /keyword >}}
{{< keyword icon="writer" >}} Kanika Goswami et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-02-07 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2502.00989" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2502.00989" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2502.00989/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Large Language Models (LLMs) excel at answering questions about charts, but frequently produce inaccurate or 'hallucinated' answers.  This lack of reliability hinders trust and practical use in professional settings. Existing methods for attributing answers to chart elements struggle due to complexities in visual-text alignment and bounding box prediction.  



ChartCitor, a novel multi-agent LLM framework, directly addresses these limitations.  It uses a series of specialized agents to extract data from charts, reformulate questions, retrieve relevant evidence using pre-filtering and re-ranking, and map that evidence back to specific chart elements.  This approach significantly improves accuracy and provides users with readily understandable and trustworthy explanations for LLM-generated ChartQA responses.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} ChartCitor uses multiple LLM agents to generate fine-grained bounding box citations for answers to chart questions. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} ChartCitor outperforms existing methods in accuracy and improves user trust by providing explainable answers. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} The multi-agent framework addresses the challenge of visual-semantic alignment in ChartQA, improving the reliability of LLM-generated responses. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper is important because **it tackles the crucial problem of hallucination in LLMs for chart question answering (ChartQA)**.  By introducing ChartCitor, it offers a novel multi-agent approach that enhances accuracy and trustworthiness, addressing a significant limitation of current LLMs.  This work is relevant to researchers in NLP, computer vision, and explainable AI, opening up new avenues for improving the reliability and explainability of large language models for visual data analysis.

------
#### Visual Insights







### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2502.00989/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.00989/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.00989/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.00989/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}